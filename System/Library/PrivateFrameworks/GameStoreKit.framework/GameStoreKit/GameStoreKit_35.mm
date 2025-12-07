unint64_t sub_24E9824A0()
{
  result = qword_27F223080;
  if (!qword_27F223080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223080);
  }

  return result;
}

uint64_t SearchChartOrCategory.deinit()
{

  sub_24E6585F8(v0 + 88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t SearchChartOrCategory.__deallocating_deinit()
{
  SearchChartOrCategory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E982600()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_24E982634()
{
  v1 = *(*v0 + 32);

  return v1;
}

__n128 sub_24E982668@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_artworkSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 sub_24E982694@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_textSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t type metadata accessor for SearchChartOrCategory(uint64_t a1)
{
  result = qword_27F223090;
  if (!qword_27F223090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E982764@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickAction;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = type metadata accessor for Action(0);
    v7 = sub_24E982B1C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = v6;
  a1[4] = v7;
}

void *sub_24E98281C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchChartOrCategory.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24E9828D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F2129B0, &unk_24F945320);
}

void *sub_24E982948()
{
  v1 = *(*v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_24E982984@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F213E68, &unk_24F93BC80);
}

void sub_24E9829F8(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24E982B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E982BD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24F9287F8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_24F9287D8();
}

uint64_t sub_24E982C5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9287F8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_24E982CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24E982D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24E982D8C(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = objc_opt_self();
  result = [v6 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = result;

  v9 = v8;
  v10 = [v6 valueWithObject:sub_24F92CF68() inContext:{a1, v4, v3}];
  result = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_24F92C328();
  LOBYTE(v12) = v5;
  v11 = [v6 valueWithObject:sub_24F92CF68() inContext:{a1, v12}];
  result = swift_unknownObjectRelease();
  if (v11)
  {
    sub_24F92C328();

    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_24E982F10()
{
  result = qword_27F2230D0;
  if (!qword_27F2230D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2230D0);
  }

  return result;
}

unint64_t sub_24E982F6C()
{
  result = qword_27F2230D8;
  if (!qword_27F2230D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2230D8);
  }

  return result;
}

uint64_t FramedArtwork.__allocating_init(id:artwork:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v25 = a7;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC12GameStoreKit13FramedArtwork_artwork) = a2;
  sub_24E60169C(a1, v35, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(a8, v15 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v16 = v15 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  sub_24E60169C(v35, &v32, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v33 + 1))
  {
    v17 = v33;
    *v16 = v32;
    *(v16 + 16) = v17;
    *(v16 + 32) = v34;
  }

  else
  {

    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    v30 = v18;
    v31 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v35, &qword_27F235830, &qword_24F93B8C0);
  *(v15 + 17) = v26 & 1;
  *(v15 + 16) = v27 & 1;
  v21 = v29;
  *(v15 + 24) = v28;
  *(v15 + 32) = v21;
  v22 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v23 = sub_24F91F008();
  (*(*(v23 - 8) + 56))(v15 + v22, 1, 1, v23);
  return v15;
}

uint64_t FramedArtwork.init(id:artwork:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v29 = a7;
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v28 = sub_24F91F6B8();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit13FramedArtwork_artwork) = a2;
  v30 = a1;
  sub_24E60169C(a1, v43, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(a8, v17, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v43, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {

    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v27 + 8))(v14, v28);
    v35 = v18;
    v36 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v43, &qword_27F235830, &qword_24F93B8C0);
  v21 = v9 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  *(v21 + 32) = v42;
  v22 = v41;
  *v21 = v40;
  *(v21 + 16) = v22;
  sub_24E65E0D4(v17, v9 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics);
  *(v9 + 17) = v31 & 1;
  *(v9 + 16) = v32 & 1;
  v23 = v34;
  *(v9 + 24) = v33;
  *(v9 + 32) = v23;
  v24 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v25 = sub_24F91F008();
  (*(*(v25 - 8) + 56))(v9 + v24, 1, 1, v25);
  return v9;
}

uint64_t FramedArtwork.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v26 = sub_24F928388();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  type metadata accessor for Artwork(0);
  v32 = a1;
  sub_24F928398();
  v29 = v5;
  v30 = v4;
  v14 = *(v5 + 16);
  v31 = a2;
  v25 = v14;
  v14(v9, a2, v4);
  sub_24E9838D4();
  sub_24F929548();
  if (v33)
  {
    v15 = sub_24E9F738C();
  }

  else
  {
    v15 = 0;
  }

  *(v28 + OBJC_IVAR____TtC12GameStoreKit13FramedArtwork_artwork) = v15;
  v16 = v32;
  v17 = v26;
  (*(v10 + 16))(v12, v32, v26);
  v18 = v27;
  v19 = v30;
  v20 = v31;
  v21.n128_f64[0] = v25(v27, v31, v30);
  v22 = FramedMedia.init(deserializing:using:)(v12, v18, v21);
  (*(v29 + 8))(v20, v19);
  (*(v10 + 8))(v16, v17);
  return v22;
}

unint64_t sub_24E9838D4()
{
  result = qword_27F219660;
  if (!qword_27F219660)
  {
    type metadata accessor for Artwork(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219660);
  }

  return result;
}

uint64_t FramedArtwork.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340, &qword_24F943530);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t FramedArtwork.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340, &qword_24F943530);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FramedArtwork(uint64_t a1)
{
  result = qword_27F2230E0;
  if (!qword_27F2230E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchResultsSegment.__allocating_init(id:name:contextCard:content:message:noResultsLink:noResultsHidesLargeTitle:pageMetrics:pageRenderEvent:transparencyLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;
  v21 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v22 = sub_24F928818();
  (*(*(v22 - 8) + 32))(v20 + v21, a10, v22);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageRenderEvent) = a11;
  *(v20 + 88) = a12;
  return v20;
}

uint64_t SearchResultsSegment.init(id:name:contextCard:content:message:noResultsLink:noResultsHidesLargeTitle:pageMetrics:pageRenderEvent:transparencyLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  *(v12 + 80) = a9;
  v13 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v14 = sub_24F928818();
  (*(*(v14 - 8) + 32))(v12 + v13, a10, v14);
  *(v12 + OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageRenderEvent) = a11;
  *(v12 + 88) = a12;
  return v12;
}

uint64_t SearchResultsSegment.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v3 = sub_24F928818();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = v64 - v9;
  MEMORY[0x28223BE20](v10);
  v84 = v64 - v11;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = v64 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v64 - v18;
  MEMORY[0x28223BE20](v20);
  v85 = v64 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v64 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v64 - v26;
  v91 = a1;
  sub_24F928398();
  v75 = sub_24F928348();
  v29 = v28;
  v32 = *(v13 + 8);
  v31 = v13 + 8;
  v30 = v32;
  v32(v27, v12);
  v86 = v29;
  if (!v29)
  {
    v40 = sub_24F92AC38();
    sub_24E984BD8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v46 = 25705;
    v47 = v88;
    v46[1] = 0xE200000000000000;
    v46[2] = v47;
    (*(*(v40 - 8) + 104))(v46, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v6 + 8))(v90, v5);
LABEL_7:
    v30(v91, v12);
    return v40;
  }

  v87 = v6;
  v89 = v30;
  sub_24F928398();
  v33 = sub_24F928348();
  v30 = v89;
  v34 = v33;
  v36 = v35;
  v89(v24, v12);
  if (!v36)
  {

    v40 = sub_24F92AC38();
    sub_24E984BD8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v48 = 1701667182;
    v48[1] = 0xE400000000000000;
    v48[2] = v88;
    (*(*(v40 - 8) + 104))(v48, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v87 + 8))(v90, v5);
    goto LABEL_7;
  }

  v69 = v34;
  v71 = v36;
  v73 = v31;
  v74 = v12;
  type metadata accessor for SearchResultsContextCard();
  sub_24F928398();
  v37 = v87 + 16;
  v38 = *(v87 + 16);
  v39 = v90;
  v38(v84, v90, v5);
  sub_24E984BD8(&qword_27F2230F0, type metadata accessor for SearchResultsContextCard, &protocol conformance descriptor for SearchResultsContextCard);
  v40 = v39;
  v41 = v5;
  sub_24F929548();
  v42 = v96;
  sub_24F928398();
  v43 = v82;
  v70 = v37;
  v72 = v38;
  v38(v82, v40, v41);
  type metadata accessor for SearchResultsContent();
  swift_allocObject();
  v44 = v83;
  v45 = SearchResultsContent.init(deserializing:using:)(v19, v43);
  if (v44)
  {

    (*(v87 + 8))(v40, v41);
    v89(v91, v74);
  }

  else
  {
    v82 = v45;
    v83 = v42;
    type metadata accessor for SearchResultsMessage();
    sub_24F928398();
    v50 = v84;
    v72(v84, v90, v41);
    sub_24E984BD8(&qword_27F2230F8, type metadata accessor for SearchResultsMessage, &protocol conformance descriptor for SearchResultsMessage);
    v51 = v90;
    sub_24F929548();
    v68 = v95;
    v52 = type metadata accessor for LinkableText();
    sub_24F928398();
    v72(v50, v51, v41);
    v64[1] = sub_24E984BD8(&qword_27F21C360, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    v66 = v52;
    sub_24F929548();
    v67 = v94;
    v53 = v78;
    sub_24F928398();
    v65 = sub_24F928278();
    v89(v53, v74);
    sub_24F928398();
    v54 = v51;
    v72(v80, v51, v41);
    sub_24F928788();
    type metadata accessor for PageRenderMetricsEvent();
    v64[0] = v41;
    v55 = v91;
    sub_24F928398();
    v56 = v41;
    v57 = v72;
    v72(v50, v51, v56);
    sub_24E984BD8(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
    sub_24F929548();
    v80 = v93;
    sub_24F928398();
    v58 = v64[0];
    v57(v50, v54, v64[0]);
    sub_24F929548();
    (*(v87 + 8))(v54, v58);
    v89(v55, v74);
    v59 = v92;
    v40 = swift_allocObject();
    v60 = v86;
    *(v40 + 16) = v75;
    *(v40 + 24) = v60;
    v61 = v71;
    *(v40 + 32) = v69;
    *(v40 + 40) = v61;
    v62 = v82;
    *(v40 + 48) = v83;
    *(v40 + 56) = v62;
    v63 = v67;
    *(v40 + 64) = v68;
    *(v40 + 72) = v63;
    *(v40 + 80) = v65 & 1;
    (*(v76 + 32))(v40 + OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics, v81, v77);
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageRenderEvent) = v80;
    *(v40 + 88) = v59;
  }

  return v40;
}

uint64_t SearchResultsSegment.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchResultsSegment.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchResultsSegment.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *SearchResultsSegment.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SearchResultsSegment.__deallocating_deinit()
{
  SearchResultsSegment.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24E984B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = SearchResultsSegment.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24E984B5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20SearchResultsSegment_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24E984BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchResultsSegment(uint64_t a1)
{
  result = qword_27F223100;
  if (!qword_27F223100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E984C74(uint64_t a1)
{
  result = sub_24F928818();
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

uint64_t sub_24E984D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v47);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - v7;
  v8 = sub_24F91EF38();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EF18();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v57 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v42 - v13;
  v14 = sub_24F91EF48();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348, &unk_24F93FBF0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v22 = sub_24F91F008();
  (*(*(v22 - 8) + 16))(a2, a1, v22);
  sub_24F91EF68();
  (*(v15 + 16))(v21, v17, v14);
  v23 = *(v19 + 44);
  v24 = v10;
  sub_24E6584F8(&qword_27F215360, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_24F92BB88();
  (*(v15 + 8))(v17, v14);
  v25 = v44;
  ++v55;
  v50 = (v49 + 4);
  v51 = (v49 + 2);
  v42 = "transparencyLink";
  ++v49;
  v46 = v10;
  v52 = v23;
  v53 = v14;
  while (1)
  {
    sub_24F92BC08();
    sub_24E6584F8(&unk_27F237EA0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v26 = v56;
    v27 = sub_24F92AFF8();
    (*v55)(v25, v26);
    if (v27)
    {
      break;
    }

    v28 = sub_24F92BC88();
    v29 = v54;
    (*v51)(v54);
    v28(v59, 0);
    sub_24F92BC18();
    v30 = v57;
    (*v50)(v57, v29, v24);
    sub_24E985554();
    sub_24F91EF28();
    if (v59[0] == 2)
    {
      (*v49)(v30, v24);
    }

    else
    {
      sub_24F91EF28();
      v31 = v59[0];
      if (v59[0] == 2)
      {
        v24 = v46;
        (*v49)(v30, v46);
      }

      else
      {
        v32 = v43;
        sub_24F91EF08();
        v33 = sub_24F92B098();
        v34 = v33;
        v45 = v31 & 1;
        v35 = 66.0;
        if (v31)
        {
          v35 = 30.36;
        }

        CTFontCreateWithNameAndOptions(v33, v35, 0, 0x20000uLL);

        v36 = sub_24F925A78();
        sub_24E602068(&qword_27F22D340, &qword_27F22D330, &unk_24F93FBE0, MEMORY[0x277D83D30]);
        v37 = sub_24F91F048();
        v58 = v36;
        sub_24E6584A4();
        sub_24F91F148();
        v37(v59, 0);
        v38 = v57;
        sub_24E601704(v32, &qword_27F22D330, &unk_24F93FBE0);
        sub_24F91EF08();
        if (v45)
        {
          v39 = sub_24F91F048();
          v58 = 0;
        }

        else
        {
          v40 = sub_24F926D18();
          v39 = sub_24F91F048();
          v58 = v40;
        }

        sub_24E876600();
        sub_24F91F148();
        v39(v59, 0);
        sub_24E601704(v5, &qword_27F22D330, &unk_24F93FBE0);
        v24 = v46;
        (*v49)(v38, v46);
        v25 = v44;
      }
    }
  }

  return sub_24E601704(v21, &qword_27F215348, &unk_24F93FBF0);
}

unint64_t sub_24E985554()
{
  result = qword_27F223110;
  if (!qword_27F223110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223110);
  }

  return result;
}

uint64_t sub_24E9855BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F008();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E98563C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F008();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AchievementCountHeaderText(uint64_t a1)
{
  result = qword_27F223118;
  if (!qword_27F223118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9856F8(uint64_t a1)
{
  result = sub_24F91F008();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E985780@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v3);
  v5 = &v26[-v4];
  v6 = sub_24F91F008();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v1, v7);
  v10 = sub_24F925DF8();
  v12 = v11;
  v14 = v13;
  v15 = sub_24F9251C8();
  v16 = *(v3 + 36);
  v17 = *MEMORY[0x277CE13B8];
  v18 = sub_24F927748();
  (*(*(v18 - 8) + 104))(&v5[v16], v17, v18);
  *v5 = v15;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v19 = sub_24F925C58();
  v21 = v20;
  LOBYTE(v15) = v22;
  v24 = v23;
  sub_24E600B40(v10, v12, v14 & 1);

  result = sub_24E601704(v5, &qword_27F213F10, &unk_24F93BE10);
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v24;
  return result;
}

unint64_t sub_24E9859DC()
{
  result = qword_27F21A590;
  if (!qword_27F21A590)
  {
    type metadata accessor for LeaderboardsWithActivityDataIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A590);
  }

  return result;
}

uint64_t sub_24E985A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24E985AEC(a2, a3);
}

uint64_t sub_24E985AEC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Leaderboard(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for LeaderboardsListDataIntent(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E985BE8, 0, 0);
}

uint64_t sub_24E985BE8()
{
  v1 = v0[8];
  v17 = v0[9];
  v2 = v0[2];
  sub_24E90FCE0(v2, v17, type metadata accessor for Game);
  v3 = type metadata accessor for LeaderboardsWithActivityDataIntent(0);
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  sub_24E90FCE0(v2 + *(v3 + 24), v17 + *(v1 + 24), type metadata accessor for Player);
  v12 = (v17 + *(v1 + 20));
  *v12 = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = v11;
  sub_24E7ED984(v5, v6, v7, v8, v9, v10);
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_24E985D5C;
  v14 = v0[9];
  v15 = v0[3];

  return sub_24E648690(v14, v15);
}

uint64_t sub_24E985D5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_24E90FC40;
  }

  else
  {
    v4 = sub_24E985E70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24E985E70()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[4];
    v4 = v0[5];
    v6 = MEMORY[0x277D84F90];
    v15 = v0[11];
    while (v3 < *(v1 + 16))
    {
      v7 = v0[7];
      v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v9 = *(v4 + 72);
      sub_24E90FCE0(v0[11] + v8 + v9 * v3, v7, type metadata accessor for Leaderboard);
      v10 = v0[7];
      if (*(v7 + *(v5 + 44)) < 1)
      {
        sub_24E90FD48(v10, type metadata accessor for Leaderboard);
      }

      else
      {
        sub_24E90FDA8(v10, v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F45834C(0, *(v6 + 16) + 1, 1);
        }

        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_24F45834C((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[6];
        *(v6 + 16) = v12 + 1;
        sub_24E90FDA8(v13, v6 + v8 + v12 * v9);
        v1 = v15;
      }

      if (v2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_14:
    sub_24E90FD48(v0[9], type metadata accessor for LeaderboardsListDataIntent);

    v14 = v0[1];

    v14(v6);
  }
}

uint64_t sub_24E98606C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = type metadata accessor for JSColor(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728, &unk_24F956450);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v97 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223128, &qword_24F9E3A10);
  MEMORY[0x28223BE20](v12 - 8);
  v114 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v97 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130, &qword_24F96D648);
  MEMORY[0x28223BE20](v17 - 8);
  v115 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = &v97 - v20;
  MEMORY[0x28223BE20](v21);
  v111 = &v97 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v118 = &v97 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = (&v97 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = (&v97 - v35);
  MEMORY[0x28223BE20](v37);
  v117 = (&v97 - v38);
  v39 = *(a1 + 40);
  if (!v39)
  {
    v48 = 0;
    v110 = 0;
    v113 = 0;
    v51 = 0;
    v52 = 0;
LABEL_7:

    v53 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    (*(*(v53 - 8) + 56))(v117, 1, 1, v53);
    v54 = v115;
    goto LABEL_16;
  }

  v99 = v4;
  v100 = v3;
  v101 = v11;
  v98 = v6;
  v104 = v16;
  v40 = v33;
  v106 = v28;
  v41 = v25;
  v42 = *(v39 + 24);
  v103 = *(v39 + 16);
  v43 = *(v39 + 80);
  v108 = *(v39 + 72);
  v109 = a1;
  v44 = *(v39 + 120);
  v110 = *(v39 + 112);
  v46 = *(v39 + 32);
  v45 = *(v39 + 40);
  v47 = *(v39 + 48);
  v48 = *(v39 + 144);

  v107 = v43;

  v113 = v44;

  v49 = v48;
  v102 = v42;
  if (!v42)
  {
    v25 = v41;
    v28 = v106;
    v52 = v107;
    v51 = v108;
    a1 = v109;
    v33 = v40;
    goto LABEL_7;
  }

  v50 = v49;
  if (v46)
  {

    sub_24E986DF4(v45, v47, v111);
  }

  else
  {
    v55 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    (*(*(v55 - 8) + 56))(v111, 1, 1, v55);
  }

  v25 = v41;
  v33 = v40;
  v28 = v106;
  v56 = v104;
  if (v48)
  {
    v57 = v50;
    v58 = v101;
    sub_24E9870D0(v101);

    v59 = v105;
    sub_24E60169C(v58, v105, &qword_27F21C728, &unk_24F956450);
    if ((*(v99 + 48))(v59, 1, v100) != 1)
    {
      v61 = v59;
      v62 = v98;
      sub_24E9873F8(v61, v98);
      sub_24E98745C(v62, v56);
      v63 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
      swift_storeEnumTagMultiPayload();

      sub_24E9874C0(v62);
      sub_24E601704(v58, &qword_27F21C728, &unk_24F956450);
      (*(*(v63 - 8) + 56))(v56, 0, 1, v63);
      goto LABEL_15;
    }

    sub_24E601704(v58, &qword_27F21C728, &unk_24F956450);
  }

  else
  {
  }

  v60 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  (*(*(v60 - 8) + 56))(v56, 1, 1, v60);
LABEL_15:
  a1 = v109;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v64 = v117;
  v65 = v102;
  *v117 = v103;
  v64[1] = v65;
  v66 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  sub_24E6009C8(v111, v64 + v66[5], &qword_27F223130, &qword_24F96D648);
  *(v64 + v66[6]) = 2;
  sub_24E6009C8(v56, v64 + v66[7], &qword_27F223128, &qword_24F9E3A10);
  *(v64 + v66[8]) = 2;
  v67 = v64 + v66[9];
  *v67 = 0;
  *(v67 + 4) = 256;
  v68 = v64 + v66[10];
  *(v68 + 32) = 0;
  *v68 = 0u;
  *(v68 + 16) = 0u;
  sub_24E7D5870(&v119, v68);
  (*(*(v66 - 1) + 56))(v64, 0, 1, v66);
  v54 = v115;
  v52 = v107;
  v51 = v108;
LABEL_16:
  v69 = v114;
  if (v52)
  {
    v70 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v71 = v33;
    v72 = v52;
    v73 = v116;
    (*(*(v70 - 8) + 56))(v116, 1, 1, v70);
    v74 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
    (*(*(v74 - 8) + 56))(v69, 1, 1, v74);
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    *v36 = v51;
    v36[1] = v72;
    v33 = v71;
    v75 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    sub_24E6009C8(v73, v36 + v75[5], &qword_27F223130, &qword_24F96D648);
    *(v36 + v75[6]) = 2;
    sub_24E6009C8(v69, v36 + v75[7], &qword_27F223128, &qword_24F9E3A10);
    *(v36 + v75[8]) = 2;
    v76 = v36 + v75[9];
    *v76 = 0;
    *(v76 + 4) = 256;
    v77 = v36 + v75[10];
    *(v77 + 32) = 0;
    *v77 = 0u;
    *(v77 + 16) = 0u;
    sub_24E7D5870(&v119, v77);
    (*(*(v75 - 1) + 56))(v36, 0, 1, v75);
  }

  else
  {
    v78 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    (*(*(v78 - 8) + 56))(v36, 1, 1, v78);
  }

  v79 = *(a1 + 40);
  if (v79 && *(v79 + 88))
  {

    sub_24E986DF4(0, 1, v54);

    v80 = v113;
    if (!v113)
    {
LABEL_22:

      v81 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
      (*(*(v81 - 1) + 56))(v33, 1, 1, v81);
      goto LABEL_25;
    }
  }

  else
  {
    v82 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    (*(*(v82 - 8) + 56))(v54, 1, 1, v82);
    v80 = v113;
    if (!v113)
    {
      goto LABEL_22;
    }
  }

  v83 = v80;
  v84 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  v85 = v116;
  (*(*(v84 - 8) + 56))(v116, 1, 1, v84);

  v86 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  (*(*(v86 - 8) + 56))(v69, 1, 1, v86);
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  *v33 = v110;
  v33[1] = v83;
  v81 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  sub_24E6009C8(v85, v33 + v81[5], &qword_27F223130, &qword_24F96D648);
  *(v33 + v81[6]) = 2;
  sub_24E6009C8(v69, v33 + v81[7], &qword_27F223128, &qword_24F9E3A10);
  *(v33 + v81[8]) = 2;
  v87 = v33 + v81[9];
  *v87 = 0;
  *(v87 + 4) = 256;
  v88 = v33 + v81[10];
  *(v88 + 32) = 0;
  *v88 = 0u;
  *(v88 + 16) = 0u;
  sub_24E7D5870(&v119, v88);
  (*(*(v81 - 1) + 56))(v33, 0, 1, v81);
LABEL_25:
  sub_24E60169C(v36, v118, &qword_27F223138, &unk_24F972860);
  type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v89 = *(v81 - 1);
  v90 = *(v89 + 48);
  if (v90(v36, 1, v81) == 1)
  {
    sub_24E601704(v117, &qword_27F223138, &unk_24F972860);
    (*(v89 + 56))(v28, 1, 1, v81);
  }

  else
  {
    sub_24E6009C8(v117, v28, &qword_27F223138, &unk_24F972860);
  }

  if (v90(v36, 1, v81) == 1)
  {
    sub_24E601704(v33, &qword_27F223138, &unk_24F972860);
    (*(v89 + 56))(v25, 1, 1, v81);
  }

  else
  {
    sub_24E6009C8(v33, v25, &qword_27F223138, &unk_24F972860);
  }

  v91 = type metadata accessor for HeaderPresentation(0);
  v92 = v112;
  v93 = v112 + v91[7];
  *(v93 + 48) = 0;
  *(v93 + 16) = 0u;
  *(v93 + 32) = 0u;
  *v93 = 0u;
  *(v93 + 56) = -1;
  v94 = v91[8];
  sub_24E6009C8(v54, v92 + v94, &qword_27F223130, &qword_24F96D648);
  v95 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v95 - 8) + 56))(v92 + v94, 0, 1, v95);
  sub_24E6009C8(v118, v92, &qword_27F223138, &unk_24F972860);
  sub_24E6009C8(v28, v92 + v91[5], &qword_27F223138, &unk_24F972860);
  sub_24E6009C8(v25, v92 + v91[6], &qword_27F223138, &unk_24F972860);
  *(v92 + v91[9]) = 7;
  *(v92 + v91[10]) = 2;
  *(v92 + v91[11]) = 2;
  *(v92 + v91[12]) = 2;
  return sub_24E601704(v36, &qword_27F223138, &unk_24F972860);
}

uint64_t sub_24E986DF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v25 = a2;
  v7 = sub_24F9289E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  v26 = sub_24E609AB0(MEMORY[0x277D84F90]);
  v14 = *(v3 + 48);
  if (v14)
  {
    v15 = *MEMORY[0x277CEE210];
    v16 = v14;
    sub_24E988884([v16 CGColor], v15);
  }

  sub_24F928948();
  v17 = *(v8 + 32);
  v17(v13, v10, v7);
  if (*(v4 + 64) == 1)
  {
    v18 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48)];
    v17(a3, v13, v7);
    (*(v8 + 56))(a3, 0, 1, v7);
    v19 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    *v18 = 0u;
    v18[1] = 0u;
    v18[2] = 0u;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223148, &unk_24F9E44F0);
    v21 = &a3[*(v20 + 48)];
    v22 = *(v20 + 64);
    v17(a3, v13, v7);
    *v21 = a1;
    v21[8] = v25 & 1;
    a3[v22] = 1;
    v19 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  }

  swift_storeEnumTagMultiPayload();
  type metadata accessor for HeaderPresentation.HeaderIconType(0);
  return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
}

uint64_t sub_24E9870D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F928388();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7];
  UIColor.rgbaComponents.getter(v22);
  if (v24)
  {
    v9 = type metadata accessor for JSColor(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    v13 = v22[2];
    v12 = v23;
    v15 = v22[0];
    v14 = v22[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F942000;
    *(inited + 32) = 0x646E696B24;
    v17 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 6449010;
    *(inited + 56) = 0xE300000000000000;
    *(inited + 72) = v17;
    *(inited + 80) = 6579570;
    *(inited + 88) = 0xE300000000000000;
    v18 = MEMORY[0x277D85048];
    *(inited + 96) = v15;
    *(inited + 120) = v18;
    *(inited + 128) = 0x6E65657267;
    *(inited + 136) = 0xE500000000000000;
    *(inited + 144) = v14;
    *(inited + 168) = v18;
    *(inited + 176) = 1702194274;
    *(inited + 184) = 0xE400000000000000;
    *(inited + 192) = v13;
    *(inited + 216) = v18;
    *(inited + 224) = 0x6168706C61;
    *(inited + 232) = 0xE500000000000000;
    *(inited + 264) = v18;
    *(inited + 240) = v12;
    v19 = sub_24E608448(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
    swift_arrayDestroy();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v22[0] = v19;
    sub_24F928378();
    (*(v3 + 16))(v5, v8, v2);
    JSColor.init(base:)(v5, a1);
    (*(v3 + 8))(v8, v2);
    v20 = type metadata accessor for JSColor(0);
    return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  }
}

uint64_t sub_24E9873F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSColor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E98745C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSColor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9874C0(uint64_t a1)
{
  v2 = type metadata accessor for JSColor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E987530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeaderPresentation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E987678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeaderPresentation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for GamesPageHeader(uint64_t a1)
{
  result = qword_27F223150;
  if (!qword_27F223150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9877F8(uint64_t a1)
{
  type metadata accessor for HeaderPresentation(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C7D0(319);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E987894(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223178, &qword_24F96D768);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E988150();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for HeaderPresentation(0);
  sub_24E988320(&qword_27F21BE58, type metadata accessor for HeaderPresentation, &protocol conformance descriptor for HeaderPresentation);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for GamesPageHeader(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    sub_24E9882D0(&qword_27F214040, MEMORY[0x277D21DB8]);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F929608();
    sub_24E988320(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E987B04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for HeaderPresentation(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223168, &qword_24F96D760);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for GamesPageHeader(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E988150();
  v28 = v11;
  v16 = v29;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v17 = v26;
  v18 = v14;
  v29 = v5;
  LOBYTE(v31) = 0;
  sub_24E988320(&qword_27F21BEB8, type metadata accessor for HeaderPresentation, &protocol conformance descriptor for HeaderPresentation);
  v19 = v27;
  sub_24F92CC68();
  sub_24E777530(v8, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  v34 = 1;
  sub_24E9882D0(&qword_27F213F30, MEMORY[0x277D21DC0]);
  sub_24F92CC68();
  v20 = v18 + *(v12 + 20);
  v21 = v32;
  *v20 = v31;
  *(v20 + 16) = v21;
  *(v20 + 32) = v33;
  sub_24F929608();
  LOBYTE(v31) = 2;
  sub_24E988320(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
  v22 = v29;
  sub_24F92CC18();
  (*(v17 + 8))(v28, v19);
  sub_24E65E0D4(v22, v18 + *(v12 + 24));
  sub_24E98820C(v18, v25);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_24E988270(v18, type metadata accessor for GamesPageHeader);
}

unint64_t sub_24E987F68()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61746E6573657270;
  }
}

uint64_t sub_24E987FC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E988480(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E987FEC(uint64_t a1)
{
  v2 = sub_24E988150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E988028(uint64_t a1)
{
  v2 = sub_24E988150();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E988064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 20), v6, &qword_27F213F18, &qword_24F93BE20);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_24E988150()
{
  result = qword_27F223170;
  if (!qword_27F223170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223170);
  }

  return result;
}

uint64_t sub_24E9881A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E98820C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesPageHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E988270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E9882D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F18, &qword_24F93BE20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E988320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E98837C()
{
  result = qword_27F223180;
  if (!qword_27F223180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223180);
  }

  return result;
}

unint64_t sub_24E9883D4()
{
  result = qword_27F223188;
  if (!qword_27F223188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223188);
  }

  return result;
}

unint64_t sub_24E98842C()
{
  result = qword_27F223190;
  if (!qword_27F223190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223190);
  }

  return result;
}

uint64_t sub_24E988480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E98859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24E612B0C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_24E81C1D4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_24E601704(a1, &qword_27F2129B0, &unk_24F945320);
    sub_24E98EF1C(a2, a3, v9);

    return sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24E98866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223218, &qword_24FA117E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130C0, &unk_24F96E180);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_24E601704(a1, &qword_27F223218, &qword_24FA117E0);
    sub_24E98F518(a2, a3, &qword_27F2130C0, &unk_24F96E180, sub_24EB52B48, sub_24E8ADBE4, v9);

    return sub_24E601704(v9, &qword_27F223218, &qword_24FA117E0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24E81C324(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

void sub_24E988884(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24E81C670(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_24E7728E8();
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_24E8ADF98();
        v10 = v13;
      }

      sub_24EB52DDC(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_24E988988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
    sub_24E98EFFC(a2, a3, v9);

    return sub_24E601704(v9, &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24E81C7A4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24E988B60(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 48);
    v9[2] = *(a1 + 32);
    v9[3] = v4;
    v9[4] = *(a1 + 64);
    v10 = *(a1 + 80);
    v5 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_24E81C978(v9, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E772780(a2);
    *v2 = v8;
  }

  else
  {
    sub_24E601704(a1, &qword_27F223230, &qword_24F96E1B0);
    sub_24E98F16C(a2, v9);
    sub_24E772780(a2);
    return sub_24E601704(v9, &qword_27F223230, &qword_24F96E1B0);
  }

  return result;
}

uint64_t sub_24E988C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223220, &unk_24F96E198);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EC40, &qword_24F96E190);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_24E601704(a1, &qword_27F223220, &unk_24F96E198);
    sub_24E98F518(a2, a3, &qword_27F21EC40, &qword_24F96E190, sub_24EB53340, sub_24E8AEDC8, v9);

    return sub_24E601704(v9, &qword_27F223220, &unk_24F96E198);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24E81D064(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24E988E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_24E81D324(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_24E76D644(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_24E8AF124();
        v16 = v18;
      }

      result = sub_24EB53354(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_24E988F54(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C0, &unk_24F96E1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213360, &unk_24F93AB30);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24E601704(a1, &qword_27F21E6C0, &unk_24F96E1D0);
    sub_24E98FC84(a2, &qword_27F213360, &unk_24F93AB30, sub_24EB53504, sub_24E8AF29C, v7);
    sub_24E6585F8(a2);
    return sub_24E601704(v7, &qword_27F21E6C0, &unk_24F96E1D0);
  }

  else
  {
    sub_24E6009C8(a1, v11, &qword_27F213360, &unk_24F93AB30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_24E81D474(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a2);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_24E989150(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Game(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24E601704(a1, &qword_27F216FE0, &unk_24F959350);
    sub_24E98F334(a2, v7);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_24E601704(v7, &qword_27F216FE0, &unk_24F959350);
  }

  else
  {
    sub_24E990FE4(a1, v11, type metadata accessor for Game);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_24E81D5C8(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_24E989388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223228, &qword_24F96E1A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130D8, &qword_24F93A890);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_24E601704(a1, &qword_27F223228, &qword_24F96E1A8);
    sub_24E98F518(a2, a3, &qword_27F2130D8, &qword_24F93A890, sub_24EB53860, sub_24E8AF860, v9);

    return sub_24E601704(v9, &qword_27F223228, &qword_24F96E1A8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24E81D7E4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24E9895A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24E81D9CC(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a2);
    *v2 = v14;
  }

  else
  {
    v8 = sub_24E76D934(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v15 = *v3;
      if (!v11)
      {
        sub_24E8B02DC();
        v12 = v15;
      }

      sub_24E6585F8(*(v12 + 48) + 40 * v10);

      sub_24EB53A74(v10, v12, v13);
      result = sub_24E6585F8(a2);
      *v3 = v12;
    }

    else
    {

      return sub_24E6585F8(a2);
    }
  }

  return result;
}

uint64_t sub_24E9896A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24E612C80(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_24E81DDE4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_24E601704(a1, &qword_27F223248, &unk_24F96E1C0);
    sub_24E98FA18(a2, a3, sub_24E612E28, sub_24EB5BA0C, sub_24E8B07B4, v9);

    return sub_24E601704(v9, &qword_27F223248, &unk_24F96E1C0);
  }

  return result;
}

uint64_t sub_24E9897B4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E76DDAC(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24E8B0BFC();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_24F929598();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_24EB53DD0(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_24F929598();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_24E81E0B0(a1, a3, v17);
    v18 = sub_24F929598();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_24E989968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24E81E24C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_24F929598();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_24E76DDAC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_24E8B0E6C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_24F929598();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_24EB53DD0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_24F929598();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_24E989B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24E81E458(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a3);
    *v3 = v15;
  }

  else
  {
    v10 = sub_24E76D934(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_24E8B0EA8();
        v14 = v16;
      }

      sub_24E6585F8(*(v14 + 48) + 40 * v12);

      sub_24EB54294(v12, v14);
      result = sub_24E6585F8(a3);
      *v4 = v14;
    }

    else
    {

      return sub_24E6585F8(a3);
    }
  }

  return result;
}

uint64_t sub_24E989C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_24E81E71C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_24E76DBF8(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_24E8B104C();
        v11 = v13;
      }

      result = sub_24EB54298(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_24E989D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24E612C80(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_24E81EF70(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_24E601704(a1, &qword_27F223240, &qword_24F96E1B8);
    sub_24E98FA18(a2, a3, sub_24E612E28, sub_24EB5BA0C, sub_24E8B1D44, v9);

    return sub_24E601704(v9, &qword_27F223240, &qword_24F96E1B8);
  }

  return result;
}

uint64_t sub_24E989E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223250, &qword_24F96E200);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for GameSearchResultsTabContent(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_24E601704(a1, &qword_27F223250, &qword_24F96E200);
    sub_24E98FAEC(a2, a3, v9);

    return sub_24E601704(v9, &qword_27F223250, &qword_24F96E200);
  }

  else
  {
    sub_24E990FE4(a1, v13, type metadata accessor for GameSearchResultsTabContent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24E81F28C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24E989FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_24E81F3F8(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_24E76D9B8(a2, a3, a4, a5);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        sub_24E8B22E4();
        v18 = v20;
      }

      result = sub_24EB54CB0(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

uint64_t sub_24E98A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24E81F6C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_24E7728F0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_24E8B2608();
        v14 = v16;
      }

      result = sub_24EB53C20(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

unint64_t sub_24E98A214(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32) == 255)
  {
    sub_24E601704(a1, &qword_27F223238, &qword_24F986A90);
    v8 = sub_24E7728CC(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24E8B2790();
        v12 = v17;
      }

      v13 = *(v12 + 56) + 40 * v10;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v18 = *v13;
      v19 = v15;
      v20 = v14;
      sub_24EB5502C(v10, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v20 = -1;
    }

    return sub_24E601704(&v18, &qword_27F223238, &qword_24F986A90);
  }

  else
  {
    v5 = a1[1];
    v18 = *a1;
    v19 = v5;
    v20 = *(a1 + 32);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_24E81F85C(&v18, a2, v6);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_24E98A338(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6F0, &unk_24F96E1E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213348, &qword_24F95CDD0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24E601704(a1, &qword_27F21E6F0, &unk_24F96E1E0);
    sub_24E98FC84(a2, &qword_27F213348, &qword_24F95CDD0, sub_24EB551BC, sub_24E8B2930, v7);
    sub_24E6585F8(a2);
    return sub_24E601704(v7, &qword_27F21E6F0, &unk_24F96E1E0);
  }

  else
  {
    sub_24E6009C8(a1, v11, &qword_27F213348, &qword_24F95CDD0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_24E81F9C0(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a2);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_24E98A534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_24E8220DC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_24E76D97C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_24E8B5974();
        v11 = v13;
      }

      result = sub_24EB55CC8(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_24E98A5F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6F8, &unk_24F96E1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213330, &qword_24F93AB00);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24E601704(a1, &qword_27F21E6F8, &unk_24F96E1F0);
    sub_24E98FC84(a2, &qword_27F213330, &qword_24F93AB00, sub_24EB56140, sub_24E8B7948, v7);
    sub_24E6585F8(a2);
    return sub_24E601704(v7, &qword_27F21E6F8, &unk_24F96E1F0);
  }

  else
  {
    sub_24E6009C8(a1, v11, &qword_27F213330, &qword_24F93AB00);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_24E822E3C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24E6585F8(a2);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_24E98A7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223258, &qword_24F984A50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for PaginatedShelfContent(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v18 + 48))(a1, 1, v15) == 1)
  {
    sub_24E601704(a1, &qword_27F223258, &qword_24F984A50);
    sub_24E990414(a2, a3, a4, a5, v13);

    return sub_24E601704(v13, &qword_27F223258, &qword_24F984A50);
  }

  else
  {
    sub_24E990FE4(a1, v17, type metadata accessor for PaginatedShelfContent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_24E82310C(v17, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v22;
  }

  return result;
}

uint64_t static MediaClickMetricsEvent.fillIn(template:targetType:targetId:actionType:actionContext:position:)(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, char a7)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = sub_24F928688();
  v12 = MEMORY[0x277D837D0];
  v43 = MEMORY[0x277D837D0];
  *&v42 = 0x6B63696C63;
  *(&v42 + 1) = 0xE500000000000000;
  sub_24E612B0C(&v42, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v44 = v11;
  if (v7 == 2)
  {
    sub_24E98EF1C(0x7954746567726174, 0xEA00000000006570, &v42);
    sub_24E601704(&v42, &qword_27F2129B0, &unk_24F945320);
    if (v8 > 2)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (v8)
    {
      if (v8 == 1)
      {
        v14 = 0xE500000000000000;
        v15 = 0x6573756170;
      }

      else
      {
        v14 = 0xE400000000000000;
        v15 = 1702131053;
      }
    }

    else
    {
      v14 = 0xE400000000000000;
      v15 = 2036427888;
    }

    goto LABEL_21;
  }

  v16 = 0x6E6F74747562;
  if (v7)
  {
    v16 = 0x616964656DLL;
  }

  v17 = 0xE600000000000000;
  v43 = v12;
  if (v7)
  {
    v17 = 0xE500000000000000;
  }

  *&v42 = v16;
  *(&v42 + 1) = v17;
  sub_24E612B0C(&v42, v41);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x7954746567726174, 0xEA00000000006570, v18);
  v44 = v11;
  if (v8 <= 2)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v8 == 3)
  {
    v14 = 0xEA00000000006E65;
    v15 = 0x657263736C6C7566;
  }

  else
  {
    if (v8 != 4)
    {
      sub_24E98EF1C(0x6449746567726174, 0xE800000000000000, &v42);
      sub_24E601704(&v42, &qword_27F2129B0, &unk_24F945320);
      if (v9 > 2)
      {
        goto LABEL_22;
      }

LABEL_17:
      if (v9)
      {
        if (v9 == 1)
        {
          v19 = 0xE500000000000000;
          v20 = 0x6573756170;
        }

        else
        {
          v19 = 0xE400000000000000;
          v20 = 1702131053;
        }
      }

      else
      {
        v19 = 0xE400000000000000;
        v20 = 2036427888;
      }

LABEL_30:
      v23 = a7;
      v43 = v12;
      *&v42 = v20;
      *(&v42 + 1) = v19;
      sub_24E612B0C(&v42, v41);
      v24 = v44;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_24E81C1D4(v41, 0x79546E6F69746361, 0xEA00000000006570, v25);
      v44 = v24;
      if (v10 == 2)
      {
        goto LABEL_31;
      }

LABEL_34:
      v31 = 0x656E696C6E69;
      if (v10)
      {
        v31 = 0x657263736C6C7566;
      }

      v32 = 0xEA00000000006E65;
      v43 = v12;
      if ((v10 & 1) == 0)
      {
        v32 = 0xE600000000000000;
      }

      *&v42 = v31;
      *(&v42 + 1) = v32;
      sub_24E612B0C(&v42, v41);
      v33 = v44;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      sub_24E81C1D4(v41, 0x6F436E6F69746361, 0xED0000747865746ELL, v34);
      v44 = v33;
      if ((v23 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_39:
      v30 = v44;
      goto LABEL_40;
    }

    v14 = 0xE600000000000000;
    v15 = 0x656E696C6E69;
  }

LABEL_21:
  v43 = v12;
  *&v42 = v15;
  *(&v42 + 1) = v14;
  sub_24E612B0C(&v42, v41);
  v21 = v44;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x6449746567726174, 0xE800000000000000, v22);
  v44 = v21;
  if (v9 <= 2)
  {
    goto LABEL_17;
  }

LABEL_22:
  if (v9 <= 4)
  {
    if (v9 == 3)
    {
      v19 = 0xE600000000000000;
      v20 = 0x6574756D6E75;
    }

    else
    {
      v19 = 0xEF6E65657263736CLL;
      v20 = 0x6C75467265746E65;
    }

    goto LABEL_30;
  }

  if (v9 == 5)
  {
    v19 = 0xEE006E6565726373;
    v20 = 0x6C6C754674697865;
    goto LABEL_30;
  }

  sub_24E98EF1C(0x79546E6F69746361, 0xEA00000000006570, &v42);
  sub_24E601704(&v42, &qword_27F2129B0, &unk_24F945320);
  v23 = a7;
  if (v10 != 2)
  {
    goto LABEL_34;
  }

LABEL_31:
  sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &v42);
  sub_24E601704(&v42, &qword_27F2129B0, &unk_24F945320);
  if (v23)
  {
    goto LABEL_39;
  }

LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223198, &qword_24F96D8B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_24E99058C(a6, 0);
  v27 = sub_24E609EA4(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2231A0, &qword_24F96D8C0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231A8, &qword_24F96D8C8);
  *&v42 = v27;
  sub_24E612B0C(&v42, v41);
  v28 = v44;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x65446E6F69746361, 0xED0000736C696174, v29);
  v30 = v28;
LABEL_40:
  sub_24F928648();
  sub_24F928638();
  if (*(v30 + 16))
  {
    v35 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v36)
    {
      sub_24E643A9C(*(v30 + 56) + 32 * v35, &v42);
      if (swift_dynamicCast())
      {
        v37 = HIBYTE(*(&v41[0] + 1)) & 0xFLL;
        if ((*(&v41[0] + 1) & 0x2000000000000000) == 0)
        {
          v37 = *&v41[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v37)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

void *ClickMetricsEvent.__allocating_init(targetType:targetId:including:excluding:eventFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[6] = a1;
  result[7] = a2;
  result[4] = a3;
  result[5] = a4;
  result[8] = a5;
  result[9] = a6;
  v15 = MEMORY[0x277D84F90];
  result[2] = a7;
  result[3] = v15;
  return result;
}

GameStoreKit::MetricsEvent::PageLifecycleInvocationPoint_optional __swiftcall MetricsEvent.PageLifecycleInvocationPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MetricsEvent.PageLifecycleInvocationPoint.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65746E4565676170;
  v3 = 0x72656D6974;
  if (v1 != 5)
  {
    v3 = 0x726576656ELL;
  }

  v4 = 0x7265746E45707061;
  if (v1 != 3)
  {
    v4 = 0x747475426B636162;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7469784565676170;
  if (v1 != 1)
  {
    v5 = 0x74697845707061;
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

uint64_t sub_24E98B26C(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24E98B390(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x65746E4565676170;
  v5 = 0xE500000000000000;
  v6 = 0x72656D6974;
  if (v2 != 5)
  {
    v6 = 0x726576656ELL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7265746E45707061;
  if (v2 != 3)
  {
    v8 = 0x747475426B636162;
    v7 = 0xEA00000000006E6FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7469784565676170;
  if (v2 != 1)
  {
    v10 = 0x74697845707061;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24E98B470()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v4)
    {
      sub_24E643A9C(*(v1 + 56) + 32 * v3, v9);
      if (swift_dynamicCast())
      {
        v5 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v5 = *v7 & 0xFFFFFFFFFFFFLL;
        }

        if (!v5)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

uint64_t MetricsEvent.__allocating_init(eventFields:invocationPoints:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MetricsEvent.init(eventFields:invocationPoints:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AppEnterMetricsEvent.EnterKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x746977536B736174;
  }

  else
  {
    return 0x68636E75616CLL;
  }
}

uint64_t sub_24E98B64C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746977536B736174;
  }

  else
  {
    v3 = 0x68636E75616CLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000006863;
  }

  if (*a2)
  {
    v5 = 0x746977536B736174;
  }

  else
  {
    v5 = 0x68636E75616CLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006863;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E98B6F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E98B778(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E98B7E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E98B874(uint64_t *a1@<X8>)
{
  v2 = 0x68636E75616CLL;
  if (*v1)
  {
    v2 = 0x746977536B736174;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006863;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static AppEnterMetricsEvent.makeData(enterKind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  *(inited + 16) = xmmword_24F93A400;
  v3 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x7265746E65;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v3;
  *(inited + 80) = 1701869940;
  v4 = 0x68636E75616CLL;
  if (v1)
  {
    v4 = 0x746977536B736174;
  }

  v5 = 0xE600000000000000;
  if (v1)
  {
    v5 = 0xEA00000000006863;
  }

  *(inited + 120) = v3;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  v6 = sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v7 = sub_24F92A2C8();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93DE60;
  sub_24F92A2B8();
  sub_24E805DFC(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);
  swift_deallocClassInstance();
  if (*(v6 + 16))
  {
    v11 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v12)
    {
      sub_24E643A9C(*(v6 + 56) + 32 * v11, v17);
      if (swift_dynamicCast())
      {
        v13 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v13 = *v15 & 0xFFFFFFFFFFFFLL;
        }

        if (!v13)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

uint64_t static AppExitMetricsEvent.makeData()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x707954746E657665;
  v1 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 1953069157;
  *(inited + 56) = 0xE400000000000000;
  v2 = sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(v1, &qword_27F2135C0, &qword_24F970400);
  if (*(v2 + 16))
  {
    v3 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v4)
    {
      sub_24E643A9C(*(v2 + 56) + 32 * v3, v9);
      if (swift_dynamicCast())
      {
        v5 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v5 = *v7 & 0xFFFFFFFFFFFFLL;
        }

        if (!v5)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

void *static ClickMetricsEvent.tabClickEvent(named:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D837D0];
  v28 = MEMORY[0x277D837D0];
  *&v27 = 0x7463656C6573;
  *(&v27 + 1) = 0xE600000000000000;
  sub_24E612B0C(&v27, v26);
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v26, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v7 = MEMORY[0x277D83B88];
  v28 = MEMORY[0x277D83B88];
  *&v27 = a3;
  sub_24E612B0C(&v27, v26);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v26, 0xD000000000000010, 0x800000024FA45740, v8);
  v28 = v4;
  *&v27 = 6447476;
  *(&v27 + 1) = 0xE300000000000000;
  sub_24E612B0C(&v27, v26);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v26, 0x6E6F697461636F6CLL, 0xEC00000065707954, v9);
  v28 = v7;
  *&v27 = 0;
  sub_24E612B0C(&v27, v26);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v26, 0xD000000000000010, 0x800000024FA45740, v10);
  v28 = v4;
  *&v27 = 0x726142626174;
  *(&v27 + 1) = 0xE600000000000000;
  sub_24E612B0C(&v27, v26);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v26, 0x6E6F697461636F6CLL, 0xEC00000065707954, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231B0, &unk_24F96D8E8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93A400;
  *(v12 + 32) = v5;
  *(v12 + 40) = v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
  *&v27 = v12;
  sub_24E612B0C(&v27, v26);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v26, 0x6E6F697461636F6CLL, 0xE800000000000000, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v14 = sub_24F92A2C8();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F93DE60;
  if (qword_27F2102B8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_27F229C80);
  (*(v15 + 16))(v17 + v16, v18, v14);
  v19 = sub_24E805DFC(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v20 = swift_allocObject();
  v20[6] = 6447476;
  v20[7] = 0xE300000000000000;
  v20[4] = a1;
  v20[5] = a2;
  v21 = MEMORY[0x277D84FA0];
  v20[8] = v19;
  v20[9] = v21;
  v22 = MEMORY[0x277D84F90];
  v20[2] = v5;
  v20[3] = v22;

  return v20;
}

double static ClickMetricsEvent.makeBackClickEvent()()
{
  v0 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D837D0];
  *&v15 = 1801675106;
  *(&v15 + 1) = 0xE400000000000000;
  sub_24E612B0C(&v15, v14);
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v14, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v16 = v0;
  *&v15 = 0x6B63696C63;
  *(&v15 + 1) = 0xE500000000000000;
  sub_24E612B0C(&v15, v14);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v14, 0x707954746E657665, 0xE900000000000065, v3);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v5 = sub_24F92A2C8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F92A298();
  v9 = sub_24E805DFC(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v10 = swift_allocObject();
  *(v10 + 48) = 0x6E6F74747562;
  *(v10 + 56) = 0xE600000000000000;
  result = 2.08576518e-306;
  *(v10 + 32) = xmmword_24F96D890;
  v12 = MEMORY[0x277D84FA0];
  *(v10 + 64) = v9;
  *(v10 + 72) = v12;
  v13 = MEMORY[0x277D84F90];
  *(v10 + 16) = v4;
  *(v10 + 24) = v13;
  return result;
}

uint64_t sub_24E98C2FC()
{
  v1 = v0;
  v2 = MEMORY[0x277D837D0];
  v3 = v0[2];
  v19 = MEMORY[0x277D837D0];
  *&v18 = 0x6B63696C63;
  *(&v18 + 1) = 0xE500000000000000;
  sub_24E612B0C(&v18, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v3;
  sub_24E81C1D4(v17, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v5 = v20;
  v6 = v1[6];
  v7 = v1[7];
  v19 = v2;
  *&v18 = v6;
  *(&v18 + 1) = v7;
  sub_24E612B0C(&v18, v17);

  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v17, 0x7954746567726174, 0xEA00000000006570, v8);
  v20 = v5;
  v9 = v1[5];
  if (v9)
  {
    v10 = v1[4];
    v19 = v2;
    *&v18 = v10;
    *(&v18 + 1) = v9;
    sub_24E612B0C(&v18, v17);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v17, 0x6449746567726174, 0xE800000000000000, v11);
  }

  else
  {
    sub_24E98EF1C(0x6449746567726174, 0xE800000000000000, &v18);
    sub_24E601704(&v18, &qword_27F2129B0, &unk_24F945320);
    v5 = v20;
  }

  v12 = *(v5 + 16);

  if (v12)
  {
    v13 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v14)
    {
      sub_24E643A9C(*(v5 + 56) + 32 * v13, &v18);
      if (swift_dynamicCast())
      {
        v15 = HIBYTE(*(&v17[0] + 1)) & 0xFLL;
        if ((*(&v17[0] + 1) & 0x2000000000000000) == 0)
        {
          v15 = *&v17[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

void *ClickMetricsEvent.init(targetType:targetId:including:excluding:eventFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a1;
  v7[7] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[8] = a5;
  v7[9] = a6;
  v8 = MEMORY[0x277D84F90];
  v7[2] = a7;
  v7[3] = v8;
  return v7;
}

uint64_t sub_24E98C5A0()
{
}

uint64_t ClickMetricsEvent.deinit()
{

  return v0;
}

uint64_t ClickMetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

GameStoreKit::MediaClickMetricsEvent::ActionType_optional __swiftcall MediaClickMetricsEvent.ActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaClickMetricsEvent.ActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 2036427888;
  v3 = 0x6574756D6E75;
  v4 = 0x6C75467265746E65;
  if (v1 != 4)
  {
    v4 = 0x6C6C754674697865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6573756170;
  if (v1 != 1)
  {
    v5 = 1702131053;
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

uint64_t sub_24E98C7D4(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24E98C8D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xE600000000000000;
  v6 = 0x6574756D6E75;
  v7 = 0xEF6E65657263736CLL;
  v8 = 0x6C75467265746E65;
  if (v2 != 4)
  {
    v8 = 0x6C6C754674697865;
    v7 = 0xEE006E6565726373;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6573756170;
  if (v2 != 1)
  {
    v10 = 1702131053;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

GameStoreKit::MediaClickMetricsEvent::TargetId_optional __swiftcall MediaClickMetricsEvent.TargetId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaClickMetricsEvent.TargetId.rawValue.getter()
{
  v1 = *v0;
  v2 = 2036427888;
  v3 = 1702131053;
  v4 = 0x657263736C6C7566;
  if (v1 != 3)
  {
    v4 = 0x656E696C6E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6573756170;
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

uint64_t sub_24E98CAA0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E98CB70(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E98CC2C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E98CD04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xE400000000000000;
  v6 = 1702131053;
  v7 = 0xEA00000000006E65;
  v8 = 0x657263736C6C7566;
  if (v2 != 3)
  {
    v8 = 0x656E696C6E69;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6573756170;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t MediaClickMetricsEvent.TargetType.rawValue.getter()
{
  if (*v0)
  {
    return 0x616964656DLL;
  }

  else
  {
    return 0x6E6F74747562;
  }
}

uint64_t sub_24E98CDD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616964656DLL;
  }

  else
  {
    v3 = 0x6E6F74747562;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x616964656DLL;
  }

  else
  {
    v5 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E98CE70()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E98CEEC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E98CF54()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E98CFD8(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F74747562;
  if (*v1)
  {
    v2 = 0x616964656DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24E98D044(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_24E98D0D4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v13 = MEMORY[0x277D837D0];
  *&v12 = 1701273968;
  *(&v12 + 1) = 0xE400000000000000;
  sub_24E612B0C(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v11, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4 != 2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v13 = sub_24E9421D0();
    *&v12 = v5;
    sub_24E612B0C(&v12, v11);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v11, 0x6E6F737265507369, 0xEE0064657A696C61, v6);
  }

  if (*(v2 + 16))
  {
    v7 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v8)
    {
      sub_24E643A9C(*(v2 + 56) + 32 * v7, &v12);
      if (swift_dynamicCast())
      {
        v9 = HIBYTE(*(&v11[0] + 1)) & 0xFLL;
        if ((*(&v11[0] + 1) & 0x2000000000000000) == 0)
        {
          v9 = *&v11[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

uint64_t PageMetricsEvent.__allocating_init(error:pageUrl:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PageMetricsEvent.init(error:pageUrl:)(a1, a2, a3);
  return v6;
}

uint64_t PageMetricsEvent.init(error:pageUrl:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 32) = 2;
  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D837D0];
  v41 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D837D0];
  *&v37 = 0x726F727245;
  *(&v37 + 1) = 0xE500000000000000;
  sub_24E612B0C(&v37, &v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(&v34, 1701273968, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v41 = v8;
  v38 = v9;
  strcpy(&v37, "AppStoreError");
  HIWORD(v37) = -4864;
  sub_24E612B0C(&v37, &v34);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *&v33[0] = v8;
  sub_24E81C1D4(&v34, 0x6570795465676170, 0xE800000000000000, v11);
  v41 = v8;
  if (a3)
  {
    v38 = v9;
    *&v37 = a2;
    *(&v37 + 1) = a3;
    sub_24E612B0C(&v37, &v34);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = v8;
    sub_24E81C1D4(&v34, 0x6C725565676170, 0xE700000000000000, v12);
    v41 = v8;
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_24E98EF1C(0x6C725565676170, 0xE700000000000000, &v37);
    sub_24E601704(&v37, &qword_27F2129B0, &unk_24F945320);
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  swift_getErrorValue();
  *&v37 = swift_getDynamicType();
  *(&v37 + 1) = v40;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231B8, &unk_24F96D8F8);
  v14 = sub_24F92B188();
  v38 = v9;
  *&v37 = v14;
  *(&v37 + 1) = v15;
  sub_24E612B0C(&v37, &v34);
  v16 = v41;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(&v34, 0x707954726F727265, 0xE900000000000065, v17);
  *&v33[0] = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0, &qword_24F96D908);
  if (swift_dynamicCast())
  {
    sub_24E612C80(&v34, &v37);
    v19 = v38;
    v20 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, v38);
    v21 = (*(v20 + 16))(v19, v20);
    *(&v35 + 1) = v9;
    *&v34 = v21;
    *(&v34 + 1) = v22;
    sub_24E612B0C(&v34, v33);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v33, 0xD000000000000010, 0x800000024FA4BBE0, v23);
    v41 = v16;
    v24 = v39;
    v25 = __swift_project_boxed_opaque_existential_1(&v37, v38);
    v26 = MEMORY[0x28223BE20](v25);
    (*(v24 + 24))(sub_24E990914, v26);

    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_24E601704(&v34, &qword_27F2231C8, &unk_24F96D910);
    swift_getErrorValue();
    v27 = sub_24F92CFE8();
    v38 = v9;
    *&v37 = v27;
    *(&v37 + 1) = v28;
    sub_24E612B0C(&v37, &v34);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = v16;
    sub_24E81C1D4(&v34, 0xD000000000000010, 0x800000024FA4BBE0, v29);

    v41 = v16;
  }

LABEL_8:
  *(v4 + 33) = 0;
  v30 = v41;

  v31 = MEMORY[0x277D84F90];
  *(v4 + 16) = v30;
  *(v4 + 24) = v31;

  return v4;
}

uint64_t sub_24E98D7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E643A9C(a3, v6);

  return sub_24E98859C(v6, a1, a2);
}

uint64_t sub_24E98D82C()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_24E76D644(0x6C725565676170, 0xE700000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E98D900()
{
  v0 = sub_24F928698();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E98B470();
  v4 = sub_24F928688();
  (*(v1 + 8))(v3, v0);
  v24 = MEMORY[0x277D837D0];
  *&v23 = 0x686372616573;
  *(&v23 + 1) = 0xE600000000000000;
  sub_24E612B0C(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v4;
  sub_24E81C1D4(v22, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v6 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v7 = sub_24F92A2C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93A400;
  v12 = v11 + v10;
  if (qword_27F2102B0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27F229C68);
  v14 = *(v8 + 16);
  v14(v12, v13, v7);
  if (qword_27F2102E0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_27F229CF8);
  v14(v12 + v9, v15, v7);
  sub_24E805DFC(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v6 + 16))
  {
    v16 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v17)
    {
      sub_24E643A9C(*(v6 + 56) + 32 * v16, &v23);
      if (swift_dynamicCast())
      {
        v18 = HIBYTE(*(&v22[0] + 1)) & 0xFLL;
        if ((*(&v22[0] + 1) & 0x2000000000000000) == 0)
        {
          v18 = *&v22[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v18)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

uint64_t SearchMetricsEvent.__allocating_init(eventFields:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t SearchMetricsEvent.init(eventFields:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t _s12GameStoreKit12MetricsEventCfd_0()
{

  return v0;
}

uint64_t sub_24E98DD1C(uint64_t a1)
{

  return swift_deallocClassInstance();
}

GameStoreKit::MediaMetricsEvent::ActionType_optional __swiftcall MediaMetricsEvent.ActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaMetricsEvent.ActionType.rawValue.getter()
{
  v1 = 2036427888;
  v2 = 1801807219;
  if (*v0 != 2)
  {
    v2 = 0x756A644165746172;
  }

  if (*v0)
  {
    v1 = 1886352499;
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

uint64_t sub_24E98DE38()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E98DEE8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E98DF84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E98E03C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 2036427888;
  v4 = 0xE400000000000000;
  v5 = 1801807219;
  if (*v1 != 2)
  {
    v5 = 0x756A644165746172;
    v4 = 0xEA00000000007473;
  }

  if (*v1)
  {
    v3 = 1886352499;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

GameStoreKit::MediaMetricsEvent::ActionDetails_optional __swiftcall MediaMetricsEvent.ActionDetails.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaMetricsEvent.ActionDetails.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x79616C706F747561;
    v8 = 0x737561706F747561;
    if (v1 != 10)
    {
      v8 = 0x726174736F747561;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x64656E6E6162;
    v10 = 0x736572756C696166;
    if (v1 != 7)
    {
      v10 = 0x7075727265746E69;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6574656C706D6F63;
    v3 = 0x7478654E70696B73;
    v4 = 0x7665725070696B73;
    if (v1 != 4)
    {
      v4 = 0x6568744F79616C70;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6573756170;
    if (v1 != 1)
    {
      v5 = 0x6976697463616E69;
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
}

uint64_t sub_24E98E294()
{
  v0 = MediaMetricsEvent.ActionDetails.rawValue.getter();
  v2 = v1;
  if (v0 == MediaMetricsEvent.ActionDetails.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24E98E330()
{
  sub_24F92D068();
  MediaMetricsEvent.ActionDetails.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E98E398(uint64_t a1)
{
  MediaMetricsEvent.ActionDetails.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24E98E3FC()
{
  sub_24F92D068();
  MediaMetricsEvent.ActionDetails.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E98E46C@<X0>(uint64_t *a1@<X8>)
{
  result = MediaMetricsEvent.ActionDetails.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24E98E4A0@<X0>(char *a4@<X8>)
{
  v5 = sub_24F92CB88();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t MediaMetricsEvent.ActionContext.rawValue.getter()
{
  if (*v0)
  {
    return 0x657263736C6C7566;
  }

  else
  {
    return 0x656E696C6E69;
  }
}

uint64_t sub_24E98E540(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657263736C6C7566;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E65;
  }

  if (*a2)
  {
    v5 = 0x657263736C6C7566;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E65;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E98E5EC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E98E670(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E98E6E4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E98E770@<X0>(char *a3@<X8>)
{
  v4 = sub_24F92CB88();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_24E98E7CC(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x657263736C6C7566;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static MediaMetricsEvent.fillIn(template:actionType:actionDetails:actionContext:url:duration:position:)@<X0>(unsigned __int8 *a1@<X1>, unsigned __int8 *a2@<X2>, unsigned __int8 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9)
{
  v56[0] = a7;
  v56[1] = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v56 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = *a3;
  v21 = sub_24F928688();
  v22 = MEMORY[0x277D837D0];
  v60 = MEMORY[0x277D837D0];
  *&v59 = 0x616964656DLL;
  *(&v59 + 1) = 0xE500000000000000;
  sub_24E612B0C(&v59, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v21;
  sub_24E81C1D4(v58, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v24 = v57;
  v61 = v57;
  if (v18 <= 1)
  {
    v25 = 0xE400000000000000;
    if (v18)
    {
      v26 = 1886352499;
    }

    else
    {
      v26 = 2036427888;
    }
  }

  else if (v18 == 2)
  {
    v25 = 0xE400000000000000;
    v26 = 1801807219;
  }

  else
  {
    if (v18 != 3)
    {
      sub_24E98EF1C(0x79546E6F69746361, 0xEA00000000006570, &v59);
      sub_24E601704(&v59, &qword_27F2129B0, &unk_24F945320);
      if (v19 == 12)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    v25 = 0xEA00000000007473;
    v26 = 0x756A644165746172;
  }

  v60 = v22;
  *&v59 = v26;
  *(&v59 + 1) = v25;
  sub_24E612B0C(&v59, v58);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v24;
  sub_24E81C1D4(v58, 0x79546E6F69746361, 0xEA00000000006570, v35);
  v61 = v57;
  if (v19 == 12)
  {
LABEL_17:
    sub_24E98EF1C(0x65446E6F69746361, 0xED0000736C696174, &v59);
    sub_24E601704(&v59, &qword_27F2129B0, &unk_24F945320);
    if (v20 == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_9:
  LOBYTE(v58[0]) = v19;
  v27 = MediaMetricsEvent.ActionDetails.rawValue.getter();
  v60 = v22;
  *&v59 = v27;
  *(&v59 + 1) = v28;
  sub_24E612B0C(&v59, v58);
  v29 = v61;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v29;
  sub_24E81C1D4(v58, 0x65446E6F69746361, 0xED0000736C696174, v30);
  v61 = v57;
  if (v20 == 2)
  {
LABEL_18:
    sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &v59);
    sub_24E601704(&v59, &qword_27F2129B0, &unk_24F945320);
    goto LABEL_19;
  }

LABEL_10:
  v31 = 0x656E696C6E69;
  if (v20)
  {
    v31 = 0x657263736C6C7566;
  }

  v32 = 0xEA00000000006E65;
  v60 = v22;
  if ((v20 & 1) == 0)
  {
    v32 = 0xE600000000000000;
  }

  *&v59 = v31;
  *(&v59 + 1) = v32;
  sub_24E612B0C(&v59, v58);
  v33 = v61;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v33;
  sub_24E81C1D4(v58, 0x6F436E6F69746361, 0xED0000747865746ELL, v34);
  v61 = v57;
LABEL_19:
  sub_24E99091C(a4, v17);
  v36 = sub_24F91F4A8();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    sub_24E601704(v17, &qword_27F228530, &unk_24F93C6E0);
    sub_24E98EF1C(7107189, 0xE300000000000000, &v59);
    sub_24E601704(&v59, &qword_27F2129B0, &unk_24F945320);
    v38 = a9;
    if (a6)
    {
LABEL_25:
      if (v38)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v39 = sub_24F91F398();
    v60 = v22;
    *&v59 = v39;
    *(&v59 + 1) = v40;
    (*(v37 + 8))(v17, v36);
    sub_24E612B0C(&v59, v58);
    v41 = v61;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v41;
    sub_24E81C1D4(v58, 7107189, 0xE300000000000000, v42);
    v61 = v57;
    v38 = a9;
    if (a6)
    {
      goto LABEL_25;
    }
  }

  v43 = sub_24E99058C(a5, 0);
  if (v43)
  {
    v44 = v43;
    v60 = sub_24E9421D0();
    *&v59 = v44;
    sub_24E612B0C(&v59, v58);
    v45 = v61;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v45;
    sub_24E81C1D4(v58, 0x6E6F697461727564, 0xE800000000000000, v46);
    v61 = v57;
    goto LABEL_25;
  }

  sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &v59);
  sub_24E601704(&v59, &qword_27F2129B0, &unk_24F945320);
  if (v38)
  {
    goto LABEL_31;
  }

LABEL_26:
  v47 = sub_24E99058C(v56[0], 0);
  if (v47)
  {
    v48 = v47;
    v60 = sub_24E9421D0();
    *&v59 = v48;
    sub_24E612B0C(&v59, v58);
    v49 = v61;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v49;
    sub_24E81C1D4(v58, 0x6E6F697469736F70, 0xE800000000000000, v50);
    v61 = v57;
  }

  else
  {
    sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &v59);
    sub_24E601704(&v59, &qword_27F2129B0, &unk_24F945320);
  }

LABEL_31:
  v51 = v61;
  sub_24F928648();
  sub_24F928638();
  if (*(v51 + 16))
  {
    v52 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v53)
    {
      sub_24E643A9C(*(v51 + 56) + 32 * v52, &v59);
      if (swift_dynamicCast())
      {
        v54 = HIBYTE(*(&v58[0] + 1)) & 0xFLL;
        if ((*(&v58[0] + 1) & 0x2000000000000000) == 0)
        {
          v54 = *&v58[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v54)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

double sub_24E98EF1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_24E76D644(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8AD8E4();
      v10 = v12;
    }

    sub_24E612B0C((*(v10 + 56) + 32 * v8), a3);
    sub_24EB52998(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_24E98EFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24E76D644(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8AE0F8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_24F91F648();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_24EB52FA4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_24F91F648();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_24E98F16C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24E76DD40(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8AE46C();
      v9 = v14;
    }

    sub_24E772780(*(v9 + 48) + 40 * v7);
    v10 = *(v9 + 56) + 88 * v7;
    v11 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = *(v10 + 80);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    sub_24EB52FBC(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_24E98F238@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24E76D644(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8AEA70();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_24EB53178(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24E98F334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24E76DF04(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8AF2C0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Game(0);
    v20 = *(v13 - 8);
    sub_24E990FE4(v12 + *(v20 + 72) * v7, a2, type metadata accessor for Game);
    sub_24EB53518(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Game(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24E98F518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_24E76D644(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a7, v19 + *(v27 + 72) * v16, v20);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_24E98F6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_24E76D644(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B02C8();
      v10 = v12;
    }

    v11 = *(v10 + 56) + 24 * v8;
    *a3 = *v11;
    *(a3 + 8) = *(v11 + 8);
    result = sub_24EB5BA08(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double sub_24E98F760@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_24E76D934(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B0610();
      v9 = v11;
    }

    sub_24E6585F8(*(v9 + 48) + 40 * v7);
    sub_24E612B0C((*(v9 + 56) + 32 * v7), a2);
    sub_24EB53A78(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_24E98F804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24E76D644(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_24E8B0A94();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_24EB53C20(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_24E98F8B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24E76D644(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_24E8B13C8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 24 * v6);
  sub_24EB5BA08(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_24E98F96C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_24E76E37C(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B1A00();
      v9 = v13;
    }

    swift_unknownObjectRelease();
    v10 = *(v9 + 56) + 24 * v7;
    v11 = *v10;
    v12 = *(v10 + 16);
    *a2 = v11;
    *(a2 + 16) = v12;
    result = sub_24EB54928(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

double sub_24E98FA18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_24E76D644(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24E98FAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24E76D644(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B208C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for GameSearchResultsTabContent(0);
    v19 = *(v12 - 8);
    sub_24E990FE4(v11 + *(v19 + 72) * v8, a3, type metadata accessor for GameSearchResultsTabContent);
    sub_24EB54C98(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for GameSearchResultsTabContent(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_24E98FC84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_24E76D934(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v27 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v27;
    }

    sub_24E6585F8(*(v17 + 48) + 40 * v15);
    v18 = *(v17 + 56);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v26 = *(v19 - 8);
    sub_24E6009C8(v18 + *(v26 + 72) * v15, a6, a2, a3);
    a4(v15, v17);
    *v11 = v17;
    v20 = *(v26 + 56);
    v21 = a6;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a6;
    v22 = 1;
  }

  return v20(v21, v22, 1, v23);
}

double sub_24E98FE14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_24E7728F0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B347C();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + (v8 << 6));
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    v13 = v11[3];
    a3[2] = v11[2];
    a3[3] = v13;
    sub_24EB551D0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = xmmword_24F962330;
  }

  return result;
}

uint64_t sub_24E98FECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24E7728F0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_24E8B361C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 24 * v6);
  sub_24EB545B0(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_24E98FF88@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E7728EC();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v13 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B3D4C();
      v8 = v13;
    }

    v9 = (*(v8 + 56) + (v6 << 6));
    v10 = v9[1];
    *a1 = *v9;
    a1[1] = v10;
    v11 = v9[3];
    a1[2] = v9[2];
    a1[3] = v11;
    sub_24EB55388(v6, v8);
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_24E990054@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v8 = v5;
  v10 = sub_24E76D644(a1, a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    v18 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v14 = v18;
    }

    v15 = *(v14 + 56) + 40 * v12;
    v16 = *(v15 + 16);
    *a5 = *v15;
    *(a5 + 16) = v16;
    *(a5 + 32) = *(v15 + 32);
    a3(v12, v14);
    *v8 = v14;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24E990120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24E76E7F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B5158();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_24F91F6B8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E10, &unk_24F93AB90);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_24EB55978(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E10, &unk_24F93AB90);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24E9902D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24E76D644(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_24E8B5AD4();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_24EB5BA04(v6, v8, v10);
  *v3 = v8;
  return v9;
}

double sub_24E990370@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_24E76D644(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B6488();
      v10 = v14;
    }

    v11 = (*(v10 + 56) + 32 * v8);
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    sub_24EB52998(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_24E990414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_24E76D9B8(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B86C8();
      v12 = v22;
    }

    v13 = *(v12 + 56);
    v14 = type metadata accessor for PaginatedShelfContent(0);
    v21 = *(v14 - 8);
    sub_24E990FE4(v13 + *(v21 + 72) * v10, a5, type metadata accessor for PaginatedShelfContent);
    sub_24EB56344(v10, v12);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for PaginatedShelfContent(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_24E99058C(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || *&result <= 0.0)
  {
    *&result = 0.0;
    return result;
  }

  v2 = *&result * 1000.0;
  if (COERCE_UNSIGNED_INT64(*&result * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
  }

  else if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      *&result = COERCE_DOUBLE([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_]);
      return result;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

double _s12GameStoreKit17ClickMetricsEventC014makeErrorRetryF0ACyFZ_0()
{
  v0 = MEMORY[0x277D837D0];
  v21 = MEMORY[0x277D837D0];
  *&v20 = 0x7972746572;
  *(&v20 + 1) = 0xE500000000000000;
  sub_24E612B0C(&v20, v19);
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v19, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v21 = v0;
  *&v20 = 0x726F727245;
  *(&v20 + 1) = 0xE500000000000000;
  sub_24E612B0C(&v20, v19);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v19, 1701273968, 0xE400000000000000, v3);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v5 = sub_24F92A2C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93A400;
  v10 = v9 + v8;
  if (qword_27F2102B8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27F229C80);
  v12 = *(v6 + 16);
  v12(v10, v11, v5);
  if (qword_27F2102A0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27F229C38);
  v12(v10 + v7, v13, v5);
  v14 = sub_24E805DFC(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v15 = swift_allocObject();
  *(v15 + 48) = 0x6E6F74747562;
  *(v15 + 56) = 0xE600000000000000;
  *&result = 0x7972746552;
  *(v15 + 32) = xmmword_24F96D8A0;
  v17 = MEMORY[0x277D84FA0];
  *(v15 + 64) = v14;
  *(v15 + 72) = v17;
  v18 = MEMORY[0x277D84F90];
  *(v15 + 16) = v4;
  *(v15 + 24) = v18;
  return result;
}

uint64_t sub_24E99091C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E990990()
{
  result = qword_27F2231D0;
  if (!qword_27F2231D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2231D0);
  }

  return result;
}

unint64_t sub_24E9909E8()
{
  result = qword_27F2231D8;
  if (!qword_27F2231D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2231D8);
  }

  return result;
}

unint64_t sub_24E990A40()
{
  result = qword_27F2231E0;
  if (!qword_27F2231E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2231E0);
  }

  return result;
}

unint64_t sub_24E990A98()
{
  result = qword_27F2231E8;
  if (!qword_27F2231E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2231E8);
  }

  return result;
}

unint64_t sub_24E990AF0()
{
  result = qword_27F2231F0;
  if (!qword_27F2231F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2231F0);
  }

  return result;
}

unint64_t sub_24E990B48()
{
  result = qword_27F2231F8;
  if (!qword_27F2231F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2231F8);
  }

  return result;
}

unint64_t sub_24E990BA0()
{
  result = qword_27F223200;
  if (!qword_27F223200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223200);
  }

  return result;
}

unint64_t sub_24E990BF8()
{
  result = qword_27F223208;
  if (!qword_27F223208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223208);
  }

  return result;
}

unint64_t sub_24E990C50()
{
  result = qword_27F223210;
  if (!qword_27F223210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223210);
  }

  return result;
}

uint64_t sub_24E990CA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_24E990CEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_24E990FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E9910A0()
{
  v0 = sub_24F91FCF8();
  MEMORY[0x28223BE20](v0 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDD8, &qword_24F957880);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDC8, &qword_24F957870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v6 = sub_24F91FAA8();
  v7 = swift_dynamicCastClass();
  v39 = v6;
  if (v7)
  {

    sub_24F91FD48();
    v8 = sub_24F91FB48();
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) != 1)
    {
      sub_24E991638(v4);

      MEMORY[0x253050F00](v9);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_44;
      }

      goto LABEL_5;
    }

    sub_24E991638(v4);
  }

LABEL_6:
  sub_24F91FD28();
  sub_24F91FAE8();
  v10 = v40;
  sub_24F91FCD8();
  v11 = v41;
  sub_24F91FCE8();
  v12 = v46[0];
  if (v46[0])
  {
    while (1)
    {
      v13 = sub_24E9910A0();
      v14 = v13;
      v15 = v13 >> 62;
      v16 = v13 >> 62 ? sub_24F92C738() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v5 >> 62;
      if (v5 >> 62)
      {
        v35 = sub_24F92C738();
        v19 = v35 + v16;
        if (__OFADD__(v35, v16))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      else
      {
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_38;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v17)
      {
        goto LABEL_19;
      }

LABEL_20:
      v5 = sub_24F92C8F8();
      v20 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v44 = v12;
      v45 = v16;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v15)
      {
        v24 = v20;
        v25 = sub_24F92C738();
        v20 = v24;
        v23 = v25;
        if (v25)
        {
LABEL_25:
          if (((v22 >> 1) - v21) < v45)
          {
            goto LABEL_41;
          }

          v26 = v20 + 8 * v21 + 32;
          v43 = v20;
          if (v15)
          {
            if (v23 < 1)
            {
              goto LABEL_43;
            }

            v42 = v5;
            sub_24E9915D4();
            for (i = 0; i != v23; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223260, &qword_24F96E208);
              v29 = sub_24E951BEC(v46, i, v14);
              v31 = *v30;

              (v29)(v46, 0);
              *(v26 + 8 * i) = v31;
            }

            v10 = v40;
            v11 = v41;
            v5 = v42;
            v27 = v45;
          }

          else
          {
            v27 = v45;
            swift_arrayInitWithCopy();
          }

          if (v27 > 0)
          {
            v32 = *(v43 + 16);
            v33 = __OFADD__(v32, v27);
            v34 = v32 + v27;
            if (v33)
            {
              goto LABEL_42;
            }

            *(v43 + 16) = v34;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_25;
        }
      }

      if (v45 > 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        sub_24F92B5E8();
LABEL_5:
        sub_24F92B638();

        v5 = v47;
        goto LABEL_6;
      }

LABEL_9:
      sub_24F91FCE8();
      v12 = v46[0];
      if (!v46[0])
      {
        goto LABEL_39;
      }
    }

    if (!v17)
    {
      v20 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_19:
    sub_24F92C738();
    goto LABEL_20;
  }

LABEL_39:
  (*(v38 + 8))(v10, v11);
  return v5;
}

unint64_t sub_24E9915D4()
{
  result = qword_27F223268;
  if (!qword_27F223268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223260, &qword_24F96E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223268);
  }

  return result;
}

uint64_t sub_24E991638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDC8, &qword_24F957870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E9916A0(double *a1, char **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  [*&(*a2)[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] setFrame_];
  [*&v6[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer] setFrame_];

  return [v6 setFrame_];
}

id sub_24E99174C(double a1, double a2, double a3, double a4)
{
  [*&v4[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] setFrame_];
  [*&v4[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer] setFrame_];

  return [v4 setFrame_];
}

void (*sub_24E9917FC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  [v1 frame];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_24E991884;
}

void sub_24E991884(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  [*&v2[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] setFrame_];
  [*&v2[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer] setFrame_];
  [v2 setFrame_];

  free(v1);
}

id ThreeDimensionalArtworkGradientBackgroundView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ThreeDimensionalArtworkGradientBackgroundView.init()()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v0[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] = v2;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for ThreeDimensionalArtworkGradientBackgroundView();
  v3 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setAccessibilityIgnoresInvertColors_];
  v4 = OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer;
  v5 = *&v3[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93A400;
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 whiteColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v13 = v12;
  *(v6 + 56) = v12;
  *(v6 + 32) = v11;
  v14 = [v7 whiteColor];
  v15 = [v14 colorWithAlphaComponent_];

  v16 = [v15 CGColor];
  *(v6 + 88) = v13;
  *(v6 + 64) = v16;
  v17 = sub_24F92B588();

  [v8 setColors_];

  [*&v3[v4] setStartPoint_];
  [*&v3[v4] setEndPoint_];
  [*&v3[v4] setZPosition_];
  v18 = OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView;
  v19 = [*&v3[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] layer];
  [v19 addSublayer_];

  v20 = *&v3[v18];
  v21 = [v7 clearColor];
  [v20 setBackgroundColor_];

  [*&v3[v18] setUserInteractionEnabled_];
  v22 = [*&v3[v18] layer];
  v23 = sub_24F92B098();
  [v22 setCompositingFilter_];

  [*&v3[v18] setAccessibilityIgnoresInvertColors_];
  [v3 addSubview_];
  [v3 setClipsToBounds_];
  [v3 _setCornerRadius_];

  return v3;
}

id ThreeDimensionalArtworkGradientBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ThreeDimensionalArtworkGradientBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThreeDimensionalArtworkGradientBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E991FA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

char *TodayCardMediaAppIcon.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = a2;
  v52 = *v3;
  v56 = sub_24F9285B8();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v43 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v11);
  v51 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v55 = &v43 - v14;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v48 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v43 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v57 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v49 = v16;
  v26 = *(v16 + 8);
  v24 = v16 + 8;
  v25 = v26;
  v26(v23, v15);
  if (a1)
  {
    v27 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v28 = 1852793705;
    v28[1] = 0xE400000000000000;
    v28[2] = v52;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    (*(v58 + 8))(v59, v56);
    v25(v57, v15);
  }

  else
  {
    v45 = v24;
    v46 = v25;
    v47 = v15;
    v52 = v3;
    sub_24F929608();
    v29 = v57;
    sub_24F928398();
    v44 = v20;
    v30 = *(v58 + 16);
    v31 = v59;
    v32 = v56;
    v30(v51, v59, v56);
    v33 = v29;
    sub_24F929548();
    v30(v10, v31, v32);
    type metadata accessor for Artwork(0);
    v34 = v44;
    sub_24F928398();
    v35 = v53;
    v30(v53, v10, v32);
    v36 = v54;
    v37 = Artwork.__allocating_init(deserializing:using:)(v34, v35);
    if (!v36)
    {
      v54 = v10;
      *(v52 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaAppIcon_icon) = v37;
      v39 = v48;
      v40 = v47;
      (*(v49 + 16))(v48, v33, v47);
      v41 = v50;
      v30(v50, v59, v32);
      v20 = TodayCardMedia.init(deserializing:using:)(v39, v41);
      v42 = *(v58 + 8);
      v42(v59, v32);
      v46(v57, v40);
      v42(v54, v32);
      sub_24E601704(v55, &qword_27F213E68, &unk_24F93BC80);
      return v20;
    }

    v20 = *(v58 + 8);
    (v20)(v59, v32);
    v46(v33, v47);
    (v20)(v10, v32);
    sub_24E601704(v55, &qword_27F213E68, &unk_24F93BC80);
  }

  type metadata accessor for TodayCardMediaAppIcon(0);
  swift_deallocPartialClassInstance();
  return v20;
}

uint64_t type metadata accessor for TodayCardMediaAppIcon(uint64_t a1)
{
  result = qword_27F223280;
  if (!qword_27F223280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayCardMediaAppIcon.__allocating_init(icon:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaAppIcon.init(icon:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaAppIcon.init(icon:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v18 - v11;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaAppIcon_icon) = a1;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_24E60169C(a2, v18 - v11, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v25, &v19, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v13 = sub_24F91F668();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    v18[1] = v13;
    v18[2] = v15;
    sub_24F92C7F8();
    sub_24E601704(&v19, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a2, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v25, &qword_27F235830, &qword_24F93B8C0);
  v16 = v23;
  *(v3 + 32) = v22;
  *(v3 + 48) = v16;
  *(v3 + 64) = v24;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 6;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaAppIcon.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaAppIcon.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit30ContactsListSocialMenuProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E992C5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24E992CA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E992D7C()
{
  result = qword_27F2232A0;
  if (!qword_27F2232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2232A0);
  }

  return result;
}

uint64_t sub_24E992DD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223650, &qword_24F955060);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223658, &qword_24F96E750);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223660, &qword_24F955058);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  if (a1)
  {
    sub_24E60169C(v1, &v16 - v10, &qword_27F21C160, &qword_24F954FA0);
    *&v11[*(v9 + 36)] = a1;
    v12 = &qword_24F955058;
    sub_24E60169C(v11, v8, &unk_27F223660, &qword_24F955058);
    swift_storeEnumTagMultiPayload();
    sub_24E785620();
    sub_24E785844();

    sub_24F924E28();
    v13 = v11;
    v14 = &unk_27F223660;
  }

  else
  {
    sub_24E60169C(v1, v5, &qword_27F21C160, &qword_24F954FA0);
    v12 = &qword_24F955060;
    sub_24E60169C(v5, v8, &qword_27F223650, &qword_24F955060);
    swift_storeEnumTagMultiPayload();
    sub_24E785620();
    sub_24E785844();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F223650;
  }

  return sub_24E601704(v13, v14, v12);
}

uint64_t sub_24E993028(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2236F8, &qword_24F96E780);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223700, &qword_24F96E788);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223708, &qword_24F96E790);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223710, &qword_24F957558);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &qword_27F223708, &qword_24F96E790);
    swift_storeEnumTagMultiPayload();
    sub_24E99C7F8();
    sub_24E99C8F4();

    sub_24F924E28();
    v13 = v11;
    v14 = &qword_27F223708;
    v15 = &qword_24F96E790;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F2236F8, &qword_24F96E780);
    swift_storeEnumTagMultiPayload();
    sub_24E99C7F8();
    sub_24E99C8F4();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F2236F8;
    v15 = &qword_24F96E780;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E9932E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2236B8, &qword_24F96E758);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2236C0, &qword_24F96E760);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2236C8, &qword_24F96E768);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2236D0, &unk_24F96E770);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &qword_27F2236C8, &qword_24F96E768);
    swift_storeEnumTagMultiPayload();
    sub_24E99C600();
    sub_24E99C6FC();

    sub_24F924E28();
    v13 = v11;
    v14 = &qword_27F2236C8;
    v15 = &qword_24F96E768;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F2236B8, &qword_24F96E758);
    swift_storeEnumTagMultiPayload();
    sub_24E99C600();
    sub_24E99C6FC();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F2236B8;
    v15 = &qword_24F96E758;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E993598(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223388, &qword_24F96E4E8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233B8, &qword_24F96E500);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223370, &qword_24F96E4E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232D0, &qword_24F96E470);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &unk_27F223370, &qword_24F96E4E0);
    swift_storeEnumTagMultiPayload();
    sub_24E99A404();
    sub_24E99A4CC();

    sub_24F924E28();
    v13 = v11;
    v14 = &unk_27F223370;
    v15 = &qword_24F96E4E0;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F223388, &qword_24F96E4E8);
    swift_storeEnumTagMultiPayload();
    sub_24E99A404();
    sub_24E99A4CC();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F223388;
    v15 = &qword_24F96E4E8;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E993850(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223738, &qword_24F96E798);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223740, &qword_24F96E7A0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223748, &qword_24F96E7A8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223750, &qword_24F96E7B0);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &qword_27F223748, &qword_24F96E7A8);
    swift_storeEnumTagMultiPayload();
    sub_24E99C9F0();
    sub_24E99CCE0();

    sub_24F924E28();
    v13 = v11;
    v14 = &qword_27F223748;
    v15 = &qword_24F96E7A8;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F223738, &qword_24F96E798);
    swift_storeEnumTagMultiPayload();
    sub_24E99C9F0();
    sub_24E99CCE0();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F223738;
    v15 = &qword_24F96E798;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E993B08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223460, &qword_24F96E5A8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223468, &unk_24F96E5B0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223470, &unk_24F9975B0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE40, &unk_24F96E5C0);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &unk_27F223470, &unk_24F9975B0);
    swift_storeEnumTagMultiPayload();
    sub_24E99B158();
    sub_24E99B41C();

    sub_24F924E28();
    v13 = v11;
    v14 = &unk_27F223470;
    v15 = &unk_24F9975B0;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F223460, &qword_24F96E5A8);
    swift_storeEnumTagMultiPayload();
    sub_24E99B158();
    sub_24E99B41C();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F223460;
    v15 = &qword_24F96E5A8;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E993DC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223828, &qword_24F96E820);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223830, &qword_24F96E828);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223838, &qword_24F96E830);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223840, &qword_24F96E838);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &qword_27F223838, &qword_24F96E830);
    swift_storeEnumTagMultiPayload();
    sub_24E99D1EC();
    sub_24E99D2A4();

    sub_24F924E28();
    v13 = v11;
    v14 = &qword_27F223838;
    v15 = &qword_24F96E830;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F223828, &qword_24F96E820);
    swift_storeEnumTagMultiPayload();
    sub_24E99D1EC();
    sub_24E99D2A4();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F223828;
    v15 = &qword_24F96E820;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E994078(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223570, &qword_24F96E6C8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223578, &qword_24F96E6D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223580, &qword_24F96E6D8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223588, &qword_24F96E6E0);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &qword_27F223580, &qword_24F96E6D8);
    swift_storeEnumTagMultiPayload();
    sub_24E99BE90();
    sub_24E99C180();

    sub_24F924E28();
    v13 = v11;
    v14 = &qword_27F223580;
    v15 = &qword_24F96E6D8;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F223570, &qword_24F96E6C8);
    swift_storeEnumTagMultiPayload();
    sub_24E99BE90();
    sub_24E99C180();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F223570;
    v15 = &qword_24F96E6C8;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E994330(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235E0, &qword_24F96E708);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235E8, &qword_24F96E710);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235F0, &qword_24F96E718);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235F8, &qword_24F96E720);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &qword_27F2235F0, &qword_24F96E718);
    swift_storeEnumTagMultiPayload();
    sub_24E99C248();
    sub_24E99C538();

    sub_24F924E28();
    v13 = v11;
    v14 = &qword_27F2235F0;
    v15 = &qword_24F96E718;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F2235E0, &qword_24F96E708);
    swift_storeEnumTagMultiPayload();
    sub_24E99C248();
    sub_24E99C538();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F2235E0;
    v15 = &qword_24F96E708;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E9945E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237A8, &qword_24FA04E70);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237B0, &qword_24F96E7E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237B8, &qword_24F96E7E8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237C0, &qword_24F96E7F0);
  if (a1)
  {
    (*(*(v12 - 8) + 16))(v11, v1, v12);
    *&v11[*(v9 + 36)] = a1;
    sub_24E60169C(v11, v8, &qword_27F2237B8, &qword_24F96E7E8);
    swift_storeEnumTagMultiPayload();
    sub_24E99CDA8();
    sub_24E99D124();

    sub_24F924E28();
    v13 = v11;
    v14 = &qword_27F2237B8;
    v15 = &qword_24F96E7E8;
  }

  else
  {
    (*(*(v12 - 8) + 16))(v5, v1, v12);
    sub_24E60169C(v5, v8, &qword_27F2237A8, &qword_24FA04E70);
    swift_storeEnumTagMultiPayload();
    sub_24E99CDA8();
    sub_24E99D124();
    sub_24F924E28();
    v13 = v5;
    v14 = &qword_27F2237A8;
    v15 = &qword_24FA04E70;
  }

  return sub_24E601704(v13, v14, v15);
}

uint64_t sub_24E9948A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223438, &unk_24F9976E0);
  v0 = *(type metadata accessor for SocialMenuItem(0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = (v2 + v1);
  v4 = type metadata accessor for SocialMenuAction(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v10 = 0;
  *v3 = 0x676E6964616F6CLL;
  *(v3 + 1) = 0xE700000000000000;
  *(v3 + 2) = 0xE2676E6964616F4CLL;
  *(v3 + 3) = 0xAA0000000000A680;
  memset(v9, 0, sizeof(v9));
  v3[v4[7]] = 82;
  v7 = &v3[v4[8]];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  sub_24E61DA68(v9, v7, qword_27F21B590, &unk_24F93BE30);
  *&v3[v4[9]] = 0;
  result = swift_storeEnumTagMultiPayload();
  qword_27F39B320 = v2;
  return result;
}

void sub_24E994A90(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  sub_24F925A28();
  a2();
  v5 = sub_24F9259A8();

  *a3 = v5;
}

uint64_t sub_24E994AE4()
{
  result = sub_24F9259E8();
  qword_27F39B338 = result;
  return result;
}

void sub_24E994B04(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v48 = a3;
  v4 = sub_24F91F008();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_24F91EAA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContactsListDataSource.Item(0);
  MEMORY[0x28223BE20](v13);
  v52 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v52 = a1;
  v50 = a1;
  v15 = [v50 identifier];
  v16 = sub_24F92B0D8();
  v18 = v17;

  *&aBlock = v16;
  *(&aBlock + 1) = v18;
  sub_24F91EA28();
  sub_24E600AEC();
  v19 = sub_24F92C578();
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  if (!v21)
  {

    v19 = v16;
    v21 = v18;
  }

  *&aBlock = 0x3A746361746E6F63;
  *(&aBlock + 1) = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v19, v21);

  v22 = *(&aBlock + 1);
  v49 = aBlock;
  v23 = type metadata accessor for PlayerAvatar.Overlay(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v8, 1, 1, v23);
  v55 = 0;
  aBlock = 0u;
  v54 = 0u;
  v25 = *(v13 + 24);
  v26 = v13;
  v27 = v8;
  v28 = v52;
  v29 = v52 + v25;
  v30 = type metadata accessor for PlayerAvatar(0);
  v31 = *(v30 + 20);
  v24(&v29[v31], 1, 1, v23);
  v32 = &v29[*(v30 + 24)];
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  sub_24E61DA68(v57, v32, qword_27F21B590, &unk_24F93BE30);
  *v29 = v49;
  *(v29 + 1) = v22;
  sub_24E61DA68(v27, &v29[v31], &qword_27F22DF80, &unk_24F942E50);
  sub_24E61DA68(&aBlock, v32, qword_27F21B590, &unk_24F93BE30);
  *(v28 + *(v26 + 28)) = v51;
  v33 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v33 setEmphasizesPrimaryNameComponent_];
  [v33 setFallbackStyle_];
  v34 = MEMORY[0x277D84F90];
  sub_24E608210(MEMORY[0x277D84F90]);
  v35 = sub_24F92AE28();

  v36 = v50;
  v37 = [v33 attributedStringFromContact:v50 defaultAttributes:v35];

  if (!v37)
  {
    sub_24E69A5C4(0, &qword_27F223430, 0x277CCA898);
    sub_24F91EE58();
    v37 = sub_24F92BFD8();
  }

  *&v57[0] = v34;
  v38 = [v37 string];
  v39 = sub_24F92B0D8();
  v41 = v40;

  v42 = [v37 length];
  v43 = swift_allocObject();
  v43[2] = v39;
  v43[3] = v41;
  v43[4] = v57;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_24E99AF3C;
  *(v44 + 24) = v43;
  v55 = sub_24E99AF58;
  v56 = v44;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v54 = sub_24E9952C0;
  *(&v54 + 1) = &block_descriptor_28_1;
  v45 = _Block_copy(&aBlock);

  [v37 enumerateAttributesInRange:0 options:v42 usingBlock:{0, v45}];

  _Block_release(v45);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
  }

  else
  {
    v46 = v52;
    v52[1] = *&v57[0];
    sub_24E99A930(v46, v48, type metadata accessor for ContactsListDataSource.Item);
  }
}

uint64_t sub_24E995124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  result = sub_24F92BCE8();
  if ((v10 & 1) == 0)
  {
    v11 = sub_24F92B3D8();
    v15 = v14;
    if (*(a1 + 16))
    {
      v16 = v13;
      v17 = v12;
      v18 = v11;
      v19 = *MEMORY[0x277CBD060];
      v20 = sub_24E7728E8();
      if (v21)
      {
        sub_24E643A9C(*(a1 + 56) + 32 * v20, &v31);
      }

      else
      {

        v31 = 0u;
        v32 = 0u;
      }

      v11 = v18;
      v12 = v17;
      v13 = v16;
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v22 = MEMORY[0x253050B50](v11, v12, v13, v15);
    v24 = v23;

    v25 = *(&v32 + 1);
    v26 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_24E618184(0, *(v26 + 2) + 1, 1, v26);
      *a7 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      v26 = sub_24E618184((v28 > 1), v29 + 1, 1, v26);
      *a7 = v26;
    }

    *(v26 + 2) = v29 + 1;
    v30 = &v26[24 * v29];
    *(v30 + 4) = v22;
    *(v30 + 5) = v24;
    v30[48] = v25 != 0;
    return sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

uint64_t sub_24E9952C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_24E99AF80(&qword_27F212318, type metadata accessor for Key, &unk_24F937754);
  v9 = sub_24F92AE38();
  v8(v9, a3, a4, a5);
}

uint64_t sub_24E995390@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  sub_24F92B0D8();

  result = sub_24F92B3C8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

double sub_24E995414@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for PlayerAvatar(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v11 = a1[1];
  v13 = type metadata accessor for PlayerAvatar.Overlay(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v15 = *(v8 + 28);
  v14(v10 + v15, 1, 1, v13);
  v16 = v10 + *(v8 + 32);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;

  sub_24E61DA68(v18, v16, qword_27F21B590, &unk_24F93BE30);
  *v10 = v12;
  v10[1] = v11;
  sub_24E61DA68(v6, v10 + v15, &qword_27F22DF80, &unk_24F942E50);
  sub_24E61DA68(v20, v16, qword_27F21B590, &unk_24F93BE30);
  LOBYTE(v20[0]) = 7;
  return sub_24F8319B8(v10, v20, a2);
}

uint64_t sub_24E9955FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v3 = type metadata accessor for ContactsListDataSource.ItemView(0);
  v112 = *(v3 - 8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v113 = v5;
  v114 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_24F924258();
  MEMORY[0x28223BE20](v108);
  v111 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232B0, &qword_24F96E450);
  MEMORY[0x28223BE20](v109);
  v110 = &v91 - v7;
  v8 = sub_24F9248C8();
  v119 = *(v8 - 8);
  v120 = v8;
  MEMORY[0x28223BE20](v8);
  v115 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232B8, &qword_24F96E458);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v91 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232C0, &qword_24F96E460);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232C8, &qword_24F96E468);
  MEMORY[0x28223BE20](v17);
  v19 = &v91 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232D0, &qword_24F96E470);
  v117 = *(v20 - 8);
  v118 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232D8, &qword_24F96E478);
  MEMORY[0x28223BE20](v93);
  v92 = &v91 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232E0, &qword_24F96E480);
  v94 = *(v24 - 8);
  v95 = v24;
  MEMORY[0x28223BE20](v24);
  v121 = &v91 - v25;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232E8, &qword_24F96E488);
  MEMORY[0x28223BE20](v97);
  v96 = &v91 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232F0, &qword_24F96E490);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v91 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2232F8, &qword_24F96E498);
  MEMORY[0x28223BE20](v98);
  v100 = &v91 - v28;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223300, &qword_24F96E4A0);
  MEMORY[0x28223BE20](v99);
  v107 = &v91 - v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223308, &qword_24F96E4A8);
  MEMORY[0x28223BE20](v106);
  v104 = &v91 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223310, &qword_24F96E4B0);
  MEMORY[0x28223BE20](v31 - 8);
  v102 = &v91 - v32;
  *v12 = sub_24F9249A8();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223318, &unk_24F96E4B8);
  sub_24E996424(v2, &v12[*(v33 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v12, v16, &qword_27F2232B8, &qword_24F96E458);
  v34 = &v16[*(v14 + 44)];
  v35 = v134;
  *(v34 + 4) = v133;
  *(v34 + 5) = v35;
  *(v34 + 6) = v135;
  v36 = v130;
  *v34 = v129;
  *(v34 + 1) = v36;
  v37 = v132;
  *(v34 + 2) = v131;
  *(v34 + 3) = v37;
  sub_24E6009C8(v16, v19, &qword_27F2232C0, &qword_24F96E460);
  v19[*(v17 + 36)] = 0;
  v38 = v115;
  sub_24F9248B8();
  sub_24E99A208();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v119 + 8))(v38, v120);
  sub_24E601704(v19, &qword_27F2232C8, &qword_24F96E468);
  v39 = v4;
  v136 = *(v2 + *(v4 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223348, &qword_24F96E4C8);
  sub_24F926F38();
  v40 = v92;
  sub_24E993598(v126);

  (*(v117 + 8))(v22, v118);
  v41 = v2 + *(v39 + 32);
  v43 = *v41;
  v42 = *(v41 + 8);
  v44 = *(v41 + 16);
  v45 = *(v41 + 24);
  *&v136 = *v41;
  *(&v136 + 1) = v42;
  v119 = v44;
  v120 = v42;
  *&v137 = v44;
  BYTE8(v137) = v45;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223350, &unk_24F96E4D0);
  sub_24F923378();
  v136 = v126;
  *&v137 = v127;
  BYTE8(v137) = v128;
  v46 = *(v39 + 28);
  v115 = v2;
  v47 = v2 + v46;
  v117 = *(v2 + v46);
  *&v126 = v117;
  BYTE8(v126) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  sub_24E99A378();
  sub_24E99A594();
  sub_24F9269B8();

  sub_24E601704(v40, &qword_27F2232D8, &qword_24F96E478);
  v48 = sub_24F925188();
  sub_24F927618();
  sub_24F9242E8();
  *&v124[52] = v139;
  *&v124[68] = v140;
  *&v124[84] = v141;
  *&v124[100] = v142;
  *&v124[4] = v136;
  *&v124[20] = v137;
  *&v124[36] = v138;
  v49 = sub_24F925808();
  v125 = 0;
  v50 = 0.0;
  if (*(v47 + 8))
  {
    *&v126 = v43;
    *(&v126 + 1) = v120;
    v127 = v119;
    v128 = v45;
    sub_24F923358();
    if ((v123 & 1) != 0 || v122 != v117)
    {
      *&v126 = v43;
      *(&v126 + 1) = v120;
      v127 = v119;
      v128 = v45;
      sub_24F923358();
      if (v123)
      {
        if (*(v47 + 24))
        {
          v50 = 0.0;
        }

        else
        {
          v50 = 1.0;
        }
      }

      else
      {
        v50 = 1.0;
        if ((*(v47 + 24) & 1) == 0)
        {
          if (v122 == *(v47 + 16))
          {
            v50 = 0.0;
          }

          else
          {
            v50 = 1.0;
          }
        }
      }
    }
  }

  v51 = sub_24F9275F8();
  v53 = v52;
  v54 = v96;
  (*(v94 + 32))(v96, v121, v95);
  v55 = v54 + *(v97 + 36);
  v56 = *&v124[80];
  *(v55 + 68) = *&v124[64];
  *(v55 + 84) = v56;
  *(v55 + 100) = *&v124[96];
  v57 = *&v124[16];
  *(v55 + 4) = *v124;
  *(v55 + 20) = v57;
  v58 = *&v124[48];
  *(v55 + 36) = *&v124[32];
  *v55 = v48;
  *(v55 + 116) = *&v124[112];
  *(v55 + 52) = v58;
  *(v55 + 120) = v49;
  *(v55 + 128) = xmmword_24F96E280;
  *(v55 + 144) = 0;
  *(v55 + 152) = 0;
  *(v55 + 160) = 0;
  *(v55 + 168) = v50;
  *(v55 + 176) = v51;
  *(v55 + 184) = v53;
  sub_24E99A610();
  v59 = v101;
  sub_24F926608();
  sub_24E601704(v54, &qword_27F2232E8, &qword_24F96E488);
  v60 = *(v108 + 20);
  v61 = *MEMORY[0x277CE0118];
  v62 = sub_24F924B38();
  v63 = v111;
  (*(*(v62 - 8) + 104))(&v111[v60], v61, v62);
  __asm { FMOV            V0.2D, #12.0 }

  *v63 = _Q0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *&v126 = v43;
  *(&v126 + 1) = v120;
  v127 = v119;
  v128 = v45;
  sub_24F923358();
  v69 = sub_24F926D08();

  v70 = v63;
  v71 = v110;
  sub_24E99A930(v70, v110, MEMORY[0x277CDFC08]);
  v72 = v109;
  *(v71 + *(v109 + 52)) = v69;
  *(v71 + *(v72 + 56)) = 256;
  v73 = sub_24F927618();
  v75 = v74;
  v76 = v100;
  v77 = &v100[*(v98 + 36)];
  sub_24E6009C8(v71, v77, &qword_27F2232B0, &qword_24F96E450);
  v78 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233B0, &qword_24F96E4F8) + 36));
  *v78 = v73;
  v78[1] = v75;
  (*(v103 + 32))(v76, v59, v105);
  LOBYTE(v73) = sub_24F925808();
  v79 = v107;
  sub_24E6009C8(v76, v107, &qword_27F2232F8, &qword_24F96E498);
  v80 = v79 + *(v99 + 36);
  *v80 = v73;
  *(v80 + 8) = xmmword_24F947C60;
  v81 = type metadata accessor for ContactsListDataSource.Item(0);
  *(v80 + 24) = 0;
  *(v80 + 32) = 0;
  *(v80 + 40) = 0;
  v82 = v114;
  v83 = *(v115 + *(v81 + 28));
  sub_24E99ACBC(v115, v114, type metadata accessor for ContactsListDataSource.ItemView);
  v84 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v85 = swift_allocObject();
  sub_24E99A930(v82, v85 + v84, type metadata accessor for ContactsListDataSource.ItemView);
  v86 = v104;
  sub_24E6009C8(v79, v104, &qword_27F223300, &qword_24F96E4A0);
  v87 = v106;
  *(v86 + *(v106 + 52)) = v83;
  v88 = (v86 + *(v87 + 56));
  *v88 = sub_24E99A998;
  v88[1] = v85;
  v89 = v102;
  sub_24E6009C8(v86, v102, &qword_27F223308, &qword_24F96E4A8);
  sub_24E6009C8(v89, v116, &qword_27F223310, &qword_24F96E4B0);
}

uint64_t sub_24E996424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233C0, &qword_24F96E508);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233C8, &unk_24F96E510);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for ContactsListDataSource.Item(0);
  sub_24E995414((a1 + *(v16 + 24)), v15);
  sub_24F927618();
  sub_24F9238C8();
  v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810) + 36)];
  v18 = v34;
  *v17 = v33;
  *(v17 + 1) = v18;
  *(v17 + 2) = v35;
  v19 = sub_24F925808();
  v20 = &v15[*(v10 + 44)];
  *v20 = v19;
  *(v20 + 8) = xmmword_24F96E290;
  *(v20 + 24) = xmmword_24F947C60;
  v20[40] = 0;
  v32 = *(a1 + 8);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D8, &unk_24F96E540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0, &qword_24FA02720);
  sub_24E99AA08();
  sub_24E8C5A10();
  sub_24F927228();
  v21 = v12;
  v29 = v12;
  sub_24E60169C(v15, v12, &qword_27F2233C8, &unk_24F96E510);
  v22 = *(v4 + 16);
  v23 = v30;
  v22(v30, v8, v3);
  v24 = v21;
  v25 = v31;
  sub_24E60169C(v24, v31, &qword_27F2233C8, &unk_24F96E510);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223408, &qword_24F96E558);
  v22((v25 + *(v26 + 48)), v23, v3);
  v27 = *(v4 + 8);
  v27(v8, v3);
  sub_24E601704(v15, &qword_27F2233C8, &unk_24F96E510);
  v27(v23, v3);
  return sub_24E601704(v29, &qword_27F2233C8, &unk_24F96E510);
}

double sub_24E9967A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E99AAB8(*(a1 + 8), *(a1 + 16), *(a1 + 24), v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24E9967F8(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for ContactsListDataSource.ItemView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223348, &qword_24F96E4C8);
  return sub_24F926F48();
}

double sub_24E99686C@<D0>(uint64_t a1@<X8>)
{
  v40 = *v1;
  sub_24E600AEC();

  v3 = sub_24F925E18();
  v5 = v4;
  v7 = v6;
  if (qword_27F210060 != -1)
  {
    swift_once();
  }

  v8 = sub_24F925C98();
  v10 = v9;
  v12 = v11;
  sub_24E600B40(v3, v5, v7 & 1);

  LODWORD(v40) = sub_24F9251C8();
  v29 = sub_24F925C58();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_24E600B40(v8, v10, v12 & 1);

  sub_24F9275C8();
  sub_24F9242E8();
  v19 = v16 & 1;
  v20 = sub_24F925808();
  v21 = sub_24F925188();
  sub_24F927618();
  sub_24F9242E8();
  *&v32[52] = v43;
  *&v32[68] = v44;
  *&v32[84] = v45;
  *&v32[100] = v46;
  *&v32[4] = v40;
  *&v32[20] = v41;
  *&v32[36] = v42;
  v22 = sub_24F925808();
  v23 = 1.0;
  if ((*(v1 + 24) & 1) == 0)
  {
    v24 = *(v1 + 4);
    v25 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223350, &unk_24F96E4D0);
    sub_24F923358();
    if (v31)
    {
      if (v25)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }
    }

    else if ((v25 & 1) == 0)
    {
      if (v30 == v24)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 1.0;
      }
    }
  }

  v26 = sub_24F927608();
  *a1 = v29;
  *(a1 + 8) = v14;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  *(a1 + 96) = v37;
  *(a1 + 112) = v38;
  *(a1 + 128) = v39;
  *(a1 + 32) = v33;
  *(a1 + 48) = v34;
  *(a1 + 64) = v35;
  *(a1 + 80) = v36;
  *(a1 + 144) = v20;
  *(a1 + 168) = xmmword_24F96E2A0;
  *(a1 + 260) = *&v32[64];
  *(a1 + 276) = *&v32[80];
  *(a1 + 292) = *&v32[96];
  *(a1 + 196) = *v32;
  *(a1 + 212) = *&v32[16];
  *(a1 + 228) = *&v32[32];
  result = 0.0;
  *(a1 + 152) = xmmword_24F94BC80;
  *(a1 + 184) = 0;
  *(a1 + 192) = v21;
  *(a1 + 308) = HIDWORD(v46);
  *(a1 + 244) = *&v32[48];
  *(a1 + 312) = v22;
  *(a1 + 320) = xmmword_24F94BC80;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = v23;
  *(a1 + 368) = v26;
  *(a1 + 376) = v28;
  return result;
}

void sub_24E996BE0()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v128 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v128 - v9;
  sub_24F91F638();
  v134 = v0[8];
  v135 = v0;
  v11 = [v134 sections];
  if (v11)
  {
    v12 = v11;
    sub_24E69A5C4(0, &qword_27F2234D0, 0x277CBDC28);
    v13 = sub_24F92B5A8();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v131 = v1;
  v133 = v2;
  v132 = v10;
  v130 = v4;
  v129 = v7;
  if (v13 >> 62)
  {
LABEL_47:
    v139 = v13 & 0xFFFFFFFFFFFFFF8;
    v141 = sub_24F92C738();
  }

  else
  {
    v139 = v13 & 0xFFFFFFFFFFFFFF8;
    v141 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = 0;
  v140 = v13 & 0xC000000000000001;
  v16 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v18 = v13;
  while (v141 != v14)
  {
    if (v140)
    {
      v19 = MEMORY[0x253052270](v14, v13);
    }

    else
    {
      if (v14 >= *(v139 + 16))
      {
        goto LABEL_43;
      }

      v19 = *(v13 + 8 * v14 + 32);
    }

    v20 = v19;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v21 = [v19 title];
    if (!v21)
    {
      goto LABEL_81;
    }

    v22 = v21;
    v23 = sub_24F92B0D8();
    v25 = v24;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_24E615CF4(0, *(v16 + 2) + 1, 1, v16);
    }

    v27 = *(v16 + 2);
    v26 = *(v16 + 3);
    if (v27 >= v26 >> 1)
    {
      v16 = sub_24E615CF4((v26 > 1), v27 + 1, 1, v16);
    }

    *(v16 + 2) = v27 + 1;
    v28 = &v16[16 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    [v20 range];
    v30 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_24E615EC4(0, *(v17 + 2) + 1, 1, v17);
    }

    v13 = v18;
    v32 = *(v17 + 2);
    v31 = *(v17 + 3);
    if (v32 >= v31 >> 1)
    {
      v17 = sub_24E615EC4((v31 > 1), v32 + 1, 1, v17);
    }

    *(v17 + 2) = v32 + 1;
    *&v17[8 * v32 + 32] = v30;
    [v20 range];
    v34 = v33;

    ++v14;
    v35 = __OFADD__(v15, v34);
    v15 += v34;
    if (v35)
    {
      goto LABEL_44;
    }
  }

  v36 = v135;

  v36[2] = v16;

  v36[3] = v17;
  v36[5] = v15;
  v37 = [v134 indexSections];
  v13 = MEMORY[0x277D84F90];
  if (v37)
  {
    v38 = v37;
    sub_24E69A5C4(0, &qword_27F2234D0, 0x277CBDC28);
    v39 = sub_24F92B5A8();

    if (v39 >> 62)
    {
      v40 = sub_24F92C738();
      if (v40)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
LABEL_28:
        v41 = 0;
        v138 = v39 & 0xFFFFFFFFFFFFFF8;
        v139 = v39 & 0xC000000000000001;
        v136 = xmmword_24F93DE60;
        v137 = v40;
        do
        {
          if (v139)
          {
            v42 = MEMORY[0x253052270](v41, v39);
          }

          else
          {
            if (v41 >= *(v138 + 16))
            {
              goto LABEL_46;
            }

            v42 = *(v39 + 8 * v41 + 32);
          }

          v43 = v42;
          v44 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_45;
          }

          v45 = [v42 range];
          v46 = [v43 title];
          if (!v46)
          {
            goto LABEL_82;
          }

          v47 = v46;
          v48 = sub_24F92B0D8();
          v140 = v49;
          v141 = v48;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
          v50 = swift_allocObject();
          *(v50 + 16) = v136;
          *(v50 + 32) = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_24E61728C(0, *(v13 + 16) + 1, 1, v13);
          }

          v52 = *(v13 + 16);
          v51 = *(v13 + 24);
          if (v52 >= v51 >> 1)
          {
            v13 = sub_24E61728C((v51 > 1), v52 + 1, 1, v13);
          }

          *(v13 + 16) = v52 + 1;
          v53 = (v13 + 24 * v52);
          v54 = v140;
          v53[4] = v141;
          v53[5] = v54;
          v53[6] = v50;
          ++v41;
        }

        while (v44 != v137);
      }
    }
  }

  v55 = v135;

  v55[6] = v13;
  v56 = v55[9];
  v57 = [v134 filter];
  v58 = &qword_27F211000;
  if (!v57)
  {
    goto LABEL_58;
  }

  v59 = v57;
  v60 = qword_27F2113D0;
  v61 = v56;
  if (v60 != -1)
  {
    swift_once();
  }

  v62 = sub_24F9220D8();
  __swift_project_value_buffer(v62, qword_27F39E7C0);
  v63 = sub_24F9220B8();
  v64 = sub_24F92BDB8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_24E5DD000, v63, v64, "Preloading due to filter…", v65, 2u);
    MEMORY[0x2530542D0](v65, -1, -1);
  }

  v142 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_24F96E2B0;
  v67 = objc_opt_self();
  *(v66 + 32) = [v67 descriptorForRequiredKeysForStyle_];
  *(v66 + 40) = [v67 descriptorForRequiredKeysForStyle_];
  *(v66 + 48) = [v67 descriptorForRequiredKeysForNameOrder];
  v68 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v69 = sub_24F92B588();

  v70 = [v68 initWithKeysToFetch_];

  [v70 setSortOrder_];
  v71 = [v59 containerIdentifiers];
  v72 = sub_24F92BAA8();

  v73 = *(v72 + 16);
  if (v73)
  {
    v74 = sub_24EAE678C(*(v72 + 16), 0);
    v75 = sub_24EAE7C84(aBlock, v74 + 4, v73, v72);
    sub_24E6586B4(aBlock[0]);
    if (v75 != v73)
    {
      __break(1u);
LABEL_58:
      v76 = 0;
      v77 = 0;
      v78 = v131;
      v79 = v133;
      goto LABEL_72;
    }
  }

  else
  {
  }

  v80 = sub_24F92B588();

  v81 = [v59 groupIdentifiers];
  v82 = sub_24F92BAA8();

  v83 = *(v82 + 16);
  v140 = v56;
  if (!v83)
  {
    goto LABEL_63;
  }

  v84 = sub_24EAE678C(v83, 0);
  v85 = sub_24EAE7C84(aBlock, v84 + 4, v83, v82);
  sub_24E6586B4(aBlock[0]);
  if (v85 != v83)
  {
    __break(1u);
LABEL_63:
  }

  v86 = objc_opt_self();
  v87 = sub_24F92B588();

  v88 = [v86 predicateForPreferredNameInContainersWithIdentifiers:v80 groupsWithIdentifiers:v87];

  [v70 setPredicate_];
  v89 = swift_allocObject();
  *(v89 + 16) = &v142;
  v90 = swift_allocObject();
  v90[2] = sub_24E99B55C;
  v90[3] = v89;
  aBlock[4] = sub_24E99B564;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F2BE704;
  aBlock[3] = &block_descriptor_49;
  v91 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v92 = [v61 enumerateContactsWithFetchRequest:v70 error:aBlock usingBlock:v91];
  _Block_release(v91);
  v93 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
  }

  if (!v92)
  {

    v106 = sub_24F91F278();
    swift_willThrow();
    v107 = v106;
    v108 = sub_24F9220B8();
    v109 = sub_24F92BDB8();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v110 = 138412290;
      v112 = v106;
      v113 = _swift_stdlib_bridgeErrorToNSError();
      *(v110 + 4) = v113;
      *v111 = v113;
      _os_log_impl(&dword_24E5DD000, v108, v109, "Unable to enumerateContacts: %@", v110, 0xCu);
      sub_24E601704(v111, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v111, -1, -1);
      MEMORY[0x2530542D0](v110, -1, -1);
    }

    else
    {
    }

    (*(v133 + 8))(v132, v131);

    return;
  }

  v141 = v89;
  v95 = v61;
  v96 = v142;
  v97 = v135;

  v97[4] = v96;
  v98 = v133 + 16;
  v99 = v129;
  v78 = v131;
  (*(v133 + 16))(v129, v132, v131);
  v100 = sub_24F9220B8();
  v101 = sub_24F92BDA8();
  v102 = (v98 - 8);
  if (os_log_type_enabled(v100, v101))
  {
    v103 = swift_slowAlloc();
    *v103 = 134217984;
    sub_24F91F5C8();
    v105 = v104;
    (*v102)(v99, v78);
    *(v103 + 4) = v105 * -1000.0;
    _os_log_impl(&dword_24E5DD000, v100, v101, "enumerateContacts: %fms", v103, 0xCu);
    MEMORY[0x2530542D0](v103, -1, -1);
  }

  else
  {

    (*v102)(v99, v78);
  }

  v76 = sub_24E99B55C;
  v79 = v133;
  v56 = v140;
  v77 = v141;
  v58 = &qword_27F211000;
LABEL_72:
  if (v58[122] != -1)
  {
    swift_once();
  }

  v114 = sub_24F9220D8();
  __swift_project_value_buffer(v114, qword_27F39E7C0);
  v115 = v130;
  v116 = v132;
  (*(v79 + 16))(v130, v132, v78);
  v117 = sub_24F9220B8();
  v118 = sub_24F92BDA8();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v141 = v77;
    v120 = v56;
    v121 = v119;
    *v119 = 134217984;
    sub_24F91F5C8();
    v123 = v122;
    v124 = *(v79 + 8);
    v124(v115, v78);
    *(v121 + 1) = v123 * -1000.0;
    _os_log_impl(&dword_24E5DD000, v117, v118, "updateSections: %fms", v121, 0xCu);
    MEMORY[0x2530542D0](v121, -1, -1);

    v124(v116, v78);
    v125 = v76;
    v126 = v141;
  }

  else
  {

    v127 = *(v79 + 8);
    v127(v115, v78);
    v127(v116, v78);
    v125 = v76;
    v126 = v77;
  }

  sub_24E824448(v125, v126);
}

uint64_t sub_24E997B44(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  MEMORY[0x253050F00]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  return sub_24F92B638();
}

id sub_24E997BB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F96E2C0;
  v1 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v2 = *MEMORY[0x277CBCFF8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD000];
  *(v0 + 48) = *MEMORY[0x277CBD000];
  v4 = objc_opt_self();
  v5 = v2;
  v6 = v3;
  v7 = [v4 descriptorForAllComparatorKeys];
  v8 = *MEMORY[0x277CBD020];
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  v9 = *MEMORY[0x277CBD098];
  v10 = *MEMORY[0x277CBCFC0];
  *(v0 + 72) = *MEMORY[0x277CBD098];
  *(v0 + 80) = v10;
  v11 = *MEMORY[0x277CBD018];
  v12 = *MEMORY[0x277CBD138];
  *(v0 + 88) = *MEMORY[0x277CBD018];
  *(v0 + 96) = v12;
  v19 = *MEMORY[0x277CBD160];
  *(v0 + 104) = *MEMORY[0x277CBD160];
  qword_27F223290 = v0;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;

  return v19;
}

id sub_24E997D1C(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (qword_27F210068 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v6 = sub_24F92B588();
  v7 = [v5 initWithKeysToFetch_];

  [v7 setSortOrder_];
  v8 = objc_opt_self();
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  v9 = [v8 predicateForPreferredNameInRange_];
  [v7 setPredicate_];

  [v7 setUnifyResults_];
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = MEMORY[0x277D84F90];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *(v2 + 72);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v10;
  aBlock[4] = sub_24E99AEE4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E998320;
  aBlock[3] = &block_descriptor_33;
  v15 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v16 = [v13 enumerateContactsAndMatchInfoWithFetchRequest:v7 error:aBlock usingBlock:v15];
  _Block_release(v15);
  v17 = aBlock[0];
  if (v16)
  {
    v18 = aBlock[0];

    swift_beginAccess();
    v17 = *(v10 + 16);
    swift_beginAccess();
  }

  else
  {
    v19 = aBlock[0];
    sub_24F91F278();

    swift_willThrow();
  }

  return v17;
}

double sub_24E998048(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ContactsListDataSource.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210048 != -1)
  {
    swift_once();
  }

  v23 = qword_27F39B320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223420, &qword_24F9976A0);
  swift_allocObject();

  v13 = sub_24F922FE8();
  swift_beginAccess();

  MEMORY[0x253050F00](v14);
  if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  swift_endAccess();
  v23 = v13;
  sub_24E602068(&qword_27F223428, &qword_27F223420, &qword_24F9976A0, MEMORY[0x277CBCE48]);
  v15 = a1;
  v16 = sub_24F9230C8();
  sub_24E994B04(v15, v16, v12);
  swift_beginAccess();
  v17 = *(a6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_24E6181A0(0, v17[2] + 1, 1, v17);
    *(a6 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_24E6181A0((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  sub_24E99A930(v12, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, type metadata accessor for ContactsListDataSource.Item);
  *(a6 + 16) = v17;
  swift_endAccess();

  return result;
}

void sub_24E998320(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

id sub_24E9983B4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = v4;
  v80[1] = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for ContactsListDataSource.Item(0);
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[4];
  v12 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_69;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
  {
    while (1)
    {
      if (a1 < 0)
      {
        goto LABEL_71;
      }

      if (v12)
      {
        v13 = sub_24F92C738();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 < a2)
      {
        goto LABEL_72;
      }

      if (a2 < 0)
      {
        goto LABEL_73;
      }

      v69 = v3;
      if ((v11 & 0xC000000000000001) == 0)
      {
        goto LABEL_12;
      }

      if (a2 < a1)
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
      }

      if (a1 != a2)
      {
        if (a1 >= a2)
        {
          goto LABEL_78;
        }

        sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);

        v14 = a1;
        do
        {
          v15 = (v14 + 1);
          sub_24F92C8C8();
          v14 = v15;
        }

        while (a2 != v15);
      }

      else
      {
LABEL_12:
      }

      if (v12)
      {

        v16 = sub_24F92CB18();
        v3 = v17;
        a1 = v18;
        v12 = v19 >> 1;
      }

      else
      {
        v16 = v11 & 0xFFFFFFFFFFFFFF8;
        v3 = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
        v12 = a2;
      }

      v68 = v5;
      v73 = v10;
      v20 = MEMORY[0x277D84F90];
      v5 = sub_24E60B368(MEMORY[0x277D84F90]);
      v72 = v16;
      swift_unknownObjectRetain();
      a2 = &v3[a1];
      v76 = (v12 - a1);
      v70 = v12;
      v71 = a1;
      if (v12 != a1)
      {
        break;
      }

      a1 = v20;
LABEL_21:
      swift_unknownObjectRelease();
      v78 = MEMORY[0x277D84F90];
      v12 = v70 - v71;
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_74;
      }

      v66 = a1;
      a1 = MEMORY[0x277D84F90];
      v67 = v5;
      if (!v12)
      {
        v75 = MEMORY[0x277D84F90];
LABEL_59:
        v3 = swift_allocObject();
        v3[2] = a1;
        if (qword_27F210068 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_75;
      }

      aBlock[0] = MEMORY[0x277D84F90];
      swift_unknownObjectRetain();
      v3 = aBlock;
      sub_24F4583D0(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        goto LABEL_77;
      }

      v21 = v70;
      if (v70 <= v71)
      {
        v21 = v71;
      }

      a1 = aBlock[0];
      v5 = (v21 - v71);
      v11 = &qword_27F223420;
      while (v5)
      {
        v77 = a2;
        v22 = qword_27F210048;
        v76 = *a2;
        if (v22 != -1)
        {
          swift_once();
        }

        v80[0] = qword_27F39B320;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223420, &qword_24F9976A0);
        swift_allocObject();

        v23 = sub_24F922FE8();

        MEMORY[0x253050F00](v24);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
        v75 = v78;
        v80[0] = v23;
        sub_24E602068(&qword_27F223428, &qword_27F223420, &qword_24F9976A0, MEMORY[0x277CBCE48]);
        v25 = v76;
        v3 = v80;
        v26 = sub_24F9230C8();
        v10 = v73;
        sub_24E994B04(v25, v26, v73);

        aBlock[0] = a1;
        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        if (v28 >= v27 >> 1)
        {
          v3 = aBlock;
          sub_24F4583D0((v27 > 1), v28 + 1, 1);
          a1 = aBlock[0];
        }

        *(a1 + 16) = v28 + 1;
        sub_24E99A930(v10, a1 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v28, type metadata accessor for ContactsListDataSource.Item);
        v5 = (v5 - 1);
        a2 = (v77 + 1);
        --v12;
        v11 = &qword_27F223420;
        if (!v12)
        {
          swift_unknownObjectRelease();
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      if (sub_24F92C738() < a1)
      {
        goto LABEL_70;
      }
    }

    v10 = 0;
    if (v12 <= a1)
    {
      v29 = a1;
    }

    else
    {
      v29 = v12;
    }

    v75 = v29 - a1;
    a1 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v75 == v10)
      {
        goto LABEL_65;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_66;
      }

      v77 = *(a2 + 8 * v10);
      v31 = [v77 identifier];
      v32 = sub_24F92B0D8();
      v34 = v33;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_24E615CF4(0, *(a1 + 16) + 1, 1, a1);
      }

      v11 = *(a1 + 16);
      v35 = *(a1 + 24);
      if (v11 >= v35 >> 1)
      {
        a1 = sub_24E615CF4((v35 > 1), v11 + 1, 1, a1);
      }

      *(a1 + 16) = v11 + 1;
      v12 = a1;
      v36 = a1 + 16 * v11;
      *(v36 + 32) = v32;
      *(v36 + 40) = v34;
      v37 = [v77 identifier];
      a1 = sub_24F92B0D8();
      v39 = v38;

      v3 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v5;
      v41 = sub_24E76D644(a1, v39);
      v43 = v5[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_67;
      }

      v11 = v42;
      if (v5[3] < v46)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_53;
      }

      v3 = aBlock;
      v51 = v41;
      sub_24E8B0A94();
      v41 = v51;
      if (v11)
      {
LABEL_40:
        v30 = v41;

        v5 = aBlock[0];
        *(*(aBlock[0] + 7) + 8 * v30) = v10;

        goto LABEL_41;
      }

LABEL_54:
      v5 = aBlock[0];
      *(aBlock[0] + (v41 >> 6) + 8) |= 1 << v41;
      v48 = v5[6] + 16 * v41;
      *v48 = a1;
      v48[1] = v39;
      *(v5[7] + v41) = v10;

      v49 = v5[2];
      v45 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v45)
      {
        goto LABEL_68;
      }

      v5[2] = v50;
LABEL_41:
      ++v10;
      a1 = v12;
      if (v76 == v10)
      {
        goto LABEL_21;
      }
    }

    sub_24E89DE90(v46, isUniquelyReferenced_nonNull_native);
    v3 = aBlock[0];
    v41 = sub_24E76D644(a1, v39);
    if ((v11 & 1) != (v47 & 1))
    {
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }

LABEL_53:
    if (v11)
    {
      goto LABEL_40;
    }

    goto LABEL_54;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  swift_once();
LABEL_60:
  v52 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v53 = sub_24F92B588();
  v54 = [v52 initWithKeysToFetch_];

  v55 = objc_opt_self();
  v56 = sub_24F92B588();

  v57 = [v55 predicateForContactsWithIdentifiers_];

  [v54 setPredicate_];
  [v54 setUnifyResults_];
  v58 = v69[9];
  v59 = swift_allocObject();
  v59[2] = v67;
  v59[3] = v3;
  aBlock[4] = sub_24E99B150;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E998320;
  aBlock[3] = &block_descriptor_40;
  v60 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v61 = [v58 enumerateContactsAndMatchInfoWithFetchRequest:v54 error:aBlock usingBlock:v60];
  _Block_release(v60);
  v62 = aBlock[0];
  if (v61)
  {
    v63 = aBlock[0];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v62 = v3[2];
  }

  else
  {
    v64 = aBlock[0];
    sub_24F91F278();

    swift_willThrow();

    swift_unknownObjectRelease();
  }

  return v62;
}

void sub_24E998D40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 identifier];
  v9 = sub_24F92B0D8();
  v11 = v10;

  if (*(a4 + 16))
  {
    v12 = sub_24E76D644(v9, v11);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return;
    }

    v15 = *(*(a4 + 56) + 8 * v12);
    swift_beginAccess();
    v16 = *(a5 + 16);
    v17 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v16;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v16 = sub_24ECDE23C(v16);
      *(a5 + 16) = v16;
      if ((v15 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v15 < v16[2])
        {
          v19 = *(type metadata accessor for ContactsListDataSource.Item(0) - 8);
          v20 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
          v21 = *(v19 + 72) * v15;
          v22 = *&v20[v21];
          *&v20[v21] = v17;
          *(a5 + 16) = v16;
          swift_endAccess();

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_24E998ED4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4[18] = a2;
  v4[19] = v3;
  v4[17] = a1;
  v4[20] = *(type metadata accessor for ContactsListDataSource.Item(0) - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E998FCC, 0, 0);
}

uint64_t sub_24E998FCC(__n128 a1)
{
  v2 = *(*(v1 + 152) + 32);
  if (v2 >> 62)
  {
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v1 + 144);
  if (v3)
  {
    v5 = sub_24E9983B4(*(v1 + 136), v4, a1);
  }

  else
  {
    v5 = sub_24E997D1C(*(v1 + 136), v4);
  }

  v7 = v5;
  v8 = v6;
  sub_24E60169C(*(v1 + 152) + 80, v1 + 56, &unk_27F223410, &qword_24F96E570);
  if (*(v1 + 80))
  {
    sub_24E612C80((v1 + 56), v1 + 16);
    v9 = v7[2];
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v11 = *(v1 + 160);
      v21 = MEMORY[0x277D84F90];
      sub_24F92C978();
      v12 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v13 = *(v11 + 72);
      do
      {
        v14 = *(v1 + 168);
        sub_24E99ACBC(v12, v14, type metadata accessor for ContactsListDataSource.Item);
        v15 = *v14;
        sub_24E99AD24(v14);
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v12 += v13;
        --v9;
      }

      while (v9);
      v10 = v21;
    }

    v16 = *(v1 + 176);
    sub_24F92B808();
    v17 = sub_24F92B858();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
    sub_24E615E00(v1 + 16, v1 + 96);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    sub_24E612C80((v1 + 96), (v18 + 4));
    v18[9] = v10;
    v18[10] = v8;
    sub_24EA998B8(0, 0, v16, &unk_24F96E580, v18);

    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  }

  else
  {

    sub_24E601704(v1 + 56, &unk_27F223410, &qword_24F96E570);
  }

  v19 = *(v1 + 8);

  return v19(v7);
}

uint64_t sub_24E9992D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v6[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E999374, 0, 0);
}

uint64_t sub_24E999374()
{
  v1 = *(v0 + 24);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  sub_24E7728D0(sub_24E99AFC8, v3, v1);
  v5 = v4;
  *(v0 + 48) = v4;

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_24E99946C;

  return sub_24F40B9AC(v5);
}

uint64_t sub_24E99946C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_24E9996C4;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_24E999594;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E999594()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[4];

  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24F92B7F8();
  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v1;
  v6[5] = v3;

  sub_24EA998B8(0, 0, v2, &unk_24F96E598, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24E9996C4()
{

  if (qword_27F2113D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7C0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Unable to build social menu for contacts: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24E999878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_24F92B7F8();
  v5[5] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E999910, v7, v6);
}

void sub_24E999910()
{
  v1 = v0[3];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[4];
    v5 = v0[3] + 32;
    v6 = v4 & 0xC000000000000001;
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v8 = *(v5 + 8 * v3);
      if (v6)
      {
        v9 = v0[4];

        MEMORY[0x253052270](v3, v9);
      }

      else
      {
        if (v3 >= *(v7 + 16))
        {
          __break(1u);
          return;
        }
      }

      ++v3;
      v0[2] = v8;
      sub_24F922FD8();
    }

    while (v2 != v3);
  }

  v10 = v0[1];

  v10();
}

id sub_24E999A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 56);
  v27[0] = 0xD000000000000016;
  v27[1] = 0x800000024F96E350;
  v5 = MEMORY[0x277D84F90];
  v27[6] = MEMORY[0x277D84F90];
  v27[7] = 3;
  v27[5] = 0;
  v27[2] = MEMORY[0x277D84F90];
  v27[3] = MEMORY[0x277D84F90];
  sub_24E60169C(a2, v28, &unk_27F223410, &qword_24F96E570);
  if (qword_27F2113D0 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E7C0);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BDA8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "ContactsListDataSource created", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v10 = [objc_opt_self() currentEnvironment];
  v11 = [v10 contactStore];
  v12 = [objc_allocWithZone(MEMORY[0x277CBDC30]) initWithStore_];

  if (v12)
  {
    if (*(v4 + 16))
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CBDC38]) init];

      sub_24F45D828(v14);

      v15 = sub_24F92BA98();
      v5 = MEMORY[0x277D84F90];

      [v13 setContainerIdentifiers_];

      [v12 setFilter_];
    }

    v27[4] = v5;
    v27[8] = v12;
    v16 = v12;
    result = [v16 store];
    if (result)
    {
      v18 = result;

      v27[9] = v18;
      v19 = sub_24F9220B8();
      v20 = sub_24F92BDA8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_24E5DD000, v19, v20, "starting section update…", v21, 2u);
        MEMORY[0x2530542D0](v21, -1, -1);
      }

      sub_24E996BE0();
      v22 = sub_24F9220B8();
      v23 = sub_24F92BDA8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_24E5DD000, v22, v23, "ready", v24, 2u);
        MEMORY[0x2530542D0](v24, -1, -1);
        v25 = v16;
      }

      else
      {
        v25 = v22;
        v22 = v16;
      }

      sub_24E601704(a2, &unk_27F223410, &qword_24F96E570);
      sub_24E99B4E4(v27, a3);
      return sub_24E99B51C(v27);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_24E601704(a2, &unk_27F223410, &qword_24F96E570);

    result = sub_24E601704(v28, &unk_27F223410, &qword_24F96E570);
    *(a3 + 112) = 0;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_24E999F04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v19 = *(v10 + 16);
  if (*(v19 + 16) <= result)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v20 = *(v19 + 16 * result + 32);
  }

  *a9 = v20;
  *(a9 + 8) = v21;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3 & 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5 & 1;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10 & 1;
}

double sub_24E999FEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  sub_24E99ACBC(a1, a9, type metadata accessor for ContactsListDataSource.Item);
  if (qword_27F210048 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for ContactsListDataSource.ItemView(0);
  v19 = a9 + v18[5];
  *v19 = a2;
  *(v19 + 8) = a3;
  *(v19 + 16) = a4;
  *(v19 + 24) = a5 & 1;
  v20 = a9 + v18[6];
  *v20 = a6;
  *(v20 + 8) = a7;
  *(v20 + 16) = a8;
  *(v20 + 24) = a10 & 1;
  v21 = v18[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213840, &unk_24F93B3C0);
  sub_24F926F28();
  result = *&v23;
  *(a9 + v21) = v23;
  return result;
}

uint64_t sub_24E99A12C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E67D094;

  return sub_24E998ED4(a1, a2, v6);
}

unint64_t sub_24E99A208()
{
  result = qword_27F223320;
  if (!qword_27F223320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2232C8, &qword_24F96E468);
    sub_24E99A2C0();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223320);
  }

  return result;
}

unint64_t sub_24E99A2C0()
{
  result = qword_27F223328;
  if (!qword_27F223328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2232C0, &qword_24F96E460);
    sub_24E602068(&unk_27F223330, &qword_27F2232B8, &qword_24F96E458, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223328);
  }

  return result;
}

unint64_t sub_24E99A378()
{
  result = qword_27F223360;
  if (!qword_27F223360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2232D8, &qword_24F96E478);
    sub_24E99A404();
    sub_24E99A4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223360);
  }

  return result;
}

unint64_t sub_24E99A404()
{
  result = qword_27F223368;
  if (!qword_27F223368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F223370, &qword_24F96E4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2232C8, &qword_24F96E468);
    sub_24E99A208();
    swift_getOpaqueTypeConformance2();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223368);
  }

  return result;
}

unint64_t sub_24E99A4CC()
{
  result = qword_27F223380;
  if (!qword_27F223380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223388, &qword_24F96E4E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2232C8, &qword_24F96E468);
    sub_24E99A208();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223380);
  }

  return result;
}

unint64_t sub_24E99A594()
{
  result = qword_27F223390;
  if (!qword_27F223390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390, &qword_24F93FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223390);
  }

  return result;
}

unint64_t sub_24E99A610()
{
  result = qword_27F223398;
  if (!qword_27F223398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2232E8, &qword_24F96E488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2232D8, &qword_24F96E478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390, &qword_24F93FC50);
    sub_24E99A378();
    sub_24E99A594();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2233A0, &qword_27F2233A8, &qword_24F96E4F0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223398);
  }

  return result;
}

uint64_t sub_24E99A750()
{
  v1 = *(type metadata accessor for ContactsListDataSource.ItemView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  v3 = v2 + *(type metadata accessor for ContactsListDataSource.Item(0) + 24);

  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v6 - 8) + 48))(&v3[v5], 1, v6) && !swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F9289E8();
    (*(*(v7 - 8) + 8))(&v3[v5], v7);
  }

  v8 = &v3[*(v4 + 24)];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return swift_deallocObject();
}

uint64_t sub_24E99A930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E99A998(uint64_t *a1)
{
  v3 = *(type metadata accessor for ContactsListDataSource.ItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E9967F8(a1, v4);
}

unint64_t sub_24E99AA08()
{
  result = qword_27F2233E8;
  if (!qword_27F2233E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D8, &unk_24F96E540);
    sub_24E602068(&qword_27F2233F0, &qword_27F2233F8, &qword_24F96E550, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2233E8);
  }

  return result;
}

double sub_24E99AAB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    *&v13 = a1;
    *(&v13 + 1) = a2;
    sub_24E600AEC();

    v5 = sub_24F925E18();
    v7 = v6;
    v9 = v8;
    if (qword_27F210058 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  *&v13 = a1;
  *(&v13 + 1) = a2;
  sub_24E600AEC();

  v5 = sub_24F925E18();
  v7 = v10;
  v9 = v11;
  if (qword_27F210050 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_24F925C98();
  sub_24E600B40(v5, v7, v9 & 1);

  sub_24F924E28();
  result = *&v13;
  *a4 = v13;
  *(a4 + 16) = v14;
  *(a4 + 32) = v15;
  return result;
}

uint64_t sub_24E99ACBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E99AD24(uint64_t a1)
{
  v2 = type metadata accessor for ContactsListDataSource.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E99AD80()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24E99ADD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E9992D4(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_24E99AE94()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_24E643A9C(a2 + 32, a1 + 32);
}

uint64_t sub_24E99AF04()
{

  return swift_deallocObject();
}

uint64_t sub_24E99AF80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E99AFE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E99B030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24E999878(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_18Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

unint64_t sub_24E99B158()
{
  result = qword_27F223480;
  if (!qword_27F223480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F223470, &unk_24F9975B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223488, &unk_24F997550);
    sub_24E99B220();
    swift_getOpaqueTypeConformance2();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223480);
  }

  return result;
}

unint64_t sub_24E99B220()
{
  result = qword_27F223490;
  if (!qword_27F223490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223488, &unk_24F997550);
    sub_24E99B2D8();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223490);
  }

  return result;
}

unint64_t sub_24E99B2D8()
{
  result = qword_27F223498;
  if (!qword_27F223498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2234A0, &unk_24F96E5D0);
    sub_24E99B364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223498);
  }

  return result;
}

unint64_t sub_24E99B364()
{
  result = qword_27F22DE90;
  if (!qword_27F22DE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2234B0, &unk_24F997540);
    sub_24E602068(&qword_27F2234B8, &unk_27F2234C0, &unk_24F96E5E0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DE90);
  }

  return result;
}

unint64_t sub_24E99B41C()
{
  result = qword_27F22DEB0;
  if (!qword_27F22DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223460, &qword_24F96E5A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223488, &unk_24F997550);
    sub_24E99B220();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DEB0);
  }

  return result;
}

uint64_t sub_24E99B590(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PlayerAvatar(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}