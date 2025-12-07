void (*Com_Apple_News_Personalization_SessionEvent.articleDisliked.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C53410;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  return sub_1C6C53410;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleSaved.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C53630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleSaved.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C53AC0;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  return sub_1C6C53AC0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagMuted.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(v2, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C53CA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(a1, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagMuted.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = *(*(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    sub_1C6D78A30();
    return sub_1C6C540C8;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  return sub_1C6C540C8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagUnmuted.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(v2, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C542B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(a1, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagUnmuted.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = *(*(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    sub_1C6D78A30();
    return sub_1C6C546D0;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  return sub_1C6C546D0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagFollowed.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(v2, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C548B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(a1, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagFollowed.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = *(*(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    sub_1C6D78A30();
    return sub_1C6C54CD8;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  return sub_1C6C54CD8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagUnfollowed.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(v2, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C54EC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(a1, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagUnfollowed.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = *(*(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    sub_1C6D78A30();
    return sub_1C6C552E0;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  return sub_1C6C552E0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagFeedView.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6C68A94(v2, &v13 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = sub_1C6D78A00();
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

void (*Com_Apple_News_Personalization_SessionEvent.tagFeedView.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = sub_1C6D78A00();
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6C557D0;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  return sub_1C6C557D0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.trackVisited.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C559F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.trackVisited.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C55E80;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  return sub_1C6C55E80;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.trackListened.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C560A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.trackListened.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C56530;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  return sub_1C6C56530;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.trackFinished.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C56750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.trackFinished.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C56BE0;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  return sub_1C6C56BE0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleUnliked.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C56E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleUnliked.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C57290;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  return sub_1C6C57290;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleUndisliked.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C574B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleUndisliked.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C57940;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  return sub_1C6C57940;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleUnsaved.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C57B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleUnsaved.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C57FF0;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  return sub_1C6C57FF0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.sportsTagSeen.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6C68A94(v2, &v13 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = sub_1C6D78A00();
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

void (*Com_Apple_News_Personalization_SessionEvent.sportsTagSeen.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = sub_1C6D78A00();
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6C584E0;
  }

  if (swift_getEnumCaseMultiPayload() != 18)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  return sub_1C6C584E0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagIgnore.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(v2, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C586C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6C68A94(a1, &v10 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagIgnore.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = *(*(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    sub_1C6D78A30();
    return sub_1C6C58AE8;
  }

  if (swift_getEnumCaseMultiPayload() != 19)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  return sub_1C6C58AE8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.notificationVended.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6C68A94(v2, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v11 = *(v10 + 20);
  v12 = sub_1C6D789A0();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C6C58D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6C68A94(a1, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v11 = *(v10 + 20);
  v12 = sub_1C6D789A0();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Com_Apple_News_Personalization_SessionEvent.notificationVended.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6C68A94(v2, v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6C68A24(v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v17 = *(v11 + 20);
    v18 = sub_1C6D789A0();
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 24);
    v20 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_1C6C59270;
  }

  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1C6C51244(v10, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  return sub_1C6C59270;
}

void sub_1C6C592B4(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v8 = *a1;
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v14 = **a1;
  v13 = (*a1)[1];
  if (a2)
  {
    sub_1C6C68B78((*a1)[3], v11, a5);
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v11, v14, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14, 0, 1, v9);
    sub_1C6C51244(v12, a6);
  }

  else
  {
    sub_1C6C68A24(**a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v12, v14, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14, 0, 1, v9);
  }

  free(v12);
  free(v11);
  free(v13);

  free(v8);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6D78A30();
  v4 = *(v3 + 24);
  v5 = sub_1C6D789A0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C6C59650()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE55D8);
  __swift_project_value_buffer(v0, qword_1EDCE55D8);
  sub_1C6C50988(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C6D82CB0;
  v5 = v50 + v4;
  v6 = v50 + v4 + *(v2 + 56);
  *(v50 + v4) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v50 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "articleSeen";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v50 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "articleVisited";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v50 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "articleRead";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v50 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "articleShared";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v50 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "articleLiked";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v50 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "articleDisliked";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v50 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "articleSaved";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v9();
  v23 = v50 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "tagMuted";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v9();
  v24 = (v50 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "tagUnmuted";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v9();
  v26 = (v50 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "tagFollowed";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v9();
  v28 = (v50 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "tagUnfollowed";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v9();
  v30 = (v50 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "tagFeedView";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v9();
  v32 = (v50 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "trackVisited";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v9();
  v34 = (v50 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 15;
  *v35 = "trackListened";
  *(v35 + 1) = 13;
  v35[16] = 2;
  v9();
  v36 = (v50 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 16;
  *v37 = "trackFinished";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v9();
  v38 = v50 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 17;
  *v38 = "articleUnliked";
  *(v38 + 8) = 14;
  *(v38 + 16) = 2;
  v9();
  v39 = (v50 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 18;
  *v40 = "articleUndisliked";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v9();
  v41 = (v50 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 19;
  *v42 = "articleUnsaved";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v9();
  v43 = (v50 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 20;
  *v44 = "sportsTagSeen";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v9();
  v45 = (v50 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 21;
  *v46 = "tagIgnore";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v9();
  v47 = (v50 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 22;
  *v48 = "notificationVended";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEvent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE55D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE55D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C6C5A07C(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6C5A130(v5, a1, a2, a3);
        break;
      case 3:
        sub_1C6C5A764(v5, a1, a2, a3);
        break;
      case 4:
        sub_1C6C5ADB4(v5, a1, a2, a3);
        break;
      case 5:
        sub_1C6C5B404(v5, a1, a2, a3);
        break;
      case 6:
        sub_1C6C5BA54(v5, a1, a2, a3);
        break;
      case 7:
        sub_1C6C5C0A4(v5, a1, a2, a3);
        break;
      case 8:
        sub_1C6C5C6F4(v5, a1, a2, a3);
        break;
      case 9:
        sub_1C6C5CD44(v5, a1, a2, a3);
        break;
      case 10:
        sub_1C6C5D394(v5, a1, a2, a3);
        break;
      case 11:
        sub_1C6C5D9E4(v5, a1, a2, a3);
        break;
      case 12:
        sub_1C6C5E034(v5, a1, a2, a3);
        break;
      case 13:
        sub_1C6C5E684(v5, a1, a2, a3);
        break;
      case 14:
        sub_1C6C5ECD4(v5, a1, a2, a3);
        break;
      case 15:
        sub_1C6C5F324(v5, a1, a2, a3);
        break;
      case 16:
        sub_1C6C5F974(v5, a1, a2, a3);
        break;
      case 17:
        sub_1C6C5FFC4(v5, a1, a2, a3);
        break;
      case 18:
        sub_1C6C60614(v5, a1, a2, a3);
        break;
      case 19:
        sub_1C6C60C64(v5, a1, a2, a3);
        break;
      case 20:
        sub_1C6C612B4(v5, a1, a2, a3);
        break;
      case 21:
        sub_1C6C61904(v5, a1, a2, a3);
        break;
      case 22:
        sub_1C6C61F54(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C6C5A07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6D789A0();
  sub_1C6C6851C(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6C5A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v54 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v42 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - v23;
  sub_1C6C50988(0, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v42 - v31;
  v47 = v5;
  v33 = *(v5 + 56);
  v50 = v4;
  v44 = v33;
  (v33)(&v42 - v31, 1, 1, v4, v30);
  sub_1C6C68A94(v54, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v43 = v17;
  v34 = (*(v17 + 48))(v15, 1, v16);
  if (v34 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_5:
    v35 = v50;
    goto LABEL_6;
  }

  sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_5;
  }

  sub_1C6C68A24(v32, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  v39 = v45;
  sub_1C6C514C8(v20, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  sub_1C6C514C8(v39, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  v35 = v50;
  v44(v32, 0, 1, v50);
LABEL_6:
  v36 = v48;
  sub_1C6C6851C(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  v37 = v49;
  sub_1C6D78BB0();
  if (v37)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  }

  sub_1C6C68A94(v32, v36, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  if ((*(v47 + 48))(v36, 1, v35) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    return sub_1C6C68A24(v36, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  }

  else
  {
    v40 = v46;
    sub_1C6C514C8(v36, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    if (v34 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    v41 = v54;
    sub_1C6C68A24(v54, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v40, v41, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v41, 0, 1, v16);
  }
}

uint64_t sub_1C6C5A764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    return sub_1C6C68A24(v38, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5ADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    return sub_1C6C68A24(v38, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleShared);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    return sub_1C6C68A24(v38, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5BA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    return sub_1C6C68A24(v38, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5C0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    return sub_1C6C68A24(v38, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    return sub_1C6C68A24(v38, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5CD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagMuted);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    return sub_1C6C68A24(v38, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    return sub_1C6C68A24(v38, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    return sub_1C6C68A24(v38, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    return sub_1C6C68A24(v38, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5E684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    return sub_1C6C68A24(v38, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    return sub_1C6C68A24(v38, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackListened);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    return sub_1C6C68A24(v38, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5F974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    return sub_1C6C68A24(v38, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C5FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    return sub_1C6C68A24(v38, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C60614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    return sub_1C6C68A24(v38, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C60C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    return sub_1C6C68A24(v38, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C612B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    return sub_1C6C68A24(v38, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C61904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    return sub_1C6C68A24(v38, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6C61F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6C50988(0, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6C68A94(v55, v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6C68A24(v15, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6C514C8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      v35 = v49;
      sub_1C6C68A24(v49, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v36 = v46;
      sub_1C6C514C8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      sub_1C6C514C8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6C51244(v20, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6C6851C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6C68A24(v35, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  }

  sub_1C6C68A94(v35, v38, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6C68A24(v35, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    return sub_1C6C68A24(v38, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  }

  else
  {
    v41 = v45;
    sub_1C6C514C8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v35, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    v42 = v55;
    sub_1C6C68A24(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t Com_Apple_News_Personalization_SessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v14 - v10;
  result = sub_1C6C62A34(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6C68A94(v3, v11, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_1C6C62EE4(v3, a1, a2, a3);
          break;
        case 2u:
          sub_1C6C6314C(v3, a1, a2, a3);
          break;
        case 3u:
          sub_1C6C633B4(v3, a1, a2, a3);
          break;
        case 4u:
          sub_1C6C6361C(v3, a1, a2, a3);
          break;
        case 5u:
          sub_1C6C63884(v3, a1, a2, a3);
          break;
        case 6u:
          sub_1C6C63AEC(v3, a1, a2, a3);
          break;
        case 7u:
          sub_1C6C63D54(v3, a1, a2, a3);
          break;
        case 8u:
          sub_1C6C63FBC(v3, a1, a2, a3);
          break;
        case 9u:
          sub_1C6C64224(v3, a1, a2, a3);
          break;
        case 0xAu:
          sub_1C6C6448C(v3, a1, a2, a3);
          break;
        case 0xBu:
          sub_1C6C646F4(v3, a1, a2, a3);
          break;
        case 0xCu:
          sub_1C6C6495C(v3, a1, a2, a3);
          break;
        case 0xDu:
          sub_1C6C64BC4(v3, a1, a2, a3);
          break;
        case 0xEu:
          sub_1C6C64E2C(v3, a1, a2, a3);
          break;
        case 0xFu:
          sub_1C6C65094(v3, a1, a2, a3);
          break;
        case 0x10u:
          sub_1C6C652FC(v3, a1, a2, a3);
          break;
        case 0x11u:
          sub_1C6C65564(v3, a1, a2, a3);
          break;
        case 0x12u:
          sub_1C6C657CC(v3, a1, a2, a3);
          break;
        case 0x13u:
          sub_1C6C65A34(v3, a1, a2, a3);
          break;
        case 0x14u:
          sub_1C6C65C9C(v3, a1, a2, a3);
          break;
        default:
          sub_1C6C62C80(v3, a1, a2, a3);
          break;
      }

      sub_1C6C51244(v11, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    }

    type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C62A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C68A94(a1 + *(v15 + 24), v9, &qword_1EDCE66F0, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6C68A24(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6C6851C(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6C62C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    sub_1C6C6851C(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C62EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    sub_1C6C6851C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C6314C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C6851C(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C633B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    sub_1C6C6851C(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleShared);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C6361C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    sub_1C6C6851C(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C63884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    sub_1C6C6851C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C63AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    sub_1C6C6851C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C63D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    sub_1C6C6851C(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagMuted);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C63FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    sub_1C6C6851C(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C64224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    sub_1C6C6851C(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C6448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    sub_1C6C6851C(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C646F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    sub_1C6C6851C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C6495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    sub_1C6C6851C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C64BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    sub_1C6C6851C(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackListened);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C64E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    sub_1C6C6851C(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C65094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    sub_1C6C6851C(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C652FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    sub_1C6C6851C(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C65564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    sub_1C6C6851C(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C657CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    sub_1C6C6851C(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C65A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    sub_1C6C6851C(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C65C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    sub_1C6C6851C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C6851C(&qword_1EC1D83A0, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C65F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = sub_1C6D789A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C6C6609C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C6851C(&qword_1EC1D83B0, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C66118@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE55D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE55D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C661C0(uint64_t a1)
{
  v2 = sub_1C6C6851C(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C6622C(uint64_t a1, uint64_t a2)
{
  sub_1C6C6851C(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B13_SessionEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v52 = &v49 - v9;
  sub_1C6C68950(0, &unk_1EC1D6C40, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v56 = &v49 - v12;
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v6);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v49 - v21;
  sub_1C6C68950(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v49 - v26;
  v51 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v28 = *(v51 + 24);
  v29 = *(v24 + 56);
  v57 = a1;
  sub_1C6C68A94(a1 + v28, v27, &qword_1EDCE66F0, v18);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6C68A94(v30, &v27[v29], &qword_1EDCE66F0, v18);
  v32 = *(v14 + 48);
  if (v32(v27, 1, v13) != 1)
  {
    sub_1C6C68A94(v27, v22, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v32(&v27[v29], 1, v13) != 1)
    {
      (*(v14 + 32))(v17, &v27[v29], v13);
      sub_1C6C6851C(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v37 = sub_1C6D79560();
      v38 = *(v14 + 8);
      v38(v17, v13);
      v38(v22, v13);
      sub_1C6C68A24(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v14 + 8))(v22, v13);
LABEL_6:
    v33 = &qword_1EC1D6C50;
    v34 = &qword_1EDCE66F0;
    v35 = MEMORY[0x1E69AA900];
    v36 = v27;
LABEL_14:
    sub_1C6C689C8(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v27[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6C68A24(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
LABEL_8:
  v39 = *(v53 + 48);
  v40 = v56;
  sub_1C6C68A94(v57, v56, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C68A94(v31, v40 + v39, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v40, 1, v55) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      sub_1C6C68A24(v40, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v44 = sub_1C6D79560();
      return v44 & 1;
    }

    goto LABEL_13;
  }

  v43 = v52;
  sub_1C6C68A94(v40, v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    sub_1C6C51244(v43, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_13:
    v33 = &unk_1EC1D6C40;
    v34 = qword_1EDCE5660;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
    v36 = v40;
    goto LABEL_14;
  }

  v46 = v40 + v39;
  v47 = v50;
  sub_1C6C514C8(v46, v50, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v48 = _s19NewsPersonalization010Com_Apple_a1_B13_SessionEventV06OneOf_F0O2eeoiySbAE_AEtFZ_0(v43, v47);
  sub_1C6C51244(v47, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C51244(v43, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C68A24(v40, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B13_SessionEventV06OneOf_F0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v219 = a2;
  v220 = a1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v202 = (&v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  MEMORY[0x1EEE9AC00](v183, v5);
  v203 = (&v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v201 = (&v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v200 = (&v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v199 = (&v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v198 = (&v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v197 = (&v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v196 = (&v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v194 = (&v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v192 = (&v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  MEMORY[0x1EEE9AC00](v182, v31);
  v195 = (&v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v181, v33);
  v193 = (&v178 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  MEMORY[0x1EEE9AC00](v180, v35);
  v191 = (&v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v179 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  MEMORY[0x1EEE9AC00](v179, v37);
  v190 = (&v178 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v189 = (&v178 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v188 = &v178 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v187 = &v178 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v186 = (&v178 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v185 = (&v178 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v184 = &v178 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v178 = &v178 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v217 = (&v178 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v63, v64);
  v218 = (&v178 - v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  v215 = (&v178 - v68);
  MEMORY[0x1EEE9AC00](v69, v70);
  v213 = (&v178 - v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  v211 = (&v178 - v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v209 = (&v178 - v77);
  MEMORY[0x1EEE9AC00](v78, v79);
  v208 = (&v178 - v80);
  MEMORY[0x1EEE9AC00](v81, v82);
  v207 = (&v178 - v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  v206 = (&v178 - v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  v205 = (&v178 - v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  v216 = (&v178 - v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  v214 = (&v178 - v95);
  MEMORY[0x1EEE9AC00](v96, v97);
  v212 = (&v178 - v98);
  MEMORY[0x1EEE9AC00](v99, v100);
  v210 = (&v178 - v101);
  MEMORY[0x1EEE9AC00](v102, v103);
  v204 = (&v178 - v104);
  MEMORY[0x1EEE9AC00](v105, v106);
  v108 = &v178 - v107;
  MEMORY[0x1EEE9AC00](v109, v110);
  v112 = &v178 - v111;
  MEMORY[0x1EEE9AC00](v113, v114);
  v116 = (&v178 - v115);
  MEMORY[0x1EEE9AC00](v117, v118);
  v120 = (&v178 - v119);
  MEMORY[0x1EEE9AC00](v121, v122);
  v124 = (&v178 - v123);
  MEMORY[0x1EEE9AC00](v125, v126);
  v128 = &v178 - v127;
  sub_1C6C68B14(0);
  MEMORY[0x1EEE9AC00](v129 - 8, v130);
  v132 = &v178 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *(v133 + 56);
  sub_1C6C68B78(v220, v132, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v220 = v134;
  sub_1C6C68B78(v219, &v132[v134], type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6C68B78(v132, v124, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v158 = v220;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v159 = v184;
        sub_1C6C514C8(&v132[v158], v184, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleVisitedV2eeoiySbAC_ACtFZ_0(v124, v159);
        v146 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
        sub_1C6C51244(v159, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
        v147 = v124;
        goto LABEL_47;
      }

      v173 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
      goto LABEL_89;
    case 2u:
      sub_1C6C68B78(v132, v120, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v152 = v220;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v139 = v185;
        sub_1C6C514C8(&v132[v152], v185, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventArticleReadV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
      goto LABEL_85;
    case 3u:
      sub_1C6C68B78(v132, v116, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v154 = v220;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v155 = v186;
        sub_1C6C514C8(&v132[v154], v186, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventArticleSharedV2eeoiySbAC_ACtFZ_0(v116, v155);
        sub_1C6C51244(v155, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
        v147 = v116;
        v156 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared;
        goto LABEL_48;
      }

      v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared;
      v137 = v116;
      goto LABEL_90;
    case 4u:
      sub_1C6C68B78(v132, v112, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v144 = v220;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v145 = v187;
        sub_1C6C514C8(&v132[v144], v187, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventArticleLikedV2eeoiySbAC_ACtFZ_0(v112, v145);
        v146 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked;
        sub_1C6C51244(v145, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
        v147 = v112;
        goto LABEL_47;
      }

      v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked;
      v137 = v112;
      goto LABEL_90;
    case 5u:
      sub_1C6C68B78(v132, v108, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v162 = v220;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v163 = v188;
        sub_1C6C514C8(&v132[v162], v188, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B28_SessionEventArticleDislikedV2eeoiySbAC_ACtFZ_0(v108, v163);
        v146 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
        sub_1C6C51244(v163, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
        v147 = v108;
        goto LABEL_47;
      }

      v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
      v137 = v108;
      goto LABEL_90;
    case 6u:
      v120 = v204;
      sub_1C6C68B78(v132, v204, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v165 = v220;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v139 = v189;
        sub_1C6C514C8(&v132[v165], v189, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventArticleSavedV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
      goto LABEL_85;
    case 7u:
      v124 = v210;
      sub_1C6C68B78(v132, v210, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v157 = v220;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v173 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
        goto LABEL_89;
      }

      v150 = v190;
      sub_1C6C514C8(&v132[v157], v190, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      if (*v124 == *v150 && v124[1] == v150[1] || (sub_1C6D7A130() & 1) != 0)
      {
        sub_1C6D78A40();
        sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6D79560())
        {
          v151 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
          goto LABEL_67;
        }
      }

      v176 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
      goto LABEL_98;
    case 8u:
      v124 = v212;
      sub_1C6C68B78(v132, v212, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v169 = v220;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v173 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
        goto LABEL_89;
      }

      v150 = v191;
      sub_1C6C514C8(&v132[v169], v191, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      if (*v124 == *v150 && v124[1] == v150[1] || (sub_1C6D7A130() & 1) != 0)
      {
        sub_1C6D78A40();
        sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6D79560())
        {
          v151 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
          goto LABEL_67;
        }
      }

      v176 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
      goto LABEL_98;
    case 9u:
      v124 = v214;
      sub_1C6C68B78(v132, v214, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v149 = v220;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v173 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
        goto LABEL_89;
      }

      v150 = v193;
      sub_1C6C514C8(&v132[v149], v193, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      if (*v124 == *v150 && v124[1] == v150[1] || (sub_1C6D7A130() & 1) != 0)
      {
        sub_1C6D78A40();
        sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6D79560())
        {
          v151 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
          goto LABEL_67;
        }
      }

      v176 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
      goto LABEL_98;
    case 0xAu:
      v124 = v216;
      sub_1C6C68B78(v132, v216, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v168 = v220;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v173 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed;
        goto LABEL_89;
      }

      v150 = v195;
      sub_1C6C514C8(&v132[v168], v195, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      if (*v124 == *v150 && v124[1] == v150[1] || (sub_1C6D7A130() & 1) != 0)
      {
        sub_1C6D78A40();
        sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6D79560())
        {
          v151 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed;
          goto LABEL_67;
        }
      }

      v176 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed;
      goto LABEL_98;
    case 0xBu:
      v120 = v205;
      sub_1C6C68B78(v132, v205, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v143 = v220;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v139 = v192;
        sub_1C6C514C8(&v132[v143], v192, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventTagFeedViewV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView;
      goto LABEL_85;
    case 0xCu:
      v120 = v206;
      sub_1C6C68B78(v132, v206, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v148 = v220;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v139 = v194;
        sub_1C6C514C8(&v132[v148], v194, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventTrackVisitedV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
      goto LABEL_85;
    case 0xDu:
      v120 = v207;
      sub_1C6C68B78(v132, v207, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v164 = v220;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v139 = v196;
        sub_1C6C514C8(&v132[v164], v196, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventTrackListenedV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
      goto LABEL_85;
    case 0xEu:
      v120 = v208;
      sub_1C6C68B78(v132, v208, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v142 = v220;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v139 = v197;
        sub_1C6C514C8(&v132[v142], v197, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventTrackFinishedV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
      goto LABEL_85;
    case 0xFu:
      v120 = v209;
      sub_1C6C68B78(v132, v209, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v153 = v220;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v139 = v198;
        sub_1C6C514C8(&v132[v153], v198, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleUnlikedV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked;
      goto LABEL_85;
    case 0x10u:
      v120 = v211;
      sub_1C6C68B78(v132, v211, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v138 = v220;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v139 = v199;
        sub_1C6C514C8(&v132[v138], v199, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B30_SessionEventArticleUndislikedV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
      goto LABEL_85;
    case 0x11u:
      v120 = v213;
      sub_1C6C68B78(v132, v213, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v160 = v220;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v139 = v200;
        sub_1C6C514C8(&v132[v160], v200, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleUnsavedV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
      goto LABEL_85;
    case 0x12u:
      v120 = v215;
      sub_1C6C68B78(v132, v215, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v166 = v220;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v139 = v201;
        sub_1C6C514C8(&v132[v166], v201, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventSportsTagSeenV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen;
        goto LABEL_46;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen;
      goto LABEL_85;
    case 0x13u:
      v124 = v218;
      sub_1C6C68B78(v132, v218, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v170 = v220;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        v173 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
LABEL_89:
        v136 = v173;
        v137 = v124;
        goto LABEL_90;
      }

      v150 = v203;
      sub_1C6C514C8(&v132[v170], v203, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      if (*v124 == *v150 && v124[1] == v150[1] || (sub_1C6D7A130()) && (sub_1C6D78A40(), sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (sub_1C6D79560()))
      {
        v151 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
LABEL_67:
        v171 = v151;
        sub_1C6C51244(v150, v151);
        sub_1C6C51244(v124, v171);
        V2eeoiySbAC_ACtFZ_0 = 1;
        v167 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

      else
      {
        v176 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
LABEL_98:
        v177 = v176;
        sub_1C6C51244(v150, v176);
        sub_1C6C51244(v124, v177);
        V2eeoiySbAC_ACtFZ_0 = 0;
        v167 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

      goto LABEL_91;
    case 0x14u:
      v120 = v217;
      sub_1C6C68B78(v132, v217, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v161 = v220;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v139 = v202;
        sub_1C6C514C8(&v132[v161], v202, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B31_SessionEventNotificationVendedV2eeoiySbAC_ACtFZ_0(v120, v139);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_46:
        v146 = v141;
        sub_1C6C51244(v139, v141);
        v147 = v120;
        goto LABEL_47;
      }

      v172 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_85:
      v136 = v172;
      v137 = v120;
      goto LABEL_90;
    default:
      sub_1C6C68B78(v132, v128, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v135 = v220;
      if (swift_getEnumCaseMultiPayload())
      {
        v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
        v137 = v128;
LABEL_90:
        sub_1C6C51244(v137, v136);
        V2eeoiySbAC_ACtFZ_0 = 0;
        v167 = sub_1C6C68B14;
      }

      else
      {
        v175 = v178;
        sub_1C6C514C8(&v132[v135], v178, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventArticleSeenV2eeoiySbAC_ACtFZ_0(v128, v175);
        v146 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
        sub_1C6C51244(v175, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v147 = v128;
LABEL_47:
        v156 = v146;
LABEL_48:
        sub_1C6C51244(v147, v156);
        v167 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

LABEL_91:
      sub_1C6C51244(v132, v167);
      return V2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t sub_1C6C6851C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C68664(uint64_t a1)
{
  sub_1C6C50988(319, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6C50988(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6C68760(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(319);
                                          if (v22 <= 0x3F)
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

void sub_1C6C68950(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6C50988(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6C689C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C68950(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6C68A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C50988(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C68A94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C50988(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C6C68B14(uint64_t a1)
{
  if (!qword_1EC1D84A0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D84A0);
    }
  }
}

uint64_t sub_1C6C68B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1C6C68BE0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6C68DC8();
    result = sub_1C6D77FE0();
    if (v8[3])
    {
      v4 = type metadata accessor for DiagnosticFileProvider();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC19NewsPersonalization22DiagnosticFileProvider_computeService] = v3;
      sub_1C6B16F28(v8, &v5[OBJC_IVAR____TtC19NewsPersonalization22DiagnosticFileProvider_personalizationInspectionGroupProvider]);
      v7.receiver = v5;
      v7.super_class = v4;
      v6 = objc_msgSendSuper2(&v7, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6C68CE0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DiagnosticFileProvider();
  v2 = sub_1C6D77FD0();
  if (v2)
  {
    sub_1C6C68D70();
    sub_1C6D78130();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1C6C68D70()
{
  result = qword_1EC1D84A8;
  if (!qword_1EC1D84A8)
  {
    type metadata accessor for DiagnosticFileProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84A8);
  }

  return result;
}

unint64_t sub_1C6C68DC8()
{
  result = qword_1EDCDFC60;
  if (!qword_1EDCDFC60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCDFC60);
  }

  return result;
}

uint64_t sub_1C6C68E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = v7;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 80) = a1;
  *(v8 + 136) = *(a4 + 24);
  v9 = *(a4 + 56);
  *(v8 + 152) = *(a4 + 40);
  *(v8 + 160) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1C6C68E6C, 0, 0);
}

uint64_t sub_1C6C68E6C()
{
  v1 = *(v0 + 128);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_1C6C68F94;

  return v6(v2, v3);
}

uint64_t sub_1C6C68F94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6C690CC, 0, 0);
  }
}

uint64_t sub_1C6C690CC(uint64_t a1)
{
  v278 = v1;
  if (qword_1EDCE23B8 != -1)
  {
    goto LABEL_213;
  }

  while (1)
  {
    v2 = *(v1 + 176);
    v3 = qword_1EDCE23C0;
    v4 = sub_1C6D79AC0();
    v5 = MEMORY[0x1E69E7CC0];
    v258 = v3;
    sub_1C6D78D30("Processing news signal suggestions...", 37, 2, &dword_1C6B09000, v3, v4, MEMORY[0x1E69E7CC0]);
    v273 = v2;
    v276 = v1;
    v269 = *(v2 + 16);
    if (!v269)
    {
      break;
    }

    v6 = *(v1 + 120);
    v7 = *(v1 + 104);
    v266 = *(v1 + 176) + 32;
    v1 = v6 + 56;

    v8 = 0;
    v264 = v5;
    while (v8 < *(v273 + 16))
    {
      v10 = v266 + 24 * v8;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (*(v6 + 16))
      {
        sub_1C6D7A260();

        sub_1C6D79610();
        v14 = sub_1C6D7A2B0();
        v15 = -1 << *(v6 + 32);
        v16 = v14 & ~v15;
        if ((*(v1 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = (*(v6 + 48) + 16 * v16);
            v19 = *v18 == v12 && v18[1] == v11;
            if (v19 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v1 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          v26 = v5;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1C6B66BA0(0, v5[2] + 1, 1, v5);
          }

          v28 = v26[2];
          v27 = v26[3];
          v5 = v26;
          if (v28 >= v27 >> 1)
          {
            v5 = sub_1C6B66BA0((v27 > 1), v28 + 1, 1, v26);
          }

          v5[2] = v28 + 1;
          v9 = &v5[5 * v28];
          v9[4] = v12;
          v9[5] = v11;
          *(v9 + 12) = v13;
          v9[7] = 0;
          goto LABEL_5;
        }
      }

      else
      {
      }

LABEL_19:
      v20 = *(v7 + 24);
      v21 = *(v7 + 32);
      __swift_project_boxed_opaque_existential_1(*(v276 + 104), v20);

      v22 = sub_1C6CDE8A8(v12, v11, v20, v21);

      v23 = v22;
      if (v22 > 1u)
      {
        if (v22 != 2)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v264 = sub_1C6B66A5C(0, v264[2] + 1, 1, v264);
          }

          v32 = v264[2];
          v31 = v264[3];
          if (v32 >= v31 >> 1)
          {
            v264 = sub_1C6B66A5C((v31 > 1), v32 + 1, 1, v264);
          }

          v264[2] = v32 + 1;
          v33 = &v264[3 * v32];
          v33[4] = v12;
          v33[5] = v11;
          *(v33 + 12) = v13;
          goto LABEL_6;
        }

        v24 = v5;
        v25 = 5;
      }

      else
      {
        v24 = v5;
        if (v23)
        {
          v25 = 8;
        }

        else
        {
          v25 = 1;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1C6B66BA0(0, v24[2] + 1, 1, v24);
      }

      v30 = v24[2];
      v29 = v24[3];
      v5 = v24;
      if (v30 >= v29 >> 1)
      {
        v5 = sub_1C6B66BA0((v29 > 1), v30 + 1, 1, v24);
      }

      v5[2] = v30 + 1;
      v9 = &v5[5 * v30];
      v9[4] = v12;
      v9[5] = v11;
      *(v9 + 12) = v13;
      v9[7] = v25;
LABEL_5:
      *(v9 + 64) = 1;
LABEL_6:
      if (++v8 == v269)
      {
        v252 = v5;
        v1 = v276;

        v5 = v264;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    swift_once();
  }

  v252 = v5;
LABEL_41:
  sub_1C6B1D314(0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C6D7EB10;
  v35 = v5[2];
  v36 = MEMORY[0x1E69E6530];
  v37 = MEMORY[0x1E69E65A8];
  *(v34 + 56) = MEMORY[0x1E69E6530];
  *(v34 + 64) = v37;
  *(v34 + 32) = v35;
  v38 = *(v273 + 16);
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  *(v34 + 72) = v38;

  sub_1C6D79AC0();
  sub_1C6D78D30("Found %lu channel suggestion candidates from %lu total", v232, v236);

  sub_1C6B75C84();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C6D7EB10;
  v248 = v44;
  v249 = v42;
  v46 = (v44 >> 1) - v42;
  if (__OFSUB__(v44 >> 1, v42))
  {
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  v246 = v40;
  v47 = *(v1 + 184);
  v48 = *(v1 + 152);
  *(v45 + 56) = v36;
  *(v45 + 64) = v37;
  v256 = v46;
  *(v45 + 32) = v46;
  *(v45 + 96) = v36;
  *(v45 + 104) = v37;
  *(v45 + 72) = v48;
  sub_1C6D79AC0();
  sub_1C6D78D30("Selected %lu channel suggestion to satisfy minimum %lu", v233, v237);

  v265 = v5;
  v270 = *(v47 + 16);
  v274 = v47;
  if (v270)
  {
    v49 = *(v1 + 120);
    v262 = *(v1 + 104);
    v267 = *(v1 + 184) + 32;
    v50 = v49 + 56;

    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v260 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v51 >= *(v274 + 16))
      {
        goto LABEL_207;
      }

      v53 = v267 + 24 * v51;
      v55 = *v53;
      v54 = *(v53 + 8);
      v56 = *(v53 + 16);
      if (*(v49 + 16))
      {
        sub_1C6D7A260();

        sub_1C6D79610();
        v57 = sub_1C6D7A2B0();
        v58 = -1 << *(v49 + 32);
        v59 = v57 & ~v58;
        if ((*(v50 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
        {
          v60 = ~v58;
          while (1)
          {
            v61 = (*(v49 + 48) + 16 * v59);
            v62 = *v61 == v55 && v61[1] == v54;
            if (v62 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v59 = (v59 + 1) & v60;
            if (((*(v50 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1C6B66BA0(0, v52[2] + 1, 1, v52);
          }

          v68 = v52[2];
          v67 = v52[3];
          if (v68 >= v67 >> 1)
          {
            v52 = sub_1C6B66BA0((v67 > 1), v68 + 1, 1, v52);
          }

          v52[2] = v68 + 1;
          v69 = &v52[5 * v68];
          v69[4] = v55;
          v69[5] = v54;
          *(v69 + 12) = v56;
          v69[7] = 0;
          goto LABEL_72;
        }
      }

      else
      {
      }

LABEL_56:
      v63 = *(v262 + 24);
      v64 = *(v262 + 32);
      __swift_project_boxed_opaque_existential_1(*(v1 + 104), v63);

      v65 = sub_1C6CDE8A8(v55, v54, v63, v64);

      if (v65 <= 1u)
      {
        break;
      }

      if (v65 == 2)
      {
        v66 = 5;
LABEL_67:
        v1 = v276;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1C6B66BA0(0, v52[2] + 1, 1, v52);
        }

        v71 = v52[2];
        v70 = v52[3];
        if (v71 >= v70 >> 1)
        {
          v52 = sub_1C6B66BA0((v70 > 1), v71 + 1, 1, v52);
        }

        v52[2] = v71 + 1;
        v69 = &v52[5 * v71];
        v69[4] = v55;
        v69[5] = v54;
        *(v69 + 12) = v56;
        v69[7] = v66;
        goto LABEL_72;
      }

      v1 = v276;

      v72 = sub_1C6CDEB9C(v55, v54);

      if (v72)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v260 = sub_1C6B66A5C(0, v260[2] + 1, 1, v260);
        }

        v74 = v260[2];
        v73 = v260[3];
        if (v74 >= v73 >> 1)
        {
          v260 = sub_1C6B66A5C((v73 > 1), v74 + 1, 1, v260);
        }

        v260[2] = v74 + 1;
        v75 = &v260[3 * v74];
        v75[4] = v55;
        v75[5] = v54;
        *(v75 + 12) = v56;
        goto LABEL_73;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1C6B66BA0(0, v52[2] + 1, 1, v52);
      }

      v77 = v52[2];
      v76 = v52[3];
      if (v77 >= v76 >> 1)
      {
        v52 = sub_1C6B66BA0((v76 > 1), v77 + 1, 1, v52);
      }

      v52[2] = v77 + 1;
      v69 = &v52[5 * v77];
      v69[4] = v55;
      v69[5] = v54;
      *(v69 + 12) = v56;
      v69[7] = 3;
LABEL_72:
      *(v69 + 64) = 1;
LABEL_73:
      if (++v51 == v270)
      {

        v5 = v265;
        v78 = v260;
        goto LABEL_87;
      }
    }

    if (v65)
    {
      v66 = 8;
    }

    else
    {
      v66 = 1;
    }

    goto LABEL_67;
  }

  v52 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
LABEL_87:
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1C6D7EB10;
  v80 = v78[2];
  v81 = MEMORY[0x1E69E6530];
  *(v79 + 56) = MEMORY[0x1E69E6530];
  v82 = MEMORY[0x1E69E65A8];
  *(v79 + 64) = MEMORY[0x1E69E65A8];
  *(v79 + 32) = v80;
  v83 = *(v274 + 16);
  *(v79 + 96) = v81;
  *(v79 + 104) = v82;
  *(v79 + 72) = v83;

  sub_1C6D79AC0();
  sub_1C6D78D30("Found %lu topic suggestion candidates from %lu total", v232, v236);

  v261 = v78;
  sub_1C6B75C84();
  v251 = v84;
  v86 = v85;
  v88 = v87;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1C6D7EB10;
  v244 = v88;
  v250 = v86;
  if (__OFSUB__(v88 >> 1, v86))
  {
    goto LABEL_215;
  }

  v271 = v88 >> 1;
  v90 = *(v1 + 160);
  *(v89 + 56) = v81;
  *(v89 + 64) = v82;
  v257 = (v88 >> 1) - v86;
  *(v89 + 32) = v257;
  *(v89 + 96) = v81;
  *(v89 + 104) = v82;
  *(v89 + 72) = v90;
  sub_1C6D79AC0();
  sub_1C6D78D30("Selected %lu topic suggestion to satisfy minimum %lu", v234, v238);

  v91 = v5[2];
  if (v91 >= v256)
  {
    v92 = v256;
  }

  else
  {
    v92 = v5[2];
  }

  if ((v256 & 0x8000000000000000) != 0)
  {
    goto LABEL_216;
  }

  v93 = MEMORY[0x1E69E7CC0];
  v245 = v52;
  if (v91 > v256)
  {
    v94 = v91 - v92;
    v277[0] = MEMORY[0x1E69E7CC0];
    v95 = (v91 - v92) & ~((v91 - v92) >> 63);
    v1 = v265;

    sub_1C6B397F4(0, v95, 0);
    if ((v94 & 0x8000000000000000) != 0)
    {
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    v93 = v277[0];
    v96 = &v265[3 * v92 + 6];
    do
    {
      if (!v94)
      {
        goto LABEL_208;
      }

      v1 = *(v96 - 2);
      v97 = *(v96 - 1);
      v98 = *v96;
      v277[0] = v93;
      v100 = *(v93 + 16);
      v99 = *(v93 + 24);

      if (v100 >= v99 >> 1)
      {
        sub_1C6B397F4((v99 > 1), v100 + 1, 1);
        v93 = v277[0];
      }

      *(v93 + 16) = v100 + 1;
      v101 = v93 + 24 * v100;
      *(v101 + 32) = v1;
      *(v101 + 40) = v97;
      *(v101 + 48) = v98;
      *(v101 + 52) = 0;
      v96 += 6;
      --v94;
    }

    while (v94);

    v1 = v276;
  }

  v102 = v261[2];
  v103 = v257;
  if (v102 >= v257)
  {
    v104 = v257;
  }

  else
  {
    v104 = v261[2];
  }

  v105 = MEMORY[0x1E69E65A8];
  if (v257 < 0)
  {
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  v106 = MEMORY[0x1E69E7CC0];
  if (v102 <= v257)
  {
    goto LABEL_112;
  }

  v107 = v102 - v104;
  v277[0] = MEMORY[0x1E69E7CC0];
  v108 = (v102 - v104) & ~((v102 - v104) >> 63);

  sub_1C6B397F4(0, v108, 0);
  if (v107 < 0)
  {
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v106 = v277[0];
  v109 = &v261[3 * v104 + 6];
  v1 = 1;
  do
  {
    if (!v107)
    {
      goto LABEL_209;
    }

    v111 = *(v109 - 2);
    v110 = *(v109 - 1);
    v112 = *v109;
    v277[0] = v106;
    v114 = v106[2];
    v113 = v106[3];

    if (v114 >= v113 >> 1)
    {
      sub_1C6B397F4((v113 > 1), v114 + 1, 1);
      v106 = v277[0];
    }

    v106[2] = v114 + 1;
    v115 = &v106[3 * v114];
    v115[4] = v111;
    v115[5] = v110;
    *(v115 + 12) = v112;
    *(v115 + 52) = 1;
    v109 += 6;
    --v107;
  }

  while (v107);

  v1 = v276;
  v105 = MEMORY[0x1E69E65A8];
  v103 = v257;
LABEL_112:
  v116 = *(v1 + 192);
  v277[0] = v93;
  sub_1C6B38F04(v106);

  sub_1C6C6AF7C(v277);
  if (v116)
  {
  }

  v117 = v256 + v103;
  if (__OFADD__(v256, v103))
  {
    goto LABEL_222;
  }

  v118 = *(v1 + 144);
  v119 = __OFSUB__(v118, v117);
  v120 = v118 - v117;
  if (v119)
  {
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v121 = v277[0];
  v122 = *(v1 + 136);
  v123 = v120 & ~(v120 >> 63);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1C6D807C0;
  v125 = MEMORY[0x1E69E6530];
  *(v124 + 56) = MEMORY[0x1E69E6530];
  *(v124 + 64) = v105;
  *(v124 + 32) = v123;
  *(v124 + 96) = v125;
  *(v124 + 104) = v105;
  *(v124 + 72) = v118;
  v126 = *(v121 + 16);
  *(v124 + 136) = v125;
  *(v124 + 144) = v105;
  *(v124 + 112) = v126;
  sub_1C6D79AC0();
  sub_1C6D78D30("Selecting %lu more tags to satify maxNewsSignalAutoFavorites %lu from %lu remaining tags", v232, v236, v239);

  v240 = v123;
  v239 = sub_1C6B75C84();
  v241 = v127;
  v247 = v128;
  v243 = v129;
  v130 = swift_allocObject();
  v236 = 2;
  *(v130 + 16) = xmmword_1C6D7E630;
  *(v130 + 56) = v125;
  *(v130 + 64) = v105;
  *(v130 + 32) = v122;
  v242 = v121;

  sub_1C6D79AC0();
  sub_1C6D78D30("Selecting gems with max rank %lu", 1);

  v131 = MEMORY[0x1E69E7CC0];
  if (v103)
  {
    v277[0] = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v103, 0);
    v131 = v277[0];
    v132 = v271;
    if (v250 > v271)
    {
      v132 = v250;
    }

    v1 = v132 - v250;
    v133 = (v251 + 24 * v250 + 8);
    while (v1)
    {
      v135 = *(v133 - 1);
      v134 = *v133;
      v277[0] = v131;
      v137 = *(v131 + 16);
      v136 = *(v131 + 24);

      if (v137 >= v136 >> 1)
      {
        sub_1C6B39280((v136 > 1), v137 + 1, 1);
        v131 = v277[0];
      }

      *(v131 + 16) = v137 + 1;
      v138 = v131 + 16 * v137;
      *(v138 + 32) = v135;
      *(v138 + 40) = v134;
      --v1;
      v133 += 3;
      if (!--v103)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_210;
  }

LABEL_123:
  v1 = (v243 >> 1) - v247;
  if (__OFSUB__(v243 >> 1, v247))
  {
    goto LABEL_224;
  }

  v139 = MEMORY[0x1E69E7CC0];
  v140 = v276;
  if (!v1)
  {
    goto LABEL_135;
  }

  v277[0] = MEMORY[0x1E69E7CC0];
  sub_1C6B39280(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v139 = v277[0];
  if (v247 <= (v243 >> 1))
  {
    v141 = v243 >> 1;
  }

  else
  {
    v141 = v247;
  }

  v142 = v141 - v247;
  v143 = (24 * v247 + v241 + 8);
  do
  {
    if (!v142)
    {
      goto LABEL_211;
    }

    v145 = *(v143 - 1);
    v144 = *v143;
    v277[0] = v139;
    v147 = *(v139 + 16);
    v146 = *(v139 + 24);

    if (v147 >= v146 >> 1)
    {
      sub_1C6B39280((v146 > 1), v147 + 1, 1);
      v139 = v277[0];
    }

    *(v139 + 16) = v147 + 1;
    v148 = v139 + 16 * v147;
    *(v148 + 32) = v145;
    *(v148 + 40) = v144;
    --v142;
    v143 += 3;
    --v1;
  }

  while (v1);
  v140 = v276;
LABEL_135:
  v150 = v140[14];
  v149 = v140[15];
  v277[0] = v131;
  sub_1C6B38560(v139);
  v151 = v277[0];

  v1 = v140;
  v152 = sub_1C6C26A28(v151, v149);

  v153 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  v154 = [v150 defaultTags];
  if (!v154)
  {
LABEL_232:

    __break(1u);
LABEL_233:

    __break(1u);
    return result;
  }

  v155 = v154;
  v157 = v140[22];
  v156 = v140[23];
  sub_1C6B18500();
  v158 = sub_1C6D79490();

  v159 = sub_1C6C6BED4(v158, v157, v156);

  v272 = *(v159 + 16);
  if (v272)
  {
    v160 = 0;
    v268 = v159 + 32;
    v161 = v152 + 56;
    v253 = v140[23] + 48;
    v162 = MEMORY[0x1E69E7CC0];
    v259 = *(v1 + 104);
    v254 = MEMORY[0x1E69E7CC0];
    v263 = v159;
    while (1)
    {
      if (v160 >= *(v159 + 16))
      {
        goto LABEL_212;
      }

      v163 = v268 + 32 * v160;
      v164 = *v163;
      v165 = *(v163 + 8);
      v1 = *(v163 + 16);
      v166 = *(v163 + 24);
      if (*(v152 + 16))
      {
        sub_1C6D7A260();

        sub_1C6D79610();
        v167 = sub_1C6D7A2B0();
        v168 = -1 << *(v152 + 32);
        v169 = v167 & ~v168;
        if ((*(v161 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169))
        {
          v170 = ~v168;
          while (1)
          {
            v171 = (*(v152 + 48) + 16 * v169);
            v172 = *v171 == v164 && v171[1] == v165;
            if (v172 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v169 = (v169 + 1) & v170;
            if (((*(v161 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0)
            {
              goto LABEL_150;
            }
          }

          v176 = 0;
          if ((v166 & 1) == 0)
          {
            if ((v1 & 0x8000000000000000) != 0)
            {
              goto LABEL_218;
            }

            if (v1 >= *(v274 + 16))
            {
              goto LABEL_219;
            }

            v176 = *(v253 + 24 * v1);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v162 = sub_1C6B66BA0(0, v162[2] + 1, 1, v162);
          }

          v1 = v162[2];
          v177 = v162[3];
          if (v1 >= v177 >> 1)
          {
            v162 = sub_1C6B66BA0((v177 > 1), v1 + 1, 1, v162);
          }

          v162[2] = v1 + 1;
          v178 = &v162[5 * v1];
          v178[4] = v164;
          v178[5] = v165;
          *(v178 + 12) = v176;
          v178[7] = 0;
          goto LABEL_170;
        }
      }

      else
      {
      }

LABEL_150:
      v173 = *(v259 + 24);
      v174 = *(v259 + 32);
      __swift_project_boxed_opaque_existential_1(*(v276 + 104), v173);
      v175 = sub_1C6CDE8A8(v164, v165, v173, v174);
      if (v175 <= 1)
      {
        break;
      }

      if (v175 == 2)
      {
        v1 = 5;
LABEL_165:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_1C6B66BA0(0, v162[2] + 1, 1, v162);
        }

        v180 = v162[2];
        v179 = v162[3];
        if (v180 >= v179 >> 1)
        {
          v162 = sub_1C6B66BA0((v179 > 1), v180 + 1, 1, v162);
        }

        v162[2] = v180 + 1;
        v178 = &v162[5 * v180];
        v178[4] = v164;
        v178[5] = v165;
        *(v178 + 12) = 0;
        v178[7] = v1;
        goto LABEL_170;
      }

      if ((v166 & 1) == 0)
      {
        if (*(v276 + 136) >= v1)
        {
          if ((v1 & 0x8000000000000000) != 0)
          {
            goto LABEL_226;
          }

          if (v1 >= *(v274 + 16))
          {
            goto LABEL_227;
          }

          v186 = *(v253 + 24 * v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v254 = sub_1C6B66A5C(0, v254[2] + 1, 1, v254);
          }

          v1 = v254[2];
          v187 = v254[3];
          if (v1 >= v187 >> 1)
          {
            v254 = sub_1C6B66A5C((v187 > 1), v1 + 1, 1, v254);
          }

          v254[2] = v1 + 1;
          v188 = &v254[3 * v1];
          v188[4] = v164;
          v188[5] = v165;
          *(v188 + 12) = v186;
        }

        else
        {
          if ((v1 & 0x8000000000000000) != 0)
          {
            goto LABEL_225;
          }

          if (v1 >= *(v274 + 16))
          {
            goto LABEL_228;
          }

          v182 = *(v253 + 24 * v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v162 = sub_1C6B66BA0(0, v162[2] + 1, 1, v162);
          }

          v184 = v162[2];
          v183 = v162[3];
          if (v184 >= v183 >> 1)
          {
            v162 = sub_1C6B66BA0((v183 > 1), v184 + 1, 1, v162);
          }

          v162[2] = v184 + 1;
          v185 = &v162[5 * v184];
          v185[4] = v164;
          v185[5] = v165;
          *(v185 + 12) = v182;
          v185[7] = v1;
          *(v185 + 64) = 0;
        }

        goto LABEL_171;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_1C6B66BA0(0, v162[2] + 1, 1, v162);
      }

      v1 = v162[2];
      v181 = v162[3];
      if (v1 >= v181 >> 1)
      {
        v162 = sub_1C6B66BA0((v181 > 1), v1 + 1, 1, v162);
      }

      v162[2] = v1 + 1;
      v178 = &v162[5 * v1];
      v178[4] = v164;
      v178[5] = v165;
      *(v178 + 12) = 0;
      v178[7] = 4;
LABEL_170:
      *(v178 + 64) = 1;
LABEL_171:
      ++v160;
      v159 = v263;
      if (v160 == v272)
      {
        v275 = v162;

        v189 = v254;
        v153 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
        goto LABEL_195;
      }
    }

    if (v175)
    {
      v1 = 8;
    }

    else
    {
      v1 = 1;
    }

    goto LABEL_165;
  }

  v189 = MEMORY[0x1E69E7CC0];
  v275 = MEMORY[0x1E69E7CC0];
LABEL_195:
  v190 = *(v276 + 112);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_1C6D7EB10;
  v192 = v189[2];
  v193 = MEMORY[0x1E69E6530];
  *(v191 + 56) = MEMORY[0x1E69E6530];
  v194 = MEMORY[0x1E69E65A8];
  *(v191 + 64) = MEMORY[0x1E69E65A8];
  *(v191 + 32) = v192;
  v255 = v189;

  v195 = [v190 v153[107]];
  if (!v195)
  {
    goto LABEL_233;
  }

  v196 = v195;

  v197 = MEMORY[0x1E69E6158];
  v198 = sub_1C6D79490();

  v199 = *(v198 + 16);

  *(v191 + 96) = v193;
  *(v191 + 104) = v194;
  *(v191 + 72) = v199;
  sub_1C6D79AC0();
  sub_1C6D78D30("Selected %lu gems from %lu total", v232, 2);

  v200 = sub_1C6C6AB1C(0, v242, v240);
  v277[0] = v252;
  sub_1C6B38DF0(v200);

  sub_1C6C6ADFC(v277);

  v201 = v277[0];
  v202 = sub_1C6C6C148(0, v241, v247, v243);
  v203 = sub_1C6BEEEB4(v202);

  v204 = v203[2];
  v119 = __OFADD__(v204, v256);
  v205 = v204 + v256;
  if (v119)
  {
    goto LABEL_230;
  }

  v277[0] = sub_1C6B66A5C(0, v205 & ~(v205 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v206 = swift_unknownObjectRetain();
  sub_1C6B3C2D0(v206, v246, v249, v248);
  swift_unknownObjectRelease();
  sub_1C6B38CDC(v203);
  v207 = v277[0];

  v208 = sub_1C6C6AB1C(1, v242, v240);

  v277[0] = v245;
  sub_1C6B38DF0(v208);

  sub_1C6C6ADFC(v277);

  v210 = v277[0];

  v211 = sub_1C6C6C148(1, v241, v247, v243);
  v212 = sub_1C6BEEEB4(v211);

  v213 = v212[2];
  v119 = __OFADD__(v213, v257);
  v214 = v213 + v257;
  if (v119)
  {
    goto LABEL_231;
  }

  v277[0] = sub_1C6B66A5C(0, v214 & ~(v214 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v215 = swift_unknownObjectRetain();
  sub_1C6B3C2D0(v215, v251, v250, v244);
  swift_unknownObjectRelease();
  sub_1C6B38CDC(v212);
  v216 = v277[0];
  sub_1C6D77FA0();
  if (sub_1C6D77F90())
  {
    v217 = swift_allocObject();
    *(v217 + 16) = v235;
    v219 = v275;
    v218 = v276;
    *(v276 + 64) = 0;
    *(v276 + 72) = 0xE000000000000000;
    *(v276 + 16) = v201;
    *(v276 + 24) = v207;
    v220 = v201;
    v221 = v255;
    *(v276 + 32) = v275;
    *(v276 + 40) = v255;
    *(v276 + 48) = v210;
    *(v276 + 56) = v216;
    sub_1C6C6C344();

    sub_1C6D79E60();

    v222 = v197;
    v223 = v207;
    v224 = v210;
    v226 = *(v276 + 64);
    v225 = *(v276 + 72);
    *(v217 + 56) = v222;
    *(v217 + 64) = sub_1C6B2064C();
    *(v217 + 32) = v226;
    *(v217 + 40) = v225;
    v210 = v224;
    v207 = v223;
    v227 = sub_1C6D79AC0();
    sub_1C6D78D30("Final result: %{public}@", 24, 2, &dword_1C6B09000, v258, v227, v217);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v219 = v275;
    v218 = v276;
    v220 = v201;
    v221 = v255;
  }

  v229 = v218[11];
  v228 = v218[12];
  v230 = v218[10];
  *v230 = v220;
  v230[1] = v207;
  *v229 = v219;
  v229[1] = v221;
  *v228 = v210;
  v228[1] = v216;
  v231 = v218[1];

  return v231();
}

uint64_t sub_1C6C6AB1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (a3 < 0)
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v6 = result;

    v7 = MEMORY[0x1E69E7CC0];
    v8 = v6 & 1;
    v9 = v4;
    v10 = v4;
LABEL_6:
    v11 = 24 * v9;
    while (v3 != v10)
    {
      if (v9 < v4 || v10 >= v3)
      {
        __break(1u);
        goto LABEL_25;
      }

      v12 = *(a2 + v11 + 52);
      ++v10;
      v11 += 24;
      if (v12 == v8)
      {
        v13 = *(a2 + v11 + 16);
        v28 = *(a2 + v11 + 8);
        v14 = *(a2 + v11 + 24);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C6B397F4(0, *(v7 + 16) + 1, 1);
        }

        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_1C6B397F4((v15 > 1), v16 + 1, 1);
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 24 * v16;
        *(v17 + 32) = v28;
        *(v17 + 40) = v13;
        *(v17 + 48) = v14;
        *(v17 + 52) = v12;
        v9 = v10;
        goto LABEL_6;
      }
    }

    v18 = *(v7 + 16);
    if (v18)
    {
      v29 = MEMORY[0x1E69E7CC0];
      v19 = v7;
      sub_1C6B39554(0, v18, 0);
      v20 = v29;
      v21 = (v19 + 48);
      do
      {
        v23 = *(v21 - 2);
        v22 = *(v21 - 1);
        v24 = *v21;
        v25 = *(v29 + 16);
        v26 = *(v29 + 24);

        if (v25 >= v26 >> 1)
        {
          sub_1C6B39554((v26 > 1), v25 + 1, 1);
        }

        *(v29 + 16) = v25 + 1;
        v27 = v29 + 40 * v25;
        *(v27 + 32) = v23;
        *(v27 + 40) = v22;
        *(v27 + 48) = v24;
        *(v27 + 56) = 7;
        *(v27 + 64) = 1;
        v21 += 6;
        --v18;
      }

      while (v18);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v20;
  }

  return result;
}

uint64_t sub_1C6C6AD4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v4;
  v6 = *(a2 + 16);
  v7 = v6 == 0;
  v8 = 0;
  if (v6)
  {
    v9 = (a2 + 40);
    while (1)
    {
      v10 = *(v9 - 1) == v5 && *v9 == v4;
      if (v10 || (sub_1C6D7A130() & 1) != 0)
      {
        break;
      }

      ++v8;
      v9 += 3;
      v7 = v6 == v8;
      if (v6 == v8)
      {
        v8 = 0;
        break;
      }
    }
  }

  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
}

uint64_t sub_1C6C6ADFC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73FBC(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 7);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (*(v12 - 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 5);
          v17 = *(v12 + 48);
          v18 = *(v12 - 2);
          *(v12 + 1) = *(v12 - 6);
          *(v12 + 2) = v18;
          *(v12 + 6) = *(v12 + 1);
          *(v12 - 3) = v14;
          *(v12 - 2) = v15;
          *(v12 - 2) = v13;
          *v12 = v16;
          *(v12 + 8) = v17;
          v12 -= 10;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 10;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C6B3C4F0(0, &qword_1EDCDFBC8, &type metadata for AutoFavoriteResults.RejectionReason, "identifier score reason ");
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1C6C6B0F4(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6C6AF7C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73FD0(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v12[2] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 36);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          *(v12 + 12) = v16;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C6B3C4F0(0, &qword_1EDCDFBC0, &type metadata for EventHistoryAutoFavoritesProvider.SuggestionKind, "identifier score kind ");
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1C6C6B6D8(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6C6B0F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v92 = (v8 + 16);
    v93 = *(v8 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v8 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1C6C6BCA8((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 16);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 16);
      v13 = v9 + 2;
      v14 = (v11 + 56);
      while (v6 != v13)
      {
        v15 = *v14;
        v16 = v14[10];
        v14 += 10;
        ++v13;
        if (v12 < v10 == v15 >= v16)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v17 = 40 * v7 - 16;
        v18 = 40 * v9 + 32;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v30 + v18);
            v22 = (v30 + v17);
            v23 = *(v21 - 4);
            v24 = *(v21 - 3);
            v25 = *(v21 - 4);
            v26 = *(v21 - 1);
            v27 = *v21;
            v28 = v22[1];
            v29 = *(v22 - 1);
            *(v21 - 2) = *(v22 - 3);
            *(v21 - 1) = v29;
            *v21 = v28;
            *(v22 - 3) = v23;
            *(v22 - 2) = v24;
            *(v22 - 2) = v25;
            *v22 = v26;
            *(v22 + 8) = v27;
          }

          ++v20;
          v17 -= 40;
          v18 += 40;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1C6B657D0((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v45);
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v8 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v8 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_1C6C6BCA8((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v8 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 56);
    if (*(v35 + 16) >= v36)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 40);
    v37 = *(v35 + 48);
    v39 = *(v35 + 16);
    v40 = *(v35 + 32);
    *(v35 + 40) = *v35;
    v41 = *(v35 + 64);
    v42 = *(v35 + 72);
    *(v35 + 56) = v39;
    *(v35 + 72) = v40;
    *v35 = v38;
    *(v35 + 8) = v37;
    *(v35 + 16) = v36;
    *(v35 + 24) = v41;
    *(v35 + 32) = v42;
    v35 -= 40;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_1C6C6B6D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v7);
      v7 = result;
    }

    v87 = (v7 + 16);
    v88 = *(v7 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v7 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1C6BF4318((*a3 + 24 * *v89), (*a3 + 24 * *v91), *a3 + 24 * v92, v96);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_114;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_116;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = *a3 + 24 * v8;
      v11 = *(v10 + 16);
      v12 = v8 + 2;
      v13 = (v10 + 40);
      while (v5 != v12)
      {
        v14 = *v13;
        v15 = v13[6];
        v13 += 6;
        ++v12;
        if (v11 < v9 == v14 >= v15)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v16 = 24 * v6 - 8;
        v17 = 24 * v8 + 20;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v27 + v17);
            v21 = *(v27 + v17 - 20);
            v22 = (v27 + v16);
            v23 = *(v20 - 12);
            v24 = *(v20 - 1);
            v25 = *v20;
            v26 = *v22;
            *(v20 - 20) = *(v22 - 1);
            *(v20 - 4) = v26;
            *(v22 - 2) = v21;
            *(v22 - 1) = v23;
            *v22 = v24;
            *(v22 + 4) = v25;
          }

          ++v19;
          v16 -= 24;
          v17 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v40 = *(v7 + 16);
    v39 = *(v7 + 24);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C6B657D0((v39 > 1), v40 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v41;
    v42 = v7 + 32;
    v43 = (v7 + 32 + 16 * v40);
    *v43 = v8;
    v43[1] = v6;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_127;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v7 + 32);
          v46 = *(v7 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = (v7 + 16 * v41);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = (v42 + 16 * v44);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v71 = (v7 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = (v42 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v82 = (v42 + 16 * (v44 - 1));
        v83 = *v82;
        v84 = (v42 + 16 * v44);
        v85 = v84[1];
        sub_1C6BF4318((*a3 + 24 * *v82), (*a3 + 24 * *v84), *a3 + 24 * v85, v96);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v44 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v7 + 16);
        if (v44 >= v86)
        {
          goto LABEL_101;
        }

        v41 = v86 - 1;
        result = memmove((v42 + 16 * v44), v84 + 2, 16 * (v86 - 1 - v44));
        *(v7 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v42 + 16 * v41;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = (v7 + 16 * v41);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = (v42 + 16 * v44);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v94;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v32 + 40);
    if (*(v32 + 16) >= v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v35 = *(v32 + 24);
    v34 = *(v32 + 32);
    v36 = *(v32 + 44);
    v37 = *(v32 + 16);
    *(v32 + 24) = *v32;
    *(v32 + 40) = v37;
    *v32 = v35;
    *(v32 + 8) = v34;
    *(v32 + 16) = v33;
    *(v32 + 20) = v36;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_1C6C6BCA8(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 10 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 10;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 10;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 10;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 10 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v19 = (v5 + 40);
      if (*(v6 - 6) < *(v13 - 6))
      {
        v23 = v6 - 10;
        if (v19 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 6);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v13 <= v4 || (v6 -= 10, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v20 = v13 - 10;
      if (v19 != v13)
      {
        v21 = *v20;
        v22 = *(v13 - 6);
        *(v5 + 32) = *(v13 - 1);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v13 -= 10;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v26 = 10 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26 * 4);
  }

  return 1;
}

uint64_t sub_1C6C6BED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v44 = MEMORY[0x1E69E7CC0];
  sub_1C6B39814(0, v4, 0);
  v5 = v44;
  v7 = v6 + 64;
  v8 = sub_1C6D79CC0();
  v9 = 0;
  v35 = v6 + 72;
  v36 = v4;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    v38 = v9;
    v39 = *(v6 + 36);
    v13 = v6;
    v14 = (*(v6 + 48) + 16 * v8);
    v16 = *v14;
    v15 = v14[1];
    v40[0] = v16;
    v40[1] = v15;
    sub_1C6C6AD4C(v40, a3, v41);
    if (v3)
    {
      goto LABEL_27;
    }

    v17 = v41[0];
    v18 = v41[1];
    v19 = v42;
    v20 = v43;
    v44 = v5;
    v22 = *(v5 + 16);
    v21 = *(v5 + 24);
    if (v22 >= v21 >> 1)
    {
      v33 = v42;
      v34 = v41[0];
      v32 = v43;
      sub_1C6B39814((v21 > 1), v22 + 1, 1);
      v20 = v32;
      v19 = v33;
      v17 = v34;
      v5 = v44;
    }

    *(v5 + 16) = v22 + 1;
    v23 = v5 + 32 * v22;
    *(v23 + 32) = v17;
    *(v23 + 40) = v18;
    *(v23 + 48) = v19;
    *(v23 + 56) = v20;
    v10 = 1 << *(v13 + 32);
    if (v8 >= v10)
    {
      goto LABEL_24;
    }

    v24 = *(v7 + 8 * v12);
    if ((v24 & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    v6 = v13;
    if (v39 != *(v13 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v8 & 0x3F));
    if (v25)
    {
      v10 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v11 = v38;
    }

    else
    {
      v26 = v12 << 6;
      v27 = v12 + 1;
      v28 = (v35 + 8 * v12);
      while (v27 < (v10 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          sub_1C6B360A8(v8, v39, 0);
          v10 = __clz(__rbit64(v29)) + v26;
          goto LABEL_20;
        }
      }

      sub_1C6B360A8(v8, v39, 0);
LABEL_20:
      v11 = v38;
    }

    v9 = v11 + 1;
    v8 = v10;
    v3 = 0;
    if (v9 == v36)
    {
      return v5;
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
LABEL_27:

  __break(1u);
  return result;
}

uint64_t sub_1C6C6C148(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = a2 - 24;
  v8 = result & 1;
  v9 = a3;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = a3;
LABEL_2:
  v12 = (v7 + 24 * v9);
  while (v5 != v11)
  {
    if (v9 < a3 || v11 >= v5)
    {
      __break(1u);
      return result;
    }

    v13 = *(v12 + 44);
    ++v11;
    v12 += 3;
    if (v13 == v8)
    {
      v14 = v12[1];
      v27 = *v12;
      v28 = v7;
      v15 = *(v12 + 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B397F4(0, *(v10 + 16) + 1, 1);
      }

      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1C6B397F4((v16 > 1), v17 + 1, 1);
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 24 * v17;
      v7 = v28;
      *(v18 + 32) = v27;
      *(v18 + 40) = v14;
      *(v18 + 48) = v15;
      *(v18 + 52) = v13;
      v9 = v11;
      goto LABEL_2;
    }
  }

  v19 = *(v10 + 16);
  if (v19)
  {
    sub_1C6B395B4(0, v19, 0);
    v20 = (v10 + 48);
    do
    {
      v22 = *(v20 - 2);
      v21 = *(v20 - 1);
      v23 = *v20;
      v24 = *(v6 + 16);
      v25 = *(v6 + 24);

      if (v24 >= v25 >> 1)
      {
        sub_1C6B395B4((v25 > 1), v24 + 1, 1);
      }

      *(v6 + 16) = v24 + 1;
      v26 = v6 + 24 * v24;
      *(v26 + 32) = v22;
      *(v26 + 40) = v21;
      *(v26 + 48) = v23;
      v20 += 6;
      --v19;
    }

    while (v19);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void sub_1C6C6C344()
{
  if (!qword_1EDCE2348)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDCE2348);
    }
  }
}

unint64_t sub_1C6C6C3BC()
{
  result = qword_1EC1D84B0;
  if (!qword_1EC1D84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84B0);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Session.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_Session.start(at:)(uint64_t a1)
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
  v15 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 36);
  sub_1C6B823A4(v1 + v15, v14);
  v16 = (*(v7 + 48))(v14, 1, v6);
  sub_1C6C6D070(v14, sub_1C6C380BC);
  if (v16 == 1)
  {
    (*(v2 + 16))(v5, v21, v20);
    sub_1C6D78980();
    sub_1C6C6D070(v1 + v15, sub_1C6C380BC);
    (*(v7 + 32))(v1 + v15, v10, v6);
    return (*(v7 + 56))(v1 + v15, 0, 1, v6);
  }

  else
  {
    sub_1C6C6C6EC();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_1C6C6C6EC()
{
  result = qword_1EC1D84B8;
  if (!qword_1EC1D84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84B8);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Session.end(at:)(uint64_t a1)
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
  v15 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 40);
  sub_1C6B823A4(v1 + v15, v14);
  v16 = (*(v7 + 48))(v14, 1, v6);
  sub_1C6C6D070(v14, sub_1C6C380BC);
  if (v16 == 1)
  {
    (*(v2 + 16))(v5, v21, v20);
    sub_1C6D78980();
    sub_1C6C6D070(v1 + v15, sub_1C6C380BC);
    (*(v7 + 32))(v1 + v15, v10, v6);
    return (*(v7 + 56))(v1 + v15, 0, 1, v6);
  }

  else
  {
    sub_1C6C6C6EC();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

uint64_t Com_Apple_News_Personalization_Session.serialize()()
{
  v29 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  MEMORY[0x1EEE9AC00](v29, v1);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v28[0] = v28 - v6;
  sub_1C6C380BC(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v28 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(v0 + *(v15 + 36), v14);
  v16 = sub_1C6D789A0();
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 1, v16);
  sub_1C6C6D070(v14, sub_1C6C380BC);
  if (v18 == 1)
  {
    sub_1C6C6C6EC();
    v19 = swift_allocError();
    v21 = 2;
LABEL_5:
    *v20 = v21;
    v25 = v19;
    swift_willThrow();
    return v25;
  }

  sub_1C6B823A4(v0 + *(v15 + 40), v10);
  v22 = v17(v10, 1, v16);
  v23 = sub_1C6C6D070(v10, sub_1C6C380BC);
  if (v22 == 1)
  {
    sub_1C6C6C6EC();
    v19 = swift_allocError();
    v21 = 3;
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v23, v24);
  v28[-2] = v0;
  sub_1C6C6D154(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v25 = v28[1];
  sub_1C6D78C30();
  if (!v25)
  {
    Com_Apple_News_PersonalizationStorage_CompressedSession.validate()();
    if (v25)
    {
      sub_1C6C6D070(v3, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
    }

    else
    {
      v27 = v28[0];
      sub_1C6C6D1FC(v3, v28[0], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
      sub_1C6D78BF0();
      sub_1C6C6D070(v27, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
      v25 = *v0;
    }
  }

  return v25;
}

uint64_t sub_1C6C6CDC4()
{
  result = Com_Apple_News_Personalization_Session.serialize()();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C6C6CDF0(uint64_t a1, uint64_t a2)
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

void *sub_1C6C6CF14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C6D154(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session, &protocol conformance descriptor for Com_Apple_News_Personalization_Session);
  sub_1C6D78C30();
  sub_1C6C6D19C(0);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  sub_1C6C6D1FC(v7, v8 + *(*v8 + 104), type metadata accessor for Com_Apple_News_Personalization_Session);

  return v8;
}

uint64_t sub_1C6C6D070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C6C6D0E4()
{
  result = qword_1EC1D84C0;
  if (!qword_1EC1D84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84C0);
  }

  return result;
}

uint64_t sub_1C6C6D154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C6D19C(uint64_t a1)
{
  if (!qword_1EDCE23D0)
  {
    v2 = type metadata accessor for Com_Apple_News_Personalization_Session(255);
    v4 = type metadata accessor for SessionContainer(a1, v2, &protocol witness table for Com_Apple_News_Personalization_Session, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDCE23D0);
    }
  }
}

uint64_t sub_1C6C6D1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C6D288@<X0>(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a1;
  v93 = a3;
  v100 = a2;
  v78 = a4;
  sub_1C6B986D0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v96 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v101 = &v76 - v9;
  v97 = sub_1C6D78760();
  v77 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97 - 8, v10);
  v95 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1C6D783E0();
  v12 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102 - 8, v13);
  v94 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v92 = (&v76 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v82 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v76 - v23;
  v25 = sub_1C6D75F80();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C6D78810();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v99 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v76 - v36);
  v38 = sub_1C6D787B0();
  v87 = *(v38 - 8);
  v88 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v86 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v98 = v41;
  v79 = *(v41 - 8);
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v45 = &v76 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v31;
  v46 = *(v31 + 16);
  v85 = v37;
  v47 = v37;
  v48 = v93;
  v81 = v30;
  v46(v47, v100, v30, v43);
  sub_1C6D75F70();
  v49 = sub_1C6D75F60();
  v83 = v50;
  v84 = v49;
  (*(v26 + 8))(v29, v25);
  v51 = *(v48 + 16);
  v52 = MEMORY[0x1E69E7CC0];
  v100 = v45;
  if (v51)
  {
    v103 = MEMORY[0x1E69E7CC0];
    sub_1C6B394C4(0, v51, 0);
    v52 = v103;
    v53 = v48 + 40;
    v54 = v51;
    do
    {

      sub_1C6D783C0();
      v103 = v52;
      v56 = *(v52 + 16);
      v55 = *(v52 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1C6B394C4((v55 > 1), v56 + 1, 1);
        v52 = v103;
      }

      *(v52 + 16) = v56 + 1;
      (*(v12 + 32))(v52 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v56, v24, v102);
      v53 += 16;
      --v54;
    }

    while (v54);
    v45 = v100;
    v48 = v93;
  }

  sub_1C6B68E34(v52);

  v57 = v86;
  sub_1C6D78790();
  v58 = v91;
  sub_1C6D784E0();
  v59 = v92;
  if (v58)
  {
    return (*(v87 + 8))(v57, v88);
  }

  (*(v87 + 8))(v57, v88);
  v61 = MEMORY[0x1E69E7CC0];
  v62 = v102;
  v84 = 0;
  if (v51)
  {
    v103 = MEMORY[0x1E69E7CC0];
    sub_1C6B394C4(0, v51, 0);
    v61 = v103;
    v63 = v48 + 40;
    do
    {

      sub_1C6D783C0();
      v103 = v61;
      v65 = *(v61 + 16);
      v64 = *(v61 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1C6B394C4((v64 > 1), v65 + 1, 1);
        v61 = v103;
      }

      *(v61 + 16) = v65 + 1;
      v66 = v61 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v65;
      v62 = v102;
      (*(v12 + 32))(v66, v59, v102);
      v63 += 16;
      --v51;
    }

    while (v51);
    v45 = v100;
  }

  result = sub_1C6D78800();
  v67 = v82;
  v93 = *(v61 + 16);
  if (v93)
  {
    v68 = 0;
    v89 = v12;
    v90 = (v77 + 48);
    v87 = v77 + 16;
    v88 = (v77 + 32);
    v85 = (v77 + 8);
    v86 = (v77 + 56);
    v91 = v12 + 16;
    v92 = (v12 + 8);
    while (v68 < *(v61 + 16))
    {
      v69 = *(v12 + 16);
      v69(v67, v61 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v68, v62);
      sub_1C6D78520();
      v70 = v101;
      v71 = v97;
      if ((*v90)(v101, 1, v97) == 1)
      {

        sub_1C6BAAF00(v70);
        type metadata accessor for FeatureSanitizationFactory.Errors(0);
        sub_1C6C6DC74();
        swift_allocError();
        v69(v75, v67, v62);
        swift_willThrow();
        (*v92)(v67, v62);
        (*(v80 + 8))(v99, v81);
        return (*(v79 + 8))(v45, v98);
      }

      ++v68;
      v72 = v95;
      (*v88)(v95, v70, v71);
      v69(v94, v67, v62);
      v73 = v96;
      (*v87)(v96, v72, v71);
      (*v86)(v73, 0, 1, v71);
      v12 = v89;
      sub_1C6D78830();
      v74 = v72;
      v45 = v100;
      (*v85)(v74, v71);
      result = (*v92)(v67, v62);
      if (v93 == v68)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    (*(v80 + 32))(v78, v99, v81);
    return (*(v79 + 8))(v45, v98);
  }

  return result;
}

uint64_t type metadata accessor for FeatureSanitizationFactory.Errors(uint64_t a1)
{
  result = qword_1EC1D84D0;
  if (!qword_1EC1D84D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C6C6DC74()
{
  result = qword_1EC1D84C8;
  if (!qword_1EC1D84C8)
  {
    type metadata accessor for FeatureSanitizationFactory.Errors(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84C8);
  }

  return result;
}

uint64_t sub_1C6C6DCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6C6DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D783E0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1C6C6DDB4(uint64_t a1)
{
  result = sub_1C6D783E0();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1C6C6DE58()
{
  v1 = [v0 dampeningFactorMapping];
  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  v2 = sub_1C6D79490();

  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v38 = v2;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  if (v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v7)
    {

      v33 = [v37 dampeningStrategy];
      [v37 defaultDampeningFactor];
      v34 = v9;
      v35 = v33;

      return MEMORY[0x1EEE5F1F8](v34, v35);
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v12 = __clz(__rbit64(v6)) | (v11 << 6);
    v13 = (*(v38 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v38 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();
    v17 = v16;
    sub_1C6D798A0();
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1C6B5DEA8(v15, v14);
    v23 = v9[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v9[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v21;
        sub_1C6B72BD8();
        v21 = v32;
      }
    }

    else
    {
      sub_1C6B6E868(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1C6B5DEA8(v15, v14);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }
    }

    v6 &= v6 - 1;
    if (v27)
    {
      v10 = v21;

      *(v9[7] + 8 * v10) = v19;

      v8 = v11;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9[(v21 >> 6) + 8] |= 1 << v21;
      v29 = (v9[6] + 16 * v21);
      *v29 = v15;
      v29[1] = v14;
      *(v9[7] + 8 * v21) = v19;

      v30 = v9[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v9[2] = v31;
      v8 = v11;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v8;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v34 = sub_1C6D7A1C0();
  __break(1u);
  return MEMORY[0x1EEE5F1F8](v34, v35);
}

BOOL FCPersonalizationPublisherDampeningConfig.isEqual(_:)(uint64_t a1)
{
  sub_1C6C6E30C(a1, v14);
  if (v15)
  {
    sub_1C6B0C69C(0, &qword_1EDCEA4B0, 0x1E69B5460);
    if (swift_dynamicCast())
    {
      v2 = [v1 dampeningFactorMapping];
      sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
      v3 = sub_1C6D79490();

      v4 = [v13 dampeningFactorMapping];
      v5 = sub_1C6D79490();

      sub_1C6B5D968(v3, v5);
      LOBYTE(v4) = v6;

      if (v4)
      {
        v7 = [v1 dampeningStrategy];
        if (v7 == [v13 dampeningStrategy])
        {
          [v1 defaultDampeningFactor];
          v9 = v8;
          [v13 defaultDampeningFactor];
          v11 = v10;

          return v9 == v11;
        }
      }
    }
  }

  else
  {
    sub_1C6B79FDC(v14);
  }

  return 0;
}

uint64_t sub_1C6C6E30C(uint64_t a1, uint64_t a2)
{
  sub_1C6B7A038();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1C6C6E370(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = FCPersonalizationPublisherDampeningConfig.isEqual(_:)(v8);

  sub_1C6B79FDC(v8);
  return v6;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
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

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(uint64_t a1)
{
  result = qword_1EDCE31F0;
  if (!qword_1EDCE31F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}