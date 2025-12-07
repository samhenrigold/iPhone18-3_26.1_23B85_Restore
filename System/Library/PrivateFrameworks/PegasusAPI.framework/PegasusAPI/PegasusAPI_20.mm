void Snippetpb_MediaSnippet.userRating.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Amppb_UserRating(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v10 = 0u;
    v10[1] = 0u;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_10();
    sub_1B8EBA878();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B8EB596C(uint64_t *a1, uint64_t *a2, void *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11 - 8];
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521(v4 + *a3, v17);
  sub_1B8D92024();
  v13 = a4(0);
  v14 = __swift_getEnumTagSinglePayload(v12, 1, v13) != 1;
  sub_1B8D9207C(v12, a1, a2);
  return v14;
}

uint64_t sub_1B8EB5A74(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v11 = OUTLINED_FUNCTION_40_0();
    *(v4 + v10) = sub_1B8EB7410(v11);
  }

  v12 = a3(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_MediaSnippet.eBookInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Amppb_EbookInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0xE000000000000000;
    a1[5] = 0;
    a1[6] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB96A8, &qword_1B964EED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    return sub_1B8EBA878();
  }

  return result;
}

uint64_t Snippetpb_MediaSnippet.eBookInfo.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_13_8() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8EB7410(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_9_11();
  sub_1B8EBA878();
  v5 = type metadata accessor for Amppb_EbookInfo(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_MediaSnippet.eBookInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Amppb_EbookInfo(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0xE000000000000000;
    v10[5] = 0;
    v10[6] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v1, &qword_1EBAB96A8, &qword_1B964EED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    sub_1B8EBA878();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8EB5EDC(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1B8EBA8D0();
    a3(v6);
    sub_1B8EBA928();
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

uint64_t sub_1B8EB5FF8(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4(v1 + *a1, v3);
}

void sub_1B8EB6070()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_13_8();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EB7410(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *v3;
  OUTLINED_FUNCTION_9_3(v8 + v11, v7);
  *(v8 + v11) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.children.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children);
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MediaSnippet.origin.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_26(v2);
  OUTLINED_FUNCTION_62_0(*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EB6268(void *a1)
{
  OUTLINED_FUNCTION_4_16();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521(v4, v7);
  v5 = *v4;

  return v5;
}

void sub_1B8EB630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v30 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v20 + v30);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v33 = OUTLINED_FUNCTION_40_0();
    v32 = sub_1B8EB7410(v33);
    *(v25 + v30) = v32;
  }

  v34 = (v32 + *v24);
  OUTLINED_FUNCTION_18(v34, &a10);
  *v34 = v29;
  v34[1] = v27;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.bornOrFormed.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_26(v2);
  OUTLINED_FUNCTION_62_0(*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MediaSnippet.contentRatingsBySystem.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem);
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB6504()
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
      OUTLINED_FUNCTION_8_15();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8EB7410(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    v15 = *v8;
    OUTLINED_FUNCTION_59_3(v12 + v15);
    *(v12 + v15) = v4;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.parentName.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_26(v2);
  OUTLINED_FUNCTION_62_0(*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MediaSnippet.siribaseID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_26(v2);
  OUTLINED_FUNCTION_62_0(*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB678C()
{
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
      OUTLINED_FUNCTION_8_15();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8EB7410(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.ampMusicResult.getter()
{
  OUTLINED_FUNCTION_4_16();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult, v4);
  return *(v2 + v3);
}

uint64_t Snippetpb_MediaSnippet.ampMusicResult.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_57_3(0);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  result = OUTLINED_FUNCTION_9_3(v6 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult, v5);
  *(v6 + v9) = a1 & 1;
  return result;
}

uint64_t Snippetpb_MediaSnippet.ampMusicResult.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_4_16();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult);
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EB6974(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EB7410(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  OUTLINED_FUNCTION_18(v8 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult, v3 + v11);
  *(v8 + v12) = v6;

  free(v3);
}

uint64_t Snippetpb_MediaSnippet.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Snippetpb_MediaSnippet.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B8EB6B0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD638);
  __swift_project_value_buffer(v0, qword_1EBABD638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B965A5F0;
  v4 = v50 + v3 + v1[14];
  *(v50 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v50 + v3 + v2 + v1[14];
  *(v50 + v3 + v2) = 2;
  *v8 = "storefront_id";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v50 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "language_id";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v50 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "adam_id";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v50 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "name";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v50 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "kind";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v50 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "artist_name";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  v19 = (v50 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "description";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v7();
  v21 = (v50 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "url";
  *(v22 + 1) = 3;
  v22[16] = 2;
  v7();
  v23 = (v50 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "release_date";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v50 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "genre_names";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v7();
  v27 = (v50 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "artwork";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v7();
  v29 = (v50 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "offers";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v50 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "user_rating";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v50 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "e_book_info";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v50 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "children";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v7();
  v37 = (v50 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "origin";
  *(v38 + 1) = 6;
  v38[16] = 2;
  v7();
  v39 = (v50 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "born_or_formed";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v50 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "content_ratings_by_system";
  *(v42 + 1) = 25;
  v42[16] = 2;
  v7();
  v43 = (v50 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "parent_name";
  *(v44 + 1) = 11;
  v44[16] = 2;
  v7();
  v45 = (v50 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "siribase_id";
  *(v46 + 1) = 11;
  v46[16] = 2;
  v7();
  v47 = (v50 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "amp_music_result";
  *(v48 + 1) = 16;
  v48[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Snippetpb_MediaSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6548 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B8EB7250()
{
  OUTLINED_FUNCTION_8_15();
  result = sub_1B8EB7280();
  qword_1EBABD650 = result;
  return result;
}

uint64_t sub_1B8EB7280()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork;
  v3 = type metadata accessor for Amppb_Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers) = v1;
  v4 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating;
  v5 = type metadata accessor for Amppb_UserRating(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo;
  v7 = type metadata accessor for Amppb_EbookInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  type metadata accessor for Amppb_Child(0);
  *(v0 + v8) = sub_1B964C7B0();
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  type metadata accessor for Amppb_ContentRating(0);
  *(v0 + v11) = sub_1B964C7B0();
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult) = 0;
  return v0;
}

uint64_t sub_1B8EB7410(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v76 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v77 = (v1 + 48);
  *(v1 + 40) = 0;
  v76 = (v1 + 40);
  *(v1 + 32) = 0;
  *(v1 + 64) = 0;
  v78 = (v1 + 64);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v79 = (v1 + 80);
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  v80 = (v1 + 96);
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  v81 = (v1 + 112);
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  v82 = (v1 + 128);
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 144) = 0;
  v83 = (v1 + 144);
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = v9;
  v84 = (v1 + 160);
  v10 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork;
  v85 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork;
  v11 = type metadata accessor for Amppb_Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v86 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers) = v9;
  v12 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating;
  v88 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating;
  v13 = type metadata accessor for Amppb_UserRating(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo;
  v89 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo;
  v15 = type metadata accessor for Amppb_EbookInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  v90 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  type metadata accessor for Amppb_Child(0);
  *(v1 + v16) = sub_1B964C7B0();
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  v91 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  v93 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  v94 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  type metadata accessor for Amppb_ContentRating(0);
  *(v1 + v19) = sub_1B964C7B0();
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  v96 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v97 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult) = 0;
  swift_beginAccess();
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v23;
  *(v1 + 24) = v22;

  swift_beginAccess();
  v24 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v24;
  swift_beginAccess();
  v25 = *(a1 + 40);
  v26 = v76;
  swift_beginAccess();
  *v26 = v25;
  swift_beginAccess();
  v28 = *(a1 + 48);
  v27 = *(a1 + 56);
  v29 = v77;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 56) = v27;

  swift_beginAccess();
  v31 = *(a1 + 64);
  v30 = *(a1 + 72);
  v32 = v78;
  swift_beginAccess();
  *v32 = v31;
  *(v1 + 72) = v30;

  swift_beginAccess();
  v33 = *(a1 + 80);
  LOBYTE(v26) = *(a1 + 88);
  v34 = v79;
  swift_beginAccess();
  *v34 = v33;
  *(v1 + 88) = v26;
  swift_beginAccess();
  v36 = *(a1 + 96);
  v35 = *(a1 + 104);
  v37 = v80;
  swift_beginAccess();
  *v37 = v36;
  *(v1 + 104) = v35;

  swift_beginAccess();
  v39 = *(a1 + 112);
  v38 = *(a1 + 120);
  v40 = v81;
  swift_beginAccess();
  *v40 = v39;
  *(v1 + 120) = v38;

  swift_beginAccess();
  v42 = *(a1 + 128);
  v41 = *(a1 + 136);
  v43 = v82;
  swift_beginAccess();
  *v43 = v42;
  *(v1 + 136) = v41;

  swift_beginAccess();
  v45 = *(a1 + 144);
  v44 = *(a1 + 152);
  v46 = v83;
  swift_beginAccess();
  *v46 = v45;
  *(v1 + 152) = v44;

  swift_beginAccess();
  v47 = *(a1 + 160);
  v48 = v84;
  swift_beginAccess();
  *v48 = v47;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v86;
  swift_beginAccess();
  *(v1 + v51) = v50;

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
  v52 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  swift_beginAccess();
  v53 = *(a1 + v52);
  v54 = v90;
  swift_beginAccess();
  *(v1 + v54) = v53;

  v55 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  v58 = v91;
  swift_beginAccess();
  *v58 = v57;
  v58[1] = v56;

  v59 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  swift_beginAccess();
  v61 = *v59;
  v60 = v59[1];
  v62 = v93;
  swift_beginAccess();
  *v62 = v61;
  v62[1] = v60;

  v63 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  swift_beginAccess();
  v64 = *(a1 + v63);
  v65 = v94;
  swift_beginAccess();
  *(v1 + v65) = v64;

  v66 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
  swift_beginAccess();
  v68 = *v66;
  v67 = v66[1];
  swift_beginAccess();
  *v20 = v68;
  v20[1] = v67;

  v69 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  swift_beginAccess();
  v71 = *v69;
  v70 = v69[1];
  v72 = v96;
  swift_beginAccess();
  *v72 = v71;
  v72[1] = v70;

  v73 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  swift_beginAccess();
  LOBYTE(v73) = *(a1 + v73);

  v74 = v97;
  swift_beginAccess();
  *(v1 + v74) = v73;
  return v1;
}

void *sub_1B8EB7E28()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork, &qword_1EBAB9680, &unk_1B964EEA0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating, &qword_1EBAB9690, &qword_1B964EEB8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo, &qword_1EBAB96A8, &qword_1B964EED0);

  return v0;
}

uint64_t sub_1B8EB7F60()
{
  v0 = sub_1B8EB7E28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Snippetpb_MediaSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Snippetpb_MediaSnippet._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EB7410(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8EB8054(v10, a1, a2, a3);
}

uint64_t sub_1B8EB8054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8EB8354(a2, a1, a3, a4);
        continue;
      case 3:
        sub_1B8EB83D8(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B8DC4778(a2, a1);
        continue;
      case 5:
        sub_1B8E16ACC(a2, a1);
        continue;
      case 6:
        sub_1B8EB845C(a2, a1, a3, a4);
        continue;
      case 7:
        sub_1B8E16BD4(a2, a1);
        continue;
      case 8:
        sub_1B8E2F858(a2, a1);
        continue;
      case 9:
        sub_1B8E71858(a2, a1);
        continue;
      case 10:
        sub_1B8E88CF0(a2, a1);
        continue;
      case 11:
        sub_1B8E2FB34(a2, a1, a3, a4);
        continue;
      case 12:
        sub_1B8EB84F0(a2, a1, a3, a4);
        continue;
      case 13:
        sub_1B8EB85CC(a2, a1, a3, a4);
        continue;
      case 14:
        sub_1B8EB86A8(a2, a1, a3, a4);
        continue;
      case 15:
        sub_1B8EB8784(a2, a1, a3, a4);
        continue;
      case 16:
        sub_1B8EB8860(a2, a1, a3, a4);
        continue;
      case 17:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin;
        goto LABEL_26;
      case 18:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed;
        goto LABEL_26;
      case 19:
        sub_1B8EB8988(a2, a1, a3, a4);
        continue;
      case 20:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName;
        goto LABEL_26;
      case 21:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID;
LABEL_26:
        sub_1B8EB8AB0(v11, v12, v13, v14, v15);
        break;
      case 22:
        sub_1B8EB8B38(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EB8354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8EB83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8EB845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8DAF9CC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EB84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_Artwork(0);
  sub_1B8CD20A8(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8EB85CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_Offer(0);
  sub_1B8CD20A8(&qword_1EBAB9730, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EB86A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_UserRating(0);
  sub_1B8CD20A8(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8EB8784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Amppb_EbookInfo(0);
  sub_1B8CD20A8(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo, protocol conformance descriptor for Amppb_EbookInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8EB8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Amppb_Child(0);
  sub_1B8CD20A8(&qword_1EBAB9748, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);
  sub_1B8CD20A8(&qword_1EBAB9740, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B8EB8988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Amppb_ContentRating(0);
  sub_1B8CD20A8(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);
  sub_1B8CD20A8(&qword_1EBAB96C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B8EB8AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8EB8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Snippetpb_MediaSnippet.traverse<A>(visitor:)(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = type metadata accessor for Snippetpb_MediaSnippet(0);
  result = sub_1B8EB8C30(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EB8C30(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = v63 - v10;
  v65 = type metadata accessor for Amppb_EbookInfo(0);
  MEMORY[0x1EEE9AC00](v65);
  v63[1] = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = v63 - v13;
  v67 = type metadata accessor for Amppb_UserRating(0);
  MEMORY[0x1EEE9AC00](v67);
  v63[2] = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v63 - v16;
  v18 = type metadata accessor for Amppb_Artwork(0);
  MEMORY[0x1EEE9AC00](v18);
  v70 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 32))
  {
    result = sub_1B964C720();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 40))
  {
    result = sub_1B964C720();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 56);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    v27 = *(a1 + 88);
    v68 = *(a1 + 80);
    v69 = v27;
    sub_1B8DAF9CC();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 104);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 120);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 136);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 152);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 160) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1B8D9207C(v17, &qword_1EBAB9680, &unk_1B964EEA0);
  }

  else
  {
    sub_1B8EBA878();
    sub_1B8CD20A8(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork, protocol conformance descriptor for Amppb_Artwork);
    sub_1B964C740();
    if (v4)
    {
      return sub_1B8EBA928();
    }

    sub_1B8EBA928();
  }

  v36 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
  swift_beginAccess();
  v37 = v67;
  if (*(*(a1 + v36) + 16))
  {
    type metadata accessor for Amppb_Offer(0);
    sub_1B8CD20A8(&qword_1EBAB9730, type metadata accessor for Amppb_Offer, protocol conformance descriptor for Amppb_Offer);

    v38 = a4;
    sub_1B964C730();
    if (v4)
    {
    }
  }

  else
  {
    v38 = a4;
  }

  swift_beginAccess();
  v39 = v66;
  sub_1B8D92024();
  v40 = a3;
  if (__swift_getEnumTagSinglePayload(v39, 1, v37) != 1)
  {
    sub_1B8EBA878();
    sub_1B8CD20A8(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating, protocol conformance descriptor for Amppb_UserRating);
    sub_1B964C740();
    v41 = v65;
    if (!v4)
    {
      sub_1B8EBA928();
      goto LABEL_60;
    }

    return sub_1B8EBA928();
  }

  sub_1B8D9207C(v39, &qword_1EBAB9690, &qword_1B964EEB8);
  v41 = v65;
LABEL_60:
  swift_beginAccess();
  v42 = v64;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v42, 1, v41) == 1)
  {
    v70 = v40;
    sub_1B8D9207C(v42, &qword_1EBAB96A8, &qword_1B964EED0);
  }

  else
  {
    sub_1B8EBA878();
    sub_1B8CD20A8(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo, protocol conformance descriptor for Amppb_EbookInfo);
    sub_1B964C740();
    result = sub_1B8EBA928();
    if (v4)
    {
      return result;
    }

    v70 = v40;
  }

  v43 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  swift_beginAccess();
  if (*(*(a1 + v43) + 16))
  {
    v67 = sub_1B964C280();
    type metadata accessor for Amppb_Child(0);
    sub_1B8CD20A8(&qword_1EBAB9748, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);
    sub_1B8CD20A8(&qword_1EBAB9740, type metadata accessor for Amppb_Child, protocol conformance descriptor for Amppb_Child);

    v44 = v70;
    sub_1B964C5E0();

    if (v4)
    {
      return result;
    }
  }

  else
  {
    v44 = v70;
  }

  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48 || (, sub_1B964C700(), result = , !v5))
  {
    v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
    swift_beginAccess();
    v50 = *v49;
    v51 = v49[1];
    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (!v52 || (, sub_1B964C700(), result = , !v5))
    {
      v70 = v44;
      v67 = v38;
      v53 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
      swift_beginAccess();
      if (!*(*(a1 + v53) + 16) || (sub_1B964C280(), type metadata accessor for Amppb_ContentRating(0), sub_1B8CD20A8(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating), sub_1B8CD20A8(&qword_1EBAB96C0, type metadata accessor for Amppb_ContentRating, protocol conformance descriptor for Amppb_ContentRating), , sub_1B964C5E0(), result = , !v5))
      {
        v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
        swift_beginAccess();
        v55 = *v54;
        v56 = v54[1];
        v57 = HIBYTE(v56) & 0xF;
        if ((v56 & 0x2000000000000000) == 0)
        {
          v57 = v55 & 0xFFFFFFFFFFFFLL;
        }

        if (!v57 || (, sub_1B964C700(), result = , !v5))
        {
          v58 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
          swift_beginAccess();
          v59 = *v58;
          v60 = v58[1];
          v61 = HIBYTE(v60) & 0xF;
          if ((v60 & 0x2000000000000000) == 0)
          {
            v61 = v59 & 0xFFFFFFFFFFFFLL;
          }

          if (!v61 || (, sub_1B964C700(), result = , !v5))
          {
            v62 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
            result = swift_beginAccess();
            if (*(a1 + v62) == 1)
            {
              return sub_1B964C670();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B8EB9A38()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v110 = type metadata accessor for Amppb_EbookInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v108[0] = v6 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9AC0, &qword_1B96507E8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v111 = v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  v108[1] = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = v108 - v14;
  v114 = type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v108[2] = v17 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9760, &qword_1B964EEF0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v115 = v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  v21 = OUTLINED_FUNCTION_183(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66();
  v112 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v117 = v108 - v25;
  type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  v29 = (v28 - v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96F0, &unk_1B964EEE0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  v118 = v108 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  v34 = OUTLINED_FUNCTION_183(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_66();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v108 - v39;
  OUTLINED_FUNCTION_521(v3 + 16, &v162);
  v42 = *(v3 + 16);
  v41 = *(v3 + 24);
  OUTLINED_FUNCTION_521((v1 + 2), &v161);
  v43 = v42 == v1[2] && v41 == v1[3];
  if (v43 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_521(v3 + 32, &v160);
    v44 = *(v3 + 32);
    OUTLINED_FUNCTION_521((v1 + 4), &v159);
    if (v44 == v1[4])
    {
      OUTLINED_FUNCTION_521(v3 + 40, &v158);
      v45 = *(v3 + 40);
      OUTLINED_FUNCTION_521((v1 + 5), &v157);
      if (v45 == v1[5])
      {
        OUTLINED_FUNCTION_521(v3 + 48, &v156);
        v46 = *(v3 + 48);
        v47 = *(v3 + 56);
        OUTLINED_FUNCTION_521((v1 + 6), &v155);
        v48 = v46 == v1[6] && v47 == v1[7];
        if (v48 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
        {
          OUTLINED_FUNCTION_521(v3 + 64, &v154);
          v49 = *(v3 + 64);
          v50 = *(v3 + 72);
          OUTLINED_FUNCTION_521((v1 + 8), &v153);
          v51 = v49 == v1[8] && v50 == v1[9];
          if (v51 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
          {
            OUTLINED_FUNCTION_521(v3 + 80, &v152);
            v52 = *(v3 + 80);
            v53 = *(v3 + 88);
            OUTLINED_FUNCTION_521((v1 + 10), &v151);
            if (sub_1B8D92198(v52, v53, v1[10]))
            {
              OUTLINED_FUNCTION_521(v3 + 96, &v150);
              v54 = *(v3 + 96);
              v55 = *(v3 + 104);
              OUTLINED_FUNCTION_521((v1 + 12), &v149);
              v56 = v54 == v1[12] && v55 == v1[13];
              if (v56 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
              {
                OUTLINED_FUNCTION_521(v3 + 112, &v148);
                v57 = *(v3 + 112);
                v58 = *(v3 + 120);
                OUTLINED_FUNCTION_521((v1 + 14), &v147);
                v59 = v57 == v1[14] && v58 == v1[15];
                if (v59 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                {
                  OUTLINED_FUNCTION_521(v3 + 128, &v146);
                  v60 = *(v3 + 128);
                  v61 = *(v3 + 136);
                  OUTLINED_FUNCTION_521((v1 + 16), &v145);
                  v62 = v60 == v1[16] && v61 == v1[17];
                  if (v62 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                  {
                    OUTLINED_FUNCTION_521(v3 + 144, &v144);
                    v63 = *(v3 + 144);
                    v64 = *(v3 + 152);
                    OUTLINED_FUNCTION_521((v1 + 18), &v143);
                    v65 = v63 == v1[18] && v64 == v1[19];
                    if (v65 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                    {
                      OUTLINED_FUNCTION_521(v3 + 160, &v142);
                      v66 = *(v3 + 160);
                      OUTLINED_FUNCTION_521((v1 + 20), &v141);
                      if (sub_1B8D6123C(v66, v1[20]))
                      {
                        OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork, &v140);
                        sub_1B8D92024();
                        OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork, &v139);
                        v67 = *(v30 + 48);
                        v68 = v118;
                        sub_1B8D92024();
                        sub_1B8D92024();
                        OUTLINED_FUNCTION_37_0(v68);
                        if (v43)
                        {

                          sub_1B8D9207C(v40, &qword_1EBAB9680, &unk_1B964EEA0);
                          OUTLINED_FUNCTION_37_0(v68 + v67);
                          if (v43)
                          {
                            sub_1B8D9207C(v68, &qword_1EBAB9680, &unk_1B964EEA0);
                            goto LABEL_45;
                          }
                        }

                        else
                        {
                          sub_1B8D92024();
                          OUTLINED_FUNCTION_37_0(v68 + v67);
                          if (!v77)
                          {
                            OUTLINED_FUNCTION_1_23();
                            sub_1B8EBA878();
                            if (*v37 == *v29 && v37[1] == v29[1])
                            {
                              v81 = v37[2] == v29[2] && v37[3] == v29[3];
                              if (v81 || (sub_1B964C9F0() & 1) != 0)
                              {
                                sub_1B964C2B0();
                                OUTLINED_FUNCTION_28_7();
                                sub_1B8CD20A8(v82, v83, MEMORY[0x1E69AAC10]);

                                OUTLINED_FUNCTION_91_0();
                                v84 = sub_1B964C850();
                                sub_1B8D9207C(v40, &qword_1EBAB9680, &unk_1B964EEA0);
                                OUTLINED_FUNCTION_27_5();
                                sub_1B8EBA928();
                                sub_1B8EBA928();
                                sub_1B8D9207C(v68, &qword_1EBAB9680, &unk_1B964EEA0);
                                if ((v84 & 1) == 0)
                                {
                                  goto LABEL_79;
                                }

LABEL_45:
                                OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers, &v138);
                                OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers, &v137);

                                v69 = OUTLINED_FUNCTION_696();
                                sub_1B8D7E5B8(v69, v70);
                                v72 = v71;

                                if ((v72 & 1) == 0)
                                {
LABEL_79:

                                  goto LABEL_80;
                                }

                                OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating, &v136);
                                v73 = v117;
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating, &v135);
                                v74 = *(v113 + 48);
                                v75 = v115;
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                if (__swift_getEnumTagSinglePayload(v75, 1, v114) == 1)
                                {
                                  sub_1B8D9207C(v73, &qword_1EBAB9690, &qword_1B964EEB8);
                                  OUTLINED_FUNCTION_37_0(v75 + v74);
                                  v76 = v116;
                                  if (!v43)
                                  {
                                    goto LABEL_67;
                                  }

                                  sub_1B8D9207C(v75, &qword_1EBAB9690, &qword_1B964EEB8);
                                }

                                else
                                {
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_37_0(v75 + v74);
                                  v76 = v116;
                                  if (v43)
                                  {
                                    sub_1B8D9207C(v117, &qword_1EBAB9690, &qword_1B964EEB8);
                                    sub_1B8EBA928();
LABEL_67:
                                    v78 = &qword_1EBAB9760;
                                    v79 = &qword_1B964EEF0;
LABEL_77:
                                    v80 = v75;
                                    goto LABEL_78;
                                  }

                                  sub_1B8EBA878();
                                  v85 = static Amppb_UserRating.== infix(_:_:)();
                                  sub_1B8EBA928();
                                  OUTLINED_FUNCTION_189(v117);
                                  sub_1B8EBA928();
                                  OUTLINED_FUNCTION_189(v75);
                                  if ((v85 & 1) == 0)
                                  {
                                    goto LABEL_79;
                                  }
                                }

                                OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo, &v134);
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo, &v133);
                                v86 = *(v109 + 48);
                                v75 = v111;
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                if (__swift_getEnumTagSinglePayload(v75, 1, v110) == 1)
                                {
                                  sub_1B8D9207C(v76, &qword_1EBAB96A8, &qword_1B964EED0);
                                  OUTLINED_FUNCTION_37_0(v75 + v86);
                                  if (!v43)
                                  {
                                    goto LABEL_76;
                                  }

                                  sub_1B8D9207C(v75, &qword_1EBAB96A8, &qword_1B964EED0);
                                }

                                else
                                {
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_37_0(v75 + v86);
                                  if (v43)
                                  {
                                    sub_1B8D9207C(v76, &qword_1EBAB96A8, &qword_1B964EED0);
                                    sub_1B8EBA928();
LABEL_76:
                                    v78 = &qword_1EBAB9AC0;
                                    v79 = &qword_1B96507E8;
                                    goto LABEL_77;
                                  }

                                  sub_1B8EBA878();
                                  v87 = static Amppb_EbookInfo.== infix(_:_:)();
                                  sub_1B8EBA928();
                                  OUTLINED_FUNCTION_189(v76);
                                  sub_1B8EBA928();
                                  OUTLINED_FUNCTION_189(v75);
                                  if ((v87 & 1) == 0)
                                  {
                                    goto LABEL_79;
                                  }
                                }

                                OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children, &v132);
                                OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children, &v131);

                                OUTLINED_FUNCTION_696();
                                sub_1B8DB2AD0();
                                v89 = v88;

                                if (v89)
                                {
                                  v90 = v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin;
                                  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin, &v130);
                                  v91 = *(v90 + 8);
                                  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin, &v129);
                                  OUTLINED_FUNCTION_54_4();
                                  v93 = v43 && v91 == v92;
                                  if (v93 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                  {
                                    v94 = v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed;
                                    OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed, &v128);
                                    v95 = *(v94 + 8);
                                    OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed, &v127);
                                    OUTLINED_FUNCTION_54_4();
                                    v97 = v43 && v95 == v96;
                                    if (v97 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                    {
                                      OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem, &v126);
                                      OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem, &v125);

                                      OUTLINED_FUNCTION_696();
                                      sub_1B8DB4F98();
                                      v99 = v98;

                                      if (v99)
                                      {
                                        v100 = v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName;
                                        OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName, &v124);
                                        v101 = *(v100 + 8);
                                        OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName, &v123);
                                        OUTLINED_FUNCTION_54_4();
                                        v103 = v43 && v101 == v102;
                                        if (v103 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                        {
                                          v104 = v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID;
                                          OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID, &v122);
                                          v105 = *(v104 + 8);
                                          OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID, &v121);
                                          OUTLINED_FUNCTION_54_4();
                                          v107 = v43 && v105 == v106;
                                          if (v107 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                          {
                                            OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult, &v120);

                                            OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult, &v119);

                                            goto LABEL_80;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                goto LABEL_79;
                              }
                            }

                            sub_1B8D9207C(v40, &qword_1EBAB9680, &unk_1B964EEA0);
                            OUTLINED_FUNCTION_27_5();
                            sub_1B8EBA928();
                            sub_1B8EBA928();
                            v80 = v68;
                            v78 = &qword_1EBAB9680;
                            v79 = &unk_1B964EEA0;
LABEL_78:
                            sub_1B8D9207C(v80, v78, v79);
                            goto LABEL_79;
                          }

                          sub_1B8D9207C(v40, &qword_1EBAB9680, &unk_1B964EEA0);
                          sub_1B8EBA928();
                        }

                        v78 = &qword_1EBAB96F0;
                        v79 = &unk_1B964EEE0;
                        v80 = v68;
                        goto LABEL_78;
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
  }

LABEL_80:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8EBA878()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8EBA8D0()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8EBA928()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Snippetpb_MediaSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_MediaSnippet(0);
  sub_1B8CD20A8(&qword_1EBABD660, type metadata accessor for Snippetpb_MediaSnippet, protocol conformance descriptor for Snippetpb_MediaSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EBAA60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD20A8(&qword_1EBABD678, type metadata accessor for Snippetpb_MediaSnippet, protocol conformance descriptor for Snippetpb_MediaSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EBAAE0(uint64_t a1)
{
  v2 = sub_1B8CD20A8(&qword_1EBABAFB8, type metadata accessor for Snippetpb_MediaSnippet, protocol conformance descriptor for Snippetpb_MediaSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EBAB50(uint64_t a1, uint64_t a2)
{
  sub_1B8CD20A8(&qword_1EBABAFB8, type metadata accessor for Snippetpb_MediaSnippet, protocol conformance descriptor for Snippetpb_MediaSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EBAD18(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Snippetpb_MediaSnippet._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8EBADA4(uint64_t a1)
{
  sub_1B8EBAF5C(319, &qword_1ED9CDAC0, type metadata accessor for Amppb_Artwork);
  if (v1 <= 0x3F)
  {
    sub_1B8EBAF5C(319, &qword_1ED9CD8E0, type metadata accessor for Amppb_UserRating);
    if (v2 <= 0x3F)
    {
      sub_1B8EBAF5C(319, &qword_1ED9CD948, type metadata accessor for Amppb_EbookInfo);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8EBAF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Snippetpb_MediaSnippet(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_15()
{
  type metadata accessor for Snippetpb_MediaSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_8_15()
{
  type metadata accessor for Snippetpb_MediaSnippet._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_8()
{
  type metadata accessor for Snippetpb_MediaSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_3(uint64_t a1)
{
  type metadata accessor for Snippetpb_MediaSnippet(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Snippetpb_MoviesSnippet.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20);
  if (qword_1EBAB6560 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABD698;
}

uint64_t static Snippetpb_MoviesSnippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_17();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1B8EC2CC0(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_29_9();
  sub_1B8CD20F0(v8, v9, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_MoviesSnippet.id.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MoviesSnippet.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_18_8();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EBF92C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_24(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBB418()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MoviesSnippet.id.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EBF92C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.canonicalID.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MoviesSnippet.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_18_8();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EBF92C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_24(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBB5F4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MoviesSnippet.canonicalID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EBF92C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.titles.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 48, v2);
}

uint64_t Snippetpb_MoviesSnippet.titles.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 48, v4);
  *(v5 + 48) = v0;
}

uint64_t Snippetpb_MoviesSnippet.titles.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBB7B0()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.titles.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8EBF92C(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 48);
    *(v6 + 48) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.genres.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 56, v2);
}

uint64_t Snippetpb_MoviesSnippet.genres.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 56, v4);
  *(v5 + 56) = v0;
}

uint64_t Snippetpb_MoviesSnippet.genres.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 48) = *(v0 + 56);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBB968()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.genres.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8EBF92C(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 56);
    *(v6 + 56) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.description_p.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MoviesSnippet.description_p.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_18_8();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EBF92C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_24(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBBB40()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MoviesSnippet.description_p.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EBF92C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.actors.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 80, v2);
}

uint64_t Snippetpb_MoviesSnippet.actors.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 80, v4);
  *(v5 + 80) = v0;
}

uint64_t Snippetpb_MoviesSnippet.actors.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  *(v1 + 48) = *(v0 + 80);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBBCFC()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.actors.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8EBF92C(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 80);
    *(v6 + 80) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.directors.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 88, v2);
}

uint64_t Snippetpb_MoviesSnippet.directors.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 88, v4);
  *(v5 + 88) = v0;
}

uint64_t Snippetpb_MoviesSnippet.directors.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0(v0 + 88);
  *(v1 + 48) = *(v0 + 88);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBBEB4()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.directors.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8EBF92C(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 88);
    *(v6 + 88) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.releaseDateSecs.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 96, v3);
  return *(v2 + 96);
}

uint64_t Snippetpb_MoviesSnippet.releaseDateSecs.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 96, v4);
  *(v5 + 96) = v0;
  return result;
}

uint64_t Snippetpb_MoviesSnippet.releaseDateSecs.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_4_17();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 96);
  v3[9] = *(v5 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBC044(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EBF92C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 96, v3 + v11);
  *(v8 + 96) = v4;

  free(v3);
}

uint64_t Snippetpb_MoviesSnippet.thumbnail.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 104, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MoviesSnippet.thumbnail.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_18_8();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EBF92C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 104, v5);
  *(v6 + 104) = v2;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.thumbnail.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_24(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 104);
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBC22C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MoviesSnippet.thumbnail.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EBF92C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 104);
    *(v7 + 104) = v3;
    *(v7 + 112) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.runtimeInMinutes.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 120, v3);
  return *(v2 + 120);
}

uint64_t Snippetpb_MoviesSnippet.runtimeInMinutes.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_15_9();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EBF92C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 120, v5);
  *(v6 + 120) = a1;
  return result;
}

uint64_t Snippetpb_MoviesSnippet.runtimeInMinutes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_16(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  *(v1 + 80) = *(v0 + 120);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBC3B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EBF92C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 120, v3 + v11);
  *(v8 + 120) = v4;

  free(v3);
}

uint64_t Snippetpb_MoviesSnippet.availabilities.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 128, v2);
}

uint64_t Snippetpb_MoviesSnippet.availabilities.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 128, v4);
  *(v5 + 128) = v0;
}

uint64_t Snippetpb_MoviesSnippet.availabilities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  *(v1 + 48) = *(v0 + 128);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBC57C()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.availabilities.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8EBF92C(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 128);
    *(v6 + 128) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.isAppleOriginal.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 136, v3);
  return *(v2 + 136);
}

uint64_t Snippetpb_MoviesSnippet.isAppleOriginal.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_15_9();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EBF92C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 136, v5);
  *(v6 + 136) = a1 & 1;
  return result;
}

uint64_t Snippetpb_MoviesSnippet.isAppleOriginal.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_16(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 136);
  *(v1 + 84) = *(v0 + 136);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBC704(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EBF92C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 136, v3 + v11);
  *(v8 + 136) = v6;

  free(v3);
}

uint64_t Snippetpb_MoviesSnippet.studios.getter()
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 144, v2);
}

uint64_t Snippetpb_MoviesSnippet.studios.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 144, v4);
  *(v5 + 144) = v0;
}

uint64_t Snippetpb_MoviesSnippet.studios.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  *(v1 + 48) = *(v0 + 144);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBC8C8()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.studios.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8EBF92C(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 144);
    *(v6 + 144) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.contentRating.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5 - 8];
  OUTLINED_FUNCTION_4_17();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521(v8 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating, v14);
  sub_1B8EC39EC(v8 + v9, v6);
  v10 = type metadata accessor for Moviespb_ContentRating(0);
  OUTLINED_FUNCTION_178(v6, 1, v10);
  if (!v11)
  {
    return sub_1B8EC3A5C(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_178(v6, 1, v10);
  if (!v11)
  {
    return sub_1B8D9207C(v6, &qword_1EBABD6A0, &qword_1B9663800);
  }

  return result;
}

uint64_t sub_1B8EBCA68(uint64_t a1)
{
  v2 = type metadata accessor for Moviespb_ContentRating(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8EC3B30(a1, v4);
  return Snippetpb_MoviesSnippet.contentRating.setter(v4);
}

uint64_t Snippetpb_MoviesSnippet.contentRating.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = OUTLINED_FUNCTION_21_6();
  v9 = *(v1 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EBF92C(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  sub_1B8EC3A5C(a1, v7);
  v12 = type metadata accessor for Moviespb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  swift_beginAccess();
  sub_1B8EC3AC0(v7, v9 + v13);
  return swift_endAccess();
}

uint64_t Snippetpb_MoviesSnippet.contentRating.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Moviespb_ContentRating(0);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_4_17();
  v12 = *(v1 + v11);
  v13 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521(v12 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating, v3);
  sub_1B8EC39EC(v12 + v13, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBABD6A0, &qword_1B9663800);
    }
  }

  else
  {
    sub_1B8EC3A5C(v6, v10);
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBCD50(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    sub_1B8EC3B30(v4, v3);
    Snippetpb_MoviesSnippet.contentRating.setter(v3);
    sub_1B8EC3B94(v4);
  }

  else
  {
    Snippetpb_MoviesSnippet.contentRating.setter(v4);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t Snippetpb_MoviesSnippet.hasContentRating.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-v5 - 8];
  OUTLINED_FUNCTION_4_17();
  v8 = *(v0 + v7);
  v9 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521(v8 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating, v15);
  sub_1B8EC39EC(v8 + v9, v6);
  v10 = type metadata accessor for Moviespb_ContentRating(0);
  OUTLINED_FUNCTION_178(v6, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1B8D9207C(v6, &qword_1EBABD6A0, &qword_1B9663800);
  return v12;
}

Swift::Void __swiftcall Snippetpb_MoviesSnippet.clearContentRating()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = OUTLINED_FUNCTION_15_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  v10 = type metadata accessor for Moviespb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  swift_beginAccess();
  sub_1B8EC3AC0(v5, v7 + v11);
  swift_endAccess();
}

uint64_t Snippetpb_MoviesSnippet.trailers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EBD060(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_10_4(*(v1 + v3) + *a1, v4);
}

void sub_1B8EBD0DC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_21_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.rottenTomatoReviews.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.tomatoMeter.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_222_1(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8EBD258(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_17();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4(v4 + v5, v6);
  return *(v4 + v5);
}

void sub_1B8EBD2A4()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_21_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.freshReviewCount.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_222_1(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBD370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 84);
    v11 = *(v4 + 72);
    OUTLINED_FUNCTION_6_7();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v12);
    *(v11 + v10) = v9;
  }

  v13 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v13, v4 + v14);
  *(v9 + a3) = v5;

  free(v4);
}

uint64_t Snippetpb_MoviesSnippet.certifiedFresh.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.rottenReviewCount.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_222_1(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.rottenTomatoURL.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_24(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.theaters.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EBD6DC(void *a1)
{
  OUTLINED_FUNCTION_4_17();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521(v4, v7);
  v5 = *v4;

  return v5;
}

void sub_1B8EBD780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v30 = *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v20 + v30);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v33 = OUTLINED_FUNCTION_40_0();
    v32 = sub_1B8EBF92C(v33);
    *(v25 + v30) = v32;
  }

  v34 = (v32 + *v24);
  OUTLINED_FUNCTION_18(v34, &a10);
  *v34 = v29;
  v34[1] = v27;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.fandangoID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_24(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.fandangoName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_24(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.numScreenings.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_222_1(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.coverArt.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EBDACC(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_17();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4(v4 + v5, v6);
  return *(v4 + v5);
}

void sub_1B8EBDB18()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_21_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.isShowtimes.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBDBE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    OUTLINED_FUNCTION_6_7();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v12);
    *(v11 + v10) = v9;
  }

  v13 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v13, v4 + v14);
  *(v9 + a3) = v7;

  free(v4);
}

uint64_t Snippetpb_MoviesSnippet.wikiID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_24(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.imdbID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_24(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.voiceOnlyActors.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.localizedGenres.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.characterNames.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.siribaseID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_24(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.writers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.producers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.trailersV2.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.castAndCrew.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.boost.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.engTokens.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE5F8()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    v5 = v3;
    v6 = OUTLINED_FUNCTION_61_1();
    v5(v6);
  }

  else
  {
    v7 = v2;
    v8 = *(v0 + 64);
    v9 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EBF92C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    v14 = *v7;
    OUTLINED_FUNCTION_59_3(v11 + v14);
    *(v11 + v14) = v1;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.isAnnTier.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.isIm.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.isStereo.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.kgInternalID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_24(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE910()
{
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
      OUTLINED_FUNCTION_6_7();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8EBF92C(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  free(v0);
}

uint64_t Snippetpb_MoviesSnippet.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Snippetpb_MoviesSnippet.unknownFields.setter(uint64_t a1)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1B8EBEACC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD680);
  __swift_project_value_buffer(v0, qword_1EBABD680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1B96637F0;
  v4 = v92 + v3 + v1[14];
  *(v92 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v92 + v3 + v2 + v1[14];
  *(v92 + v3 + v2) = 2;
  *v8 = "canonical_id";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v92 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "titles";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v92 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "genres";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v92 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "description";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v92 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "actors";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v92 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "directors";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v92 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "release_date_secs";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v92 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "thumbnail";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  v23 = (v92 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "runtime_in_minutes";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v7();
  v25 = (v92 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "availabilities";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v92 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "is_apple_original";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v92 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "studios";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v7();
  v31 = (v92 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "content_rating";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v92 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "trailers";
  *(v34 + 1) = 8;
  v34[16] = 2;
  v7();
  v35 = (v92 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "rotten_tomato_reviews";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v7();
  v37 = (v92 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "tomato_meter";
  *(v38 + 1) = 12;
  v38[16] = 2;
  v7();
  v39 = (v92 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "fresh_review_count";
  *(v40 + 1) = 18;
  v40[16] = 2;
  v7();
  v41 = (v92 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "certified_fresh";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v92 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "rotten_review_count";
  *(v44 + 1) = 19;
  v44[16] = 2;
  v7();
  v45 = (v92 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "rotten_tomato_url";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v7();
  v47 = (v92 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "theaters";
  *(v48 + 1) = 8;
  v48[16] = 2;
  v7();
  v49 = (v92 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "fandango_id";
  *(v50 + 1) = 11;
  v50[16] = 2;
  v7();
  v51 = (v92 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "fandango_name";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v92 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "num_screenings";
  *(v54 + 1) = 14;
  v54[16] = 2;
  v7();
  v55 = (v92 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "cover_art";
  *(v56 + 1) = 9;
  v56[16] = 2;
  v7();
  v57 = (v92 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "is_showtimes";
  *(v58 + 1) = 12;
  v58[16] = 2;
  v7();
  v59 = (v92 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "wiki_id";
  *(v60 + 1) = 7;
  v60[16] = 2;
  v7();
  v61 = (v92 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "imdb_id";
  *(v62 + 1) = 7;
  v62[16] = 2;
  v7();
  v63 = (v92 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "voice_only_actors";
  *(v64 + 1) = 17;
  v64[16] = 2;
  v7();
  v65 = (v92 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "localized_genres";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v92 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "character_names";
  *(v68 + 1) = 15;
  v68[16] = 2;
  v7();
  v69 = (v92 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "siribase_id";
  *(v70 + 1) = 11;
  v70[16] = 2;
  v7();
  v71 = (v92 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "writers";
  *(v72 + 1) = 7;
  v72[16] = 2;
  v7();
  v73 = (v92 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "producers";
  *(v74 + 1) = 9;
  v74[16] = 2;
  v7();
  v75 = (v92 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "trailers_v2";
  *(v76 + 1) = 11;
  v76[16] = 2;
  v7();
  v77 = (v92 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "cast_and_crew";
  *(v78 + 1) = 13;
  v78[16] = 2;
  v7();
  v79 = (v92 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "boost";
  *(v80 + 1) = 5;
  v80[16] = 2;
  v7();
  v81 = (v92 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "engTokens";
  *(v82 + 1) = 9;
  v82[16] = 2;
  v7();
  v83 = (v92 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "is_ann_tier";
  *(v84 + 1) = 11;
  v84[16] = 2;
  v7();
  v85 = (v92 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "is_im";
  *(v86 + 1) = 5;
  v86[16] = 2;
  v7();
  v87 = (v92 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "is_stereo";
  *(v88 + 1) = 9;
  v88[16] = 2;
  v7();
  v89 = (v92 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "kg_internal_id";
  *(v90 + 1) = 14;
  v90[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Snippetpb_MoviesSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6558 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD680);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B8EBF700()
{
  OUTLINED_FUNCTION_6_7();
  result = sub_1B8EBF730();
  qword_1EBABD698 = result;
  return result;
}

uint64_t sub_1B8EBF730()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = v1;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  *(v0 + 136) = 0;
  *(v0 + 144) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  v3 = type metadata accessor for Moviespb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount) = 0;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters) = v1;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes) = 0;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames) = v1;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo) = 0;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8EBF92C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v138 = &v127 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = v5;
  *(v1 + 64) = 0;
  v128 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = v5;
  v129 = (v1 + 80);
  *(v1 + 88) = v5;
  v130 = (v1 + 88);
  *(v1 + 104) = 0;
  v132 = (v1 + 104);
  *(v1 + 96) = 0;
  v131 = (v1 + 96);
  *(v1 + 120) = 0;
  v133 = (v1 + 120);
  *(v1 + 128) = v5;
  v134 = (v1 + 128);
  *(v1 + 136) = 0;
  v135 = (v1 + 136);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 144) = v5;
  v136 = (v1 + 144);
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  v7 = type metadata accessor for Moviespb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v137 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers) = v5;
  v139 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews) = v5;
  v140 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter) = 0;
  v141 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount) = 0;
  v142 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh) = 0;
  v143 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount) = 0;
  v8 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
  v144 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v145 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters) = v5;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
  v146 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
  v147 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v148 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings) = 0;
  v149 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt) = v5;
  v150 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes) = 0;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
  v151 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
  v152 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v153 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors) = v5;
  v154 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres) = v5;
  v155 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames) = v5;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
  v156 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v157 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers) = v5;
  v158 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers) = v5;
  v159 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2) = v5;
  v160 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew) = v5;
  v161 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost) = 0;
  v162 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens) = v5;
  v163 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier) = 0;
  v164 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm) = 0;
  v165 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo) = 0;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
  v166 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v15;
  *(v1 + 24) = v16;
  swift_beginAccess();
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v17;
  *(v1 + 40) = v18;

  swift_beginAccess();
  v19 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v19;

  swift_beginAccess();
  v20 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v20;

  swift_beginAccess();
  v22 = *(a1 + 64);
  v21 = *(a1 + 72);
  v23 = v128;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 72) = v21;

  swift_beginAccess();
  v24 = *(a1 + 80);
  v25 = v129;
  swift_beginAccess();
  *v25 = v24;

  swift_beginAccess();
  v26 = *(a1 + 88);
  v27 = v130;
  swift_beginAccess();
  *v27 = v26;

  swift_beginAccess();
  v28 = *(a1 + 96);
  v29 = v131;
  swift_beginAccess();
  *v29 = v28;
  swift_beginAccess();
  v31 = *(a1 + 104);
  v30 = *(a1 + 112);
  v32 = v132;
  swift_beginAccess();
  *v32 = v31;
  *(v1 + 112) = v30;

  swift_beginAccess();
  LODWORD(v30) = *(a1 + 120);
  v33 = v133;
  swift_beginAccess();
  *v33 = v30;
  swift_beginAccess();
  v34 = *(a1 + 128);
  v35 = v134;
  swift_beginAccess();
  *v35 = v34;

  swift_beginAccess();
  LOBYTE(v34) = *(a1 + 136);
  v36 = v135;
  swift_beginAccess();
  *v36 = v34;
  swift_beginAccess();
  v37 = *(a1 + 144);
  v38 = v136;
  swift_beginAccess();
  *v38 = v37;

  v39 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  swift_beginAccess();
  v40 = a1 + v39;
  v41 = v138;
  sub_1B8EC39EC(v40, v138);
  swift_beginAccess();
  sub_1B8EC3AC0(v41, v1 + v6);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers;
  swift_beginAccess();
  v43 = *(a1 + v42);
  v44 = v137;
  swift_beginAccess();
  *(v1 + v44) = v43;

  v45 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = v139;
  swift_beginAccess();
  *(v1 + v47) = v46;

  v48 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
  swift_beginAccess();
  LODWORD(v48) = *(a1 + v48);
  v49 = v140;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
  swift_beginAccess();
  LODWORD(v50) = *(a1 + v50);
  v51 = v141;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v142;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
  swift_beginAccess();
  LODWORD(v54) = *(a1 + v54);
  v55 = v143;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  v59 = v144;
  swift_beginAccess();
  *v59 = v58;
  v59[1] = v57;

  v60 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters;
  swift_beginAccess();
  v61 = *(a1 + v60);
  v62 = v145;
  swift_beginAccess();
  *(v1 + v62) = v61;

  v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = v146;
  swift_beginAccess();
  *v66 = v65;
  v66[1] = v64;

  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = v147;
  swift_beginAccess();
  *v70 = v69;
  v70[1] = v68;

  v71 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
  swift_beginAccess();
  LODWORD(v71) = *(a1 + v71);
  v72 = v148;
  swift_beginAccess();
  *(v1 + v72) = v71;
  v73 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt;
  swift_beginAccess();
  v74 = *(a1 + v73);
  v75 = v149;
  swift_beginAccess();
  *(v1 + v75) = v74;

  v76 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
  swift_beginAccess();
  LOBYTE(v76) = *(a1 + v76);
  v77 = v150;
  swift_beginAccess();
  *(v1 + v77) = v76;
  v78 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = v151;
  swift_beginAccess();
  *v81 = v80;
  v81[1] = v79;

  v82 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
  swift_beginAccess();
  v84 = *v82;
  v83 = v82[1];
  v85 = v152;
  swift_beginAccess();
  *v85 = v84;
  v85[1] = v83;

  v86 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
  swift_beginAccess();
  v87 = *(a1 + v86);
  v88 = v153;
  swift_beginAccess();
  *(v1 + v88) = v87;

  v89 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres;
  swift_beginAccess();
  v90 = *(a1 + v89);
  v91 = v154;
  swift_beginAccess();
  *(v1 + v91) = v90;

  v92 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
  swift_beginAccess();
  v93 = *(a1 + v92);
  v94 = v155;
  swift_beginAccess();
  *(v1 + v94) = v93;

  v95 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
  swift_beginAccess();
  v97 = *v95;
  v96 = v95[1];
  v98 = v156;
  swift_beginAccess();
  *v98 = v97;
  v98[1] = v96;

  v99 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
  swift_beginAccess();
  v100 = *(a1 + v99);
  v101 = v157;
  swift_beginAccess();
  *(v1 + v101) = v100;

  v102 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
  swift_beginAccess();
  v103 = *(a1 + v102);
  v104 = v158;
  swift_beginAccess();
  *(v1 + v104) = v103;

  v105 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2;
  swift_beginAccess();
  v106 = *(a1 + v105);
  v107 = v159;
  swift_beginAccess();
  *(v1 + v107) = v106;

  v108 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew;
  swift_beginAccess();
  v109 = *(a1 + v108);
  v110 = v160;
  swift_beginAccess();
  *(v1 + v110) = v109;

  v111 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
  swift_beginAccess();
  LOBYTE(v111) = *(a1 + v111);
  v112 = v161;
  swift_beginAccess();
  *(v1 + v112) = v111;
  v113 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
  swift_beginAccess();
  v114 = *(a1 + v113);
  v115 = v162;
  swift_beginAccess();
  *(v1 + v115) = v114;

  v116 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
  swift_beginAccess();
  LOBYTE(v116) = *(a1 + v116);
  v117 = v163;
  swift_beginAccess();
  *(v1 + v117) = v116;
  v118 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
  swift_beginAccess();
  LOBYTE(v118) = *(a1 + v118);
  v119 = v164;
  swift_beginAccess();
  *(v1 + v119) = v118;
  v120 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
  swift_beginAccess();
  LOBYTE(v120) = *(a1 + v120);
  v121 = v165;
  swift_beginAccess();
  *(v1 + v121) = v120;
  v122 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
  swift_beginAccess();
  v124 = *v122;
  v123 = v122[1];

  v125 = v166;
  swift_beginAccess();
  *v125 = v124;
  v125[1] = v123;

  return v1;
}

void *sub_1B8EC0894()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating, &qword_1EBABD6A0, &qword_1B9663800);

  return v0;
}

uint64_t sub_1B8EC0A68()
{
  v0 = sub_1B8EC0894();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Snippetpb_MoviesSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Snippetpb_MoviesSnippet._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EBF92C(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8EC0B5C(v10, a1, a2, a3);
}

uint64_t sub_1B8EC0B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8E4C27C(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B8E88A5C(a2, a1, a3, a4);
        continue;
      case 5:
        sub_1B8E16ACC(a2, a1);
        continue;
      case 6:
        sub_1B8E88AE0(a2, a1, a3, a4);
        continue;
      case 7:
        sub_1B8E88B64(a2, a1, a3, a4);
        continue;
      case 8:
        sub_1B8EC0F80(a2, a1, a3, a4);
        continue;
      case 9:
        sub_1B8EC1004(a2, a1);
        continue;
      case 10:
        sub_1B8EC1088(a2, a1, a3, a4);
        continue;
      case 11:
        sub_1B8EC110C(a2, a1, a3, a4);
        continue;
      case 12:
        sub_1B8EC11D8(a2, a1, a3, a4);
        continue;
      case 13:
        sub_1B8E2FA2C(a2, a1, a3, a4);
        continue;
      case 14:
        sub_1B8EC125C(a2, a1, a3, a4);
        continue;
      case 15:
        sub_1B8EC1338(a2, a1, a3, a4);
        continue;
      case 16:
        sub_1B8EC1414(a2, a1, a3, a4);
        continue;
      case 17:
        v15 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
        goto LABEL_41;
      case 18:
        v15 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
        goto LABEL_41;
      case 19:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
        goto LABEL_50;
      case 20:
        v15 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
        goto LABEL_41;
      case 21:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL;
        goto LABEL_45;
      case 22:
        sub_1B8EC14F0(a2, a1, a3, a4);
        continue;
      case 23:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID;
        goto LABEL_45;
      case 24:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName;
        goto LABEL_45;
      case 25:
        v15 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
LABEL_41:
        sub_1B8EC15CC(a2, a1, a3, a4, v15, v11);
        continue;
      case 26:
        sub_1B8EC1614(a2, a1, a3, a4);
        continue;
      case 27:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
        goto LABEL_50;
      case 28:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID;
        goto LABEL_45;
      case 29:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID;
        goto LABEL_45;
      case 30:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
        goto LABEL_48;
      case 31:
        sub_1B8EC16F0(a2, a1, a3, a4);
        continue;
      case 32:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
        goto LABEL_48;
      case 33:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID;
        goto LABEL_45;
      case 34:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
        goto LABEL_48;
      case 35:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
        goto LABEL_48;
      case 36:
        sub_1B8EC17CC(a2, a1, a3, a4);
        continue;
      case 37:
        sub_1B8EC18A8(a2, a1, a3, a4);
        continue;
      case 38:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
        goto LABEL_50;
      case 39:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
LABEL_48:
        sub_1B8EC1984(a2, a1, a3, a4, v14, v11);
        continue;
      case 40:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
        goto LABEL_50;
      case 41:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
        goto LABEL_50;
      case 42:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
LABEL_50:
        sub_1B8EC19CC(a2, a1, a3, a4, v12, v11);
        break;
      case 43:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID;
LABEL_45:
        sub_1B8EC1A14(a2, a1, a3, a4, v13, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EC0F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8EC1004(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8EC1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8EC110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Moviespb_Availability(0);
  sub_1B8CD20F0(&qword_1EBABD330, type metadata accessor for Moviespb_Availability, protocol conformance descriptor for Moviespb_Availability);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC11D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EC125C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Moviespb_ContentRating(0);
  sub_1B8CD20F0(&qword_1EBABD360, type metadata accessor for Moviespb_ContentRating, protocol conformance descriptor for Moviespb_ContentRating);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8EC1338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Moviespb_Trailer(0);
  sub_1B8CD20F0(&qword_1EBABD378, type metadata accessor for Moviespb_Trailer, protocol conformance descriptor for Moviespb_Trailer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC1414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Moviespb_RottenTomatoReview(0);
  sub_1B8CD20F0(&qword_1EBABD390, type metadata accessor for Moviespb_RottenTomatoReview, protocol conformance descriptor for Moviespb_RottenTomatoReview);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC14F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Moviespb_MovieTheater(0);
  sub_1B8CD20F0(&qword_1EBABD3A8, type metadata accessor for Moviespb_MovieTheater, protocol conformance descriptor for Moviespb_MovieTheater);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC15CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_10();
  v6 = sub_1B964C4A0();
  return OUTLINED_FUNCTION_199_1(v6);
}

uint64_t sub_1B8EC1614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Moviespb_CoverArt(0);
  sub_1B8CD20F0(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt, protocol conformance descriptor for Moviespb_CoverArt);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC16F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Moviespb_Genre(0);
  sub_1B8CD20F0(&qword_1EBABD400, type metadata accessor for Moviespb_Genre, protocol conformance descriptor for Moviespb_Genre);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC17CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_TrailerV2(0);
  sub_1B8CD20F0(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2, protocol conformance descriptor for Tvpb_TrailerV2);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC18A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_CastAndCrew(0);
  sub_1B8CD20F0(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew, protocol conformance descriptor for Tvpb_CastAndCrew);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_10();
  v6 = sub_1B964C4D0();
  return OUTLINED_FUNCTION_199_1(v6);
}

uint64_t sub_1B8EC19CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_10();
  v6 = sub_1B964C400();
  return OUTLINED_FUNCTION_199_1(v6);
}

uint64_t sub_1B8EC1A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_10();
  v6 = sub_1B964C530();
  return OUTLINED_FUNCTION_199_1(v6);
}

uint64_t Snippetpb_MoviesSnippet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Snippetpb_MoviesSnippet(0);
  result = sub_1B8EC1AC8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EC1AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v73 - v8;
  v10 = type metadata accessor for Moviespb_ContentRating(0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 40);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 56) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 72);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 80) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 88) + 16))
  {

    sub_1B964C6E0();
    if (!v4)
    {

      goto LABEL_28;
    }
  }

LABEL_28:
  swift_beginAccess();
  if (!*(a1 + 96) || (result = sub_1B964C6D0(), !v4))
  {
    swift_beginAccess();
    v19 = *(a1 + 112);
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {

      sub_1B964C700();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (!*(a1 + 120) || (result = sub_1B964C6C0(), !v4))
    {
      swift_beginAccess();
      v74 = *(a1 + 128);
      if (*(v74 + 16))
      {
        type metadata accessor for Moviespb_Availability(0);
        sub_1B8CD20F0(&qword_1EBABD330, type metadata accessor for Moviespb_Availability, protocol conformance descriptor for Moviespb_Availability);

        sub_1B964C730();
        if (v4)
        {
        }
      }

      swift_beginAccess();
      if (*(a1 + 136) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        if (*(*(a1 + 144) + 16))
        {

          sub_1B964C6E0();
          if (v4)
          {
          }
        }

        v21 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
        swift_beginAccess();
        sub_1B8EC39EC(a1 + v21, v9);
        if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
        {
          sub_1B8D9207C(v9, &qword_1EBABD6A0, &qword_1B9663800);
        }

        else
        {
          v22 = v75;
          sub_1B8EC3A5C(v9, v75);
          sub_1B8CD20F0(&qword_1EBABD360, type metadata accessor for Moviespb_ContentRating, protocol conformance descriptor for Moviespb_ContentRating);
          sub_1B964C740();
          if (v4)
          {
            return sub_1B8EC3B94(v22);
          }

          sub_1B8EC3B94(v22);
        }

        v23 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers;
        swift_beginAccess();
        if (*(*(a1 + v23) + 16))
        {
          type metadata accessor for Moviespb_Trailer(0);
          sub_1B8CD20F0(&qword_1EBABD378, type metadata accessor for Moviespb_Trailer, protocol conformance descriptor for Moviespb_Trailer);

          sub_1B964C730();
          if (v4)
          {
          }
        }

        v24 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews;
        swift_beginAccess();
        if (*(*(a1 + v24) + 16))
        {
          type metadata accessor for Moviespb_RottenTomatoReview(0);
          sub_1B8CD20F0(&qword_1EBABD390, type metadata accessor for Moviespb_RottenTomatoReview, protocol conformance descriptor for Moviespb_RottenTomatoReview);

          sub_1B964C730();
          if (v4)
          {
          }
        }

        v25 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
        swift_beginAccess();
        if (!*(a1 + v25) || (result = sub_1B964C6C0(), !v4))
        {
          v26 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
          swift_beginAccess();
          if (!*(a1 + v26) || (result = sub_1B964C6C0(), !v4))
          {
            v27 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
            swift_beginAccess();
            if (*(a1 + v27) != 1 || (result = sub_1B964C670(), !v4))
            {
              v28 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
              swift_beginAccess();
              if (!*(a1 + v28) || (result = sub_1B964C6C0(), !v4))
              {
                v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
                swift_beginAccess();
                v30 = *v29;
                v31 = v29[1];
                v32 = HIBYTE(v31) & 0xF;
                if ((v31 & 0x2000000000000000) == 0)
                {
                  v32 = v30 & 0xFFFFFFFFFFFFLL;
                }

                if (v32)
                {

                  sub_1B964C700();
                  if (v5)
                  {
                  }
                }

                v33 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters;
                swift_beginAccess();
                if (*(*(a1 + v33) + 16))
                {
                  type metadata accessor for Moviespb_MovieTheater(0);
                  sub_1B8CD20F0(&qword_1EBABD3A8, type metadata accessor for Moviespb_MovieTheater, protocol conformance descriptor for Moviespb_MovieTheater);

                  sub_1B964C730();
                  if (v5)
                  {
                  }
                }

                v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
                swift_beginAccess();
                v35 = *v34;
                v36 = v34[1];
                v37 = HIBYTE(v36) & 0xF;
                if ((v36 & 0x2000000000000000) == 0)
                {
                  v37 = v35 & 0xFFFFFFFFFFFFLL;
                }

                if (v37)
                {

                  sub_1B964C700();
                  if (v5)
                  {
                  }
                }

                v38 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
                swift_beginAccess();
                v39 = *v38;
                v40 = v38[1];
                v41 = HIBYTE(v40) & 0xF;
                if ((v40 & 0x2000000000000000) == 0)
                {
                  v41 = v39 & 0xFFFFFFFFFFFFLL;
                }

                if (v41)
                {

                  sub_1B964C700();
                  if (v5)
                  {
                  }
                }

                v42 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
                swift_beginAccess();
                if (!*(a1 + v42) || (result = sub_1B964C6C0(), !v5))
                {
                  v43 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt;
                  swift_beginAccess();
                  if (*(*(a1 + v43) + 16))
                  {
                    type metadata accessor for Moviespb_CoverArt(0);
                    sub_1B8CD20F0(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt, protocol conformance descriptor for Moviespb_CoverArt);

                    sub_1B964C730();
                    if (v5)
                    {
                    }
                  }

                  v44 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
                  swift_beginAccess();
                  if (*(a1 + v44) != 1 || (result = sub_1B964C670(), !v5))
                  {
                    v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
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

                    v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
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

                    v53 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
                    swift_beginAccess();
                    if (*(*(a1 + v53) + 16))
                    {

                      sub_1B964C6E0();
                      if (v5)
                      {
                      }
                    }

                    v54 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres;
                    swift_beginAccess();
                    if (*(*(a1 + v54) + 16))
                    {
                      type metadata accessor for Moviespb_Genre(0);
                      sub_1B8CD20F0(&qword_1EBABD400, type metadata accessor for Moviespb_Genre, protocol conformance descriptor for Moviespb_Genre);

                      sub_1B964C730();
                      if (v5)
                      {
                      }
                    }

                    v55 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
                    swift_beginAccess();
                    if (*(*(a1 + v55) + 16))
                    {

                      sub_1B964C6E0();
                      if (v5)
                      {
                      }
                    }

                    v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
                    swift_beginAccess();
                    v57 = *v56;
                    v58 = v56[1];
                    v59 = HIBYTE(v58) & 0xF;
                    if ((v58 & 0x2000000000000000) == 0)
                    {
                      v59 = v57 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v59)
                    {

                      sub_1B964C700();
                      if (v5)
                      {
                      }
                    }

                    v60 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
                    swift_beginAccess();
                    if (*(*(a1 + v60) + 16))
                    {

                      sub_1B964C6E0();
                      if (v5)
                      {
                      }
                    }

                    v61 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
                    swift_beginAccess();
                    if (*(*(a1 + v61) + 16))
                    {

                      sub_1B964C6E0();
                      if (v5)
                      {
                      }
                    }

                    v62 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2;
                    swift_beginAccess();
                    if (*(*(a1 + v62) + 16))
                    {
                      type metadata accessor for Tvpb_TrailerV2(0);
                      sub_1B8CD20F0(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2, protocol conformance descriptor for Tvpb_TrailerV2);

                      sub_1B964C730();
                      if (v5)
                      {
                      }
                    }

                    v63 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew;
                    swift_beginAccess();
                    if (*(*(a1 + v63) + 16))
                    {
                      type metadata accessor for Tvpb_CastAndCrew(0);
                      sub_1B8CD20F0(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew, protocol conformance descriptor for Tvpb_CastAndCrew);

                      sub_1B964C730();
                      if (v5)
                      {
                      }
                    }

                    v64 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
                    swift_beginAccess();
                    if (*(a1 + v64) != 1 || (result = sub_1B964C670(), !v5))
                    {
                      v65 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
                      swift_beginAccess();
                      if (*(*(a1 + v65) + 16))
                      {

                        sub_1B964C6E0();
                        if (v5)
                        {
                        }
                      }

                      v66 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
                      swift_beginAccess();
                      if (*(a1 + v66) != 1 || (result = sub_1B964C670(), !v5))
                      {
                        v67 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
                        swift_beginAccess();
                        if (*(a1 + v67) != 1 || (result = sub_1B964C670(), !v5))
                        {
                          v68 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
                          swift_beginAccess();
                          if (*(a1 + v68) != 1 || (result = sub_1B964C670(), !v5))
                          {
                            v69 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
                            result = swift_beginAccess();
                            v70 = *v69;
                            v71 = v69[1];
                            v72 = HIBYTE(v71) & 0xF;
                            if ((v71 & 0x2000000000000000) == 0)
                            {
                              v72 = v70 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v72)
                            {

                              sub_1B964C700();
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8EC2CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Moviespb_ContentRating(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v116[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6F8, &unk_1B9663A40);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v116[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  v12 = OUTLINED_FUNCTION_183(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v116[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v116[-v16];
  OUTLINED_FUNCTION_521(a1 + 16, v204);
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  OUTLINED_FUNCTION_521(a2 + 16, v203);
  v20 = v19 == *(a2 + 16) && v18 == *(a2 + 24);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 32, v202);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  OUTLINED_FUNCTION_521(a2 + 32, v201);
  v23 = v21 == *(a2 + 32) && v22 == *(a2 + 40);
  if (!v23 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 48, v200);
  v24 = *(a1 + 48);
  OUTLINED_FUNCTION_521(a2 + 48, v199);
  if ((sub_1B8D6123C(v24, *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 56, v198);
  v25 = *(a1 + 56);
  OUTLINED_FUNCTION_521(a2 + 56, &v197);
  if ((sub_1B8D6123C(v25, *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 64, &v196);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  OUTLINED_FUNCTION_521(a2 + 64, &v195);
  v28 = v26 == *(a2 + 64) && v27 == *(a2 + 72);
  if (!v28 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 80, &v194);
  v29 = *(a1 + 80);
  OUTLINED_FUNCTION_521(a2 + 80, &v193);
  if ((sub_1B8D6123C(v29, *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 88, &v192);
  v30 = *(a1 + 88);
  OUTLINED_FUNCTION_521(a2 + 88, &v191);
  if ((sub_1B8D6123C(v30, *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 96, &v190);
  v31 = *(a1 + 96);
  OUTLINED_FUNCTION_521(a2 + 96, &v189);
  if (v31 != *(a2 + 96))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 104, &v188);
  v32 = *(a1 + 104);
  v33 = *(a1 + 112);
  OUTLINED_FUNCTION_521(a2 + 104, &v187);
  v34 = v32 == *(a2 + 104) && v33 == *(a2 + 112);
  if (!v34 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 120, &v186);
  v35 = *(a1 + 120);
  OUTLINED_FUNCTION_521(a2 + 120, &v185);
  if (v35 != *(a2 + 120))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 128, &v184);
  v36 = *(a1 + 128);
  OUTLINED_FUNCTION_521(a2 + 128, &v183);
  v37 = *(a2 + 128);

  sub_1B8D89F08(v36, v37);
  v117 = v38;

  if ((v117 & 1) == 0)
  {
    goto LABEL_110;
  }

  OUTLINED_FUNCTION_521(a1 + 136, &v182);
  v39 = *(a1 + 136);
  OUTLINED_FUNCTION_521(a2 + 136, &v181);
  if (v39 != *(a2 + 136))
  {
    goto LABEL_110;
  }

  OUTLINED_FUNCTION_521(a1 + 144, &v180);
  v40 = *(a1 + 144);
  OUTLINED_FUNCTION_521(a2 + 144, &v179);
  if ((sub_1B8D6123C(v40, *(a2 + 144)) & 1) == 0)
  {
    goto LABEL_110;
  }

  v41 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating, &v178);
  sub_1B8EC39EC(a1 + v41, v17);
  v42 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating, &v177);
  v43 = *(v8 + 48);
  v44 = v118;
  sub_1B8EC39EC(v17, v118);
  sub_1B8EC39EC(a2 + v42, &v44[v43]);
  OUTLINED_FUNCTION_178(v44, 1, v4);
  if (!v20)
  {
    sub_1B8EC39EC(v44, v15);
    OUTLINED_FUNCTION_178(&v44[v43], 1, v4);
    if (!v45)
    {
      sub_1B8EC3A5C(&v44[v43], v7);
      v49 = *v15 == *v7 && v15[1] == *(v7 + 8);
      if (v49 || (sub_1B964C9F0() & 1) != 0)
      {
        v50 = v15[2] == *(v7 + 16) && v15[3] == *(v7 + 24);
        if (v50 || (sub_1B964C9F0() & 1) != 0)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_29_9();
          sub_1B8CD20F0(v51, v52, MEMORY[0x1E69AAC10]);
          v53 = sub_1B964C850();
          sub_1B8EC3B94(v7);
          v7 = &qword_1B9663800;
          sub_1B8D9207C(v17, &qword_1EBABD6A0, &qword_1B9663800);
          sub_1B8EC3B94(v15);
          sub_1B8D9207C(v44, &qword_1EBABD6A0, &qword_1B9663800);
          if ((v53 & 1) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_51;
        }
      }

      sub_1B8EC3B94(v7);
      sub_1B8D9207C(v17, &qword_1EBABD6A0, &qword_1B9663800);
      sub_1B8EC3B94(v15);
      v48 = v44;
      v46 = &qword_1EBABD6A0;
      v47 = &qword_1B9663800;
LABEL_39:
      sub_1B8D9207C(v48, v46, v47);
      goto LABEL_110;
    }

    sub_1B8D9207C(v17, &qword_1EBABD6A0, &qword_1B9663800);
    sub_1B8EC3B94(v15);
LABEL_38:
    v46 = &qword_1EBABD6F8;
    v47 = &unk_1B9663A40;
    v48 = v44;
    goto LABEL_39;
  }

  sub_1B8D9207C(v17, &qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_178(&v44[v43], 1, v4);
  if (!v20)
  {
    goto LABEL_38;
  }

  sub_1B8D9207C(v44, &qword_1EBABD6A0, &qword_1B9663800);
LABEL_51:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers, &v176);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers, &v175);
  OUTLINED_FUNCTION_56_3();

  v54 = OUTLINED_FUNCTION_696();
  sub_1B8D89F5C(v54, v55);
  OUTLINED_FUNCTION_54_5();

  if (v7)
  {
    OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews, &v174);
    OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews, &v173);
    OUTLINED_FUNCTION_56_3();

    v56 = OUTLINED_FUNCTION_696();
    sub_1B8D8A158(v56, v57);
    OUTLINED_FUNCTION_54_5();

    OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter, &v172);
    OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter, &v171);
    OUTLINED_FUNCTION_61_2();
    if (v20)
    {
      OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount, &v170);
      OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount, &v169);
      OUTLINED_FUNCTION_61_2();
      if (v20)
      {
        OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh, &v168);
        OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh, &v167);
        OUTLINED_FUNCTION_43_4();
        if (v20)
        {
          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount, &v166);
          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount, &v165);
          OUTLINED_FUNCTION_61_2();
          if (v20)
          {
            v59 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL;
            v60 = OUTLINED_FUNCTION_79_1(v58, &v164);
            v61 = *(v59 + 8);
            v62 = a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL;
            OUTLINED_FUNCTION_30_11(v60, &v163);
            OUTLINED_FUNCTION_54_4();
            v64 = v20 && v61 == v63;
            if (v64 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
            {
              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters, &v162);
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters, &v161);
              OUTLINED_FUNCTION_56_3();

              v65 = OUTLINED_FUNCTION_696();
              sub_1B8D8A338(v65, v66);
              OUTLINED_FUNCTION_54_5();

              if (v62)
              {
                v68 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID;
                v69 = OUTLINED_FUNCTION_79_1(v67, &v160);
                v70 = *(v68 + 8);
                OUTLINED_FUNCTION_30_11(v69, &v159);
                OUTLINED_FUNCTION_54_4();
                v73 = v20 && v70 == v72;
                if (v73 || (OUTLINED_FUNCTION_696(), v71 = sub_1B964C9F0(), (v71 & 1) != 0))
                {
                  v74 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName;
                  v75 = OUTLINED_FUNCTION_79_1(v71, &v158);
                  v76 = *(v74 + 8);
                  v77 = a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName;
                  OUTLINED_FUNCTION_30_11(v75, &v157);
                  OUTLINED_FUNCTION_54_4();
                  v79 = v20 && v76 == v78;
                  if (v79 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                  {
                    OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings, &v156);
                    OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings, &v155);
                    OUTLINED_FUNCTION_61_2();
                    if (v20)
                    {
                      OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt, &v154);
                      OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt, &v153);
                      OUTLINED_FUNCTION_56_3();

                      v80 = OUTLINED_FUNCTION_696();
                      sub_1B8D748B8(v80, v81);
                      OUTLINED_FUNCTION_54_5();

                      if (v77)
                      {
                        OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes, &v152);
                        OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes, &v151);
                        OUTLINED_FUNCTION_43_4();
                        if (v20)
                        {
                          v83 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID;
                          v84 = OUTLINED_FUNCTION_79_1(v82, &v150);
                          v85 = *(v83 + 8);
                          OUTLINED_FUNCTION_30_11(v84, &v149);
                          OUTLINED_FUNCTION_54_4();
                          v88 = v20 && v85 == v87;
                          if (v88 || (OUTLINED_FUNCTION_696(), v86 = sub_1B964C9F0(), (v86 & 1) != 0))
                          {
                            v89 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID;
                            v90 = OUTLINED_FUNCTION_79_1(v86, &v148);
                            v91 = *(v89 + 8);
                            v92 = a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID;
                            OUTLINED_FUNCTION_30_11(v90, &v147);
                            OUTLINED_FUNCTION_54_4();
                            v94 = v20 && v91 == v93;
                            if (v94 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                            {
                              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors, &v146);
                              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors, &v145);
                              if (OUTLINED_FUNCTION_58_2())
                              {
                                OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres, &v144);
                                OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres, &v143);
                                OUTLINED_FUNCTION_56_3();

                                v95 = OUTLINED_FUNCTION_696();
                                sub_1B8D8A38C(v95, v96);
                                OUTLINED_FUNCTION_54_5();

                                if (v92)
                                {
                                  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames, &v142);
                                  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames, &v141);
                                  v97 = OUTLINED_FUNCTION_58_2();
                                  if (v97)
                                  {
                                    v98 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID;
                                    v99 = OUTLINED_FUNCTION_79_1(v97, &v140);
                                    v100 = *(v98 + 8);
                                    v101 = a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID;
                                    OUTLINED_FUNCTION_30_11(v99, &v139);
                                    OUTLINED_FUNCTION_54_4();
                                    v103 = v20 && v100 == v102;
                                    if (v103 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                    {
                                      OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers, &v138);
                                      OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers, &v137);
                                      if (OUTLINED_FUNCTION_58_2())
                                      {
                                        OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers, &v136);
                                        OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers, &v135);
                                        if (OUTLINED_FUNCTION_58_2())
                                        {
                                          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2, &v134);
                                          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2, &v133);
                                          OUTLINED_FUNCTION_56_3();

                                          v104 = OUTLINED_FUNCTION_696();
                                          sub_1B8D8A3CC(v104, v105);
                                          OUTLINED_FUNCTION_54_5();

                                          if (v101)
                                          {
                                            OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew, &v132);
                                            OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew, &v131);
                                            OUTLINED_FUNCTION_56_3();

                                            v106 = OUTLINED_FUNCTION_696();
                                            sub_1B8D8A5D4(v106, v107);
                                            OUTLINED_FUNCTION_54_5();

                                            OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost, &v130);
                                            OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost, &v129);
                                            OUTLINED_FUNCTION_43_4();
                                            if (v20)
                                            {
                                              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens, &v128);
                                              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens, &v127);
                                              if (OUTLINED_FUNCTION_58_2())
                                              {
                                                OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier, &v126);
                                                OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier, &v125);
                                                OUTLINED_FUNCTION_43_4();
                                                if (v20)
                                                {
                                                  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm, &v124);
                                                  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm, &v123);
                                                  OUTLINED_FUNCTION_43_4();
                                                  if (v20)
                                                  {
                                                    OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo, &v122);
                                                    OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo, &v121);
                                                    OUTLINED_FUNCTION_43_4();
                                                    if (v20)
                                                    {
                                                      v110 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID;
                                                      v111 = OUTLINED_FUNCTION_79_1(v108, &v120);
                                                      v112 = *(v110 + 8);
                                                      OUTLINED_FUNCTION_30_11(v111, &v119);
                                                      OUTLINED_FUNCTION_54_4();
                                                      if (v20 && v112 == v113)
                                                      {
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_696();
                                                        v115 = sub_1B964C9F0();

                                                        if ((v115 & 1) == 0)
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      return 1;
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
            }
          }
        }
      }
    }
  }

LABEL_110:

  return 0;
}

uint64_t sub_1B8EC39EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC3A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Moviespb_ContentRating(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC3AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC3B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Moviespb_ContentRating(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC3B94(uint64_t a1)
{
  v2 = type metadata accessor for Moviespb_ContentRating(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Snippetpb_MoviesSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_MoviesSnippet(0);
  sub_1B8CD20F0(&qword_1EBABD6C8, type metadata accessor for Snippetpb_MoviesSnippet, protocol conformance descriptor for Snippetpb_MoviesSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EC3CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD20F0(&qword_1EBABD6E0, type metadata accessor for Snippetpb_MoviesSnippet, protocol conformance descriptor for Snippetpb_MoviesSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EC3D54(uint64_t a1)
{
  v2 = sub_1B8CD20F0(&qword_1EBABAFD8, type metadata accessor for Snippetpb_MoviesSnippet, protocol conformance descriptor for Snippetpb_MoviesSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EC3DC4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD20F0(&qword_1EBABAFD8, type metadata accessor for Snippetpb_MoviesSnippet, protocol conformance descriptor for Snippetpb_MoviesSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EC3F8C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Snippetpb_MoviesSnippet._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8EC4018(uint64_t a1)
{
  sub_1B8EC413C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B8EC413C(uint64_t a1)
{
  if (!qword_1ED9CD200)
  {
    type metadata accessor for Moviespb_ContentRating(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9CD200);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Snippetpb_MoviesSnippet(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Snippetpb_MoviesSnippet(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Snippetpb_MoviesSnippet(0);
}

uint64_t OUTLINED_FUNCTION_6_7()
{
  type metadata accessor for Snippetpb_MoviesSnippet._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_16()
{
  type metadata accessor for Snippetpb_MoviesSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  type metadata accessor for Snippetpb_MoviesSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  type metadata accessor for Snippetpb_MoviesSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  type metadata accessor for Snippetpb_MoviesSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_30_11(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_5()
{
}

uint64_t OUTLINED_FUNCTION_56_3()
{
}

uint64_t OUTLINED_FUNCTION_58_2()
{
  v4 = *(v1 + v2);

  return sub_1B8D6123C(v0, v4);
}

uint64_t Snippetpb_ShoppingSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v2;
  type metadata accessor for Snippetpb_ShoppingSnippet(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t type metadata accessor for Snippetpb_ShoppingSnippet(uint64_t a1)
{
  result = qword_1ED9CCC08;
  if (!qword_1ED9CCC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Snippetpb_ShoppingSnippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD740, &qword_1B9663A58);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v17 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v18 = *(type metadata accessor for Snippetpb_ShoppingSnippet(0) + 56);
  v19 = *(v12 + 48);
  sub_1B8EC47E4(a1 + v18, v15);
  sub_1B8EC47E4(a2 + v18, &v15[v19]);
  OUTLINED_FUNCTION_178(v15, 1, v4);
  if (v16)
  {
    OUTLINED_FUNCTION_178(&v15[v19], 1, v4);
    if (v16)
    {
      sub_1B8D9207C(v15, &qword_1EBABD738, &qword_1B9663A50);
      goto LABEL_21;
    }

LABEL_19:
    sub_1B8D9207C(v15, &qword_1EBABD740, &qword_1B9663A58);
LABEL_29:
    v27 = 0;
    return v27 & 1;
  }

  sub_1B8EC47E4(v15, v11);
  OUTLINED_FUNCTION_178(&v15[v19], 1, v4);
  if (v20)
  {
    sub_1B8EC6578(v11);
    goto LABEL_19;
  }

  sub_1B8EC65D4(&v15[v19], v7);
  static Argos_Protos_Productdatapb_Product.== infix(_:_:)();
  v22 = v21;
  sub_1B8EC6578(v7);
  sub_1B8EC6578(v11);
  sub_1B8D9207C(v15, &qword_1EBABD738, &qword_1B9663A50);
  if ((v22 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_29;
  }

  if (*(a1 + 33) != *(a2 + 33))
  {
    goto LABEL_29;
  }

  if (!sub_1B8D92198(*(a1 + 40), *(a1 + 48), *(a2 + 40)))
  {
    goto LABEL_29;
  }

  sub_1B8D719A4(*(a1 + 56), *(a2 + 56));
  if ((v23 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1B8D719A4(*(a1 + 64), *(a2 + 64));
  if ((v24 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1B8D719A4(*(a1 + 72), *(a2 + 72));
  if ((v25 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1B8D719A4(*(a1 + 80), *(a2 + 80));
  if ((v26 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1B964C2B0();
  sub_1B8CD2138(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v27 = sub_1B964C850();
  return v27 & 1;
}

uint64_t sub_1B8EC47E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Snippetpb_ShoppingSnippet.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Snippetpb_ShoppingSnippet.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.webURL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Snippetpb_ShoppingSnippet.webURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.product.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Snippetpb_ShoppingSnippet(0);
  sub_1B8EC47E4(v1 + *(v7 + 56), v6);
  v8 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (!v9)
  {
    return sub_1B8EC65D4(v6, a1);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  result = OUTLINED_FUNCTION_178(v6, 1, v8);
  if (!v9)
  {
    return sub_1B8D9207C(v6, &qword_1EBABD738, &qword_1B9663A50);
  }

  return result;
}

uint64_t sub_1B8EC4A84(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8EC6638(a1, v4);
  return Snippetpb_ShoppingSnippet.product.setter(v4);
}

uint64_t Snippetpb_ShoppingSnippet.product.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippetpb_ShoppingSnippet(0) + 56);
  sub_1B8D9207C(v1 + v3, &qword_1EBABD738, &qword_1B9663A50);
  sub_1B8EC65D4(a1, v1 + v3);
  v4 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Snippetpb_ShoppingSnippet.product.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Snippetpb_ShoppingSnippet(0) + 56);
  *(v3 + 10) = v11;
  sub_1B8EC47E4(v1 + v11, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v10[1] = 0;
    v10[2] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBABD738, &qword_1B9663A50);
    }
  }

  else
  {
    sub_1B8EC65D4(v6, v10);
  }

  return sub_1B8EC4D10;
}

void sub_1B8EC4D10(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B8EC6638((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBABD738, &qword_1B9663A50);
    sub_1B8EC65D4(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B8EC6578(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBABD738, &qword_1B9663A50);
    sub_1B8EC65D4(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Snippetpb_ShoppingSnippet.hasProduct.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for Snippetpb_ShoppingSnippet(0);
  sub_1B8EC47E4(v0 + *(v5 + 56), v4);
  v6 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_178(v4, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_1B8D9207C(v4, &qword_1EBABD738, &qword_1B9663A50);
  return v8;
}

Swift::Void __swiftcall Snippetpb_ShoppingSnippet.clearProduct()()
{
  v1 = type metadata accessor for Snippetpb_ShoppingSnippet(0);
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBABD738, &qword_1B9663A50);
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Snippetpb_ShoppingSnippet.renderType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Snippetpb_ShoppingSnippet.renderType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.productReviews.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.availableAt.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.relatedProducts.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.productRatings.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_ShoppingSnippet(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Snippetpb_ShoppingSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippetpb_ShoppingSnippet(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

unint64_t Snippetpb_ShoppingSnippet.RENDER_TYPE.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8EC527C@<X0>(uint64_t *a1@<X8>)
{
  result = Snippetpb_ShoppingSnippet.RENDER_TYPE.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EC52B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EC669C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Snippetpb_ShoppingSnippet.RENDER_TYPE.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABD700 = a1;
}

uint64_t sub_1B8EC53F8@<X0>(uint64_t *a1@<X8>)
{
  result = static Snippetpb_ShoppingSnippet.RENDER_TYPE.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EC543C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD708);
  __swift_project_value_buffer(v0, qword_1EBABD708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 3;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 1;
  *v8 = "web_url";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "product";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "is_detail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 9;
  *v14 = "is_hero";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "render_type";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "product_reviews";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "available_at";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "related_products";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "product_ratings";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Snippetpb_ShoppingSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        sub_1B964C530();
        break;
      case 2:
        v18 = OUTLINED_FUNCTION_9();
        sub_1B8EC592C(v18, v19, v20, v21);
        break;
      case 4:
      case 9:
        sub_1B964C400();
        break;
      case 5:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B8EC59E0(v6, v7, v8, v9);
        break;
      case 6:
        v22 = OUTLINED_FUNCTION_9();
        sub_1B8EC5A80(v22, v23, v24, v25);
        break;
      case 7:
        v26 = OUTLINED_FUNCTION_9();
        sub_1B8EC5B20(v26, v27, v28, v29);
        break;
      case 8:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B8EC5BC0(v14, v15, v16, v17);
        break;
      case 10:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B8EC5C60(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EC592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Snippetpb_ShoppingSnippet(0);
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C580();
}

uint64_t sub_1B8EC59E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C570();
}

uint64_t sub_1B8EC5A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C570();
}

uint64_t sub_1B8EC5B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C570();
}

uint64_t sub_1B8EC5BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C570();
}

uint64_t Snippetpb_ShoppingSnippet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v13 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
  {
    v29 = type metadata accessor for Snippetpb_ShoppingSnippet(0);
    sub_1B8EC47E4(v3 + *(v29 + 56), v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1B8D9207C(v8, &qword_1EBABD738, &qword_1B9663A50);
    }

    else
    {
      sub_1B8EC65D4(v8, v12);
      OUTLINED_FUNCTION_0_28();
      sub_1B8CD2138(v15, v16, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);
      OUTLINED_FUNCTION_1_25();
      sub_1B964C740();
      result = sub_1B8EC6578(v12);
      if (v4)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v17 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
    {
      if (*(v3 + 32) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v4))
      {
        if (!*(*(v3 + 56) + 16) || (OUTLINED_FUNCTION_0_28(), sub_1B8CD2138(v18, v19, protocol conformance descriptor for Argos_Protos_Productdatapb_Product), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_1_25(), result = sub_1B964C730(), !v4))
        {
          if (!*(*(v3 + 64) + 16) || (OUTLINED_FUNCTION_0_28(), sub_1B8CD2138(v20, v21, protocol conformance descriptor for Argos_Protos_Productdatapb_Product), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_1_25(), result = sub_1B964C730(), !v4))
          {
            if (!*(*(v3 + 72) + 16) || (OUTLINED_FUNCTION_0_28(), sub_1B8CD2138(v22, v23, protocol conformance descriptor for Argos_Protos_Productdatapb_Product), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_1_25(), result = sub_1B964C730(), !v4))
            {
              if (!*(*(v3 + 80) + 16) || (OUTLINED_FUNCTION_0_28(), sub_1B8CD2138(v24, v25, protocol conformance descriptor for Argos_Protos_Productdatapb_Product), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_1_25(), result = sub_1B964C730(), !v4))
              {
                if (*(v3 + 33) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v4))
                {
                  if (!*(v3 + 40))
                  {
                    return sub_1B964C290();
                  }

                  v26 = *(v3 + 48);
                  v27 = *(v3 + 40);
                  v28 = v26;
                  sub_1B8EC669C();
                  OUTLINED_FUNCTION_79_0();
                  result = sub_1B964C680();
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

uint64_t Snippetpb_ShoppingSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_ShoppingSnippet(0);
  sub_1B8CD2138(&qword_1EBABD750, type metadata accessor for Snippetpb_ShoppingSnippet, protocol conformance descriptor for Snippetpb_ShoppingSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EC6164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2138(&qword_1EBABD790, type metadata accessor for Snippetpb_ShoppingSnippet, protocol conformance descriptor for Snippetpb_ShoppingSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EC61E4(uint64_t a1)
{
  v2 = sub_1B8CD2138(&qword_1EBABAFB0, type metadata accessor for Snippetpb_ShoppingSnippet, protocol conformance descriptor for Snippetpb_ShoppingSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EC6254(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2138(&qword_1EBABAFB0, type metadata accessor for Snippetpb_ShoppingSnippet, protocol conformance descriptor for Snippetpb_ShoppingSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EC62D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD720);
  __swift_project_value_buffer(v0, qword_1EBABD720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DETAIL";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HERO";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SIMILAR_IMAGES";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SIMILAR_PRODUCTS";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EC6578(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8EC65D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC6638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8EC669C()
{
  result = qword_1EBABD748;
  if (!qword_1EBABD748)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Snippetpb_ShoppingSnippet.RENDER_TYPE, &type metadata for Snippetpb_ShoppingSnippet.RENDER_TYPE, v0, v1);
    atomic_store(result, &qword_1EBABD748);
  }

  return result;
}

unint64_t sub_1B8EC66F4()
{
  result = qword_1EBABD758;
  if (!qword_1EBABD758)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Snippetpb_ShoppingSnippet.RENDER_TYPE, &type metadata for Snippetpb_ShoppingSnippet.RENDER_TYPE, v0, v1);
    atomic_store(result, &qword_1EBABD758);
  }

  return result;
}

unint64_t sub_1B8EC674C()
{
  result = qword_1EBABD760;
  if (!qword_1EBABD760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Snippetpb_ShoppingSnippet.RENDER_TYPE, &type metadata for Snippetpb_ShoppingSnippet.RENDER_TYPE, v0, v1);
    atomic_store(result, &qword_1EBABD760);
  }

  return result;
}

unint64_t sub_1B8EC67A4()
{
  result = qword_1EBABD768;
  if (!qword_1EBABD768)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Snippetpb_ShoppingSnippet.RENDER_TYPE, &type metadata for Snippetpb_ShoppingSnippet.RENDER_TYPE, v0, v1);
    atomic_store(result, &qword_1EBABD768);
  }

  return result;
}

unint64_t sub_1B8EC67FC()
{
  result = qword_1EBABD770;
  if (!qword_1EBABD770)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABD778, &qword_1B9663B48);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBABD770);
  }

  return result;
}

void sub_1B8EC69A8(uint64_t a1)
{
  sub_1B8EC6AAC(319, &qword_1EBABA208, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B8EC6AAC(319, &qword_1ED9CA900, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8EC6AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Argos_Protos_Productdatapb_Product(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t Snippetpb_TvShowSnippet.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  if (qword_1EBAB6580 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABD7B0;
}

uint64_t static Snippetpb_TvShowSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_4_18();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B8ECE508(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_10_11();
  sub_1B8CD2180(v6, v7, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_TvShowSnippet.id.getter()
{
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_TvShowSnippet.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_17_9();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ECB0BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC6E04()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_TvShowSnippet.id.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_11();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8ECB0BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_TvShowSnippet.canonicalID.getter()
{
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_TvShowSnippet.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_17_9();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ECB0BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC6FE8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_TvShowSnippet.canonicalID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_11();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8ECB0BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_TvShowSnippet.title.getter()
{
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 48, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_TvShowSnippet.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_17_9();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ECB0BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC71CC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_TvShowSnippet.title.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_11();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8ECB0BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_TvShowSnippet.description_p.getter()
{
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_TvShowSnippet.description_p.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_17_9();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ECB0BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC73B0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_TvShowSnippet.description_p.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_11();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8ECB0BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_TvShowSnippet.contentRating.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-v4 - 8];
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_521(*(v1 + v6) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Tvpb_ContentRating(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v5, &qword_1EBABD7B8, &qword_1B9663DA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_16();
    return sub_1B8ECF854();
  }

  return result;
}

uint64_t Snippetpb_TvShowSnippet.contentRating.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_17_9() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8ECB0BC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_3_16();
  sub_1B8ECF854();
  v5 = type metadata accessor for Tvpb_ContentRating(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_TvShowSnippet.contentRating.modify()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Tvpb_ContentRating(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_521(*(v0 + v10) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating, v2);
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    OUTLINED_FUNCTION_114_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v1, &qword_1EBABD7B8, &qword_1B9663DA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_246();
    sub_1B8ECF854();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.thumbnail.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.genres.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EC79C4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_29_10(v1);
}

void sub_1B8EC7A34()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.availabilities.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.actors.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EC7BF4(void *a1)
{
  OUTLINED_FUNCTION_4_18();
  v4 = (*(v1 + v3) + *a1);
  v5 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v5, v6);
  v7 = *v4;

  return v7;
}

void sub_1B8EC7C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_16();
  v28 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v31 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B8ECB0BC(v31);
    *(v27 + v28) = v30;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_18(v32, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.premieredNetwork.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.premiereDate.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.finaleDate.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.commonSense.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-v4 - 8];
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_521(*(v1 + v6) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Tvpb_CommonSense(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v5, &qword_1EBABD7C0, &qword_1B9663DA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
    return sub_1B8ECF854();
  }

  return result;
}

uint64_t sub_1B8EC8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  sub_1B8ECF8AC();
  return a7(v7);
}

uint64_t Snippetpb_TvShowSnippet.commonSense.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_17_9() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8ECB0BC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_9_12();
  sub_1B8ECF854();
  v5 = type metadata accessor for Tvpb_CommonSense(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_TvShowSnippet.commonSense.modify()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Tvpb_CommonSense(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_521(*(v0 + v10) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense, v2);
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    OUTLINED_FUNCTION_114_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v1, &qword_1EBABD7C0, &qword_1B9663DA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_246();
    sub_1B8ECF854();
  }

  return OUTLINED_FUNCTION_105_0();
}

BOOL sub_1B8EC8394(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13 - 8];
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_521(*(v5 + v15) + *a3, v20);
  sub_1B8D92024();
  v16 = a4(0);
  v17 = __swift_getEnumTagSinglePayload(v14, 1, v16) != 1;
  sub_1B8D9207C(v14, v6, v4);
  return v17;
}

void sub_1B8EC849C()
{
  OUTLINED_FUNCTION_243();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  v8 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v0 + v8) = sub_1B8ECB0BC(v9);
  }

  v10 = v3(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Snippetpb_TvShowSnippet.appleOriginal.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.runtimeInMinutes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_17(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.children.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5 - 8];
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent, v12);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Tvpb_Parent(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    *(a1 + 40) = v9;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v6, &qword_1EBABD7C8, &qword_1B9663DB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_15();
    return sub_1B8ECF854();
  }

  return result;
}

uint64_t Snippetpb_TvShowSnippet.parent.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_17_9() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8ECB0BC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_11_15();
  sub_1B8ECF854();
  v5 = type metadata accessor for Tvpb_Parent(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_TvShowSnippet.parent.modify()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Tvpb_Parent(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_521(*(v0 + v11) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent, v2);
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_114_0();
    v10[4] = 0;
    v10[5] = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v1, &qword_1EBABD7C8, &qword_1B9663DB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_246();
    sub_1B8ECF854();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC8AD8()
{
  OUTLINED_FUNCTION_243();
  v3 = v1;
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 32);
  if (v7)
  {
    v8 = v2;
    sub_1B8ECF8AC();
    v3(v4);
    sub_1B8ECF904(v5, v8);
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t sub_1B8EC8BEC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_29_10(v3);
  return *(v1 + a1);
}

void sub_1B8EC8C2C()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.seasonNumber.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_17(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC8D00()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 80);
  v5 = *(v0 + 84);
  v6 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8ECB0BC(v9);
    OUTLINED_FUNCTION_73_2(v10);
  }

  v11 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v11, v0 + v12);
  *(v8 + v2) = v4;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Snippetpb_TvShowSnippet.episodeNumber.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_17(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.type.getter@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_4_18();
  v5 = *(v2 + v4) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  result = OUTLINED_FUNCTION_521(v5, v8);
  v7 = *(v5 + 8);
  *a2 = *v5;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_1B8EC8E84@<X0>(uint64_t a2@<X8>)
{
  result = Snippetpb_TvShowSnippet.type.getter(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

void Snippetpb_TvShowSnippet.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ECB0BC(v8);
    *(v2 + v1) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  v10 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_18(v10, v11);
  *v9 = v4;
  v9[8] = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.type.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_4_18();
  *(v3 + 21) = v4;
  OUTLINED_FUNCTION_41();
  v5 = *(v1 + 8);
  v3[9] = *v1;
  *(v3 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC8FFC()
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
    OUTLINED_FUNCTION_12_11();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8ECB0BC(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  v12 = 48;
  if (v2)
  {
    v12 = 24;
  }

  v13 = v9 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  OUTLINED_FUNCTION_18(v13, v0 + v12);
  *v13 = v4;
  *(v13 + 8) = v7;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Snippetpb_TvShowSnippet.coverArt.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

float Snippetpb_TvShowSnippet.episodeNumberFloat.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_4_18();
  v3 = *(v1 + v2) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat;
  v4 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v4, v5);
  return *v3;
}

uint64_t Snippetpb_TvShowSnippet.episodeNumberFloat.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8ECB0BC(v7);
    *(v2 + v4) = v6;
  }

  v8 = (v6 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  v9 = OUTLINED_FUNCTION_173_0();
  result = OUTLINED_FUNCTION_18(v9, v10);
  *v8 = a1;
  return result;
}

uint64_t Snippetpb_TvShowSnippet.episodeNumberFloat.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_17(v3);
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC92A4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v5 = *(v4 + 80);
  v6 = *(v2 + 84);
  v7 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v2 + 84);
    v11 = *(v2 + 72);
    OUTLINED_FUNCTION_12_11();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (a2)
  {
    v13 = 24;
  }

  v14 = (v9 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  OUTLINED_FUNCTION_18(v14, v2 + v13);
  *v14 = v5;

  free(v2);
}

uint64_t Snippetpb_TvShowSnippet.wikiID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.imdbID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.rottenTomatoesURL.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.parentSeasonName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.localizedGenres.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.characterNames.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.siribaseID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.directors.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.trailersV2.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.castAndCrew.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EC9BAC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_29_10(v3);
  return *(v1 + a1);
}

void sub_1B8EC9BEC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.boost.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC9CBC()
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
    OUTLINED_FUNCTION_12_11();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8ECB0BC(v9);
    OUTLINED_FUNCTION_73_2(v10);
  }

  v11 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18(v11, v3 + v12);
  *(v8 + v1) = v6;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Snippetpb_TvShowSnippet.engTokens.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9E24()
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
      OUTLINED_FUNCTION_12_11();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8ECB0BC(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    v15 = *v8;
    OUTLINED_FUNCTION_59_3(v12 + v15);
    *(v12 + v15) = v4;
  }

  free(v0);
}

uint64_t Snippetpb_TvShowSnippet.isAnnTier.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.isIm.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.isStereo.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.kgInternalID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_29(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ECA148()
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
      OUTLINED_FUNCTION_12_11();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8ECB0BC(v13);
      OUTLINED_FUNCTION_73_2(v14);
    }

    v15 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v15, v0 + 24);
    *v15 = v2;
    v15[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t Snippetpb_TvShowSnippet.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Snippetpb_TvShowSnippet.unknownFields.setter(uint64_t a1)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1B8ECA2F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD798);
  __swift_project_value_buffer(v0, qword_1EBABD798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1B9663D90;
  v4 = v82 + v3 + v1[14];
  *(v82 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v82 + v3 + v2 + v1[14];
  *(v82 + v3 + v2) = 2;
  *v8 = "canonical_id";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v82 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v82 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v82 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "content_rating";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v82 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v82 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "genres";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v82 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "availabilities";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v82 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "actors";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v82 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "premiered_network";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v7();
  v25 = (v82 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "premiere_date";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v82 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "finale_date";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v82 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "common_sense";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v7();
  v31 = (v82 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "apple_original";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v82 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "runtime_in_minutes";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  v35 = (v82 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "children";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v7();
  v37 = (v82 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "parent";
  *(v38 + 1) = 6;
  v38[16] = 2;
  v7();
  v39 = (v82 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "season_number";
  *(v40 + 1) = 13;
  v40[16] = 2;
  v7();
  v41 = (v82 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 20;
  *v42 = "episode_number";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v7();
  v43 = (v82 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 21;
  *v44 = "type";
  *(v44 + 1) = 4;
  v44[16] = 2;
  v7();
  v45 = (v82 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 22;
  *v46 = "cover_art";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v7();
  v47 = (v82 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 23;
  *v48 = "episode_number_float";
  *(v48 + 1) = 20;
  v48[16] = 2;
  v7();
  v49 = (v82 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 24;
  *v50 = "wiki_id";
  *(v50 + 1) = 7;
  v50[16] = 2;
  v7();
  v51 = (v82 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 25;
  *v52 = "imdb_id";
  *(v52 + 1) = 7;
  v52[16] = 2;
  v7();
  v53 = (v82 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 26;
  *v54 = "rotten_tomatoes_url";
  *(v54 + 1) = 19;
  v54[16] = 2;
  v7();
  v55 = (v82 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 27;
  *v56 = "parent_season_name";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v7();
  v57 = (v82 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 28;
  *v58 = "localized_genres";
  *(v58 + 1) = 16;
  v58[16] = 2;
  v7();
  v59 = (v82 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 29;
  *v60 = "character_names";
  *(v60 + 1) = 15;
  v60[16] = 2;
  v7();
  v61 = (v82 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 30;
  *v62 = "siribase_id";
  *(v62 + 1) = 11;
  v62[16] = 2;
  v7();
  v63 = (v82 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 31;
  *v64 = "directors";
  *(v64 + 1) = 9;
  v64[16] = 2;
  v7();
  v65 = (v82 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 32;
  *v66 = "trailers_v2";
  *(v66 + 1) = 11;
  v66[16] = 2;
  v7();
  v67 = (v82 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 33;
  *v68 = "cast_and_crew";
  *(v68 + 1) = 13;
  v68[16] = 2;
  v7();
  v69 = (v82 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "boost";
  *(v70 + 1) = 5;
  v70[16] = 2;
  v7();
  v71 = (v82 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "engTokens";
  *(v72 + 1) = 9;
  v72[16] = 2;
  v7();
  v73 = (v82 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "is_ann_tier";
  *(v74 + 1) = 11;
  v74[16] = 2;
  v7();
  v75 = (v82 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "is_im";
  *(v76 + 1) = 5;
  v76[16] = 2;
  v7();
  v77 = (v82 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "is_stereo";
  *(v78 + 1) = 9;
  v78[16] = 2;
  v7();
  v79 = (v82 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "kg_internal_id";
  *(v80 + 1) = 14;
  v80[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Snippetpb_TvShowSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6578 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD798);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1B8ECAE2C()
{
  OUTLINED_FUNCTION_12_11();
  result = sub_1B8ECAE5C();
  qword_1EBABD7B0 = result;
  return result;
}

void *sub_1B8ECAE5C()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating;
  v2 = type metadata accessor for Tvpb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors) = v4;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense;
  v9 = type metadata accessor for Tvpb_CommonSense(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children) = v4;
  v10 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent;
  v11 = type metadata accessor for Tvpb_Parent(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber) = 0;
  v12 = v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  *v12 = 0;
  v12[8] = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat) = 0;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0]) = v4;
  v17 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0]) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0]) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo) = 0;
  v18 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  return v0;
}

void *sub_1B8ECB0BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v149 = v131 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = v131 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v131[2] = v131 - v8;
  v1[2] = 0;
  v1[4] = 0;
  v1[3] = 0xE000000000000000;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v131[0] = v1 + 8;
  v1[9] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating;
  v131[1] = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating;
  v10 = type metadata accessor for Tvpb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v132 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres) = MEMORY[0x1E69E7CC0];
  v133 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities) = v12;
  v134 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors) = v12;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  v135 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  v136 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  v137 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense;
  v138 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense;
  v17 = type metadata accessor for Tvpb_CommonSense(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v139 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal) = 0;
  v140 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes) = 0;
  v141 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children) = v12;
  v18 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent;
  v19 = type metadata accessor for Tvpb_Parent(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v143 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber) = 0;
  v144 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber) = 0;
  v20 = v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  v145 = v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  *v20 = 0;
  v20[8] = 1;
  v146 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt) = v12;
  v147 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat) = 0;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  v148 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  v150 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  v151 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  v152 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v153 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres) = v12;
  v154 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0]) = v12;
  v25 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  v155 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v156 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0]) = v12;
  v157 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2) = v12;
  v158 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew) = v12;
  v159 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost) = 0;
  v160 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0]) = v12;
  v161 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier) = 0;
  v162 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm) = 0;
  v163 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo) = 0;
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  v164 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  swift_beginAccess();
  v28 = a1[2];
  v27 = a1[3];
  swift_beginAccess();
  v1[2] = v28;
  v1[3] = v27;
  swift_beginAccess();
  v30 = a1[4];
  v29 = a1[5];
  swift_beginAccess();
  v1[4] = v30;
  v1[5] = v29;

  swift_beginAccess();
  v32 = a1[6];
  v31 = a1[7];
  swift_beginAccess();
  v1[6] = v32;
  v1[7] = v31;

  swift_beginAccess();
  v34 = a1[8];
  v33 = a1[9];
  v35 = v131[0];
  swift_beginAccess();
  *v35 = v34;
  v1[9] = v33;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v36 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  swift_beginAccess();
  v38 = *v36;
  v37 = v36[1];
  swift_beginAccess();
  *v11 = v38;
  v11[1] = v37;

  v39 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = v132;
  swift_beginAccess();
  *(v1 + v41) = v40;

  v42 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities;
  swift_beginAccess();
  v43 = *(a1 + v42);
  v44 = v133;
  swift_beginAccess();
  *(v1 + v44) = v43;

  v45 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = v134;
  swift_beginAccess();
  *(v1 + v47) = v46;

  v48 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  v51 = v135;
  swift_beginAccess();
  *v51 = v50;
  v51[1] = v49;

  v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  v55 = v136;
  swift_beginAccess();
  *v55 = v54;
  v55[1] = v53;

  v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  v59 = v137;
  swift_beginAccess();
  *v59 = v58;
  v59[1] = v57;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v139;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  swift_beginAccess();
  LODWORD(v62) = *(a1 + v62);
  v63 = v140;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = v141;
  swift_beginAccess();
  *(v1 + v66) = v65;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v67 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  swift_beginAccess();
  LODWORD(v67) = *(a1 + v67);
  v68 = v143;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  swift_beginAccess();
  LODWORD(v69) = *(a1 + v69);
  v70 = v144;
  swift_beginAccess();
  *(v1 + v70) = v69;
  v71 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  swift_beginAccess();
  v72 = *v71;
  LOBYTE(v71) = v71[8];
  v73 = v145;
  swift_beginAccess();
  *v73 = v72;
  v73[8] = v71;
  v74 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt;
  swift_beginAccess();
  v75 = *(a1 + v74);
  v76 = v146;
  swift_beginAccess();
  *(v1 + v76) = v75;

  v77 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  swift_beginAccess();
  v78 = *v77;
  v79 = v147;
  swift_beginAccess();
  *v79 = v78;
  v80 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v148;
  swift_beginAccess();
  *v83 = v82;
  v83[1] = v81;

  v84 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  swift_beginAccess();
  v86 = *v84;
  v85 = v84[1];
  v87 = v150;
  swift_beginAccess();
  *v87 = v86;
  v87[1] = v85;

  v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  swift_beginAccess();
  v90 = *v88;
  v89 = v88[1];
  v91 = v151;
  swift_beginAccess();
  *v91 = v90;
  v91[1] = v89;

  v92 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];
  v95 = v152;
  swift_beginAccess();
  *v95 = v94;
  v95[1] = v93;

  v96 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres;
  swift_beginAccess();
  v97 = *(a1 + v96);
  v98 = v153;
  swift_beginAccess();
  *(v1 + v98) = v97;

  v99 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  swift_beginAccess();
  v100 = *(v99 + a1);
  v101 = v154;
  swift_beginAccess();
  *(v101 + v1) = v100;

  v102 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  swift_beginAccess();
  v104 = *v102;
  v103 = v102[1];
  v105 = v155;
  swift_beginAccess();
  *v105 = v104;
  v105[1] = v103;

  v106 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  swift_beginAccess();
  v107 = *(v106 + a1);
  v108 = v156;
  swift_beginAccess();
  *(v108 + v1) = v107;

  v109 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2;
  swift_beginAccess();
  v110 = *(a1 + v109);
  v111 = v157;
  swift_beginAccess();
  *(v1 + v111) = v110;

  v112 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew;
  swift_beginAccess();
  v113 = *(a1 + v112);
  v114 = v158;
  swift_beginAccess();
  *(v1 + v114) = v113;

  v115 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
  swift_beginAccess();
  LOBYTE(v115) = *(a1 + v115);
  v116 = v159;
  swift_beginAccess();
  *(v1 + v116) = v115;
  v117 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  swift_beginAccess();
  v118 = *(v117 + a1);
  v119 = v160;
  swift_beginAccess();
  *(v119 + v1) = v118;

  v120 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
  swift_beginAccess();
  LOBYTE(v120) = *(a1 + v120);
  v121 = v161;
  swift_beginAccess();
  *(v1 + v121) = v120;
  v122 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
  swift_beginAccess();
  LOBYTE(v122) = *(a1 + v122);
  v123 = v162;
  swift_beginAccess();
  *(v1 + v123) = v122;
  v124 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
  swift_beginAccess();
  LOBYTE(v124) = *(a1 + v124);
  v125 = v163;
  swift_beginAccess();
  *(v1 + v125) = v124;
  v126 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  swift_beginAccess();
  v128 = *v126;
  v127 = v126[1];

  v129 = v164;
  swift_beginAccess();
  *v129 = v128;
  v129[1] = v127;

  return v1;
}

void *sub_1B8ECC06C()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating, &qword_1EBABD7B8, &qword_1B9663DA0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense, &qword_1EBABD7C0, &qword_1B9663DA8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent, &qword_1EBABD7C8, &qword_1B9663DB0);

  return v0;
}

uint64_t sub_1B8ECC27C()
{
  v0 = sub_1B8ECC06C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Snippetpb_TvShowSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Snippetpb_TvShowSnippet._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8ECB0BC(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8ECC370(v10, a1, a2, a3);
}

uint64_t sub_1B8ECC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DC4778(a2, a1);
        continue;
      case 4:
        sub_1B8E16ACC(a2, a1);
        continue;
      case 5:
        sub_1B8ECC70C(a2, a1, a3, a4);
        continue;
      case 6:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail;
        goto LABEL_43;
      case 7:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
        goto LABEL_45;
      case 8:
        sub_1B8ECC7E8(a2, a1, a3, a4);
        continue;
      case 9:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
        goto LABEL_45;
      case 11:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork;
        goto LABEL_43;
      case 12:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate;
        goto LABEL_43;
      case 13:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate;
        goto LABEL_43;
      case 14:
        sub_1B8ECC8C4(a2, a1, a3, a4);
        continue;
      case 15:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
        goto LABEL_38;
      case 16:
        v15 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
        goto LABEL_32;
      case 17:
        sub_1B8ECC9A0(a2, a1, a3, a4);
        continue;
      case 18:
        sub_1B8ECCA7C(a2, a1, a3, a4);
        continue;
      case 19:
        v15 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
        goto LABEL_32;
      case 20:
        v15 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
LABEL_32:
        v16 = MEMORY[0x1E69AAC98];
        goto LABEL_33;
      case 21:
        sub_1B8ECCB58(a2, a1, a3, a4);
        continue;
      case 22:
        sub_1B8ECCBF4(a2, a1, a3, a4);
        continue;
      case 23:
        v15 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat;
        v16 = MEMORY[0x1E69AAC88];
LABEL_33:
        sub_1B8ECCCD0(a2, a1, a3, a4, v15, v16);
        continue;
      case 24:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID;
        goto LABEL_43;
      case 25:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID;
        goto LABEL_43;
      case 26:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL;
        goto LABEL_43;
      case 27:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName;
        goto LABEL_43;
      case 28:
        sub_1B8ECCD5C(a2, a1, a3, a4);
        continue;
      case 29:
        v14 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames;
        goto LABEL_45;
      case 30:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID;
        goto LABEL_43;
      case 31:
        v14 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors;
        goto LABEL_45;
      case 32:
        sub_1B8ECCE38(a2, a1, a3, a4);
        continue;
      case 33:
        sub_1B8ECCF14(a2, a1, a3, a4);
        continue;
      case 34:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
        goto LABEL_38;
      case 35:
        v14 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens;
LABEL_45:
        sub_1B8EC1984(a2, a1, a3, a4, v14, v11);
        continue;
      case 36:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
        goto LABEL_38;
      case 37:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
        goto LABEL_38;
      case 38:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
LABEL_38:
        sub_1B8EC19CC(a2, a1, a3, a4, v13, v11);
        break;
      case 39:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID;
LABEL_43:
        sub_1B8EC1A14(a2, a1, a3, a4, v12, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8ECC70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_ContentRating(0);
  sub_1B8CD2180(&qword_1EBABD848, type metadata accessor for Tvpb_ContentRating, protocol conformance descriptor for Tvpb_ContentRating);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ECC7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_TvAvailability(0);
  sub_1B8CD2180(&qword_1EBABD810, type metadata accessor for Tvpb_TvAvailability, protocol conformance descriptor for Tvpb_TvAvailability);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECC8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_CommonSense(0);
  sub_1B8CD2180(&qword_1EBABD840, type metadata accessor for Tvpb_CommonSense, protocol conformance descriptor for Tvpb_CommonSense);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ECC9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_Child(0);
  sub_1B8CD2180(&qword_1EBABD818, type metadata accessor for Tvpb_Child, protocol conformance descriptor for Tvpb_Child);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECCA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_Parent(0);
  sub_1B8CD2180(&qword_1EBABD838, type metadata accessor for Tvpb_Parent, protocol conformance descriptor for Tvpb_Parent);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ECCB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8ECFFBC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8ECCBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_CoverArt(0);
  sub_1B8CD2180(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt, protocol conformance descriptor for Tvpb_CoverArt);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECCCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v11 = a6(a2 + v10, a3, a4);
  return OUTLINED_FUNCTION_199_1(v11);
}

uint64_t sub_1B8ECCD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_Genre(0);
  sub_1B8CD2180(&qword_1EBABD830, type metadata accessor for Tvpb_Genre, protocol conformance descriptor for Tvpb_Genre);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECCE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_TrailerV2(0);
  sub_1B8CD2180(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2, protocol conformance descriptor for Tvpb_TrailerV2);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECCF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tvpb_CastAndCrew(0);
  sub_1B8CD2180(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew, protocol conformance descriptor for Tvpb_CastAndCrew);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t Snippetpb_TvShowSnippet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Snippetpb_TvShowSnippet(0);
  result = sub_1B8ECD05C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8ECD05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v126 = &v125 - v8;
  v127 = type metadata accessor for Tvpb_Parent(0);
  MEMORY[0x1EEE9AC00](v127);
  v10 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v129 = &v125 - v12;
  v130 = type metadata accessor for Tvpb_CommonSense(0);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v125 - v15;
  v17 = type metadata accessor for Tvpb_ContentRating(0);
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v134 = a1;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v22 = v134;
  swift_beginAccess();
  v23 = *(v22 + 32);
  v24 = *(v22 + 40);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v26 = v134;
  swift_beginAccess();
  v27 = *(v26 + 48);
  v28 = *(v26 + 56);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {

    sub_1B964C700();
    if (!v5)
    {

      goto LABEL_16;
    }
  }

LABEL_16:
  v30 = v134;
  swift_beginAccess();
  v31 = *(v30 + 64);
  v32 = *(v30 + 72);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v125 = v10;
  }

  else
  {
    v125 = v10;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1B8D9207C(v16, &qword_1EBABD7B8, &qword_1B9663DA0);
    v35 = v5;
  }

  else
  {
    v36 = v131;
    sub_1B8ECF854();
    sub_1B8CD2180(&qword_1EBABD848, type metadata accessor for Tvpb_ContentRating, protocol conformance descriptor for Tvpb_ContentRating);
    sub_1B964C740();
    v35 = v5;
    if (v5)
    {
      v37 = type metadata accessor for Tvpb_ContentRating;
      v38 = v36;
      return sub_1B8ECF904(v38, v37);
    }

    sub_1B8ECF904(v36, type metadata accessor for Tvpb_ContentRating);
  }

  v39 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v40 & 0xFFFFFFFFFFFFLL;
  }

  v43 = v125;
  if (v42)
  {

    sub_1B964C700();
    if (v35)
    {
    }
  }

  v44 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  v45 = v134;
  swift_beginAccess();
  if (*(*(v45 + v44) + 16))
  {

    sub_1B964C6E0();
    if (v35)
    {
    }
  }

  v46 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities;
  v47 = v134;
  swift_beginAccess();
  if (*(*(v47 + v46) + 16))
  {
    type metadata accessor for Tvpb_TvAvailability(0);
    sub_1B8CD2180(&qword_1EBABD810, type metadata accessor for Tvpb_TvAvailability, protocol conformance descriptor for Tvpb_TvAvailability);

    sub_1B964C730();
    if (v35)
    {
    }
  }

  v48 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  v49 = v134;
  swift_beginAccess();
  if (*(*(v49 + v48) + 16))
  {

    sub_1B964C6E0();
    if (v35)
    {
    }
  }

  v50 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v53)
  {

    sub_1B964C700();
    if (v35)
    {
    }
  }

  v54 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  v57 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v57 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (v57)
  {

    sub_1B964C700();
    if (!v35)
    {

      goto LABEL_54;
    }
  }

LABEL_54:
  v58 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  v61 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v61 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (v61)
  {

    sub_1B964C700();
    if (v35)
    {
    }
  }

  swift_beginAccess();
  v62 = v129;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v62, 1, v130) == 1)
  {
    sub_1B8D9207C(v62, &qword_1EBABD7C0, &qword_1B9663DA8);
    goto LABEL_65;
  }

  v63 = v128;
  sub_1B8ECF854();
  sub_1B8CD2180(&qword_1EBABD840, type metadata accessor for Tvpb_CommonSense, protocol conformance descriptor for Tvpb_CommonSense);
  sub_1B964C740();
  if (v35)
  {
    v37 = type metadata accessor for Tvpb_CommonSense;
    v38 = v63;
    return sub_1B8ECF904(v38, v37);
  }

  sub_1B8ECF904(v63, type metadata accessor for Tvpb_CommonSense);
LABEL_65:
  v64 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  v65 = v134;
  swift_beginAccess();
  if (*(v65 + v64) == 1)
  {
    result = sub_1B964C670();
    if (v35)
    {
      return result;
    }
  }

  v66 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  v67 = v134;
  swift_beginAccess();
  if (*(v67 + v66))
  {
    result = sub_1B964C6C0();
    if (v35)
    {
      return result;
    }
  }

  v68 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children;
  v69 = v134;
  swift_beginAccess();
  if (*(*(v69 + v68) + 16))
  {
    type metadata accessor for Tvpb_Child(0);
    sub_1B8CD2180(&qword_1EBABD818, type metadata accessor for Tvpb_Child, protocol conformance descriptor for Tvpb_Child);

    sub_1B964C730();
    if (v35)
    {
    }
  }

  swift_beginAccess();
  v70 = v126;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v70, 1, v127) == 1)
  {
    sub_1B8D9207C(v70, &qword_1EBABD7C8, &qword_1B9663DB0);
    goto LABEL_77;
  }

  sub_1B8ECF854();
  sub_1B8CD2180(&qword_1EBABD838, type metadata accessor for Tvpb_Parent, protocol conformance descriptor for Tvpb_Parent);
  sub_1B964C740();
  if (v35)
  {
    v37 = type metadata accessor for Tvpb_Parent;
    v38 = v43;
    return sub_1B8ECF904(v38, v37);
  }

  sub_1B8ECF904(v43, type metadata accessor for Tvpb_Parent);
LABEL_77:
  v71 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  v72 = v134;
  swift_beginAccess();
  if (*(v72 + v71))
  {
    result = sub_1B964C6C0();
    if (v35)
    {
      return result;
    }
  }

  v73 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  v74 = v134;
  swift_beginAccess();
  if (*(v74 + v73))
  {
    result = sub_1B964C6C0();
    if (v35)
    {
      return result;
    }
  }

  v75 = v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  swift_beginAccess();
  if (*v75)
  {
    v76 = *(v75 + 8);
    v132 = *v75;
    v133 = v76;
    sub_1B8ECFFBC();
    result = sub_1B964C680();
    v77 = v35;
    if (v35)
    {
      return result;
    }
  }

  else
  {
    v77 = v35;
  }

  v78 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt;
  v79 = v134;
  swift_beginAccess();
  if (*(*(v79 + v78) + 16))
  {
    type metadata accessor for Tvpb_CoverArt(0);
    sub_1B8CD2180(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt, protocol conformance descriptor for Tvpb_CoverArt);

    sub_1B964C730();
    if (v77)
    {
    }
  }

  v80 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  swift_beginAccess();
  if (*v80 != 0.0)
  {
    result = sub_1B964C6B0();
    if (v77)
    {
      return result;
    }
  }

  v81 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  swift_beginAccess();
  v82 = *v81;
  v83 = v81[1];
  v84 = HIBYTE(v83) & 0xF;
  if ((v83 & 0x2000000000000000) == 0)
  {
    v84 = v82 & 0xFFFFFFFFFFFFLL;
  }

  if (v84)
  {

    sub_1B964C700();
    if (v77)
    {
    }
  }

  v85 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  swift_beginAccess();
  v86 = *v85;
  v87 = v85[1];
  v88 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v88 = v86 & 0xFFFFFFFFFFFFLL;
  }

  if (v88)
  {

    sub_1B964C700();
    if (v77)
    {
    }
  }

  v89 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  swift_beginAccess();
  v90 = *v89;
  v91 = v89[1];
  v92 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v92 = v90 & 0xFFFFFFFFFFFFLL;
  }

  if (v92)
  {

    sub_1B964C700();
    if (v77)
    {
    }
  }

  v93 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  swift_beginAccess();
  v94 = *v93;
  v95 = v93[1];
  v96 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v96 = v94 & 0xFFFFFFFFFFFFLL;
  }

  if (v96)
  {

    sub_1B964C700();
    if (v77)
    {
    }
  }

  v97 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres;
  v98 = v134;
  swift_beginAccess();
  if (*(*(v98 + v97) + 16))
  {
    type metadata accessor for Tvpb_Genre(0);
    sub_1B8CD2180(&qword_1EBABD830, type metadata accessor for Tvpb_Genre, protocol conformance descriptor for Tvpb_Genre);

    sub_1B964C730();
    if (v77)
    {
    }
  }

  v99 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  v100 = v134;
  swift_beginAccess();
  if (*(*(v99 + v100) + 16))
  {

    sub_1B964C6E0();
    if (v77)
    {
    }
  }

  v101 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  swift_beginAccess();
  v102 = *v101;
  v103 = v101[1];
  v104 = HIBYTE(v103) & 0xF;
  if ((v103 & 0x2000000000000000) == 0)
  {
    v104 = v102 & 0xFFFFFFFFFFFFLL;
  }

  if (v104)
  {

    sub_1B964C700();
    if (v77)
    {
    }
  }

  v105 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  v106 = v134;
  swift_beginAccess();
  if (*(*(v105 + v106) + 16))
  {

    sub_1B964C6E0();
    if (v77)
    {
    }
  }

  v107 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2;
  v108 = v134;
  swift_beginAccess();
  if (*(*(v108 + v107) + 16))
  {
    type metadata accessor for Tvpb_TrailerV2(0);
    sub_1B8CD2180(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2, protocol conformance descriptor for Tvpb_TrailerV2);

    sub_1B964C730();
    if (v77)
    {
    }
  }

  v109 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew;
  v110 = v134;
  swift_beginAccess();
  if (*(*(v110 + v109) + 16))
  {
    type metadata accessor for Tvpb_CastAndCrew(0);
    sub_1B8CD2180(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew, protocol conformance descriptor for Tvpb_CastAndCrew);

    sub_1B964C730();
    if (v77)
    {
    }
  }

  v111 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
  v112 = v134;
  swift_beginAccess();
  if (*(v112 + v111) == 1)
  {
    result = sub_1B964C670();
    if (v77)
    {
      return result;
    }
  }

  v113 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  v114 = v134;
  swift_beginAccess();
  if (!*(*(v113 + v114) + 16))
  {
    goto LABEL_134;
  }

  sub_1B964C6E0();
  if (v77)
  {
  }

LABEL_134:
  v115 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
  v116 = v134;
  swift_beginAccess();
  if (*(v116 + v115) != 1 || (result = sub_1B964C670(), !v77))
  {
    v117 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
    v118 = v134;
    swift_beginAccess();
    if (*(v118 + v117) != 1 || (result = sub_1B964C670(), !v77))
    {
      v119 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
      v120 = v134;
      swift_beginAccess();
      if (*(v120 + v119) != 1 || (result = sub_1B964C670(), !v77))
      {
        v121 = (v134 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
        result = swift_beginAccess();
        v122 = *v121;
        v123 = v121[1];
        v124 = HIBYTE(v123) & 0xF;
        if ((v123 & 0x2000000000000000) == 0)
        {
          v124 = v122 & 0xFFFFFFFFFFFFLL;
        }

        if (v124)
        {

          sub_1B964C700();
        }
      }
    }
  }

  return result;
}