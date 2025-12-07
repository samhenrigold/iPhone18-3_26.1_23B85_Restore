uint64_t _s19NewsPersonalization010Com_Apple_a1_B19_RecipeSessionEventV06OneOf_G0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v41 - v24;
  sub_1C6CEFF1C(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 + 56);
  sub_1C6CEFF80(a1, v29, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEFF80(v42, &v29[v31], type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C6CEFF80(v29, v21, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C6CEB5D8(&v29[v31], v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
        v33 = _s19NewsPersonalization010Com_Apple_a1_b19_RecipeSessionEventE5SavedV2eeoiySbAC_ACtFZ_0(v21, v9);
        v34 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved;
        sub_1C6CEB39C(v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
        v35 = v21;
LABEL_13:
        sub_1C6CEB39C(v35, v34);
        v39 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event;
        goto LABEL_14;
      }

      v36 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved;
      v37 = v21;
    }

    else
    {
      sub_1C6CEFF80(v29, v17, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v38 = v41;
        sub_1C6CEB5D8(&v29[v31], v41, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
        v33 = _s19NewsPersonalization010Com_Apple_a1_b19_RecipeSessionEventE6ViewedV2eeoiySbAC_ACtFZ_0(v17, v38);
        v34 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
        sub_1C6CEB39C(v38, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
        v35 = v17;
        goto LABEL_13;
      }

      v36 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
      v37 = v17;
    }
  }

  else
  {
    sub_1C6CEFF80(v29, v25, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6CEB5D8(&v29[v31], v13, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
      v33 = _s19NewsPersonalization010Com_Apple_a1_B33_RecipeSessionEventCookModeViewedV2eeoiySbAC_ACtFZ_0(v25, v13);
      v34 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
      sub_1C6CEB39C(v13, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
      v35 = v25;
      goto LABEL_13;
    }

    v36 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed;
    v37 = v25;
  }

  sub_1C6CEB39C(v37, v36);
  v33 = 0;
  v39 = sub_1C6CEFF1C;
LABEL_14:
  sub_1C6CEB39C(v29, v39);
  return v33 & 1;
}

uint64_t sub_1C6CEFA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6CEFBD4(uint64_t a1)
{
  sub_1C6CEAAE0(319, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6CEAAE0(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6CEFCD0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C6CEFD58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6CEAAE0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6CEFDD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CEFD58(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6CEFE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6CEAAE0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6CEFE9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CEAAE0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C6CEFF1C(uint64_t a1)
{
  if (!qword_1EC1D9468)
  {
    type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9468);
    }
  }
}

uint64_t sub_1C6CEFF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF0388(v1 + *(v8 + 24), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6CF0408(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(uint64_t a1)
{
  result = qword_1EDCE4B70;
  if (!qword_1EDCE4B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF0388(v1 + *(v7 + 20), v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
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
    return sub_1C6CF0408(v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6CF0388(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CF2DD8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6CF0408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6CF2DD8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleSeen.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF0388(v0 + *(v6 + 24), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6CF0408(v5, &qword_1EDCDFD00, v1);
  return v8;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0) + 20);
  sub_1C6CF0408(v1 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0) + 24);
  sub_1C6CF0408(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CF07F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF0388(a1 + *(v8 + 20), v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
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
    return sub_1C6CF0408(v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6CF09B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0) + 20);
  sub_1C6CF0408(a2 + v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleSeen.article.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
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
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6CF0388(v1 + v16, v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
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
      sub_1C6CF0408(v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6CF0D54;
}

void sub_1C6CF0D54(uint64_t **a1, char a2)
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
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6CF0408(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B7F770(v5);
  }

  else
  {
    sub_1C6CF0408(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleSeen.hasArticle.getter()
{
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF0388(v0 + *(v5 + 20), v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6CF0408(v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleSeen.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0) + 20);
  sub_1C6CF0408(v0 + v1, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6CF1034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF0388(a1 + *(v9 + 24), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6CF0408(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6CF11CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0) + 24);
  sub_1C6CF0408(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleSeen.duration.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
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
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6CF0388(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6CF0408(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6CF1554;
}

void sub_1C6CF1554(uint64_t **a1, char a2)
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
    sub_1C6CF0408(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6CF0408(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleSeen.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0) + 24);
  sub_1C6CF0408(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6CF1878()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4BA0);
  __swift_project_value_buffer(v0, qword_1EDCE4BA0);
  sub_1C6CF2DD8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
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

uint64_t static Com_Apple_News_Personalization_SessionEventArticleSeen._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4B98 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6CF1B94(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6CF1C48(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CF1B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CF2F10(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CF1C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6D78A00();
  sub_1C6CF2F10(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6CF1D6C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6CF1F90(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CF1D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF0388(a1 + *(v14 + 20), v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6CF0408(v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6CF2F10(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B7F770(v13);
}

uint64_t sub_1C6CF1F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF0388(a1 + *(v15 + 24), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6CF0408(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6CF2F10(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSeen.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  sub_1C6CF2F10(&qword_1EC1D9470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CF22B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CF2F10(&qword_1EC1D9480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CF232C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4B98 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CF23D4(uint64_t a1)
{
  v2 = sub_1C6CF2F10(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CF2440(uint64_t a1, uint64_t a2)
{
  sub_1C6CF2F10(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventArticleSeenV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_1C6D78A00();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69AAB70];
  v6 = MEMORY[0x1E69E6720];
  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v53 = &v52 - v9;
  sub_1C6CF2E3C(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v5);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v52 - v12;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v6);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v52 - v20);
  sub_1C6CF2E3C(0, &qword_1EC1D69F0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v52 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  sub_1C6CF0388(v59 + v28, v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6CF0388(v30, &v26[v29], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6CF0388(v26, v21, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      sub_1C6B483C8(&v26[v29], v17);
      v37 = _s19NewsPersonalization010Com_Apple_a1_B15_SessionArticleV2eeoiySbAC_ACtFZ_0(v21, v17);
      sub_1C6B7F770(v17);
      sub_1C6B7F770(v21);
      sub_1C6CF0408(v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C6B7F770(v21);
LABEL_6:
    v33 = &qword_1EC1D69F0;
    v34 = &qword_1EDCE52B0;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v36 = v26;
LABEL_14:
    sub_1C6CF2EB4(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6CF0408(v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_8:
  v38 = *(v27 + 24);
  v39 = v55;
  v40 = *(v54 + 48);
  v41 = MEMORY[0x1E69AAB70];
  sub_1C6CF0388(v59 + v38, v55, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6CF0388(v31 + v38, v39 + v40, &qword_1EDCDFD00, v41);
  v43 = v56;
  v42 = v57;
  v44 = *(v56 + 48);
  if (v44(v39, 1, v57) == 1)
  {
    if (v44(v39 + v40, 1, v42) == 1)
    {
      sub_1C6CF0408(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6CF2F10(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v53;
  sub_1C6CF0388(v39, v53, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v44(v39 + v40, 1, v42) == 1)
  {
    (*(v43 + 8))(v45, v42);
LABEL_13:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    v36 = v39;
    goto LABEL_14;
  }

  v48 = v39 + v40;
  v49 = v52;
  (*(v43 + 32))(v52, v48, v42);
  sub_1C6CF2F10(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v50 = sub_1C6D79560();
  v51 = *(v43 + 8);
  v51(v49, v42);
  v51(v45, v42);
  sub_1C6CF0408(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6CF2CDC(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6CF2DD8(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6CF2DD8(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6CF2DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6CF2E3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6CF2DD8(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6CF2EB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6CF2E3C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6CF2F10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  sub_1C6B482A8(v1 + *(v7 + 24), v6);
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

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(uint64_t a1)
{
  result = qword_1EDCE4778;
  if (!qword_1EDCE4778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 24);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CF3264@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  sub_1C6B482A8(a1 + *(v8 + 24), v7);
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

uint64_t sub_1C6CF33FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 24);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleShared.article.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 24);
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

BOOL Com_Apple_News_Personalization_SessionEventArticleShared.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  sub_1C6B482A8(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleShared.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 24);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_News_Personalization_SessionEventArticleShared.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CF3A5C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9488);
  __swift_project_value_buffer(v0, qword_1EC1D9488);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleShared._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6CF3DA4(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_1C6CC9658();
        sub_1C6D78B00();
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6CF3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CF4AC0(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6CF3F24(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1C6CC9658();
      sub_1C6D78C70();
    }

    type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CF3F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  sub_1C6B482A8(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6CF4AC0(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleShared.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  sub_1C6CF4AC0(&qword_1EC1D94A0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleShared);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CF41B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6CF428C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CF4AC0(&unk_1EC1D94B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleShared);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CF4308@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CF43B0(uint64_t a1)
{
  v2 = sub_1C6CF4AC0(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleShared);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CF441C(uint64_t a1, uint64_t a2)
{
  sub_1C6CF4AC0(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleShared);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventArticleSharedV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 24);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_1C6B482A8(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      sub_1C6B483C8(&v17[v19], v8);
      v23 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
      sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      sub_1C6B4833C(v17);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6B4833C(v17);
LABEL_10:
  v24 = *a1;
  v25 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v25)
    {
      case 1:
        if (v24 == 1)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 2:
        if (v24 == 2)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 3:
        if (v24 == 3)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 4:
        if (v24 == 4)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 5:
        if (v24 == 5)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 6:
        if (v24 == 6)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 7:
        if (v24 == 7)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 8:
        if (v24 == 8)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 9:
        if (v24 == 9)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 10:
        if (v24 == 10)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 11:
        if (v24 == 11)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 12:
        if (v24 == 12)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 13:
        if (v24 == 13)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 14:
        if (v24 == 14)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 15:
        if (v24 == 15)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      case 16:
        if (v24 == 16)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      default:
        if (!v24)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
    }
  }

  if (v24 == v25)
  {
LABEL_15:
    sub_1C6D78A40();
    sub_1C6CF4AC0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v21 = sub_1C6D79560();
    return v21 & 1;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6CF49FC(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6B49B2C(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6CF4AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C6CF4B08()
{
  result = [objc_allocWithZone(type metadata accessor for ComputeServiceProxyScoringService()) init];
  qword_1EDCE2920 = result;
  return result;
}

id static ComputeServiceProxyScoringService.shared.getter()
{
  if (qword_1EDCE2918 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCE2920;

  return v1;
}

Swift::Void __swiftcall ComputeServiceProxyScoringService.prewarmScoreCache(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization33ComputeServiceProxyScoringService_scoreCache);
  os_unfair_lock_lock((v2 + 24));
  sub_1C6CF4D30((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1C6CF4C74(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_1C6CF6590(a2, sub_1C6CF584C, 0, isUniquelyReferenced_nonNull_native, &v8);

  if (v2)
  {

    __break(1u);
  }

  else
  {

    *a1 = v8;
  }

  return result;
}

unint64_t ComputeServiceProxyScoringService.score(tags:)(uint64_t a1)
{
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCEA540;
  v2 = sub_1C6D79AC0();
  v3 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30("ComputeServiceProxyScoringService does not support tag scoring", 62, 2, &dword_1C6B09000, v1, v2, MEMORY[0x1E69E7CC0]);

  return sub_1C6B5F1EC(v3);
}

void sub_1C6CF4E04(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  CACurrentMediaTime();
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDCEA540;
  sub_1C6B1D314(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6D7EB10;
  if (a4 >> 62)
  {
    v11 = sub_1C6D79E90();
  }

  else
  {
    v11 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = MEMORY[0x1E69E6530];
  *(v10 + 64) = v12;
  *(v10 + 32) = v11;
  sub_1C6D75F80();
  sub_1C6CF64D8(&qword_1EDCEA390, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v13 = sub_1C6D7A0E0();
  v15 = v14;
  *(v10 + 96) = MEMORY[0x1E69E6158];
  v16 = sub_1C6B2064C();
  *(v10 + 104) = v16;
  *(v10 + 72) = v13;
  *(v10 + 80) = v15;
  v17 = sub_1C6D79AC0();
  sub_1C6D78D30("ComputeServiceProxyScoringService will score items, count=%lu, id=%{public}@", 76, 2, &dword_1C6B09000, v30, v17, v10);

  sub_1C6B0C69C(0, &qword_1EDCDF848, 0x1E69B6E38);
  v18 = sub_1C6D79760();
  sub_1C6D76010();
  v19 = MEMORY[0x1CCA524D0]();
  v20 = sub_1C6D79110();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C6CF6804;
  *(v21 + 24) = v9;
  aBlock[4] = sub_1C6CF683C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6CF5468;
  aBlock[3] = &block_descriptor_10;
  v22 = _Block_copy(aBlock);

  [a1 scoreItems:v18 environment:v19 configurationSet:v20 completion:v22];
  _Block_release(v22);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C6D7EB10;
  sub_1C6D79920();
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v24 < 9.22337204e18)
  {
    v25 = MEMORY[0x1E69E73D8];
    *(v23 + 56) = MEMORY[0x1E69E7360];
    *(v23 + 64) = v25;
    *(v23 + 32) = v24;
    v26 = sub_1C6D7A0E0();
    *(v23 + 96) = MEMORY[0x1E69E6158];
    *(v23 + 104) = v16;
    *(v23 + 72) = v26;
    *(v23 + 80) = v27;
    v28 = sub_1C6D79AC0();
    sub_1C6D78D30("ComputeServiceProxyScoringService successfully scored items, time=%llums, id=%{public}@", 87, 2, &dword_1C6B09000, v30, v28, v23);

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C6CF51D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = sub_1C6CF523C(a1);
    a2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  a3(v6, a2);
}

uint64_t sub_1C6CF523C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C6C0C0AC(0, &qword_1EDCEA470, MEMORY[0x1E69E6EC8]);
    v2 = sub_1C6D79F20();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    v9 = 0;
LABEL_11:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    v11 = v10;
    MEMORY[0x1CCA55D90]();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CF5468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v4 = sub_1C6D79490();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1C6CF551C(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_1C6CF6590(a2, sub_1C6CF584C, 0, isUniquelyReferenced_nonNull_native, &v8);

  if (v2)
  {

    __break(1u);
  }

  else
  {

    *a1 = v8;
  }

  return result;
}

uint64_t ComputeServiceProxyScoringService.addInterest(id:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6D76060();
  v2 = sub_1C6D76050();
  sub_1C6D76040();

  v3 = sub_1C6D78430();
  swift_allocObject();
  result = sub_1C6D78440();
  v5 = MEMORY[0x1E69960A8];
  a1[3] = v3;
  a1[4] = v5;
  *a1 = result;
  return result;
}

void sub_1C6CF5660()
{
  sub_1C6D76060();
  v0 = sub_1C6D76050();
  sub_1C6D76030();
}

id ComputeServiceProxyScoringService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C6CF56FC(uint64_t a1)
{
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCEA540;
  v2 = sub_1C6D79AC0();
  v3 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30("ComputeServiceProxyScoringService does not support tag scoring", 62, 2, &dword_1C6B09000, v1, v2, MEMORY[0x1E69E7CC0]);

  return sub_1C6B5F1EC(v3);
}

uint64_t sub_1C6CF57C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6D76060();
  v2 = sub_1C6D76050();
  sub_1C6D76040();

  v3 = sub_1C6D78430();
  swift_allocObject();
  result = sub_1C6D78440();
  v5 = MEMORY[0x1E69960A8];
  a1[3] = v3;
  a1[4] = v5;
  *a1 = result;
  return result;
}

uint64_t sub_1C6CF584C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

void sub_1C6CF5864(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v8 = v3;
  v95 = a3;
  v93 = a2;
  v9 = a1;
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v99 = v9;
  if (v11)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    v97 = v7;
    v98 = v10;
    v12 = v101;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v12;
        MEMORY[0x1CCA56240](v13, v9);
        v15 = [swift_unknownObjectRetain() itemID];
        v16 = sub_1C6D795A0();
        v18 = v17;
        swift_unknownObjectRelease_n();

        v12 = v14;
        v101 = v14;
        v19 = *(v14 + 16);
        v20 = *(v12 + 24);
        if (v19 >= v20 >> 1)
        {
          a1 = sub_1C6B39280((v20 > 1), v19 + 1, 1);
          v12 = v101;
        }

        ++v13;
        *(v12 + 16) = v19 + 1;
        v21 = v12 + 16 * v19;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
      }

      while (v11 != v13);
    }

    else
    {
      v22 = v9 + 32;
      do
      {
        v23 = v12;
        v24 = [swift_unknownObjectRetain_n() itemID];
        v25 = sub_1C6D795A0();
        v27 = v26;
        swift_unknownObjectRelease_n();

        v12 = v23;
        v101 = v23;
        v28 = *(v23 + 16);
        v29 = *(v12 + 24);
        if (v28 >= v29 >> 1)
        {
          a1 = sub_1C6B39280((v29 > 1), v28 + 1, 1);
          v12 = v101;
        }

        *(v12 + 16) = v28 + 1;
        v30 = v12 + 16 * v28;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v22 += 8;
        --v11;
        v9 = v99;
      }

      while (v11);
    }

    v7 = v97;
    v10 = v98;
  }

  v5 = *(v8 + OBJC_IVAR____TtC19NewsPersonalization33ComputeServiceProxyScoringService_scoreCache);
  MEMORY[0x1EEE9AC00](a1, a2);
  v89 = v31;
  os_unfair_lock_lock(v5 + 6);
  sub_1C6CF6844(&v101);
  if (v7)
  {
    goto LABEL_75;
  }

  v32 = 0;
  v94 = v5;
  os_unfair_lock_unlock(v5 + 6);
  v33 = v101;
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCEA540;
  sub_1C6B1D314(0);
  v88 = v34;
  v35 = swift_allocObject();
  v92 = xmmword_1C6D7E630;
  *(v35 + 16) = xmmword_1C6D7E630;
  v36 = MEMORY[0x1E69E6158];
  v37 = sub_1C6D794A0();
  v6 = v38;
  *(v35 + 56) = v36;
  v86 = sub_1C6B2064C();
  *(v35 + 64) = v86;
  *(v35 + 32) = v37;
  *(v35 + 40) = v6;
  v39 = sub_1C6D79AC0();
  v87 = v5;
  sub_1C6D78D30("ComputeServiceProxyScoringService has score cache: %{public}@", 61, 2, &dword_1C6B09000, v5, v39, v35);

  v101 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v7 = sub_1C6D79E90();
  }

  else
  {
    v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = 0;
  if (v7)
  {
    v98 = v33;
    v40 = 0;
    v97 = v9 & 0xC000000000000001;
    v8 = v9 & 0xFFFFFFFFFFFFFF8;
    while (!v97)
    {
      if (v40 >= *(v8 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        a1 = sub_1C6D79E90();
        v11 = a1;
        goto LABEL_3;
      }

      v6 = *(v9 + 8 * v40 + 32);
      swift_unknownObjectRetain();
      v42 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        goto LABEL_35;
      }

LABEL_30:
      v5 = [v6 itemID];
      v43 = sub_1C6D795A0();
      v10 = v44;

      if (v98[2])
      {
        sub_1C6B5DEA8(v43, v10);
        v46 = v45;

        if (v46)
        {
          swift_unknownObjectRelease();
          goto LABEL_26;
        }
      }

      else
      {
      }

      sub_1C6D79DC0();
      v5 = *(v101 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
LABEL_26:
      ++v40;
      v41 = v42 == v7;
      v9 = v99;
      if (v41)
      {
        goto LABEL_36;
      }
    }

    v6 = MEMORY[0x1CCA56240](v40, v9);
    v42 = (v40 + 1);
    if (!__OFADD__(v40, 1))
    {
      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    v47 = v101;
    v32 = v96;
    if ((v101 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_68:
    if (!sub_1C6D79E90())
    {
      goto LABEL_69;
    }

LABEL_41:

    CACurrentMediaTime();
    v101 = v47;
    sub_1C6B186F8(0);
    v5 = v48;
    sub_1C6CF64D8(&qword_1EDCDF9A0, sub_1C6B186F8, MEMORY[0x1E69E6340]);
    v49 = sub_1C6D799C0();

    v97 = *(v49 + 16);
    if (v97)
    {
      v90 = sub_1C6D76060();
      v91 = v49;
      v9 = 0;
      *&v92 = v49 + 32;
      v8 = 0x1E69B6000uLL;
      v7 = &selRef_adSegmentsOutputName;
      while (1)
      {
        if (v9 >= *(v49 + 16))
        {
          goto LABEL_65;
        }

        v50 = *(v92 + 8 * v9);

        v10 = MEMORY[0x1CCA568F0](v51);
        if (v50 >> 62)
        {
          v6 = sub_1C6D79E90();
          v99 = v9;
          if (!v6)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v6 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v99 = v9;
          if (!v6)
          {
            goto LABEL_54;
          }
        }

        v101 = MEMORY[0x1E69E7CC0];
        sub_1C6D79DF0();
        if (v6 < 0)
        {
          goto LABEL_66;
        }

        v98 = v10;
        v52 = 0;
        do
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x1CCA56240](v52, v50);
          }

          else
          {
            v53 = *(v50 + 8 * v52 + 32);
            swift_unknownObjectRetain();
          }

          ++v52;
          [objc_allocWithZone(MEMORY[0x1E69B6E38]) initWithItem_];
          swift_unknownObjectRelease();
          sub_1C6D79DC0();
          sub_1C6D79E00();
          sub_1C6D79E10();
          sub_1C6D79DD0();
        }

        while (v6 != v52);
        v10 = v98;
LABEL_54:
        v54 = sub_1C6D76050();
        MEMORY[0x1EEE9AC00](v54, v55);
        sub_1C6C0C0AC(0, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
        v56 = v96;
        sub_1C6D76020();
        if (v56)
        {

          v73 = sub_1C6D79AA0();
          v74 = swift_allocObject();
          *(v74 + 16) = xmmword_1C6D7EB10;
          v101 = 0;
          v102 = 0xE000000000000000;
          v100 = v56;
          sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
          sub_1C6D79E60();
          v75 = v101;
          v76 = v102;
          v77 = MEMORY[0x1E69E6158];
          v78 = v86;
          *(v74 + 56) = MEMORY[0x1E69E6158];
          *(v74 + 64) = v78;
          *(v74 + 32) = v75;
          *(v74 + 40) = v76;
          sub_1C6D75F80();
          sub_1C6CF64D8(&qword_1EDCEA390, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v79 = sub_1C6D7A0E0();
          *(v74 + 96) = v77;
          *(v74 + 104) = v78;
          *(v74 + 72) = v79;
          *(v74 + 80) = v80;
          sub_1C6D78D30("ComputeServiceProxyScoringService failed to score items, error=%{public}@, id=%{public}@", 88, 2, &dword_1C6B09000, v87, v73, v74);

          swift_willThrow();
          objc_autoreleasePoolPop(v10);
          return;
        }

        v5 = &v86;
        MEMORY[0x1EEE9AC00](v57, v58);
        v6 = v94;
        os_unfair_lock_lock(v94 + 6);
        sub_1C6CF6520((v6 + 16));
        v96 = 0;
        v9 = v99 + 1;
        os_unfair_lock_unlock((v6 + 24));

        objc_autoreleasePoolPop(v10);
        v49 = v91;
        if (v9 == v97)
        {

          v32 = v96;
          goto LABEL_58;
        }
      }
    }

LABEL_58:
    MEMORY[0x1EEE9AC00](v59, v60);
    v5 = v89;
    v7 = v94;
    os_unfair_lock_lock(v94 + 6);
    sub_1C6CF653C(&v101);
    if (v32)
    {
LABEL_76:
      os_unfair_lock_unlock(v7 + 6);
      __break(1u);
      return;
    }

    os_unfair_lock_unlock(v7 + 6);
    v61 = v101;
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1C6D80210;
    v63 = v5[2];

    v64 = MEMORY[0x1E69E6530];
    v65 = MEMORY[0x1E69E65A8];
    *(v62 + 56) = MEMORY[0x1E69E6530];
    *(v62 + 64) = v65;
    *(v62 + 32) = v63;
    v66 = *(v61 + 16);
    *(v62 + 96) = v64;
    *(v62 + 104) = v65;
    *(v62 + 72) = v66;
    sub_1C6D79920();
    if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v67 > -9.22337204e18)
      {
        if (v67 < 9.22337204e18)
        {
          v68 = MEMORY[0x1E69E73D8];
          *(v62 + 136) = MEMORY[0x1E69E7360];
          *(v62 + 144) = v68;
          *(v62 + 112) = v67;
          sub_1C6D75F80();
          sub_1C6CF64D8(&qword_1EDCEA390, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v69 = sub_1C6D7A0E0();
          v70 = v86;
          *(v62 + 176) = MEMORY[0x1E69E6158];
          *(v62 + 184) = v70;
          *(v62 + 152) = v69;
          *(v62 + 160) = v71;
          v72 = sub_1C6D79AC0();
          sub_1C6D78D30("ComputeServiceProxyScoringService finished scoring items, itemCount=%lu, scoreCount=%lu, time=%llums, id=%{public}@", 115, 2, &dword_1C6B09000, v87, v72, v62);
          goto LABEL_70;
        }

        goto LABEL_74;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      os_unfair_lock_unlock((v6 + 24));
      __break(1u);
LABEL_75:
      os_unfair_lock_unlock(v5 + 6);
      __break(1u);
      goto LABEL_76;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v47 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

LABEL_39:
  if ((v47 & 0x4000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (*(v47 + 16))
  {
    goto LABEL_41;
  }

LABEL_69:

  v81 = swift_allocObject();
  *(v81 + 16) = v92;
  sub_1C6D75F80();
  sub_1C6CF64D8(&qword_1EDCEA390, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v82 = sub_1C6D7A0E0();
  v83 = v86;
  *(v81 + 56) = MEMORY[0x1E69E6158];
  *(v81 + 64) = v83;
  *(v81 + 32) = v82;
  *(v81 + 40) = v84;
  v85 = sub_1C6D79AC0();
  sub_1C6D78D30("ComputeServiceProxyScoringService will return cached scores, id=%{public}@", 74, 2, &dword_1C6B09000, v87, v85, v81);
LABEL_70:
}

void sub_1C6CF6434(uint64_t a1)
{
  if (!qword_1EDCE6508)
  {
    sub_1C6C0C0AC(255, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1C6D79D90();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6508);
    }
  }
}

uint64_t sub_1C6CF64D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6CF653C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1C6D794C0();
  *a2 = result;
  return result;
}

uint64_t sub_1C6CF6590(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *a5;
    v23 = sub_1C6B5DEA8(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v38 & 1) == 0)
      {
        sub_1C6B72BD8();
      }
    }

    else
    {
      sub_1C6B6E868(v26, v38 & 1);
      v28 = sub_1C6B5DEA8(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *a5;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1C6B688C4(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6CF6804(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void *sub_1C6CF68C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CF7628();
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    v4 = [result personalizationData];

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCE9290, &protocol descriptor for ConfigurationManagerType, 1);
    result = sub_1C6D77FE0();
    if (v6[3])
    {
      v5 = objc_allocWithZone(type metadata accessor for NewsPersonalizer(0));
      return NewsPersonalizer.init(context:configurationManager:)(v4, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6CF69B4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v85 = a2;
  v3 = sub_1C6D75AD0();
  v84 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v83 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1C6D76A40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v76 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsPersonalizer(0);
  result = sub_1C6D77FD0();
  v82 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v81 = v3;
  sub_1C6CF751C(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6D82CB0;
  ActionTranslator = type metadata accessor for ArticleReadActionTranslator();
  v18 = swift_allocObject();
  *(v16 + 56) = ActionTranslator;
  *(v16 + 64) = &off_1F467B580;
  *(v16 + 32) = v18;
  v19 = type metadata accessor for ArticleSeenActionTranslator();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E7CD0];
  *(v20 + 16) = MEMORY[0x1E69E7CD0];
  *(v16 + 96) = v19;
  *(v16 + 104) = &off_1F4675D10;
  *(v16 + 72) = v20;
  v22 = type metadata accessor for ArticleVisitedActionTranslator();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v16 + 136) = v22;
  *(v16 + 144) = &off_1F467A490;
  *(v16 + 112) = v23;
  v24 = type metadata accessor for BlockTagActionTranslator();
  v25 = swift_allocObject();
  *(v16 + 176) = v24;
  *(v16 + 184) = &off_1F4674CB0;
  *(v16 + 152) = v25;
  v26 = type metadata accessor for DislikeActionTranslator();
  v27 = swift_allocObject();
  *(v16 + 216) = v26;
  *(v16 + 224) = &off_1F4676480;
  *(v16 + 192) = v27;
  v28 = type metadata accessor for UndislikeActionTranslator();
  v29 = swift_allocObject();
  *(v16 + 256) = v28;
  *(v16 + 264) = &off_1F4673478;
  *(v16 + 232) = v29;
  v30 = type metadata accessor for FeedViewActionTranslator();
  v31 = swift_allocObject();
  *(v16 + 296) = v30;
  *(v16 + 304) = &off_1F46751C0;
  *(v16 + 272) = v31;
  v32 = type metadata accessor for FollowTagActionTranslator();
  v33 = swift_allocObject();
  *(v16 + 336) = v32;
  *(v16 + 344) = &off_1F4673A90;
  *(v16 + 312) = v33;
  v34 = type metadata accessor for IgnoreTagActionTranslator();
  v35 = swift_allocObject();
  *(v16 + 376) = v34;
  *(v16 + 384) = &off_1F4673E48;
  *(v16 + 352) = v35;
  v36 = type metadata accessor for LikeActionTranslator();
  v37 = swift_allocObject();
  *(v16 + 416) = v36;
  *(v16 + 424) = &off_1F4675A60;
  *(v16 + 392) = v37;
  v38 = type metadata accessor for UnlikeActionTranslator();
  v39 = swift_allocObject();
  *(v16 + 456) = v38;
  *(v16 + 464) = &off_1F4676710;
  *(v16 + 432) = v39;
  v40 = type metadata accessor for SaveActionTranslator();
  v41 = swift_allocObject();
  *(v16 + 496) = v40;
  *(v16 + 504) = &off_1F4678C50;
  *(v16 + 472) = v41;
  v42 = type metadata accessor for UnsaveActionTranslator();
  v43 = swift_allocObject();
  *(v16 + 536) = v42;
  *(v16 + 544) = &off_1F46751D0;
  *(v16 + 512) = v43;
  v44 = type metadata accessor for SessionEndActionTranslator();
  v45 = swift_allocObject();
  *(v16 + 576) = v44;
  *(v16 + 584) = &off_1F467B590;
  *(v16 + 552) = v45;
  started = type metadata accessor for SessionStartActionTranslator();
  v47 = swift_allocObject();
  *(v16 + 616) = started;
  *(v16 + 624) = &off_1F467A540;
  *(v16 + 592) = v47;
  v48 = type metadata accessor for ShareActionTranslator();
  v49 = swift_allocObject();
  *(v16 + 656) = v48;
  *(v16 + 664) = &off_1F467A9C0;
  *(v16 + 632) = v49;
  v50 = type metadata accessor for SportsTagSeenActionTranslator();
  v51 = swift_allocObject();
  *(v16 + 696) = v50;
  *(v16 + 704) = &off_1F467A620;
  *(v16 + 672) = v51;
  v52 = type metadata accessor for TrackFinishedActionTranslator();
  v53 = swift_allocObject();
  *(v16 + 736) = v52;
  *(v16 + 744) = &off_1F4675450;
  *(v16 + 712) = v53;
  v54 = type metadata accessor for TrackListenedActionTranslator();
  v55 = swift_allocObject();
  *(v16 + 776) = v54;
  *(v16 + 784) = &off_1F4676490;
  *(v16 + 752) = v55;
  v56 = type metadata accessor for TrackVisitedActionTranslator();
  v57 = swift_allocObject();
  *(v16 + 816) = v56;
  *(v16 + 824) = &off_1F46736F8;
  *(v16 + 792) = v57;
  v58 = type metadata accessor for UnblockTagActionTranslator();
  v59 = swift_allocObject();
  *(v16 + 856) = v58;
  *(v16 + 864) = &off_1F4673368;
  *(v16 + 832) = v59;
  v60 = type metadata accessor for UnfollowTagActionTranslator();
  v61 = swift_allocObject();
  *(v16 + 896) = v60;
  *(v16 + 904) = &off_1F467B818;
  *(v16 + 872) = v61;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  v80 = result;
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v62 = v10;
  v63 = v14;
  v64 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SessionTracker();
  result = sub_1C6D77FD0();
  v79 = result;
  if (result)
  {
    v65 = type metadata accessor for XavierEventProcessor();
    v66 = objc_allocWithZone(v65);
    v67 = OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor__configuration;
    sub_1C6D76A30();
    v78 = *(v64 + 16);
    v78(v62, v63, v6);
    sub_1C6CF7588(0);
    swift_allocObject();
    v68 = sub_1C6D78220();
    v77 = *(v64 + 8);
    v77(v63, v6);
    *&v66[v67] = v68;
    v69 = v82;
    *&v66[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_personalizer] = v82;
    *&v66[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_actionTranslators] = v16;
    sub_1C6D75B10();
    swift_allocObject();
    v82 = v69;
    *&v66[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_jsonDecoder] = sub_1C6D75B00();
    v71 = v83;
    v70 = v84;
    *v83 = sub_1C6C170DC;
    v71[1] = 0;
    (*(v70 + 104))(v71, *MEMORY[0x1E6967F20], v81);

    sub_1C6D75AE0();

    *&v66[OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_sessionTracker] = v79;
    v86.receiver = v66;
    v86.super_class = v65;

    v72 = objc_msgSendSuper2(&v86, sel_init);
    v73 = v80;
    v74 = [objc_msgSend(v80 possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    sub_1C6B7A268();

    v78(v62, v63, v6);

    sub_1C6D78240();

    v77(v63, v6);
    [v73 addAppConfigObserver_];

    swift_unknownObjectRelease();

    result = sub_1C6CF75E0(&unk_1EDCE2098, type metadata accessor for XavierEventProcessor, &protocol conformance descriptor for XavierEventProcessor);
    v75 = v85;
    *v85 = v72;
    v75[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6CF7230@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C830(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    type metadata accessor for RecipeEventProcessor();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = sub_1C6CF75E0(qword_1EDCE21F0, type metadata accessor for RecipeEventProcessor, &protocol conformance descriptor for RecipeEventProcessor);
    *a2 = v5;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6CF72E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7FactoryCMa();
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCE9840, &protocol descriptor for SessionStorageType, 1);
    result = sub_1C6D77FC0();
    if (v6)
    {
      sub_1C6B0C830(0);
      v4 = swift_allocObject();
      *(v4 + 64) = 0;
      *(v4 + 16) = v3;
      sub_1C6C2E0C4(&v5, v4 + 24);
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

uint64_t sub_1C6CF73DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  sub_1C6D78FD0();
  v3 = sub_1C6D77FB0();

  if (v3)
  {
    v5 = type metadata accessor for SessionStorage();
    result = swift_allocObject();
    *(result + 16) = v3;
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

uint64_t sub_1C6CF74A0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1C6D79B80();
  v3 = v2;

  _s7FactoryCMa();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  *(result + 32) = 1;
  *(result + 40) = 1;
  return result;
}

void sub_1C6CF751C(uint64_t a1)
{
  if (!qword_1EDCDF518)
  {
    sub_1C6B0C7D4(255, qword_1EDCE0FB0, &protocol descriptor for XavierActionTranslatorType, 1);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF518);
    }
  }
}

void sub_1C6CF7588(uint64_t a1)
{
  if (!qword_1EDCE5DE0)
  {
    sub_1C6D76A40();
    v1 = sub_1C6D78250();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5DE0);
    }
  }
}

uint64_t sub_1C6CF75E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C6CF7628()
{
  result = qword_1EDCE7F00;
  if (!qword_1EDCE7F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCE7F00);
  }

  return result;
}

uint64_t ArticleSaveEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77720();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleSaveEvent.Model.isANF.getter()
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
  sub_1C6D77720();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6CF8B04(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
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

uint64_t ArticleSaveEvent.Model.isPaid.getter()
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
  sub_1C6D77720();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6CF8B04(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
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

uint64_t ArticleSaveEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77730();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleSaveEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6CF7E00(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
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

uint64_t sub_1C6CF7F0C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77720();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleSaveEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
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
  sub_1C6D77740();
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

uint64_t ArticleSaveEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
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
  sub_1C6D77760();
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

uint64_t ArticleSaveEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
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
  sub_1C6D77750();
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

uint64_t sub_1C6CF8844(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77720();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleSaveEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77760();
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

uint64_t sub_1C6CF8B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6CF8BA4()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77720();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6CF8CA4()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77730();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleSaveEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6CF8DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77720();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6CF8F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
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

uint64_t sub_1C6CF901C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77720();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6CF9108()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77760();
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

char *SessionContainer.__allocating_init(identifier:session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *v6;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  (*(*(*(v7 + 80) - 8) + 32))(&v6[*(v7 + 104)], a3);
  return v6;
}

uint64_t SessionContainer.identifier.getter()
{
  v0 = sub_1C6CF9DB0();

  return v0;
}

uint64_t SessionContainer.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t SessionContainer.session.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

char *SessionContainer.init(identifier:session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  (*(*(*(v4 + 80) - 8) + 32))(&v3[*(v4 + 104)], a3);
  return v3;
}

uint64_t SessionContainer.hasEvents.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v11 - v6;
  v8 = *(v3 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  v9 = (*(*(v3 + 88) + 16))(v4);
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

uint64_t SessionContainer.numberOfEvents.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v11 - v6;
  v8 = *(v3 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  v9 = (*(*(v3 + 88) + 24))(v4);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t SessionContainer.start(at:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(v3 + 88) + 32))(a1, *(v3 + 80));
  return swift_endAccess();
}

uint64_t SessionContainer.end(at:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(v3 + 88) + 40))(a1, *(v3 + 80));
  return swift_endAccess();
}

uint64_t SessionContainer.serialize()(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v13 - v7;
  v9 = *(v4 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = (*(*(v4 + 88) + 48))(v5);
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v10;
  (*(v6 + 8))(v8, v5);
  return v12;
}

char *SessionContainer.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t SessionContainer.__deallocating_deinit()
{
  SessionContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CF9CA8()
{
  v0 = sub_1C6CF9DB0();

  return v0;
}

uint64_t sub_1C6CF9D78(uint64_t a1, uint64_t a2)
{
  result = SessionContainer.serialize()(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1C6CF9DB8(uint64_t a1)
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

uint64_t SessionStorage.__allocating_init(storage:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void SessionStorage.persistSession(with:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = sub_1C6D79570();
  v7 = sub_1C6D75E50();
  [v5 storeSessionID:v6 sessionData:v7];
}

uint64_t SessionStorage.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1C6CF9FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 16);
  v6 = sub_1C6D79570();
  v7 = sub_1C6D75E50();
  [v5 storeSessionID:v6 sessionData:v7];
}

uint64_t sub_1C6CFA0C4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDCE9830;
  sub_1C6B1D314(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C6B2064C();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_1C6D79AC0();
  sub_1C6D78D30("No-op session storage persistence for identifier %{public}@", 59, 2, &dword_1C6B09000, v4, v6, v5);
}

uint64_t SessionManager.startSession(with:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(*v3 + 112);
  swift_beginAccess();
  if (*(v3 + v9))
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDCE9830;
    v34 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C6D7EB10;
    if (*(v3 + v9))
    {
      v32 = a2;
      v12 = a1;
      v13 = v10;
      swift_getAssociatedTypeWitness();
      v14 = *(swift_getAssociatedConformanceWitness() + 8);
      v15 = *(v14 + 8);
      v16 = swift_checkMetadataState();
      v17 = v14;
      v10 = v13;
      a1 = v12;
      a2 = v32;
      v15(v16, v17);
    }

    sub_1C6B95D68();
    v26 = sub_1C6D795F0();
    MEMORY[0x1CCA55B00](v26);

    v27 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1C6B2064C();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    *(v11 + 96) = v27;
    *(v11 + 104) = v28;
    *(v11 + 64) = v28;
    *(v11 + 72) = a1;
    *(v11 + 80) = a2;

    v25 = 2;
    sub_1C6D78D30("Session already in progress with session id %{public}@ which doesn't match new session identifier %{public}@", 108, 2, &dword_1C6B09000, v10, v34, v11);

    type metadata accessor for SessionManager.Errors(0, *(v8 + 80), *(v8 + 88), v29);
    swift_getWitnessTable();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDCE9830;
    sub_1C6B1D314(0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C6D7E630;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C6B2064C();
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;

    v20 = sub_1C6D79AC0();
    sub_1C6D78D30("Creating session with identifier %{public}@", 43, 2, &dword_1C6B09000, v18, v20, v19);

    v21 = v3;
    v33 = (*(*(v8 + 88) + 24))(a1, a2, *(v8 + 80), *(v8 + 88));
    swift_getAssociatedTypeWitness();
    v22 = *(swift_getAssociatedConformanceWitness() + 8);
    v23 = *(v22 + 32);
    v24 = swift_checkMetadataState();
    v23(a3, v24, v22);
    v25 = v33;
    if (!v4)
    {
      *(v21 + v9) = v33;
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
  }

  return v25;
}

uint64_t SessionManager.endSession(with:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDCE9830;
  sub_1C6B1D314(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6D7E630;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1C6B2064C();
  *(v9 + 64) = v53;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_1C6D79AC0();
  sub_1C6D78D30("Ending session with identifier %{public}@", 41, 2, &dword_1C6B09000, v8, v10, v9);

  v11 = *(*v3 + 112);
  swift_beginAccess();
  if (!*(v3 + v11))
  {
    type metadata accessor for SessionManager.Errors(0, *(v7 + 80), *(v7 + 88), v12);
    swift_getWitnessTable();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  v47 = v3;
  v46 = v11;
  v49 = v8;
  v13 = *(v7 + 80);
  v14 = *(v7 + 88);
  swift_getAssociatedTypeWitness();
  v15 = a1;
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v54 = a2;
  v17 = *(v16 + 8);
  swift_unknownObjectRetain();
  v18 = swift_checkMetadataState();
  v20 = v17(v18, v16) == v15 && v19 == a2;
  v48 = v15;
  if (v20)
  {

    v23 = v53;
  }

  else
  {
    v21 = sub_1C6D7A130();

    v23 = v53;
    if ((v21 & 1) == 0)
    {
      type metadata accessor for SessionManager.Errors(0, v13, v14, v22);
      swift_getWitnessTable();
      swift_allocError();
      *v24 = 2;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  if ((*(v16 + 16))(v18, v16))
  {
    (*(v16 + 40))(a3, v18, v16);
    v27 = MEMORY[0x1E69E6158];
    if (v4)
    {
      return swift_unknownObjectRelease();
    }

    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C6D7E630;
    *(v31 + 56) = v27;
    *(v31 + 64) = v53;
    *(v31 + 32) = v48;
    *(v31 + 40) = v54;

    v32 = sub_1C6D79AC0();
    sub_1C6D78D30("Serializing session with identifier %{public}@", 46, 2, &dword_1C6B09000, v49, v32, v31);

    v33 = (*(v16 + 48))(v18, v16);
    v35 = v34;
    v36 = v33;
    v50 = v37;
    v52 = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C6D7EB10;
    *(v39 + 56) = v27;
    *(v39 + 64) = v53;
    *(v39 + 32) = v48;
    *(v39 + 40) = v54;
    *(v39 + 96) = v27;
    *(v39 + 104) = v53;
    *(v39 + 72) = v36;
    *(v39 + 80) = v35;

    v40 = sub_1C6D79AC0();
    sub_1C6D78D30("Persisting data for session %{public}@ with identifier %{public}@", 65, 2, &dword_1C6B09000, v49, v40, v39);

    v30 = v47;
    v41 = (v47 + *(*v47 + 104));
    v42 = v41[3];
    v43 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v42);
    (*(v43 + 8))(v36, v35, v50, v52, v42, v43);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1C6D7E630;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = v53;
    *(v44 + 32) = v48;
    *(v44 + 40) = v54;

    v45 = sub_1C6D79AC0();
    sub_1C6D78D30("Completed management of session with identifier %{public}@", 58, 2, &dword_1C6B09000, v49, v45, v44);

    sub_1C6B1C9F0(v50, v52);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C6D7E630;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = v23;
    *(v28 + 32) = v48;
    *(v28 + 40) = v54;

    v29 = sub_1C6D79AC0();
    sub_1C6D78D30("Skipping persistence of session with identifier %{public}@", 58, 2, &dword_1C6B09000, v49, v29, v28);
    swift_unknownObjectRelease();

    v30 = v3;
  }

  *(v30 + v46) = 0;
  return swift_unknownObjectRelease();
}

uint64_t SessionManager.__allocating_init(factory:storage:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  SessionManager.init(factory:storage:)(a1, a2);
  return v4;
}

uint64_t SessionManager.session.getter()
{
  sub_1C6CFAFD4();

  return swift_unknownObjectRetain();
}

uint64_t SessionManager.session.setter(uint64_t a1)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t *SessionManager.init(factory:storage:)(uint64_t a1, __int128 *a2)
{
  v4 = *v2;
  *(v2 + *(*v2 + 112)) = 0;
  (*(*(*(v4 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  sub_1C6C2E0C4(a2, v2 + *(*v2 + 104));
  return v2;
}

uint64_t SessionManager.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 104)));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SessionManager.__deallocating_deinit()
{
  SessionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CFAF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = SessionManager.startSession(with:at:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C6CFAF98@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C6CFAFD4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C6CFAFD4()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C6CFB0D0()
{
  v1[2] = v0;
  v2 = sub_1C6D75DE0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1C6B10DA0(0);
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = sub_1C6D78550();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6CFB250, 0, 0);
}

uint64_t sub_1C6CFB250()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v18 = v0[9];
  v19 = v0[3];
  sub_1C6CFBDD0(0, &qword_1EC1D9578, sub_1C6B10DA0, MEMORY[0x1E69E6F90]);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1C6D78490();
  sub_1C6D78540();
  (*(v1 + 8))(v2, v18);
  sub_1C6B18038(v8 + v7, v3);
  sub_1C6B14D2C(v3, v5);
  if ((*(v6 + 48))(v5, 1, v19) == 1)
  {
    sub_1C6CFBE34(v0[7], sub_1C6B10DA0);
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = *(v0[4] + 32);
    v10(v0[5], v0[7], v0[3]);
    v9 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1C6B1A254(0, *(v9 + 2) + 1, 1, v9);
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1C6B1A254((v11 > 1), v12 + 1, 1, v9);
    }

    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[3];
    *(v9 + 2) = v12 + 1;
    v10(&v9[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12], v13, v15);
  }

  swift_setDeallocating();
  sub_1C6CFBE34(v8 + v7, sub_1C6B10DA0);
  swift_deallocClassInstance();

  v16 = v0[1];

  return v16(v9);
}

uint64_t sub_1C6CFB508()
{
  v1 = (*(v0 + 152) + OBJC_IVAR____TtC19NewsPersonalization22DiagnosticFileProvider_personalizationInspectionGroupProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1C6CFB5C8;

  return MEMORY[0x1EEE229C8](v2, v3);
}

uint64_t sub_1C6CFB5C8(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C6CFB6C8, 0, 0);
}

uint64_t sub_1C6CFB6C8()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C6D79DF0();
    v3 = v1 + 64;
    v4 = sub_1C6D79CC0();
    v18 = v1 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_17;
      }

      v19 = v2;
      v20 = *(v1 + 36);
      v5 = (*(v1 + 48) + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      sub_1C6B16F28(*(v1 + 56) + 40 * v4, v0 + 32);
      *(v0 + 72) = v6;
      *(v0 + 80) = v7;
      sub_1C6B15E34((v0 + 32), v0 + 88);
      v8 = v1;
      __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
      sub_1C6D75B70();
      swift_allocObject();

      sub_1C6D75B60();
      sub_1C6D75B50();

      v9 = objc_allocWithZone(sub_1C6D78010());

      v1 = sub_1C6D78000();
      sub_1C6CFBE34(v0 + 72, sub_1C6CFBD54);
      sub_1C6D79DC0();
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      if (v4 >= -(-1 << *(v8 + 32)))
      {
        goto LABEL_18;
      }

      v3 = v18;
      if ((*(v18 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_19;
      }

      v1 = v8;
      if (v20 != *(v8 + 36))
      {
        goto LABEL_20;
      }

      v4 = sub_1C6D79CE0();
      v2 = v19 - 1;
      if (v19 == 1)
      {

        v10 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    swift_once();
    v11 = qword_1EC1D8590;
    v12 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6D7E630;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    *(v0 + 144) = v1;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C6B2064C();
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;
    sub_1C6D78D30("Failed to get diagnostics data with error=%{public}@", 52, 2, &dword_1C6B09000, v11, v12, v13);
  }

  else
  {
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v16 = *(v0 + 8);

  return v16(v10);
}

uint64_t sub_1C6CFBB24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6CFBE94;

  return sub_1C6CFB0D0();
}

uint64_t sub_1C6CFBBB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6CFBC3C;

  return sub_1C6CFB4E8();
}

uint64_t sub_1C6CFBC3C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1C6CFBD54(uint64_t a1)
{
  if (!qword_1EC1D9568)
  {
    sub_1C6B10A98(255, &qword_1EC1D9570, MEMORY[0x1E69E5E78]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9568);
    }
  }
}

void sub_1C6CFBDD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6CFBE34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6CFBE98(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a5@<X8>)
{
  v177 = a2;
  v165 = sub_1C6D773E0();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v7);
  v163 = v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v162 = v154 - v11;
  v161 = sub_1C6D77EC0();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v12);
  v159 = v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  sub_1C6CFD4FC(0, &qword_1EDCE5FC0, MEMORY[0x1E69B45B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v166 = v154 - v17;
  v170 = sub_1C6D77E80();
  v172 = *(v170 - 8);
  v19 = MEMORY[0x1EEE9AC00](v170, v18);
  v157 = v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CFD308(0, v19);
  v167 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v169 = v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CFD4FC(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v14);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = v154 - v26;
  sub_1C6CFD4FC(0, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v158 = v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v171 = v154 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v168 = v154 - v36;
  v176 = sub_1C6D77430();
  v37 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176, v38);
  v175 = v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1C6D77800();
  v173 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178, v40);
  v179 = v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C47418(0);
  v43 = v42;
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = v154 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C6D77290();
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  (*(v52 + 16))(v154 - v51, a1, v48, v50);
  if (swift_dynamicCast())
  {
    v156 = a5;
    (*(v44 + 8))(v47, v43);
    v53 = sub_1C6D77270();
    v54 = v181;
    v55 = sub_1C6D77330();
    v57 = v56;

    if (v54)
    {
      return;
    }

    sub_1C6CFD560(&qword_1EDCE5F50, MEMORY[0x1E69B4778], MEMORY[0x1E69B4788]);
    v58 = v178;
    sub_1C6D75AF0();
    v181 = 0;
    v155 = v55;
    v177 = v57;
    v59 = v174;
    swift_beginAccess();
    v60 = *(v59 + 16);

    v61 = v175;
    sub_1C6D77790();
    v62 = sub_1C6D77420();
    v64 = v63;
    v65 = *(v37 + 8);
    v154[1] = v37 + 8;
    v154[0] = v65;
    v65(v61, v176);
    LOBYTE(v62) = sub_1C6B1E978(v62, v64, v60);

    if (v62)
    {
      a5 = v156;
      if (qword_1EDCEA6A0 != -1)
      {
        swift_once();
      }

      v66 = qword_1EDCEA6A8;
      sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1C6D7E630;
      v68 = v175;
      v69 = v179;
      sub_1C6D77790();
      v70 = sub_1C6D77420();
      v72 = v71;
      (v154[0])(v68, v176);
      *(v67 + 56) = MEMORY[0x1E69E6158];
      *(v67 + 64) = sub_1C6B2064C();
      *(v67 + 32) = v70;
      *(v67 + 40) = v72;
      v73 = sub_1C6D79AC0();
      sub_1C6D78D30("Encountered an ArticleViewEvent for an article already visited this sessions, skipping emitting articleVisited action. ArticleID: %@", 132, 2, &dword_1C6B09000, v66, v73, v67);
      sub_1C6B1C9F0(v155, v177);

      (*(v173 + 8))(v69, v58);
      goto LABEL_7;
    }

    sub_1C6D777C0();
    v75 = sub_1C6D77E60();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v27, 1, v75) == 1)
    {
      sub_1C6CFD430(v27, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v77);
      v78 = 1;
      v79 = v170;
      v80 = v168;
    }

    else
    {
      v80 = v168;
      sub_1C6D77E50();
      (*(v76 + 8))(v27, v75);
      v78 = 0;
      v79 = v170;
    }

    v82 = v171;
    v81 = v172;
    v83 = *(v172 + 56);
    v83(v80, v78, 1, v79);
    (*(v81 + 104))(v82, *MEMORY[0x1E69B4B58], v79);
    v84 = v83(v82, 0, 1, v79);
    v85 = *(v167 + 48);
    v86 = v169;
    sub_1C6CFD39C(v80, v169, v84);
    sub_1C6CFD39C(v82, v86 + v85, v87);
    v88 = *(v81 + 48);
    if (v88(v86, 1, v79) == 1)
    {
      v90 = MEMORY[0x1E69B4BF0];
      sub_1C6CFD430(v82, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v89);
      sub_1C6CFD430(v80, &qword_1EDCE5E40, v90, v91);
      v92 = v88(v86 + v85, 1, v79);
      v94 = v156;
      v95 = v179;
      if (v92 == 1)
      {
        sub_1C6CFD430(v86, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v93);
LABEL_24:
        if (qword_1EDCEA6A0 != -1)
        {
          swift_once();
        }

        v115 = qword_1EDCEA6A8;
        sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_1C6D7E630;
        v117 = v175;
        sub_1C6D77790();
        v118 = sub_1C6D77420();
        v120 = v119;
        (v154[0])(v117, v176);
        *(v116 + 56) = MEMORY[0x1E69E6158];
        *(v116 + 64) = sub_1C6B2064C();
        *(v116 + 32) = v118;
        *(v116 + 40) = v120;
        v121 = sub_1C6D79AC0();
        sub_1C6D78D30("Skipping emitting visited action as the article was opened from the shared with you feed. ArticleID: %@", 103, 2, &dword_1C6B09000, v115, v121, v116);
LABEL_36:
        sub_1C6B1C9F0(v155, v177);

        (*(v173 + 8))(v95, v178);
        v153 = sub_1C6D76F90();
        (*(*(v153 - 8) + 56))(v94, 1, 1, v153);
        return;
      }
    }

    else
    {
      v96 = v158;
      sub_1C6CFD39C(v86, v158, v89);
      if (v88(v86 + v85, 1, v79) != 1)
      {
        v107 = v172;
        v108 = v157;
        (*(v172 + 32))(v157, v86 + v85, v79);
        sub_1C6CFD560(&qword_1EDCE5E48, MEMORY[0x1E69B4BF0], MEMORY[0x1E69B4BF8]);
        v109 = sub_1C6D79560();
        v110 = *(v107 + 8);
        v111 = v110(v108, v79);
        v112 = MEMORY[0x1E69B4BF0];
        sub_1C6CFD430(v171, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v111);
        sub_1C6CFD430(v80, &qword_1EDCE5E40, v112, v113);
        v114 = v110(v96, v79);
        sub_1C6CFD430(v86, &qword_1EDCE5E40, v112, v114);
        v94 = v156;
        v95 = v179;
        if (v109)
        {
          goto LABEL_24;
        }

LABEL_18:
        v100 = v166;
        sub_1C6D777B0();
        v101 = sub_1C6D774A0();
        v102 = *(v101 - 8);
        if ((*(v102 + 48))(v100, 1, v101) == 1)
        {
          sub_1C6CFD430(v100, &qword_1EDCE5FC0, MEMORY[0x1E69B45B8], v103);
        }

        else
        {
          v104 = sub_1C6D77490();
          v106 = v105;
          (*(v102 + 8))(v100, v101);
          if (v104 == 0xD000000000000015 && 0x80000001C6DA75C0 == v106)
          {

            v95 = v179;
          }

          else
          {
            v122 = sub_1C6D7A130();

            v95 = v179;
            if ((v122 & 1) == 0)
            {
              if (qword_1EDCEA6A0 != -1)
              {
                swift_once();
              }

              v146 = qword_1EDCEA6A8;
              sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
              v147 = swift_allocObject();
              *(v147 + 16) = xmmword_1C6D7E630;
              v148 = v175;
              sub_1C6D77790();
              v149 = sub_1C6D77420();
              v151 = v150;
              (v154[0])(v148, v176);
              *(v147 + 56) = MEMORY[0x1E69E6158];
              *(v147 + 64) = sub_1C6B2064C();
              *(v147 + 32) = v149;
              *(v147 + 40) = v151;
              v152 = sub_1C6D79AC0();
              sub_1C6D78D30("Skipping emitting visited action as the article was opened from an unexpected source. ArticleID: %@", 99, 2, &dword_1C6B09000, v146, v152, v147);
              goto LABEL_36;
            }
          }
        }

        v123 = v159;
        sub_1C6D777D0();
        v124 = v162;
        sub_1C6D77EB0();
        (*(v160 + 8))(v123, v161);
        v125 = v164;
        v126 = v163;
        v127 = v165;
        (*(v164 + 104))(v163, *MEMORY[0x1E69B44C8], v165);
        sub_1C6CFD560(&unk_1EDCE5FE0, MEMORY[0x1E69B4538], MEMORY[0x1E69B4540]);
        LOBYTE(v123) = sub_1C6D79560();
        v128 = *(v125 + 8);
        v128(v126, v127);
        v128(v124, v127);
        if ((v123 & 1) == 0)
        {
          v136 = v175;
          sub_1C6D77790();
          v137 = sub_1C6D77420();
          v139 = v138;
          (v154[0])(v136, v176);
          swift_beginAccess();
          sub_1C6B1E6A8(&v180, v137, v139);
          swift_endAccess();

          v140 = v178;
          v94[3] = v178;
          v141 = MEMORY[0x1E69B4778];
          v94[4] = sub_1C6CFD560(&qword_1EDCE5F68, MEMORY[0x1E69B4778], &protocol conformance descriptor for ArticleViewEvent.Model);
          v94[5] = sub_1C6CFD560(&qword_1EDCE5F60, v141, &protocol conformance descriptor for ArticleViewEvent.Model);
          boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v94);
          (*(v173 + 32))(boxed_opaque_existential_2, v95, v140);
          sub_1C6B1C9F0(v155, v177);
          v143 = *MEMORY[0x1E69E3628];
          v144 = sub_1C6D76F90();
          v145 = *(v144 - 8);
          (*(v145 + 104))(v94, v143, v144);
          (*(v145 + 56))(v94, 0, 1, v144);
          return;
        }

        if (qword_1EDCEA6A0 != -1)
        {
          swift_once();
        }

        v129 = qword_1EDCEA6A8;
        sub_1C6CFD4FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1C6D7E630;
        v131 = v175;
        sub_1C6D77790();
        v132 = sub_1C6D77420();
        v134 = v133;
        (v154[0])(v131, v176);
        *(v130 + 56) = MEMORY[0x1E69E6158];
        *(v130 + 64) = sub_1C6B2064C();
        *(v130 + 32) = v132;
        *(v130 + 40) = v134;
        v135 = sub_1C6D79AC0();
        sub_1C6D78D30("Encountered an ArticleViewEvent with viewAction userNavigation. This represents a peek at the article rather than a full visit, skipping emitting articleVisited action. ArticleID: %@", 182, 2, &dword_1C6B09000, v129, v135, v130);
        goto LABEL_36;
      }

      v98 = MEMORY[0x1E69B4BF0];
      sub_1C6CFD430(v171, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], v97);
      sub_1C6CFD430(v80, &qword_1EDCE5E40, v98, v99);
      (*(v172 + 8))(v96, v79);
      v94 = v156;
      v95 = v179;
    }

    sub_1C6CFD4A0(v86, v93);
    goto LABEL_18;
  }

LABEL_7:
  v74 = sub_1C6D76F90();
  (*(*(v74 - 8) + 56))(a5, 1, 1, v74);
}

void sub_1C6CFD308(uint64_t a1, double a2)
{
  if (!qword_1EDCE5E38)
  {
    sub_1C6CFD4FC(255, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE5E38);
    }
  }
}

uint64_t sub_1C6CFD39C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C6CFD4FC(0, &qword_1EDCE5E40, MEMORY[0x1E69B4BF0], MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CFD430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  sub_1C6CFD4FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6CFD4A0(uint64_t a1, double a2)
{
  sub_1C6CFD308(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6CFD4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6CFD560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ComputeServiceAdSegmentProvider.needsUpdate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ComputeServiceAdSegmentProvider.segmentValues()()
{
  sub_1C6B761BC();
  v0 = MEMORY[0x1CCA56010](25);
  sub_1C6B855D0();

  v1 = sub_1C6D78390();

  return v1;
}

uint64_t sub_1C6CFD704(uint64_t a1)
{
  sub_1C6CFD99C(0);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6CFD780(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C6BE5418(*(a5 + 24));
  a1(&v7);
}

uint64_t ComputeServiceAdSegmentProvider.deinit()
{

  return v0;
}

uint64_t ComputeServiceAdSegmentProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CFD8F0()
{
  sub_1C6B761BC();
  v0 = MEMORY[0x1CCA56010](25);
  sub_1C6B855D0();

  v1 = sub_1C6D78390();

  return v1;
}

void sub_1C6CFD99C(uint64_t a1)
{
  if (!qword_1EDCE5D78)
  {
    sub_1C6B855D0();
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5D78);
    }
  }
}

unint64_t Com_Apple_News_Personalization_ShareType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x11;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6CFDA68@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_News_Personalization_ShareType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C6CFDA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CC9658();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6CFDADC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9580);
  __swift_project_value_buffer(v0, qword_1EC1D9580);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C6D93F90;
  v5 = v40 + v4;
  v6 = v40 + v4 + *(v2 + 56);
  *(v40 + v4) = 0;
  *v6 = "SHARE_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "SHARE_TYPE_POST_TO_FACEBOOK";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "SHARE_TYPE_POST_TO_TWITTER";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "SHARE_TYPE_POST_TO_WEIBO";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "SHARE_TYPE_MESSAGE";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "SHARE_TYPE_MAIL";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "SHARE_TYPE_PRINT";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "SHARE_TYPE_COPY_TO_PASTEBOARD";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "SHARE_TYPE_ASSIGN_TO_CONTACT";
  *(v23 + 8) = 28;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "SHARE_TYPE_SAVE_TO_CAMERA_ROLL";
  *(v25 + 1) = 30;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "SHARE_TYPE_ADD_TO_READING_LIST";
  *(v27 + 1) = 30;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "SHARE_TYPE_POST_TO_FLICKR";
  *(v29 + 1) = 25;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "SHARE_TYPE_POST_TO_VIMEO";
  *(v31 + 1) = 24;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "SHARE_TYPE_POST_TO_TENCENT_WEIBO";
  *(v33 + 1) = 32;
  v33[16] = 2;
  v9();
  v34 = (v5 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "SHARE_TYPE_AIRDROP";
  *(v35 + 1) = 18;
  v35[16] = 2;
  v9();
  v36 = (v5 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "SHARE_TYPE_OPEN_IN_IBOOKS";
  *(v37 + 1) = 25;
  v37[16] = 2;
  v9();
  v38 = v5 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "SHARE_TYPE_MARKUP_AS_PDF";
  *(v38 + 8) = 24;
  *(v38 + 16) = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_ShareType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9580);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6CFE0DC()
{
  result = qword_1EC1D9598;
  if (!qword_1EC1D9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9598);
  }

  return result;
}

unint64_t sub_1C6CFE134()
{
  result = qword_1EC1D95A0;
  if (!qword_1EC1D95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D95A0);
  }

  return result;
}

unint64_t sub_1C6CFE18C()
{
  result = qword_1EC1D95A8;
  if (!qword_1EC1D95A8)
  {
    sub_1C6CFE1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D95A8);
  }

  return result;
}

void sub_1C6CFE1E4()
{
  if (!qword_1EC1D95B0)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D95B0);
    }
  }
}

unint64_t sub_1C6CFE238()
{
  result = qword_1EC1D95B8;
  if (!qword_1EC1D95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D95B8);
  }

  return result;
}

uint64_t sub_1C6CFE28C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9580);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
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

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(uint64_t a1)
{
  result = qword_1EDCE3578;
  if (!qword_1EDCE3578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CFE66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
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

uint64_t sub_1C6CFE7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.metadata.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0) + 24);
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

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CFEE04()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D95C0);
  __swift_project_value_buffer(v0, qword_1EC1D95C0);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D95C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6CFF124(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CFF124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6CFFBD0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6CFF274(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CFF274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6CFFBD0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  sub_1C6CFFBD0(&qword_1EC1D95D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CFF550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CFFBD0(&qword_1EC1D95F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CFF5CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D95C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CFF674(uint64_t a1)
{
  v2 = sub_1C6CFFBD0(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CFF6E0(uint64_t a1, uint64_t a2)
{
  sub_1C6CFFBD0(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventArticleSavedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
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

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0) + 24);
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
      sub_1C6CFFBD0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
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

uint64_t sub_1C6CFFBD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(uint64_t a1)
{
  result = qword_1EDCE3A68;
  if (!qword_1EDCE3A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  sub_1C6D78A40();
  sub_1C6D00690(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CFFED4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D95F8);
  __swift_project_value_buffer(v0, qword_1EC1D95F8);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D95F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6D78B50();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  sub_1C6D00690(&qword_1EC1D9610, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D00298(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D00690(&unk_1EC1D9628, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D00314@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D95F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D003BC(uint64_t a1)
{
  v2 = sub_1C6D00690(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D00428(uint64_t a1, uint64_t a2)
{
  sub_1C6D00690(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);

  return sub_1C6D78C20();
}

uint64_t sub_1C6D005C4(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6D00690(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6D00690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6D006FC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a5@<X8>)
{
  v48 = a2;
  v8 = sub_1C6D77380();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C6D77C70();
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v12);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B90BE8(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6D77290();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  (*(v24 + 16))(&v44 - v23, a1, v20, v22);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
    v25 = sub_1C6D77270();
    v26 = sub_1C6D77330();
    v28 = v27;

    if (!v5)
    {
      sub_1C6D00CD0(&qword_1EDCE5EB0, MEMORY[0x1E69B49C8], MEMORY[0x1E69B49D0]);
      v29 = v49;
      v30 = v52;
      sub_1C6D75AF0();
      sub_1C6D77C60();
      v32 = sub_1C6D77360();
      v34 = v33;
      (*(v45 + 8))(v11, v46);
      if (v34)
      {
        (*(v47 + 8))(v29, v30);
        sub_1C6B1C9F0(v26, v28);
        *a5 = v32;
        a5[1] = v34;
        v35 = *MEMORY[0x1E69E3600];
        v36 = sub_1C6D76F90();
        v37 = *(v36 - 8);
        (*(v37 + 104))(a5, v35, v36);
        (*(v37 + 56))(a5, 0, 1, v36);
      }

      else
      {
        v48 = a5;
        if (qword_1EDCE03B8 != -1)
        {
          swift_once();
        }

        v46 = qword_1EDCE03C0;
        v38 = sub_1C6D79AA0();
        sub_1C6B1D314(0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1C6D7E630;
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_1C6D79E60();
        v40 = v30;
        v41 = v50;
        v42 = v51;
        *(v39 + 56) = MEMORY[0x1E69E6158];
        *(v39 + 64) = sub_1C6B2064C();
        *(v39 + 32) = v41;
        *(v39 + 40) = v42;
        sub_1C6D78D30("Encountered an AppSessionStartEvent without an app session ID specified: %{public}@", 83, 2, &dword_1C6B09000, v46, v38, v39);
        sub_1C6B1C9F0(v26, v28);

        (*(v47 + 8))(v29, v40);
        v43 = sub_1C6D76F90();
        (*(*(v43 - 8) + 56))(v48, 1, 1, v43);
      }
    }
  }

  else
  {
    v31 = sub_1C6D76F90();
    (*(*(v31 - 8) + 56))(a5, 1, 1, v31);
  }
}

uint64_t sub_1C6D00CD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6D00D18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = sub_1C6D79570();
    v3 = [v4 stringArrayForKey_];

    if (v3)
    {
      v6 = sub_1C6D79780();

      v3 = sub_1C6B1E610(v6);
    }
  }

  *a2 = v3;
}

uint64_t sub_1C6D00E04(_OWORD *a1)
{
  *(v2 + 112) = v1;
  v3 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v3;
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1C6D00E3C, 0, 0);
}

uint64_t sub_1C6D00E3C()
{
  v13 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1C6CDF1E0();
  v3 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1C6D02768((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = sub_1C6B6732C(*(v2 + 16), 0);
    v7 = sub_1C6B67FC8(&v12, v6 + 4, v5, v2);
    sub_1C6B688C4(v12);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v8 = sub_1C6D79760();

  v9 = sub_1C6D79570();
  [v4 setObject:v8 forKey:v9];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C6D00FEC(_OWORD *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BB6A40;

  return sub_1C6D00E04(a1);
}

uint64_t sub_1C6D01084()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C6D00D18((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1C6D010DC(_OWORD *a1)
{
  *(v2 + 584) = v1;
  *(v2 + 576) = a1;
  sub_1C6B1B75C(0, qword_1EDCE65F0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v2 + 592) = swift_task_alloc();
  v4 = a1[3];
  *(v2 + 224) = a1[2];
  *(v2 + 240) = v4;
  v5 = a1[5];
  *(v2 + 256) = a1[4];
  *(v2 + 272) = v5;
  v6 = a1[1];
  *(v2 + 192) = *a1;
  *(v2 + 208) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C6D011BC, 0, 0);
}

uint64_t sub_1C6D011BC()
{
  v20 = v0;
  v1 = *(v0 + 576);
  *(v0 + 384) = *v1;
  *(v0 + 48) = *v1;
  *(v0 + 64) = 2;
  *(v0 + 400) = v1[1];
  *(v0 + 72) = v1[1];
  *(v0 + 88) = 9;
  *(v0 + 416) = v1[2];
  *(v0 + 96) = v1[2];
  *(v0 + 112) = 3;
  *(v0 + 432) = v1[3];
  *(v0 + 120) = v1[3];
  *(v0 + 136) = 7;
  *(v0 + 448) = v1[4];
  *(v0 + 144) = v1[4];
  *(v0 + 160) = 3;
  *(v0 + 464) = v1[5];
  *(v0 + 168) = v1[5];
  *(v0 + 184) = 1;
  v18 = MEMORY[0x1E69E7CC8];
  sub_1C6D027B0(v0 + 384, v0 + 480);
  sub_1C6D027B0(v0 + 400, v0 + 496);
  sub_1C6D027B0(v0 + 416, v0 + 512);
  sub_1C6D027B0(v0 + 432, v0 + 528);
  sub_1C6D027B0(v0 + 448, v0 + 544);
  sub_1C6D027B0(v0 + 464, v0 + 560);
  for (i = 0; i != 144; i += 24)
  {
    v4 = *(v0 + i + 56);
    v3 = *(v0 + i + 64);
    v19[0] = *(v0 + i + 48);
    v19[1] = v4;
    v19[2] = v3;

    sub_1C6D014B0(&v18, v19);
  }

  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  sub_1C6D0280C(0);
  swift_arrayDestroy();
  v7 = v18;
  v8 = sub_1C6D79880();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1C6D79860();
  v9 = v6;
  sub_1C6D02874(v0 + 192, v0 + 288);
  v10 = sub_1C6D79850();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v13 = *(v0 + 240);
  *(v11 + 72) = *(v0 + 224);
  *(v11 + 88) = v13;
  v14 = *(v0 + 272);
  *(v11 + 104) = *(v0 + 256);
  *(v11 + 120) = v14;
  v15 = *(v0 + 208);
  *(v11 + 40) = *(v0 + 192);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v9;
  *(v11 + 56) = v15;
  *(v11 + 136) = v7;
  sub_1C6BE0BF8(0, 0, v5, &unk_1C6D94630, v11);

  v16 = *(v0 + 8);

  return v16();
}

unint64_t sub_1C6D014B0(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v49 = *(v2 + 16);
  if (!v49)
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  v48 = *(a2 + 16);
  v5 = (v2 + 40);
  v45 = result;
  v46 = *(a2 + 8);
  while (v4 < *(v2 + 16))
  {
    v8 = *(v5 - 1);
    v9 = *v5;
    v10 = *v3;
    v11 = *(*v3 + 16);

    if (!v11 || (, sub_1C6B5DEA8(v8, v9), v13 = v12, , (v13 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v3;
      v50 = *v3;
      result = sub_1C6B5DEA8(v8, v9);
      v35 = *(v33 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_28;
      }

      v39 = v34;
      if (*(v33 + 24) >= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        v44 = result;
        sub_1C6B74ED8();
        result = v44;
        if (v39)
        {
          goto LABEL_3;
        }

LABEL_22:
        v7 = v50;
        v50[(result >> 6) + 8] |= 1 << result;
        v41 = (v50[6] + 16 * result);
        *v41 = v8;
        v41[1] = v9;
        *(v50[7] + 8 * result) = v48;
        v42 = v50[2];
        v37 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v37)
        {
          goto LABEL_29;
        }

        v50[2] = v43;
      }

      else
      {
        sub_1C6B72354(v38, isUniquelyReferenced_nonNull_native);
        result = sub_1C6B5DEA8(v8, v9);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_34;
        }

LABEL_21:
        if ((v39 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_3:
        v6 = result;

        v7 = v50;
        *(v50[7] + 8 * v6) = v48;
      }

      *v3 = v7;
      goto LABEL_5;
    }

    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDCE23C0;
    v15 = sub_1C6D79AA0();
    sub_1C6B1B75C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C6D7EB10;
    if (!*(v10 + 16))
    {
      goto LABEL_30;
    }

    v17 = v16;

    sub_1C6B5DEA8(v8, v9);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }

    v47 = v15;
    v20 = NSStringFromFCSubscriptionOrigin();
    if (!v20)
    {
      goto LABEL_33;
    }

    v21 = v20;
    v22 = sub_1C6D795A0();
    v24 = v23;

    v25 = MEMORY[0x1E69E6158];
    v17[7] = MEMORY[0x1E69E6158];
    v26 = sub_1C6B2064C();
    v17[8] = v26;
    v17[4] = v22;
    v17[5] = v24;
    v27 = NSStringFromFCSubscriptionOrigin();
    if (!v27)
    {
      goto LABEL_32;
    }

    v28 = v27;

    v29 = sub_1C6D795A0();
    v31 = v30;

    v17[12] = v25;
    v17[13] = v26;
    v17[9] = v29;
    v17[10] = v31;
    sub_1C6D78D30("Unexpectedly found a duplicate auto favorite across results, existing origin %{public}@ new origin %{public}@", 109, 2, &dword_1C6B09000, v14, v47, v17);

    v3 = v45;
    v2 = v46;
LABEL_5:
    ++v4;
    v5 += 3;
    if (v49 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D01840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  sub_1C6D79860();
  v6[36] = sub_1C6D79850();
  v8 = sub_1C6D79840();
  v6[37] = v8;
  v6[38] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C6D018DC, v8, v7);
}

uint64_t sub_1C6D018DC()
{
  v1 = *(v0 + 272);
  *(v0 + 168) = *v1;
  v2 = *(v0 + 176);
  *(v0 + 184) = v1[1];
  *(v0 + 200) = v1[2];
  *(v0 + 216) = v1[3];
  *(v0 + 232) = v1[4];
  *(v0 + 248) = v1[5];
  sub_1C6D027B0(v0 + 168, v0 + 80);
  sub_1C6D027B0(v0 + 184, v0 + 80);
  sub_1C6D027B0(v0 + 200, v0 + 80);
  sub_1C6D027B0(v0 + 216, v0 + 80);
  sub_1C6D027B0(v0 + 232, v0 + 80);
  aBlock = (v0 + 80);
  sub_1C6D027B0(v0 + 248, v0 + 80);
  v64 = MEMORY[0x1E69E7CC0];
  sub_1C6B39A08(0, 6, 0);
  v3 = v64;
  v5 = *(v64 + 16);
  v4 = *(v64 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;

  if (v4 >> 1 <= v5)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v8 = *(v0 + 192);
    *(v3 + 16) = v7;
    *(v3 + 8 * v5 + 32) = v2;

    if (v6 < v5 + 2)
    {
      sub_1C6B39A08((v4 > 1), v5 + 2, 1);
      v3 = v64;
    }

    v9 = *(v0 + 208);
    *(v3 + 16) = v5 + 2;
    *(v3 + 8 * v7 + 32) = v8;
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    v12 = v11 + 1;

    if (v11 >= v10 >> 1)
    {
      sub_1C6B39A08((v10 > 1), v11 + 1, 1);
    }

    v13 = *(v0 + 224);
    v14 = v64;
    *(v64 + 16) = v12;
    *(v64 + 8 * v11 + 32) = v9;
    v15 = *(v64 + 24);
    v16 = v11 + 2;

    if ((v11 + 2) > (v15 >> 1))
    {
      sub_1C6B39A08((v15 > 1), v11 + 2, 1);
      v14 = v64;
    }

    v17 = *(v0 + 240);
    *(v14 + 16) = v16;
    *(v14 + 8 * v12 + 32) = v13;
    v18 = *(v14 + 16);
    v4 = *(v14 + 24);
    v5 = v4 >> 1;
    v2 = v18 + 1;

    if (v4 >> 1 <= v18)
    {
      sub_1C6B39A08((v4 > 1), v18 + 1, 1);
      v14 = v64;
      v4 = *(v64 + 24);
      v5 = v4 >> 1;
    }

    v19 = *(v0 + 256);
    *(v14 + 16) = v2;
    *(v14 + 8 * v18 + 32) = v17;
    v20 = v18 + 2;

    if (v5 < v20)
    {
      sub_1C6B39A08((v4 > 1), v20, 1);
    }

    v21 = v64;
    *(v64 + 16) = v20;
    v59 = v64 + 32;
    *(v64 + 32 + 8 * v2) = v19;
    sub_1C6D02998(v0 + 184);
    sub_1C6D02998(v0 + 200);
    sub_1C6D02998(v0 + 216);
    sub_1C6D02998(v0 + 232);
    sub_1C6D02998(v0 + 248);
    sub_1C6D02998(v0 + 168);
    v22 = *(v64 + 16);
    if (!v22)
    {

      v7 = MEMORY[0x1E69E7CC0];
      v36 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v36)
      {
        goto LABEL_44;
      }

LABEL_26:
      v4 = 0;
      v5 = v7 + 32;
      v37 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v4 >= *(v7 + 16))
        {
          goto LABEL_49;
        }

        v38 = v7;
        v39 = *(v5 + 8 * v4);
        v7 = *(v39 + 16);
        v2 = *(v37 + 2);
        v40 = v2 + v7;
        if (__OFADD__(v2, v7))
        {
          goto LABEL_50;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v40 <= *(v37 + 3) >> 1)
        {
          if (!*(v39 + 16))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v2 <= v40)
          {
            v42 = v2 + v7;
          }

          else
          {
            v42 = v2;
          }

          v37 = sub_1C6B6592C(isUniquelyReferenced_nonNull_native, v42, 1, v37);
          if (!*(v39 + 16))
          {
LABEL_27:

            if (v7)
            {
              goto LABEL_51;
            }

            goto LABEL_28;
          }
        }

        if ((*(v37 + 3) >> 1) - *(v37 + 2) < v7)
        {
          goto LABEL_52;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v43 = *(v37 + 2);
          v44 = __OFADD__(v43, v7);
          v45 = v43 + v7;
          if (v44)
          {
            goto LABEL_53;
          }

          *(v37 + 2) = v45;
        }

LABEL_28:
        ++v4;
        v7 = v38;
        if (v36 == v4)
        {
          goto LABEL_45;
        }
      }
    }

    v63 = MEMORY[0x1E69E7CC0];
    sub_1C6B399C4(0, v22, 0);
    v23 = 0;
    v7 = v63;
    v57 = v22;
    v58 = v64;
    v56 = v0;
LABEL_14:
    if (v23 < *(v21 + 16))
    {
      break;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    sub_1C6B39A08((v4 > 1), v7, 1);
    v3 = v64;
    v4 = *(v64 + 24);
    v6 = v4 >> 1;
  }

  v24 = *(v59 + 8 * v23);
  v5 = *(v24 + 16);
  if (v5)
  {
    v60 = v23;
    v61 = v7;
    v65 = MEMORY[0x1E69E7CC0];

    sub_1C6B39280(0, v5, 0);
    v25 = 0;
    v26 = v65;
    v27 = *(v65 + 16);
    v28 = 16 * v27;
    do
    {
      v29 = v24;
      v30 = *(v24 + v25 + 32);
      v31 = *(v24 + v25 + 40);
      v64 = v26;
      v32 = *(v26 + 24);
      v33 = v27 + 1;

      if (v27 >= v32 >> 1)
      {
        sub_1C6B39280((v32 > 1), v33, 1);
      }

      *(v26 + 16) = v33;
      v34 = v26 + v28;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      v28 += 16;
      v25 += 24;
      ++v27;
      --v5;
      v24 = v29;
    }

    while (v5);

    v0 = v56;
    v22 = v57;
    v23 = v60;
    v7 = v61;
    v21 = v58;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v7 + 16);
  v35 = *(v7 + 24);
  v4 = v2 + 1;
  if (v2 >= v35 >> 1)
  {
    sub_1C6B399C4((v35 > 1), v2 + 1, 1);
  }

  ++v23;
  *(v7 + 16) = v4;
  *(v7 + 8 * v2 + 32) = v26;
  if (v23 != v22)
  {
    goto LABEL_14;
  }

  v36 = *(v7 + 16);
  if (v36)
  {
    goto LABEL_26;
  }

LABEL_44:
  v37 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v46 = *(v0 + 280);
  v62 = *(v0 + 264);

  sub_1C6B1E610(v37);

  v47 = sub_1C6D79950();
  *(v0 + 312) = v47;

  v48 = sub_1C6D79950();
  *(v0 + 320) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  *(v0 + 112) = sub_1C6D029EC;
  *(v0 + 120) = v49;
  v50 = MEMORY[0x1E69E9820];
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C6D02514;
  *(v0 + 104) = &block_descriptor_11;
  v51 = _Block_copy(aBlock);
  *(v0 + 328) = v51;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1C6D02040;
  v52 = swift_continuation_init();
  sub_1C6D029F4(0);
  *(v0 + 136) = v53;
  *(v0 + 80) = v50;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C6D0258C;
  *(v0 + 104) = &block_descriptor_14;
  *(v0 + 112) = v52;
  [v62 addAutoFavoriteSubscriptionForTagIDs:v47 groupableSubscriptionForTagIDs:v48 originProvider:v51 completion:aBlock];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C6D02040()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1C6D02148, v2, v1);
}

uint64_t sub_1C6D02148()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];

  v4 = v0[18];
  v5 = v0[19];
  v20 = v0[20];
  _Block_release(v2);

  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDCE23C0;
  sub_1C6B1B75C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D807C0;
  v0[10] = v4;
  sub_1C6B1B75C(0, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
  v8 = sub_1C6D795F0();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C6B2064C();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v0[10] = v5;
  v13 = sub_1C6D795F0();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v0[10] = v20;
  v15 = sub_1C6D795F0();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;
  v17 = sub_1C6D79AC0();
  sub_1C6D78D30("Attempted to subscribe with result failedTagIDs=%{public}@, tagIDsToAdd=%{public}@, tagIDsToRemove=%{public}@", 109, 2, &dword_1C6B09000, v6, v17, v7);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1C6D02354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a3 + 16);

    if (v6)
    {
      v7 = sub_1C6B5DEA8(a1, a2);
      if (v8)
      {
        v9 = v7;

        return *(*(a3 + 56) + 8 * v9);
      }
    }

    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v11 = qword_1EDCE23C0;
    v12 = sub_1C6D79AA0();
    sub_1C6B1B75C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6D7E630;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C6B2064C();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    sub_1C6D78D30("Failed to find an origin for selected tagID %{public}@", 54, 2, &dword_1C6B09000, v11, v12, v13);
  }

  else
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDCE23C0;
    v15 = sub_1C6D79AA0();
    sub_1C6D78D30("Asked for the origin of a nil tagID", 35, 2, &dword_1C6B09000, v14, v15, MEMORY[0x1E69E7CC0]);
  }

  return 10;
}

uint64_t sub_1C6D02514(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1C6D795A0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v2(v3, v5);

  return v6;
}

uint64_t sub_1C6D0258C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    a2 = sub_1C6D79960();
  }

  if (a3)
  {
    a3 = sub_1C6D79960();
  }

  if (a4)
  {
    v8 = sub_1C6D79960();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(v7 + 64) + 40);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = v8;

  return MEMORY[0x1EEE6DED8](v7);
}

uint64_t sub_1C6D02664(_OWORD *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BE1AB0;

  return sub_1C6D010DC(a1);
}

id sub_1C6D026FC()
{
  result = [*v0 autoFavoriteTagIDs];
  if (result)
  {
    v2 = result;
    v3 = sub_1C6D79780();

    v4 = sub_1C6B1E610(v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6D02768(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

void sub_1C6D0280C(uint64_t a1)
{
  if (!qword_1EDCE2340)
  {
    type metadata accessor for FCSubscriptionOrigin(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE2340);
    }
  }
}

uint64_t sub_1C6D028D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[17];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C6BB6A40;

  return sub_1C6D01840(a1, v4, v5, v6, (v1 + 5), v7);
}

void sub_1C6D029F4(uint64_t a1)
{
  if (!qword_1EDCDF948)
  {
    sub_1C6D02A5C(255);
    v1 = sub_1C6D79890();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF948);
    }
  }
}

void sub_1C6D02A5C(uint64_t a1)
{
  if (!qword_1EDCDF930)
  {
    sub_1C6B1B75C(255, &qword_1EDCE65D0, sub_1C6B11374, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDCDF930);
    }
  }
}

uint64_t sub_1C6D02B0C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v13 = *(v7 - 3);
      v14 = v8;
      v15 = v9;

      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 4;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

void sub_1C6D02BC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  v124 = a3;
  v129 = a2;
  v114 = sub_1C6D77E40();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v112 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1C6D77480();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v11);
  v110 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v111 = &v106 - v15;
  v121 = sub_1C6D77380();
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v16);
  v118 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D76920();
  v122 = *(v18 - 8);
  v123 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v117 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v120 = &v106 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v106 - v26;
  v28 = sub_1C6D773B0();
  v29 = *(v28 - 8);
  v127 = v28;
  v128 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v126 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1C6D778E0();
  v125 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v32);
  v135 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D03884(0);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C6D77290();
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  (*(v44 + 16))(&v106 - v43, a1, v40, v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = sub_1C6D76F90();
    (*(*(v51 - 8) + 56))(a6, 1, 1, v51);
    return;
  }

  v109 = a6;
  (*(v36 + 8))(v39, v35);
  v45 = sub_1C6D77270();
  v46 = sub_1C6D77330();
  v48 = v47;

  if (!v6)
  {
    sub_1C6D03918(&qword_1EDCE5F38, MEMORY[0x1E69B47D8], MEMORY[0x1E69B47E0]);
    v49 = v135;
    v50 = v130;
    sub_1C6D75AF0();
    v129 = 0;
    v107 = v46;
    v108 = v48;
    v52 = v126;
    sub_1C6D778D0();
    v53 = sub_1C6D773A0();
    v54 = v128 + 8;
    v106 = *(v128 + 8);
    v106(v52, v127);
    sub_1C6D76A10();
    sub_1C6D76910();
    v56 = v55;
    v57 = *(v122 + 8);
    v58 = v27;
    v59 = v123;
    v57(v58, v123);
    if (v56 >= v53 / 1000.0)
    {
      (*(v125 + 8))(v49, v50);
      v78 = v107;
LABEL_12:
      sub_1C6B1C9F0(v78, v108);
      v79 = sub_1C6D76F90();
      (*(*(v79 - 8) + 56))(v109, 1, 1, v79);
      return;
    }

    v128 = v54;
    v60 = v118;
    sub_1C6D778C0();
    v61 = sub_1C6D77370();
    v63 = v62;
    (*(v119 + 8))(v60, v121);
    v131 = v61;
    v132 = v63;
    v64 = sub_1C6B16CF0();
    v65 = MEMORY[0x1CCA56110](47, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v64);

    v66 = v120;
    sub_1C6D76A10();
    v67 = sub_1C6D768E0();
    v57(v66, v59);
    if (v67)
    {
      v131 = sub_1C6D79C10();
      v132 = v68;
      v133 = v69;
      v134 = v70;
      MEMORY[0x1EEE9AC00](v131, v68);
      *(&v106 - 2) = &v131;
      v71 = v129;
      v72 = sub_1C6D02B0C(sub_1C6D03A00, (&v106 - 4), v65);
      v129 = v71;

      if (v72)
      {

        v73 = v111;
        sub_1C6D778A0();
        v74 = sub_1C6D77470();
        v76 = v75;
        (*(v115 + 8))(v73, v116);
        v50 = v130;
        if (v74 == 0x6E656D6D6F636572 && v76 == 0xEB00000000646564)
        {

          v77 = v107;
LABEL_24:
          v94 = v112;
          v95 = v135;
          sub_1C6D778B0();
          v96 = sub_1C6D77E30();
          v98 = v97;
          (*(v113 + 8))(v94, v114);
          v99 = v126;
          sub_1C6D778D0();
          v100 = sub_1C6D773A0();
          sub_1C6B1C9F0(v77, v108);
          v106(v99, v127);
          (*(v125 + 8))(v95, v50);
          v101 = v109;
          *v109 = v96;
          v101[1] = v98;
          v101[2] = v100;
          v102 = *MEMORY[0x1E69E3610];
          v103 = sub_1C6D76F90();
          v104 = *(v103 - 8);
          (*(v104 + 104))(v101, v102, v103);
          (*(v104 + 56))(v101, 0, 1, v103);
          return;
        }

        v93 = sub_1C6D7A130();

        v77 = v107;
        if (v93)
        {
          goto LABEL_24;
        }

LABEL_26:
        (*(v125 + 8))(v135, v50);
        v78 = v77;
        goto LABEL_12;
      }

      v50 = v130;
    }

    v80 = v117;
    sub_1C6D76A10();
    v81 = sub_1C6D768F0();
    v57(v80, v59);
    if (v81)
    {
      v131 = sub_1C6D79C10();
      v132 = v82;
      v133 = v83;
      v134 = v84;
      MEMORY[0x1EEE9AC00](v131, v82);
      *(&v106 - 2) = &v131;
      v85 = v129;
      v86 = sub_1C6D02B0C(sub_1C6D039E0, (&v106 - 4), v65);
      v129 = v85;

      v77 = v107;
      if (v86)
      {
        v87 = v110;
        sub_1C6D778A0();
        v88 = sub_1C6D77470();
        v90 = v89;
        (*(v115 + 8))(v87, v116);
        if (v88 == 0x6E656D6D6F636572 && v90 == 0xEB00000000646564)
        {

          goto LABEL_24;
        }

        v105 = sub_1C6D7A130();

        if (v105)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      sub_1C6B1C9F0(v107, v108);
    }

    else
    {
      sub_1C6B1C9F0(v107, v108);
    }

    v91 = v109;
    (*(v125 + 8))(v135, v50);
    v92 = sub_1C6D76F90();
    (*(*(v92 - 8) + 56))(v91, 1, 1, v92);
  }
}

void sub_1C6D03884(uint64_t a1)
{
  if (!qword_1EDCE6090)
  {
    sub_1C6D778F0();
    sub_1C6D03918(&qword_1EDCE5F30, MEMORY[0x1E69B47E8], MEMORY[0x1E69B47D0]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6090);
    }
  }
}

uint64_t sub_1C6D03918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6D03960(unint64_t *a1, void *a2)
{
  if (a1[2] == a2[2] && a1[3] == a2[3] && *a1 >> 16 == *a2 >> 16 && a1[1] >> 16 == a2[1] >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1C6D7A0D0() & 1;
  }
}

id XavierScoringService.__allocating_init(aggregateStore:configurationManager:translationProvider:userContextProvider:computeServiceScoringService:computeServiceCohortMembershipService:tracker:recipeScoringService:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a4[3];
  v16 = a4[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v19 = sub_1C6D1A630(a1, a2, a3, v18, a5, a6, a7, a8, v8, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v19;
}

uint64_t sub_1C6D03ACC(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v34 = MEMORY[0x1E69E7CC0];
    sub_1C6B39464(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v34;
    v9 = i - 1;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1CCA56240](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v31 = v10;
      a1(v32, &v31);
      if (v4)
      {
        goto LABEL_21;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v20 = v32[4];
      v21 = v32[5];
      v17 = v32[1];
      v18 = v32[2];
      v19 = v32[3];
      v24 = v32[8];
      v25 = v32[9];
      v22 = v32[6];
      v23 = v32[7];
      v28 = v32[12];
      v29 = v32[13];
      v26 = v32[10];
      v27 = v32[11];
      v30 = v33;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      v16 = v32[0];
      v34 = v7;
      if (v12 >= v11 >> 1)
      {
        sub_1C6B39464((v11 > 1), v12 + 1, 1);
        v7 = v34;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 232 * v12;
      *(v13 + 48) = v17;
      *(v13 + 64) = v18;
      *(v13 + 32) = v16;
      *(v13 + 112) = v21;
      *(v13 + 128) = v22;
      *(v13 + 80) = v19;
      *(v13 + 96) = v20;
      *(v13 + 176) = v25;
      *(v13 + 192) = v26;
      *(v13 + 144) = v23;
      *(v13 + 160) = v24;
      *(v13 + 256) = v30;
      *(v13 + 224) = v28;
      *(v13 + 240) = v29;
      *(v13 + 208) = v27;
      if (v9 == v8)
      {
        return v7;
      }

      ++v8;
    }

    while (!__OFADD__(v8, 1));
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
LABEL_21:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_1C6D03CF8(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C6B39624(0, v11, 0);
    v12 = v22;
    v13 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) - 8);
    v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    while (1)
    {
      v19(v14, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C6B39624((v15 > 1), v16 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v16 + 1;
      sub_1C6D1C088(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      v14 += v18;
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

void sub_1C6D03EF8(void (*a1)(id *), unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  sub_1C6C74F64(0);
  v26 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
  {
    v12 = a3;
    v30 = MEMORY[0x1E69E7CC0];
    a3 = &v30;
    sub_1C6B39A58(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v13 = 0;
    v14 = v30;
    v15 = v12;
    v24 = v12;
    v25 = v12 & 0xC000000000000001;
    v21 = v12 & 0xFFFFFFFFFFFFFF8;
    v22 = v7 + 32;
    v23 = i;
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v25)
      {
        v17 = MEMORY[0x1CCA56240](v13, v15);
      }

      else
      {
        if (v13 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(v15 + 8 * v13 + 32);
      }

      i = v17;
      v29 = v17;
      a3 = v28;
      v27(&v29);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v30 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        a3 = &v30;
        sub_1C6B39A58((v18 > 1), v19 + 1, 1);
        v14 = v30;
      }

      *(v14 + 16) = v19 + 1;
      (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, v26);
      ++v13;
      v15 = v24;
      if (v16 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1C6D04140(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v22 = sub_1C6D799E0();
  if (!v22)
  {
    return sub_1C6D797E0();
  }

  v44 = v22;
  v48 = sub_1C6D79E30();
  v35 = sub_1C6D79E40();
  sub_1C6D79DE0();
  result = sub_1C6D799B0();
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
      v25 = sub_1C6D79A50();
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
      sub_1C6D79E20();
      result = sub_1C6D79A10();
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

uint64_t sub_1C6D04560(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6D75DE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1C6D1C040(&unk_1EDCE7B10, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]), v8 = sub_1C6D79500(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v18 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v17 = ~v9;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v7, *(a2 + 48) + v13 * v10, v3);
      sub_1C6D1C040(&unk_1EDCE7B00, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v15 = sub_1C6D79560();
      (*v14)(v7, v3);
      if (v15)
      {
        break;
      }

      v10 = (v10 + 1) & v17;
    }

    while (((*(v18 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_1C6D0477C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = 0;
  if (v6(a1, 1, v4) != 1)
  {
    v7 = sub_1C6D75ED0();
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1C6D75ED0();
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEarlierDate:v7 laterDate:v8];

  return v9;
}

void sub_1C6D048D4(void *a1)
{
  v2 = v1;
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1BE00(0, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v22 - v15;
  sub_1C6B0C69C(0, &qword_1EDCEA510, 0x1E69B5250);
  sub_1C6D75F30();
  [a1 recentlyFollowedDurationThreshold];
  sub_1C6D75EC0();
  (*(v5 + 8))(v8, v4);
  v17 = *(v5 + 56);
  v17(v16, 0, 1, v4);
  sub_1C6D75F30();
  v17(v12, 0, 1, v4);
  v18 = sub_1C6D0477C(v16, v12);
  v19 = (v2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider);
  v20 = *(v2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider + 24);
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v21 + 8))(v18, v20, v21);
}

id XavierScoringService.init(aggregateStore:configurationManager:translationProvider:userContextProvider:computeServiceScoringService:computeServiceCohortMembershipService:tracker:recipeScoringService:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x1EEE9AC00](v17, v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1C6D19FBC(a1, a2, a3, v20, a5, a6, v24, v25, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v22;
}

void sub_1C6D04C4C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(v6, v1, v2);
  v3 = v6[3];
  sub_1C6B11190(v6);
  v4 = [v3 defaultScoringConfig];
  if (v4)
  {
    v5 = v4;
    [v4 baselineRatePrior];

    [v3 baselineImpressionPrior];
    [v3 baselineImpressionPrior];
    sub_1C6D76AF0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1C6D04D34(void *a1, double a2)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 8))(v5, v2, v3);
  v4 = v5[3];
  sub_1C6B11190(v5);
  [v4 featureImpressionPrior];
  [v4 featureImpressionPrior];
  sub_1C6D76AF0();
}

void sub_1C6D04DE8(void *a1, uint64_t a2)
{
  v2 = a1[3];
  v4 = a1[11];
  v3 = a1[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();

    v7 = v2;
    sub_1C6D78240();

    swift_beginAccess();

    sub_1C6D78240();

    swift_beginAccess();

    sub_1C6D78240();

    swift_beginAccess();

    v8 = v4;
    sub_1C6D78240();

    swift_beginAccess();

    v9 = v3;
    sub_1C6D78240();
  }
}

void *sub_1C6D04F98(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 8))(v30, v5, v6);
  sub_1C6B11190(v30);
  if (v31 != 1)
  {
LABEL_19:
    if (qword_1EDCEA6A0 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v7 = *(a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceCohortMembershipService);
  if (!v7)
  {
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDCEA6A8;
    v24 = sub_1C6D79AC0();
    sub_1C6D78D30("Tabi cohort membership service unavailable", 42, 2, &dword_1C6B09000, v23, v24, MEMORY[0x1E69E7CC0]);
    return 0;
  }

  v29 = MEMORY[0x1E69E7CD0];
  if (a2 >> 62)
  {
    v8 = sub_1C6D79E90();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    v22 = MEMORY[0x1E69E7CD0];
LABEL_27:
    v26 = ComputeServiceCohortMembershipService.evaluate(tags:)(v22);

    return v26;
  }

  v27 = v7;
  v9 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCA56240](v9, a2);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v10 = *(a2 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_18;
    }

LABEL_12:
    v12 = [v10 publisherID];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1C6D795A0();
      v16 = v15;

      sub_1C6B1E6A8(&v28, v14, v16);
    }

    v17 = [v10 topicIDs];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1C6D79780();

      sub_1C6CE3528(v19);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v9;
    if (v11 == v8)
    {
      v22 = v29;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_20:
  v20 = qword_1EDCEA6A8;
  v21 = sub_1C6D79AC0();
  sub_1C6D78D30("Tabi cohort membership service disabled", 39, 2, &dword_1C6B09000, v20, v21, MEMORY[0x1E69E7CC0], v27);
  return 0;
}

uint64_t XavierScoringService.score(items:context:)(unint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1C6D1BE00(0, &qword_1EDCEA7B0, MEMORY[0x1E69B4A90]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v276 = &v257 - v7;
  isUniquelyReferenced_nonNull_native = sub_1C6D77D80();
  v9 = *(isUniquelyReferenced_nonNull_native - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v11);
  v12 = &v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v257 - v15;
  sub_1C6D1BE00(0, &qword_1EDCEA538, MEMORY[0x1E69B5910]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v307 = &v257 - v19;
  v311 = sub_1C6D79040();
  v309 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311, v20);
  v308 = &v257 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v264 = &v257 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v260 = &v257 - v27;
  sub_1C6D1BE54(0, &unk_1EDCEA850, MEMORY[0x1E69E31C8], MEMORY[0x1E69E35A8], "key value ");
  v306 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v310 = &v257 - v30;
  v314 = sub_1C6D76170();
  v316 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314, v31);
  v293 = &v257 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v263 = &v257 - v35;
  v36 = sub_1C6D771D0();
  v280 = *(v36 - 8);
  v281 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v282 = &v257 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1C6D771C0();
  v277 = *(v39 - 8);
  v278 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v279 = &v257 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6D76880();
  v291 = *(v42 - 8);
  v292 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v304 = &v257 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1C6D767D0();
  v289 = *(v45 - 8);
  v290 = v45;
  MEMORY[0x1EEE9AC00](v45, v46);
  v303 = (&v257 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_1C6D76A80();
  v287 = *(v48 - 8);
  v288 = v48;
  MEMORY[0x1EEE9AC00](v48, v49);
  v302 = (&v257 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1C6D767B0();
  v285 = *(v51 - 8);
  v286 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v305 = &v257 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C6D76B30();
  v283 = *(v54 - 8);
  v284 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v298 = (&v257 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_1C6D75F50();
  v272 = *(v57 - 8);
  v273 = v57;
  MEMORY[0x1EEE9AC00](v57, v58);
  v267 = &v257 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v301 = &v257 - v62;
  v261 = v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v300 = &v257 - v66;
  v67 = sub_1C6D78EB0();
  v274 = *(v67 - 8);
  v275 = v67;
  MEMORY[0x1EEE9AC00](v67, v68);
  v299 = &v257 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C6D75F80();
  MEMORY[0x1EEE9AC00](v70, v71);
  v320 = &v257 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1 >> 62;
  v325 = a1;
  if (a1 >> 62)
  {
    goto LABEL_178;
  }

  v76 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v76)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v321 = v76;
  v265 = v73;
  v266 = v72;
  v258 = v12;
  v262 = v16;
  sub_1C6D75F70();
  sub_1C6D78EA0();
  sub_1C6D75F40();
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v271 = qword_1EDCEA6A8;
  v77 = sub_1C6D79AC0();
  sub_1C6B1D314(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6D7F520;
  v269 = v9;
  v270 = isUniquelyReferenced_nonNull_native;
  v319 = a2;
  v257 = v10;
  v268 = ObjectType;
  v322 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v75)
  {
    v78 = sub_1C6D79E90();
  }

  else
  {
    v78 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v313;
  v80 = MEMORY[0x1E69E65A8];
  *(v12 + 56) = MEMORY[0x1E69E6530];
  *(v12 + 64) = v80;
  v312 = v78;
  *(v12 + 32) = v78;
  v81 = v79 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  a2 = v79;
  swift_beginAccess();
  v318 = v81;

  sub_1C6D78230();

  v82 = v333;
  v83 = [v333 treatmentID];

  *&v333 = v83;
  v84 = sub_1C6D7A0E0();
  isUniquelyReferenced_nonNull_native = v85;
  v86 = MEMORY[0x1E69E6158];
  *(v12 + 96) = MEMORY[0x1E69E6158];
  v9 = sub_1C6B2064C();
  *(v12 + 104) = v9;
  *(v12 + 72) = v84;
  *(v12 + 80) = isUniquelyReferenced_nonNull_native;
  v87 = sub_1C6D79100();
  *(v12 + 136) = v86;
  *(v12 + 144) = v9;
  *(v12 + 112) = v87;
  *(v12 + 120) = v88;
  *&v333 = 0;
  *(&v333 + 1) = 0xE000000000000000;
  v317 = *(a2 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore);
  [v317 decayRate];
  sub_1C6D79910();
  v89 = v333;
  *(v12 + 176) = v86;
  *(v12 + 184) = v9;
  *(v12 + 152) = v89;
  v75 = v320;
  v90 = sub_1C6D75F60();
  *(v12 + 216) = v86;
  *(v12 + 224) = v9;
  *(v12 + 192) = v90;
  *(v12 + 200) = v91;
  sub_1C6D78D30("Xavier scoring %ld items using context %{public}@, config %{public}@, default decay factor %{public}@, request ID %{public}@", 124, 2, &dword_1C6B09000, v271, v77, v12);

  v16 = 0;
  v323 = a1 & 0xC000000000000001;
  v259 = a1 + 32;
  ObjectType = MEMORY[0x1E69E7CC8];
  v10 = 0x1E8298000;
  do
  {
    if (v323)
    {
      v72 = MEMORY[0x1CCA56240](v16, a1);
      v12 = v72;
      v93 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_165;
      }
    }

    else
    {
      if (v16 >= *(v322 + 16))
      {
        goto LABEL_166;
      }

      v12 = *(a1 + 8 * v16 + 32);
      v72 = swift_unknownObjectRetain();
      v93 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        v266 = v72;
        v253 = ObjectType;
        v254 = v73;
        v255 = sub_1C6D79E90();
        v73 = v254;
        ObjectType = v253;
        a1 = v325;
        v76 = v255;
        v72 = v266;
        if (!v76)
        {
          return MEMORY[0x1E69E7CC0];
        }

        goto LABEL_3;
      }
    }

    v324 = v93;
    v94 = [v12 *(v10 + 584)];
    v95 = sub_1C6D795A0();
    v97 = v96;

    if (ObjectType[2])
    {
      sub_1C6B5DEA8(v95, v97);
      v99 = v98;

      v100 = MEMORY[0x1E69E7CC0];
      if (v99)
      {
      }
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
    }

    *&v333 = v100;
    v101 = swift_unknownObjectRetain();
    MEMORY[0x1CCA55C20](v101);
    if (*((v333 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v333 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C6D797C0();
    }

    sub_1C6D79800();
    a2 = v333;
    v102 = [v12 *(v10 + 584)];
    v9 = sub_1C6D795A0();
    v104 = v103;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v326 = ObjectType;
    v75 = ObjectType;
    v10 = sub_1C6B5DEA8(v9, v104);
    v106 = ObjectType;
    v107 = ObjectType[2];
    v108 = (v105 & 1) == 0;
    v72 = v107 + v108;
    if (__OFADD__(v107, v108))
    {
      goto LABEL_167;
    }

    ObjectType = v105;
    if (v106[3] >= v72)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        isUniquelyReferenced_nonNull_native = v326;
        if (v105)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v75 = &v326;
        v72 = sub_1C6B73090();
        isUniquelyReferenced_nonNull_native = v326;
        if (ObjectType)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_1C6B6F0BC(v72, isUniquelyReferenced_nonNull_native);
      v75 = v326;
      v72 = sub_1C6B5DEA8(v9, v104);
      if ((ObjectType & 1) != (v109 & 1))
      {
        goto LABEL_188;
      }

      v10 = v72;
      isUniquelyReferenced_nonNull_native = v326;
      if (ObjectType)
      {
LABEL_9:
        v92 = *(isUniquelyReferenced_nonNull_native + 56);
        v75 = *(v92 + 8 * v10);
        *(v92 + 8 * v10) = a2;
        swift_unknownObjectRelease();

        ObjectType = isUniquelyReferenced_nonNull_native;
        goto LABEL_10;
      }
    }

    *(isUniquelyReferenced_nonNull_native + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v110 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v10);
    *v110 = v9;
    v110[1] = v104;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v10) = a2;
    v111 = *(isUniquelyReferenced_nonNull_native + 16);
    v112 = __OFADD__(v111, 1);
    v113 = v111 + 1;
    if (v112)
    {
      goto LABEL_175;
    }

    ObjectType = isUniquelyReferenced_nonNull_native;
    *(isUniquelyReferenced_nonNull_native + 16) = v113;
    v72 = swift_unknownObjectRelease();
LABEL_10:
    ++v16;
    a1 = v325;
    v10 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  }

  while (v324 != v321);
  v315 = ObjectType;
  v75 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  ObjectType = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  v12 = MEMORY[0x1E69E6158];
  while (v323)
  {
    v72 = MEMORY[0x1CCA56240](v75, a1);
    v114 = v72;
    a2 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_58;
    }

LABEL_40:
    v115 = [v114 topicIDs];
    if (v115)
    {
      v116 = v115;
      v9 = sub_1C6D79780();
      swift_unknownObjectRelease();
    }

    else
    {
      v72 = swift_unknownObjectRelease();
      v9 = MEMORY[0x1E69E7CC0];
    }

    v117 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = *(v16 + 16);
    v10 = isUniquelyReferenced_nonNull_native + v117;
    if (__OFADD__(isUniquelyReferenced_nonNull_native, v117))
    {
      goto LABEL_169;
    }

    v72 = swift_isUniquelyReferenced_nonNull_native();
    if (v72 && v10 <= *(v16 + 24) >> 1)
    {
      if (!*(v9 + 16))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (isUniquelyReferenced_nonNull_native <= v10)
      {
        v118 = isUniquelyReferenced_nonNull_native + v117;
      }

      else
      {
        v118 = isUniquelyReferenced_nonNull_native;
      }

      v72 = sub_1C6B6592C(v72, v118, 1, v16);
      v16 = v72;
      if (!*(v9 + 16))
      {
LABEL_35:

        if (v117)
        {
          goto LABEL_170;
        }

        goto LABEL_36;
      }
    }

    if ((*(v16 + 24) >> 1) - *(v16 + 16) < v117)
    {
      goto LABEL_173;
    }

    swift_arrayInitWithCopy();

    if (v117)
    {
      v119 = *(v16 + 16);
      v112 = __OFADD__(v119, v117);
      v120 = v119 + v117;
      if (v112)
      {
        goto LABEL_176;
      }

      *(v16 + 16) = v120;
    }

LABEL_36:
    ++v75;
    a1 = v325;
    if (a2 == v321)
    {
      goto LABEL_59;
    }
  }

  if (v75 >= *(v322 + 16))
  {
    goto LABEL_168;
  }

  v114 = *(a1 + 8 * v75 + 32);
  v72 = swift_unknownObjectRetain();
  a2 = v75 + 1;
  if (!__OFADD__(v75, 1))
  {
    goto LABEL_40;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  a2 = *(v16 + 16);
  if (!a2)
  {
    v322 = MEMORY[0x1E69E7CC8];
    goto LABEL_80;
  }

  v121 = 0;
  v324 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider;
  v122 = v16 + 40;
  v297 = (a2 - 1);
  v322 = MEMORY[0x1E69E7CC8];
  v123 = v313;
  v321 = v16 + 40;
  while (2)
  {
    ObjectType = (v122 + 16 * v121);
    v10 = v121;
    while (2)
    {
      if (v10 >= *(v16 + 16))
      {
        goto LABEL_174;
      }

      v75 = *(v123 + v324);
      if (!v75)
      {
LABEL_62:
        ++v10;
        ObjectType += 2;
        if (a2 == v10)
        {
          goto LABEL_80;
        }

        continue;
      }

      break;
    }

    v12 = *(ObjectType - 1);
    isUniquelyReferenced_nonNull_native = *ObjectType;

    v9 = sub_1C6D79570();
    v124 = [v75 topicTranslationForTagID_];

    if (!v124)
    {

      v123 = v313;
      a1 = v325;
      goto LABEL_62;
    }

    v125 = [v124 tagID];
    v296 = sub_1C6D795A0();
    v127 = v126;

    v128 = v322;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *&v333 = v128;
    v129 = sub_1C6B5DEA8(v12, isUniquelyReferenced_nonNull_native);
    v131 = *(v128 + 16);
    v132 = (v130 & 1) == 0;
    v112 = __OFADD__(v131, v132);
    v133 = v131 + v132;
    if (v112)
    {
      goto LABEL_184;
    }

    if (*(v128 + 24) >= v133)
    {
      if ((v9 & 1) == 0)
      {
        v322 = v129;
        v9 = v130;
        sub_1C6B72F08();
        LOBYTE(v130) = v9;
        v129 = v322;
      }
    }

    else
    {
      LODWORD(v322) = v130;
      sub_1C6B6EDEC(v133, v9);
      v129 = sub_1C6B5DEA8(v12, isUniquelyReferenced_nonNull_native);
      v134 = v130 & 1;
      LOBYTE(v130) = v322;
      if ((v322 & 1) != v134)
      {
        goto LABEL_188;
      }
    }

    v135 = v296;
    v75 = v333;
    v322 = v333;
    if (v130)
    {
      v136 = (*(v333 + 56) + 16 * v129);
      v75 = v136[1];
      *v136 = v296;
      v136[1] = v127;
    }

    else
    {
      *(v333 + 8 * (v129 >> 6) + 64) |= 1 << v129;
      v137 = (*(v75 + 48) + 16 * v129);
      *v137 = v12;
      v137[1] = isUniquelyReferenced_nonNull_native;
      v138 = (*(v75 + 56) + 16 * v129);
      *v138 = v135;
      v138[1] = v127;

      v139 = *(v75 + 16);
      v112 = __OFADD__(v139, 1);
      v140 = v139 + 1;
      if (v112)
      {
        goto LABEL_185;
      }

      *(v75 + 16) = v140;
    }

    v123 = v313;
    a1 = v325;
    v121 = v10 + 1;
    v122 = v321;
    if (v297 != v10)
    {
      continue;
    }

    break;
  }

LABEL_80:

  if ([v317 scoringType] == 3)
  {
    v141 = v313;
    v142 = *(v313 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 24);
    v143 = *(v313 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 32);
    __swift_project_boxed_opaque_existential_1((v313 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager), v142);
    (*(v143 + 8))(&v326, v142, v143);
    v338 = v331;
    *v339 = *v332;
    v333 = v326;
    v334 = v327;
    v335 = v328;
    *&v339[14] = *&v332[14];
    v336 = v329;
    v337 = v330;
    v144 = *&v339[8];
    sub_1C6B11190(&v333);
    v145 = [v144 favorabilityByPublisherID];

    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v146 = sub_1C6D79490();

    v147 = sub_1C6D19B84(v146);
    v297 = 0;
  }

  else
  {
    v147 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
    v297 = 0;
    v141 = v313;
  }

  v148 = v319;

  sub_1C6D78230();

  v149 = v333;
  v150 = sub_1C6D79130();

  sub_1C6D78230();

  v151 = v333;
  v152 = sub_1C6D79120();

  sub_1C6D78230();

  v153 = v333;
  v154 = sub_1C6D79150();

  v155 = v301;
  sub_1C6D75F40();
  v295 = v152;
  v296 = v150;
  v294 = v154;
  v157 = sub_1C6D07978(v141, v148, v150, v152, v154, a1, v322, v147, v156, v155);
  sub_1C6B15028(v141 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService, &v326, sub_1C6D1A758);
  v158 = v147;
  if (*(&v327 + 1))
  {
    sub_1C6B15E34(&v326, &v333);
    v159 = *(&v334 + 1);
    v160 = v335;
    __swift_project_boxed_opaque_existential_1(&v333, *(&v334 + 1));
    v161 = v297;
    v162 = (*(v160 + 16))(a1, v148, 0, v320, v159, v160);
    if (v161)
    {
      v163 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);

      __swift_destroy_boxed_opaque_existential_1(&v333);
      v297 = 0;
    }

    else
    {
      v163 = v162;
      v297 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v333);
    }
  }

  else
  {
    sub_1C6D1BEDC(&v326, sub_1C6D1A758);
    v164 = sub_1C6D79AC0();
    v165 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30("Tabi scoring service unavailable", 32, 2, &dword_1C6B09000, v271, v164, MEMORY[0x1E69E7CC0]);
    v163 = sub_1C6B5F1EC(v165);
  }

  v166 = v293;
  v167 = v312;
  v325 = sub_1C6D04F98(v313, a1);
  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
  v324 = v158;
  v321 = v157;
  v293 = v163;
  if (v167)
  {
    *&v333 = MEMORY[0x1E69E7CC0];
    sub_1C6B392A0(0, v167 & ~(v167 >> 63), 0);
    if (v167 < 0)
    {
      goto LABEL_183;
    }

    v168 = v333;
    if (v323)
    {
      v169 = 0;
      do
      {
        MEMORY[0x1CCA56240](v169, a1);
        v170 = swift_getObjectType();
        sub_1C6BB1E60(v170, v166);
        swift_unknownObjectRelease();
        *&v333 = v168;
        v172 = *(v168 + 16);
        v171 = *(v168 + 24);
        if (v172 >= v171 >> 1)
        {
          sub_1C6B392A0((v171 > 1), v172 + 1, 1);
          v168 = v333;
        }

        v169 = (v169 + 1);
        *(v168 + 16) = v172 + 1;
        (*(v316 + 32))(v168 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v172, v166, v314);
      }

      while (v312 != v169);
    }

    else
    {
      v173 = v263;
      v174 = v259;
      do
      {
        v175 = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1C6BB1E60(v175, v173);
        swift_unknownObjectRelease();
        *&v333 = v168;
        v177 = *(v168 + 16);
        v176 = *(v168 + 24);
        if (v177 >= v176 >> 1)
        {
          sub_1C6B392A0((v176 > 1), v177 + 1, 1);
          v168 = v333;
        }

        *(v168 + 16) = v177 + 1;
        (*(v316 + 32))(v168 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v177, v173, v314);
        v174 += 8;
        --v167;
      }

      while (v167);
    }
  }

  v178 = v296;
  v179 = v313;
  sub_1C6D048D4(v296);
  v323 = *(v179 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
  v340 = v323;

  sub_1C6D76B10();

  sub_1C6D78230();

  v180 = v326;
  swift_beginAccess();

  sub_1C6D78230();

  sub_1C6B7C3F0(v178, v342, *(v179 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring), v305);

  sub_1C6D78230();

  v181 = v342;
  sub_1C6B7B540(v178);

  sub_1C6D78230();

  v182 = v342;
  v312 = sub_1C6B7E2C4(v295);

  sub_1C6D78230();

  v183 = v342;
  sub_1C6B7D9D4(v294);

  swift_beginAccess();

  sub_1C6D78230();

  v184 = v341;
  sub_1C6C6DE58();

  [v317 decayRate];
  (*(v277 + 104))(v279, *MEMORY[0x1E69D6E90], v278);
  (*(v280 + 104))(v282, *MEMORY[0x1E69D6EA0], v281);
  LOBYTE(v341) = 0;
  sub_1C6D1A7C0();
  swift_allocObject();
  sub_1C6D77230();
  sub_1C6D1C040(qword_1EDCEA618, v185, type metadata accessor for XavierScoringService, &protocol conformance descriptor for XavierScoringService);
  sub_1C6D77110();

  sub_1C6B14DC0(0);
  sub_1C6D1C040(&unk_1EDCEA820, 255, sub_1C6B14DC0, MEMORY[0x1E69E3290]);
  v10 = v321;
  v16 = v324;
  a2 = v302;
  v186 = v303;
  v9 = v312;
  v187 = sub_1C6D76C00();

  (*(v291 + 8))(v304, v292);
  (*(v289 + 8))(v186, v290);
  (*(v287 + 8))(a2, v288);
  (*(v285 + 8))(v305, v286);
  (*(v283 + 8))(v298, v284);

  __swift_destroy_boxed_opaque_existential_1(&v333);
  v75 = v187 + 64;
  v188 = 1 << *(v187 + 32);
  v189 = -1;
  if (v188 < 64)
  {
    v189 = ~(-1 << v188);
  }

  isUniquelyReferenced_nonNull_native = v189 & *(v187 + 64);
  v321 = (v188 + 63) >> 6;
  v305 = v316 + 16;
  v302 = (v309 + 48);
  v303 = (v309 + 56);
  v292 = (v309 + 32);
  v312 = v187;

  v190 = 0;
  v298 = MEMORY[0x1E69E7CC0];
  v12 = v307;
  v304 = v75;
  ObjectType = v315;
  while (2)
  {
    if (!isUniquelyReferenced_nonNull_native)
    {
      while (1)
      {
        v191 = v190 + 1;
        if (__OFADD__(v190, 1))
        {
          goto LABEL_171;
        }

        if (v191 >= v321)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = *(v75 + 8 * v191);
        ++v190;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_108;
        }
      }

      *&v333 = v298;

      isUniquelyReferenced_nonNull_native = v297;
      sub_1C6D09568(&v333, sub_1C6D14CA8, sub_1C6D12EF4);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_189;
      }

      v220 = swift_allocObject();

      v10 = v333;
      *(v220 + 16) = v333;
      v16 = v313;
      swift_beginAccess();

      sub_1C6D78230();

      v323 = v220;
      v324 = v220 + 16;
      if (v333)
      {
        v322 = 0;
        v75 = *(v10 + 16);

        v325 = v75;
        if (v75)
        {
          v9 = 0;
          a2 = v308;
          ObjectType = (v309 + 8);
          while (v9 < *(v10 + 16))
          {
            isUniquelyReferenced_nonNull_native = v309;
            v12 = (*(isUniquelyReferenced_nonNull_native + 80) + 32) & ~*(isUniquelyReferenced_nonNull_native + 80);
            v16 = v311;
            (*(v309 + 16))(a2, v10 + v12 + *(v309 + 72) * v9, v311);
            v75 = sub_1C6D79010();
            [v75 agedPersonalizationScore];
            v222 = v221;

            v72 = (*(isUniquelyReferenced_nonNull_native + 8))(a2, v16);
            if (v222 == 0.0)
            {

              v223 = *v324;
              v224 = *(*v324 + 16);
              if (v224 < v9)
              {
                goto LABEL_186;
              }

              *&v333 = *v324;
              *(&v333 + 1) = v223 + v12;
              *&v334 = v9;
              *(&v334 + 1) = (2 * v224) | 1;

              isUniquelyReferenced_nonNull_native = v322;
              sub_1C6D0942C(&v333);
              v225 = *(v223 + 16);
              v220 = v323;
              if (v225 >= v9)
              {
                sub_1C6D1ADB8(v333, *(&v333 + 1), v334, *(&v334 + 1), v9, v225);
                swift_unknownObjectRelease();
                goto LABEL_156;
              }

              goto LABEL_187;
            }

            if (v325 == ++v9)
            {
              goto LABEL_152;
            }
          }

          goto LABEL_177;
        }

LABEL_152:

        v220 = v323;
      }

LABEL_156:
      v226 = v276;
      sub_1C6D09938(v276);
      v228 = v269;
      v227 = v270;
      if ((*(v269 + 48))(v226, 1, v270) == 1)
      {
        v229 = v226;
        v230 = v273;
        v231 = *(v272 + 8);
        v231(v301, v273);

        sub_1C6D1A8AC(v229, &qword_1EDCEA7B0, MEMORY[0x1E69B4A90], v232);
LABEL_164:
        swift_beginAccess();
        v250 = *(v220 + 16);

        v251 = v320;
        v252 = v299;
        sub_1C6D0B65C(v320, v299, "Xavier finished scoring articles for request ID %{public}@ in %.0f milliseconds", 79);
        v231(v300, v230);
        (*(v274 + 8))(v252, v275);
        (*(v265 + 8))(v251, v266);
        return v250;
      }

      v233 = *(v228 + 32);
      v234 = v262;
      v233(v262, v226, v227);
      v235 = v313;
      v236 = *(v313 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 24);
      v237 = *(v313 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager + 32);
      __swift_project_boxed_opaque_existential_1((v313 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager), v236);
      (*(v237 + 8))(&v333, v236, v237);
      sub_1C6B11190(&v333);
      if (v339[16] == 1)
      {
        v238 = *(v235 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_tracker);
        if (v238)
        {
          v240 = v272;
          v239 = v273;
          (*(v272 + 16))(v267, v300, v273);
          v241 = v228;
          v242 = *(v228 + 16);
          v325 = v238;
          v243 = v258;
          v242(v258, v262, v270);
          v244 = (*(v240 + 80) + 16) & ~*(v240 + 80);
          v245 = (v261 + v244 + 7) & 0xFFFFFFFFFFFFFFF8;
          v246 = (*(v241 + 80) + v245 + 8) & ~*(v241 + 80);
          v247 = swift_allocObject();
          (*(v240 + 32))(v247 + v244, v267, v239);
          v248 = v323;
          *(v247 + v245) = v323;
          v230 = v239;
          v220 = v248;
          v249 = v270;
          v233(v247 + v246, v243, v270);

          sub_1C6D77340();

          (*(v269 + 8))(v262, v249);
          v231 = *(v240 + 8);
          v231(v301, v230);
          goto LABEL_164;
        }

        (*(v228 + 8))(v262, v270);
      }

      else
      {

        (*(v228 + 8))(v234, v227);
      }

      v230 = v273;
      v231 = *(v272 + 8);
      v231(v301, v273);
      v220 = v323;
      goto LABEL_164;
    }

    v191 = v190;
LABEL_108:
    v192 = __clz(__rbit64(isUniquelyReferenced_nonNull_native)) | (v191 << 6);
    v9 = v312;
    v16 = v310;
    (*(v316 + 16))(v310, v312[6] + *(v316 + 72) * v192, v314);
    v193 = *(*(v9 + 56) + 8 * v192);
    *(v16 + *(v306 + 48)) = v193;
    v324 = v193;

    v194 = sub_1C6D76160();
    if (!ObjectType[2])
    {

      goto LABEL_131;
    }

    v16 = v195;
    v196 = sub_1C6B5DEA8(v194, v195);
    v198 = v197;

    if ((v198 & 1) == 0)
    {
      v209 = 1;
      v12 = v307;
      goto LABEL_134;
    }

    v199 = *(ObjectType[7] + 8 * v196);
    v16 = 0x1E8298000;
    if (!(v199 >> 62))
    {
      a2 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v307;
      if (a2)
      {
        goto LABEL_112;
      }

LABEL_131:
      v209 = 1;
LABEL_134:
      isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
      v210 = v311;
      v211 = (*v303)(v12, v209, 1, v311);
      sub_1C6D1A818(v310, v211);
      if ((*v302)(v12, 1, v210) == 1)
      {
        v72 = sub_1C6D1A8AC(v12, &qword_1EDCEA538, MEMORY[0x1E69B5910], v212);
        v190 = v191;
        v75 = v304;
      }

      else
      {
        v10 = v292;
        v16 = *v292;
        v9 = v260;
        v213 = v311;
        (*v292)(v260, v12, v311);
        (v16)(v264, v9, v213);
        v214 = v298;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v214 = sub_1C6B658F8(0, v214[2] + 1, 1, v214);
        }

        v216 = v214[2];
        v215 = v214[3];
        v298 = v214;
        if (v216 >= v215 >> 1)
        {
          v298 = sub_1C6B658F8((v215 > 1), v216 + 1, 1, v298);
        }

        v217 = v298;
        v298[2] = v216 + 1;
        v72 = (v16)(v217 + ((*(v309 + 80) + 32) & ~*(v309 + 80)) + *(v309 + 72) * v216, v264, v311);
        v190 = v191;
        v12 = v307;
        v75 = v304;
      }

      continue;
    }

    break;
  }

  v218 = *(ObjectType[7] + 8 * v196);
  a2 = sub_1C6D79E90();
  v199 = v218;
  v12 = v307;
  if (!a2)
  {
    goto LABEL_131;
  }

LABEL_112:
  v323 = v199 & 0xC000000000000001;
  if ((v199 & 0xC000000000000001) != 0)
  {
    v219 = v199;

    v201 = v219;
    v200 = MEMORY[0x1CCA56240](0, v219);
    if (a2 >= 1)
    {
      goto LABEL_115;
    }

    goto LABEL_181;
  }

  if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v200 = *(v199 + 32);
    v201 = v199;

    swift_unknownObjectRetain();
    if (a2 >= 1)
    {
LABEL_115:
      v293 = v200;
      v325 = 0;
      v12 = 0;
      v202 = v201;
      v322 = v201;
      while (1)
      {
        if (v323)
        {
          v9 = MEMORY[0x1CCA56240](v12, v202);
        }

        else
        {
          v9 = *(v202 + 8 * v12 + 32);
          swift_unknownObjectRetain();
        }

        v10 = sub_1C6CDDDAC();
        v203 = ([v9 respondsToSelector_] & 1) != 0 ? objc_msgSend(v9, sel_isEvergreen) : 0;
        [v10 setIsEvergreen_];
        v204 = ([v9 respondsToSelector_] & 1) != 0 ? objc_msgSend(v9, sel_isCoread) : 0;
        [v10 setIsCoread_];

        sub_1C6D78230();

        v205 = v333;
        ObjectType = [v333 scoringVersion];

        [v10 setScoringVersion_];
        v75 = [v10 *(v16 + 832)];
        v72 = [v317 scoringType];
        if (v72 < 0)
        {
          goto LABEL_172;
        }

        [v75 setScoringType_];

        v206 = [v10 *(v16 + 832)];
        [v206 setScoringContext_];

        v207 = [v10 *(v16 + 832)];
        sub_1C6D75F60();
        v208 = sub_1C6D79570();

        [v207 setScoringAssetsIdentifier_];

        [v9 setScoreProfile_];
        swift_unknownObjectRelease();
        if (v325)
        {
        }

        else
        {
          v325 = v10;
        }

        ObjectType = v315;
        v202 = v322;
        ++v12;
        v16 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
        if (a2 == v12)
        {

          v12 = v307;
          sub_1C6D79020();
          v209 = 0;
          goto LABEL_134;
        }
      }
    }

LABEL_181:
    __break(1u);
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  sub_1C6D7A1C0();
  __break(1u);
LABEL_189:

  __break(1u);
  return result;
}

char *sub_1C6D07978(uint64_t a1, unint64_t a2, void *a3, int64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v162 = a8;
  v163 = a7;
  v175 = a6;
  v166 = a5;
  v165 = a4;
  v164 = a3;
  v167 = a2;
  sub_1C6D1BE54(0, &unk_1EDCEA850, MEMORY[0x1E69E31C8], MEMORY[0x1E69E35A8], "key value ");
  v171 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v177 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v170 = &v135 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v178 = &v135 - v19;
  v20 = sub_1C6D76170();
  v179 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  isUniquelyReferenced_nonNull_native = &v135 - v26;
  v148 = sub_1C6D771D0();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v28);
  v149 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1C6D771C0();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v30);
  v146 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1C6D76880();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v32);
  v174 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1C6D767D0();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v34);
  v173 = (&v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = sub_1C6D76A80();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v36);
  v154 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1C6D767B0();
  v153 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v38);
  v168 = &v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1C6D76B30();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v40);
  v150 = &v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6D75F80();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v135 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v47 = a1;
  v48 = (a1 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment);
  swift_beginAccess();

  sub_1C6D78230();

  v49 = v184;
  v50 = [v184 shadowModeScoringEnabled];

  if ((v50 & 1) == 0)
  {
    v70 = sub_1C6B5F0C4(MEMORY[0x1E69E7CC0]);
    (*(v43 + 8))(v46, v42);
    return v70;
  }

  v169 = v43;
  v139 = v42;

  sub_1C6D78230();

  v51 = v184;
  v140 = sub_1C6D790F0();

  sub_1C6D78230();

  v52 = v184;
  v142 = sub_1C6D79140();

  sub_1C6D78230();

  v53 = v184;
  v141 = sub_1C6D79160();

  sub_1C6B0C69C(0, &qword_1EDCDF7A8, 0x1E69E58C0);
  v54 = v47 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig;
  swift_beginAccess();
  v138 = v54;

  sub_1C6D78230();

  v55 = v184;
  swift_beginAccess();
  v143 = v47;

  sub_1C6D78230();

  v56 = v184;
  v57 = sub_1C6D79BC0();

  v58 = v140;
  if ((v57 & 1) != 0 && !*(v58 + 16) && !v142[2] && !v141[2])
  {

    v70 = sub_1C6B5F0C4(MEMORY[0x1E69E7CC0]);
    (*(v169 + 8))(v46, v139);
    return v70;
  }

  v172 = v46;
  if (qword_1EDCEA6A0 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v59 = qword_1EDCEA6A8;
    v60 = sub_1C6D79AC0();
    v136 = v59;
    sub_1C6D78D30("Scoring with articles in shadow mode", 36, 2, &dword_1C6B09000, v59, v60, MEMORY[0x1E69E7CC0]);
    v61 = objc_allocWithZone(MEMORY[0x1E69B5468]);
    v62 = sub_1C6D79480();

    v164 = [v61 initWithConfigDictionary:v62 defaultConfig:v164];

    v63 = objc_allocWithZone(MEMORY[0x1E69B5478]);
    v64 = sub_1C6D79760();

    v142 = [v63 initWithConfig:v64 defaultConfig:v165];

    v65 = objc_allocWithZone(MEMORY[0x1E69B5458]);
    v66 = sub_1C6D79480();

    v141 = [v65 initWithConfig:v66 defaultConfig:v166];

    v166 = sub_1C6B5F0C4(MEMORY[0x1E69E7CC0]);
    v67 = v143;
    sub_1C6B15028(v143 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService, &v182, sub_1C6D1A758);
    if (v183)
    {
      sub_1C6B15E34(&v182, &v184);
      v68 = v185;
      v69 = v186;
      __swift_project_boxed_opaque_existential_1(&v184, v185);
      v167 = (*(v69 + 16))(v175, v167, 1, v172, v68, v69);
      __swift_destroy_boxed_opaque_existential_1(&v184);
    }

    else
    {
      sub_1C6D1BEDC(&v182, sub_1C6D1A758);
      v71 = sub_1C6D79AC0();
      v72 = MEMORY[0x1E69E7CC0];
      sub_1C6D78D30("Tabi scoring service unavailable", 32, 2, &dword_1C6B09000, v136, v71, MEMORY[0x1E69E7CC0]);
      v167 = sub_1C6B5F1EC(v72);
    }

    v73 = v175;
    v74 = sub_1C6D04F98(v67, v175);
    v137 = v48;
    v75 = v73 >> 62 ? sub_1C6D79E90() : *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = MEMORY[0x1E69E7CC0];
    v176 = v20;
    v136 = 0;
    v165 = v74;
    if (v75)
    {
      break;
    }

LABEL_25:
    v140 = a10;
    v85 = v164;
    v86 = v143;
    sub_1C6D048D4(v164);
    v175 = *(v86 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext);
    v181 = v175;

    v87 = v150;
    sub_1C6D76B10();

    sub_1C6D78230();

    v88 = v182;
    swift_beginAccess();

    sub_1C6D78230();

    sub_1C6B7C3F0(v85, v180, *(v86 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring), v168);

    sub_1C6D78230();

    v89 = v180;
    v90 = v154;
    sub_1C6B7B540(v85);

    sub_1C6D78230();

    v91 = v180;
    sub_1C6B7E2C4(v142);

    sub_1C6D78230();

    v92 = v180;
    sub_1C6B7D9D4(v141);

    sub_1C6D78230();

    v93 = v180;
    sub_1C6C6DE58();

    [*(v86 + OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore) decayRate];
    (*(v144 + 104))(v146, *MEMORY[0x1E69D6E90], v145);
    (*(v147 + 104))(v149, *MEMORY[0x1E69D6EA0], v148);
    LOBYTE(v180) = 0;
    sub_1C6D1A7C0();
    swift_allocObject();
    sub_1C6D77230();
    type metadata accessor for XavierScoringService();
    sub_1C6D1C040(qword_1EDCEA618, v94, type metadata accessor for XavierScoringService, &protocol conformance descriptor for XavierScoringService);
    sub_1C6D77110();

    sub_1C6B14DC0(0);
    sub_1C6D1C040(&unk_1EDCEA820, 255, sub_1C6B14DC0, MEMORY[0x1E69E3290]);
    v95 = v87;
    v96 = v168;
    isUniquelyReferenced_nonNull_native = v173;
    v97 = sub_1C6D76C00();

    (*(v160 + 8))(v174, v161);
    (*(v158 + 8))(isUniquelyReferenced_nonNull_native, v159);
    (*(v156 + 8))(v90, v157);
    (*(v153 + 8))(v96, v155);
    (*(v151 + 8))(v95, v152);

    __swift_destroy_boxed_opaque_existential_1(&v184);
    v98 = v97 + 64;
    v99 = 1 << *(v97 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & *(v97 + 64);
    v23 = (v99 + 63) >> 6;
    v167 = v179 + 16;
    v175 = v179 + 8;
    v168 = v97;

    v20 = 0;
    v70 = MEMORY[0x1E69E7CC8];
    v102 = v169;
    v103 = v172;
    v166 = v98;
    v165 = v23;
    while (v101)
    {
      v174 = v70;
LABEL_36:
      v106 = __clz(__rbit64(v101)) | (v20 << 6);
      v107 = v168;
      v23 = v179;
      v108 = v178;
      v109 = v176;
      (*(v179 + 16))(v178, *(v168 + 48) + *(v179 + 72) * v106, v176);
      v110 = v171;
      *(v108 + *(v171 + 48)) = *(*(v107 + 56) + 8 * v106);
      v173 = MEMORY[0x1E69E31C8];
      v111 = MEMORY[0x1E69E35A8];
      v112 = v170;
      sub_1C6D1BFCC(v108, v170, &unk_1EDCEA850, MEMORY[0x1E69E31C8], MEMORY[0x1E69E35A8], "key value ");

      v113 = sub_1C6D76160();
      v115 = v114;
      v116 = v109;
      v117 = *(v23 + 8);
      v117(v112, v116);
      v118 = v108;
      v48 = v113;
      v119 = v177;
      sub_1C6D1BFCC(v118, v177, &unk_1EDCEA850, v173, v111, "key value ");
      v120 = *(v119 + *(v110 + 48));
      v121 = v174;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v184 = v121;
      v123 = sub_1C6B5DEA8(v48, v115);
      v125 = *(v121 + 2);
      v126 = (v122 & 1) == 0;
      v127 = v125 + v126;
      if (__OFADD__(v125, v126))
      {
        goto LABEL_51;
      }

      v23 = v122;
      if (*(v121 + 3) >= v127)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v122)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1C6B72EE8();
          if (v23)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        sub_1C6B6EDCC(v127, isUniquelyReferenced_nonNull_native);
        v128 = sub_1C6B5DEA8(v48, v115);
        if ((v23 & 1) != (v129 & 1))
        {
          goto LABEL_56;
        }

        v123 = v128;
        if (v23)
        {
LABEL_28:

          v70 = v184;
          *(*(v184 + 7) + 8 * v123) = v120;

          sub_1C6D1A818(v178, v104);
          goto LABEL_29;
        }
      }

      v70 = v184;
      *&v184[8 * (v123 >> 6) + 64] |= 1 << v123;
      v130 = (*(v70 + 6) + 16 * v123);
      *v130 = v48;
      v130[1] = v115;
      *(*(v70 + 7) + 8 * v123) = v120;
      sub_1C6D1A818(v178, v124);
      v131 = *(v70 + 2);
      v132 = __OFADD__(v131, 1);
      v133 = v131 + 1;
      if (v132)
      {
        goto LABEL_52;
      }

      *(v70 + 2) = v133;
LABEL_29:
      v101 &= v101 - 1;
      v117(v177, v176);
      v102 = v169;
      v103 = v172;
      v98 = v166;
      v23 = v165;
    }

    while (1)
    {
      v105 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v105 >= v23)
      {
        (*(v102 + 8))(v103, v139);

        return v70;
      }

      v101 = *(v98 + 8 * v105);
      ++v20;
      if (v101)
      {
        v174 = v70;
        v20 = v105;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v184 = MEMORY[0x1E69E7CC0];
  sub_1C6B392A0(0, v75 & ~(v75 >> 63), 0);
  if ((v75 & 0x8000000000000000) == 0)
  {
    v48 = v184;
    v76 = v175;
    if ((v175 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v75; ++i)
      {
        MEMORY[0x1CCA56240](i, v76);
        ObjectType = swift_getObjectType();
        sub_1C6BB1E60(ObjectType, v23);
        swift_unknownObjectRelease();
        v184 = v48;
        v80 = v48[2];
        v79 = v48[3];
        if (v80 >= v79 >> 1)
        {
          sub_1C6B392A0((v79 > 1), v80 + 1, 1);
          v48 = v184;
        }

        v48[2] = v80 + 1;
        (*(v179 + 32))(v48 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v80, v23, v20);
      }
    }

    else
    {
      v81 = v175 + 32;
      do
      {
        v82 = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1C6BB1E60(v82, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
        v184 = v48;
        v84 = v48[2];
        v83 = v48[3];
        if (v84 >= v83 >> 1)
        {
          sub_1C6B392A0((v83 > 1), v84 + 1, 1);
          v48 = v184;
        }

        v48[2] = v84 + 1;
        (*(v179 + 32))(v48 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v84, isUniquelyReferenced_nonNull_native, v20);
        v81 += 8;
        --v75;
      }

      while (v75);
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_56:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D09028(double a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  sub_1C6D1BE00(0, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - v8;
  v10 = sub_1C6D75F50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v35 - v21;
  v23 = [sub_1C6D79030() publishDate];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1C6D75F20();

    v24 = *(v11 + 32);
    v24(v9, v18, v10);
    v25 = *(v11 + 56);
    v25(v9, 0, 1, v10);
    v24(v22, v9, v10);
  }

  else
  {
    v25 = *(v11 + 56);
    v25(v9, 1, 1, v10);
    sub_1C6D75F00();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1C6D1A8AC(v9, &qword_1EDCEA960, MEMORY[0x1E6969530], v26);
    }
  }

  v27 = [sub_1C6D79030() publishDate];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1C6D75F20();

    v28 = *(v11 + 32);
    v29 = v36;
    v28(v36, v18, v10);
    v25(v29, 0, 1, v10);
    v28(v14, v29, v10);
  }

  else
  {
    v30 = v36;
    v25(v36, 1, 1, v10);
    sub_1C6D75F00();
    if ((*(v11 + 48))(v30, 1, v10) != 1)
    {
      sub_1C6D1A8AC(v30, &qword_1EDCEA960, MEMORY[0x1E6969530], v31);
    }
  }

  v32 = sub_1C6D75EE0();
  v33 = *(v11 + 8);
  v33(v14, v10);
  v33(v22, v10);
  return v32 & 1;
}

uint64_t sub_1C6D0942C(uint64_t *a1)
{
  v2 = sub_1C6D79040();
  v5 = *(v2 - 8);
  result = v2 - 8;
  v4 = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
    __break(1u);
  }

  else
  {
    v9 = v4;
    v10 = *a1;
    if ((v7 & 1) != 0 && (isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *a1 = v10, isUniquelyReferenced_nonNull))
    {
      v12 = a1[1];
    }

    else
    {
      sub_1C6D1A9EC(a1[1], v6, v7);
      v14 = v13;
      v12 = v15;
      v6 = v16;
      v18 = v17;
      swift_unknownObjectRelease();
      *a1 = v14;
      a1[1] = v12;
      v10 = v14;
      a1[2] = v6;
      a1[3] = v18;
    }

    v19[0] = v12 + *(v9 + 72) * v6;
    v19[1] = v8;
    result = sub_1C6D126D8(v19, MEMORY[0x1E69B5910], sub_1C6D139D8, sub_1C6D12828);
    *a1 = v10;
  }

  return result;
}

uint64_t sub_1C6D09568(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1C6D79040() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1C6C73F44(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1C6D126D8(v10, MEMORY[0x1E69B5910], a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1C6D0963C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73FE4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C6D161F4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6D09770(void *a1)
{
  v2 = *(sub_1C6D79300() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6C73FF8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C6D126D8(v6, MEMORY[0x1E69B6030], sub_1C6D16750, sub_1C6D13490);
  *a1 = v3;
  return result;
}

uint64_t sub_1C6D09854(void *a1)
{
  sub_1C6C74F64(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C6C7400C(v4);
  }

  v5 = v4[2];
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v5;
  result = sub_1C6D126D8(v7, sub_1C6C74F64, sub_1C6D17160, sub_1C6D13730);
  *a1 = v4;
  return result;
}

uint64_t sub_1C6D09938@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D791C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v13 = sub_1C6D79170();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, v2, v13, v16);
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 != *MEMORY[0x1E69B5A28])
  {
    if (v19 == *MEMORY[0x1E69B5A10])
    {
      (*(v14 + 8))(v18, v13);
      goto LABEL_6;
    }

    if (v19 != *MEMORY[0x1E69B5A08])
    {
      if (v19 != *MEMORY[0x1E69B5A20])
      {
        v29 = sub_1C6D77D80();
        (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
        return (*(v14 + 8))(v18, v13);
      }

LABEL_6:
      v22 = sub_1C6D77D80();
      return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
    }

    (*(v14 + 96))(v18, v13);
    (*(v5 + 32))(v8, v18, v4);
    v24 = (*(v5 + 88))(v8, v4);
    if (v24 == *MEMORY[0x1E69B5CD8])
    {
      v25 = MEMORY[0x1E69B4A80];
    }

    else if (v24 == *MEMORY[0x1E69B5CC8])
    {
      v25 = MEMORY[0x1E69B4A78];
    }

    else
    {
      if (v24 != *MEMORY[0x1E69B5CD0])
      {
        v37 = sub_1C6D77D80();
        (*(*(v37 - 8) + 56))(a1, 1, 1, v37);
        (*(v5 + 8))(v8, v4);
        goto LABEL_23;
      }

      v25 = MEMORY[0x1E69B4A88];
    }

    v31 = *v25;
    v32 = sub_1C6D77D80();
    v33 = *(v32 - 8);
    (*(v33 + 104))(a1, v31, v32);
    (*(v33 + 56))(a1, 0, 1, v32);
LABEL_23:
    sub_1C6D1B320(0);
    v35 = *(v34 + 48);
    v36 = sub_1C6D791A0();
    return (*(*(v36 - 8) + 8))(&v18[v35], v36);
  }

  (*(v14 + 96))(v18, v13);
  (*(v5 + 32))(v12, v18, v4);
  v20 = (*(v5 + 88))(v12, v4);
  if (v20 == *MEMORY[0x1E69B5CD8])
  {
    v21 = MEMORY[0x1E69B4A80];
LABEL_14:
    v26 = *v21;
    v27 = sub_1C6D77D80();
    v28 = *(v27 - 8);
    (*(v28 + 104))(a1, v26, v27);
    return (*(v28 + 56))(a1, 0, 1, v27);
  }

  if (v20 == *MEMORY[0x1E69B5CC8])
  {
    v21 = MEMORY[0x1E69B4A78];
    goto LABEL_14;
  }

  if (v20 == *MEMORY[0x1E69B5CD0])
  {
    v21 = MEMORY[0x1E69B4A88];
    goto LABEL_14;
  }

  v30 = sub_1C6D77D80();
  (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1C6D09F54(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v107 = a2;
  v100 = sub_1C6D77D80();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v6);
  v102 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1C6D79040();
  v103 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v8);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D77DA0();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v98 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v97 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v96 = &v89 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v105 = &v89 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v104 = &v89 - v25;
  v94 = sub_1C6D77C30();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v26);
  v92 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C6D75F50();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v89 - v33;
  v35 = sub_1C6D773B0();
  v36 = *(v35 - 8);
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v40 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v34, v107, v28, v38);
  sub_1C6D75F40();
  sub_1C6D77390();
  sub_1C6D1C040(&qword_1EDCE5FF0, 255, MEMORY[0x1E698AAD8], MEMORY[0x1E698AAD0]);
  v41 = MEMORY[0x1E69E7CC0];
  v91 = "{public}@ in %.0f milliseconds";
  v95 = a1;
  sub_1C6D772A0();
  (*(v36 + 8))(v40, v35);
  swift_beginAccess();
  v106 = a3;
  v42 = *(a3 + 16);
  v43 = *(v42 + 16);
  if (v43)
  {
    *&v109[0] = v41;

    sub_1C6B39260(0, v43, 0);
    v41 = *&v109[0];
    v107 = *(v103 + 16);
    v44 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v90 = v42;
    v45 = v42 + v44;
    v46 = *(v103 + 72);
    v47 = (v103 + 8);
    do
    {
      v48 = v108;
      v107(v10, v45, v108);
      v49 = sub_1C6D79010();
      [v49 sortingScore];
      v51 = v50;

      (*v47)(v10, v48);
      *&v109[0] = v41;
      v53 = *(v41 + 16);
      v52 = *(v41 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1C6B39260((v52 > 1), v53 + 1, 1);
        v41 = *&v109[0];
      }

      *(v41 + 16) = v53 + 1;
      *(v41 + 8 * v53 + 32) = v51;
      v45 += v46;
      --v43;
    }

    while (v43);
  }

  sub_1C6D0AA50(v41);

  v54 = v106;
  swift_beginAccess();
  v55 = *(v54 + 16);
  v56 = *(v55 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    *&v109[0] = MEMORY[0x1E69E7CC0];

    sub_1C6B39260(0, v56, 0);
    v57 = *&v109[0];
    v107 = *(v103 + 16);
    v58 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v90 = v55;
    v59 = v55 + v58;
    v60 = *(v103 + 72);
    v61 = (v103 + 8);
    do
    {
      v62 = v108;
      v107(v10, v59, v108);
      v63 = sub_1C6D79010();
      [v63 agedPersonalizationScore];
      v65 = v64;

      (*v61)(v10, v62);
      *&v109[0] = v57;
      v67 = *(v57 + 16);
      v66 = *(v57 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1C6B39260((v66 > 1), v67 + 1, 1);
        v57 = *&v109[0];
      }

      *(v57 + 16) = v67 + 1;
      *(v57 + 8 * v67 + 32) = v65;
      v59 += v60;
      --v56;
    }

    while (v56);
  }

  sub_1C6D0AA50(v57);

  v68 = v106;
  swift_beginAccess();
  v69 = *(v68 + 16);
  v70 = *(v69 + 16);
  v71 = MEMORY[0x1E69E7CC0];
  if (v70)
  {
    *&v109[0] = MEMORY[0x1E69E7CC0];

    sub_1C6B39260(0, v70, 0);
    v71 = *&v109[0];
    v72 = v103 + 16;
    v107 = *(v103 + 16);
    v73 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v103 = v69;
    v74 = v69 + v73;
    v75 = *(v72 + 56);
    v76 = (v72 - 8);
    do
    {
      v77 = v108;
      v78 = v72;
      v107(v10, v74, v108);
      v79 = sub_1C6D79010();
      [v79 tabiScore];
      v81 = v80;

      (*v76)(v10, v77);
      *&v109[0] = v71;
      v83 = *(v71 + 16);
      v82 = *(v71 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1C6B39260((v82 > 1), v83 + 1, 1);
        v71 = *&v109[0];
      }

      *(v71 + 16) = v83 + 1;
      *(v71 + 8 * v83 + 32) = v81;
      v74 += v75;
      --v70;
      v72 = v78;
    }

    while (v70);
  }

  sub_1C6D0AA50(v71);

  sub_1C6D77D90();
  sub_1C6D77D90();
  (*(v99 + 16))(v102, v101, v100);
  v84 = v106;
  result = swift_beginAccess();
  v86 = *(*(v84 + 16) + 16);
  if (v86 >> 31)
  {
    __break(1u);
  }

  else if (v86 % 0xA < 5 || !__OFADD__(v86, 10 - v86 % 0xA))
  {
    v87 = v92;
    sub_1C6D77C20();
    sub_1C6D1C040(&qword_1EDCE5EC8, 255, MEMORY[0x1E69B49B0], MEMORY[0x1E69B49A8]);
    v88 = v94;
    sub_1C6D772A0();
    (*(v93 + 8))(v87, v88);
    sub_1C6D77C90();
    sub_1C6D1C040(&qword_1EDCE5EA0, 255, MEMORY[0x1E69B49E8], MEMORY[0x1E69B49E0]);
    memset(v109, 0, sizeof(v109));
    sub_1C6D772B0();
    return sub_1C6B79FDC(v109);
  }

  __break(1u);
  return result;
}