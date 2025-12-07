uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  sub_22040E690(&qword_27CF526E8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_22040E1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22042B670();
  v4 = *(a1 + 20);
  if (qword_280FA1A10 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_280FA1A18;
}

uint64_t sub_22040E288(uint64_t a1, uint64_t a2)
{
  v4 = sub_22040E690(&qword_27CF526F8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22040E304@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA17A8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA17B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22040E3AC(uint64_t a1)
{
  v2 = sub_22040E690(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22040E418(uint64_t a1, uint64_t a2)
{
  sub_22040E690(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B29_SessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_22040D064(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22042B680();
  sub_22040E690(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22042BA10() & 1;
}

uint64_t sub_22040E580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22040E5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22040E690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22040E7D8(uint64_t a1)
{
  result = sub_22042B680();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22040E864(uint64_t a1)
{
  sub_22040EA84(319, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22040EA84(319, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22040EA84(319, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_22040EA30()
{
  result = qword_280FA1E18;
  if (!qword_280FA1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1E18);
  }

  return result;
}

void sub_22040EA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22040EAE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_22040EA84(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22040EB60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22040EAE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t UnwatchSymbolEventUserInfo.stock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042AAC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UnwatchSymbolEventUserInfo.init(stock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for UnwatchSymbolEventUserInfo(uint64_t a1)
{
  result = qword_27CF52710;
  if (!qword_27CF52710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchSymbolEventUserInfo.stock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042AAC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WatchSymbolEventUserInfo.init(stock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for WatchSymbolEventUserInfo(uint64_t a1)
{
  result = qword_27CF52720;
  if (!qword_27CF52720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21628];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411AA0(v1 + *(v7 + 24), v6, &qword_280FA2210, v3);
  v8 = sub_22042B650();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_22042B640();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22040F1C0(v6, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(uint64_t a1)
{
  result = qword_280FA1CB8;
  if (!qword_280FA1CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0) + 24);
  sub_22040F1C0(v1 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
  v4 = sub_22042B650();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0) + 20);
  sub_22040F1C0(v1 + v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_22040F230(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_22040F1C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220411E24(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22040F230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.init()@<X0>(uint64_t a2@<X8>)
{
  sub_22042B670();
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = sub_22042B650();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.article.getter@<X0>(char *a1@<X8>)
{
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411AA0(v1 + *(v6 + 20), v5, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22040F230(v5, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  sub_22042B670();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22040F1C0(v5, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_22040F524@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411AA0(a1 + *(v7 + 20), v6, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22040F230(v6, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  sub_22042B670();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22040F1C0(v6, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_22040F6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220411B20(a1, v7);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0) + 20);
  sub_22040F1C0(a2 + v8, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_22040F230(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventArticleRead.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
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
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0) + 20);
  *(v5 + 12) = v16;
  sub_220411AA0(v1 + v16, v9, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_22042B670();
    if (v17(v9, 1, v10) != 1)
    {
      sub_22040F1C0(v9, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_22040F230(v9, v15);
  }

  return sub_22040FA84;
}

void sub_22040FA84(uint64_t **a1, char a2)
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
    sub_220411B20((*a1)[5], v4);
    sub_22040F1C0(v9 + v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    sub_22040F230(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_220411B84(v5);
  }

  else
  {
    sub_22040F1C0(v9 + v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    sub_22040F230(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Stocks_Personalization_SessionEventArticleRead.hasArticle.getter()
{
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411AA0(v0 + *(v4 + 20), v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22040F1C0(v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventArticleRead.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0) + 20);
  sub_22040F1C0(v0 + v1, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22040FD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21628];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411AA0(a1 + *(v8 + 24), v7, &qword_280FA2210, v4);
  v9 = sub_22042B650();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_22042B640();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22040F1C0(v7, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  return result;
}

uint64_t sub_22040FEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B650();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0) + 24);
  sub_22040F1C0(a2 + v8, &qword_280FA2210, MEMORY[0x277D21628]);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventArticleRead.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
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
  v10 = sub_22042B650();
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
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0) + 24);
  *(v5 + 12) = v16;
  sub_220411AA0(v1 + v16, v9, &qword_280FA2210, MEMORY[0x277D21628]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B640();
    if (v17(v9, 1, v10) != 1)
    {
      sub_22040F1C0(v9, &qword_280FA2210, MEMORY[0x277D21628]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_220410284;
}

void sub_220410284(uint64_t **a1, char a2)
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
    sub_22040F1C0(v9 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_22040F1C0(v9 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Stocks_Personalization_SessionEventArticleRead.hasDuration.getter()
{
  v1 = MEMORY[0x277D21628];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411AA0(v0 + *(v5 + 24), v4, &qword_280FA2210, v1);
  v6 = sub_22042B650();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22040F1C0(v4, &qword_280FA2210, v1);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventArticleRead.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0) + 24);
  sub_22040F1C0(v0 + v1, &qword_280FA2210, MEMORY[0x277D21628]);
  v2 = sub_22042B650();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2204106C0()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1CE0);
  __swift_project_value_buffer(v0, qword_280FA1CE0);
  sub_220411E24(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEventArticleRead._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1CE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22042B700();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2204109DC(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_220410A90(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2204109DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  sub_220411F5C(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticle);
  return sub_22042B7A0();
}

uint64_t sub_220410A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_22042B650();
  sub_220411F5C(&unk_280FA2218, MEMORY[0x277D21628], MEMORY[0x277D21620]);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_220410BB4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_220410DD8(v3, a1, a2, a3);
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_220410BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411AA0(a1 + *(v12 + 20), v7, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22040F1C0(v7, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  }

  sub_22040F230(v7, v11);
  sub_220411F5C(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_22042B890();
  return sub_220411B84(v11);
}

uint64_t sub_220410DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D21628];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_22042B650();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411AA0(a1 + *(v13 + 24), v8, &qword_280FA2210, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22040F1C0(v8, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_220411F5C(&unk_280FA2218, MEMORY[0x277D21628], MEMORY[0x277D21620]);
  sub_22042B890();
  return (*(v10 + 8))(v12, v9);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  sub_220411F5C(&qword_27CF52730, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2204110AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22042B670();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = sub_22042B650();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_2204111BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_220411F5C(&qword_27CF52740, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_220411238@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1CE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2204112E0(uint64_t a1)
{
  v2 = sub_220411F5C(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22041134C(uint64_t a1, uint64_t a2)
{
  sub_220411F5C(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B24_SessionEventArticleReadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v53 = a1;
  v2 = sub_22042B650();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D21628];
  v5 = MEMORY[0x277D83D88];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v46 - v7;
  sub_220411E88(0, &qword_27CF52558, &qword_280FA2210, v4);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v46 - v15);
  sub_220411E88(0, &qword_27CF52748, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  v22 = *(v21 + 20);
  v23 = *(v18 + 56);
  sub_220411AA0(v53 + v22, v20, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v24 = v52 + v22;
  v25 = v52;
  sub_220411AA0(v24, &v20[v23], qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v26 = *(v11 + 48);
  if (v26(v20, 1, v10) != 1)
  {
    sub_220411AA0(v20, v16, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    if (v26(&v20[v23], 1, v10) != 1)
    {
      sub_22040F230(&v20[v23], v13);
      v31 = _s21StocksPersonalization010Com_Apple_a1_B15_SessionArticleV2eeoiySbAC_ACtFZ_0(v16, v13);
      sub_220411B84(v13);
      sub_220411B84(v16);
      sub_22040F1C0(v20, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_220411B84(v16);
LABEL_6:
    v27 = &qword_27CF52748;
    v28 = qword_280FA1E98;
    v29 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle;
    v30 = v20;
LABEL_14:
    sub_220411F00(v30, v27, v28, v29);
    goto LABEL_15;
  }

  if (v26(&v20[v23], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_22040F1C0(v20, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
LABEL_8:
  v32 = *(v21 + 24);
  v33 = v49;
  v34 = *(v48 + 48);
  v35 = MEMORY[0x277D21628];
  sub_220411AA0(v53 + v32, v49, &qword_280FA2210, MEMORY[0x277D21628]);
  sub_220411AA0(v25 + v32, v33 + v34, &qword_280FA2210, v35);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v33, 1, v51) == 1)
  {
    if (v38(v33 + v34, 1, v36) == 1)
    {
      sub_22040F1C0(v33, &qword_280FA2210, MEMORY[0x277D21628]);
LABEL_18:
      sub_22042B680();
      sub_220411F5C(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v40 = sub_22042BA10();
      return v40 & 1;
    }

    goto LABEL_13;
  }

  v39 = v47;
  sub_220411AA0(v33, v47, &qword_280FA2210, MEMORY[0x277D21628]);
  if (v38(v33 + v34, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v27 = &qword_27CF52558;
    v28 = &qword_280FA2210;
    v29 = MEMORY[0x277D21628];
    v30 = v33;
    goto LABEL_14;
  }

  v42 = v33 + v34;
  v43 = v46;
  (*(v37 + 32))(v46, v42, v36);
  sub_220411F5C(&qword_27CF52560, MEMORY[0x277D21628], MEMORY[0x277D21630]);
  v44 = sub_22042BA10();
  v45 = *(v37 + 8);
  v45(v43, v36);
  v45(v39, v36);
  sub_22040F1C0(v33, &qword_280FA2210, MEMORY[0x277D21628]);
  if (v44)
  {
    goto LABEL_18;
  }

LABEL_15:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_220411AA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220411E24(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220411B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220411B84(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220411D28(uint64_t a1)
{
  sub_22042B680();
  if (v1 <= 0x3F)
  {
    sub_220411E24(319, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_220411E24(319, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220411E24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220411E88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_220411E24(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_220411F00(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220411E88(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_220411F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t Com_Apple_Stocks_Personalization_ViewActionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_220411FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22040EA30();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_220412048()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1E28);
  __swift_project_value_buffer(v0, qword_280FA1E28);
  sub_2203E4774(0);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22042F8C0;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 0;
  *v6 = "VIEW_ACTION_TYPE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22042B8A0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "VIEW_ACTION_TYPE_APP_LAUNCH";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "VIEW_ACTION_TYPE_SWIPE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "VIEW_ACTION_TYPE_HEADLINE_TAP";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "VIEW_ACTION_TYPE_DEEPLINK";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "VIEW_ACTION_TYPE_AFFORDANCE_TAP";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "VIEW_ACTION_TYPE_RETURN_FROM_ARTICLE";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "VIEW_ACTION_TYPE_USER_NAVIGATION";
  *(v22 + 1) = 32;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "VIEW_ACTION_TYPE_WIDGET_HEADLINE_TAP";
  *(v23 + 8) = 36;
  *(v23 + 16) = 2;
  v9();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_ViewActionType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1E20 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1E28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_220412458()
{
  result = qword_280FA1E10;
  if (!qword_280FA1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1E10);
  }

  return result;
}

unint64_t sub_2204124B0()
{
  result = qword_280FA1E00;
  if (!qword_280FA1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1E00);
  }

  return result;
}

unint64_t sub_220412508()
{
  result = qword_27CF52750;
  if (!qword_27CF52750)
  {
    sub_220412560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52750);
  }

  return result;
}

void sub_220412560()
{
  if (!qword_27CF52758)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF52758);
    }
  }
}

unint64_t sub_2204125B4()
{
  result = qword_280FA1E08;
  if (!qword_280FA1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1E08);
  }

  return result;
}

uint64_t sub_220412608@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1E20 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1E28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2204127C4(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_22041EC9C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for EventArticleFeatures(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2204128F0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22041ECD0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2204129E4@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v213 = a4;
  v216 = a3;
  v212 = a2;
  v214 = a5;
  v211 = type metadata accessor for ArticleFeatures(0);
  MEMORY[0x28223BE20](v211);
  v218 = v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 40))(v7, v8);
  v11 = v10;
  v12 = a1[3];
  v13 = a1[4];
  v217 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 56))(v12, v13);
  swift_getAssociatedTypeWitness();
  v219 = sub_2203CFDB8(0, &qword_280FA1060, &protocol descriptor for EntityMetadataType);
  v14 = sub_22042BDE0();

  v15 = *(v14 + 16);
  if (!v15)
  {

    v16 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (!v26)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  *&v223 = MEMORY[0x277D84F90];
  sub_2203C3A84(0, v15, 0);
  v16 = v223;
  v220 = v14;
  v17 = v14 + 32;
  do
  {
    sub_2203C37C0(v17, v226);
    v18 = AssociatedTypeWitness;
    v19 = v228;
    __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
    v20 = (*(v19 + 8))(v18, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v226);
    *&v223 = v16;
    v24 = *(v16 + 16);
    v23 = *(v16 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_2203C3A84((v23 > 1), v24 + 1, 1);
      v16 = v223;
    }

    *(v16 + 16) = v24 + 1;
    v25 = v16 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v17 += 40;
    --v15;
  }

  while (v15);

  v26 = *(v16 + 16);
  if (v26)
  {
LABEL_7:
    v27 = 0;
    v28 = v16 + 40;
    v220 = (v26 - 1);
    v29 = MEMORY[0x277D84F90];
LABEL_8:
    v30 = (v28 + 16 * v27);
    v31 = v27;
    while (v31 < *(v16 + 16))
    {
      v32 = *(v30 - 1);
      v33 = *v30;
      v34 = v32 == v9 && v33 == v11;
      if (!v34 && (sub_22042BF50() & 1) == 0)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v226[0] = v29;
        v215 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2203C3A84(0, *(v29 + 16) + 1, 1);
          v29 = v226[0];
        }

        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_2203C3A84((v36 > 1), v37 + 1, 1);
          v29 = v226[0];
        }

        v27 = (v31 + 1);
        *(v29 + 16) = v37 + 1;
        v38 = v29 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v33;
        v28 = v215;
        if (v220 == v31)
        {
          goto LABEL_23;
        }

        goto LABEL_8;
      }

      v31 = (v31 + 1);
      v30 += 2;
      if (v26 == v31)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

LABEL_23:

  sub_2204142E8(0, &qword_280FA2560, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_22042D3F0;
  *(v39 + 32) = v9;
  *(v39 + 40) = v11;
  v40 = v216[7];
  if (!__OFSUB__(v40, 1))
  {
    v41 = v39;

    v42 = sub_22042BB30();

    v226[0] = v41;
    sub_2204128F0(v42);
    v43 = v218;
    *v218 = v9;
    *(v43 + 1) = v11;
    v44 = v43;
    v226[0] = 0;
    v226[1] = 0xE000000000000000;
    v210[1] = v40;
    v45 = sub_22042BB20();

    *(v44 + 2) = v45;
    v46 = v217;
    v47 = v217[3];
    v48 = v217[4];
    __swift_project_boxed_opaque_existential_1(v217, v47);
    v49 = *(v48 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v228 = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(v226);
    v215 = v45;

    v49(v47, v48);
    v51 = AssociatedTypeWitness;
    v52 = v228;
    __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
    v53 = swift_getAssociatedTypeWitness();
    v54 = *(v53 - 8);
    MEMORY[0x28223BE20](v53);
    v56 = v210 - v55;
    (*(AssociatedConformanceWitness + 40))(v51, v52);
    v57 = swift_getAssociatedConformanceWitness();
    v58 = (*(v57 + 8))(v53, v57);
    (*(v54 + 8))(v56, v53);
    __swift_destroy_boxed_opaque_existential_1(v226);
    v59 = v218;
    *&v58 = v58;
    *(v218 + 6) = LODWORD(v58);
    v60 = v46[3];
    v61 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v60);
    v62 = *(v61 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v63 = swift_getAssociatedConformanceWitness();
    v228 = v63;
    __swift_allocate_boxed_opaque_existential_1(v226);
    v62(v60, v61);
    v64 = AssociatedTypeWitness;
    v65 = v228;
    __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
    v66 = swift_getAssociatedTypeWitness();
    v220 = v210;
    v67 = *(v66 - 8);
    MEMORY[0x28223BE20](v66);
    v69 = v210 - v68;
    (*(v63 + 40))(v64, v65);
    v70 = swift_getAssociatedConformanceWitness();
    v71 = (*(v70 + 16))(v66, v70);
    (*(v67 + 8))(v69, v66);
    __swift_destroy_boxed_opaque_existential_1(v226);
    *&v71 = v71;
    *(v59 + 7) = LODWORD(v71);
    v72 = v46[3];
    v73 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v72);
    v74 = *(v73 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v75 = swift_getAssociatedConformanceWitness();
    v228 = v75;
    __swift_allocate_boxed_opaque_existential_1(v226);
    v74(v72, v73);
    v76 = AssociatedTypeWitness;
    v77 = v228;
    __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
    v78 = swift_getAssociatedTypeWitness();
    v79 = *(v78 - 8);
    MEMORY[0x28223BE20](v78);
    v81 = v210 - v80;
    (*(v75 + 48))(v76, v77);
    v82 = swift_getAssociatedConformanceWitness();
    v83 = (*(v82 + 8))(v78, v82);
    (*(v79 + 8))(v81, v78);
    __swift_destroy_boxed_opaque_existential_1(v226);
    *&v83 = v83;
    *(v218 + 8) = LODWORD(v83);
    v84 = v46[3];
    v85 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v84);
    v86 = *(v85 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v87 = swift_getAssociatedConformanceWitness();
    v228 = v87;
    __swift_allocate_boxed_opaque_existential_1(v226);
    v86(v84, v85);
    v88 = AssociatedTypeWitness;
    v89 = v228;
    __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
    v90 = swift_getAssociatedTypeWitness();
    v91 = *(v90 - 8);
    MEMORY[0x28223BE20](v90);
    v93 = v210 - v92;
    (*(v87 + 48))(v88, v89);
    v94 = swift_getAssociatedConformanceWitness();
    v95 = (*(v94 + 16))(v90, v94);
    (*(v91 + 8))(v93, v90);
    *&v95 = v95;
    __swift_destroy_boxed_opaque_existential_1(v226);
    *(v218 + 9) = LODWORD(v95);
    v96 = v46[3];
    v97 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v96);
    v98 = *(v97 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v99 = swift_getAssociatedConformanceWitness();
    v228 = v99;
    __swift_allocate_boxed_opaque_existential_1(v226);
    v98(v96, v97);
    v100 = AssociatedTypeWitness;
    v101 = v228;
    __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
    (*(v99 + 56))(v100, v101);
    swift_getAssociatedTypeWitness();
    sub_2203CFDB8(0, qword_280FA1068, &protocol descriptor for EntityCohortType);
    v102 = sub_22042BDE0();

    v220 = *(v102 + 16);
    if (v220)
    {
      v103 = 0;
      v104 = v102 + 32;
      v105 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v103 >= *(v102 + 16))
        {
          goto LABEL_108;
        }

        sub_2203C37C0(v104, &v223);
        v108 = v224;
        v109 = v225;
        __swift_project_boxed_opaque_existential_1(&v223, v224);
        v110 = (*(v109 + 16))(v108, v109);
        v112 = v111;
        sub_2203C37C0(&v223, v222);
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v221 = v105;
        v114 = sub_2203FFB78(v110, v112);
        v116 = v105[2];
        v117 = (v115 & 1) == 0;
        v118 = __OFADD__(v116, v117);
        v119 = v116 + v117;
        if (v118)
        {
          goto LABEL_109;
        }

        v120 = v115;
        if (v105[3] < v119)
        {
          break;
        }

        if (v113)
        {
          goto LABEL_34;
        }

        v125 = v114;
        sub_2204011A4();
        v114 = v125;
        if (v120)
        {
LABEL_26:
          v106 = v114;

          v105 = v221;
          v107 = (v221[7] + 40 * v106);
          __swift_destroy_boxed_opaque_existential_1(v107);
          sub_2203C5934(v222, v107);
          goto LABEL_27;
        }

LABEL_35:
        v105 = v221;
        v221[(v114 >> 6) + 8] |= 1 << v114;
        v122 = (v105[6] + 16 * v114);
        *v122 = v110;
        v122[1] = v112;
        sub_2203C5934(v222, v105[7] + 40 * v114);
        v123 = v105[2];
        v118 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v118)
        {
          goto LABEL_114;
        }

        v105[2] = v124;
LABEL_27:
        v103 = (v103 + 1);
        __swift_destroy_boxed_opaque_existential_1(&v223);
        v104 += 40;
        if (v220 == v103)
        {
          goto LABEL_40;
        }
      }

      sub_22040019C(v119, v113);
      v114 = sub_2203FFB78(v110, v112);
      if ((v120 & 1) != (v121 & 1))
      {
        goto LABEL_117;
      }

LABEL_34:
      if (v120)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    v105 = MEMORY[0x277D84F98];
LABEL_40:

    __swift_destroy_boxed_opaque_existential_1(v226);
    v126 = v215;
    v220 = *(v215 + 16);
    if (v220)
    {
      v127 = 0;
      v128 = (v215 + 40);
      v129 = MEMORY[0x277D84F90];
      v130 = MEMORY[0x277D84F90];
      while (v127 < *(v126 + 16))
      {
        v131 = *(v128 - 1);
        v132 = *v128;
        v133 = v105[2];

        if (v133 && (v134 = sub_2203FFB78(v131, v132), (v135 & 1) != 0))
        {
          sub_2203C37C0(v105[7] + 40 * v134, &v223);
          sub_2203C5934(&v223, v226);
          v136 = AssociatedTypeWitness;
          v137 = v228;
          __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
          v138 = (*(*(v137 + 8) + 8))(v136);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_22041EDF4(0, *(v129 + 2) + 1, 1, v129);
          }

          v140 = *(v129 + 2);
          v139 = *(v129 + 3);
          if (v140 >= v139 >> 1)
          {
            v129 = sub_22041EDF4((v139 > 1), v140 + 1, 1, v129);
          }

          v141 = v138;
          *(v129 + 2) = v140 + 1;
          *&v129[4 * v140 + 32] = v141;
          v142 = AssociatedTypeWitness;
          v143 = v228;
          __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
          v144 = (*(*(v143 + 8) + 16))(v142);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_22041EDF4(0, *(v130 + 2) + 1, 1, v130);
          }

          v146 = *(v130 + 2);
          v145 = *(v130 + 3);
          if (v146 >= v145 >> 1)
          {
            v130 = sub_22041EDF4((v145 > 1), v146 + 1, 1, v130);
          }

          v147 = v144;
          *(v130 + 2) = v146 + 1;
          *&v130[4 * v146 + 32] = v147;
          __swift_destroy_boxed_opaque_existential_1(v226);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_22041EDF4(0, *(v129 + 2) + 1, 1, v129);
          }

          v149 = *(v129 + 2);
          v148 = *(v129 + 3);
          if (v149 >= v148 >> 1)
          {
            v129 = sub_22041EDF4((v148 > 1), v149 + 1, 1, v129);
          }

          *(v129 + 2) = v149 + 1;
          *&v129[4 * v149 + 32] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_22041EDF4(0, *(v130 + 2) + 1, 1, v130);
          }

          v151 = *(v130 + 2);
          v150 = *(v130 + 3);
          if (v151 >= v150 >> 1)
          {
            v130 = sub_22041EDF4((v150 > 1), v151 + 1, 1, v130);
          }

          *(v130 + 2) = v151 + 1;
          *&v130[4 * v151 + 32] = 0;
        }

        v127 = (v127 + 1);
        v128 += 2;
        if (v220 == v127)
        {
          goto LABEL_65;
        }
      }

LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v130 = MEMORY[0x277D84F90];
    v129 = MEMORY[0x277D84F90];
LABEL_65:

    v152 = v218;
    *(v218 + 5) = v129;
    *(v152 + 6) = v130;
    v153 = v217[3];
    v154 = v217[4];
    __swift_project_boxed_opaque_existential_1(v217, v153);
    (*(v154 + 56))(v153, v154);
    swift_getAssociatedTypeWitness();
    v155 = sub_22042BDE0();

    v219 = *(v155 + 16);
    if (!v219)
    {
      v158 = MEMORY[0x277D84F98];
LABEL_81:

      if (!v220)
      {
        v182 = MEMORY[0x277D84F90];
        v181 = MEMORY[0x277D84F90];
LABEL_106:

        v204 = v218;
        *(v218 + 7) = v181;
        *(v204 + 64) = v182;
        v205 = v217;
        v206 = v217[3];
        v207 = v217[4];
        __swift_project_boxed_opaque_existential_1(v217, v206);
        (*(v207 + 64))(v206, v207);
        v208 = v216;
        sub_22042B450();
        sub_2203CF9DC(v208);
        sub_2203CFCD8(v204, v214);
        return __swift_destroy_boxed_opaque_existential_1(v205);
      }

      v178 = 0;
      v179 = v215;
      v180 = (v215 + 40);
      v181 = MEMORY[0x277D84F90];
      v182 = MEMORY[0x277D84F90];
      while (v178 < *(v179 + 16))
      {
        v183 = *(v180 - 1);
        v184 = *v180;
        v185 = v158[2];

        if (v185 && (v186 = sub_2203FFB78(v183, v184), (v187 & 1) != 0))
        {
          sub_2203C37C0(v158[7] + 40 * v186, &v223);
          sub_2203C5934(&v223, v226);
          v188 = AssociatedTypeWitness;
          v189 = v228;
          __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
          v190 = (*(v189 + 16))(v188, v189);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v181 = sub_22041EDF4(0, *(v181 + 2) + 1, 1, v181);
          }

          v192 = *(v181 + 2);
          v191 = *(v181 + 3);
          if (v192 >= v191 >> 1)
          {
            v181 = sub_22041EDF4((v191 > 1), v192 + 1, 1, v181);
          }

          v193 = v190;
          *(v181 + 2) = v192 + 1;
          *&v181[4 * v192 + 32] = v193;
          v194 = AssociatedTypeWitness;
          v195 = v228;
          __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
          v196 = (*(v195 + 24))(v194, v195);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = sub_22041EDF4(0, *(v182 + 2) + 1, 1, v182);
          }

          v198 = *(v182 + 2);
          v197 = *(v182 + 3);
          if (v198 >= v197 >> 1)
          {
            v182 = sub_22041EDF4((v197 > 1), v198 + 1, 1, v182);
          }

          v199 = v196;
          *(v182 + 2) = v198 + 1;
          *&v182[4 * v198 + 32] = v199;
          __swift_destroy_boxed_opaque_existential_1(v226);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v181 = sub_22041EDF4(0, *(v181 + 2) + 1, 1, v181);
          }

          v201 = *(v181 + 2);
          v200 = *(v181 + 3);
          if (v201 >= v200 >> 1)
          {
            v181 = sub_22041EDF4((v200 > 1), v201 + 1, 1, v181);
          }

          *(v181 + 2) = v201 + 1;
          *&v181[4 * v201 + 32] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = sub_22041EDF4(0, *(v182 + 2) + 1, 1, v182);
          }

          v203 = *(v182 + 2);
          v202 = *(v182 + 3);
          if (v203 >= v202 >> 1)
          {
            v182 = sub_22041EDF4((v202 > 1), v203 + 1, 1, v182);
          }

          *(v182 + 2) = v203 + 1;
          *&v182[4 * v203 + 32] = 0;
        }

        v178 = (v178 + 1);
        v180 += 2;
        if (v220 == v178)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_113;
    }

    v156 = 0;
    v157 = v155 + 32;
    v158 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v156 >= *(v155 + 16))
      {
        goto LABEL_111;
      }

      sub_2203C37C0(v157, v226);
      v161 = AssociatedTypeWitness;
      v162 = v228;
      __swift_project_boxed_opaque_existential_1(v226, AssociatedTypeWitness);
      v163 = (*(v162 + 8))(v161, v162);
      v165 = v164;
      sub_2203C37C0(v226, &v223);
      v166 = swift_isUniquelyReferenced_nonNull_native();
      *&v222[0] = v158;
      v167 = sub_2203FFB78(v163, v165);
      v169 = v158[2];
      v170 = (v168 & 1) == 0;
      v118 = __OFADD__(v169, v170);
      v171 = v169 + v170;
      if (v118)
      {
        goto LABEL_112;
      }

      v172 = v168;
      if (v158[3] < v171)
      {
        break;
      }

      if (v166)
      {
        goto LABEL_75;
      }

      v177 = v167;
      sub_220401174();
      v167 = v177;
      if (v172)
      {
LABEL_67:
        v159 = v167;

        v158 = *&v222[0];
        v160 = (*(*&v222[0] + 56) + 40 * v159);
        __swift_destroy_boxed_opaque_existential_1(v160);
        sub_2203C5934(&v223, v160);
        goto LABEL_68;
      }

LABEL_76:
      v158 = *&v222[0];
      *(*&v222[0] + 8 * (v167 >> 6) + 64) |= 1 << v167;
      v174 = (v158[6] + 16 * v167);
      *v174 = v163;
      v174[1] = v165;
      sub_2203C5934(&v223, v158[7] + 40 * v167);
      v175 = v158[2];
      v118 = __OFADD__(v175, 1);
      v176 = v175 + 1;
      if (v118)
      {
        goto LABEL_115;
      }

      v158[2] = v176;
LABEL_68:
      ++v156;
      __swift_destroy_boxed_opaque_existential_1(v226);
      v157 += 40;
      if (v219 == v156)
      {
        goto LABEL_81;
      }
    }

    sub_22040016C(v171, v166);
    v167 = sub_2203FFB78(v163, v165);
    if ((v172 & 1) != (v173 & 1))
    {
      goto LABEL_117;
    }

LABEL_75:
    if (v172)
    {
      goto LABEL_67;
    }

    goto LABEL_76;
  }

LABEL_116:
  __break(1u);
LABEL_117:
  result = sub_22042BF70();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ArticleFeatures(uint64_t a1)
{
  result = qword_280FA1118;
  if (!qword_280FA1118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_2204141EC(uint64_t a1)
{
  sub_2204142E8(319, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2204142E8(319, &unk_280FA0400, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22042B460();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2204142E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_220414354(uint64_t *a1, int a2)
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

uint64_t sub_22041439C(uint64_t result, int a2, int a3)
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

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event.article.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_2204148B0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220414908(v2, v12, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    return sub_220414970(v12, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    sub_2204149D0(v12, v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    sub_220414908(&v9[*(v7 + 20)], v6, sub_2204148B0);
    v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (v15(v6, 1, v13) == 1)
    {
      *a1 = 0;
      *(a1 + 1) = 0xE000000000000000;
      v16 = *(v13 + 20);
      v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
      (*(*(v17 - 8) + 56))(&a1[v16], 1, 1, v17);
      sub_22042B670();
      sub_220414970(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
      if (v15(v6, 1, v13) != 1)
      {
        sub_220414970(v6, sub_2204148B0);
      }
    }

    else
    {
      sub_220414970(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
      sub_2204149D0(v6, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    }

    return (*(v14 + 56))(a1, 0, 1, v13);
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event.string.getter()
{
  v1 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220414908(v0, v3, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 0x52656C6369747261;
  v6 = 0x6D79536863746177;
  if (EnumCaseMultiPayload != 2)
  {
    v6 = 0x5368637461776E75;
  }

  if (EnumCaseMultiPayload)
  {
    v5 = 0x65466C6F626D7973;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  sub_220414970(v3, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  return v7;
}

void sub_2204148B0(uint64_t a1)
{
  if (!qword_280FA1E98[0])
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(255);
    v1 = sub_22042BCF0();
    if (!v2)
    {
      atomic_store(v1, qword_280FA1E98);
    }
  }
}

uint64_t sub_220414908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220414970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204149D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220414A38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v27 = a2;
    *&v28 = MEMORY[0x277D84F90];
    sub_2203CE7CC(0, v9, 0);
    v10 = v28;
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_220414C88(v11, v8);
      v13 = *v8;
      v14 = v8[1];
      sub_2203DF3D8(*v8, v14);
      result = sub_220414CEC(v8);
      *&v28 = v10;
      v16 = v10[2];
      v15 = v10[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = sub_2203CE7CC((v15 > 1), v16 + 1, 1);
        v10 = v28;
      }

      v10[2] = v17;
      v18 = &v10[2 * v16];
      v18[4] = v13;
      v18[5] = v14;
      v11 += v12;
      --v9;
    }

    while (v9);
    v28 = xmmword_22042D6B0;
    a2 = v27;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    v28 = xmmword_22042D6B0;
    if (!v17)
    {
LABEL_11:

      v23 = *(&v28 + 1);
      *a2 = v28;
      a2[1] = v23;
      v24 = *MEMORY[0x277CFBB40];
      v25 = sub_22042B310();
      return (*(*(v25 - 8) + 104))(a2, v24, v25);
    }
  }

  v19 = 0;
  v20 = v10 + 5;
  while (v19 < v10[2])
  {
    ++v19;
    v22 = *(v20 - 1);
    v21 = *v20;
    sub_2203DF3D8(v22, *v20);
    sub_22042A560();
    result = sub_2203DF1B0(v22, v21);
    v20 += 2;
    if (v17 == v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220414C88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220414CEC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220414D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_220416944(0, &unk_280FA03F0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - v11;
  sub_220416AFC(a3, v25 - v11, &unk_280FA03F0, v9);
  v13 = sub_22042BB90();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_220416B7C(v12, &unk_280FA03F0, MEMORY[0x277D85720]);
  }

  else
  {
    sub_22042BB80();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22042BB70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22042BA80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_220416B7C(a3, &unk_280FA03F0, MEMORY[0x277D85720]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_220416B7C(a3, &unk_280FA03F0, MEMORY[0x277D85720]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_220415090@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &unk_280FA07E0, &protocol descriptor for GroupIDStockMessageTranslatorType, 1);
  result = sub_22042AD30();
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFBDC(0);
  result = sub_22042AD20();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &qword_280FA24F0, MEMORY[0x277D695E8], 1);
  result = sub_22042AD30();
  if (v20[3])
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v6);
    v8 = (&v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for GroupIDStockMessageTranslator();
    v19[3] = v11;
    v19[4] = &off_2834016E0;
    v19[0] = v10;
    type metadata accessor for UserEventHistoryEventProcessor(0);
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
    MEMORY[0x28223BE20](v13);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = sub_220416468(*v15, v5, v20, v12);

    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_2203BFC94(&qword_280FA14A8, type metadata accessor for UserEventHistoryEventProcessor, &unk_22042D7C8);
    *a2 = v17;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_220415384@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &unk_280FA24E0, MEMORY[0x277D69608], 1);
  result = sub_22042AD30();
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(&v13, v15);
    v4 = sub_22042A9F0();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v5 = qword_280FA0A00;
    sub_2203C1EE8(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22042D3F0;
    v13 = 0;
    v14 = 0xE000000000000000;
    v7 = v4 & 1;
    if (v4)
    {
      v8 = 0x64656C62616E65;
    }

    else
    {
      v8 = 0x64656C6261736964;
    }

    if (v4)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    MEMORY[0x223D7BDE0](v8, v9);

    v10 = v13;
    v11 = v14;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_2203C1FA8();
    *(v6 + 32) = v10;
    *(v6 + 40) = v11;
    v12 = sub_22042BCA0();
    sub_22042B8D0("User Event History Collection %{public}@", 40, 2, &dword_2203BD000, v5, v12, v6);

    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220415534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &qword_280FA24F0, MEMORY[0x277D695E8], 1);
  result = sub_22042AD30();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203BFB80(0, &unk_280FA24D0, MEMORY[0x277D69698], 1);
    result = sub_22042AD30();
    if (v8)
    {
      v5 = type metadata accessor for GroupIDStockMessageTranslator();
      v6 = swift_allocObject();
      sub_2203C5934(&v9, v6 + 16);
      result = sub_2203C5934(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_2834016E0;
      *a2 = v6;
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

void *sub_220415650(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7FactoryCMa();
  result = sub_22042AD20();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203BFB80(0, &qword_280FA22A8, MEMORY[0x277D34B28], 1);
    result = sub_22042AD30();
    if (v3)
    {
      sub_2203BFBDC(0);
      swift_allocObject();
      return sub_22042B400();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220415734()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_22042BCC0();
  v3 = v2;

  _s7FactoryCMa();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  *(result + 32) = 1;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_2204157B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C14A4();
  sub_22042B900();
  v3 = sub_22042AD00();

  if (v3)
  {
    v5 = sub_22042B440();
    swift_allocObject();
    result = sub_22042B430();
    v6 = MEMORY[0x277D34B10];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220415870(void *a1)
{
  v2 = sub_22042AE60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042ADE0();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &qword_280FA24C0, MEMORY[0x277D696F0], 1);
  result = sub_22042AD30();
  if (v12)
  {
    sub_2203C5934(&v11, v13);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203C14A4();
    sub_22042B900();
    v8 = sub_22042AD00();

    if (v8)
    {
      sub_2203C37C0(v13, &v11);
      v9 = swift_allocObject();
      sub_2203C5934(&v11, v9 + 16);
      sub_22042ADD0();
      (*(v3 + 104))(v5, *MEMORY[0x277D6CE30], v2);
      sub_22042B920();
      swift_allocObject();
      v10 = sub_22042B910();
      __swift_destroy_boxed_opaque_existential_1(v13);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_220415ADC(void *a1)
{
  v2 = sub_22042AE70();
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v19 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D6CED0];
  sub_220416944(0, &qword_280FA2400, MEMORY[0x277D6CED0], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = sub_22042A790();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22042AA40();
  sub_22042A780();
  (*(v12 + 8))(v14, v11);
  v15 = v20;
  sub_220416AFC(v10, v8, &qword_280FA2400, v4);
  if ((*(v15 + 48))(v8, 1, v2) == 1)
  {
    sub_220416B7C(v10, &qword_280FA2400, MEMORY[0x277D6CED0]);
  }

  else
  {
    v16 = v19;
    (*(v15 + 32))(v19, v8, v2);
    sub_220415E48(&v21);
    (*(v15 + 8))(v16, v2);
    sub_220416B7C(v10, &qword_280FA2400, MEMORY[0x277D6CED0]);
    result = v21;
    if (v21)
    {
      return result;
    }
  }

  v18 = [objc_opt_self() defaultPolicy];

  return v18;
}

void sub_220415E48(void *a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  sub_22042A3E0();
  swift_allocObject();
  sub_22042A3D0();
  sub_22042AE70();
  sub_2203BFC94(&qword_280FA2408, MEMORY[0x277D6CED0], MEMORY[0x277D6CED8]);
  v4 = sub_22042A3C0();
  if (v2)
  {

    v6 = v2;
LABEL_3:
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v7 = qword_280FA0A00;
    v8 = sub_22042BC80();
    sub_2203C1EE8(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22042D3F0;
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_2203BFB80(0, &unk_280FA01A0, MEMORY[0x277D84948], 1);
    sub_22042BDF0();
    v10 = v24;
    v11 = v25;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2203C1FA8();
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    sub_22042B8D0("Failed to decode user event history pruning policy with error=%{public}@", 72, 2, &dword_2203BD000, v7, v8, v9, v6);
    MEMORY[0x223D7C730](v6);

    goto LABEL_6;
  }

  v13 = v4;
  v14 = v5;

  v15 = objc_opt_self();
  v16 = sub_22042A540();
  sub_2203DF1B0(v13, v14);
  v24 = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:&v24];

  if (!v17)
  {
    v21 = v24;
    v6 = sub_22042A480();

    swift_willThrow();
    goto LABEL_3;
  }

  v18 = v24;
  sub_22042BD00();
  swift_unknownObjectRelease();
  sub_220416404();
  if (swift_dynamicCast())
  {
    v19 = objc_allocWithZone(MEMORY[0x277D31388]);
    v20 = sub_22042B9B0();

    v12 = [v19 initWithDictionary_];

    goto LABEL_7;
  }

  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v22 = qword_280FA0A00;
  v23 = sub_22042BC80();
  sub_22042B8D0("Failed to decode user event history pruning policy", 50, 2, &dword_2203BD000, v22, v23, MEMORY[0x277D84F90]);
LABEL_6:
  v12 = 0;
LABEL_7:
  *a2 = v12;
}

uint64_t sub_22041620C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_220416304;

  return v6(a1);
}

uint64_t sub_220416304()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_220416404()
{
  if (!qword_280FA0480)
  {
    v0 = sub_22042B9D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0480);
    }
  }
}

uint64_t sub_220416468(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v41 = a2;
  v42 = a3;
  sub_220416944(0, &unk_280FA03F0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v34 - v6;
  sub_220416944(0, &qword_280FA03D8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85780]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  sub_220416944(0, &qword_280FA03D0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85788]);
  v37 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  sub_220416944(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  v17 = v16;
  v18 = *(v16 - 8);
  v38 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v43[3] = type metadata accessor for GroupIDStockMessageTranslator();
  v43[4] = &off_2834016E0;
  v43[0] = a1;
  v21 = OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_eventStream;
  v35 = OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_continuation;
  type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  (*(v9 + 104))(v11, *MEMORY[0x277D85778], v8);
  sub_22042BBA0();
  (*(v9 + 8))(v11, v8);
  v36 = *(v18 + 32);
  v22 = v39;
  v23 = v17;
  v36(v39 + v21, v20, v17);
  v24 = v22;
  (*(v13 + 32))(v22 + v35, v15, v37);
  sub_2203C37C0(v43, v22 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_groupIDStockMessageTranslator);
  v25 = v42;
  *(v22 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager) = v41;
  sub_2203C37C0(v25, v22 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_stockEntityService);
  v26 = sub_22042BB90();
  v27 = v40;
  (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v23;
  (*(v18 + 16))(v20, v24 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_eventStream, v23);
  v30 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v31 = (v38 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v36(v32 + v30, v20, v29);
  *(v32 + v31) = v28;

  sub_220414D48(0, 0, v27, &unk_220430A88, v32);

  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v24;
}

void sub_220416944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204169A8(uint64_t a1)
{
  v3 = v2;
  sub_220416944(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2203C3E30;

  return sub_2203D2848(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_220416AFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220416944(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220416B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220416944(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220416BEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220416D5C;

  return sub_22041620C(a1, v4);
}

uint64_t sub_220416CA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2203C3E30;

  return sub_22041620C(a1, v4);
}

char *sub_220416D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v159 = a2;
  v175 = a3;
  sub_220418144(0, &unk_280FA22F8, MEMORY[0x277CFBB58], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v174 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v182 = &v154 - v7;
  v180 = sub_22042B310();
  v164 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v173 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_22042B130();
  v178 = *(v162 - 8);
  v9 = MEMORY[0x28223BE20](v162);
  v172 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v154 - v11;
  v156 = sub_22042B460();
  v177 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22042B370();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v179 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for ArticleFeatures(0);
  v14 = *(v176 - 8);
  v15 = MEMORY[0x28223BE20](v176);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v181 = &v154 - v18;
  sub_220418144(0, &unk_280FA0248, sub_2203CB050, MEMORY[0x277D84560]);
  sub_2203CB050(0);
  v170 = v19;
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v169 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_220430150;
  v157 = v21;
  v168 = (v21 + v20);
  sub_22042B120();
  v22 = *(a1 + 16);
  v166 = v14;
  v171 = v22;
  v167 = a1;
  if (v22)
  {
    v184[0] = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v22, 0);
    v23 = v184[0];
    v24 = v14;
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v26 = *(v24 + 72);
    do
    {
      sub_2204181A8(v25, v17);
      v28 = *v17;
      v27 = *(v17 + 1);

      sub_22041820C(v17);
      v184[0] = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2203C3A84((v29 > 1), v30 + 1, 1);
        v23 = v184[0];
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      v25 += v26;
      --v22;
    }

    while (v22);
    a1 = v167;
    v14 = v166;
  }

  v32 = v168;
  sub_22042B300();
  v165 = &v169[v32];
  sub_22042B120();
  v33 = MEMORY[0x277D84F90];
  if (v171)
  {
    v34 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v35 = *(v14 + 72);
    v36 = v171;
    v37 = v181;
    do
    {
      sub_2204181A8(v34, v37);
      v184[0] = *(v37 + 16);
      sub_2203D193C();
      sub_2203CB0C0();

      v38 = sub_22042BA00();
      v40 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22041ECD0(0, *(v33 + 2) + 1, 1, v33);
      }

      v42 = *(v33 + 2);
      v41 = *(v33 + 3);
      v37 = v181;
      if (v42 >= v41 >> 1)
      {
        v33 = sub_22041ECD0((v41 > 1), v42 + 1, 1, v33);
        v37 = v181;
      }

      sub_22041820C(v37);
      *(v33 + 2) = v42 + 1;
      v43 = &v33[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      v34 += v35;
      --v36;
    }

    while (v36);
  }

  sub_22042B300();
  v44 = &v168[2 * v169];
  result = sub_22042B120();
  v46 = v171;
  if (v171)
  {
    v184[0] = MEMORY[0x277D84F90];
    sub_2203CE8EC(0, v171, 0);
    v47 = v184[0];
    v48 = v167 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
    v49 = *(v166 + 72);
    do
    {
      sub_2204181A8(v48, v17);
      v50 = *(v17 + 5);

      result = sub_22041820C(v17);
      v184[0] = v47;
      v52 = *(v47 + 16);
      v51 = *(v47 + 24);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        result = sub_2203CE8EC((v51 > 1), v52 + 1, 1);
        v47 = v184[0];
      }

      *(v47 + 16) = v53;
      *(v47 + 8 * v52 + 32) = v50;
      v48 += v49;
      --v46;
    }

    while (v46);
    goto LABEL_21;
  }

  v54 = MEMORY[0x277D84F90];
  v53 = *(MEMORY[0x277D84F90] + 16);
  v47 = MEMORY[0x277D84F90];
  if (!v53)
  {
LABEL_38:
    v65 = *(v170 + 48);

    *&v44[v65] = v54;
    v66 = *(v164 + 104);
    LODWORD(v181) = *MEMORY[0x277CFBB48];
    v165 = v66;
    (v66)(&v44[v65]);
    v163 = &v168[3 * v169];
    result = sub_22042B120();
    v67 = v171;
    if (v171)
    {
      v184[0] = MEMORY[0x277D84F90];
      sub_2203CE8EC(0, v171, 0);
      v68 = v184[0];
      v69 = v167 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v70 = *(v166 + 72);
      do
      {
        sub_2204181A8(v69, v17);
        v71 = *(v17 + 6);

        result = sub_22041820C(v17);
        v184[0] = v68;
        v73 = *(v68 + 16);
        v72 = *(v68 + 24);
        v74 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          result = sub_2203CE8EC((v72 > 1), v73 + 1, 1);
          v68 = v184[0];
        }

        *(v68 + 16) = v74;
        *(v68 + 8 * v73 + 32) = v71;
        v69 += v70;
        --v67;
      }

      while (v67);
      goto LABEL_45;
    }

    v75 = MEMORY[0x277D84F90];
    v74 = *(MEMORY[0x277D84F90] + 16);
    v68 = MEMORY[0x277D84F90];
    if (v74)
    {
LABEL_45:
      v76 = 0;
      v75 = MEMORY[0x277D84F90];
      do
      {
        if (v76 >= *(v68 + 16))
        {
          goto LABEL_126;
        }

        v77 = *(v68 + 8 * v76 + 32);
        v78 = *(v77 + 16);
        v79 = *(v75 + 2);
        v80 = v79 + v78;
        if (__OFADD__(v79, v78))
        {
          goto LABEL_127;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v80 <= *(v75 + 3) >> 1)
        {
          if (!*(v77 + 16))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v79 <= v80)
          {
            v81 = v79 + v78;
          }

          else
          {
            v81 = v79;
          }

          result = sub_22041EDF4(result, v81, 1, v75);
          v75 = result;
          if (!*(v77 + 16))
          {
LABEL_46:

            if (v78)
            {
              goto LABEL_128;
            }

            goto LABEL_47;
          }
        }

        v82 = *(v75 + 2);
        if ((*(v75 + 3) >> 1) - v82 < v78)
        {
          goto LABEL_136;
        }

        memcpy(&v75[4 * v82 + 32], (v77 + 32), 4 * v78);

        if (v78)
        {
          v83 = *(v75 + 2);
          v63 = __OFADD__(v83, v78);
          v84 = v83 + v78;
          if (v63)
          {
            goto LABEL_140;
          }

          *(v75 + 2) = v84;
        }

LABEL_47:
        ++v76;
      }

      while (v74 != v76);
    }

    v85 = *(v170 + 48);

    v86 = v163;
    *&v163[v85] = v75;
    (v165)(&v86[v85], v181, v180);
    v163 = &v168[4 * v169];
    result = sub_22042B120();
    v87 = v171;
    if (v171)
    {
      v184[0] = MEMORY[0x277D84F90];
      sub_2203CE8EC(0, v171, 0);
      v88 = v184[0];
      v89 = v167 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v90 = *(v166 + 72);
      do
      {
        sub_2204181A8(v89, v17);
        v91 = *(v17 + 7);

        result = sub_22041820C(v17);
        v184[0] = v88;
        v93 = *(v88 + 16);
        v92 = *(v88 + 24);
        v94 = v93 + 1;
        if (v93 >= v92 >> 1)
        {
          result = sub_2203CE8EC((v92 > 1), v93 + 1, 1);
          v88 = v184[0];
        }

        *(v88 + 16) = v94;
        *(v88 + 8 * v93 + 32) = v91;
        v89 += v90;
        --v87;
      }

      while (v87);
      goto LABEL_69;
    }

    v95 = MEMORY[0x277D84F90];
    v94 = *(MEMORY[0x277D84F90] + 16);
    v88 = MEMORY[0x277D84F90];
    if (v94)
    {
LABEL_69:
      v96 = 0;
      v95 = MEMORY[0x277D84F90];
      do
      {
        if (v96 >= *(v88 + 16))
        {
          goto LABEL_129;
        }

        v97 = *(v88 + 8 * v96 + 32);
        v98 = *(v97 + 16);
        v99 = *(v95 + 2);
        v100 = v99 + v98;
        if (__OFADD__(v99, v98))
        {
          goto LABEL_130;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v100 <= *(v95 + 3) >> 1)
        {
          if (!*(v97 + 16))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v99 <= v100)
          {
            v101 = v99 + v98;
          }

          else
          {
            v101 = v99;
          }

          result = sub_22041EDF4(result, v101, 1, v95);
          v95 = result;
          if (!*(v97 + 16))
          {
LABEL_70:

            if (v98)
            {
              goto LABEL_131;
            }

            goto LABEL_71;
          }
        }

        v102 = *(v95 + 2);
        if ((*(v95 + 3) >> 1) - v102 < v98)
        {
          goto LABEL_137;
        }

        memcpy(&v95[4 * v102 + 32], (v97 + 32), 4 * v98);

        if (v98)
        {
          v103 = *(v95 + 2);
          v63 = __OFADD__(v103, v98);
          v104 = v103 + v98;
          if (v63)
          {
            goto LABEL_141;
          }

          *(v95 + 2) = v104;
        }

LABEL_71:
        ++v96;
      }

      while (v94 != v96);
    }

    v105 = *(v170 + 48);

    v106 = v163;
    *&v163[v105] = v95;
    (v165)(&v106[v105], v181, v180);
    v169 = &v168[5 * v169];
    result = sub_22042B120();
    v107 = v171;
    if (v171)
    {
      v184[0] = MEMORY[0x277D84F90];
      sub_2203CE8EC(0, v171, 0);
      v108 = v184[0];
      v109 = v167 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v110 = *(v166 + 72);
      do
      {
        sub_2204181A8(v109, v17);
        v111 = *(v17 + 8);

        result = sub_22041820C(v17);
        v184[0] = v108;
        v113 = *(v108 + 16);
        v112 = *(v108 + 24);
        v114 = v113 + 1;
        if (v113 >= v112 >> 1)
        {
          result = sub_2203CE8EC((v112 > 1), v113 + 1, 1);
          v108 = v184[0];
        }

        *(v108 + 16) = v114;
        *(v108 + 8 * v113 + 32) = v111;
        v109 += v110;
        --v107;
      }

      while (v107);
    }

    else
    {
      v108 = MEMORY[0x277D84F90];
      v114 = *(MEMORY[0x277D84F90] + 16);
      v115 = MEMORY[0x277D84F90];
      if (!v114)
      {
LABEL_110:
        v126 = *(v170 + 48);

        v127 = v169;
        *&v169[v126] = v115;
        (v165)(&v127[v126], v181, v180);
        sub_22042B340();
        sub_2203C37C0(v158 + 16, v184);
        v128 = v185;
        v129 = v186;
        v130 = __swift_project_boxed_opaque_existential_1(v184, v185);
        v131 = v171;
        if (v171)
        {
          v168 = v130;
          v169 = v129;
          v170 = v128;
          v183 = MEMORY[0x277D84F90];
          sub_2203CE89C(0, v171, 0);
          v132 = v183;
          v133 = v167 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
          v181 = *(v166 + 72);
          v134 = (v177 + 16);
          v135 = v156;
          v136 = v154;
          do
          {
            v137 = v131;
            sub_2204181A8(v133, v17);
            (*v134)(v136, &v17[*(v176 + 56)], v135);
            sub_22041820C(v17);
            v183 = v132;
            v139 = *(v132 + 16);
            v138 = *(v132 + 24);
            if (v139 >= v138 >> 1)
            {
              sub_2203CE89C((v138 > 1), v139 + 1, 1);
              v135 = v156;
              v132 = v183;
            }

            *(v132 + 16) = v139 + 1;
            (*(v177 + 32))(v132 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v139, v136, v135);
            v133 += v181;
            --v131;
          }

          while (v137 != 1);
        }

        sub_22042B4E0();

        __swift_destroy_boxed_opaque_existential_1(v184);
        v140 = sub_22042B350();
        v141 = *(v140 + 16);
        v142 = v162;
        if (v141)
        {
          v143 = *(v178 + 16);
          v144 = (*(v178 + 80) + 32) & ~*(v178 + 80);
          v167 = v140;
          v145 = v140 + v144;
          v146 = (v164 + 48);
          v176 = v164 + 32;
          v147 = *(v178 + 72);
          v169 = (v164 + 56);
          v170 = v164 + 16;
          v168 = (v164 + 8);
          v181 = v178 + 8;
          v178 += 16;
          v148 = v155;
          v177 = v164 + 48;
          v171 = v147;
          v149 = v180;
          v143(v155, v140 + v144, v162);
          while (1)
          {
            sub_22042B380();
            v153 = v182;
            if ((*v146)(v182, 1, v149) == 1)
            {
              (*v181)(v148, v142);
              sub_220418268(v153);
            }

            else
            {
              v150 = v173;
              (*v176)(v173, v153, v149);
              v143(v172, v148, v142);
              v151 = v174;
              (*v170)(v174, v150, v149);
              (*v169)(v151, 0, 1, v149);
              v146 = v177;
              sub_22042B390();
              v152 = v150;
              v147 = v171;
              (*v168)(v152, v149);
              (*v181)(v148, v142);
            }

            v145 += v147;
            if (!--v141)
            {
              break;
            }

            v143(v148, v145, v142);
          }
        }

        return (*(v160 + 8))(v179, v161);
      }
    }

    v116 = 0;
    v115 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v116 >= *(v108 + 16))
      {
        goto LABEL_132;
      }

      v117 = v108;
      v118 = *(v108 + 8 * v116 + 32);
      v119 = *(v118 + 16);
      v120 = *(v115 + 2);
      v121 = v120 + v119;
      if (__OFADD__(v120, v119))
      {
        goto LABEL_133;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v121 <= *(v115 + 3) >> 1)
      {
        if (!*(v118 + 16))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v120 <= v121)
        {
          v122 = v120 + v119;
        }

        else
        {
          v122 = v120;
        }

        result = sub_22041EDF4(result, v122, 1, v115);
        v115 = result;
        if (!*(v118 + 16))
        {
LABEL_94:

          v108 = v117;
          if (v119)
          {
            goto LABEL_134;
          }

          goto LABEL_95;
        }
      }

      v123 = *(v115 + 2);
      if ((*(v115 + 3) >> 1) - v123 < v119)
      {
        goto LABEL_138;
      }

      memcpy(&v115[4 * v123 + 32], (v118 + 32), 4 * v119);

      v108 = v117;
      if (v119)
      {
        v124 = *(v115 + 2);
        v63 = __OFADD__(v124, v119);
        v125 = v124 + v119;
        if (v63)
        {
          goto LABEL_142;
        }

        *(v115 + 2) = v125;
      }

LABEL_95:
      if (v114 == ++v116)
      {
        goto LABEL_110;
      }
    }
  }

LABEL_21:
  v55 = 0;
  v54 = MEMORY[0x277D84F90];
  while (v55 < *(v47 + 16))
  {
    v56 = *(v47 + 8 * v55 + 32);
    v57 = *(v56 + 16);
    v58 = *(v54 + 2);
    v59 = v58 + v57;
    if (__OFADD__(v58, v57))
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v59 <= *(v54 + 3) >> 1)
    {
      if (!*(v56 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v58 <= v59)
      {
        v60 = v58 + v57;
      }

      else
      {
        v60 = v58;
      }

      result = sub_22041EDF4(result, v60, 1, v54);
      v54 = result;
      if (!*(v56 + 16))
      {
LABEL_22:

        if (v57)
        {
          goto LABEL_125;
        }

        goto LABEL_23;
      }
    }

    v61 = *(v54 + 2);
    if ((*(v54 + 3) >> 1) - v61 < v57)
    {
      goto LABEL_135;
    }

    memcpy(&v54[4 * v61 + 32], (v56 + 32), 4 * v57);

    if (v57)
    {
      v62 = *(v54 + 2);
      v63 = __OFADD__(v62, v57);
      v64 = v62 + v57;
      if (v63)
      {
        goto LABEL_139;
      }

      *(v54 + 2) = v64;
    }

LABEL_23:
    if (v53 == ++v55)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_22041810C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_220418144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204181A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleFeatures(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22041820C(uint64_t a1)
{
  v2 = type metadata accessor for ArticleFeatures(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220418268(uint64_t a1)
{
  sub_220418144(0, &unk_280FA22F8, MEMORY[0x277CFBB58], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2204182F4(uint64_t result, uint64_t a2)
{
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v4 = result;
    v8 = sub_22041867C(2 * a2);
    v9 = v5;
    sub_22041836C(&v8, 0);
    v6 = v8;
    v7 = v9;
    result = sub_2203DF1B0(*v4, *(v4 + 8));
    *v4 = v6;
    *(v4 + 8) = v7;
  }

  return result;
}

uint64_t *sub_22041836C(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_2203DF1B0(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_22042D6B0;
      sub_2203DF1B0(0, 0xC000000000000000);
      result = sub_2204185D4(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_2203DF1B0(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_2203DF1B0(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_22042D6B0;
  sub_2203DF1B0(0, 0xC000000000000000);
  sub_22042A510();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_22042A430();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_22042A460();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_22042A450();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_2204185D4(int *a1, int a2)
{
  result = sub_22042A520();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_22042A430();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_22042A460();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_22042A450();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_22041867C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_22042A470();
      swift_allocObject();
      sub_22042A440();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22042A530();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_22041871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v78 = a2;
  v75 = sub_22042A680();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042B130();
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203CDA6C(0);
  v9 = v8;
  v76 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v79 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksTabiArticleData(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v103 = a1;
  v84 = v13;
  v85 = v13;
  v86 = &off_280FA1360;
  swift_getKeyPath();
  sub_2203C3120(0, &qword_280FA0428, type metadata accessor for StocksTabiArticleData, MEMORY[0x277D83940]);
  sub_220421078();
  v16 = sub_22042BAF0();

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_10:

    return sub_2203CF834(MEMORY[0x277D84F90]);
  }

  v71 = v9;
  v72 = 0;
  v69 = v5;
  v70 = v7;
  *&v103 = MEMORY[0x277D84F90];
  v83 = v17;
  sub_2203C3A84(0, v17, 0);
  v18 = 0;
  v19 = v103;
  v82 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  do
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v20 = v12;
    v21 = v19;
    sub_220421400(v82 + *(v12 + 72) * v18, v15, type metadata accessor for StocksTabiArticleData);
    v22 = [swift_unknownObjectRetain() itemID];
    v23 = sub_22042BA30();
    v25 = v24;
    swift_unknownObjectRelease();

    sub_220421100(v15, type metadata accessor for StocksTabiArticleData);
    v19 = v21;
    *&v103 = v21;
    v26 = *(v21 + 16);
    v27 = *(v19 + 24);
    if (v26 >= v27 >> 1)
    {
      sub_2203C3A84((v27 > 1), v26 + 1, 1);
      v19 = v103;
    }

    ++v18;
    *(v19 + 16) = v26 + 1;
    v28 = v19 + 16 * v26;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    v12 = v20;
  }

  while (v83 != v18);
  v29 = v80;
  v30 = v81;
  if (!*(v16 + 16))
  {
    goto LABEL_10;
  }

  v31 = MEMORY[0x28223BE20](v19);
  *(&v69 - 6) = v31;
  *(&v69 - 5) = v29;
  *(&v69 - 4) = v30;
  *(&v69 - 3) = v16;
  *(&v69 - 2) = v78;
  v32 = v31;
  v33 = v72;
  sub_22042B1C0();
  if (v33)
  {

    v15 = v33;
    goto LABEL_31;
  }

  v84 = v32;

  if (*(v29 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed))
  {
    sub_22042B1D0();
    v115 = v100;
    v116 = v101;
    v117 = v102;
    v111 = v96;
    v112 = v97;
    v113 = v98;
    v114 = v99;
    v107 = v92;
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v103 = v88;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    sub_2203CF92C(&v103, v87);
    sub_2203CF988(&v103);
    v35 = *(&v103 + 1);
    v82 = v105;
  }

  else
  {
    sub_22042B1D0();
    v115 = v100;
    v116 = v101;
    v117 = v102;
    v111 = v96;
    v112 = v97;
    v113 = v98;
    v114 = v99;
    v107 = v92;
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v103 = v88;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    sub_2203CF92C(&v103, v87);
    sub_2203CF988(&v103);
    v35 = *(&v107 + 1);
    v82 = v109;
  }

  v83 = v35;

  sub_2203CF9DC(&v103);
  v36 = v70;
  v38 = v73;
  v37 = v74;
  v39 = v30;
  v40 = v75;
  (*(v73 + 16))(v74, v39, v75);
  v41 = (*(v38 + 88))(v37, v40);
  if (v41 == *MEMORY[0x277D692E0])
  {
    v42 = *(v38 + 8);

    v42(v37, v40);

    goto LABEL_17;
  }

  if (v41 == *MEMORY[0x277D692D0])
  {
LABEL_17:
    v43 = v71;
    v44 = v36;
    goto LABEL_19;
  }

  v43 = v71;
  v44 = v36;
  if (v41 != *MEMORY[0x277D692D8])
  {
    result = sub_22042BF40();
    __break(1u);
    return result;
  }

LABEL_19:

  sub_22042B120();
  sub_2204215E8(&qword_280FA2340, sub_2203CDA6C, MEMORY[0x277CFBAF8]);
  v45 = sub_22042B2B0();
  v46 = *(v45 + 16);
  if (v46)
  {
    *&v103 = MEMORY[0x277D84F90];
    v47 = v45;
    sub_2203CE87C(0, v46, 0);
    v48 = v47;
    v49 = v103;
    v50 = *(v103 + 16);
    v51 = 32;
    do
    {
      v52 = *(v48 + v51);
      *&v103 = v49;
      v53 = v49[3];
      if (v50 >= v53 >> 1)
      {
        sub_2203CE87C((v53 > 1), v50 + 1, 1);
        v48 = v47;
        v49 = v103;
      }

      v49[2] = v50 + 1;
      *&v49[v50 + 4] = v52;
      v51 += 4;
      ++v50;
      --v46;
    }

    while (v46);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v54 = v49[2];
  v55 = v84[2];
  if (v54 != v55)
  {

    *&v103 = 0;
    *(&v103 + 1) = 0xE000000000000000;
    sub_22042BD70();

    *&v103 = 0x20646E756F46;
    *(&v103 + 1) = 0xE600000000000000;
    *&v88 = v54;
    v60 = sub_22042BF20();
    MEMORY[0x223D7BDE0](v60);

    MEMORY[0x223D7BDE0](0xD000000000000015, 0x80000002204317A0);
    *&v88 = v55;
    v61 = sub_22042BF20();
    MEMORY[0x223D7BDE0](v61);

    v62 = v103;
    sub_2203CFA88();
    v15 = swift_allocError();
    *v63 = v62;
    *(v63 + 16) = 1;
    swift_willThrow();
    (*(v77 + 8))(v44, v69);
    (*(v76 + 8))(v79, v43);
LABEL_31:
    if (qword_280FA0650 == -1)
    {
LABEL_32:
      v64 = qword_280FA0658;
      v65 = sub_22042BC80();
      sub_220420DE4(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_22042D3F0;
      *&v103 = 0;
      *(&v103 + 1) = 0xE000000000000000;
      *&v88 = v15;
      sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
      sub_22042BDF0();
      v67 = v103;
      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = sub_2203C1FA8();
      *(v66 + 32) = v67;
      sub_22042B8D0("Unable to build and call subgraph computation: %{public}@", 57, 2, &dword_2203BD000, v64, v65, v66);

      v68 = sub_2203CF834(MEMORY[0x277D84F90]);
      MEMORY[0x223D7C730](v15);
      return v68;
    }

LABEL_34:
    swift_once();
    goto LABEL_32;
  }

  if (qword_280FA0808 != -1)
  {
    swift_once();
  }

  sub_220420DE4(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  v57 = MEMORY[0x277D83B88];
  *(v56 + 16) = xmmword_22042D3F0;
  v58 = MEMORY[0x277D83C10];
  *(v56 + 56) = v57;
  *(v56 + 64) = v58;
  *(v56 + 32) = v54;
  sub_22042BCA0();
  sub_22042B8D0("Successfully scored %d items", v69);

  v59 = sub_2203CFADC(v84, v49);

  (*(v77 + 8))(v44, v69);
  (*(v76 + 8))(v79, v43);
  return v59;
}

uint64_t sub_220419354@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a6;
  v38 = a5;
  v37 = a4;
  v44 = a7;
  v10 = sub_22042B370();
  MEMORY[0x28223BE20](v10 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22042A680();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22042B130();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[9];
  v46[8] = a1[8];
  v46[9] = v17;
  v46[10] = a1[10];
  v18 = a1[5];
  v46[4] = a1[4];
  v46[5] = v18;
  v19 = a1[7];
  v46[6] = a1[6];
  v46[7] = v19;
  v20 = a1[1];
  v46[0] = *a1;
  v46[1] = v20;
  v21 = a1[3];
  v46[2] = a1[2];
  v46[3] = v21;
  if (qword_280FA0808 != -1)
  {
    swift_once();
  }

  sub_220420DE4(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  v36 = xmmword_22042D3F0;
  *(v22 + 16) = xmmword_22042D3F0;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x277D83C10];
  *(v22 + 56) = MEMORY[0x277D83B88];
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  sub_22042BCA0();
  sub_22042B8D0("Attempting to score %d items", v36);

  if (*(a3 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed) == 1)
  {
    v47 = *a1;
  }

  else
  {
    v47 = a1[4];
  }

  sub_2203CFEC4(&v47, v45);

  (*(v13 + 16))(v15, v37, v12);
  v25 = (*(v13 + 88))(v15, v12);
  if (v25 == *MEMORY[0x277D692E0])
  {
    v26 = *(v13 + 8);

    v26(v15, v12);

LABEL_10:

    v27 = v39;
    sub_22042B120();
    v28 = sub_220419900(v38);
    sub_2203CE184(v46, v28, v41);

    v40 = sub_22042A5C0();
    v38 = v29;
    v37 = qword_27CF524E0;
    sub_2203C3120(0, &qword_280FA0258, MEMORY[0x277CFBAD0], MEMORY[0x277D84560]);
    v30 = v42;
    v31 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v36;
    v33 = v43;
    (*(v30 + 16))(v32 + v31, v27, v43);

    sub_2204211D0(v32);
    swift_setDeallocating();
    v34 = *(v30 + 8);
    v34(v32 + v31, v33);
    swift_deallocClassInstance();
    sub_22042B320();
    return (v34)(v27, v33);
  }

  if (v25 == *MEMORY[0x277D692D0] || v25 == *MEMORY[0x277D692D8])
  {
    goto LABEL_10;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_220419900(uint64_t a1)
{
  v2 = type metadata accessor for StocksTabiArticleData(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2203CE9FC(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_220421400(v8, v5, type metadata accessor for StocksTabiArticleData);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2203CE9FC((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_280FA1360;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_220421400(v5, boxed_opaque_existential_1, type metadata accessor for StocksTabiArticleData);
      *(v7 + 16) = v11 + 1;
      sub_2203C5934(&v14, v7 + 40 * v11 + 32);
      sub_220421100(v5, type metadata accessor for StocksTabiArticleData);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_220419AD0(uint64_t a1)
{
  v2 = sub_22042A6E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2203CEAD4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2203CEAD4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D692E8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_2203C5934(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_220419C9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_22042AAC0();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_22041ECD0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_22041ECD0((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 16) = v17;
    v18 = v8 + 16 * v16;
    *(v18 + 32) = v21;
    *(v18 + 40) = v13;
  }

  while (v7 != v4);
  return v8;
}

void *NewsHeadlineScorerFactory.workServiceScoringService.getter()
{
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

uint64_t NewsHeadlineScorerFactory.__allocating_init(stockEntityService:watchlistManager:appConfigurationManager:newsPersonalizationScorer:workServiceScoringService:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_2203C5934(a1, v10 + 16);
  sub_2203C5934(a2, v10 + 56);
  sub_2203C5934(a3, v10 + 96);
  sub_2203C5934(a4, v10 + 136);
  *(v10 + 176) = a5;
  return v10;
}

uint64_t NewsHeadlineScorerFactory.init(stockEntityService:watchlistManager:appConfigurationManager:newsPersonalizationScorer:workServiceScoringService:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  sub_2203C5934(a1, v5 + 16);
  sub_2203C5934(a2, v5 + 56);
  sub_2203C5934(a3, v5 + 96);
  sub_2203C5934(a4, v5 + 136);
  *(v5 + 176) = a5;
  return v5;
}

uint64_t NewsHeadlineScorerFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  return v0;
}

uint64_t NewsHeadlineScorerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t NewsHeadlineScorerFactory.fetchHeadlineScorer()()
{
  sub_2203C3120(0, &unk_280FA25E0, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_22042AF00();

  v0 = sub_22042AEA0();
  sub_2203C33A4(0);
  sub_22042AED0();

  v1 = sub_22042AEA0();
  sub_2203CFDB8(0, &unk_280FA2890, MEMORY[0x277D695D8]);
  v2 = sub_22042AED0();

  return v2;
}

uint64_t sub_22041A1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2203C33A4(0);
  v7 = *(v6 + 48);
  *a3 = a2;
  v8 = sub_22042A830();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
}

uint64_t sub_22041A24C(uint64_t a1, void *a2)
{
  v51 = a2;
  v3 = sub_22042A5B0();
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22042A790();
  v67 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = sub_22042A830();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  sub_2203C33A4(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220421400(a1, v19, sub_2203C33A4);
  v49 = *v19;
  v20 = v10[1];
  v21 = v19 + *(v17 + 56);
  v55 = v10 + 1;
  v54 = v20;
  v20(v21, v9);
  sub_220421400(a1, v19, sub_2203C33A4);

  v22 = v10[4];
  v23 = v19 + *(v17 + 56);
  v59 = v9;
  v22(v15, v23, v9);
  v24 = v51;
  __swift_project_boxed_opaque_existential_1(v51 + 12, v51[15]);
  sub_22042AA40();
  v25 = v10[2];
  v56 = v15;
  v25(v13, v15, v9);
  v26 = *(v67 + 16);
  v27 = v50;
  v57 = v8;
  v28 = v8;
  v29 = v58;
  v26(v50, v28, v58);
  sub_2203C37C0((v24 + 17), v66);
  v30 = v24[22];
  v48 = type metadata accessor for NewsHeadlineScorer(0);
  v31 = swift_allocObject();
  v47 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v25((v31 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities), v13, v59);
  v32 = v29;
  v33 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v26((v31 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration), v27, v29);
  v34 = v49;
  v61 = v13;
  v51 = v30;
  v35 = v30;
  v36 = v52;
  v37 = sub_220419C9C(sub_2204217B8, v60, v34);
  v52 = v36;
  if (v36)
  {
    MEMORY[0x223D7C730](v52);
    v54(v31 + v47, v59);
    (*(v67 + 8))(v31 + v33, v29);
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v38 = v37;

    *(v31 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities) = v38;
    v62[3] = sub_22042AA80();
    v62[4] = MEMORY[0x277D69700];
    __swift_allocate_boxed_opaque_existential_1(v62);

    sub_22042A770();
    sub_22042A5A0();
    v64 = sub_22042A640();
    v65 = MEMORY[0x277D69260];
    __swift_allocate_boxed_opaque_existential_1(&v63);
    sub_22042A620();
    v67 = *(v67 + 8);
    (v67)(v27, v32);
    sub_2203C5934(&v63, v31 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer);
    sub_2203C5934(v66, v31 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer);
    *(v31 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService) = v51;
    v39 = v13;
    v40 = v59;
    v41 = v54;
    v54(v39, v59);
    sub_22042AF00();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_220421520;
    *(v42 + 24) = v31;

    v43 = sub_22042AEA0();
    sub_2203CFDB8(0, &unk_280FA2890, MEMORY[0x277D695D8]);
    v44 = sub_22042AEE0();

    (v67)(v57, v58);
    v41(v56, v40);
    return v44;
  }

  return result;
}

uint64_t NewsHeadlineScorer.__allocating_init(stocks:stockEntities:appConfiguration:newsPersonalizationScorer:workServiceScoringService:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v8 = sub_22042A5B0();
  MEMORY[0x28223BE20](v8 - 8);
  v24[3] = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v12 = sub_22042A830();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v24[2] = v11;
  v25 = v12;
  v14(v10 + v11, a2);
  v15 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v16 = sub_22042A790();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v24[1] = v15;
  v19 = v10 + v15;
  v20 = a3;
  v18(v19, a3, v16);
  v28 = a2;
  v30 = a2;
  v21 = sub_220419C9C(sub_22041B0E0, v29, a1);

  *(v10 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities) = v21;
  v31[3] = sub_22042AA80();
  v31[4] = MEMORY[0x277D69700];
  __swift_allocate_boxed_opaque_existential_1(v31);

  sub_22042A770();
  sub_22042A5A0();
  v33 = sub_22042A640();
  v34 = MEMORY[0x277D69260];
  __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_22042A620();
  (*(v17 + 8))(v20, v16);
  sub_2203C5934(&v32, v10 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer);
  sub_2203C5934(v26, v10 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer);
  v22 = v28;
  *(v10 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService) = v27;
  (*(v13 + 8))(v22, v25);
  return v10;
}

uint64_t sub_22041ACC8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *NewsHeadlineScorer.workServiceScoringService.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService);
  v2 = v1;
  return v1;
}

char *NewsHeadlineScorer.init(stocks:stockEntities:appConfiguration:newsPersonalizationScorer:workServiceScoringService:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_22042A5B0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v12 = sub_22042A830();
  v13 = *(v12 - 8);
  v19 = v12;
  (*(v13 + 16))(v6 + v11, a2);
  v14 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v15 = sub_22042A790();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6 + v14, a3, v15);
  v23 = a2;
  v17 = sub_220419C9C(sub_2204217B8, v22, a1);

  *(v6 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities) = v17;
  v24[3] = sub_22042AA80();
  v24[4] = MEMORY[0x277D69700];
  __swift_allocate_boxed_opaque_existential_1(v24);

  sub_22042A770();
  sub_22042A5A0();
  v26 = sub_22042A640();
  v27 = MEMORY[0x277D69260];
  __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_22042A620();
  (*(v16 + 8))(a3, v15);
  sub_2203C5934(&v25, v6 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer);
  sub_2203C5934(a4, v6 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer);
  *(v6 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService) = a5;
  (*(v13 + 8))(a2, v19);
  return v6;
}

uint64_t NewsHeadlineScorer.deinit()
{
  v1 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v2 = sub_22042A830();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v4 = sub_22042A790();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer));

  return v0;
}

uint64_t NewsHeadlineScorer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v2 = sub_22042A830();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v4 = sub_22042A790();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer));

  return swift_deallocClassInstance();
}

void *NewsHeadlineScorer.scoreHeadlines(_:origin:)(char *a1, void *a2)
{
  v112 = sub_22042A610();
  v103 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v6 = (&v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22042A9A0();
  MEMORY[0x28223BE20](v7 - 8);
  v106 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_22042A930();
  v127 = *(v131 - 8);
  v9 = MEMORY[0x28223BE20](v131);
  v126 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v130 = &v102 - v11;
  v125 = type metadata accessor for ScorableHeadline(0);
  v118 = *(v125 - 8);
  v12 = MEMORY[0x28223BE20](v125);
  v108 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v102 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v122 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v117 = (&v102 - v18);
  sub_22041C240(0);
  v123 = v19;
  v111 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v104 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v121 = (&v102 - v22);
  v23 = sub_22042A5E0();
  v115 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v114 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StocksTabiArticleData(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = (&v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_22041C2F4(a2);
  v132 = v2;
  v133 = v29;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer), *(v2 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer + 24));
  v30 = sub_22042AA20();
  v31 = a1;
  v120 = v30;
  v116 = v23;
  if (a1 >> 62)
  {
LABEL_63:
    v100 = v31;
    v101 = sub_22042BE10();
    v31 = v100;
    v32 = v101;
  }

  else
  {
    v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v32 & ~(v32 >> 63);
  v109 = v6;
  v128 = v31;
  v124 = v32;
  v119 = a2;
  if (v32)
  {
    v34 = v31;
    v134[0] = MEMORY[0x277D84F90];
    result = sub_2203CEA84(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

    v36 = 0;
    a2 = v134[0];
    v31 = v34;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D7C0A0](v36, v31);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      sub_22041C548(v129, v133, v28);
      swift_unknownObjectRelease();
      v134[0] = a2;
      v38 = a2[2];
      v37 = a2[3];
      if (v38 >= v37 >> 1)
      {
        sub_2203CEA84((v37 > 1), v38 + 1, 1);
        a2 = v134[0];
      }

      ++v36;
      a2[2] = v38 + 1;
      sub_2204208BC(v28, a2 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v38, type metadata accessor for StocksTabiArticleData);
      v32 = v124;
      v31 = v128;
    }

    while (v124 != v36);
  }

  else
  {
    a2 = MEMORY[0x277D84F90];
  }

  v39 = v31;
  v40 = *(v132 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService);
  v26 = v123;
  v6 = v120;
  if (v40)
  {
    v41 = v40;
    v42 = v114;
    sub_22042A5D0();
    v119 = sub_22041871C(a2, v42, v119);

    (*(v115 + 8))(v42, v116);
  }

  else
  {

    v119 = sub_2203CF834(MEMORY[0x277D84F90]);
  }

  if (!v32)
  {

    v28 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v134[0] = MEMORY[0x277D84F90];
  result = sub_2203CEA34(0, v33, 0);
  if (v32 < 0)
  {
    goto LABEL_65;
  }

  v43 = 0;
  v28 = v134[0];
  v44 = v39;
  v116 = (v39 & 0xC000000000000001);
  do
  {
    if (v116)
    {
      a2 = MEMORY[0x223D7C0A0](v43, v44);
    }

    else
    {
      a2 = *&v44[8 * v43 + 32];
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v45 = [a2 articleID];
    v46 = sub_22042BA30();
    v48 = v47;

    v49 = [a2 articleID];
    v50 = sub_22042BA30();
    v52 = v51;

    if (v6[2])
    {
      v53 = sub_2203FFB78(v50, v52);
      v55 = v54;

      if (v55)
      {
        v56 = *(v6[7] + 8 * v53);
        v57 = v56;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v56 = 0;
LABEL_28:
    v58 = v119;
    if (v119[2])
    {
      v59 = sub_2203FFB78(v46, v48);
      v61 = v60;

      if (v61)
      {
        v62 = 0;
        v63 = *(v58[7] + 8 * v59);
        goto LABEL_33;
      }
    }

    else
    {
    }

    v63 = 0.0;
    v62 = 1;
LABEL_33:
    v26 = v123;
    v64 = v117;
    FCHeadlineProviding.scorable(withOrigin:newsScoreProfile:tabiScore:)(v56, v63, v62, v117);
    swift_unknownObjectRelease();

    v134[0] = v28;
    v66 = *(v28 + 2);
    v65 = *(v28 + 3);
    if (v66 >= v65 >> 1)
    {
      sub_2203CEA34((v65 > 1), v66 + 1, 1);
      v28 = v134[0];
    }

    ++v43;
    *(v28 + 2) = v66 + 1;
    sub_2204208BC(v64, v28 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v66, type metadata accessor for ScorableHeadline);
    v44 = v128;
    v6 = v120;
  }

  while (v124 != v43);

LABEL_38:
  __swift_project_boxed_opaque_existential_1((v132 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer), *(v132 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer + 24));
  sub_2204215E8(qword_280FA27F0, type metadata accessor for ScorableHeadline, &protocol conformance descriptor for ScorableHeadline);
  v67 = sub_22042A840();

  v68 = v67;
  v124 = *(v67 + 16);
  if (v124)
  {
    v69 = 0;
    v129 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities;
    v31 = (v67 + ((*(v111 + 80) + 32) & ~*(v111 + 80)));
    v128 = (v127 + 32);
    v118 = v111 + 8;
    v119 = (v111 + 16);
    v70 = MEMORY[0x277D84F98];
    v110 = v68;
    v105 = v31;
    do
    {
      if (v69 >= *(v68 + 16))
      {
        goto LABEL_62;
      }

      v120 = v70;
      v117 = *(v111 + 72);
      v115 = v69;
      v116 = *(v111 + 16);
      (v116)(v121, &v31[v117 * v69], v26);
      v77 = v122;
      sub_22042A660();
      v78 = [*v77 identifier];
      v113 = sub_22042BA30();
      v114 = v79;

      a2 = *(v77 + 9);
      v133 = a2[2];
      if (v133)
      {
        v26 = 0;
        v6 = a2 + 5;
        v28 = MEMORY[0x277D84F90];
        while (v26 < a2[2])
        {
          v81 = *v6;
          v82 = *(v132 + v129);
          v134[0] = *(v6 - 1);
          v134[1] = v81;
          MEMORY[0x28223BE20](v80);
          *(&v102 - 2) = v134;

          if (sub_220420810(sub_220420924, (&v102 - 4), v82))
          {
            v83 = v126;
            sub_22042A920();
            v84 = *v128;
            (*v128)(v130, v83, v131);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_22041F0B8(0, *(v28 + 2) + 1, 1, v28, &unk_280FA2580, MEMORY[0x277D69420], MEMORY[0x277D69420]);
            }

            v86 = *(v28 + 2);
            v85 = *(v28 + 3);
            if (v86 >= v85 >> 1)
            {
              v28 = sub_22041F0B8((v85 > 1), v86 + 1, 1, v28, &unk_280FA2580, MEMORY[0x277D69420], MEMORY[0x277D69420]);
            }

            *(v28 + 2) = v86 + 1;
            v80 = v84(v28 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v86, v130, v131);
          }

          else
          {
          }

          ++v26;
          v6 += 2;
          if (v133 == v26)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_40:
      v71 = v115 + 1;
      v6 = v109;
      v26 = v123;
      a2 = v121;
      sub_22042A650();
      v72 = v122;
      v73 = *&v122[*(v125 + 60)];
      v74 = v106;
      sub_22042A8F0();
      v75 = v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134[0] = v75;
      sub_220420690(v74, v113, v114, isUniquelyReferenced_nonNull_native);

      v28 = *v118;
      v69 = v71;
      (*v118)(a2, v26);
      v70 = v134[0];
      sub_220421100(v72, type metadata accessor for ScorableHeadline);
      v68 = v110;
      v31 = v105;
    }

    while (v71 != v124);
    v120 = v70;
    v87 = (v103 + 8);
    v88 = v104;
    do
    {
      v89 = v31;
      v116(v88);
      v90 = v107;
      sub_22042A660();
      v91 = *(v90 + *(v125 + 60));
      v92 = v91;
      sub_220421100(v90, type metadata accessor for ScorableHeadline);
      if (v91)
      {
        sub_22042A650();
        sub_22042A600();
        v94 = v93;
        (*v87)(v6, v112);
        [v92 setTabiScore_];
      }

      v95 = v108;
      sub_22042A660();
      v96 = *(v95 + *(v125 + 60));
      v97 = v96;
      sub_220421100(v95, type metadata accessor for ScorableHeadline);
      if (v96)
      {
        sub_22042A650();
        sub_22042A5F0();
        v99 = v98;
        (*v87)(v6, v112);
        [v97 setAgedPersonalizationScore_];
      }

      v28(v88, v26);
      v31 = v117 + v89;
      --v124;
    }

    while (v124);

    return v120;
  }

  else
  {

    return MEMORY[0x277D84F98];
  }
}

void sub_22041C240(uint64_t a1)
{
  if (!qword_280FA28B8)
  {
    type metadata accessor for ScorableHeadline(255);
    sub_2204215E8(qword_280FA27F0, type metadata accessor for ScorableHeadline, &protocol conformance descriptor for ScorableHeadline);
    v1 = sub_22042A670();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA28B8);
    }
  }
}

uint64_t sub_22041C2F4(uint64_t a1)
{
  v2 = sub_22042AAC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042A680();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D692E0])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    sub_22042AAB0();
    v11 = sub_22042A820();
    v13 = v12;

    if (!v13)
    {
      v11 = 0;
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (v10 != *MEMORY[0x277D692D0] && v10 != *MEMORY[0x277D692D8])
    {
      result = sub_22042BF40();
      __break(1u);
      return result;
    }

    return 0;
  }

  return v11;
}

uint64_t sub_22041C548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v5 = v4;
  v9 = sub_22042A810();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksTabiArticleData(0);
  v14 = v13[5];

  sub_22041E568(a4 + v14);
  sub_22042BCB0();
  v15 = sub_22042A800();
  (*(v10 + 8))(v12, v9);
  *a4 = a1;
  a4[1] = a2;
  *(a4 + v13[6]) = v15;
  *(a4 + v13[7]) = v5;
  return swift_unknownObjectRetain();
}

uint64_t FCHeadlineProviding.scorable(withOrigin:newsScoreProfile:tabiScore:)@<X0>(void *a3@<X2>, double a4@<X3>, int a5@<W4>, double *a7@<X8>)
{
  v8 = v7;
  v102 = a5;
  v101 = a4;
  v103 = a3;
  v10 = MEMORY[0x277D83D88];
  sub_2203C3120(0, &qword_280FA28D8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v97 = v82 - v12;
  v13 = sub_22042A5B0();
  v99 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v85 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = v82 - v16;
  v109 = sub_22042A7E0();
  v105 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203C3120(0, &qword_280FA28A0, MEMORY[0x277D693A8], v10);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v87 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v86 = v82 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v82 - v23;
  v96 = sub_22042A810();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v26 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22042A750();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v28 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22041E568(v28);
  v29 = v24;
  sub_22042BCB0();
  sub_22042A7F0();
  v112 = sub_22042A740();
  v113 = MEMORY[0x277D692F0];
  __swift_allocate_boxed_opaque_existential_1(&v111);
  sub_22042A6A0();
  v91 = v28;
  v30 = sub_22042A6F0();
  v90 = sub_220419AD0(v30);

  v31 = [v8 sourceChannelID];
  v100 = v13;
  if (v31)
  {
    v32 = v31;
    v89 = sub_22042BA30();
    v88 = v33;
  }

  else
  {
    v89 = 0;
    v88 = 0xE000000000000000;
  }

  v94 = v26;
  v34 = sub_22042A800();
  v35 = *(v34 + 16);
  v104 = v29;
  if (v35)
  {
    v83 = a7;
    v84 = v8;
    v110 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v35, 0);
    v36 = v110;
    v107 = *(v105 + 16);
    v37 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v82[1] = v34;
    v38 = v34 + v37;
    v106 = *(v105 + 72);
    v39 = (v105 + 8);
    do
    {
      v40 = v108;
      v41 = v109;
      v107(v108, v38, v109);
      v42 = sub_22042A7A0();
      v44 = v43;
      (*v39)(v40, v41);
      v110 = v36;
      v46 = *(v36 + 16);
      v45 = *(v36 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_2203C3A84((v45 > 1), v46 + 1, 1);
        v36 = v110;
      }

      *(v36 + 16) = v46 + 1;
      v47 = v36 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
      v38 += v106;
      --v35;
    }

    while (v35);

    v8 = v84;
    a7 = v83;
    v29 = v104;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  [v8 globalUserFeedback];
  v49 = v48;
  v50 = v86;
  sub_220420940(v29, v86);
  v51 = v105;
  v52 = *(v105 + 48);
  v53 = v109;
  v54 = v52(v50, 1, v109);
  v55 = v99;
  if (v54 == 1)
  {
    sub_220420FC4(v50, &qword_280FA28A0, MEMORY[0x277D693A8]);
    v56 = 0;
  }

  else
  {
    sub_22042A7B0();
    v51 = v105;
    v56 = v57;
    (*(v105 + 8))(v50, v53);
  }

  v58 = v87;
  sub_220420940(v29, v87);
  if (v52(v58, 1, v53) == 1)
  {
    sub_220420FC4(v58, &qword_280FA28A0, MEMORY[0x277D693A8]);
    v59 = 0;
  }

  else
  {
    sub_22042A7C0();
    v59 = v60;
    (*(v51 + 8))(v58, v53);
  }

  v61 = v100;
  v62 = v90;
  v63 = v55;
  v64 = [v8 publishDate];
  if (v64)
  {
    v65 = v85;
    v66 = v64;
    sub_22042A580();

    v67 = v8;
    v68 = *(v55 + 32);
    v69 = v61;
    v70 = v97;
    v68(v97, v65, v69);
    (*(v55 + 56))(v70, 0, 1, v69);
    v71 = v98;
    v72 = v70;
    v61 = v69;
    v68(v98, v72, v69);
    v63 = v55;
    v8 = v67;
    v29 = v104;
  }

  else
  {
    v73 = v97;
    (*(v55 + 56))(v97, 1, 1, v61);
    v71 = v98;
    sub_22042A5A0();
    if ((*(v55 + 48))(v73, 1, v61) != 1)
    {
      sub_220420FC4(v73, &qword_280FA28D8, MEMORY[0x277CC9578]);
    }
  }

  v74 = [v8 feedHalfLifeMilliseconds];
  sub_220420FC4(v29, &qword_280FA28A0, MEMORY[0x277D693A8]);
  (*(v95 + 8))(v94, v96);
  (*(v92 + 8))(v91, v93);
  if (v102)
  {
    v75 = 0.0;
  }

  else
  {
    v75 = v101;
  }

  v76 = v74;
  *a7 = v8;
  sub_2203C5934(&v111, (a7 + 1));
  v77 = v89;
  *(a7 + 6) = v62;
  *(a7 + 7) = v77;
  *(a7 + 8) = v88;
  *(a7 + 9) = v36;
  *(a7 + 10) = v49;
  *(a7 + 11) = v56;
  *(a7 + 12) = v59;
  v78 = type metadata accessor for ScorableHeadline(0);
  (*(v63 + 32))(a7 + v78[12], v71, v61);
  *(a7 + v78[13]) = v76;
  *(a7 + v78[14]) = 0;
  v79 = v103;
  *(a7 + v78[15]) = v103;
  *(a7 + v78[16]) = v75;
  v80 = v79;
  return swift_unknownObjectRetain();
}

uint64_t NewsHeadlineScorer.applyImportanceScoreRankPenalty(_:remainingSymbols:)(uint64_t a1, uint64_t a2)
{
  v110 = a1;
  v108 = sub_22042A7E0();
  v77 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22042A810();
  v106 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22042A9A0();
  v95 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v101 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22042AB00();
  v89 = *(v88 - 8);
  v8 = MEMORY[0x28223BE20](v88);
  v87 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v86 = &v77 - v11;
  MEMORY[0x28223BE20](v10);
  v105 = (&v77 - v12);
  v13 = sub_22042AA80();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v2;
  sub_22042A770();
  sub_22042AA60();
  v83 = v17;
  result = (*(v14 + 8))(v16, v13);
  v19 = 0;
  v20 = *(a2 + 16);
  v21 = a2 + 40;
  v109 = MEMORY[0x277D84F90];
  v107 = a2 + 40;
LABEL_2:
  v22 = v21 + 16 * v19;
  while (v20 != v19)
  {
    if (v19 >= v20)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_36;
    }

    v24 = sub_22042A820();
    v26 = v25;

    ++v19;
    v22 += 16;
    if (v26)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22041ECD0(0, *(v109 + 2) + 1, 1, v109);
        v109 = result;
      }

      v21 = v107;
      v28 = *(v109 + 2);
      v27 = *(v109 + 3);
      if (v28 >= v27 >> 1)
      {
        result = sub_22041ECD0((v27 > 1), v28 + 1, 1, v109);
        v109 = result;
      }

      v29 = v109;
      *(v109 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      *(v30 + 4) = v24;
      *(v30 + 5) = v26;
      v19 = v23;
      goto LABEL_2;
    }
  }

  v31 = v110;
  v32 = *(v110 + 16);
  if (v32)
  {
    v113 = MEMORY[0x277D84F90];
    v102 = v32;
    sub_2203CEB0C(0, v32, 0);
    v33 = 0;
    v107 = v113;
    v99 = *(v89 + 16);
    v96 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v98 = v31 + v96;
    v97 = (v89 + 88);
    v104 = *MEMORY[0x277D69850];
    v103 = (v89 + 32);
    v94 = (v89 + 8);
    v82 = (v89 + 96);
    v81 = (v95 + 32);
    v80 = (v106 + 8);
    v110 = v77 + 16;
    v111 = (v77 + 8);
    v79 = (v95 + 8);
    v78 = (v89 + 104);
    v34 = *(v89 + 72);
    v35 = v108;
    v36 = v88;
    v37 = v87;
    v38 = v86;
    v39 = v105;
    v89 += 16;
    v95 = v34;
    do
    {
      v106 = v33;
      v40 = v99;
      v99(v38, (v98 + v34 * v33), v36);
      v40(v37, v38, v36);
      v41 = (*v97)(v37, v36);
      if (v41 == v104)
      {
        (*v82)(v37, v36);
        v42 = *v37;
        sub_2204209D4(0);
        v44 = v43;
        (*v81)(v101, &v37[*(v43 + 48)], v100);
        sub_22042A850();
        v46 = v45;
        swift_getObjectType();
        v47 = v84;
        sub_22042BCB0();
        v48 = sub_22042A800();
        (*v80)(v47, v85);
        v49 = *(v48 + 16);
        if (v49)
        {
          v92 = v44;
          v93 = v42;
          v50 = 0;
          v51 = (*(v77 + 80) + 32) & ~*(v77 + 80);
          v91 = v48;
          v52 = v48 + v51;
          v53 = *(v77 + 72);
          v54 = *(v77 + 16);
          v54(v5, v48 + v51, v35);
          while (1)
          {
            sub_22042A7B0();
            if (v46 >= v55)
            {
              (*v111)(v5, v35);
            }

            else
            {
              v112[0] = sub_22042A7A0();
              v112[1] = v56;
              MEMORY[0x28223BE20](v112[0]);
              v76 = v112;
              v57 = sub_220420810(sub_2204217D0, v75, v109);
              v35 = v108;
              (*v111)(v5, v108);

              if ((v57 & 1) != 0 && __OFADD__(v50++, 1))
              {
                __break(1u);
                goto LABEL_35;
              }
            }

            v52 += v53;
            if (!--v49)
            {
              break;
            }

            v54(v5, v52, v35);
          }

          v42 = v93;
          v44 = v92;
        }

        else
        {

          v50 = 0;
        }

        v93 = *(v44 + 48);
        v59 = v105;
        *v105 = v42;
        v60 = v101;
        sub_22042A970();
        sub_22042A8A0();
        sub_22042A8E0();
        sub_22042A8D0();
        sub_22042A8B0();
        v92 = sub_22042A940();
        sub_22042A910();
        v62 = v61;
        sub_22042A890();
        sub_22042A630();
        v91 = v63;
        sub_22042A880();
        sub_22042A630();
        sub_22042A870();
        sub_22042A630();
        v65 = v64;
        sub_22042A8C0();
        sub_22042A900();
        sub_22042A950();
        result = sub_22042A860();
        if (__OFADD__(result, v50))
        {
          goto LABEL_37;
        }

        sub_22042A990();
        v90 = v62;
        v67 = v66;
        sub_22042A980();
        v76 = v68;
        v75[0] = v65;
        v75[1] = v67;
        sub_22042A960();
        (*v79)(v60, v100);
        v38 = v86;
        v36 = v88;
        (*v94)(v86, v88);
        (*v78)(v59, v104, v36);
        v37 = v87;
      }

      else
      {
        (*v103)(v39, v38, v36);
        (*v94)(v37, v36);
      }

      v69 = v106;
      v70 = v107;
      v113 = v107;
      v72 = *(v107 + 16);
      v71 = *(v107 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_2203CEB0C((v71 > 1), v72 + 1, 1);
        v69 = v106;
        v70 = v113;
      }

      *(v70 + 16) = v72 + 1;
      v107 = v70;
      v34 = v95;
      v73 = v70 + v96 + v72 * v95;
      v39 = v105;
      v74 = v69 + 1;
      (*v103)(v73, v105, v36);
      v33 = v74;
    }

    while (v74 != v102);

    return v107;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void *NewsHeadlineScorer.applyChannelDiversificationPenalty(_:priorChannelIDs:)(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v81 = sub_22042A9A0();
  v3 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v82 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042AB00();
  v88 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v87 = (v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v91 = v75 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v75 - v10;
  v12 = sub_22042AA80();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A770();
  sub_22042AA70();
  v75[1] = v16;
  (*(v13 + 8))(v15, v12);
  v17 = *(a2 + 16);
  v90 = v5;
  v92 = v11;
  v77 = v3;
  if (!v17)
  {
    v19 = MEMORY[0x277D84F98];
LABEL_21:
    v40 = v89;
    v41 = *(v89 + 16);
    if (!v41)
    {

      return MEMORY[0x277D84F90];
    }

    v93 = MEMORY[0x277D84F90];
    sub_2203CEB0C(0, v41, 0);
    v42 = v93;
    v43 = *(v88 + 16);
    v84 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v44 = v40 + v84;
    v83 = *(v88 + 72);
    v85 = (v88 + 88);
    v86 = v43;
    v45 = (v88 + 32);
    v80 = (v88 + 8);
    v79 = (v88 + 96);
    LODWORD(v89) = *MEMORY[0x277D69850];
    v78 = (v77 + 4);
    ++v77;
    v88 += 16;
    v75[0] = v88 + 88;
    while (1)
    {
      v46 = v91;
      v47 = v86;
      v86(v91, v44, v5);
      v48 = v87;
      v47(v87, v46, v5);
      v49 = (*v85)(v48, v5);
      if (v49 == v89)
      {
        (*v79)(v48, v5);
        v50 = *v48;
        sub_2204209D4(0);
        v52 = v51;
        v53 = v81;
        v54 = v82;
        (*v78)(v82, v48 + *(v51 + 48), v81);
        v55 = [v50 sourceChannelID];
        if (v55)
        {
          v56 = v55;
          v57 = sub_22042BA30();
          v59 = v58;

          if (v19[2])
          {
            v60 = sub_2203FFB78(v57, v59);
            v62 = v61;

            if (v62)
            {
              v76 = *(v19[7] + 8 * v60);
              v75[6] = *(v52 + 48);
              v63 = v92;
              *v92 = v50;
              v64 = v82;
              sub_22042A970();
              sub_22042A8A0();
              sub_22042A8E0();
              sub_22042A8D0();
              sub_22042A8B0();
              v75[5] = sub_22042A940();
              sub_22042A850();
              sub_22042A910();
              v66 = v65;
              sub_22042A890();
              v75[4] = v67;
              sub_22042A880();
              sub_22042A870();
              v68 = v76;
              sub_22042A630();
              v75[3] = sub_22042A8C0();
              sub_22042A900();
              if (__OFADD__(sub_22042A950(), v68))
              {
                goto LABEL_43;
              }

              v76 = sub_22042A860();
              sub_22042A990();
              v75[2] = v66;
              sub_22042A980();
              sub_22042A960();
              (*v77)(v64, v81);
              v5 = v90;
              (*v80)(v91, v90);
              (*v75[0])(v63, v89, v5);
              goto LABEL_35;
            }

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v69 = v81;
          v70 = v82;
        }

        else
        {
          swift_unknownObjectRelease();
          v69 = v53;
          v70 = v54;
        }

        (*v77)(v70, v69);
        v5 = v90;
        (*v45)(v92, v91, v90);
      }

      else
      {
        (*v45)(v92, v46, v5);
        (*v80)(v48, v5);
      }

LABEL_35:
      v93 = v42;
      v72 = v42[2];
      v71 = v42[3];
      if (v72 >= v71 >> 1)
      {
        sub_2203CEB0C((v71 > 1), v72 + 1, 1);
        v42 = v93;
      }

      v42[2] = v72 + 1;
      v73 = v83;
      (*v45)(v42 + v84 + v72 * v83, v92, v5);
      v44 += v73;
      if (!--v41)
      {

        return v42;
      }
    }
  }

  v18 = (a2 + 40);
  v19 = MEMORY[0x277D84F98];
  while (1)
  {
    v21 = *(v18 - 1);
    v20 = *v18;
    v22 = v19[2];

    if (!v22 || (v23 = sub_2203FFB78(v21, v20), (v24 & 1) == 0))
    {
      v26 = 1;
      goto LABEL_11;
    }

    v25 = *(v19[7] + 8 * v23);
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v19;
    v28 = sub_2203FFB78(v21, v20);
    v30 = v19[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_41;
    }

    v34 = v29;
    if (v19[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v28;
        sub_2204017A8();
        v28 = v39;
      }
    }

    else
    {
      sub_220400B10(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_2203FFB78(v21, v20);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_44;
      }
    }

    v5 = v90;
    v19 = v93;
    if (v34)
    {
      *(v93[7] + 8 * v28) = v26;
    }

    else
    {
      v93[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v19[6] + 16 * v28);
      *v36 = v21;
      v36[1] = v20;
      *(v19[7] + 8 * v28) = v26;
      v37 = v19[2];
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_42;
      }

      v19[2] = v38;
    }

    v18 += 2;
    if (!--v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_22042BF70();
  __break(1u);
  return result;
}

uint64_t sub_22041E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22042A750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22041E568@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042A740();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_22042BA70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203C3120(0, &qword_280FA28A8, MEMORY[0x277D692F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  if (([v1 respondsToSelector_] & 1) != 0 && (v12 = objc_msgSend(v1, sel_stocksFields)) != 0 && (v13 = objc_msgSend(v12, sel_stocksScoresJSON), swift_unknownObjectRelease(), v13))
  {
    v20[0] = a1;
    sub_22042BA30();

    sub_22042A380();
    swift_allocObject();
    sub_22042A370();
    sub_22042BA60();
    v14 = sub_22042BA40();
    v16 = v15;
    result = (*(v6 + 8))(v8, v5);
    if (v16 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      v18 = sub_22042A750();
      sub_2204215E8(&qword_280FA28B0, MEMORY[0x277D692F8], MEMORY[0x277D69300]);
      sub_22042A360();
      sub_2203DF298(v14, v16);

      v19 = *(v18 - 8);
      (*(v19 + 56))(v11, 0, 1, v18);
      return (*(v19 + 32))(v20[0], v11, v18);
    }
  }

  else
  {
    sub_22042A720();
    sub_22042A720();
    return sub_22042A690();
  }

  return result;
}

uint64_t ScorableHeadline.sourceChannelID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ScorableHeadline.publishedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScorableHeadline(0) + 48);
  v4 = sub_22042A5B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *ScorableHeadline.newsScoreProfile.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScorableHeadline(0) + 60));
  v2 = v1;
  return v1;
}

double ScorableHeadline.newsPersonalizationScore.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScorableHeadline(0) + 60));
  if (!v1)
  {
    return 0.0;
  }

  [v1 personalizationScore];
  return result;
}

uint64_t sub_22041EB94()
{
  v1 = *(v0 + 56);

  return v1;
}

double sub_22041EBCC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  if (!v2)
  {
    return 0.0;
  }

  [v2 personalizationScore];
  return result;
}

uint64_t sub_22041EC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_22042A5B0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

char *sub_22041ECD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2203C38AC(0, &qword_280FA2560, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22041EDF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2203C38AC(0, &qword_280FA01D8, MEMORY[0x277D83A90], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_22041EF44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22042164C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2203C38AC(0, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22041F0B8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2203C3120(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22041F2AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22042A9A0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_22041F35C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22042B130();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0], MEMORY[0x277CFBAD8]);
  v33 = a2;
  v11 = sub_22042B9E0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2204215E8(&qword_280FA2368, MEMORY[0x277CFBAD0], MEMORY[0x277CFBAE0]);
      v21 = sub_22042BA10();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22041FD30(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22041F63C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22042BFC0();
  sub_22042BAA0();
  v8 = sub_22042BFE0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22042BF50() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22041FFD4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22041F78C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22042B130();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22042136C(0);
  result = sub_22042BD50();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0], MEMORY[0x277CFBAD8]);
      result = sub_22042B9E0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22041FADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_220421760();
  result = sub_22042BD50();
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
      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
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

uint64_t sub_22041FD30(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22042B130();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22041F78C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2204236D4();
      goto LABEL_12;
    }

    sub_220420154(v10 + 1);
  }

  v12 = *v3;
  sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0], MEMORY[0x277CFBAD8]);
  v13 = sub_22042B9E0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2204215E8(&qword_280FA2368, MEMORY[0x277CFBAD0], MEMORY[0x277CFBAE0]);
      v21 = sub_22042BA10();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22042BF60();
  __break(1u);
  return result;
}

uint64_t sub_22041FFD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22041FADC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2204238FC();
      goto LABEL_16;
    }

    sub_220420464(v8 + 1);
  }

  v10 = *v4;
  sub_22042BFC0();
  sub_22042BAA0();
  result = sub_22042BFE0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22042BF50();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22042BF60();
  __break(1u);
  return result;
}

uint64_t sub_220420154(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22042B130();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22042136C(0);
  v7 = sub_22042BD50();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0], MEMORY[0x277CFBAD8]);
      result = sub_22042B9E0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_220420464(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_220421760();
  result = sub_22042BD50();
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
      sub_22042BFC0();

      sub_22042BAA0();
      result = sub_22042BFE0();
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

uint64_t sub_220420690(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2203FFB78(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_220401518();
      goto LABEL_7;
    }

    sub_22040077C(v15, a4 & 1);
    v26 = sub_2203FFB78(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22042BF70();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22042A9A0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22041F2AC(v12, a2, a3, a1, v18);
}

uint64_t sub_220420810(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2204208BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220420940(uint64_t a1, uint64_t a2)
{
  sub_2203C3120(0, &qword_280FA28A0, MEMORY[0x277D693A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2204209D4(uint64_t a1)
{
  if (!qword_280FA0388)
  {
    sub_2203C3314(255, &qword_280FA25C0, &protocolRef_FCHeadlineProviding);
    sub_22042A9A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA0388);
    }
  }
}

uint64_t sub_220420A54(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22042BF50() & 1;
  }
}

uint64_t sub_220420B00(uint64_t a1)
{
  result = sub_22042A830();
  if (v2 <= 0x3F)
  {
    result = sub_22042A790();
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

void sub_220420C44(uint64_t a1)
{
  sub_2203C3314(319, &qword_280FA25C0, &protocolRef_FCHeadlineProviding);
  if (v1 <= 0x3F)
  {
    sub_2203CFDB8(319, &unk_280FA28C8, MEMORY[0x277D69258]);
    if (v2 <= 0x3F)
    {
      sub_220420DE4(319, qword_280FA2600, &unk_280FA28C8, MEMORY[0x277D69258], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2203C38AC(319, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_22042A5B0();
          if (v5 <= 0x3F)
          {
            sub_2203C3120(319, &qword_280FA25A0, sub_220420E4C, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_220420DE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2203CFDB8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_220420E4C()
{
  result = qword_280FA25A8;
  if (!qword_280FA25A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FA25A8);
  }

  return result;
}

void sub_220420EC0(uint64_t a1)
{
  sub_22042A750();
  if (v1 <= 0x3F)
  {
    sub_2203C3120(319, &unk_280FA25F0, MEMORY[0x277D693A8], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2203C3314(319, &qword_280FA25B8, &protocolRef_FCFeedPersonalizingItem);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220420FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203C3120(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220421034@<X0>(void *a2@<X8>)
{
  result = swift_getAtKeyPath();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

unint64_t sub_220421078()
{
  result = qword_280FA0420;
  if (!qword_280FA0420)
  {
    sub_2203C3120(255, &qword_280FA0428, type metadata accessor for StocksTabiArticleData, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0420);
  }

  return result;
}

uint64_t sub_220421100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220421160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = *(a1 + 208);
  v16[12] = *(a1 + 192);
  v16[13] = v8;
  v17 = *(a1 + 224);
  v9 = *(a1 + 144);
  v16[8] = *(a1 + 128);
  v16[9] = v9;
  v10 = *(a1 + 176);
  v16[10] = *(a1 + 160);
  v16[11] = v10;
  v11 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v11;
  v12 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v12;
  v13 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v13;
  v14 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v14;
  return sub_220419354(v16, v3, v4, v5, v6, v7, a2);
}

uint64_t sub_2204211D0(uint64_t a1)
{
  v2 = sub_22042B130();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0], MEMORY[0x277CFBAD8]);
  result = MEMORY[0x223D7BF30](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_22041F35C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_22042136C(uint64_t a1)
{
  if (!qword_280FA0330)
  {
    sub_22042B130();
    sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0], MEMORY[0x277CFBAD8]);
    v1 = sub_22042BD60();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA0330);
    }
  }
}

uint64_t sub_220421400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220421468@<X0>(uint64_t *a2@<X8>)
{
  sub_22042AAB0();
  v3 = sub_22042A820();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_220421520@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = sub_2204215E8(qword_280FA2718, type metadata accessor for NewsHeadlineScorer, &protocol conformance descriptor for NewsHeadlineScorer);
  *a1 = v1;
}

uint64_t sub_2204215E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22042164C(uint64_t a1)
{
  if (!qword_27CF52770)
  {
    sub_2203C38AC(255, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v1 = sub_22042BF30();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF52770);
    }
  }
}

uint64_t sub_2204216C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D7BF30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22041F63C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_220421760()
{
  if (!qword_27CF52778)
  {
    v0 = sub_22042BD60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF52778);
    }
  }
}

__n128 ComputeServiceConfigurationManager.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_22042A790();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_22042AA40();
  sub_2203C1FFC(v15);
  (*(v4 + 8))(v6, v3);
  v29 = v15[12];
  v30 = v15[13];
  v31 = v16;
  v25 = v15[8];
  v26 = v15[9];
  v27 = v15[10];
  v28 = v15[11];
  v21 = v15[4];
  v22 = v15[5];
  v23 = v15[6];
  v24 = v15[7];
  v17 = v15[0];
  v18 = v15[1];
  v19 = v15[2];
  v20 = v15[3];
  if (sub_2203C30A8(&v17) == 1)
  {
    sub_2203C30C0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v8 = v30;
    *(a1 + 192) = v29;
    *(a1 + 208) = v8;
    *(a1 + 224) = v31;
    v9 = v26;
    *(a1 + 128) = v25;
    *(a1 + 144) = v9;
    v10 = v28;
    *(a1 + 160) = v27;
    *(a1 + 176) = v10;
    v11 = v22;
    *(a1 + 64) = v21;
    *(a1 + 80) = v11;
    v12 = v24;
    *(a1 + 96) = v23;
    *(a1 + 112) = v12;
    v13 = v18;
    *a1 = v17;
    *(a1 + 16) = v13;
    result = v20;
    *(a1 + 32) = v19;
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t ComputeServiceConfigurationManager.fetchConfigurationIfNeeded()(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = sub_22042A790();
  v2[62] = v3;
  v2[63] = *(v3 - 8);
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220421AB8, 0, 0);
}

uint64_t sub_220421AB8()
{
  __swift_project_boxed_opaque_existential_1((v0[61] + 16), *(v0[61] + 40));
  v0[65] = sub_22042AA50();
  v1 = swift_task_alloc();
  v0[66] = v1;
  *v1 = v0;
  v1[1] = sub_2203C3B48;
  v2 = v0[64];

  return MEMORY[0x2821D23D8](v2);
}

uint64_t sub_220421B84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ComputeServiceConfigurationManager.fetchConfigurationIfNeeded(cachedOnly:)(uint64_t a1, char a2)
{
  *(v3 + 720) = v2;
  *(v3 + 784) = a2;
  *(v3 + 712) = a1;
  v4 = sub_22042A790();
  *(v3 + 728) = v4;
  *(v3 + 736) = *(v4 - 8);
  *(v3 + 744) = swift_task_alloc();
  *(v3 + 752) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220421CC4, 0, 0);
}

uint64_t sub_220421CC4()
{
  v29 = v0;
  if (*(v0 + 784) == 1)
  {
    v1 = *(v0 + 752);
    v2 = *(v0 + 736);
    v3 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((*(v0 + 720) + 16), *(*(v0 + 720) + 40));
    sub_22042AA40();
    sub_2203C1FFC(v27);
    (*(v2 + 8))(v1, v3);
    v4 = v27[13];
    *(v0 + 672) = v27[12];
    *(v0 + 688) = v4;
    *(v0 + 704) = v28;
    v5 = v27[9];
    *(v0 + 608) = v27[8];
    *(v0 + 624) = v5;
    v6 = v27[11];
    *(v0 + 640) = v27[10];
    *(v0 + 656) = v6;
    v7 = v27[5];
    *(v0 + 544) = v27[4];
    *(v0 + 560) = v7;
    v8 = v27[7];
    *(v0 + 576) = v27[6];
    *(v0 + 592) = v8;
    v9 = v27[1];
    *(v0 + 480) = v27[0];
    *(v0 + 496) = v9;
    v10 = v27[3];
    *(v0 + 512) = v27[2];
    *(v0 + 528) = v10;
    if (sub_2203C30A8(v0 + 480) == 1)
    {
      sub_2203C30C0();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v14 = *(v0 + 712);
      v15 = *(v0 + 480);
      v16 = *(v0 + 512);
      *(v14 + 16) = *(v0 + 496);
      *(v14 + 32) = v16;
      *v14 = v15;
      v17 = *(v0 + 528);
      v18 = *(v0 + 544);
      v19 = *(v0 + 576);
      *(v14 + 80) = *(v0 + 560);
      *(v14 + 96) = v19;
      *(v14 + 48) = v17;
      *(v14 + 64) = v18;
      v20 = *(v0 + 592);
      v21 = *(v0 + 608);
      v22 = *(v0 + 640);
      *(v14 + 144) = *(v0 + 624);
      *(v14 + 160) = v22;
      *(v14 + 112) = v20;
      *(v14 + 128) = v21;
      v23 = *(v0 + 656);
      v24 = *(v0 + 672);
      v25 = *(v0 + 688);
      *(v14 + 224) = *(v0 + 704);
      *(v14 + 192) = v24;
      *(v14 + 208) = v25;
      *(v14 + 176) = v23;
    }

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 720) + 16), *(*(v0 + 720) + 40));
    *(v0 + 760) = sub_22042AA50();
    v12 = swift_task_alloc();
    *(v0 + 768) = v12;
    *v12 = v0;
    v12[1] = sub_220421F4C;
    v13 = *(v0 + 744);

    return MEMORY[0x2821D23D8](v13);
  }
}

uint64_t sub_220421F4C()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_220422200;
  }

  else
  {

    v2 = sub_220422068;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_220422068()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  sub_2203C1FFC(v0 + 248);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 424);
  v5 = *(v0 + 456);
  *(v0 + 208) = *(v0 + 440);
  *(v0 + 224) = v5;
  v6 = *(v0 + 360);
  v7 = *(v0 + 392);
  v8 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 376);
  *(v0 + 160) = v7;
  *(v0 + 176) = v8;
  *(v0 + 192) = v4;
  v9 = *(v0 + 296);
  v10 = *(v0 + 328);
  v11 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 312);
  *(v0 + 96) = v10;
  *(v0 + 112) = v11;
  *(v0 + 128) = v6;
  v12 = *(v0 + 264);
  v13 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 248);
  *(v0 + 32) = v12;
  *(v0 + 240) = *(v0 + 472);
  *(v0 + 48) = v13;
  *(v0 + 64) = v9;
  if (sub_2203C30A8(v0 + 16) == 1)
  {
    sub_2203C30C0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v15 = *(v0 + 712);
    v16 = *(v0 + 16);
    v17 = *(v0 + 48);
    *(v15 + 16) = *(v0 + 32);
    *(v15 + 32) = v17;
    *v15 = v16;
    v18 = *(v0 + 64);
    v19 = *(v0 + 80);
    v20 = *(v0 + 112);
    *(v15 + 80) = *(v0 + 96);
    *(v15 + 96) = v20;
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    v21 = *(v0 + 128);
    v22 = *(v0 + 144);
    v23 = *(v0 + 176);
    *(v15 + 144) = *(v0 + 160);
    *(v15 + 160) = v23;
    *(v15 + 112) = v21;
    *(v15 + 128) = v22;
    v24 = *(v0 + 192);
    v25 = *(v0 + 208);
    v26 = *(v0 + 224);
    *(v15 + 224) = *(v0 + 240);
    *(v15 + 192) = v25;
    *(v15 + 208) = v26;
    *(v15 + 176) = v24;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_220422200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ComputeServiceConfigurationManager.onChangeOfConfiguration(perform:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_22042AA30();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_22042ADA0();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_220422334(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *))
{
  sub_2203C1FFC(v7);
  v21 = v7[12];
  v22 = v7[13];
  v23 = v8;
  v17 = v7[8];
  v18 = v7[9];
  v19 = v7[10];
  v20 = v7[11];
  v13 = v7[4];
  v14 = v7[5];
  v15 = v7[6];
  v16 = v7[7];
  v9 = v7[0];
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  result = sub_2203C30A8(&v9);
  if (result != 1)
  {
    v5[12] = v21;
    v5[13] = v22;
    v6 = v23;
    v5[8] = v17;
    v5[9] = v18;
    v5[10] = v19;
    v5[11] = v20;
    v5[4] = v13;
    v5[5] = v14;
    v5[6] = v15;
    v5[7] = v16;
    v5[0] = v9;
    v5[1] = v10;
    v5[2] = v11;
    v5[3] = v12;
    a3(v5);
    return sub_2203C2F70(v7, sub_2203E3508);
  }

  return result;
}

uint64_t ComputeServiceConfigurationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22042249C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2203C3E30;

  return ComputeServiceConfigurationManager.fetchConfigurationIfNeeded()(a1);
}

unint64_t sub_220422564()
{
  result = qword_27CF52790;
  if (!qword_27CF52790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52790);
  }

  return result;
}

unint64_t sub_2204225B8()
{
  result = qword_280FA2408;
  if (!qword_280FA2408)
  {
    sub_22042AE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA2408);
  }

  return result;
}

uint64_t sub_220422610()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA0810 = result;
  return result;
}

uint64_t sub_220422708()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA0A00 = result;
  return result;
}

uint64_t sub_2204227E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA07F8 = result;
  return result;
}

uint64_t sub_2204228DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  *a4 = result;
  return result;
}

uint64_t sub_2204229B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22042BA30();
  }

  sub_2203C1E9C();
  result = sub_22042BCE0();
  qword_280FA0658 = result;
  return result;
}

BOOL sub_220422A88()
{
  if (qword_280FA07F0 != -1)
  {
    swift_once();
  }

  v0 = qword_280FA07F8;
  v1 = sub_22042BC70();
  result = os_log_type_enabled(v0, v1);
  v3 = nullsub_1;
  if (result)
  {
    v3 = sub_220422B24;
  }

  qword_280FA56E0 = v3;
  *algn_280FA56E8 = 0;
  return result;
}

uint64_t sub_220422B24(uint64_t (*a1)(void))
{
  if (qword_280FA07F0 != -1)
  {
    swift_once();
  }

  v2 = qword_280FA07F8;
  v3 = sub_22042BC70();
  sub_2203C1EE8(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22042D3F0;
  v5 = a1();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2203C1FA8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_22042B8D0("%@", 2, 2, &dword_2203BD000, v2, v3, v4);
}

unint64_t sub_220422C2C()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  if (*v0 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x6570697773;
    if (v1 != 2)
    {
      v7 = 0x656E696C64616568;
    }

    if (v1)
    {
      v6 = 0x636E75614C707061;
    }

    if (v1 <= 1)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    v3 = 0x6976614E72657375;
    if (v1 != 7)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6B6E696C70656564;
    if (v1 != 4)
    {
      v4 = 0x6E6164726F666661;
    }

    if (v1 <= 5)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t StocksAppFeatureResolvers.resolveFeatures(inputKeys:configuration:nodeID:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v77 = a3;
  v78 = a4;
  v93 = a1;
  sub_220423604(0, &unk_280FA22F8, MEMORY[0x277CFBB58]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v86 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  v96 = sub_22042B310();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v85 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_22042B130();
  v15 = *(v130 - 8);
  v16 = MEMORY[0x28223BE20](v130);
  v84 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v66 - v18;
  sub_220423604(0, &unk_280FA2358, MEMORY[0x277CFBAD0]);
  MEMORY[0x28223BE20](v19 - 8);
  v67 = &v66 - v20;
  v70 = sub_22042B370();
  v21 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v89 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[13];
  v127 = a2[12];
  v128 = v23;
  v129 = *(a2 + 28);
  v24 = a2[9];
  v123 = a2[8];
  v124 = v24;
  v25 = a2[11];
  v125 = a2[10];
  v126 = v25;
  v26 = a2[5];
  v119 = a2[4];
  v120 = v26;
  v27 = a2[7];
  v121 = a2[6];
  v122 = v27;
  v28 = a2[1];
  v115 = *a2;
  v116 = v28;
  v29 = a2[3];
  v117 = a2[2];
  v118 = v29;
  v87 = a5;
  sub_22042B360();
  v114 = v93;
  v30 = *(v6 + 16);
  v76 = *(v30 + 16);
  if (v76)
  {
    v74 = v30 + 32;
    v94 = v15 + 16;
    v31 = v91;
    v82 = (v91 + 2);
    v83 = (v91 + 4);
    v80 = v91 + 1;
    v81 = (v91 + 7);
    v91 = (v15 + 8);
    v92 = (v31 + 6);
    v68 = (v21 + 8);

    v33 = 0;
    v72 = xmmword_22042D3E0;
    v34 = v89;
    v35 = v73;
    v69 = v15;
    v75 = v30;
    v90 = v13;
    while (v33 < *(v30 + 16))
    {
      v79 = v33;
      sub_2203C37C0(v74 + 40 * v33, v113);
      __swift_project_boxed_opaque_existential_1(v113, v113[3]);
      v36 = v114;
      v110 = v127;
      v111 = v128;
      v112 = v129;
      v106 = v123;
      v107 = v124;
      v108 = v125;
      v109 = v126;
      v102 = v119;
      v103 = v120;
      v104 = v121;
      v105 = v122;
      v98 = v115;
      v99 = v116;
      v100 = v117;
      v101 = v118;
      v37 = v35;
      sub_22042B220();
      if (v35)
      {
        __swift_destroy_boxed_opaque_existential_1(v113);
        if (qword_280FA1130 != -1)
        {
          swift_once();
        }

        v38 = qword_280FA1138;
        LODWORD(v93) = sub_22042BC80();
        sub_2203C1EE8(0);
        v39 = swift_allocObject();
        *(v39 + 16) = v72;
        sub_220423D40(&qword_280FA2370, MEMORY[0x277CFBAD8]);
        v40 = sub_22042BC00();
        v42 = v41;
        v43 = MEMORY[0x277D837D0];
        *(v39 + 56) = MEMORY[0x277D837D0];
        v44 = sub_2203C1FA8();
        *(v39 + 64) = v44;
        *(v39 + 32) = v40;
        *(v39 + 40) = v42;
        *&v98 = 0;
        *(&v98 + 1) = 0xE000000000000000;
        v97 = v37;
        sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
        sub_22042BDF0();
        v45 = v98;
        *(v39 + 96) = v43;
        *(v39 + 104) = v44;
        *(v39 + 72) = v45;
        sub_22042B8D0("Failed to get features for keys %{public}@ with error: %{public}@", 65, 2, &dword_2203BD000, v38, v93, v39);

        result = MEMORY[0x223D7C730](v37);
        v35 = 0;
        v34 = v89;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v113);
        v46 = sub_22042B350();
        v47 = v36[2];
        v73 = 0;
        if (v47 && (v48 = *(v46 + 16)) != 0)
        {
          v49 = *(v69 + 80);
          v93 = v46;
          v50 = v46 + ((v49 + 32) & ~v49);
          v51 = *(v69 + 72);
          v52 = v67;
          do
          {
            sub_220423A4C(v50, v52);
            sub_220423CCC(v52, &unk_280FA2358, MEMORY[0x277CFBAD0]);
            v50 += v51;
            --v48;
          }

          while (v48);

          v35 = v73;
          v34 = v89;
        }

        else
        {
        }

        v53 = sub_22042B350();
        v54 = *(v53 + 16);
        if (v54)
        {
          v55 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v71 = v53;
          v56 = v53 + v55;
          v57 = *(v69 + 72);
          v59 = v95;
          v93 = *(v69 + 16);
          v58 = v93;
          v88 = v57;
          (v93)(v95, v53 + v55, v130);
          while (1)
          {
            sub_22042B380();
            if ((*v92)(v13, 1, v96) == 1)
            {
              (*v91)(v59, v130);
              sub_220423CCC(v13, &unk_280FA22F8, MEMORY[0x277CFBB58]);
            }

            else
            {
              v60 = v96;
              v61 = v130;
              v62 = v85;
              (*v83)(v85, v90, v96);
              v58(v84, v95, v61);
              v63 = v86;
              (*v82)(v86, v62, v60);
              (*v81)(v63, 0, 1, v60);
              v59 = v95;
              sub_22042B390();
              v64 = v62;
              v34 = v89;
              v13 = v90;
              v65 = v60;
              v57 = v88;
              (*v80)(v64, v65);
              (*v91)(v59, v61);
            }

            v56 += v57;
            --v54;
            v58 = v93;
            if (!v54)
            {
              break;
            }

            (v93)(v59, v56, v130);
          }

          v35 = v73;
        }

        else
        {
        }

        result = (*v68)(v34, v70);
      }

      v33 = v79 + 1;
      v30 = v75;
      if (v79 + 1 == v76)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_220423604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t StocksAppFeatureResolvers.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_2204236D4()
{
  v1 = v0;
  v2 = sub_22042B130();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042136C(0);
  v6 = *v0;
  v7 = sub_22042BD40();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_2204238FC()
{
  v1 = v0;
  sub_220421760();
  v2 = *v0;
  v3 = sub_22042BD40();
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

uint64_t sub_220423A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22042B130();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_220423D40(&qword_280FA2370, MEMORY[0x277CFBAD8]);
  v31 = a1;
  v10 = sub_22042B9E0();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_220423D40(&qword_280FA2368, MEMORY[0x277CFBAE0]);
      v19 = sub_22042BA10();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2204236D4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_220423D84(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_220423CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220423604(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220423D40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22042B130();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220423D84(int64_t a1)
{
  v3 = sub_22042B130();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_22042BD30();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v35 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = v12;
      v17 = *(v14 + 56);
      v36 = v14;
      v33 = (v14 - 8);
      v34 = v15;
      do
      {
        v18 = v9;
        v19 = v17;
        v20 = v17 * v11;
        v34(v7, *(v8 + 48) + v17 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v21;
        sub_220423D40(&qword_280FA2370, MEMORY[0x277CFBAD8]);
        v24 = sub_22042B9E0();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v16 = v22;
        if (a1 >= v35)
        {
          if (v25 >= v35 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v19;
            v29 = v19 * a1;
            if (v19 * a1 < v20 || v28 + v19 * a1 >= (v28 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v35 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v19;
LABEL_5:
        v11 = (v11 + 1) & v16;
        v9 = v18;
      }

      while (((*(v18 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_22042407C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22042ACF0();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_22042A5B0();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_22042A9D0();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  sub_220425FE4(0, &qword_280FA0468, sub_220425F78);
  v3[22] = swift_task_alloc();
  v8 = sub_22042AAC0();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v9 = sub_22042B110();
  v3[28] = v9;
  v3[29] = *(v9 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  sub_220425FE4(0, &qword_280FA2378, MEMORY[0x277D68FD8]);
  v3[32] = swift_task_alloc();
  v10 = sub_22042B100();
  v3[33] = v10;
  v3[34] = *(v10 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22042441C, 0, 0);
}

uint64_t sub_22042441C()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  sub_220426038(v0[8], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[7];
    sub_220426224(v0[32], &qword_280FA2378, MEMORY[0x277D68FD8]);
LABEL_3:
    (*(v5 + 56))(v6, 1, 1, v4);

    v7 = v0[1];
LABEL_19:

    return v7();
  }

  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[29];
  (*(v0[34] + 32))(v0[35], v0[32], v0[33]);
  sub_22042B0F0();
  (*(v10 + 104))(v8, *MEMORY[0x277D68FF0], v9);
  sub_220426308(&qword_27CF527A0, MEMORY[0x277D69018], MEMORY[0x277D69020]);
  sub_22042BB00();
  sub_22042BB00();
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[28];
  v14 = v0[29];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v15 = *(v14 + 8);
    v15(v0[30], v0[28]);
    v15(v11, v13);
  }

  else
  {
    v16 = sub_22042BF50();
    v17 = *(v14 + 8);
    v17(v12, v13);
    v17(v11, v13);

    if ((v16 & 1) == 0)
    {
      v4 = v0[10];
      v5 = v0[11];
      v6 = v0[7];
      (*(v0[34] + 8))(v0[35], v0[33]);
      goto LABEL_3;
    }
  }

  v18 = sub_22042B0E0();
  sub_220425718(58, 0xE100000000000000, v18, v19);
  v21 = v20;

  v22 = v0[35];
  if (v21)
  {
    v24 = v0[33];
    v23 = v0[34];
    type metadata accessor for GroupIDStockMessageTranslator.Errors(0);
    sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors, &unk_220431068);
    swift_allocError();
    v26 = v25;
    *v25 = sub_22042B0E0();
    v26[1] = v27;
LABEL_18:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v23 + 8))(v22, v24);

    v7 = v0[1];
    goto LABEL_19;
  }

  sub_22042B0E0();
  v28 = sub_22042BAB0();

  v29 = sub_22042B0E0();
  v31 = v30;

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 >> 14 >= 4 * v32)
  {
    v23 = v0[34];
    v22 = v0[35];
    v24 = v0[33];
    type metadata accessor for GroupIDStockMessageTranslator.Errors(0);
    sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors, &unk_220431068);
    swift_allocError();
    v52 = v51;
    *v51 = sub_22042B0E0();
    v52[1] = v53;
    v52[2] = v28;
    goto LABEL_18;
  }

  v33 = v0[18];
  v59 = v0[20];
  v60 = v0[19];
  v57 = v0[17];
  v58 = v0[16];
  v34 = v0[14];
  v35 = v0[15];
  v55 = v0[21];
  v56 = v0[13];
  v36 = v0[9];
  v37 = sub_22042B0E0();
  v39 = sub_2204261D8(v28, v37, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = MEMORY[0x223D7BDB0](v39, v41, v43, v45);
  v48 = v47;

  v0[36] = v46;
  v0[37] = v48;
  __swift_project_boxed_opaque_existential_1((v36 + 56), *(v36 + 80));
  sub_2203E69D4();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_22042D3F0;
  *(v49 + 32) = v46;
  *(v49 + 40) = v48;

  sub_22042A9C0();
  sub_22042A5A0();
  (*(v34 + 104))(v35, *MEMORY[0x277D6CAB8], v56);
  v0[38] = sub_22042AA00();

  (*(v34 + 8))(v35, v56);
  (*(v57 + 8))(v33, v58);
  (*(v59 + 8))(v55, v60);
  v50 = swift_task_alloc();
  v0[39] = v50;
  *v50 = v0;
  v50[1] = sub_220424B6C;

  return MEMORY[0x2821D23D8](v0 + 6);
}

uint64_t sub_220424B6C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_2204254B8;
  }

  else
  {
    v2 = sub_220424CB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_220424CB0()
{
  v1 = v0[22];
  sub_220425808(v0[6], v1);

  sub_220425F78(0);
  v3 = v2;
  v4 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = v0[37];
  if (v4 == 1)
  {
    v6 = v0[35];
    v7 = v0[36];
    v9 = v0[33];
    v8 = v0[34];
    sub_220426224(v0[22], &qword_280FA0468, sub_220425F78);
    type metadata accessor for GroupIDStockMessageTranslator.Errors(0);
    sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors, &unk_220431068);
    swift_allocError();
    *v10 = v7;
    v10[1] = v5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v8 + 8))(v6, v9);
LABEL_3:

    v11 = v0[1];

    return v11();
  }

  v14 = v0[26];
  v13 = v0[27];
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[22];

  v18 = *(v16 + 32);
  v18(v14, v17 + *(v3 + 48), v15);
  v18(v13, v14, v15);
  v19 = sub_22042AAA0();
  v21 = v20;
  if (v19 == sub_22042B0E0() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_22042BF50();

    if ((v23 & 1) == 0)
    {
      v28 = v0[34];
      v29 = v0[35];
      v38 = v0[33];
      v30 = v0[27];
      v31 = v0[23];
      v32 = v0[24];
      type metadata accessor for GroupIDStockMessageTranslator.Errors(0);
      sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors, &unk_220431068);
      swift_allocError();
      v34 = v33;
      sub_220426280(0);
      v36 = *(v35 + 48);
      *v34 = sub_22042B0E0();
      v34[1] = v37;
      (*(v32 + 16))(v34 + v36, v30, v31);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v32 + 8))(v30, v31);
      (*(v28 + 8))(v29, v38);
      goto LABEL_3;
    }
  }

  v24 = swift_task_alloc();
  v0[41] = v24;
  *v24 = v0;
  v24[1] = sub_220425108;
  v25 = v0[35];
  v26 = v0[27];
  v27 = v0[9];

  return sub_2204259B4(v27, v26, v25);
}

uint64_t sub_220425108(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v7 = sub_2204255D8;
  }

  else
  {
    *(v6 + 344) = a2;
    *(v6 + 352) = a1;
    v7 = sub_22042523C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22042523C()
{
  v1 = v0[43];
  v16 = v0[44];
  v2 = v0[34];
  v19 = v0[33];
  v20 = v0[35];
  v18 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[12];
  v21 = v0[11];
  v7 = v0[10];
  v8 = v0[7];
  v17 = v3;
  (*(v4 + 16))(v3);
  sub_22042B670();
  v9 = (v8 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  v11 = swift_task_alloc();
  v11[2] = v3;
  v11[3] = v16;
  v11[4] = v1;
  sub_220426308(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  v12 = v6;
  sub_22042B810();

  sub_2203EFECC(v8);
  v13 = *(v4 + 8);
  v13(v18, v5);
  (*(v2 + 8))(v20, v19);
  sub_2203DFAD4(v12, v8);
  v13(v17, v5);
  (*(v21 + 56))(v8, 0, 1, v7);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2204254B8()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2204255D8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[24] + 8))(v0[27], v0[23]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_220425718(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_22042BAD0() != a1 || v9 != a2)
  {
    v10 = sub_22042BF50();

    if (v10)
    {
      return v8;
    }

    v8 = sub_22042BAB0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_220425808@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_220425F78(0);
  v5 = v4;
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22042BD20();
  if (v8 == 1 << *(a1 + 32))
  {
    v9 = *(v16 + 56);

    return v9(a2, 1, 1, v5);
  }

  else
  {
    v11 = *(v5 + 48);
    *a2 = sub_220426104(&v7[v11], v8, *(a1 + 36), 0, a1);
    *(a2 + 1) = v12;
    v13 = *(v5 + 48);
    v14 = sub_22042AAC0();
    (*(*(v14 - 8) + 32))(&a2[v13], &v7[v11], v14);
    return (*(v16 + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_2204259B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22042A830();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220425A78, 0, 0);
}

uint64_t sub_220425A78()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  sub_2203E69D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22042D3F0;
  *(v1 + 32) = sub_22042AAB0();
  *(v1 + 40) = v2;
  v0[8] = sub_22042A9E0();

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_220425B88;
  v4 = v0[7];

  return MEMORY[0x2821D23D8](v4);
}

uint64_t sub_220425B88()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_220425EA8;
  }

  else
  {

    v2 = sub_220425CA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_220425CA4(uint64_t a1)
{
  sub_22042AAB0();
  v2 = sub_22042A820();
  v4 = v3;

  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  if (v4)
  {
    (*(v6 + 8))(v1[7], v1[5]);

    v8 = v1[1];

    return v8(v2, v4);
  }

  else
  {
    v10 = v1[3];
    type metadata accessor for GroupIDStockMessageTranslator.Errors(0);
    sub_220426308(&qword_27CF527A8, type metadata accessor for GroupIDStockMessageTranslator.Errors, &unk_220431068);
    swift_allocError();
    v12 = v11;
    sub_220426280(0);
    v14 = *(v13 + 48);
    *v12 = sub_22042B0E0();
    v12[1] = v15;
    v16 = sub_22042AAC0();
    (*(*(v16 - 8) + 16))(v12 + v14, v10, v16);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v6 + 8))(v5, v7);

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_220425EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220425F14()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_220425F78(uint64_t a1)
{
  if (!qword_280FA0470)
  {
    sub_22042AAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA0470);
    }
  }
}

void sub_220425FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220426038(uint64_t a1, uint64_t a2)
{
  sub_220425FE4(0, &qword_280FA2378, MEMORY[0x277D68FD8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for GroupIDStockMessageTranslator.Errors(uint64_t a1)
{
  result = qword_27CF527B8;
  if (!qword_27CF527B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220426104(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = sub_22042AAC0();
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2204261D8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_220426224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220425FE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220426280(uint64_t a1)
{
  if (!qword_27CF527B0)
  {
    sub_22042AAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF527B0);
    }
  }
}

uint64_t sub_220426308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220426350(uint64_t a1)
{
  sub_220426280(319);
  if (v1 <= 0x3F)
  {
    sub_2204263D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2204263D4()
{
  if (!qword_27CF527C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF527C8);
    }
  }
}

uint64_t sub_220426434(void *a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_2203C109C(0, &unk_280FA2308, MEMORY[0x277CFBB28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  sub_2203C109C(0, &unk_280FA2318, MEMORY[0x277CFBB08], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for ComputeServiceConfigurationManager();
  result = sub_22042AD20();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v18[14] = v9;
  v18[15] = sub_22042A11C(&qword_280FA07B0, type metadata accessor for ComputeServiceConfigurationManager, &protocol conformance descriptor for ComputeServiceConfigurationManager);
  v18[11] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = type metadata accessor for StocksAppFeatureResolvers();
  result = sub_22042AD20();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = result;
  v18[9] = v12;
  v18[10] = sub_22042A11C(&qword_280FA1358, type metadata accessor for StocksAppFeatureResolvers, &protocol conformance descriptor for StocksAppFeatureResolvers);
  v18[6] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A74(0);
  result = sub_22042AD20();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_22042B3D0();
  result = sub_22042AD20();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  v18[4] = v14;
  v18[5] = sub_22042A11C(qword_280FA22D0, MEMORY[0x277D34B08], MEMORY[0x277D34B00]);
  v18[1] = v15;
  v16 = sub_22042B230();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_22042B290();
  sub_22042AD30();
  result = (*(*(v17 - 8) + 48))(v5, 1, v17);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22042B2F0();
  result = sub_22042AD20();
  if (result)
  {
    sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
    swift_allocObject();
    return sub_22042B1B0();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_220426838()
{
  v0 = sub_22042A5E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ComputeServiceRetentionTokenVendor();
  v4 = swift_allocObject();
  sub_22042A5D0();
  v5 = sub_22042A5C0();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  return v4;
}

uint64_t sub_22042692C(void *a1)
{
  sub_2203C1360(0, &unk_280FA0218, &qword_280FA13B0, &protocol descriptor for StocksFeatureResolver);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22042D3E0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for UserEventsFeatureResolver();
  result = sub_22042AD20();
  if (result)
  {
    v5 = result;
    *(v2 + 56) = v3;
    *(v2 + 64) = sub_22042A11C(&qword_280FA0AB8, type metadata accessor for UserEventsFeatureResolver, &unk_22042FC70);
    *(v2 + 32) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220429A10(0, &qword_280FA2260, MEMORY[0x277D34BC0]);
    v7 = v6;
    result = sub_22042AD20();
    if (result)
    {
      v8 = result;
      *(v2 + 96) = v7;
      *(v2 + 104) = sub_2203C1630();
      *(v2 + 72) = v8;
      type metadata accessor for StocksAppFeatureResolvers();
      result = swift_allocObject();
      *(result + 16) = v2;
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

uint64_t sub_220426A94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  v4 = v3;
  result = sub_22042AD20();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for <> ComputeService<A>;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220426B24(void *a1)
{
  sub_2203C109C(0, &qword_280FA22F0, MEMORY[0x277CFBB60], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for UserEventFeaturesFactory();
  result = sub_22042AD20();
  if (result)
  {
    v6 = result;
    type metadata accessor for UserEventsFeatureResolver();
    v7 = swift_allocObject();
    v8 = sub_22042B370();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_220429FF0(0);
    v9 = swift_allocObject();
    *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_22042A088(v4, v9 + *(*v9 + *MEMORY[0x277D841D0] + 16));
    *(v7 + 16) = v9;
    *(v7 + 24) = v6;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220426CF8()
{
  sub_220429A10(0, &qword_280FA2260, MEMORY[0x277D34BC0]);
  swift_allocObject();
  return sub_22042B500();
}

void *sub_220426D4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &unk_280FA2250, MEMORY[0x277D34BF8]);
  result = sub_22042AD30();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203BFCDC(0);
    result = sub_22042AD20();
    if (result)
    {
      v3 = result;
      type metadata accessor for UserEventFeaturesFactory();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      *(v4 + 24) = sub_22042B540() & 1;
      __swift_destroy_boxed_opaque_existential_1(v5);
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

uint64_t sub_220426E4C(void *a1)
{
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_22042A500();
  sub_22042AD10();
  v12 = *(*(v11 - 8) + 48);
  result = v12(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22042AD10();
  result = v12(v8, 1, v11);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22042AD10();
  result = v12(v5, 1, v11);
  if (result != 1)
  {
    sub_220429A74(0);
    swift_allocObject();
    return sub_22042B3A0();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2204270D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_22042B2D0();
  MEMORY[0x28223BE20](v3 - 8);
  v21 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042B270();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22042B260();
  v16 = *(v8 - 8);
  v17 = v8;
  MEMORY[0x28223BE20](v8);
  v18 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22042A790();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceConfigurationManager();
  result = sub_22042AD20();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(result + 2, result[5]);
    sub_22042AA40();
    sub_2203C1FFC(&v23);
    (*(v11 + 8))(v13, v10);
    v38[12] = v35;
    v38[13] = v36;
    v38[8] = v31;
    v38[9] = v32;
    v38[10] = v33;
    v38[11] = v34;
    v38[4] = v27;
    v38[5] = v28;
    v38[6] = v29;
    v38[7] = v30;
    v38[0] = v23;
    v38[1] = v24;
    v38[2] = v25;
    v38[3] = v26;
    v40[12] = v35;
    v41 = v36;
    v40[8] = v31;
    v40[9] = v32;
    v40[10] = v33;
    v40[11] = v34;
    v40[4] = v27;
    v40[5] = v28;
    v40[6] = v29;
    v40[7] = v30;
    v40[0] = v23;
    v40[1] = v24;
    v39 = v37;
    v42 = v37;
    v40[2] = v25;
    v40[3] = v26;
    if (sub_2203C30A8(v40) == 1)
    {
      v15 = 10.0;
    }

    else
    {
      sub_220429F48(v38, &qword_280FA08C0, &type metadata for ComputeServiceConfiguration);
      v15 = (v41 / 1000);
    }

    (*(v16 + 104))(v18, *MEMORY[0x277CFBB10], v17);
    *v7 = v15;
    *(v7 + 8) = 0;
    (*(v19 + 104))(v7, *MEMORY[0x277CFBB18], v20);
    sub_22042B2C0();
    sub_22042B250();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204274EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  result = sub_22042AD20();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203C3314(0, &qword_280FA0368, &protocolRef_FCUserEventHistoryStorageType);
    sub_22042B900();
    v6 = sub_22042AD00();

    if (v6)
    {
      a2[3] = &type metadata for StocksRadarAttachmentProvider;
      result = sub_220429EF4();
      a2[4] = result;
      *a2 = v5;
      a2[1] = v6;
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

void *sub_2204275FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C3314(0, &qword_280FA0360, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_22042AD20();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  result = sub_22042AD20();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA09F0, &protocol descriptor for ArticleFeaturesFactoryType);
  result = sub_22042AD30();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C3314(0, &unk_280FA0378, &protocolRef_FCPaidAccessCheckerType);
  result = sub_22042AD20();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v6);
    v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v18 = type metadata accessor for ArticleFeaturesFactory();
    v19 = &off_2834015A8;
    v17[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for ComputeServiceScoringService());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_220429AE0(v3, v4, *v14, v5, v11);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22042793C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_22042AD20();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2204279C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24C0, MEMORY[0x277D696F0]);
  result = sub_22042AD30();
  if (v4)
  {
    type metadata accessor for ComputeServiceConfigurationManager();
    v2 = swift_allocObject();
    sub_2203C5934(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220427A5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &unk_280FA04B8, MEMORY[0x277D33A50]);
  result = sub_22042AD30();
  if (v2)
  {
    sub_22042B3D0();
    swift_allocObject();
    return sub_22042B3C0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220427AF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA2288, MEMORY[0x277D34B70]);
  result = sub_22042AD30();
  if (v7)
  {
    v4 = type metadata accessor for ArticleFeaturesFactory();
    v5 = swift_allocObject();
    result = sub_2203C5934(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_2834015A8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_220427BA0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceConfigurationManager();
  result = sub_22042AD20();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
    result = sub_22042AD20();
    if (result)
    {
      v4 = result;
      v5 = objc_allocWithZone(type metadata accessor for ComputeServiceUnloaderService());
      return sub_2203E2E54(v3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220427CC4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_220427D08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220429A10(0, &qword_280FA2328, MEMORY[0x277CFBB00]);
  result = sub_22042AD20();
  if (result)
  {
    v2 = result;
    type metadata accessor for StocksComputeServiceStartupTask();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220427D94(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for StocksComputeServiceStartupTask();
  result = sub_22042AD20();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_22042A11C(&unk_280FA12A0, type metadata accessor for StocksComputeServiceStartupTask, &unk_22042EDBC);
    v5[0] = v4;
    sub_22042ADF0();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220427E88(uint64_t *a1, void *a2)
{
  v18 = sub_22042B270();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203C109C(0, &unk_280FA2308, MEMORY[0x277CFBB28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_22042B290();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22042AD30();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_22042B280();
  v15 = v18;
  if ((*(v4 + 88))(v6, v18) == *MEMORY[0x277CFBB20])
  {
    (*(v11 + 8))(v13, v10);
    return (*(v4 + 8))(v6, v15);
  }

  (*(v4 + 8))(v6, v15);
  sub_22042ACE0();
  if ((sub_22042ACD0() & 1) == 0)
  {
    return (*(v11 + 8))(v13, v10);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleScoringRequestEventProcessor(0);
  result = sub_22042AD20();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = result;

  sub_22042B2E0();

  return (*(v11 + 8))(v13, v10);
}

id sub_2204281D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C109C(0, &unk_280FA2240, MEMORY[0x277D34C00], MEMORY[0x277D83D88]);
  result = sub_22042AD10();
  if (v5 == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = type metadata accessor for ArticleScoringRequestEventProcessor(0);
    v3 = objc_allocWithZone(v2);
    *&v3[qword_27CF525F8] = v5;
    v4.receiver = v3;
    v4.super_class = v2;
    return objc_msgSendSuper2(&v4, sel_init);
  }

  return result;
}

uint64_t sub_2204282C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_2203C12B0(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22042B580();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = objc_opt_self();
  v10 = [v9 kilobytes];
  v11 = [v9 megabytes];
  sub_2203C1318(0, &qword_280FA0370, 0x277CCAE18);
  sub_22042A3F0();
  sub_22042B570();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_22042A500();
  sub_22042AA90();
  sub_22042AD10();

  result = (*(*(v12 - 8) + 48))(v6, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22042B5B0();
    swift_allocObject();
    result = sub_22042B590();
    *a2 = result;
  }

  return result;
}

void *sub_220428658@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24F0, MEMORY[0x277D695E8]);
  result = sub_22042AD30();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24F8, MEMORY[0x277D69550]);
  result = sub_22042AD30();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24C0, MEMORY[0x277D696F0]);
  result = sub_22042AD30();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CFDB8(0, &qword_280FA24C8, MEMORY[0x277D696A8]);
  result = sub_22042AD30();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ComputeServiceScoringService();
  result = sub_22042AD20();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for NewsHeadlineScorerFactory();
    v7 = swift_allocObject();
    sub_2203C5934(&v14, v7 + 16);
    sub_2203C5934(&v12, v7 + 56);
    sub_2203C5934(&v10, v7 + 96);
    sub_2203C5934(&v8, v7 + 136);
    *(v7 + 176) = v5;
    a2[3] = v6;
    result = sub_22042A11C(qword_280FA0AD0, type metadata accessor for NewsHeadlineScorerFactory, &protocol conformance descriptor for NewsHeadlineScorerFactory);
    a2[4] = result;
    *a2 = v7;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220428888()
{
  v0 = sub_22042A490();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22042A500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042AAF0();
  sub_22042AAE0();
  sub_22042AAD0();

  v9[0] = 0xD000000000000012;
  v9[1] = 0x8000000220433BD0;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
  sub_2203C0F94();
  sub_22042A4E0();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_220428A74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = sub_22042A490();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_22042A500();
  sub_22042AD10();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17[2] = a2;
    v17[3] = a3;
    (*(v8 + 104))(v10, *MEMORY[0x277CC91C0], v7);
    sub_2203C0F94();
    sub_22042A4E0();
    (*(v8 + 8))(v10, v7);
    return (*(v15 + 8))(v13, v14);
  }

  return result;
}

void *sub_220428CF8(uint64_t a1, void *a2)
{
  v44 = a2;
  v2 = sub_22042B8E0();
  v46 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = (&v39 - v5);
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = sub_22042B200();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22042A500();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v43 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - v22;
  sub_22042B170();
  sub_22042B1F0();
  (*(v15 + 8))(v17, v14);
  v41 = *(v19 + 48);
  if (v41(v13, 1, v18) != 1)
  {
    (*(v19 + 32))(v23, v13, v18);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_22042A4D0();
    *(v25 + 24) = v26;
    *v6 = v25;
    v27 = v46;
    (*(v46 + 104))(v6, *MEMORY[0x277D6D6D0], v2);
    i = sub_22041F084(0, 1, 1, MEMORY[0x277D84F90]);
    isEscapingClosureAtFileLocation = i[2];
    v28 = i[3];
    v30 = isEscapingClosureAtFileLocation + 1;
    if (isEscapingClosureAtFileLocation >= v28 >> 1)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

  v23 = v2;
  sub_22042A1F8(v13);
  for (i = MEMORY[0x277D84F90]; ; (*(v27 + 32))(i + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * isEscapingClosureAtFileLocation, v6, v2))
  {
    v2 = v45;
    (*(v19 + 56))(v45, 1, 1, v18);
    v6 = swift_allocObject();
    v6[2] = v2;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_22042A284;
    *(v30 + 24) = v6;
    aBlock[4] = sub_22042A28C;
    v48 = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220429924;
    aBlock[3] = &block_descriptor;
    v31 = _Block_copy(aBlock);
    v27 = v48;

    [v44 readBaseDirectoryWithAccessor_];
    _Block_release(v31);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_15:
    i = sub_22041F084((v28 > 1), v30, 1, i);
LABEL_4:
    (*(v19 + 8))(v23, v18);
    i[2] = v30;
    v23 = v2;
  }

  v32 = v42;
  sub_22042A2CC(v2, v42);
  if (v41(v32, 1, v18) == 1)
  {
    sub_22042A1F8(v32);
  }

  else
  {
    (*(v19 + 32))(v43, v32, v18);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_22042A4D0();
    *(v33 + 24) = v34;
    v35 = v40;
    *v40 = v33;
    (*(v46 + 104))(v35, *MEMORY[0x277D6D6D0], v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_22041F084(0, i[2] + 1, 1, i);
    }

    v37 = i[2];
    v36 = i[3];
    if (v37 >= v36 >> 1)
    {
      i = sub_22041F084((v36 > 1), v37 + 1, 1, i);
    }

    (*(v19 + 8))(v43, v18);
    i[2] = v37 + 1;
    (*(v46 + 32))(i + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v37, v35, v23);
  }

  sub_22042A1F8(v2);

  return i;
}

uint64_t sub_2204293F0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v41 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v40 = sub_22042A490();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22042A5E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22042A500();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  sub_22042A4A0();
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_22042BD70();

  v43 = 0xD00000000000001ALL;
  v44 = 0x8000000220433C60;
  sub_22042A5D0();
  v15 = sub_22042A5C0();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x223D7BDE0](v15, v17);

  v18 = v40;
  (*(v2 + 104))(v4, *MEMORY[0x277CC91C0], v40);
  sub_2203C0F94();
  sub_22042A4F0();
  (*(v2 + 8))(v4, v18);
  v19 = v38;

  v20 = *(v19 + 8);
  v21 = v12;
  v22 = v39;
  v20(v21, v39);
  v23 = [objc_opt_self() defaultManager];
  v24 = sub_22042A4B0();
  v25 = sub_22042A4B0();
  v43 = 0;
  LODWORD(v6) = [v23 copyItemAtURL:v24 toURL:v25 error:&v43];

  if (v6)
  {
    v26 = v43;
    v27 = v37;
    sub_22042A1F8(v37);
    (*(v19 + 32))(v27, v14, v22);
    return (*(v19 + 56))(v27, 0, 1, v22);
  }

  else
  {
    v29 = v14;
    v30 = v43;
    v31 = sub_22042A480();

    swift_willThrow();
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v32 = qword_280FA0A00;
    v33 = sub_22042BC80();
    sub_2203C1360(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22042D3F0;
    v43 = 0;
    v44 = 0xE000000000000000;
    v42 = v31;
    sub_2203CFDB8(0, &unk_280FA01A0, MEMORY[0x277D84948]);
    sub_22042BDF0();
    v35 = v43;
    v36 = v44;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_2203C1FA8();
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    sub_22042B8D0("Failed to copy stocks user event history for radar attachment with error=%{public}@", 83, 2, &dword_2203BD000, v32, v33, v34);

    MEMORY[0x223D7C730](v31);
    return (v20)(v29, v22);
  }
}

uint64_t sub_220429924(uint64_t a1, uint64_t a2)
{
  v3 = sub_22042A500();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_22042A4C0();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

void sub_220429A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203C0E7C();
    v7 = a3(a1, &type metadata for ComputeServiceConfiguration, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_220429A74(uint64_t a1)
{
  if (!qword_280FA22E8)
  {
    sub_22042B5C0();
    sub_2203C0E7C();
    v1 = sub_22042B3B0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA22E8);
    }
  }
}

id sub_220429AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_22042AE10();
  MEMORY[0x28223BE20](v10);
  v31[3] = type metadata accessor for ArticleFeaturesFactory();
  v31[4] = &off_2834015A8;
  v31[0] = a3;
  v11 = OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_prepareForUseDeduper;
  v12 = MEMORY[0x277D84F90];
  *&v29 = MEMORY[0x277D84F90];
  sub_22042A11C(&qword_280FA2410, MEMORY[0x277D6CD10], MEMORY[0x277D6CD18]);
  sub_2203C109C(0, &unk_280FA0448, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
  sub_2203C3824();
  sub_22042BD10();
  sub_2203C38FC();
  swift_allocObject();
  *&a5[v11] = sub_22042AD50();
  sub_2203C1318(0, &qword_280FA0340, 0x277D86200);
  v13 = sub_22042BCD0();
  v14 = sub_22042BC70();
  sub_22042B8D0("Initializing ComputeServiceScoringService", 41, 2, &dword_2203BD000, v13, v14, v12);

  v15 = [a1 cachedSubscription];
  if (objc_getAssociatedObject(v15, v15 + 1))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  v16 = MEMORY[0x277D84F70];
  if (!*(&v28 + 1))
  {
    sub_220429F48(&v29, &qword_280FA0188, MEMORY[0x277D84F70] + 8);
    goto LABEL_9;
  }

  sub_2203C1318(0, &qword_280FA0350, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v17 = v25;
  v18 = [v25 integerValue];
  if (v18 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v15, ~v18))
  {
    sub_22042BD00();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    sub_220429F48(&v29, &qword_280FA0188, v16 + 8);
    goto LABEL_17;
  }

  sub_2203C1318(0, &qword_280FA0350, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v21 = -51;
    goto LABEL_18;
  }

  v19 = v25;
  v20 = [v19 integerValue];

  v21 = v20 - 51;
LABEL_18:
  a5[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed] = ((v21 ^ v18) & 1) == 0;
  *&a5[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_computeService] = a2;
  sub_2203C37C0(v31, &a5[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_articleFeaturesFactory]);
  *&a5[OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_paidAccessChecker] = a4;
  v26.receiver = a5;
  v26.super_class = ObjectType;

  swift_unknownObjectRetain();
  v22 = objc_msgSendSuper2(&v26, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v22;
}

unint64_t sub_220429EF4()
{
  result = qword_280FA12B0;
  if (!qword_280FA12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA12B0);
  }

  return result;
}

uint64_t sub_220429F48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_220429FA4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220429FA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220429FF0(uint64_t a1)
{
  if (!qword_280FA0320)
  {
    sub_2203C109C(255, &qword_280FA22F0, MEMORY[0x277CFBB60], MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22042BD90();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA0320);
    }
  }
}

uint64_t sub_22042A088(uint64_t a1, uint64_t a2)
{
  sub_2203C109C(0, &qword_280FA22F0, MEMORY[0x277CFBB60], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22042A11C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22042A164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22042A1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22042A1F8(uint64_t a1)
{
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22042A2CC(uint64_t a1, uint64_t a2)
{
  sub_2203C109C(0, &qword_280FA2540, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}