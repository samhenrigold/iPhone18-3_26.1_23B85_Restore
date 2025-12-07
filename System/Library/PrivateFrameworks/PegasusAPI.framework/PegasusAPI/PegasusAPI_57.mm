uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.resultEntity.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_111_7(v0);
  return sub_1B8DAA170();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.resultEntity.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_111_7(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.bookEntity.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_111_7(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  OUTLINED_FUNCTION_57(v1);
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8F00, &unk_1B964D700);
LABEL_6:
    OUTLINED_FUNCTION_92_0();
    a1[4] = 0;
    a1[5] = v8;
    a1[6] = 0;
    a1[7] = v8;
    a1[8] = 0;
    a1[9] = v8;
    a1[10] = 0;
    a1[11] = v8;
    type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C110();
    OUTLINED_FUNCTION_83();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  OUTLINED_FUNCTION_461();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_0_79();
    sub_1B92A81EC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_16_24();
  OUTLINED_FUNCTION_182();
  return sub_1B92A813C();
}

void Apple_Parsec_Visualsearch_V2_ResultEntity.bookEntity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v1[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v1[3] = v10;
  OUTLINED_FUNCTION_111_7(0);
  OUTLINED_FUNCTION_64_0(v11);
  v12 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  v1[4] = v12;
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v12);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F00, &unk_1B964D700);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_16_24();
      OUTLINED_FUNCTION_177_1();
      sub_1B92A813C();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_0_79();
    sub_1B92A81EC();
  }

  OUTLINED_FUNCTION_102_9();
  v10[6] = 0;
  v10[7] = v17;
  v10[8] = 0;
  v10[9] = v17;
  v10[10] = 0;
  v10[11] = v17;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.albumEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_111_7(v5);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  OUTLINED_FUNCTION_57(v1);
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8F00, &unk_1B964D700);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_15_19();
      OUTLINED_FUNCTION_182();
      return sub_1B92A813C();
    }

    OUTLINED_FUNCTION_0_79();
    sub_1B92A81EC();
  }

  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B92A7078(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBAB8F00, &unk_1B964D700);
  sub_1B92A813C();
  v3 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
}

void Apple_Parsec_Visualsearch_V2_ResultEntity.albumEntity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v1[2] = __swift_coroFrameAllocStub(v9);
  v1[3] = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_111_7(0);
  OUTLINED_FUNCTION_64_0(v10);
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  v1[4] = v11;
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v11);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F00, &unk_1B964D700);
LABEL_7:
    OUTLINED_FUNCTION_102_9();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0_79();
    sub_1B92A81EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_177_1();
  sub_1B92A813C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B92A7294()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = *(*v0 + 10);
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B92A8194();
    sub_1B8D9207C(v6 + v3, &qword_1EBAB8F00, &unk_1B964D700);
    sub_1B92A813C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    sub_1B92A81EC();
  }

  else
  {
    sub_1B8D9207C(v6 + v3, &qword_1EBAB8F00, &unk_1B964D700);
    sub_1B92A813C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  }

  free(v1);
  free(v5);
  free(v4);
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v20[1] = type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_62();
  v3 = (v2 - v1);
  v4 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
  v5 = OUTLINED_FUNCTION_183(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_324_1();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAA28, &unk_1B96B5790);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  sub_1B92A8194();
  sub_1B92A8194();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_19_22();
    sub_1B92A8194();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_16_24();
      sub_1B92A813C();
      static Apple_Parsec_Visualsearch_V2_BookEntity.== infix(_:_:)();
      sub_1B92A81EC();
      sub_1B92A81EC();
      OUTLINED_FUNCTION_0_79();
      sub_1B92A81EC();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_19_22();
  sub_1B92A8194();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_20:
    sub_1B92A81EC();
    sub_1B8D9207C(v14, &qword_1EBACAA28, &unk_1B96B5790);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_15_19();
  sub_1B92A813C();
  v15 = *v10 == *v3 && v10[1] == v3[1];
  if (v15 || (sub_1B964C9F0() & 1) != 0)
  {
    v16 = v10[2] == v3[2] && v10[3] == v3[3];
    if (v16 || (sub_1B964C9F0() & 1) != 0)
    {
      v17 = v10[4] == v3[4] && v10[5] == v3[5];
      if (v17 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_66();
        sub_1B8CD2E70(v18, v19, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }
    }
  }

  OUTLINED_FUNCTION_45_14();
  sub_1B92A81EC();
  OUTLINED_FUNCTION_128();
  sub_1B92A81EC();
  OUTLINED_FUNCTION_0_79();
  sub_1B92A81EC();
LABEL_23:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.init()()
{
  OUTLINED_FUNCTION_92_0();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B92A78F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA960);
  __swift_project_value_buffer(v0, qword_1EBACA960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 7;
  *v6 = "visual_query_lite";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "include_domains";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "query_context";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "debug_tweaks";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "third_party_team_id";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "third_party_catalog_ids";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "query_id";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B92A7C18()
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1B92A7C58();
  qword_1EBACA978 = result;
  return result;
}

uint64_t sub_1B92A7C58()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__visualQueryLite;
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, Lite);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__includeDomains) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryContext;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, Context);
  v6 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__debugTweaks;
  *(v0 + v6) = sub_1B964C7B0();
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID) = 0;
  return v0;
}

uint64_t sub_1B92A7D30(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28[2] = v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9418, &unk_1B96B5780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__visualQueryLite;
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, Lite);
  v8 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__includeDomains;
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__includeDomains) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryContext;
  v28[1] = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryContext;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, Context);
  v12 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__debugTweaks;
  *(v1 + v12) = sub_1B964C7B0();
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v29 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds) = v9;
  v30 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__includeDomains;
  swift_beginAccess();
  v15 = *(a1 + v14);
  swift_beginAccess();
  *(v1 + v8) = v15;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__debugTweaks;
  swift_beginAccess();
  v17 = *(a1 + v16);
  swift_beginAccess();
  *(v1 + v12) = v17;

  v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_beginAccess();
  *v13 = v20;
  v13[1] = v19;

  v21 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = v29;
  swift_beginAccess();
  *(v1 + v23) = v22;

  v24 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
  swift_beginAccess();
  v25 = *(a1 + v24);

  v26 = v30;
  swift_beginAccess();
  *(v1 + v26) = v25;
  return v1;
}

uint64_t sub_1B92A813C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B92A8194()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B92A81EC()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B92A8340()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__visualQueryLite, &qword_1EBAC9418, &unk_1B96B5780);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryContext, &qword_1EBABED40, &qword_1B96809F0);

  return v0;
}

uint64_t sub_1B92A83DC()
{
  v0 = sub_1B92A8340();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_40_0();
    *(v0 + v1) = sub_1B92A7D30(v2);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B92A84CC(v3, v4, v5, v6);
}

uint64_t sub_1B92A84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 2:
        sub_1B92A8640(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B92A86DC(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B92A87B8(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B92A8864(a2, a1);
        break;
      case 6:
        v11 = MEMORY[0x1E69AACB8];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds;
        goto LABEL_11;
      case 7:
        sub_1B92A88F0(a2, a1, a3, a4);
        break;
      case 8:
        v11 = MEMORY[0x1E69AAD00];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
LABEL_11:
        sub_1B92A89CC(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92A8640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8DEE788();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B92A86DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B8CD2E70(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92A87B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  sub_1B964C3B0();
  return swift_endAccess();
}

uint64_t sub_1B92A8864(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B92A88F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  sub_1B8CD2E70(&qword_1EBAC9620, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualQueryLite);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92A89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B92A8AC4(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B92A8AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9418, &unk_1B96B5780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v26 = &v24 - v8;
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  MEMORY[0x1EEE9AC00](Lite);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  MEMORY[0x1EEE9AC00](Context);
  v14 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__includeDomains;
  swift_beginAccess();
  if (!*(*(a1 + v14) + 16) || (sub_1B8DEE788(), , sub_1B964C600(), result = , !v4))
  {
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v12, 1, Context) == 1)
    {
      sub_1B8D9207C(v12, &qword_1EBABED40, &qword_1B96809F0);
    }

    else
    {
      sub_1B92A813C();
      sub_1B8CD2E70(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
      sub_1B964C740();
      result = sub_1B92A81EC();
      if (v4)
      {
        return result;
      }
    }

    v16 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__debugTweaks;
    swift_beginAccess();
    v17 = v26;
    if (!*(*(a1 + v16) + 16) || (sub_1B964C280(), , sub_1B964C5F0(), result = , !v4))
    {
      v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
      swift_beginAccess();
      v19 = *v18;
      v20 = v18[1];
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21 || (, sub_1B964C700(), result = , !v5))
      {
        v22 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds;
        swift_beginAccess();
        if (!*(*(a1 + v22) + 16) || (, sub_1B964C6E0(), result = , !v5))
        {
          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v17, 1, Lite) == 1)
          {
            sub_1B8D9207C(v17, &qword_1EBAC9418, &unk_1B96B5780);
          }

          else
          {
            sub_1B92A813C();
            sub_1B8CD2E70(&qword_1EBAC9620, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualQueryLite);
            sub_1B964C740();
            result = sub_1B92A81EC();
            if (v5)
            {
              return result;
            }
          }

          v23 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
          swift_beginAccess();
          result = *(a1 + v23);
          if (result)
          {
            return sub_1B964C720();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_VisualSearchRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_23_18();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B92A912C(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_66();
  sub_1B8CD2E70(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_231();
  return sub_1B964C850() & 1;
}

BOOL sub_1B92A912C(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  MEMORY[0x1EEE9AC00](Context);
  v64 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v62[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v62[-v8];
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  MEMORY[0x1EEE9AC00](Lite);
  v70 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9628, &unk_1B96B65D0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9418, &unk_1B96B5780);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v71 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62[-v18];
  swift_beginAccess();
  v20 = v72;
  sub_1B8D92024();
  swift_beginAccess();
  v21 = *(v12 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v14, 1, Lite) == 1)
  {

    sub_1B8D9207C(v19, &qword_1EBAC9418, &unk_1B96B5780);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v14[v21], 1, Lite);
    v23 = a1;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v14, &qword_1EBAC9418, &unk_1B96B5780);
      goto LABEL_8;
    }

LABEL_6:
    sub_1B8D9207C(v14, &qword_1EBAC9628, &unk_1B96B65D0);
    goto LABEL_12;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v14[v21], 1, Lite) == 1)
  {

    sub_1B8D9207C(v19, &qword_1EBAC9418, &unk_1B96B5780);
    sub_1B92A81EC();
    goto LABEL_6;
  }

  sub_1B92A813C();

  static Apple_Parsec_Visualsearch_V2_VisualQueryLite.== infix(_:_:)();
  v63 = v24;
  sub_1B92A81EC();
  sub_1B8D9207C(v19, &qword_1EBAC9418, &unk_1B96B5780);
  sub_1B92A81EC();
  v23 = a1;
  sub_1B8D9207C(v14, &qword_1EBAC9418, &unk_1B96B5780);
  if ((v63 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v25 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__includeDomains;
  swift_beginAccess();
  v26 = *(v23 + v25);
  v27 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__includeDomains;
  swift_beginAccess();
  if ((sub_1B8D90198(v26, *(v20 + v27)) & 1) == 0)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  v28 = v23;
  v29 = v68;
  sub_1B8D92024();
  swift_beginAccess();
  v30 = *(v66 + 48);
  v31 = v69;
  sub_1B8D92024();
  sub_1B8D92024();
  v32 = Context;
  if (__swift_getEnumTagSinglePayload(v31, 1, Context) != 1)
  {
    v34 = v65;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v32) != 1)
    {
      v38 = v64;
      sub_1B92A813C();
      v39 = *(v32 + 20);
      v40 = *&v34[v39];
      v41 = *&v38[v39];
      if (v40 == v41 || (, , v42 = sub_1B9090820(v40, v41), , , v42))
      {
        sub_1B964C2B0();
        sub_1B8CD2E70(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v43 = sub_1B964C850();
        sub_1B92A81EC();
        sub_1B8D9207C(v29, &qword_1EBABED40, &qword_1B96809F0);
        sub_1B92A81EC();
        sub_1B8D9207C(v31, &qword_1EBABED40, &qword_1B96809F0);
        if ((v43 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      sub_1B92A81EC();
      sub_1B8D9207C(v29, &qword_1EBABED40, &qword_1B96809F0);
      sub_1B92A81EC();
      v37 = v31;
      v35 = &qword_1EBABED40;
      v36 = &qword_1B96809F0;
LABEL_17:
      sub_1B8D9207C(v37, v35, v36);
      goto LABEL_12;
    }

    sub_1B8D9207C(v29, &qword_1EBABED40, &qword_1B96809F0);
    sub_1B92A81EC();
LABEL_16:
    v35 = &qword_1EBABED68;
    v36 = &qword_1B9680A10;
    v37 = v31;
    goto LABEL_17;
  }

  sub_1B8D9207C(v29, &qword_1EBABED40, &qword_1B96809F0);
  if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v32) != 1)
  {
    goto LABEL_16;
  }

  sub_1B8D9207C(v31, &qword_1EBABED40, &qword_1B96809F0);
LABEL_21:
  v44 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__debugTweaks;
  swift_beginAccess();
  v45 = *(v28 + v44);
  v46 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__debugTweaks;
  swift_beginAccess();
  v47 = *(v20 + v46);

  sub_1B8DB02F8(v45, v47);
  v49 = v48;

  if (v49)
  {
    v50 = (v28 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
    swift_beginAccess();
    v51 = *v50;
    v52 = v50[1];
    v53 = (v20 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
    swift_beginAccess();
    v54 = v51 == *v53 && v52 == v53[1];
    if (v54 || (sub_1B964C9F0() & 1) != 0)
    {
      v55 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds;
      swift_beginAccess();
      v56 = *(v28 + v55);
      v57 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds;
      swift_beginAccess();
      if (sub_1B8D6123C(v56, *(v20 + v57)))
      {
        v58 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
        swift_beginAccess();
        v59 = *(v28 + v58);

        v60 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
        swift_beginAccess();
        v61 = *(v20 + v60);

        return v59 == v61;
      }
    }
  }

LABEL_12:

  return 0;
}

uint64_t sub_1B92A9B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E70(&qword_1EBACAC30, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92A9C04(uint64_t a1)
{
  v2 = sub_1B8CD2E70(&qword_1EBACAAA8, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92A9C74(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2E70(&qword_1EBACAAA8, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B92A9D0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA980);
  __swift_project_value_buffer(v0, qword_1EBACA980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "region_of_interest_responses";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trace_id";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Visualsearch_V2_VisualSearchResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B92AA64C();
    }
  }
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse(0), sub_1B8CD2E70(&qword_1EBACAA38, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 2), !v1))
    {
      type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_VisualSearchResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D64580(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_66();
  v7 = sub_1B8CD2E70(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B92AA1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E70(&qword_1EBACAC28, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92AA24C(uint64_t a1)
{
  v2 = sub_1B8CD2E70(&qword_1EBACAAC0, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92AA2BC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2E70(&qword_1EBACAAC0, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B92AA354()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA998);
  __swift_project_value_buffer(v0, qword_1EBACA998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain_responses";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "section_renderings";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B92AA774(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B92AA6D4(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B92AA64C();
        break;
    }
  }
}

void sub_1B92AA64C()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v2(0);
  v3 = OUTLINED_FUNCTION_128();
  sub_1B8CD2E70(v3, v4, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B92AA6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(0);
  sub_1B8CD2E70(&qword_1EBACAA50, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionRendering);
  return sub_1B964C570();
}

uint64_t sub_1B92AA774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse(0);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox(0);
  sub_1B8CD2E70(&qword_1EBACA560, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_BoundingBox);
  return sub_1B964C580();
}

void Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_151();
  v6 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse(0), sub_1B8CD2E70(&qword_1EBACAA48, type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse, "iV}5pR\b"), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_92_11(), sub_1B964C730(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(0), sub_1B8CD2E70(&qword_1EBACAA50, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionRendering), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_92_11(), sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse(0);
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
      {
        sub_1B8D9207C(v2, &qword_1EBAB8F48, &unk_1B964D740);
LABEL_8:
        sub_1B964C290();
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_3_51();
      sub_1B92A813C();
      sub_1B8CD2E70(&qword_1EBACA560, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_BoundingBox);
      OUTLINED_FUNCTION_92_11();
      sub_1B964C740();
      OUTLINED_FUNCTION_47_12();
      sub_1B92A81EC();
      if (!v1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B92AAE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E70(&qword_1EBACAC20, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92AAEB8(uint64_t a1)
{
  v2 = sub_1B8CD2E70(&qword_1EBACAA38, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92AAF28(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2E70(&qword_1EBACAA38, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B92AAFC0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA9B0);
  __swift_project_value_buffer(v0, qword_1EBACA9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain_results";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_DomainResponse.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B92AB218(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8E8FC9C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B92AB218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Domainresultpb_DomainResult(0);
  sub_1B8CD2E70(&qword_1EBABAF00, type metadata accessor for Domainresultpb_DomainResult, protocol conformance descriptor for Domainresultpb_DomainResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Visualsearch_V2_DomainResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (sub_1B8DEE788(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Domainresultpb_DomainResult(0), sub_1B8CD2E70(&qword_1EBABAF00, type metadata accessor for Domainresultpb_DomainResult, protocol conformance descriptor for Domainresultpb_DomainResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_DomainResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if (!sub_1B8D57FD0(*v2, *(v1 + 8), *v0, *(v0 + 8)))
  {
    return 0;
  }

  sub_1B8D60B0C(*(v1 + 16), *(v0 + 16));
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_66();
  v6 = sub_1B8CD2E70(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B92AB4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E70(&qword_1EBACAC18, type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_DomainResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92AB574(uint64_t a1)
{
  v2 = sub_1B8CD2E70(&qword_1EBACAA48, type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse, "iV}5pR\b");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92AB5E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2E70(&qword_1EBACAA48, type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse, "iV}5pR\b");

  return sub_1B964C5D0();
}

uint64_t sub_1B92AB67C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA9C8);
  __swift_project_value_buffer(v0, qword_1EBACA9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "section_bundle_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "section_header";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "section_results";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "max_initially_visible_results";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionRendering.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B92AB984(v3, v4, v5, v6);
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92AB984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(0);
  sub_1B8CD2E70(&qword_1EBACAA68, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionRendering.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), (v0 = v1) == 0))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(0), sub_1B8CD2E70(&qword_1EBACAA68, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), (v0 = v1) == 0))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C710(), !v0))
        {
          type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_SectionRendering.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D67DC0(*(v1 + 32), *(v0 + 32));
  if ((v7 & 1) == 0 || *(v1 + 40) != *(v0 + 40))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_66();
  v10 = sub_1B8CD2E70(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B92ABCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E70(&qword_1EBACAC10, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionRendering);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92ABD28(uint64_t a1)
{
  v2 = sub_1B8CD2E70(&qword_1EBACAA50, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionRendering);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92ABD98(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2E70(&qword_1EBACAA50, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionRendering);

  return sub_1B964C5D0();
}

uint64_t sub_1B92ABE30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA9E0);
  __swift_project_value_buffer(v0, qword_1EBACA9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rendering";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result_bundle_id";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 1000;
  *v14 = "debug_json_metadata";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionResult.decodeMessage<A>(decoder:)()
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
      case 1000:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B92AC1E8(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B92AC134(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B92AC134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(0);
  type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0);
  sub_1B8CD2E70(&qword_1EBAC3350, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering, protocol conformance descriptor for Apple_Parsec_Rendering_V2_Rendering);
  return sub_1B964C580();
}

uint64_t sub_1B92AC1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(0);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  sub_1B8CD2E70(&qword_1EBACAA78, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultMetadata);
  return sub_1B964C580();
}

void Apple_Parsec_Visualsearch_V2_SectionResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v28 = v2;
  v29 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F10, &unk_1B964D710);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v26 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v25[1] = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F30, &qword_1B964D730);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_324_1();
  v27 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v16);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8F30, &qword_1B964D730);
  }

  else
  {
    OUTLINED_FUNCTION_2_49();
    sub_1B92A813C();
    sub_1B8CD2E70(&qword_1EBAC3350, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering, protocol conformance descriptor for Apple_Parsec_Rendering_V2_Rendering);
    sub_1B964C740();
    OUTLINED_FUNCTION_48_12();
    sub_1B92A81EC();
    if (v0)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v19 || (OUTLINED_FUNCTION_105_7(v17, v18, 2), !v0))
  {
    sub_1B8D92024();
    v20 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v20, v21, v26) == 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8F10, &unk_1B964D710);
    }

    else
    {
      OUTLINED_FUNCTION_4_42();
      sub_1B92A813C();
      sub_1B8CD2E70(&qword_1EBACAA78, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultMetadata);
      OUTLINED_FUNCTION_92_11();
      sub_1B964C740();
      OUTLINED_FUNCTION_46_12();
      sub_1B92A81EC();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v24 || (OUTLINED_FUNCTION_105_7(v22, v23, 1000), !v0))
    {
      sub_1B964C290();
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Visualsearch_V2_SectionResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v46 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v43[1] = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F10, &unk_1B964D710);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v43[2] = v43 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F18, &unk_1B96B57A0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v47 = v43 - v12;
  v13 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v17 = (v16 - v15);
  v18 = OUTLINED_FUNCTION_432();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_183(v20);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v43 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F38, &qword_1B964D738) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_151();
  v45 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v26);
  v27 = *(v24 + 56);
  v48 = v4;
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_178(v0, 1, v13);
  if (v28)
  {
    OUTLINED_FUNCTION_178(v0 + v27, 1, v13);
    if (v28)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8F30, &qword_1B964D730);
      goto LABEL_11;
    }

LABEL_9:
    v29 = &qword_1EBAB8F38;
    v30 = &qword_1B964D738;
    v31 = v0;
    goto LABEL_25;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v0 + v27, 1, v13);
  if (v28)
  {
    OUTLINED_FUNCTION_48_12();
    sub_1B92A81EC();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_49();
  sub_1B92A813C();
  v32 = static Apple_Parsec_Rendering_V2_Rendering.== infix(_:_:)(v23, v17);
  sub_1B92A81EC();
  sub_1B92A81EC();
  sub_1B8D9207C(v0, &qword_1EBAB8F30, &qword_1B964D730);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  v33 = v48;
  v34 = *v48 == *v2 && v48[1] == v2[1];
  if (v34 || (sub_1B964C9F0() & 1) != 0)
  {
    v35 = *(v44 + 48);
    v36 = v47;
    OUTLINED_FUNCTION_235_1();
    OUTLINED_FUNCTION_235_1();
    v37 = v46;
    OUTLINED_FUNCTION_178(v36, 1, v46);
    if (v28)
    {
      OUTLINED_FUNCTION_178(v36 + v35, 1, v37);
      if (v28)
      {
        sub_1B8D9207C(v36, &qword_1EBAB8F10, &unk_1B964D710);
LABEL_28:
        v40 = v33[2] == v2[2] && v33[3] == v2[3];
        if (v40 || (sub_1B964C9F0() & 1) != 0)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_1_66();
          sub_1B8CD2E70(v41, v42, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_178(v36 + v35, 1, v37);
      if (!v38)
      {
        OUTLINED_FUNCTION_4_42();
        sub_1B92A813C();
        OUTLINED_FUNCTION_246();
        v39 = static Apple_Parsec_Visualsearch_V2_ResultMetadata.== infix(_:_:)();
        sub_1B92A81EC();
        sub_1B92A81EC();
        sub_1B8D9207C(v36, &qword_1EBAB8F10, &unk_1B964D710);
        if ((v39 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_46_12();
      sub_1B92A81EC();
    }

    v29 = &qword_1EBAB8F18;
    v30 = &unk_1B96B57A0;
    v31 = v36;
LABEL_25:
    sub_1B8D9207C(v31, v29, v30);
  }

LABEL_26:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92ACB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E70(&qword_1EBACAC08, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult, "yR}5xO\b");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92ACBF8(uint64_t a1)
{
  v2 = sub_1B8CD2E70(&qword_1EBACAA68, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92ACC68(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2E70(&qword_1EBACAA68, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_SectionResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B92ACD00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA9F8);
  __swift_project_value_buffer(v0, qword_1EBACA9F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "visual_search_domain";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "result_identifier";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "result_entities";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B92AD060(v11, v12, v13, v14);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B92AD0C8(v7, v8, v9, v10);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B92AD130(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92AD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0);
  sub_1B8CD2E70(&qword_1EBACAA88, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultEntity);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(v1 + 16) || (sub_1B8DEE788(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 3), !v0))
      {
        if (sub_1B8D58134(*(v1 + 32), *(v1 + 40), 0, 1) || (sub_1B92AEE74(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
        {
          if (!*(*(v1 + 64) + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0), sub_1B8CD2E70(&qword_1EBACAA88, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultEntity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
          {
            type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_ResultMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1B8D57FD0(*(v1 + 16), *(v1 + 24), *(v0 + 16), *(v0 + 24)) || !sub_1B8D58134(*(v1 + 32), *(v1 + 40), *(v0 + 32), *(v0 + 40)))
  {
    return 0;
  }

  v6 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D69EC8(*(v1 + 64), *(v0 + 64));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_66();
  v10 = sub_1B8CD2E70(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B92AD4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E70(&qword_1EBACAC00, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92AD564(uint64_t a1)
{
  v2 = sub_1B8CD2E70(&qword_1EBACAA78, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92AD5D4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2E70(&qword_1EBACAA78, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B92AD66C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAA10);
  __swift_project_value_buffer(v0, qword_1EBACAA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 1;
  *v12 = "book_entity";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 2;
  *v14 = "album_entity";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B92AD980(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B92ADE84(v7, v8, v9, v10);
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92AD980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAC48, &qword_1B96B65B8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0) + 24);
  v26 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8F00, &unk_1B964D700);
  }

  else
  {
    sub_1B92A813C();
    sub_1B92A813C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B92A81EC();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBACAC48, &qword_1B96B65B8);
      sub_1B92A813C();
      sub_1B92A813C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2E70(&qword_1EBACAC38, type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_BookEntity);
  v19 = v30;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACAC48, &qword_1B96B65B8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACAC48, &qword_1B96B65B8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACAC48, &qword_1B96B65B8);
  }

  sub_1B92A813C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v28;
  sub_1B8D9207C(v18, &qword_1EBACAC48, &qword_1B96B65B8);
  v24 = v25;
  v23 = v26;
  sub_1B8D9207C(v26 + v25, &qword_1EBAB8F00, &unk_1B964D700);
  sub_1B92A813C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_1B92ADE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAC50, &unk_1B96B65C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0) + 24);
  v26 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8F00, &unk_1B964D700);
  }

  else
  {
    sub_1B92A813C();
    sub_1B92A813C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBACAC50, &unk_1B96B65C0);
      sub_1B92A813C();
      sub_1B92A813C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B92A81EC();
    }
  }

  sub_1B8CD2E70(&qword_1EBACAC40, type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_AlbumEntity);
  v19 = v30;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACAC50, &unk_1B96B65C0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACAC50, &unk_1B96B65C0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACAC50, &unk_1B96B65C0);
  }

  sub_1B92A813C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v28;
  sub_1B8D9207C(v18, &qword_1EBACAC50, &unk_1B96B65C0);
  v24 = v25;
  v23 = v26;
  sub_1B8D9207C(v26 + v25, &qword_1EBAB8F00, &unk_1B964D700);
  sub_1B92A813C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

void Apple_Parsec_Visualsearch_V2_ResultEntity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_273_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_614();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  OUTLINED_FUNCTION_183(v24);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0);
  sub_1B8D92024();
  v28 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_491();
    OUTLINED_FUNCTION_24_3();
    v21 = v20;
    sub_1B92AE704(v29, v30, v31, v32);
  }

  else
  {
    OUTLINED_FUNCTION_491();
    OUTLINED_FUNCTION_24_3();
    v21 = v20;
    sub_1B92AE4E4(v33, v34, v35, v36);
  }

  OUTLINED_FUNCTION_0_79();
  sub_1B92A81EC();
  if (!v21)
  {
LABEL_6:
    OUTLINED_FUNCTION_1();
    if (!v39 || (OUTLINED_FUNCTION_3(v37, v38, 3), !v21))
    {
      OUTLINED_FUNCTION_1();
      if (!v42 || (OUTLINED_FUNCTION_3(v40, v41, 4), !v21))
      {
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B92AE4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8F00, &unk_1B964D700);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B92A813C();
      sub_1B8CD2E70(&qword_1EBACAC38, type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_BookEntity);
      sub_1B964C740();
      return sub_1B92A81EC();
    }

    result = sub_1B92A81EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92AE704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8F00, &unk_1B964D700);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B92A813C();
      sub_1B8CD2E70(&qword_1EBACAC40, type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_AlbumEntity);
      sub_1B964C740();
      return sub_1B92A81EC();
    }

    result = sub_1B92A81EC();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Visualsearch_V2_ResultEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F08, &qword_1B96B57B0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  v10 = *v1 == *v0 && v1[1] == v0[1];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v21[1] = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(0);
  v12 = *(v6 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v2);
  if (v10)
  {
    OUTLINED_FUNCTION_178(&v9[v12], 1, v2);
    if (v10)
    {
      sub_1B8D9207C(v9, &qword_1EBAB8F00, &unk_1B964D700);
LABEL_22:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_66();
      v20 = sub_1B8CD2E70(v18, v19, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_634(v20);
      goto LABEL_23;
    }

LABEL_19:
    sub_1B8D9207C(v9, &qword_1EBAB8F08, &qword_1B96B57B0);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v9[v12], 1, v2);
  if (v15)
  {
    OUTLINED_FUNCTION_0_79();
    sub_1B92A81EC();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_19_22();
  sub_1B92A813C();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity.== infix(_:_:)();
  v17 = v16;
  sub_1B92A81EC();
  sub_1B92A81EC();
  sub_1B8D9207C(v9, &qword_1EBAB8F00, &unk_1B964D700);
  if (v17)
  {
    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92AEC2C()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD2E70(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92AED04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E70(&qword_1EBACABF8, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92AED84(uint64_t a1)
{
  v2 = sub_1B8CD2E70(&qword_1EBACAA88, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92AEDF4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2E70(&qword_1EBACAA88, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_ResultEntity);

  return sub_1B964C5D0();
}

unint64_t sub_1B92AEE74()
{
  result = qword_1ED9C9A10;
  if (!qword_1ED9C9A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchDomain, &type metadata for Apple_Parsec_Visualsearch_V2_VisualSearchDomain, v0, v1);
    atomic_store(result, &qword_1ED9C9A10);
  }

  return result;
}

uint64_t sub_1B92AF7F0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B92AF89C(uint64_t a1)
{
  sub_1B92AFAC4(319, &qword_1EBACAB40, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92AF980(uint64_t a1)
{
  sub_1B92AFAC4(319, &qword_1EBACAB58, type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B92AFAC4(319, &qword_1EBACAB60, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B92AFAC4(319, &qword_1ED9EC620, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B92AFAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B92AFB50(uint64_t a1)
{
  sub_1B92AFAC4(319, &qword_1EBACAB78, type metadata accessor for Domainresultpb_DomainResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92AFC3C(uint64_t a1)
{
  sub_1B92AFAC4(319, &qword_1EBACAB90, type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92AFD30(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B92AFAC4(319, &qword_1EBACABA8, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B92AFAC4(319, &qword_1EBACABB0, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92AFE64(uint64_t a1)
{
  sub_1B92AFAC4(319, &qword_1EBACABC8, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92AFF64(uint64_t a1)
{
  sub_1B92AFAC4(319, &qword_1EBACABE0, type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B92B0028(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B92B00A4(uint64_t a1)
{
  sub_1B92AFAC4(319, &qword_1ED9F0100, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B92AFAC4(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_31_22()
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_99_9(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_102_9()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_105_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B964C700();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchDomain.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 1;
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      break;
    case 18:
      result = 19;
      break;
    case 19:
      result = 20;
      break;
    case 20:
      result = 21;
      break;
    case 21:
      result = 22;
      break;
    case 22:
      result = 23;
      break;
    case 23:
      result = 24;
      break;
    case 24:
      result = 25;
      break;
    case 25:
      result = 26;
      break;
    case 26:
      result = 18;
      break;
    default:
      v2 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchDomain.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96B67F8[result];
  }

  return result;
}

uint64_t sub_1B92B0518@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Visualsearch_V2_VisualSearchDomain.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92B054C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92AEE74();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Visualsearch_V2_VisualSearchDomain.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1ED9C9A18 = a1;
}

uint64_t sub_1B92B06B0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Visualsearch_V2_VisualSearchDomain.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92B06D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAC58);
  __swift_project_value_buffer(v0, qword_1EBACAC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1B96B65E0;
  v4 = v60 + v3 + v1[14];
  *(v60 + v3) = 0;
  *v4 = "DOMAIN_UNSPECIFIED";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v60 + v3 + v2 + v1[14];
  *(v60 + v3 + v2) = 1;
  *v8 = "ART";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v60 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "BOOK";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v60 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CATS";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v60 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "DOGS";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v60 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "NATURE";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v60 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "MEDIA";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v60 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "LANDMARK";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v60 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "OBJECT_2D";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  v23 = (v60 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ALBUM";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v60 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ANIMALS";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v60 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PACKAGED_PRODUCT";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  v29 = (v60 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "NATURAL_LANDMARK";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v7();
  v31 = (v60 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SCULPTURE";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v7();
  v33 = (v60 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SKYLINE";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v7();
  v35 = (v60 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "BIRDS";
  *(v36 + 1) = 5;
  v36[16] = 2;
  v7();
  v37 = (v60 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "INSECTS";
  *(v38 + 1) = 7;
  v38[16] = 2;
  v7();
  v39 = (v60 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "APPAREL";
  *(v40 + 1) = 7;
  v40[16] = 2;
  v7();
  v41 = (v60 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "FOOD";
  *(v42 + 1) = 4;
  v42[16] = 2;
  v7();
  v43 = (v60 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "STOREFRONT";
  *(v44 + 1) = 10;
  v44[16] = 2;
  v7();
  v45 = (v60 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "SIGN_SYMBOL";
  *(v46 + 1) = 11;
  v46[16] = 2;
  v7();
  v47 = (v60 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "LAUNDRY_CARE_SYMBOL";
  *(v48 + 1) = 19;
  v48[16] = 2;
  v7();
  v49 = (v60 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "AUTO_SYMBOL";
  *(v50 + 1) = 11;
  v50[16] = 2;
  v7();
  v51 = (v60 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "BRAND_LOGO_SYMBOL";
  *(v52 + 1) = 17;
  v52[16] = 2;
  v7();
  v53 = (v60 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "MAMMALS";
  *(v54 + 1) = 7;
  v54[16] = 2;
  v7();
  v55 = (v60 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "REPTILES";
  *(v56 + 1) = 8;
  v56[16] = 2;
  v7();
  v57 = (v60 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "ACCESSORIES";
  *(v58 + 1) = 11;
  v58[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Visualsearch_V2_VisualSearchDomain._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7D40 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACAC58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B92B0F18()
{
  result = qword_1ED9C9A08;
  if (!qword_1ED9C9A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchDomain, &type metadata for Apple_Parsec_Visualsearch_V2_VisualSearchDomain, v0, v1);
    atomic_store(result, &qword_1ED9C9A08);
  }

  return result;
}

unint64_t sub_1B92B0F70()
{
  result = qword_1ED9C99F8;
  if (!qword_1ED9C99F8)
  {
    result = swift_getWitnessTable("\t)~5@J\b", &type metadata for Apple_Parsec_Visualsearch_V2_VisualSearchDomain, v0, v1);
    atomic_store(result, &qword_1ED9C99F8);
  }

  return result;
}

unint64_t sub_1B92B0FC8()
{
  result = qword_1ED9C9A00;
  if (!qword_1ED9C9A00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_VisualSearchDomain, &type metadata for Apple_Parsec_Visualsearch_V2_VisualSearchDomain, v0, v1);
    atomic_store(result, &qword_1ED9C9A00);
  }

  return result;
}

unint64_t sub_1B92B1020()
{
  result = qword_1EBACAC70;
  if (!qword_1EBACAC70)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBACAC78, &qword_1B96B66D8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBACAC70);
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = 0;
  v1[9] = v2;
  v1[10] = 0;
  v1[11] = v2;
  v3 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 44);
  v5 = sub_1B964C110();

  return __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_AlbumEntity.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Apple_Parsec_Visualsearch_V2_BookEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = *v1 == *v0 && v1[1] == v0[1];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  v17 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  v18 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  v19 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  v20 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  v21 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0) + 44);
  v22 = *(v12 + 48);
  sub_1B8EA6D9C(v1 + v21, v15);
  sub_1B8EA6D9C(v0 + v21, &v15[v22]);
  OUTLINED_FUNCTION_178(v15, 1, v2);
  if (!v16)
  {
    sub_1B8EA6D9C(v15, v11);
    OUTLINED_FUNCTION_178(&v15[v22], 1, v2);
    if (!v23)
    {
      (*(v4 + 32))(v7, &v15[v22], v2);
      OUTLINED_FUNCTION_3_52();
      sub_1B8CD2EB8(v26, v27, MEMORY[0x1E69AA908]);
      v28 = sub_1B964C850();
      v29 = *(v4 + 8);
      v29(v7, v2);
      v29(v11, v2);
      sub_1B8D9207C(v15, &off_1EBAB90F0, &unk_1B964D8E0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    (*(v4 + 8))(v11, v2);
LABEL_34:
    sub_1B8D9207C(v15, &qword_1EBAB90F8, &qword_1B9687990);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_178(&v15[v22], 1, v2);
  if (!v16)
  {
    goto LABEL_34;
  }

  sub_1B8D9207C(v15, &off_1EBAB90F0, &unk_1B964D8E0);
LABEL_38:
  v30 = v1[10] == v0[10] && v1[11] == v0[11];
  if (v30 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_50();
    sub_1B8CD2EB8(v31, v32, MEMORY[0x1E69AAC10]);
    v24 = sub_1B964C850();
    return v24 & 1;
  }

LABEL_35:
  v24 = 0;
  return v24 & 1;
}

uint64_t static Apple_Parsec_Visualsearch_V2_AlbumEntity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_50();
  sub_1B8CD2EB8(v7, v8, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.adamID.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.title.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.seriesTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.author.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.genre.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.purchasedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
  sub_1B8EA6D9C(v1 + *(v7 + 44), v6);
  v8 = sub_1B964C110();
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (!v9)
  {
    return (*(*(v8 - 8) + 32))(a1, v6, v8);
  }

  sub_1B964C100();
  result = OUTLINED_FUNCTION_178(v6, 1, v8);
  if (!v9)
  {
    return sub_1B8D9207C(v6, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  return result;
}

uint64_t sub_1B92B19A4(uint64_t a1)
{
  v2 = sub_1B964C110();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Visualsearch_V2_BookEntity.purchasedDate.setter();
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.purchasedDate.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(v2) + 44);
  sub_1B8D9207C(v1 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
  v4 = sub_1B964C110();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Visualsearch_V2_BookEntity.purchasedDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C110();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1();
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0) + 44);
  *(v3 + 12) = v13;
  sub_1B8EA6D9C(v1 + v13, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v14)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B92B1CA0;
}

void sub_1B92B1CA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1B8D9207C(v9 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_43_1();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.hasPurchasedDate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
  sub_1B8EA6D9C(v0 + *(v5 + 44), v4);
  v6 = sub_1B964C110();
  OUTLINED_FUNCTION_178(v4, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_1B8D9207C(v4, &off_1EBAB90F0, &unk_1B964D8E0);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Visualsearch_V2_BookEntity.clearPurchasedDate()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0) + 44);
  sub_1B8D9207C(v0 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
  v2 = sub_1B964C110();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.url.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(v2) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Visualsearch_V2_BookEntity.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Visualsearch_V2_AlbumEntity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Visualsearch_V2_AlbumEntity.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Visualsearch_V2_AlbumEntity.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(v0);
  return nullsub_1;
}

uint64_t sub_1B92B2228()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAC80);
  __swift_project_value_buffer(v0, qword_1EBACAC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "adam_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "seriesTitle";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "author";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "genre";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "purchasedDate";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "url";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 7:
        sub_1B964C530();
        break;
      case 6:
        sub_1B92B2608(v1, v0, v4, v3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92B2608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
  sub_1B964C110();
  sub_1B8CD2EB8(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Visualsearch_V2_BookEntity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v18 || (result = OUTLINED_FUNCTION_156_0(v16, v17, 1), (v5 = v4) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v22 || (result = OUTLINED_FUNCTION_156_0(v20, v21, 2), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v25 || (result = OUTLINED_FUNCTION_156_0(v23, v24, 3), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_1();
        if (!v28 || (result = OUTLINED_FUNCTION_156_0(v26, v27, 4), (v5 = v4) == 0))
        {
          OUTLINED_FUNCTION_1();
          if (!v31 || (result = OUTLINED_FUNCTION_156_0(v29, v30, 5), (v5 = v4) == 0))
          {
            v36 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
            sub_1B8EA6D9C(v3 + *(v36 + 44), v9);
            if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
            {
              sub_1B8D9207C(v9, &off_1EBAB90F0, &unk_1B964D8E0);
            }

            else
            {
              (*(v12 + 32))(v15, v9, v10);
              OUTLINED_FUNCTION_3_52();
              sub_1B8CD2EB8(v32, v33, MEMORY[0x1E69AA8F8]);
              sub_1B964C740();
              if (v5)
              {
                return (*(v12 + 8))(v15, v10);
              }

              (*(v12 + 8))(v15, v10);
            }

            OUTLINED_FUNCTION_1();
            if (!v34)
            {
              return sub_1B964C290();
            }

            result = sub_1B964C700();
            if (!v5)
            {
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B92B2A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2EB8(&qword_1EBACAD08, type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_BookEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92B2AC0(uint64_t a1)
{
  v2 = sub_1B8CD2EB8(&qword_1EBACAC38, type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_BookEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92B2B30(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2EB8(&qword_1EBACAC38, type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_BookEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B92B2BCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAC98);
  __swift_project_value_buffer(v0, qword_1EBACAC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "adam_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "artist_name";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_AlbumEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_AlbumEntity.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v1))
      {
        type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity(0);
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t sub_1B92B2F80(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2EB8(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92B3064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2EB8(&qword_1EBACAD00, type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_AlbumEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92B30E4(uint64_t a1)
{
  v2 = sub_1B8CD2EB8(&qword_1EBACAC40, type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_AlbumEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92B3154(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2EB8(&qword_1EBACAC40, type metadata accessor for Apple_Parsec_Visualsearch_V2_AlbumEntity, protocol conformance descriptor for Apple_Parsec_Visualsearch_V2_AlbumEntity);

  return sub_1B964C5D0();
}

void sub_1B92B343C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B92B34DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92B34DC(uint64_t a1)
{
  if (!qword_1ED9EB350)
  {
    sub_1B964C110();
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9EB350);
    }
  }
}

uint64_t Apple_Parsec_Zkw_V1alpha_TopicInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B92B3694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92B73A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Zkw_V1alpha_TopicType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B92B3784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Zkw_V1alpha_TopicType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B92B37D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92B9250();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Zkw_V1alpha_TopicEngagementType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B92B38C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Zkw_V1alpha_TopicEngagementType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.detail.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v0);
  return sub_1B8D92024();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.detail.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v2) + 28);

  return sub_1B92B3A54(v0, v3);
}

uint64_t sub_1B92B3A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.detail.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.flight.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v5);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBACADF8, &qword_1B96B6C40);
LABEL_6:
    *a1 = 0;
    v8 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(0);
    return OUTLINED_FUNCTION_163_2(v8);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_80();
    sub_1B92B3DC8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_30();
  OUTLINED_FUNCTION_182();
  return sub_1B92B4004();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Apple_Parsec_Zkw_V1alpha_Topic.flight.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_17_23(v10);
  OUTLINED_FUNCTION_21_20();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_10_30();
      OUTLINED_FUNCTION_177_1();
      sub_1B92B4004();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_80();
    sub_1B92B3DC8();
  }

  *v9 = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B92B3DC8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.weather.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v5);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_8_34();
      OUTLINED_FUNCTION_182();
      return sub_1B92B4004();
    }

    OUTLINED_FUNCTION_0_80();
    sub_1B92B3DC8();
  }

  *a1 = 0;
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B92B3F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B92B41BC();
  return a7(v7);
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B92B4004()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

void Apple_Parsec_Zkw_V1alpha_Topic.weather.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_17_23(v10);
  OUTLINED_FUNCTION_21_20();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBACADF8, &qword_1B96B6C40);
LABEL_7:
    *v9 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0_80();
    sub_1B92B3DC8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_177_1();
  sub_1B92B4004();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B92B41BC()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.sports.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v3);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_66_6();
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    sub_1B8D9207C(v0, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_7_34();
      OUTLINED_FUNCTION_182();
      return sub_1B92B4004();
    }

    OUTLINED_FUNCTION_0_80();
    sub_1B92B3DC8();
  }

  OUTLINED_FUNCTION_132_2();
  v7 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(0);
  return OUTLINED_FUNCTION_163_2(v7);
}

uint64_t sub_1B92B4308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  sub_1B8D9207C(v2 + *(v4 + 28), &qword_1EBACADF8, &qword_1B96B6C40);
  sub_1B92B4004();
  OUTLINED_FUNCTION_66_6();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, a2);
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail.init()()
{
  OUTLINED_FUNCTION_132_2();
  v0 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(0);
  return OUTLINED_FUNCTION_163_2(v0);
}

void Apple_Parsec_Zkw_V1alpha_Topic.sports.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_17_23(v10);
  OUTLINED_FUNCTION_21_20();
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBACADF8, &qword_1B96B6C40);
LABEL_7:
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0_80();
    sub_1B92B3DC8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_177_1();
  sub_1B92B4004();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B92B455C()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = *(*v0 + 10);
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B92B41BC();
    sub_1B8D9207C(v6 + v3, &qword_1EBACADF8, &qword_1B96B6C40);
    sub_1B92B4004();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    sub_1B92B3DC8();
  }

  else
  {
    sub_1B8D9207C(v6 + v3, &qword_1EBACADF8, &qword_1B96B6C40);
    sub_1B92B4004();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  }

  free(v1);
  free(v5);
  free(v4);
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v2) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v37 = v0;
  v34[2] = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_62();
  v36 = (v3 - v2);
  v34[1] = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v35 = (v6 - v5);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_59_1();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (v34 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v34 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAE00, &qword_1B96B6C48);
  OUTLINED_FUNCTION_183(v20);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v34 - v22;
  sub_1B92B41BC();
  sub_1B92B41BC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_30();
      sub_1B92B41BC();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_8_34();
        v25 = v35;
        sub_1B92B4004();
        if (*v17 == *v25 && v17[1] == v25[1])
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_1_67();
          sub_1B8CD2F00(v26, v27, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
          OUTLINED_FUNCTION_4_43();
          sub_1B92B3DC8();
        }

        else
        {
          OUTLINED_FUNCTION_4_43();
          sub_1B92B3DC8();
        }

        OUTLINED_FUNCTION_4_43();
LABEL_25:
        sub_1B92B3DC8();
        OUTLINED_FUNCTION_0_80();
        sub_1B92B3DC8();
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_4_43();
    }

    else
    {
      OUTLINED_FUNCTION_6_30();
      sub_1B92B41BC();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_7_34();
        v28 = v36;
        sub_1B92B4004();
        v29 = *v14 == *v28 && v14[1] == v28[1];
        if (v29 || (sub_1B964C9F0() & 1) != 0)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_1_67();
          sub_1B8CD2F00(v30, v31, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_27_13();
        sub_1B92B3DC8();
        goto LABEL_25;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_30();
    sub_1B92B41BC();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_10_30();
      sub_1B92B4004();
      if (*v19 == *v10)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_67();
        sub_1B8CD2F00(v32, v33, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_3_53();
      sub_1B92B3DC8();
      OUTLINED_FUNCTION_3_53();
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_3_53();
  }

  sub_1B92B3DC8();
  sub_1B8D9207C(v23, &qword_1EBACAE00, &qword_1B96B6C48);
LABEL_26:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(v2);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_67();
  v5 = sub_1B8CD2F00(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t static Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_67();
  v6 = sub_1B8CD2F00(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t static Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_67();
  v6 = sub_1B8CD2F00(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail.requestedEntityType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B92B504C()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B92B50D4()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_132_2();
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Zkw_V1alpha_TopicInfo.zkwTopic.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(v5);
  OUTLINED_FUNCTION_18_23();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = v7;
    type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAE08, &qword_1B96B6C50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_182();
    return sub_1B92B4004();
  }

  return result;
}

uint64_t Apple_Parsec_Zkw_V1alpha_TopicInfo.zkwTopic.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBACAE08, &qword_1B96B6C50);
  OUTLINED_FUNCTION_2_51();
  sub_1B92B4004();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Zkw_V1alpha_TopicInfo.zkwTopic.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 8) = v5;
  v6 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  *(v0 + 32) = v9;
  *(v0 + 40) = *(type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0) + 28);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v5, 1, v6);
  if (v10)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    *(v9 + 24) = 1;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v5, 1, v6);
    if (!v10)
    {
      sub_1B8D9207C(v5, &qword_1EBACAE08, &qword_1B96B6C50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    sub_1B92B4004();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B92B54F4()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_128();
    sub_1B92B41BC();
    sub_1B8D9207C(v6 + v1, &qword_1EBACAE08, &qword_1B96B6C50);
    OUTLINED_FUNCTION_2_51();
    sub_1B92B4004();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    OUTLINED_FUNCTION_9_27();
    sub_1B92B3DC8();
  }

  else
  {
    sub_1B8D9207C(v6 + v1, &qword_1EBACAE08, &qword_1B96B6C50);
    OUTLINED_FUNCTION_2_51();
    sub_1B92B4004();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Zkw_V1alpha_TopicInfo.hasZkwTopic.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAE08, &qword_1B96B6C50);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(v3);
  sub_1B8D92024();
  v4 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  OUTLINED_FUNCTION_178(v0, 1, v4);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v7, v8, &qword_1B96B6C50);
  return v6;
}

Swift::Void __swiftcall Apple_Parsec_Zkw_V1alpha_TopicInfo.clearZkwTopic()()
{
  v1 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBACAE08, &qword_1B96B6C50);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Zkw_V1alpha_TopicInfo.engagementType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1B92B57A0()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B92B5828()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_Zkw_V1alpha_TopicInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B92B58DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAD20);
  __swift_project_value_buffer(v0, qword_1EBACAD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TOPIC_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TOPIC_TYPE_FLIGHT";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TOPIC_TYPE_MEDIA";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TOPIC_TYPE_WEATHER";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TOPIC_TYPE_ENTITY";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TOPIC_TYPE_GENERIC";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "TOPIC_TYPE_RELATED_POI";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "TOPIC_TYPE_WEB_PUNCHOUT";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "TOPIC_TYPE_SPORTS";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B92B5C7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAD38);
  __swift_project_value_buffer(v0, qword_1EBACAD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TOPIC_ENGAGEMENT_TYPE_UNKNOWN";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TOPIC_ENGAGEMENT_TYPE_ON_CLICK";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TOPIC_ENGAGEMENT_TYPE_IF_SHOWN_ON_SESSION_END";
  *(v12 + 1) = 45;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B92B5EC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAD50);
  __swift_project_value_buffer(v0, qword_1EBACAD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "id";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "flight";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 11;
  *v16 = "weather";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "sports";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B92B626C(v11, v12, v13, v14);
        break;
      case 10:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B92B62D4(v7, v8, v9, v10);
        break;
      case 11:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B92B67D8(v3, v4, v5, v6);
        break;
      case 12:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B92B6CDC(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92B62D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF40, &qword_1B96B77A8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0) + 28);
  v26 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    sub_1B92B4004();
    sub_1B92B4004();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B92B3DC8();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBACAF40, &qword_1B96B77A8);
      sub_1B92B4004();
      sub_1B92B4004();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2F00(&qword_1EBACAEC8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail);
  v19 = v30;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACAF40, &qword_1B96B77A8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACAF40, &qword_1B96B77A8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACAF40, &qword_1B96B77A8);
  }

  sub_1B92B4004();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v28;
  sub_1B8D9207C(v18, &qword_1EBACAF40, &qword_1B96B77A8);
  v24 = v25;
  v23 = v26;
  sub_1B8D9207C(v26 + v25, &qword_1EBACADF8, &qword_1B96B6C40);
  sub_1B92B4004();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_1B92B67D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF48, &qword_1B96B77B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0) + 28);
  v26 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    sub_1B92B4004();
    sub_1B92B4004();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBACAF48, &qword_1B96B77B0);
      sub_1B92B4004();
      sub_1B92B4004();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B92B3DC8();
    }
  }

  sub_1B8CD2F00(&qword_1EBACAEE0, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail);
  v19 = v30;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACAF48, &qword_1B96B77B0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACAF48, &qword_1B96B77B0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACAF48, &qword_1B96B77B0);
  }

  sub_1B92B4004();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v28;
  sub_1B8D9207C(v18, &qword_1EBACAF48, &qword_1B96B77B0);
  v24 = v25;
  v23 = v26;
  sub_1B8D9207C(v26 + v25, &qword_1EBACADF8, &qword_1B96B6C40);
  sub_1B92B4004();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_1B92B6CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF50, &qword_1B96B77B8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0) + 28);
  v26 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    sub_1B92B4004();
    sub_1B92B4004();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBACAF50, &qword_1B96B77B8);
      sub_1B92B4004();
      sub_1B92B4004();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B92B3DC8();
    }
  }

  sub_1B8CD2F00(&qword_1EBACAEF8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail);
  v19 = v30;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACAF50, &qword_1B96B77B8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACAF50, &qword_1B96B77B8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACAF50, &qword_1B96B77B8);
  }

  sub_1B92B4004();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v28;
  sub_1B8D9207C(v18, &qword_1EBACAF50, &qword_1B96B77B8);
  v24 = v25;
  v23 = v26;
  sub_1B8D9207C(v26 + v25, &qword_1EBACADF8, &qword_1B96B6C40);
  sub_1B92B4004();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  OUTLINED_FUNCTION_1();
  if (!v6 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (v8 = *(v1 + 24), v24 = *(v1 + 16), v25 = v8, sub_1B92B73A4(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
      {
        type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
        sub_1B8D92024();
        v10 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
        if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
        {
          return OUTLINED_FUNCTION_8_1();
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v12 = OUTLINED_FUNCTION_100_5();
            sub_1B92B7614(v12, v13, v14, v15);
          }

          else
          {
            v20 = OUTLINED_FUNCTION_100_5();
            sub_1B92B7834(v20, v21, v22, v23);
          }
        }

        else
        {
          v16 = OUTLINED_FUNCTION_100_5();
          sub_1B92B73F8(v16, v17, v18, v19);
        }

        OUTLINED_FUNCTION_0_80();
        result = sub_1B92B3DC8();
        if (!v0)
        {
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B92B73A4()
{
  result = qword_1EBACAE10;
  if (!qword_1EBACAE10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicType, &type metadata for Apple_Parsec_Zkw_V1alpha_TopicType, v0, v1);
    atomic_store(result, &qword_1EBACAE10);
  }

  return result;
}

uint64_t sub_1B92B73F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B92B4004();
      sub_1B8CD2F00(&qword_1EBACAEC8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail);
      sub_1B964C740();
      return sub_1B92B3DC8();
    }

    result = sub_1B92B3DC8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92B7614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B92B4004();
      sub_1B8CD2F00(&qword_1EBACAEE0, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail);
      sub_1B964C740();
      return sub_1B92B3DC8();
    }

    result = sub_1B92B3DC8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92B7834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(0);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBACADF8, &qword_1B96B6C40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B92B4004();
      sub_1B8CD2F00(&qword_1EBACAEF8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail);
      sub_1B964C740();
      return sub_1B92B3DC8();
    }

    result = sub_1B92B3DC8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Zkw_V1alpha_Topic.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_280();
  v3 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(v2);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACADF8, &qword_1B96B6C40);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAE18, &qword_1B96B6C58);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = *v1 == *v0 && v1[1] == *(v0 + 8);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v12 = v1[2];
  v13 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    switch(v13)
    {
      case 1:
        if (v12 == 1)
        {
          goto LABEL_11;
        }

        break;
      case 2:
        if (v12 == 2)
        {
          goto LABEL_11;
        }

        break;
      case 3:
        if (v12 == 3)
        {
          goto LABEL_11;
        }

        break;
      case 4:
        if (v12 == 4)
        {
          goto LABEL_11;
        }

        break;
      case 5:
        if (v12 == 5)
        {
          goto LABEL_11;
        }

        break;
      case 6:
        if (v12 == 6)
        {
          goto LABEL_11;
        }

        break;
      case 7:
        if (v12 == 7)
        {
          goto LABEL_11;
        }

        break;
      case 8:
        if (v12 == 8)
        {
          goto LABEL_11;
        }

        break;
      default:
        if (!v12)
        {
          goto LABEL_11;
        }

        break;
    }

    goto LABEL_25;
  }

  if (v12 != v13)
  {
    goto LABEL_25;
  }

LABEL_11:
  v14 = v1[4] == *(v0 + 32) && v1[5] == *(v0 + 40);
  if (v14 || (sub_1B964C9F0() & 1) != 0)
  {
    v22[1] = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
    v15 = *(v7 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v10, 1, v3);
    if (v11)
    {
      OUTLINED_FUNCTION_178(&v10[v15], 1, v3);
      if (v11)
      {
        sub_1B8D9207C(v10, &qword_1EBACADF8, &qword_1B96B6C40);
        goto LABEL_27;
      }
    }

    else
    {
      OUTLINED_FUNCTION_177_1();
      sub_1B8D92024();
      OUTLINED_FUNCTION_178(&v10[v15], 1, v3);
      if (!v16)
      {
        sub_1B92B4004();
        static Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail.== infix(_:_:)();
        v18 = v17;
        sub_1B92B3DC8();
        sub_1B92B3DC8();
        sub_1B8D9207C(v10, &qword_1EBACADF8, &qword_1B96B6C40);
        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_27:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_67();
        v21 = sub_1B8CD2F00(v19, v20, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_634(v21);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_0_80();
      sub_1B92B3DC8();
    }

    sub_1B8D9207C(v10, &qword_1EBACAE18, &qword_1B96B6C58);
  }

LABEL_25:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92B7E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2F00(&qword_1EBACAF38, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic, "1B}5tA\b");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92B7EF0(uint64_t a1)
{
  v2 = sub_1B8CD2F00(&qword_1EBACAE48, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92B7F60(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2F00(&qword_1EBACAE48, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C720(), !v1))
  {
    type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B92B81B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2F00(&qword_1EBACAF30, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92B8230(uint64_t a1)
{
  v2 = sub_1B8CD2F00(&qword_1EBACAEC8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92B82A0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2F00(&qword_1EBACAEC8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B92B8370()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACADA0);
  __swift_project_value_buffer(v0, qword_1EBACADA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "long";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B92B86D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2F00(&qword_1EBACAF28, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92B8758(uint64_t a1)
{
  v2 = sub_1B8CD2F00(&qword_1EBACAEE0, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92B87C8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2F00(&qword_1EBACAEE0, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B92B8878(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD00000000000001ELL;
  *a5 = 0x80000001B97156A0;
  return result;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
  {
    type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B92B8A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2F00(&qword_1EBACAF20, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92B8B0C(uint64_t a1)
{
  v2 = sub_1B8CD2F00(&qword_1EBACAEF8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92B8B7C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2F00(&qword_1EBACAEF8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B92B8C18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACADE0);
  __swift_project_value_buffer(v0, qword_1EBACADE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zkw_topic";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  *(v6 + 24) = "topic";
  *(v6 + 32) = 5;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "engagement_type";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "minimum_query_repeats";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Zkw_V1alpha_TopicInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 2:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B92B8F9C(v7, v8, v9, v10);
        break;
      case 1:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B92B8EE8(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B92B8EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  sub_1B8CD2F00(&qword_1EBACAE48, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Zkw_V1alpha_TopicInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v5 = OUTLINED_FUNCTION_177_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v18 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  v19 = v3;
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  if (__swift_getEnumTagSinglePayload(v12, v13, v14) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBACAE08, &qword_1B96B6C50);
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    sub_1B92B4004();
    sub_1B8CD2F00(&qword_1EBACAE48, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_Topic);
    sub_1B964C740();
    OUTLINED_FUNCTION_9_27();
    result = sub_1B92B3DC8();
    if (v4)
    {
      return result;
    }
  }

  v16 = v19;
  if (!*v19 || (v17 = *(v19 + 8), v20 = *v19, v21 = v17, sub_1B92B9250(), result = sub_1B964C680(), !v4))
  {
    if (!*(v16 + 3))
    {
      return sub_1B964C290();
    }

    result = sub_1B964C6C0();
    if (!v4)
    {
      return sub_1B964C290();
    }
  }

  return result;
}

unint64_t sub_1B92B9250()
{
  result = qword_1EBACAE40;
  if (!qword_1EBACAE40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicEngagementType, &type metadata for Apple_Parsec_Zkw_V1alpha_TopicEngagementType, v0, v1);
    atomic_store(result, &qword_1EBACAE40);
  }

  return result;
}

void static Apple_Parsec_Zkw_V1alpha_TopicInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAE08, &qword_1B96B6C50);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAE50, &qword_1B96B6C60);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo(0);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  if (!v18)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_178(v15, v16, v17);
    if (!v18)
    {
      OUTLINED_FUNCTION_2_51();
      sub_1B92B4004();
      static Apple_Parsec_Zkw_V1alpha_Topic.== infix(_:_:)();
      v20 = v19;
      sub_1B92B3DC8();
      sub_1B92B3DC8();
      sub_1B8D9207C(v1, &qword_1EBACAE08, &qword_1B96B6C50);
      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_9_27();
    sub_1B92B3DC8();
LABEL_9:
    sub_1B8D9207C(v1, &qword_1EBACAE50, &qword_1B96B6C60);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v1, &qword_1EBACAE08, &qword_1B96B6C50);
LABEL_12:
  v21 = *v0;
  v22 = *v3;
  if (*(v3 + 8) == 1)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        if (v21 != 1)
        {
          goto LABEL_10;
        }
      }

      else if (v21 != 2)
      {
        goto LABEL_10;
      }
    }

    else if (v21)
    {
      goto LABEL_10;
    }
  }

  else if (v21 != v22)
  {
    goto LABEL_10;
  }

  if (*(v0 + 3) == *(v3 + 3))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_67();
    sub_1B8CD2F00(v23, v24, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
  }

LABEL_10:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92B95DC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2F00(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92B96BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2F00(&qword_1EBACAF18, type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92B973C(uint64_t a1)
{
  v2 = sub_1B8CD2F00(&qword_1EBAC3EA0, type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92B97AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2F00(&qword_1EBAC3EA0, type metadata accessor for Apple_Parsec_Zkw_V1alpha_TopicInfo, protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B92B982C()
{
  result = qword_1EBACAE60;
  if (!qword_1EBACAE60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicType, &type metadata for Apple_Parsec_Zkw_V1alpha_TopicType, v0, v1);
    atomic_store(result, &qword_1EBACAE60);
  }

  return result;
}

unint64_t sub_1B92B9884()
{
  result = qword_1EBACAE68;
  if (!qword_1EBACAE68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicType, &type metadata for Apple_Parsec_Zkw_V1alpha_TopicType, v0, v1);
    atomic_store(result, &qword_1EBACAE68);
  }

  return result;
}

unint64_t sub_1B92B98DC()
{
  result = qword_1EBACAE70;
  if (!qword_1EBACAE70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicType, &type metadata for Apple_Parsec_Zkw_V1alpha_TopicType, v0, v1);
    atomic_store(result, &qword_1EBACAE70);
  }

  return result;
}

unint64_t sub_1B92B9964()
{
  result = qword_1EBACAE88;
  if (!qword_1EBACAE88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicEngagementType, &type metadata for Apple_Parsec_Zkw_V1alpha_TopicEngagementType, v0, v1);
    atomic_store(result, &qword_1EBACAE88);
  }

  return result;
}

unint64_t sub_1B92B99BC()
{
  result = qword_1EBACAE90;
  if (!qword_1EBACAE90)
  {
    result = swift_getWitnessTable("i!~5(C\b", &type metadata for Apple_Parsec_Zkw_V1alpha_TopicEngagementType, v0, v1);
    atomic_store(result, &qword_1EBACAE90);
  }

  return result;
}

unint64_t sub_1B92B9A14()
{
  result = qword_1EBACAE98;
  if (!qword_1EBACAE98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Zkw_V1alpha_TopicEngagementType, &type metadata for Apple_Parsec_Zkw_V1alpha_TopicEngagementType, v0, v1);
    atomic_store(result, &qword_1EBACAE98);
  }

  return result;
}

void sub_1B92BA084(uint64_t a1)
{
  sub_1B92BA324(319, qword_1ED9CC290, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B92BA144(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.FlightDetail(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.WeatherDetail(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.SportsDetail(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B92BA26C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B92BA324(319, qword_1ED9CC0A8, type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92BA324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_17_23(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = *(type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic(0) + 28);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_18_23()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_21_20()
{
  v2 = type metadata accessor for Apple_Parsec_Zkw_V1alpha_Topic.OneOf_Detail(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t Searchfoundation_ActionItem.label.getter()
{
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_ActionItem.label.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_28_18();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92BF970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_ActionItem.label.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92BA6E8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_ActionItem.label.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_23();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B92BF970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 16, v0 + 24);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_ActionItem.labelForLocalMedia.getter()
{
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_ActionItem.labelForLocalMedia.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_28_18();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92BF970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_ActionItem.labelForLocalMedia.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92BA8CC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_ActionItem.labelForLocalMedia.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_23();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B92BF970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 32, v0 + 24);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_ActionItem.isOverlay.getter()
{
  OUTLINED_FUNCTION_16_25();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 48, v3);
  return *(v2 + 48);
}

uint64_t Searchfoundation_ActionItem.isOverlay.setter()
{
  v4 = OUTLINED_FUNCTION_137_4();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B92BF970(v7);
    *(v2 + v3) = v6;
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_ActionItem.isOverlay.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 84) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92BAA60(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_22_0(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92BF970(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 48, v1 + v10);
  *(v7 + 48) = v4;

  free(v1);
}

uint64_t Searchfoundation_ActionItem.storeIdentifiers.getter()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 56, v2);
}

uint64_t Searchfoundation_ActionItem.storeIdentifiers.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Searchfoundation_ActionItem(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92BF970(v8);
    *(v2 + v4) = v7;
  }

  OUTLINED_FUNCTION_9_3(v7 + 56, v6);
  *(v7 + 56) = v0;
}

uint64_t Searchfoundation_ActionItem.storeIdentifiers.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_16_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 56);
  *(v1 + 48) = *(v4 + 56);

  return OUTLINED_FUNCTION_514();
}

void sub_1B92BAC38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Searchfoundation_ActionItem.storeIdentifiers.setter();
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
      OUTLINED_FUNCTION_19_23();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B92BF970(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_18(v7 + 56, v2 + 24);
    *(v7 + 56) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_ActionItem.requiresLocalMedia.getter()
{
  OUTLINED_FUNCTION_16_25();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 64, v3);
  return *(v2 + 64);
}

uint64_t Searchfoundation_ActionItem.requiresLocalMedia.setter()
{
  v4 = OUTLINED_FUNCTION_137_4();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B92BF970(v7);
    *(v2 + v3) = v6;
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_ActionItem.requiresLocalMedia.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  *(v1 + 84) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92BADE8(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_22_0(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92BF970(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 64, v1 + v10);
  *(v7 + 64) = v4;

  free(v1);
}

uint64_t Searchfoundation_ActionItem.localMediaIdentifier.getter()
{
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_10_4(v0 + 72, v1);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_ActionItem.localMediaIdentifier.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_28_18();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92BF970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 72, v5);
  *(v6 + 72) = v2;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_ActionItem.localMediaIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 72);
  v6 = *(v5 + 80);
  *(v1 + 48) = *(v5 + 72);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92BAFB8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_ActionItem.localMediaIdentifier.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_23();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B92BF970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 72, v0 + 24);
    *(v7 + 72) = v3;
    *(v7 + 80) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_ActionItem.punchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_28_18() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B92BF970(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_7_35();
  OUTLINED_FUNCTION_102_10();
  v4 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ActionItem.punchout.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_Punchout(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_100_7(v12);
    type metadata accessor for Searchfoundation_UserActivityData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    OUTLINED_FUNCTION_103_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ActionItem.applicationBundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B92BB3D8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_11_29(v1);

  return OUTLINED_FUNCTION_288();
}

void sub_1B92BB46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_16();
  v28 = *(type metadata accessor for Searchfoundation_ActionItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v31 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = sub_1B92BF970(v31);
    v30 = isUniquelyReferenced_nonNull_native;
    *(v27 + v28) = isUniquelyReferenced_nonNull_native;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_ActionItem.contactIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.phoneNumber.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.email.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.mapsData.getter()
{
  v0 = OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_11_29(v0);
  v1 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v1, v2);
  return OUTLINED_FUNCTION_288();
}

void Searchfoundation_ActionItem.mapsData.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_16();
  v26 = OUTLINED_FUNCTION_28_18();
  v27 = *(v21 + v23);
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v28 = OUTLINED_FUNCTION_40_0();
    v29 = sub_1B92BF970(v28);
    v26 = OUTLINED_FUNCTION_135(v29);
  }

  v30 = (v27 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData);
  OUTLINED_FUNCTION_211_0(v26, &a10);
  v31 = *v30;
  v32 = v30[1];
  *v30 = v22;
  v30[1] = v20;
  sub_1B8D538A0(v31, v32);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_ActionItem.mapsData.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_52(v3);
  OUTLINED_FUNCTION_41();
  v4 = *v0;
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;
  sub_1B8D91FCC(v4, v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ActionItem.latitude.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_28_18() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B92BF970(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_4_44();
  OUTLINED_FUNCTION_102_10();
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ActionItem.latitude.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 32) = v5;
  v6 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 48) = v10;
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v6);
  if (v13)
  {
    *v10 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v14, v15, v6);
    if (!v13)
    {
      sub_1B8D9207C(v5, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_44();
    OUTLINED_FUNCTION_461();
    sub_1B92C089C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B92BBB74()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    sub_1B92C08F4();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B92C094C();
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

uint64_t sub_1B92BBC48(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_119_0(v5 + *a3);
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

void sub_1B92BBD44()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(type metadata accessor for Searchfoundation_ActionItem(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B92BF970(v8);
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

uint64_t sub_1B92BBE44@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_6_31();
  v8 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0(v8);
  OUTLINED_FUNCTION_89_11();
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B92C089C();
  }

  return result;
}

uint64_t Searchfoundation_ActionItem.longitude.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_28_18() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B92BF970(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_4_44();
  OUTLINED_FUNCTION_102_10();
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ActionItem.longitude.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 32) = v5;
  v6 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 48) = v10;
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v6);
  if (v13)
  {
    *v10 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v14, v15, v6);
    if (!v13)
    {
      sub_1B8D9207C(v5, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_44();
    OUTLINED_FUNCTION_461();
    sub_1B92C089C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ActionItem.provider.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.offerType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.type.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.labelItunes.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.isItunes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ActionItem.icon.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_28_18() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B92BF970(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_102_10();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ActionItem.icon.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_103_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92BC88C@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  OUTLINED_FUNCTION_6_31();
  v8 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0(v8);
  OUTLINED_FUNCTION_89_11();
  v9 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *(a1 + v11) = qword_1EBAB5608;
    v12 = OUTLINED_FUNCTION_64_5();

    if (v12 != 1)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B92C089C();
  }

  return result;
}

uint64_t Searchfoundation_ActionItem.baseIcon.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_28_18() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B92BF970(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_102_10();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ActionItem.baseIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_103_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ActionItem.location.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_119_0(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__location);
  OUTLINED_FUNCTION_106_0();
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
      return sub_1B8D9207C(v6, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_182();
    return sub_1B92C089C();
  }

  return result;
}

uint64_t Searchfoundation_ActionItem.location.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_28_18() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B92BF970(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_102_10();
  v4 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ActionItem.location.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_LatLng(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_103_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ActionItem.messageIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.messageURL.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_119_0(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageURL);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_35();
    OUTLINED_FUNCTION_182();
    return sub_1B92C089C();
  }

  return result;
}

uint64_t Searchfoundation_ActionItem.messageURL.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_28_18() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B92BF970(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_8_35();
  OUTLINED_FUNCTION_102_10();
  v4 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ActionItem.messageURL.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_URL(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_35();
    OUTLINED_FUNCTION_103_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ActionItem.persistentID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.mediaEntityType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_16_25();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ActionItem.universalLibraryID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ActionItem.interactionContentType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_52(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B92BD730()
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
      OUTLINED_FUNCTION_19_23();
      v15 = OUTLINED_FUNCTION_40_0();
      isUniquelyReferenced_nonNull_native = sub_1B92BF970(v15);
      v12 = isUniquelyReferenced_nonNull_native;
      *(v14 + v13) = isUniquelyReferenced_nonNull_native;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t sub_1B92BD7F4@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_6_31();
  v8 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0(v8);
  OUTLINED_FUNCTION_89_11();
  type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Searchfoundation_Punchout.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B92C089C();
  }

  return result;
}

uint64_t Searchfoundation_ActionItem.customDirectionsPunchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_28_18() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B92BF970(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_7_35();
  OUTLINED_FUNCTION_102_10();
  v4 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ActionItem.customDirectionsPunchout.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_Punchout(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_100_7(v12);
    type metadata accessor for Searchfoundation_UserActivityData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_35();
    OUTLINED_FUNCTION_103_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92BDB84(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_31();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4(v1 + v3, v4);
  return *(v1 + v3);
}

void sub_1B92BDBCC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_28_18();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92BF970(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_ActionItem.shouldSearchDirectionsAlongCurrentRoute.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92BDCAC()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 72);
    OUTLINED_FUNCTION_19_23();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92BF970(v11);
    *(v10 + v9) = v8;
  }

  v12 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v12, v3 + v13);
  *(v8 + v1) = v6;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t sub_1B92BDD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_16_25();
  result = OUTLINED_FUNCTION_11_29(v4);
  v6 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v6;
  return result;
}

void *sub_1B92BDDB0@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B92BDDF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void sub_1B92BDE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = v20;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(type metadata accessor for Searchfoundation_ActionItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v20 + v29);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_23();
    v32 = OUTLINED_FUNCTION_40_0();
    v31 = sub_1B92BF970(v32);
    *(v25 + v29) = v31;
  }

  v33 = v31 + *v24;
  OUTLINED_FUNCTION_18(v33, &a10);
  *v33 = v27;
  *(v33 + 8) = v28;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_ActionItem.directionsMode.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_16_25();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92BDF4C()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(*v4 + 72);
  v7 = *(*v4 + 84);
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v5 + 84);
    v13 = *(v5 + 88);
    OUTLINED_FUNCTION_19_23();
    v14 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = sub_1B92BF970(v14);
    v11 = isUniquelyReferenced_nonNull_native;
    *(v13 + v12) = isUniquelyReferenced_nonNull_native;
  }

  v15 = 48;
  if (v3)
  {
    v15 = 24;
  }

  v16 = v11 + *v1;
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v5 + v15);
  *v16 = v6;
  *(v16 + 8) = v9;
  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t Searchfoundation_ActionItem.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_ActionItem.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Searchfoundation_ActionItem.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_ActionItem(0) + 20);
  if (qword_1EBAB7DB0 != -1)
  {
    OUTLINED_FUNCTION_27_14(&qword_1EBAB7DB0);
  }

  *(a2 + v3) = qword_1EBACAF70;
}

uint64_t Searchfoundation_MediaOffer.actionItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_MediaOffer(v5);
  OUTLINED_FUNCTION_106_0();
  v6 = type metadata accessor for Searchfoundation_ActionItem(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 20);
    if (qword_1EBAB7DB0 != -1)
    {
      OUTLINED_FUNCTION_27_14(&qword_1EBAB7DB0);
    }

    *(a1 + v8) = qword_1EBACAF70;
    v9 = OUTLINED_FUNCTION_64_5();

    if (v9 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA8, &qword_1B96B9880);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_35();
    OUTLINED_FUNCTION_182();
    return sub_1B92C089C();
  }

  return result;
}

uint64_t Searchfoundation_MediaOffer.actionItem.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MediaOffer(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBACAFA8, &qword_1B96B9880);
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B92C089C();
  type metadata accessor for Searchfoundation_ActionItem(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_MediaOffer.actionItem.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_ActionItem(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  v10 = type metadata accessor for Searchfoundation_MediaOffer(0);
  OUTLINED_FUNCTION_116_0(*(v10 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7DB0 != -1)
    {
      OUTLINED_FUNCTION_27_14(&qword_1EBAB7DB0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACAFA8, &qword_1B96B9880);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_35();
    OUTLINED_FUNCTION_103_5();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_MediaOffer.hasActionItem.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_MediaOffer(v4);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Searchfoundation_ActionItem(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &qword_1B96B9880);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_MediaOffer.clearActionItem()()
{
  v1 = type metadata accessor for Searchfoundation_MediaOffer(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBACAFA8, &qword_1B96B9880);
  type metadata accessor for Searchfoundation_ActionItem(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MediaOffer.sublabel.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_MediaOffer.offerIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_MediaOffer.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_MediaOffer(v5);
  OUTLINED_FUNCTION_106_0();
  v6 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *(a1 + v8) = qword_1EBAB5608;
    v9 = OUTLINED_FUNCTION_64_5();

    if (v9 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_182();
    return sub_1B92C089C();
  }

  return result;
}

uint64_t sub_1B92BE788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B92C08F4();
  return a7(v11);
}

uint64_t Searchfoundation_MediaOffer.image.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MediaOffer(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_1_68();
  OUTLINED_FUNCTION_122_0();
  sub_1B92C089C();
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_MediaOffer.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Image(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  v10 = type metadata accessor for Searchfoundation_MediaOffer(0);
  OUTLINED_FUNCTION_116_0(*(v10 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_103_5();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B92BEA24()
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
    sub_1B92C08F4();
    sub_1B8D9207C(v10 + v5, v3, v2);
    sub_1B92C089C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    sub_1B92C094C();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v0, v1);
    sub_1B92C089C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t Searchfoundation_MediaOffer.hasImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_MediaOffer(v4);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Searchfoundation_Image(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &unk_1B96B77D0);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_MediaOffer.clearImage()()
{
  v1 = type metadata accessor for Searchfoundation_MediaOffer(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MediaOffer.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaOffer(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_MediaOffer.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MediaOffer(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_MediaOffer.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_MediaOffer(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_MediaOffer.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  type metadata accessor for Searchfoundation_MediaOffer(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_ActionItem(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B92BEDE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAF58);
  __swift_project_value_buffer(v0, qword_1EBACAF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1B964EE90;
  v4 = v68 + v3 + v1[14];
  *(v68 + v3) = 1;
  *v4 = "label";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v68 + v3 + v2 + v1[14];
  *(v68 + v3 + v2) = 2;
  *v8 = "labelForLocalMedia";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v68 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "isOverlay";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v68 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "storeIdentifiers";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v68 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "requiresLocalMedia";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v68 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "localMediaIdentifier";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v68 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "punchout";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v68 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "applicationBundleIdentifier";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v68 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "contactIdentifier";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v68 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "phoneNumber";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v68 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "email";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v68 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "mapsData";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  v29 = (v68 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "latitude";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v68 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "longitude";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v7();
  v33 = (v68 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "provider";
  *(v34 + 1) = 8;
  v34[16] = 2;
  v7();
  v35 = (v68 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "offerType";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v7();
  v37 = (v68 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "type";
  *(v38 + 1) = 4;
  v38[16] = 2;
  v7();
  v39 = (v68 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "labelITunes";
  *(v40 + 1) = 11;
  v40[16] = 2;
  v7();
  v41 = (v68 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "isITunes";
  *(v42 + 1) = 8;
  v42[16] = 2;
  v7();
  v43 = (v68 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "icon";
  *(v44 + 1) = 4;
  v44[16] = 2;
  v7();
  v45 = (v68 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "baseIcon";
  *(v46 + 1) = 8;
  v46[16] = 2;
  v7();
  v47 = (v68 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "location";
  *(v48 + 1) = 8;
  v48[16] = 2;
  v7();
  v49 = (v68 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "messageIdentifier";
  *(v50 + 1) = 17;
  v50[16] = 2;
  v7();
  v51 = (v68 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "messageURL";
  *(v52 + 1) = 10;
  v52[16] = 2;
  v7();
  v53 = (v68 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "persistentID";
  *(v54 + 1) = 12;
  v54[16] = 2;
  v7();
  v55 = (v68 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "mediaEntityType";
  *(v56 + 1) = 15;
  v56[16] = 2;
  v7();
  v57 = (v68 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "universalLibraryID";
  *(v58 + 1) = 18;
  v58[16] = 2;
  v7();
  v59 = (v68 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "interactionContentType";
  *(v60 + 1) = 22;
  v60[16] = 2;
  v7();
  v61 = (v68 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "customDirectionsPunchout";
  *(v62 + 1) = 24;
  v62[16] = 2;
  v7();
  v63 = (v68 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "shouldSearchDirectionsAlongCurrentRoute";
  *(v64 + 1) = 39;
  v64[16] = 2;
  v7();
  v65 = (v68 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "directionsMode";
  *(v66 + 1) = 14;
  v66[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B92BF6C0()
{
  OUTLINED_FUNCTION_19_23();
  result = sub_1B92BF6F0();
  qword_1EBACAF70 = result;
  return result;
}

uint64_t sub_1B92BF6F0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__punchout;
  v2 = type metadata accessor for Searchfoundation_Punchout(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__applicationBundleIdentifier);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__contactIdentifier);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__phoneNumber);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__email);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData) = xmmword_1B9652FE0;
  v7 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__latitude;
  v8 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__longitude, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__provider);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__offerType);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__type);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__labelItunes);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes) = 0;
  v13 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__icon;
  v14 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__baseIcon, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__location;
  v16 = type metadata accessor for Searchfoundation_LatLng(0);
  __swift_storeEnumTagSinglePayload(v0 + v15, 1, 1, v16);
  v17 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageIdentifier);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageURL;
  v19 = type metadata accessor for Searchfoundation_URL(0);
  __swift_storeEnumTagSinglePayload(v0 + v18, 1, 1, v19);
  v20 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__persistentID);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__universalLibraryID);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__interactionContentType);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__customDirectionsPunchout, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute) = 0;
  v24 = v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode;
  *v24 = 0;
  *(v24 + 8) = 1;
  return v0;
}

uint64_t sub_1B92BF970(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v142 = &v111 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = &v111 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v134 = &v111 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v143 = &v111 - v12;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v112 = (v1 + 48);
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  *(v1 + 64) = 0;
  v113 = (v1 + 64);
  *(v1 + 72) = 0;
  v114 = (v1 + 72);
  *(v1 + 80) = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__punchout;
  v115 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__punchout;
  v141 = type metadata accessor for Searchfoundation_Punchout(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v141);
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__applicationBundleIdentifier);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__contactIdentifier);
  v116 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__contactIdentifier);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__phoneNumber);
  v117 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__phoneNumber);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__email);
  v118 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__email);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v119 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData) = xmmword_1B9652FE0;
  v18 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__latitude;
  v120 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__latitude;
  v19 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v121 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__longitude;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__longitude, 1, 1, v19);
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__provider);
  v122 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__provider);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__offerType);
  v123 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__offerType);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__type);
  v125 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__type);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__labelItunes);
  v126 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__labelItunes);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v127 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes) = 0;
  v24 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__icon;
  v128 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__icon;
  v25 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v129 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__baseIcon;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__baseIcon, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__location;
  v130 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__location;
  v27 = type metadata accessor for Searchfoundation_LatLng(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageIdentifier);
  v131 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageIdentifier);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageURL;
  v132 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageURL;
  v30 = type metadata accessor for Searchfoundation_URL(0);
  __swift_storeEnumTagSinglePayload(v1 + v29, 1, 1, v30);
  v31 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__persistentID);
  v133 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__persistentID);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType;
  v135 = v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__universalLibraryID);
  v136 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__universalLibraryID);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__interactionContentType);
  v137 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__interactionContentType);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v138 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__customDirectionsPunchout;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__customDirectionsPunchout, 1, 1, v141);
  v140 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute) = 0;
  v35 = v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode;
  v141 = v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode;
  *v35 = 0;
  *(v35 + 8) = 1;
  swift_beginAccess();
  v37 = *(a1 + 16);
  v36 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v37;
  *(v1 + 24) = v36;
  swift_beginAccess();
  v39 = *(a1 + 32);
  v38 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v39;
  *(v1 + 40) = v38;

  swift_beginAccess();
  LOBYTE(v36) = *(a1 + 48);
  v40 = v112;
  swift_beginAccess();
  *v40 = v36;
  swift_beginAccess();
  v41 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v41;

  swift_beginAccess();
  LOBYTE(v41) = *(a1 + 64);
  v42 = v113;
  swift_beginAccess();
  *v42 = v41;
  swift_beginAccess();
  v44 = *(a1 + 72);
  v43 = *(a1 + 80);
  v45 = v114;
  swift_beginAccess();
  *v45 = v44;
  *(v1 + 80) = v43;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__applicationBundleIdentifier);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  swift_beginAccess();
  *v14 = v48;
  v14[1] = v47;

  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__contactIdentifier);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  v52 = v116;
  swift_beginAccess();
  *v52 = v51;
  v52[1] = v50;

  v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__phoneNumber);
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];
  v56 = v117;
  swift_beginAccess();
  *v56 = v55;
  v56[1] = v54;

  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__email);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = v118;
  swift_beginAccess();
  *v60 = v59;
  v60[1] = v58;

  v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData);
  swift_beginAccess();
  v63 = *v61;
  v62 = v61[1];
  v64 = v119;
  swift_beginAccess();
  v65 = v64;
  v66 = *v64;
  v67 = v65[1];
  *v65 = v63;
  v65[1] = v62;
  sub_1B8D91FCC(v63, v62);
  sub_1B8D538A0(v66, v67);
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
  v68 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__provider);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];
  v71 = v122;
  swift_beginAccess();
  *v71 = v70;
  v71[1] = v69;

  v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__offerType);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = v123;
  swift_beginAccess();
  *v75 = v74;
  v75[1] = v73;

  v76 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__type);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];
  v79 = v125;
  swift_beginAccess();
  *v79 = v78;
  v79[1] = v77;

  v80 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__labelItunes);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v126;
  swift_beginAccess();
  *v83 = v82;
  v83[1] = v81;

  v84 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes;
  swift_beginAccess();
  LOBYTE(v84) = *(a1 + v84);
  v85 = v127;
  swift_beginAccess();
  *(v1 + v85) = v84;
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
  v86 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageIdentifier);
  swift_beginAccess();
  v88 = *v86;
  v87 = v86[1];
  v89 = v131;
  swift_beginAccess();
  *v89 = v88;
  v89[1] = v87;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v90 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__persistentID);
  swift_beginAccess();
  v92 = *v90;
  v91 = v90[1];
  v93 = v133;
  swift_beginAccess();
  *v93 = v92;
  v93[1] = v91;

  v94 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType);
  swift_beginAccess();
  v95 = *v94;
  LOBYTE(v94) = *(v94 + 8);
  v96 = v135;
  swift_beginAccess();
  *v96 = v95;
  *(v96 + 8) = v94;
  v97 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__universalLibraryID);
  swift_beginAccess();
  v99 = *v97;
  v98 = v97[1];
  v100 = v136;
  swift_beginAccess();
  *v100 = v99;
  v100[1] = v98;

  v101 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__interactionContentType);
  swift_beginAccess();
  v103 = *v101;
  v102 = v101[1];
  v104 = v137;
  swift_beginAccess();
  *v104 = v103;
  v104[1] = v102;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v105 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute;
  swift_beginAccess();
  LOBYTE(v105) = *(a1 + v105);
  v106 = v140;
  swift_beginAccess();
  *(v1 + v106) = v105;
  v107 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode);
  swift_beginAccess();
  v108 = *v107;
  LOBYTE(v107) = *(v107 + 8);

  v109 = v141;
  swift_beginAccess();
  *v109 = v108;
  *(v109 + 8) = v107;
  return v1;
}

uint64_t sub_1B92C089C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B92C08F4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B92C094C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B92C09A0()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__punchout, &qword_1EBACAF90, &unk_1B96B77C0);

  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData), *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__latitude, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__longitude, &qword_1EBACAF98, &qword_1B96B98A0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__icon, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__baseIcon, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__location, &qword_1EBACAFA0, &unk_1B96CB440);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageURL, &qword_1EBAB8E20, &unk_1B964D620);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__customDirectionsPunchout, &qword_1EBACAF90, &unk_1B96B77C0);
  return v0;
}

uint64_t sub_1B92C0BF4()
{
  v0 = sub_1B92C09A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_ActionItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_ActionItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ActionItem._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B92BF970(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B92C0CE8(v10, a1, a2, a3);
}

uint64_t sub_1B92C0CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        continue;
      case 2:
        sub_1B8DC46F4(a2, a1);
        continue;
      case 3:
        sub_1B8E4317C(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B8E88A5C(a2, a1, a3, a4);
        continue;
      case 5:
        sub_1B92C104C(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1B8E6D974(a2, a1);
        continue;
      case 7:
        sub_1B92C10D0(a2, a1, a3, a4);
        continue;
      case 8:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__applicationBundleIdentifier;
        goto LABEL_35;
      case 9:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__contactIdentifier;
        goto LABEL_35;
      case 10:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__phoneNumber;
        goto LABEL_35;
      case 11:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__email;
        goto LABEL_35;
      case 12:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData;
        v12 = MEMORY[0x1E69AAC78];
        goto LABEL_36;
      case 13:
        sub_1B92C11AC(a2, a1, a3, a4);
        continue;
      case 14:
        sub_1B92C1288(a2, a1, a3, a4);
        continue;
      case 15:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__provider;
        goto LABEL_35;
      case 16:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__offerType;
        goto LABEL_35;
      case 17:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__type;
        goto LABEL_35;
      case 18:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__labelItunes;
        goto LABEL_35;
      case 19:
      case 30:
        sub_1B908EA40();
        continue;
      case 20:
        sub_1B92C1364(a2, a1, a3, a4);
        continue;
      case 21:
        sub_1B92C1440(a2, a1, a3, a4);
        continue;
      case 22:
        sub_1B92C151C(a2, a1, a3, a4);
        continue;
      case 23:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageIdentifier;
        goto LABEL_35;
      case 24:
        sub_1B92C15F8(a2, a1, a3, a4);
        continue;
      case 25:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__persistentID;
        goto LABEL_35;
      case 26:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType;
        v14 = &type metadata for Searchfoundation_MediaEntityType;
        v15 = sub_1B92C6768;
        goto LABEL_28;
      case 27:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__universalLibraryID;
        goto LABEL_35;
      case 28:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__interactionContentType;
LABEL_35:
        v12 = MEMORY[0x1E69AACE0];
LABEL_36:
        sub_1B92C16D4(a2, a1, a3, a4, v11, v12);
        break;
      case 29:
        sub_1B92C1768(a2, a1, a3, a4);
        break;
      case 31:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode;
        v14 = &type metadata for Searchfoundation_MapsDirectionsMode;
        v15 = sub_1B92C67BC;
LABEL_28:
        sub_1B92C1844(a2, a1, a3, a4, v13, v15, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92C104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B92C10D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD2F48(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92C11AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B8CD2F48(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92C1288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B8CD2F48(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92C1364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD2F48(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92C1440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD2F48(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92C151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B8CD2F48(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92C15F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B8CD2F48(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92C16D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B92C1768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD2F48(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92C1844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t Searchfoundation_ActionItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Searchfoundation_ActionItem(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B92C1950(v5, v6, v7, a3);
  if (!v3)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B92C1950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v111 = &v106 - v8;
  v109 = type metadata accessor for Searchfoundation_URL(0);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v106 - v11;
  v113 = type metadata accessor for Searchfoundation_LatLng(0);
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v116 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v106 - v16;
  v118 = type metadata accessor for Searchfoundation_Image(0);
  v17 = MEMORY[0x1EEE9AC00](v118);
  v110 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v106 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v121 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v106 - v23;
  v123 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v24 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v106 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v107 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v106 - v30;
  v128 = type metadata accessor for Searchfoundation_Punchout(0);
  v32 = MEMORY[0x1EEE9AC00](v128);
  v106 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  swift_beginAccess();
  v34 = *(a1 + 24);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 40);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    result = sub_1B964C670();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 56) + 16))
  {

    sub_1B964C6E0();
    if (!v4)
    {

      goto LABEL_16;
    }
  }

LABEL_16:
  swift_beginAccess();
  if (*(a1 + 64) == 1)
  {
    result = sub_1B964C670();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v39 = *(a1 + 80);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v31, 1, v128) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACAF90, &unk_1B96B77C0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    sub_1B964C740();
    if (v4)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__applicationBundleIdentifier);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__contactIdentifier);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__phoneNumber);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__email);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v57 = a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*v57, *(v57 + 8)))
  {
    v58 = *v57;
    v59 = *(v57 + 8);
    sub_1B8D91FCC(v58, v59);
    sub_1B964C6A0();
    if (v5)
    {
      return sub_1B8D538A0(v58, v59);
    }

    sub_1B8D538A0(v58, v59);
  }

  swift_beginAccess();
  v60 = v122;
  sub_1B8D92024();
  v61 = v123;
  if (__swift_getEnumTagSinglePayload(v60, 1, v123) == 1)
  {
    sub_1B8D9207C(v60, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
    sub_1B964C740();
    if (v5)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  swift_beginAccess();
  v62 = v121;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v62, 1, v61) == 1)
  {
    sub_1B8D9207C(v62, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
    sub_1B964C740();
    if (v5)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__provider);
  swift_beginAccess();
  v64 = *v63;
  v65 = v63[1];
  v66 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v66 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__offerType);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v71 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__type);
  swift_beginAccess();
  v72 = *v71;
  v73 = v71[1];
  v74 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v74 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (v74)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__labelItunes);
  swift_beginAccess();
  v76 = *v75;
  v77 = v75[1];
  v78 = HIBYTE(v77) & 0xF;
  if ((v77 & 0x2000000000000000) == 0)
  {
    v78 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v78)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v79 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes;
  swift_beginAccess();
  if (*(a1 + v79) == 1)
  {
    result = sub_1B964C670();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  v80 = v117;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v80, 1, v118) == 1)
  {
    sub_1B8D9207C(v80, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
    sub_1B964C740();
    if (v5)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  swift_beginAccess();
  v81 = v116;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v81, 1, v118) == 1)
  {
    sub_1B8D9207C(v81, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
    sub_1B964C740();
    if (v5)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  swift_beginAccess();
  v82 = v112;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v82, 1, v113) == 1)
  {
    sub_1B8D9207C(v82, &qword_1EBACAFA0, &unk_1B96CB440);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
    sub_1B964C740();
    if (v5)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageIdentifier);
  swift_beginAccess();
  v84 = *v83;
  v85 = v83[1];
  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v84 & 0xFFFFFFFFFFFFLL;
  }

  if (v86)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  v87 = v111;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v87, 1, v109) == 1)
  {
    sub_1B8D9207C(v111, &qword_1EBAB8E20, &unk_1B964D620);
    goto LABEL_109;
  }

  sub_1B92C089C();
  sub_1B8CD2F48(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  sub_1B964C740();
  if (v5)
  {
    return sub_1B92C094C();
  }

  sub_1B92C094C();
LABEL_109:
  v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__persistentID);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v91 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (v91)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v92 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType);
  swift_beginAccess();
  if (!*v92 || (v93 = *(v92 + 8), v126 = *v92, v127 = v93, sub_1B92C6768(), result = sub_1B964C680(), !v5))
  {
    v94 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__universalLibraryID);
    swift_beginAccess();
    v95 = *v94;
    v96 = v94[1];
    v97 = HIBYTE(v96) & 0xF;
    if ((v96 & 0x2000000000000000) == 0)
    {
      v97 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v97 || (, sub_1B964C700(), result = , !v5))
    {
      v98 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__interactionContentType);
      swift_beginAccess();
      v99 = *v98;
      v100 = v98[1];
      v101 = HIBYTE(v100) & 0xF;
      if ((v100 & 0x2000000000000000) == 0)
      {
        v101 = v99 & 0xFFFFFFFFFFFFLL;
      }

      if (!v101 || (, sub_1B964C700(), result = , !v5))
      {
        swift_beginAccess();
        v102 = v107;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v102, 1, v128) == 1)
        {
          sub_1B8D9207C(v107, &qword_1EBACAF90, &unk_1B96B77C0);
        }

        else
        {
          sub_1B92C089C();
          sub_1B8CD2F48(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
          sub_1B964C740();
          result = sub_1B92C094C();
          if (v5)
          {
            return result;
          }
        }

        v103 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute;
        swift_beginAccess();
        if (*(a1 + v103) != 1 || (result = sub_1B964C670(), !v5))
        {
          v104 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode);
          result = swift_beginAccess();
          if (*v104)
          {
            v105 = *(v104 + 8);
            v124 = *v104;
            v125 = v105;
            sub_1B92C67BC();
            return sub_1B964C680();
          }
        }
      }
    }
  }

  return result;
}