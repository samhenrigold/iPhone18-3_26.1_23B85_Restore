uint64_t sub_1D5C3988C()
{
  sub_1D725AC4C();

  sub_1D725AC3C();
}

uint64_t sub_1D5C398F0(uint64_t a1)
{
  sub_1D5C3997C(v4);
  v2 = *(a1 + 88);
  v4[0] = *(a1 + 80);
  v4[1] = v2;

  sub_1D725AD2C();
}

void sub_1D5C3997C(unint64_t *a1@<X8>)
{
  v4 = v1;
  v6 = sub_1D7261B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  *v10 = sub_1D726308C();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8018], v6);
  v11 = sub_1D7261BBC();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    sub_1D725BFBC();
    v3 = v21;
    v2 = v22;
    if (v21 >> 1 == 0xFFFFFFFF)
    {
      sub_1D725B77C();
      sub_1D5B5D5E0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      v20 = xmmword_1D7273AE0;
      *(v12 + 16) = xmmword_1D7273AE0;
      v13 = v4[7];
      *(v12 + 32) = v4[6];
      *(v12 + 40) = v13;

      v19 = sub_1D725C5AC();

      sub_1D5FCFCC8(v19, &v21);

      if (v22)
      {
        v3 = v23;
        v2 = v24;

        v21 = v3;
        v22 = v2;
        sub_1D725BFCC();
        v21 = v3;
        v22 = v2;
        sub_1D6F48CD4(&v21);
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v14 = qword_1EDFFCC08;
    v15 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v16 = swift_allocObject();
    *(v16 + 16) = v20;
    v21 = 0;
    v22 = 0xE000000000000000;
    v25 = v4;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    v17 = v21;
    v18 = v22;
    *(v16 + 56) = v6;
    *(v16 + 64) = sub_1D5B7E2C0();
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_1D725C30C("Failed to load family status when attempting to read from key value store with error: %{public}@", 96, 2, &dword_1D5B42000, v14, v15, v16);
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D5C39CC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D725B77C();
  sub_1D5B789F0(0);
  swift_allocObject();
  result = sub_1D725C5CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C39E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _s8NewsFeed22StubThumbnailProcessorC7processySo7UIImageCSg5TeaUI25ProcessedImageRequestType_pF_0(uint64_t a1)
{
  sub_1D5B68374(a1, aBlock);
  sub_1D61BA350();
  type metadata accessor for ThumbnailProcessorRequest(0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = *(v11 + 96);
  v2 = *(v11 + 104);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D723F624;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1D6139588;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D62E78B0;
  aBlock[3] = &block_descriptor_149;
  v6 = _Block_copy(aBlock);

  v7 = [v3 imageWithActions_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1D726362C();

    return v9;
  }

  return result;
}

uint64_t FeedCursorContainer.feedContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
    v2 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + qword_1EDFFC680;
  }

  else
  {
    v2 = a1 + *(*a1 + 232);
  }

  return sub_1D5BE6814(v2, a2);
}

uint64_t (*FeedModel<>.init(model:context:namespace:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11))(uint64_t a1, uint64_t a2)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v23[0] = a6;
  v23[1] = a7;
  v23[2] = a8;
  v23[3] = a10;
  v19 = type metadata accessor for FeedModel(0, v23);
  sub_1D5C25D20(a2, a9 + v19[13]);
  v20 = (a9 + v19[14]);
  *v20 = a3;
  v20[1] = a4;
  (*(*(a7 - 8) + 32))(a9 + v19[15], a5, a7);
  result = swift_allocObject();
  *(result + 2) = a6;
  *(result + 3) = a7;
  *(result + 4) = a8;
  *(result + 5) = a10;
  *(result + 6) = a11;
  v22 = (a9 + v19[16]);
  *v22 = sub_1D5C38688;
  v22[1] = result;
  return result;
}

uint64_t FeedBannerAdRequester.scheduleRequest(for:placement:position:createContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v71 = a3;
  v72 = a4;
  v69 = a1;
  v10 = sub_1D7261ABC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D7261B2C();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v14);
  v73 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D7260A9C();
  v16 = *(v70 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v70, v18);
  v68 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedBannerAd(0);
  v67 = *(v19 - 8);
  v20 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v22 = sub_1D7260A8C();
  v77 = v6;
  aBlock = *&v22;
  v79 = v23;

  v24 = sub_1D725AC7C();

  if (v24)
  {
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDFFC830;
    sub_1D5B5E1BC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7270C10;
    v27 = sub_1D7260A8C();
    v29 = v28;
    v30 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v31 = sub_1D5B7E2C0();
    *(v26 + 64) = v31;
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    aBlock = a5;
    v79 = *&a6;
    type metadata accessor for CGPoint(0);
    v32 = sub_1D72620FC();
    *(v26 + 96) = v30;
    *(v26 + 104) = v31;
    *(v26 + 72) = v32;
    *(v26 + 80) = v33;
    v34 = sub_1D7262EDC();
    sub_1D725C30C("Ad request already scheduled for placement=%{public}@, position=%{public}@", 74, 2, &dword_1D5B42000, v25, v34, v26);
  }

  else
  {
    v65 = v11;
    v66 = v10;
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v64 = qword_1EDFFC830;
    sub_1D5B5E1BC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D7270C10;
    v37 = sub_1D7260A8C();
    v39 = v38;
    v40 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1D5B7E2C0();
    *(v36 + 64) = v41;
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    aBlock = a5;
    v79 = *&a6;
    type metadata accessor for CGPoint(0);
    v42 = sub_1D72620FC();
    *(v36 + 96) = v40;
    *(v36 + 104) = v41;
    *(v36 + 72) = v42;
    *(v36 + 80) = v43;
    v44 = sub_1D7262EDC();
    sub_1D725C30C("Scheduling ad request for placement=%{public}@, position=%{public}@", 67, 2, &dword_1D5B42000, v64, v44, v36);

    v45 = v77;

    v84 = sub_1D7260A8C();
    v85 = v46;
    sub_1D725AC5C();

    v64 = *(v45 + 40);
    v47 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D5C3ABB0(v69, v47, type metadata accessor for FeedBannerAd);
    v48 = v68;
    v49 = a2;
    v50 = v70;
    (*(v16 + 16))(v68, v49, v70);
    v51 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v52 = (v20 + *(v16 + 80) + v51) & ~*(v16 + 80);
    v53 = (v17 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    sub_1D5C3AC18(v47, v55 + v51, type metadata accessor for FeedBannerAd);
    (*(v16 + 32))(v55 + v52, v48, v50);
    v56 = (v55 + v53);
    *v56 = a5;
    v56[1] = a6;
    v57 = (v55 + v54);
    v58 = v72;
    *v57 = v71;
    v57[1] = v58;
    *(v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8)) = v77;
    v82 = sub_1D5FCB3E4;
    v83 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1D5B6B06C;
    v81 = &block_descriptor_6;
    v59 = _Block_copy(&aBlock);

    v60 = v73;
    sub_1D7261AEC();
    v84 = MEMORY[0x1E69E7CC0];
    sub_1D5B73758(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D5B73908(0);
    sub_1D5B73758(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
    v61 = v75;
    v62 = v66;
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v60, v61, v59);
    _Block_release(v59);
    (*(v65 + 8))(v61, v62);
    (*(v74 + 8))(v60, v76);
  }
}

uint64_t sub_1D5C3A9E4()
{
  v1 = (type metadata accessor for FeedBannerAd(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v9 = *(*v1 + 64);
  v3 = sub_1D7260A9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);

  v6 = v1[7];
  v7 = sub_1D7260DDC();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  if (*(v0 + v2 + v1[10] + 8) >= 0x12uLL)
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v9 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1D5C3ABB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C3AC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D5C3ACB8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1D5C3AD08();
}

void sub_1D5C3AD08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v1 = swift_unknownObjectWeakLoadStrong();

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5C3AE10(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D5BFB8A8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D5C3AE80(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D5C16694(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t FeedItemImpressionProcessor.init(contentPrefetchManager:recipeHistory:readingHistory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 56) = 0;
  v8 = (v3 + 56);
  *(v3 + 64) = 0;
  sub_1D5C3AE10(a1, v3 + 16, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
  sub_1D5C3AE10(a2, &v13, &unk_1EDF3A8C0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20]);
  if (!v14)
  {
    sub_1D5BFB774(&v13, &unk_1EDF3A8C0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20]);
    swift_beginAccess();
    *v8 = 0;

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D5BFB774(a2, &unk_1EDF3A8C0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20]);
    sub_1D5BFB774(a1, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
    v11 = 0;
    goto LABEL_6;
  }

  sub_1D5B63F14(&v13, v15);
  sub_1D5B68374(v15, &v13);
  v9 = swift_allocObject();
  sub_1D5B63F14(&v13, v9 + 16);
  sub_1D5C39268(0, &qword_1EDF3B710, sub_1D5B7AF6C);
  swift_allocObject();
  v10 = sub_1D725CEDC();
  __swift_destroy_boxed_opaque_existential_1(v15);
  swift_beginAccess();
  *v8 = v10;

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(swift_allocObject() + 16) = a3;
  sub_1D5C39268(0, &qword_1EDF3B720, sub_1D5B5D6A0);
  swift_allocObject();
  v11 = sub_1D725CEDC();
  sub_1D5BFB774(a2, &unk_1EDF3A8C0, &qword_1EDF3A8D0, MEMORY[0x1E69B4F20]);
  sub_1D5BFB774(a1, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
LABEL_6:
  swift_beginAccess();
  *(v4 + 64) = v11;

  return v4;
}

uint64_t sub_1D5C3B1D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C3B20C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t FeedPluginManager.add<A>(factory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + class metadata base offset for FeedPluginManager);
  v8 = *(*v3 + class metadata base offset for FeedPluginManager + 16);
  type metadata accessor for FeedPluginManager.FactoryWrapper(0, v7, *(*v3 + class metadata base offset for FeedPluginManager + 8), v8);
  v9 = sub_1D5C3DA68(a1, v7, a2, a3, v8);
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  swift_beginAccess();
  sub_1D72627FC();

  sub_1D72627BC();
  swift_endAccess();
}

uint64_t sub_1D5C3B3B4(uint64_t a1)
{
  sub_1D5B74328(*(a1 + qword_1EC894F50), *(a1 + qword_1EC894F50 + 8));
  v2 = (a1 + qword_1EC894F58);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D5C3B404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D5C3B454()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D10], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF3C2B0 = result;
  return result;
}

uint64_t sub_1D5C3B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64684;

  return FeedSponsorshipAdService.fetchSponsoredAd(placementIdentifier:build:)(a1, a2, a3, a4, a5);
}

unint64_t sub_1D5C3B6CC()
{
  result = qword_1EDF43910;
  if (!qword_1EDF43910)
  {
    sub_1D7260A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43910);
  }

  return result;
}

uint64_t sub_1D5C3B724()
{
  v1 = v0[8];
  v2 = v1[18];
  v3 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v2);
  if (((*(v3 + 184))(v2, v3) & 1) == 0)
  {
    sub_1D5C3BF10();
    swift_allocError();
    v13 = 2;
LABEL_7:
    *v12 = v13;
    swift_willThrow();
    goto LABEL_8;
  }

  if ((sub_1D5C3E940(v0[8]) & 1) == 0)
  {
    sub_1D5C3BF10();
    swift_allocError();
    v13 = 3;
    goto LABEL_7;
  }

  v4 = v0[30];
  v28 = v0[32];
  v5 = v0[29];
  v26 = v0[33];
  v27 = v0[28];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[25];
  v24 = v0[6];
  v25 = v0[7];
  sub_1D5C3EA00(0);
  v0[34] = v9;
  sub_1D726024C();
  (*(v6 + 104))(v7, *MEMORY[0x1E69B3F70], v8);

  sub_1D7260B0C();
  v10 = swift_task_alloc();
  *(v10 + 16) = v24;
  *(v10 + 24) = v25;
  sub_1D72606DC();

  (*(v5 + 8))(v4, v27);
  sub_1D5C3BBD4(v26, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v0[33];

    swift_willThrow();
    sub_1D5C40AE0(v11);
LABEL_8:

    v14 = v0[1];

    return v14();
  }

  v16 = v0[32];
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[22];
  sub_1D5C3EAA4(0);
  v0[35] = *(v16 + *(v20 + 48));
  v21 = *(v19 + 32);
  v0[36] = v21;
  v0[37] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v21(v17, v16, v18);
  sub_1D726290C();
  v0[38] = sub_1D72628FC();
  v23 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D5C40088, v23, v22);
}

uint64_t sub_1D5C3BAC8(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C3EA00(0);
  sub_1D726024C();
  sub_1D7260A3C();
  sub_1D7260ADC();
  sub_1D7260B1C();
  sub_1D5C3B6CC();
  sub_1D72609DC();
}

uint64_t sub_1D5C3BBD4(uint64_t a1, uint64_t a2)
{
  sub_1D5C3E8AC(0, &qword_1EDF168C0, MEMORY[0x1E69B3F80]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnyFeedManager.loadingSource.getter()
{
  sub_1D5B8EF70();
}

uint64_t sub_1D5C3BC7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BundleSessionConfigProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D5C3BE44(void *a1, int a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2;
  v4 = a1;
  v3(&v5);
}

uint64_t sub_1D5C3BEA4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8]();
}

unint64_t sub_1D5C3BF10()
{
  result = qword_1EDF13B98[0];
  if (!qword_1EDF13B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF13B98);
  }

  return result;
}

void sub_1D5C3BF74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1D5C3BFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C3C04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ResourceServiceType.fetchResource(identifier:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5C3BFE8(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  v14 = sub_1D725A82C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = ResourceServiceType.fetchResource(identifier:qualityOfService:cachePolicy:purpose:lifetime:)(a1, a2, a3, v13, *MEMORY[0x1E69B50B8], 0, 0, a4, a5);
  sub_1D5C3C4D0(v13);
  return v15;
}

uint64_t ResourceServiceType.fetchResource(identifier:qualityOfService:cachePolicy:purpose:lifetime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  sub_1D5C3C32C(0);
  sub_1D725BDCC();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  v12 = sub_1D725B92C();
  sub_1D5B5A498(0, &qword_1EDF1AC40, 0x1E69B5598);
  v13 = sub_1D725BA8C();

  return v13;
}

uint64_t sub_1D5C3C2F4()
{

  return swift_deallocObject();
}

void sub_1D5C3C32C(uint64_t a1)
{
  if (!qword_1EDF1B800)
  {
    sub_1D5B5A498(255, &qword_1EDF1AC40, 0x1E69B5598);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B800);
    }
  }
}

uint64_t sub_1D5C3C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  sub_1D5C3C480();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  v16 = *(a10 + 8);

  v17 = v16(v15, a4, a5, a6, a7, a8 & 1, 0, a9, a10);

  return v17;
}

void sub_1D5C3C480()
{
  if (!qword_1EDF195B0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF195B0);
    }
  }
}

uint64_t sub_1D5C3C4D0(uint64_t a1)
{
  sub_1D5B67800(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5C3C55C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 == 2)
  {
    if (qword_1EDF3C238 != -1)
    {
      a1 = swift_once();
    }

    sub_1D5C3C618(a1, a2);
    sub_1D725964C();
    LOBYTE(v3) = v5;
    *(v2 + 24) = v5;
  }

  return v3 & 1;
}

unint64_t sub_1D5C3C618(uint64_t a1, uint64_t a2)
{
  result = qword_1EDF30DF8;
  if (!qword_1EDF30DF8)
  {
    type metadata accessor for ResourceService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30DF8);
  }

  return result;
}

id sub_1D5C3C698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1D5B7E910;
  v11[5] = v10;
  v14[4] = sub_1D5C3C84C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D5C38428;
  v14[3] = &block_descriptor_46;
  v12 = _Block_copy(v14);

  [a5 setFetchCompletionBlock_];
  _Block_release(v12);
  return [a5 start];
}

uint64_t sub_1D5C3C7D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C3C80C()
{

  return swift_deallocObject();
}

void sub_1D5C3C858(void *a1, void (*a2)(void *), uint64_t a3, void *a4)
{
  if (![a1 status] && (v15 = objc_msgSend(a1, sel_fetchedObject)) != 0 && (v46 = v15, sub_1D5C3CCC4(0), (swift_dynamicCast() & 1) != 0))
  {
    isUniquelyReferenced_nonNull_native = v45;
    if (v45 >> 62)
    {
LABEL_33:
      v17 = sub_1D7263BFC();
      v40 = a4;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = a4;
      if (v17)
      {
LABEL_10:
        v18 = 0;
        v42 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v43 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v19 = MEMORY[0x1E69E7CC8];
        v41 = isUniquelyReferenced_nonNull_native;
        while (1)
        {
          if (v43)
          {
            v21 = MEMORY[0x1DA6FB460](v18, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            if (v18 >= *(v42 + 16))
            {
              goto LABEL_30;
            }

            v21 = *(isUniquelyReferenced_nonNull_native + 8 * v18 + 32);
          }

          v22 = v21;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v44 = v18 + 1;
          v23 = [v21 resourceID];
          v24 = sub_1D726207C();
          v26 = v25;

          v27 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v19;
          a4 = v19;
          v29 = sub_1D5B69D90(v24, v26);
          v30 = v19[2];
          v31 = (v28 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_31;
          }

          v33 = v28;
          if (v19[3] >= v32)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v28)
              {
                goto LABEL_11;
              }
            }

            else
            {
              a4 = &v46;
              sub_1D6D8403C();
              if (v33)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
            sub_1D5C4169C(v32, isUniquelyReferenced_nonNull_native);
            a4 = v46;
            v34 = sub_1D5B69D90(v24, v26);
            if ((v33 & 1) != (v35 & 1))
            {
              sub_1D726493C();
              __break(1u);
              return;
            }

            v29 = v34;
            if (v33)
            {
LABEL_11:

              v19 = v46;
              v20 = v46[7];
              a4 = *(v20 + 8 * v29);
              *(v20 + 8 * v29) = v27;

              goto LABEL_12;
            }
          }

          v19 = v46;
          v46[(v29 >> 6) + 8] |= 1 << v29;
          v36 = (v19[6] + 16 * v29);
          *v36 = v24;
          v36[1] = v26;
          *(v19[7] + 8 * v29) = v27;

          v37 = v19[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_32;
          }

          v19[2] = v39;
LABEL_12:
          ++v18;
          isUniquelyReferenced_nonNull_native = v41;
          if (v44 == v17)
          {
            goto LABEL_35;
          }
        }
      }
    }

    v19 = MEMORY[0x1E69E7CC8];
LABEL_35:

    v40(v19);
  }

  else
  {
    v7 = [a1 error];
    if (!v7)
    {
      sub_1D67F3330();
      v7 = swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 3;
    }

    v9 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1D5B7E2C0();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
    v11 = sub_1D72638FC();
    sub_1D725C30C("ResourceService failed to download resources from CK, error=%{public}@", 70, 2, &dword_1D5B42000, v11, v9, v10);

    sub_1D67F3330();
    v12 = swift_allocError();
    *v13 = v7;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    v14 = v7;
    a2(v12);
  }
}

void sub_1D5C3CCC4(uint64_t a1)
{
  if (!qword_1EDF1AEE0)
  {
    sub_1D5B5A498(255, &qword_1EDF1AC40, 0x1E69B5598);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AEE0);
    }
  }
}

uint64_t FeedServiceDebugger.init(blueprintProvider:cursorContainerBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 88) - 8) + 32))(v3 + *(*v3 + 112), a1);
  v6 = (v3 + *(*v3 + 120));
  *v6 = a2;
  v6[1] = a3;
  return v3;
}

void *ImagePersistenceProvider.init(imageCache:rendererEnvironment:layoutCollectionProvider:layoutProvider:layoutOptionsProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B63F14(a1, (v6 + 2));
  sub_1D5B63F14(a2, (v6 + 7));
  v6[12] = a3;
  v6[13] = a4;
  v6[14] = a5;
  v6[15] = a6;
  return v6;
}

uint64_t FeedNativeAdManager.onFetch(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DisposableObserver();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  MEMORY[0x1DA6F9CE0](v10);
  if (*((*(v4 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_endAccess();
  a3[3] = v8;
  result = sub_1D5C3CFB4(qword_1EDF2E610, type metadata accessor for DisposableObserver, &unk_1D72AB8E4);
  a3[4] = result;
  *a3 = v9;
  return result;
}

uint64_t sub_1D5C3CFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FormatLayoutViewRenderer.analyticsDataProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v4 = *(*(v2 + 184) + 56);
  swift_unknownObjectWeakLoadStrong();
  v5 = *(v2 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v4 + 24) = v5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void *FormatLayoutViewDebugger.init<A>(blueprintLayoutProvider:block:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v10);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *(v8 + 32);
  v14(v13 + v12, v11, a4);
  v5[4] = sub_1D6B48920;
  v5[5] = v13;
  v14(v11, v20, a4);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v14(v15 + v12, v11, a4);
  v5[6] = sub_1D6B48924;
  v5[7] = v15;
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v21;
  *(v16 + 24) = v17;
  v5[2] = sub_1D6B476E8;
  v5[3] = v16;
  return v5;
}

{
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v10);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *(v8 + 32);
  v14(v13 + v12, v11, a4);
  v5[4] = sub_1D6B47250;
  v5[5] = v13;
  v14(v11, v20, a4);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v14(v15 + v12, v11, a4);
  v5[6] = sub_1D6B47268;
  v5[7] = v15;
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v21;
  *(v16 + 24) = v17;
  v5[2] = sub_1D6B4735C;
  v5[3] = v16;
  return v5;
}

uint64_t static BlueprintLayoutCollectionPipelineProcessorConfig.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D725F58C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF29DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EDF29DE0 == 1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8730], v2);
    sub_1D725F59C();
    v7 = sub_1D725F5AC();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = sub_1D725F5AC();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t sub_1D5C3D454()
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C2F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D72596EC();

  byte_1EDF29DE0 = v0 & 1;
  return result;
}

void FeedPluginManager.pluginContainerController.setter(void *a1, uint64_t a2)
{
  sub_1D725CF8C();
  v4 = sub_1D725CF9C();
  v5 = a1;
  v4(a1, a2);
  sub_1D5C3D600();
}

void sub_1D5C3D600()
{
  sub_1D725CF8C();
  v0 = sub_1D725CF9C();
  v2 = v0();
  sub_1D5C392BC(v2, v1);
}

uint64_t sub_1D5C3D678()
{
  v1 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  return (*(v1 + 40))(Strong, *(v0 + 40), ObjectType, v1);
}

void sub_1D5C3D6D8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + 184);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v2 + 40);

  swift_beginAccess();
  *(v5 + 24) = v7;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5C3D770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  sub_1D725AA4C();
  v9 = v8[10];
  v10 = v8[12];
  type metadata accessor for FormatFeedPluginFactory.FactoryWrapper(0, v9, v8[11], v10);
  v11 = sub_1D5C3D8B8(a1, v9, a2, a3, v10);
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  swift_beginAccess();
  sub_1D7261E1C();
  sub_1D7261E4C();
  return swift_endAccess();
}

uint64_t (*sub_1D5C3D8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a3);
  return sub_1D6865240;
}

uint64_t sub_1D5C3D9E8()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t (*sub_1D5C3DA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a3);
  return sub_1D5D1F05C;
}

uint64_t sub_1D5C3DB98()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

void *sub_1D5C3DC18(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], 1);
  result = sub_1D725AA8C();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AA8C();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AA8C();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AA8C();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40], 1);
  result = sub_1D725AACC();
  if (v7)
  {
    type metadata accessor for FeedItemRendererPipelineProcessor(0);
    v3 = swift_allocObject();
    v4 = OBJC_IVAR____TtC8NewsFeed33FeedItemRendererPipelineProcessor_lastRendererOptions;
    v5 = sub_1D725D58C();
    (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
    sub_1D5B63F14(&v14, v3 + 16);
    sub_1D5B63F14(&v12, v3 + 56);
    sub_1D5B63F14(&v10, v3 + 96);
    sub_1D5B63F14(&v8, v3 + 136);
    sub_1D5B63F14(&v6, v3 + 176);
    return v3;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t OfflineManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = (v1 + qword_1EC894F58);
  v6 = *(v1 + qword_1EC894F58 + 24);
  v5 = *(v1 + qword_1EC894F58 + 32);
  __swift_project_boxed_opaque_existential_1(v4, v6);
  result = (*(*(v5 + 8) + 8))(v6);
  if (result <= 2)
  {
    switch(result)
    {
      case 0:
        *(a1 + 48) = 0;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        *a1 = 0u;
        return result;
      case 1:
        result = (*(*(v3 + 88) + 8))(v10);
        goto LABEL_15;
      case 2:
        result = (*(*(v3 + 88) + 16))(v10);
        goto LABEL_15;
    }
  }

  else
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        result = (*(*(v3 + 88) + 48))(v10);
LABEL_15:
        v8 = v10[1];
        v9 = v11;
        *a1 = v10[0];
        *(a1 + 16) = v8;
        *(a1 + 32) = v9;
        *(a1 + 40) = v12;
        return result;
      }

LABEL_14:
      result = (*(*(v3 + 88) + 32))(v10);
      goto LABEL_15;
    }

    if (result == 5)
    {
      goto LABEL_14;
    }

    if (result == 6)
    {
      result = (*(*(v3 + 88) + 40))(v10);
      goto LABEL_15;
    }
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t FeedContextFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  sub_1D5C39250(*(v0 + 192), *(v0 + 200));
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));

  return v0;
}

uint64_t FeedContextFactory.__deallocating_deinit()
{
  FeedContextFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedUserInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D5C3E1E0()
{
  result = qword_1EDF15770;
  if (!qword_1EDF15770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15770);
  }

  return result;
}

unint64_t sub_1D5C3E234()
{
  result = qword_1EDF15778[0];
  if (!qword_1EDF15778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF15778);
  }

  return result;
}

uint64_t dispatch thunk of FeedSponsorshipAdServiceType.fetchSponsoredAd(placementIdentifier:build:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D5B64684;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t FeedSponsorshipAdService.fetchSponsoredAd(placementIdentifier:build:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  sub_1D5C3E7FC(0);
  v6[9] = swift_task_alloc();
  sub_1D5C3E854(0, &qword_1EDF168C8, &qword_1EDF168D0, MEMORY[0x1E69B3F28]);
  v6[10] = swift_task_alloc();
  v7 = MEMORY[0x1E69B4438];
  sub_1D5C3E854(0, &qword_1EDF16880, &unk_1EDF16888, MEMORY[0x1E69B4438]);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = sub_1D726083C();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v9 = sub_1D72608BC();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_1D5C3E8AC(0, &unk_1EDF16888, v7);
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v11 = sub_1D726058C();
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v12 = sub_1D7260B1C();
  v6[28] = v12;
  v6[29] = *(v12 - 8);
  v6[30] = swift_task_alloc();
  sub_1D5C3E8AC(0, &qword_1EDF168C0, MEMORY[0x1E69B3F80]);
  v6[31] = v13;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5C3B724, 0, 0);
}

void sub_1D5C3E7FC(uint64_t a1)
{
  if (!qword_1EDF3A940)
  {
    sub_1D7260D6C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3A940);
    }
  }
}

void sub_1D5C3E854(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1D5C3E8AC(255, a3, a4);
    v5 = sub_1D726393C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5C3E8AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7260A3C();
    v8[1] = sub_1D7260B1C();
    v8[2] = sub_1D5C3B6CC();
    v8[3] = MEMORY[0x1E69B4250];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5C3E940(uint64_t a1)
{
  sub_1D72596FC();
  sub_1D72596DC();
  sub_1D72595EC();
  sub_1D72595BC();

  sub_1D72596CC();

  if (v5)
  {
    return 1;
  }

  v3 = [*(a1 + 112) cachedSubscription];
  v4 = [v3 isSubscribed];

  return v4 ^ 1;
}

void sub_1D5C3EA00(uint64_t a1)
{
  if (!qword_1EDF168A0)
  {
    sub_1D7260A3C();
    sub_1D7260ADC();
    sub_1D7260B1C();
    sub_1D5C3B6CC();
    v1 = sub_1D7260C6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF168A0);
    }
  }
}

void sub_1D5C3EAA4(uint64_t a1)
{
  if (!qword_1EDF16898)
  {
    sub_1D5C3E8AC(255, &unk_1EDF16888, MEMORY[0x1E69B4438]);
    sub_1D5C3E8AC(255, &qword_1EDF438E0, MEMORY[0x1E69B43B0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF16898);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14OfflineManagerC5StateOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D5C3EB78(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x656E696C66666FLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t FeedServiceContextType.feedMode.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for FeedServiceOptions(0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2, v8);
  LOBYTE(a2) = *v10;
  result = sub_1D5C3BC7C(v10, type metadata accessor for FeedServiceOptions);
  *a3 = a2;
  return result;
}

uint64_t FeedManager.readAndFetch(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = CACurrentMediaTime();
  sub_1D5C3EE24(v2, a1);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;

  v6 = sub_1D725B92C();
  v7 = sub_1D725BB2C();

  sub_1D5C3F670(v2);
  return v7;
}

uint64_t sub_1D5C3EDEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C3EE24(double **a1, uint64_t a2)
{
  v70 = a2;
  v65 = *a1;
  v3 = v65[13];
  v4 = *(v65 + 10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  v66 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v67 = &v60 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v71 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = type metadata accessor for FeedServiceFetchResult(255, v8, AssociatedConformanceWitness, v10);
  sub_1D725BC0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1D726393C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v60 - v15;
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v60 - v20;
  sub_1D5B97A2C();
  if ((*(v17 + 48))(v16, 1, TupleTypeMetadata2) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v22 = v70;
    return sub_1D5B971F8(v22);
  }

  v64 = v17;
  (*(v17 + 32))(v21, v16, TupleTypeMetadata2);
  v24 = swift_getAssociatedConformanceWitness();
  FeedServiceContextType.feedMode.getter(AssociatedTypeWitness, v24, &v72);
  v25 = v72;
  v26 = v70;
  FeedServiceContextType.feedMode.getter(AssociatedTypeWitness, v24, v77);
  if (v25)
  {
    v27 = 0x656E696C66666FLL;
  }

  else
  {
    v27 = 0x746C7561666564;
  }

  if (v77[0])
  {
    v28 = 0x656E696C66666FLL;
  }

  else
  {
    v28 = 0x746C7561666564;
  }

  v22 = v26;
  v29 = v21;
  if (v27 == v28)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v30 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    if ((v30 & 1) == 0)
    {
      (*(v64 + 8))(v21, TupleTypeMetadata2);
      return sub_1D5B971F8(v22);
    }
  }

  v31 = v3;
  sub_1D5C384A0(0);
  v32 = swift_allocObject();
  v33 = v32;
  *(v32 + 16) = xmmword_1D7273AE0;
  v34 = (a1 + *(*a1 + 23));
  v35 = *(v34 + 8);
  v63 = TupleTypeMetadata2;
  v36 = v22;
  if (v35)
  {
    v37 = MEMORY[0x1E69E65A8];
    *(v32 + 56) = MEMORY[0x1E69E6530];
    *(v32 + 64) = v37;
    *(v32 + 32) = -1;
  }

  else
  {
    v38 = *v34;
    v39 = CACurrentMediaTime();
    v74 = MEMORY[0x1E69E63B0];
    v75 = MEMORY[0x1E69E6438];
    *&v72 = (v39 - v38) * 1000.0;
    sub_1D5B63F14(&v72, v33 + 32);
  }

  sub_1D7262EDC();
  sub_1D725C30C("Feed manager prewarmed for %fms before initial read and fetch", v60);

  MEMORY[0x1EEE9AC00](v40, v41);
  v42 = v65;
  v44 = *(v65 + 11);
  v43 = *(v65 + 12);
  v45 = v71;
  *(&v60 - 8) = v71;
  *(&v60 - 7) = v44;
  *(&v60 - 6) = v43;
  *(&v60 - 5) = v31;
  v46 = v31;
  v60 = v31;
  v47 = v45;
  v48 = *(v42 + 15);
  v61 = *(v42 + 14);
  v62 = v43;
  *(&v60 - 4) = v61;
  *(&v60 - 3) = v48;
  *(&v60 - 2) = v29;
  v65 = sub_1D725BDCC();
  v49 = v68;
  v50 = *(v68 + 16);
  v70 = v29;
  v51 = v67;
  v52 = v36;
  v53 = AssociatedTypeWitness;
  v50(v67, v52, AssociatedTypeWitness);
  v54 = (*(v49 + 80) + 64) & ~*(v49 + 80);
  v55 = swift_allocObject();
  *(v55 + 2) = v47;
  *(v55 + 3) = v44;
  v56 = v62;
  *(v55 + 4) = v62;
  *(v55 + 5) = v46;
  v57 = v61;
  *(v55 + 6) = v61;
  *(v55 + 7) = v48;
  (*(v49 + 32))(&v55[v54], v51, v53);
  v58 = sub_1D725B92C();
  *&v72 = v71;
  *(&v72 + 1) = v44;
  v73 = v56;
  v74 = v60;
  v75 = v57;
  v76 = v48;
  type metadata accessor for FeedManager(0, &v72);
  v59 = sub_1D725BA9C();

  (*(v64 + 8))(v70, v63);
  return v59;
}

uint64_t sub_1D5C3F4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(255, v7, AssociatedConformanceWitness, v9);
  sub_1D725BC0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v14 = v18 - v13;
  (*(v15 + 16))(v18 - v13, a1, TupleTypeMetadata2, v12);
  v16 = *&v14[*(TupleTypeMetadata2 + 48)];
  (*(*(AssociatedTypeWitness - 8) + 8))(v14, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_1D5C3F670(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  sub_1D725BC0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1D726393C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v12 - v9;
  (*(*(TupleTypeMetadata2 - 8) + 56))(&v12 - v9, 1, 1, TupleTypeMetadata2, v8);
  sub_1D5B9786C(v10);
  return (*(v6 + 8))(v10, v5);
}

id BundleSessionManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = v0;
  v5 = sub_1D726203C();
  [v3 removeObserver:v4 name:v5 object:0];

  v6 = [v2 defaultCenter];
  v7 = v4;
  v8 = sub_1D726203C();
  [v6 removeObserver:v7 name:v8 object:0];

  v10.receiver = v7;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_1D5C3F9A8(char *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5B7B480(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v25 = &v23 - v4;
  v5 = sub_1D7261B9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v9 = sub_1D726308C();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v10 = sub_1D7261BBC();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    v12 = sub_1D7263BFC();
    if (!v12)
    {
      return;
    }

    goto LABEL_4;
  }

  v11 = OBJC_IVAR____TtC8NewsFeed34BundleSubscriptionDetectionManager_observers;
  swift_beginAccess();
  v5 = *&a1[v11];
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    return;
  }

LABEL_4:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v24 = a1;
    v27 = v5 & 0xC000000000000001;

    v13 = 0;
    v14 = v25;
    do
    {
      if (v27)
      {
        v15 = MEMORY[0x1DA6FB460](v13, v5);
      }

      else
      {
        v15 = *(v5 + 8 * v13 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 24);
        v17 = swift_getObjectType();
        v29[3] = ObjectType;
        v29[4] = &protocol witness table for BundleSubscriptionDetectionManager;
        v18 = v5;
        v19 = v24;
        v28 = v17;
        v29[0] = v24;
        v20 = sub_1D725891C();
        (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
        v21 = *(v16 + 8);
        v22 = v19;
        v5 = v18;
        v21(v29, v14, v28, v16);

        swift_unknownObjectRelease();
        sub_1D5B794C8(v14, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        __swift_destroy_boxed_opaque_existential_1(v29);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

uint64_t BundleSessionManager.bundleSubscriptionDetectionManager(_:detectionTimestampDidChange:)()
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v21 - v2;
  v4 = type metadata accessor for BundleSessionCache(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - v14;
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725C42C();
  __swift_project_value_buffer(v16, qword_1EDFFC720);
  v17 = sub_1D725C3FC();
  v18 = sub_1D7262EDC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D5B42000, v17, v18, "BundleSessionManager did detect change in new subscription detection timestamp.", v19, 2u);
    MEMORY[0x1DA6FD500](v19, -1, -1);
  }

  sub_1D725B96C();

  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    sub_1D6014334(v15, v3);
    sub_1D5B8866C(v3, v11);
    swift_storeEnumTagMultiPayload();
    sub_1D5B79BDC(v11, v7, type metadata accessor for BundleSessionCache);

    sub_1D725B97C();

    sub_1D5B79C44(v11, type metadata accessor for BundleSessionCache);
    v15 = v3;
    return sub_1D5B88A40(v15, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  }

  if (result == 1)
  {
    return sub_1D5B88A40(v15, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  }

  return result;
}

uint64_t sub_1D5C40050()
{
  sub_1D5B87E10(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5C40088()
{
  v1 = *(v0 + 64);

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1D726024C();
  sub_1D7260A3C();
  sub_1D7260ADC();
  sub_1D5C3B6CC();
  sub_1D726046C();

  sub_1D7260ACC();

  return MEMORY[0x1EEE6DFA0](sub_1D5C401F8, 0, 0);
}

uint64_t sub_1D5C401F8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  (*(v3 + 16))(v1, *(v0 + 160), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x1E69B40B0])
  {
    v70 = v4;
    v5 = (v0 + 128);
    v6 = *(v0 + 128);
    v7 = *(v0 + 176);
    v8 = *(v0 + 152);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    v66 = *(v0 + 168);
    (*(*(v0 + 144) + 96))(v8, *(v0 + 136));
    v69 = *(v9 + 32);
    v69(v6, v8, v10);
    v13 = *MEMORY[0x1E69B3F20];
    v14 = MEMORY[0x1E69B3F28];
    sub_1D5C3E8AC(0, &qword_1EDF168D0, MEMORY[0x1E69B3F28]);
    v16 = v15;
    v17 = *(v15 - 8);
    (*(v17 + 104))(v12, v13, v15);
    (*(v17 + 56))(v12, 0, 1, v16);
    sub_1D72604FC();
    sub_1D5C40A84(v12, &qword_1EDF168C8, &qword_1EDF168D0, v14);
    if ((*(v7 + 48))(v11, 1, v66) == 1)
    {
      v18 = *(v0 + 264);
      v19 = *(v0 + 192);
      v20 = *(v0 + 168);
      v21 = *(v0 + 176);
      v22 = *(v0 + 160);
      v23 = *(v0 + 136);
      v24 = *(v0 + 144);
      v25 = *(v0 + 96);

      (*(v24 + 8))(v22, v23);
      (*(v21 + 8))(v19, v20);
      sub_1D5C40AE0(v18);
      sub_1D5C40A84(v25, &qword_1EDF16880, &unk_1EDF16888, MEMORY[0x1E69B4438]);
    }

    else
    {
      v68 = *(v0 + 264);
      v42 = *(v0 + 184);
      v65 = *(v0 + 192);
      v43 = *(v0 + 176);
      v57 = *(v0 + 168);
      v59 = *(v0 + 160);
      v61 = *(v0 + 144);
      v63 = *(v0 + 136);
      v44 = *(v0 + 72);
      (*(v0 + 288))(v42, *(v0 + 96));
      sub_1D726089C();
      sub_1D726082C();
      sub_1D726081C();
      v45 = sub_1D7260D6C();
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
      sub_1D7260CFC();

      sub_1D6C15604(v44);
      v46 = *(v43 + 8);
      v46(v42, v57);
      (*(v61 + 8))(v59, v63);
      v46(v65, v57);
      sub_1D5C40AE0(v68);
    }

    goto LABEL_7;
  }

  v26 = *(v0 + 192);
  v27 = *(v0 + 176);
  v64 = *(v0 + 168);
  v67 = *(v0 + 264);
  v29 = *(v0 + 152);
  v28 = *(v0 + 160);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  if (v4 == *MEMORY[0x1E69B40A8])
  {
    v70 = v4;
    v60 = *(v0 + 192);
    v62 = *(v0 + 176);
    v5 = (v0 + 120);
    v32 = *(v0 + 120);
    v33 = *(v0 + 104);
    v34 = *(v0 + 112);
    v55 = *(v0 + 88);
    v58 = *(v0 + 136);
    v35 = *(v0 + 80);
    (*(v30 + 96))(v29, v58);
    v69 = *(v34 + 32);
    v69(v32, v29, v33);
    v56 = v28;
    sub_1D726089C();
    sub_1D5C3BF10();
    v54 = swift_allocError();
    *v36 = 0;
    sub_1D726082C();
    v37 = *MEMORY[0x1E69B3F20];
    v38 = MEMORY[0x1E69B3F28];
    sub_1D5C3E8AC(0, &qword_1EDF168D0, MEMORY[0x1E69B3F28]);
    v40 = v39;
    v41 = *(v39 - 8);
    (*(v41 + 104))(v35, v37, v39);
    (*(v41 + 56))(v35, 0, 1, v40);
    sub_1D72604FC();

    sub_1D5C40A84(v35, &qword_1EDF168C8, &qword_1EDF168D0, v38);
    sub_1D726082C();
    sub_1D7260CDC();

    sub_1D5C40A84(v55, &qword_1EDF16880, &unk_1EDF16888, MEMORY[0x1E69B4438]);
    (*(v30 + 8))(v56, v58);
    (*(v62 + 8))(v60, v64);
    sub_1D5C40AE0(v67);

LABEL_7:
    v48 = *(v0 + 136);
    v47 = *(v0 + 144);
    v49 = *(v0 + 24);
    v69(v49, *v5, *(v0 + 104));
    (*(v47 + 104))(v49, v70, v48);

    v50 = *(v0 + 8);
    goto LABEL_9;
  }

  sub_1D5C3BF10();
  swift_allocError();
  *v51 = 1;
  swift_willThrow();

  v52 = *(v30 + 8);
  v52(v28, v31);
  (*(v27 + 8))(v26, v64);
  sub_1D5C40AE0(v67);
  v52(v29, v31);

  v50 = *(v0 + 8);
LABEL_9:

  return v50();
}

uint64_t sub_1D5C40A84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  sub_1D5C3E854(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D5C40AE0(uint64_t a1)
{
  sub_1D5C3E8AC(0, &qword_1EDF168C0, MEMORY[0x1E69B3F80]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5C40B58(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_1D725B96C();

    if (a1)
    {
      if (v9)
      {
        [a1 distanceFromLocation_];
        if (v5 <= 0.0)
        {

LABEL_8:
          v4 = v9;
          goto LABEL_9;
        }
      }
    }

    else if (!v9)
    {
LABEL_9:

      return;
    }

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v6;
    v8 = a1;

    sub_1D725BFFC();

    goto LABEL_8;
  }
}

uint64_t ResourceService.fetchResources(identifiers:qualityOfService:cachePolicy:purpose:lifetime:shouldFailOnMissingObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v51 = a6;
  v52 = a5;
  sub_1D5C3BFE8(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v46 - v15;
  v17 = sub_1D725A82C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = (&v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  if (!*(a1 + 16))
  {
    v53 = sub_1D605AE30(MEMORY[0x1E69E7CC0]);
    sub_1D5C3BFE8(0, &unk_1EDF3B948, sub_1D5C3C32C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  v47 = &v46 - v24;
  v50 = v7;
  v49 = a7;
  v25 = *(v7 + 16);
  v26 = objc_allocWithZone(MEMORY[0x1E69B55A0]);
  v48 = a3;
  v27 = v26;
  v28 = sub_1D726265C();
  v29 = [v27 initWithContext:v25 resourceIDs:v28 downloadAssets:1];

  [v29 setQualityOfService_];
  v30 = v29;
  [v30 setPurpose_];
  if (v51)
  {
    v31 = 0;
  }

  else
  {
    v31 = v52;
  }

  [v30 setCacheLifetimeHint_];
  [v30 setRelativePriority_];

  v32 = v30;
  [v32 setCanSendFetchCompletionSynchronously_];
  [v32 setShouldFailOnMissingObjects_];
  sub_1D5C41360(v48, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v33 = sub_1D5C3C4D0(v16);
    goto LABEL_14;
  }

  v36 = v47;
  (*(v18 + 32))(v47, v16, v17);
  (*(v18 + 16))(v21, v36, v17);
  v37 = (*(v18 + 88))(v21, v17);
  if (v37 == *MEMORY[0x1E69D63D8])
  {
    (*(v18 + 96))(v21, v17);
    v38 = *v21;
    [v32 setCachePolicy_];
LABEL_12:
    [v32 setMaximumCachedAge_];
LABEL_13:
    v33 = (*(v18 + 8))(v36, v17);
    goto LABEL_14;
  }

  if (v37 == *MEMORY[0x1E69D63E0])
  {
    (*(v18 + 96))(v21, v17);
    v38 = *v21;
    [v32 setCachePolicy_];
    goto LABEL_12;
  }

  if (v37 == *MEMORY[0x1E69D63C0])
  {
    [v32 setCachePolicy_];
    goto LABEL_13;
  }

  if (v37 == *MEMORY[0x1E69D63D0])
  {
    [v32 setCachePolicy_];
    goto LABEL_13;
  }

  v44 = (v18 + 8);
  if (v37 == *MEMORY[0x1E69D63C8])
  {
    [v32 setCachePolicy_];
    v33 = (*v44)(v36, v17);
  }

  else
  {
    [v32 setCachePolicy_];
    v45 = *v44;
    (*v44)(v36, v17);
    v33 = v45(v21, v17);
  }

LABEL_14:
  if (sub_1D5C3C55C(v33, v34))
  {
    [v32 setCachePolicy_];
  }

  MEMORY[0x1EEE9AC00](v39, v40);
  *(&v46 - 2) = v32;
  sub_1D5C3BFE8(0, &unk_1EDF3B948, sub_1D5C3C32C, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D725BBAC();
  *(swift_allocObject() + 16) = v32;
  v41 = v32;
  v42 = sub_1D725B92C();
  v43 = sub_1D725BBBC();

  return v43;
}

uint64_t sub_1D5C41300()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C41360(uint64_t a1, uint64_t a2)
{
  sub_1D5C413F4(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5C413F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5C41458()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C240 = result;
  return result;
}

void sub_1D5C41624(uint64_t a1)
{
  if (!qword_1EDF1A378)
  {
    sub_1D5B5A498(255, &qword_1EDF1AC40, 0x1E69B5598);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A378);
    }
  }
}

uint64_t sub_1D5C416B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v36 = v5;
  result = sub_1D726410C();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

id sub_1D5C41950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_1D5B69D90(a2, a3), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    *a4 = v10;
    return v10;
  }

  else
  {
    sub_1D67F3330();
    swift_allocError();
    *v12 = a2;
    *(v12 + 8) = a3;
    *(v12 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1D5C41A24(void *a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (a1)
  {
    sub_1D5B5E61C(0, &qword_1EDF01DF0, sub_1D5C41C90, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    *(inited + 32) = 0x656475746974616CLL;
    *(inited + 40) = 0xEB0000000079654BLL;
    v5 = a1;
    [v5 coordinate];
    *(inited + 48) = v6;
    strcpy((inited + 56), "longitudeKey");
    *(inited + 69) = 0;
    *(inited + 70) = -5120;
    [v5 coordinate];
    *(inited + 72) = v7;
    sub_1D5C41CF0(inited);
    swift_setDeallocating();
    sub_1D5C41C90();
    swift_arrayDestroy();
    v8 = sub_1D7261D2C();

    v9 = sub_1D726203C();
    [v3 setObject:v8 forKey:v9];
  }

  else
  {
    v10 = sub_1D726203C();
    [v3 setURL:0 forKey:v10];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observableMostFrequentLocation;
    v13 = Strong;
    swift_beginAccess();
    v14 = *&v13[v12];

    [v14 setValue_];
  }
}

void sub_1D5C41C90()
{
  if (!qword_1EDF05418)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05418);
    }
  }
}

unint64_t sub_1D5C41CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF03F20, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D5C41E14(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a1;

    sub_1D725B97C();
  }
}

uint64_t sub_1D5C41EA4(uint64_t a1, uint64_t a2, char a3)
{

  sub_1D725B97C();
}

uint64_t sub_1D5C41EF0()
{
  if (*(v0 + 48) == 1)
  {
    [*(*(v0 + 16) + 280) addObserver_];
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1D6DCDCC0;

    return sub_1D5C41FD0();
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D5C41FD0()
{
  v1[18] = v0;
  sub_1D726290C();
  v1[19] = sub_1D72628FC();
  v3 = sub_1D726285C();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D5C42750, v3, v2);
}

void *sub_1D5C42068(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1D5B5AB24(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1D5C421C4(uint64_t a1)
{
  if (!qword_1EDF05408)
  {
    sub_1D5B5A498(255, &qword_1EDF1A660, 0x1E696AD98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05408);
    }
  }
}

void *sub_1D5C4223C(void *a1, int64_t a2, char a3)
{
  result = sub_1D5C42068(a1, a2, a3, *v3, &unk_1EDF01DE0, sub_1D5C421C4, sub_1D5C421C4);
  *v3 = result;
  return result;
}

unint64_t sub_1D5C4229C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D5C424D8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1D7263E5C();
    a6 = v11;
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

void *sub_1D5C423A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D5C42524(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D7263E5C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D726229C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D5C42524(v10, 0);
        result = sub_1D7263CFC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1D5C424D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D5C423A8(a1, a2);
  sub_1D5C425EC(&unk_1F50F35D0);
  return v3;
}

void *sub_1D5C42524(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B5D358(0, &qword_1EDF194D0, MEMORY[0x1E69E7508]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1D5C4259C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5C425EC(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D5EC5EC8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1D5C426D8(uint64_t a1)
{
  if (!qword_1EDF03EA0)
  {
    sub_1D5B5A498(255, &qword_1EDF1A660, 0x1E696AD98);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03EA0);
    }
  }
}

uint64_t sub_1D5C42750(double a1)
{
  gotLoadHelper_x8__OBJC_CLASS___GKLocalPlayer(a1);
  v2 = [objc_opt_self() localPlayer];
  v3 = [v2 authenticateHandler];

  if (v3)
  {
    _Block_release(v3);

    v4 = *(v1 + 8);

    return v4();
  }

  else
  {
    v6 = *(v1 + 144);

    return MEMORY[0x1EEE6DFA0](sub_1D5C42838, v6, 0);
  }
}

uint64_t sub_1D5C42838()
{
  v0[22] = sub_1D5C428A0();
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D5C42FE0, v1, v2);
}

void *sub_1D5C428A0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 304);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v9 = v8;
LABEL_16:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(*(v2 + 48) + 8 * v13);
      sub_1D5C42B84(*(v2 + 56) + 16 * v13, v30);
      v32 = v14;
      sub_1D5B808F0(v30, v33);
LABEL_17:
      sub_1D5C42BE0(&v32, &v34, &qword_1EDF05578, sub_1D5C42D7C);
      if (!v35[0] && v35[1] == 1)
      {

        return v28;
      }

      v15 = v34;
      sub_1D5B808F0(v35, v30);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        break;
      }

      swift_beginAccess();
      v17 = sub_1D5B91830(v15);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v1 + 304);
        *(v1 + 304) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1D6D86960();
        }

        sub_1D5B808F0(*(v21 + 56) + 16 * v19, &v29);
        sub_1D671588C(v19, v21, v22);
        *(v1 + 304) = v21;
      }

      else
      {
        v29 = xmmword_1D7279980;
      }

      swift_endAccess();
      sub_1D5B91764(&v29);
      result = sub_1D5C42FB0(v30);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v27 = Strong;
    v26 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1D5C42DE0(0, v28[2] + 1, 1, v28);
    }

    v24 = v28[2];
    v23 = v28[3];
    if (v24 >= v23 >> 1)
    {
      v28 = sub_1D5C42DE0((v23 > 1), v24 + 1, 1, v28);
    }

    result = sub_1D5C42FB0(v30);
    v28[2] = v24 + 1;
    v25 = &v28[2 * v24];
    v25[4] = v27;
    v25[5] = v26;
  }

  while (v5);
LABEL_8:
  if (v6 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v5 = 0;
      v32 = 0;
      v33[0] = 0;
      v8 = v11;
      v33[1] = 1;
      goto LABEL_17;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5C42BE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C42D18(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D5C42C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C42CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5C42D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C42D7C()
{
  if (!qword_1EDF05580)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05580);
    }
  }
}

void *sub_1D5C42E08(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 17;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 4);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[2 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 16 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D5B483C4(0, a6, a7, 0);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void sub_1D5C42F44(uint64_t a1)
{
  if (!qword_1EDF01E88)
  {
    sub_1D5B483C4(255, qword_1EDF09240, &protocol descriptor for PuzzleGameCenterServiceListener, 0);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF01E88);
    }
  }
}

uint64_t sub_1D5C42FE0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[22];
  v5 = (v4 + 40);
  v6 = -*(v4 + 16);
  v7 = -1;
  do
  {
    if (v6 + v7 == -1)
    {
      v14 = v3[18];

      a1 = sub_1D6DC27D8;
      a2 = v14;
      a3 = 0;

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

    v8 = v5 + 2;
    v9 = *v5;
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);
    swift_unknownObjectRetain();
    LOBYTE(v9) = v11(ObjectType, v9);
    a1 = swift_unknownObjectRelease();
    v5 = v8;
  }

  while ((v9 & 1) == 0);

  v12 = swift_task_alloc();
  v3[23] = v12;
  *v12 = v3;
  v12[1] = sub_1D6DC26B8;

  return sub_1D6DC0034();
}

uint64_t sub_1D5C4316C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D5C43280(double a1)
{
  v27 = v1;
  if (sub_1D5C435B8(a1))
  {
    v2 = *(v1 + 80);
    swift_beginAccess();
    if (*(*(v2 + 312) + 16))
    {
      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v3 = sub_1D725C42C();
      *(v1 + 88) = __swift_project_value_buffer(v3, qword_1EDFFCFA8);
      v4 = sub_1D725C3FC();
      v5 = sub_1D7262EDC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1D5B42000, v4, v5, "PuzzleGameCenterService: Submitting pending scores...", v6, 2u);
        MEMORY[0x1DA6FD500](v6, -1, -1);
      }

      v7 = *(v2 + 312);
      *(v1 + 96) = v7;
      v8 = *(v7 + 16);
      *(v1 + 104) = v8;
      if (v8)
      {
        v9 = MEMORY[0x1E69E7CC0];
        *(v1 + 112) = 0;
        *(v1 + 120) = v9;
        LOBYTE(v9) = *(v7 + 64);
        v10 = *(v7 + 48);
        *(v1 + 16) = *(v7 + 32);
        *(v1 + 32) = v10;
        *(v1 + 48) = v9;
        v11 = *(v1 + 16);
        v12 = *(v1 + 24);
        swift_bridgeObjectRetain_n();

        v13 = sub_1D725C3FC();
        v14 = sub_1D7262EDC();
        sub_1D6DCF500(v1 + 16);
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v26 = v16;
          *v15 = 136315138;
          v17 = sub_1D6DBE84C();
          v19 = sub_1D5BC5100(v17, v18, &v26);

          *(v15 + 4) = v19;
          _os_log_impl(&dword_1D5B42000, v13, v14, "PuzzleGameCenterService: Submitting pending %s...", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x1DA6FD500](v16, -1, -1);
          MEMORY[0x1DA6FD500](v15, -1, -1);
        }

        v20 = *(v1 + 48);
        v22 = *(v1 + 32);
        v21 = *(v1 + 40);

        v23 = swift_task_alloc();
        *(v1 + 128) = v23;
        *v23 = v1;
        v23[1] = sub_1D6DC15C4;

        return sub_1D6DCA114(v1 + 49, v11, v12, v21, v20, v22, 1);
      }

      *(*(v1 + 80) + 312) = MEMORY[0x1E69E7CC0];
    }
  }

  v25 = *(v1 + 8);

  return v25();
}

id sub_1D5C435B8(double a1)
{
  gotLoadHelper_x8__OBJC_CLASS___GKLocalPlayer(a1);
  v1 = [objc_opt_self() localPlayer];
  v2 = [v1 isAuthenticated];

  return v2;
}

uint64_t sub_1D5C43610()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D5C43704(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 440) = a1;
  *(v4 + 448) = v1;

  v5 = *(v3 + 272);
  if (v1)
  {
    v6 = sub_1D60378D0;
  }

  else
  {
    v6 = sub_1D5C43854;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D5C43854()
{
  v53 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 272);
  sub_1D5C43DBC(*(v0 + 376));
  v5 = v4[35];
  v6 = v4[36];
  __swift_project_boxed_opaque_existential_1(v4 + 32, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v2 + 48);
  if (v7(v3, 1, v1) == 1)
  {
    sub_1D5C4477C(&v52);
    if (v52 > 3u)
    {
      if (v52 > 5u)
      {
        v8 = 0xE500000000000000;
        if (v52 == 6)
        {
          v9 = 0x316F6D6564;
        }

        else
        {
          v9 = 0x326F6D6564;
        }
      }

      else if (v52 == 4)
      {
        v8 = 0xE500000000000000;
        v9 = 0x6C65766564;
      }

      else
      {
        v8 = 0xE700000000000000;
        v9 = 0x786F62646E6173;
      }
    }

    else if (v52 > 1u)
    {
      if (v52 == 2)
      {
        v8 = 0xE200000000000000;
        v9 = 24945;
      }

      else
      {
        v8 = 0xE400000000000000;
        v9 = 1953719668;
      }
    }

    else if (v52)
    {
      v8 = 0xE700000000000000;
      v9 = 0x676E6967617473;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
      v9 = 0x69746375646F7270;
    }

    v10 = *(v0 + 336);
    v11 = *(v0 + 304);
    v12 = *(v0 + 312);
    v13 = MEMORY[0x1E69E7CC0];
    v14 = sub_1D605BE04(MEMORY[0x1E69E7CC0]);
    v15 = sub_1D605BFC4(v13);
    sub_1D72587BC();
    *v10 = v9;
    v10[1] = v8;
    v10[2] = v14;
    v10[3] = v15;
    if (v7(v11, 1, v12) != 1)
    {
      sub_1D5D12CE8(*(v0 + 304), sub_1D5BC4580);
    }
  }

  else
  {
    sub_1D5D12DB0(*(v0 + 304), *(v0 + 336), type metadata accessor for PuzzleStatsState);
  }

  v16 = *(v0 + 440);
  v51 = *(v0 + 376);
  v17 = *(v0 + 344);
  v18 = *(v0 + 352);
  v19 = *(v0 + 336);
  v20 = *(v0 + 312);
  v21 = *v19;
  v22 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 3);

  sub_1D5D12CE8(v19, type metadata accessor for PuzzleStatsState);
  v25 = *(v20 + 28);
  *(v0 + 528) = v25;
  v26 = *(v18 + 16);
  *(v0 + 456) = v26;
  *(v0 + 464) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(&v19[v25], v51, v17);
  *v19 = v21;
  *(v19 + 1) = v22;
  *(v19 + 2) = v23;
  *(v19 + 3) = v24;
  if (v16 >> 62)
  {
    result = sub_1D7263BFC();
    *(v0 + 472) = result;
    if (result)
    {
LABEL_22:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v28 = *(v0 + 440);
        *(v0 + 480) = 0;
        if ((v28 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1DA6FB460](0);
        }

        else
        {
          v29 = *(v28 + 32);
          swift_unknownObjectRetain();
        }

        *(v0 + 488) = v29;
        v30 = [v29 identifier];
        v31 = sub_1D726207C();
        v33 = v32;

        *(v0 + 496) = v31;
        *(v0 + 504) = v33;
        v34 = swift_task_alloc();
        *(v0 + 512) = v34;
        *v34 = v0;
        v34[1] = sub_1D5D1AFF4;
        v35 = *(v0 + 376);
        v36 = *(v0 + 296);
        v37 = *(v0 + 532);

        return sub_1D5D12E18(v36, v29, v35, v37);
      }

      return result;
    }
  }

  else
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 472) = result;
    if (result)
    {
      goto LABEL_22;
    }
  }

  v38 = *(v0 + 336);
  v39 = *(v0 + 272);
  v40 = *(v39 + 280);
  v41 = *(v39 + 288);
  __swift_project_boxed_opaque_existential_1((v39 + 256), v40);
  (*(v41 + 24))(v38, v40, v41);
  *(v39 + 312) = 0;
  v42 = sub_1D725C3FC();
  v43 = sub_1D7262EDC();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 376);
  v46 = *(v0 + 344);
  v47 = *(v0 + 352);
  v48 = *(v0 + 336);
  if (v44)
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1D5B42000, v42, v43, "PuzzleStatsService: completed updating stats", v49, 2u);
    MEMORY[0x1DA6FD500](v49, -1, -1);
  }

  sub_1D5D12CE8(v48, type metadata accessor for PuzzleStatsState);
  (*(v47 + 8))(v45, v46);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1D5C43DBC(char *a1)
{
  v2 = v1;
  v79 = a1;
  v83 = sub_1D725891C();
  v85 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v3);
  v77 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BA8044(0);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v82 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v81 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v84 = &v75 - v16;
  sub_1D5BC4580(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v75 - v23);
  sub_1D5C4477C(&v86);
  v25 = 0xEA00000000006E6FLL;
  v26 = 0x69746375646F7270;
  v27 = 0xE500000000000000;
  v28 = 0x316F6D6564;
  v29 = 0xE500000000000000;
  if (v86 != 6)
  {
    v28 = 0x326F6D6564;
    v27 = 0xE500000000000000;
  }

  v30 = 0x6C65766564;
  if (v86 != 4)
  {
    v30 = 0x786F62646E6173;
    v29 = 0xE700000000000000;
  }

  if (v86 <= 5u)
  {
    v28 = v30;
    v27 = v29;
  }

  v31 = 0xE200000000000000;
  v32 = 24945;
  if (v86 != 2)
  {
    v32 = 1953719668;
    v31 = 0xE400000000000000;
  }

  if (v86)
  {
    v26 = 0x676E6967617473;
    v25 = 0xE700000000000000;
  }

  if (v86 > 1u)
  {
    v26 = v32;
    v25 = v31;
  }

  if (v86 <= 3u)
  {
    v33 = v26;
  }

  else
  {
    v33 = v28;
  }

  if (v86 <= 3u)
  {
    v34 = v25;
  }

  else
  {
    v34 = v27;
  }

  v35 = *(v1 + 35);
  v36 = *(v1 + 36);
  __swift_project_boxed_opaque_existential_1(v1 + 32, v35);
  (*(v36 + 8))(v35, v36);
  v37 = type metadata accessor for PuzzleStatsState(0);
  v38 = *(*(v37 - 8) + 48);
  if (v38(v24, 1, v37) == 1)
  {
    sub_1D5D12CE8(v24, sub_1D5BC4580);

LABEL_21:
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725C42C();
    __swift_project_value_buffer(v39, qword_1EDFFCFA8);
    v40 = sub_1D725C3FC();
    v41 = sub_1D7262EDC();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_49;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "PuzzleStatsService: resetting stats triggered by a change of environment";
    goto LABEL_48;
  }

  v45 = *v24;
  v44 = v24[1];

  sub_1D5D12CE8(v24, type metadata accessor for PuzzleStatsState);
  if (v33 == v45 && v34 == v44)
  {
  }

  else
  {
    v46 = sub_1D72646CC();

    if ((v46 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v47 = v84;
  v48 = v85;
  v49 = v2;
  v50 = v83;
  v75 = *(v85 + 16);
  v75(v84, v79, v83);
  v76 = *(v48 + 56);
  v76(v47, 0, 1, v50);
  v51 = *(v49 + 35);
  v52 = *(v49 + 36);
  v79 = v49;
  __swift_project_boxed_opaque_existential_1(v49 + 32, v51);
  (*(v52 + 8))(v51, v52);
  v53 = v38(v20, 1, v37);
  v54 = sub_1D5BC4580;
  if (v53 == 1)
  {
    v55 = v50;
    v56 = v81;
    v57 = 1;
  }

  else
  {
    v56 = v81;
    v75(v81, &v20[*(v37 + 28)], v50);
    v57 = 0;
    v54 = type metadata accessor for PuzzleStatsState;
    v55 = v50;
  }

  sub_1D5D12CE8(v20, v54);
  v76(v56, v57, 1, v55);
  v58 = *(v80 + 48);
  v59 = v84;
  v60 = v82;
  sub_1D5D12D48(v84, v82, sub_1D5B5B2A0);
  sub_1D5D12D48(v56, v60 + v58, sub_1D5B5B2A0);
  v61 = *(v85 + 48);
  if (v61(v60, 1, v55) == 1)
  {
    sub_1D5D12CE8(v56, sub_1D5B5B2A0);
    sub_1D5D12CE8(v59, sub_1D5B5B2A0);
    v62 = v61(v60 + v58, 1, v55);
    v2 = v79;
    if (v62 == 1)
    {
      result = sub_1D5D12CE8(v60, sub_1D5B5B2A0);
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v64 = v78;
  sub_1D5D12D48(v60, v78, sub_1D5B5B2A0);
  if (v61(v60 + v58, 1, v55) == 1)
  {
    sub_1D5D12CE8(v56, sub_1D5B5B2A0);
    sub_1D5D12CE8(v59, sub_1D5B5B2A0);
    (*(v85 + 8))(v64, v55);
    v2 = v79;
LABEL_37:
    sub_1D5D12CE8(v60, sub_1D5BA8044);
LABEL_38:
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v65 = sub_1D725C42C();
    __swift_project_value_buffer(v65, qword_1EDFFCFA8);
    v40 = sub_1D725C3FC();
    v41 = sub_1D7262EDC();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_49;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "PuzzleStatsService: resetting stats triggered by a change for stats start date";
    goto LABEL_48;
  }

  v66 = v56;
  v67 = v85;
  v68 = v60 + v58;
  v69 = v77;
  (*(v85 + 32))(v77, v68, v55);
  sub_1D5BC4174(&qword_1EDF45B10, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v70 = sub_1D7261FBC();
  v71 = *(v67 + 8);
  v71(v69, v55);
  sub_1D5D12CE8(v66, sub_1D5B5B2A0);
  sub_1D5D12CE8(v59, sub_1D5B5B2A0);
  v71(v64, v55);
  result = sub_1D5D12CE8(v60, sub_1D5B5B2A0);
  v2 = v79;
  if ((v70 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_43:
  if (v2[312] != 1)
  {
    return result;
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v72 = sub_1D725C42C();
  __swift_project_value_buffer(v72, qword_1EDFFCFA8);
  v40 = sub_1D725C3FC();
  v41 = sub_1D7262EDC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "PuzzleStatsService: resetting stats triggered by request to discard accumulated stats";
LABEL_48:
    _os_log_impl(&dword_1D5B42000, v40, v41, v43, v42, 2u);
    MEMORY[0x1DA6FD500](v42, -1, -1);
  }

LABEL_49:

  v73 = *(v2 + 35);
  v74 = *(v2 + 36);
  __swift_project_boxed_opaque_existential_1(v2 + 32, v73);
  return (*(v74 + 16))(v73, v74);
}

uint64_t sub_1D5C4477C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getObjectType();
  v5 = *(v1 + 313);
  if (v5 == 8)
  {
    if (qword_1EDF43B30 != -1)
    {
      swift_once();
    }

    sub_1D5BC4174(qword_1EDF0FE98, v4, type metadata accessor for PuzzleStatsService, &unk_1D7291CF4);
    result = sub_1D725964C();
    LOBYTE(v5) = v6;
    *(v1 + 313) = v6;
  }

  *a1 = v5;
  return result;
}

void sub_1D5C44878(uint64_t a1)
{
  if (!qword_1EDF1AEB0)
  {
    sub_1D5B65AF4();
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AEB0);
    }
  }
}

uint64_t sub_1D5C448D0(uint64_t a1, uint64_t a2)
{
  sub_1D5C44878(0);
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = a1;

  v3 = sub_1D725B92C();
  sub_1D725BB7C();

  v4 = sub_1D725B92C();
  sub_1D725A9BC();
  sub_1D5C44FC8(&qword_1EDF1AEA0, sub_1D5C44878, MEMORY[0x1E69E6328]);
  v5 = sub_1D725BBDC();

  return v5;
}

uint64_t sub_1D5C44A30()
{

  return swift_deallocObject();
}

void sub_1D5C44A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5C44ACC(uint64_t a1, uint64_t a2)
{
  sub_1D5C44A68(0, &unk_1EDF3B920, sub_1D5C44878, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

unint64_t FeedJournal.init(entries:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D5C44CB0(MEMORY[0x1E69E7CC0]);
  v22 = v7;
  v8 = sub_1D5C44DF4(v6);
  v23 = v8;
  v21 = a1;
  v9 = *(a1 + 16);

  if (v9)
  {
    v11 = 0;
    v12 = (a1 + 48);
    while (v11 < *(a1 + 16))
    {
      v13 = v11 + 1;
      v14 = *v12;
      v15 = *(v12 - 1);
      v18 = *(v12 - 2);
      v19 = v15;
      v20 = v14;

      sub_1D5C07390(v15);
      sub_1D70F1868(v11, &v18, &v21);
      v16 = v19;

      result = sub_1D5C08648(v16);
      v12 += 3;
      v11 = v13;
      if (v9 == v13)
      {
        v17 = v21;
        v7 = v22;
        v8 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = a1;
LABEL_7:

    *a4 = v17;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1D5C44CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF1A4C8, &type metadata for FeedJournalEntry, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1D5C07390(v8);
      result = sub_1D5B69D90(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D5C44E18(uint64_t a1)
{
  if (!qword_1EDF1B7F0)
  {
    sub_1D5B5534C(255, &qword_1EDF3C770, &protocolRef_FCTagProviding);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B7F0);
    }
  }
}

uint64_t FeedCursorContainer.kind.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = (result + 32);
  if (result < 0)
  {
    v2 = ((result & 0x7FFFFFFFFFFFFFFFLL) + qword_1EDFFC640);
  }

  *a2 = *v2;
  return result;
}

unint64_t sub_1D5C44ED8()
{
  result = qword_1EDF3C3B0;
  if (!qword_1EDF3C3B0)
  {
    sub_1D725891C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C3B0);
  }

  return result;
}

unint64_t sub_1D5C44F30()
{
  result = qword_1EDF14240;
  if (!qword_1EDF14240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14240);
  }

  return result;
}

uint64_t sub_1D5C44F84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C44878(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C44FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5C45010@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  if (a1 < 0)
  {
    v4 = 0x7000000000000000;
  }

  else
  {
    v4 = 0x2000000000000000;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *a2 = v4 | v5;
}

uint64_t sub_1D5C4508C()
{

  return swift_deallocObject();
}

void sub_1D5C45118(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1D5C45170(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = sub_1D7262EDC();
  sub_1D725C30C("Feed manager ungated fetch next group", 37, 2, &dword_1D5B42000, v2, v3, MEMORY[0x1E69E7CC0]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  sub_1D725BDCC();
  v7 = sub_1D725B92C();
  v8 = sub_1D725BAAC();

  return v8;
}

uint64_t sub_1D5C452F8()
{
  v1 = **(v0 + 16);
  v3 = *(v0 + 24);
  return (*(*(v1 + 112) + 32))(&v3, *(v1 + 88));
}

uint64_t FeedCursorFactory.createCursor(from:state:cursorModifier:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6[108] = v5;
  v6[107] = a5;
  v6[106] = a4;
  v6[105] = a3;
  v6[104] = a1;
  v8 = *v5;
  v6[109] = *v5;
  v9 = *a3;
  v10 = *(*a3 + 80);
  v6[110] = v10;
  v11 = *(v9 + 88);
  v6[111] = v11;
  v12 = type metadata accessor for FeedDeferredCursorGroup(0, v10, v11, a4);
  v6[112] = v12;
  v6[113] = *(v12 - 8);
  v6[114] = swift_task_alloc();
  v6[115] = *(v8 + 96);
  v6[116] = swift_getAssociatedTypeWitness();
  v6[117] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[118] = AssociatedTypeWitness;
  v6[119] = *(AssociatedTypeWitness - 8);
  v6[120] = swift_task_alloc();
  v6[121] = swift_task_alloc();
  sub_1D5BFCAC0(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  v6[122] = swift_task_alloc();
  v14 = sub_1D726393C();
  v6[123] = v14;
  v6[124] = *(v14 - 8);
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  v6[128] = swift_task_alloc();
  sub_1D5BFCAC0(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v6[129] = swift_task_alloc();
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v6[132] = swift_task_alloc();
  v15 = sub_1D726393C();
  v6[133] = v15;
  v6[134] = *(v15 - 8);
  v6[135] = swift_task_alloc();
  v6[136] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v6[137] = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v6[138] = v16;
  v6[139] = *(v16 - 8);
  v6[140] = swift_task_alloc();
  v17 = swift_checkMetadataState();
  v6[141] = v17;
  v6[142] = *(v17 - 8);
  v6[143] = swift_task_alloc();
  v6[144] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6[145] = swift_task_alloc();
  type metadata accessor for BundleSession(0);
  v6[146] = swift_task_alloc();
  v6[147] = swift_task_alloc();
  v6[148] = *(v10 - 8);
  v6[149] = swift_task_alloc();
  v6[150] = swift_task_alloc();
  v6[151] = swift_task_alloc();
  v6[152] = swift_task_alloc();
  v6[153] = swift_task_alloc();
  v6[154] = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D5C459AC, 0, 0);
}

uint64_t sub_1D5C459AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v249 = v4;
  v5 = *(v4 + 1232);
  v6 = v5 >> 60;
  if ((v5 >> 60) <= 3)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *(v4 + 1272) = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v81 = sub_1D6C08D2C();
        *(v4 + 1280) = v81;
        if ((~v81 & 0xF000000000000007) != 0)
        {
          static FeedLocation.container(_:)(v81, (v4 + 800));
          v106 = swift_task_alloc();
          *(v4 + 1424) = v106;
          *v106 = v4;
          v106[1] = sub_1D71FF950;
          v63 = *(v4 + 856);
          v64 = *(v4 + 848);
          v65 = *(v4 + 840);
          v66 = *(v4 + 832);
          v67 = (v4 + 800);
          goto LABEL_31;
        }

        v82 = *(v4 + 888);
        v83 = *(v4 + 880);
        v84 = sub_1D6C08E2C();
        v86 = v85;
        type metadata accessor for FeedServiceError(0, v83, v82, v87);
        swift_getWitnessTable();
        swift_allocError();
        *v88 = v84;
        *(v88 + 8) = v86;
        *(v88 + 16) = 0;
        *(v88 + 24) = 0;
        *(v88 + 32) = 4;
        swift_willThrow();

LABEL_64:

        v174 = *(v4 + 8);
LABEL_67:

        return v174();
      }

      v40 = *(v4 + 832);

      v41 = sub_1D726275C();
      v42 = v40;
    }

    else
    {
      if (!v6)
      {
        v33 = *(v4 + 1224);
        v34 = *(v4 + 1184);
        v35 = *(v4 + 880);
        type metadata accessor for FeedCursorTracker(255, v35, *(v4 + 888), a4);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v37 = swift_projectBox();
        *(v4 + 1240) = *(v37 + *(TupleTypeMetadata2 + 48));
        (*(v34 + 16))(v33, v37, v35);
        ObjectType = swift_getObjectType();

        *(v4 + 1248) = sub_1D60B0168(ObjectType);
        v39 = swift_task_alloc();
        *(v4 + 1256) = v39;
        *v39 = v4;
        v39[1] = sub_1D71FEF1C;
        v22 = v4 + 808;

        return MEMORY[0x1EEE44EE0](v22);
      }

      v68 = *(v4 + 1216);
      v69 = *(v4 + 1184);
      v70 = *(v4 + 1160);
      v71 = *(v4 + 888);
      v72 = *(v4 + 880);
      v73 = *(v4 + 872);
      v227 = *(v4 + 856);
      v219 = *(v4 + 920);
      v224 = *(v4 + 848);
      v74 = *(v4 + 840);
      v237 = *(v4 + 832);
      v75 = swift_projectBox();
      (*(v69 + 16))(v68, v75, v72);
      type metadata accessor for FeedCursorTracker(0, v72, v71, v76);
      (*(v71 + 48))(v72, v71);
      v77 = FeedCursorTracker.__allocating_init(context:)(v70);
      v78 = *(v73 + 104);
      v79 = swift_allocObject();
      *(v79 + 16) = *(v73 + 80);
      *(v79 + 32) = v219;
      *(v79 + 40) = v78;
      sub_1D720236C(v68, v74, v77, sub_1D720B41C, v79, v224, v227);

      v80 = sub_1D726275C();

      (*(v69 + 8))(v68, v72);
      v42 = v237;
      v41 = v80;
    }

LABEL_66:
    sub_1D688A25C(v41, v42);

    v174 = *(v4 + 8);
    goto LABEL_67;
  }

  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 == 7)
      {
        v7 = *(v4 + 888);
        v8 = *(v4 + 880);
        v9 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *(v4 + 1328) = v9;
        v10 = qword_1EDFFC658;
        *(v4 + 1336) = qword_1EDFFC658;
        *(v4 + 816) = *(v9 + v10);
        *(v4 + 1344) = type metadata accessor for FeedDatabaseGroup(255, v8, v7, a4);
        *(v4 + 1352) = sub_1D72627FC();
        *(v4 + 1360) = swift_getWitnessTable();
        sub_1D7262C9C();
        v11 = *(v4 + 784);
        *(v4 + 1368) = v11;
        if (!v11)
        {
          goto LABEL_58;
        }

        v12 = *(*(v4 + 864) + *(**(v4 + 864) + 152));
        *(v4 + 1488) = v12;
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        *(v4 + 1496) = v13;
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D7274590;
        v18 = sub_1D5C89A48(v14, v15, v16, v17);
        v19 = MEMORY[0x1E69E6530];
        v20 = MEMORY[0x1E69E65A8];
        *(v14 + 56) = MEMORY[0x1E69E6530];
        *(v14 + 64) = v20;
        *(v14 + 32) = v18;
        v21 = *(v9 + qword_1EDFFC648);
        *(v4 + 1504) = v21;
        *(v14 + 96) = v19;
        *(v14 + 104) = v20;
        *(v14 + 72) = v21;
        sub_1D725C4CC();
        sub_1D725C73C();

        v23 = *(v4 + 664);
        if (v23)
        {
          v24 = *(v4 + 656);
          v25 = MEMORY[0x1E69E6158];
          *(v14 + 136) = MEMORY[0x1E69E6158];
          v26 = sub_1D5B7E2C0();
          *(v4 + 1512) = v26;
          *(v14 + 144) = v26;
          *(v14 + 112) = v24;
          *(v14 + 120) = v23;
          v27 = FeedDatabaseGroup.identifier.getter(v26);
          *(v14 + 176) = v25;
          *(v14 + 184) = v26;
          *(v14 + 152) = v27;
          *(v14 + 160) = v28;
          v29 = sub_1D7262EDC();
          sub_1D725C30C("Feed service attempting to emit deferred database group %ld of %ld, kind=%{public}@, group=%{public}@", 101, 2, &dword_1D5B42000, v12, v29, v14);

          *(v4 + 1520) = CACurrentMediaTime();
          v30 = swift_task_alloc();
          *(v4 + 1528) = v30;
          *v30 = v4;
          v30[1] = sub_1D5D0CFD4;
          v31 = *(v4 + 968);

          return sub_1D5C47A60(v31);
        }

        __break(1u);
        return MEMORY[0x1EEE44EE0](v22);
      }

      v89 = *(v4 + 920);
      v90 = *(v4 + 872);
      v232 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v238 = *(v4 + 848);
      *(v4 + 720) = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v91 = swift_allocObject();
      *(v4 + 1376) = v91;
      *(v91 + 16) = v90[10];
      *(v91 + 24) = v90[11];
      *(v91 + 32) = v89;
      *(v91 + 40) = v90[13];
      *(v91 + 48) = v232;
      *(v91 + 64) = v238;

      v92 = swift_task_alloc();
      *(v4 + 1384) = v92;
      *v92 = v4;
      v92[1] = sub_1D71FF178;
      v65 = *(v4 + 840);
      v66 = *(v4 + 832);
      v64 = sub_1D720AE70;
      v67 = (v4 + 720);
      v63 = v91;
LABEL_31:

      return FeedCursorFactory.createCursor(from:state:cursorModifier:)(v66, v67, v65, v64, v63);
    }

    v59 = sub_1D6C08D2C();
    *(v4 + 1320) = v59;
    if ((~v59 & 0xF000000000000007) != 0)
    {
      if ((v59 & 0x8000000000000000) == 0)
      {
        v60 = v59;
        v61 = swift_allocObject();
        *(v61 + 16) = v60;
        *(v4 + 752) = v61 | 0x5000000000000000;

        v62 = swift_task_alloc();
        *(v4 + 1472) = v62;
        *v62 = v4;
        v62[1] = sub_1D720006C;
        v63 = *(v4 + 856);
        v64 = *(v4 + 848);
        v65 = *(v4 + 840);
        v66 = *(v4 + 832);
        v67 = (v4 + 752);
        goto LABEL_31;
      }

      sub_1D5BD9F54(v59);
    }

    v167 = *(v4 + 888);
    v168 = *(v4 + 880);
    v169 = sub_1D6C08E2C();
    v171 = v170;
    type metadata accessor for FeedServiceError(0, v168, v167, v172);
    swift_getWitnessTable();
    swift_allocError();
    *v173 = v169;
    *(v173 + 8) = v171;
    *(v173 + 16) = 0;
    *(v173 + 24) = 0;
    *(v173 + 32) = 4;
    swift_willThrow();

    goto LABEL_64;
  }

  if (v6 == 4)
  {
    v43 = *(v4 + 1208);
    v44 = *(v4 + 1184);
    v45 = *(v4 + 888);
    v46 = *(v4 + 880);
    v47 = *(v4 + 864);
    strcpy(swift_task_alloc(), "cursor serviceConfig strategy trigger ");
    *(v4 + 416) = type metadata accessor for FeedCursor(255, v46, v45, v48);
    *(v4 + 424) = v46;
    *(v4 + 432) = &type metadata for FeedRefreshStrategy;
    *(v4 + 440) = &type metadata for FeedRefreshTrigger;
    TupleTypeMetadata = swift_getTupleTypeMetadata();

    v50 = swift_projectBox();
    *(v4 + 1288) = *v50;
    v51 = TupleTypeMetadata[12];
    *(v4 + 1588) = *(v50 + TupleTypeMetadata[16]);
    v52 = *(v50 + TupleTypeMetadata[20]);
    *(v4 + 1589) = v52;
    (*(v44 + 16))(v43, v50 + v51, v46);
    v53 = v47[6];
    v54 = v47[7];
    __swift_project_boxed_opaque_existential_1(v47 + 3, v53);
    v55 = v47[2];

    v56 = [v55 cachedSubscription];
    *(v4 + 1296) = v56;
    *(v4 + 1584) = v52;
    v236 = (*(v54 + 16) + **(v54 + 16));
    v57 = swift_task_alloc();
    *(v4 + 1304) = v57;
    *v57 = v4;
    v57[1] = sub_1D71FF038;
    v58 = *(v4 + 1168);

    return v236(v58, v56, v4 + 1584, v53, v54);
  }

  v239 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  (*(*(v4 + 888) + 120))(&v240, *(v4 + 880));
  if (v240)
  {
    v93 = *(v4 + 1040);
    v94 = *(v4 + 1032);
    v95 = *(v4 + 888);
    v96 = *(v4 + 880);
    v97 = *(v4 + 872);
    (*(*(v4 + 1184) + 56))(*(v4 + 1080), 1, 1, v96);
    LOBYTE(v243) = 7;
    v98 = sub_1D725891C();
    v99 = *(*(v98 - 8) + 56);
    v99(v93, 1, 1, v98);
    v99(v94, 1, 1, v98);
    v229 = *(v239 + qword_1EDFFCF10);
    type metadata accessor for FeedGroupEmitter(0, v96, v95, v100);
    v101 = sub_1D726275C();
    (*(*(v97 + 104) + 32))(v239, *(v97 + 88));
    v102 = *(v4 + 1080);
    v103 = *(v4 + 1072);
    v104 = *(v4 + 1040);
    v105 = *(v4 + 1032);
    v175 = *(v4 + 1000);
    v176 = *(v4 + 992);
    v222 = *(v4 + 984);
    v226 = *(v4 + 1064);
    v177 = *(v4 + 976);
    v234 = *(v4 + 832);
    (*(*(*(v4 + 928) - 8) + 56))(v175, 0, 1);
    v178 = type metadata accessor for FeedContext(0);
    (*(*(v178 - 8) + 56))(v177, 1, 1, v178);
    v245 = 0;
    v244 = 0u;
    v247 = 0;
    v248 = 256;
    FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v102, 0, &v243, v104, v105, v229, 0, v101, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v175, v177, &v244, &v247, 0, 0, 0);

    sub_1D5BF0114(v177, qword_1EDF34CA0, type metadata accessor for FeedContext);
    (*(v176 + 8))(v175, v222);
    v179 = MEMORY[0x1E6969530];
    sub_1D5BF0114(v105, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    sub_1D5BF0114(v104, &qword_1EDF45B00, v179);
    (*(v103 + 8))(v102, v226);
    v41 = sub_1D726275C();
    v42 = v234;
    goto LABEL_66;
  }

  v214 = *(v4 + 1192);
  v220 = *(v4 + 1152);
  v107 = *(v4 + 1144);
  v108 = *(v4 + 1136);
  v109 = *(v4 + 1128);
  v110 = *(v4 + 1120);
  v111 = *(v4 + 1112);
  v112 = *(v4 + 1104);
  v113 = *(v4 + 1096);
  v208 = *(v4 + 920);
  v230 = *(v4 + 888);
  v233 = *(v4 + 880);
  v114 = *(v4 + 872);
  v225 = *(v4 + 840);
  v217 = *(v4 + 848);
  (*(v230 + 64))();
  (*(v113 + 40))(v109, v113);
  (*(v108 + 8))(v107, v109);
  v115 = (*(v220 + 48))(v112, v220);
  (*(v111 + 8))(v110, v112);
  *(v4 + 736) = v115;
  v116 = swift_task_alloc();
  v211 = v114[10];
  v116[2] = v211;
  v209 = v114[11];
  v116[3] = v209;
  v116[4] = v208;
  v117 = v114[13];
  v116[5] = v117;
  swift_getAssociatedTypeWitness();
  sub_1D72627FC();
  swift_getWitnessTable();
  v118 = sub_1D7263E7C();

  (*(v230 + 144))(v239, v233, v230);
  FeedServiceConfigType.replacing(groups:)(v118, v233, v230, v214);

  v119 = *(v239 + *(*v239 + 280));
  v120 = swift_task_alloc();
  *(v120 + 16) = v211;
  *(v120 + 24) = v209;
  *(v120 + 32) = v208;
  *(v120 + 40) = v117;
  *(v120 + 48) = v217;
  v121 = swift_allocObject();
  *(v121 + 16) = v211;
  *(v121 + 24) = v209;
  *(v121 + 32) = v208;
  *(v121 + 40) = v117;
  v122 = sub_1D720236C(v214, v225, v119, sub_1D720B41C, v121, sub_1D720AEE8, v120);

  v218 = v122;
  v123 = *(v122 + qword_1EDFFCF48);
  v241 = *(v122 + qword_1EDFFCF30);
  v242 = v123;
  *(v4 + 728) = v123;
  v124 = swift_task_alloc();
  v124[2] = v211;
  v124[3] = v209;
  v124[4] = v208;
  v124[5] = v117;
  type metadata accessor for FeedGroupEmitter(255, v233, v230, v125);
  v126 = sub_1D72627FC();
  swift_bridgeObjectRetain_n();

  WitnessTable = swift_getWitnessTable();
  v129 = sub_1D5B874E4(sub_1D720AEF8, v124, v126, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v128);

  v9 = sub_1D5B86020(v129);

  v243 = v9;
  v130 = *(v239 + qword_1EDFFCF20);

  if (!sub_1D726279C())
  {
LABEL_65:
    v212 = *(v4 + 1192);
    v213 = *(v4 + 1200);
    v180 = *(v4 + 1184);
    v207 = v180;
    v181 = *(v4 + 1088);
    v204 = v181;
    v235 = *(v4 + 1072);
    v182 = *(v4 + 1056);
    v201 = v182;
    v183 = *(v4 + 1048);
    v184 = *(v4 + 1016);
    v185 = *(v4 + 1008);
    v228 = *(v4 + 1064);
    v231 = *(v4 + 992);
    v186 = *(v4 + 984);
    v196 = *(v4 + 1024);
    v197 = *(v4 + 976);
    v215 = *(v4 + 936);
    v187 = *(v4 + 880);
    v223 = *(v4 + 928);
    v210 = *(v4 + 832);

    v206 = *(v180 + 56);
    v206(v181, 1, 1, v187);
    v246 = 7;
    v199 = sub_1D725891C();
    v205 = *(*(v199 - 8) + 56);
    v205(v182, 1, 1, v199);
    v205(v183, 1, 1, v199);
    v188 = v241;
    v200 = v242;
    v189 = *(*v218 + 224);
    swift_beginAccess();
    v190 = *(v231 + 16);
    v190(v184, v218 + v189, v186);
    v191 = *(*v239 + 224);
    swift_beginAccess();
    v190(v185, v239 + v191, v186);
    - infix<A>(_:_:)(v184, v185, v223, v215, v196);
    v216 = *(v231 + 8);
    v216(v185, v186);
    v216(v184, v186);
    v203 = type metadata accessor for FeedContext(0);
    v202 = *(*(v203 - 8) + 56);
    v202(v197, 1, 1, v203);
    v245 = 0;
    v244 = 0u;
    v247 = 0;
    v248 = 256;
    v195 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v204, 0, &v246, v201, v183, v200, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, v188, 0, v196, v197, &v244, &v247, 0, 0, 0);

    sub_1D5BF0114(v197, qword_1EDF34CA0, type metadata accessor for FeedContext);
    v216(v196, v186);
    v192 = MEMORY[0x1E6969530];
    sub_1D5BF0114(v183, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    sub_1D5BF0114(v201, &qword_1EDF45B00, v192);
    v198 = *(v235 + 8);
    v198(v204, v228);
    v206(v204, 1, 1, v187);
    v246 = 7;
    v205(v201, 1, 1, v199);
    v205(v183, 1, 1, v199);
    (*(*(v223 - 8) + 56))(v196, 1, 1);
    v202(v197, 1, 1, v203);
    v245 = 0;
    v244 = 0u;
    v247 = 0;
    v248 = 256;

    FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v204, 0, &v246, v201, v183, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v196, v197, &v244, &v247, 0, 0, v195);

    sub_1D5BF0114(v197, qword_1EDF34CA0, type metadata accessor for FeedContext);
    v216(v196, v186);
    sub_1D5BF0114(v183, &qword_1EDF45B00, v192);
    sub_1D5BF0114(v201, &qword_1EDF45B00, v192);
    v198(v204, v228);
    v193 = sub_1D726275C();

    v194 = *(v207 + 8);
    v194(v212, v187);
    v194(v213, v187);
    v42 = v210;
    v41 = v193;
    goto LABEL_66;
  }

  v131 = 0;
  v221 = qword_1EDFFCF30;
  while (1)
  {
    v132 = sub_1D726277C();
    sub_1D726271C();
    if ((v132 & 1) == 0)
    {
      break;
    }

    v133 = *(v130 + 32 + 8 * v131);

    v134 = __OFADD__(v131++, 1);
    if (v134)
    {
      goto LABEL_57;
    }

LABEL_40:
    v135 = v243;
    v136 = sub_1D5C0BA9C();
    v138 = v137;
    if (*(v135 + 16))
    {
      v9 = v136;
      sub_1D7264A0C();
      sub_1D72621EC();
      v139 = sub_1D7264A5C();
      v140 = -1 << *(v135 + 32);
      v141 = v139 & ~v140;
      if ((*(v135 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141))
      {
        v142 = ~v140;
        while (1)
        {
          v143 = (*(v135 + 48) + 16 * v141);
          v144 = *v143 == v9 && v143[1] == v138;
          if (v144 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v141 = (v141 + 1) & v142;
          if (((*(v135 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_37;
      }
    }

LABEL_49:

    *(v4 + 744) = v133;

    sub_1D72627BC();
    v9 = sub_1D5C0BA9C();
    v146 = v145;
    v147 = *(v239 + v221);
    v148 = sub_1D5C0BA9C();
    if (!*(v147 + 16))
    {

LABEL_53:
      sub_1D607E0F0(v9, v146, (v4 + 512));

      sub_1D5EBD03C(v4 + 512);
      goto LABEL_54;
    }

    v150 = sub_1D5B69D90(v148, v149);
    v152 = v151;

    if ((v152 & 1) == 0)
    {
      goto LABEL_53;
    }

    sub_1D5B76B10(*(v147 + 56) + 32 * v150, v4 + 544);
    sub_1D5B7C390((v4 + 544), (v4 + 480));
    v153 = v241;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v244 = v153;
    sub_1D5BAFB24((v4 + 480), v9, v146, isUniquelyReferenced_nonNull_native);

    v241 = v244;
LABEL_54:
    v155 = sub_1D5C0BA9C();
    sub_1D5B860D0(&v244, v155, v156);

LABEL_37:
    if (v131 == sub_1D726279C())
    {
      goto LABEL_65;
    }
  }

  v133 = sub_1D7263DBC();
  v134 = __OFADD__(v131++, 1);
  if (!v134)
  {
    goto LABEL_40;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  v157 = *(*(v4 + 864) + *(**(v4 + 864) + 152));
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1D7279970;
  v159 = sub_1D726279C();
  v160 = MEMORY[0x1E69E6530];
  v161 = MEMORY[0x1E69E65A8];
  *(v158 + 32) = v159;
  *(v158 + 56) = v160;
  *(v158 + 64) = v161;
  v162 = *(v9 + qword_1EDFFC650);
  *(v158 + 96) = v160;
  *(v158 + 104) = v161;
  *(v158 + 72) = v162;
  v164 = *(v9 + 16);
  v163 = *(v9 + 24);
  *(v158 + 136) = MEMORY[0x1E69E6158];
  *(v158 + 144) = sub_1D5B7E2C0();
  *(v158 + 112) = v164;
  *(v158 + 120) = v163;

  v165 = sub_1D7262EDC();
  sub_1D725C30C("Feed service exhausted all deferred database groups, emitted=%ld, skipped=%ld, converting cursor %{public}@", 107, 2, &dword_1D5B42000, v157, v165, v158);

  v166 = swift_task_alloc();
  *(v4 + 1544) = v166;
  *v166 = v4;
  v166[1] = sub_1D7200348;

  return sub_1D5EDBDA8();
}

uint64_t sub_1D5C479D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C47A18()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C47A60(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5C89AD4, 0, 0);
}

void sub_1D5C47AA8(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(), uint64_t a6)
{
  v12 = [a1 error];
  if (!v12)
  {
    v13 = [a1 fetchedObject];
    if (!v13 || (v44 = v13, sub_1D5B9EE48(0), (swift_dynamicCast() & 1) == 0))
    {
      v27 = sub_1D725B50C();
      sub_1D5C47FEC(&qword_1EDF17B48, MEMORY[0x1E69D68A0], MEMORY[0x1E69D68A8]);
      v28 = swift_allocError();
      v30 = v29;
      if (qword_1EDF17C98 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725ABEC();
      v32 = __swift_project_value_buffer(v31, qword_1EDF17CA0);
      (*(*(v31 - 8) + 16))(v30, v32, v31);
      (*(*(v27 - 8) + 104))(v30, *MEMORY[0x1E69D6890], v27);
      (a2)(v28);
      v33 = v28;
      goto LABEL_22;
    }

    v14 = v43;
    v40 = a4;
    if (v43 >> 62)
    {
      v15 = sub_1D7263BFC();
    }

    else
    {
      v15 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v39 = a5;
      v42 = a2;
      v44 = MEMORY[0x1E69E7CC0];
      v17 = &v44;
      sub_1D5BFC364(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
LABEL_32:
        swift_once();
LABEL_26:
        v35 = sub_1D725ABEC();
        v36 = __swift_project_value_buffer(v35, qword_1EDF17CA0);
        (*(*(v35 - 8) + 16))(v14, v36, v35);
        if (*(v15 + 16) <= v17[2] >> 3)
        {
          v44 = v17;

          sub_1D6836478(v15);

          v37 = v44;
        }

        else
        {

          v37 = sub_1D6E14F70(v15, v17);
        }

        sub_1D691F858(0);
        *(v14 + *(v38 + 48)) = v37;
        (*(*(a6 - 8) + 104))(v14, *MEMORY[0x1E69D6898], a6);
        (a2)(v6);
        v33 = v6;
LABEL_22:

        return;
      }

      v18 = 0;
      v16 = v44;
      do
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1DA6FB460](v18);
        }

        else
        {
          v19 = *(v43 + 8 * v18 + 32);
          swift_unknownObjectRetain();
        }

        v20 = [v19 identifier];
        v21 = sub_1D726207C();
        v23 = v22;
        swift_unknownObjectRelease();

        v44 = v16;
        v25 = *(v16 + 16);
        v24 = *(v16 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D5BFC364((v24 > 1), v25 + 1, 1);
          v16 = v44;
        }

        ++v18;
        *(v16 + 16) = v25 + 1;
        v26 = v16 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
      }

      while (v15 != v18);
      a2 = v42;
      a5 = v39;
    }

    v15 = sub_1D5B86020(v16);

    v17 = v40;
    if (sub_1D5BFC390(v15, v40))
    {
      a5();

      return;
    }

    a6 = sub_1D725B50C();
    sub_1D5C47FEC(&qword_1EDF17B48, MEMORY[0x1E69D68A0], MEMORY[0x1E69D68A8]);
    v6 = swift_allocError();
    v14 = v34;
    if (qword_1EDF17C98 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v41 = v12;
  a2();
}

uint64_t sub_1D5C47FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5C48034(uint64_t a1)
{
  v2 = v1;
  sub_1D5C25D84(0, &qword_1EDF17F30, MEMORY[0x1E69D6430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - v6;
  v38 = sub_1D725A9BC();
  MEMORY[0x1EEE9AC00](v38 - 8, v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v31 = &v31 - v13;
  v32 = v12;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v35 = (v12 + 32);
  v36 = (v12 + 48);

  v20 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  v33 = v2;
  for (i = a1; v17; a1 = i)
  {
LABEL_10:
    while (1)
    {
      v22 = (*(a1 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v17)))));
      v23 = v22[1];
      v17 &= v17 - 1;
      v40 = *v22;
      v41 = v23;

      sub_1D5C89E74(v2, v7);

      v24 = v38;
      if ((*v36)(v7, 1, v38) != 1)
      {
        break;
      }

      result = sub_1D6E0E0C0(v7);
      if (!v17)
      {
        goto LABEL_6;
      }
    }

    v25 = *v35;
    v26 = v31;
    (*v35)(v31, v7, v24);
    v25(v37, v26, v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1D5C25DE8(0, v39[2] + 1, 1, v39);
    }

    v28 = v39[2];
    v27 = v39[3];
    if (v28 >= v27 >> 1)
    {
      v39 = sub_1D5C25DE8((v27 > 1), v28 + 1, 1, v39);
    }

    v29 = v38;
    v30 = v39;
    v39[2] = v28 + 1;
    result = (v25)(v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v37, v29);
    v2 = v33;
  }

LABEL_6:
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v40 = v39;
      sub_1D5C25D84(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      return sub_1D725BB1C();
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5C483D4()
{
  result = qword_1EDF1A890;
  if (!qword_1EDF1A890)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1A890);
  }

  return result;
}

uint64_t sub_1D5C48438(uint64_t a1)
{
  v3 = *v1;

  sub_1D5C484E4(a1, v3);

  sub_1D5C8A560(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D5C484E4(uint64_t a1, uint64_t a2)
{
  v53 = sub_1D725ABEC();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v6);
  v52 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8A560(0, &qword_1EDF17810, sub_1D5BFCB14, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v51 = v40 - v10;
  v50 = sub_1D725A9BC();
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v47 = v14;
  v40[1] = v2;
  v57 = MEMORY[0x1E69E7CC0];
  sub_1D5C8A65C(0, v15, 0);
  v16 = v57;
  v17 = a1 + 56;
  result = sub_1D7263B7C();
  v19 = result;
  v20 = 0;
  v21 = *(a2 + 16);
  v45 = (v5 + 16);
  v46 = v21;
  v43 = a1 + 56;
  v44 = v11 + 32;
  v41 = a1 + 64;
  v42 = v15;
  v48 = v11;
  v49 = a1;
  while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
  {
    v23 = v19 >> 6;
    if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_23;
    }

    v24 = *(a1 + 36);
    v54 = v20;
    v55 = v24;
    v25 = v46;
    v56 = v46;
    v26 = qword_1EDF17E08;

    v27 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = v53;
    v29 = __swift_project_value_buffer(v53, qword_1EDF17E10);
    (*v45)(v52, v29, v28);
    sub_1D5BFCB14();
    sub_1D725BF4C();
    v30 = v47;
    sub_1D725A9AC();

    v57 = v16;
    v32 = *(v16 + 16);
    v31 = *(v16 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1D5C8A65C((v31 > 1), v32 + 1, 1);
      v16 = v57;
    }

    *(v16 + 16) = v32 + 1;
    result = (*(v48 + 32))(v16 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32, v30, v50);
    a1 = v49;
    v22 = 1 << *(v49 + 32);
    if (v19 >= v22)
    {
      goto LABEL_24;
    }

    v17 = v43;
    v33 = *(v43 + 8 * v23);
    if ((v33 & (1 << v19)) == 0)
    {
      goto LABEL_25;
    }

    if (v55 != *(v49 + 36))
    {
      goto LABEL_26;
    }

    v34 = v33 & (-2 << (v19 & 0x3F));
    if (v34)
    {
      v22 = __clz(__rbit64(v34)) | v19 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = v23 << 6;
      v36 = v23 + 1;
      v37 = (v41 + 8 * v23);
      while (v36 < (v22 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_1D5C86234(v19, v55, 0);
          v22 = __clz(__rbit64(v38)) + v35;
          goto LABEL_4;
        }
      }

      result = sub_1D5C86234(v19, v55, 0);
    }

LABEL_4:
    v20 = v54 + 1;
    v19 = v22;
    if (v54 + 1 == v42)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1D5C48998(uint64_t a1)
{
  if (!qword_1EDF3BE68)
  {
    sub_1D5C48A1C();
    sub_1D5C48A70();
    sub_1D5C86238();
    v1 = sub_1D725A75C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BE68);
    }
  }
}

unint64_t sub_1D5C48A1C()
{
  result = qword_1EDF31998;
  if (!qword_1EDF31998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31998);
  }

  return result;
}

unint64_t sub_1D5C48A70()
{
  result = qword_1EDF319B8;
  if (!qword_1EDF319B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF319B8);
  }

  return result;
}

void sub_1D5C48AEC(uint64_t a1)
{
  if (!qword_1EDF25660)
  {
    v4[0] = &_s10CodingKeysON_31;
    v4[1] = sub_1D5C48B70();
    v4[2] = sub_1D5C48BC4();
    v4[3] = sub_1D5C48C6C();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF25660);
    }
  }
}

unint64_t sub_1D5C48B70()
{
  result = qword_1EDF2FC88;
  if (!qword_1EDF2FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC88);
  }

  return result;
}

unint64_t sub_1D5C48BC4()
{
  result = qword_1EDF2FC90;
  if (!qword_1EDF2FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC90);
  }

  return result;
}

unint64_t sub_1D5C48C18()
{
  result = qword_1EDF2FC78;
  if (!qword_1EDF2FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC78);
  }

  return result;
}

unint64_t sub_1D5C48C6C()
{
  result = qword_1EDF2FC98;
  if (!qword_1EDF2FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC98);
  }

  return result;
}

unint64_t sub_1D5C48CC0()
{
  result = qword_1EDF304A0;
  if (!qword_1EDF304A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304A0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatNumberFormatStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C48E24()
{
  result = qword_1EDF304A8;
  if (!qword_1EDF304A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304A8);
  }

  return result;
}

NewsFeed::FormatFontWeight_optional __swiftcall FormatFontWeight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatNumberFormatStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5C48F64()
{
  result = qword_1EDF2ECE8;
  if (!qword_1EDF2ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECE8);
  }

  return result;
}

unint64_t sub_1D5C48FB8()
{
  result = qword_1EDF2ED08;
  if (!qword_1EDF2ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED08);
  }

  return result;
}

void sub_1D5C4900C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D5C8AEB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D5C490E4(char a1)
{
  if (!a1)
  {
    return 0x726F6C6F63;
  }

  if (a1 == 1)
  {
    return 0x6168706C61;
  }

  return 1885433183;
}

NewsFeed::FormatSystemColor_optional __swiftcall FormatSystemColor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 23;
  switch(v3)
  {
    case 0:
      goto LABEL_38;
    case 1:
      v5 = 1;
      goto LABEL_38;
    case 2:
      v5 = 2;
      goto LABEL_38;
    case 3:
      v5 = 3;
      goto LABEL_38;
    case 4:
      v5 = 4;
      goto LABEL_38;
    case 5:
      v5 = 5;
      goto LABEL_38;
    case 6:
      v5 = 6;
      goto LABEL_38;
    case 7:
      v5 = 7;
      goto LABEL_38;
    case 8:
      v5 = 8;
      goto LABEL_38;
    case 9:
      v5 = 9;
      goto LABEL_38;
    case 10:
      v5 = 10;
      goto LABEL_38;
    case 11:
      v5 = 11;
      goto LABEL_38;
    case 12:
      v5 = 12;
      goto LABEL_38;
    case 13:
      v5 = 13;
      goto LABEL_38;
    case 14:
      v5 = 14;
      goto LABEL_38;
    case 15:
      v5 = 15;
      goto LABEL_38;
    case 16:
      v5 = 16;
      goto LABEL_38;
    case 17:
      v5 = 17;
      goto LABEL_38;
    case 18:
      v5 = 18;
      goto LABEL_38;
    case 19:
      v5 = 19;
      goto LABEL_38;
    case 20:
      v5 = 20;
      goto LABEL_38;
    case 21:
      v5 = 21;
      goto LABEL_38;
    case 22:
      v5 = 22;
LABEL_38:
      v6 = v5;
      break;
    case 23:
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    default:
      v6 = 41;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatSystemColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_17;
  }

  if (a2 + 40 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 40) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 40;
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

      return (*a1 | (v4 << 8)) - 40;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 40;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v8 = v6 - 41;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5C494B0()
{
  result = qword_1EDF26DF0;
  if (!qword_1EDF26DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DF0);
  }

  return result;
}

unint64_t sub_1D5C49564()
{
  result = qword_1EDF26DF8;
  if (!qword_1EDF26DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DF8);
  }

  return result;
}

unint64_t sub_1D5C495B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5C4960C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5C49650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

void sub_1D5C49698(uint64_t a1)
{
  if (!qword_1EDF0C5E8)
  {
    v4[0] = &_s10CodingKeysON_246;
    v4[1] = sub_1D5C7A4E0();
    v4[2] = sub_1D5C8AFD4();
    v4[3] = sub_1D5C8B028();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF0C5E8);
    }
  }
}

uint64_t FormatCustomFont.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1D5C49B28(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C49698(0);
  sub_1D5B58B84(&qword_1EDF0C5F0, sub_1D5C49698, &unk_1D7321584);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v31;
  v14 = v6;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v25 = *(v17 - 2);
      v24 = *(v17 - 1);

      v26 = sub_1D6615D54();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_9;
    }

LABEL_7:
  }

  v36 = 0uLL;
  v37 = 0;
  v18 = sub_1D72642BC();
  v21 = v20;
  v22 = v18;
  v30 = xmmword_1D728CF30;
  v36 = xmmword_1D728CF30;
  v37 = 0;
  v23 = 16.0;
  if (sub_1D726434C())
  {
    v34 = v30;
    v35 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v23 = v32;
  }

  v30 = xmmword_1D7297410;
  v36 = xmmword_1D7297410;
  v37 = 0;
  if (sub_1D726434C())
  {
    v34 = v30;
    v35 = 0;
    sub_1D5CA8B24();
    sub_1D726431C();
    (*(v14 + 8))(v9, v5);
    v28 = v32;
    v29 = v33;
  }

  else
  {
    (*(v14 + 8))(v9, v5);
    v28 = 0.0;
    v29 = 3072;
  }

  *v13 = v22;
  *(v13 + 8) = v21;
  *(v13 + 16) = v23;
  *(v13 + 24) = v28;
  *(v13 + 32) = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C49B28(uint64_t a1)
{
  if (!qword_1EDF03E08)
  {
    sub_1D5C49698(255);
    sub_1D5B58B84(&qword_1EDF0C5F0, sub_1D5C49698, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03E08);
    }
  }
}

unint64_t sub_1D5C49BD4()
{
  result = qword_1EDF11518;
  if (!qword_1EDF11518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11518);
  }

  return result;
}

unint64_t sub_1D5C49C28()
{
  result = qword_1EDF11520;
  if (!qword_1EDF11520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11520);
  }

  return result;
}

uint64_t sub_1D5C49C7C()
{
  v1 = 1701667182;
  v2 = 0x676E696C616373;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 1702521203;
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

unint64_t sub_1D5C49CDC()
{
  result = qword_1EDF127D8;
  if (!qword_1EDF127D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127D8);
  }

  return result;
}

unint64_t sub_1D5C49D48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5C8B6E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D5C49D8C(uint64_t a1)
{
  if (!qword_1EDF1A128)
  {
    sub_1D5C8C1A8(255);
    sub_1D5B58B84(&qword_1EDF25438, sub_1D5C8C1A8, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A128);
    }
  }
}

unint64_t sub_1D5C49E28()
{
  result = qword_1EDF2BAE8;
  if (!qword_1EDF2BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAE8);
  }

  return result;
}

uint64_t sub_1D5C49E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FormatViewNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  sub_1D5C4A6C4(0);
  v6 = v5;
  v64 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4A640(0);
  sub_1D5B58B84(&qword_1EDF25428, sub_1D5C4A640, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = a1;
LABEL_11:
    sub_1D61E4FBC(v10, v3);
    swift_willThrow();

    v36 = v10;
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v11 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = sub_1D7264AFC();
  LOBYTE(v11) = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v13 = v64;
  v14 = v9;
  if (v11)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_8;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D66278CC();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v6);
      v10 = v44;
      goto LABEL_11;
    }

LABEL_8:
  }

  sub_1D5C36978();
  v58 = 0uLL;
  LOBYTE(v59) = 0;
  sub_1D726431C();
  v18 = v50;
  v58 = xmmword_1D728CF30;
  LOBYTE(v59) = 0;
  sub_1D5C4A954();
  sub_1D726427C();
  v43 = v18;
  v23 = v50;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v58 = xmmword_1D7297410;
  LOBYTE(v59) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v42 = v23;
  v25 = v50;
  v50 = xmmword_1D72BAA60;
  LOBYTE(v51) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v26 = *(&v58 + 1);
  v40 = v58;
  v41 = v25;
  LODWORD(v25) = v59;
  v56 = xmmword_1D72BAA70;
  v57 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v38 = v26;
  v39 = v25;
  v53 = v61;
  v54 = v62;
  v55 = v63;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v47 = xmmword_1D72BAA80;
  v48 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v27 = v41;
  v37 = v49;
  v47 = xmmword_1D72BAA90;
  v48 = 0;
  v28 = sub_1D726423C();
  (*(v13 + 8))(v14, v6);
  *&v46[23] = v51;
  *&v46[7] = v50;
  *&v46[55] = v53;
  *&v46[39] = v52;
  *&v46[71] = v54;
  v46[87] = v55;
  v29 = v45;
  v30 = v42;
  *v45 = v43;
  v29[1] = *(&v18 + 1);
  v29[2] = v30;
  v29[3] = v27;
  v31 = v38;
  v29[4] = v40;
  v29[5] = v31;
  *(v29 + 48) = v39;
  v32 = *v46;
  *(v29 + 65) = *&v46[16];
  *(v29 + 49) = v32;
  v33 = *&v46[32];
  v34 = *&v46[48];
  v35 = *&v46[64];
  *(v29 + 129) = *&v46[80];
  *(v29 + 113) = v35;
  *(v29 + 97) = v34;
  *(v29 + 81) = v33;
  LODWORD(v31) = v49;
  *(v29 + 35) = *(&v49 + 3);
  *(v29 + 137) = v31;
  v29[18] = v37;
  *(v29 + 152) = v28;
  v36 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

void sub_1D5C4A640(uint64_t a1)
{
  if (!qword_1EDF25420)
  {
    v4[0] = &_s10CodingKeysON_1;
    v4[1] = sub_1D5C4A758();
    v4[2] = sub_1D5C8C5B0();
    v4[3] = sub_1D5C4A804();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF25420);
    }
  }
}

void sub_1D5C4A6C4(uint64_t a1)
{
  if (!qword_1EDF1A120)
  {
    sub_1D5C4A640(255);
    sub_1D5B58B84(&qword_1EDF25428, sub_1D5C4A640, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A120);
    }
  }
}

unint64_t sub_1D5C4A758()
{
  result = qword_1EDF2BAC8;
  if (!qword_1EDF2BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAC8);
  }

  return result;
}

unint64_t sub_1D5C4A7B0()
{
  result = qword_1EDF2BAC0;
  if (!qword_1EDF2BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAC0);
  }

  return result;
}

unint64_t sub_1D5C4A804()
{
  result = qword_1EDF2BAD8;
  if (!qword_1EDF2BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAD8);
  }

  return result;
}

unint64_t sub_1D5C4A858()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0xD000000000000018;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x776F64616873;
  if (v1 != 4)
  {
    v4 = 0x6168706C61;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x73726564726F62;
  if (v1 != 2)
  {
    v5 = 0x615272656E726F63;
  }

  if (*v0)
  {
    v2 = 0x756F72676B636162;
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

unint64_t sub_1D5C4A954()
{
  result = qword_1EDF30900;
  if (!qword_1EDF30900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30900);
  }

  return result;
}

uint64_t sub_1D5C4A9A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v55 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51142E8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C4B49C();
    v55 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v65[0] > 3u)
    {
      v23 = v66;
      if (v65[0] > 5u)
      {
        if (v65[0] == 6)
        {
          *v65 = xmmword_1D7279980;
          sub_1D6676114();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v37 = swift_allocObject();
          v38 = v62;
          *(v37 + 112) = v61;
          *(v37 + 128) = v38;
          *(v37 + 144) = v63;
          *(v37 + 160) = v64[0];
          v39 = v58;
          *(v37 + 48) = v57;
          *(v37 + 64) = v39;
          v40 = v60;
          *(v37 + 80) = v59;
          *(v37 + 96) = v40;
          v41 = v56;
          v25 = v37 | 0xC000000000000000;
          *(v37 + 16) = v55;
          *(v37 + 32) = v41;
        }

        else
        {
          *v65 = xmmword_1D7279980;
          sub_1D6661658();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v49 = swift_allocObject();
          v50 = *v64;
          *(v49 + 144) = v63;
          *(v49 + 160) = v50;
          *(v49 + 176) = *&v64[16];
          v51 = v60;
          *(v49 + 80) = v59;
          *(v49 + 96) = v51;
          v52 = v62;
          *(v49 + 112) = v61;
          *(v49 + 128) = v52;
          v53 = v56;
          *(v49 + 16) = v55;
          *(v49 + 32) = v53;
          v54 = v58;
          v25 = v49 | 0xE000000000000000;
          *(v49 + 48) = v57;
          *(v49 + 64) = v54;
        }
      }

      else if (v65[0] == 4)
      {
        *v65 = xmmword_1D7279980;
        sub_1D60FBB30();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = swift_allocObject();
        v27 = *v64;
        *(v26 + 144) = v63;
        *(v26 + 160) = v27;
        *(v26 + 169) = *&v64[9];
        v28 = v60;
        *(v26 + 80) = v59;
        *(v26 + 96) = v28;
        v29 = v62;
        *(v26 + 112) = v61;
        *(v26 + 128) = v29;
        v30 = v56;
        *(v26 + 16) = v55;
        *(v26 + 32) = v30;
        v31 = v58;
        *(v26 + 48) = v57;
        *(v26 + 64) = v31;
        v25 = v26 | 0x8000000000000000;
      }

      else
      {
        *v65 = xmmword_1D7279980;
        sub_1D6676168();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v45 = v55;
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        v25 = v46 | 0xA000000000000000;
      }
    }

    else
    {
      v23 = v66;
      if (v65[0] > 1u)
      {
        if (v65[0] == 2)
        {
          *v65 = xmmword_1D7279980;
          sub_1D6676230();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v32 = swift_allocObject();
          v33 = v60;
          *(v32 + 80) = v59;
          *(v32 + 96) = v33;
          v34 = v62;
          *(v32 + 112) = v61;
          *(v32 + 128) = v34;
          v35 = v56;
          *(v32 + 16) = v55;
          *(v32 + 32) = v35;
          v36 = v58;
          *(v32 + 48) = v57;
          *(v32 + 64) = v36;
          v25 = v32 | 0x4000000000000000;
        }

        else
        {
          v55 = xmmword_1D7279980;
          sub_1D5C49CDC();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v47 = *v65;
          v48 = swift_allocObject();
          *(v48 + 16) = v47;
          v25 = v48 | 0x6000000000000000;
        }
      }

      else if (v65[0])
      {
        *v65 = xmmword_1D7279980;
        sub_1D5C4C9E8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v42 = swift_allocObject();
        v43 = v56;
        *(v42 + 16) = v55;
        *(v42 + 32) = v43;
        v44 = v58;
        *(v42 + 48) = v57;
        *(v42 + 64) = v44;
        v25 = v42 | 0x2000000000000000;
      }

      else
      {
        v55 = xmmword_1D7279980;
        sub_1D5B570F8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = *v65;
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
      }
    }

    *v23 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C4B1F4()
{
  sub_1D6010694(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return swift_deallocObject();
}

uint64_t sub_1D5C4B268()
{

  if (*(v0 + 24) != 1)
  {

    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_1D5D2F2C8(*(v0 + 80), *(v0 + 88), v1 & 1);
    }

    v2 = *(v0 + 136);
    if (v2 != 255)
    {
      sub_1D618909C(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v2 & 1);
    }

    v3 = *(v0 + 160);
    if (v3 != 255)
    {
      sub_1D5D2F2C8(*(v0 + 144), *(v0 + 152), v3 & 1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5C4B340()
{

  sub_1D66761BC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_1D66761BC(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));

  return swift_deallocObject();
}

uint64_t sub_1D5C4B3D0()
{
  sub_1D6086768(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5C4B408()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C4B448()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D5C4B49C()
{
  result = qword_1EDF30908;
  if (!qword_1EDF30908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30908);
  }

  return result;
}

unint64_t sub_1D5C4B4F0()
{
  result = qword_1EDF30910[0];
  if (!qword_1EDF30910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF30910);
  }

  return result;
}

unint64_t sub_1D5C4B544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5C8C734(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D5C4B574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void sub_1D5C4B5C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  sub_1D5C2CBA8(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 + 16);
  if (v58)
  {
    v7 = 0;
    v57 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v8 = MEMORY[0x1E69E7CC8];
    v56 = a1;
    v55 = v4;
    while (1)
    {
      if (v7 >= *(a1 + 16))
      {
        goto LABEL_52;
      }

      v9 = v59;
      sub_1D5C8C808(v57 + *(v4 + 72) * v7, v59);
      v10 = *(v9 + 48);

      v11 = v9;
      v12 = v10;
      sub_1D5C8C86C(v11);
      v13 = *(v10 + 16);
      if (v13)
      {
        break;
      }

LABEL_4:
      if (++v7 == v58)
      {
        goto LABEL_49;
      }
    }

    v60 = v7;
    v14 = 0;
    v15 = v13 - 1;
    v16 = 32;
    v61 = v13 - 1;
    v62 = v12;
    while (1)
    {
      v17 = *(v12 + v16 + 48);
      v19 = *(v12 + v16);
      v18 = *(v12 + v16 + 16);
      v66 = *(v12 + v16 + 32);
      v67 = v17;
      v64 = v19;
      v65 = v18;
      v20 = v14 + 1;
      if (v17 >> 59 == 16)
      {
        v22 = *(&v65 + 1);
        v21 = v65;
      }

      else
      {
        v21 = *(v19 + 32);
        v22 = *(v19 + 40);
      }

      if (v21 == 0x656E696C6E692ELL && v22 == 0xE700000000000000)
      {

        if (v15 == v14)
        {
          goto LABEL_3;
        }

        goto LABEL_45;
      }

      v24 = sub_1D72646CC();
      sub_1D5C8C900(&v64, v63);

      if (v24)
      {
        sub_1D5C8C974(&v64);
        if (v15 == v14)
        {
          goto LABEL_3;
        }

        goto LABEL_45;
      }

      if (v67 >> 59 == 16)
      {
        v26 = *(&v65 + 1);
        v25 = v65;
      }

      else
      {
        v25 = *(v64 + 32);
        v26 = *(v64 + 40);
      }

      if (v8[2])
      {
        v27 = sub_1D5B69D90(v25, v26);
        v29 = v28;

        v30 = MEMORY[0x1E69E7CC0];
        if (v29)
        {
          v30 = *(v8[7] + 8 * v27);
        }
      }

      else
      {

        v30 = MEMORY[0x1E69E7CC0];
      }

      v31 = swift_allocObject();
      v32 = v65;
      *(v31 + 16) = v64;
      *(v31 + 32) = v32;
      v33 = v67;
      *(v31 + 48) = v66;
      *(v31 + 64) = v33;
      v34 = v30[2];
      sub_1D5C8C900(&v64, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v34 >= v30[3] >> 1)
      {
        v30 = sub_1D5C4BE58(isUniquelyReferenced_nonNull_native, v34 + 1, 1, v30);
      }

      sub_1D5C4BDF0(0);
      swift_arrayDestroy();
      v36 = v30[2];
      memmove(v30 + 5, v30 + 4, 8 * v36);
      v30[2] = v36 + 1;
      v30[4] = v31 | 0x4000000000000000;
      if (v67 >> 59 == 16)
      {
        v37 = *(&v65 + 1);
        v38 = v65;
      }

      else
      {
        v38 = *(v64 + 32);
        v37 = *(v64 + 40);
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v8;
      v41 = sub_1D5B69D90(v38, v37);
      v42 = v8[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_50;
      }

      v45 = v40;
      if (v8[3] >= v44)
      {
        if (v39)
        {
          if (v40)
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_1D6D7E6B4();
          if (v45)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        sub_1D5C4BEC8(v44, v39);
        v46 = sub_1D5B69D90(v38, v37);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_53;
        }

        v41 = v46;
        if (v45)
        {
LABEL_37:

          v8 = v63[0];
          *(*(v63[0] + 56) + 8 * v41) = v30;

          sub_1D5C8C974(&v64);
          goto LABEL_44;
        }
      }

      v8 = v63[0];
      *(v63[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v48 = (v8[6] + 16 * v41);
      *v48 = v38;
      v48[1] = v37;
      *(v8[7] + 8 * v41) = v30;
      sub_1D5C8C974(&v64);
      v49 = v8[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_51;
      }

      v8[2] = v51;
LABEL_44:
      v15 = v61;
      v12 = v62;
      if (v61 == v14)
      {
LABEL_3:

        a1 = v56;
        v4 = v55;
        v7 = v60;
        goto LABEL_4;
      }

LABEL_45:
      v16 += 64;
      ++v14;
      if (v20 >= *(v12 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_1D726493C();
        __break(1u);
        JUMPOUT(0x1D5C4BB24);
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC8];
LABEL_49:
  v52 = v54;
  *v54 = a1;
  v52[1] = v8;
}

uint64_t sub_1D5C4BBFC()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

void sub_1D5C4BC40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void *sub_1D5C4BCA8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1D5B5AB24(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1D5C4BDF0(uint64_t a1)
{
  if (!qword_1EDF34150)
  {
    v2 = sub_1D5C2E688();
    v3 = sub_1D5C2E6DC();
    v4 = type metadata accessor for FormatMerge(a1, &type metadata for FormatNodeStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF34150);
    }
  }
}

uint64_t sub_1D5C4BE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5C4BEE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v35 = v5;
  result = sub_1D726410C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void sub_1D5C4C180(uint64_t a1)
{
  if (!qword_1EDF1A3B8)
  {
    sub_1D5B59654(255, &qword_1EDF1B3F0, sub_1D5C4BDF0, MEMORY[0x1E69E62F8]);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A3B8);
    }
  }
}

unint64_t sub_1D5C4C218()
{
  result = qword_1EDF20700;
  if (!qword_1EDF20700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20700);
  }

  return result;
}

unint64_t sub_1D5C4C26C(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF05460, type metadata accessor for FormatSlotDefinition);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882EB8, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF05460, type metadata accessor for FormatSlotDefinition);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for FormatSlotDefinition(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for FormatSlotDefinition);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D5C4C494()
{
  result = qword_1EDF2A8E8;
  if (!qword_1EDF2A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A8E8);
  }

  return result;
}

unint64_t sub_1D5C4C500()
{
  result = qword_1EDF0B720;
  if (!qword_1EDF0B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B720);
  }

  return result;
}

uint64_t sub_1D5C4C558(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C8CC30(255);
    sub_1D5C7A894(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C4C5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 107))
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

void sub_1D5C4C63C(uint64_t a1)
{
  if (!qword_1EDF256D0)
  {
    v4[0] = &_s10CodingKeysON_162;
    v4[1] = sub_1D5C7B358();
    v4[2] = sub_1D5C4C6C0();
    v4[3] = sub_1D5C8CDB8();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF256D0);
    }
  }
}

unint64_t sub_1D5C4C6C0()
{
  result = qword_1EDF30548;
  if (!qword_1EDF30548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30548);
  }

  return result;
}

unint64_t sub_1D5C4C714()
{
  result = qword_1EDF30530;
  if (!qword_1EDF30530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30530);
  }

  return result;
}

unint64_t sub_1D5C4C768()
{
  result = qword_1EDF30538;
  if (!qword_1EDF30538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30538);
  }

  return result;
}

uint64_t sub_1D5C4C7BC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x726F7463656C6573;
    v6 = 7235952;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7865646E497ALL;
    if (a1 != 5)
    {
      v7 = 0x736E6F6974706FLL;
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
    v1 = 0x696669746E656469;
    v2 = 0x7470697263736564;
    v3 = 0x746E65746E6F63;
    if (a1 != 3)
    {
      v3 = 0x736E6D756C6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D5C4C8EC()
{
  result = qword_1EDF27648;
  if (!qword_1EDF27648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27648);
  }

  return result;
}

unint64_t sub_1D5C4C948()
{
  result = qword_1EDF27668[0];
  if (!qword_1EDF27668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF27668);
  }

  return result;
}

unint64_t sub_1D5C4C99C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D5C4C9E8()
{
  result = qword_1EDF327F8;
  if (!qword_1EDF327F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF327F8);
  }

  return result;
}

uint64_t sub_1D5C4CA3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

void sub_1D5C4CA84(uint64_t a1)
{
  if (!qword_1EDF24C50)
  {
    v4[0] = &_s10CodingKeysON_142;
    v4[1] = sub_1D5C86298();
    v4[2] = sub_1D5C4CB20();
    v4[3] = sub_1D5C4CB78();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF24C50);
    }
  }
}

unint64_t sub_1D5C4CB20()
{
  result = qword_1EDF32818;
  if (!qword_1EDF32818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32818);
  }

  return result;
}

unint64_t sub_1D5C4CB78()
{
  result = qword_1EDF32820;
  if (!qword_1EDF32820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32820);
  }

  return result;
}

unint64_t sub_1D5C4CBCC()
{
  result = qword_1EDF1B410;
  if (!qword_1EDF1B410)
  {
    sub_1D5C34D84(255, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
    sub_1D5B570F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B410);
  }

  return result;
}

uint64_t sub_1D5C4CC68()
{
  v1 = *v0;
  v2 = 0x73726F6C6F63;
  v3 = 0x6F69746365726964;
  v4 = 0x74657366666FLL;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
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

unint64_t sub_1D5C4CCF8()
{
  result = qword_1EDF1AEF8;
  if (!qword_1EDF1AEF8)
  {
    sub_1D5C34D84(255, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AEF8);
  }

  return result;
}

unint64_t sub_1D5C4CD8C()
{
  result = qword_1EDF27428;
  if (!qword_1EDF27428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27428);
  }

  return result;
}

void sub_1D5C4CDE0(uint64_t a1)
{
  if (!qword_1EDF251D0)
  {
    v4[0] = &_s10CodingKeysON_141;
    v4[1] = sub_1D5C4D1A8();
    v4[2] = sub_1D5C4D1FC();
    v4[3] = sub_1D5C8D9C4();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF251D0);
    }
  }
}

uint64_t FormatGradientDirection.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C862EC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4CDE0(0);
  sub_1D5B58B84(&qword_1EDF251D8, sub_1D5C4CDE0, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x7472617473, 0xE500000000000000, 6581861, 0xE300000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C7B870();
  v24 = 0uLL;
  v25 = 0;
  sub_1D726431C();
  v17 = v26;
  v24 = xmmword_1D728CF30;
  v25 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v26;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C4D1A8()
{
  result = qword_1EDF27440;
  if (!qword_1EDF27440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27440);
  }

  return result;
}

unint64_t sub_1D5C4D1FC()
{
  result = qword_1EDF27448;
  if (!qword_1EDF27448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27448);
  }

  return result;
}

unint64_t sub_1D5C4D254()
{
  result = qword_1EDF27430;
  if (!qword_1EDF27430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27430);
  }

  return result;
}

unint64_t sub_1D5C4D2A8()
{
  result = qword_1EDF27438;
  if (!qword_1EDF27438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27438);
  }

  return result;
}

uint64_t sub_1D5C4D2FC()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t storeEnumTagSinglePayload for FormatPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t FormatPoint.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C8DA9C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C8DA18(0);
  sub_1D5B58B84(&qword_1EDF24CD8, sub_1D5C8DA18, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(120, 0xE100000000000000, 121, 0xE100000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B57870();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C4D6A0()
{
  result = qword_1EDF34148;
  if (!qword_1EDF34148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34148);
  }

  return result;
}

unint64_t sub_1D5C4D6F4()
{
  result = qword_1EDF1F858;
  if (!qword_1EDF1F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F858);
  }

  return result;
}

uint64_t sub_1D5C4D748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5C4D790(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D61582C4(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D6158328(a2, 255, type metadata accessor for FormatOption, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C4D854(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B54910(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C4D8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatOption.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  sub_1D5B5BF78(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - v7;
  sub_1D5C4DED4(0);
  v10 = v9;
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4DE50(0);
  sub_1D5B58B84(&qword_1EDF24C98, sub_1D5C4DE50, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v40;
  v17 = v13;
  if (v15)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v25 = v10;
      v27 = *(v20 - 2);
      v26 = *(v20 - 1);

      v28 = sub_1D661FED0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v16 + 8))(v17, v25);
      goto LABEL_10;
    }

LABEL_7:
  }

  v41 = 0uLL;
  v42 = 0;
  v21 = sub_1D72642BC();
  v23 = v22;
  v24 = v21;
  v41 = xmmword_1D728CF30;
  v42 = 0;
  sub_1D5C8DE68();
  sub_1D726431C();
  v31 = v43;
  v41 = xmmword_1D7297410;
  v42 = 0;
  sub_1D5C4E87C();
  sub_1D726427C();
  v36 = v43;
  v37 = v31;
  type metadata accessor for FormatVersionRequirement(0);
  v41 = xmmword_1D72BAA60;
  v42 = 0;
  sub_1D5B58B84(qword_1EDF25B50, type metadata accessor for FormatVersionRequirement, &unk_1D728F8C4);
  sub_1D726427C();
  (*(v16 + 8))(v17, v10);
  v32 = type metadata accessor for FormatOption(0);
  v33 = v39;
  sub_1D5C4E944(v38, v39 + *(v32 + 28), &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  *v33 = v24;
  v33[1] = v23;
  v34 = v36;
  v33[2] = v37;
  v33[3] = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C4DE50(uint64_t a1)
{
  if (!qword_1EDF24C90)
  {
    v4[0] = &_s10CodingKeysON_99;
    v4[1] = sub_1D5C4DF68();
    v4[2] = sub_1D5C8DE10();
    v4[3] = sub_1D5C4E014();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF24C90);
    }
  }
}

void sub_1D5C4DED4(uint64_t a1)
{
  if (!qword_1EDF19D58)
  {
    sub_1D5C4DE50(255);
    sub_1D5B58B84(&qword_1EDF24C98, sub_1D5C4DE50, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19D58);
    }
  }
}

unint64_t sub_1D5C4DF68()
{
  result = qword_1EDF33808;
  if (!qword_1EDF33808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33808);
  }

  return result;
}

unint64_t sub_1D5C4DFC0()
{
  result = qword_1EDF33800;
  if (!qword_1EDF33800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33800);
  }

  return result;
}

unint64_t sub_1D5C4E014()
{
  result = qword_1EDF33818;
  if (!qword_1EDF33818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33818);
  }

  return result;
}

uint64_t sub_1D5C4E068()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E65646E65706564;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

uint64_t sub_1D5C4E100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D5C4E168(uint64_t a1)
{
  if (!qword_1EDF40040)
  {
    v2 = sub_1D72585BC();
    v3 = sub_1D5C7C840();
    v5 = type metadata accessor for FormatSelectorValue(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDF40040);
    }
  }
}

unint64_t sub_1D5C4E1FC()
{
  result = qword_1EDF45B20;
  if (!qword_1EDF45B20)
  {
    sub_1D725891C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45B20);
  }

  return result;
}

unint64_t sub_1D5C4E254()
{
  result = qword_1EDF405E8;
  if (!qword_1EDF405E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF405E8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatGlassEffectVariant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C4E3C0()
{
  result = qword_1EDF40008;
  if (!qword_1EDF40008)
  {
    sub_1D5C34074(255, &qword_1EDF40000, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40008);
  }

  return result;
}

_DWORD *sub_1D5C4E444(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D5C4E660(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatSelectorValue.init(value:selectors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for FormatSelectorValue(0, a3, a4, v9);
  return sub_1D5C4E734(a2, a3, a4, v11, a5 + *(v10 + 36));
}

uint64_t sub_1D5C4E734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a1;
  v6 = type metadata accessor for FormatSelectorValueSelector(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  type metadata accessor for FormatCodingEmptyArrayStrategy(0, v6, WitnessTable, v8);
  swift_getWitnessTable();
  return FormatCodingDefault.init(wrappedValue:)(&v10, a5);
}

uint64_t FormatCodingDefault.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

unint64_t sub_1D5C4E87C()
{
  result = qword_1EDF28380;
  if (!qword_1EDF28380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28380);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_index_41Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1D5C4E944(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B5BF78(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5C4E9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5C4EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

unint64_t sub_1D5C4EA9C()
{
  result = qword_1EDF3C7D0;
  if (!qword_1EDF3C7D0)
  {
    sub_1D5B81B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C7D0);
  }

  return result;
}

void *sub_1D5C4EB20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D5B592C0(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t FormatCompilerOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  sub_1D5C4F6F8(0);
  v61 = v3;
  v59 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v65 = &v58 - v8;
  v66 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v66, v9);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v68 = &v58 - v13;
  sub_1D5C7CA48(0);
  v69 = v14;
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  *&v70 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8EAD0(0);
  v18 = v17;
  v64 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8EB9C(0);
  v23 = v22;
  v76 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4F794(0);
  sub_1D5B58B84(&qword_1EDF25328, sub_1D5C4F794, &unk_1D7321584);
  v27 = v71;
  sub_1D7264B0C();
  v28 = v27;
  if (v27)
  {
LABEL_21:
    sub_1D61E4FBC(a1, v28);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *&v71 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_1D7264AFC();
  v30 = Dictionary<>.errorOnUnknownKeys.getter(v29);

  v31 = v69;
  v32 = v70;
  if (v30)
  {
    v33 = sub_1D726433C();
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = (v33 + 48);
      while (*v35 != 1)
      {
        v35 += 24;
        if (!--v34)
        {
          goto LABEL_7;
        }
      }

      v38 = *(v35 - 2);
      v37 = *(v35 - 1);

      v39 = v26;
      v40 = sub_1D661431C();
      sub_1D5E2D970();
      v28 = swift_allocError();
      *v41 = v38;
      *(v41 + 8) = v37;
      *(v41 + 16) = v40;
      *(v41 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v76 + 8))(v39, v23);
      goto LABEL_21;
    }

LABEL_7:
  }

  v74 = 0uLL;
  v75 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC98, sub_1D5C8EAD0, MEMORY[0x1E69D64C8]);
    v72 = 0uLL;
    v73 = 0;
    v36 = v71;
    sub_1D726431C();
    v42 = sub_1D725A74C();
    (*(v64 + 8))(v36, v18);
    v32 = v70;
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v71 = xmmword_1D728CF30;
  v74 = xmmword_1D728CF30;
  v75 = 0;
  if (sub_1D726434C())
  {
    v72 = v71;
    v73 = 0;
    sub_1D5B58B84(&qword_1EDF3BBD0, sub_1D5C7CA48, MEMORY[0x1E69D64C8]);
    sub_1D726431C();
    v43 = v32;
    v44 = v67;
    v45 = v68;
    *&v71 = sub_1D725A74C();
    (*(v63 + 8))(v43, v31);
  }

  else
  {
    *&v71 = MEMORY[0x1E69E7CC0];
    v44 = v67;
    v45 = v68;
  }

  v70 = xmmword_1D7297410;
  v74 = xmmword_1D7297410;
  v75 = 0;
  if (sub_1D726434C())
  {
    v72 = v70;
    v73 = 0;
    sub_1D5B58B84(&qword_1EDF29BE0, type metadata accessor for FormatCompilerOptions.Newsroom, &protocol conformance descriptor for FormatCompilerOptions.Newsroom);
    sub_1D726431C();
    sub_1D5C8F76C(v44, v45, type metadata accessor for FormatCompilerOptions.Newsroom);
  }

  else
  {
    v46 = v66;
    if (qword_1EC87D4C8 != -1)
    {
      v57 = v66;
      swift_once();
      v46 = v57;
    }

    v47 = __swift_project_value_buffer(v46, qword_1EC881E08);
    sub_1D6706BB4(v47, v45, type metadata accessor for FormatCompilerOptions.Newsroom);
  }

  sub_1D725B76C();
  v74 = xmmword_1D72BAA60;
  v75 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  sub_1D726427C();
  v70 = xmmword_1D72BAA70;
  v74 = xmmword_1D72BAA70;
  v75 = 0;
  v49 = sub_1D726434C();
  v50 = v76;
  if (v49)
  {
    v72 = v70;
    v73 = 0;
    sub_1D5B58B84(&qword_1EDF3BE60, sub_1D5C4F6F8, MEMORY[0x1E69D6380]);
    v51 = v60;
    v52 = v61;
    sub_1D726431C();
    *&v70 = v26;
    v53 = sub_1D725A74C();
    (*(v59 + 8))(v51, v52);
  }

  else
  {
    *&v70 = v26;
    v53 = MEMORY[0x1E69E7CD0];
  }

  (*(v50 + 8))(v70, v23);
  v54 = type metadata accessor for FormatCompilerOptions(0);
  v55 = v62;
  sub_1D5C8F76C(v45, v62 + v54[6], type metadata accessor for FormatCompilerOptions.Newsroom);
  sub_1D5C4E944(v65, v55 + v54[7], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v56 = v71;
  *v55 = v42;
  v55[1] = v56;
  *(v55 + v54[8]) = v53;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C4F6F8(uint64_t a1)
{
  if (!qword_1EDF3BE58)
  {
    sub_1D5B56EFC();
    sub_1D5B555C0();
    sub_1D5B56F50();
    v1 = sub_1D725A75C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BE58);
    }
  }
}

void sub_1D5C4F794(uint64_t a1)
{
  if (!qword_1EDF25320)
  {
    v4[0] = &_s10CodingKeysON_262;
    v4[1] = sub_1D5C4F818();
    v4[2] = sub_1D5C7CB14();
    v4[3] = sub_1D5C868B0();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF25320);
    }
  }
}

unint64_t sub_1D5C4F818()
{
  result = qword_1EDF29C80;
  if (!qword_1EDF29C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C80);
  }

  return result;
}

unint64_t sub_1D5C4F870()
{
  result = qword_1EDF29C70;
  if (!qword_1EDF29C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C70);
  }

  return result;
}

unint64_t sub_1D5C4F8C8()
{
  v1 = *v0;
  v2 = 0x69747265706F7270;
  v3 = 0xD000000000000010;
  v4 = 0x72656C69706D6F63;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73746F6C73;
  if (v1 != 1)
  {
    v5 = 0x6D6F6F727377656ELL;
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

unint64_t sub_1D5C4F9A4()
{
  result = qword_1EDF29C50;
  if (!qword_1EDF29C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C50);
  }

  return result;
}

unint64_t sub_1D5C4F9F8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6E6F7269766E65;
  }
}

uint64_t sub_1D5C4FA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t FormatCompilerOptions.Newsroom.Environments.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D5C4FE80(0);
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4FF14(0);
  sub_1D5B58B84(&qword_1EDF252F8, sub_1D5C4FF14, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v33;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6614048();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C8F2EC();
  v30 = 0uLL;
  v31 = 0;
  sub_1D726427C();
  v17 = v32;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D726427C();
  v28 = v17;
  v23 = v32;
  v30 = xmmword_1D7297410;
  v31 = 0;
  sub_1D726427C();
  (*(v13 + 8))(v10, v7);
  v24 = v32;
  v25 = v29;
  v26 = *(&v28 + 1);
  *v29 = v28;
  v25[1] = v26;
  *(v25 + 1) = v23;
  *(v25 + 2) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}