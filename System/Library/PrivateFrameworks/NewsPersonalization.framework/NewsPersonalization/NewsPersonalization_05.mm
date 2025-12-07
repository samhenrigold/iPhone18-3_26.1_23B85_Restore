uint64_t sub_1C6B80BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6B820BC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6B80C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6D78A00();
  sub_1C6B820BC(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B80E40(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6B81064(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
      sub_1C6B820BC(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);
      sub_1C6D78CE0();
    }

    type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B80E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B7FB10(a1 + *(v14 + 24), v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B7FB90(v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6B820BC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B7F770(v13);
}

uint64_t sub_1C6B81064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B7FB10(a1 + *(v15 + 28), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6B7FB90(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6B820BC(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B820BC(&qword_1EC1D6FD0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B8133C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C6B81460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B820BC(&qword_1EC1D6FE0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B814DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B81584(uint64_t a1)
{
  v2 = sub_1C6B820BC(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B815F0(uint64_t a1, uint64_t a2)
{
  sub_1C6B820BC(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventArticleReadV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v61 = a2;
  v3 = sub_1C6D78A00();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69AAB70];
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v54 = &v52 - v10;
  sub_1C6B81FE8(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v6);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v52 - v13;
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v52 - v21;
  sub_1C6B81FE8(0, &qword_1EC1D69F0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v52 - v26;
  v56 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  v28 = *(v56 + 24);
  v29 = *(v24 + 56);
  v60 = a1;
  sub_1C6B7FB10(a1 + v28, v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v30 = v61;
  sub_1C6B7FB10(v61 + v28, &v27[v29], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v31 = *(v15 + 48);
  if (v31(v27, 1, v14) == 1)
  {
    if (v31(&v27[v29], 1, v14) == 1)
    {
      sub_1C6B7FB90(v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      goto LABEL_8;
    }

LABEL_6:
    v32 = &qword_1EC1D69F0;
    v33 = &qword_1EDCE52B0;
    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v35 = v27;
LABEL_14:
    sub_1C6B82060(v35, v32, v33, v34);
    goto LABEL_15;
  }

  sub_1C6B7FB10(v27, v22, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (v31(&v27[v29], 1, v14) == 1)
  {
    sub_1C6B7F770(v22);
    goto LABEL_6;
  }

  sub_1C6B483C8(&v27[v29], v18);
  v36 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v22, v18);
  sub_1C6B7F770(v18);
  sub_1C6B7F770(v22);
  sub_1C6B7FB90(v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((v36 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v37 = *(v56 + 28);
  v38 = *(v55 + 48);
  v39 = MEMORY[0x1E69AAB70];
  v40 = v60;
  v41 = v57;
  sub_1C6B7FB10(v60 + v37, v57, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6B7FB10(v30 + v37, v41 + v38, &qword_1EDCDFD00, v39);
  v43 = v58;
  v42 = v59;
  v44 = *(v58 + 48);
  if (v44(v41, 1, v59) != 1)
  {
    v45 = v54;
    sub_1C6B7FB10(v41, v54, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    if (v44(v41 + v38, 1, v42) != 1)
    {
      v48 = v41 + v38;
      v49 = v53;
      (*(v43 + 32))(v53, v48, v42);
      sub_1C6B820BC(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
      v50 = sub_1C6D79560();
      v51 = *(v43 + 8);
      v51(v49, v42);
      v51(v45, v42);
      sub_1C6B7FB90(v41, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      if ((v50 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    (*(v43 + 8))(v45, v42);
    goto LABEL_13;
  }

  if (v44(v41 + v38, 1, v42) != 1)
  {
LABEL_13:
    v32 = &qword_1EC1D6F60;
    v33 = &qword_1EDCDFD00;
    v34 = MEMORY[0x1E69AAB70];
    v35 = v41;
    goto LABEL_14;
  }

  sub_1C6B7FB90(v41, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
  if (sub_1C6B5A9B0(*v40, *v30))
  {
    sub_1C6D78A40();
    sub_1C6B820BC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v46 = sub_1C6D79560();
    return v46 & 1;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6B81EA4(uint64_t a1)
{
  sub_1C6B82104(319, &qword_1EDCDFA70, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6B82104(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6B82104(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6B81FE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6B82104(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6B82060(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B81FE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6B820BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6B82104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B823A4(v1 + *(v7 + 44), v6);
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

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(uint64_t a1)
{
  result = qword_1EDCE7A18;
  if (!qword_1EDCE7A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B823A4(uint64_t a1, uint64_t a2)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B82438(uint64_t a1)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B824C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B823A4(a1 + *(v8 + 44), v7);
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

uint64_t sub_1C6B82630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 44);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.startedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 44);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Com_Apple_News_PersonalizationStorage_CompressedSession.startedAt.modify(void *a1))()
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
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 44);
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

  return sub_1C6B857BC;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSession.hasStartedAt.getter()
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B823A4(v0 + *(v5 + 44), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSession.clearStartedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 44);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B823A4(v1 + *(v7 + 48), v6);
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

uint64_t sub_1C6B82D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B823A4(a1 + *(v8 + 48), v7);
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

uint64_t sub_1C6B82E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 48);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.endedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 48);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Com_Apple_News_PersonalizationStorage_CompressedSession.endedAt.modify(void *a1))()
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
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 48);
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

  return sub_1C6B83270;
}

void sub_1C6B83274(uint64_t **a1, char a2)
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
    sub_1C6B82438(v9 + v3);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6B82438(v9 + v3);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSession.hasEndedAt.getter()
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B823A4(v0 + *(v5 + 48), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSession.clearEndedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 48);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.events.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.articles.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.ids.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.clientVersion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.clientVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void Com_Apple_News_PersonalizationStorage_CompressedSession.messageVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.messageVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 40);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 40);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6D78A30();
  v4 = *(v3 + 44);
  v5 = sub_1C6D789A0();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v6 = a1 + *(v3 + 48);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1C6B83944()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D6FE8);
  __swift_project_value_buffer(v0, qword_1EC1D6FE8);
  sub_1C6B85758(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C6D80990;
  v5 = v24 + v4;
  v6 = v24 + v4 + *(v2 + 56);
  *(v24 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "started_at";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "ended_at";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "events";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "articles";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "ids";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "client_version";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "message_version";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSession._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5950 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6FE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            sub_1C6D78B60();
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
          sub_1C6B85710(qword_1EDCE3BC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
          goto LABEL_22;
        }

        if (result == 7)
        {
LABEL_23:
          sub_1C6D78B80();
          goto LABEL_5;
        }

        if (result == 8)
        {
          sub_1C6B84C68();
          sub_1C6D78B00();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_1C6B84038(a1, v5, a2, a3);
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
          sub_1C6B85710(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
LABEL_22:
          v4 = v11;
          sub_1C6D78BA0();
          goto LABEL_5;
        }

        if (result == 1)
        {
          goto LABEL_23;
        }

        if (result == 2)
        {
          sub_1C6B83F84(a1, v5, a2, a3);
        }
      }

LABEL_5:
      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6B83F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6D789A0();
  sub_1C6B85710(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6B84038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6D789A0();
  sub_1C6B85710(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6B84358(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6B84574(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
        sub_1C6B85710(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
        sub_1C6D78CE0();
      }

      if (*(v3[3] + 16))
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
        sub_1C6B85710(qword_1EDCE3BC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        sub_1C6D78CE0();
      }

      if (*(v3[4] + 16))
      {
        sub_1C6D78CB0();
      }

      v11 = v3[6];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[5] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_1C6D78CC0();
      }

      if (v3[7])
      {
        sub_1C6B84C68();
        sub_1C6D78C70();
      }

      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6B84358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B823A4(a1 + *(v14 + 44), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B82438(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6B85710(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1C6B84574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B823A4(a1 + *(v14 + 48), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B82438(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6B85710(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6B85710(&qword_1EC1D7000, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B8481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  sub_1C6D78A30();
  v5 = *(a1 + 44);
  v6 = sub_1C6D789A0();
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a2 + *(a1 + 48);

  return v9(v7, 1, 1, v6);
}

uint64_t sub_1C6B8491C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6B84990(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6B84A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B85710(&qword_1EC1D7010, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSession);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B84AD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5950 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6FE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B84B7C(uint64_t a1)
{
  v2 = sub_1C6B85710(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSession);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B84BE8(uint64_t a1, uint64_t a2)
{
  sub_1C6B85710(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSession);

  return sub_1C6D78C20();
}

unint64_t sub_1C6B84C68()
{
  result = qword_1EDCE4DD8[0];
  if (!qword_1EDCE4DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCE4DD8);
  }

  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B25Storage_CompressedSessionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v54 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v47[-v14];
  sub_1C6B85620(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v47[-v23];
  if (*a1 != *a2 && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_17;
  }

  v51 = v8;
  v52 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  v53 = a1;
  v25 = *(v52 + 44);
  v26 = *(v17 + 48);
  sub_1C6B823A4(a1 + v25, v24);
  sub_1C6B823A4(a2 + v25, &v24[v26]);
  v27 = *(v5 + 48);
  if (v27(v24, 1, v4) == 1)
  {
    if (v27(&v24[v26], 1, v4) == 1)
    {
      v49 = v5;
      v50 = a2;
      sub_1C6B82438(v24);
      goto LABEL_10;
    }

LABEL_8:
    v28 = v24;
LABEL_16:
    sub_1C6B856B4(v28);
    goto LABEL_17;
  }

  sub_1C6B823A4(v24, v15);
  if (v27(&v24[v26], 1, v4) == 1)
  {
    (*(v5 + 8))(v15, v4);
    goto LABEL_8;
  }

  v50 = a2;
  v29 = *(v5 + 32);
  v30 = v5;
  v31 = v51;
  v29(v51, &v24[v26], v4);
  sub_1C6B85710(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v48 = sub_1C6D79560();
  v49 = v30;
  v32 = *(v30 + 8);
  v32(v31, v4);
  v32(v15, v4);
  sub_1C6B82438(v24);
  if ((v48 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v33 = *(v52 + 48);
  v34 = *(v17 + 48);
  sub_1C6B823A4(v53 + v33, v20);
  v35 = v50 + v33;
  v36 = v50;
  sub_1C6B823A4(v35, &v20[v34]);
  if (v27(v20, 1, v4) != 1)
  {
    v37 = v54;
    sub_1C6B823A4(v20, v54);
    if (v27(&v20[v34], 1, v4) != 1)
    {
      v40 = v49;
      v41 = v51;
      (*(v49 + 32))(v51, &v20[v34], v4);
      sub_1C6B85710(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v42 = sub_1C6D79560();
      v43 = *(v40 + 8);
      v43(v41, v4);
      v43(v37, v4);
      sub_1C6B82438(v20);
      if ((v42 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    (*(v49 + 8))(v37, v4);
    goto LABEL_15;
  }

  if (v27(&v20[v34], 1, v4) != 1)
  {
LABEL_15:
    v28 = v20;
    goto LABEL_16;
  }

  sub_1C6B82438(v20);
LABEL_20:
  v44 = v53;
  if (sub_1C6B5AC80(v53[2], v36[2]) & 1) != 0 && (sub_1C6B5B5C4(v44[3], v36[3]) & 1) != 0 && (sub_1C6B55CF8(v44[4], v36[4]) & 1) != 0 && (v44[5] == v36[5] && v44[6] == v36[6] || (sub_1C6D7A130()))
  {
    v45 = v44[7];
    v46 = v36[7];
    if (*(v36 + 64) == 1)
    {
      if (v46 <= 2)
      {
        if (v46)
        {
          if (v46 == 1)
          {
            if (v45 == 1)
            {
              goto LABEL_33;
            }
          }

          else if (v45 == 2)
          {
            goto LABEL_33;
          }
        }

        else if (!v45)
        {
          goto LABEL_33;
        }
      }

      else if (v46 > 4)
      {
        if (v46 == 5)
        {
          if (v45 == 5)
          {
            goto LABEL_33;
          }
        }

        else if (v45 == 6)
        {
          goto LABEL_33;
        }
      }

      else if (v46 == 3)
      {
        if (v45 == 3)
        {
          goto LABEL_33;
        }
      }

      else if (v45 == 4)
      {
        goto LABEL_33;
      }
    }

    else if (v45 == v46)
    {
LABEL_33:
      sub_1C6D78A40();
      sub_1C6B85710(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v38 = sub_1C6D79560();
      return v38 & 1;
    }
  }

LABEL_17:
  v38 = 0;
  return v38 & 1;
}

void sub_1C6B85454(uint64_t a1)
{
  sub_1C6B85758(319, &qword_1EDCDFA68, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6B85758(319, &qword_1EDCDFA60, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C6B855D0();
      if (v3 <= 0x3F)
      {
        sub_1C6D78A40();
        if (v4 <= 0x3F)
        {
          sub_1C6B85758(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6B855D0()
{
  if (!qword_1EDCE7F40)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7F40);
    }
  }
}

void sub_1C6B85620(uint64_t a1)
{
  if (!qword_1EC1D6C50)
  {
    sub_1C6B85758(255, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6C50);
    }
  }
}

uint64_t sub_1C6B856B4(uint64_t a1)
{
  sub_1C6B85620(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B85710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6B85758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B857C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v33[1] = a2;
  v8 = sub_1C6D77CF0();
  v33[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B85C18(0);
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
      sub_1C6B85CAC(&qword_1EC1D7018, MEMORY[0x1E69B4A20], MEMORY[0x1E69B4A30]);
      v26 = v34;
      sub_1C6D75AF0();
      a5[3] = v8;
      v28 = MEMORY[0x1E69B4A20];
      a5[4] = sub_1C6B85CAC(&qword_1EC1D7020, MEMORY[0x1E69B4A20], &protocol conformance descriptor for ArticleUndislikeEvent.Model);
      a5[5] = sub_1C6B85CAC(&qword_1EC1D7028, v28, &protocol conformance descriptor for ArticleUndislikeEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a5);
      (*(v33[0] + 32))(boxed_opaque_existential_2, v26, v8);
      sub_1C6B1C9F0(v23, v25);
      v30 = *MEMORY[0x1E69E3690];
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

void sub_1C6B85C18(uint64_t a1)
{
  if (!qword_1EDCE6048)
  {
    sub_1C6D77D00();
    sub_1C6B85CAC(&qword_1EDCE5E98, MEMORY[0x1E69B4A38], MEMORY[0x1E69B4A08]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6048);
    }
  }
}

uint64_t sub_1C6B85CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
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

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(uint64_t a1)
{
  result = qword_1EDCE4408;
  if (!qword_1EDCE4408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B85F38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
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

uint64_t sub_1C6B860D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleUnsaved.article.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0) + 20);
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

BOOL Com_Apple_News_Personalization_SessionEventArticleUnsaved.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleUnsaved.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_1C6B867A8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7030);
  __swift_project_value_buffer(v0, qword_1EC1D7030);
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

uint64_t static Com_Apple_News_Personalization_SessionEventArticleUnsaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5958 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6B86A48(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6B86A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6B87498(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B86B54(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B86B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6B87498(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  sub_1C6B87498(&qword_1EC1D7048, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B86E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B87498(&qword_1EC1D7068, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B86EB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5958 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B86F58(uint64_t a1)
{
  v2 = sub_1C6B87498(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B86FC4(uint64_t a1, uint64_t a2)
{
  sub_1C6B87498(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleUnsavedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0) + 20);
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
      sub_1C6B87498(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
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

uint64_t sub_1C6B87498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(uint64_t a1)
{
  result = qword_1EDCE3948;
  if (!qword_1EDCE3948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B876F0()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7070);
  __swift_project_value_buffer(v0, qword_1EC1D7070);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5960 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7070);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  sub_1C6D78A40();
  sub_1C6B87FF8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  sub_1C6B87FF8(&qword_1EC1D7088, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B87B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B87FF8(&qword_1EC1D70A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B87C00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5960 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7070);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B87CA8(uint64_t a1)
{
  v2 = sub_1C6B87FF8(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B87D14(uint64_t a1, uint64_t a2)
{
  sub_1C6B87FF8(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B87EB0(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6B87FF8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B87F7C(uint64_t a1)
{
  result = sub_1C6D78A40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6B87FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C6B88068()
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_1C6B8C820(v7);

  v10 = sub_1C6B8C260(v9);

  if (v10[2])
  {

    v11 = sub_1C6B647AC(v10);
    sub_1C6B688CC();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 1;
    swift_willThrow();
    return v3;
  }

  else
  {
    v34[1] = v1;
    v35 = v0;
    v37 = v6;
    v38 = v3;

    sub_1C6B8CBF0(0, &qword_1EDCDF638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    result = sub_1C6D79EF0();
    v14 = result;
    v15 = 0;
    v16 = v8 + 8;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v8[8];
    v20 = (v17 + 63) >> 6;
    v36 = result + 8;
    v21 = v38;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_12:
        v25 = v22 | (v15 << 6);
        v26 = *(v8[7] + 8 * v25);
        if (!*(v26 + 16))
        {
          break;
        }

        v27 = v8;
        v39 = *(v8[6] + 4 * v25);
        v28 = v37;
        sub_1C6B8CB6C(v26 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v37, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        *(v36 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        *(v14[6] + 4 * v25) = v39;
        result = sub_1C6B8CDC4(v28, v14[7] + *(v21 + 72) * v25, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v29 = v14[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_20;
        }

        v14[2] = v31;
        v8 = v27;
        if (!v19)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v20)
        {

          MEMORY[0x1EEE9AC00](v32, v33);
          v34[-2] = v35;
          v3 = sub_1C6B8C3C0(sub_1C6B8CBD4, &v34[-4], v14);

          return v3;
        }

        v24 = v16[v15];
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v19 = (v24 - 1) & v24;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C6B883C4()
{
  v0 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v65 = (&v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v64 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v63 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v62 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v61 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v60 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = (&v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = (&v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = (&v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v45 = (&v60 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = (&v60 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v60 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CB6C(v66, v53, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6B8CDC4(v53, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v54 = *v45;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
      v57 = v45;
      break;
    case 2u:
      sub_1C6B8CDC4(v53, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v54 = *v41;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead;
      v57 = v41;
      break;
    case 3u:
      sub_1C6B8CDC4(v53, v37, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
      goto LABEL_17;
    case 4u:
      sub_1C6B8CDC4(v53, v33, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v54 = *v33;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
      v57 = v33;
      break;
    case 5u:
      sub_1C6B8CDC4(v53, v25, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v54 = *v25;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
      v57 = v25;
      break;
    case 6u:
      v37 = v60;
      sub_1C6B8CDC4(v53, v60, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
      goto LABEL_17;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0x12u:
    case 0x13u:
      sub_1C6B8AD34(v53, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v54 = 0;
      v55 = 1;
      return v54 | (v55 << 32);
    case 0xCu:
      v37 = v63;
      sub_1C6B8CDC4(v53, v63, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
      goto LABEL_17;
    case 0xDu:
      v37 = v64;
      sub_1C6B8CDC4(v53, v64, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
      goto LABEL_17;
    case 0xEu:
      v37 = v65;
      sub_1C6B8CDC4(v53, v65, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
      goto LABEL_17;
    case 0xFu:
      sub_1C6B8CDC4(v53, v29, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v54 = *v29;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
      v57 = v29;
      break;
    case 0x10u:
      sub_1C6B8CDC4(v53, v21, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v54 = *v21;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
      v57 = v21;
      break;
    case 0x11u:
      v37 = v61;
      sub_1C6B8CDC4(v53, v61, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
      goto LABEL_17;
    case 0x14u:
      v37 = v62;
      sub_1C6B8CDC4(v53, v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended;
LABEL_17:
      v56 = v58;
      v57 = v37;
      break;
    default:
      sub_1C6B8CDC4(v53, v49, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      v54 = *v49;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen;
      v57 = v49;
      break;
  }

  sub_1C6B8AD34(v57, v56);
  v55 = 0;
  return v54 | (v55 << 32);
}

unint64_t sub_1C6B88C1C()
{
  v238 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v238, v0);
  v243 = &v199 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v236, v2);
  v242 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v234, v4);
  v241 = &v199 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v232, v6);
  v240 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v230, v8);
  v239 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v228, v10);
  v237 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v226, v12);
  v235 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v224, v14);
  v233 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v223, v16);
  v231 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v222, v18);
  v229 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v219, v20);
  v227 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v216, v22);
  v225 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CE2C(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v221 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v220 = &v199 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v218 = &v199 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v217 = &v199 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v215 = &v199 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v214 = &v199 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v213 = &v199 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v212 = &v199 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v211 = &v199 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v210 = &v199 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v209 = &v199 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v208 = &v199 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v207 = &v199 - v62;
  v63 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v64 = *(v63 - 8);
  v244 = v63;
  v245 = v64;
  MEMORY[0x1EEE9AC00](v63, v65);
  v206 = &v199 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v205 = &v199 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v204 = &v199 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v203 = &v199 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v202 = &v199 - v78;
  MEMORY[0x1EEE9AC00](v79, v80);
  v201 = &v199 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v200 = &v199 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v199 - v87;
  MEMORY[0x1EEE9AC00](v89, v90);
  v92 = &v199 - v91;
  MEMORY[0x1EEE9AC00](v93, v94);
  v96 = &v199 - v95;
  MEMORY[0x1EEE9AC00](v97, v98);
  v100 = &v199 - v99;
  MEMORY[0x1EEE9AC00](v101, v102);
  v104 = &v199 - v103;
  MEMORY[0x1EEE9AC00](v105, v106);
  v108 = &v199 - v107;
  v109 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v109, v110);
  v112 = &v199 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v113, v114);
  v116 = &v199 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CB6C(v246, v116, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v118 = v225;
      sub_1C6B8CDC4(v116, v225, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v142 = v208;
      sub_1C6B8AC44(v118 + *(v216 + 24), v208, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v143 = v244;
      v144 = *(v245 + 48);
      if (v144(v142, 1, v244) == 1)
      {
        v145 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v145 - 8) + 56))(v104, 1, 1, v145);
        sub_1C6D78A30();
        if (v144(v142, 1, v143) != 1)
        {
          sub_1C6B8ACC4(v142, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v142, v104, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v188 = sub_1C6B8A9AC();
      v117 = v188;
      v100 = (HIDWORD(v188) & 1);
      sub_1C6B8AD34(v104, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v181 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
      goto LABEL_54;
    case 2u:
      v129 = v227;
      sub_1C6B8CDC4(v116, v227, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v130 = v209;
      sub_1C6B8AC44(v129 + *(v219 + 28), v209, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v131 = v244;
      v132 = *(v245 + 48);
      if (v132(v130, 1, v244) == 1)
      {
        v133 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v133 - 8) + 56))(v100, 1, 1, v133);
        sub_1C6D78A30();
        if (v132(v130, 1, v131) != 1)
        {
          sub_1C6B8ACC4(v130, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v130, v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v184 = sub_1C6B8A9AC();
      v117 = v184;
      v185 = HIDWORD(v184) & 1;
      sub_1C6B8AD34(v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6B8AD34(v129, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      LOBYTE(v100) = v185;
      return v117 | (v100 << 32);
    case 3u:
      v123 = v229;
      sub_1C6B8CDC4(v116, v229, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v134 = v210;
      sub_1C6B8AC44(v123 + *(v222 + 28), v210, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v135 = v244;
      v136 = *(v245 + 48);
      if (v136(v134, 1, v244) == 1)
      {
        v137 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v137 - 8) + 56))(v96, 1, 1, v137);
        sub_1C6D78A30();
        if (v136(v134, 1, v135) != 1)
        {
          sub_1C6B8ACC4(v134, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v134, v96, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v186 = sub_1C6B8A9AC();
      v117 = v186;
      v100 = (HIDWORD(v186) & 1);
      sub_1C6B8AD34(v96, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
      goto LABEL_69;
    case 4u:
      v118 = v231;
      sub_1C6B8CDC4(v116, v231, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v119 = v211;
      sub_1C6B8AC44(v118 + *(v223 + 24), v211, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v120 = v244;
      v121 = *(v245 + 48);
      if (v121(v119, 1, v244) == 1)
      {
        v122 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v122 - 8) + 56))(v92, 1, 1, v122);
        sub_1C6D78A30();
        if (v121(v119, 1, v120) != 1)
        {
          sub_1C6B8ACC4(v119, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v119, v92, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v180 = sub_1C6B8A9AC();
      v117 = v180;
      v100 = (HIDWORD(v180) & 1);
      sub_1C6B8AD34(v92, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v181 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
LABEL_54:
      v189 = v181;
      v190 = v118;
      goto LABEL_70;
    case 5u:
      v123 = v235;
      sub_1C6B8CDC4(v116, v235, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v151 = v213;
      sub_1C6B8AC44(v123 + *(v226 + 24), v213, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v152 = v244;
      v153 = *(v245 + 48);
      if (v153(v151, 1, v244) == 1)
      {
        v154 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v155 = v200;
        (*(*(v154 - 8) + 56))(v200, 1, 1, v154);
        sub_1C6D78A30();
        if (v153(v151, 1, v152) != 1)
        {
          sub_1C6B8ACC4(v151, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v155 = v200;
        sub_1C6B8CDC4(v151, v200, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v192 = sub_1C6B8A9AC();
      v117 = v192;
      v100 = (HIDWORD(v192) & 1);
      sub_1C6B8AD34(v155, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
      goto LABEL_69;
    case 6u:
      v123 = v239;
      sub_1C6B8CDC4(v116, v239, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v161 = v215;
      sub_1C6B8AC44(v123 + *(v230 + 24), v215, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v162 = v244;
      v163 = *(v245 + 48);
      if (v163(v161, 1, v244) == 1)
      {
        v164 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v165 = v202;
        (*(*(v164 - 8) + 56))(v202, 1, 1, v164);
        sub_1C6D78A30();
        if (v163(v161, 1, v162) != 1)
        {
          sub_1C6B8ACC4(v161, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v165 = v202;
        sub_1C6B8CDC4(v161, v202, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v194 = sub_1C6B8A9AC();
      v117 = v194;
      v100 = (HIDWORD(v194) & 1);
      sub_1C6B8AD34(v165, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
      goto LABEL_69;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      sub_1C6B8AD34(v116, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v117 = 0;
      LOBYTE(v100) = 1;
      return v117 | (v100 << 32);
    case 0xCu:
      v123 = v241;
      sub_1C6B8CDC4(v116, v241, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v124 = v218;
      sub_1C6B8AC44(v123 + *(v234 + 24), v218, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v125 = v244;
      v126 = *(v245 + 48);
      if (v126(v124, 1, v244) == 1)
      {
        v127 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v128 = v204;
        (*(*(v127 - 8) + 56))(v204, 1, 1, v127);
        sub_1C6D78A30();
        if (v126(v124, 1, v125) != 1)
        {
          sub_1C6B8ACC4(v124, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v128 = v204;
        sub_1C6B8CDC4(v124, v204, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v182 = sub_1C6B8A9AC();
      v117 = v182;
      v100 = (HIDWORD(v182) & 1);
      sub_1C6B8AD34(v128, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
      goto LABEL_69;
    case 0xDu:
      v123 = v242;
      sub_1C6B8CDC4(v116, v242, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v175 = v220;
      sub_1C6B8AC44(v123 + *(v236 + 24), v220, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v176 = v244;
      v177 = *(v245 + 48);
      if (v177(v175, 1, v244) == 1)
      {
        v178 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v179 = v205;
        (*(*(v178 - 8) + 56))(v205, 1, 1, v178);
        sub_1C6D78A30();
        if (v177(v175, 1, v176) != 1)
        {
          sub_1C6B8ACC4(v175, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v179 = v205;
        sub_1C6B8CDC4(v175, v205, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v197 = sub_1C6B8A9AC();
      v117 = v197;
      v100 = (HIDWORD(v197) & 1);
      sub_1C6B8AD34(v179, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
      goto LABEL_69;
    case 0xEu:
      v123 = v243;
      sub_1C6B8CDC4(v116, v243, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v146 = v221;
      sub_1C6B8AC44(v123 + *(v238 + 24), v221, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v147 = v244;
      v148 = *(v245 + 48);
      if (v148(v146, 1, v244) == 1)
      {
        v149 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v150 = v206;
        (*(*(v149 - 8) + 56))(v206, 1, 1, v149);
        sub_1C6D78A30();
        if (v148(v146, 1, v147) != 1)
        {
          sub_1C6B8ACC4(v146, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v150 = v206;
        sub_1C6B8CDC4(v146, v206, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v191 = sub_1C6B8A9AC();
      v117 = v191;
      v100 = (HIDWORD(v191) & 1);
      sub_1C6B8AD34(v150, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
      goto LABEL_69;
    case 0xFu:
      v123 = v233;
      sub_1C6B8CDC4(v116, v233, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v166 = v212;
      sub_1C6B8AC44(v123 + *(v224 + 24), v212, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v167 = v244;
      v168 = *(v245 + 48);
      if (v168(v166, 1, v244) == 1)
      {
        v169 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v169 - 8) + 56))(v88, 1, 1, v169);
        sub_1C6D78A30();
        if (v168(v166, 1, v167) != 1)
        {
          sub_1C6B8ACC4(v166, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v166, v88, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v195 = sub_1C6B8A9AC();
      v117 = v195;
      v100 = (HIDWORD(v195) & 1);
      sub_1C6B8AD34(v88, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
      goto LABEL_69;
    case 0x10u:
      v123 = v237;
      sub_1C6B8CDC4(v116, v237, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v170 = v214;
      sub_1C6B8AC44(v123 + *(v228 + 24), v214, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v171 = v244;
      v172 = *(v245 + 48);
      if (v172(v170, 1, v244) == 1)
      {
        v173 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v174 = v201;
        (*(*(v173 - 8) + 56))(v201, 1, 1, v173);
        sub_1C6D78A30();
        if (v172(v170, 1, v171) != 1)
        {
          sub_1C6B8ACC4(v170, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v174 = v201;
        sub_1C6B8CDC4(v170, v201, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v196 = sub_1C6B8A9AC();
      v117 = v196;
      v100 = (HIDWORD(v196) & 1);
      sub_1C6B8AD34(v174, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
      goto LABEL_69;
    case 0x11u:
      v123 = v240;
      sub_1C6B8CDC4(v116, v240, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v156 = v217;
      sub_1C6B8AC44(v123 + *(v232 + 24), v217, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v157 = v244;
      v158 = *(v245 + 48);
      if (v158(v156, 1, v244) == 1)
      {
        v159 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v160 = v203;
        (*(*(v159 - 8) + 56))(v203, 1, 1, v159);
        sub_1C6D78A30();
        if (v158(v156, 1, v157) != 1)
        {
          sub_1C6B8ACC4(v156, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v160 = v203;
        sub_1C6B8CDC4(v156, v203, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v193 = sub_1C6B8A9AC();
      v117 = v193;
      v100 = (HIDWORD(v193) & 1);
      sub_1C6B8AD34(v160, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
LABEL_69:
      v189 = v183;
      v190 = v123;
LABEL_70:
      sub_1C6B8AD34(v190, v189);
      break;
    default:
      sub_1C6B8CDC4(v116, v112, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      v138 = v207;
      sub_1C6B8AC44(&v112[*(v109 + 24)], v207, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v139 = v244;
      v140 = *(v245 + 48);
      if (v140(v138, 1, v244) == 1)
      {
        v141 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v141 - 8) + 56))(v108, 1, 1, v141);
        sub_1C6D78A30();
        if (v140(v138, 1, v139) != 1)
        {
          sub_1C6B8ACC4(v138, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v138, v108, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v187 = sub_1C6B8A9AC();
      v117 = v187;
      v100 = (HIDWORD(v187) & 1);
      sub_1C6B8AD34(v108, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6B8AD34(v112, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      break;
  }

  return v117 | (v100 << 32);
}

unint64_t sub_1C6B8A9AC()
{
  v1 = v0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B8CE2C(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23[-v8];
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v23[-v17];
  sub_1C6B8AC44(v1, v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C6B8ACC4(v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    v19 = 0;
    v20 = 1;
  }

  else
  {
    sub_1C6B8CDC4(v9, v18, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B8CDC4(v18, v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B8CDC4(v14, v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    v21 = &v5[*(v2 + 32)];
    v19 = *v21;
    v20 = *(v21 + 4);
    sub_1C6B8AD34(v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  return v19 | (v20 << 32);
}

uint64_t sub_1C6B8AC44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B8CE2C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B8ACC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B8CE2C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6B8AD34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1C6B8AD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v151 = a1;
  v155 = a4;
  v152 = a3;
  v142 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v149 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v5);
  v137 = (&v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v136 = (&v134 - v9);
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B8CE2C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v139 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v141 = &v134 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v143 = &v134 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v138 = &v134 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v140 = &v134 - v25;
  v26 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v145 = (&v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B8CE2C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v10);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v146 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v144 = &v134 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v134 - v38;
  v40 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CB6C(a2, v47, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6B8CDC4(v47, v43, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  v148 = v40;
  v48 = *(v40 + 36);
  sub_1C6B8AC44(&v43[v48], v39, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v147 = v27;
  v49 = *(v27 + 48);
  LODWORD(a2) = v49(v39, 1, v26);
  sub_1C6B8ACC4(v39, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (a2 != 1)
  {
    v50 = v43;
    v51 = &v43[v48];
    v52 = v144;
    sub_1C6B8AC44(v51, v144, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    if (v49(v52, 1, v26) == 1)
    {
      v53 = v145;
      *(v145 + 3) = 0;
      *v53 = 0;
      sub_1C6D78A30();
      if (v49(v52, 1, v26) != 1)
      {
        sub_1C6B8ACC4(v52, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      }
    }

    else
    {
      v53 = v145;
      sub_1C6B8CDC4(v52, v145, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    }

    v54 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
    v55 = v151;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v55 + v54);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v57 = sub_1C6D2BEA8(v57);
      *(v55 + v54) = v57;
    }

    v58 = v146;
    sub_1C6B8CDC4(v53, v146, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    (*(v147 + 56))(v58, 0, 1, v26);
    v59 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
    swift_beginAccess();
    sub_1C6B8CD44(v58, &v57[v59], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    swift_endAccess();
    v43 = v50;
  }

  v60 = v150;
  v61 = v152(*(v43 + 2));
  if (v60)
  {
    return sub_1C6B8AD34(v43, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  }

  v64 = v62;
  v65 = v61;
  v66 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v67 = v151;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v67 + v66);
  if ((v68 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v69 = sub_1C6D2BEA8(v69);
    *(v67 + v66) = v69;
  }

  swift_beginAccess();
  *(v69 + 3) = v65;
  *(v69 + 4) = v64;

  v70 = *v43;
  v71 = *(*v43 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  v150 = v66;
  v135 = v43;
  if (v71)
  {
    v154[0] = MEMORY[0x1E69E7CC0];
    result = sub_1C6B39280(0, v71, 0);
    v73 = 0;
    v72 = v154[0];
    while (v73 < *(v70 + 16))
    {
      result = v152(*(v70 + 32 + 4 * v73));
      v154[0] = v72;
      v76 = *(v72 + 16);
      v75 = *(v72 + 24);
      if (v76 >= v75 >> 1)
      {
        v147 = result;
        v78 = v74;
        sub_1C6B39280((v75 > 1), v76 + 1, 1);
        v74 = v78;
        result = v147;
        v72 = v154[0];
      }

      ++v73;
      *(v72 + 16) = v76 + 1;
      v77 = v72 + 16 * v76;
      *(v77 + 32) = result;
      *(v77 + 40) = v74;
      if (v71 == v73)
      {
        v66 = v150;
        v67 = v151;
        v43 = v135;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_20:
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *(v67 + v66);
  if ((v79 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v80 = sub_1C6D2BEA8(v80);
    *(v67 + v66) = v80;
  }

  swift_beginAccess();
  *(v80 + 2) = v72;

  v81 = *(v43 + 3);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *(v67 + v66);
  if ((v82 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v83 = sub_1C6D2BEA8(v83);
    *(v67 + v66) = v83;
  }

  v84 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  *&v83[v84] = v81;
  v85 = *(v148 + 40);
  v86 = v140;
  sub_1C6B8AC44(&v43[v85], v140, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v87 = v149 + 48;
  v88 = *(v149 + 48);
  v89 = v142;
  v90 = v88(v86, 1, v142);
  sub_1C6B8ACC4(v86, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v91 = v90 == 1;
  v92 = v89;
  if (!v91)
  {
    v93 = v138;
    sub_1C6B8AC44(&v43[v85], v138, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v94 = v88(v93, 1, v89);
    v95 = v88;
    v96 = v87;
    if (v94 == 1)
    {
      v97 = v136;
      *v136 = xmmword_1C6D7F510;
      sub_1C6D78A30();
      v98 = v95(v93, 1, v92);
      v99 = v150;
      v100 = v151;
      if (v98 != 1)
      {
        sub_1C6B8ACC4(v93, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }
    }

    else
    {
      v97 = v136;
      sub_1C6B8CDC4(v93, v136, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v99 = v150;
      v100 = v151;
    }

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(v100 + v99);
    v147 = v96;
    v88 = v95;
    if ((v101 & 1) == 0)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v102 = sub_1C6D2BEA8(v102);
      *(v100 + v99) = v102;
    }

    v103 = v97;
    v104 = v143;
    sub_1C6B8CDC4(v103, v143, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v149 + 56))(v104, 0, 1, v92);
    v105 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
    swift_beginAccess();
    sub_1C6B8CD44(v104, &v102[v105], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
    v43 = v135;
  }

  v106 = *(v148 + 44);
  v107 = v141;
  sub_1C6B8AC44(&v43[v106], v141, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v108 = v92;
  v109 = v88(v107, 1, v92);
  sub_1C6B8ACC4(v107, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v109 != 1)
  {
    v110 = v139;
    sub_1C6B8AC44(&v43[v106], v139, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v111 = v108;
    if (v88(v110, 1, v108) == 1)
    {
      v112 = v137;
      *v137 = xmmword_1C6D7F510;
      sub_1C6D78A30();
      v113 = v88(v110, 1, v111);
      v114 = v150;
      v115 = v151;
      if (v113 != 1)
      {
        sub_1C6B8ACC4(v110, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }
    }

    else
    {
      v112 = v137;
      sub_1C6B8CDC4(v110, v137, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v114 = v150;
      v115 = v151;
    }

    v116 = swift_isUniquelyReferenced_nonNull_native();
    v117 = *(v115 + v114);
    if ((v116 & 1) == 0)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v117 = sub_1C6D2BEA8(v117);
      *(v115 + v114) = v117;
    }

    v118 = v143;
    sub_1C6B8CDC4(v112, v143, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v149 + 56))(v118, 0, 1, v111);
    v119 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
    swift_beginAccess();
    sub_1C6B8CD44(v118, &v117[v119], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
    v43 = v135;
  }

  v120 = *(v43 + 2);
  v121 = *(v120 + 16);
  v122 = MEMORY[0x1E69E7CC0];
  if (v121)
  {
    v153 = MEMORY[0x1E69E7CC0];
    result = sub_1C6B39280(0, v121, 0);
    v123 = 0;
    v122 = v153;
    while (v123 < *(v120 + 16))
    {
      result = v152(*(v120 + 32 + 4 * v123));
      v153 = v122;
      v126 = *(v122 + 16);
      v125 = *(v122 + 24);
      if (v126 >= v125 >> 1)
      {
        v149 = result;
        v128 = v124;
        sub_1C6B39280((v125 > 1), v126 + 1, 1);
        v124 = v128;
        result = v149;
        v122 = v153;
      }

      ++v123;
      *(v122 + 16) = v126 + 1;
      v127 = v122 + 16 * v126;
      *(v127 + 32) = result;
      *(v127 + 40) = v124;
      if (v121 == v123)
      {
        v129 = v151;
        v43 = v135;
        goto LABEL_48;
      }
    }

LABEL_53:
    __break(1u);
    return result;
  }

  v129 = v151;
LABEL_48:
  v130 = v150;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1C6B8AD34(v43, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v131 = *(v129 + v130);
  }

  else
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();

    v131 = sub_1C6D2BEA8(v132);
    sub_1C6B8AD34(v43, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);

    *(v129 + v130) = v131;
  }

  v133 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  *&v131[v133] = v122;
}

uint64_t sub_1C6B8BC6C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6B8CCFC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78C30();
}

void sub_1C6B8BD24(void *a1, uint64_t a2, int *a3)
{
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = MEMORY[0x1E69E6720];
  sub_1C6B8CE2C(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v39 - v14;
  sub_1C6B8CE2C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v11);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v39 - v18;
  v20 = *a3;
  v21 = *(a2 + 32);
  if (*(v21 + 16) <= v20)
  {
    v30 = v20;
    sub_1C6B688CC();
    swift_allocError();
    *v31 = v30;
    *(v31 + 8) = 0;
    swift_willThrow();
    return;
  }

  if ((v20 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v8;
    v41 = v3;
    v22 = v21 + 16 * v20;
    v23 = a1;
    v24 = *(v22 + 32);
    v25 = *(v22 + 40);

    *v23 = v24;
    v23[1] = v25;
    v26 = v23;
    v27 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
    sub_1C6B8AC44(a3 + *(v27 + 20), v15, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v28 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    if ((*(*(v28 - 8) + 48))(v15, 1, v28) == 1)
    {
      sub_1C6B8ACC4(v15, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      v29 = 1;
    }

    else
    {
      sub_1C6B8CB6C(a2, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
      v32 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v33 = swift_allocObject();
      sub_1C6B8CDC4(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
      v34 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
      MEMORY[0x1EEE9AC00](v34, v35);
      *(&v39 - 4) = v15;
      *(&v39 - 3) = sub_1C6B8CC70;
      *(&v39 - 2) = v33;
      sub_1C6B8CCFC(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v36 = v41;
      sub_1C6D78C30();
      v41 = v36;
      if (v36)
      {

        sub_1C6B8AD34(v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        return;
      }

      sub_1C6B8AD34(v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      v29 = 0;
      v26 = v23;
    }

    v37 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v37 - 8) + 56))(v19, v29, 1, v37);
    v38 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    sub_1C6B8CD44(v19, v26 + *(v38 + 20), &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  }
}

uint64_t sub_1C6B8C1D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(v2 + 16) <= result)
  {
    v4 = result;
    sub_1C6B688CC();
    v3 = swift_allocError();
    *v5 = v4;
    *(v5 + 8) = 0;
    swift_willThrow();
    return v3;
  }

  if ((result & 0x80000000) == 0)
  {
    v3 = *(v2 + 16 * result + 32);

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C6B8C260(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1C6B8C6B8(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1C6B8C7A8(v13, v7, v3);
  result = MEMORY[0x1CCA57100](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1C6B8C3C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CBF0(0, &qword_1EDCDF640, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  result = sub_1C6D79EF0();
  v12 = result;
  v13 = 0;
  v39 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v32 = result + 64;
  v34 = result;
  if ((v18 & v14) != 0)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v39 + 48) + 4 * v24);
      v26 = v35;
      sub_1C6B8CB6C(*(v39 + 56) + *(v36 + 72) * v24, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v27 = v40;
      v37(v26);
      sub_1C6B8AD34(v26, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      if (v27)
      {
        break;
      }

      v40 = 0;
      *(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v28 = v33;
      v12 = v34;
      *(*(v34 + 48) + 4 * v24) = v25;
      result = sub_1C6B8CDC4(v7, *(v12 + 56) + *(v28 + 72) * v24, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v29 = *(v12 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_17;
      }

      *(v12 + 16) = v31;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v12 = v34;

    return v12;
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        return v12;
      }

      v23 = *(v15 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t *sub_1C6B8C6B8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) != 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1C6D5C360(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1C6D5C360(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C6B8C7A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1C6B8C6B8(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_1C6B8C820(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) - 8;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = (&v37 - v9);
  v10 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v12 = *(v8 + 80);
  v40 = v12;
  v13 = (v12 + 32) & ~v12;
  v14 = *(v8 + 72);
  v15 = a1 + v13;
  v38 = xmmword_1C6D7E630;
  v41 = v5;
  v39 = v13;
  while (1)
  {
    v17 = v42;
    sub_1C6B8CB6C(v15, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v18 = *v17;
    v20 = sub_1C6B64DD0(v18);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      sub_1C6B6F10C(v23, 1);
      v10 = v43;
      v25 = sub_1C6B64DD0(v18);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

      v20 = v25;
    }

    if (v24)
    {
      v27 = v10[7];
      sub_1C6B8CDC4(v42, v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v28 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1C6B65AA4(0, v28[2] + 1, 1, v28);
        *(v27 + 8 * v20) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1C6B65AA4((v30 > 1), v31 + 1, 1, v28);
        *(v27 + 8 * v20) = v28;
      }

      v28[2] = v31 + 1;
      v13 = v39;
      v16 = v28 + v39 + v31 * v14;
      v5 = v41;
      sub_1C6B8CDC4(v41, v16, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    }

    else
    {
      sub_1C6B8CE2C(0, &unk_1EDCDF538, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, MEMORY[0x1E69E6F90]);
      v32 = swift_allocObject();
      *(v32 + 16) = v38;
      sub_1C6B8CDC4(v42, v32 + v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v10[(v20 >> 6) + 8] |= 1 << v20;
      *(v10[6] + 4 * v20) = v18;
      *(v10[7] + 8 * v20) = v32;
      v33 = v10[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v10[2] = v35;
    }

    v15 += v14;
    if (!--v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6B8CB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C6B8CBF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79F30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B8CCFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B8CD44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B8CE2C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B8CDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6B8CE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B8CE90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D773E0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x1E69B4508])
  {
    v11 = MEMORY[0x1E69E3540];
LABEL_23:
    v12 = *v11;
    v13 = sub_1C6D76B90();
    v14 = *(*(v13 - 8) + 104);
    v15 = a1;
    v16 = v12;
    return v14(v15, v16, v13);
  }

  if (v10 == *MEMORY[0x1E69B4528])
  {
    v11 = MEMORY[0x1E69E3558];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B44F8])
  {
    v11 = MEMORY[0x1E69E3538];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B44A0])
  {
    v11 = MEMORY[0x1E69E3500];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B4518])
  {
    v11 = MEMORY[0x1E69E3550];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B4510])
  {
    v11 = MEMORY[0x1E69E3548];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B44B8])
  {
    v11 = MEMORY[0x1E69E3518];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B44D8])
  {
    v11 = MEMORY[0x1E69E3530];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B44C8])
  {
    v11 = MEMORY[0x1E69E3528];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B44B0])
  {
    v11 = MEMORY[0x1E69E3510];
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x1E69B44C0])
  {
    v11 = MEMORY[0x1E69E3520];
    goto LABEL_23;
  }

  v18 = *MEMORY[0x1E69B44A8];
  v19 = v10;
  v13 = sub_1C6D76B90();
  v14 = *(*(v13 - 8) + 104);
  if (v19 != v18)
  {
    v14(a1, *MEMORY[0x1E69E3540], v13);
    return (*(v5 + 8))(v9, v4);
  }

  v16 = *MEMORY[0x1E69E3508];
  v15 = a1;
  return v14(v15, v16, v13);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
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

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(uint64_t a1)
{
  result = qword_1EDCE2F78;
  if (!qword_1EDCE2F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B8D3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
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

uint64_t sub_1C6B8D534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.metadata.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0) + 24);
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

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6B8DC60()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D70B0);
  __swift_project_value_buffer(v0, qword_1EC1D70B0);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5968 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D70B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6B8DF80(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6B8DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6B8EA30(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6B8E0D0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6B8E0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6B8EA30(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  sub_1C6B8EA30(&qword_1EC1D70C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B8E3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B8EA30(&qword_1EC1D70E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B8E42C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5968 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D70B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B8E4D4(uint64_t a1)
{
  v2 = sub_1C6B8EA30(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B8E540(uint64_t a1, uint64_t a2)
{
  sub_1C6B8EA30(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B45Storage_CompressedSessionEventArticleDislikedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
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

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0) + 24);
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
      sub_1C6B8EA30(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
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

uint64_t sub_1C6B8EA30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B8EA78()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B8EAC0(uint64_t a1)
{
  v2 = *v1;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v2);
  return sub_1C6D7A2B0();
}

uint64_t RecipeEventProcessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void RecipeEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v238 = a1;
  v239 = 0;
  v200 = sub_1C6D77A10();
  v195 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200, v3);
  v198 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1C6B9621C(0, &qword_1EDCE6008, sub_1C6B90950, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v218 = &v190 - v8;
  sub_1C6B90950(0);
  v220 = v9;
  v213 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v219 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1C6D77600();
  v197 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v12);
  v203 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &qword_1EDCE60D0, sub_1C6B909E4, v5);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v227 = &v190 - v16;
  sub_1C6B909E4(0);
  v229 = v17;
  v221 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v214 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_1C6D779B0();
  v199 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226, v20);
  v234 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &qword_1EDCE6070, sub_1C6B90AC0, v5);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v225 = &v190 - v24;
  sub_1C6B90AC0(0);
  v231 = v25;
  v230 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v222 = &v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8], v5);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v204 = &v190 - v30;
  v212 = sub_1C6D77620();
  v202 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212, v31);
  v216 = &v190 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &qword_1EDCE60C0, sub_1C6B90B54, v5);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v190 - v35;
  sub_1C6B90B54(0);
  v235 = *(v37 - 8);
  v236 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v232 = &v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1C6D75F50();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207, v40);
  v194 = &v190 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v205 = &v190 - v44;
  v210 = sub_1C6D77380();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v45);
  v196 = &v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v190 - v49;
  v223 = sub_1C6D77C70();
  v208 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223, v51);
  v228 = &v190 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &qword_1EDCE5FF8, sub_1C6B90BE8, v5);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v56 = &v190 - v55;
  v57 = sub_1C6D77290();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v59);
  v211 = &v190 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v217 = &v190 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v224 = &v190 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v190 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v190 - v73;
  sub_1C6B90BE8(0);
  v76 = v75;
  v77 = *(v75 - 8);
  v79 = MEMORY[0x1EEE9AC00](v75, v78);
  v81 = &v190 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v58 + 16);
  v237 = v58 + 16;
  v233 = v82;
  (v82)(v74, v238, v57, v79);
  v83 = v57;
  v84 = swift_dynamicCast();
  v85 = *(v77 + 56);
  if (v84)
  {
    v85(v56, 0, 1, v76);
    (*(v77 + 32))(v81, v56, v76);
    v86 = sub_1C6D77270();
    v87 = v239;
    v88 = sub_1C6D77330();
    v239 = v87;
    if (v87)
    {
      (*(v77 + 8))(v81, v76);

      goto LABEL_43;
    }

    v192 = v36;
    v193 = v83;
    v115 = v89;
    v116 = v88;

    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6B90A78(&qword_1EDCE5EB0, MEMORY[0x1E69B49C8], MEMORY[0x1E69B49D0]);
    v117 = v116;
    v118 = v115;
    v119 = v239;
    sub_1C6D75AF0();
    v239 = v119;
    if (v119)
    {
      (*(v77 + 8))(v81, v76);
      sub_1C6B1C9F0(v117, v118);

      goto LABEL_43;
    }

    v190 = v117;
    v191 = v118;

    v142 = v228;
    sub_1C6D77C60();
    v143 = sub_1C6D77360();
    v145 = v144;
    (*(v209 + 8))(v50, v210);
    if (!v145)
    {
      sub_1C6B95A74();
      v239 = swift_allocError();
      *v163 = 0;
      swift_willThrow();
      sub_1C6B1C9F0(v190, v191);
      (*(v208 + 8))(v142, v223);
      (*(v77 + 8))(v81, v76);
      goto LABEL_43;
    }

    v146 = v205;
    sub_1C6D75F30();
    v147 = v143;
    v148 = v239;
    sub_1C6B90CEC(v147, v145, v146);
    v149 = (v206 + 8);
    v150 = (v208 + 8);
    v151 = (v77 + 8);
    v239 = v148;
    v152 = v223;
    if (v148)
    {
      sub_1C6B1C9F0(v190, v191);

      (*v149)(v146, v207);
      (*v150)(v228, v152);
      (*v151)(v81, v76);
      goto LABEL_43;
    }

    sub_1C6B1C9F0(v190, v191);

    (*v149)(v146, v207);
    (*v150)(v228, v152);
    (*v151)(v81, v76);
    v83 = v193;
    v36 = v192;
  }

  else
  {
    v85(v56, 1, 1, v76);
    sub_1C6B90C7C(v56, &qword_1EDCE5FF8, sub_1C6B90BE8);
  }

  v90 = v238;
  v91 = v233;
  v233(v70, v238, v83);
  v92 = v236;
  v93 = swift_dynamicCast();
  v94 = v235;
  v95 = *(v235 + 56);
  if (v93)
  {
    v95(v36, 0, 1, v92);
    v96 = v232;
    (*(v94 + 32))();
    v97 = v94;
    v98 = sub_1C6D77270();
    v99 = v239;
    v100 = sub_1C6D77330();
    v239 = v99;
    if (v99)
    {
      (*(v97 + 8))(v96, v92);
LABEL_8:

      goto LABEL_43;
    }

    v132 = v100;
    v133 = v101;

    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6B90A78(&qword_1EC1D7108, MEMORY[0x1E69B46B0], MEMORY[0x1E69B46B8]);
    v134 = v212;
    v135 = v239;
    sub_1C6D75AF0();
    v239 = v135;
    if (v135)
    {
      (*(v235 + 8))(v232, v236);
LABEL_41:
      v161 = v132;
      v162 = v133;
      goto LABEL_42;
    }

    v154 = *(v215 + 16);
    swift_beginAccess();
    if (!*(v154 + 64))
    {
      sub_1C6B95A74();
      v239 = swift_allocError();
      *v175 = 1;
      swift_willThrow();
      sub_1C6B1C9F0(v132, v133);
      (*(v202 + 8))(v216, v134);
      (*(v235 + 8))(v232, v236);
      goto LABEL_43;
    }

    v155 = v204;
    sub_1C6D77240();
    swift_beginAccess();
    v156 = v216;
    sub_1C6B9145C(v216, v155);
    swift_endAccess();
    sub_1C6B1C9F0(v132, v133);

    sub_1C6B90C7C(v155, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
    (*(v202 + 8))(v156, v134);
    (*(v235 + 8))(v232, v236);
    v102 = v229;
    v103 = v227;
    v104 = v231;
  }

  else
  {
    v95(v36, 1, 1, v92);
    sub_1C6B90C7C(v36, &qword_1EDCE60C0, sub_1C6B90B54);
    v102 = v229;
    v103 = v227;
    v104 = v231;
  }

  v91(v224, v90, v83);
  v105 = v225;
  v106 = swift_dynamicCast();
  v107 = v230;
  v108 = *(v230 + 56);
  v109 = v226;
  if (v106)
  {
    v108(v105, 0, 1, v104);
    v110 = v222;
    (*(v107 + 32))(v222, v105, v104);
    v111 = sub_1C6D77270();
    v112 = v239;
    v113 = sub_1C6D77330();
    v239 = v112;
    if (v112)
    {
      (*(v107 + 8))(v110, v104);

      goto LABEL_43;
    }

    v132 = v113;
    v133 = v114;

    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6B90A78(&qword_1EC1D7100, MEMORY[0x1E69B4890], MEMORY[0x1E69B4898]);
    v153 = v239;
    sub_1C6D75AF0();
    v239 = v153;
    if (v153)
    {
      (*(v230 + 8))(v222, v231);
      goto LABEL_41;
    }

    v164 = *(v215 + 16);
    swift_beginAccess();
    if (!*(v164 + 64))
    {
      sub_1C6B95A74();
      v239 = swift_allocError();
      *v180 = 1;
      swift_willThrow();
      sub_1C6B1C9F0(v132, v133);
      (*(v199 + 8))(v234, v109);
      (*(v230 + 8))(v222, v231);
      goto LABEL_43;
    }

    v165 = v204;
    v166 = v222;
    sub_1C6D77240();
    swift_beginAccess();
    v167 = v234;
    sub_1C6B91894(v234, v165);
    swift_endAccess();
    sub_1C6B1C9F0(v132, v133);

    sub_1C6B90C7C(v165, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
    (*(v199 + 8))(v167, v109);
    (*(v230 + 8))(v166, v231);
    v120 = v220;
    v121 = v219;
    v102 = v229;
    v103 = v227;
    v91 = v233;
    v233(v217, v90, v83);
  }

  else
  {
    v108(v105, 1, 1, v104);
    sub_1C6B90C7C(v105, &qword_1EDCE6070, sub_1C6B90AC0);
    v120 = v220;
    v121 = v219;
    v91(v217, v90, v83);
  }

  v122 = swift_dynamicCast();
  v123 = v221;
  v124 = *(v221 + 56);
  v125 = v218;
  if (v122)
  {
    v124(v103, 0, 1, v102);
    v126 = v214;
    (*(v123 + 32))(v214, v103, v102);
    v127 = sub_1C6D77270();
    v128 = v102;
    v129 = v239;
    v130 = sub_1C6D77330();
    v239 = v129;
    if (v129)
    {
      (*(v123 + 8))(v126, v128);

      goto LABEL_43;
    }

    v157 = v130;
    v158 = v131;

    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6B90A78(&qword_1EC1D70F8, MEMORY[0x1E69B4668], MEMORY[0x1E69B4670]);
    v159 = v201;
    v160 = v239;
    sub_1C6D75AF0();
    v239 = v160;
    if (v160)
    {
      (*(v221 + 8))(v214, v229);
      v161 = v157;
      v162 = v158;
LABEL_42:
      sub_1C6B1C9F0(v161, v162);

      goto LABEL_43;
    }

    v236 = v158;

    v176 = *(v215 + 16);
    swift_beginAccess();
    v177 = v214;
    if (!*(v176 + 64))
    {
      sub_1C6B95A74();
      v239 = swift_allocError();
      *v188 = 1;
      swift_willThrow();
      sub_1C6B1C9F0(v157, v236);
      (*(v197 + 8))(v203, v159);
      (*(v221 + 8))(v177, v229);
      goto LABEL_43;
    }

    v178 = v204;
    sub_1C6D77240();
    swift_beginAccess();
    v179 = v203;
    sub_1C6B91CCC(v203, v178);
    swift_endAccess();
    sub_1C6B1C9F0(v157, v236);

    sub_1C6B90C7C(v178, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
    (*(v197 + 8))(v179, v201);
    (*(v221 + 8))(v177, v229);
    v120 = v220;
    v121 = v219;
  }

  else
  {
    v124(v103, 1, 1, v102);
    sub_1C6B90C7C(v103, &qword_1EDCE60D0, sub_1C6B909E4);
  }

  v91(v211, v90, v83);
  v136 = swift_dynamicCast();
  v137 = v213;
  v138 = *(v213 + 56);
  if ((v136 & 1) == 0)
  {
    v138(v125, 1, 1, v120);
    sub_1C6B90C7C(v125, &qword_1EDCE6008, sub_1C6B90950);
    return;
  }

  v138(v125, 0, 1, v120);
  (*(v137 + 32))(v121, v125, v120);
  v98 = sub_1C6D77270();
  v139 = v239;
  v140 = sub_1C6D77330();
  v239 = v139;
  if (v139)
  {
    (*(v137 + 8))(v121, v120);
    goto LABEL_8;
  }

  v132 = v140;
  v133 = v141;

  sub_1C6D75B10();
  swift_allocObject();
  sub_1C6D75B00();
  sub_1C6B90A78(&qword_1EDCE5F08, MEMORY[0x1E69B48C0], MEMORY[0x1E69B48C8]);
  v168 = v198;
  v169 = v239;
  sub_1C6D75AF0();
  v239 = v169;
  if (v169)
  {
    (*(v213 + 8))(v219, v220);
    goto LABEL_41;
  }

  v181 = v196;
  sub_1C6D77A00();
  v182 = sub_1C6D77360();
  v183 = v168;
  v185 = v184;
  (*(v209 + 8))(v181, v210);
  if (v185)
  {
    v186 = v194;
    sub_1C6D75F30();
    v187 = v239;
    sub_1C6B92104(v182, v185, v186);
    v239 = v187;
    if (!v187)
    {
      sub_1C6B1C9F0(v132, v133);

      (*(v206 + 8))(v186, v207);
      (*(v195 + 8))(v198, v200);
      (*(v213 + 8))(v219, v220);
      return;
    }

    sub_1C6B1C9F0(v132, v133);

    (*(v206 + 8))(v186, v207);
    (*(v195 + 8))(v198, v200);
  }

  else
  {
    sub_1C6B95A74();
    v239 = swift_allocError();
    *v189 = 0;
    swift_willThrow();
    sub_1C6B1C9F0(v132, v133);
    (*(v195 + 8))(v183, v200);
  }

  (*(v213 + 8))(v219, v220);
LABEL_43:
  if (qword_1EDCE03B8 != -1)
  {
    swift_once();
  }

  v170 = qword_1EDCE03C0;
  v171 = sub_1C6D79AA0();
  sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1C6D7E630;
  v240 = 0;
  v241 = 0xE000000000000000;
  sub_1C6D7A120();
  v173 = v240;
  v174 = v241;
  *(v172 + 56) = MEMORY[0x1E69E6158];
  *(v172 + 64) = sub_1C6B2064C();
  *(v172 + 32) = v173;
  *(v172 + 40) = v174;
  sub_1C6D78D30("An error occurred while processing recipe event: %{public}@", 59, 2, &dword_1C6B09000, v170, v171, v172);
}

void sub_1C6B90950(uint64_t a1)
{
  if (!qword_1EDCE6010)
  {
    sub_1C6D77A20();
    sub_1C6B90A78(&qword_1EDCE5F00, MEMORY[0x1E69B48D0], MEMORY[0x1E69B48B8]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6010);
    }
  }
}

void sub_1C6B909E4(uint64_t a1)
{
  if (!qword_1EDCE60D8)
  {
    sub_1C6D77610();
    sub_1C6B90A78(&qword_1EDCE5F90, MEMORY[0x1E69B4678], MEMORY[0x1E69B4658]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE60D8);
    }
  }
}

uint64_t sub_1C6B90A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6B90AC0(uint64_t a1)
{
  if (!qword_1EDCE6078)
  {
    sub_1C6D779C0();
    sub_1C6B90A78(&qword_1EDCE5F10, MEMORY[0x1E69B48A0], MEMORY[0x1E69B4860]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6078);
    }
  }
}

void sub_1C6B90B54(uint64_t a1)
{
  if (!qword_1EDCE60C8)
  {
    sub_1C6D77630();
    sub_1C6B90A78(&qword_1EDCE5F88, MEMORY[0x1E69B46C0], MEMORY[0x1E69B4680]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE60C8);
    }
  }
}

void sub_1C6B90BE8(uint64_t a1)
{
  if (!qword_1EDCE6000)
  {
    sub_1C6D77C80();
    sub_1C6B90A78(&qword_1EDCE5EA8, MEMORY[0x1E69B49D8], MEMORY[0x1E69B49C0]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6000);
    }
  }
}

uint64_t sub_1C6B90C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B9621C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_1C6B90CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(v3 + 64))
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDCE9830;
    v9 = sub_1C6D79AA0();
    sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C6D7EB10;
    v11 = *(v3 + 64);
    if (v11)
    {
      v12 = *(v11 + 16);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v24 = v13;
    sub_1C6B95D68();
    v19 = sub_1C6D795F0();
    MEMORY[0x1CCA55B00](v19);

    v20 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1C6B2064C();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 96) = v20;
    *(v10 + 104) = v21;
    *(v10 + 64) = v21;
    *(v10 + 72) = a1;
    *(v10 + 80) = a2;

    sub_1C6D78D30("Session already in progress with session id %{public}@ which doesn't match new session identifier %{public}@", 108, 2, &dword_1C6B09000, v8, v9, v10, v12, v24);

    v18 = &qword_1EC1D7128;
    sub_1C6B95DB8(0, &qword_1EC1D7128, _s7FactoryCMa, &off_1EEB692E0);
    sub_1C6B95CB8(&qword_1EC1D7130, &qword_1EC1D7128, _s7FactoryCMa, &off_1EEB692E0);
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDCE9830;
    sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6D7E630;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1C6B2064C();
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v16 = sub_1C6D79AC0();
    sub_1C6D78D30("Creating session with identifier %{public}@", 43, 2, &dword_1C6B09000, v14, v16, v15);

    v17 = off_1EEB692F8;
    _s7FactoryCMa();
    v18 = (v17)(a1, a2);
    swift_beginAccess();
    Com_Apple_News_Personalization_RecipeSession.start(at:)(a3);
    swift_endAccess();
    if (!v4)
    {
      *(v3 + 64) = v18;
    }
  }

  return v18;
}

char *sub_1C6B910A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(v3 + 64))
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDCE9830;
    v9 = sub_1C6D79AA0();
    sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C6D7EB10;
    v11 = *(v3 + 64);
    if (v11)
    {
      v12 = *(v11 + 16);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v24 = v13;
    sub_1C6B95D68();
    v19 = sub_1C6D795F0();
    MEMORY[0x1CCA55B00](v19);

    v20 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1C6B2064C();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 96) = v20;
    *(v10 + 104) = v21;
    *(v10 + 64) = v21;
    *(v10 + 72) = a1;
    *(v10 + 80) = a2;

    sub_1C6D78D30("Session already in progress with session id %{public}@ which doesn't match new session identifier %{public}@", 108, 2, &dword_1C6B09000, v8, v9, v10, v12, v24);

    v18 = &qword_1EC1D7118;
    sub_1C6B95DB8(0, &qword_1EC1D7118, _s7FactoryCMa_0, &off_1EEB69450);
    sub_1C6B95CB8(&qword_1EC1D7120, &qword_1EC1D7118, _s7FactoryCMa_0, &off_1EEB69450);
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDCE9830;
    sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6D7E630;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1C6B2064C();
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v16 = sub_1C6D79AC0();
    sub_1C6D78D30("Creating session with identifier %{public}@", 43, 2, &dword_1C6B09000, v14, v16, v15);

    v17 = off_1EEB69468;
    _s7FactoryCMa_0();
    v18 = (v17)(a1, a2);
    swift_beginAccess();
    Com_Apple_News_Personalization_Session.start(at:)(a3);
    swift_endAccess();
    if (!v4)
    {
      *(v3 + 64) = v18;
    }
  }

  return v18;
}

uint64_t sub_1C6B9145C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  sub_1C6B90A78(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D78C30();
  v30 = a1;
  v31 = v19;
  sub_1C6B90A78(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  v20 = v25;
  sub_1C6D78C30();
  v28 = a1;
  v29 = v15;
  sub_1C6B90A78(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  sub_1C6D78C30();
  v27 = v11;
  sub_1C6B90A78(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);
  sub_1C6D78C30();
  v21 = *(v20 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1C6B65BE0(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C6B65BE0((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  sub_1C6B95F84(v7, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  *(v20 + 16) = v21;
  sub_1C6B95D08(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  sub_1C6B95D08(v15, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6B95D08(v19, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
}

uint64_t sub_1C6B91894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  sub_1C6B90A78(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D78C30();
  v30 = a1;
  v31 = v19;
  sub_1C6B90A78(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  v20 = v25;
  sub_1C6D78C30();
  v28 = a1;
  v29 = v15;
  sub_1C6B90A78(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6D78C30();
  v27 = v11;
  sub_1C6B90A78(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);
  sub_1C6D78C30();
  v21 = *(v20 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1C6B65BE0(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C6B65BE0((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  sub_1C6B95F84(v7, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  *(v20 + 16) = v21;
  sub_1C6B95D08(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6B95D08(v15, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6B95D08(v19, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
}

uint64_t sub_1C6B91CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  sub_1C6B90A78(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D78C30();
  v29 = a1;
  v30 = v19;
  sub_1C6B90A78(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  v20 = v25;
  sub_1C6D78C30();
  v28 = v15;
  sub_1C6B90A78(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  sub_1C6D78C30();
  v27 = v11;
  sub_1C6B90A78(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);
  sub_1C6D78C30();
  v21 = *(v20 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1C6B65BE0(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C6B65BE0((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  sub_1C6B95F84(v7, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  *(v20 + 16) = v21;
  sub_1C6B95D08(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  sub_1C6B95D08(v15, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6B95D08(v19, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
}

uint64_t sub_1C6B92104(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55 = a3;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDCE9830;
  sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v17 = v16;
  v18 = swift_allocObject();
  v54 = xmmword_1C6D7E630;
  *(v18 + 16) = xmmword_1C6D7E630;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1C6B2064C();
  *(v18 + 64) = v53;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  v19 = sub_1C6D79AC0();
  sub_1C6D78D30("Ending session with identifier %{public}@", 41, 2, &dword_1C6B09000, v15, v19, v18);

  swift_beginAccess();
  v20 = v3[8];
  if (v20)
  {
    if (v20[2] == a1 && v20[3] == a2 || (sub_1C6D7A130() & 1) != 0)
    {
      v51 = v17;
      v52 = v15;
      v21 = *(*v20 + 104);
      swift_beginAccess();
      sub_1C6B95F1C(v20 + v21, v14, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
      v22 = *(*(v14 + 2) + 16);

      sub_1C6B95D08(v14, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
      if (v22)
      {
        v50 = v3;
        swift_beginAccess();
        Com_Apple_News_Personalization_RecipeSession.end(at:)(v55);
        swift_endAccess();
        if (v4)
        {
        }

        v29 = swift_allocObject();
        *(v29 + 16) = v54;
        v30 = v53;
        *(v29 + 56) = MEMORY[0x1E69E6158];
        *(v29 + 64) = v30;
        *(v29 + 32) = a1;
        *(v29 + 40) = a2;

        v31 = sub_1C6D79AC0();
        sub_1C6D78D30("Serializing session with identifier %{public}@", 46, 2, &dword_1C6B09000, v52, v31, v29);

        sub_1C6B95F1C(v20 + v21, v10, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
        v32 = Com_Apple_News_Personalization_RecipeSession.serialize()();
        v34 = v33;
        v35 = v32;
        v49 = v32;
        v55 = v36;
        v38 = v37;
        sub_1C6B95D08(v10, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1C6D7EB10;
        v40 = MEMORY[0x1E69E6158];
        *(v39 + 56) = MEMORY[0x1E69E6158];
        *(v39 + 64) = v30;
        *(v39 + 32) = a1;
        *(v39 + 40) = a2;
        *(v39 + 96) = v40;
        *(v39 + 104) = v30;
        *(v39 + 72) = v35;
        *(v39 + 80) = v34;

        v41 = sub_1C6D79AC0();
        sub_1C6D78D30("Persisting data for session %{public}@ with identifier %{public}@", 65, 2, &dword_1C6B09000, v52, v41, v39);

        v43 = v50[6];
        v42 = v50[7];
        __swift_project_boxed_opaque_existential_1(v50 + 3, v43);
        v44 = *(v42 + 8);
        v45 = v49;
        v48 = v34;
        v49 = v38;
        v44(v45, v34, v38, v55, v43, v42);
        v46 = swift_allocObject();
        *(v46 + 16) = v54;
        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = v30;
        *(v46 + 32) = a1;
        *(v46 + 40) = a2;

        v47 = sub_1C6D79AC0();
        sub_1C6D78D30("Completed management of session with identifier %{public}@", 58, 2, &dword_1C6B09000, v52, v47, v46);

        sub_1C6B1C9F0(v49, v55);

        v3 = v50;
      }

      else
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v54;
        v25 = v53;
        *(v24 + 56) = MEMORY[0x1E69E6158];
        *(v24 + 64) = v25;
        *(v24 + 32) = a1;
        *(v24 + 40) = a2;

        v26 = sub_1C6D79AC0();
        sub_1C6D78D30("Skipping persistence of session with identifier %{public}@", 58, 2, &dword_1C6B09000, v52, v26, v24);
      }

      v3[8] = 0;
    }

    sub_1C6B95DB8(0, &qword_1EC1D7128, _s7FactoryCMa, &off_1EEB692E0);
    sub_1C6B95CB8(&qword_1EC1D7130, &qword_1EC1D7128, _s7FactoryCMa, &off_1EEB692E0);
    swift_allocError();
    *v28 = 2;
  }

  else
  {
    sub_1C6B95DB8(0, &qword_1EC1D7128, _s7FactoryCMa, &off_1EEB692E0);
    sub_1C6B95CB8(&qword_1EC1D7130, &qword_1EC1D7128, _s7FactoryCMa, &off_1EEB692E0);
    swift_allocError();
    *v23 = 0;
  }

  return swift_willThrow();
}

uint64_t sub_1C6B92790(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55 = a3;
  v7 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDCE9830;
  sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v17 = v16;
  v18 = swift_allocObject();
  v54 = xmmword_1C6D7E630;
  *(v18 + 16) = xmmword_1C6D7E630;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1C6B2064C();
  *(v18 + 64) = v53;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  v19 = sub_1C6D79AC0();
  sub_1C6D78D30("Ending session with identifier %{public}@", 41, 2, &dword_1C6B09000, v15, v19, v18);

  swift_beginAccess();
  v20 = v3[8];
  if (v20)
  {
    if (v20[2] == a1 && v20[3] == a2 || (sub_1C6D7A130() & 1) != 0)
    {
      v51 = v17;
      v52 = v15;
      v21 = *(*v20 + 104);
      swift_beginAccess();
      sub_1C6B95F1C(v20 + v21, v14, type metadata accessor for Com_Apple_News_Personalization_Session);
      v22 = *(*(v14 + 2) + 16);

      sub_1C6B95D08(v14, type metadata accessor for Com_Apple_News_Personalization_Session);
      if (v22)
      {
        v50 = v3;
        swift_beginAccess();
        Com_Apple_News_Personalization_Session.end(at:)(v55);
        swift_endAccess();
        if (v4)
        {
        }

        v29 = swift_allocObject();
        *(v29 + 16) = v54;
        v30 = v53;
        *(v29 + 56) = MEMORY[0x1E69E6158];
        *(v29 + 64) = v30;
        *(v29 + 32) = a1;
        *(v29 + 40) = a2;

        v31 = sub_1C6D79AC0();
        sub_1C6D78D30("Serializing session with identifier %{public}@", 46, 2, &dword_1C6B09000, v52, v31, v29);

        sub_1C6B95F1C(v20 + v21, v10, type metadata accessor for Com_Apple_News_Personalization_Session);
        v32 = Com_Apple_News_Personalization_Session.serialize()();
        v34 = v33;
        v35 = v32;
        v49 = v32;
        v55 = v36;
        v38 = v37;
        sub_1C6B95D08(v10, type metadata accessor for Com_Apple_News_Personalization_Session);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1C6D7EB10;
        v40 = MEMORY[0x1E69E6158];
        *(v39 + 56) = MEMORY[0x1E69E6158];
        *(v39 + 64) = v30;
        *(v39 + 32) = a1;
        *(v39 + 40) = a2;
        *(v39 + 96) = v40;
        *(v39 + 104) = v30;
        *(v39 + 72) = v35;
        *(v39 + 80) = v34;

        v41 = sub_1C6D79AC0();
        sub_1C6D78D30("Persisting data for session %{public}@ with identifier %{public}@", 65, 2, &dword_1C6B09000, v52, v41, v39);

        v43 = v50[6];
        v42 = v50[7];
        __swift_project_boxed_opaque_existential_1(v50 + 3, v43);
        v44 = *(v42 + 8);
        v45 = v49;
        v48 = v34;
        v49 = v38;
        v44(v45, v34, v38, v55, v43, v42);
        v46 = swift_allocObject();
        *(v46 + 16) = v54;
        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = v30;
        *(v46 + 32) = a1;
        *(v46 + 40) = a2;

        v47 = sub_1C6D79AC0();
        sub_1C6D78D30("Completed management of session with identifier %{public}@", 58, 2, &dword_1C6B09000, v52, v47, v46);

        sub_1C6B1C9F0(v49, v55);

        v3 = v50;
      }

      else
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v54;
        v25 = v53;
        *(v24 + 56) = MEMORY[0x1E69E6158];
        *(v24 + 64) = v25;
        *(v24 + 32) = a1;
        *(v24 + 40) = a2;

        v26 = sub_1C6D79AC0();
        sub_1C6D78D30("Skipping persistence of session with identifier %{public}@", 58, 2, &dword_1C6B09000, v52, v26, v24);
      }

      v3[8] = 0;
    }

    sub_1C6B95DB8(0, &qword_1EC1D7118, _s7FactoryCMa_0, &off_1EEB69450);
    sub_1C6B95CB8(&qword_1EC1D7120, &qword_1EC1D7118, _s7FactoryCMa_0, &off_1EEB69450);
    swift_allocError();
    *v28 = 2;
  }

  else
  {
    sub_1C6B95DB8(0, &qword_1EC1D7118, _s7FactoryCMa_0, &off_1EEB69450);
    sub_1C6B95CB8(&qword_1EC1D7120, &qword_1EC1D7118, _s7FactoryCMa_0, &off_1EEB69450);
    swift_allocError();
    *v23 = 0;
  }

  return swift_willThrow();
}

uint64_t sub_1C6B92F54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D773E0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69B4508])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69B4528])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69B44F8])
  {
    v11 = 2;
LABEL_25:
    *a1 = v11;
    goto LABEL_26;
  }

  if (result == *MEMORY[0x1E69B44A0])
  {
    v11 = 3;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B4518])
  {
    v11 = 4;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B4510])
  {
    v11 = 5;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44B8])
  {
    v11 = 6;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44D8])
  {
    v11 = 7;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44C8])
  {
    v11 = 8;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44B0])
  {
    v11 = 9;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44C0])
  {
    v11 = 10;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44A8])
  {
    v11 = 11;
    goto LABEL_25;
  }

  if (result != *MEMORY[0x1E69B44E8] && result != *MEMORY[0x1E69B44D0] && result != *MEMORY[0x1E69B44E0] && result != *MEMORY[0x1E69B4530] && result != *MEMORY[0x1E69B44F0] && result != *MEMORY[0x1E69B4520])
  {
    if (result != *MEMORY[0x1E69B4500])
    {
      *a1 = 0;
      *(a1 + 8) = 1;
      return (*(v5 + 8))(v9, v4);
    }

    v11 = 12;
    goto LABEL_25;
  }

LABEL_2:
  *a1 = 0;
LABEL_26:
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1C6B9325C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D77E80();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69B4BD0])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69B4BA0])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69B4BD8])
  {
    v11 = 2;
LABEL_45:
    *a1 = v11;
    goto LABEL_46;
  }

  if (result == *MEMORY[0x1E69B4B60])
  {
    v11 = 3;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B68])
  {
    v11 = 4;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B70])
  {
    v11 = 5;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BB8])
  {
    v11 = 6;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B98])
  {
    v11 = 7;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B30])
  {
    v11 = 8;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B80])
  {
    v11 = 9;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B88])
  {
    v11 = 10;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B40])
  {
    v11 = 11;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B48])
  {
    v11 = 12;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B90])
  {
    v11 = 13;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BC8])
  {
    v11 = 14;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BA8])
  {
    v11 = 15;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B28])
  {
    v11 = 16;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B58])
  {
    v11 = 17;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BB0])
  {
    v11 = 18;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B38])
  {
    v11 = 19;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BE0])
  {
    v11 = 20;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B20])
  {
    v11 = 21;
    goto LABEL_45;
  }

  if (result != *MEMORY[0x1E69B4B78])
  {
    if (result == *MEMORY[0x1E69B4BE8])
    {
      v11 = 22;
    }

    else if (result == *MEMORY[0x1E69B4BC0])
    {
      v11 = 23;
    }

    else
    {
      if (result != *MEMORY[0x1E69B4B50])
      {
        *a1 = 0;
        *(a1 + 8) = 1;
        return (*(v5 + 8))(v9, v4);
      }

      v11 = 24;
    }

    goto LABEL_45;
  }

LABEL_2:
  *a1 = 0;
LABEL_46:
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1C6B93650@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D77F00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69B4E98])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69B4E80])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69B4ED8])
  {
    v11 = 2;
LABEL_49:
    *a1 = v11;
    goto LABEL_50;
  }

  if (result == *MEMORY[0x1E69B4C20])
  {
    v11 = 3;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4D18])
  {
    v11 = 4;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4EC8])
  {
    v11 = 5;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C78])
  {
    v11 = 6;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4CD8])
  {
    v11 = 7;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E70])
  {
    v11 = 8;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E60])
  {
    v11 = 9;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4D70])
  {
    v11 = 10;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E30])
  {
    v11 = 11;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E00])
  {
    v11 = 12;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4EC0])
  {
    v11 = 13;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4EE8])
  {
    v11 = 14;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C28])
  {
    v11 = 15;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4D20])
  {
    v11 = 16;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C58])
  {
    v11 = 17;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E10])
  {
    v11 = 18;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C98])
  {
    v11 = 19;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4DA8])
  {
    v11 = 20;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E78])
  {
    v11 = 21;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C50])
  {
    v11 = 22;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4EB0])
  {
    v11 = 23;
    goto LABEL_49;
  }

  if (result != *MEMORY[0x1E69B4D00] && result != *MEMORY[0x1E69B4C40])
  {
    if (result == *MEMORY[0x1E69B4E90])
    {
      v11 = 24;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E68])
    {
      v11 = 25;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DB0])
    {
      v11 = 26;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C90])
    {
      v11 = 27;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D48])
    {
      v11 = 28;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E08])
    {
      v11 = 29;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C68])
    {
      v11 = 30;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C60])
    {
      v11 = 31;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E18])
    {
      v11 = 32;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C38])
    {
      v11 = 33;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4ED0])
    {
      v11 = 34;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CF0])
    {
      v11 = 35;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E58])
    {
      v11 = 36;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D78])
    {
      v11 = 37;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CF8])
    {
      v11 = 38;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DC0])
    {
      v11 = 39;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E20])
    {
      v11 = 40;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E88])
    {
      v11 = 41;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C30])
    {
      v11 = 42;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4EB8])
    {
      v11 = 43;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4EA0])
    {
      v11 = 44;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CB8])
    {
      v11 = 45;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DD8])
    {
      v11 = 46;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C88])
    {
      v11 = 47;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D08])
    {
      v11 = 48;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D40])
    {
      v11 = 49;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E50])
    {
      v11 = 50;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CE0])
    {
      v11 = 51;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CC0])
    {
      v11 = 52;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D68])
    {
      v11 = 53;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D98])
    {
      v11 = 54;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D28])
    {
      v11 = 55;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DE8])
    {
      v11 = 56;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D90])
    {
      v11 = 57;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D88])
    {
      v11 = 58;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DD0])
    {
      v11 = 59;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E48])
    {
      v11 = 60;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E28])
    {
      v11 = 61;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4EE0])
    {
      v11 = 62;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DE0])
    {
      v11 = 63;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C48])
    {
      v11 = 64;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D10])
    {
      v11 = 65;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E38])
    {
      v11 = 66;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D50])
    {
      v11 = 67;
      goto LABEL_49;
    }

    if (result != *MEMORY[0x1E69B4DF8] && result != *MEMORY[0x1E69B4DB8])
    {
      if (result == *MEMORY[0x1E69B4D30])
      {
        v11 = 68;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4DF0])
      {
        v11 = 69;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4CC8])
      {
        v11 = 70;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4C70])
      {
        v11 = 71;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4C80])
      {
        v11 = 72;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4D60])
      {
        v11 = 73;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4DC8])
      {
        v11 = 74;
        goto LABEL_49;
      }

      if (result != *MEMORY[0x1E69B4EA8] && result != *MEMORY[0x1E69B4D80] && result != *MEMORY[0x1E69B4CB0] && result != *MEMORY[0x1E69B4CD0])
      {
        if (result == *MEMORY[0x1E69B4CE8])
        {
          v11 = 75;
        }

        else if (result == *MEMORY[0x1E69B4CA8])
        {
          v11 = 76;
        }

        else if (result == *MEMORY[0x1E69B4D38])
        {
          v11 = 77;
        }

        else if (result == *MEMORY[0x1E69B4E40])
        {
          v11 = 78;
        }

        else if (result == *MEMORY[0x1E69B4DA0])
        {
          v11 = 79;
        }

        else if (result == *MEMORY[0x1E69B4D58])
        {
          v11 = 80;
        }

        else
        {
          if (result != *MEMORY[0x1E69B4CA0])
          {
            *a1 = 0;
            *(a1 + 8) = 1;
            return (*(v5 + 8))(v9, v4);
          }

          v11 = 81;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_2:
  *a1 = 0;
LABEL_50:
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1C6B9410C(void *a1, void (*a2)(double), uint64_t a3, void (*a4)(double), void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v94 = a6;
  v95 = a3;
  v91 = a5;
  v97 = a4;
  v100 = a1;
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B9621C(0, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v96 = &v83 - v10;
  sub_1C6B9621C(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v93 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v92 = &v83 - v16;
  v17 = sub_1C6D77F00();
  v89 = *(v17 - 8);
  v90 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v87 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v88 = &v83 - v22;
  sub_1C6B9621C(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v7);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v83 - v25;
  v27 = sub_1C6D77E80();
  v85 = *(v27 - 8);
  v86 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v83 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v84 = &v83 - v32;
  v33 = sub_1C6D773E0();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C6D77EC0();
  v39 = *(v38 - 8);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97(v41);
  sub_1C6D77EB0();
  (*(v39 + 8))(v43, v38);
  sub_1C6B92F54(&v98);
  v44 = v100;
  v45 = (*(v34 + 8))(v37, v33);
  v46 = v99;
  v44[6] = v98;
  *(v44 + 56) = v46;
  v97 = a2;
  v91(v45);
  v47 = sub_1C6D77E60();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v26, 1, v47) == 1)
  {
    v49 = sub_1C6B90C7C(v26, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  }

  else
  {
    v50 = v83;
    sub_1C6D77E50();
    (*(v48 + 8))(v26, v47);
    v51 = v84;
    v52 = v85;
    v53 = v86;
    (*(v85 + 32))(v84, v50, v86);
    sub_1C6B9325C(&v98);
    v49 = (*(v52 + 8))(v51, v53);
    v54 = v99;
    v55 = v100;
    v100[4] = v98;
    *(v55 + 40) = v54;
  }

  v56 = v92;
  v57 = v94;
  v94(v49);
  v58 = sub_1C6D77EF0();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v61 = v60(v56, 1, v58);
  v62 = v93;
  if (v61 == 1)
  {
    v63 = sub_1C6B90C7C(v56, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  }

  else
  {
    v64 = v87;
    sub_1C6D77EE0();
    (*(v59 + 8))(v56, v58);
    v65 = v88;
    v66 = v89;
    v67 = v64;
    v68 = v90;
    (*(v89 + 32))(v88, v67, v90);
    sub_1C6B93650(&v98);
    v63 = (*(v66 + 8))(v65, v68);
    v69 = v99;
    v70 = v100;
    v100[2] = v98;
    *(v70 + 24) = v69;
  }

  v57(v63);
  if (v60(v62, 1, v58) == 1)
  {
    sub_1C6B90C7C(v62, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    v71 = v96;
  }

  else
  {
    v72 = sub_1C6D77ED0();
    v74 = v73;
    (*(v59 + 8))(v62, v58);
    v71 = v96;
    if (v74)
    {
      v75 = (v100 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36));

      *v75 = v72;
      v75[1] = v74;
    }
  }

  sub_1C6B95FEC(v95, v71);
  v76 = sub_1C6D77C50();
  v77 = *(v76 - 8);
  if ((*(v77 + 48))(v71, 1, v76) == 1)
  {
    return sub_1C6B90C7C(v71, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
  }

  v79 = sub_1C6D77C40();
  v81 = v80;
  result = (*(v77 + 8))(v71, v76);
  if (v81 >> 60 != 15)
  {
    v82 = v100;
    result = sub_1C6B1C9F0(*v100, v100[1]);
    *v82 = v79;
    v82[1] = v81;
  }

  return result;
}

uint64_t sub_1C6B9492C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double), uint64_t (*a5)(void))
{
  v26 = a4;
  v27 = a5;
  v28 = a3;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D773B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D78A00();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26(v18);
  sub_1C6D773A0();
  (*(v11 + 8))(v14, v10);
  sub_1C6D789D0();
  v21 = v27(0);
  v22 = *(v21 + 24);
  sub_1C6B90C7C(a1 + v22, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v16 + 32))(a1 + v22, v20, v15);
  (*(v16 + 56))(a1 + v22, 0, 1, v15);
  sub_1C6B95F1C(v28, v9, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v23 = *(v21 + 20);
  sub_1C6B90C7C(a1 + v23, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6B95F84(v9, a1 + v23, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return (*(v29 + 56))(a1 + v23, 0, 1, v30);
}

uint64_t sub_1C6B94C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v93 = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1C6B9621C(0, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v90 = &v78 - v7;
  sub_1C6B9621C(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18], v4);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v87 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v86 = &v78 - v13;
  v14 = sub_1C6D77F00();
  v84 = *(v14 - 8);
  v85 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v82 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v83 = &v78 - v19;
  sub_1C6B9621C(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v4);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v78 - v22;
  v24 = sub_1C6D77E80();
  v80 = *(v24 - 8);
  v81 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v78 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v79 = &v78 - v29;
  sub_1C6B9621C(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00], v4);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v78 - v32;
  v34 = sub_1C6D773E0();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v78 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v78 - v41;
  v88 = a2;
  sub_1C6D775E0();
  v43 = sub_1C6D77EC0();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v33, 1, v43) == 1)
  {
    sub_1C6B90C7C(v33, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    v45 = v93;
  }

  else
  {
    sub_1C6D77EB0();
    (*(v44 + 8))(v33, v43);
    (*(v35 + 32))(v42, v38, v34);
    sub_1C6B92F54(&v91);
    (*(v35 + 8))(v42, v34);
    v46 = v92;
    v45 = v93;
    *(v93 + 48) = v91;
    *(v45 + 56) = v46;
  }

  sub_1C6D775D0();
  v47 = sub_1C6D77E60();
  v48 = *(v47 - 8);
  v49 = (*(v48 + 48))(v23, 1, v47);
  v50 = v86;
  v51 = v87;
  if (v49 == 1)
  {
    sub_1C6B90C7C(v23, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  }

  else
  {
    v52 = v78;
    sub_1C6D77E50();
    (*(v48 + 8))(v23, v47);
    v53 = v79;
    v54 = v80;
    v55 = v81;
    (*(v80 + 32))(v79, v52, v81);
    sub_1C6B9325C(&v91);
    (*(v54 + 8))(v53, v55);
    v56 = v92;
    *(v45 + 32) = v91;
    *(v45 + 40) = v56;
  }

  sub_1C6D775F0();
  v57 = sub_1C6D77EF0();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  if (v59(v50, 1, v57) == 1)
  {
    sub_1C6B90C7C(v50, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  }

  else
  {
    v60 = v82;
    sub_1C6D77EE0();
    (*(v58 + 8))(v50, v57);
    v61 = v83;
    v62 = v84;
    v63 = v60;
    v64 = v85;
    (*(v84 + 32))(v83, v63, v85);
    sub_1C6B93650(&v91);
    v65 = v64;
    v45 = v93;
    (*(v62 + 8))(v61, v65);
    v66 = v92;
    *(v45 + 16) = v91;
    *(v45 + 24) = v66;
  }

  sub_1C6D775F0();
  if (v59(v51, 1, v57) == 1)
  {
    sub_1C6B90C7C(v51, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    v67 = v90;
  }

  else
  {
    v68 = sub_1C6D77ED0();
    v70 = v69;
    (*(v58 + 8))(v51, v57);
    v67 = v90;
    if (v70)
    {
      v71 = (v45 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0) + 36));

      *v71 = v68;
      v71[1] = v70;
    }
  }

  sub_1C6B95FEC(v89, v67);
  v72 = sub_1C6D77C50();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v67, 1, v72) == 1)
  {
    return sub_1C6B90C7C(v67, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
  }

  v75 = sub_1C6D77C40();
  v77 = v76;
  result = (*(v73 + 8))(v67, v72);
  if (v77 >> 60 != 15)
  {
    result = sub_1C6B1C9F0(*v45, *(v45 + 8));
    *v45 = v75;
    *(v45 + 8) = v77;
  }

  return result;
}

uint64_t sub_1C6B954F0(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(double))
{
  v23 = a3;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D773D0();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v14);
  v17 = sub_1C6D773C0();
  v19 = v18;
  (*(v12 + 8))(v16, v11);

  *a1 = v17;
  a1[1] = v19;
  sub_1C6B95F1C(v23, v10, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  v20 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0) + 24);
  sub_1C6B90C7C(a1 + v20, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6B95F84(v10, a1 + v20, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  return (*(v7 + 56))(a1 + v20, 0, 1, v6);
}

uint64_t sub_1C6B9570C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B95F1C(a2, v8, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  sub_1C6B90C7C(a1 + v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6B95F84(v8, a1 + v9, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return (*(v5 + 56))(a1 + v9, 0, 1, v4);
}

uint64_t sub_1C6B95854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = sub_1C6D75F50();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F40();
  sub_1C6D78980();
  v14 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6B90C7C(a1 + v14, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v10 + 32))(a1 + v14, v13, v9);
  (*(v10 + 56))(a1 + v14, 0, 1, v9);
  sub_1C6B90C7C(a1, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6B95F1C(a2, a1, a3);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

unint64_t sub_1C6B95A74()
{
  result = qword_1EC1D70F0;
  if (!qword_1EC1D70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D70F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecipeEventProcessor.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecipeEventProcessor.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6B95C64()
{
  result = qword_1EC1D7110;
  if (!qword_1EC1D7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7110);
  }

  return result;
}

uint64_t sub_1C6B95CB8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C6B95DB8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B95D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6B95D68()
{
  if (!qword_1EDCE6698)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6698);
    }
  }
}

void sub_1C6B95DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for SessionManager.Errors(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C6B95F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B95F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B95FEC(uint64_t a1, uint64_t a2)
{
  sub_1C6B9621C(0, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C6B9621C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Array.truncate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1C6D79810() <= a1)
  {
  }

  else
  {
    sub_1C6D79820();
    swift_getWitnessTable();
    sub_1C6D796E0();
    swift_getWitnessTable();
    sub_1C6D79A20();
    sub_1C6D79C60();
    swift_getWitnessTable();
    return sub_1C6D79830();
  }

  return a2;
}

uint64_t Array.conform(repeating:inLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Array.truncate(_:)(a2, a3, a4);
  result = sub_1C6D79810();
  if (result == a2)
  {
    return v7;
  }

  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    sub_1C6B96440(a1, a2 - result, a4);
    v9 = sub_1C6D797D0();

    return v9;
  }

  return result;
}

uint64_t sub_1C6B96440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D797E0();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1C6D79820();
    return v8;
  }

  return result;
}

double sub_1C6B9656C(uint64_t a1)
{
  v2 = sub_1C6D795E0();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v12[1] = a1;
    sub_1C6B18CB8(0, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1C6B98654();
    sub_1C6D79530();
    sub_1C6D795D0();
    v8 = sub_1C6D795B0();
    v10 = v9;

    (*(v3 + 8))(v7, v2);
    if (v10 >> 60 != 15)
    {
      sub_1C6B18CB8(0, &unk_1EDCE7D30, MEMORY[0x1E6969080], MEMORY[0x1E69E6F90]);
      v11 = swift_allocObject();
      *&result = 1;
      *(v11 + 16) = xmmword_1C6D7E630;
      *(v11 + 32) = v8;
      *(v11 + 40) = v10;
    }
  }

  return result;
}

void sub_1C6B96720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
        v29 = sub_1C6D79500();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1C6B995C4(&qword_1EDCE5D20, MEMORY[0x1E6996088], MEMORY[0x1E6996098]);
          v34 = sub_1C6D79560();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C6B96AD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v6 = a2;
  v65 = a4;
  sub_1C6B986D0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1C6D783E0();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C6D78810();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B99064(a1, v6);
  if (v4)
  {
    return;
  }

  v66 = v20;
  v67 = v16;
  v21 = 0;
  v68[0] = MEMORY[0x1E69E7CC8];
  v22 = *(a1 + 16);
  v23 = v15;
  while (v22 != v21)
  {
    v24 = v21 + 1;
    sub_1C6B97138(v68, a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v21, v5);
    v21 = v24;
  }

  v63 = v11;
  v61 = 0;
  v25 = v68[0];
  v26 = v66;
  sub_1C6D78800();
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  v31 = (v28 + 63) >> 6;
  v60 = *MEMORY[0x1E6996120];
  v59 = *MEMORY[0x1E6996130];
  v58 = *MEMORY[0x1E6996148];
  v57 = *MEMORY[0x1E6996140];
  v56 = *MEMORY[0x1E6996138];
  v55 = *MEMORY[0x1E6996128];
  v64 = v25;

  v32 = 0;
  v62 = v23;
  while (1)
  {
    v37 = v67;
    if (!v30)
    {
      break;
    }

LABEL_18:
    v39 = __clz(__rbit64(v30)) | (v32 << 6);
    v40 = *(*(v64 + 48) + 16 * v39 + 8);
    v41 = *(*(v64 + 56) + 8 * v39);
    swift_bridgeObjectRetain_n();

    sub_1C6D783C0();
    v42 = *(v41 + 16);
    v68[5] = v40;
    if (v42 > 2)
    {
      if (v42 == 3)
      {
        swift_beginAccess();
        v33 = *(v41 + 40);
        v54 = v33;
        v34 = MEMORY[0x1E69E7CC0];
        if (v33)
        {
          v34 = v33;
        }

        v35 = v63;
        *v63 = v34;
        v36 = sub_1C6D78760();
        (*(*(v36 - 8) + 104))(v35, v58, v36);
        goto LABEL_11;
      }

      if (v42 == 4)
      {
        swift_beginAccess();
        v45 = *(v41 + 48);
        v54 = v45;
        v46 = MEMORY[0x1E69E7CC0];
        if (v45)
        {
          v46 = v45;
        }

        v35 = v63;
        *v63 = v46;
        v36 = sub_1C6D78760();
        (*(*(v36 - 8) + 104))(v35, v59, v36);
        goto LABEL_11;
      }

      v49 = *(v41 + 56);
      if (v49)
      {
        v50 = v49;
        v51 = sub_1C6D75E60();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0xC000000000000000;
      }

      v35 = v63;
      *v63 = v51;
      v35[1] = v53;
      v36 = sub_1C6D78760();
      (*(*(v36 - 8) + 104))(v35, v60, v36);
    }

    else
    {
      if (v42)
      {
        if (v42 == 1)
        {
          swift_beginAccess();
          v43 = *(v41 + 24);
          v54 = v43;
          v44 = MEMORY[0x1E69E7CC0];
          if (v43)
          {
            v44 = v43;
          }

          v35 = v63;
          *v63 = v44;
          v36 = sub_1C6D78760();
          (*(*(v36 - 8) + 104))(v35, v56, v36);
        }

        else
        {
          swift_beginAccess();
          v47 = *(v41 + 32);
          v54 = v47;
          v48 = MEMORY[0x1E69E7CC0];
          if (v47)
          {
            v48 = v47;
          }

          v35 = v63;
          *v63 = v48;
          v36 = sub_1C6D78760();
          (*(*(v36 - 8) + 104))(v35, v57, v36);
        }

LABEL_11:

        goto LABEL_12;
      }

      v36 = sub_1C6D78760();
      v35 = v63;
      (*(*(v36 - 8) + 104))(v63, v55, v36);
    }

LABEL_12:
    v30 &= v30 - 1;
    sub_1C6D78760();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    v26 = v66;
    sub_1C6D78830();
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v31)
    {

      (*(v17 + 32))(v65, v26, v37);

      return;
    }

    v30 = *(v27 + 8 * v38);
    ++v32;
    if (v30)
    {
      v32 = v38;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1C6B97138(void *a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1C6B986D0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1C6D78760();
  v10 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v11);
  v135 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v128 - v15;
  v17 = sub_1C6D783E0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a2;
  v22 = sub_1C6D787E0();
  v146 = *(v22 + 16);
  if (!v146)
  {
  }

  v23 = a3;
  v24 = 0;
  v144 = (v10 + 48);
  v145 = v18 + 16;
  v142 = v17;
  v143 = (v10 + 32);
  v134 = (v10 + 16);
  v140 = (v10 + 8);
  v141 = (v18 + 8);
  v132 = v23;
  v136 = v16;
  v137 = v18;
  v25 = v147;
  v138 = v9;
  v139 = v22;
  while (v24 < *(v22 + 16))
  {
    (*(v18 + 16))(v21, v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v24, v17);
    sub_1C6D78820();
    if ((*v144)(v9, 1, v25) == 1)
    {
      goto LABEL_87;
    }

    (*v143)(v16, v9, v25);
    v26 = sub_1C6D783D0();
    v28 = a1;
    v29 = *a1;
    if (!*(v29 + 16))
    {

LABEL_14:
      v47 = sub_1C6D783D0();
      v48 = v25;
      v50 = v49;
      v51 = v135;
      (*v134)(v135, v16, v48);
      type metadata accessor for MutableFeature();
      swift_allocObject();
      v52 = sub_1C6B97DF0(v51);
      if (!v52)
      {
        sub_1C6B5DEA8(v47, v50);
        v64 = v63;

        if (v64)
        {
          a1 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = *v28;
          v149 = *v28;
          v16 = v136;
          v25 = v147;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1C6B736C8();
            v66 = v149;
          }

          sub_1C6B16C9C();
          *v28 = v66;
          v17 = v142;
          goto LABEL_67;
        }

        v16 = v136;
        v17 = v142;
        a1 = v28;
        goto LABEL_66;
      }

      v53 = v52;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v149 = *v28;
      v55 = v149;
      v56 = sub_1C6B5DEA8(v47, v50);
      v58 = v55[2];
      v59 = (v57 & 1) == 0;
      v43 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v43)
      {
        goto LABEL_79;
      }

      v61 = v57;
      if (v55[3] >= v60)
      {
        if (v54)
        {
          goto LABEL_24;
        }

        v112 = v56;
        sub_1C6B736C8();
        v56 = v112;
        v67 = v149;
        if ((v61 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_25:
        *(v67[7] + 8 * v56) = v53;
      }

      else
      {
        sub_1C6B6FCD0(v60, v54);
        v56 = sub_1C6B5DEA8(v47, v50);
        if ((v61 & 1) != (v62 & 1))
        {
          goto LABEL_88;
        }

LABEL_24:
        v67 = v149;
        if (v61)
        {
          goto LABEL_25;
        }

LABEL_61:
        v67[(v56 >> 6) + 8] |= 1 << v56;
        v113 = (v67[6] + 16 * v56);
        *v113 = v47;
        v113[1] = v50;
        *(v67[7] + 8 * v56) = v53;
        v114 = v67[2];
        v43 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (v43)
        {
          goto LABEL_80;
        }

        v67[2] = v115;
      }

      a1 = v28;
      *v28 = v67;
      goto LABEL_64;
    }

    v30 = sub_1C6B5DEA8(v26, v27);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_14;
    }

    v33 = *(*(v29 + 56) + 8 * v30);

    v133 = v33;
    if (v132 > 1)
    {
      if (v132 != 2)
      {

        _s14FeaturesErrorsOMa(0);
        sub_1C6B995C4(&qword_1EC1D7170, _s14FeaturesErrorsOMa, &unk_1C6D81450);
        swift_allocError();
        v124 = v123;
        sub_1C6B99EC8(0, &qword_1EDCE5CD8, MEMORY[0x1E6996150]);
        v126 = *(v125 + 48);
        sub_1C6B98210(v124);
        v127 = v147;
        (*v134)(&v124[v126], v16, v147);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_77:
        (*v140)(v16, v127);
        return (*v141)(v21, v142);
      }

      v68 = sub_1C6D783D0();
      v70 = v69;
      v71 = v131;
      v72 = sub_1C6B9960C(v16);
      v131 = v71;
      if (v71)
      {

        v127 = v147;
        goto LABEL_77;
      }

      v73 = v72;

      v74 = swift_isUniquelyReferenced_nonNull_native();
      v149 = *v28;
      v75 = v149;
      v76 = sub_1C6B5DEA8(v68, v70);
      v78 = v75[2];
      v79 = (v77 & 1) == 0;
      v43 = __OFADD__(v78, v79);
      v80 = v78 + v79;
      if (v43)
      {
        goto LABEL_82;
      }

      v81 = v77;
      if (v75[3] >= v80)
      {
        if (v74)
        {
          goto LABEL_46;
        }

        v117 = v76;
        sub_1C6B736C8();
        v76 = v117;
        v102 = v149;
        if ((v81 & 1) == 0)
        {
          goto LABEL_71;
        }

LABEL_47:
        *(v102[7] + 8 * v76) = v73;
      }

      else
      {
        sub_1C6B6FCD0(v80, v74);
        v76 = sub_1C6B5DEA8(v68, v70);
        if ((v81 & 1) != (v82 & 1))
        {
          goto LABEL_88;
        }

LABEL_46:
        v102 = v149;
        if (v81)
        {
          goto LABEL_47;
        }

LABEL_71:
        v102[(v76 >> 6) + 8] |= 1 << v76;
        v118 = (v102[6] + 16 * v76);
        *v118 = v68;
        v118[1] = v70;
        *(v102[7] + 8 * v76) = v73;
        v119 = v102[2];
        v43 = __OFADD__(v119, 1);
        v120 = v119 + 1;
        if (v43)
        {
          goto LABEL_85;
        }

        v102[2] = v120;
      }

      a1 = v28;
      *v28 = v102;
LABEL_64:
      v16 = v136;
LABEL_65:
      v17 = v142;
LABEL_66:
      v25 = v147;
LABEL_67:
      v9 = v138;
      goto LABEL_68;
    }

    if (!v132)
    {
      v34 = sub_1C6D783D0();
      v36 = v35;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v149 = *v28;
      v38 = v149;
      v39 = sub_1C6B5DEA8(v34, v36);
      v41 = v38[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_81;
      }

      v45 = v40;
      if (v38[3] >= v44)
      {
        if ((v37 & 1) == 0)
        {
          v116 = v39;
          sub_1C6B736C8();
          v39 = v116;
        }
      }

      else
      {
        sub_1C6B6FCD0(v44, v37);
        v39 = sub_1C6B5DEA8(v34, v36);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_88;
        }
      }

      v16 = v136;
      v98 = v149;
      if (v45)
      {
        *(v149[7] + 8 * v39) = v133;
      }

      else
      {
        v149[(v39 >> 6) + 8] |= 1 << v39;
        v99 = (v98[6] + 16 * v39);
        *v99 = v34;
        v99[1] = v36;
        *(v98[7] + 8 * v39) = v133;
        v100 = v98[2];
        v43 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v43)
        {
          goto LABEL_84;
        }

        v98[2] = v101;
      }

      a1 = v28;
      *v28 = v98;
      goto LABEL_65;
    }

    v83 = sub_1C6D783D0();
    v130 = v84;
    v85 = v135;
    (*v134)(v135, v16, v25);
    type metadata accessor for MutableFeature();
    swift_allocObject();
    v86 = sub_1C6B97DF0(v85);
    if (!v86)
    {
      sub_1C6B5DEA8(v83, v130);
      v104 = v103;

      if (v104)
      {
        a1 = v28;
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v106 = *v28;
        v149 = *v28;
        if ((v105 & 1) == 0)
        {
          sub_1C6B736C8();
          v106 = v149;
        }

        sub_1C6B16C9C();

        *v28 = v106;
        v17 = v142;
      }

      else
      {

        v17 = v142;
        a1 = v28;
      }

      goto LABEL_67;
    }

    v128 = v86;
    a1 = v28;
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v149 = *v28;
    v88 = v149;
    v129 = v83;
    v89 = v130;
    v90 = sub_1C6B5DEA8(v83, v130);
    v92 = v88[2];
    v93 = (v91 & 1) == 0;
    v43 = __OFADD__(v92, v93);
    v94 = v92 + v93;
    if (v43)
    {
      goto LABEL_83;
    }

    v95 = v91;
    if (v88[3] >= v94)
    {
      v96 = v89;
      v9 = v138;
      if ((v87 & 1) == 0)
      {
        v121 = v90;
        sub_1C6B736C8();
        v90 = v121;
      }
    }

    else
    {
      sub_1C6B6FCD0(v94, v87);
      v96 = v89;
      v90 = sub_1C6B5DEA8(v129, v89);
      v9 = v138;
      if ((v95 & 1) != (v97 & 1))
      {
        goto LABEL_88;
      }
    }

    v107 = v129;
    v108 = v149;
    if (v95)
    {
      *(v149[7] + 8 * v90) = v128;
    }

    else
    {
      v149[(v90 >> 6) + 8] |= 1 << v90;
      v109 = (v108[6] + 16 * v90);
      *v109 = v107;
      v109[1] = v96;
      *(v108[7] + 8 * v90) = v128;
      v110 = v108[2];
      v43 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v43)
      {
        goto LABEL_86;
      }

      v108[2] = v111;
    }

    *a1 = v108;
    v17 = v142;
    v25 = v147;
LABEL_68:
    ++v24;
    (*v140)(v16, v25);
    (*v141)(v21, v17);
    v22 = v139;
    v18 = v137;
    if (v146 == v24)
    {
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6B97DF0(uint64_t a1)
{
  v3 = sub_1C6D78760();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E6996138])
  {
    (*(v4 + 8))(a1, v3);
    (*(v4 + 96))(v7, v3);
    v9 = *v7;
    *(v1 + 16) = 1;
    swift_beginAccess();
    *(v1 + 24) = v9;
LABEL_9:

    return v1;
  }

  if (v8 == *MEMORY[0x1E6996140])
  {
    (*(v4 + 8))(a1, v3);
    (*(v4 + 96))(v7, v3);
    v10 = *v7;
    *(v1 + 16) = 2;
    swift_beginAccess();
    *(v1 + 32) = v10;
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x1E6996148])
  {
    (*(v4 + 8))(a1, v3);
    (*(v4 + 96))(v7, v3);
    v11 = *v7;
    *(v1 + 16) = 3;
    swift_beginAccess();
    *(v1 + 40) = v11;
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x1E6996130])
  {
    (*(v4 + 8))(a1, v3);
    (*(v4 + 96))(v7, v3);
    v12 = *v7;
    *(v1 + 16) = 4;
    swift_beginAccess();
    *(v1 + 48) = v12;
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x1E6996120])
  {
    (*(v4 + 96))(v7, v3);
    v15 = *v7;
    v14 = v7[1];
    *(v1 + 16) = 5;
    v16 = objc_allocWithZone(MEMORY[0x1E695DF88]);
    v17 = sub_1C6D75E50();
    v18 = [v16 initWithData_];

    sub_1C6B1C9F0(v15, v14);
    (*(v4 + 8))(a1, v3);
    v19 = *(v1 + 56);
    *(v1 + 56) = v18;
  }

  else
  {
    v20 = *MEMORY[0x1E6996128];
    v21 = *(v4 + 8);
    v22 = v8;
    v21(a1, v3);
    if (v22 == v20)
    {
      *(v1 + 16) = 0;
    }

    else
    {
      v21(v7, v3);

      type metadata accessor for MutableFeature();
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1C6B98210@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      swift_beginAccess();
      v10 = *(v1 + 40);
      v11 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v11 = v10;
      }

      *a1 = v11;
      v6 = MEMORY[0x1E6996148];
      goto LABEL_19;
    }

    if (v3 == 4)
    {
      swift_beginAccess();
      v7 = *(v1 + 48);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v8 = v7;
      }

      *a1 = v8;
      v6 = MEMORY[0x1E6996130];
      goto LABEL_19;
    }

    v17 = *(v1 + 56);
    if (v17)
    {
      v18 = v17;
      v17 = sub_1C6D75E60();
      v20 = v19;
    }

    else
    {
      v20 = 0xC000000000000000;
    }

    *a1 = v17;
    a1[1] = v20;
    v9 = MEMORY[0x1E6996120];
  }

  else
  {
    if (*(v1 + 16))
    {
      if (v3 == 1)
      {
        swift_beginAccess();
        v4 = *(v1 + 24);
        v5 = MEMORY[0x1E69E7CC0];
        if (v4)
        {
          v5 = v4;
        }

        *a1 = v5;
        v6 = MEMORY[0x1E6996138];
      }

      else
      {
        swift_beginAccess();
        v12 = *(v1 + 32);
        v13 = MEMORY[0x1E69E7CC0];
        if (v12)
        {
          v13 = v12;
        }

        *a1 = v13;
        v6 = MEMORY[0x1E6996140];
      }

LABEL_19:
      v14 = *v6;
      v15 = sub_1C6D78760();
      (*(*(v15 - 8) + 104))(a1, v14, v15);
    }

    v9 = MEMORY[0x1E6996128];
  }

  v21 = *v9;
  v22 = sub_1C6D78760();
  v23 = *(*(v22 - 8) + 104);

  return v23(a1, v21, v22);
}

uint64_t sub_1C6B98430()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MutableFeature.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MutableFeature.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6B98600()
{
  result = qword_1EC1D7168;
  if (!qword_1EC1D7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7168);
  }

  return result;
}

unint64_t sub_1C6B98654()
{
  result = qword_1EDCE7F38;
  if (!qword_1EDCE7F38)
  {
    sub_1C6B18CB8(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F38);
  }

  return result;
}

void sub_1C6B986D0(uint64_t a1)
{
  if (!qword_1EDCEA320)
  {
    sub_1C6D78760();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA320);
    }
  }
}

void *sub_1C6B98728(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_1C6B9897C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1C6B987B8(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_1C6B9897C((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v11 = v10;
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = sub_1C6B98728(v13, v6, a2, a1);

    MEMORY[0x1CCA57100](v13, -1, -1);
  }

  return v11;
}

void sub_1C6B9897C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v70 = a1;
  v6 = sub_1C6D783E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v79 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v65 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v80 = (v65 - v16);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17, v18);
  v69 = v65 - v20;
  v21 = *(a3 + 16);
  v22 = *(a4 + 16);
  v81 = v7 + 16;
  v77 = a4;
  v78 = a3;
  v73 = v7;
  if (v22 >= v21)
  {
    v46 = 0;
    v47 = *(a3 + 56);
    v68 = a3 + 56;
    v48 = 1 << *(a3 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & v47;
    v51 = (v48 + 63) >> 6;
    v76 = a4 + 56;
    v80 = (v7 + 8);
    j = v51;
    v72 = 0;
    if (v50)
    {
      goto LABEL_30;
    }

LABEL_31:
    v53 = v46;
    while (1)
    {
      v46 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v46 >= v51)
      {
LABEL_44:

        sub_1C6CC6BB4(v70, v66, v72, a3);
        return;
      }

      v54 = *(v68 + 8 * v46);
      ++v53;
      if (v54)
      {
        v52 = __clz(__rbit64(v54));
        for (i = ((v54 - 1) & v54); ; i = ((v50 - 1) & v50))
        {
          v55 = v52 | (v46 << 6);
          v56 = *(a3 + 48);
          v57 = *(v7 + 72);
          v74 = v55;
          v58 = *(v7 + 16);
          v58(v79, v56 + v57 * v55, v6, v19);
          sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
          v59 = sub_1C6D79500();
          v60 = -1 << *(a4 + 32);
          v61 = v59 & ~v60;
          if ((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
          {
            v69 = (v80 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v62 = ~v60;
            while (1)
            {
              (v58)(v13, *(v77 + 48) + v61 * v57, v6);
              sub_1C6B995C4(&qword_1EDCE5D20, MEMORY[0x1E6996088], MEMORY[0x1E6996098]);
              v63 = sub_1C6D79560();
              v64 = *v80;
              (*v80)(v13, v6);
              if (v63)
              {
                break;
              }

              v61 = (v61 + 1) & v62;
              if (((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                a4 = v77;
                goto LABEL_42;
              }
            }

            v64(v79, v6);
            v7 = v73;
            *(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
            v51 = j;
            v31 = __OFADD__(v72++, 1);
            a4 = v77;
            a3 = v78;
            v50 = i;
            if (v31)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v64 = *v80;
LABEL_42:
            v64(v79, v6);
            a3 = v78;
            v7 = v73;
            v51 = j;
            v50 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v52 = __clz(__rbit64(v50));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v72 = 0;
    v23 = a4;
    v24 = 0;
    v26 = v23 + 56;
    v25 = *(v23 + 56);
    v65[0] = v26;
    v27 = 1 << *(v26 - 24);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & v25;
    v30 = (v27 + 63) >> 6;
    v67 = v7 + 32;
    v68 = v30;
    v74 = a3 + 56;
    v79 = (v7 + 8);
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_10:
    v33 = v24;
    while (1)
    {
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v24 >= v30)
      {
        goto LABEL_44;
      }

      v34 = *(v65[0] + 8 * v24);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        for (j = (v34 - 1) & v34; ; j = (v29 - 1) & v29)
        {
          v35 = *(v7 + 72);
          v36 = *(v77 + 48) + v35 * (v32 | (v24 << 6));
          v37 = v69;
          i = *(v7 + 16);
          v76 = v35;
          i(v69, v36, v6, v19);
          (*(v7 + 32))(v80, v37, v6);
          sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
          v38 = sub_1C6D79500();
          v39 = -1 << *(a3 + 32);
          v40 = v38 & ~v39;
          v41 = v40 >> 6;
          v42 = 1 << v40;
          if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) != 0)
          {
            v65[1] = v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v43 = ~v39;
            while (1)
            {
              (i)(v13, *(v78 + 48) + v40 * v76, v6);
              sub_1C6B995C4(&qword_1EDCE5D20, MEMORY[0x1E6996088], MEMORY[0x1E6996098]);
              v44 = sub_1C6D79560();
              v45 = *v79;
              (*v79)(v13, v6);
              if (v44)
              {
                break;
              }

              v40 = (v40 + 1) & v43;
              v41 = v40 >> 6;
              v42 = 1 << v40;
              if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) == 0)
              {
                a3 = v78;
                goto LABEL_21;
              }
            }

            v45(v80, v6);
            v29 = j;
            v70[v41] |= v42;
            v7 = v73;
            v31 = __OFADD__(v72++, 1);
            a3 = v78;
            v30 = v68;
            if (v31)
            {
              goto LABEL_48;
            }

            if (!v29)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v45 = *v79;
LABEL_21:
            v45(v80, v6);
            v7 = v73;
            v30 = v68;
            v29 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v32 = __clz(__rbit64(v29));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_1C6B99064(uint64_t a1, int a2)
{
  v52 = a2;
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  v13 = sub_1C6D78810();
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 + 16);
  if (!v58)
  {
    return;
  }

  v46 = v12;
  v47 = v8;
  v45 = v2;
  v19 = 0;
  v20 = 0;
  v22 = *(v16 + 16);
  v21 = v16 + 16;
  v56 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v57 = v22;
  v23 = *(v21 + 56);
  v48 = v5 + 16;
  v49 = v5;
  v24 = (v5 + 8);
  v54 = (v21 - 8);
  v55 = v23;
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v13;
  v53 = v21;
  while (1)
  {
    v60 = v19;
    v61 = v20;
    v57(v18, v56 + v55 * v19, v13, v17);
    v25 = sub_1C6D787E0();
    v26 = *(v25 + 16);
    v27 = sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
    v28 = MEMORY[0x1CCA55E50](v26, v4, v27);
    v63 = v28;
    v29 = *(v25 + 16);
    if (v29)
    {
      v30 = *(v49 + 80);
      v59 = v25;
      v31 = v25 + ((v30 + 32) & ~v30);
      v62 = *(v49 + 72);
      v32 = *(v49 + 16);
      v34 = v46;
      v33 = v47;
      do
      {
        v32(v34, v31, v4);
        sub_1C6C242F4(v33, v34);
        (*v24)(v33, v4);
        v31 += v62;
        --v29;
      }

      while (v29);

      v35 = v63;
      v18 = v50;
      v13 = v51;
      v20 = v61;
      if (!v61)
      {
LABEL_3:
        (*v54)(v18, v13);
        v20 = v35;
        goto LABEL_4;
      }
    }

    else
    {
      v35 = v28;

      v20 = v61;
      if (!v61)
      {
        goto LABEL_3;
      }
    }

    if (!v52)
    {
      v37 = *v54;

      v37(v18, v13);
      goto LABEL_16;
    }

    if (v52 == 1)
    {
      break;
    }

    sub_1C6B96720(v35, v20);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      _s14FeaturesErrorsOMa(0);
      sub_1C6B995C4(&qword_1EC1D7170, _s14FeaturesErrorsOMa, &unk_1C6D81450);
      swift_allocError();
      v41 = v40;
      sub_1C6B99B48(0);
      v43 = *(v42 + 48);
      *v41 = v20;
      (v57)(v41 + v43, v18, v13);
      goto LABEL_22;
    }

    (*v54)(v18, v13);

LABEL_4:
    v19 = v60 + 1;
    if (v60 + 1 == v58)
    {

      return;
    }
  }

  v36 = *(sub_1C6B987B8(v20, v35) + 2);

  if (!v36)
  {
    (*v54)(v18, v13);
LABEL_16:

    goto LABEL_4;
  }

  _s14FeaturesErrorsOMa(0);
  sub_1C6B995C4(&qword_1EC1D7170, _s14FeaturesErrorsOMa, &unk_1C6D81450);
  swift_allocError();
  *v44 = v20;
  v44[1] = v35;
LABEL_22:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  (*v54)(v18, v13);
}

uint64_t sub_1C6B995C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B9960C(uint64_t a1)
{
  sub_1C6B99A64(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = v1;
  v8 = *(v1 + 16);
  v10 = &v7[*(v9 + 48)];
  *v7 = v8;
  v11 = sub_1C6D78760();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v10, a1, v11);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if ((*(v12 + 88))(v10, v11) == *MEMORY[0x1E6996138])
        {
          (*(v12 + 96))(v10, v11);
          v14 = *v10;
          v15 = sub_1C6B97CAC(v32);
          if (*v16)
          {
            sub_1C6B38474(v14);
LABEL_23:
            (v15)(v32, 0);
            return v33;
          }

          goto LABEL_22;
        }
      }

      else if ((*(v12 + 88))(v10, v11) == *MEMORY[0x1E6996140])
      {
        (*(v12 + 96))(v10, v11);
        v21 = *v10;
        v15 = sub_1C6B97CFC(v32);
        if (*v22)
        {
          sub_1C6B38654(v21);
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (v8 == 3)
  {
    if ((*(v12 + 88))(v10, v11) == *MEMORY[0x1E6996148])
    {
      (*(v12 + 96))(v10, v11);
      v19 = *v10;
      v15 = sub_1C6B97D4C(v32);
      if (*v20)
      {
        sub_1C6B38740(v19);
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v8 == 4)
  {
    if ((*(v12 + 88))(v10, v11) == *MEMORY[0x1E6996130])
    {
      (*(v12 + 96))(v10, v11);
      v17 = *v10;
      v15 = sub_1C6B97D9C(v32);
      if (*v18)
      {
        sub_1C6B3882C(v17);
        goto LABEL_23;
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if ((*(v12 + 88))(v10, v11) != *MEMORY[0x1E6996120])
  {
LABEL_21:
    type metadata accessor for MutableFeature.MutableFeatureErrors(0);
    sub_1C6B995C4(&qword_1EC1D7178, type metadata accessor for MutableFeature.MutableFeatureErrors, &unk_1C6D81410);
    swift_allocError();
    v28 = *(v4 + 48);
    *v29 = v8;
    v13(&v29[v28], a1, v11);
    swift_willThrow();
    sub_1C6B99AEC(v7);
    return v33;
  }

  (*(v12 + 96))(v10, v11);
  v23 = *v10;
  v24 = *(v10 + 1);
  v25 = *(v33 + 56);
  if (v25)
  {
    v26 = v25;
    v27 = sub_1C6D75E50();
    [v26 appendData_];
    sub_1C6B1C9F0(v23, v24);
  }

  else
  {
    sub_1C6B1C9F0(*v10, *(v10 + 1));
  }

  return v33;
}

void sub_1C6B99A64(uint64_t a1)
{
  if (!qword_1EDCE2528)
  {
    sub_1C6D78760();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE2528);
    }
  }
}

uint64_t sub_1C6B99AEC(uint64_t a1)
{
  sub_1C6B99A64(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6B99B48(uint64_t a1)
{
  if (!qword_1EC1D7180)
  {
    sub_1C6B99BB8(255);
    sub_1C6D78810();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7180);
    }
  }
}

void sub_1C6B99BB8(uint64_t a1)
{
  if (!qword_1EC1D7188)
  {
    sub_1C6D783E0();
    sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
    v1 = sub_1C6D79990();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D7188);
    }
  }
}

uint64_t sub_1C6B99C4C(uint64_t a1, uint64_t a2)
{
  sub_1C6B99A64(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6B99CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B99A64(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1C6B99D34(uint64_t a1)
{
  sub_1C6B99A64(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1C6D78760();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1C6B99E08(uint64_t a1)
{
  sub_1C6B99B48(319);
  if (v1 <= 0x3F)
  {
    sub_1C6B99EC8(319, &qword_1EC1D71B0, sub_1C6B99BB8);
    if (v2 <= 0x3F)
    {
      sub_1C6B99EC8(319, &qword_1EDCE5CD8, MEMORY[0x1E6996150]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C6B99EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t ArticleUserEventHistoryFeaturesFactory.__allocating_init(bundleSubscriptionIsSubscribedProvider:dataProvider:)(void *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_1C6B9F1A8(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

uint64_t ArticleUserEventHistoryFeaturesFactory.init(bundleSubscriptionIsSubscribedProvider:dataProvider:)(void *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x1EEE9AC00](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_1C6B9F0CC(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

uint64_t sub_1C6B9A0A0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v323 = a3;
  v324 = a4;
  v307 = a1;
  v6 = MEMORY[0x1E69E6720];
  sub_1C6B9F664(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v313 = &v296 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v320 = &v296 - v12;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v331 = *(v13 - 8);
  v332 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v329 = &v296 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v328 = &v296 - v18;
  sub_1C6B9F664(0, &qword_1EDCEA320, MEMORY[0x1E6996150], v6);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v299 = (&v296 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v298 = (&v296 - v24);
  v25 = sub_1C6D783E0();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v310 = &v296 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v309 = &v296 - v30;
  v306 = sub_1C6D78810();
  v305 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306, v31);
  v311 = &v296 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = type metadata accessor for EventArticleFeatures(0);
  v327 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330, v33);
  v333 = &v296 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v296 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v296 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v326 = &v296 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v296 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v325 = &v296 - v52;
  if (qword_1EDCE96C8 != -1)
  {
LABEL_151:
    swift_once();
  }

  v53 = qword_1EDCE96D0;
  v54 = sub_1C6D79AC0();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30("Creating a user event history features request", 46, 2, &dword_1C6B09000, v53, v54, MEMORY[0x1E69E7CC0]);
  v336 = 0;
  v337 = 0;
  v56 = sub_1C6D79AC0();
  sub_1C6D78D30("Processing user event history sessions", 38, 2, &dword_1C6B09000, v53, v56, v55);
  v335 = v55;
  v57 = *(a2 + 8);
  v58 = v4[5];
  v59 = v4[6];
  v60 = __swift_project_boxed_opaque_existential_1(v4 + 2, v58);
  MEMORY[0x1EEE9AC00](v60, v61);
  *(&v296 - 8) = &v337;
  *(&v296 - 7) = &v335;
  *(&v296 - 6) = v57;
  *(&v296 - 5) = &v336;
  *(&v296 - 4) = v4;
  *(&v296 - 3) = a2;
  v312 = a2;
  v62 = v324;
  *(&v296 - 2) = v323;
  *(&v296 - 1) = v62;
  SessionDataProviderType.visitSessions(reversed:stoppableVisitor:)(0, sub_1C6B9F2D0, (&v296 - 10), v58, v59);
  sub_1C6B9F664(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v64 = v63;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1C6D7EB10;
  v67 = v336;
  v66 = v337;
  v68 = MEMORY[0x1E69E6530];
  v69 = MEMORY[0x1E69E65A8];
  *(v65 + 56) = MEMORY[0x1E69E6530];
  *(v65 + 64) = v69;
  *(v65 + 32) = v67;
  *(v65 + 96) = v68;
  *(v65 + 104) = v69;
  *(v65 + 72) = v66;
  sub_1C6D79AC0();
  v319 = v53;
  sub_1C6D78D30("Processed %ld events and %ld sessions", v296, v297);

  sub_1C6D77FA0();
  v70 = sub_1C6D77F90();
  v321 = v38;
  v297 = v42;
  if (v70)
  {
    v317 = v64;
    v318 = v57;
    v71 = v335;
    v324 = *(v335 + 16);
    if (v324)
    {
      a2 = 0;
      v323 = v335 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
      v4 = MEMORY[0x1E69E7CC8];
      v322 = v335;
      do
      {
        if (a2 >= *(v71 + 16))
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        v72 = v325;
        sub_1C6B9F51C(v323 + *(v327 + 72) * a2, v325, type metadata accessor for EventArticleFeatures);
        v73 = v72[2];
        v74 = v72[3];
        v38 = *v72;
        v75 = v72[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v334 = v4;
        v42 = sub_1C6B5DEA8(v73, v74);
        v78 = v4[2];
        v79 = (v77 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_149;
        }

        v81 = v77;
        if (v4[3] >= v80)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v77)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_1C6B73864();
            v4 = v334;
            if (v81)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          sub_1C6B6FFA8(v80, isUniquelyReferenced_nonNull_native);
          v4 = v334;
          v82 = sub_1C6B5DEA8(v73, v74);
          if ((v81 & 1) != (v83 & 1))
          {
            result = sub_1C6D7A1C0();
            __break(1u);
            return result;
          }

          v42 = v82;
          if (v81)
          {
LABEL_13:

            goto LABEL_17;
          }
        }

        v4[(v42 >> 6) + 8] |= 1 << v42;
        v84 = (v4[6] + 16 * v42);
        *v84 = v73;
        v84[1] = v74;
        *(v4[7] + 8 * v42) = MEMORY[0x1E69E7CC0];
        v85 = v4[2];
        v86 = __OFADD__(v85, 1);
        v87 = v85 + 1;
        if (v86)
        {
          goto LABEL_150;
        }

        v4[2] = v87;
LABEL_17:
        v88 = v4[7];
        v89 = *(v88 + 8 * v42);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        *(v88 + 8 * v42) = v89;
        if ((v90 & 1) == 0)
        {
          v89 = sub_1C6B6592C(0, *(v89 + 2) + 1, 1, v89);
          *(v88 + 8 * v42) = v89;
        }

        v92 = *(v89 + 2);
        v91 = *(v89 + 3);
        if (v92 >= v91 >> 1)
        {
          *(v88 + 8 * v42) = sub_1C6B6592C((v91 > 1), v92 + 1, 1, v89);
        }

        ++a2;
        sub_1C6B9F584(v325, type metadata accessor for EventArticleFeatures);
        v93 = *(v88 + 8 * v42);
        *(v93 + 16) = v92 + 1;
        v94 = v93 + 16 * v92;
        *(v94 + 32) = v38;
        *(v94 + 40) = v75;
        v71 = v322;
      }

      while (v324 != a2);
    }

    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1C6D7E630;
    sub_1C6B855D0();
    v96 = MEMORY[0x1E69E6158];
    v97 = sub_1C6D794A0();
    v99 = v98;

    *(v95 + 56) = v96;
    *(v95 + 64) = sub_1C6B2064C();
    *(v95 + 32) = v97;
    *(v95 + 40) = v99;
    v100 = sub_1C6D79AC0();
    sub_1C6D78D30("Running event aggregation with history %{public}@", 49, 2, &dword_1C6B09000, v319, v100, v95);

    v57 = v318;
  }

  v304 = *(v335 + 16);
  v101 = v57 <= v304;
  v102 = v57 - v304;
  if (!v101)
  {
    v103 = *v312;
    v104 = v312[2];
    v105 = v312[3];
    *v49 = 0;
    *(v49 + 1) = 0xE000000000000000;
    *(v49 + 2) = 0;
    *(v49 + 3) = 0xE000000000000000;
    *(v49 + 4) = 0;
    *(v49 + 5) = 0xE000000000000000;
    *(v49 + 6) = 0;
    *(v49 + 7) = 0xE000000000000000;
    *(v49 + 8) = 0;
    *(v49 + 9) = 0xE000000000000000;
    *(v49 + 10) = sub_1C6BFE220(0, 0xE000000000000000, v104);
    *(v49 + 11) = MEMORY[0x1E69E7CC0];
    *(v49 + 12) = 0;
    *(v49 + 13) = 0xE000000000000000;
    *(v49 + 28) = 0;
    *(v49 + 19) = v105;
    *(v49 + 20) = v103;
    v106 = v330;
    v107 = *(v331 + 56);
    v108 = v332;
    v107(&v49[*(v330 + 92)], 1, 1, v332);
    v107(&v49[*(v106 + 96)], 1, 1, v108);
    *(v49 + 132) = 0u;
    *(v49 + 116) = 0u;
    v109 = sub_1C6BF7BB8(v49, v102);
    sub_1C6B38920(v109);
  }

  sub_1C6B9F664(0, &qword_1EDCE7D20, sub_1C6B9F304, MEMORY[0x1E69E6F90]);
  sub_1C6B9F304(0);
  v324 = v110;
  v111 = (*(*(v110 - 8) + 80) + 32) & ~*(*(v110 - 8) + 80);
  v323 = *(*(v110 - 8) + 72);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1C6D81490;
  v303 = v112;
  v322 = v112 + v111;
  sub_1C6D783C0();
  v113 = v335;
  v114 = *(v335 + 16);
  v319 = v335;
  v317 = v114;
  if (v114)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v114, 0);
    v115 = v334;
    v116 = v113 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v117 = *(v327 + 72);
    v118 = v114;
    do
    {
      sub_1C6B9F51C(v116, v49, type metadata accessor for EventArticleFeatures);
      v120 = *(v49 + 2);
      v119 = *(v49 + 3);

      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v115;
      v122 = v115[2];
      v121 = v115[3];
      if (v122 >= v121 >> 1)
      {
        sub_1C6B39280((v121 > 1), v122 + 1, 1);
        v115 = v334;
      }

      v115[2] = v122 + 1;
      v123 = &v115[2 * v122];
      v123[4] = v120;
      v123[5] = v119;
      v116 += v117;
      --v118;
    }

    while (v118);
    v113 = v319;
    v114 = v317;
  }

  v124 = v322;
  sub_1C6D78740();
  v125 = v124 + v323;
  sub_1C6D783C0();
  v126 = MEMORY[0x1E69E7CC0];
  if (v114)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v114, 0);
    v126 = v334;
    v127 = v113 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v128 = *(v327 + 72);
    do
    {
      sub_1C6B9F51C(v127, v49, type metadata accessor for EventArticleFeatures);
      v129 = *(v49 + 35);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v126;
      v131 = v126[2];
      v130 = v126[3];
      if (v131 >= v130 >> 1)
      {
        sub_1C6B392F0((v130 > 1), v131 + 1, 1);
        v126 = v334;
      }

      v126[2] = v131 + 1;
      *(v126 + v131 + 8) = v129;
      v127 += v128;
      --v114;
    }

    while (v114);
    v114 = v317;
  }

  v132 = *(v324 + 48);
  *(v125 + v132) = v126;
  v133 = *MEMORY[0x1E6996140];
  v134 = sub_1C6D78760();
  v308 = *(v134 - 8);
  v135 = *(v308 + 104);
  v314 = v133;
  v318 = v134;
  v316 = v308 + 104;
  v315 = v135;
  (v135)(v125 + v132, v133);
  v136 = v322 + 2 * v323;
  sub_1C6D783C0();
  v137 = MEMORY[0x1E69E7CC0];
  if (v114)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v114, 0);
    v137 = v334;
    v138 = v113 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v139 = *(v327 + 72);
    do
    {
      sub_1C6B9F51C(v138, v49, type metadata accessor for EventArticleFeatures);
      v140 = *(v49 + 36);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v137;
      v142 = v137[2];
      v141 = v137[3];
      if (v142 >= v141 >> 1)
      {
        sub_1C6B3922C((v141 > 1), v142 + 1, 1);
        v137 = v334;
      }

      v137[2] = v142 + 1;
      *(v137 + v142 + 8) = v140;
      v138 += v139;
      --v114;
    }

    while (v114);
    v114 = v317;
  }

  v143 = *(v324 + 48);
  *(v136 + v143) = v137;
  v315(v136 + v143, *MEMORY[0x1E6996138], v318);
  v302 = 0xD000000000000012;
  sub_1C6D783C0();
  if (v114)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v114, 0);
    v144 = v334;
    v145 = v113 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v146 = *(v327 + 72);
    v147 = v114;
    do
    {
      sub_1C6B9F51C(v145, v49, type metadata accessor for EventArticleFeatures);
      v149 = *(v49 + 4);
      v148 = *(v49 + 5);

      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v144;
      v151 = v144[2];
      v150 = v144[3];
      if (v151 >= v150 >> 1)
      {
        sub_1C6B39280((v150 > 1), v151 + 1, 1);
        v144 = v334;
      }

      v144[2] = v151 + 1;
      v152 = &v144[2 * v151];
      v152[4] = v149;
      v152[5] = v148;
      v145 += v146;
      --v147;
    }

    while (v147);
    v113 = v319;
    v114 = v317;
  }

  sub_1C6D78740();
  sub_1C6D783C0();
  if (v114)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v114, 0);
    v153 = v334;
    v154 = v113 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v155 = *(v327 + 72);
    v156 = v114;
    do
    {
      sub_1C6B9F51C(v154, v49, type metadata accessor for EventArticleFeatures);
      v158 = *(v49 + 6);
      v157 = *(v49 + 7);

      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v153;
      v160 = v153[2];
      v159 = v153[3];
      if (v160 >= v159 >> 1)
      {
        sub_1C6B39280((v159 > 1), v160 + 1, 1);
        v153 = v334;
      }

      v153[2] = v160 + 1;
      v161 = &v153[2 * v160];
      v161[4] = v158;
      v161[5] = v157;
      v154 += v155;
      --v156;
    }

    while (v156);
    v113 = v319;
    v114 = v317;
  }

  sub_1C6D78740();
  v301 = 0xD000000000000017;
  sub_1C6D783C0();
  if (v114)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v114, 0);
    v162 = v334;
    v163 = v113 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v164 = *(v327 + 72);
    v165 = v114;
    do
    {
      sub_1C6B9F51C(v163, v49, type metadata accessor for EventArticleFeatures);
      v167 = *(v49 + 8);
      v166 = *(v49 + 9);

      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v162;
      v169 = v162[2];
      v168 = v162[3];
      if (v169 >= v168 >> 1)
      {
        sub_1C6B39280((v168 > 1), v169 + 1, 1);
        v162 = v334;
      }

      v162[2] = v169 + 1;
      v170 = &v162[2 * v169];
      v170[4] = v167;
      v170[5] = v166;
      v163 += v164;
      --v165;
    }

    while (v165);
    v113 = v319;
  }

  sub_1C6D78740();
  v300 = v322 + 6 * v323;
  sub_1C6D783C0();
  v171 = *(v113 + 16);
  if (v171)
  {
    v172 = v326;
    v173 = v113 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v325 = *(v327 + 72);
    v174 = MEMORY[0x1E69E7CC0];
    v175 = v171;
    do
    {
      sub_1C6B9F51C(v173, v172, type metadata accessor for EventArticleFeatures);
      v334 = *(v172 + 80);
      sub_1C6B855D0();
      sub_1C6B9F480(&qword_1EDCE7F38, sub_1C6B855D0, MEMORY[0x1E69E6310]);

      v176 = sub_1C6D79530();
      v178 = v177;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v174 = sub_1C6B6592C(0, *(v174 + 2) + 1, 1, v174);
      }

      v180 = *(v174 + 2);
      v179 = *(v174 + 3);
      v172 = v326;
      if (v180 >= v179 >> 1)
      {
        v174 = sub_1C6B6592C((v179 > 1), v180 + 1, 1, v174);
        v172 = v326;
      }

      sub_1C6B9F584(v172, type metadata accessor for EventArticleFeatures);
      *(v174 + 2) = v180 + 1;
      v181 = &v174[16 * v180];
      *(v181 + 4) = v176;
      *(v181 + 5) = v178;
      v173 += v325;
      --v175;
    }

    while (v175);
  }

  sub_1C6D78740();
  v326 = (v322 - v323);
  v300 = v322 - v323 + 8 * v323;
  v325 = 0xD000000000000019;
  sub_1C6D783C0();
  if (v171)
  {
    v182 = v319 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v183 = *(v327 + 72);
    v184 = MEMORY[0x1E69E7CC0];
    v185 = v297;
    do
    {
      sub_1C6B9F51C(v182, v185, type metadata accessor for EventArticleFeatures);
      v334 = *(v185 + 88);
      sub_1C6B855D0();
      sub_1C6B9F480(&qword_1EDCE7F38, sub_1C6B855D0, MEMORY[0x1E69E6310]);

      v186 = sub_1C6D79530();
      v188 = v187;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_1C6B6592C(0, *(v184 + 2) + 1, 1, v184);
      }

      v190 = *(v184 + 2);
      v189 = *(v184 + 3);
      if (v190 >= v189 >> 1)
      {
        v184 = sub_1C6B6592C((v189 > 1), v190 + 1, 1, v184);
      }

      sub_1C6B9F584(v185, type metadata accessor for EventArticleFeatures);
      *(v184 + 2) = v190 + 1;
      v191 = &v184[16 * v190];
      *(v191 + 4) = v186;
      *(v191 + 5) = v188;
      v182 += v183;
      --v171;
    }

    while (v171);
  }

  sub_1C6D78740();
  sub_1C6D783C0();
  v192 = v317;
  if (v317)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v317, 0);
    v193 = v334;
    v194 = v319 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v195 = *(v327 + 72);
    v196 = v192;
    do
    {
      sub_1C6B9F51C(v194, v49, type metadata accessor for EventArticleFeatures);
      v198 = *(v49 + 12);
      v197 = *(v49 + 13);

      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v193;
      v200 = v193[2];
      v199 = v193[3];
      if (v200 >= v199 >> 1)
      {
        sub_1C6B39280((v199 > 1), v200 + 1, 1);
        v193 = v334;
      }

      v193[2] = v200 + 1;
      v201 = &v193[2 * v200];
      v201[4] = v198;
      v201[5] = v197;
      v194 += v195;
      --v196;
    }

    while (v196);
    v202 = v319;
    v192 = v317;
  }

  else
  {
    v202 = v319;
  }

  sub_1C6D78740();
  v203 = v322 + 9 * v323;
  sub_1C6D783C0();
  v204 = MEMORY[0x1E69E7CC0];
  if (v192)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v192, 0);
    v204 = v334;
    v205 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v206 = *(v327 + 72);
    v207 = v192;
    do
    {
      sub_1C6B9F51C(v205, v49, type metadata accessor for EventArticleFeatures);
      v208 = *(v49 + 28);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v204;
      v210 = v204[2];
      v209 = v204[3];
      if (v210 >= v209 >> 1)
      {
        sub_1C6B392F0((v209 > 1), v210 + 1, 1);
        v204 = v334;
      }

      v204[2] = v210 + 1;
      *(v204 + v210 + 8) = v208;
      v205 += v206;
      --v207;
    }

    while (v207);
    v192 = v317;
  }

  v211 = *(v324 + 48);
  *(v203 + v211) = v204;
  v315(v203 + v211, v314, v318);
  v212 = v322 + 10 * v323;
  sub_1C6D783C0();
  v213 = MEMORY[0x1E69E7CC0];
  if (v192)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v192, 0);
    v213 = v334;
    v214 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v215 = *(v327 + 72);
    v216 = v192;
    do
    {
      sub_1C6B9F51C(v214, v49, type metadata accessor for EventArticleFeatures);
      v217 = *(v49 + 29);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v213;
      v219 = v213[2];
      v218 = v213[3];
      if (v219 >= v218 >> 1)
      {
        sub_1C6B392F0((v218 > 1), v219 + 1, 1);
        v213 = v334;
      }

      v213[2] = v219 + 1;
      *(v213 + v219 + 8) = v217;
      v214 += v215;
      --v216;
    }

    while (v216);
    v202 = v319;
    v192 = v317;
  }

  v220 = *(v324 + 48);
  *(v212 + v220) = v213;
  v315(v212 + v220, v314, v318);
  v221 = v322 + 11 * v323;
  sub_1C6D783C0();
  v222 = MEMORY[0x1E69E7CC0];
  if (v192)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v192, 0);
    v222 = v334;
    v223 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v224 = *(v327 + 72);
    v225 = v192;
    do
    {
      sub_1C6B9F51C(v223, v49, type metadata accessor for EventArticleFeatures);
      v226 = *(v49 + 30);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v222;
      v228 = v222[2];
      v227 = v222[3];
      if (v228 >= v227 >> 1)
      {
        sub_1C6B392F0((v227 > 1), v228 + 1, 1);
        v222 = v334;
      }

      v222[2] = v228 + 1;
      *(v222 + v228 + 8) = v226;
      v223 += v224;
      --v225;
    }

    while (v225);
    v202 = v319;
    v192 = v317;
  }

  v229 = *(v324 + 48);
  *(v221 + v229) = v222;
  v315(v221 + v229, v314, v318);
  v230 = v322 + 12 * v323;
  sub_1C6D783C0();
  v231 = MEMORY[0x1E69E7CC0];
  if (v192)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v192, 0);
    v231 = v334;
    v232 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v233 = *(v327 + 72);
    v234 = v192;
    do
    {
      sub_1C6B9F51C(v232, v49, type metadata accessor for EventArticleFeatures);
      v235 = *(v49 + 31);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v231;
      v237 = v231[2];
      v236 = v231[3];
      if (v237 >= v236 >> 1)
      {
        sub_1C6B392F0((v236 > 1), v237 + 1, 1);
        v231 = v334;
      }

      v231[2] = v237 + 1;
      *(v231 + v237 + 8) = v235;
      v232 += v233;
      --v234;
    }

    while (v234);
    v202 = v319;
    v192 = v317;
  }

  v238 = *(v324 + 48);
  *(v230 + v238) = v231;
  v315(v230 + v238, v314, v318);
  v239 = v322 + 13 * v323;
  sub_1C6D783C0();
  v240 = MEMORY[0x1E69E7CC0];
  if (v192)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v192, 0);
    v240 = v334;
    v241 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v242 = *(v327 + 72);
    v243 = v192;
    do
    {
      sub_1C6B9F51C(v241, v49, type metadata accessor for EventArticleFeatures);
      v244 = *(v49 + 32);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v240;
      v246 = v240[2];
      v245 = v240[3];
      if (v246 >= v245 >> 1)
      {
        sub_1C6B392F0((v245 > 1), v246 + 1, 1);
        v240 = v334;
      }

      v240[2] = v246 + 1;
      *(v240 + v246 + 8) = v244;
      v241 += v242;
      --v243;
    }

    while (v243);
    v202 = v319;
    v192 = v317;
  }

  v247 = *(v324 + 48);
  *(v239 + v247) = v240;
  v315(v239 + v247, v314, v318);
  v248 = v322 + 14 * v323;
  sub_1C6D783C0();
  v249 = MEMORY[0x1E69E7CC0];
  if (v192)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v192, 0);
    v249 = v334;
    v250 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v251 = *(v327 + 72);
    v252 = v192;
    do
    {
      sub_1C6B9F51C(v250, v49, type metadata accessor for EventArticleFeatures);
      v253 = *(v49 + 33);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v249;
      v255 = v249[2];
      v254 = v249[3];
      if (v255 >= v254 >> 1)
      {
        sub_1C6B392F0((v254 > 1), v255 + 1, 1);
        v249 = v334;
      }

      v249[2] = v255 + 1;
      *(v249 + v255 + 8) = v253;
      v250 += v251;
      --v252;
    }

    while (v252);
    v202 = v319;
    v192 = v317;
  }

  v256 = *(v324 + 48);
  *(v248 + v256) = v249;
  v315(v248 + v256, v314, v318);
  v257 = &v326[16 * v323];
  sub_1C6D783C0();
  v258 = MEMORY[0x1E69E7CC0];
  v259 = v321;
  if (v192)
  {
    v334 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v192, 0);
    v258 = v334;
    v260 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    v261 = *(v327 + 72);
    do
    {
      v262 = v192;
      sub_1C6B9F51C(v260, v49, type metadata accessor for EventArticleFeatures);
      v263 = *(v49 + 34);
      sub_1C6B9F584(v49, type metadata accessor for EventArticleFeatures);
      v334 = v258;
      v265 = v258[2];
      v264 = v258[3];
      if (v265 >= v264 >> 1)
      {
        sub_1C6B392F0((v264 > 1), v265 + 1, 1);
        v258 = v334;
      }

      v258[2] = v265 + 1;
      *(v258 + v265 + 8) = v263;
      v260 += v261;
      --v192;
    }

    while (v262 != 1);
    v202 = v319;
  }

  v266 = *(v324 + 48);
  *&v257[v266] = v258;
  v315(&v257[v266], v314, v318);
  v267 = v311;
  sub_1C6D787D0();
  v268 = v312;
  v269 = v333;
  if (v312[3] > 0)
  {
    sub_1C6D783C0();
    v270 = *(v202 + 16);
    v271 = MEMORY[0x1E69E7CC0];
    if (v270)
    {
      v334 = MEMORY[0x1E69E7CC0];
      sub_1C6B39414(0, v270, 0);
      v271 = v334;
      v272 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
      v273 = *(v327 + 72);
      v274 = v332;
      v275 = (v331 + 48);
      do
      {
        sub_1C6B9F51C(v272, v259, type metadata accessor for EventArticleFeatures);
        v276 = v320;
        sub_1C6B9F374(v259 + *(v330 + 92), v320, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((*v275)(v276, 1, v274) == 1)
        {
          v277 = sub_1C6B9F3F4(v276, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          MEMORY[0x1EEE9AC00](v277, v278);
          *(&v296 - 2) = v279;
          sub_1C6B9F480(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D78C30();
          v274 = v332;
        }

        else
        {
          sub_1C6B9F6C8(v276, v328, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        sub_1C6B9F584(v259, type metadata accessor for EventArticleFeatures);
        v334 = v271;
        v281 = *(v271 + 16);
        v280 = *(v271 + 24);
        if (v281 >= v280 >> 1)
        {
          sub_1C6B39414((v280 > 1), v281 + 1, 1);
          v274 = v332;
          v271 = v334;
        }

        *(v271 + 16) = v281 + 1;
        sub_1C6B9F6C8(v328, v271 + ((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v281, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v272 += v273;
        --v270;
        v269 = v333;
        v259 = v321;
      }

      while (v270);
      v267 = v311;
      v268 = v312;
      v202 = v319;
    }

    v282 = v298;
    sub_1C6B9EDFC(v271, v298);

    (*(v308 + 56))(v282, 0, 1, v318);
    sub_1C6D78830();
  }

  if (*v268 >= 1)
  {
    sub_1C6D783C0();
    v283 = *(v202 + 16);
    v284 = MEMORY[0x1E69E7CC0];
    if (v283)
    {
      v334 = MEMORY[0x1E69E7CC0];
      sub_1C6B39414(0, v283, 0);
      v284 = v334;
      v285 = v202 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
      v286 = *(v327 + 72);
      v287 = (v331 + 48);
      v288 = v313;
      do
      {
        sub_1C6B9F51C(v285, v269, type metadata accessor for EventArticleFeatures);
        sub_1C6B9F374(v269 + *(v330 + 96), v288, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((*v287)(v288, 1, v332) == 1)
        {
          v289 = sub_1C6B9F3F4(v288, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          MEMORY[0x1EEE9AC00](v289, v290);
          *(&v296 - 2) = v291;
          sub_1C6B9F480(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D78C30();
          v288 = v313;
          v269 = v333;
        }

        else
        {
          sub_1C6B9F6C8(v288, v329, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        sub_1C6B9F584(v269, type metadata accessor for EventArticleFeatures);
        v334 = v284;
        v293 = *(v284 + 16);
        v292 = *(v284 + 24);
        if (v293 >= v292 >> 1)
        {
          sub_1C6B39414((v292 > 1), v293 + 1, 1);
          v288 = v313;
          v284 = v334;
        }

        *(v284 + 16) = v293 + 1;
        sub_1C6B9F6C8(v329, v284 + ((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v293, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v285 += v286;
        --v283;
        v269 = v333;
      }

      while (v283);
      v267 = v311;
    }

    v294 = v299;
    sub_1C6B9EDFC(v284, v299);

    (*(v308 + 56))(v294, 0, 1, v318);
    sub_1C6D78830();
  }

  (*(v305 + 32))(v307, v267, v306);

  return v304;
}