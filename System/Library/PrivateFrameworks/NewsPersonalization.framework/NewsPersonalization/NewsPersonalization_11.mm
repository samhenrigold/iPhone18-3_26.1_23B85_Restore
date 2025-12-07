void sub_1C6C1FFE0(uint64_t a1)
{
  if (!qword_1EDCE6028)
  {
    sub_1C6D77520();
    sub_1C6C20164(&qword_1EDCE5FA8, MEMORY[0x1E69B45F8], MEMORY[0x1E69B45E0]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6028);
    }
  }
}

uint64_t sub_1C6C20074(uint64_t a1, double a2)
{
  sub_1C6C20100(0, &qword_1EDCE5E58, MEMORY[0x1E69B4B10], MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6C20100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C20164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C201AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v33[1] = a2;
  v8 = sub_1C6D77B40();
  v33[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C20604(0);
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
      sub_1C6C20698(&qword_1EC1D7EF0, MEMORY[0x1E69B4948], MEMORY[0x1E69B4958]);
      v26 = v34;
      sub_1C6D75AF0();
      a5[3] = v8;
      v28 = MEMORY[0x1E69B4948];
      a5[4] = sub_1C6C20698(&qword_1EC1D7EF8, MEMORY[0x1E69B4948], &protocol conformance descriptor for ArticleUnsaveEvent.Model);
      a5[5] = sub_1C6C20698(&qword_1EC1D7F00, v28, &protocol conformance descriptor for ArticleUnsaveEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a5);
      (*(v33[0] + 32))(boxed_opaque_existential_2, v26, v8);
      sub_1C6B1C9F0(v23, v25);
      v30 = *MEMORY[0x1E69E3678];
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

void sub_1C6C20604(uint64_t a1)
{
  if (!qword_1EDCE6058)
  {
    sub_1C6D77B50();
    sub_1C6C20698(&qword_1EDCE5ED8, MEMORY[0x1E69B4960], MEMORY[0x1E69B4930]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6058);
    }
  }
}

uint64_t sub_1C6C20698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C206E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C20718(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  return ConfigurationManagerType.fetchArticleEmbeddingsConfigurationIfNeeded(cachedOnly:)(1, v1, v2);
}

uint64_t sub_1C6C2076C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [*a1 fittingConfiguration];
  v4 = [v3 articleReadRequirements];

  v5 = [v2 fittingConfiguration];
  v6 = [v5 articleSeenRequirements];

  v7 = [v2 fittingConfiguration];
  v42 = [v7 embeddingType];

  v8 = [v2 fittingConfiguration];
  v9 = [v8 logisticRegressionClassifierConfiguration];

  sub_1C6C20BD4(v48);
  v41 = [v2 requiredDimensions];
  v10 = [v2 fittingConfiguration];
  v11 = [v10 maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings];

  if (v11)
  {
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v2 fittingConfiguration];
  [v14 earliestAllowedEmbeddingEventTimestamp];
  v16 = v15;

  v17 = [v2 fittingConfiguration];
  v51 = [v17 haltEmbeddingProcessingAfterEncounteringNonMatchingEmbeddingsInSession];

  v18 = [v4 minimumDuration];
  v19 = v18;
  if (v18)
  {
    v40 = [v18 integerValue];
  }

  else
  {
    v40 = 0;
  }

  v50 = v19 == 0;
  v20 = [v4 minimumNumberOfEmbeddings];
  v21 = v20;
  if (v20)
  {
    v39 = [v20 integerValue];
  }

  else
  {
    v39 = 0;
  }

  v47 = v21 == 0;
  v22 = [v4 maximumNumberOfEmbeddings];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 integerValue];
  }

  else
  {
    v24 = 0;
  }

  v46 = v23 == 0;
  v25 = [v6 minimumDuration];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 integerValue];
  }

  else
  {
    v27 = 0;
  }

  v45 = v26 == 0;
  v28 = [v6 minimumNumberOfEmbeddings];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 integerValue];
  }

  else
  {
    v30 = 0;
  }

  v44 = v29 == 0;
  v31 = [v6 maximumNumberOfEmbeddings];
  v32 = v31;
  if (v31)
  {
    v33 = [v31 integerValue];
  }

  else
  {
    v33 = 0;
  }

  v34 = v50;
  v35 = *(*(a2 + 64) + 40);
  v36 = v48[1];
  *(v35 + 104) = v48[0];
  *(v35 + 161) = *&v49[9];
  v37 = v48[2];
  *(v35 + 152) = *v49;
  *(v35 + 136) = v37;
  *v35 = v40;
  *(v35 + 8) = v34;
  *(v35 + 16) = v39;
  *(v35 + 24) = v47;
  *(v35 + 32) = v24;
  *(v35 + 40) = v46;
  *(v35 + 48) = v27;
  *(v35 + 56) = v45;
  *(v35 + 64) = v30;
  *(v35 + 72) = v44;
  *(v35 + 80) = v33;
  *(v35 + 88) = v32 == 0;
  *(v35 + 96) = v42;
  *(v35 + 120) = v36;
  *(v35 + 184) = v41;
  *(v35 + 192) = v13;
  *(v35 + 200) = v11 == 0;
  *(v35 + 208) = v16;
  *(v35 + 216) = v51;
  return swift_continuation_throwingResume();
}

void sub_1C6C20BD4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 l2Penalty];
  v5 = v4;
  v6 = 0;
  v7 = 0;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v8;
  }

  v9 = [v2 l1Penalty];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v6 = v11;
  }

  v12 = [v2 maximumIterations];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 integerValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 stepSize];
  v16 = v15;
  v17 = 0;
  v18 = 0;
  if (v15)
  {
    [v15 doubleValue];
    v18 = v19;
  }

  v20 = [v2 convergenceThreshold];
  v21 = v20;
  if (v20)
  {
    [v20 doubleValue];
    v17 = v22;
  }

  *a1 = v7;
  *(a1 + 8) = v5 == 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = v10 == 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = v13 == 0;
  *(a1 + 48) = v18;
  *(a1 + 56) = v16 == 0;
  *(a1 + 64) = v17;
  *(a1 + 72) = v21 == 0;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(uint64_t a1)
{
  result = qword_1EDCE4928;
  if (!qword_1EDCE4928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C20FA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6C21138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleLiked.article.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
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
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleLiked.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleLiked.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_1C6C21810()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7F08);
  __swift_project_value_buffer(v0, qword_1EC1D7F08);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "article";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleLiked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A18 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6C21AB0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C21AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6C22500(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6C21BBC(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C21BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6C22500(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  sub_1C6C22500(&qword_1EC1D7F20, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C21E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C22500(qword_1EC1D7F40, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleLiked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C21F18@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A18 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C21FC0(uint64_t a1)
{
  v2 = sub_1C6C22500(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleLiked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C2202C(uint64_t a1, uint64_t a2)
{
  sub_1C6C22500(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleLiked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventArticleLikedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6C22500(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C22500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C22548(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1C6B1E6A8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DebugRecommendedIssuesServiceResult.recommendedIssuePublishers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DebugRecommendedIssuesServiceResult.userContext.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DebugRecommendedIssuesServiceResult.allTagIDs.getter()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_1C6B1E610(v1);

  v4 = sub_1C6C26A28(v2, v3);

  return v4;
}

uint64_t sub_1C6C22794(unsigned __int8 a1)
{
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](a1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C227F8(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6C2276C(v3, *v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C22838()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 112)));
  return v0;
}

uint64_t sub_1C6C228C4()
{
  sub_1C6C22838();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C2291C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v38 = a1;
  v4 = *v1;
  v5 = sub_1C6D783E0();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v40 = v9;
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v42 = v3;
  v43 = &v45;
  v15 = *(v4 + 88);
  v16 = *(v4 + 80);
  (*(v15 + 24))(sub_1C6C26B08, v41, v16, v15, v12);
  if (v2)
  {
  }

  v35 = v8;
  v36 = v5;
  v37 = v10;
  v17 = v40;
  sub_1C6D78500();
  v18 = v44;

  v19 = [v18 recommendedIssuesConfiguration];

  if (!v19)
  {
    type metadata accessor for RecommendedIssuesService.Errors(0, v16, v15, v20);
    swift_getWitnessTable();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
    (*(v37 + 8))(v14, v17);
  }

  if (*(v3 + *(*v3 + 104)))
  {
    v21 = &selRef_bundleInputOutputConfiguration;
  }

  else
  {
    v21 = &selRef_nonBundleInputOutputConfiguration;
  }

  v22 = [v19 *v21];
  v23 = [v22 recommendedIssuePublisherOutputName];

  sub_1C6D795A0();
  v24 = v19;
  v25 = v35;
  sub_1C6D783C0();
  sub_1C6C26D94(&qword_1EDCE7A60, sub_1C6B7A08C, MEMORY[0x1E69960C0]);
  result = sub_1C6D786C0();
  v28 = v45;
  v30 = v36;
  v29 = v37;
  v31 = v39;
  if (v45)
  {
    v32 = v24;
    v33 = result;

    (*(v31 + 8))(v25, v30);
    (*(v29 + 8))(v14, v17);

    v34 = v38;
    *v38 = v33;
    v34[1] = v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C22D38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v8 = *a2;
  v9 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D783E0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v81 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v80 = v67 - v19;
  v79 = sub_1C6D75F80();
  v74 = *(v79 - 8);
  v21 = MEMORY[0x1EEE9AC00](v79, v20);
  v23 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [*(a1 + 24) recommendedIssuesConfiguration];
  if (v24)
  {
    v78 = v24;
    v68 = v14;
    v69 = v12;
    v70 = v13;
    v71 = a4;
    v72 = v4;
    sub_1C6D75F70();
    if (qword_1EDCE0C58 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDCE0C60;
    v75 = MEMORY[0x1E69E6F90];
    sub_1C6B1A4E4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    v76 = xmmword_1C6D7E630;
    *(v27 + 16) = xmmword_1C6D7E630;
    sub_1C6C26D94(&qword_1EDCEA390, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v77 = v23;
    v28 = sub_1C6D7A0E0();
    v30 = v29;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1C6B2064C();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v31 = sub_1C6D79AC0();
    sub_1C6D78D30("Querying global graph with request ID %{public}@", 48, 2, &dword_1C6B09000, v26, v31, v27);

    if (*(a2 + *(*a2 + 104)))
    {
      v32 = &selRef_bundleInputOutputConfiguration;
    }

    else
    {
      v32 = &selRef_nonBundleInputOutputConfiguration;
    }

    v33 = v78;
    v34 = [v78 *v32];
    v35 = [v34 recommendedIssuePublisherOutputName];

    sub_1C6D795A0();
    sub_1C6D783C0();
    v36 = [v33 *v32];
    v37 = [v36 contextFeatureKey];

    sub_1C6D795A0();
    v38 = v81;
    sub_1C6D783C0();
    v39 = (a2 + *(*a2 + 112));
    v40 = v39[3];
    v41 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v42 = [v33 userContextConfiguration];
    v43 = [v42 maximumTagCount];

    v44 = [v33 userContextConfiguration];
    v45 = [v44 maximumTopicTagsPerHeadline];

    v46 = sub_1C6C234E8(v43, v45, v40, v41);
    *v73 = v46;

    sub_1C6B9656C(v46);
    v48 = v47;

    sub_1C6B1A4E4(0, &qword_1EDCE7D20, sub_1C6B9F304, v75);
    sub_1C6B9F304(0);
    v50 = v49 - 8;
    v51 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = v76;
    v53 = v52 + v51;
    v54 = *(v50 + 56);
    v55 = v68;
    v56 = *(v68 + 16);
    v57 = v70;
    v56(v53, v38, v70);
    *(v53 + v54) = v48;
    v58 = *MEMORY[0x1E6996130];
    v59 = sub_1C6D78760();
    (*(*(v59 - 8) + 104))(v53 + v54, v58, v59);
    sub_1C6D787D0();
    v73 = sub_1C6D75F60();
    v67[0] = "leLiked";
    v67[1] = v60;
    sub_1C6B1A4E4(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], v75);
    v61 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v76;
    v63 = v80;
    v56(v62 + v61, v80, v57);
    sub_1C6B68E34(v62);
    swift_setDeallocating();
    v64 = *(v55 + 8);
    v64(v62 + v61, v57);
    swift_deallocClassInstance();
    sub_1C6D78790();

    v64(v81, v57);
    v64(v63, v57);
    return (*(v74 + 8))(v77, v79);
  }

  else
  {
    type metadata accessor for RecommendedIssuesService.Errors(0, *(v8 + 80), *(v8 + 88), v25);
    swift_getWitnessTable();
    swift_allocError();
    *v66 = 1;
    return swift_willThrow();
  }
}

void *sub_1C6C234E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = &v6;
  v5[3] = a1;
  v5[4] = a2;
  SessionDataProviderType.visitSessions(reversed:stoppableVisitor:)(0, sub_1C6C26B3C, v5, a3, a4);
  result = v6;
  if (!v6[2])
  {

    return &unk_1F4671908;
  }

  return result;
}

uint64_t sub_1C6C2355C()
{
  sub_1C6C2291C(&v3);
  if (!v1)
  {
    v0 = v3;
  }

  return v0;
}

void sub_1C6C235EC(uint64_t a1, BOOL *a2, char **a3, uint64_t a4, uint64_t a5)
{
  v93 = a5;
  v101 = a2;
  v92 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v92, v8);
  v98 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B1A4E4(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v100 = v89 - v13;
  sub_1C6B1A4E4(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v108 = v89 - v16;
  v107 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v17 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v18);
  v99 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v20 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v21);
  v91 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v97 = v89 - v25;
  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v103 = v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1A4E4(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v10);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v112 = v89 - v31;
  v32 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v113 = v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v111 = v89 - v38;
  v39 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v114 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 + 16);
  v44 = *(v43 + 16);
  if (!v44)
  {
LABEL_37:
    *v101 = *(*a3 + 2) >= a4;
    return;
  }

  v110 = (v33 + 48);
  v90 = (v20 + 56);
  v95 = (v20 + 48);
  v109 = v32;
  v96 = (v17 + 48);
  while (1)
  {
    while (1)
    {
      if (v44 > *(v43 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      --v44;
      v45 = v43;
      sub_1C6C26C38(v43 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v44, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if (*(*a3 + 2) >= a4)
      {
        sub_1C6C26CA0(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        goto LABEL_37;
      }

      v46 = v112;
      sub_1C6C26B48(v42, v112, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if ((*v110)(v46, 1, v32) != 1)
      {
        break;
      }

      sub_1C6C26CA0(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6C26BC8(v46, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_4:
      v43 = v45;
      if (!v44)
      {
        goto LABEL_37;
      }
    }

    v47 = v46;
    v48 = v111;
    sub_1C6C1EADC(v47, v111, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C26C38(v48, v113, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v51 = v107;
    v50 = v108;
    if (EnumCaseMultiPayload != 2)
    {
      sub_1C6C26CA0(v111, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6C26CA0(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6C26CA0(v113, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v32 = v109;
      goto LABEL_4;
    }

    v52 = v103;
    sub_1C6C1EADC(v113, v103, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v94 = v26;
    sub_1C6C26B48(v52 + *(v26 + 24), v50, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v53 = *v96;
    if ((*v96)(v50, 1, v51) == 1)
    {
      v54 = v99;
      *v99 = 0;
      *(v54 + 1) = 0xE000000000000000;
      (*v90)(&v54[*(v51 + 20)], 1, 1, v102);
      sub_1C6D78A30();
      v55 = v53(v50, 1, v51);
      v56 = v100;
      if (v55 != 1)
      {
        sub_1C6C26BC8(v50, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v54 = v99;
      sub_1C6C1EADC(v50, v99, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v56 = v100;
    }

    sub_1C6C26B48(&v54[*(v51 + 20)], v56, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C26CA0(v54, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if ((*v95)(v56, 1, v102) != 1)
    {
      break;
    }

    sub_1C6C26CA0(v103, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C26CA0(v111, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C26CA0(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6C26BC8(v56, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v26 = v94;
    v32 = v109;
LABEL_22:
    v43 = v45;
    if (!v44)
    {
      goto LABEL_37;
    }
  }

  v57 = v56;
  v58 = v97;
  sub_1C6C1EADC(v57, v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v59 = v58;
  v60 = v91;
  sub_1C6C26C38(v59, v91, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v61 = v60;
  v62 = v98;
  sub_1C6C1EADC(v61, v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v63 = *(v62 + *(v92 + 20));
  swift_beginAccess();
  v65 = *(v63 + 24);
  v64 = *(v63 + 32);
  v66 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v66;
  v106 = v64;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v66 = sub_1C6B6592C(0, *(v66 + 2) + 1, 1, v66);
    *a3 = v66;
  }

  v69 = *(v66 + 2);
  v68 = *(v66 + 3);
  v104 = a4;
  if (v69 >= v68 >> 1)
  {
    v66 = sub_1C6B6592C((v68 > 1), v69 + 1, 1, v66);
    *a3 = v66;
  }

  *(v66 + 2) = v69 + 1;
  v70 = &v66[16 * v69];
  v71 = v106;
  *(v70 + 4) = v65;
  *(v70 + 5) = v71;
  v106 = a3;
  v72 = *a3;
  swift_beginAccess();
  v89[1] = sub_1C6B75C84();
  v74 = v73;
  v76 = v75;
  v78 = v77 >> 1;

  v79 = v78 - v76;
  v32 = v109;
  if (v78 == v76)
  {
LABEL_21:
    swift_unknownObjectRelease();
    sub_1C6C26CA0(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C26CA0(v103, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C26CA0(v111, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C26CA0(v42, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6C26CA0(v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    a4 = v104;
    a3 = v106;
    v26 = v94;
    goto LABEL_22;
  }

  if (v76 <= v78)
  {
    v80 = v78;
  }

  else
  {
    v80 = v76;
  }

  v81 = v80 - v76;
  v82 = (v74 + 16 * v76 + 8);
  while (v81)
  {
    if (*(v72 + 2) < v104)
    {
      v83 = *(v82 - 1);
      v84 = *v82;

      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v106 = v72;
      v105 = v83;
      if ((v85 & 1) == 0)
      {
        v72 = sub_1C6B6592C(0, *(v72 + 2) + 1, 1, v72);
        *v106 = v72;
      }

      v87 = *(v72 + 2);
      v86 = *(v72 + 3);
      if (v87 >= v86 >> 1)
      {
        v72 = sub_1C6B6592C((v86 > 1), v87 + 1, 1, v72);
        *v106 = v72;
      }

      *(v72 + 2) = v87 + 1;
      v88 = &v72[16 * v87];
      *(v88 + 4) = v105;
      *(v88 + 5) = v84;
      v72 = *v106;
      --v81;
      v82 += 2;
      --v79;
      v32 = v109;
      if (v79)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1C6C2420C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1CCA56710](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C6C253F4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C6C242F4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C6D783E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1C6C26D94(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
  v34 = a2;
  v12 = sub_1C6D79500();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1C6C26D94(&qword_1EDCE5D20, MEMORY[0x1E6996088], MEMORY[0x1E6996098]);
      v22 = sub_1C6D79560();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1C6C25518(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1C6C245D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v34 = a2;
  v12 = sub_1C6D79500();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1C6C26D94(&unk_1EDCE7B00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v22 = sub_1C6D79560();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1C6C257E4(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1C6C248B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C6C07A2C(0, &qword_1EDCEA490, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  result = sub_1C6D79D20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C6C24B20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C6C07A2C(0, &qword_1EC1D7AB0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  result = sub_1C6D79D20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x1CCA56710](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C6C24D54(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C6D783E0();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C6C07864(0);
  result = sub_1C6D79D20();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1C6C26D94(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
      result = sub_1C6D79500();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1C6C250A4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C6D75DE0();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C6C26D00(0);
  result = sub_1C6D79D20();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      result = sub_1C6D79500();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1C6C253F4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C6C24B20(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C6C25C18();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C6C26208(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1CCA56710](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C6D7A1B0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C25518(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1C6D783E0();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C6C24D54(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1C6C25D90(MEMORY[0x1E6996088], sub_1C6C07864);
      goto LABEL_12;
    }

    sub_1C6C26408(v12 + 1);
  }

  v14 = *v3;
  sub_1C6C26D94(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
  v15 = sub_1C6D79500();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1C6C26D94(&qword_1EDCE5D20, MEMORY[0x1E6996088], MEMORY[0x1E6996098]);
      v23 = sub_1C6D79560();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C6D7A1B0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C257E4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C6C250A4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1C6C25D90(MEMORY[0x1E6968FB0], sub_1C6C26D00);
      goto LABEL_12;
    }

    sub_1C6C26718(v12 + 1);
  }

  v14 = *v3;
  sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v15 = sub_1C6D79500();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1C6C26D94(&unk_1EDCE7B00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v23 = sub_1C6D79560();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C6D7A1B0();
  __break(1u);
  return result;
}

void *sub_1C6C25AB0()
{
  v1 = v0;
  sub_1C6C07A2C(0, &qword_1EDCEA490, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1C6D79D10();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6C25C18()
{
  v1 = v0;
  sub_1C6C07A2C(0, &qword_1EC1D7AB0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v2 = *v0;
  v3 = sub_1C6D79D10();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6C25D90(uint64_t (*a1)(void), void (*a2)(void, double))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v26 - v9;
  a2(0, v8);
  v11 = *v2;
  v12 = sub_1C6D79D10();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v4;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v6 + 32;
    for (i = v6 + 16; v20; result = (*(v6 + 32))(*(v13 + 48) + v25, v10, v5))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v6 + 72) * (v22 | (v17 << 6));
      (*(v6 + 16))(v10, *(v11 + 48) + v25, v5);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v13;
  }

  return result;
}

uint64_t sub_1C6C25FC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C6C07A2C(0, &qword_1EDCEA490, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  result = sub_1C6D79D20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C6D7A260();

      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C6C26208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C6C07A2C(0, &qword_1EC1D7AB0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  result = sub_1C6D79D20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x1CCA56710](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C6C26408(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1C6D783E0();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1C6C07864(0);
  v8 = sub_1C6D79D20();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1C6C26D94(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
      result = sub_1C6D79500();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1C6C26718(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1C6D75DE0();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1C6C26D00(0);
  v8 = sub_1C6D79D20();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      result = sub_1C6D79500();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1C6C26A28(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1C6B1E6A8(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1C6C26B48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B1A4E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C26BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B1A4E4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C26C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C26CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6C26D00(uint64_t a1)
{
  if (!qword_1EDCE6510)
  {
    sub_1C6D75DE0();
    sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1C6D79D40();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6510);
    }
  }
}

uint64_t sub_1C6C26D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C6C26E00()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  result = *v0;
  switch(*v0)
  {
    case 1:
      result = 0x636E75614C707061;
      break;
    case 2:
      result = 0x6570697773;
      break;
    case 3:
      result = 0x656E696C64616568;
      break;
    case 4:
      result = 0x7061546575737369;
      break;
    case 5:
      result = 0x6B6E696C70656564;
      break;
    case 6:
      result = 0x6E6164726F666661;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6976614E72657375;
      break;
    case 9:
      result = 0x61646F4D6E65706FLL;
      break;
    case 0xALL:
      result = 0x6369747241636F74;
      break;
    case 0xBLL:
      result = 0x6163696669746F6ELL;
      break;
    case 0xCLL:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6C26FA4(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_1C6D783E0() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_1C6C27088(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t FCReadonlyPersonalizationAggregateStore.lookupAll()()
{
  v1 = [v0 allAggregates];
  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v2 = sub_1C6D79490();

  return v2;
}

uint64_t FCReadonlyPersonalizationAggregateStore.lookup(with:option:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = a1;
  return sub_1C6C27088(MEMORY[0x1E69E7CC8], sub_1C6C275D4, v3, a1);
}

uint64_t sub_1C6C272A0(uint64_t *a1, uint64_t *a2, void *a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v32 = a1;
  v31 = a4;
  v6 = sub_1C6D77050();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BAB388(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a2;
  v16 = a2[1];
  v18 = sub_1C6D79570();
  v19 = [a3 aggregateForFeatureKey_];

  if (v19)
  {

    return sub_1C6BC214C(v19, v17, v16);
  }

  else
  {
    v21 = v30;
    (*(v12 + 16))(v15, v31, v11);
    result = (*(v12 + 88))(v15, v11);
    if (result == *MEMORY[0x1E69E3220])
    {
      (*(v12 + 96))(v15, v11);
      v31 = *v15;
      sub_1C6D77030();
      v22 = sub_1C6D76FE0();
      v24 = v23;
      (*(v21 + 8))(v9, v6);
      if (v17 == v22 && v16 == v24)
      {

        v27 = v32;
      }

      else
      {
        v26 = sub_1C6D7A130();

        v27 = v32;
        if ((v26 & 1) == 0)
        {
        }
      }

      v31(&v33, v17, v16);

      v28 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v27;
      sub_1C6BC55B8(v28, v17, v16, isUniquelyReferenced_nonNull_native);

      *v27 = v33;
    }

    else if (result != *MEMORY[0x1E69E3228])
    {
      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

id sub_1C6C275FC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, double a3@<D0>, double a4@<D1>)
{
  result = _sSo39FCReadonlyPersonalizationAggregateStoreC04NewsB0E06createC03for6clicks11impressionsSo019NTPBPersonalizationC0CSS_S2dtF_0(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_1C6C27624(uint64_t a1, uint64_t a2)
{
  v4[2] = *v2;
  v4[3] = a2;
  v4[4] = a1;
  return sub_1C6C27088(MEMORY[0x1E69E7CC8], sub_1C6C277E8, v4, a1);
}

id _sSo39FCReadonlyPersonalizationAggregateStoreC04NewsB0E06createC03for6clicks11impressionsSo019NTPBPersonalizationC0CSS_S2dtF_0(uint64_t a1, double a2, double a3)
{
  v5 = sub_1C6D77050();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77030();
  sub_1C6D76FE0();
  (*(v6 + 8))(v9, v5);

  result = [objc_allocWithZone(MEMORY[0x1E69B6EE8]) init];
  if (result)
  {
    v11 = result;
    v12 = sub_1C6D79570();
    [v11 setFeatureKey_];

    [v11 setClicks_];
    [v11 setImpressions_];
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6C27800(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v33[1] = a2;
  v8 = sub_1C6D77E00();
  v33[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C27C58(0);
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
      sub_1C6C27CEC(&qword_1EC1D7FC8, MEMORY[0x1E69B4AC0], MEMORY[0x1E69B4AD0]);
      v26 = v34;
      sub_1C6D75AF0();
      a5[3] = v8;
      v28 = MEMORY[0x1E69B4AC0];
      a5[4] = sub_1C6C27CEC(&qword_1EC1D7FD0, MEMORY[0x1E69B4AC0], &protocol conformance descriptor for AudioEngagementCompletedEvent.Model);
      a5[5] = sub_1C6C27CEC(&qword_1EC1D7FD8, v28, &protocol conformance descriptor for AudioEngagementCompletedEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a5);
      (*(v33[0] + 32))(boxed_opaque_existential_2, v26, v8);
      sub_1C6B1C9F0(v23, v25);
      v30 = *MEMORY[0x1E69E3618];
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

void sub_1C6C27C58(uint64_t a1)
{
  if (!qword_1EDCE6038)
  {
    sub_1C6D77E10();
    sub_1C6C27CEC(&qword_1EDCE5E60, MEMORY[0x1E69B4AD8], MEMORY[0x1E69B4AA8]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6038);
    }
  }
}

uint64_t sub_1C6C27CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PackageService.__allocating_init(resourceService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C6B15E34(a1, v2 + 16);
  return v2;
}

uint64_t PackageService.fetchPackages(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1C6D75DE0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Package(0);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6C27ECC, 0, 0);
}

uint64_t sub_1C6C27ECC()
{
  v11 = v0;
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  v2 = *(v1 + 16);
  if (v2 && (v3 = v0[3], v4 = sub_1C6B6732C(v2, 0), v9 = sub_1C6B67FC8(&v10, v4 + 4, v2, v3), v5 = v10, , v6 = sub_1C6B688C4(v5), v9 != v2))
  {
    __break(1u);
  }

  else
  {
    v0[13] = sub_1C6D793A0();

    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_1C6C28044;
    v6 = (v0 + 2);
  }

  return MEMORY[0x1EEE44EE0](v6);
}

uint64_t sub_1C6C28044()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1C6C2853C;
  }

  else
  {

    v2 = sub_1C6C28160;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void *sub_1C6C28160()
{
  v1 = v0[2];
  v46 = v0[10];
  v47 = v0[11];
  v45 = v0[9];
  v2 = v0[6];
  sub_1C6C28984(0);
  result = sub_1C6D79EF0();
  v4 = result;
  v5 = 0;
  v6 = *(v1 + 64);
  v39 = v1 + 64;
  v50 = v1;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v43 = (v2 + 16);
  v44 = (v2 + 32);
  v41 = result + 8;
  v42 = (v2 + 8);
  v48 = result;
  v40 = v10;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v12 = (v9 - 1) & v9;
LABEL_10:
      v15 = v11 | (v5 << 6);
      v16 = (*(v50 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v50 + 56) + 8 * v15);

      v20 = v19;
      v21 = [v20 fileURL];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v51 = v12;
      v23 = v49[11];
      v52 = v49[12];
      v53 = v17;
      v24 = v49[7];
      v25 = v49[8];
      v26 = v49[5];
      sub_1C6D75D90();

      (*v44)(v25, v24, v26);
      v27 = [v20 resourceID];
      v28 = sub_1C6D795A0();
      v30 = v29;

      *v23 = v28;
      *(v47 + 8) = v30;
      (*v43)(v23 + *(v45 + 20), v25, v26);
      v31 = (v23 + *(v45 + 24));
      v31[3] = sub_1C6C28A40();
      *v31 = v20;
      v32 = v25;
      v4 = v48;
      (*v42)(v32, v26);
      sub_1C6C28A8C(v23, v52);
      *(v41 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v33 = (v48[6] + 16 * v15);
      *v33 = v53;
      v33[1] = v18;
      result = sub_1C6C28A8C(v52, v48[7] + *(v46 + 72) * v15);
      v34 = v48[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      v48[2] = v36;
      v10 = v40;
      v9 = v51;
      if (!v51)
      {
        goto LABEL_5;
      }
    }

    sub_1C6C289EC();
    swift_allocError();
    swift_willThrow();

    v38 = v49[1];

    return v38();
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = *(v39 + 8 * v5);
      ++v13;
      if (v14)
      {
        v11 = __clz(__rbit64(v14));
        v12 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    v37 = v49[1];

    return v37(v4);
  }
}

uint64_t sub_1C6C2853C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for Package(uint64_t a1)
{
  result = qword_1EDCE8060;
  if (!qword_1EDCE8060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PackageService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C28688(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6C28720;

  return PackageService.fetchPackages(for:)(a1);
}

uint64_t sub_1C6C28720(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t Package.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Package.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Package(0) + 20);
  v4 = sub_1C6D75DE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Package.interestToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Package(0) + 24);

  return sub_1C6C28AF0(v3, a1);
}

uint64_t sub_1C6C28910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6D75DE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1C6C28984(uint64_t a1)
{
  if (!qword_1EDCE64E0)
  {
    type metadata accessor for Package(255);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE64E0);
    }
  }
}

unint64_t sub_1C6C289EC()
{
  result = qword_1EC1D7FE0;
  if (!qword_1EC1D7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7FE0);
  }

  return result;
}

unint64_t sub_1C6C28A40()
{
  result = qword_1EDCE7F20;
  if (!qword_1EDCE7F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCE7F20);
  }

  return result;
}

uint64_t sub_1C6C28A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Package(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C28AF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6C28B80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Package(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6C28C18(uint64_t a1)
{
  result = sub_1C6D75DE0();
  if (v2 <= 0x3F)
  {
    result = sub_1C6B10D00();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C6C28CC0()
{
  result = qword_1EC1D7FE8;
  if (!qword_1EC1D7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7FE8);
  }

  return result;
}

void sub_1C6C28D14(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1C6C290F4(0, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23[-v11];
  v13 = *(a1 + 24);
  v14 = OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_features;
  swift_beginAccess();
  sub_1C6C29224(v2 + v14, v12);
  v15 = sub_1C6D78810();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_1C6C292B8(v12);
    v17 = [v13 eventAggregationConfiguration];
    if (v17)
    {
      v18 = v17;
      v19 = v2;
      v20 = sub_1C6BA9F44(a2, v17);
      (*(v16 + 16))(v8, a2, v15);
      (*(v16 + 56))(v8, 0, 1, v15);
      swift_beginAccess();
      sub_1C6C29398(v8, v19 + v14);
      swift_endAccess();
      v21 = v19 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_eventHistoryCount;
      os_unfair_lock_lock((v19 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_eventHistoryCount));
      *(v21 + 8) = v20;
      *(v21 + 16) = 0;
      os_unfair_lock_unlock(v21);
    }

    else
    {
      sub_1C6C29344();
      swift_allocError();
      *v22 = 0;
      swift_willThrow();
    }
  }

  else
  {
    (*(v16 + 32))(a2, v12, v15);
  }
}

uint64_t sub_1C6C28FA8()
{

  sub_1C6C292B8(v0 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_features);

  return swift_deallocClassInstance();
}

void sub_1C6C2901C(uint64_t a1)
{
  sub_1C6C290F4(319, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C6C290F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C29158()
{
  if (!qword_1EDCE65B0)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE65B0);
    }
  }
}

uint64_t sub_1C6C291CC()
{
  v1 = *v0 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_eventHistoryCount;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v1);
  return (v2 > 0) & ~v3;
}

uint64_t sub_1C6C29224(uint64_t a1, uint64_t a2)
{
  sub_1C6C290F4(0, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C292B8(uint64_t a1)
{
  sub_1C6C290F4(0, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6C29344()
{
  result = qword_1EC1D7FF8;
  if (!qword_1EC1D7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7FF8);
  }

  return result;
}

uint64_t sub_1C6C29398(uint64_t a1, uint64_t a2)
{
  sub_1C6C290F4(0, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6C29440()
{
  result = qword_1EC1D8000;
  if (!qword_1EC1D8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8000);
  }

  return result;
}

uint64_t ArticleDislikeEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B80();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleDislikeEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B80();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6C2A900(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleDislikeEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B80();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6C2A900(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleDislikeEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B90();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleDislikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C29BFC(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6C29D08(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77B80();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleDislikeEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77BA0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleDislikeEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77BC0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleDislikeEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77BB0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6C2A640(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77B80();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleDislikeEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77BC0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C2A900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C2A9A0()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B80();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6C2AAA0()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B90();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleDislikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C2ABF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77B80();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6C2AD10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6C2AE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77B80();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6C2AF04()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77BC0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C2B084@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ArticleScoringWork.init(requestID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D75F80();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ArticleScoringWork.requestContext(with:dataProvider:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  if (a1)
  {
    v37 = a3;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    v10 = *(v9 + 16);
    v11 = a1;
    v12 = v10(v8, v9);
    if (qword_1EDCEA920 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6D7E630;
    v14 = *(v12 + 16);
    v15 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = v15;
    *(v13 + 32) = v14;
    sub_1C6D79AC0();
    sub_1C6D78D30("Attempting to score %d items", v34);

    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v18 = (*(v17 + 8))(v16, v17);
    v19 = &selRef_bundleOutputConfiguration;
    if ((v18 & 1) == 0)
    {
      v19 = &selRef_nonBundleOutputConfiguration;
    }

    v35 = [v11 *v19];
    v20 = a2[3];
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v20);
    v22 = (*(v21 + 32))(v35, v20, v21);
    v24 = v23;
    v36 = v12;
    v25 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v25);
    (*(v26 + 24))(v11, v25, v26);
    sub_1C6D75F60();
    sub_1C6B7A158(0);
    v27 = sub_1C6D783E0();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C6D7E630;

    sub_1C6D783C0();
    sub_1C6B68E34(v30);
    swift_setDeallocating();
    (*(v28 + 8))(v30 + v29, v27);
    swift_deallocClassInstance();
    sub_1C6D78790();

    result = type metadata accessor for ArticleScoringWork.Context(0);
    v32 = (v37 + *(result + 20));
    *v32 = v22;
    v32[1] = v24;
    *(v37 + *(result + 24)) = v36;
  }

  else
  {
    sub_1C6C2B55C();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C6C2B55C()
{
  result = qword_1EDCE2370;
  if (!qword_1EDCE2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2370);
  }

  return result;
}

uint64_t ArticleScoringWork.product(with:resultFeatures:)(uint64_t a1)
{
  v3 = sub_1C6D783E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleScoringWork.Context(0);

  sub_1C6D783C0();
  sub_1C6D78810();
  sub_1C6C2C090();
  v9 = sub_1C6D786D0();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v10 = v9;
    (*(v4 + 8))(v7, v3);
    v11 = *(v10 + 16);
    if (v11)
    {
      v31 = MEMORY[0x1E69E7CC0];
      sub_1C6B39260(0, v11, 0);
      v12 = v31;
      v13 = *(v31 + 16);
      v14 = 32;
      do
      {
        v15 = *(v10 + v14);
        v31 = v12;
        v16 = v12[3];
        if (v13 >= v16 >> 1)
        {
          sub_1C6B39260((v16 > 1), v13 + 1, 1);
          v12 = v31;
        }

        v12[2] = v13 + 1;
        *&v12[v13 + 4] = v15;
        v14 += 4;
        ++v13;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    v17 = v12[2];
    v18 = *(a1 + *(v8 + 24));
    if (v17 == *(v18 + 16))
    {
      if (qword_1EDCEA920 != -1)
      {
        swift_once();
      }

      sub_1C6B1D314(0);
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E6530];
      *(v19 + 16) = xmmword_1C6D7E630;
      v21 = MEMORY[0x1E69E65A8];
      *(v19 + 56) = v20;
      *(v19 + 64) = v21;
      *(v19 + 32) = v17;
      sub_1C6D79AC0();
      sub_1C6D78D30("Successfully scored %d items", v29);

      v8 = sub_1C6C2BFB0(v22, v12);
    }

    else
    {

      v31 = 0;
      v32 = 0xE000000000000000;
      sub_1C6D79D50();

      v31 = 0x20646E756F46;
      v32 = 0xE600000000000000;
      v30 = v17;
      v8 = MEMORY[0x1E69E6590];
      v23 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v23);

      MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
      v30 = *(v18 + 16);
      v24 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v24);

      v25 = v31;
      v26 = v32;
      sub_1C6C2B55C();
      swift_allocError();
      *v27 = v25;
      v27[1] = v26;
      swift_willThrow();
    }
  }

  return v8;
}

uint64_t sub_1C6C2B998(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(a1 + *(type metadata accessor for ArticleScoringWork.Context(0) + 24));
  if (v3 == v4[2])
  {
    if (qword_1EDCEA920 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314(0);
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E6530];
    *(v5 + 16) = xmmword_1C6D7E630;
    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v3;
    sub_1C6D79AC0();
    sub_1C6D78D30("Successfully scored %d items", v13);

    v8 = sub_1C6C2BFB0(v4, a2);

    return v8;
  }

  else
  {
    sub_1C6D79D50();

    v10 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v10);

    MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
    v11 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v11);

    sub_1C6C2B55C();
    swift_allocError();
    *v12 = 0x20646E756F46;
    v12[1] = 0xE600000000000000;
    return swift_willThrow();
  }
}

void sub_1C6C2BBC4(void *a1, void *a2, char a3, void *a4)
{
  v8 = a1[2];

  if (!v8 || !a2[2])
  {
    goto LABEL_24;
  }

  v10 = a1[4];
  v9 = a1[5];
  v43 = a1;
  v11 = a2[4];
  v12 = *a4;

  v13 = sub_1C6B5DEA8(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    sub_1C6B6E868(v18, a3 & 1);
    v13 = sub_1C6B5DEA8(v10, v9);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_1C6D7A1C0();
    __break(1u);
  }

  if (a3)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v23 = v13;
  sub_1C6B72BD8();
  v13 = v23;
  if (v19)
  {
LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_29;
  }

LABEL_12:
  v24 = *a4;
  *(*a4 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v25 = (v24[6] + 16 * v13);
  *v25 = v10;
  v25[1] = v9;
  *(v24[7] + 8 * v13) = v11;
  v26 = v24[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v17)
  {
    v24[2] = v27;
    v28 = v43[2];
    if (v28 != 1)
    {
      v19 = v43 + 7;
      v29 = a2 + 5;
      v30 = 1;
      while (v30 < v28)
      {
        v31 = a2[2];
        if (v30 == v31)
        {
          goto LABEL_24;
        }

        if (v30 >= v31)
        {
          goto LABEL_28;
        }

        v10 = *(v19 - 1);
        v9 = *v19;
        v11 = *v29;
        v32 = *a4;

        v33 = sub_1C6B5DEA8(v10, v9);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_25;
        }

        a3 = v34;
        if (v32[3] < v37)
        {
          sub_1C6B6E868(v37, 1);
          v33 = sub_1C6B5DEA8(v10, v9);
          if ((a3 & 1) != (v38 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a3)
        {
          goto LABEL_9;
        }

        v39 = *a4;
        *(*a4 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v40 = (v39[6] + 16 * v33);
        *v40 = v10;
        v40[1] = v9;
        *(v39[7] + 8 * v33) = v11;
        v41 = v39[2];
        v17 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v17)
        {
          goto LABEL_26;
        }

        ++v30;
        v39[2] = v42;
        v28 = v43[2];
        v19 += 2;
        ++v29;
        if (v30 == v28)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_27;
    }

LABEL_24:

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD00000000000001BLL, 0x80000001C6D9F860);
  sub_1C6D79E60();
  MEMORY[0x1CCA55B00](39, 0xE100000000000000);
  sub_1C6D79EB0();
  __break(1u);
}

uint64_t sub_1C6C2BFB0(void *a1, void *a2)
{
  if (a2[2] >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a2[2];
  }

  if (v4)
  {
    sub_1C6C2C290();
    v5 = sub_1C6D79F20();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v7 = v5;

  sub_1C6C2BBC4(a1, a2, 1, &v7);
  return v7;
}

unint64_t sub_1C6C2C090()
{
  result = qword_1EC1D8018;
  if (!qword_1EC1D8018)
  {
    sub_1C6D78810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8018);
  }

  return result;
}

uint64_t sub_1C6C2C160(uint64_t a1)
{
  result = sub_1C6D75F80();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6C2C1F4(uint64_t a1)
{
  sub_1C6D787B0();
  if (v1 <= 0x3F)
  {
    sub_1C6B855D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C2C290()
{
  if (!qword_1EDCEA470)
  {
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA470);
    }
  }
}

id sub_1C6C2C2F0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  [a1 source];
  v6 = FCStringFromNotificationSource();
  v7 = sub_1C6D795A0();
  v9 = v8;

  result = [a1 feedItem];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = [result publisherID];

  if (v12)
  {
    v13 = sub_1C6D795A0();
    v15 = v14;

    if (*(v4 + 16))
    {

      v16 = sub_1C6B5DEA8(v13, v15);
      if (v17)
      {
        v18 = *(*(v4 + 56) + 16 * v16 + 8);
        if (v18)
        {
          v19 = *(v18 + 16);

          if (v19)
          {
            sub_1C6B5DEA8(v7, v9);
          }
        }

        return swift_bridgeObjectRelease_n();
      }
    }
  }

  if (*(v5 + 16))
  {
    sub_1C6B5DEA8(v7, v9);
  }
}

uint64_t NotificationScoringServiceConfiguration.PublisherSourceMultiplier.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C6C2D444(0, &qword_1EC1D8020, sub_1C6C2C75C, &type metadata for NotificationScoringServiceConfiguration.PublisherSourceMultiplier.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2C0();
  if (v2)
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6C2C75C();
    sub_1C6D7A2D0();
    LOBYTE(v17[0]) = 0;
    sub_1C6D79FC0();
    v12 = v11;
    sub_1C6C2CF5C(0, &qword_1EDCE7F70, MEMORY[0x1E69E63B0]);
    v16[7] = 1;
    sub_1C6C2CB48(&qword_1EC1D8030, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
    sub_1C6D79F90();
    (*(v7 + 8))(v10, v6);
    v14 = v17[0];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1C6D7A140();
    v12 = v13;
    __swift_destroy_boxed_opaque_existential_1(v17);
    v14 = 0;
  }

  *a2 = v12;
  a2[1] = v14;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6C2C75C()
{
  result = qword_1EC1D8028;
  if (!qword_1EC1D8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8028);
  }

  return result;
}

unint64_t sub_1C6C2C7B0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C6C2C7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001C6DA0E70 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C6DA0E90 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C6C2C8CC(uint64_t a1)
{
  v2 = sub_1C6C2C75C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C2C908(uint64_t a1)
{
  v2 = sub_1C6C2C75C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationScoringServiceConfiguration.PublisherSourceMultiplier.encode(to:)(void *a1)
{
  sub_1C6C2D444(0, &qword_1EC1D8038, sub_1C6C2C75C, &type metadata for NotificationScoringServiceConfiguration.PublisherSourceMultiplier.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C2C75C();
  sub_1C6D7A300();
  v14 = 0;
  sub_1C6D7A060();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1C6C2CF5C(0, &qword_1EDCE7F70, MEMORY[0x1E69E63B0]);
    sub_1C6C2CB48(&qword_1EDCDFBE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
    sub_1C6D7A030();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C6C2CB48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C6C2CF5C(255, &qword_1EDCE7F70, MEMORY[0x1E69E63B0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NewsPersonalization::NotificationScoringServiceConfiguration __swiftcall NotificationScoringServiceConfiguration.init(publisherSourceMultipliers:sourceMultipliers:)(Swift::OpaquePointer publisherSourceMultipliers, Swift::OpaquePointer sourceMultipliers)
{
  v2->_rawValue = publisherSourceMultipliers._rawValue;
  v2[1]._rawValue = sourceMultipliers._rawValue;
  result.sourceMultipliers = sourceMultipliers;
  result.publisherSourceMultipliers = publisherSourceMultipliers;
  return result;
}

uint64_t NotificationScoringServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1C6C2D444(0, &qword_1EC1D8040, sub_1C6C2CF08, &type metadata for NotificationScoringServiceConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C2CF08();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v15;
  sub_1C6C2CF5C(0, &qword_1EC1D8050, &type metadata for NotificationScoringServiceConfiguration.PublisherSourceMultiplier);
  v16 = 0;
  sub_1C6C2D4AC(&qword_1EC1D8058, sub_1C6C2CFB4, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1C6D79F90();
  v13 = v17;
  if (!v17)
  {
    v13 = sub_1C6B61080(MEMORY[0x1E69E7CC0]);
  }

  sub_1C6C2CF5C(0, &qword_1EDCE7F70, MEMORY[0x1E69E63B0]);
  v16 = 1;
  sub_1C6C2CB48(&qword_1EC1D8030, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
  sub_1C6D79F90();
  v14 = v17;
  if (!v17)
  {
    v14 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  }

  (*(v10 + 8))(v9, v5);
  *v11 = v13;
  v11[1] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6C2CF08()
{
  result = qword_1EC1D8048;
  if (!qword_1EC1D8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8048);
  }

  return result;
}

void sub_1C6C2CF5C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6D794F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C6C2CFB4()
{
  result = qword_1EC1D8060;
  if (!qword_1EC1D8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8060);
  }

  return result;
}

unint64_t sub_1C6C2D008()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1C6C2D044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x80000001C6DA0EB0 == a2;
  if (v6 || (sub_1C6D7A130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C6DA0E90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();

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

uint64_t sub_1C6C2D124(uint64_t a1)
{
  v2 = sub_1C6C2CF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C2D160(uint64_t a1)
{
  v2 = sub_1C6C2CF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationScoringServiceConfiguration.encode(to:)(void *a1)
{
  sub_1C6C2D444(0, &qword_1EC1D8068, sub_1C6C2CF08, &type metadata for NotificationScoringServiceConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C2CF08();

  sub_1C6D7A300();
  v16 = v9;
  v15 = 0;
  sub_1C6C2CF5C(0, &qword_1EC1D8050, &type metadata for NotificationScoringServiceConfiguration.PublisherSourceMultiplier);
  sub_1C6C2D4AC(&qword_1EC1D8070, sub_1C6C2D534, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  v10 = v14;
  sub_1C6D7A090();

  if (!v10)
  {
    v16 = v13;
    v15 = 1;
    sub_1C6C2CF5C(0, &qword_1EDCE7F70, MEMORY[0x1E69E63B0]);
    sub_1C6C2CB48(&qword_1EDCDFBE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
    sub_1C6D7A090();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1C6C2D444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1C6C2D4AC(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C6C2CF5C(255, &qword_1EC1D8050, &type metadata for NotificationScoringServiceConfiguration.PublisherSourceMultiplier);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6C2D534()
{
  result = qword_1EC1D8078;
  if (!qword_1EC1D8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8078);
  }

  return result;
}

uint64_t sub_1C6C2D598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1C6C2D5F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C6C2D678()
{
  result = qword_1EC1D8080;
  if (!qword_1EC1D8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8080);
  }

  return result;
}

unint64_t sub_1C6C2D6D0()
{
  result = qword_1EC1D8088;
  if (!qword_1EC1D8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8088);
  }

  return result;
}

unint64_t sub_1C6C2D728()
{
  result = qword_1EC1D8090;
  if (!qword_1EC1D8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8090);
  }

  return result;
}

unint64_t sub_1C6C2D780()
{
  result = qword_1EC1D8098;
  if (!qword_1EC1D8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8098);
  }

  return result;
}

unint64_t sub_1C6C2D7D8()
{
  result = qword_1EC1D80A0;
  if (!qword_1EC1D80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D80A0);
  }

  return result;
}

unint64_t sub_1C6C2D830()
{
  result = qword_1EC1D80A8;
  if (!qword_1EC1D80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D80A8);
  }

  return result;
}

void *sub_1C6C2D884@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = [result possiblyUnfetchedAppConfiguration];
  swift_unknownObjectRelease();
  if (([v5 respondsToSelector_] & 1) == 0)
  {
    result = swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v6 = [v5 personalizationEventTrackingEnabled];
  result = swift_unknownObjectRelease();
  if ((v6 & 1) == 0)
  {
LABEL_8:
    v7 = 2;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v9 == 2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v8 != 2)
  {
    v7 = v9 & 1 | ((v8 & 1) << 8);
LABEL_9:
    *a2 = v7;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1C6C2DA34(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FE0();
  if (v5 == 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A08(0, qword_1EDCE9BF8, _s7FactoryCMa_0, &off_1EEB69450, type metadata accessor for SessionManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    type metadata accessor for SessionTracker();
    swift_allocObject();
    return sub_1C6CE5020(v5, v3, v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1C6C2DB88(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7FactoryCMa_0();
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B10A98(0, &unk_1EDCE9840, &protocol descriptor for SessionStorageType);
    result = sub_1C6D77FE0();
    if (v6)
    {
      sub_1C6B10A08(0, qword_1EDCE9BF8, _s7FactoryCMa_0, &off_1EEB69450, type metadata accessor for SessionManager);
      v4 = swift_allocObject();
      *(v4 + 64) = 0;
      *(v4 + 16) = v3;
      sub_1C6B15E34(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C2DCA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1C6D79B80();
  v3 = v2;

  _s7FactoryCMa_0();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  *(result + 32) = 6;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_1C6C2DD28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SessionStorage();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &protocol witness table for SessionStorage;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C2DDC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
  v4 = v3;
  result = sub_1C6D77FD0();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for <> SessionDataProvider<A>;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C2DE6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
    result = sub_1C6D77FD0();
    if (result)
    {
      v4 = result;
      type metadata accessor for UserEventHistoryJSONSerializer();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6C2DF80(void *a1@<X0>, SEL *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  v5 = sub_1C6D77FD0();
  if (v5)
  {
    v6 = [v5 possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    if ([v6 respondsToSelector_])
    {
      v7 = [v6 newsPersonalizationConfiguration];
      swift_unknownObjectRelease();
      v8 = [v7 articleEmbeddingsConfiguration];

      v9 = [v8 *a2];
      v10 = [v9 shouldPersist];
    }

    else
    {
      swift_unknownObjectRelease();
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    __break(1u);
  }
}

unint64_t ComputeServiceScoringService.score(tags:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_computeService);
    v3 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_isSubscribed);

    v5 = sub_1C6B1E610(v4);

    v11 = sub_1C6BB25FC(v2, v3, v5);

    sub_1C6C2C290();
    v12 = sub_1C6D79EF0();
    v13 = v12;
    v14 = 0;
    v15 = v11 + 8;
    v16 = 1 << *(v11 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v11[8];
    v19 = (v16 + 63) >> 6;
    v20 = v12 + 64;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_15:
        v24 = v21 | (v14 << 6);
        v25 = (v11[6] + 16 * v24);
        v27 = *v25;
        v26 = v25[1];
        v28 = *(v11[7] + 4 * v24);
        *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (v13[6] + 16 * v24);
        *v29 = v27;
        v29[1] = v26;
        *(v13[7] + 8 * v24) = v28;
        v30 = v13[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          break;
        }

        v13[2] = v32;

        if (!v18)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {

          return v13;
        }

        v23 = v15[v14];
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v18 = (v23 - 1) & v23;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
    swift_once();
    v6 = qword_1EDCEA540;
    v7 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C6D7E630;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1C6B2064C();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1C6D78D30("Unable to build and call subgraph computation: %{public}@", 57, 2, &dword_1C6B09000, v6, v7, v8, v15);

    v13 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);

    return v13;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];

    return sub_1C6B5F1EC(v9);
  }
}

uint64_t ComputeServiceScoringService.score(items:context:shadowMode:identifiedBy:)(unint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v77) = a3;
  v76 = a2;
  v6 = sub_1C6D783E0();
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArticleScoringWork(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C2EF1C(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v71 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v65 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v28 = a1;
  v30 = &v65 - v29;
  if (!(v28 >> 62))
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  }

  v74 = v28;
  v64 = sub_1C6D79E90();
  v28 = v74;
  if (!v64)
  {
    return sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  }

LABEL_3:
  v65 = v6;
  v66 = v11;
  v67 = v10;
  v68 = v25;
  v74 = v28;
  v75 = v14;
  v31 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_computeService);
  v72 = v4;
  v73 = v31;
  v32 = v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_articleFeaturesFactory;
  v33 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_isSubscribed);
  v34 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_paidAccessChecker);
  v35 = v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_userEmbeddingProvider;
  v36 = type metadata accessor for ArticleScoringWork.Context(0);
  v37 = *(v36 - 8);
  (*(v37 + 56))(v30, 1, 1, v36);
  v38 = sub_1C6D75F70();
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = v76;
  *(&v65 - 10) = v32;
  *(&v65 - 9) = v40;
  *(&v65 - 64) = v33;
  *(&v65 - 7) = v34;
  *(&v65 - 48) = v77 & 1;
  *(&v65 - 5) = v74;
  *(&v65 - 4) = v35;
  *(&v65 - 3) = v30;
  *(&v65 - 2) = v18;
  v41 = v72;
  sub_1C6D784F0();
  if (!v41)
  {
    v42 = v68;
    sub_1C6C2F010(v30, v68);
    v43 = *(v37 + 48);
    result = v43(v42, 1, v36);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v45 = v71;
      sub_1C6C2F010(v30, v71);
      result = v43(v45, 1, v36);
      if (result != 1)
      {

        sub_1C6C2EFB0(v45, type metadata accessor for ArticleScoringWork.Context);
        v46 = v69;
        sub_1C6D783C0();
        sub_1C6BB320C();
        v47 = v67;
        v48 = sub_1C6D786D0();
        (*(v70 + 8))(v46, v65);
        v49 = *(v48 + 16);
        if (v49)
        {
          v77 = v30;
          v79 = MEMORY[0x1E69E7CC0];
          sub_1C6B39260(0, v49, 0);
          v50 = v79;
          v51 = v79[2];
          v52 = 32;
          do
          {
            v53 = *(v48 + v52);
            v79 = v50;
            v54 = v50[3];
            if (v51 >= v54 >> 1)
            {
              sub_1C6B39260((v54 > 1), v51 + 1, 1);
              v50 = v79;
            }

            v50[2] = v51 + 1;
            *&v50[v51 + 4] = v53;
            v52 += 4;
            ++v51;
            --v49;
          }

          while (v49);

          v47 = v67;
          v30 = v77;
        }

        else
        {

          v50 = MEMORY[0x1E69E7CC0];
        }

        v55 = v68;
        v56 = sub_1C6C2B998(v68, v50);
        v57 = v66;
        v63 = v56;

        (*(v57 + 8))(v75, v47);
        sub_1C6C2EFB0(v55, type metadata accessor for ArticleScoringWork.Context);
        sub_1C6C2EFB0(v18, type metadata accessor for ArticleScoringWork);
        sub_1C6C2EFB0(v30, sub_1C6C2EF1C);
        return v63;
      }
    }

    __break(1u);
    return result;
  }

  sub_1C6C2EFB0(v18, type metadata accessor for ArticleScoringWork);
  sub_1C6C2EFB0(v30, sub_1C6C2EF1C);
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  v58 = qword_1EDCEA540;
  v59 = sub_1C6D79AB0();
  sub_1C6B1D314(0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1C6D7E630;
  v79 = 0;
  v80 = 0xE000000000000000;
  v78 = v41;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v61 = v79;
  v62 = v80;
  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = sub_1C6B2064C();
  *(v60 + 32) = v61;
  *(v60 + 40) = v62;
  sub_1C6D78D30("Unable to build and call subgraph computation: %{public}@", 57, 2, &dword_1C6B09000, v58, v59, v60);

  return swift_willThrow();
}

id ComputeServiceScoringService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComputeServiceScoringService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FCNewsTabiFeedPersonalizationConfiguration.articleFeaturesFactoryConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 fullBodyEmbeddingDimension];
  result = [v1 titleEmbeddingDimension];
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t UserEmbeddingProviderType.feature.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  (*(a1 + 8))(&v12);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    sub_1C6C2F074();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6D7E630;
    *(inited + 32) = v4;

    sub_1C6B38474(inited);

    *a2 = v3;
    v6 = *MEMORY[0x1E6996138];
    v7 = sub_1C6D78760();
    v8 = *(v7 - 8);
    (*(v8 + 104))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v10 = sub_1C6D78760();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

void sub_1C6C2EF1C(uint64_t a1)
{
  if (!qword_1EDCE7460)
  {
    type metadata accessor for ArticleScoringWork.Context(255);
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE7460);
    }
  }
}

uint64_t sub_1C6C2EFB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C2F010(uint64_t a1, uint64_t a2)
{
  sub_1C6C2EF1C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C6C2F074()
{
  if (!qword_1EDCE7CF0)
  {
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7CF0);
    }
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(uint64_t a1)
{
  result = qword_1EDCE34E0;
  if (!qword_1EDCE34E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6C2F3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6C2F54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.metadata.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C2FBEC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8138);
  __swift_project_value_buffer(v0, qword_1EC1D8138);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A20 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8138);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C2FF0C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C2FF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C309B8(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C3005C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C3005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6C309B8(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  sub_1C6C309B8(&qword_1EC1D8150, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C30338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C309B8(&qword_1EC1D8168, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C303B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A20 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8138);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C3045C(uint64_t a1)
{
  v2 = sub_1C6C309B8(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C304C8(uint64_t a1, uint64_t a2)
{
  sub_1C6C309B8(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventTrackVisitedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B3FB88(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0) + 24);
  v19 = *(v14 + 48);
  sub_1C6B3E190(a1 + v18, v17);
  sub_1C6B3E190(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6C309B8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v19], v8);
  v23 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C309B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = sub_1C6D789A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(uint64_t a1)
{
  result = qword_1EDCE2C38;
  if (!qword_1EDCE2C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.vendedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6B823A4(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t sub_1C6C30C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6B823A4(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6C30DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0) + 24);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.vendedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0) + 24);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.vendedAt.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
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
  v10 = sub_1C6D789A0();
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B83274;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.hasVendedAt.getter()
{
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6B823A4(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.clearVendedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0) + 24);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C314AC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8170);
  __swift_project_value_buffer(v0, qword_1EC1D8170);
  sub_1C6C3240C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "vended_at";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A28 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C317C4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C317C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6D789A0();
  sub_1C6C32470(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C31914(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C31914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6B823A4(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B82438(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6C32470(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6C32470(&qword_1EC1D8188, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C31BB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = sub_1C6D789A0();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6C31C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C32470(&qword_1EC1D81A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C31D04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A28 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C31DAC(uint64_t a1)
{
  v2 = sub_1C6C32470(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C31E18(uint64_t a1, uint64_t a2)
{
  sub_1C6C32470(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B48Storage_CompressedSessionEventNotificationVendedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  sub_1C6B85620(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  v18 = *(v26 + 24);
  v19 = *(v14 + 48);
  sub_1C6B823A4(a1 + v18, v17);
  sub_1C6B823A4(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B82438(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6C32470(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B823A4(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1C6B856B4(v17);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6C32470(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v23 = sub_1C6D79560();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1C6B82438(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6C32348(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6C3240C(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C3240C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C32470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(uint64_t a1)
{
  result = qword_1EDCE4648;
  if (!qword_1EDCE4648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C32724()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D81A8);
  __swift_project_value_buffer(v0, qword_1EC1D81A8);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "tag_id";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagUnfollowed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A30 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D81A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6D78CC0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagUnfollowed.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  sub_1C6D78A40();
  sub_1C6C32FC8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  sub_1C6C32FC8(&qword_1EC1D81C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C32BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C32FC8(&qword_1EC1D81E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C32C34@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A30 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D81A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C32CDC(uint64_t a1)
{
  v2 = sub_1C6C32FC8(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C32D48(uint64_t a1, uint64_t a2)
{
  sub_1C6C32FC8(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);

  return sub_1C6D78C20();
}

uint64_t sub_1C6C32EE4(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6C32FC8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C32FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1C6C33010(char *result, char *a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v12[2] = a3;
  v6 = v5;
  v12[0] = result;
  v12[1] = a2;
  v7 = *(a4 + 16);
  if (v7)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v11 = *i;

      sub_1C6C34C90(v12, v10, v11, a5);
      if (v6)
      {
        break;
      }

      if (!--v7)
      {
        return v12[0];
      }
    }
  }

  return result;
}

char *sub_1C6C330C8(char *result, char *a2, uint64_t a3, uint64_t *a4)
{
  v11[1] = a2;
  v5 = v4;
  v11[0] = result;
  v6 = *(a3 + 16);
  if (v6)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;

      sub_1C6C34FE8(v11, v9, v10, a4);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return v11[0];
      }
    }
  }

  return result;
}

uint64_t sub_1C6C33174(uint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 48); ; i += 3)
  {
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;

    v9 = v8;
    v10 = [v9 cohortWithPreferredType_];
    if (v10)
    {
      break;
    }

LABEL_4:

    if (!--v3)
    {
      return result;
    }
  }

  v11 = v10;
  v32 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = a3;
  v14 = *a3;
  v15 = v7;
  v16 = sub_1C6B5DEA8(v7, v6);
  v18 = v14[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (!v20)
  {
    v22 = v17;
    if (v14[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v16;
        sub_1C6B736AC();
        v16 = v27;
        v24 = v14;
        if (v22)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_1C6B6FCB4(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1C6B5DEA8(v15, v6);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_20;
      }
    }

    v24 = v14;
    if (v22)
    {
LABEL_12:
      v25 = v24[7];
      v26 = *(v25 + 8 * v16);
      *(v25 + 8 * v16) = v11;

LABEL_16:
      a3 = v13;
      *v13 = v24;

      goto LABEL_4;
    }

LABEL_14:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v28 = (v24[6] + 16 * v16);
    *v28 = v15;
    v28[1] = v6;
    *(v24[7] + 8 * v16) = v11;
    v29 = v24[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_19;
    }

    v24[2] = v30;
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C33364(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a2;
    v25 = *a2;
    *a2 = 0x8000000000000000;
    v12 = sub_1C6B5DEA8(v8, v7);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_1C6B6FC98(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1C6B5DEA8(v8, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v20 = v25;
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v24 = v12;
    sub_1C6B73690();
    v12 = v24;
    v20 = v25;
    if (v18)
    {
LABEL_3:
      v5 = v20[7];
      v6 = *(v5 + 8 * v12);
      *(v5 + 8 * v12) = v9;

      goto LABEL_4;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v8;
    v21[1] = v7;
    *(v20[7] + 8 * v12) = v9;
    v22 = v20[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_17;
    }

    v20[2] = v23;

LABEL_4:
    *a2 = v20;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C33510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, float a6@<W5>, uint64_t a7@<X8>)
{
  v171 = a6;
  v170 = a5;
  v168 = a3;
  v167 = a1;
  sub_1C6C35754(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v169 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v163 = &v143 - v15;
  v164 = sub_1C6D75F50();
  v16 = *(v164 - 8);
  v18 = MEMORY[0x1EEE9AC00](v164, v17);
  v144 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a4 topicIDs];
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v20;
    v23 = sub_1C6D79780();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1C6C0861C(a2, v23);

  v25 = [a4 itemID];
  v166 = sub_1C6D795A0();
  v165 = v26;

  v27 = sub_1C6C0861C(a2, v24);

  v28 = *(v27 + 16);
  if (v28 != a2)
  {
    if (__OFSUB__(a2, v28))
    {
LABEL_76:
      __break(1u);

      __break(1u);
      return result;
    }

    v29 = sub_1C6BFE220(0, 0xE000000000000000, a2 - v28);
    aBlock = v27;
    sub_1C6B38560(v29);
    v27 = aBlock;
  }

  v30 = [a4 publisherID];
  if (v30)
  {
    v31 = v30;
    v162 = sub_1C6D795A0();
    v161 = v32;
  }

  else
  {
    v162 = 0;
    v161 = 0xE000000000000000;
  }

  if ([a4 respondsToSelector_])
  {
    v33 = [a4 bodyTextLength];
    if (v33 == v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v159 = v34;
  }

  else
  {
    v159 = 0;
  }

  v158 = ([a4 respondsToSelector_] & 1) != 0 && (objc_msgSend(a4, sel_hasAudioTrack) & 1) != 0;
  v157 = ([a4 respondsToSelector_] & 1) != 0 && (objc_msgSend(a4, sel_isFeatured) & 1) != 0;
  v156 = [a4 isANF];
  v155 = [a4 isPaid];
  v154 = [a4 hasVideo];
  v153 = ([a4 respondsToSelector_] & 1) != 0 && (objc_msgSend(a4, sel_isAIGenerated) & 1) != 0;
  v35 = [a4 globalCohorts];
  v36 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  v160 = v16;
  if (!v35)
  {
    v183 = 0u;
    v184 = 0u;
    AssociatedConformanceWitness = 0;
LABEL_35:
    sub_1C6C357AC(&v183);
    v152 = 0.0;
    v151 = 0.0;
    v150 = 0.0;
    goto LABEL_36;
  }

  v37 = v35;
  v181 = sub_1C6B0C69C(0, &qword_1EDCE7D80, 0x1E69B6CA0);
  v182 = &off_1EDCE7D88;
  v180.i64[0] = v37;
  v38 = __swift_project_boxed_opaque_existential_1(&v180, v181);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_1C6D79C00();
  v41 = *(v40 - 8);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v45 = (&v143 - v44);
  *v45 = [*v38 (v46 + 1118)];
  v47 = *(AssociatedTypeWitness - 8);
  if ((*(v47 + 48))(v45, 1, AssociatedTypeWitness) == 1)
  {
    (*(v41 + 8))(v45, v40);
    AssociatedConformanceWitness = 0;
    v184 = 0u;
    v183 = 0u;
  }

  else
  {
    *(&v184 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v183);
    (*(v47 + 32))(boxed_opaque_existential_2, v45, AssociatedTypeWitness);
  }

  __swift_destroy_boxed_opaque_existential_1(&v180);
  v21 = MEMORY[0x1E69E7CC0];
  v36 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  if (!*(&v184 + 1))
  {
    goto LABEL_35;
  }

  sub_1C6B15E34(&v183, &aBlock);
  v49 = v176;
  v50 = v177;
  __swift_project_boxed_opaque_existential_1(&aBlock, v176);
  v51 = (*(v50 + 1))(v49, v50);
  v152 = v51;
  v52 = v176;
  v53 = v177;
  __swift_project_boxed_opaque_existential_1(&aBlock, v176);
  v54 = (*(v53 + 2))(v52, v53);
  v151 = v54;
  v55 = v176;
  v56 = v177;
  __swift_project_boxed_opaque_existential_1(&aBlock, v176);
  v57 = (*(v56 + 3))(v55, v56);
  v150 = v57;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_36:
  v58 = [a4 publisherCohorts];
  v59 = 0.0;
  v60 = 0.0;
  v61 = 0.0;
  v62 = 0.0;
  if (v58)
  {
    v63 = v36[462];
    v64 = v58;
    v65 = (LOBYTE(v171) & 1) != 0 ? [v58 v63] : objc_msgSend(v58, v63, 0);
    v66 = v65;

    if (v66)
    {
      [v66 clicks];
      v60 = v67;
      [v66 rawClicks];
      v61 = v68;
      [v66 impressions];
      v70 = v69;

      v62 = v70;
    }
  }

  v71 = MEMORY[0x1E69E7CC8];
  v179 = MEMORY[0x1E69E7CC8];
  v72 = swift_allocObject();
  *(v72 + 16) = v21;
  v73 = (v72 + 16);
  v177 = sub_1C6C35834;
  v178 = v72;
  aBlock = MEMORY[0x1E69E9820];
  v174 = 1107296256;
  v175 = sub_1C6BB25F8;
  v176 = &block_descriptor_5;
  v74 = _Block_copy(&aBlock);

  [a4 enumerateTopicCohortsWithBlock_];
  _Block_release(v74);
  swift_beginAccess();
  v75 = *v73;

  v25 = 0;
  sub_1C6C33174(v75, LOBYTE(v171) & 1, &v179);

  v76 = sub_1C6C33010(v21, v21, v21, v27, &v179);
  v148 = v77;
  v147 = v78;
  v79 = [a4 globalConversionStats];
  v80 = 0.0;
  if (v79)
  {
    v81 = v79;
    [v79 conversions];
    v59 = v82;
    [v81 impressions];
    v84 = v83;

    v80 = v84;
  }

  v171 = v59;
  v85 = [a4 publisherConversionStats];
  v149 = v76;
  if (v85)
  {
    v86 = v85;
    [v85 conversions];
    v88 = v87;
    [v86 impressions];
    v90 = v89;

    v91 = v90;
  }

  else
  {
    v88 = 0.0;
    v91 = 0.0;
  }

  v172[0] = v71;
  v92 = swift_allocObject();
  *(v92 + 16) = v21;
  v93 = (v92 + 16);
  v177 = sub_1C6C35864;
  v178 = v92;
  aBlock = MEMORY[0x1E69E9820];
  v174 = 1107296256;
  v175 = sub_1C6BB25F8;
  v176 = &block_descriptor_9;
  v94 = _Block_copy(&aBlock);

  [a4 enumerateTopicConversionStatsWithBlock_];
  _Block_release(v94);
  swift_beginAccess();
  v95 = *v93;

  sub_1C6C33364(v95, v172);

  v96 = sub_1C6C330C8(v21, v21, v27, v172);
  v146 = v97;
  v98 = sub_1C6C35248(a4);
  v180.i64[0] = v21;
  v180.i64[1] = v21;
  v99 = *(v27 + 16);
  if (v99)
  {
    v143 = v96;
    v100 = 0;
    v101 = (v27 + 40);
    while (v100 < *(v27 + 16))
    {
      v103 = *(v101 - 1);
      v102 = *v101;

      sub_1C6C354F4(&v180, v103, v102, v98);

      ++v100;
      v101 += 2;
      if (v99 == v100)
      {
        v145 = v180;
        v96 = v143;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  v145 = vdupq_n_s64(v21);
LABEL_53:

  v104 = [a4 publisherTagMetadata];
  v105 = v160;
  if (!v104)
  {
    goto LABEL_57;
  }

  v106 = v104;
  v107 = [v104 contentAndRelevanceInfo];
  if (!v107)
  {

LABEL_57:
    v109 = 0;
    v111 = 0;
    goto LABEL_58;
  }

  v108 = v107;
  v109 = sub_1C6C34A10();
  v110 = sub_1C6C34B50();

  v111 = v110;
LABEL_58:
  v112 = [a4 publishDate];
  v113 = v164;
  v114 = v169;
  if (v112)
  {
    v115 = v112;
    sub_1C6D75F20();

    v114 = v169;
    v116 = 0;
  }

  else
  {
    v116 = 1;
  }

  (*(v105 + 56))(v114, v116, 1, v113);
  v117 = v114;
  v118 = v163;
  sub_1C6C35894(v117, v163);
  if ((*(v105 + 48))(v118, 1, v113) == 1)
  {
    sub_1C6C358F8(v118);
    v119 = 0.0;
  }

  else
  {
    v120 = v144;
    (*(v105 + 32))(v144, v118, v113);
    sub_1C6D75F10();
    v122 = v121;
    (*(v105 + 8))(v120, v113);
    v119 = v122;
  }

  if ([a4 respondsToSelector_])
  {
    v123 = [a4 float16TitleEncoding];
    if (v123)
    {
      v124 = v123;
      v169 = sub_1C6D75E60();
      v126 = v125;
    }

    else
    {
      v169 = 0;
      v126 = 0xF000000000000000;
    }
  }

  else
  {
    v169 = 0;
    v126 = 0xB000000000000000;
  }

  if ([a4 respondsToSelector_])
  {
    v127 = [a4 float16FullBodyEncoding];
    if (v127)
    {
      v128 = v111;
      v129 = v109;
      v130 = v96;
      v131 = v127;
      v132 = sub_1C6D75E60();
      v134 = v133;

      v96 = v130;
      v109 = v129;
      v111 = v128;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v132 = 0;
      v134 = 0xF000000000000000;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v132 = 0;
    v134 = 0xB000000000000000;
  }

  v135 = v170 & 1;

  v137 = v165;
  *a7 = v166;
  *(a7 + 8) = v137;
  v138 = v162;
  *(a7 + 16) = v27;
  *(a7 + 24) = v138;
  *(a7 + 32) = v161;
  LODWORD(v138) = v158;
  *(a7 + 40) = v159;
  *(a7 + 44) = v138;
  LODWORD(v138) = v156;
  *(a7 + 48) = v157;
  *(a7 + 52) = v138;
  *(a7 + 56) = v155;
  *(a7 + 60) = v135;
  LODWORD(v138) = v153;
  *(a7 + 64) = v154;
  *(a7 + 68) = v138;
  v139 = v151;
  *(a7 + 72) = v152;
  *(a7 + 76) = v139;
  *(a7 + 80) = v150;
  *(a7 + 84) = v60;
  *(a7 + 88) = v61;
  *(a7 + 92) = v62;
  v140 = v148;
  *(a7 + 96) = v149;
  *(a7 + 104) = v140;
  *(a7 + 112) = v147;
  *(a7 + 120) = v171;
  *(a7 + 124) = v80;
  *(a7 + 128) = v88;
  *(a7 + 132) = v91;
  v141 = v146;
  *(a7 + 136) = v96;
  *(a7 + 144) = v141;
  *(a7 + 152) = v119;
  *(a7 + 156) = v109;
  *(a7 + 160) = v111;
  *(a7 + 168) = v145;
  v142 = v167;
  *(a7 + 184) = v168;
  *(a7 + 192) = v142;
  *(a7 + 200) = v169;
  *(a7 + 208) = v126;
  *(a7 + 216) = v132;
  *(a7 + 224) = v134;
  return result;
}

__n128 sub_1C6C344E0@<Q0>(id a1@<X2>, void *a2@<X0>, int a3@<W1>, float a4@<W3>, uint64_t a5@<X8>)
{
  v10 = [a1 fullBodyEmbeddingDimension];
  v11 = [a1 maxTopicIds];
  v12 = [a1 titleEmbeddingDimension];
  swift_unknownObjectRetain();
  sub_1C6C33510(v10, v11, v12, a2, a3, a4, v20);
  swift_unknownObjectRelease();

  v13 = v20[13];
  *(a5 + 192) = v20[12];
  *(a5 + 208) = v13;
  *(a5 + 224) = v21;
  v14 = v20[9];
  *(a5 + 128) = v20[8];
  *(a5 + 144) = v14;
  v15 = v20[11];
  *(a5 + 160) = v20[10];
  *(a5 + 176) = v15;
  v16 = v20[5];
  *(a5 + 64) = v20[4];
  *(a5 + 80) = v16;
  v17 = v20[7];
  *(a5 + 96) = v20[6];
  *(a5 + 112) = v17;
  v18 = v20[1];
  *a5 = v20[0];
  *(a5 + 16) = v18;
  result = v20[3];
  *(a5 + 32) = v20[2];
  *(a5 + 48) = result;
  return result;
}

__n128 ArticleFeatures.init(item:bundlePaid:fullBodyEmbeddingDimension:maxTopicIds:titleEmbeddingDimension:)@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1C6C33510(a3, a4, a5, a1, a2, 0.0, v14);
  v7 = v14[13];
  *(a6 + 192) = v14[12];
  *(a6 + 208) = v7;
  *(a6 + 224) = v15;
  v8 = v14[9];
  *(a6 + 128) = v14[8];
  *(a6 + 144) = v8;
  v9 = v14[11];
  *(a6 + 160) = v14[10];
  *(a6 + 176) = v9;
  v10 = v14[5];
  *(a6 + 64) = v14[4];
  *(a6 + 80) = v10;
  v11 = v14[7];
  *(a6 + 96) = v14[6];
  *(a6 + 112) = v11;
  v12 = v14[1];
  *a6 = v14[0];
  *(a6 + 16) = v12;
  result = v14[3];
  *(a6 + 32) = v14[2];
  *(a6 + 48) = result;
  return result;
}

__n128 ArticleFeatures.init(item:bundlePaid:fullBodyEmbeddingDimension:maxTopicIds:titleEmbeddingDimension:isSubscribed:)@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, float a6@<W5>, uint64_t a7@<X8>)
{
  sub_1C6C33510(a3, a4, a5, a1, a2, a6, v15);
  v8 = v15[13];
  *(a7 + 192) = v15[12];
  *(a7 + 208) = v8;
  *(a7 + 224) = v16;
  v9 = v15[9];
  *(a7 + 128) = v15[8];
  *(a7 + 144) = v9;
  v10 = v15[11];
  *(a7 + 160) = v15[10];
  *(a7 + 176) = v10;
  v11 = v15[5];
  *(a7 + 64) = v15[4];
  *(a7 + 80) = v11;
  v12 = v15[7];
  *(a7 + 96) = v15[6];
  *(a7 + 112) = v12;
  v13 = v15[1];
  *a7 = v15[0];
  *(a7 + 16) = v13;
  result = v15[3];
  *(a7 + 32) = v15[2];
  *(a7 + 48) = result;
  return result;
}

id sub_1C6C34758(void *a1)
{
  result = [a1 topics];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_1C6B0C69C(0, &qword_1EDCEA8F0, 0x1E69B6D00);
  v3 = sub_1C6D79780();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1C6D79E90();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_4:
  v7 = MEMORY[0x1E69E7CC0];
  result = sub_1C6D79DF0();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA56240](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      ++v5;
      sub_1C6D79DC0();
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
    }

    while (v4 != v5);

    return v7;
  }

  return result;
}

uint64_t sub_1C6C348B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *(a4 + 16);

  v11 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a5(0, *(v10 + 16) + 1, 1, v10);
    *(a4 + 16) = v10;
  }

  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    v10 = a5(v13 > 1, v14 + 1, 1, v10);
  }

  *(v10 + 16) = v14 + 1;
  v15 = (v10 + 24 * v14);
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v11;
  *(a4 + 16) = v10;
  return swift_endAccess();
}

id sub_1C6C349CC@<X0>(char a1@<W0>, void *a2@<X8>)
{
  result = [*v2 cohortWithPreferredType_];
  *a2 = result;
  return result;
}

id sub_1C6C34A10()
{
  result = [v0 hasContentRating];
  if (result)
  {
    result = [v0 contentRating];
    if (result >= 6)
    {
      if (qword_1EDCE66F8 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C6D7E630;
      v3 = [v0 contentRating];
      v4 = MEMORY[0x1E69E7358];
      *(v2 + 56) = MEMORY[0x1E69E72F0];
      *(v2 + 64) = v4;
      *(v2 + 32) = v3;
      sub_1C6D78D30("Encountered unknown content rating of %ld", v5);

      return 0;
    }
  }

  return result;
}

id sub_1C6C34B50()
{
  result = [v0 hasRelevanceRating];
  if (result)
  {
    result = [v0 relevanceRating];
    if (result >= 9)
    {
      if (qword_1EDCE66F8 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C6D7E630;
      v3 = [v0 relevanceRating];
      v4 = MEMORY[0x1E69E7358];
      *(v2 + 56) = MEMORY[0x1E69E72F0];
      *(v2 + 64) = v4;
      *(v2 + 32) = v3;
      sub_1C6D78D30("Encountered unknown relevance rating of %ld", v5);

      return 0;
    }
  }

  return result;
}

void sub_1C6C34C90(char **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  if (*(*a4 + 16) && (v6 = sub_1C6B5DEA8(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    [v8 clicks];
    v10 = v9;
    v11 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C6B656C8(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1C6B656C8((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v10;
    *(v11 + 2) = v13 + 1;
    *&v11[4 * v13 + 32] = v14;
    *a1 = v11;
    [v8 rawClicks];
    v16 = v15;
    v17 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1C6B656C8(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1C6B656C8((v18 > 1), v19 + 1, 1, v17);
    }

    v20 = v16;
    *(v17 + 2) = v19 + 1;
    *&v17[4 * v19 + 32] = v20;
    a1[1] = v17;
    [v8 impressions];
    v22 = v21;
    v23 = a1[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1C6B656C8(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1C6B656C8((v24 > 1), v25 + 1, 1, v23);
    }

    v26 = v22;
    *(v23 + 2) = v25 + 1;
    *&v23[4 * v25 + 32] = v26;
    a1[2] = v23;
  }

  else
  {
    v27 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1C6B656C8(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1C6B656C8((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    *&v27[4 * v29 + 32] = 0;
    *a1 = v27;
    v30 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1C6B656C8(0, *(v30 + 2) + 1, 1, v30);
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1C6B656C8((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    *&v30[4 * v32 + 32] = 0;
    a1[1] = v30;
    v33 = a1[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1C6B656C8(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1C6B656C8((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    *&v33[4 * v35 + 32] = 0;
    a1[2] = v33;
  }
}

void sub_1C6C34FE8(char **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  if (*(*a4 + 16) && (v6 = sub_1C6B5DEA8(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    [v8 conversions];
    v10 = v9;
    v11 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C6B656C8(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1C6B656C8((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v10;
    *(v11 + 2) = v13 + 1;
    *&v11[4 * v13 + 32] = v14;
    *a1 = v11;
    [v8 impressions];
    v16 = v15;
    v17 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1C6B656C8(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1C6B656C8((v18 > 1), v19 + 1, 1, v17);
    }

    v20 = v16;
    *(v17 + 2) = v19 + 1;
    *&v17[4 * v19 + 32] = v20;
    a1[1] = v17;
  }

  else
  {
    v21 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1C6B656C8(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1C6B656C8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    *&v21[4 * v23 + 32] = 0;
    *a1 = v21;
    v24 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1C6B656C8(0, *(v24 + 2) + 1, 1, v24);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1C6B656C8((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    *&v24[4 * v26 + 32] = 0;
    a1[1] = v24;
  }
}

unint64_t sub_1C6C35248(void *a1)
{
  v1 = sub_1C6C34758(a1);
  if (!v1)
  {
    v34 = MEMORY[0x1E69E7CC0];

    return sub_1C6B6083C(v34);
  }

  v2 = v1;
  v3 = v1[2];
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC8];
    goto LABEL_26;
  }

  v4 = 0;
  v5 = v3 - 1;
  v6 = MEMORY[0x1E69E7CC8];
  v7 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  while (2)
  {
    v8 = v4;
    while (1)
    {
      if (v8 >= v2[2])
      {
        __break(1u);
        goto LABEL_28;
      }

      v4 = v8 + 1;
      v9 = v2[v8 + 4];
      v10 = [v9 v7[444]];
      if (v10)
      {
        break;
      }

      ++v8;
      if (v3 == v4)
      {
        goto LABEL_26;
      }
    }

    v11 = v6;
    v36 = v5;
    v12 = v10;
    v13 = [v9 tagID];
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = v13;
    v38 = sub_1C6D795A0();
    v16 = v15;

    v37 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1C6B5DEA8(v38, v16);
    v20 = v11[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v24 = v19;
    if (v11[3] < v23)
    {
      sub_1C6B6FC7C(v23, isUniquelyReferenced_nonNull_native);
      v25 = v16;
      v18 = sub_1C6B5DEA8(v38, v16);
      if ((v24 & 1) == (v26 & 1))
      {
        if (v24)
        {
          goto LABEL_14;
        }

LABEL_18:
        v6 = v11;
        v11[(v18 >> 6) + 8] |= 1 << v18;
        v30 = (v11[6] + 16 * v18);
        *v30 = v38;
        v30[1] = v25;
        *(v11[7] + 8 * v18) = v37;

        v31 = v11[2];
        v22 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (!v22)
        {
          v11[2] = v32;
          goto LABEL_20;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      result = sub_1C6D7A1C0();
      __break(1u);
      return result;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = v18;
      sub_1C6B73674();
      v18 = v33;
    }

    v25 = v16;
    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_14:
    v27 = v18;

    v6 = v11;
    v28 = v11[7];
    v29 = *(v28 + 8 * v27);
    *(v28 + 8 * v27) = v37;

LABEL_20:
    v5 = v36;
    v7 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    if (v36 != v8)
    {
      continue;
    }

    break;
  }

LABEL_26:

  return v6;
}

void sub_1C6C354F4(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (v6 = sub_1C6B5DEA8(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(*(a4 + 56) + 8 * v6);
    v9 = sub_1C6C34A10();
    v10 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1C6B65AD8(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1C6B65AD8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    *&v10[4 * v12 + 32] = v9;
    *a1 = v10;
    v13 = sub_1C6C34B50();
    v14 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1C6B65AD8(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1C6B65AD8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[4 * v16 + 32] = v13;
    a1[1] = v14;
  }

  else
  {
    v17 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1C6B65AD8(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1C6B65AD8((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    *&v17[4 * v19 + 32] = 0;
    *a1 = v17;
    v20 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1C6B65AD8(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1C6B65AD8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    *&v20[4 * v22 + 32] = 0;
    a1[1] = v20;
  }
}

void sub_1C6C35754(uint64_t a1)
{
  if (!qword_1EDCEA960)
  {
    sub_1C6D75F50();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA960);
    }
  }
}

uint64_t sub_1C6C357AC(uint64_t a1)
{
  sub_1C6B1A47C(0, &qword_1EDCE74A8, qword_1EDCE74B0, &protocol descriptor for ArticleCohortType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C35894(uint64_t a1, uint64_t a2)
{
  sub_1C6C35754(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C358F8(uint64_t a1)
{
  sub_1C6C35754(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DropboxBundleSubscriptionManager.isSubscribed.getter()
{
  v0 = sub_1C6D78FE0();
  if (objc_getAssociatedObject(v0, (v0 + 1)))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    sub_1C6B79FDC(&v10);
    goto LABEL_9;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v1 = 0;
    v2 = 0;
    goto LABEL_10;
  }

  v1 = v7;
  v2 = [v7 integerValue];
  if (v2 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v0, ~v2))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    sub_1C6B79FDC(&v10);
    goto LABEL_17;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v5 = -16;
    return (v5 ^ v2) & 1;
  }

  v3 = v7;
  v4 = [v3 integerValue];

  v5 = v4 - 16;
  return (v5 ^ v2) & 1;
}

uint64_t sub_1C6C35B24(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);

  v6 = sub_1C6B1E610(v5);

  v7 = (*(v4 + 8))(v6, v3, v4);

  v8 = *(a1 + 16);
  if (v8)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C6D79DF0();
    v9 = (a1 + 40);
    v10 = MEMORY[0x1E69E6158];
    do
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v7 + 16);

      if (v13 && (sub_1C6B5DEA8(v12, v11), (v14 & 1) != 0))
      {
        sub_1C6D79940();
      }

      else
      {
        if (qword_1EC1D5AC8 != -1)
        {
          swift_once();
        }

        v15 = qword_1EC1D85C8;
        sub_1C6B1D314(0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1C6D7E630;
        *(v16 + 56) = v10;
        *(v16 + 64) = sub_1C6B2064C();
        *(v16 + 32) = v12;
        *(v16 + 40) = v11;

        v17 = sub_1C6D79AC0();
        sub_1C6D78D30("Failed to get score for tag %{public}@, returning score of 0.0", 62, 2, &dword_1C6B09000, v15, v17, v16);

        sub_1C6B18500();
        sub_1C6D79B90();
      }

      sub_1C6D79DC0();
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      v9 += 2;
      --v8;
    }

    while (v8);

    return v19;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t ArticleUnlikeEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A80();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleUnlikeEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A80();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6C373F8(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleUnlikeEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A80();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6C373F8(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleUnlikeEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A90();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUnlikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C366F4(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6C36800(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77A80();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleUnlikeEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AA0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUnlikeEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AC0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUnlikeEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AB0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6C37138(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77A80();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleUnlikeEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77AC0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C373F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C37498()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A80();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6C37598()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A90();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUnlikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C376E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77A80();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6C37808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6C37910(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77A80();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6C379FC()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77AC0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C37B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78FA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78F90();
  v9 = sub_1C6D78F80();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  *a1 = v9;
  *(a1 + 8) = v11;
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);

  *(a1 + 24) = v13;
  *(a1 + 32) = v12;
  v15 = *(a2 + 40);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_1C6C37C70()
{

  return swift_deallocClassInstance();
}

void *sub_1C6C37CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C38810(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSession);
  sub_1C6D78C30();
  sub_1C6C389F4(0);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  sub_1C6C38A54(v7, v8 + *(*v8 + 104));

  return v8;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.start(at:)(uint64_t a1)
{
  v21 = a1;
  v20 = sub_1C6D75F50();
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C380BC(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 36);
  sub_1C6B823A4(v1 + v15, v14);
  v16 = (*(v7 + 48))(v14, 1, v6);
  sub_1C6C38858(v14, sub_1C6C380BC);
  if (v16 == 1)
  {
    (*(v2 + 16))(v5, v21, v20);
    sub_1C6D78980();
    sub_1C6C38858(v1 + v15, sub_1C6C380BC);
    (*(v7 + 32))(v1 + v15, v10, v6);
    return (*(v7 + 56))(v1 + v15, 0, 1, v6);
  }

  else
  {
    sub_1C6C38114();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

void sub_1C6C380BC(uint64_t a1)
{
  if (!qword_1EDCE66F0)
  {
    sub_1C6D789A0();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE66F0);
    }
  }
}

unint64_t sub_1C6C38114()
{
  result = qword_1EC1D81F8;
  if (!qword_1EC1D81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D81F8);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.end(at:)(uint64_t a1)
{
  v21 = a1;
  v20 = sub_1C6D75F50();
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C380BC(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 40);
  sub_1C6B823A4(v1 + v15, v14);
  v16 = (*(v7 + 48))(v14, 1, v6);
  sub_1C6C38858(v14, sub_1C6C380BC);
  if (v16 == 1)
  {
    (*(v2 + 16))(v5, v21, v20);
    sub_1C6D78980();
    sub_1C6C38858(v1 + v15, sub_1C6C380BC);
    (*(v7 + 32))(v1 + v15, v10, v6);
    return (*(v7 + 56))(v1 + v15, 0, 1, v6);
  }

  else
  {
    sub_1C6C38114();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

uint64_t Com_Apple_News_Personalization_RecipeSession.serialize()()
{
  v1 = type metadata accessor for Com_Apple_News_Personalization_Envelope(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C380BC(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(v0 + *(v12 + 36), v11);
  v13 = sub_1C6D789A0();
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v11, 1, v13);
  sub_1C6C38858(v11, sub_1C6C380BC);
  if (v15 == 1)
  {
    sub_1C6C38114();
    v16 = swift_allocError();
    v18 = 2;
LABEL_5:
    *v17 = v18;
    v20 = v16;
    swift_willThrow();
    return v20;
  }

  sub_1C6B823A4(v0 + *(v12 + 40), v7);
  v19 = v14(v7, 1, v13);
  sub_1C6C38858(v7, sub_1C6C380BC);
  if (v19 == 1)
  {
    sub_1C6C38114();
    v16 = swift_allocError();
    v18 = 3;
    goto LABEL_5;
  }

  sub_1C6C38810(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSession);
  v20 = v31;
  v22 = sub_1C6D78BF0();
  if (!v20)
  {
    MEMORY[0x1EEE9AC00](v22, v23);
    v25 = v24;
    *(&v29 - 2) = v24;
    *(&v29 - 1) = v26;
    v27 = v26;
    sub_1C6C38810(&qword_1EC1D6F98, type metadata accessor for Com_Apple_News_Personalization_Envelope, &protocol conformance descriptor for Com_Apple_News_Personalization_Envelope);
    v28 = v30;
    sub_1C6D78C30();
    sub_1C6D78BF0();
    sub_1C6C38858(v28, type metadata accessor for Com_Apple_News_Personalization_Envelope);
    sub_1C6B1C9F0(v25, v27);
    v20 = *v0;
  }

  return v20;
}

uint64_t sub_1C6C387AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = 1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1C6B1CD10(v4, v3);
  result = sub_1C6B1C9F0(v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6C38810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C38858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C388B8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1C6C38938()
{
  result = Com_Apple_News_Personalization_RecipeSession.serialize()();
  if (v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_1C6C38978()
{
  result = qword_1EC1D8200;
  if (!qword_1EC1D8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8200);
  }

  return result;
}

void sub_1C6C389F4(uint64_t a1)
{
  if (!qword_1EDCE23C8)
  {
    v2 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(255);
    v4 = type metadata accessor for SessionContainer(a1, v2, &protocol witness table for Com_Apple_News_Personalization_RecipeSession, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDCE23C8);
    }
  }
}

uint64_t sub_1C6C38A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6C38AB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v37[1] = a2;
  v8 = sub_1C6D77700();
  v37[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C38FE4(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D77290();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  (*(v21 + 16))(v37 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    (*(v13 + 8))(v16, v12);
    v22 = sub_1C6D77270();
    v23 = sub_1C6D77330();
    v25 = v24;

    if (!v5)
    {
      sub_1C6C39078(&qword_1EC1D68D8, MEMORY[0x1E69B4708], MEMORY[0x1E69B4718]);
      sub_1C6D75AF0();
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      v27 = qword_1EDCE9830;
      sub_1C6B1D314(0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1C6D7E630;
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1C6D79E60();
      v29 = v38;
      v30 = v39;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1C6B2064C();
      *(v28 + 32) = v29;
      *(v28 + 40) = v30;
      v31 = sub_1C6D79AC0();
      sub_1C6D78D30("Session tracker translated like model %{public}@", 48, 2, &dword_1C6B09000, v27, v31, v28);

      a5[3] = v8;
      v32 = MEMORY[0x1E69B4708];
      a5[4] = sub_1C6C39078(&qword_1EC1D8208, MEMORY[0x1E69B4708], &protocol conformance descriptor for ArticleLikeEvent.Model);
      a5[5] = sub_1C6C39078(&unk_1EC1D8210, v32, &protocol conformance descriptor for ArticleLikeEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a5);
      (*(v37[0] + 32))(boxed_opaque_existential_2, v40, v8);
      sub_1C6B1C9F0(v23, v25);
      v34 = *MEMORY[0x1E69E3630];
      v35 = sub_1C6D76F90();
      v36 = *(v35 - 8);
      (*(v36 + 104))(a5, v34, v35);
      (*(v36 + 56))(a5, 0, 1, v35);
    }
  }

  else
  {
    v26 = sub_1C6D76F90();
    (*(*(v26 - 8) + 56))(a5, 1, 1, v26);
  }
}

void sub_1C6C38FE4(uint64_t a1)
{
  if (!qword_1EDCE60B0)
  {
    sub_1C6D77710();
    sub_1C6C39078(&qword_1EDCE5F78, MEMORY[0x1E69B4720], MEMORY[0x1E69B46F0]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE60B0);
    }
  }
}

uint64_t sub_1C6C39078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C6C390C0(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1C6D79E90();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1CCA56240](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            swift_unknownObjectRelease();

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1C6D79DC0();
          sub_1C6D79E00();
          v5 = v14;
          sub_1C6D79E10();
          v3 = &v18;
          sub_1C6D79DD0();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

uint64_t SportsRecommendedScoredTag.scoreProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsRecommendedScoredTag(0) + 20);
  v4 = sub_1C6D76BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SportsRecommendedScoredTag(uint64_t a1)
{
  result = qword_1EDCE1180;
  if (!qword_1EDCE1180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SportsRecommendedScoredTag.init(tag:scoreProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SportsRecommendedScoredTag(0) + 20);
  v6 = sub_1C6D76BD0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

void *SportsRecommendationResult.clustered(maxClusterSize:diversificationRules:)(unint64_t a1, uint64_t a2)
{
  v116 = a2;
  v138 = sub_1C6D76140();
  v130 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v4);
  v137 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1C6D761A0();
  v6 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v7);
  v135 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SportsRecommendedScoredTag(0);
  v9 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v10);
  v120 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v123 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v127 = &v114 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v126 = (&v114 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v114 - v23);
  v143 = sub_1C6D761D0();
  v25 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v26);
  v133 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v114 - v30;
  sub_1C6C4070C(0, &qword_1EDCE6230, MEMORY[0x1E69E35A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v115 = &v114 - v34;
  v35 = sub_1C6D76C40();
  v119 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v118 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v2;
  v39 = *(*v2 + 16);
  v141 = *v2;
  v142 = v9;
  v139 = v25;
  v140 = v39;
  v117 = v40;
  if (!v39)
  {
    v51 = v119;
LABEL_17:
    v52 = v115;
    sub_1C6D76C50();

    v53 = (*(v51 + 48))(v52, 1, v35);
    v54 = v51;
    v25 = &unk_1EDCE1000;
    if (v53 == 1)
    {
      sub_1C6C40CF8(v52, &qword_1EDCE6230, MEMORY[0x1E69E35A0]);
      if (qword_1EDCE18E0 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_66;
    }

    (*(v54 + 32))(v118, v52, v35);
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314(0);
    v66 = swift_allocObject();
    v67 = MEMORY[0x1E69E6530];
    *(v66 + 16) = xmmword_1C6D807C0;
    v68 = MEMORY[0x1E69E65A8];
    *(v66 + 56) = v67;
    *(v66 + 64) = v68;
    *(v66 + 32) = v140;
    v69 = *(sub_1C6D76C20() + 16);

    *(v66 + 96) = v67;
    *(v66 + 104) = v68;
    *(v66 + 72) = v69;
    v70 = *(sub_1C6D76C30() + 16);

    *(v66 + 136) = v67;
    *(v66 + 144) = v68;
    *(v66 + 112) = v70;
    sub_1C6D79AC0();
    sub_1C6D78D30("Successfully clustered %lu tags by accepting %lu tags and rejecting %lu tags.", v114, v115, v116);

    v25 = sub_1C6B61AFC(MEMORY[0x1E69E7CC0]);
    v71 = *(v38 + 16);
    if (v71)
    {
      v72 = 0;
      a1 = v38 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      while (1)
      {
        if (v72 >= *(v38 + 16))
        {
          goto LABEL_63;
        }

        v38 = *(v9 + 72);
        v74 = v126;
        sub_1C6C4086C(a1 + v38 * v72, v126, type metadata accessor for SportsRecommendedScoredTag);
        v75 = [*v74 identifier];
        v76 = sub_1C6D795A0();
        v78 = v77;

        sub_1C6C4086C(v74, v127, type metadata accessor for SportsRecommendedScoredTag);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = v25;
        v80 = sub_1C6B5DEA8(v76, v78);
        v82 = v25[2];
        v83 = (v81 & 1) == 0;
        v84 = __OFADD__(v82, v83);
        v85 = v82 + v83;
        if (v84)
        {
          goto LABEL_64;
        }

        v86 = v81;
        if (v25[3] < v85)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_34;
        }

        v91 = v80;
        sub_1C6B744D0();
        v80 = v91;
        if (v86)
        {
LABEL_26:
          v73 = v80;

          v25 = v144;
          sub_1C6C40414(v127, v144[7] + v73 * v38);
          goto LABEL_27;
        }

LABEL_35:
        v25 = v144;
        v144[(v80 >> 6) + 8] |= 1 << v80;
        v88 = (v25[6] + 16 * v80);
        *v88 = v76;
        v88[1] = v78;
        sub_1C6C40C30(v127, v25[7] + v80 * v38, type metadata accessor for SportsRecommendedScoredTag);
        v89 = v25[2];
        v84 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v84)
        {
          goto LABEL_65;
        }

        v25[2] = v90;
LABEL_27:
        ++v72;
        sub_1C6C40C98(v126, type metadata accessor for SportsRecommendedScoredTag);
        v38 = v141;
        v9 = v142;
        if (v71 == v72)
        {
          goto LABEL_39;
        }
      }

      sub_1C6B713B8(v85, isUniquelyReferenced_nonNull_native);
      v80 = sub_1C6B5DEA8(v76, v78);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_70;
      }

LABEL_34:
      if (v86)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

LABEL_39:
    v92 = v118;
    v93 = sub_1C6D76C20();
    v94 = *(v93 + 16);
    if (!v94)
    {

      v65 = MEMORY[0x1E69E7CC0];
LABEL_60:
      (*(v119 + 8))(v92, v117);
      return v65;
    }

    v96 = v139[2];
    v95 = v139 + 2;
    v140 = v93;
    v141 = v96;
    v97 = v93 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v98 = v139[9];
    v99 = (v139 + 1);
    v65 = MEMORY[0x1E69E7CC0];
    v96(v133, v97, v143);
    while (1)
    {
      v100 = sub_1C6D761C0();
      if (!v25[2])
      {
        break;
      }

      v102 = v95;
      v103 = sub_1C6B5DEA8(v100, v101);
      v105 = v104;

      if ((v105 & 1) == 0)
      {
        goto LABEL_42;
      }

      v106 = *(v142 + 72);
      v107 = v25[7] + v106 * v103;
      v108 = v120;
      sub_1C6C4086C(v107, v120, type metadata accessor for SportsRecommendedScoredTag);
      (*v99)(v133, v143);
      sub_1C6C40C30(v108, v123, type metadata accessor for SportsRecommendedScoredTag);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1C6B669C0(0, v65[2] + 1, 1, v65);
      }

      v110 = v65[2];
      v109 = v65[3];
      if (v110 >= v109 >> 1)
      {
        v65 = sub_1C6B669C0((v109 > 1), v110 + 1, 1, v65);
      }

      v65[2] = v110 + 1;
      sub_1C6C40C30(v123, v65 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + v110 * v106, type metadata accessor for SportsRecommendedScoredTag);
      v95 = v102;
LABEL_43:
      v97 += v98;
      if (!--v94)
      {

        v92 = v118;
        goto LABEL_60;
      }

      v141(v133, v97, v143);
    }

LABEL_42:
    (*v99)(v133, v143);
    goto LABEL_43;
  }

  v114 = a1;
  v144 = MEMORY[0x1E69E7CC0];
  sub_1C6B39734(0, v39, 0);
  a1 = 0;
  v41 = v144;
  v132 = v38 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v122 = *MEMORY[0x1E69E31D8];
  v131 = (v6 + 104);
  v125 = *MEMORY[0x1E69E31F0];
  v121 = *MEMORY[0x1E69E31E0];
  v124 = *MEMORY[0x1E69E31E8];
  v130 += 13;
  v129 = *MEMORY[0x1E69E31C0];
  v128 = v25 + 4;
  while (a1 < *(v38 + 16))
  {
    v42 = v31;
    sub_1C6C4086C(v132 + *(v9 + 72) * a1, v24, type metadata accessor for SportsRecommendedScoredTag);
    v43 = *v24;
    v44 = [*v24 identifier];
    sub_1C6D795A0();

    sub_1C6D76BA0();
    v45 = [v43 topLevelSportTagIdentifier];
    if (v45)
    {
      v46 = v45;
      sub_1C6D795A0();
    }

    v47 = [v43 sportsLeagueType];
    if (v47 > 1)
    {
      v48 = v125;
      if (v47 != 3)
      {
        v48 = v121;
        if (v47 != 2)
        {
LABEL_69:
          sub_1C6D79EB0();
          __break(1u);
LABEL_70:
          result = sub_1C6D7A1C0();
          __break(1u);
          return result;
        }
      }
    }

    else
    {
      v48 = v124;
      if (v47)
      {
        v48 = v122;
        if (v47 != 1)
        {
          goto LABEL_69;
        }
      }
    }

    (*v131)(v135, v48, v136);
    (*v130)(v137, v129, v138);
    sub_1C6D761B0();
    sub_1C6C40C98(v24, type metadata accessor for SportsRecommendedScoredTag);
    v144 = v41;
    v50 = v41[2];
    v49 = v41[3];
    v25 = (v50 + 1);
    if (v50 >= v49 >> 1)
    {
      sub_1C6B39734((v49 > 1), v50 + 1, 1);
      v41 = v144;
    }

    ++a1;
    v41[2] = v25;
    (v139[4])(v41 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + v139[9] * v50, v42, v143);
    v38 = v141;
    v9 = v142;
    v31 = v42;
    if (v140 == a1)
    {
      v35 = v117;
      v51 = v119;
      a1 = v114;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_19:
  v55 = v25[285];
  v56 = sub_1C6D79AC0();
  sub_1C6D78D30("Failed to create cluster, falling back to top scored tags.", 58, 2, &dword_1C6B09000, v55, v56, MEMORY[0x1E69E7CC0]);
  v57 = sub_1C6B6CE5C(a1, v38);
  v59 = v58;
  v61 = v60;
  v63 = v62;
  if (v62)
  {
    sub_1C6D7A190();
    swift_unknownObjectRetain_n();

    v111 = swift_dynamicCastClass();
    if (!v111)
    {
      swift_unknownObjectRelease();
      v111 = MEMORY[0x1E69E7CC0];
    }

    v112 = *(v111 + 16);

    if (__OFSUB__(v63 >> 1, v61))
    {
      __break(1u);
    }

    else if (v112 == (v63 >> 1) - v61)
    {
      v65 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v65)
      {
        swift_unknownObjectRelease();
        return MEMORY[0x1E69E7CC0];
      }

      return v65;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C6B6E5BC(v57, v59, v61, v63);
  v65 = v64;
  swift_unknownObjectRelease();
  return v65;
}