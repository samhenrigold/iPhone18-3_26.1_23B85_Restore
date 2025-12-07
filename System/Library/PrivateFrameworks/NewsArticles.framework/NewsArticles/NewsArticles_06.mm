uint64_t sub_1D7A2A998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1D7D2B02C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D7A2AA60, 0, 0);
}

uint64_t sub_1D7A2AA60()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1D7A2770C(sub_1D7A2ABE4, v3);

  type metadata accessor for ReportConcernLayoutSectionDescriptor(0);
  type metadata accessor for ReportConcernLayoutModel(0);
  sub_1D7A2B98C(&unk_1EC9E7CB0, type metadata accessor for ReportConcernLayoutSectionDescriptor, &unk_1D7D662E0);
  sub_1D7A2B98C(&unk_1EC9E2610, type metadata accessor for ReportConcernLayoutModel, &unk_1D7D5DFA8);
  sub_1D7D2A21C();

  v4 = v0[1];

  return v4();
}

void sub_1D7A2AC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ReportConcernSectionDescriptor;
    v8[1] = &type metadata for ReportConcernModel;
    v8[2] = sub_1D7A26D5C();
    v8[3] = sub_1D7A26E88();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7A2ACA8(uint64_t a1)
{
  if (!qword_1EC9E2650)
  {
    type metadata accessor for ReportConcernLayoutModel(255);
    sub_1D7A2B98C(&unk_1EC9E2610, type metadata accessor for ReportConcernLayoutModel, &unk_1D7D5DFA8);
    v1 = sub_1D7D2ABCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2650);
    }
  }
}

uint64_t sub_1D7A2AD3C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D7A2AC04(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7A2AD80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D7D2B15C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D7A2ADEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7A2AE50()
{
  result = qword_1EC9E3310;
  if (!qword_1EC9E3310)
  {
    sub_1D7A2ADEC(255, &unk_1EC9E2680, MEMORY[0x1E69B62A8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3310);
  }

  return result;
}

void sub_1D7A2AED8(uint64_t a1)
{
  if (!qword_1EC9E2690)
  {
    sub_1D799621C();
    sub_1D7D2F44C();
    sub_1D7D2F3FC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC9E2690);
    }
  }
}

void sub_1D7A2AFB8(uint64_t a1)
{
  if (!qword_1EE0C00F0)
  {
    type metadata accessor for EndOfArticleModel(255);
    sub_1D7A2B98C(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel, &protocol conformance descriptor for EndOfArticleModel);
    v1 = sub_1D7D29F0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C00F0);
    }
  }
}

void sub_1D7A2B04C(uint64_t a1)
{
  if (!qword_1EE0C0050)
  {
    type metadata accessor for EndOfArticleModel(255);
    sub_1D7A2B104();
    sub_1D7A2B98C(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel, &protocol conformance descriptor for EndOfArticleModel);
    v1 = sub_1D7D2A49C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0050);
    }
  }
}

unint64_t sub_1D7A2B104()
{
  result = qword_1EE0C4840;
  if (!qword_1EE0C4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4840);
  }

  return result;
}

void sub_1D7A2B158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ReportConcernDetailSectionDescriptor;
    v8[1] = &type metadata for ReportConcernDetailModel;
    v8[2] = sub_1D7A133E8();
    v8[3] = sub_1D7A13440();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7A2B1DC(uint64_t a1)
{
  if (!qword_1EC9E26B0)
  {
    type metadata accessor for ReportConcernDetailLayoutSectionDescriptor(255);
    type metadata accessor for ReportConcernDetailLayoutModel(255);
    sub_1D7A2B98C(&unk_1EC9E7FF0, type metadata accessor for ReportConcernDetailLayoutSectionDescriptor, &unk_1D7D41178);
    sub_1D7A2B98C(&unk_1EC9E26C0, type metadata accessor for ReportConcernDetailLayoutModel, &unk_1D7D52FD8);
    v1 = sub_1D7D2B07C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E26B0);
    }
  }
}

uint64_t sub_1D7A2B2C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D7A2B158(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7A2B30C(uint64_t a1)
{
  if (!qword_1EC9E26E0)
  {
    type metadata accessor for ReportConcernDetailLayoutModel(255);
    sub_1D7A2B98C(&unk_1EC9E26C0, type metadata accessor for ReportConcernDetailLayoutModel, &unk_1D7D52FD8);
    v1 = sub_1D7D2ABCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E26E0);
    }
  }
}

void sub_1D7A2B3A0(uint64_t a1)
{
  if (!qword_1EC9E26F0)
  {
    type metadata accessor for EndOfRecipeSectionDescriptor(255);
    type metadata accessor for EndOfRecipeModel(255);
    sub_1D7A2B98C(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor, &protocol conformance descriptor for EndOfRecipeSectionDescriptor);
    sub_1D7A2B98C(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel, &protocol conformance descriptor for EndOfRecipeModel);
    v1 = sub_1D7D2A49C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E26F0);
    }
  }
}

void sub_1D7A2B48C(uint64_t a1)
{
  if (!qword_1EC9E26F8)
  {
    type metadata accessor for EndOfRecipeLayoutModel(255);
    sub_1D7A2B544();
    sub_1D7A2B98C(&unk_1EC9E5340, type metadata accessor for EndOfRecipeLayoutModel, &unk_1D7D4F0E8);
    v1 = sub_1D7D2B07C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E26F8);
    }
  }
}

unint64_t sub_1D7A2B544()
{
  result = qword_1EC9E2700;
  if (!qword_1EC9E2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2700);
  }

  return result;
}

void sub_1D7A2B598(uint64_t a1)
{
  if (!qword_1EC9E2710)
  {
    type metadata accessor for EndOfRecipeSectionDescriptor(255);
    type metadata accessor for EndOfRecipeModel(255);
    sub_1D7A2B98C(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor, &protocol conformance descriptor for EndOfRecipeSectionDescriptor);
    sub_1D7A2B98C(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel, &protocol conformance descriptor for EndOfRecipeModel);
    v1 = sub_1D7D2C80C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2710);
    }
  }
}

void sub_1D7A2B684(uint64_t a1)
{
  if (!qword_1EC9E2728)
  {
    type metadata accessor for TableOfContentsLayoutModel(255);
    sub_1D7A2B73C();
    sub_1D7A2B98C(&qword_1EC9E1A28, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1BC);
    v1 = sub_1D7D2B07C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2728);
    }
  }
}

unint64_t sub_1D7A2B73C()
{
  result = qword_1EC9E2730;
  if (!qword_1EC9E2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2730);
  }

  return result;
}

void sub_1D7A2B790(uint64_t a1)
{
  if (!qword_1EC9E2740)
  {
    type metadata accessor for TableOfContentsModel(255);
    sub_1D79ECABC();
    sub_1D7A2B98C(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel, &unk_1D7D4C308);
    v1 = sub_1D7D2C80C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2740);
    }
  }
}

void sub_1D7A2B8F8(uint64_t a1)
{
  if (!qword_1EE0C00B0)
  {
    type metadata accessor for ArticleViewerPage(255);
    sub_1D7A2B98C(&qword_1EE0C9930, type metadata accessor for ArticleViewerPage, &protocol conformance descriptor for ArticleViewerPage);
    v1 = sub_1D7D29FDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C00B0);
    }
  }
}

uint64_t sub_1D7A2B98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7A2B9D4(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A2BA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7A2BA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D7A2BB00()
{
  result = qword_1EC9E2758;
  if (!qword_1EC9E2758)
  {
    sub_1D7A2BA98(255, &qword_1EC9E2B50, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7708]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2758);
  }

  return result;
}

uint64_t sub_1D7A2BBE4(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v30 = a1;
  v31 = a2;
  sub_1D79ECB58(0);
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a5 >> 1;
  v34 = a4;
  v14 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return v15;
  }

  v52 = MEMORY[0x1E69E7CC0];
  sub_1D7A5BE8C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v15 = v52;
    v28[0] = ~v34 + v33;
    v28[1] = v32 + 32;
    v17 = a3 + 88 * v34;
    while ((v34 + v16) < v33 && v16 < v14)
    {
      v19 = *(v17 + 48);
      v20 = *(v17 + 16);
      v48 = *(v17 + 32);
      v49 = v19;
      v21 = *(v17 + 48);
      v50 = *(v17 + 64);
      v22 = *(v17 + 16);
      v47[0] = *v17;
      v47[1] = v22;
      v43 = v48;
      v44 = v21;
      v45 = *(v17 + 64);
      v51 = *(v17 + 80);
      v46 = *(v17 + 80);
      v41 = v47[0];
      v42 = v20;
      sub_1D79ECF40(v47, &v35);
      v23 = v13;
      v30(&v41);
      if (v6)
      {
        goto LABEL_21;
      }

      v6 = 0;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v40 = v46;
      v35 = v41;
      v36 = v42;
      sub_1D7A2BEAC(&v35);
      v52 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D7A5BE8C((v24 > 1), v25 + 1, 1);
        v15 = v52;
      }

      *(v15 + 16) = v25 + 1;
      v26 = v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25;
      v13 = v23;
      (*(v32 + 32))(v26, v23, v29);
      if (v28[0] == v16)
      {
        return v15;
      }

      ++v16;
      v17 += 88;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v35 = v41;
  v36 = v42;
  sub_1D7A2BEAC(&v35);

  __break(1u);
  return result;
}

uint64_t sub_1D7A2BF00(uint64_t a1, uint64_t a2)
{
  sub_1D7A271AC(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7A2BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A271AC(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for ReportConcernDetailLayoutSectionDescriptor(uint64_t a1)
{
  result = qword_1EC9E2770;
  if (!qword_1EC9E2770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A2C034(uint64_t a1)
{
  sub_1D7A271AC(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1D7D2B15C();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

double sub_1D7A2C108()
{
  v1 = sub_1D7D2B15C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2C260(v0, v9);

  sub_1D7A271AC(0);
  (*(v2 + 32))(v5, &v9[*(v10 + 48)], v1);
  sub_1D7D2B13C();
  v12 = v11;
  (*(v2 + 8))(v5, v1);
  return v12;
}

uint64_t sub_1D7A2C260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcernDetailLayoutSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TipViewImpression.DismissalType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t TipViewImpression.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7D2833C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TipViewImpression.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipViewImpression(0) + 20);
  v4 = sub_1D7D2833C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TipViewImpression.dismissalType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TipViewImpression(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

char *TipViewController.__allocating_init(viewModel:eventHandler:requestFactory:tipPresentationConfig:app:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  sub_1D7D2832C();
  sub_1D7A2CD1C(a1, v12 + OBJC_IVAR____TtC12NewsArticles17TipViewController_viewModel);
  v31 = a2;
  sub_1D799CC84(a2, v12 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler);
  sub_1D799CC84(a3, v12 + OBJC_IVAR____TtC12NewsArticles17TipViewController_requestFactory);
  sub_1D7A2F018(a4, &v37, &qword_1EE0C5F20, qword_1EE0C5F28, &protocol descriptor for TipPresentationConfigType);
  if (*(&v38 + 1))
  {
    sub_1D799D69C(&v37, &aBlock);
  }

  else
  {
    *(&v43 + 1) = &type metadata for TipPresentationConfig;
    *&v44 = &protocol witness table for TipPresentationConfig;
    LOBYTE(aBlock) = 0;
  }

  sub_1D799D69C(&aBlock, v12 + OBJC_IVAR____TtC12NewsArticles17TipViewController_tipPresentationConfig);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 8))(a1, v13, v14);
  v47.receiver = v12;
  v47.super_class = v6;
  v16 = objc_msgSendSuper2(&v47, sel_initWithRequest_, v15);
  sub_1D7A2F018(a5, &v37, &qword_1EE0BFC68, &unk_1EE0BFC70, MEMORY[0x1E69D8778]);
  if (*(&v38 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v17 = sub_1D7D2C24C();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v44 = sub_1D7A2F224;
    *(&v44 + 1) = v18;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v43 = sub_1D79FE25C;
    *(&v43 + 1) = &block_descriptor_4;
    v19 = _Block_copy(&aBlock);

    v20 = [v17 onWindowWillBecomeForegroundWithBlock_];
    _Block_release(v19);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    sub_1D7A2F104(&v37, &qword_1EE0BFC68, &unk_1EE0BFC70, MEMORY[0x1E69D8778]);
  }

  v21 = v16;
  [v21 setModalPresentationStyle_];
  [v21 setDelegate_];

  v22 = [v21 popoverPresentationController];
  if (v22)
  {
    v23 = v22;
    [v22 setDelegate_];
    v24 = OBJC_IVAR____TtC12NewsArticles17TipViewController_viewModel;
    v25 = &v21[v24 + *(type metadata accessor for TipViewModel(0) + 20)];
    v26 = *(v25 + 8);
    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v38 = *(v25 + 1);
    v39 = v28;
    v40 = v27;
    v41 = v26;
    v37 = *v25;
    v34 = *(v25 + 2);
    v35 = *(v25 + 3);
    v36 = *(v25 + 8);
    v32 = *v25;
    v33 = *(v25 + 1);
    sub_1D7A2F174(&v37, &aBlock);
    sub_1D7ABB404(v23);

    v44 = v34;
    v45 = v35;
    v46 = v36;
    aBlock = v32;
    v43 = v33;
    sub_1D7A2F1D0(&aBlock);
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E698CC70]) init];
  [v21 setPreferredAppearance_];

  sub_1D7A2F104(a5, &qword_1EE0BFC68, &unk_1EE0BFC70, MEMORY[0x1E69D8778]);
  sub_1D7A2F104(a4, &qword_1EE0C5F20, qword_1EE0C5F28, &protocol descriptor for TipPresentationConfigType);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1D7A2F33C(a1, type metadata accessor for TipViewModel);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v21;
}

char *TipViewController.init(viewModel:eventHandler:requestFactory:tipPresentationConfig:app:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  sub_1D7D2832C();
  sub_1D7A2CD1C(a1, v6 + OBJC_IVAR____TtC12NewsArticles17TipViewController_viewModel);
  v31 = a2;
  sub_1D799CC84(a2, v6 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler);
  sub_1D799CC84(a3, v6 + OBJC_IVAR____TtC12NewsArticles17TipViewController_requestFactory);
  sub_1D7A2F018(a4, &v37, &qword_1EE0C5F20, qword_1EE0C5F28, &protocol descriptor for TipPresentationConfigType);
  if (*(&v38 + 1))
  {
    sub_1D799D69C(&v37, &aBlock);
  }

  else
  {
    *(&v43 + 1) = &type metadata for TipPresentationConfig;
    *&v44 = &protocol witness table for TipPresentationConfig;
    LOBYTE(aBlock) = 0;
  }

  sub_1D799D69C(&aBlock, v6 + OBJC_IVAR____TtC12NewsArticles17TipViewController_tipPresentationConfig);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 8))(a1, v13, v14);
  v47.receiver = v6;
  v47.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v47, sel_initWithRequest_, v15);
  sub_1D7A2F018(a5, &v37, &qword_1EE0BFC68, &unk_1EE0BFC70, MEMORY[0x1E69D8778]);
  if (*(&v38 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v17 = sub_1D7D2C24C();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v44 = sub_1D7A2FE80;
    *(&v44 + 1) = v18;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v43 = sub_1D79FE25C;
    *(&v43 + 1) = &block_descriptor_5;
    v19 = _Block_copy(&aBlock);

    v20 = [v17 onWindowWillBecomeForegroundWithBlock_];
    _Block_release(v19);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    sub_1D7A2F104(&v37, &qword_1EE0BFC68, &unk_1EE0BFC70, MEMORY[0x1E69D8778]);
  }

  v21 = v16;
  [v21 setModalPresentationStyle_];
  [v21 setDelegate_];

  v22 = [v21 popoverPresentationController];
  if (v22)
  {
    v23 = v22;
    [v22 setDelegate_];
    v24 = OBJC_IVAR____TtC12NewsArticles17TipViewController_viewModel;
    v25 = &v21[v24 + *(type metadata accessor for TipViewModel(0) + 20)];
    v26 = *(v25 + 8);
    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v38 = *(v25 + 1);
    v39 = v28;
    v40 = v27;
    v41 = v26;
    v37 = *v25;
    v34 = *(v25 + 2);
    v35 = *(v25 + 3);
    v36 = *(v25 + 8);
    v32 = *v25;
    v33 = *(v25 + 1);
    sub_1D7A2F174(&v37, &aBlock);
    sub_1D7ABB404(v23);

    v44 = v34;
    v45 = v35;
    v46 = v36;
    aBlock = v32;
    v43 = v33;
    sub_1D7A2F1D0(&aBlock);
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E698CC70]) init];
  [v21 setPreferredAppearance_];

  sub_1D7A2F104(a5, &qword_1EE0BFC68, &unk_1EE0BFC70, MEMORY[0x1E69D8778]);
  sub_1D7A2F104(a4, &qword_1EE0C5F20, qword_1EE0C5F28, &protocol descriptor for TipPresentationConfigType);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1D7A2F33C(a1, type metadata accessor for TipViewModel);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v21;
}

uint64_t sub_1D7A2CD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7A2CD80(uint64_t a1)
{
  v1 = sub_1D7D2833C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1D7D2832C();
    v8 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
    swift_beginAccess();
    (*(v2 + 40))(&v7[v8], v5, v1);
    swift_endAccess();
  }
}

Swift::Void __swiftcall TipViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_1D7A2F244(0, &qword_1EE0BE900, sub_1D79F3CAC, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7D3B4D0;
  v2 = sub_1D7D2CA0C();
  v3 = MEMORY[0x1E69DC2B0];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  sub_1D7D30DCC();
  swift_unknownObjectRelease();
}

void sub_1D7A2CFF0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles17TipViewController_tipPresentationConfig + 24];
  v3 = *&v0[OBJC_IVAR____TtC12NewsArticles17TipViewController_tipPresentationConfig + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC12NewsArticles17TipViewController_tipPresentationConfig], v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    return;
  }

  v4 = [v0 presentingViewController];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 view];

  if (!v6)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v6 frame];
  v8 = v7;

  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1 && v8 > 480.0)
  {
    return;
  }

  v11 = [v1 popoverPresentationController];
  [v11 setPopoverLayoutMargins_];

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  [v12 setNeedsLayout];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = v8 + -16.0;
  [v14 sizeThatFits_];
  v18 = v17;

  [v1 setPreferredContentSize_];
}

Swift::Void __swiftcall TipViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1);
  sub_1D7A2CFF0();
}

Swift::Void __swiftcall TipViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D7D2833C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewDidAppear_, a1, v8);
  sub_1D7D2832C();
  v11 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
  swift_beginAccess();
  (*(v6 + 40))(&v2[v11], v10, v5);
  swift_endAccess();
  v12 = *&v2[OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 24];
  v13 = *&v2[OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler], v12);
  (*(v13 + 24))(v12, v13);
  v14 = &v2[OBJC_IVAR____TtC12NewsArticles17TipViewController_viewModel];
  if (v14[*(type metadata accessor for TipViewModel(0) + 24)])
  {
    [v2 becomeFirstResponder];
  }
}

void TipViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1D7A2F2CC;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7A2D6E0;
  v9[3] = &block_descriptor_9;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_1D7A2D68C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D7A2CFF0();
  }
}

uint64_t sub_1D7A2D6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t TipViewController.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TipViewImpression(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7992EFC(0, &qword_1EC9E2780, 0x1E69DCDF0);
  sub_1D7A2F2D4();
  v9 = sub_1D7D3099C();
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_pressesBegan_withEvent_, v9, a2);

  v10 = &v2[OBJC_IVAR____TtC12NewsArticles17TipViewController_viewModel];
  result = type metadata accessor for TipViewModel(0);
  if (v10[*(result + 24)])
  {
    [v2 resignFirstResponder];
    v12 = *&v2[OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 24];
    v13 = *&v2[OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler], v12);
    v14 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
    swift_beginAccess();
    v15 = sub_1D7D2833C();
    (*(*(v15 - 8) + 16))(v8, &v2[v14], v15);
    sub_1D7D2832C();
    v8[*(v5 + 24)] = 2;
    (*(v13 + 8))(v2, v8, v12, v13);
    return sub_1D7A2F33C(v8, type metadata accessor for TipViewImpression);
  }

  return result;
}

id TipViewController.__allocating_init(request:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRequest_];

  return v3;
}

id TipViewController.__allocating_init(request:bag:account:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithRequest:a1 bag:a2 account:a3];

  swift_unknownObjectRelease();
  return v6;
}

id TipViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D7D3031C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TipViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TipViewController.messageViewController(_:didSelectActionWith:)(uint64_t a1, void *a2)
{
  sub_1D7A2F244(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v46 = &v44 - v6;
  v7 = type metadata accessor for TipViewImpression(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v44 - v12;
  sub_1D7A2F09C(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7D3B4E0;
  v49 = 0;
  v50 = 0xE000000000000000;
  swift_getObjectType();
  v48 = a1;
  swift_getWitnessTable();
  sub_1D7D3194C();
  v15 = v49;
  v16 = v50;
  v17 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1D79D6AE0();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v19 = [a2 description];
  v20 = sub_1D7D3034C();
  v22 = v21;

  *(v14 + 96) = v17;
  *(v14 + 104) = v18;
  *(v14 + 72) = v20;
  *(v14 + 80) = v22;
  sub_1D7992EFC(0, &qword_1EE0BEC80, 0x1E69E9BF8);
  v23 = sub_1D7D312CC();
  v24 = sub_1D7D30C6C();
  sub_1D7D29AAC("Message view controller (%{public}@) action selected : %{public}@", 65, 2, &dword_1D7987000, v23, v24, v14);

  v25 = [a2 selectedActionIdentifier];
  if (!v25)
  {
    sub_1D7D3034C();
    v25 = sub_1D7D3031C();
  }

  v26 = [a2 originalRequest];
  v27 = [v26 locateActionWithIdentifier_];

  if (v27)
  {
    if ([v27 style] == 2)
    {
      v28 = v47;
      v29 = *(v47 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 24);
      v30 = *(v47 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 32);
      __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler), v29);
      v31 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
      swift_beginAccess();
      v32 = sub_1D7D2833C();
      (*(*(v32 - 8) + 16))(v13, v28 + v31, v32);
      sub_1D7D2832C();
      v13[*(v7 + 24)] = 1;
      (*(v30 + 8))(a1, v13, v29, v30);

      sub_1D7A2F33C(v13, type metadata accessor for TipViewImpression);
    }

    else if ([v27 style])
    {
    }

    else
    {
      v33 = v47;
      sub_1D799CC84(v47 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler, &v49);
      v34 = v51;
      v35 = v52;
      __swift_project_boxed_opaque_existential_1(&v49, v51);
      v36 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
      swift_beginAccess();
      v37 = sub_1D7D2833C();
      v38 = v45;
      (*(*(v37 - 8) + 16))(v45, v33 + v36, v37);
      sub_1D7D2832C();
      *(v38 + *(v7 + 24)) = 0;
      v39 = [v27 deepLink];
      if (v39)
      {
        v40 = v46;
        v41 = v39;
        sub_1D7D281EC();

        v42 = 0;
      }

      else
      {
        v42 = 1;
        v40 = v46;
      }

      v43 = sub_1D7D2824C();
      (*(*(v43 - 8) + 56))(v40, v42, 1, v43);
      (*(v35 + 16))(a1, v38, v40, v34, v35);

      sub_1D79A8AB4(v40);
      sub_1D7A2F33C(v38, type metadata accessor for TipViewImpression);
      __swift_destroy_boxed_opaque_existential_1(&v49);
    }
  }
}

uint64_t TipViewController.cardSplitViewPresentation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7D2A97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x1E69D7B20])
  {
    v11 = MEMORY[0x1E69D80B8];
LABEL_5:
    v12 = *v11;
    v13 = sub_1D7D2B58C();
    (*(*(v13 - 8) + 104))(a2, v12, v13);
    v14 = *MEMORY[0x1E69D80C8];
    v15 = sub_1D7D2B59C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x1E69D7B18])
  {
    v11 = MEMORY[0x1E69D80C0];
    goto LABEL_5;
  }

  result = sub_1D7D3196C();
  __break(1u);
  return result;
}

uint64_t sub_1D7A2E778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7D2A97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x1E69D7B20])
  {
    v11 = MEMORY[0x1E69D80B8];
LABEL_5:
    v12 = *v11;
    v13 = sub_1D7D2B58C();
    (*(*(v13 - 8) + 104))(a2, v12, v13);
    v14 = *MEMORY[0x1E69D80C8];
    v15 = sub_1D7D2B59C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x1E69D7B18])
  {
    v11 = MEMORY[0x1E69D80C0];
    goto LABEL_5;
  }

  result = sub_1D7D3196C();
  __break(1u);
  return result;
}

Swift::Void __swiftcall TipViewController.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  v2 = type metadata accessor for TipViewImpression(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 24);
  v8 = *(v1 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler), v7);
  v9 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
  swift_beginAccess();
  v10 = sub_1D7D2833C();
  (*(*(v10 - 8) + 16))(v6, v1 + v9, v10);
  sub_1D7D2832C();
  v6[*(v3 + 32)] = 2;
  (*(v8 + 32))(v6, v7, v8);
  sub_1D7A2F33C(v6, type metadata accessor for TipViewImpression);
}

Swift::Void __swiftcall TipViewController.sceneDidEnterBackground()()
{
  v1 = type metadata accessor for TipViewImpression(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 24);
  v7 = *(v0 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler), v6);
  v8 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
  swift_beginAccess();
  v9 = sub_1D7D2833C();
  (*(*(v9 - 8) + 16))(v5, v0 + v8, v9);
  sub_1D7D2832C();
  v5[*(v2 + 32)] = 2;
  (*(v7 + 8))(v0, v5, v6, v7);
  sub_1D7A2F33C(v5, type metadata accessor for TipViewImpression);
}

uint64_t sub_1D7A2ED60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447F0](ObjectType, a2);
}

uint64_t sub_1D7A2ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447E8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A2EDF4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44808](ObjectType, a2);
}

uint64_t sub_1D7A2EE30()
{
  v1 = type metadata accessor for TipViewImpression(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 24);
  v7 = *(v0 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17TipViewController_eventHandler), v6);
  v8 = OBJC_IVAR____TtC12NewsArticles17TipViewController_startDate;
  swift_beginAccess();
  v9 = sub_1D7D2833C();
  (*(*(v9 - 8) + 16))(v5, v0 + v8, v9);
  sub_1D7D2832C();
  v5[*(v2 + 32)] = 2;
  (*(v7 + 8))(v0, v5, v6, v7);
  return sub_1D7A2F33C(v5, type metadata accessor for TipViewImpression);
}

uint64_t sub_1D7A2EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447F8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A2EFDC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447D0](ObjectType, a2);
}

uint64_t sub_1D7A2F018(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7A2F09C(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D7A2F09C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798F168(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7A2F104(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7A2F09C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7A2F244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7A2F2D4()
{
  result = qword_1EC9E2788;
  if (!qword_1EC9E2788)
  {
    sub_1D7992EFC(255, &qword_1EC9E2780, 0x1E69DCDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2788);
  }

  return result;
}

uint64_t sub_1D7A2F33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s12NewsArticles17TipViewControllerC07messagedE0_7didLoadySo012AMSUIMessagedE0_So06UIViewE0CXc_So16AMSDialogRequestCtF_0(uint64_t a1, void *a2)
{
  sub_1D7A2F09C(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3B4E0;
  swift_getObjectType();
  swift_getWitnessTable();
  sub_1D7D3194C();
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D79D6AE0();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v6 = [a2 description];
  v7 = sub_1D7D3034C();
  v9 = v8;

  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v7;
  *(v3 + 80) = v9;
  sub_1D7992EFC(0, &qword_1EE0BEC80, 0x1E69E9BF8);
  v10 = sub_1D7D312CC();
  v11 = sub_1D7D30C6C();
  sub_1D7D29AAC("Message view controller (%{public}@) loaded request : %{public}@", 64, 2, &dword_1D7987000, v10, v11, v3);
}

void _s12NewsArticles17TipViewControllerC07messagedE0_9didUpdateySo012AMSUIMessagedE0_So06UIViewE0CXc_So6CGSizeVtF_0(uint64_t a1, double a2, double a3)
{
  sub_1D7A2F09C(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4E0;
  swift_getObjectType();
  swift_getWitnessTable();
  sub_1D7D3194C();
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D79D6AE0();
  *(v5 + 64) = v7;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  type metadata accessor for CGSize(0);
  sub_1D7D315DC();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_1D7992EFC(0, &qword_1EE0BEC80, 0x1E69E9BF8);
  v8 = sub_1D7D312CC();
  v9 = sub_1D7D30C6C();
  sub_1D7D29AAC("Message view controller (%{public}@) updated to new size : %{public}@", 69, 2, &dword_1D7987000, v8, v9, v5, *&a2, *&a3);
}

void _s12NewsArticles17TipViewControllerC07messagedE0_16didFailWithErrorySo012AMSUIMessagedE0_So06UIViewE0CXc_s0J0_pSgtF_0(uint64_t a1, void *a2)
{
  v3 = sub_1D7D30C4C();
  sub_1D7A2F09C(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4E0;
  swift_getObjectType();
  swift_getWitnessTable();
  sub_1D7D3194C();
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D79D6AE0();
  *(v4 + 64) = v6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  v7 = a2;
  sub_1D7A2F09C(0, &qword_1EE0BE7D8, &qword_1EE0BE7E0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v8 = sub_1D7D303AC();
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  sub_1D7992EFC(0, &qword_1EE0BEC80, 0x1E69E9BF8);
  v10 = sub_1D7D312CC();
  sub_1D7D29AAC("Message view controller (%{public}@) presentation failed : %{public}@", 69, 2, &dword_1D7987000, v10, v3, v4);
}

void _s12NewsArticles17TipViewControllerC07messagedE10DidDismissyySo012AMSUIMessagedE0_So06UIViewE0CXcF_0(uint64_t a1)
{
  sub_1D7A2F09C(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7D3B4D0;
  swift_getObjectType();
  swift_getWitnessTable();
  sub_1D7D3194C();
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1D79D6AE0();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1D7992EFC(0, &qword_1EE0BEC80, 0x1E69E9BF8);
  v2 = sub_1D7D312CC();
  v3 = sub_1D7D30C6C();
  sub_1D7D29AAC("Message view controller was dismissed : %{public}@", 50, 2, &dword_1D7987000, v2, v3, v1);
}

uint64_t sub_1D7A2F9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D29AFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D29ACC();
  v9 = sub_1D7D29ADC();
  v10 = sub_1D7D30C6C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = a1;
    v21 = v12;
    *v11 = 136315394;
    sub_1D7A2F244(0, &unk_1EE0BEC70, type metadata accessor for CGRect, MEMORY[0x1E69E6708]);
    v13 = sub_1D7D303AC();
    v15 = sub_1D7B06D4C(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v20 = a2;
    sub_1D7A2FE10(0);
    v16 = sub_1D7D303AC();
    v18 = sub_1D7B06D4C(v16, v17, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1D7987000, v9, v10, "Will reposition popover to rect=%s, in view=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7102E0](v12, -1, -1);
    MEMORY[0x1DA7102E0](v11, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D7A2FBDC()
{
  result = qword_1EC9E2798;
  if (!qword_1EC9E2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2798);
  }

  return result;
}

uint64_t sub_1D7A2FC58(uint64_t a1)
{
  result = sub_1D7D2833C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7A2FD0C(uint64_t a1)
{
  result = type metadata accessor for TipViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D7D2833C();
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

void sub_1D7A2FE10(uint64_t a1)
{
  if (!qword_1EE0BF4C8)
  {
    sub_1D7992EFC(255, &unk_1EE0BED20, 0x1E69DD250);
    v1 = sub_1D7D3025C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF4C8);
    }
  }
}

uint64_t type metadata accessor for BottomPaletteArticleViewerFeatureScrollAnimator(uint64_t a1)
{
  result = qword_1EC9E28C0;
  if (!qword_1EC9E28C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A2FF00(uint64_t a1)
{
  sub_1D798C468(319, &qword_1EE0C6400, &protocol descriptor for ArticleViewerRendererType, 0);
  if (v1 <= 0x3F)
  {
    sub_1D798C468(319, &unk_1EE0C7088, &protocol descriptor for ArticleViewerStylerType, 1);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ArticleViewerPage(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Direction(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D7A2FFF4(void *a1)
{
  v2 = v1;
  v4 = sub_1D7D2AC3C();
  v91 = *(v4 - 8);
  v92 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v88 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v89 = &v83 - v9;
  sub_1D79DA564(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v90 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v83 - v15;
  v17 = sub_1D7D2ACCC();
  v97 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v98 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v99 = &v83 - v22;
  v23 = sub_1D7D2AD0C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v83 - v31;
  v93 = a1;
  v33 = [a1 splitViewController];
  v96 = v23;
  v94 = v24;
  if (v33)
  {
    v34 = v33;
    sub_1D7D30F4C();

    (*(v24 + 32))(v32, v27, v23);
  }

  else
  {
    (*(v24 + 104))(v32, *MEMORY[0x1E69D7C90], v23);
  }

  v36 = *(v2 + 5);
  v35 = *(v2 + 6);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v36);
  v37 = type metadata accessor for BottomPaletteArticleViewerFeatureScrollAnimator(0);
  (*(v35 + 8))(&v2[v37[6]], v32, v36, v35);
  v38 = *(v2 + 5);
  v39 = *(v2 + 6);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v38);
  v40 = *(v39 + 8);
  v41 = &v2[v37[7]];
  v42 = v98;
  v95 = v32;
  v40(v41, v32, v38, v39);
  v43 = *&v2[v37[8]];
  v44 = *&v2[v37[9]];
  v45 = v97;
  v46 = v16;
  v47 = v42;
  v48 = v17;
  (*(v97 + 16))(v16, v47, v17);
  (*(v45 + 56))(v16, 0, 1, v17);
  v49 = *&v2[v37[10]];
  v50 = *&v2[v37[11]];
  v51 = [v93 navigationController];
  v52 = v94;
  if (v51)
  {
    v53 = v51;
    v54 = [v51 navigationBar];

    if (v54)
    {
      v55 = sub_1D7D30D8C();
      v56 = [v55 _bottomPalette];

      if (v56)
      {
        v57 = [v56 contentView];

        if (v57)
        {
          type metadata accessor for ArticleNavigationBarPaletteContent();
          v58 = swift_dynamicCastClass();
          if (v58)
          {
            v59 = v58;
            v85 = v57;
            v86 = v54;
            v84 = v44;
            v60 = v89;
            sub_1D7D2AC8C();
            v87 = sub_1D7D2ABDC();
            v61 = v92;
            v62 = *(v91 + 8);
            v62(v60, v92);
            v63 = v90;
            sub_1D7A3081C(v46, v90);
            v64 = v97;
            if ((*(v97 + 48))(v63, 1, v48) == 1)
            {
              sub_1D7A307C0(v63);
              v93 = 0;
            }

            else
            {
              v66 = v59;
              v67 = v88;
              sub_1D7D2AC8C();
              (*(v64 + 8))(v63, v48);
              v93 = sub_1D7D2ABDC();
              v68 = v67;
              v59 = v66;
              v62(v68, v61);
            }

            v69 = v84;
            v54 = v86;
            v70 = v87;
            if (v87)
            {
              v71 = sub_1D7D3114C();
              if (v71)
              {
                v72 = v71;
                v73 = [objc_opt_self() ts:v71 visualEffectsForBarWithBackgroundColor:?];
                if (!v73)
                {
                  sub_1D7992EFC(0, &unk_1EC9E28D8, 0x1E69DD290);
                  sub_1D7D3063C();
                  v73 = sub_1D7D3062C();
                  v70 = v87;
                }

                [v54 setBackgroundEffects_];
              }
            }

            v74 = v46;
            v75 = [v59 subviews];
            sub_1D7992EFC(0, &unk_1EE0BED20, 0x1E69DD250);
            sub_1D7D3063C();

            sub_1D798C468(0, &qword_1EC9E28D0, &protocol descriptor for ArticleNavigationBarPaletteContentSubview, 0);
            sub_1D7D3067C();

            v76 = v100;
            if (v100)
            {
              v77 = v101;
              v78 = v43 != 0.0 && v43 != 1.0;
              ObjectType = swift_getObjectType();
              (*(v77 + 16))(v78, ObjectType, v77);
            }

            v80 = 1.0 - v43;
            if (v69 != 2)
            {
              v80 = -(1.0 - v43);
            }

            sub_1D7B19BBC(v80 * v50, v49);
            v65 = v85;
            v46 = v74;
          }

          else
          {
            v65 = v54;
            v54 = v57;
          }

          v45 = v97;
        }
      }
    }
  }

  sub_1D7A307C0(v46);
  v81 = *(v45 + 8);
  v81(v98, v48);
  v81(v99, v48);
  return (*(v52 + 8))(v95, v96);
}

uint64_t sub_1D7A307C0(uint64_t a1)
{
  sub_1D79DA564(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A3081C(uint64_t a1, uint64_t a2)
{
  sub_1D79DA564(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7A30880(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) configuration];
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      v5 = [v4 articleModalBrandBarConfig];
      swift_unknownObjectRelease();
      v6 = v5;
      v7 = [v6 messageTitle];
      v24 = sub_1D7D3034C();
      v9 = v8;

      v10 = [v6 messageBody];
      v11 = sub_1D7D3034C();
      v13 = v12;

      v14 = [v6 ctaTitle];
      v15 = sub_1D7D3034C();
      v17 = v16;

      v18 = [v6 ctaUrl];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1D7D3034C();
        v22 = v21;
      }

      else
      {

        v20 = 0;
        v22 = 0;
      }

      v23 = v24;
    }

    else
    {
      swift_unknownObjectRelease();
      v23 = 0;
      v9 = 0;
      v11 = 0;
      v13 = 0;
      v15 = 0;
      v17 = 0;
      v20 = 0;
      v22 = 0;
    }

    *a1 = v23;
    a1[1] = v9;
    a1[2] = v11;
    a1[3] = v13;
    a1[4] = v15;
    a1[5] = v17;
    a1[6] = v20;
    a1[7] = v22;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D7A30A38()
{
  v1 = v0;
  v2 = sub_1D7D2833C();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v47 - v11;
  v12 = sub_1D7D2960C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9DFD80 != -1)
  {
    swift_once();
  }

  v17 = sub_1D7D29AFC();
  __swift_project_value_buffer(v17, qword_1ECA0BB18);
  v18 = sub_1D7D29ADC();
  v19 = sub_1D7D30C6C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D7987000, v18, v19, "BrandBarConfigManager - checking eligibility for brand bar display", v20, 2u);
    MEMORY[0x1DA7102E0](v20, -1, -1);
  }

  swift_getObjectType();
  sub_1D7D2989C();
  v21 = sub_1D7D295FC();
  (*(v13 + 8))(v16, v12);
  if ((v21 & 1) == 0)
  {
    v24 = sub_1D7D29ADC();
    v34 = sub_1D7D30C6C();
    if (!os_log_type_enabled(v24, v34))
    {
      goto LABEL_21;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "BrandBarConfigManager - not eligible for brand bar display due to not being launched from widget";
    goto LABEL_20;
  }

  result = [*(v1 + 16) configuration];
  if (result)
  {
    v23 = result;
    if ([result respondsToSelector_])
    {
      v24 = [v23 articleModalBrandBarConfig];
      swift_unknownObjectRelease();
      if ([v24 enabled])
      {
        if (qword_1EC9DFF10 != -1)
        {
          swift_once();
        }

        v25 = qword_1ECA0BCA8;
        sub_1D7A312D8(&qword_1EC9E28E8, &unk_1D7D41400);
        sub_1D7D285AC();
        v26 = v52;
        v27 = &selRef_addTarget_action_;
        if (v26 < [v24 campaignVersion])
        {
          v47 = v25;
          v28 = v24;
          v29 = sub_1D7D29ADC();
          v30 = sub_1D7D30C6C();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = v28;
            v32 = swift_slowAlloc();
            *v32 = 67109120;
            *(v32 + 4) = [v31 campaignVersion];

            _os_log_impl(&dword_1D7987000, v29, v30, "BrandBarConfigManager - the current campaign version has updated to %d.\nResetting tracked brand bar data before proceeding with eligibility check.", v32, 8u);
            v33 = v32;
            v28 = v31;
            v27 = &selRef_addTarget_action_;
            MEMORY[0x1DA7102E0](v33, -1, -1);
          }

          else
          {

            v29 = v28;
          }

          v52 = [v28 v27[75]];
          sub_1D7A312D8(qword_1EC9E28F0, &unk_1D7D41440);
          sub_1D7D2872C();
          if (qword_1EC9DFE38 != -1)
          {
            swift_once();
          }

          sub_1D7D2873C();
        }

        if (qword_1EC9DFF00 != -1)
        {
          swift_once();
        }

        sub_1D7D285AC();
        v38 = v52;
        if (v38 < [v24 maxCount])
        {
          if (qword_1EC9DFF08 != -1)
          {
            swift_once();
          }

          v39 = v48;
          sub_1D7D285AC();
          sub_1D7D2832C();
          [v24 quiescenceInterval];
          v40 = v49;
          sub_1D7D282EC();
          v41 = v51;
          v42 = *(v50 + 8);
          v42(v5, v51);
          v43 = sub_1D7D282DC();
          v42(v40, v41);
          v42(v39, v41);
          if (v43)
          {
            v37 = 1;
            goto LABEL_22;
          }
        }

        v44 = sub_1D7D29ADC();
        v45 = sub_1D7D30C6C();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1D7987000, v44, v45, "BrandBarConfigManager - not eligible for brand bar display due to exceeded max display count or recent prior display", v46, 2u);
          MEMORY[0x1DA7102E0](v46, -1, -1);
        }

LABEL_21:
        v37 = 0;
LABEL_22:

        return v37;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v24 = sub_1D7D29ADC();
    v34 = sub_1D7D30C6C();
    if (!os_log_type_enabled(v24, v34))
    {
      goto LABEL_21;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "BrandBarConfigConfigManager - not eligible for brand bar display due to missing or disabled config";
LABEL_20:
    _os_log_impl(&dword_1D7987000, v24, v34, v36, v35, 2u);
    MEMORY[0x1DA7102E0](v35, -1, -1);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A311B4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A312D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BrandBarConfigManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D7A31328@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A35E7C(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleModel, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7994174(0);
    result = sub_1D7A35EE0(v6 + *(v7 + 48), type metadata accessor for ArticleNavigationAction);
    v9 = *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadedArticle);
    if (v9)
    {
      v10 = v9;
      result = [v10 articleID];
      if (result)
      {
        v11 = result;
        v12 = sub_1D7D3034C();
        v14 = v13;

        result = [v10 headline];
        if (result)
        {
          v15 = result;

          *a1 = v12;
          a1[1] = v14;
          a1[2] = v15;
          a1[3] = 0;
          a1[4] = 0;
          a1[5] = 0;
          a1[6] = v12;
          a1[7] = v14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      *(a1 + 2) = 0u;
      *(a1 + 3) = 0u;
      *a1 = 0u;
      *(a1 + 1) = 0u;
    }
  }

  else
  {
    v16 = v6[1];
    v21 = *v6;
    v22 = v16;
    v17 = v6[3];
    v23 = v6[2];
    v24 = v17;
    sub_1D7996048(0);
    result = sub_1D7A35EE0(v6 + *(v18 + 48), type metadata accessor for ArticleNavigationAction);
    v19 = v22;
    *a1 = v21;
    *(a1 + 1) = v19;
    v20 = v24;
    *(a1 + 2) = v23;
    *(a1 + 3) = v20;
  }

  return result;
}

uint64_t sub_1D7A314E8()
{
  v1 = v0;
  v2 = sub_1D7D2918C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CACurrentMediaTime();
  if (qword_1EE0CA2C8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE0CA2D0;
  sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  v20 = xmmword_1D7D3B4D0;
  *(v9 + 16) = xmmword_1D7D3B4D0;
  v11 = *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
  v10 = *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D79D6AE0();
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;

  v12 = sub_1D7D30C6C();
  sub_1D7D29AAC("Article did start preparing for load, loggingID=%{public}@", 58, 2, &dword_1D7987000, v8, v12, v9);

  sub_1D7B229E8(&unk_1F529A528);
  v13 = MEMORY[0x1E69D6810];
  sub_1D7A34F18(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = v20;
  sub_1D7D2917C();
  v23 = v14;
  sub_1D7A35F40(&qword_1EE0C0380, MEMORY[0x1E69D6810], MEMORY[0x1E69D6818]);
  sub_1D7A34F18(0, &unk_1EE0BF2C0, v13, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  sub_1D7D313AC();
  swift_allocObject();
  swift_weakInit();

  sub_1D7D28C7C();

  (*(v3 + 8))(v6, v2);

  v22 = 1;
  sub_1D7A34F84(0);
  swift_allocObject();

  sub_1D7D2921C();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v7;
  sub_1D7D2922C();

  sub_1D7D28D5C();

  v21 = 3;
  swift_allocObject();

  sub_1D7D2921C();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v7;
  sub_1D7D2922C();

  sub_1D7D28D5C();
}

uint64_t sub_1D7A319D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadedArticle))
    {

      sub_1D7D28D6C();
    }
  }

  return result;
}

uint64_t sub_1D7A31A78(double a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D7D2C82C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2C83C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v26 = v5;
    if (qword_1EE0CA2C8 != -1)
    {
      swift_once();
    }

    v16 = qword_1EE0CA2D0;
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7D3B4E0;
    v19 = *(v15 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
    v18 = *(v15 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1D79D6AE0();
    *(v17 + 32) = v19;
    *(v17 + 40) = v18;

    v20 = CACurrentMediaTime();
    v21 = MEMORY[0x1E69E6438];
    *(v17 + 96) = MEMORY[0x1E69E63B0];
    *(v17 + 104) = v21;
    *(v17 + 72) = v20 - a1;
    v22 = sub_1D7D30C6C();
    sub_1D7D29AAC("Article did enter loading state, loggingID=%{public}@, duration=%f", 66, 2, &dword_1D7987000, v16, v22, v17);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v15 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadingIndicatorProvider + 24);
      v24 = *(v15 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadingIndicatorProvider + 32);
      __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadingIndicatorProvider), v23);
      (*(v24 + 8))(v23, v24);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = v26;
        (*(v26 + 104))(v8, *MEMORY[0x1E69D8848], v4);
        sub_1D7D2A56C();

        swift_unknownObjectRelease();
        (*(v25 + 8))(v8, v4);
        (*(v10 + 8))(v13, v9);
        return swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        return (*(v10 + 8))(v13, v9);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7A31E18(unsigned __int8 *a1, uint64_t a2, double a3)
{
  v5 = sub_1D7D29B8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2C82C();
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2C83C();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v66 - v24;
  v26 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v28 = result;
  if (v26 == 3)
  {
    if (qword_1EE0CA2C8 != -1)
    {
      swift_once();
    }

    v40 = qword_1EE0CA2D0;
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D7D3B4E0;
    v42 = *(v28 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
    v43 = *(v28 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1D79D6AE0();
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;

    v44 = CACurrentMediaTime();
    v45 = MEMORY[0x1E69E6438];
    *(v41 + 96) = MEMORY[0x1E69E63B0];
    *(v41 + 104) = v45;
    *(v41 + 72) = v44 - a3;
    v46 = sub_1D7D30C6C();
    sub_1D7D29AAC("Article did enter error state, loggingID=%{public}@, duration=%f", 64, 2, &dword_1D7987000, v40, v46, v41);

    sub_1D7A32644(v28);
    sub_1D7A3506C(0);
    v48 = &v21[*(v47 + 48)];
    v49 = *(v47 + 64);
    (*(v6 + 16))(v21, v9, v5);
    v50 = sub_1D7D29CAC();
    v51 = MEMORY[0x1E69D75D0];
    v48[3] = v50;
    v48[4] = v51;
    __swift_allocate_boxed_opaque_existential_1(v48);
    sub_1D7D29C9C();
    v52 = *MEMORY[0x1E69D76D0];
    v53 = sub_1D7D29F1C();
    (*(*(v53 - 8) + 104))(&v21[v49], v52, v53);
    v55 = v69;
    v54 = v70;
    (*(v69 + 104))(v21, *MEMORY[0x1E69D8840], v70);
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v57 = *MEMORY[0x1E69D8848];
        v58 = v6;
        v59 = v67;
        v60 = v68;
        v61 = *(v67 + 104);
        v66 = Strong;
        v61(v13, v57, v68);
        sub_1D7D2A56C();
        v55 = v69;

        swift_unknownObjectRelease();
        (*(v59 + 8))(v13, v60);
        (*(v58 + 8))(v9, v5);
        v54 = v70;
        swift_unknownObjectRelease();
        return (*(v55 + 8))(v21, v54);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    return (*(v55 + 8))(v21, v54);
  }

  if (v26 == 2)
  {
    if (qword_1EE0CA2C8 != -1)
    {
      swift_once();
    }

    v29 = qword_1EE0CA2D0;
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D7D3B4E0;
    v31 = *(v28 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
    v32 = *(v28 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1D79D6AE0();
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;

    v33 = CACurrentMediaTime();
    v34 = MEMORY[0x1E69E6438];
    *(v30 + 96) = MEMORY[0x1E69E63B0];
    *(v30 + 104) = v34;
    *(v30 + 72) = v33 - a3;
    v35 = sub_1D7D30C6C();
    sub_1D7D29AAC("Article did enter loaded state, loggingID=%{public}@, duration=%f", 65, 2, &dword_1D7987000, v29, v35, v30);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = v69;
      v36 = v70;
      (*(v69 + 104))(v25, *MEMORY[0x1E69D8828], v70);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = v67;
        v38 = v68;
        (*(v67 + 104))(v13, *MEMORY[0x1E69D8848], v68);
        sub_1D7D2A56C();

        swift_unknownObjectRelease();
        (*(v39 + 8))(v13, v38);
        (*(v37 + 8))(v25, v36);
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return (*(v37 + 8))(v25, v36);
    }
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v63 = v69;
  v62 = v70;
  (*(v69 + 104))(v17, *MEMORY[0x1E69D8828], v70);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v65 = v67;
    v64 = v68;
    (*(v67 + 104))(v13, *MEMORY[0x1E69D8848], v68);
    sub_1D7D2A56C();

    swift_unknownObjectRelease();
    (*(v65 + 8))(v13, v64);
    (*(v63 + 8))(v17, v62);
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return (*(v63 + 8))(v17, v62);
}

void sub_1D7A32644(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_errorMessageFactory) errorMessageForArticleView];
  if (v1)
  {
    v5 = v1;
    v2 = [v1 title];
    sub_1D7D3034C();

    v3 = [v5 subtitle];
    sub_1D7D3034C();

    sub_1D7D29B7C();
  }

  else
  {
    if (qword_1EE0BD788 != -1)
    {
      swift_once();
    }

    v4 = sub_1D7D2EFAC();
    __swift_project_value_buffer(v4, qword_1EE0BD790);
    sub_1D7D2EF8C();
    sub_1D7D2EF7C();

    sub_1D7D29B7C();
  }
}

void sub_1D7A327B8(void *a1)
{
  v2 = v1;
  v4 = sub_1D7D2CBCC();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2CB7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadedArticle);
  *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadedArticle) = a1;

  LOBYTE(v48[0]) = 1;
  v13 = a1;
  sub_1D7D28C6C();
  v14 = [v13 headline];
  if (!v14)
  {
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  if ([v14 respondsToSelector_])
  {
    v16 = [v15 isLocalDraft];
    swift_unknownObjectRelease();
    if (v16)
    {
LABEL_8:
      v19 = [v13 headline];
      if (!v19)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v20 = [v19 sourceChannelID];
      swift_unknownObjectRelease();
      if (v20)
      {
        v43 = v8;
        v44 = v7;
        v42 = sub_1D7D3034C();
        v22 = v21;

        sub_1D799CC84(v2 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_previewManager, v48);
        v23 = v49;
        v24 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        v25 = [v13 articleID];
        if (!v25)
        {
LABEL_28:
          __break(1u);
          return;
        }

        v26 = v25;
        v27 = sub_1D7D3034C();
        v29 = v28;

        (*(v24 + 8))(v2, &off_1F529EF58, v27, v29, v42, v22, v23, v24);

        __swift_destroy_boxed_opaque_existential_1(v48);
        v8 = v43;
        v7 = v44;
      }

      goto LABEL_12;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v17 = [v13 headline];
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = [v17 isDraft];
  swift_unknownObjectRelease();
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_12:
  v30 = (v2 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_contextBuilder);
  sub_1D799CC84(v2 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_contextBuilder, v48);
  __swift_project_boxed_opaque_existential_1(v48, v49);
  if (![v13 headline])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1D7D2CB6C();
  sub_1D7A35F40(&qword_1EE0BFBF8, MEMORY[0x1E69B3E90], MEMORY[0x1E69B3E88]);
  sub_1D7D2CFDC();
  (*(v8 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v31 = [v13 headline];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = [v31 sourceChannel];
  swift_unknownObjectRelease();
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    swift_unknownObjectRetain();
    v33 = v45;
    sub_1D7D2CBBC();
    sub_1D7A35F40(qword_1EE0BFBD0, MEMORY[0x1E69B3EF8], MEMORY[0x1E69B3EF0]);
    v34 = v47;
    sub_1D7D2CFDC();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v33, v34);
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articlePurchaseOffersProvider), *(v2 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articlePurchaseOffersProvider + 24));
  v35 = sub_1D7D298FC();
  if (v35)
  {
    v36 = v35;
    swift_beginAccess();
    if (*(v2 + 56))
    {
      sub_1D799CC84(v2 + 32, v48);
      v37 = v49;
      v38 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      (*(v38 + 144))(v36, v37, v38);

      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_1D799CC84(v2 + 32, v48);
    v39 = v49;
    v40 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(v40 + 104))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }
}

uint64_t sub_1D7A32D94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1D7A31328(&v16);
    v5 = v16;
    v6 = v17;
    v21 = v18;
    v22 = v19;
    v23 = v20;
    if (v17)
    {
      swift_beginAccess();
      if (*(v4 + 56))
      {
        sub_1D799CC84(v4 + 32, v13);
        v7 = v14;
        v8 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        v9[0] = v5;
        v9[1] = v6;
        v10 = v21;
        v11 = v22;
        v12 = v23;
        (*(v8 + 88))(v9, a2, v7, v8);

        sub_1D7A35EE0(&v16, sub_1D7A35D50);
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }

      sub_1D7A35EE0(&v16, sub_1D7A35D50);
    }
  }

  return result;
}

uint64_t sub_1D7A32EE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7A32F48(a2);
  }

  return result;
}

void sub_1D7A32F48(uint64_t a1)
{
  sub_1D7A31328(&v17);
  v4 = v17;
  v3 = v18;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  if (v18)
  {
    swift_beginAccess();
    if (*(v1 + 56))
    {
      sub_1D799CC84(v1 + 32, v14);
      v5 = v15;
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v10[0] = v4;
      v10[1] = v3;
      v11 = v22;
      v12 = v23;
      v13 = v24;
      (*(v6 + 32))(a1, v10, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    LOBYTE(v10[0]) = 2;
    sub_1D7D28C6C();
    sub_1D7A35EE0(&v17, sub_1D7A35D50);
  }

  else
  {
    v7 = sub_1D7D30C5C();
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7D3B4D0;
    type metadata accessor for ArticleSession(0);
    sub_1D7D315DC();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D79D6AE0();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1D7992EFC(0, &qword_1EE0BEC80, 0x1E69E9BF8);
    v9 = sub_1D7D312CC();
    sub_1D7D29AAC("Attemping to start an article session without an article!, session=%@", 69, 2, &dword_1D7987000, v9, v7, v8);
  }
}

uint64_t sub_1D7A33160(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    if (*(v2 + 56))
    {
      sub_1D799CC84(v2 + 32, v5);

      v3 = v6;
      v4 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v4 + 48))(v3, v4);
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7A33228(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    if (*(v2 + 56))
    {
      sub_1D799CC84(v2 + 32, v5);

      v3 = v6;
      v4 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v4 + 40))(v3, v4);
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7A332F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1D7A31328(&v16);
    v5 = v16;
    v6 = v17;
    v21 = v18;
    v22 = v19;
    v23 = v20;
    if (v17)
    {
      swift_beginAccess();
      if (*(v4 + 56))
      {
        sub_1D799CC84(v4 + 32, v13);
        v7 = v14;
        v8 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        v9[0] = v5;
        v9[1] = v6;
        v10 = v21;
        v11 = v22;
        v12 = v23;
        (*(v8 + 64))(a2, v9, v7, v8);

        sub_1D7A35EE0(&v16, sub_1D7A35D50);
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }

      sub_1D7A35EE0(&v16, sub_1D7A35D50);
    }
  }

  return result;
}

uint64_t sub_1D7A33444(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1D7A31328(&v16);
    v5 = v16;
    v6 = v17;
    v21 = v18;
    v22 = v19;
    v23 = v20;
    if (v17)
    {
      swift_beginAccess();
      if (*(v4 + 56))
      {
        sub_1D799CC84(v4 + 32, v13);
        v7 = v14;
        v8 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        v9[0] = v5;
        v9[1] = v6;
        v10 = v21;
        v11 = v22;
        v12 = v23;
        (*(v8 + 72))(a2, v9, v7, v8);

        sub_1D7A35EE0(&v16, sub_1D7A35D50);
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }

      sub_1D7A35EE0(&v16, sub_1D7A35D50);
    }
  }

  return result;
}

uint64_t sub_1D7A33598(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE0CA2C8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE0CA2D0;
  sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4E0;
  v6 = *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
  v7 = *(v2 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D79D6AE0();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  swift_getErrorValue();

  v10 = sub_1D7D31A3C();
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  v12 = sub_1D7D30C6C();
  sub_1D7D29AAC("Article did fail loading, loggingID=%{public}@, error=%{public}@", 64, 2, &dword_1D7987000, v4, v12, v5);

  swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_1D799CC84(v2 + 32, v16);
    v13 = v17;
    v14 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v14 + 112))(a1, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  LOBYTE(v16[0]) = 3;

  sub_1D7D28D6C();
}

uint64_t sub_1D7A337A0()
{
  v1 = v0;
  v2 = sub_1D7D29A8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A31328(v39);
  if (v39[1])
  {
    v7 = v39[2];
    swift_unknownObjectRetain();
    sub_1D7A35EE0(v39, sub_1D7A35D50);
    if (qword_1EE0CA2C8 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE0CA2D0;
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v36 = v9;
    v10 = swift_allocObject();
    v35 = xmmword_1D7D3B4E0;
    *(v10 + 16) = xmmword_1D7D3B4E0;
    v11 = *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
    v12 = *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
    v13 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1D79D6AE0();
    *(v10 + 64) = v14;
    v34 = v11;
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;

    v15 = [v7 articleID];
    v16 = sub_1D7D3034C();
    v18 = v17;

    *(v10 + 96) = v13;
    *(v10 + 104) = v14;
    *(v10 + 72) = v16;
    *(v10 + 80) = v18;
    v19 = sub_1D7D30C6C();
    v37 = v8;
    sub_1D7D29AAC("Article did start retrieving paywall, loggingID=%{public}@, articleID=%{public}@", 80, 2, &dword_1D7987000, v8, v19, v10);

    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v7;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_paywallTypeProvider), *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_paywallTypeProvider + 24));
    swift_unknownObjectRetain();

    if ((sub_1D7D2955C() & 1) != 0 || ([v7 respondsToSelector_] & 1) != 0 && objc_msgSend(v7, sel_role) == 3)
    {

      v22 = swift_allocObject();
      *(v22 + 16) = v35;
      v23 = MEMORY[0x1E69E6158];
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = v14;
      *(v22 + 32) = v34;
      *(v22 + 40) = v12;

      v24 = [v7 articleID];
      v25 = sub_1D7D3034C();
      v27 = v26;

      *(v22 + 96) = v23;
      *(v22 + 104) = v14;
      *(v22 + 72) = v25;
      *(v22 + 80) = v27;
      v28 = sub_1D7D30C6C();
      sub_1D7D29AAC("Article did start refreshing offers, loggingID=%{public}@, articleID=%{public}@", 79, 2, &dword_1D7987000, v37, v28, v22);

      v38 = 1;

      sub_1D7D28D6C();

      sub_1D7D299EC();
      sub_1D7D294BC();
      sub_1D7992EFC(0, &qword_1EE0BEFF0, 0x1E69E9610);
      v29 = sub_1D7D30E1C();
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1D7A35DA0;
      *(v30 + 24) = v21;

      sub_1D7D2941C();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7A33D18(v20, v7);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      (*(v3 + 104))(v6, *MEMORY[0x1E69B6C58], v2);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_1D7A3521C(v6, Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      (*(v3 + 8))(v6, v2);
    }

    v38 = 2;

    sub_1D7D28D6C();
  }
}

uint64_t sub_1D7A33D18(uint64_t a1, void *a2)
{
  v3 = sub_1D7D29A8C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v56 = &v53 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v55 = a2;
    sub_1D799CC84(result + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_paywallFactory, v57);
    __swift_project_boxed_opaque_existential_1(v57, v58);
    sub_1D7A31328(v60);
    if (v60[1])
    {
      swift_unknownObjectRetain();
      sub_1D7A35EE0(v60, sub_1D7A35D50);
    }

    v13 = v56;
    sub_1D7D2970C();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v57);
    (*(v4 + 16))(v7, v13, v3);
    v14 = (*(v4 + 88))(v7, v3);
    if (v14 == *MEMORY[0x1E69B6C50])
    {
      (*(v4 + 96))(v7, v3);
      if (qword_1EE0CA2C8 != -1)
      {
        swift_once();
      }

      v54 = qword_1EE0CA2D0;
      sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D7D3B4E0;
      v17 = *(v12 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
      v16 = *(v12 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
      v18 = MEMORY[0x1E69E6158];
      *(v15 + 56) = MEMORY[0x1E69E6158];
      v19 = sub_1D79D6AE0();
      *(v15 + 64) = v19;
      *(v15 + 32) = v17;
      *(v15 + 40) = v16;

      v20 = [v55 articleID];
      v21 = sub_1D7D3034C();
      v23 = v22;

      *(v15 + 96) = v18;
      *(v15 + 104) = v19;
      *(v15 + 72) = v21;
      *(v15 + 80) = v23;
      v24 = sub_1D7D30C6C();
      sub_1D7D29AAC("Article did create hard paywall, loggingID=%{public}@, articleID=%{public}@", 75, 2, &dword_1D7987000, v54, v24, v15);

      v25 = swift_allocObject();
      swift_weakInit();

      sub_1D79E75B0(sub_1D7A35DF4, v25);

      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else if (v14 == *MEMORY[0x1E69B6C60])
    {
      (*(v4 + 8))(v7, v3);
      if (qword_1EE0CA2C8 != -1)
      {
        swift_once();
      }

      v26 = qword_1EE0CA2D0;
      sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D7D3B4E0;
      v29 = *(v12 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
      v28 = *(v12 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
      v30 = MEMORY[0x1E69E6158];
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v31 = sub_1D79D6AE0();
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
      *(v27 + 40) = v28;

      v32 = [v55 articleID];
      v33 = sub_1D7D3034C();
      v35 = v34;

      *(v27 + 96) = v30;
      *(v27 + 104) = v31;
      *(v27 + 72) = v33;
      *(v27 + 80) = v35;
      v36 = sub_1D7D30C6C();
      sub_1D7D29AAC("Article did create soft paywall, loggingID=%{public}@, articleID=%{public}@", 75, 2, &dword_1D7987000, v26, v36, v27);

      swift_beginAccess();
      if (*(v12 + 56))
      {
        sub_1D799CC84(v12 + 32, v57);
        v37 = v58;
        v38 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        (*(v38 + 128))(v37, v38);
        __swift_destroy_boxed_opaque_existential_1(v57);
      }
    }

    else if (v14 == *MEMORY[0x1E69B6C58])
    {
      if (qword_1EE0CA2C8 != -1)
      {
        swift_once();
      }

      v39 = qword_1EE0CA2D0;
      sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D7D3B4E0;
      v42 = *(v12 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier);
      v41 = *(v12 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loggingIdentifier + 8);
      v43 = MEMORY[0x1E69E6158];
      *(v40 + 56) = MEMORY[0x1E69E6158];
      v44 = sub_1D79D6AE0();
      *(v40 + 64) = v44;
      *(v40 + 32) = v42;
      *(v40 + 40) = v41;

      v45 = [v55 articleID];
      v46 = sub_1D7D3034C();
      v48 = v47;

      *(v40 + 96) = v43;
      *(v40 + 104) = v44;
      *(v40 + 72) = v46;
      *(v40 + 80) = v48;
      v49 = sub_1D7D30C6C();
      sub_1D7D29AAC("Article did not create paywall, loggingID=%{public}@, articleID=%{public}@", 74, 2, &dword_1D7987000, v39, v49, v40);
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D7A31328(v57);
      if (v57[1])
      {
        v50 = v57[2];
        swift_unknownObjectRetain();
        sub_1D7A35EE0(v57, sub_1D7A35D50);
        v51 = [v50 sourceChannel];
        swift_unknownObjectRelease();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_1D7A3521C(v56, Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    LOBYTE(v57[0]) = 2;

    sub_1D7D28D6C();

    return (*(v4 + 8))(v56, v3);
  }

  return result;
}

uint64_t sub_1D7A3451C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    if (*(v2 + 56))
    {
      sub_1D799CC84(v2 + 32, v5);

      v3 = v6;
      v4 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v4 + 120))(v3, v4);
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7A345E4(uint64_t a1)
{
  v1 = sub_1D7D2836C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleSession(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1D7A31328(&v29);
    v12 = v29;
    v13 = v30;
    v34 = v31;
    v35 = v32;
    v36 = v33;
    if (v30)
    {
      swift_beginAccess();
      if (*(v11 + 56))
      {
        sub_1D799CC84(v11 + 32, v26);
        v14 = v28;
        v21 = v27;
        v20 = __swift_project_boxed_opaque_existential_1(v26, v27);
        v22[0] = v12;
        v22[1] = v13;
        v23 = v34;
        v24 = v35;
        v25 = v36;
        v15 = *(v6 + 24);
        v16 = sub_1D7D2833C();
        (*(*(v16 - 8) + 56))(v9 + v15, 1, 1, v16);
        sub_1D7D2835C();
        v17 = sub_1D7D2834C();
        v19 = v18;
        (*(v2 + 8))(v5, v1);
        sub_1D7D2832C();
        *v9 = v17;
        v9[1] = v19;
        *(v9 + *(v6 + 28)) = 0;
        (*(v14 + 136))(v22, v9, v21, v14);

        sub_1D7A35EE0(v9, type metadata accessor for ArticleSession);
        sub_1D7A35EE0(&v29, sub_1D7A35D50);
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }

      sub_1D7A35EE0(&v29, sub_1D7A35D50);
    }
  }

  return result;
}

void sub_1D7A348AC(uint64_t a1)
{
  sub_1D7A34F18(0, &qword_1EC9E2908, MEMORY[0x1E69B6048], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = (&v16 - v6);
  v8 = *(v1 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadedArticle);
  if (v8 && (v9 = [v8 headline]) != 0)
  {
    v10 = v9;
    swift_getObjectType();
    sub_1D7D2C30C();
    *v7 = v10;
    v7[1] = a1;
    v11 = *MEMORY[0x1E69B6040];
    v12 = sub_1D7D2EEDC();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v7, v11, v12);
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_unknownObjectRetain();

    sub_1D7D2A7EC();
    sub_1D7A35190(v7);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_1D7D30C4C();
    sub_1D7992EFC(0, &qword_1EE0BEC80, 0x1E69E9BF8);
    v16 = sub_1D7D312CC();
    sub_1D7D29AAC("Unable to report end-of-article event because loaded article headline is unavailable.", 85, 2, &dword_1D7987000, v16, v14, MEMORY[0x1E69E7CC0]);
    v15 = v16;
  }
}

uint64_t sub_1D7A34B2C()
{
  sub_1D79C92AC(v0 + 16);
  sub_1D7A35108(v0 + 32);
  sub_1D7A35EE0(v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleModel, type metadata accessor for ArticleModel);

  v1 = OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleAccess;
  v2 = sub_1D7D295CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_readingListObserver));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_paywallFactory));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_previewManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_contextBuilder));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_paywallTypeProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articlePurchaseOffersProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_loadingIndicatorProvider));

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles17ArticleInteractor_articleReadingHistoryRecorder));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D7A34CC4()
{
  sub_1D7A34B2C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleInteractor(uint64_t a1)
{
  result = qword_1EE0C9B58;
  if (!qword_1EE0C9B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A34D70(uint64_t a1)
{
  result = type metadata accessor for ArticleModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D7D295CC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D7A34E94()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController) reload];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7A34F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7A34F84(uint64_t a1)
{
  if (!qword_1EE0C0360)
  {
    sub_1D7998E48();
    sub_1D7A35000();
    v1 = sub_1D7D2923C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0360);
    }
  }
}

unint64_t sub_1D7A35000()
{
  result = qword_1EE0C8EE0;
  if (!qword_1EE0C8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8EE0);
  }

  return result;
}

void sub_1D7A3506C(uint64_t a1)
{
  if (!qword_1EE0BB3A8)
  {
    sub_1D7D29B8C();
    sub_1D798F168(255, &qword_1EE0BB300, MEMORY[0x1E69D78A0]);
    sub_1D7D29F1C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE0BB3A8);
    }
  }
}

uint64_t sub_1D7A35108(uint64_t a1)
{
  sub_1D79A0340(0, &unk_1EE0C7820, &qword_1EE0C7830, &protocol descriptor for ArticleCoordinatorType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A35190(uint64_t a1)
{
  sub_1D7A34F18(0, &qword_1EC9E2908, MEMORY[0x1E69B6048], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7A3521C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D7D29A1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2918C();
  v92 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v91 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D29A8C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v89 = v15;
  v90 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v82 - v18);
  if (_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0())
  {
    return;
  }

  v20 = *(v13 + 16);
  v84 = v13 + 16;
  v83 = v20;
  v20(v19, a1, v12);
  v21 = (*(v13 + 88))(v19, v12);
  v22 = &unk_1EE0CA000;
  v23 = v21 == *MEMORY[0x1E69B6C50];
  v86 = a1;
  v85 = v12;
  v87 = v13;
  if (v23)
  {
    (*(v13 + 96))(v19, v12);
    sub_1D79E14FC(v19, v94);
    sub_1D7A35F40(&qword_1EE0C8098, type metadata accessor for ArticleViewController, &protocol conformance descriptor for ArticleViewController);
    v24 = sub_1D7D298EC();
    swift_allocObject();
    v25 = a2;
    v26 = sub_1D7D298DC();
    __swift_project_boxed_opaque_existential_1(v94, v94[3]);
    v93[3] = v24;
    v93[4] = MEMORY[0x1E69B6BF0];
    v93[0] = v26;

    v27 = sub_1D7D296DC();
    __swift_destroy_boxed_opaque_existential_1(v93);
    sub_1D7A35F40(&qword_1EE0C80A0, type metadata accessor for ArticleViewController, &protocol conformance descriptor for ArticleViewController);
    swift_unknownObjectRetain();
    sub_1D7D297AC();
    v28 = *&v25[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController];
    *&v25[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController] = v27;
    v29 = v27;

    v30 = v29;
    [v25 addChildViewController_];
    v31 = [v25 view];
    if (v31)
    {
      v32 = v31;
      v33 = [v30 view];
      v34 = &unk_1EE0CE000;
      if (v33)
      {
        v35 = v33;
        [v32 addSubview_];

        [v30 didMoveToParentViewController_];
        v36 = [v30 view];

        if (v36)
        {
          v37 = [v25 view];
          if (v37)
          {
            v38 = v37;
            [v37 bounds];
            v40 = v39;
            v42 = v41;
            v44 = v43;
            v46 = v45;

            [v36 setFrame_];
            v47 = [*&v25[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController] view];
            if (v47)
            {
              v48 = v47;
              [v47 setAccessibilityElementsHidden_];

              MEMORY[0x1EEE9AC00](v49, v50);
              *(&v82 - 2) = v30;
              type metadata accessor for CGSize(0);
              sub_1D7D294BC();
              sub_1D7992EFC(0, &qword_1EE0BEFF0, 0x1E69E9610);
              v51 = sub_1D7D30E1C();
              sub_1D7D2942C();

              __swift_destroy_boxed_opaque_existential_1(v94);
              v52 = v92;
              goto LABEL_21;
            }

LABEL_38:
            __break(1u);
            return;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v21 != *MEMORY[0x1E69B6C60])
  {
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v64 = qword_1EE0CAF10;
    v65 = sub_1D7D30C6C();
    v34 = &unk_1EE0CE000;
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1D7987000, v64, v65, "PaywallPreparationEventManager - Firing paywallLoaded event on default case.", v66, 2u);
      MEMORY[0x1DA7102E0](v66, -1, -1);
    }

    LOBYTE(v94[0]) = 2;
    sub_1D7D28C6C();
    (*(v87 + 8))(v19, v12);
    v52 = v92;
    v22 = &unk_1EE0CA000;
    goto LABEL_28;
  }

  (*(v13 + 96))(v19, v12);
  v53 = *v19;
  if (sub_1D7AFF284(*v19))
  {
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v54 = qword_1EE0CAF10;
    v55 = sub_1D7D30C6C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1D7987000, v54, v55, "PaywallPreparationEventManager - Firing paywallLoaded as soft paywall is found only at bottom.", v56, 2u);
      MEMORY[0x1DA7102E0](v56, -1, -1);
    }

    LOBYTE(v94[0]) = 2;
    sub_1D7D28C6C();
    v22 = &unk_1EE0CA000;
  }

  v57 = *(v53 + 16);
  v52 = v92;
  if (!v57)
  {

    v34 = &unk_1EE0CE000;
    goto LABEL_28;
  }

  ObjectType = v9;
  v60 = *(v5 + 16);
  v58 = v5 + 16;
  v59 = v60;
  v61 = (*(v58 + 64) + 32) & ~*(v58 + 64);
  v82 = v53;
  v62 = v53 + v61;
  v63 = *(v58 + 56);
  do
  {
    v59(v8, v62, v4);
    sub_1D7AFF5A8(v8);
    (*(v58 - 8))(v8, v4);
    v62 += v63;
    --v57;
  }

  while (v57);

  v9 = ObjectType;
  v52 = v92;
  v34 = &unk_1EE0CE000;
LABEL_21:
  v22 = &unk_1EE0CA000;
LABEL_28:
  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v67 = v9;
  v68 = *(v22 + 482);
  v69 = sub_1D7D30C6C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1D7987000, v68, v69, "Setting up PaywallPreparationEventManager trigger.  Awaiting articleLoaded and viewWillAppear events.", v70, 2u);
    MEMORY[0x1DA7102E0](v70, -1, -1);
  }

  v92 = *&a2[v34[208]];
  sub_1D7B22E00(&unk_1F529A550);
  v71 = MEMORY[0x1E69D6810];
  sub_1D7A34F18(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v72 = v52;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1D7D3C680;
  sub_1D7D2916C();
  sub_1D7D2917C();
  sub_1D7D2915C();
  v94[0] = v73;
  sub_1D7A35F40(&qword_1EE0C0380, MEMORY[0x1E69D6810], MEMORY[0x1E69D6818]);
  sub_1D7A34F18(0, &unk_1EE0BF2C0, v71, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  v74 = v91;
  v75 = v67;
  sub_1D7D313AC();
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = v90;
  v78 = v85;
  v83(v90, v86, v85);
  v79 = v87;
  v80 = (*(v87 + 80) + 24) & ~*(v87 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v76;
  (*(v79 + 32))(v81 + v80, v77, v78);

  sub_1D7D28C7C();

  (*(v72 + 8))(v74, v75);
}

void sub_1D7A35D50()
{
  if (!qword_1EE0C0600)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0600);
    }
  }
}

void sub_1D7A35DFC()
{
  sub_1D7D29A8C();
  v1 = *(v0 + 16);

  sub_1D7AFF958(v1);
}

uint64_t sub_1D7A35E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A35EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7A35F40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7A35F88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for PDFReplicaViewerModule();
    v7 = objc_allocWithZone(v6);
    sub_1D799CC84(v10, &v7[OBJC_IVAR____TtC12NewsArticles22PDFReplicaViewerModule_resolver]);
    *&v7[OBJC_IVAR____TtC12NewsArticles22PDFReplicaViewerModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &off_1F529DD58;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A36060()
{
  type metadata accessor for PDFReplicaViewerViewController(0);
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E2910, &protocol descriptor for PDFReplicaViewerMenuProviderType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2918, &protocol descriptor for PDFReplicaViewerStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2920, &protocol descriptor for PDFReplicaViewerRendererType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2928, &protocol descriptor for PDFReplicaViewerRouterType, 1);
  sub_1D7D291EC();
  type metadata accessor for PDFReplicaViewerRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E2930, &protocol descriptor for PDFReplicaViewerEventHandlerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2938, &protocol descriptor for PDFReplicaViewerInteractorType, 0);
  sub_1D7D291EC();
  type metadata accessor for PDFReplicaViewerInteractor();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E2940, &protocol descriptor for PDFReplicaViewerDataManagerType, 0);
  sub_1D7D291EC();

  sub_1D7A39148(0);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7A396E0(0, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
  sub_1D7D291DC();

  sub_1D7D291DC();

  sub_1D7A392DC(0);
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E2990, &protocol descriptor for PDFReplicaViewerPageBlueprintFactoryType, 1);
  sub_1D7D291EC();

  type metadata accessor for PDFReplicaViewerViewControllerProvider();
  sub_1D7D291DC();

  type metadata accessor for PDFReplicaViewerPrewarmerProvider();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EC9E2998, MEMORY[0x1E69D7E60], 1);
  sub_1D7D291EC();
}

char *sub_1D7A36560(void *a1)
{
  v2 = sub_1D7D2C09C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2ACCC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2918, &protocol descriptor for PDFReplicaViewerStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v175)
  {
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2920, &protocol descriptor for PDFReplicaViewerRendererType, 1);
  result = sub_1D7D28D2C();
  if (!v173)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v133 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2930, &protocol descriptor for PDFReplicaViewerEventHandlerType, 0);
  result = sub_1D7D28D2C();
  v12 = v170;
  if (!v170)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v171;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E2998, MEMORY[0x1E69D7E60], 1);
  result = sub_1D7D28D2C();
  if (!v169[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7D28D2C();
  v132 = v167;
  if (!v167)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v129 = v168;
  v130 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A39148(0);
  result = sub_1D7D28D1C();
  v131 = result;
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A396E0(0, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CCEA8, &protocol descriptor for IssueCoverViewButtonFactoryType, 1);
  result = sub_1D7D28D2C();
  if (!v166)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBEE0, &protocol descriptor for TableOfContentsArticleViewerFeatureVisibilityProviderType, 1);
  result = sub_1D7D28D2C();
  if (!v164)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C01E0, MEMORY[0x1E69B6B18], 1);
  result = sub_1D7D28D2C();
  if (!v162[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
  result = sub_1D7D28D2C();
  if (!v161[3])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB40, MEMORY[0x1E69B6778], 1);
  result = sub_1D7D28D2C();
  if (!v160[3])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A3963C();
  result = sub_1D7D28D1C();
  v128 = result;
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v127 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2910, &protocol descriptor for PDFReplicaViewerMenuProviderType, 1);
  result = sub_1D7D28D2C();
  if (!v159)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  v126 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v124 = v6;
  v125 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v150[0])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = result;
  v134 = v14;
  v123 = v12;
  v156 = v15;
  v157 = sub_1D7A39460(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v155[0] = v16;
  sub_1D7D2A50C();
  swift_allocObject();
  v122 = sub_1D7D2A4FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFF60, MEMORY[0x1E69D7BB0], 0);
  result = sub_1D7D28D2C();
  v121 = v153;
  if (v153)
  {
    v115 = v154;
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
    v120 = &v105;
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (&v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v172, v173);
    v119 = &v105;
    v23 = MEMORY[0x1EEE9AC00](v22, v22);
    v25 = (&v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25, v23);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v165, v166);
    v118 = &v105;
    v28 = MEMORY[0x1EEE9AC00](v27, v27);
    v30 = (&v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v163, v164);
    v117 = &v105;
    v33 = MEMORY[0x1EEE9AC00](v32, v32);
    v35 = (&v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35, v33);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v158, v159);
    v116 = &v105;
    v38 = MEMORY[0x1EEE9AC00](v37, v37);
    v40 = (&v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = *v20;
    v43 = *v25;
    v44 = *v30;
    v45 = *v35;
    v46 = *v40;
    v108 = type metadata accessor for PDFReplicaViewerStyler();
    v157 = &off_1F52A7048;
    v156 = v108;
    v155[0] = v42;
    v107 = type metadata accessor for PDFReplicaViewerRenderer();
    v152 = &off_1F52B0788;
    v151 = v107;
    v150[0] = v43;
    v106 = type metadata accessor for IssueCoverViewButtonFactory();
    v149 = &off_1F52B12E8;
    v148 = v106;
    v147[0] = v44;
    v47 = type metadata accessor for TableOfContentsArticleViewerFeatureVisibilityProvider(0);
    v146 = &off_1F52B16D8;
    v145 = v47;
    v144[0] = v45;
    v48 = type metadata accessor for PDFReplicaViewerMenuProvider();
    v142 = v48;
    v143 = &off_1F52A5C00;
    v141[0] = v46;
    v109 = type metadata accessor for PDFReplicaViewerViewController(0);
    v49 = objc_allocWithZone(v109);
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v155, v156);
    v114 = &v105;
    v51 = MEMORY[0x1EEE9AC00](v50, v50);
    v53 = (&v105 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v53, v51);
    v55 = __swift_mutable_project_boxed_opaque_existential_1(v150, v151);
    v113 = &v105;
    v56 = MEMORY[0x1EEE9AC00](v55, v55);
    v58 = (&v105 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58, v56);
    v60 = __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
    v112 = &v105;
    v61 = MEMORY[0x1EEE9AC00](v60, v60);
    v63 = (&v105 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v64 + 16))(v63, v61);
    v65 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
    v111 = &v105;
    v66 = MEMORY[0x1EEE9AC00](v65, v65);
    v68 = (&v105 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v69 + 16))(v68, v66);
    v70 = __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
    v110 = &v105;
    v71 = MEMORY[0x1EEE9AC00](v70, v70);
    v73 = (&v105 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v74 + 16))(v73, v71);
    v75 = *v53;
    v76 = *v58;
    v77 = *v63;
    v78 = *v68;
    v79 = *v73;
    v140[3] = v108;
    v140[4] = &off_1F52A7048;
    v140[0] = v75;
    v139[4] = &off_1F52B0788;
    v139[3] = v107;
    v139[0] = v76;
    v138[3] = v106;
    v138[4] = &off_1F52B12E8;
    v138[0] = v77;
    v137[3] = v47;
    v137[4] = &off_1F52B16D8;
    v137[0] = v78;
    v136[3] = v48;
    v136[4] = &off_1F52A5C00;
    v136[0] = v79;
    v80 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywall;
    v81 = *MEMORY[0x1E69B6C58];
    v82 = sub_1D7D29A8C();
    (*(*(v82 - 8) + 104))(&v49[v80], v81, v82);
    v83 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_navigationItemStyle;
    sub_1D7D2ACBC();
    sub_1D7A39688(0);
    swift_allocObject();
    *&v49[v83] = sub_1D7D28ECC();
    v84 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_titleView;
    v85 = v124;
    (*(v127 + 104))(v124, *MEMORY[0x1E69D86B0], v125);
    v86 = objc_allocWithZone(type metadata accessor for TitleView(0));
    *&v49[v84] = TitleView.init(layout:)(v85);
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallViewController] = 0;
    v87 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventManager;
    sub_1D7A396E0(0, &qword_1EC9E1998, sub_1D79E14A8, &type metadata for PDFReplicaViewerViewController.Event, MEMORY[0x1E69D6460]);
    swift_allocObject();
    *&v49[v87] = sub_1D7D28C9C();
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_newsPlusLabelItem] = 0;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_backButton] = 0;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_nextButton] = 0;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_coverButton] = 0;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issueCoverView] = 0;
    v88 = &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator];
    *v88 = 0;
    *(v88 + 1) = 0;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageSheetPresentationObserver] = 0;
    sub_1D799CC84(v140, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_styler]);
    sub_1D799CC84(v139, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_renderer]);
    v89 = &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler];
    v90 = v130;
    *v89 = v123;
    *(v89 + 1) = v90;
    sub_1D799CC84(v169, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_sessionManager]);
    v91 = &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_issue];
    v92 = v131;
    v93 = v129;
    *v91 = v132;
    *(v91 + 1) = v93;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageViewController] = v92;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageBlueprintProvider] = v134;
    sub_1D799CC84(v138, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_toolbarCoverFactory]);
    sub_1D799CC84(v137, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_tableOfContentsVisibilityProvider]);
    sub_1D799CC84(v162, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywallFactory]);
    sub_1D799CC84(v161, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_featureAvailability]);
    sub_1D799CC84(v160, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_sharingActivityItemFactory]);
    v94 = v128;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_subscriptionController] = v128;
    v95 = &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_toolbarManager];
    v96 = v115;
    *v95 = v121;
    *(v95 + 1) = v96;
    sub_1D799CC84(v136, &v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_menuProvider]);
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_tracker] = v126;
    *&v49[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_commands] = v122;
    v135.receiver = v49;
    v135.super_class = v109;
    swift_unknownObjectRetain();
    v97 = v92;

    v98 = v94;
    swift_unknownObjectRetain();

    v99 = objc_msgSendSuper2(&v135, sel_initWithNibName_bundle_, 0, 0);
    *(*(v99 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_eventHandler) + 24) = &off_1F529C600;
    swift_unknownObjectWeakAssign();
    v100 = *(v99 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageViewController);
    v101 = v99;
    v102 = v100;
    sub_1D7D2AACC();

    sub_1D7D2B9CC();
    swift_allocObject();
    v103 = v101;
    *&v103[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageSheetPresentationObserver] = sub_1D7D2B9AC();

    v104 = sub_1D7D30D8C();

    [v104 setTitleView_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v160);
    __swift_destroy_boxed_opaque_existential_1(v161);
    __swift_destroy_boxed_opaque_existential_1(v162);
    __swift_destroy_boxed_opaque_existential_1(v169);
    __swift_destroy_boxed_opaque_existential_1(v136);
    __swift_destroy_boxed_opaque_existential_1(v137);
    __swift_destroy_boxed_opaque_existential_1(v138);
    __swift_destroy_boxed_opaque_existential_1(v139);
    __swift_destroy_boxed_opaque_existential_1(v140);
    __swift_destroy_boxed_opaque_existential_1(v141);
    __swift_destroy_boxed_opaque_existential_1(v144);
    __swift_destroy_boxed_opaque_existential_1(v147);
    __swift_destroy_boxed_opaque_existential_1(v150);
    __swift_destroy_boxed_opaque_existential_1(v155);
    __swift_destroy_boxed_opaque_existential_1(v158);
    __swift_destroy_boxed_opaque_existential_1(v163);
    __swift_destroy_boxed_opaque_existential_1(v165);
    __swift_destroy_boxed_opaque_existential_1(v172);
    __swift_destroy_boxed_opaque_existential_1(v174);
    return v103;
  }

LABEL_37:
  __break(1u);
  return result;
}

void *sub_1D7A37910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (v5)
  {
    v4 = type metadata accessor for PDFReplicaViewerMenuProvider();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    a2[3] = v4;
    a2[4] = &off_1F52A5C00;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7A379BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CE570, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D7D28D2C();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
    result = sub_1D7D28D2C();
    if (v8)
    {
      v5 = type metadata accessor for PDFReplicaViewerStyler();
      v6 = swift_allocObject();
      sub_1D799D69C(&v9, v6 + 16);
      result = sub_1D799D69C(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_1F52A7048;
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

void *sub_1D7A37AD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2918, &protocol descriptor for PDFReplicaViewerStylerType, 1);
  result = sub_1D7D28D2C();
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0CBE70, MEMORY[0x1E69D77B8], 1);
    result = sub_1D7D28CEC();
    if (v23)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v6 = MEMORY[0x1EEE9AC00](v5, v5);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for PDFReplicaViewerStyler();
      v21[3] = v11;
      v21[4] = &off_1F52A7048;
      v21[0] = v10;
      v12 = type metadata accessor for PDFReplicaViewerRenderer();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v11);
      v15 = MEMORY[0x1EEE9AC00](v14, v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[5] = v11;
      v13[6] = &off_1F52A7048;
      v13[2] = v19;
      sub_1D799D69C(&v22, (v13 + 7));
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      a2[3] = v12;
      a2[4] = &off_1F52B0788;
      *a2 = v13;
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

void *sub_1D7A37D88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF990, &protocol descriptor for RouterType, 1);
  result = sub_1D7D28D2C();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
  result = sub_1D7D28D2C();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF6E0, MEMORY[0x1E69B61E0], 1);
  result = sub_1D7D28D2C();
  if (v8)
  {
    v5 = type metadata accessor for PDFReplicaViewerRouter();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v6 + 104) = 0;
    sub_1D799D69C(v13, v6 + 24);
    sub_1D799D69C(&v11, v6 + 64);
    sub_1D799D69C(&v9, v6 + 112);
    result = sub_1D799D69C(&v7, v6 + 152);
    a2[3] = v5;
    a2[4] = &off_1F52B3C60;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D7A37F28(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PDFReplicaViewerViewController(0);
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

void *sub_1D7A37FA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2938, &protocol descriptor for PDFReplicaViewerInteractorType, 0);
  result = sub_1D7D28D2C();
  v5 = v28;
  if (v28)
  {
    v6 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E2928, &protocol descriptor for PDFReplicaViewerRouterType, 1);
    result = sub_1D7D28D2C();
    if (v27)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for PDFReplicaViewerRouter();
      v25[3] = v13;
      v25[4] = &off_1F52B3C60;
      v25[0] = v12;
      type metadata accessor for PDFReplicaViewerEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v13);
      v16 = MEMORY[0x1EEE9AC00](v15, v15);
      v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v23 = v13;
      v24 = &off_1F52B3C60;
      *&v22 = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_1D799D69C(&v22, (v14 + 6));
      *(v5 + 24) = &off_1F52B2E40;
      swift_unknownObjectWeakAssign();
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      *a2 = v14;
      a2[1] = &off_1F52B2E58;
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

void *sub_1D7A38264@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7D28D2C();
  v5 = v45;
  if (!v45)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2940, &protocol descriptor for PDFReplicaViewerDataManagerType, 0);
  result = sub_1D7D28D2C();
  if (!v43)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2990, &protocol descriptor for PDFReplicaViewerPageBlueprintFactoryType, 1);
  result = sub_1D7D28D2C();
  if (!v42)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v34 = v44;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB40, MEMORY[0x1E69B6778], 1);
  result = sub_1D7D28D2C();
  if (!v39)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = v43;
  sub_1D7D300CC();
  swift_allocObject();
  v7 = sub_1D7D300BC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEE80, &protocolRef_FCIssueReadingHistoryType);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v32 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v30 = v46;
  v31 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v10 = result;
    v39 = v6;
    v40 = sub_1D7A39460(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
    v38[0] = v10;
    sub_1D7D2B48C();
    swift_allocObject();
    v11 = sub_1D7D2B46C();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v13 = MEMORY[0x1EEE9AC00](v12, v12);
    v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v18 = type metadata accessor for PDFReplicaViewerPageBlueprintFactory();
    v39 = v18;
    v40 = &off_1F52A21F8;
    v38[0] = v17;
    type metadata accessor for PDFReplicaViewerInteractor();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v38, v18);
    v21 = MEMORY[0x1EEE9AC00](v20, v20);
    v23 = (&v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = *v23;
    v36 = v18;
    v37 = &off_1F52A21F8;
    *&v35 = v25;
    *(v19 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 176) = 2;
    *(v19 + 64) = 0;
    *(v19 + 72) = v5;
    v27 = v33;
    v26 = v34;
    *(v19 + 80) = v30;
    *(v19 + 88) = v27;
    *(v19 + 96) = v26;
    sub_1D799D69C(&v35, v19 + 104);
    *(v19 + 144) = v32;
    *(v19 + 152) = v8;
    *(v19 + 160) = v9;
    *(v19 + 168) = v11;
    __swift_destroy_boxed_opaque_existential_1(v38);
    result = __swift_destroy_boxed_opaque_existential_1(v41);
    v28 = v31;
    *v31 = v19;
    v28[1] = &off_1F52ADB28;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D7A387E4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &unk_1EC9E7690, &protocol descriptor for PDFReplicaViewerCoordinatorType, 1);
  sub_1D7D28D2C();
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    v6 = *(v5 + 16);

    v6(v7, &off_1F52ADB20, v4, v5);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7D28D2C();
  swift_beginAccess();
  sub_1D7A39510(v9, v3 + 32);
  swift_endAccess();
  return sub_1D7A395E0(v10);
}

uint64_t sub_1D7A38914@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PDFReplicaViewerDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_1F52B1628;
  return result;
}

void *sub_1D7A38954(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A396E0(0, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PDFReplicaViewerViewControllerProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A392DC(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E2998, MEMORY[0x1E69D7E60], 1);
  result = sub_1D7D28D2C();
  if (v5)
  {
    sub_1D7A39148(0);
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B4EC();
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7A38AEC(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &unk_1EE0CBEA0, MEMORY[0x1E69D68B0], 1);
  result = sub_1D7D28D2C();
  if (v4)
  {
    sub_1D799D69C(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1D7A39460(&unk_1EC9E29C0, sub_1D7A39148, MEMORY[0x1E69D7BA0]);
    sub_1D7D291FC(&v3);
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A38BE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A396E0(0, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A38C74()
{
  sub_1D7A394A8(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D7A396E0(0, &qword_1EC9E1910, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7708]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1D79F9A34();
  v5 = sub_1D79F9AE4();
  MEMORY[0x1DA706A70](MEMORY[0x1E69E7CC0], &type metadata for PDFReplicaViewerPage, v4, v5);
  sub_1D79DF824();
  sub_1D7D29FBC();
  sub_1D7A396E0(0, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
  swift_allocObject();
  return sub_1D7D2ADFC();
}

uint64_t sub_1D7A38DEC(void *a1)
{
  v2 = sub_1D7D2B99C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A396E0(0, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for PDFReplicaViewerPrewarmerProvider();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7D2B98C();
      sub_1D7A392DC(0);
      swift_allocObject();
      return sub_1D7D2B8EC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A38F4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for PDFReplicaViewerPageBlueprintFactory();
    v7 = swift_allocObject();
    result = sub_1D799D69C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_1F52A21F8;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A38FFC(uint64_t a1)
{
  sub_1D799CC84(a1, v3);
  type metadata accessor for PDFReplicaViewerViewControllerProvider();
  v1 = swift_allocObject();
  sub_1D799D69C(v3, v1 + 16);
  return v1;
}

void *sub_1D7A39050(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CE580, &protocol descriptor for AssetFetchServiceType, 1);
  result = sub_1D7D28D2C();
  if (v4)
  {
    type metadata accessor for PDFReplicaViewerPrewarmerProvider();
    v2 = swift_allocObject();
    sub_1D799D69C(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A390F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D2AA1C();
  swift_allocObject();
  result = sub_1D7D2AA0C();
  v4 = MEMORY[0x1E69D7B88];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void sub_1D7A39148(uint64_t a1)
{
  if (!qword_1EC9E2948)
  {
    sub_1D7A396E0(255, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
    type metadata accessor for PDFReplicaViewerViewControllerProvider();
    type metadata accessor for PDFReplicaViewerViewController(255);
    sub_1D7A392DC(255);
    sub_1D7A393D0();
    sub_1D7A39460(&qword_1EC9E2978, type metadata accessor for PDFReplicaViewerViewControllerProvider, &unk_1D7D50198);
    sub_1D7A39460(&qword_1EC9E2980, type metadata accessor for PDFReplicaViewerViewController, &unk_1D7D3C8B8);
    sub_1D7A39460(&qword_1EC9E2988, sub_1D7A392DC, MEMORY[0x1E69D8328]);
    v1 = sub_1D7D2B4FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2948);
    }
  }
}

void sub_1D7A392DC(uint64_t a1)
{
  if (!qword_1EC9E2960)
  {
    sub_1D7A396E0(255, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
    type metadata accessor for PDFReplicaViewerPrewarmerProvider();
    sub_1D7A393D0();
    sub_1D7A39460(&qword_1EC9E2970, type metadata accessor for PDFReplicaViewerPrewarmerProvider, &unk_1D7D449F4);
    v1 = sub_1D7D2B8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2960);
    }
  }
}

unint64_t sub_1D7A393D0()
{
  result = qword_1EC9E2968;
  if (!qword_1EC9E2968)
  {
    sub_1D7A396E0(255, &unk_1EC9E2950, sub_1D79DF824, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69D7CE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2968);
  }

  return result;
}

uint64_t sub_1D7A39460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D7A394A8(uint64_t a1)
{
  if (!qword_1EC9E29A8)
  {
    sub_1D79F9A34();
    sub_1D79F9AE4();
    v1 = sub_1D7D2903C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E29A8);
    }
  }
}

uint64_t sub_1D7A39510(uint64_t a1, uint64_t a2)
{
  sub_1D7A39574(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7A39574(uint64_t a1)
{
  if (!qword_1EC9E29D0)
  {
    sub_1D798C468(255, &unk_1EC9E7690, &protocol descriptor for PDFReplicaViewerCoordinatorType, 1);
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E29D0);
    }
  }
}

uint64_t sub_1D7A395E0(uint64_t a1)
{
  sub_1D7A39574(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7A3963C()
{
  result = qword_1EE0BEEA0;
  if (!qword_1EE0BEEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BEEA0);
  }

  return result;
}

void sub_1D7A39688(uint64_t a1)
{
  if (!qword_1EE0C0470)
  {
    sub_1D7D2ACCC();
    v1 = sub_1D7D28F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0470);
    }
  }
}

void sub_1D7A396E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D7A397C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for InterstitialAdPreviewModule();
    v7 = swift_allocObject();
    result = sub_1D799D69C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for InterstitialAdPreviewModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A39878()
{
  type metadata accessor for InterstitialAdPreviewViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E29D8, &protocol descriptor for InterstitialAdPreviewStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E29E0, &protocol descriptor for InterstitialAdPreviewRouterType, 1);
  sub_1D7D291EC();
  type metadata accessor for InterstitialAdPreviewRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E29E8, &protocol descriptor for InterstitialAdPreviewEventHandlerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E29F0, &protocol descriptor for InterstitialAdPreviewInteractorType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E29F8, &protocol descriptor for InterstitialAdPreviewTrackerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2A00, &protocol descriptor for InterstitialAdPreviewDataManagerType, 0);
  sub_1D7D291EC();
}

char *sub_1D7A39AC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E29D8, &protocol descriptor for InterstitialAdPreviewStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E29E8, &protocol descriptor for InterstitialAdPreviewEventHandlerType, 0);
  result = sub_1D7D28D2C();
  v3 = v23;
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CDE40, &protocol descriptor for InterstitialAdModuleType, 1);
  result = sub_1D7D28D2C();
  if (v22[3])
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v6 = MEMORY[0x1EEE9AC00](v5, v5);
    v8 = (&v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v20 = type metadata accessor for InterstitialAdPreviewStyler();
    v21 = &off_1F52A9B08;
    v19[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for InterstitialAdPreviewViewController());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v13 = MEMORY[0x1EEE9AC00](v12, v12);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_1D7A3A7C4(*v15, v3, v4, v22, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v17;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7A39D90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0, &protocol descriptor for BaseStylerType, 1);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for InterstitialAdPreviewStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A9B08;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A39E44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for InterstitialAdPreviewRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_1D799D69C(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_1F529D960;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7A39F00(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for InterstitialAdPreviewViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

void *sub_1D7A39F80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E29F0, &protocol descriptor for InterstitialAdPreviewInteractorType, 0);
  result = sub_1D7D28D2C();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E29E0, &protocol descriptor for InterstitialAdPreviewRouterType, 1);
  result = sub_1D7D28D2C();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E29F8, &protocol descriptor for InterstitialAdPreviewTrackerType, 1);
  result = sub_1D7D28D2C();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x1EEE9AC00](v12, v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_1D7A3AA64(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_1F52A2BD8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7A3A228@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7A3A714(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D7D2D5EC();
  sub_1D7D28D2C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A00, &protocol descriptor for InterstitialAdPreviewDataManagerType, 0);
  result = sub_1D7D28D2C();
  v11 = v23;
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A10, MEMORY[0x1E69B40F0], 1);
  result = sub_1D7D28D2C();
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
  result = sub_1D7D28D2C();
  if (!v20[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00, MEMORY[0x1E69B3E78], 1);
  result = sub_1D7D28D2C();
  if (!v19[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79979B4(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v13 = result;
    type metadata accessor for InterstitialAdPreviewInteractor(0);
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v14 + OBJC_IVAR____TtC12NewsArticles31InterstitialAdPreviewInteractor_token) = 0;
    (*(v9 + 16))(v14 + OBJC_IVAR____TtC12NewsArticles31InterstitialAdPreviewInteractor_preview, v7, v8);
    v15 = (v14 + OBJC_IVAR____TtC12NewsArticles31InterstitialAdPreviewInteractor_dataManager);
    *v15 = v11;
    v15[1] = v12;
    sub_1D799CC84(v20, v14 + OBJC_IVAR____TtC12NewsArticles31InterstitialAdPreviewInteractor_contextBuilder);
    sub_1D799CC84(v19, v14 + OBJC_IVAR____TtC12NewsArticles31InterstitialAdPreviewInteractor_adManager);
    *(v14 + OBJC_IVAR____TtC12NewsArticles31InterstitialAdPreviewInteractor_viewManager) = v13;
    v17 = __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_1D7D2CA3C();
    sub_1D7D2D3CC();
    sub_1D7D2D05C();
    sub_1D7D2D12C();
    sub_1D7A3A76C();
    sub_1D7D2CEAC();

    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v20);
    (*(v9 + 8))(v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    v16 = v18;
    *v18 = v14;
    v16[1] = &off_1F52B52D8;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7A3A64C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for InterstitialAdPreviewTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F52A5510;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A3A6D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InterstitialAdPreviewDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_1F52A9B00;
  return result;
}

void sub_1D7A3A714(uint64_t a1)
{
  if (!qword_1EC9E2A08)
  {
    sub_1D7D2D5EC();
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2A08);
    }
  }
}

unint64_t sub_1D7A3A76C()
{
  result = qword_1EE0CBD80;
  if (!qword_1EE0CBD80)
  {
    sub_1D7D2D3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CBD80);
  }

  return result;
}

char *sub_1D7A3A7C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v21 = sub_1D7D2918C();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = type metadata accessor for InterstitialAdPreviewStyler();
  v23[4] = &off_1F52A9B08;
  v23[0] = a1;
  v15 = OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *&a5[v15] = sub_1D7D2A58C();
  v16 = OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_eventManager;
  sub_1D7A3ACC0(0);
  swift_allocObject();
  *&a5[v16] = sub_1D7D28C9C();
  sub_1D799CC84(v23, &a5[OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_styler]);
  v17 = &a5[OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_eventHandler];
  *v17 = a2;
  *(v17 + 1) = a3;
  sub_1D799CC84(a4, &a5[OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_interstitialModule]);
  v22.receiver = a5;
  v22.super_class = ObjectType;
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  *(*&v18[OBJC_IVAR____TtC12NewsArticles35InterstitialAdPreviewViewController_eventHandler] + 24) = &off_1F52AAE80;
  swift_unknownObjectWeakAssign();
  sub_1D7B22E28(&unk_1F529A578);
  v19 = v18;

  sub_1D7D2917C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D28C7C();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v11 + 8))(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(v23);

  return v19;
}

void *sub_1D7A3AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for InterstitialAdPreviewRouter();
  v34[3] = v9;
  v34[4] = &off_1F529D960;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_1F52A5510;
  v31[0] = a4;
  type metadata accessor for InterstitialAdPreviewEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x1EEE9AC00](v16, v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_1F529D960;
  v27 = &off_1F52A5510;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_1D799D69C(&v28, (v10 + 6));
  sub_1D799D69C(&v25, (v10 + 11));
  *(a1 + 24) = &off_1F52A2BC0;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

void sub_1D7A3ACC0(uint64_t a1)
{
  if (!qword_1EC9E2A18)
  {
    sub_1D7A3AD1C();
    v1 = sub_1D7D28CAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2A18);
    }
  }
}

unint64_t sub_1D7A3AD1C()
{
  result = qword_1EC9E2A20;
  if (!qword_1EC9E2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2A20);
  }

  return result;
}

void sub_1D7A3AD78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*v4 + 16);
  v6 = sub_1D7D3031C();
  [v5 removeArticleFromHistory_];
}

uint64_t ArticleSharingModule.createViewController(for:)(uint64_t a1)
{
  v3 = sub_1D7D28A6C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x1E69B4C10], v3, v6);
  v9 = sub_1D7D289DC();
  (*(v4 + 8))(v8, v3);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for ArticleSharingViewController();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  swift_unknownObjectRetain();
  v11 = sub_1D7D28CFC();

  if (v11)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A3AF8C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799621C();
  return sub_1D7D28BEC();
}

uint64_t ArticleSharingModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ArticleSharingModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ArticleFooterContext.viewingSessionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___NAArticleFooterContext_viewingSessionID);

  return v1;
}

uint64_t ArticleFooterContext.articleGroupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___NAArticleFooterContext_articleGroupData);
  v3 = *(v1 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 8);
  v4 = *(v1 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 16);
  v5 = *(v1 + OBJC_IVAR___NAArticleFooterContext_articleGroupData + 24);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D7A03D0C(v2, v3, v4, v5);
}

id ArticleFooterContext.__allocating_init(headline:viewingSessionID:articleGroupData:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___NAArticleFooterContext_headline] = a1;
  v10 = &v9[OBJC_IVAR___NAArticleFooterContext_viewingSessionID];
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = &v9[OBJC_IVAR___NAArticleFooterContext_articleGroupData];
  v12 = a4[1];
  *v11 = *a4;
  *(v11 + 1) = v12;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ArticleFooterContext.init(headline:viewingSessionID:articleGroupData:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v4[OBJC_IVAR___NAArticleFooterContext_headline] = a1;
  v5 = &v4[OBJC_IVAR___NAArticleFooterContext_viewingSessionID];
  *v5 = a2;
  *(v5 + 1) = a3;
  v6 = &v4[OBJC_IVAR___NAArticleFooterContext_articleGroupData];
  v7 = a4[1];
  *v6 = *a4;
  *(v6 + 1) = v7;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for ArticleFooterContext();
  return objc_msgSendSuper2(&v9, sel_init);
}

id ArticleFooterContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArticleFooterContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleFooterContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7A3B3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return sub_1D79DA510(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D7A3B404()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A3B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7A3B538(0);
  sub_1D7D29EEC();
  *&v16[25] = *&v14[9];
  v15 = v12;
  *v16 = v13;
  *&v16[16] = *v14;
  if (v14[24])
  {
    __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
    v7 = v15;
    v8 = *v16;
    v9 = *&v16[8];
    v10 = *&v16[24];
    v11 = *&v16[32];
    sub_1D7BFB1E4(&v7, a4);
  }

  return sub_1D7A2AF64(&v15);
}

void sub_1D7A3B538(uint64_t a1)
{
  if (!qword_1EC9E5940)
  {
    sub_1D7A26E88();
    v1 = sub_1D7D29F0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E5940);
    }
  }
}

void *sub_1D7A3B594(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1D7D30A2C();
  if (!v22)
  {
    return sub_1D7D306FC();
  }

  v44 = v22;
  v48 = sub_1D7D315AC();
  v35 = sub_1D7D315BC();
  sub_1D7D3155C();
  result = sub_1D7D309EC();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1D7D30AAC();
      v26 = v14;
      v27 = v14;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1D7D3159C();
      result = sub_1D7D30A6C();
      ++v24;
      v14 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BlueprintArticleViewerBlueprintProvider.blueprint.getter()
{
  sub_1D7A0E91C();
}

uint64_t *BlueprintArticleViewerBlueprintProvider.__allocating_init(blueprintLayoutProvider:token:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_1D7A3CF3C(a1, a2);

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t *BlueprintArticleViewerBlueprintProvider.init(blueprintLayoutProvider:token:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1D7A3CF3C(a1, a2);

  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1D7A3BAF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7A3BBFC(a1, v6);
    sub_1D7A3DF78(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint, &protocol conformance descriptor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    sub_1D79FF4F8(v6);
  }

  return result;
}

uint64_t sub_1D7A3BBFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D7A3C34C(a1, v2, sub_1D7A3DFC0);
  v11 = *(v10 + 16);
  if (v11)
  {
    v25 = a2;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D79A8814(0, v11, 0);
    v12 = v28;
    type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
    v13 = v11 - 1;
    for (i = 32; ; i += 64)
    {
      v15 = *(v10 + i);
      v16 = *(v10 + i + 16);
      v17 = *(v10 + i + 48);
      v27[2] = *(v10 + i + 32);
      v27[3] = v17;
      v27[0] = v15;
      v27[1] = v16;
      v18 = *(v10 + i);
      v19 = *(v10 + i + 16);
      v20 = *(v10 + i + 48);
      v9[2] = *(v10 + i + 32);
      v9[3] = v20;
      *v9 = v18;
      v9[1] = v19;
      swift_storeEnumTagMultiPayload();
      *(v9 + *(v5 + 20)) = MEMORY[0x1E69E7CC0];
      sub_1D79F5B54(v27, v26);
      v28 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D79A8814((v21 > 1), v22 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v22 + 1;
      sub_1D7A0EC98(v9, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22);
      if (!v13)
      {
        break;
      }

      --v13;
    }

    a2 = v25;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v12;
  type metadata accessor for ArticleViewerBlueprint(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t *BlueprintArticleViewerBlueprintProvider.__allocating_init(blueprintLayoutProvider:initialArticleIdentifier:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D7A3D77C(a1, a2, a3, a4);

  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t *BlueprintArticleViewerBlueprintProvider.init(blueprintLayoutProvider:initialArticleIdentifier:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_1D7A3D348(a1, a2, a3, a4);

  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_1D7A3BF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7A3C034(a1, v8);
    sub_1D7A3DF78(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint, &protocol conformance descriptor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    sub_1D79FF4F8(v8);
  }

  return result;
}

uint64_t sub_1D7A3C034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D7A3C34C(a1, v2, sub_1D7A3DBE4);
  v11 = *(v10 + 16);
  if (v11)
  {
    v25 = a2;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D79A8814(0, v11, 0);
    v12 = v28;
    type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
    v13 = v11 - 1;
    for (i = 32; ; i += 64)
    {
      v15 = *(v10 + i);
      v16 = *(v10 + i + 16);
      v17 = *(v10 + i + 48);
      v27[2] = *(v10 + i + 32);
      v27[3] = v17;
      v27[0] = v15;
      v27[1] = v16;
      v18 = *(v10 + i);
      v19 = *(v10 + i + 16);
      v20 = *(v10 + i + 48);
      v9[2] = *(v10 + i + 32);
      v9[3] = v20;
      *v9 = v18;
      v9[1] = v19;
      swift_storeEnumTagMultiPayload();
      *(v9 + *(v5 + 20)) = MEMORY[0x1E69E7CC0];
      sub_1D79F5B54(v27, v26);
      v28 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D79A8814((v21 > 1), v22 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v22 + 1;
      sub_1D7A0EC98(v9, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22);
      if (!v13)
      {
        break;
      }

      --v13;
    }

    a2 = v25;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v12;
  type metadata accessor for ArticleViewerBlueprint(0);
  return swift_storeEnumTagMultiPayload();
}

char *BlueprintArticleViewerBlueprintProvider.__allocating_init(blueprintLayoutProvider:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1D7A3D7E0(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

char *BlueprintArticleViewerBlueprintProvider.init(blueprintLayoutProvider:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D7A3D7E0(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1D7A3C34C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7D2A23C();
  swift_getWitnessTable();
  sub_1D7D3059C();
  return v4;
}

uint64_t sub_1D7A3C4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v21 = sub_1D7A3DC14(a1, *(*a2 + 80), *(*a2 + 88), *(*a2 + 96), *(*a2 + 104), *(*a2 + 112));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7D2ABCC();
  sub_1D7D307BC();
  sub_1D79F8E00();
  v4 = MEMORY[0x1E69E6328];
  swift_getWitnessTable();
  sub_1D7A3DF78(&qword_1EE0BF318, sub_1D79F8E00, v4);
  v5 = sub_1D7D3058C();

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v5 + 32);
    v10 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v5 + 16))
    {
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[3];
      v23 = v9[2];
      v24 = v13;
      v21 = v11;
      v22 = v12;
      sub_1D79F5B54(&v21, v20);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E3A50(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1D79E3A50((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
      }

      ++v8;
      *(v10 + 16) = v15 + 1;
      v16 = (v10 + (v15 << 6));
      v17 = v21;
      v18 = v22;
      v19 = v24;
      v16[4] = v23;
      v16[5] = v19;
      v16[2] = v17;
      v16[3] = v18;
      v9 += 4;
      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_11:

    return sub_1D79E26EC(v10);
  }

  return result;
}

uint64_t sub_1D7A3C760@<X0>(uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v13 - v9;
  swift_getAssociatedConformanceWitness();
  sub_1D7D2ABCC();
  sub_1D7D2ABBC();
  v11 = (*(a3 + 8))(AssociatedTypeWitness, a3);
  result = (*(v7 + 8))(v10, AssociatedTypeWitness);
  *a4 = v11;
  return result;
}

uint64_t sub_1D7A3C8C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v54 = a2;
  v8 = sub_1D7D29C1C();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v45 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v45 - v18;
  swift_getAssociatedConformanceWitness();
  v20 = sub_1D7D2ABCC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v45 - v29;
  v31 = *a1;
  v49 = *(v22 + 16);
  v50 = v31;
  v49(&v45 - v29, a1, TupleTypeMetadata2, v28);
  v32 = *(TupleTypeMetadata2 + 48);
  sub_1D7D2ABBC();
  v33 = *(v20 - 8);
  v46 = *(v33 + 8);
  v47 = v33 + 8;
  v46(&v30[v32], v20);
  v34 = AssociatedTypeWitness;
  sub_1D7D2A1EC();
  v35 = *(v58 + 8);
  v58 += 8;
  v35(v19, v34);
  (v49)(v25);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = v51;
  sub_1D7D2ABBC();
  v46(&v25[v36], v20);
  v38 = v53;
  sub_1D7D2A1EC();
  v35(v37, v34);
  v39 = v57;
  v40 = v38;
  LOBYTE(v38) = sub_1D7D2AD3C();
  v41 = *(v55 + 8);
  v42 = v40;
  v43 = v56;
  v41(v42, v56);
  v41(v39, v43);
  return v38 & 1;
}

uint64_t sub_1D7A3CCDC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1D7D2ABCC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v8);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a1, TupleTypeMetadata2, v9);
  return (*(*(v6 - 8) + 32))(a4, &v11[*(TupleTypeMetadata2 + 48)], v6);
}

char *BlueprintArticleViewerBlueprintProvider.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  return v0;
}

uint64_t BlueprintArticleViewerBlueprintProvider.__deallocating_deinit()
{
  BlueprintArticleViewerBlueprintProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D7A3CF3C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v22 = *v2;
  v4 = v22;
  v5 = *(v22 + 88);
  v6 = *(v22 + 80);
  v25[0] = swift_getAssociatedTypeWitness();
  v25[1] = swift_getAssociatedTypeWitness();
  v25[2] = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = sub_1D7D2A23C();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for ArticleViewerBlueprint(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = (v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v6 - 8) + 16);
  v17 = v2 + *(v4 + 128);
  v21[1] = a1;
  v16(v17, a1, v6, v13);
  *v15 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  sub_1D79FF4A0(0);
  swift_allocObject();
  v2[2] = sub_1D7D28ECC();
  sub_1D7D2B76C();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v5;
  *(v19 + 32) = *(v22 + 96);
  *(v19 + 48) = *(v4 + 112);
  *(v19 + 56) = v18;
  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(v25, AssociatedConformanceWitness);

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_1D7D2B76C();
  sub_1D7D28EDC();

  sub_1D7A3BBFC(v10, v15);
  (*(v7 + 8))(v10, v23);
  sub_1D7A3DF78(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint, &protocol conformance descriptor for ArticleViewerBlueprint);
  sub_1D7D28F1C();
  sub_1D79FF4F8(v15);
  return v2;
}

uint64_t *sub_1D7A3D348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v28 = a2;
  v29 = a3;
  v27 = *v4;
  v6 = v27;
  v7 = *(v27 + 88);
  v8 = *(v27 + 80);
  v33[0] = swift_getAssociatedTypeWitness();
  v33[1] = swift_getAssociatedTypeWitness();
  v33[2] = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1D7D2A23C();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v26 = v25 - v11;
  v12 = type metadata accessor for ArticleViewerBlueprint(0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = (v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(*(v8 - 8) + 16);
  v18 = v4 + *(v6 + 128);
  v25[1] = a1;
  v17(v18, a1, v8, v14);
  *v16 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  sub_1D79FF4A0(0);
  swift_allocObject();
  v4[2] = sub_1D7D28ECC();
  sub_1D7D2B76C();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v7;
  v21 = v28;
  *(v20 + 32) = *(v27 + 96);
  *(v20 + 48) = *(v6 + 112);
  *(v20 + 56) = v19;
  v22 = v29;
  *(v20 + 64) = v21;
  *(v20 + 72) = v22;

  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(v33, AssociatedConformanceWitness);

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_1D7D2B76C();
  v23 = v26;
  sub_1D7D28EDC();

  sub_1D7A3C034(v23, v16);

  (*(v30 + 8))(v23, v31);
  sub_1D7A3DF78(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint, &protocol conformance descriptor for ArticleViewerBlueprint);
  sub_1D7D28F1C();
  sub_1D79FF4F8(v16);
  return v4;
}

char *sub_1D7A3D7E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v17[0] = swift_getAssociatedTypeWitness();
  v17[1] = swift_getAssociatedTypeWitness();
  v17[2] = swift_getAssociatedConformanceWitness();
  v17[3] = swift_getAssociatedConformanceWitness();
  v6 = sub_1D7D2A23C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for ArticleViewerBlueprint(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = (v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*(v5 - 8) + 16))(&v2[*(v4 + 128)], a1, v5, v13);
  *v15 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  sub_1D79FF4A0(0);
  swift_allocObject();
  *(v2 + 2) = sub_1D7D28ECC();
  sub_1D7D2B76C();
  sub_1D7D28EDC();

  sub_1D7A3BBFC(v10, v15);
  (*(v7 + 8))(v10, v6);
  sub_1D7A3DF78(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint, &protocol conformance descriptor for ArticleViewerBlueprint);
  sub_1D7D28F1C();
  sub_1D79FF4F8(v15);
  return v2;
}

uint64_t sub_1D7A3DAD4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1D7A3DC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v44 = AssociatedTypeWitness;
  v45 = v31;
  v46 = AssociatedConformanceWitness;
  v47 = v30;
  v12 = sub_1D7D2B07C();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1D7D3165C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v29 - v18;
  MEMORY[0x1DA70DFD0](v12, WitnessTable, v17);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v20 = a5;
  v21 = v32;
  v43 = v32;
  swift_getWitnessTable();
  v22 = sub_1D7D3057C();
  (*(v15 + 8))(v19, v14);
  v44 = v22;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = v20;
  v38 = v21;
  v23 = sub_1D7D2ABCC();
  swift_getTupleTypeMetadata2();
  v24 = sub_1D7D307BC();
  v25 = swift_getWitnessTable();
  v27 = sub_1D7A3B594(sub_1D7A3DF50, v33, v24, v23, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);

  return v27;
}

uint64_t sub_1D7A3DF78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7A3E070@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  sub_1D7A3F070(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31 - v9;
  v11 = sub_1D7D2FC7C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v16, a1, v11, v14);
  v17 = (*(v12 + 88))(v16, v11);
  if (v17 == *MEMORY[0x1E69B6698])
  {
    (*(v12 + 96))(v16, v11);
    v18 = sub_1D7D2CB2C();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    sub_1D7D2E09C();
    swift_unknownObjectRelease();
    sub_1D7A3EFC4(v10);
    v19 = type metadata accessor for EndOfRecipeModel(0);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return (*(*(v19 - 8) + 56))(a5, 0, 1, v19);
  }

  if (v17 == *MEMORY[0x1E69B6678])
  {
    goto LABEL_5;
  }

  if (v17 == *MEMORY[0x1E69B6670])
  {
    (*(v12 + 96))(v16, v11);
    sub_1D7D2E07C();
    swift_unknownObjectRelease();
    v19 = type metadata accessor for EndOfRecipeModel(0);
    goto LABEL_3;
  }

  v22 = v17 == *MEMORY[0x1E69B66A0] || v17 == *MEMORY[0x1E69B6688];
  v23 = v22 || v17 == *MEMORY[0x1E69B6658];
  if (v23 || v17 == *MEMORY[0x1E69B6668])
  {
    goto LABEL_5;
  }

  if (v17 == *MEMORY[0x1E69B6690])
  {
    (*(v12 + 96))(v16, v11);
    v25 = *v16;
    sub_1D7D2E08C();

    v19 = type metadata accessor for EndOfRecipeModel(0);
    goto LABEL_3;
  }

  if (v17 == *MEMORY[0x1E69B6680] || v17 == *MEMORY[0x1E69B6660])
  {
LABEL_5:
    (*(v12 + 8))(v16, v11);
    v21 = type metadata accessor for EndOfRecipeModel(0);
    return (*(*(v21 - 8) + 56))(a5, 1, 1, v21);
  }

  else
  {
    sub_1D7A3F070(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7D3B4D0;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1D7D315DC();
    v28 = v31;
    v29 = v32;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D79D6AE0();
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    MEMORY[0x1DA706840]("Unknown slot item %s encountered. Please update this switch statement to handle the new case.", v31);

    v30 = type metadata accessor for EndOfRecipeModel(0);
    (*(*(v30 - 8) + 56))(a5, 1, 1, v30);
    return (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_1D7A3E59C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v50 = a4;
  v51 = a5;
  v48 = a2;
  v49 = a3;
  v55 = sub_1D7D2F33C();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2F7EC();
  if (*(a1 + 16))
  {
    v14 = sub_1D7A18FFC(v12, v13);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(a1 + 56) + 8 * v14);
      sub_1D7A3F070(0, &unk_1EC9E1AC0, type metadata accessor for EndOfRecipeModel, MEMORY[0x1E69E6F90]);
      v18 = *(type metadata accessor for EndOfRecipeModel(0) - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7D3B4D0;
      *(v20 + v19) = v17;
      swift_storeEnumTagMultiPayload();
      *a6 = v20;
    }
  }

  else
  {
  }

  v47 = a6;
  v22 = sub_1D7D2F7FC();
  v23 = *(v22 + 16);
  if (!v23)
  {

    v29 = MEMORY[0x1E69E7CC0];
LABEL_24:
    MEMORY[0x1EEE9AC00](v41, v42);
    v43 = v49;
    *(&v46 - 4) = v48;
    *(&v46 - 3) = v43;
    v44 = v51;
    *(&v46 - 2) = v50;
    *(&v46 - 1) = v44;
    v45 = sub_1D7A9C6C0(sub_1D7A3F050, (&v46 - 6), v29);

    *v47 = v45;
    return result;
  }

  v25 = *(v8 + 16);
  v24 = v8 + 16;
  v26 = *(v24 + 64);
  v46 = v22;
  v27 = v22 + ((v26 + 32) & ~v26);
  v52 = *(v24 + 56);
  v53 = v25;
  v54 = v24;
  v28 = (v24 - 8);
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30 = v55;
    v53(v11, v27, v55);
    v31 = sub_1D7D2F32C();
    result = (*v28)(v11, v30);
    v32 = *(v31 + 16);
    v33 = v29[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v34 <= v29[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v29 = sub_1D79E42A4(isUniquelyReferenced_nonNull_native, v36, 1, v29);
      if (*(v31 + 16))
      {
LABEL_18:
        v37 = (v29[3] >> 1) - v29[2];
        result = sub_1D7D2FC7C();
        if (v37 < v32)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = v29[2];
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_29;
          }

          v29[2] = v40;
        }

        goto LABEL_8;
      }
    }

    if (v32)
    {
      goto LABEL_27;
    }

LABEL_8:
    v27 += v52;
    if (!--v23)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D7A3E9B0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a4;
  sub_1D7A3F070(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v35 - v9;
  v11 = sub_1D7D2FC7C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v12 + 16);
  v37 = a1;
  v17(v16, a1, v11, v14);
  v18 = (*(v12 + 88))(v16, v11);
  if (v18 != *MEMORY[0x1E69B6698])
  {
    v36 = a5;
    if (v18 == *MEMORY[0x1E69B6678])
    {
      goto LABEL_4;
    }

    if (v18 == *MEMORY[0x1E69B6670])
    {
      (*(v12 + 96))(v16, v11);
      v25 = v36;
      sub_1D7D2E07C();
      swift_unknownObjectRelease();
      v20 = type metadata accessor for EndOfRecipeModel(0);
    }

    else
    {
      if (v18 == *MEMORY[0x1E69B66A0] || v18 == *MEMORY[0x1E69B6688] || v18 == *MEMORY[0x1E69B6658] || v18 == *MEMORY[0x1E69B6668])
      {
        goto LABEL_4;
      }

      if (v18 != *MEMORY[0x1E69B6690])
      {
        if (v18 != *MEMORY[0x1E69B6680] && v18 != *MEMORY[0x1E69B6660])
        {
          sub_1D7A3F070(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D7D3B4D0;
          v39 = 0;
          v40 = 0xE000000000000000;
          sub_1D7D315DC();
          v32 = v39;
          v33 = v40;
          *(v31 + 56) = MEMORY[0x1E69E6158];
          *(v31 + 64) = sub_1D79D6AE0();
          *(v31 + 32) = v32;
          *(v31 + 40) = v33;
          MEMORY[0x1DA706840]("Unknown slot item %s encountered. Please update this switch statement to handle the new case.", v35);

          v34 = type metadata accessor for EndOfRecipeModel(0);
          (*(*(v34 - 8) + 56))(v36, 1, 1, v34);
          return (*(v12 + 8))(v16, v11);
        }

LABEL_4:
        (*(v12 + 8))(v16, v11);
        v23 = type metadata accessor for EndOfRecipeModel(0);
        return (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
      }

      (*(v12 + 96))(v16, v11);
      v29 = *v16;
      v25 = v36;
      sub_1D7D2E08C();

      v20 = type metadata accessor for EndOfRecipeModel(0);
    }

    swift_storeEnumTagMultiPayload();
    v21 = *(*(v20 - 8) + 56);
    v22 = v25;
    return v21(v22, 0, 1, v20);
  }

  (*(v12 + 96))(v16, v11);
  v19 = sub_1D7D2CB2C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1D7D2E09C();
  swift_unknownObjectRelease();
  sub_1D7A3EFC4(v10);
  v20 = type metadata accessor for EndOfRecipeModel(0);
  swift_storeEnumTagMultiPayload();
  v21 = *(*(v20 - 8) + 56);
  v22 = a5;
  return v21(v22, 0, 1, v20);
}

unint64_t sub_1D7A3EF48()
{
  result = qword_1EC9E2A48;
  if (!qword_1EC9E2A48)
  {
    type metadata accessor for EndOfRecipeModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2A48);
  }

  return result;
}

uint64_t sub_1D7A3EFC4(uint64_t a1)
{
  sub_1D7A3F070(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7A3F070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7A3F0F8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v5[4] = sub_1D7A3F1E0;
    v5[5] = v1;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D79FE25C;
    v5[3] = &block_descriptor_5;
    v4 = _Block_copy(v5);

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7A3F200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v3[5];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v6);
  v13 = (*(v7 + 8))(a1, a2, v6, v7);
  [v13 setModalPresentationStyle_];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v8 = sub_1D7D2A88C();
  if (v8 && (v9 = v8, v10 = [v8 rootViewController], v9, v10))
  {
    v11 = sub_1D7D30D4C();

    [v11 presentViewController:v13 animated:1 completion:0];
    v12 = v11;
  }

  else
  {
    v12 = v13;
  }
}

uint64_t sub_1D7A3F324()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7A3F3D0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_1D7D2C5BC();
  sub_1D7D2C4FC();
  v7 = sub_1D7D2C28C();

  if (v7)
  {
    if (a3)
    {
      sub_1D7D2B0DC();
      sub_1D7A3F968();
      sub_1D7D28A3C();
      if (swift_dynamicCast())
      {
        v8 = v14;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    sub_1D7A3F200(a2, v8);
  }

  else
  {
    sub_1D7D2C53C();
    v9 = sub_1D7D2C28C();

    if (v9)
    {
      v10 = *(*__swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120)) + 16);
      v11 = [a2 identifier];
      if (!v11)
      {
        sub_1D7D3034C();
        v12 = sub_1D7D3031C();

        v11 = v12;
      }

      v13 = v11;
      [v10 markArticle_asOffensive_];
    }
  }
}

uint64_t sub_1D7A3F568(void *a1)
{
  result = [a1 sourceChannel];
  if (result)
  {
    v4 = result;
    v5 = *(v1 + 136);
    v6 = [v5 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v7 = [v4 asSection];
      if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {
      v8 = [v4 identifier];
    }

    v9 = sub_1D7D3034C();
    v11 = v10;

    v12 = [v6 purchasedTagIDs];
    v13 = sub_1D7D309AC();

    LOBYTE(v9) = sub_1D7D053C8(v9, v11, v13);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v9)
    {
      goto LABEL_31;
    }

LABEL_8:
    v14 = [objc_msgSend(v5 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v14, v14 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      sub_1D79A4870();
      if (swift_dynamicCast())
      {
        v15 = v24;
        v16 = [v24 integerValue];
        if (v16 == -1)
        {

          goto LABEL_28;
        }

        v17 = v16;
LABEL_17:
        if (objc_getAssociatedObject(v14, ~v17))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
        }

        v27 = v25;
        v28 = v26;
        if (*(&v26 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v18 = v24;
            v19 = [v18 integerValue];

            if (((v19 ^ v17) & 1) == 0)
            {
LABEL_32:
              v23 = [a1 isPaid];
              swift_unknownObjectRelease();
              return v23 ^ 1;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_1D79F0014(&v27);
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_28:
        v20 = [objc_msgSend(v5 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v21 = [v4 identifier];
        if (!v21)
        {
          sub_1D7D3034C();
          v21 = sub_1D7D3031C();
        }

        v22 = [v20 containsTagID_];

        if ((v22 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {
      sub_1D79F0014(&v27);
    }

    v15 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  return result;
}

unint64_t sub_1D7A3F968()
{
  result = qword_1EE0C00A0;
  if (!qword_1EE0C00A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C00A0);
  }

  return result;
}

double EndOfArticleLayoutModel.frame.getter()
{
  v1 = sub_1D7D2E8FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v0, v9);
  (*(v2 + 32))(v5, v9, v1);
  sub_1D7D2E8EC();
  v11 = v10;
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t type metadata accessor for EndOfArticleLayoutModel(uint64_t a1)
{
  result = qword_1EE0C7018;
  if (!qword_1EE0C7018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A3FB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EndOfArticleLayoutModel.layoutData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v1, v6);
  v7 = sub_1D7D2E8FC();
  a1[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v6, v7);
}

double sub_1D7A3FCD8()
{
  v1 = sub_1D7D2E8FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v0, v9);
  (*(v2 + 32))(v5, v9, v1);
  sub_1D7D2E8EC();
  v11 = v10;
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t sub_1D7A3FE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v3, v6);
  v7 = sub_1D7D2E8FC();
  a3[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v6, v7);
}

uint64_t sub_1D7A3FF28(uint64_t a1)
{
  v2 = sub_1D7A40DC4(&unk_1EE0C7060, &protocol conformance descriptor for EndOfArticleLayoutModel);

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D7A3FF98(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1D7D2E8FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v1, v11);
  v12 = (*(v4 + 32))(v7, v11, v3);
  v13 = a1(v12);
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t sub_1D7A40100(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1D7D2E8FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v3, v13);
  v14 = (*(v6 + 32))(v9, v13, v5);
  v15 = a3(v14);
  (*(v6 + 8))(v9, v5);
  return v15;
}

uint64_t sub_1D7A402F4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  v6 = sub_1D7D2E8FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v4, v14);
  (*(v7 + 32))(v10, v14, v6);
  a2(a1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7A40468(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_1D7D2E8FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v4, v15);
  (*(v8 + 32))(v11, v15, v7);
  a4(a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7A40604(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v6 = sub_1D7D2E8FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v4, v14);
  (*(v7 + 32))(v10, v14, v6);
  v15 = a2(a1);
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t sub_1D7A40778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_1D7D2E8FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v4, v15);
  (*(v8 + 32))(v11, v15, v7);
  v16 = a4(a1);
  (*(v8 + 8))(v11, v7);
  return v16;
}

uint64_t sub_1D7A408FC(void (*a1)(uint64_t))
{
  v3 = sub_1D7D2E8FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v1, v11);
  v12 = (*(v4 + 32))(v7, v11, v3);
  a1(v12);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D7A40A80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_1D7D2E8FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v3, v13);
  v14 = (*(v6 + 32))(v9, v13, v5);
  a3(v14);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7A40C14(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1D7D2E8FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EndOfArticleLayoutModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v1, v11);
  v12 = (*(v4 + 32))(v7, v11, v3);
  v13 = a1(v12);
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t sub_1D7A40DC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndOfArticleLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7A40E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1D7D2E8FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A3FB80(v3, v13);
  v14 = (*(v6 + 32))(v9, v13, v5);
  v15 = a3(v14);
  (*(v6 + 8))(v9, v5);
  return v15;
}

uint64_t sub_1D7A40F64(uint64_t a1, uint64_t a2)
{
  sub_1D7A40FD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_1D7A40FD0()
{
  if (!qword_1EE0BF8A0)
  {
    v0 = sub_1D7D2E8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF8A0);
    }
  }
}

uint64_t sub_1D7A41018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A40FD0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1D7A41094(uint64_t a1)
{
  sub_1D7A40FD0();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1D7D2E8FC();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1D7A41170(void *a1)
{
  v2 = [objc_opt_self() configurationWithScale_];
  [a1 setPreferredSymbolConfiguration:v2 forImageInState:0];
  [a1 setContentVerticalAlignment_];
  [a1 setContentHorizontalAlignment_];
  v3 = [a1 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setTextAlignment_];
  }

  v5 = [objc_opt_self() labelColor];
  [a1 setTintColor_];
}

uint64_t sub_1D7A4128C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EC9DFD78 != -1)
  {
    swift_once();
  }

  v6 = sub_1D7D29AFC();
  __swift_project_value_buffer(v6, qword_1ECA0BB00);

  v7 = sub_1D7D29ADC();
  v8 = sub_1D7D30C6C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D7B06D4C(a1, a2, &v14);
    _os_log_impl(&dword_1D7987000, v7, v8, "PostPurchaseOnboardingPrewarmer: prewarming article [%s]", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1DA7102E0](v10, -1, -1);
    MEMORY[0x1DA7102E0](v9, -1, -1);
  }

  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  return (*(v12 + 24))(a1, a2, v11, v12);
}

id sub_1D7A41490(void *a1)
{
  v3 = sub_1D7D2824C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v17 - v11;
  result = [a1 contentURL];
  if (result)
  {
    v14 = result;
    sub_1D7D281EC();

    (*(v4 + 32))(v12, v7, v3);
    v15 = *(v1 + 24);
    v16 = sub_1D7D281BC();
    [v15 openURL:v16 options:0 completion:0];

    return (*(v4 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_1D7A415F0(void *a1)
{
  sub_1D7998DF0(0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 sourceChannel];
  if (result)
  {
    v9 = result;
    v10 = [a1 contentURL];
    if (!v10)
    {
      swift_unknownObjectRelease();
      v17 = sub_1D7D2824C();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
      sub_1D7A41B54(v7, sub_1D7998DF0);
      return 0;
    }

    v11 = v10;
    sub_1D7D281EC();

    v12 = sub_1D7D2824C();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    sub_1D7A41B54(v7, sub_1D7998DF0);
    v13 = *(v1 + 16);
    v14 = [v13 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v15 = [v9 asSection];
      if (!v15 || (v16 = [v15 parentID], swift_unknownObjectRelease(), !v16))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_10;
      }
    }

    else
    {
      v16 = [v9 identifier];
    }

    v18 = sub_1D7D3034C();
    v20 = v19;

    v21 = [v14 purchasedTagIDs];
    v22 = sub_1D7D309AC();

    LOBYTE(v21) = sub_1D7D053C8(v18, v20, v22);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v21)
    {
      goto LABEL_33;
    }

LABEL_10:
    v23 = [objc_msgSend(v13 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v23, v23 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37 = v35;
    v38 = v36;
    if (*(&v36 + 1))
    {
      sub_1D79A4870();
      if (swift_dynamicCast())
      {
        v24 = v34;
        v25 = [v34 integerValue];
        if (v25 == -1)
        {

          goto LABEL_30;
        }

        v26 = v25;
LABEL_19:
        if (objc_getAssociatedObject(v23, ~v26))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v35 = 0u;
          v36 = 0u;
        }

        v37 = v35;
        v38 = v36;
        if (*(&v36 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v27 = v34;
            v28 = [v27 integerValue];

            if (((v28 ^ v26) & 1) == 0)
            {
LABEL_34:
              v32 = [a1 isPaid];
              swift_unknownObjectRelease();
              return v32 ^ 1;
            }

            goto LABEL_30;
          }
        }

        else
        {
          sub_1D7A41B54(&v37, sub_1D79F0070);
        }

        if ((v26 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_30:
        v29 = [objc_msgSend(v13 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v30 = [v9 identifier];
        if (!v30)
        {
          sub_1D7D3034C();
          v30 = sub_1D7D3031C();
        }

        v31 = [v29 containsTagID_];

        if ((v31 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_33:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {
      sub_1D7A41B54(&v37, sub_1D79F0070);
    }

    v24 = 0;
    v26 = 0;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1D7A41B54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArticleViewerPageFeaturePostAction.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7A41C44()
{
  result = qword_1EC9E2A50;
  if (!qword_1EC9E2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2A50);
  }

  return result;
}

void *sub_1D7A41CA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D799CC84(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
    result = sub_1D7D28D2C();
    if (v10[3])
    {
      v6 = type metadata accessor for IssueViewerModule();
      v7 = objc_allocWithZone(v6);
      sub_1D799CC84(v11, &v7[OBJC_IVAR___TSIssueViewerModule_resolver]);
      *&v7[OBJC_IVAR___TSIssueViewerModule_tracker] = v5;
      sub_1D799CC84(v10, &v7[OBJC_IVAR___TSIssueViewerModule_contextBuilder]);
      v9.receiver = v7;
      v9.super_class = v6;
      v8 = objc_msgSendSuper2(&v9, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v11);
      result = __swift_destroy_boxed_opaque_existential_1(v10);
      a2[3] = v6;
      a2[4] = &protocol witness table for IssueViewerModule;
      *a2 = v8;
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

uint64_t sub_1D7A41DF4()
{
  type metadata accessor for IssueViewerViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E2A58, &protocol descriptor for IssueViewerStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2A60, &protocol descriptor for IssueViewerRouterType, 1);
  sub_1D7D291EC();
  type metadata accessor for IssueViewerRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E2A68, &protocol descriptor for IssueViewerEventHandlerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2A70, &protocol descriptor for IssueViewerInteractorType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2A78, &protocol descriptor for IssueViewerDataManagerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2A80, &protocol descriptor for IssueContentViewControllerFactoryType, 1);
  sub_1D7D291EC();
}

char *sub_1D7A42040(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A80, &protocol descriptor for IssueContentViewControllerFactoryType, 1);
  result = sub_1D7D28D2C();
  if (!v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A58, &protocol descriptor for IssueViewerStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v21)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A68, &protocol descriptor for IssueViewerEventHandlerType, 0);
  result = sub_1D7D28D2C();
  v3 = v18;
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBEA0, MEMORY[0x1E69D68B0], 1);
  result = sub_1D7D28D2C();
  if (v17[3])
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v6 = MEMORY[0x1EEE9AC00](v5, v5);
    v8 = (&v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v11 = MEMORY[0x1EEE9AC00](v10, v10);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_1D7A42A58(*v8, *v13, v3, v4, v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7A42330@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0, &protocol descriptor for BaseStylerType, 1);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for IssueViewerStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A5C38;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A423E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v6);
  v3 = type metadata accessor for IssueViewerRouter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_1D799D69C(v6, v4 + 24);
  a2[3] = v3;
  a2[4] = &off_1F52A9AF8;
  *a2 = v4;
  return result;
}

void sub_1D7A42460(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for IssueViewerViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

void *sub_1D7A424E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A70, &protocol descriptor for IssueViewerInteractorType, 0);
  result = sub_1D7D28D2C();
  v5 = v28;
  if (v28)
  {
    v6 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E2A60, &protocol descriptor for IssueViewerRouterType, 1);
    result = sub_1D7D28D2C();
    if (v27)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for IssueViewerRouter();
      v25[3] = v13;
      v25[4] = &off_1F52A9AF8;
      v25[0] = v12;
      type metadata accessor for IssueViewerEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v13);
      v16 = MEMORY[0x1EEE9AC00](v15, v15);
      v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v23 = v13;
      v24 = &off_1F52A9AF8;
      *&v22 = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_1D799D69C(&v22, (v14 + 6));
      *(v5 + 24) = &off_1F52ADE68;
      swift_unknownObjectWeakAssign();
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      *a2 = v14;
      a2[1] = &off_1F52ADE80;
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

void *sub_1D7A4279C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A78, &protocol descriptor for IssueViewerDataManagerType, 0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
    result = sub_1D7D28D2C();
    if (v6[3])
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D798C468(0, &qword_1EC9E2A90, &protocol descriptor for IssueViewerCoordinatorType, 1);
      sub_1D7D28D2C();
      type metadata accessor for IssueViewerInteractor();
      swift_allocObject();
      result = sub_1D7C6C0EC(v7, v8, v6, &v5);
      *a2 = result;
      a2[1] = &off_1F52AF4B8;
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

void *sub_1D7A428FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A88, &protocol descriptor for IssueLoaderType, 1);
  result = sub_1D7D28D2C();
  if (v6)
  {
    type metadata accessor for IssueViewerDataManager();
    v4 = swift_allocObject();
    result = sub_1D799D69C(&v5, v4 + 16);
    *a2 = v4;
    a2[1] = &off_1F52A0378;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A429A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for IssueEmbeddableViewControllerFactory();
    v7 = swift_allocObject();
    result = sub_1D799D69C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_1F529DA80;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1D7A42A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v37 = a5;
  v36 = a4;
  v35 = a3;
  v7 = sub_1D7D2ACCC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = type metadata accessor for IssueEmbeddableViewControllerFactory();
  v44[3] = v9;
  v44[4] = &off_1F529DA80;
  v44[0] = a1;
  v10 = type metadata accessor for IssueViewerStyler();
  v42 = v10;
  v43 = &off_1F52A5C38;
  v41[0] = a2;
  v11 = type metadata accessor for IssueViewerViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v44, v9);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v19 = MEMORY[0x1EEE9AC00](v18, v18);
  v21 = (&v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v16;
  v24 = *v21;
  v40[3] = v9;
  v40[4] = &off_1F529DA80;
  v39[4] = &off_1F52A5C38;
  v40[0] = v23;
  v39[3] = v10;
  v39[0] = v24;
  v25 = &v12[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_viewerIdentifier];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *&v12[v26] = sub_1D7D2A58C();
  v27 = OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_navigationItemStyle;
  sub_1D7D2ACBC();
  sub_1D7A39688(0);
  swift_allocObject();
  *&v12[v27] = sub_1D7D28ECC();
  v28 = &v12[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v12[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_afterLoad];
  *v29 = 0;
  *(v29 + 1) = 0;
  sub_1D799CC84(v40, &v12[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewControllerFactory]);
  sub_1D799CC84(v39, &v12[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_styler]);
  v30 = &v12[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_eventHandler];
  v31 = v36;
  *v30 = v35;
  v30[1] = v31;
  v32 = v37;
  sub_1D799CC84(v37, &v12[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager]);
  v38.receiver = v12;
  v38.super_class = v11;
  v33 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  *(*&v33[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_eventHandler] + 24) = &off_1F52B21B0;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v33;
}

id sub_1D7A42DFC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_1D7A42E68()
{
  v0 = sub_1D7D2AC3C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = [v9 secondarySystemFillColor];
  v12 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v13 = [v11 resolvedColorWithTraitCollection_];

  *v8 = 0;
  *(v8 + 1) = v10;
  v8[16] = 0;
  *(v8 + 3) = v13;
  v14 = *(v1 + 104);
  v14(v8, *MEMORY[0x1E69D7C48], v0);
  v14(v4, *MEMORY[0x1E69D7C60], v0);
  return MEMORY[0x1DA7086C0](v8, v4, 0, 0, 0, 0, 2, 0);
}

id sub_1D7A43074()
{
  v0 = [objc_opt_self() secondarySystemFillColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithPointSize:5 weight:3 scale:23.0];
  sub_1D79EB1FC();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D41F60;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v13[4] = sub_1D7A42DFC;
  v13[5] = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D7B5C448;
  v13[3] = &block_descriptor_6;
  v5 = _Block_copy(v13);
  v6 = v2;
  v7 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  *(v3 + 32) = v7;
  *(v3 + 40) = v0;
  sub_1D79F85FC();
  v8 = v0;
  v9 = sub_1D7D3062C();

  v10 = [v1 configurationWithPaletteColors_];

  v11 = [v6 configurationByApplyingConfiguration_];
  return v11;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7A43288(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D7A432AC, 0, 0);
}

uint64_t sub_1D7A432AC()
{
  v1 = v0[4];
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D7A43370;
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x1EEE22168](v6, v5, v3, v2);
}

uint64_t sub_1D7A43370(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7A434A4, 0, 0);
  }
}

uint64_t sub_1D7A434A4()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1D7A4356C();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

unint64_t sub_1D7A4356C()
{
  result = qword_1EC9E2A98;
  if (!qword_1EC9E2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2A98);
  }

  return result;
}

unint64_t sub_1D7A435D4()
{
  result = qword_1EC9E2AA0;
  if (!qword_1EC9E2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2AA0);
  }

  return result;
}

uint64_t RecipeViewerModule.createViewController(from:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1D7D28A2C();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for RecipeViewerViewController();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_1D7D28CFC();

  if (v5)
  {

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A4372C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AA8, &protocol descriptor for RecipeViewerBlueprintProviderType, 1);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E2AB0, &protocol descriptor for RecipeViewerObserverType, 0);
  sub_1D7D28BBC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

void *RecipeViewerModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t RecipeViewerModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A43900(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = sub_1D7D28A2C();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for RecipeViewerViewController();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  v6 = sub_1D7D28CFC();

  if (v6)
  {

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1D7A43AB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
    result = sub_1D7D28D2C();
    if (v9)
    {
      v6 = type metadata accessor for RecipeViewerModule();
      v7 = swift_allocObject();
      sub_1D799D69C(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_1D799D69C(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &protocol witness table for RecipeViewerModule;
      *a2 = v7;
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

uint64_t sub_1D7A43BCC()
{
  type metadata accessor for RecipeViewerViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E2AC0, &protocol descriptor for RecipeViewerStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2AC8, &protocol descriptor for RecipeViewerRouterType, 1);
  sub_1D7D291EC();
  type metadata accessor for RecipeViewerRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E2AD0, &protocol descriptor for RecipeViewerEventHandlerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2AD8, &protocol descriptor for RecipeViewerInteractorType, 0);
  sub_1D7D291EC();
  type metadata accessor for RecipeViewerInteractor();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E2AE0, &protocol descriptor for RecipeViewerDataManagerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2AE8, &protocol descriptor for RecipeViewerTrackerType, 1);
  sub_1D7D291EC();

  sub_1D7A46224(0);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7A46918(0, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
  sub_1D7D291DC();

  sub_1D7A463B8(0);
  sub_1D7D291DC();

  type metadata accessor for RecipeViewerPageViewControllerProvider();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E2B30, &protocol descriptor for RecipeViewerPageBlueprintFactoryType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E2B38, &protocol descriptor for RecipeViewerBarButtonItemFactoryType, 1);
  sub_1D7D291EC();
}

char *sub_1D7A44014(void *a1)
{
  v2 = sub_1D7D2AC3C();
  v80 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v67 - v8;
  v10 = sub_1D7D2ACCC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7D28D2C();
  v15 = v104;
  if (!v104)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2B38, &protocol descriptor for RecipeViewerBarButtonItemFactoryType, 1);
  result = sub_1D7D28D2C();
  if (!v103)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AA8, &protocol descriptor for RecipeViewerBlueprintProviderType, 1);
  result = sub_1D7D28D2C();
  if (!v101[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v2;
  v79 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A468B4();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AD0, &protocol descriptor for RecipeViewerEventHandlerType, 0);
  result = sub_1D7D28D2C();
  v17 = v99;
  if (!v99)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v77 = v100;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E2B80, MEMORY[0x1E6997320], 1);
  result = sub_1D7D28D2C();
  if (!v98[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A46224(0);
  result = sub_1D7D28D1C();
  v76 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A46918(0, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
  result = sub_1D7D28D1C();
  v83 = result;
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeRadarReporter();
  result = sub_1D7D28D1C();
  v75 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AC0, &protocol descriptor for RecipeViewerStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v97)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v74 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v90[0])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v84 = v17;
  v85 = v16;
  v82 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v19 = result;
    v94 = v18;
    v95 = sub_1D7A464E4(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
    v93[0] = v19;
    sub_1D7D2A50C();
    swift_allocObject();
    v81 = sub_1D7D2A4FC();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
    v73 = &v67;
    v21 = MEMORY[0x1EEE9AC00](v20, v20);
    v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
    v72 = &v67;
    v26 = MEMORY[0x1EEE9AC00](v25, v25);
    v28 = (&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28, v26);
    v30 = *v23;
    v31 = *v28;
    v32 = type metadata accessor for RecipeViewerBarButtonItemFactory();
    v94 = v32;
    v95 = &off_1F52A3B80;
    v93[0] = v30;
    v33 = type metadata accessor for RecipeViewerStyler();
    v91 = v33;
    v92 = &off_1F529F470;
    v90[0] = v31;
    v69 = type metadata accessor for RecipeViewerViewController();
    v34 = objc_allocWithZone(v69);
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
    v71 = &v67;
    v36 = MEMORY[0x1EEE9AC00](v35, v35);
    v38 = (&v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38, v36);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
    v70 = &v67;
    v41 = MEMORY[0x1EEE9AC00](v40, v40);
    v43 = (&v67 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43, v41);
    v45 = *v38;
    v46 = *v43;
    v89[3] = v32;
    v89[4] = &off_1F52A3B80;
    v88[4] = &off_1F529F470;
    v89[0] = v45;
    v88[3] = v33;
    v88[0] = v46;
    v47 = OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_eventManager;
    sub_1D7A46918(0, &unk_1EC9E2B90, sub_1D7A46980, &type metadata for RecipeViewerViewController.Event, MEMORY[0x1E69D6460]);
    swift_allocObject();
    *&v34[v47] = sub_1D7D28C9C();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v48 = &v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm];
    *v48 = 0;
    v48[1] = 0;
    v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController__isPagingEnabled] = 1;
    v49 = OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_observableScrollView;
    v87 = 0;
    v68 = MEMORY[0x1E69D6538];
    sub_1D7A46A54(0, &qword_1EE0C0420, sub_1D7A469D4, MEMORY[0x1E69D6538]);
    swift_allocObject();
    *&v34[v49] = sub_1D7D28ECC();
    *&v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_config] = v82;
    sub_1D799CC84(v89, &v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_barButtonItemFactory]);
    sub_1D799CC84(v101, &v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_blueprintProvider]);
    v50 = v84;
    *&v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_bundleSubscriptionManager] = v85;
    v51 = &v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_eventHandler];
    v52 = v77;
    *v51 = v50;
    v51[1] = v52;
    sub_1D799CC84(v98, &v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_externalRecipeTheme]);
    v53 = v75;
    v54 = v76;
    *&v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_pageViewController] = v76;
    *&v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_pageBlueprintProvider] = v83;
    *&v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_radarReporter] = v53;
    sub_1D799CC84(v88, &v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_styler]);
    *&v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_commands] = v81;
    *(v9 + 3) = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 0;
    v55 = *(v80 + 13);
    v56 = v78;
    v55(v9, *MEMORY[0x1E69D7C48], v78);
    v55(v79, *MEMORY[0x1E69D7C60], v56);
    v57 = v82;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v80 = v54;

    v78 = v53;

    sub_1D7D2AC7C();
    v58 = v68;
    sub_1D7A46A54(0, &qword_1EE0C0470, MEMORY[0x1E69D7C68], v68);
    swift_allocObject();
    *&v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_navigationItemStyle] = sub_1D7D28ECC();
    v87 = 0;
    sub_1D7A46A54(0, &qword_1EC9E2BA0, sub_1D7A46AB8, v58);
    swift_allocObject();
    *&v34[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_navigationTitleView] = sub_1D7D28ECC();
    v86.receiver = v34;
    v86.super_class = v69;
    v59 = objc_msgSendSuper2(&v86, sel_initWithNibName_bundle_, 0, 0);
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v57;
    v62 = (v59 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm);
    v63 = *(v59 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm);
    v64 = *(v59 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm + 8);
    *v62 = sub_1D7A46AEC;
    v62[1] = v61;
    v65 = v59;

    sub_1D79AD740(v63, v64);

    *(*(v65 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_eventHandler) + 24) = &off_1F529F6C0;
    swift_unknownObjectWeakAssign();

    v66 = *(v65 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_pageViewController);
    sub_1D7D2AACC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v89);
    __swift_destroy_boxed_opaque_existential_1(v90);
    __swift_destroy_boxed_opaque_existential_1(v93);
    __swift_destroy_boxed_opaque_existential_1(v96);
    __swift_destroy_boxed_opaque_existential_1(v102);
    return v65;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D7A44CF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0, &protocol descriptor for BaseStylerType, 1);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for RecipeViewerStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F529F470;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A44DA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for RecipeViewerRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_1D799D69C(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_1F529F658;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7A44E60(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeViewerViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

void *sub_1D7A44EE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AD8, &protocol descriptor for RecipeViewerInteractorType, 0);
  result = sub_1D7D28D2C();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AC8, &protocol descriptor for RecipeViewerRouterType, 1);
  result = sub_1D7D28D2C();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AE8, &protocol descriptor for RecipeViewerTrackerType, 1);
  result = sub_1D7D28D2C();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x1EEE9AC00](v12, v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_1D7A46658(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_1F529F628;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7A45188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AE0, &protocol descriptor for RecipeViewerDataManagerType, 0);
  result = sub_1D7D28D2C();
  v5 = v28;
  if (!v28)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AA8, &protocol descriptor for RecipeViewerBlueprintProviderType, 1);
  result = sub_1D7D28D2C();
  if (!v27)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2B30, &protocol descriptor for RecipeViewerPageBlueprintFactoryType, 1);
  result = sub_1D7D28D2C();
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A46918(0, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (&v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for RecipeViewerPageBlueprintFactory();
    v23[3] = v14;
    v23[4] = &off_1F529C440;
    v23[0] = v13;
    type metadata accessor for RecipeViewerInteractor();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    v17 = MEMORY[0x1EEE9AC00](v16, v16);
    v19 = (&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    *(v15 + 112) = v14;
    *(v15 + 120) = &off_1F529C440;
    *(v15 + 88) = v21;
    *(v15 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v15 + 168) = 0;
    *(v15 + 152) = 0u;
    *(v15 + 136) = 0u;
    *(v15 + 32) = v5;
    *(v15 + 40) = v6;
    sub_1D799D69C(&v26, v15 + 48);
    *(v15 + 128) = v7;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    *a2 = v15;
    a2[1] = &off_1F529F798;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7A45504(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &qword_1EC9E2B68, &protocol descriptor for RecipeViewerCoordinatorType, 1);
  sub_1D7D28D2C();
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    v5 = *(v4 + 16);

    v5(v6, &off_1F529F790, v3, v4);
  }

  swift_beginAccess();
  sub_1D7A4652C(v8, v2 + 136);
  swift_endAccess();
  return sub_1D7A465FC(v8);
}

void *sub_1D7A455F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0, MEMORY[0x1E69B6230], 1);
  result = sub_1D7D28D2C();
  if (v6)
  {
    type metadata accessor for RecipeViewerDataManager();
    v4 = swift_allocObject();
    result = sub_1D799D69C(&v5, v4 + 16);
    *a2 = v4;
    a2[1] = &off_1F529F4C0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A456A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RecipeViewerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F529F788;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A4572C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A46918(0, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeViewerPageViewControllerProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A463B8(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AA1C();
    swift_allocObject();
    sub_1D7D2AA0C();
    sub_1D7A46224(0);
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B4EC();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7A45898(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &unk_1EE0CBEA0, MEMORY[0x1E69D68B0], 1);
  result = sub_1D7D28D2C();
  if (v4)
  {
    sub_1D799D69C(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1D7A464E4(&qword_1EC9E2B60, sub_1D7A46224, MEMORY[0x1E69D7BA0]);
    sub_1D7D291FC(&v3);
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A45994()
{
  sub_1D79D7B34(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D7A46918(0, &qword_1EC9E2B50, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7708]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1D79D7B9C();
  v5 = sub_1D79D7BF0();
  MEMORY[0x1DA706A70](MEMORY[0x1E69E7CC0], &type metadata for RecipeViewerPage, v4, v5);
  sub_1D79D7D18();
  sub_1D7D29FBC();
  sub_1D7A46918(0, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
  swift_allocObject();
  return sub_1D7D2ADFC();
}

uint64_t sub_1D7A45B0C(void *a1)
{
  v2 = sub_1D7D2B99C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A46918(0, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2B97C();
    sub_1D7A463B8(0);
    swift_allocObject();
    return sub_1D7D2B1DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7A45C28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CEEE0, &protocol descriptor for RecipeModuleType, 1);
  result = sub_1D7D28D2C();
  if (v4)
  {
    type metadata accessor for RecipeViewerPageViewControllerProvider();
    v2 = swift_allocObject();
    sub_1D799D69C(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7A45CC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
  result = sub_1D7D28D2C();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0, MEMORY[0x1E69B6230], 1);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF600, MEMORY[0x1E69B64B0], 1);
  result = sub_1D7D28D2C();
  if (v9)
  {
    v6 = type metadata accessor for RecipeViewerPageBlueprintFactory();
    v7 = swift_allocObject();
    *(v7 + 144) = MEMORY[0x1E69E7CC8];
    *(v7 + 16) = v5;
    sub_1D799D69C(&v12, v7 + 24);
    sub_1D799D69C(&v10, v7 + 64);
    result = sub_1D799D69C(&v8, v7 + 104);
    a2[3] = v6;
    a2[4] = &off_1F529C440;
    *a2 = v7;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7A45E88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v35)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2AC0, &protocol descriptor for RecipeViewerStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v34)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeRadarReporter();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C7B20, &protocol descriptor for RecipeCoordinatorType, 0);
  result = sub_1D7D28D2C();
  v6 = v31;
  if (!v31)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v36;
  v27 = v35;
  v25 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
  result = sub_1D7D28D2C();
  if (v30)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for RecipeViewerStyler();
    v28[3] = v13;
    v28[4] = &off_1F529F470;
    v28[0] = v12;
    v14 = type metadata accessor for RecipeViewerBarButtonItemFactory();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v28, v13);
    v17 = MEMORY[0x1EEE9AC00](v16, v16);
    v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[7] = v13;
    v15[8] = &off_1F529F470;
    v22 = v26;
    v15[2] = v27;
    v15[3] = v22;
    v15[4] = v21;
    v15[16] = v5;
    v23 = v25;
    v15[9] = v6;
    v15[10] = v23;
    sub_1D799D69C(&v29, (v15 + 11));
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = __swift_destroy_boxed_opaque_existential_1(v33);
    a2[3] = v14;
    a2[4] = &off_1F52A3B80;
    *a2 = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D7A46224(uint64_t a1)
{
  if (!qword_1EC9E2AF0)
  {
    sub_1D7A46918(255, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
    type metadata accessor for RecipeViewerPageViewControllerProvider();
    type metadata accessor for RecipeViewerViewController();
    sub_1D7A463B8(255);
    sub_1D7A46454();
    sub_1D7A464E4(&qword_1EC9E2B18, type metadata accessor for RecipeViewerPageViewControllerProvider, &unk_1D7D56748);
    sub_1D7A464E4(&qword_1EC9E2B20, type metadata accessor for RecipeViewerViewController, &protocol conformance descriptor for RecipeViewerViewController);
    sub_1D7A464E4(&qword_1EC9E2B28, sub_1D7A463B8, MEMORY[0x1E69D7E58]);
    v1 = sub_1D7D2B4FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2AF0);
    }
  }
}

void sub_1D7A463B8(uint64_t a1)
{
  if (!qword_1EC9E2B08)
  {
    sub_1D7A46918(255, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
    sub_1D7A46454();
    v1 = sub_1D7D2B1EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2B08);
    }
  }
}

unint64_t sub_1D7A46454()
{
  result = qword_1EC9E2B10;
  if (!qword_1EC9E2B10)
  {
    sub_1D7A46918(255, &unk_1EC9E2AF8, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7CE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2B10);
  }

  return result;
}

uint64_t sub_1D7A464E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7A4652C(uint64_t a1, uint64_t a2)
{
  sub_1D7A46590(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D7A46590(uint64_t a1)
{
  if (!qword_1EC9E2B70)
  {
    sub_1D798C468(255, &qword_1EC9E2B68, &protocol descriptor for RecipeViewerCoordinatorType, 1);
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E2B70);
    }
  }
}

uint64_t sub_1D7A465FC(uint64_t a1)
{
  sub_1D7A46590(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D7A46658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for RecipeViewerRouter();
  v34[3] = v9;
  v34[4] = &off_1F529F658;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_1F529F788;
  v31[0] = a4;
  type metadata accessor for RecipeViewerEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x1EEE9AC00](v16, v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_1F529F658;
  v27 = &off_1F529F788;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_1D799D69C(&v28, (v10 + 6));
  sub_1D799D69C(&v25, (v10 + 11));
  *(a1 + 24) = &off_1F529F610;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

unint64_t sub_1D7A468B4()
{
  result = qword_1EE0BEDA0;
  if (!qword_1EE0BEDA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEDA0);
  }

  return result;
}

void sub_1D7A46918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D7A46980()
{
  result = qword_1EC9E2C80;
  if (!qword_1EC9E2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2C80);
  }

  return result;
}

unint64_t sub_1D7A46A08()
{
  result = qword_1EE0BF110;
  if (!qword_1EE0BF110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF110);
  }

  return result;
}

void sub_1D7A46A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A46AF4()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

void sub_1D7A46B9C(_BYTE *a1)
{
  sub_1D7A4AB2C(0, &unk_1EC9E2C90, MEMORY[0x1E69E6370], MEMORY[0x1E69E8638]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13[-v6];
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;

    if (v10 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    *(v11 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_isPrimary) = 1;
    v13[15] = 1;
    v12 = v11;
    sub_1D7A4AB2C(0, &unk_1EC9E7130, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
    sub_1D7D308AC();

    (*(v4 + 8))(v7, v3);
  }

  if (a1)
  {
    a1[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_isPrimary] = 0;
    v13[14] = 0;
    sub_1D7A4AB2C(0, &unk_1EC9E7130, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
    sub_1D7D308AC();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t RecipeViewerViewController.observableScrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_observableScrollView;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1D7A46EC4(uint64_t a1, Swift::String *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = (Strong + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm);
    v6 = *(Strong + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm);
    v5 = *(Strong + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm + 8);
    *v4 = 0;
    v4[1] = 0;
    v7 = Strong;
    sub_1D79AD740(v6, v5);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    RecipeViewerViewController.navigateToPage(with:)(a2[1]);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_unknownObjectRetain();

    sub_1D7A4AD18();
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall RecipeViewerViewController.navigateToPage(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v2 = sub_1D7D2918C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A4A844(0, &qword_1EC9E2B50, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7708]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7A2BB00();
  sub_1D7D309EC();
  sub_1D7D30A5C();
  (*(v9 + 8))(v12, v8);
  if (v19 == v18)
  {
    LOBYTE(v19) = 0;
    sub_1D7D2917C();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v15 = countAndFlagsBits;
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = object;

    sub_1D7D28C8C();

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_1D7A4902C(countAndFlagsBits, object);
  }
}

id RecipeViewerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D7D3031C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RecipeViewerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RecipeViewerViewController.viewDidLoad()()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_pageViewController];
  [v2 willMoveToParentViewController_];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  sub_1D7D2ADEC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v19);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D28EFC();

  __swift_destroy_boxed_opaque_existential_1(v19);
  v7 = *&v1[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm];
  if (v7)
  {
    v8 = *&v1[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm + 8];

    v7(v9);
    sub_1D79AD740(v7, v8);
  }

  v10 = [v1 traitCollection];
  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;

    v13 = [objc_opt_self() systemBackgroundColor];
    [v12 setBackgroundColor_];

    sub_1D7A4AB7C(0, &qword_1EE0BE900, sub_1D79F3CAC, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7D3B4E0;
    v15 = sub_1D7D2C9FC();
    v16 = MEMORY[0x1E69DC130];
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    v17 = sub_1D7D2C9EC();
    v18 = MEMORY[0x1E69DC0F8];
    *(v14 + 48) = v17;
    *(v14 + 56) = v18;
    sub_1D7D30DCC();
    swift_unknownObjectRelease();

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1D7A4784C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D7A4A844(0, &qword_1EC9E2B50, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7708]);
    sub_1D7A2BB00();
    sub_1D7D309EC();
    sub_1D7D30A5C();
    if (v5 != v4)
    {
      sub_1D7D28C6C();
    }
  }
}

void sub_1D7A47938(void **a1, id *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v3)
    {
      if (!v4)
      {
        [v3 setContentAlpha_];
        goto LABEL_9;
      }

      sub_1D7D2BDAC();
      v4 = v4;
      v7 = v3;
      v8 = sub_1D7D311DC();

      if ((v8 & 1) == 0)
      {
        [v7 setContentAlpha_];
LABEL_7:
        [v4 setContentAlpha_];
LABEL_9:
        v9 = [v6 navigationItem];
        [v9 setTitleView_];

        v6 = v9;
      }
    }

    else if (v4)
    {
      goto LABEL_7;
    }
  }
}

Swift::Void __swiftcall RecipeViewerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D7D2C09C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_viewWillAppear_, a1, v8);
  v11 = [v2 navigationItem];
  v12 = [v11 titleView];

  if (!v12)
  {
    [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    (*(v6 + 104))(v10, *MEMORY[0x1E69D86B0], v5);
    v13 = objc_allocWithZone(sub_1D7D2BDAC());
    v14 = sub_1D7D2BD7C();
    v15 = [v2 tabBarController];
    if (v15)
    {
      v16 = v15;
      sub_1D7D2BD8C();
    }

    v12 = [v2 navigationItem];
    [v12 setTitleView_];
  }

  sub_1D7D2AA3C();
  if (v17[1])
  {
    sub_1D79D7CBC(v17, v18);
    sub_1D7A47CC0(v18);
    sub_1D7A2BB90(v18);
  }

  else
  {
    sub_1D79D7C44(v17);
  }
}