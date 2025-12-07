void sub_1C6C8B798(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v33[1] = a2;
  v8 = sub_1C6D77AD0();
  v33[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C8BBF0(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D77290();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  (*(v21 + 16))(v33 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    (*(v13 + 8))(v16, v12);
    v22 = sub_1C6D77270();
    v23 = sub_1C6D77330();
    v25 = v24;

    if (!v5)
    {
      sub_1C6C8BC84(&qword_1EC1D81E8, MEMORY[0x1E69B4910], MEMORY[0x1E69B4920]);
      v26 = v34;
      sub_1C6D75AF0();
      a5[3] = v8;
      v28 = MEMORY[0x1E69B4910];
      a5[4] = sub_1C6C8BC84(&qword_1EC1D86C8, MEMORY[0x1E69B4910], &protocol conformance descriptor for ArticleUnlikeEvent.Model);
      a5[5] = sub_1C6C8BC84(&qword_1EC1D86D0, v28, &protocol conformance descriptor for ArticleUnlikeEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a5);
      (*(v33[0] + 32))(boxed_opaque_existential_2, v26, v8);
      sub_1C6B1C9F0(v23, v25);
      v30 = *MEMORY[0x1E69E3660];
      v31 = sub_1C6D76F90();
      v32 = *(v31 - 8);
      (*(v32 + 104))(a5, v30, v31);
      (*(v32 + 56))(a5, 0, 1, v31);
    }
  }

  else
  {
    v27 = sub_1C6D76F90();
    (*(*(v27 - 8) + 56))(a5, 1, 1, v27);
  }
}

void sub_1C6C8BBF0(uint64_t a1)
{
  if (!qword_1EDCE6060)
  {
    sub_1C6D77AE0();
    sub_1C6C8BC84(&unk_1EDCE5EE0, MEMORY[0x1E69B4928], MEMORY[0x1E69B48F8]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6060);
    }
  }
}

uint64_t sub_1C6C8BC84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1C6C8BCCC()
{
  v1 = *(v0 + *(type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider(0) + 36));
  if (v1 >> 62)
  {
    v2 = sub_1C6D79E90();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1C6B39280(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v13;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA56240](v5, v1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v6 = [swift_unknownObjectRetain() itemID];
      v7 = sub_1C6D795A0();
      v9 = v8;
      swift_unknownObjectRelease_n();

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C6B39280((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

__n128 sub_1C6C8BE38@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider(0);
  v9 = [objc_msgSend(*(a2 + *(v8 + 28)) bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  [v9 containsItem_];

  LODWORD(a2) = *(a2 + *(v8 + 24));
  v10 = [a3 fullBodyEmbeddingDimension];
  v11 = [a3 maxTopicIds];
  v12 = [a3 titleEmbeddingDimension];
  swift_getObjectType();
  sub_1C6C35740();
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRetain();
  sub_1C6C33510(v10, v11, v12, v14, v16 & 1, *&a2, v24);
  v17 = v24[13];
  *(a4 + 192) = v24[12];
  *(a4 + 208) = v17;
  *(a4 + 224) = v25;
  v18 = v24[9];
  *(a4 + 128) = v24[8];
  *(a4 + 144) = v18;
  v19 = v24[11];
  *(a4 + 160) = v24[10];
  *(a4 + 176) = v19;
  v20 = v24[5];
  *(a4 + 64) = v24[4];
  *(a4 + 80) = v20;
  v21 = v24[7];
  *(a4 + 96) = v24[6];
  *(a4 + 112) = v21;
  v22 = v24[1];
  *a4 = v24[0];
  *(a4 + 16) = v22;
  result = v24[3];
  *(a4 + 32) = v24[2];
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_1C6C8BFE4(void *a1)
{
  v3 = *(v1 + *(type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider(0) + 32));
  v4 = sub_1C6D79110() - 1;
  if (v3 == 1)
  {
    if (v4 >= 0x26)
    {
      v6 = &selRef_shadowDefaultHeadlineScoringOutputName;
      goto LABEL_9;
    }

    v5 = off_1E8297550;
  }

  else
  {
    if (v4 >= 0x28)
    {
      v6 = &selRef_defaultHeadlineScoringOutputName;
      goto LABEL_9;
    }

    v5 = off_1E8297680;
  }

  v6 = v5[v4];
LABEL_9:
  v7 = [a1 *v6];
  v8 = sub_1C6D795A0();

  return v8;
}

uint64_t sub_1C6C8C0B8(void *a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 36));
  v9[3] = a1;
  v5 = sub_1C6D03ACC(sub_1C6C8CBF0, v9, v4);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 16))(v5, [a1 fullBodyEmbeddingDimension], objc_msgSend(a1, sel_titleEmbeddingDimension), v6, v7);
}

uint64_t sub_1C6C8C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v77 = a8;
  LODWORD(v79) = a6;
  LODWORD(v78) = a4;
  v67 = a9;
  v81 = a11;
  v16 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v74 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C6D787B0();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v19);
  v70 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v68 = &v67 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v72 = &v67 - v26;
  sub_1C6C2EF1C(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v69 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v71 = &v67 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v67 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v67 - v39;
  v41 = type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider(0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v67 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a1 + 24);
  sub_1C6B16F28(a2, v44);
  v46 = v41[5];
  v47 = sub_1C6D79170();
  (*(*(v47 - 8) + 16))(&v44[v46], a3, v47);
  v80[0] = a7;
  sub_1C6B186F8(0);
  sub_1C6C8C940();
  v48 = v76;
  v49 = sub_1C6D79680();
  sub_1C6B16F28(v77, &v44[v41[10]]);
  v44[v41[6]] = v78;
  *&v44[v41[7]] = a5;
  v44[v41[8]] = v79;
  *&v44[v41[9]] = v49;
  swift_unknownObjectRetain();
  v50 = [v45 feedPersonalizationConfiguration];
  v80[3] = v41;
  v80[4] = &off_1F4676720;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v80);
  sub_1C6C8C9FC(v44, boxed_opaque_existential_2, type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider);
  ArticleScoringWork.requestContext(with:dataProvider:)(v50, v80, v40);
  if (v48)
  {
    sub_1C6C8CA64(v44, type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider);

    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v77 = 0;
  v54 = v72;
  v53 = v73;

  __swift_destroy_boxed_opaque_existential_1(v80);
  v55 = type metadata accessor for ArticleScoringWork.Context(0);
  v56 = *(v55 - 8);
  (*(v56 + 56))(v40, 0, 1, v55);
  sub_1C6C8C998(v40, a10);
  v81 = a10;
  sub_1C6C8C9FC(a10, v36, sub_1C6C2EF1C);
  v79 = *(v56 + 48);
  result = v79(v36, 1, v55);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v57 = v75;
  v76 = *(v53 + 16);
  v76(v54, v36, v75);
  sub_1C6C8CA64(v36, type metadata accessor for ArticleScoringWork.Context);
  sub_1C6D787A0();
  v78 = *(v53 + 8);
  v78(v54, v57);
  v58 = v71;
  sub_1C6C8C9FC(v81, v71, sub_1C6C2EF1C);
  result = v79(v58, 1, v55);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v59 = v68;
  v60 = v57;
  v61 = v76;
  v76(v68, v58, v60);
  sub_1C6C8CA64(v58, type metadata accessor for ArticleScoringWork.Context);
  v62 = sub_1C6D78780();
  v63 = v75;
  v72 = v64;
  v73 = v62;
  v78(v59, v75);
  v65 = v69;
  sub_1C6C8C9FC(v81, v69, sub_1C6C2EF1C);
  result = v79(v65, 1, v55);
  v66 = v70;
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v61(v70, v65, v63);
  sub_1C6C8CA64(v65, type metadata accessor for ArticleScoringWork.Context);
  sub_1C6D78770();
  v78(v66, v63);
  sub_1C6D78790();
  return sub_1C6C8CA64(v44, type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider);
}

uint64_t type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider(uint64_t a1)
{
  result = qword_1EDCE78F8;
  if (!qword_1EDCE78F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6C8C8D8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 itemID];
  v4 = sub_1C6D795A0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_1C6C8C940()
{
  result = qword_1EDCE6608;
  if (!qword_1EDCE6608)
  {
    sub_1C6B186F8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6608);
  }

  return result;
}

uint64_t sub_1C6C8C998(uint64_t a1, uint64_t a2)
{
  sub_1C6C2EF1C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C8C9FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C8CA64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6C8CAEC(uint64_t a1)
{
  sub_1C6B10A98(319, qword_1EDCE6F00, &protocol descriptor for ArticleFeaturesFactoryType);
  if (v1 <= 0x3F)
  {
    sub_1C6D79170();
    if (v2 <= 0x3F)
    {
      sub_1C6B0F7A8(319, &unk_1EDCE6550, &protocolRef_FCPaidAccessCheckerType);
      if (v3 <= 0x3F)
      {
        sub_1C6B186F8(319);
        if (v4 <= 0x3F)
        {
          sub_1C6B10A98(319, qword_1EDCE9100, &protocol descriptor for UserEmbeddingProviderType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t Com_Apple_News_Personalization_GroupType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x52;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6C8CC6C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_News_Personalization_GroupType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C6C8CC94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0FB94();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6C8CD40()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE5768);
  __swift_project_value_buffer(v0, qword_1EDCE5768);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_1C6D8A1F0;
  v5 = v168 + v4;
  v6 = v168 + v4 + *(v2 + 56);
  *(v168 + v4) = 0;
  *v6 = "GROUP_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v168 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "GROUP_TYPE_CURATED";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v168 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "GROUP_TYPE_NEWSPAPER";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v168 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "GROUP_TYPE_LOCAL_NEWS";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v168 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "GROUP_TYPE_SHARED_WITH_YOU";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v168 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "GROUP_TYPE_TRENDING";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v168 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "GROUP_TYPE_MY_MAGAZINES";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v168 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "GROUP_TYPE_FEATURED_ISSUE";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v9();
  v23 = v168 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "GROUP_TYPE_ISSUES";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  v24 = (v168 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "GROUP_TYPE_TOPIC";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v9();
  v26 = (v168 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "GROUP_TYPE_FEATURED_ARTICLE";
  *(v27 + 1) = 27;
  v27[16] = 2;
  v9();
  v28 = (v168 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "GROUP_TYPE_FEATURED_ISSUE_ARTICLE";
  *(v29 + 1) = 33;
  v29[16] = 2;
  v9();
  v30 = (v168 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "GROUP_TYPE_RECOMMENDED_ISSUES";
  *(v31 + 1) = 29;
  v31[16] = 2;
  v9();
  v32 = (v168 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "GROUP_TYPE_NEW_ISSUE";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v9();
  v34 = (v168 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "GROUP_TYPE_SPOTLIGHT";
  *(v35 + 1) = 20;
  v35[16] = 2;
  v9();
  v36 = (v168 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "GROUP_TYPE_BREAKING_NEWS";
  *(v37 + 1) = 24;
  v37[16] = 2;
  v9();
  v38 = v168 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "GROUP_TYPE_SPECIAL_EVENTS";
  *(v38 + 8) = 25;
  *(v38 + 16) = 2;
  v9();
  v39 = (v168 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "GROUP_TYPE_ARTICLE_LIST";
  *(v40 + 1) = 23;
  v40[16] = 2;
  v9();
  v41 = (v168 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "GROUP_TYPE_ORDERED_ARTICLE_LIST";
  *(v42 + 1) = 31;
  v42[16] = 2;
  v9();
  v43 = (v168 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "GROUP_TYPE_BEST_OF_BUNDLE";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v9();
  v45 = (v168 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "GROUP_TYPE_MAGAZINE_TRENDING";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v9();
  v47 = (v168 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "GROUP_TYPE_CHANNEL";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v9();
  v49 = (v168 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "GROUP_TYPE_TOP_STORIES";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v9();
  v51 = (v168 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "GROUP_TYPE_MORE_FROM";
  *(v52 + 1) = 20;
  v52[16] = 2;
  v9();
  v53 = (v168 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "GROUP_TYPE_RELATED";
  *(v54 + 1) = 18;
  v54[16] = 2;
  v9();
  v55 = (v168 + v4 + 25 * v3);
  v56 = v55 + *(v2 + 56);
  *v55 = 25;
  *v56 = "GROUP_TYPE_FOR_YOU";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v9();
  v57 = (v168 + v4 + 26 * v3);
  v58 = v57 + *(v2 + 56);
  *v57 = 26;
  *v58 = "GROUP_TYPE_PAID_SUBSCRIPTION";
  *(v58 + 1) = 28;
  v58[16] = 2;
  v9();
  v59 = (v168 + v4 + 27 * v3);
  v60 = v59 + *(v2 + 56);
  *v59 = 27;
  *v60 = "GROUP_TYPE_AUTO_FAVORITE";
  *(v60 + 1) = 24;
  v60[16] = 2;
  v9();
  v61 = (v168 + v4 + 28 * v3);
  v62 = v61 + *(v2 + 56);
  *v61 = 28;
  *v62 = "GROUP_TYPE_DAILY_BRIEFINGS";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v9();
  v63 = (v168 + v4 + 29 * v3);
  v64 = v63 + *(v2 + 56);
  *v63 = 29;
  *v64 = "GROUP_TYPE_AUDIO_DAILY_BRIEFING";
  *(v64 + 1) = 31;
  v64[16] = 2;
  v9();
  v65 = (v168 + v4 + 30 * v3);
  v66 = v65 + *(v2 + 56);
  *v65 = 30;
  *v66 = "GROUP_TYPE_AUDIO_UP_NEXT";
  *(v66 + 1) = 24;
  v66[16] = 2;
  v9();
  v67 = (v168 + v4 + 31 * v3);
  v68 = v67 + *(v2 + 56);
  *v67 = 31;
  *v68 = "GROUP_TYPE_AUDIO_FOR_YOU";
  *(v68 + 1) = 24;
  v68[16] = 2;
  v9();
  v69 = v168 + v4 + 32 * v3 + *(v2 + 56);
  *(v5 + 32 * v3) = 32;
  *v69 = "GROUP_TYPE_AUDIO_RECENTLY_PLAYED";
  *(v69 + 8) = 32;
  *(v69 + 16) = 2;
  v9();
  v70 = (v168 + v4 + 33 * v3);
  v71 = v70 + *(v2 + 56);
  *v70 = 33;
  *v71 = "GROUP_TYPE_MORE_FOR_YOU";
  *(v71 + 1) = 23;
  v71[16] = 2;
  v9();
  v72 = (v168 + v4 + 34 * v3);
  v73 = v72 + *(v2 + 56);
  *v72 = 34;
  *v73 = "GROUP_TYPE_NEW_FOLLOW";
  *(v73 + 1) = 21;
  v73[16] = 2;
  v9();
  v74 = (v168 + v4 + 35 * v3);
  v75 = v74 + *(v2 + 56);
  *v74 = 35;
  *v75 = "GROUP_TYPE_LATEST_STORIES";
  *(v75 + 1) = 25;
  v75[16] = 2;
  v9();
  v76 = (v168 + v4 + 36 * v3);
  v77 = v76 + *(v2 + 56);
  *v76 = 36;
  *v77 = "GROUP_TYPE_AD";
  *(v77 + 1) = 13;
  v77[16] = 2;
  v9();
  v78 = (v168 + v4 + 37 * v3);
  v79 = v78 + *(v2 + 56);
  *v78 = 37;
  *v79 = "GROUP_TYPE_SEEN_CONTENT_MARK";
  *(v79 + 1) = 28;
  v79[16] = 2;
  v9();
  v80 = (v168 + v4 + 38 * v3);
  v81 = v80 + *(v2 + 56);
  *v80 = 38;
  *v81 = "GROUP_TYPE_MISSED_STORIES";
  *(v81 + 1) = 25;
  v81[16] = 2;
  v9();
  v82 = (v168 + v4 + 39 * v3);
  v83 = v82 + *(v2 + 56);
  *v82 = 39;
  *v83 = "GROUP_TYPE_RECOMMENDED_READS";
  *(v83 + 1) = 28;
  v83[16] = 2;
  v9();
  v84 = (v168 + v4 + 40 * v3);
  v85 = v84 + *(v2 + 56);
  *v84 = 40;
  *v85 = "GROUP_TYPE_END_OF_ARTICLE_UNKNOWN";
  *(v85 + 1) = 33;
  v85[16] = 2;
  v9();
  v86 = (v168 + v4 + 41 * v3);
  v87 = v86 + *(v2 + 56);
  *v86 = 41;
  *v87 = "GROUP_TYPE_PAYWALL";
  *(v87 + 1) = 18;
  v87[16] = 2;
  v9();
  v88 = (v168 + v4 + 42 * v3);
  v89 = v88 + *(v2 + 56);
  *v88 = 42;
  *v89 = "GROUP_TYPE_HIGHLIGHTS";
  *(v89 + 1) = 21;
  v89[16] = 2;
  v9();
  v90 = (v168 + v4 + 43 * v3);
  v91 = v90 + *(v2 + 56);
  *v90 = 43;
  *v91 = "GROUP_TYPE_MY_SPORTS";
  *(v91 + 1) = 20;
  v91[16] = 2;
  v9();
  v92 = (v168 + v4 + 44 * v3);
  v93 = v92 + *(v2 + 56);
  *v92 = 44;
  *v93 = "GROUP_TYPE_WEATHER";
  *(v93 + 1) = 18;
  v93[16] = 2;
  v9();
  v94 = (v168 + v4 + 45 * v3);
  v95 = v94 + *(v2 + 56);
  *v94 = 45;
  *v95 = "GROUP_TYPE_SPORTS_RECORD";
  *(v95 + 1) = 24;
  v95[16] = 2;
  v9();
  v96 = (v168 + v4 + 46 * v3);
  v97 = v96 + *(v2 + 56);
  *v96 = 46;
  *v97 = "GROUP_TYPE_SPORTS_NAVIGATION";
  *(v97 + 1) = 28;
  v97[16] = 2;
  v9();
  v98 = (v168 + v4 + 47 * v3);
  v99 = v98 + *(v2 + 56);
  *v98 = 47;
  *v99 = "GROUP_TYPE_SPORTS_TOPIC";
  *(v99 + 1) = 23;
  v99[16] = 2;
  v9();
  v100 = (v168 + v4 + 48 * v3);
  v101 = v100 + *(v2 + 56);
  *v100 = 48;
  *v101 = "GROUP_TYPE_MY_SPORTS_TOPIC";
  *(v101 + 1) = 26;
  v101[16] = 2;
  v9();
  v102 = (v168 + v4 + 49 * v3);
  v103 = v102 + *(v2 + 56);
  *v102 = 49;
  *v103 = "GROUP_TYPE_CHANNEL_SECTION";
  *(v103 + 1) = 26;
  v103[16] = 2;
  v9();
  v104 = (v168 + v4 + 50 * v3);
  v105 = v104 + *(v2 + 56);
  *v104 = 50;
  *v105 = "GROUP_TYPE_CHANNEL_SECTION_DIRECTORY";
  *(v105 + 1) = 36;
  v105[16] = 2;
  v9();
  v106 = (v168 + v4 + 51 * v3);
  v107 = v106 + *(v2 + 56);
  *v106 = 51;
  *v107 = "GROUP_TYPE_INTRO_TO_SPORTS";
  *(v107 + 1) = 26;
  v107[16] = 2;
  v9();
  v108 = (v168 + v4 + 52 * v3);
  v109 = v108 + *(v2 + 56);
  *v108 = 52;
  *v109 = "GROUP_TYPE_SPORTS_SCORES";
  *(v109 + 1) = 24;
  v109[16] = 2;
  v9();
  v110 = (v168 + v4 + 53 * v3);
  v111 = v110 + *(v2 + 56);
  *v110 = 53;
  *v111 = "GROUP_TYPE_SPORTS_SCHEDULE";
  *(v111 + 1) = 26;
  v111[16] = 2;
  v9();
  v112 = (v168 + v4 + 54 * v3);
  v113 = v112 + *(v2 + 56);
  *v112 = 54;
  *v113 = "GROUP_TYPE_SPORTS_STANDINGS";
  *(v113 + 1) = 27;
  v113[16] = 2;
  v9();
  v114 = (v168 + v4 + 55 * v3);
  v115 = v114 + *(v2 + 56);
  *v114 = 55;
  *v115 = "GROUP_TYPE_SPORTS_BRACKET";
  *(v115 + 1) = 25;
  v115[16] = 2;
  v9();
  v116 = (v168 + v4 + 56 * v3);
  v117 = v116 + *(v2 + 56);
  *v116 = 56;
  *v117 = "GROUP_TYPE_SPORTS_TOP_STORIES";
  *(v117 + 1) = 29;
  v117[16] = 2;
  v9();
  v118 = (v168 + v4 + 57 * v3);
  v119 = v118 + *(v2 + 56);
  *v118 = 57;
  *v119 = "GROUP_TYPE_SPORTS_EVENT_INFO";
  *(v119 + 1) = 28;
  v119[16] = 2;
  v9();
  v120 = (v168 + v4 + 58 * v3);
  v121 = v120 + *(v2 + 56);
  *v120 = 58;
  *v121 = "GROUP_TYPE_SPORTS_BOX_SCORES";
  *(v121 + 1) = 28;
  v121[16] = 2;
  v9();
  v122 = (v168 + v4 + 59 * v3);
  v123 = v122 + *(v2 + 56);
  *v122 = 59;
  *v123 = "GROUP_TYPE_SPORTS_KEY_PLAYERS";
  *(v123 + 1) = 29;
  v123[16] = 2;
  v9();
  v124 = (v168 + v4 + 60 * v3);
  v125 = v124 + *(v2 + 56);
  *v124 = 60;
  *v125 = "GROUP_TYPE_SPORTS_EVENT_ARTICLE_LIST";
  *(v125 + 1) = 36;
  v125[16] = 2;
  v9();
  v126 = (v168 + v4 + 61 * v3);
  v127 = v126 + *(v2 + 56);
  *v126 = 61;
  *v127 = "GROUP_TYPE_SPORTS_INJURY_REPORTS";
  *(v127 + 1) = 32;
  v127[16] = 2;
  v9();
  v128 = (v168 + v4 + 62 * v3);
  v129 = v128 + *(v2 + 56);
  *v128 = 62;
  *v129 = "GROUP_TYPE_SHORTCUTS";
  *(v129 + 1) = 20;
  v129[16] = 2;
  v9();
  v130 = (v168 + v4 + 63 * v3);
  v131 = v130 + *(v2 + 56);
  *v130 = 63;
  *v131 = "GROUP_TYPE_SPORTS_ONBOARDING";
  *(v131 + 1) = 28;
  v131[16] = 2;
  v9();
  v132 = v168 + v4 + (v3 << 6) + *(v2 + 56);
  *(v5 + (v3 << 6)) = 64;
  *v132 = "GROUP_TYPE_PUZZLE_LIST";
  *(v132 + 8) = 22;
  *(v132 + 16) = 2;
  v9();
  v133 = (v168 + v4 + 65 * v3);
  v134 = v133 + *(v2 + 56);
  *v133 = 65;
  *v134 = "GROUP_TYPE_PUZZLE_ARCHIVE";
  *(v134 + 1) = 25;
  v134[16] = 2;
  v9();
  v135 = (v168 + v4 + 66 * v3);
  v136 = v135 + *(v2 + 56);
  *v135 = 66;
  *v136 = "GROUP_TYPE_PUZZLE_CONTINUE_PLAYING";
  *(v136 + 1) = 34;
  v136[16] = 2;
  v9();
  v137 = (v168 + v4 + 67 * v3);
  v138 = v137 + *(v2 + 56);
  *v137 = 67;
  *v138 = "GROUP_TYPE_PUZZLE_FEATURED";
  *(v138 + 1) = 26;
  v138[16] = 2;
  v9();
  v139 = (v168 + v4 + 68 * v3);
  v140 = v139 + *(v2 + 56);
  *v139 = 68;
  *v140 = "GROUP_TYPE_TAG_FEED_FOR_YOU";
  *(v140 + 1) = 27;
  v140[16] = 2;
  v9();
  v141 = (v168 + v4 + 69 * v3);
  v142 = v141 + *(v2 + 56);
  *v141 = 69;
  *v142 = "GROUP_TYPE_TAG_RECENT_STORIES";
  *(v142 + 1) = 29;
  v142[16] = 2;
  v9();
  v143 = (v168 + v4 + 70 * v3);
  v144 = v143 + *(v2 + 56);
  *v143 = 70;
  *v144 = "GROUP_TYPE_TAG_DATE_RANGE";
  *(v144 + 1) = 25;
  v144[16] = 2;
  v9();
  v145 = (v168 + v4 + 71 * v3);
  v146 = v145 + *(v2 + 56);
  *v145 = 71;
  *v146 = "GROUP_TYPE_MORE_IN_TOPIC";
  *(v146 + 1) = 24;
  v146[16] = 2;
  v9();
  v147 = (v168 + v4 + 72 * v3);
  v148 = v147 + *(v2 + 56);
  *v147 = 72;
  *v148 = "GROUP_TYPE_SPORTS_LINKS";
  *(v148 + 1) = 23;
  v148[16] = 2;
  v9();
  v149 = (v168 + v4 + 73 * v3);
  v150 = v149 + *(v2 + 56);
  *v149 = 73;
  *v150 = "GROUP_TYPE_SPORTS_MASTHEAD";
  *(v150 + 1) = 26;
  v150[16] = 2;
  v9();
  v151 = (v168 + v4 + 74 * v3);
  v152 = v151 + *(v2 + 56);
  *v151 = 74;
  *v152 = "GROUP_TYPE_SPORTS_EVENT_TOPIC";
  *(v152 + 1) = 29;
  v152[16] = 2;
  v9();
  v153 = (v168 + v4 + 75 * v3);
  v154 = v153 + *(v2 + 56);
  *v153 = 75;
  *v154 = "GROUP_TYPE_LATEST_RECIPES";
  *(v154 + 1) = 25;
  v154[16] = 2;
  v9();
  v155 = (v168 + v4 + 76 * v3);
  v156 = v155 + *(v2 + 56);
  *v155 = 76;
  *v156 = "GROUP_TYPE_SAVED_RECIPES";
  *(v156 + 1) = 24;
  v156[16] = 2;
  v9();
  v157 = (v168 + v4 + 77 * v3);
  v158 = v157 + *(v2 + 56);
  *v157 = 77;
  *v158 = "GROUP_TYPE_CHANNEL_RECIPES";
  *(v158 + 1) = 26;
  v158[16] = 2;
  v9();
  v159 = (v168 + v4 + 78 * v3);
  v160 = v159 + *(v2 + 56);
  *v159 = 78;
  *v160 = "GROUP_TYPE_RECENTLY_VIEWED_RECIPES";
  *(v160 + 1) = 34;
  v160[16] = 2;
  v9();
  v161 = (v168 + v4 + 79 * v3);
  v162 = v161 + *(v2 + 56);
  *v161 = 79;
  *v162 = "GROUP_TYPE_TRENDING_RECIPES";
  *(v162 + 1) = 27;
  v162[16] = 2;
  v9();
  v163 = (v168 + v4 + 80 * v3);
  v164 = v163 + *(v2 + 56);
  *v163 = 80;
  *v164 = "GROUP_TYPE_RELATED_RECIPES";
  *(v164 + 1) = 26;
  v164[16] = 2;
  v9();
  v165 = (v168 + v4 + 81 * v3);
  v166 = v165 + *(v2 + 56);
  *v165 = 81;
  *v166 = "GROUP_TYPE_RECIPE_TOPICS";
  *(v166 + 1) = 24;
  v166[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_GroupType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5760 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5768);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6C8E24C()
{
  result = qword_1EDCE5750;
  if (!qword_1EDCE5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5750);
  }

  return result;
}

unint64_t sub_1C6C8E2A4()
{
  result = qword_1EDCE5740;
  if (!qword_1EDCE5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5740);
  }

  return result;
}

unint64_t sub_1C6C8E2FC()
{
  result = qword_1EC1D86D8;
  if (!qword_1EC1D86D8)
  {
    sub_1C6C8E354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D86D8);
  }

  return result;
}

void sub_1C6C8E354()
{
  if (!qword_1EC1D86E0)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D86E0);
    }
  }
}

unint64_t sub_1C6C8E3A8()
{
  result = qword_1EDCE5748;
  if (!qword_1EDCE5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5748);
  }

  return result;
}

uint64_t sub_1C6C8E3FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5760 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5768);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ClusteringJournalEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClusteringJournalEntry(0) + 20);
  v4 = sub_1C6D75F50();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C6C8E56C(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v5 = sub_1C6D75F80();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v23 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  v21 = a2;
  sub_1C6D790C0();
  sub_1C6D79820();
  sub_1C6C8EAA4(0, &qword_1EDCDF9C0, sub_1C6B68AA4, MEMORY[0x1E69E62F8]);
  swift_getWitnessTable();
  sub_1C6D796A0();
  v9 = v24;
  v10 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  v12 = (*(v11 + 8))(v9, v8, v10, v11);

  v24 = v16;
  v19 = a2;
  v20 = v12;
  v13 = sub_1C6D796C0();

  (*(v17 + 8))(v8, v18);
  return v13;
}

uint64_t sub_1C6C8E7A4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C6D790C0();
  v4 = sub_1C6D790B0();
  sub_1C6D79090();
  v6 = v5;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C6B66E5C(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_1C6B66E5C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = v4;
  v11[5] = v6;
  *a1 = v7;
  return result;
}

double sub_1C6C8E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6D790C0();
  v4 = sub_1C6D79070();
  if (*(a1 + 16))
  {
    v6 = sub_1C6B5DEA8(v4, v5);
    v8 = v7;

    if (v8)
    {
      return *(*(a1 + 56) + 8 * v6);
    }
  }

  else
  {
  }

  if (qword_1EDCE18F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDCE18F8;
  v11 = sub_1C6D79AA0();
  sub_1C6C8EAA4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6D7E630;
  v13 = sub_1C6D79070();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1C6B2064C();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1C6D78D30("Encountered missing diversification score for recipe: %{public}@", 64, 2, &dword_1C6B09000, v10, v11, v12);

  return 0.0;
}

BOOL sub_1C6C8EA3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = sub_1C6C8E880(v4, a1, v5);
  return sub_1C6C8E880(v4, a2, v5) < v6;
}

void sub_1C6C8EAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = sub_1C6D78A00();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(uint64_t a1)
{
  result = qword_1EDCE46E0;
  if (!qword_1EDCE46E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.duration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6B764C8(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D789F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7655C(v6);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C6C8EDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6B764C8(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7655C(v7);
  }

  return result;
}

uint64_t sub_1C6C8EF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0) + 24);
  sub_1C6B7655C(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0) + 24);
  sub_1C6B7655C(v1 + v3);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventSportsTagSeen.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B764C8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7655C(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B76B50;
}

BOOL Com_Apple_News_Personalization_SessionEventSportsTagSeen.hasDuration.getter()
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6B764C8(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D78A00();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7655C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventSportsTagSeen.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0) + 24);
  sub_1C6B7655C(v0 + v1);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C8F620()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D86E8);
  __swift_project_value_buffer(v0, qword_1EC1D86E8);
  sub_1C6B780C4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "tag_id";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventSportsTagSeen._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D86E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6C8F940(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C8F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6D78A00();
  sub_1C6C90464(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6C8FAA0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C8FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6B764C8(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B7655C(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6C90464(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6C90464(&qword_1EC1D8700, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C8FD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C90464(&qword_1EC1D8718, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C8FE0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D86E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C8FEB4(uint64_t a1)
{
  v2 = sub_1C6C90464(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C8FF20(uint64_t a1, uint64_t a2)
{
  sub_1C6C90464(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventSportsTagSeenV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  sub_1C6B77F8C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_9;
  }

  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  v18 = *(v26 + 24);
  v19 = *(v14 + 48);
  sub_1C6B764C8(a1 + v18, v17);
  sub_1C6B764C8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B7655C(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6C90464(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_8;
  }

  sub_1C6B764C8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1C6B78020(v17);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6C90464(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v22 = sub_1C6D79560();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1C6B7655C(v17);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_9:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C90464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C6C904AC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCEA6A8;
  v6 = sub_1C6D79AC0();
  sub_1C6D78D30("App user context provider will prepare bundle subscription", 58, 2, &dword_1C6B09000, v5, v6, MEMORY[0x1E69E7CC0]);
  result = [*(v2 + 16) bundleSubscriptionManager];
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v11[4] = sub_1C6C913B4;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1C6B20B90;
    v11[3] = &block_descriptor_9;
    v10 = _Block_copy(v11);

    [v8 prepareForUseWithCompletion_];
    _Block_release(v10);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C90620(uint64_t (*a1)(uint64_t))
{
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDCEA6A8;
  v3 = sub_1C6D79AC0();
  v4 = sub_1C6D78D30("App user context provider did prepare bundle subscription", 57, 2, &dword_1C6B09000, v2, v3, MEMORY[0x1E69E7CC0]);
  return a1(v4);
}

uint64_t sub_1C6C906BC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1C6C906FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  v7 = type metadata accessor for AppUserContext(0);
  v8 = swift_allocObject();
  v9 = a1;
  v10 = v6;
  swift_unknownObjectRetain();
  sub_1C6C907B0(v10, v5, a1);
  a2[3] = v7;
  result = sub_1C6C913BC();
  a2[4] = result;
  *a2 = v8;
  return result;
}

void sub_1C6C907B0(void *a1, void *a2, void *a3)
{
  v7 = sub_1C6D76330();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C04D28(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v16 = a3;
  v17 = a1;
  swift_unknownObjectRetain();
  v18 = [v17 bundleSubscriptionManager];
  if (!v18)
  {
    __break(1u);
    goto LABEL_28;
  }

  v82 = v16;
  v83 = v11;
  v19 = [v18 bundleSubscription];
  swift_unknownObjectRelease();
  v20 = [v17 subscriptionController];
  if (!v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20;
  v22 = [v20 subscribedTagIDs];

  if (!v22)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = sub_1C6D79780();

  v24 = sub_1C6B1E610(v23);

  v3[5] = v24;
  v25 = [v17 subscriptionController];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = v25;
  v27 = [v25 autoFavoriteTagIDs];

  if (!v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = sub_1C6D79780();

  v29 = sub_1C6B1E610(v28);

  v3[6] = v29;
  v30 = [v17 subscriptionController];
  if (!v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v31 = v30;
  v32 = [v30 mutedTagIDs];

  if (!v32)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = sub_1C6D79780();

  v34 = sub_1C6B1E610(v33);

  v3[7] = v34;
  v35 = [v17 subscriptionController];
  if (!v35)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = v35;
  v37 = [v35 ignoredTagIDs];

  if (!v37)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = sub_1C6D79780();

  v39 = sub_1C6B1E610(v38);

  v3[8] = v39;
  v40 = [v17 subscriptionController];
  if (!v40)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v41 = v40;
  v42 = [v40 groupableTagIDs];

  if (!v42)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v81 = v7;
  v43 = sub_1C6D79780();

  v44 = sub_1C6B1E610(v43);

  v3[9] = v44;
  v80 = v19;
  v45 = [v19 bundleChannelIDs];
  v46 = [v45 set];

  v47 = sub_1C6D79960();
  v48 = sub_1C6C03FB4(v47);

  v49 = MEMORY[0x1E69E7CD0];
  if (v48)
  {
    v49 = v48;
  }

  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_bundled) = v49;
  v50 = [v17 purchaseController];
  if (!v50)
  {
    goto LABEL_38;
  }

  v51 = v50;
  v52 = [v50 purchasedTagIDs];

  v53 = sub_1C6D79960();
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_purchased) = v53;
  v54 = [v17 readingHistory];
  v55 = [v54 allReadArticleIDs];

  v56 = sub_1C6D79960();
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_read) = v56;
  v57 = [v17 readingHistory];
  v58 = [v57 sortedListenedArticleIDs];

  v59 = sub_1C6D79780();
  v60 = sub_1C6B1E610(v59);

  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_listened) = v60;
  v61 = [v17 readingHistory];
  v62 = [v61 allSeenArticleIDs];

  v63 = sub_1C6D79960();
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_seen) = v63;
  v64 = [a2 mostFrequentLocation];
  if (v64)
  {
    v65 = v64;
    [v64 coordinate];
    [v65 coordinate];
    sub_1C6D770B0();

    v66 = sub_1C6D770E0();
    (*(*(v66 - 8) + 56))(v15, 0, 1, v66);
  }

  else
  {
    v67 = sub_1C6D770E0();
    (*(*(v67 - 8) + 56))(v15, 1, 1, v67);
  }

  v69 = v82;
  v68 = v83;
  sub_1C6C052BC(v15, v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_location);
  v70 = [v17 subscriptionController];
  if (!v70)
  {
    goto LABEL_39;
  }

  v71 = v70;
  v72 = [v70 newlySubscribedTagIDsInDateRange_];

  if (v72)
  {
    v73 = sub_1C6D79780();
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v74 = sub_1C6B1E610(v73);

  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_newlySubscribed) = v74;
  v75 = v80;
  v76 = [v80 unprotectedSubscriptionState];

  swift_unknownObjectRelease();
  v77 = MEMORY[0x1E69E32A8];
  v78 = MEMORY[0x1E69E32B0];
  if (v76)
  {
    v78 = MEMORY[0x1E69E32A0];
  }

  if (v76 != 1)
  {
    v77 = v78;
  }

  v79 = v81;
  (*(v8 + 104))(v68, *v77, v81);
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_subscriptionState, v68, v79);
}

uint64_t sub_1C6C90F9C()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_subscriptionState;
  v2 = sub_1C6D76330();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C6C91478(v0 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_location);

  return v0;
}

uint64_t sub_1C6C910AC()
{
  sub_1C6C90F9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppUserContext(uint64_t a1)
{
  result = qword_1EDCE7710;
  if (!qword_1EDCE7710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6C91158(uint64_t a1)
{
  sub_1C6D76330();
  if (v1 <= 0x3F)
  {
    sub_1C6C04D28(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C6C912A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_subscriptionState;
  v5 = sub_1C6D76330();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_1C6C913BC()
{
  result = qword_1EDCE7720;
  if (!qword_1EDCE7720)
  {
    type metadata accessor for AppUserContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7720);
  }

  return result;
}

uint64_t sub_1C6C91414(uint64_t a1, uint64_t a2)
{
  sub_1C6C04D28(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C91478(uint64_t a1)
{
  sub_1C6C04D28(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C914D4(unsigned __int8 a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C915D0(unsigned __int8 a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C916A0(uint64_t a1, unsigned __int8 a2)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9176C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1C6C9189C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007265;
  v3 = *a1;
  v4 = 0x696669746E656469;
  v5 = 0xE500000000000000;
  if (v3 == 1)
  {
    v5 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0x7370657473;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F69747265737361;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA0000000000736ELL;
  }

  v8 = 0x696669746E656469;
  if (*a2 != 1)
  {
    v8 = 0x7370657473;
    v2 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F69747265737361;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xEA0000000000736ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6C91994()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C91A38(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C91AC8(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

unint64_t sub_1C6C91B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6CAA200(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C6C91B98(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  v3 = 0xE500000000000000;
  if (*v1 == 1)
  {
    v3 = 0xEA00000000007265;
  }

  else
  {
    v2 = 0x7370657473;
  }

  if (*v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x6F69747265737361;
  }

  if (*v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xEA0000000000736ELL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_1C6C91BF8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x7370657473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69747265737361;
  }
}

unint64_t sub_1C6C91C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6CAA200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6C91C7C(uint64_t a1)
{
  v2 = sub_1C6C91FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C91CB8(uint64_t a1)
{
  v2 = sub_1C6C91FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.init(assertions:identifier:steps:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t PersonalizationScript.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8720, sub_1C6C91FBC, &type metadata for PersonalizationScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C91FBC();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v6;
    v11 = v20;
    sub_1C6B6052C(0, &qword_1EC1D8730, &type metadata for PersonalizationScript.Assertion);
    LOBYTE(v22) = 0;
    sub_1C6C92010();
    sub_1C6D79F90();
    v12 = v23;
    LOBYTE(v22) = 1;
    v13 = sub_1C6D79FA0();
    v15 = v14;
    v19 = v13;
    sub_1C6B6052C(0, &qword_1EC1D8748, &type metadata for PersonalizationScript.Step);
    v21 = 2;
    sub_1C6C920EC();
    sub_1C6D79FF0();
    (*(v10 + 8))(v9, v5);
    v17 = v22;
    v18 = v19;
    *v11 = v12;
    v11[1] = v18;
    v11[2] = v15;
    v11[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6C91FBC()
{
  result = qword_1EC1D8728;
  if (!qword_1EC1D8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8728);
  }

  return result;
}

unint64_t sub_1C6C92010()
{
  result = qword_1EC1D8738;
  if (!qword_1EC1D8738)
  {
    sub_1C6B6052C(255, &qword_1EC1D8730, &type metadata for PersonalizationScript.Assertion);
    sub_1C6C92098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8738);
  }

  return result;
}

unint64_t sub_1C6C92098()
{
  result = qword_1EC1D8740;
  if (!qword_1EC1D8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8740);
  }

  return result;
}

unint64_t sub_1C6C920EC()
{
  result = qword_1EC1D8750;
  if (!qword_1EC1D8750)
  {
    sub_1C6B6052C(255, &qword_1EC1D8748, &type metadata for PersonalizationScript.Step);
    sub_1C6C92174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8750);
  }

  return result;
}

unint64_t sub_1C6C92174()
{
  result = qword_1EC1D8758;
  if (!qword_1EC1D8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8758);
  }

  return result;
}

uint64_t PersonalizationScript.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8760, sub_1C6C91FBC, &type metadata for PersonalizationScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v17 = v1[2];
  v18 = v9;
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C91FBC();

  sub_1C6D7A300();
  v21 = v10;
  v20 = 0;
  sub_1C6B6052C(0, &qword_1EC1D8730, &type metadata for PersonalizationScript.Assertion);
  sub_1C6C92414();
  v12 = v19;
  sub_1C6D7A030();
  if (v12)
  {
  }

  else
  {
    v13 = v16;

    LOBYTE(v21) = 1;
    sub_1C6D7A040();
    v21 = v13;
    v20 = 2;
    sub_1C6B6052C(0, &qword_1EC1D8748, &type metadata for PersonalizationScript.Step);
    sub_1C6C924F0();
    sub_1C6D7A090();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C6C92414()
{
  result = qword_1EC1D8768;
  if (!qword_1EC1D8768)
  {
    sub_1C6B6052C(255, &qword_1EC1D8730, &type metadata for PersonalizationScript.Assertion);
    sub_1C6C9249C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8768);
  }

  return result;
}

unint64_t sub_1C6C9249C()
{
  result = qword_1EC1D8770;
  if (!qword_1EC1D8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8770);
  }

  return result;
}

unint64_t sub_1C6C924F0()
{
  result = qword_1EC1D8778;
  if (!qword_1EC1D8778)
  {
    sub_1C6B6052C(255, &qword_1EC1D8748, &type metadata for PersonalizationScript.Step);
    sub_1C6C92578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8778);
  }

  return result;
}

unint64_t sub_1C6C92578()
{
  result = qword_1EC1D8780;
  if (!qword_1EC1D8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8780);
  }

  return result;
}

uint64_t PersonalizationScript.Aggregate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B16F28(a1, v9);
  PersonalizationScript.Tag.init(from:)(v9, v10);
  if (v2)
  {

    sub_1C6B16F28(a1, v9);
    sub_1C6CA5070();
    sub_1C6CA50C4();
    sub_1C6D79740();
    v5 = 0;
    v6 = 0;
    v7 = 0x80;
  }

  else
  {
    v5 = v10[0];
    v6 = v10[1];
    v7 = v11;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t PersonalizationScript.Tag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D87A0, sub_1C6CA516C, &type metadata for PersonalizationScript.Tag.TagID.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17[-1] - v8;
  sub_1C6B16F28(a1, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1C6CA516C();
  sub_1C6D7A2D0();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_1C6B16F28(a1, v17);
    sub_1C6CA51C0();
    sub_1C6CA5214();
    sub_1C6D79740();
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v11 = 0;
    v12 = v18;
    v13 = 1;
  }

  else
  {
    v12 = sub_1C6D79FA0();
    v11 = v14;
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v6 + 8))(v9, v5);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = 0;
  }

  v15 = v16;
  *v16 = v12;
  v15[1] = v11;
  *(v15 + 16) = v13;
  return result;
}

uint64_t PersonalizationScript.Aggregate.Baseline.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t PersonalizationScript.Assertion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B16F28(a1, v19);
  PersonalizationScript.Assertion.NumericAssertion.init(from:)(v19, &v20);
  if (v2)
  {

    sub_1C6B16F28(a1, v19);
    PersonalizationScript.Assertion.ExistenceAssertion.init(from:)(v19, &v20);
    v8 = 0;
    v9 = 0;
    v17 = v22;
    v18 = v20;
    v33 = v23;
    v11 = 256;
    if (!BYTE1(v21))
    {
      v11 = 0;
    }

    v7 = v11 | v21;
    v10 = 64;
  }

  else
  {
    v7 = v21;
    v17 = v22;
    v18 = v20;
    v33 = v23;
    v15 = v26;
    v16 = v24;
    v14 = v27;
    v3 = v30;
    v13 = v29;
    v8 = v25 & 0x83;
    v9 = v28 & 0x83;
    v10 = v32 & 0x83;
    v4 = v31;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v18;
  *(a2 + 16) = v7;
  *(a2 + 24) = v17;
  *(a2 + 40) = v33;
  *(a2 + 48) = v16;
  *(a2 + 56) = v8;
  *(a2 + 64) = v15;
  *(a2 + 72) = v14;
  *(a2 + 80) = v9;
  *(a2 + 88) = v13;
  *(a2 + 96) = v3;
  *(a2 + 104) = v4;
  *(a2 + 112) = v10;
  return result;
}

uint64_t PersonalizationScript.Assertion.NumericAssertion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D87F0, sub_1C6CA5460, &type metadata for PersonalizationScript.Assertion.NumericAssertion.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5460();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v6;
    v11 = v27;
    LOBYTE(v32) = 0;
    sub_1C6CA54B4();
    v12 = v5;
    sub_1C6D79FF0();
    v13 = v41;
    LOBYTE(v28) = 1;
    sub_1C6CA5508();
    sub_1C6D79FF0();
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v39 = v38;
    v40 = 2;
    sub_1C6D79FF0();
    (*(v10 + 8))(v9, v12);
    v15 = v31;
    *v11 = v13;
    v17 = v22;
    v16 = v23;
    *(v11 + 8) = v21;
    *(v11 + 16) = v17;
    *(v11 + 24) = v16;
    v18 = v25;
    *(v11 + 32) = v24;
    *(v11 + 40) = v18;
    *(v11 + 48) = v26;
    *(v11 + 56) = v39;
    v19 = v29;
    *(v11 + 64) = v28;
    *(v11 + 80) = v19;
    *(v11 + 96) = v30;
    *(v11 + 112) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8810, sub_1C6CA5580, &type metadata for PersonalizationScript.Assertion.ExistenceAssertion.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5580();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v6;
    LOBYTE(v24) = 0;
    sub_1C6CA55D4();
    sub_1C6D79FF0();
    v11 = v26;
    v12 = v27;
    v13 = v28;
    LOBYTE(v24) = 1;
    HIDWORD(v20) = sub_1C6D79FB0();
    v21 = v11;
    v22 = v12;
    v29 = v13;
    v30 = 2;
    sub_1C6CA5628();
    sub_1C6D79F90();
    (*(v10 + 8))(v9, v5);
    v15 = v25;
    v16 = BYTE4(v20) & 1;
    v17 = v24;
    v18 = v23;
    v19 = v22;
    *v23 = v21;
    v18[1] = v19;
    *(v18 + 16) = v29;
    *(v18 + 17) = v16;
    *(v18 + 3) = v17;
    v18[5] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Assertion.encode(to:)(void *a1)
{
  v2 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if ((v2 & 0x40) != 0)
  {
    sub_1C6CA567C();
  }

  else
  {
    sub_1C6CA56D0();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void PersonalizationScript.Assertion.NumericAssertion.value1.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 56);
  *(a1 + 48) = v8;
  sub_1C6CA5724(v2, v3, v4, v5, v6, v7, v8, sub_1C6CAA560, sub_1C6CA5798);
}

void PersonalizationScript.Assertion.NumericAssertion.value2.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 112);
  *(a1 + 48) = v8;
  sub_1C6CA5724(v2, v3, v4, v5, v6, v7, v8, sub_1C6CAA560, sub_1C6CA5798);
}

uint64_t sub_1C6C93628(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x3165756C6176;
  if (v2 != 1)
  {
    v3 = 0x3265756C6176;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 28783;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v6 = 0x3165756C6176;
  if (*a2 != 1)
  {
    v6 = 0x3265756C6176;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 28783;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C93714()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C937A4(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C93820(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

unint64_t sub_1C6C938AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6CAA24C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C6C938DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x3165756C6176;
  if (v2 != 1)
  {
    v4 = 0x3265756C6176;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 28783;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1C6C93928()
{
  v1 = 0x3165756C6176;
  if (*v0 != 1)
  {
    v1 = 0x3265756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28783;
  }
}

unint64_t sub_1C6C93970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6CAA24C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6C93998(uint64_t a1)
{
  v2 = sub_1C6CA5460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C939D4(uint64_t a1)
{
  v2 = sub_1C6CA5460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.Assertion.NumericAssertion.init(op:value1:value2:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 48);
  v5 = *(a3 + 48);
  *a4 = *a1;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = *(a2 + 32);
  *(a4 + 56) = v4;
  v7 = *(a3 + 16);
  *(a4 + 64) = *a3;
  *(a4 + 80) = v7;
  result = *(a3 + 32);
  *(a4 + 96) = result;
  *(a4 + 112) = v5;
  return result;
}

uint64_t PersonalizationScript.Assertion.NumericAssertion.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8840, sub_1C6CA5460, &type metadata for PersonalizationScript.Assertion.NumericAssertion.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v22 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v33 = *(v1 + 2);
  v34 = v10;
  v11 = *(v1 + 3);
  v31 = *(v1 + 4);
  v32 = v11;
  v12 = *(v1 + 5);
  v29 = *(v1 + 6);
  v30 = v12;
  v43 = v1[56];
  v13 = *(v1 + 8);
  v27 = *(v1 + 9);
  v28 = v13;
  v14 = *(v1 + 10);
  v25 = *(v1 + 11);
  v26 = v14;
  v15 = *(v1 + 12);
  v23 = *(v1 + 13);
  v24 = v15;
  HIDWORD(v22) = v1[112];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5460();
  sub_1C6D7A300();
  LOBYTE(v36) = v9;
  v44 = 0;
  sub_1C6CA57BC();
  v16 = v8;
  v17 = v35;
  sub_1C6D7A090();
  if (v17)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v20 = v26;
  v19 = v27;
  v21 = v28;
  v36 = v34;
  v37 = v33;
  v38 = v32;
  v39 = v31;
  v40 = v30;
  v41 = v29;
  v42 = v43;
  v44 = 1;
  sub_1C6CA5724(v34, v33, v32, v31, v30, v29, v43, sub_1C6CAA560, sub_1C6CA5798);
  sub_1C6CA5810();
  sub_1C6D7A090();
  sub_1C6CA5724(v36, v37, v38, v39, v40, v41, v42, sub_1C6CAA564, sub_1C6CA555C);
  v36 = v21;
  v37 = v19;
  v38 = v20;
  v39 = v25;
  v40 = v24;
  v41 = v23;
  v42 = BYTE4(v22);
  v44 = 2;
  sub_1C6CA5724(v21, v19, v20, v25, v24, v23, SBYTE4(v22), sub_1C6CAA560, sub_1C6CA5798);
  sub_1C6D7A090();
  sub_1C6CA5724(v36, v37, v38, v39, v40, v41, v42, sub_1C6CAA564, sub_1C6CA555C);
  return (*(v5 + 8))(v16, v4);
}

BOOL static PersonalizationScript.NumericValue.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 48);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return *&v4 == *&v6;
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v9 = *(a1 + 24);
  v10 = *(a1 + 5);
  v11 = *(a2 + 2);
  v12 = *(a2 + 24);
  v13 = *(a2 + 5);
  v14 = *(a1 + 2);
  v20 = v4;
  v21 = v14;
  v22 = v9;
  v23 = v10;
  v24 = v5 & 0x7F;
  v15 = v6;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v7 & 0x7F;
  return _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v20, &v15) & 1;
}

uint64_t PersonalizationScript.Assertion.NumericAssertion.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v12 = *(v1 + 80);
  v13 = *(v1 + 88);
  v7 = *(v1 + 112);
  sub_1C6D79610();

  if (v5 < 0)
  {
    MEMORY[0x1CCA56740](1);
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      PersonalizationScript.Tag.hash(into:)(a1);
    }

    if (v3 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6D7A280();
    }

    else
    {
      sub_1C6D7A280();
      if ((v3 & 0x8000000000000000) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();

        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        sub_1C6D79610();
      }
    }

    sub_1C6D79610();

    if ((v7 & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1CCA56770](v9);
    if ((v7 & 0x80) == 0)
    {
LABEL_6:
      MEMORY[0x1CCA56740](0);
      if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0;
      }

      return MEMORY[0x1CCA56770](v10);
    }
  }

  MEMORY[0x1CCA56740](1);
  if ((v12 & 0x80) != 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(a1);
  }

  if (v13 >> 1 == 0xFFFFFFFF)
  {
    sub_1C6D7A280();
  }

  else
  {
    sub_1C6D7A280();
    if ((v13 & 0x8000000000000000) != 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();

      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      sub_1C6D79610();
    }
  }

  sub_1C6D79610();
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.aggregate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C6B35FD4(v2, v3, v4);
}

unint64_t PersonalizationScript.Assertion.ExistenceAssertion.moment.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1C6CA5798(v2, v3, v4);
}

uint64_t sub_1C6C94420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x737473697865;
  if (v2 != 1)
  {
    v3 = 0x746E656D6F6DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7461676572676761;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  v6 = 0x737473697865;
  if (*a2 != 1)
  {
    v6 = 0x746E656D6F6DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7461676572676761;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C94514()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C945B4(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C94640(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

unint64_t sub_1C6C946DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6CAA298(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C6C9470C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x737473697865;
  if (v2 != 1)
  {
    v4 = 0x746E656D6F6DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7461676572676761;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1C6C94768()
{
  v1 = 0x737473697865;
  if (*v0 != 1)
  {
    v1 = 0x746E656D6F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461676572676761;
  }
}

unint64_t sub_1C6C947C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6CAA298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6C947E8(uint64_t a1)
{
  v2 = sub_1C6CA5580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C94824(uint64_t a1)
{
  v2 = sub_1C6CA5580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.Assertion.ExistenceAssertion.init(aggregate:exists:moment:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a3[1].n128_u64[0];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 17) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  *(a4 + 40) = v5;
  return result;
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8858, sub_1C6CA5580, &type metadata for PersonalizationScript.Assertion.ExistenceAssertion.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v26 = *(v1 + 17);
  v10 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = v10;
  v18 = *(v1 + 40);
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B35FD4(v8, v9, v11);
  sub_1C6CA5580();
  sub_1C6D7A300();
  v23 = v8;
  v24 = v9;
  LOBYTE(v25) = v11;
  v27 = 0;
  sub_1C6CA5864();
  v12 = v22;
  sub_1C6D7A090();
  if (v12)
  {
    sub_1C6B360B4(v23, v24, v25);
    return (*(v21 + 8))(v7, v4);
  }

  else
  {
    v15 = v18;
    v14 = v19;
    v17 = v20;
    v16 = v21;
    sub_1C6B360B4(v23, v24, v25);
    LOBYTE(v23) = 1;
    sub_1C6D7A050();
    v23 = v17;
    v24 = v14;
    v25 = v15;
    v27 = 2;
    sub_1C6CA5798(v17, v14, v15);
    sub_1C6CA58B8();
    sub_1C6D7A030();
    sub_1C6CA555C(v23, v24, v25);
    return (*(v16 + 8))(v7, v4);
  }
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (*(v1 + 16) < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(a1);
  }

  sub_1C6D7A280();
  if (v3 >> 1 == 0xFFFFFFFF)
  {
    return sub_1C6D7A280();
  }

  sub_1C6D7A280();
  if ((v3 & 0x8000000000000000) != 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();

    return sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    sub_1C6D79610();
  }
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 5);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 24);
  v10 = v3;
  sub_1C6D7A260();
  PersonalizationScript.Assertion.ExistenceAssertion.hash(into:)(v5);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C94D7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 5);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 24);
  v10 = v3;
  sub_1C6D7A260();
  PersonalizationScript.Assertion.ExistenceAssertion.hash(into:)(v5);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C94DEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = *(v1 + 5);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = *(v1 + 24);
  v11 = v4;
  sub_1C6D7A260();
  PersonalizationScript.Assertion.ExistenceAssertion.hash(into:)(v6);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Assertion.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 112);
  if ((v6 & 0x40) == 0)
  {
    v12 = *(v1 + 80);
    v13 = *(v1 + 88);
    v14 = *(v1 + 64);
    v7 = *(v1 + 56);
    MEMORY[0x1CCA56740](0);
    sub_1C6D79610();

    if (v7 < 0)
    {
      MEMORY[0x1CCA56740](1);
      if ((v4 & 0x80) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        PersonalizationScript.Tag.hash(into:)(a1);
      }

      if (v5 >> 1 == 0xFFFFFFFF)
      {
        sub_1C6D7A280();
      }

      else
      {
        sub_1C6D7A280();
        if ((v5 & 0x8000000000000000) != 0)
        {
          MEMORY[0x1CCA56740](1);
          sub_1C6D79610();

          sub_1C6D79610();
        }

        else
        {
          MEMORY[0x1CCA56740](0);
          sub_1C6D79610();
        }
      }

      sub_1C6D79610();

      if ((v6 & 0x80) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x1CCA56770](v8);
      if ((v6 & 0x80) == 0)
      {
LABEL_7:
        MEMORY[0x1CCA56740](0);
        if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = v14;
        }

        else
        {
          v9 = 0;
        }

        return MEMORY[0x1CCA56770](v9);
      }
    }

    MEMORY[0x1CCA56740](1);
    if ((v12 & 0x80) != 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      PersonalizationScript.Tag.hash(into:)(a1);
    }

    if (v13 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6D7A280();
    }

    else
    {
      sub_1C6D7A280();
      if ((v13 & 0x8000000000000000) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();

        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        sub_1C6D79610();
      }
    }

    goto LABEL_38;
  }

  v11 = *(v1 + 16);
  MEMORY[0x1CCA56740](1);
  if (v11 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(a1);
  }

  sub_1C6D7A280();
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    return sub_1C6D7A280();
  }

  sub_1C6D7A280();
  if ((v4 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1CCA56740](0);
LABEL_38:
    sub_1C6D79610();
  }

  MEMORY[0x1CCA56740](1);
  sub_1C6D79610();

  return sub_1C6D79610();
}

uint64_t sub_1C6C95510(uint64_t (*a1)(void *))
{
  sub_1C6D7A260();
  a1(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C955A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1C6D7A260();
  a3(v5);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1C6D7A260();
  a4(v6);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C956C8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6C95720(uint64_t a1)
{
  v2 = sub_1C6CA590C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9575C(uint64_t a1)
{
  v2 = sub_1C6CA590C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.BrowseInteraction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8870, sub_1C6CA590C, &type metadata for PersonalizationScript.BrowseInteraction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA590C();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v13;
    sub_1C6B6052C(0, &qword_1EC1D8880, &type metadata for PersonalizationScript.BrowseRequirement);
    sub_1C6CA5960();
    sub_1C6D79FF0();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.BrowseInteraction.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8898, sub_1C6CA590C, &type metadata for PersonalizationScript.BrowseInteraction.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA590C();

  sub_1C6D7A300();
  v11[3] = v9;
  sub_1C6B6052C(0, &qword_1EC1D8880, &type metadata for PersonalizationScript.BrowseRequirement);
  sub_1C6CA5A3C();
  sub_1C6D7A090();

  return (*(v5 + 8))(v8, v4);
}

uint64_t PersonalizationScript.BrowseInteraction.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = MEMORY[0x1CCA56740](v4);
  if (v4)
  {
    v6 = v3 + 48;
    do
    {
      v8 = *(v6 - 16);
      v7 = *(v6 - 8);
      v6 += 24;

      sub_1C6CA2980(a1, v8);
      MEMORY[0x1CCA56740](v7);
      sub_1C6D79610();

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t PersonalizationScript.BrowseInteraction.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6CA2840(v3, v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95CF8()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6CA2840(v3, v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95D48(uint64_t a1)
{
  v2 = *v1;
  sub_1C6D7A260();
  sub_1C6CA2840(v4, v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95DA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746E756F63;
  if (v2 != 1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA0000000000736ELL;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746E756F63;
  if (*a2 != 1)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA0000000000736ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6C95E94()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95F30(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C95FB8(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

unint64_t sub_1C6C96050@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6CAA2E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C6C96080(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000736ELL;
  v4 = 0xE500000000000000;
  v5 = 0x746E756F63;
  if (v2 != 1)
  {
    v5 = 1701869940;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F697469646E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C6C960D8()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

unint64_t sub_1C6C9612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6CAA2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6C96154(uint64_t a1)
{
  v2 = sub_1C6CA5B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C96190(uint64_t a1)
{
  v2 = sub_1C6CA5B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

NewsPersonalization::PersonalizationScript::BrowseRequirement __swiftcall PersonalizationScript.BrowseRequirement.init(conditions:count:type:)(Swift::OpaquePointer conditions, Swift::Int count, NewsPersonalization::PersonalizationScript::BrowseRequirement::RequirementType type)
{
  v4 = *type;
  *v3 = conditions;
  *(v3 + 8) = count;
  *(v3 + 16) = v4;
  result.count = count;
  result.conditions = conditions;
  result.type = type;
  return result;
}

uint64_t PersonalizationScript.BrowseRequirement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D88B0, sub_1C6CA5B18, &type metadata for PersonalizationScript.BrowseRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5B18();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    sub_1C6B6052C(0, &qword_1EC1D88C0, &type metadata for PersonalizationScript.HeadlineCondition);
    v21 = 0;
    sub_1C6CA5B6C();
    sub_1C6D79FF0();
    v12 = v22;
    v20 = 1;
    v13 = v10;
    v14 = sub_1C6D79FE0();
    v18 = 2;
    sub_1C6CA5C48();
    sub_1C6D79FF0();
    (*(v13 + 8))(v9, v5);
    v16 = v19;
    *v11 = v12;
    *(v11 + 8) = v14;
    *(v11 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.BrowseRequirement.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D88E0, sub_1C6CA5B18, &type metadata for PersonalizationScript.BrowseRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  HIDWORD(v13) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5B18();

  sub_1C6D7A300();
  v20 = v9;
  v19 = 0;
  sub_1C6B6052C(0, &qword_1EC1D88C0, &type metadata for PersonalizationScript.HeadlineCondition);
  sub_1C6CA5C9C();
  v10 = v15;
  sub_1C6D7A090();
  if (v10)
  {
  }

  else
  {
    v11 = BYTE4(v13);

    v18 = 1;
    sub_1C6D7A080();
    v17 = v11;
    v16 = 2;
    sub_1C6CA5D78();
    sub_1C6D7A090();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t static PersonalizationScript.BrowseRequirement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1C6B56EAC(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_1C6B62A9C(v3, v5);
}

NewsPersonalization::PersonalizationScript::BrowseRequirement::RequirementType_optional __swiftcall PersonalizationScript.BrowseRequirement.RequirementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.BrowseRequirement.RequirementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E6573657270;
  v3 = 0x6569724264616572;
  v4 = 0x676E6F4C64616572;
  if (v1 != 4)
  {
    v4 = 1702257011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701538156;
  if (v1 != 1)
  {
    v5 = 0x656B696C736964;
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

uint64_t sub_1C6C9681C(uint64_t a1)
{
  sub_1C6D79610();
}

void sub_1C6C96914(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E6573657270;
  v5 = 0xE900000000000066;
  v6 = 0x6569724264616572;
  v7 = 0xE800000000000000;
  v8 = 0x676E6F4C64616572;
  if (v2 != 4)
  {
    v8 = 1702257011;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701538156;
  if (v2 != 1)
  {
    v10 = 0x656B696C736964;
    v9 = 0xE700000000000000;
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

uint64_t PersonalizationScript.BrowseRequirement.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  sub_1C6CA2980(a1, *v1);
  MEMORY[0x1CCA56740](v2);
  sub_1C6D79610();
}

uint64_t PersonalizationScript.BrowseRequirement.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C6D7A260();
  sub_1C6CA2980(v4, v1);
  MEMORY[0x1CCA56740](v2);
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C96CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1C6B56EAC(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_1C6B62A9C(v3, v5);
}

uint64_t sub_1C6C96D4C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C6D7A260();
  sub_1C6CA2980(v5, v2);
  MEMORY[0x1CCA56740](v3);
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Destination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B16F28(a1, v9);
  PersonalizationScript.Tag.init(from:)(v9, v10);
  if (v2)
  {

    sub_1C6B16F28(a1, v9);
    sub_1C6CA5DCC();
    sub_1C6CA5E20();
    sub_1C6D79740();
    v5 = 0;
    v6 = 0;
    v7 = 0x80;
  }

  else
  {
    v5 = v10[0];
    v6 = v10[1];
    v7 = v11;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1C6C96FC4(void *a1, uint64_t (*a2)(void), ValueMetadata *a3)
{
  v5 = *(v3 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  if (v5 < 0)
  {
    a2();
  }

  else
  {
    sub_1C6CA53B8();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t PersonalizationScript.Destination.TodayFeed.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6C97270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 16) < 0)
  {
    MEMORY[0x1CCA56740](1);

    return sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0, a2, a3);
    return PersonalizationScript.Tag.hash(into:)(a1);
  }
}

uint64_t sub_1C6C97330(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_1C6D7A260();
  if (v3 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(v5);
  }

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  sub_1C6D7A260();
  if (v5 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(v7);
  }

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C974B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + 16) < 0)
  {
    MEMORY[0x1CCA56740](1, a2, a3);

    return sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0, a2, a3, a4, a5);
    return PersonalizationScript.Tag.hash(into:)(a1);
  }
}

uint64_t sub_1C6C97578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  sub_1C6D7A260();
  if (v6 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(v8);
  }

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9760C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656B696C736964;
  }

  else
  {
    v3 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v4 = 0xEA0000000000736ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x656B696C736964;
  }

  else
  {
    v5 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA0000000000736ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C976B8()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C97740(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C977B4(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C97844(uint64_t *a1@<X8>)
{
  v2 = 0x6F697469646E6F63;
  if (*v1)
  {
    v2 = 0x656B696C736964;
  }

  v3 = 0xEA0000000000736ELL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C97888()
{
  if (*v0)
  {
    return 0x656B696C736964;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_1C6C978D4(uint64_t a1)
{
  v2 = sub_1C6CA5F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C97910(uint64_t a1)
{
  v2 = sub_1C6CA5F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.HeadlineCondition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v4 = MEMORY[0x1E69E6F48];
  sub_1C6CA6FEC(0, &qword_1EC1D8938, sub_1C6CA5F70, &type metadata for PersonalizationScript.HeadlineCondition.PublishedBy.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v30 = &v21 - v7;
  sub_1C6CA6FEC(0, &qword_1EC1D8948, sub_1C6CA5FC4, &type metadata for PersonalizationScript.HeadlineCondition.ContainsTag.CodingKeys, v4);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - v12;
  sub_1C6B16F28(a1, v28);
  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1C6CA5FC4();
  sub_1C6D7A2D0();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1C6B16F28(a1, v28);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_1C6CA5F70();
    v14 = v30;
    sub_1C6D7A2D0();
    sub_1C6CA606C();
    v15 = v24;
    sub_1C6D79FF0();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v23 + 8))(v14, v15);
    v16 = v25;
    v17 = v26;
    LOBYTE(v15) = v27;
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v19 = v15 | 0x80;
  }

  else
  {
    sub_1C6CA606C();
    sub_1C6D79FF0();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v10 + 8))(v13, v9);
    v16 = v25;
    v17 = v26;
    v19 = v27;
    result = __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v20 = v22;
  *v22 = v16;
  v20[1] = v17;
  *(v20 + 16) = v19;
  return result;
}

uint64_t sub_1C6C97EA0@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  sub_1C6CA6FEC(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C6D7A2D0();
  if (!v6)
  {
    v14 = v19;
    v15 = v22;
    sub_1C6CA606C();
    sub_1C6D79FF0();
    (*(v14 + 8))(v13, v10);
    v16 = v21;
    *v15 = v20;
    *(v15 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.HeadlineCondition.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 < 0)
  {
    sub_1C6CA60C0();
  }

  else
  {
    sub_1C6CA6114();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1C6C98210@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6C98268(uint64_t a1)
{
  v2 = sub_1C6CA5FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C982A4(uint64_t a1)
{
  v2 = sub_1C6CA5FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.HeadlineCondition.ContainsTag.init(containsTag:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t _s19NewsPersonalization0B6ScriptV17HeadlineConditionO11ContainsTagV08containsG0AC0G0Ovg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C6B622DC(v2, v3, v4);
}

uint64_t sub_1C6C98440@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6C98498(uint64_t a1)
{
  v2 = sub_1C6CA5F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C984D4(uint64_t a1)
{
  v2 = sub_1C6CA5F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6C98560(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v18 = a5;
  sub_1C6CA6FEC(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v17 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - v9;
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1C6B622DC(v11, v12, v13);
  v18(v14);
  sub_1C6D7A300();
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v15 = v17;
  sub_1C6CA53B8();
  sub_1C6D7A090();
  sub_1C6B622F8(v19, v20, v21);
  return (*(v22 + 8))(v10, v15);
}

uint64_t _s19NewsPersonalization0B6ScriptV17HeadlineConditionO11ContainsTagV9hashValueSivg_0()
{
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)(v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C987B4(uint64_t a1)
{
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)(v2);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.HeadlineCondition.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1 < 0);
  PersonalizationScript.Tag.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C989A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v2 < 0);
  PersonalizationScript.Tag.hash(into:)(v4);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C98A28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C64616568;
  }

  else
  {
    v3 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v4 = 0xEA0000000000736ELL;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x656E696C64616568;
  }

  else
  {
    v5 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xEA0000000000736ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C98AD8()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C98B64(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C98BDC(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C98C70(uint64_t *a1@<X8>)
{
  v2 = 0x6F697469646E6F63;
  if (*v1)
  {
    v2 = 0x656E696C64616568;
  }

  v3 = 0xEA0000000000736ELL;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C98CB8()
{
  if (*v0)
  {
    return 0x656E696C64616568;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_1C6C98D08(uint64_t a1)
{
  v2 = sub_1C6CA6168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C98D44(uint64_t a1)
{
  v2 = sub_1C6CA6168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.HeadlinesValue.init(conditions:headlines:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C6C98DD8@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v21 = a6;
  sub_1C6CA6FEC(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v22 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1C6D7A2D0();
  if (!v6)
  {
    v14 = v10;
    v15 = v21;
    sub_1C6B6052C(0, &qword_1EC1D88C0, &type metadata for PersonalizationScript.HeadlineCondition);
    v24 = 0;
    sub_1C6CA5B6C();
    v16 = v22;
    sub_1C6D79F90();
    v17 = v25;
    v23 = 1;
    v18 = sub_1C6D79FE0();
    (*(v14 + 8))(v13, v16);
    *v15 = v17;
    v15[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6C9903C(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v17 = a5;
  sub_1C6CA6FEC(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  v13 = *v5;
  v16 = v5[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();

  sub_1C6D7A300();
  v21 = v13;
  v20 = 0;
  sub_1C6B6052C(0, &qword_1EC1D88C0, &type metadata for PersonalizationScript.HeadlineCondition);
  sub_1C6CA5C9C();
  v14 = v18;
  sub_1C6D7A030();

  if (!v14)
  {
    v19 = 1;
    sub_1C6D7A080();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t PersonalizationScript.Interaction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v4 = MEMORY[0x1E69E6F48];
  sub_1C6CA6FEC(0, &qword_1EC1D8870, sub_1C6CA590C, &type metadata for PersonalizationScript.BrowseInteraction.CodingKeys, MEMORY[0x1E69E6F48]);
  v19[1] = *(v5 - 8);
  v19[2] = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v19[3] = v19 - v7;
  sub_1C6CA6FEC(0, &qword_1EC1D89A0, sub_1C6CA61BC, &type metadata for PersonalizationScript.ScrollInteraction.CodingKeys, v4);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v19 - v12;
  sub_1C6B16F28(a1, v23);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1C6CA61BC();
  sub_1C6D7A2D0();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1C6B16F28(a1, v23);
    PersonalizationScript.LikeInteraction.init(from:)(v23, &v20);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = v20;
    v16 = v21;
    v17 = 32;
  }

  else
  {
    sub_1C6CA6264();
    sub_1C6D79FF0();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v10 + 8))(v13, v9);
    v15 = v20;
    v16 = v21;
    v17 = v22;
    result = __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v18 = v24;
  *v24 = v15;
  v18[1] = v16;
  *(v18 + 16) = v17;
  return result;
}

uint64_t PersonalizationScript.ScrollInteraction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D89A0, sub_1C6CA61BC, &type metadata for PersonalizationScript.ScrollInteraction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA61BC();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v15;
    sub_1C6CA6264();
    sub_1C6D79FF0();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *v10 = v13;
    *(v10 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.ReadInteraction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D89E0, sub_1C6CA6360, &type metadata for PersonalizationScript.ReadInteraction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6360();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    sub_1C6B6052C(0, &qword_1EC1D88C0, &type metadata for PersonalizationScript.HeadlineCondition);
    v19 = 0;
    sub_1C6CA5B6C();
    sub_1C6D79F90();
    v12 = v20;
    v18 = 1;
    sub_1C6D79FC0();
    v14 = v13;
    (*(v10 + 8))(v9, v5);
    *v11 = v12;
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Interaction.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  v3 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v3 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_1C6CA645C();
    }

    else if (v3 == 4)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_1C6CA6408();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_1C6CA63B4();
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_1C6CA6504();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_1C6CA64B0();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    sub_1C6CA6558();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

BOOL static PersonalizationScript.ScrollInteraction.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    return (v2 == v3) & ~v4;
  }

  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = a2[1];
    if (v2)
    {
      if (v3)
      {

        v7 = sub_1C6B56EAC(v2, v3);
        sub_1C6B360A8(v3, v6, 1);
        if (v7)
        {
          return v5 == v6;
        }
      }
    }

    else if (!v3)
    {
      return v5 == v6;
    }
  }

  return 0;
}

BOOL _s19NewsPersonalization0B6ScriptV14HeadlinesValueV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (*a1)
  {
    if (v4)
    {

      v6 = sub_1C6B56EAC(v2, v4);

      if (v6)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

BOOL static PersonalizationScript.ReadInteraction.== infix(_:_:)(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = a2[1];
  if (*a1)
  {
    if (v4 != 0.0)
    {

      v6 = sub_1C6B56EAC(v2, *&v4);

      if (v6)
      {
        return v3 == v5;
      }
    }
  }

  else if (v4 == 0.0)
  {
    return v3 == v5;
  }

  return 0;
}

uint64_t PersonalizationScript.Interaction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = v6 >> 5;
  if (v6 >> 5 <= 2)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        MEMORY[0x1CCA56740](2);
        if (!v5)
        {
          goto LABEL_14;
        }

LABEL_12:
        sub_1C6D7A280();
        sub_1C6CA2980(a1, v5);
LABEL_15:
        v8 = v4;
        return MEMORY[0x1CCA56740](v8);
      }
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      if ((v6 & 1) == 0)
      {
        MEMORY[0x1CCA56740](0);
        v8 = v5;
        return MEMORY[0x1CCA56740](v8);
      }
    }

    MEMORY[0x1CCA56740](1);
    if (v5)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_1C6D7A280();
    goto LABEL_15;
  }

  if (v7 == 3)
  {
    MEMORY[0x1CCA56740](3);
    if (v5)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v7 == 4)
  {
    MEMORY[0x1CCA56740](4);
    sub_1C6D7A280();
    if (v5)
    {
      sub_1C6CA2980(a1, v5);
    }

    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    return MEMORY[0x1CCA56770](v10);
  }

  else
  {
    MEMORY[0x1CCA56740](5);

    return sub_1C6CA2840(a1, v5);
  }
}

uint64_t PersonalizationScript.Interaction.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C6D7A260();
  PersonalizationScript.Interaction.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9A0D8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C6D7A260();
  PersonalizationScript.Interaction.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9A130(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1C6D7A260();
  PersonalizationScript.Interaction.hash(into:)(v4);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9A180(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701538156;
  }

  else
  {
    v3 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v4 = 0xEA0000000000736ELL;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701538156;
  }

  else
  {
    v5 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEA0000000000736ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C9A224()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9A2A4(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9A310(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9A398(uint64_t *a1@<X8>)
{
  v2 = 1701538156;
  if (!*v1)
  {
    v2 = 0x6F697469646E6F63;
  }

  v3 = 0xEA0000000000736ELL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C9A3D4()
{
  if (*v0)
  {
    return 1701538156;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_1C6C9A418(uint64_t a1)
{
  v2 = sub_1C6CA62B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9A454(uint64_t a1)
{
  v2 = sub_1C6CA62B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.Moment.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1C6B16F28(a1, v12);
  sub_1C6CA65AC();
  sub_1C6CA6600();
  sub_1C6D79740();
  if (v2)
  {

    sub_1C6B16F28(a1, v12);
    PersonalizationScript.Moment.TaskMoment.init(from:)(v12, v9);
    v5 = v10;
    v6 = v11;
    v7 = v9[0] | 0x8000000000000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v9[0];
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v7;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t PersonalizationScript.Moment.TaskMoment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8A40, sub_1C6CA66A8, &type metadata for PersonalizationScript.Moment.TaskMoment.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA66A8();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v17;
    v19 = 0;
    sub_1C6CA66FC();
    sub_1C6D79FF0();
    v11 = v20;
    v18 = 1;
    v13 = sub_1C6D79FA0();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
    *(v10 + 8) = v13;
    *(v10 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Moment.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 < 0)
  {
    sub_1C6CA6750();
  }

  else
  {
    sub_1C6CA67A4();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t PersonalizationScript.Moment.ScriptMoment.rawValue.getter()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1C6C9A96C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6581861;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6581861;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C9AA08()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9AA80(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9AAE4(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9AB64(uint64_t *a1@<X8>)
{
  v2 = 6581861;
  if (!*v1)
  {
    v2 = 0x7472617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PersonalizationScript.Moment.TaskMoment.taskID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1C6C9AC84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x44496B736174;
  }

  else
  {
    v3 = 0x6F6C6F6E6F726863;
  }

  if (v2)
  {
    v4 = 0xEA00000000007967;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x44496B736174;
  }

  else
  {
    v5 = 0x6F6C6F6E6F726863;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA00000000007967;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C9AD2C()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9ADB0(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9AE20(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9AEAC(uint64_t *a1@<X8>)
{
  v2 = 0x6F6C6F6E6F726863;
  if (*v1)
  {
    v2 = 0x44496B736174;
  }

  v3 = 0xEA00000000007967;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C9AEEC()
{
  if (*v0)
  {
    return 0x44496B736174;
  }

  else
  {
    return 0x6F6C6F6E6F726863;
  }
}

uint64_t sub_1C6C9AF34(uint64_t a1)
{
  v2 = sub_1C6CA66A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9AF70(uint64_t a1)
{
  v2 = sub_1C6CA66A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

NewsPersonalization::PersonalizationScript::Moment::TaskMoment __swiftcall PersonalizationScript.Moment.TaskMoment.init(chronology:taskID:)(NewsPersonalization::PersonalizationScript::Moment::TaskMoment::Chronology chronology, Swift::String taskID)
{
  *v2 = *chronology;
  *(v2 + 8) = taskID;
  result.taskID = taskID;
  result.chronology = chronology;
  return result;
}

uint64_t PersonalizationScript.Moment.TaskMoment.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8A68, sub_1C6CA66A8, &type metadata for PersonalizationScript.Moment.TaskMoment.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[1] = *(v1 + 2);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA66A8();
  sub_1C6D7A300();
  v16 = v9;
  v15 = 0;
  sub_1C6CA67F8();
  v11 = v13[3];
  sub_1C6D7A090();
  if (!v11)
  {
    v14 = 1;
    sub_1C6D7A040();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C6C9B174@<X0>(char *a4@<X8>)
{
  v5 = sub_1C6D79F50();

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

uint64_t PersonalizationScript.Moment.TaskMoment.Chronology.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746661;
  }

  else
  {
    return 0x65726F666562;
  }
}

uint64_t sub_1C6C9B208(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265746661;
  }

  else
  {
    v3 = 0x65726F666562;
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
    v5 = 0x7265746661;
  }

  else
  {
    v5 = 0x65726F666562;
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
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C9B2A8()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9B324(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9B38C(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9B410(uint64_t *a1@<X8>)
{
  v2 = 0x65726F666562;
  if (*v1)
  {
    v2 = 0x7265746661;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PersonalizationScript.Moment.TaskMoment.hash(into:)(uint64_t a1)
{
  sub_1C6D79610();

  return sub_1C6D79610();
}

uint64_t PersonalizationScript.Moment.TaskMoment.hashValue.getter()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t _s19NewsPersonalization0B6ScriptV6MomentO04TaskD0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1 == 0;
  if (*a1)
  {
    v7 = 0x7265746661;
  }

  else
  {
    v7 = 0x65726F666562;
  }

  if (v6)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = 0x7265746661;
  }

  else
  {
    v9 = 0x65726F666562;
  }

  if (*a2)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = sub_1C6D7A130();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v5)
  {
    return 1;
  }

LABEL_24:

  return sub_1C6D7A130();
}

uint64_t sub_1C6C9B768()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9B800(uint64_t a1)
{
  sub_1C6D79610();

  return sub_1C6D79610();
}

uint64_t sub_1C6C9B888(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Moment.hash(into:)(uint64_t a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();

    return sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    sub_1C6D79610();
  }
}

uint64_t PersonalizationScript.Moment.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  if (v1 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();

    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    sub_1C6D79610();
  }

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9BB4C()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_1C6D7A260();
  PersonalizationScript.Moment.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9BBA4(uint64_t a1)
{
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  sub_1C6D7A260();
  PersonalizationScript.Moment.hash(into:)(v4);
  return sub_1C6D7A2B0();
}

NewsPersonalization::PersonalizationScript::NumericOpertator_optional __swiftcall PersonalizationScript.NumericOpertator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.NumericOpertator.rawValue.getter()
{
  v1 = *v0;
  v2 = 29799;
  v3 = 29804;
  v4 = 6648940;
  if (v1 != 4)
  {
    v4 = 25966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6648935;
  if (v1 != 1)
  {
    v5 = 7106917;
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

uint64_t sub_1C6C9BCE8(uint64_t a1)
{
  sub_1C6D79610();
}

void sub_1C6C9BDB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 29799;
  v5 = 0xE200000000000000;
  v6 = 29804;
  v7 = 6648940;
  v8 = 0xE300000000000000;
  if (v2 != 4)
  {
    v7 = 25966;
    v8 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 6648935;
  if (v2 != 1)
  {
    v9 = 7106917;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t PersonalizationScript.NumericValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B16F28(a1, v15);
  sub_1C6D79900();
  if (v2)
  {

    sub_1C6B16F28(a1, v14);
    PersonalizationScript.NumericValue.AggregateValue.init(from:)(v14, v15);
    v6 = v15[0];
    v7 = v15[1];
    v8 = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v20 | 0x80;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  return result;
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8A80, sub_1C6CA68A0, &type metadata for PersonalizationScript.NumericValue.AggregateValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA68A0();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v6;
    v11 = v23;
    LOBYTE(v24) = 0;
    sub_1C6CA55D4();
    v12 = v5;
    sub_1C6D79FF0();
    v14 = v27;
    v13 = v28;
    v30 = v29;
    v32 = 1;
    sub_1C6CA5628();
    sub_1C6D79F90();
    v20 = v24;
    v21 = v25;
    v22 = v13;
    v15 = v26;
    v31 = 2;
    sub_1C6CA68F4();
    sub_1C6D79FF0();
    (*(v10 + 8))(v9, v12);
    v17 = v32;
    v18 = v22;
    *v11 = v14;
    *(v11 + 8) = v18;
    *(v11 + 16) = v30;
    v19 = v21;
    *(v11 + 24) = v20;
    *(v11 + 32) = v19;
    *(v11 + 40) = v15;
    *(v11 + 48) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.NumericValue.encode(to:)(void *a1)
{
  v2 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 < 0)
  {
    sub_1C6CA6948();
    sub_1C6D7A110();
  }

  else
  {
    sub_1C6D7A100();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.aggregate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C6B35FD4(v2, v3, v4);
}

unint64_t PersonalizationScript.NumericValue.AggregateValue.moment.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1C6CA5798(v2, v3, v4);
}

uint64_t sub_1C6C9C438(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746E656D6F6DLL;
  if (v2 != 1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7461676572676761;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746E656D6F6DLL;
  if (*a2 != 1)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7461676572676761;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6C9C52C()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9C5CC(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9C658(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

unint64_t sub_1C6C9C6F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6CAA330(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C6C9C724(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE600000000000000;
  v5 = 0x746E656D6F6DLL;
  if (v2 != 1)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461676572676761;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C6C9C780()
{
  v1 = 0x746E656D6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461676572676761;
  }
}

unint64_t sub_1C6C9C7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6CAA330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6C9C800(uint64_t a1)
{
  v2 = sub_1C6CA68A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9C83C(uint64_t a1)
{
  v2 = sub_1C6CA68A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.NumericValue.AggregateValue.init(aggregate:moment:value:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a2[1].n128_u64[0];
  v6 = *a3;
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *a2;
  *(a4 + 24) = *a2;
  *(a4 + 40) = v5;
  *(a4 + 48) = v6;
  return result;
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AA0, sub_1C6CA68A0, &type metadata for PersonalizationScript.NumericValue.AggregateValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = v10;
  v17 = *(v1 + 40);
  v25 = *(v1 + 48);
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B35FD4(v8, v9, v11);
  sub_1C6CA68A0();
  sub_1C6D7A300();
  v22 = v8;
  v23 = v9;
  LOBYTE(v24) = v11;
  v12 = v4;
  v26 = 0;
  sub_1C6CA5864();
  v13 = v21;
  sub_1C6D7A090();
  if (v13)
  {
    sub_1C6B360B4(v22, v23, v24);
    return (*(v20 + 8))(v7, v4);
  }

  else
  {
    v15 = v25;
    v16 = v20;
    sub_1C6B360B4(v22, v23, v24);
    v22 = v19;
    v23 = v18;
    v24 = v17;
    v26 = 1;
    sub_1C6CA5798(v19, v18, v17);
    sub_1C6CA58B8();
    sub_1C6D7A030();
    sub_1C6CA555C(v22, v23, v24);
    LOBYTE(v22) = v15;
    v26 = 2;
    sub_1C6CA699C();
    sub_1C6D7A090();
    return (*(v16 + 8))(v7, v12);
  }
}

NewsPersonalization::PersonalizationScript::NumericValue::AggregateValue::ValueType_optional __swiftcall PersonalizationScript.NumericValue.AggregateValue.ValueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.ValueType.rawValue.getter()
{
  v1 = 7500899;
  v2 = 0x736B63696C63;
  if (*v0 != 2)
  {
    v2 = 0x6973736572706D69;
  }

  if (*v0)
  {
    v1 = 0x756F43746E657665;
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

uint64_t sub_1C6C9CC1C()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9CCE0(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9CD90(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9CE5C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7500899;
  v4 = 0xE600000000000000;
  v5 = 0x736B63696C63;
  if (*v1 != 2)
  {
    v5 = 0x6973736572706D69;
    v4 = 0xEB00000000736E6FLL;
  }

  if (*v1)
  {
    v3 = 0x756F43746E657665;
    v2 = 0xEA0000000000746ELL;
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

uint64_t PersonalizationScript.NumericValue.AggregateValue.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (*(v1 + 16) < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(a1);
  }

  if (v3 >> 1 == 0xFFFFFFFF)
  {
    sub_1C6D7A280();
  }

  else
  {
    sub_1C6D7A280();
    if ((v3 & 0x8000000000000000) != 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();

      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      sub_1C6D79610();
    }
  }

  sub_1C6D79610();
}

uint64_t PersonalizationScript.NumericValue.AggregateValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 24);
  v9 = v2;
  v10 = v3;
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.AggregateValue.hash(into:)(v5);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 24);
  v9 = v2;
  v10 = v3;
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.AggregateValue.hash(into:)(v5);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D2B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 5);
  v4 = *(v1 + 48);
  v7 = *v1;
  v8 = v2;
  v9 = *(v1 + 24);
  v10 = v3;
  v11 = v4;
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.AggregateValue.hash(into:)(v6);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.NumericValue.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (v1[6] < 0)
  {
    v6 = v1[3];
    v7 = *(v1 + 16);
    MEMORY[0x1CCA56740](1);
    if (v7 < 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      PersonalizationScript.Tag.hash(into:)(a1);
    }

    if (v6 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6D7A280();
    }

    else
    {
      sub_1C6D7A280();
      if ((v6 & 0x8000000000000000) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();

        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        sub_1C6D79610();
      }
    }

    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1CCA56770](v4);
  }
}

uint64_t PersonalizationScript.NumericValue.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.hash(into:)(v4);
  return sub_1C6D7A2B0();
}

BOOL sub_1C6C9D60C(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 48);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return *&v4 == *&v6;
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v9 = *(a1 + 24);
  v10 = *(a1 + 5);
  v11 = *(a2 + 2);
  v12 = *(a2 + 24);
  v13 = *(a2 + 5);
  v14 = *(a1 + 2);
  v20 = v4;
  v21 = v14;
  v22 = v9;
  v23 = v10;
  v24 = v5 & 0x7F;
  v15 = v6;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v7 & 0x7F;
  return _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v20, &v15) & 1;
}

uint64_t sub_1C6C9D6B8()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.hash(into:)(v4);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D718(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_1C6D7A260();
  PersonalizationScript.NumericValue.hash(into:)(v5);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D778(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v4 = 0xEA0000000000736ELL;
  }

  else
  {
    v4 = 0x80000001C6D96FA0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v6 = 0x80000001C6D96FA0;
  }

  else
  {
    v6 = 0xEA0000000000736ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C9D828()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9D8B4(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9D92C(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9D9C0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C6D96FA0;
  v3 = 0x6F697469646E6F63;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xEA0000000000736ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1C6C9DA08()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_1C6C9DA58(uint64_t a1)
{
  v2 = sub_1C6CA6360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9DA94(uint64_t a1)
{
  v2 = sub_1C6CA6360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.ReadInteraction.init(conditions:readArticleWithDuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t PersonalizationScript.ReadInteraction.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AB0, sub_1C6CA6360, &type metadata for PersonalizationScript.ReadInteraction.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6360();

  sub_1C6D7A300();
  v15 = v9;
  v14 = 0;
  sub_1C6B6052C(0, &qword_1EC1D88C0, &type metadata for PersonalizationScript.HeadlineCondition);
  sub_1C6CA5C9C();
  v10 = v12[1];
  sub_1C6D7A030();

  if (!v10)
  {
    v13 = 1;
    sub_1C6D7A060();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PersonalizationScript.ReadInteraction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (*v2)
  {
    sub_1C6D7A280();
    sub_1C6CA2980(a1, v4);
  }

  else
  {
    sub_1C6D7A280();
  }

  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  return MEMORY[0x1CCA56770](*&v6);
}

uint64_t PersonalizationScript.ReadInteraction.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v1)
  {
    sub_1C6CA2980(v5, v1);
  }

  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1CCA56770](*&v3);
  return sub_1C6D7A2B0();
}

BOOL sub_1C6C9DDEC(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = a2[1];
  if (*a1)
  {
    if (v4 != 0.0)
    {

      v6 = sub_1C6B56EAC(v2, *&v4);

      if (v6)
      {
        return v3 == v5;
      }
    }
  }

  else if (v4 == 0.0)
  {
    return v3 == v5;
  }

  return 0;
}

uint64_t sub_1C6C9DE68(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6CA2980(v6, v2);
  }

  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1CCA56770](*&v4);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9DEEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1702257011;
  }

  else
  {
    v3 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v4 = 0xEA0000000000736ELL;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1702257011;
  }

  else
  {
    v5 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEA0000000000736ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C9DF90()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9E010(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9E07C(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9E104(uint64_t *a1@<X8>)
{
  v2 = 1702257011;
  if (!*v1)
  {
    v2 = 0x6F697469646E6F63;
  }

  v3 = 0xEA0000000000736ELL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C9E140()
{
  if (*v0)
  {
    return 1702257011;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_1C6C9E184(uint64_t a1)
{
  v2 = sub_1C6CA630C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9E1C0(uint64_t a1)
{
  v2 = sub_1C6CA630C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s19NewsPersonalization0B6ScriptV14HeadlinesValueV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    sub_1C6D7A280();
    sub_1C6CA2980(a1, v5);
  }

  else
  {
    sub_1C6D7A280();
  }

  return MEMORY[0x1CCA56740](v4);
}

uint64_t _s19NewsPersonalization0B6ScriptV14HeadlinesValueV04hashE0Sivg_0()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6CA2980(v4, v2);
  }

  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9E350(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v3)
  {
    sub_1C6CA2980(v5, v3);
  }

  MEMORY[0x1CCA56740](v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9E454@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6C9E4AC(uint64_t a1)
{
  v2 = sub_1C6CA69F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9E4E8(uint64_t a1)
{
  v2 = sub_1C6CA69F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.ScreenValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8AC0, sub_1C6CA69F0, &type metadata for PersonalizationScript.ScreenValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA69F0();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v14;
    v11 = sub_1C6D79FE0();
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.ScreenValue.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AD0, sub_1C6CA69F0, &type metadata for PersonalizationScript.ScreenValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA69F0();
  sub_1C6D7A300();
  sub_1C6D7A080();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonalizationScript.ScreenValue.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9E8D4(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AD0, sub_1C6CA69F0, &type metadata for PersonalizationScript.ScreenValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA69F0();
  sub_1C6D7A300();
  sub_1C6D7A080();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C6C9EA4C()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9EAC0(uint64_t a1)
{
  v2 = *v1;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v2);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.ScrollInteraction.scroll.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C6B6227C(v2, v3, v4);
}

uint64_t sub_1C6C9EB8C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6C9EBE4(uint64_t a1)
{
  v2 = sub_1C6CA61BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9EC20(uint64_t a1)
{
  v2 = sub_1C6CA61BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.ScrollInteraction.init(scroll:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t PersonalizationScript.ScrollInteraction.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8AD8, sub_1C6CA61BC, &type metadata for PersonalizationScript.ScrollInteraction.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B6227C(v8, v9, v10);
  sub_1C6CA61BC();
  sub_1C6D7A300();
  v13 = v8;
  v14 = v9;
  v15 = v10;
  sub_1C6CA6A44();
  sub_1C6D7A090();
  sub_1C6B360A8(v13, v14, v15);
  return (*(v16 + 8))(v7, v4);
}

uint64_t sub_1C6C9EE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_1C6B6227C(v11, v2, v3);
  sub_1C6B6227C(v4, v5, v6);
  LOBYTE(v4) = _s19NewsPersonalization0B6ScriptV11ScrollValueO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_1C6B360A8(v8, v9, v10);
  sub_1C6B360A8(v11, v12, v13);
  return v4 & 1;
}

uint64_t PersonalizationScript.ScrollValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8AC0, sub_1C6CA69F0, &type metadata for PersonalizationScript.ScreenValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16[-1] - v8;
  sub_1C6B16F28(a1, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1C6CA69F0();
  sub_1C6D7A2D0();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_1C6B16F28(a1, v17);
    PersonalizationScript.HeadlinesValue.init(from:)(v17, v16);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v12 = v16[0];
    v11 = v16[1];
    v13 = 1;
  }

  else
  {
    v12 = sub_1C6D79FE0();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v6 + 8))(v9, v5);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v11 = 0;
    v13 = 0;
  }

  v14 = v18;
  *v18 = v12;
  v14[1] = v11;
  *(v14 + 16) = v13;
  return result;
}

uint64_t PersonalizationScript.ScrollValue.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2)
  {
    sub_1C6CA6AEC();
  }

  else
  {
    sub_1C6CA6B40();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t PersonalizationScript.ScrollValue.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 16))
  {
    v5 = *(v2 + 8);
    MEMORY[0x1CCA56740](1);
    sub_1C6D7A280();
    if (v4)
    {
      sub_1C6CA2980(a1, v4);
    }

    v4 = v5;
  }

  else
  {
    MEMORY[0x1CCA56740](0);
  }

  return MEMORY[0x1CCA56740](v4);
}

uint64_t sub_1C6C9F2AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  if (v3)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D7A280();
    if (v1)
    {
      sub_1C6CA2980(v5, v1);
    }

    v1 = v2;
  }

  else
  {
    MEMORY[0x1CCA56740](0);
  }

  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9F380(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 16))
  {
    v5 = *(v2 + 8);
    MEMORY[0x1CCA56740](1);
    sub_1C6D7A280();
    if (v4)
    {
      sub_1C6CA2980(a1, v4);
    }

    v4 = v5;
  }

  else
  {
    MEMORY[0x1CCA56740](0);
  }

  return MEMORY[0x1CCA56740](v4);
}

uint64_t sub_1C6C9F400(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1C6D7A260();
  if (v4)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D7A280();
    if (v2)
    {
      sub_1C6CA2980(v6, v2);
    }

    v2 = v3;
  }

  else
  {
    MEMORY[0x1CCA56740](0);
  }

  MEMORY[0x1CCA56740](v2);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Step.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C6B35FD4(v2, v3, v4);
}

uint64_t sub_1C6C9F4B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736B736174;
  }

  else
  {
    v3 = 0x74616E6974736564;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x736B736174;
  }

  else
  {
    v5 = 0x74616E6974736564;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6C9F564()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9F5EC(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6C9F660(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6C9F6F0(uint64_t *a1@<X8>)
{
  v2 = 0x74616E6974736564;
  if (*v1)
  {
    v2 = 0x736B736174;
  }

  v3 = 0xEB000000006E6F69;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6C9F734()
{
  if (*v0)
  {
    return 0x736B736174;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1C6C9F780(uint64_t a1)
{
  v2 = sub_1C6CA6B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9F7BC(uint64_t a1)
{
  v2 = sub_1C6CA6B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.Step.init(destination:tasks:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t PersonalizationScript.Step.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8B00, sub_1C6CA6B94, &type metadata for PersonalizationScript.Step.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6B94();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    LOBYTE(v22) = 0;
    sub_1C6CA6BE8();
    sub_1C6D79FF0();
    v13 = v19;
    v12 = v20;
    HIDWORD(v16) = v21;
    sub_1C6B6052C(0, &qword_1EC1D8B18, &type metadata for PersonalizationScript.Task);
    v18 = 1;
    sub_1C6CA6C3C();
    sub_1C6D79FF0();
    (*(v10 + 8))(v9, v5);
    v15 = v22;
    *v11 = v13;
    *(v11 + 8) = v12;
    *(v11 + 16) = BYTE4(v16);
    *(v11 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Step.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8B30, sub_1C6CA6B94, &type metadata for PersonalizationScript.Step.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v15 = *(v1 + 24);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B35FD4(v8, v9, v10);
  sub_1C6CA6B94();
  sub_1C6D7A300();
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v11 = v4;
  v21 = 0;
  sub_1C6CA6D18();
  v12 = v17;
  sub_1C6D7A090();
  if (v12)
  {
    sub_1C6B360B4(v18, v19, v20);
    return (*(v16 + 8))(v7, v4);
  }

  else
  {
    v14 = v16;
    sub_1C6B360B4(v18, v19, v20);
    v18 = v15;
    v21 = 1;
    sub_1C6B6052C(0, &qword_1EC1D8B18, &type metadata for PersonalizationScript.Task);
    sub_1C6CA6D6C();
    sub_1C6D7A090();
    return (*(v14 + 8))(v7, v11);
  }
}

uint64_t PersonalizationScript.Step.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (*(v1 + 16) < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(a1);
  }

  return sub_1C6CA2550(a1, v3);
}

uint64_t PersonalizationScript.Step.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C6D7A260();
  if (v1 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(v4);
  }

  sub_1C6CA2550(v4, v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9FE20(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (*(v1 + 16) < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(a1);
  }

  return sub_1C6CA2550(a1, v3);
}

uint64_t sub_1C6C9FEC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C6D7A260();
  if (v2 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)(v5);
  }

  sub_1C6CA2550(v5, v3);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Tag.TagID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D87A0, sub_1C6CA516C, &type metadata for PersonalizationScript.Tag.TagID.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA516C();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v16;
    v11 = sub_1C6D79FA0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Tag.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  if (v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    if (v2 == 1)
    {
      sub_1C6CA6E9C();
    }

    else
    {
      sub_1C6CA6E48();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_1C6CA6EF0();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t static PersonalizationScript.Tag.TagID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6D7A130();
  }
}

uint64_t PersonalizationScript.Tag.TagID.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1C6CA02A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0370@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6CA03EC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C6D79F50();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C6CA0444(uint64_t a1)
{
  v2 = sub_1C6CA516C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CA0480(uint64_t a1)
{
  v2 = sub_1C6CA516C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.Tag.TagID.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8B68, sub_1C6CA516C, &type metadata for PersonalizationScript.Tag.TagID.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA516C();
  sub_1C6D7A300();
  sub_1C6D7A040();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PersonalizationScript.Tag.TagID.hashValue.getter()
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0698(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8B68, sub_1C6CA516C, &type metadata for PersonalizationScript.Tag.TagID.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA516C();
  sub_1C6D7A300();
  sub_1C6D7A040();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C6CA0800(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6D7A130();
  }
}

uint64_t sub_1C6CA0830()
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0884(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

NewsPersonalization::PersonalizationScript::Tag::CommonFeed_optional __swiftcall PersonalizationScript.Tag.CommonFeed.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.Tag.CommonFeed.rawValue.getter()
{
  result = 0x7374726F7073;
  switch(*v0)
  {
    case 1:
      result = 0x73636974696C6F70;
      break;
    case 2:
      result = 1685024614;
      break;
    case 3:
      result = 0x6961747265746E65;
      break;
    case 4:
      result = 0x68746C616568;
      break;
    case 5:
      result = 0x7373656E746966;
      break;
    case 6:
      result = 0x6F6C6F6E68636574;
      break;
    case 7:
      result = 0x616274656B736162;
      break;
    case 8:
      result = 0x6C6C6162746F6F66;
      break;
    case 9:
      result = 1718382439;
      break;
    case 0xA:
      result = 0x726563636F73;
      break;
    case 0xB:
      result = 0x6E6F6968736166;
      break;
    case 0xC:
      result = 0x6C6576617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6CA0A6C()
{
  v0 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  v2 = v1;
  if (v0 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C6D7A130();
  }

  return v5 & 1;
}

uint64_t sub_1C6CA0B08()
{
  sub_1C6D7A260();
  PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0B70(uint64_t a1)
{
  PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  sub_1C6D79610();
}

uint64_t sub_1C6CA0BD4(uint64_t a1)
{
  sub_1C6D7A260();
  PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0C44@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

NewsPersonalization::PersonalizationScript::Tag::CommonPublisher_optional __swiftcall PersonalizationScript.Tag.CommonPublisher.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.Tag.CommonPublisher.rawValue.getter()
{
  v1 = 5131843;
  v2 = 1313887045;
  if (*v0 != 2)
  {
    v2 = 1330659671;
  }

  if (*v0)
  {
    v1 = 0x696C6F505F4E4E43;
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

uint64_t sub_1C6CA0DF0()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA0EA4(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6CA0F44(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

void sub_1C6CA1000(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5131843;
  v4 = 1313887045;
  if (*v1 != 2)
  {
    v4 = 1330659671;
  }

  if (*v1)
  {
    v3 = 0x696C6F505F4E4E43;
    v2 = 0xEC00000073636974;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t PersonalizationScript.Tag.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1CCA56740](1);
      PersonalizationScript.Tag.CommonFeed.rawValue.getter();
    }

    else
    {
      MEMORY[0x1CCA56740](2);
    }

    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);

    return sub_1C6D79610();
  }
}

uint64_t PersonalizationScript.Tag.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA12EC()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA1344(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1C6D7A260();
  PersonalizationScript.Tag.hash(into:)(v4);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Task.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PersonalizationScript.Task.interaction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1C6B62230(v2, v3, v4);
}

uint64_t sub_1C6CA13D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463617265746E69;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v5 = 0x7463617265746E69;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xEB000000006E6F69;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();
  }

  return v8 & 1;
}

uint64_t sub_1C6CA148C()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA151C(uint64_t a1)
{
  sub_1C6D79610();
}

uint64_t sub_1C6CA1598(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA1630@<X0>(char *a3@<X8>)
{
  v4 = sub_1C6D79F50();

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

void sub_1C6CA168C(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x7463617265746E69;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6CA16D8()
{
  if (*v0)
  {
    return 0x7463617265746E69;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C6CA172C@<X0>(char *a4@<X8>)
{
  v5 = sub_1C6D79F50();

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

uint64_t sub_1C6CA178C(uint64_t a1)
{
  v2 = sub_1C6CA6F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CA17C8(uint64_t a1)
{
  v2 = sub_1C6CA6F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.Task.init(identifier:interaction:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t PersonalizationScript.Task.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8B70, sub_1C6CA6F44, &type metadata for PersonalizationScript.Task.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6F44();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v10 = v19;
    LOBYTE(v20) = 0;
    v11 = sub_1C6D79F60();
    v13 = v12;
    v14 = v11;
    v22 = 1;
    sub_1C6CA6F98();
    sub_1C6D79FF0();
    (*(v6 + 8))(v9, v5);
    v15 = v21;
    v16 = v20;
    *v10 = v14;
    *(v10 + 8) = v13;
    *(v10 + 16) = v16;
    *(v10 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Task.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8B88, sub_1C6CA6F44, &type metadata for PersonalizationScript.Task.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v9;
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA6F44();
  sub_1C6D7A300();
  LOBYTE(v15) = 0;
  v10 = v14;
  sub_1C6D7A000();
  if (!v10)
  {
    v15 = v13;
    v16 = v12;
    v17 = v18;
    v19 = 1;
    sub_1C6B62230(v13, v12, v18);
    sub_1C6CA7054();
    sub_1C6D7A090();
    sub_1C6B62288(v15, v16, v17);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PersonalizationScript.Task.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1C6D7A280();
    sub_1C6D79610();
  }

  else
  {
    sub_1C6D7A280();
  }

  return PersonalizationScript.Interaction.hash(into:)(a1);
}

uint64_t PersonalizationScript.Task.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v1)
  {
    sub_1C6D79610();
  }

  PersonalizationScript.Interaction.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA1D7C()
{
  v1 = *(v0 + 8);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v1)
  {
    sub_1C6D79610();
  }

  PersonalizationScript.Interaction.hash(into:)(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA1E10(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1C6D7A280();
    sub_1C6D79610();
  }

  else
  {
    sub_1C6D7A280();
  }

  return PersonalizationScript.Interaction.hash(into:)(a1);
}

uint64_t sub_1C6CA1EA4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6D79610();
  }

  PersonalizationScript.Interaction.hash(into:)(v4);
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  if (*v1)
  {
    sub_1C6D7A280();
    sub_1C6CA2E38(a1, v3);
  }

  else
  {
    sub_1C6D7A280();
  }

  sub_1C6D79610();

  return sub_1C6CA2238(a1, v4);
}

uint64_t PersonalizationScript.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v1)
  {
    sub_1C6CA2E38(v4, v1);
  }

  sub_1C6D79610();
  sub_1C6CA2238(v4, v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA2088()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v1)
  {
    sub_1C6CA2E38(v4, v1);
  }

  sub_1C6D79610();
  sub_1C6CA2238(v4, v2);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA211C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  if (*v1)
  {
    sub_1C6D7A280();
    sub_1C6CA2E38(a1, v3);
  }

  else
  {
    sub_1C6D7A280();
  }

  sub_1C6D79610();

  return sub_1C6CA2238(a1, v4);
}

uint64_t sub_1C6CA21A8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_1C6D7A260();
  sub_1C6D7A280();
  if (v2)
  {
    sub_1C6CA2E38(v5, v2);
  }

  sub_1C6D79610();
  sub_1C6CA2238(v5, v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CA2238(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v4);
  if (v4)
  {
    v6 = (a2 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 8);
      v10 = *v6;
      if (*(v6 - 1) < 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6B35FD4(v7, v8, v9);
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        if (v9)
        {
          if (v9 == 1)
          {
            MEMORY[0x1CCA56740](1);
            v11 = v7;
            v12 = v8;
            v13 = 1;
          }

          else
          {
            MEMORY[0x1CCA56740](2);
            v11 = v7;
            v12 = v8;
            v13 = 2;
          }

          sub_1C6B35FD4(v11, v12, v13);

          sub_1C6D79610();

          goto LABEL_5;
        }

        MEMORY[0x1CCA56740](0);
        sub_1C6B35FD4(v7, v8, 0);
      }

      sub_1C6D79610();
LABEL_5:
      sub_1C6CA2550(a1, v10);
      sub_1C6B360B4(v7, v8, v9);

      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C6CA2550(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v4);
  v20 = v4;
  if (v4)
  {
    v6 = 0;
    v19 = a2 + 32;
    do
    {
      v9 = v19 + 40 * v6;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      if (*(v9 + 8))
      {
        sub_1C6D7A280();

        sub_1C6B62230(v10, v11, v12);
        sub_1C6D79610();
      }

      else
      {
        sub_1C6D7A280();
        sub_1C6B62230(v10, v11, v12);
      }

      v13 = v12 >> 5;
      if (v12 >> 5 > 2)
      {
        if (v13 != 3)
        {
          if (v13 == 4)
          {
            MEMORY[0x1CCA56740](4);
            sub_1C6D7A280();
            if (v10)
            {
              sub_1C6CA2980(a1, v10);
            }

            v7 = v11;
            if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v18 = v11;
            }

            else
            {
              v18 = 0;
            }

            MEMORY[0x1CCA56770](v18);
          }

          else
          {
            v7 = v11;
            MEMORY[0x1CCA56740](5);
            MEMORY[0x1CCA56740](*(v10 + 16));
            v14 = *(v10 + 16);
            if (v14)
            {
              v15 = v10 + 48;
              do
              {
                v16 = *(v15 - 16);
                v17 = *(v15 - 8);
                v15 += 24;

                sub_1C6CA2980(a1, v16);
                MEMORY[0x1CCA56740](v17);
                sub_1C6D79610();

                --v14;
              }

              while (v14);
            }
          }

          goto LABEL_7;
        }

        MEMORY[0x1CCA56740](3);
        if (!v10)
        {
LABEL_23:
          sub_1C6D7A280();
          goto LABEL_5;
        }
      }

      else
      {
        if (!v13)
        {
          MEMORY[0x1CCA56740](0);
          if ((v12 & 1) == 0)
          {
            v7 = v11;
            MEMORY[0x1CCA56740](0);
            v8 = v10;
            goto LABEL_6;
          }

LABEL_3:
          MEMORY[0x1CCA56740](1);
          if (!v10)
          {
            goto LABEL_23;
          }

          goto LABEL_4;
        }

        if (v13 == 1)
        {
          goto LABEL_3;
        }

        MEMORY[0x1CCA56740](2);
        if (!v10)
        {
          goto LABEL_23;
        }
      }

LABEL_4:
      sub_1C6D7A280();
      sub_1C6CA2980(a1, v10);
LABEL_5:
      v7 = v11;
      v8 = v11;
LABEL_6:
      MEMORY[0x1CCA56740](v8);
LABEL_7:

      result = sub_1C6B62288(v10, v7, v12);
      ++v6;
    }

    while (v6 != v20);
  }

  return result;
}

uint64_t sub_1C6CA2840(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v4);
  if (v4)
  {
    v6 = a2 + 48;
    do
    {
      v7 = *(v6 - 16);
      v8 = *(v6 - 8);
      v6 += 24;

      sub_1C6CA2980(a1, v7);
      MEMORY[0x1CCA56740](v8);
      sub_1C6D79610();

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C6CA2980(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v6 = *v5;
      v9 = *v5;
      if (v6 < 0)
      {
        v10 = v9 & 0x7F;
        MEMORY[0x1CCA56740](1);
        if (v10)
        {
          if (v10 == 1)
          {
            MEMORY[0x1CCA56740](1);
          }

          else
          {
            MEMORY[0x1CCA56740](2);
          }

          sub_1C6D79610();
        }

        else
        {
          MEMORY[0x1CCA56740](0);
          sub_1C6B622DC(v7, v8, 0);
          sub_1C6D79610();
        }
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        if (v9)
        {
          if (v9 == 1)
          {
            MEMORY[0x1CCA56740](1);
            sub_1C6D79610();

            LOBYTE(v6) = 1;
          }

          else
          {
            MEMORY[0x1CCA56740](2);
            sub_1C6D79610();

            LOBYTE(v6) = 2;
          }
        }

        else
        {
          MEMORY[0x1CCA56740](0);
          sub_1C6B622DC(v7, v8, 0);
          sub_1C6D79610();
          LOBYTE(v6) = 0;
        }
      }

      v5 += 24;
      result = sub_1C6B622F0(v7, v8, v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C6CA2E38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1CCA56740](v4);
  if (v4)
  {
    for (i = (a2 + 32); ; i = (i + 120))
    {
      v7 = i[1];
      v38 = *i;
      v39 = v7;
      v8 = i[3];
      v40 = i[2];
      v41 = v8;
      v9 = i[5];
      v42 = i[4];
      v43 = v9;
      v44 = i[6];
      v45 = *(i + 112);
      v10 = v39;
      v11 = *(&v39 + 1);
      if ((v45 & 0x40) != 0)
      {
        break;
      }

      v36 = v40;
      v37 = *(&v38 + 1);
      v34 = BYTE8(v39);
      v33 = v45;
      v31 = v42;
      v30 = v43;
      v32 = SBYTE8(v41);
      MEMORY[0x1CCA56740](0);
      v12 = a1;
      v13 = v42;
      v14 = v43;
      v15 = v44;
      v16 = v45;
      sub_1C6CA5724(*(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, SBYTE8(v41), sub_1C6CAA560, sub_1C6CA5798);
      sub_1C6CA5724(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16 & 0xBF, sub_1C6CAA560, sub_1C6CA5798);
      sub_1C6D79610();

      a1 = v12;
      if (v32 < 0)
      {
        MEMORY[0x1CCA56740](1);
        if (v34 < 0)
        {
          MEMORY[0x1CCA56740](1);
          sub_1C6D79610();
        }

        else
        {
          MEMORY[0x1CCA56740](0);
          if (v34)
          {
            if (v34 == 1)
            {
              MEMORY[0x1CCA56740](1);
            }

            else
            {
              MEMORY[0x1CCA56740](2);
            }

            sub_1C6D79610();
          }

          else
          {
            MEMORY[0x1CCA56740](0);
            sub_1C6D79610();
          }
        }

        if (v36 >> 1 == 0xFFFFFFFF)
        {
          sub_1C6D7A280();
        }

        else
        {
          sub_1C6D7A280();
          if ((v36 & 0x8000000000000000) != 0)
          {
            MEMORY[0x1CCA56740](1);
            sub_1C6D79610();

            sub_1C6D79610();
          }

          else
          {
            MEMORY[0x1CCA56740](0);
            sub_1C6D79610();
          }
        }

        sub_1C6D79610();

        if (v33 < 0)
        {
LABEL_42:
          MEMORY[0x1CCA56740](1);
          if ((v30 & 0x80) != 0)
          {
            MEMORY[0x1CCA56740](1);
          }

          else
          {
            MEMORY[0x1CCA56740](0);
            if (v30)
            {
              if (v30 == 1)
              {
                MEMORY[0x1CCA56740](1);
              }

              else
              {
                MEMORY[0x1CCA56740](2);
              }

              v29 = *(&v30 + 1);
              sub_1C6D79610();

              goto LABEL_51;
            }

            MEMORY[0x1CCA56740](0);
          }

          sub_1C6D79610();
          v29 = *(&v30 + 1);
LABEL_51:
          if (v29 >> 1 == 0xFFFFFFFF)
          {
            sub_1C6D7A280();
          }

          else
          {
            sub_1C6D7A280();
            if ((v29 & 0x8000000000000000) != 0)
            {
              MEMORY[0x1CCA56740](1);
              sub_1C6D79610();

              sub_1C6D79610();
            }

            else
            {
              MEMORY[0x1CCA56740](0);
              sub_1C6D79610();
            }
          }

          sub_1C6D79610();

          goto LABEL_4;
        }
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v17 = v37;
        }

        else
        {
          v17 = 0;
        }

        MEMORY[0x1CCA56770](v17);
        if (v33 < 0)
        {
          goto LABEL_42;
        }
      }

      MEMORY[0x1CCA56740](0);
      if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v31;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x1CCA56770](v18);
LABEL_4:
      result = sub_1C6B62368(&v38);
      if (!--v4)
      {
        return result;
      }
    }

    MEMORY[0x1CCA56740](1);
    if ((v10 & 0x80) != 0)
    {
      MEMORY[0x1CCA56740](1);
      v19 = *(&v39 + 1);
      v20 = v40;
      sub_1C6B35FD4(v38, *(&v38 + 1), v39);
      sub_1C6CA5798(v19, v20, *(&v20 + 1));
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      if (v10)
      {
        v35 = v11;
        if (v10 == 1)
        {
          MEMORY[0x1CCA56740](1);
        }

        else
        {
          MEMORY[0x1CCA56740](2);
        }

        v26 = *(&v39 + 1);
        v27 = *(&v40 + 1);
        v28 = v40;
        sub_1C6B35FD4(v38, *(&v38 + 1), v39);
        sub_1C6CA5798(v26, v28, v27);
        sub_1C6D79610();

        v11 = v35;
        goto LABEL_28;
      }

      MEMORY[0x1CCA56740](0);
      v21 = v11;
      v22 = *(&v39 + 1);
      v23 = *(&v40 + 1);
      v24 = v40;
      sub_1C6B35FD4(v38, *(&v38 + 1), v39);
      v25 = v24;
      v11 = v21;
      sub_1C6CA5798(v22, v25, v23);
    }

    sub_1C6D79610();
LABEL_28:
    sub_1C6D7A280();
    if (v11 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6D7A280();
    }

    else
    {
      sub_1C6D7A280();
      if ((v11 & 0x8000000000000000) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();

        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        sub_1C6D79610();
      }
    }

    goto LABEL_4;
  }

  return result;
}

uint64_t _s19NewsPersonalization0B6ScriptV17HeadlineConditionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v10 & 0x80) != 0)
    {
      goto LABEL_23;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (v10 == 1)
        {
LABEL_11:
          v12 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
          v14 = v13;
          if (v12 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v14 == v15)
          {
            v16 = 1;
          }

          else
          {
            v16 = sub_1C6D7A130();
          }

          return v16 & 1;
        }

        goto LABEL_23;
      }

LABEL_14:
      if (v10 == 2)
      {

        return sub_1C6B627EC(v4, v8);
      }

LABEL_23:
      v16 = 0;
      return v16 & 1;
    }

    if (v10)
    {
      goto LABEL_23;
    }

    if (v4 != v8 || v5 != v9)
    {
      goto LABEL_30;
    }

LABEL_29:
    v16 = 1;
    return v16 & 1;
  }

  if ((v10 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  v10 &= 0x7Fu;
  v11 = v7 & 0x7F;
  if (v11)
  {
    if (v11 == 1)
    {
      if (v10 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_23;
  }

  if (v4 == v8 && v5 == v9)
  {
    goto LABEL_29;
  }

LABEL_30:

  return sub_1C6D7A130();
}

uint64_t _s19NewsPersonalization0B6ScriptV11InteractionO2eeoiySbAE_AEtFZ_0(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 1);
  v7 = *(a2 + 16);
  v8 = v4 >> 5;
  if (v4 >> 5 <= 2)
  {
    if (!v8)
    {
      if (v7 >= 0x20)
      {
        return 0;
      }

      if ((v4 & 1) == 0)
      {
        return (v2 == *&v6) & ~v7;
      }

      if ((v7 & 1) == 0)
      {
        return 0;
      }

      if (v2)
      {
        if (v6 == 0.0)
        {
          sub_1C6B6227C(0, *(a2 + 1), 1);
          return 0;
        }

        sub_1C6B6227C(*a2, *(a2 + 1), 1);
LABEL_25:
        v11 = sub_1C6B56EAC(v2, *&v6);
        sub_1C6B62288(*&v6, v5, v7);
        if (v11)
        {
          return *&v3 == v5;
        }

        return 0;
      }

      if (v6 != 0.0)
      {
        return 0;
      }

      sub_1C6B6227C(0, *(a2 + 1), 1);
      return *&v3 == v5;
    }

    v9 = v7 & 0xE0;
    if (v8 == 1)
    {
      if (v9 != 32)
      {
        return 0;
      }
    }

    else if (v9 != 64)
    {
      return 0;
    }

LABEL_22:
    if (v2)
    {
      if (v6 == 0.0)
      {
        return 0;
      }

      goto LABEL_25;
    }

    if (v6 != 0.0)
    {
      return 0;
    }

    return *&v3 == v5;
  }

  if (v8 == 3)
  {
    if ((v7 & 0xE0) != 0x60)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (v8 == 4)
  {
    if ((v7 & 0xE0) == 0x80)
    {
      if (v2)
      {
        if (v6 == 0.0)
        {
          return 0;
        }

        v10 = sub_1C6B56EAC(v2, *&v6);
        sub_1C6B62288(*&v6, v5, v7);
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6 != 0.0)
      {
        return 0;
      }

      return v3 == *&v5;
    }

    return 0;
  }

  if ((v7 & 0xE0) != 0xA0)
  {
    return 0;
  }

  v12 = *a1;
  v13 = *a2;

  return sub_1C6B5794C(v12, *&v13);
}

BOOL _s19NewsPersonalization0B6ScriptV11ScrollValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    return (v2 == v3) & ~*(a2 + 16);
  }

  if (*(a2 + 16))
  {
    v4 = *(a1 + 8);
    v5 = a2[1];
    if (v2)
    {
      if (v3)
      {

        v6 = sub_1C6B56EAC(v2, v3);
        sub_1C6B360A8(v3, v5, 1);
        if (v6)
        {
          return v4 == v5;
        }
      }
    }

    else if (!v3)
    {
      return v4 == v5;
    }
  }

  return 0;
}

uint64_t sub_1C6CA3F90(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < 0)
  {
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if ((v3 & 0x80) != 0)
  {
    goto LABEL_21;
  }

  v5 = *a1;
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v6 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
        v8 = v7;
        if (v6 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v8 == v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = sub_1C6D7A130();
        }

        return v10 & 1;
      }

      goto LABEL_21;
    }

    if (v3 == 2)
    {
      v12 = *a2;

      return sub_1C6B627EC(v5, v12);
    }

LABEL_21:
    v10 = 0;
    return v10 & 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_21;
  }

  if (v5 == *a2 && a1[1] == a2[1])
  {
LABEL_10:
    v10 = 1;
    return v10 & 1;
  }

  return sub_1C6D7A130();
}