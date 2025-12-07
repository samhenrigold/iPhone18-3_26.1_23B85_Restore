uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6C6E67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
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

uint64_t sub_1C6C6E808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.metadata.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0) + 24);
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

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C6EEA8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D84E0);
  __swift_project_value_buffer(v0, qword_1EC1D84E0);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D84E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6C6F1C8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C6F1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C6FC74(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C6F318(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C6F318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6C6FC74(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  sub_1C6C6FC74(&qword_1EC1D84F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C6F5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C6FC74(&qword_1EC1D8510, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C6F670@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D84E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C6F718(uint64_t a1)
{
  v2 = sub_1C6C6FC74(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C6F784(uint64_t a1, uint64_t a2)
{
  sub_1C6C6FC74(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventTrackListenedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
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

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0) + 24);
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
      sub_1C6C6FC74(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
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

uint64_t sub_1C6C6FC74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(uint64_t a1)
{
  result = qword_1EDCE4D08;
  if (!qword_1EDCE4D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagUnmuted.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  sub_1C6D78A40();
  sub_1C6C707CC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C6FFE8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8518);
  __swift_project_value_buffer(v0, qword_1EC1D8518);
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

uint64_t static Com_Apple_News_Personalization_SessionEventTagUnmuted._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A60 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6D78CC0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  sub_1C6C707CC(&qword_1EC1D8530, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C703BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C707CC(&qword_1EC1D8548, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnmuted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C70438@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A60 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C704E0(uint64_t a1)
{
  v2 = sub_1C6C707CC(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnmuted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C7054C(uint64_t a1, uint64_t a2)
{
  sub_1C6C707CC(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnmuted);

  return sub_1C6D78C20();
}

uint64_t sub_1C6C706E8(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6C707CC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C707CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C70814(uint64_t a1, id a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDCE2070;
    v5 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C6D7EB10;
    sub_1C6D75DE0();
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v7 = sub_1C6D7A0E0();
    v9 = v8;
    v10 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1C6B2064C();
    *(v6 + 64) = v11;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0xE000000000000000;
    sub_1C6D78D30("Call to clear clustering journal directory at %{public}@ failed with error %{public}@", 85, 2, &dword_1C6B09000, v4, v5, v6);

    v12 = a2;
    goto LABEL_5;
  }

  if (a1)
  {
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDCE2070;
    sub_1C6B1D314(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C6D7E630;
    sub_1C6D75DE0();
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v15 = sub_1C6D7A0E0();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1C6B2064C();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v20 = sub_1C6D79AC0();
    sub_1C6D78D30("Successfully cleared clustering journal directory at %{public}@", 63, 2, &dword_1C6B09000, v13, v20, v14);

    v21 = [objc_opt_self() defaultManager];
    v22 = sub_1C6D75D30();
    v43 = 0;
    LODWORD(v17) = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v43];

    v23 = v43;
    if (!v17)
    {
      v35 = v43;
      v36 = sub_1C6D75CC0();

      swift_willThrow();
      v37 = sub_1C6D79AA0();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1C6D7EB10;
      v39 = sub_1C6D7A0E0();
      *(v38 + 56) = v18;
      *(v38 + 64) = v19;
      *(v38 + 32) = v39;
      *(v38 + 40) = v40;
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
      sub_1C6D79E60();
      v41 = v43;
      v42 = v44;
      *(v38 + 96) = v18;
      *(v38 + 104) = v19;
      *(v38 + 72) = v41;
      *(v38 + 80) = v42;
      sub_1C6D78D30("Error creating clustering journals directory at %{public}@. Error: %{public}@", 77, 2, &dword_1C6B09000, v13, v37, v38);

      v12 = v36;
LABEL_5:

      return;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C6D7E630;
    v25 = v23;
    v26 = sub_1C6D7A0E0();
    *(v24 + 56) = v18;
    *(v24 + 64) = v19;
    *(v24 + 32) = v26;
    *(v24 + 40) = v27;
    v28 = sub_1C6D79AC0();
    sub_1C6D78D30("Successfully created journals directory at %{public}@", 53, 2, &dword_1C6B09000, v13, v28, v24);
  }

  else
  {
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDCE2070;
    v30 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C6D7E630;
    sub_1C6D75DE0();
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v32 = sub_1C6D7A0E0();
    v34 = v33;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1C6B2064C();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    sub_1C6D78D30("Call to clear clustering journal directory at %{public}@ did not succeed, but provided no error.", 96, 2, &dword_1C6B09000, v29, v30, v31);
  }
}

void sub_1C6C70DF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1C6C70E68()
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCE2070;
  sub_1C6B1D314(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C6D7E630;
  sub_1C6D75DE0();
  sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v2 = sub_1C6D7A0E0();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1C6B2064C();
  *(v1 + 64) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v6 = sub_1C6D79AC0();
  sub_1C6D78D30("Pruning clustering journal at %{public}@", 40, 2, &dword_1C6B09000, v0, v6, v1);

  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1C6D75D30();
  v19 = 0;
  LODWORD(v2) = [v7 removeItemAtURL:v8 error:&v19];

  if (v2)
  {
    v9 = v19;
  }

  else
  {
    v10 = v19;
    v11 = sub_1C6D75CC0();

    swift_willThrow();
    v12 = sub_1C6D79AA0();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6D7EB10;
    v14 = sub_1C6D7A0E0();
    v15 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v5;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v17 = v19;
    v18 = v20;
    *(v13 + 96) = v15;
    *(v13 + 104) = v5;
    *(v13 + 72) = v17;
    *(v13 + 80) = v18;
    sub_1C6D78D30("Failed to prune clustering journal at %{public}@ with error %{public}@", 70, 2, &dword_1C6B09000, v0, v12, v13);
  }
}

uint64_t sub_1C6C71158()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization36TopicClusteringJournalStorageService_journalsDirectory;
  v2 = sub_1C6D75DE0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1C6C71204(uint64_t a1)
{
  v2 = sub_1C6D75F80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75F50();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1C6D75DE0();
  MEMORY[0x1EEE9AC00](v61, v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDCE2070;
    v17 = sub_1C6D79AA0();
    v18 = MEMORY[0x1E69E7CC0];

    return sub_1C6D78D30("Given a nil journal, nothing to store.", 38, 2, &dword_1C6B09000, v16, v17, v18);
  }

  v59 = v13;
  sub_1C6D75B70();
  swift_allocObject();

  sub_1C6D75B60();
  v63 = a1;
  sub_1C6D760F0();
  sub_1C6B20604(&unk_1EDCE62F8, MEMORY[0x1E69E31A0], MEMORY[0x1E69E31A8]);
  v56 = sub_1C6D75B50();
  v58 = v20;

  v57 = OBJC_IVAR____TtC19NewsPersonalization36TopicClusteringJournalStorageService_journalsDirectory;
  sub_1C6D760C0();
  sub_1C6D75F10();
  v22 = v21;
  v24 = *(v8 + 8);
  v23 = v8 + 8;
  v24(v11, v7);
  v25 = v22 * 1000.0;
  if (COERCE__INT64(fabs(v22 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v23 = v61;
  if (v25 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v62 = v25;
  v63 = sub_1C6D7A0E0();
  v64 = v26;
  MEMORY[0x1CCA55B00](45, 0xE100000000000000);
  sub_1C6D75F70();
  v27 = sub_1C6D75F60();
  v29 = v28;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x1CCA55B00](v27, v29);

  v7 = v60;
  sub_1C6D75D50();

  if (qword_1EDCE2068 != -1)
  {
LABEL_27:
    swift_once();
  }

  v57 = qword_1EDCE2070;
  sub_1C6B1D314(0);
  v55[1] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C6D807C0;
  v32 = sub_1C6D760D0();
  v33 = v58;
  if (v32 >> 62)
  {
    v34 = sub_1C6D79E90();
    v23 = v61;
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v34;
  v35 = sub_1C6D7A0E0();
  v37 = v36;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1C6B2064C();
  *(v31 + 64) = v38;
  *(v31 + 32) = v35;
  *(v31 + 40) = v37;
  v63 = 0;
  v64 = 0xE000000000000000;
  v39 = v33 >> 62;
  result = *(v7 + 16);
  if ((v33 >> 62) > 1)
  {
    v40 = 0;
    if (v39 != 2)
    {
      goto LABEL_23;
    }

    v42 = *(v56 + 16);
    v41 = *(v56 + 24);
    v40 = v41 - v42;
    if (!__OFSUB__(v41, v42))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v39)
  {
    v40 = BYTE6(v33);
LABEL_23:
    v43 = [result stringFromByteCount_];
    v44 = sub_1C6D795A0();
    v46 = v45;

    MEMORY[0x1CCA55B00](v44, v46);

    v47 = v63;
    v48 = v64;
    v49 = MEMORY[0x1E69E6158];
    *(v31 + 96) = MEMORY[0x1E69E6158];
    *(v31 + 104) = v38;
    *(v31 + 72) = v47;
    *(v31 + 80) = v48;
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v50 = sub_1C6D7A0E0();
    *(v31 + 136) = v49;
    *(v31 + 144) = v38;
    *(v31 + 112) = v50;
    *(v31 + 120) = v51;
    v52 = sub_1C6D79AC0();
    sub_1C6D78D30("Attempting to store clustering journal with %{public}@ entries and size %{public}@ at %{public}@", 96, 2, &dword_1C6B09000, v57, v52, v31);

    v53 = v23;
    v54 = v56;
    sub_1C6D75E70();
    (*(v59 + 8))(v15, v53);
    sub_1C6B1C9F0(v54, v33);
  }

  if (!__OFSUB__(HIDWORD(v56), v56))
  {
    v40 = HIDWORD(v56) - v56;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C71AC8(uint64_t a1)
{
  result = sub_1C6D75E00();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    sub_1C6D75B10();
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6D760F0();
    sub_1C6B20604(&qword_1EC1D8558, MEMORY[0x1E69E31A0], MEMORY[0x1E69E31B0]);
    sub_1C6D75AF0();
    sub_1C6B1C9F0(v4, v5);

    return v6;
  }

  return result;
}

uint64_t sub_1C6C71E30(uint64_t a1)
{
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCE2070;
  v2 = sub_1C6D79AC0();
  v3 = MEMORY[0x1E69E7CC0];

  return sub_1C6D78D30("NoOpFeedTopicClusteringJournalStorageService given a clustering journal to store..", 82, 2, &dword_1C6B09000, v1, v2, v3);
}

unint64_t sub_1C6C71F08()
{
  result = qword_1EC1D8550;
  if (!qword_1EC1D8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8550);
  }

  return result;
}

void sub_1C6C71F5C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v103 = a1;
  v9 = type metadata accessor for ClusteringJournalEntry(0);
  v111 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v105 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v114 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v100 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v100 - v21;
  v113 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_134;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1C6C73C90(a4);
    }

    v116 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v113)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1C6C7316C(*v113 + *(v111 + 72) * v96, *v113 + *(v111 + 72) * *&v95[16 * a4 + 16], *v113 + *(v111 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1C6C73C90(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v116 = v97;
        sub_1C6C73C04(a4 - 1);
        v95 = v116;
        a4 = *(v116 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v102 = a4;
  v115 = v9;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v106 = v25;
    if (v27 >= v23)
    {
      v23 = v27;
    }

    else
    {
      v28 = *v113;
      v29 = *(v111 + 72);
      v5 = *v113 + v29 * v27;
      sub_1C6B23588(v5, v22);
      sub_1C6B23588(v28 + v29 * v26, v18);
      LODWORD(v110) = sub_1C6D75EE0();
      sub_1C6B19E08(v18, type metadata accessor for ClusteringJournalEntry);
      sub_1C6B19E08(v22, type metadata accessor for ClusteringJournalEntry);
      v101 = v26;
      v30 = v26 + 2;
      v112 = v29;
      v31 = v28 + v29 * v30;
      while (v23 != v30)
      {
        sub_1C6B23588(v31, v22);
        sub_1C6B23588(v5, v18);
        v32 = sub_1C6D75EE0() & 1;
        sub_1C6B19E08(v18, type metadata accessor for ClusteringJournalEntry);
        sub_1C6B19E08(v22, type metadata accessor for ClusteringJournalEntry);
        ++v30;
        v31 += v112;
        v5 += v112;
        if ((v110 & 1) != v32)
        {
          v23 = v30 - 1;
          break;
        }
      }

      v26 = v101;
      a4 = v102;
      if (v110)
      {
        if (v23 < v101)
        {
          goto LABEL_125;
        }

        if (v101 < v23)
        {
          v100 = v6;
          v33 = v112 * (v23 - 1);
          v34 = v23;
          v35 = v23 * v112;
          v110 = v23;
          v36 = v101;
          v37 = v101 * v112;
          do
          {
            if (v36 != --v34)
            {
              v38 = *v113;
              if (!*v113)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_1C6B22BB0(v38 + v37, v105);
              if (v37 < v33 || v5 >= v38 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C6B22BB0(v105, v38 + v33);
            }

            ++v36;
            v33 -= v112;
            v35 -= v112;
            v37 += v112;
          }

          while (v36 < v34);
          v6 = v100;
          v26 = v101;
          a4 = v102;
          v23 = v110;
        }
      }
    }

    v39 = v113[1];
    if (v23 < v39)
    {
      if (__OFSUB__(v23, v26))
      {
        goto LABEL_124;
      }

      if (v23 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_126;
        }

        if ((v26 + a4) >= v39)
        {
          v40 = v113[1];
        }

        else
        {
          v40 = v26 + a4;
        }

        if (v40 < v26)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v23 != v40)
        {
          break;
        }
      }
    }

    v41 = v23;
    if (v23 < v26)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = v106;
    }

    else
    {
      v25 = sub_1C6B657D0(0, *(v106 + 2) + 1, 1, v106);
    }

    a4 = *(v25 + 2);
    v42 = *(v25 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      v25 = sub_1C6B657D0((v42 > 1), a4 + 1, 1, v25);
    }

    *(v25 + 2) = v5;
    v43 = &v25[16 * a4];
    *(v43 + 4) = v26;
    *(v43 + 5) = v41;
    v44 = *v103;
    if (!*v103)
    {
      goto LABEL_133;
    }

    v107 = v41;
    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v25 + 4);
          v47 = *(v25 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v25[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v25[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v25[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v25[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v113)
        {
          goto LABEL_130;
        }

        v83 = v25;
        v84 = *&v25[16 * a4 + 32];
        v5 = *&v25[16 * v45 + 40];
        sub_1C6C7316C(*v113 + *(v111 + 72) * v84, *v113 + *(v111 + 72) * *&v25[16 * v45 + 32], *v113 + *(v111 + 72) * v5, v44);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1C6C73C90(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v116 = v83;
        sub_1C6C73C04(v45);
        v25 = v116;
        v5 = *(v116 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v25[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v25[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v25[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = v113[1];
    v24 = v107;
    a4 = v102;
    if (v107 >= v23)
    {
      goto LABEL_95;
    }
  }

  v100 = v6;
  v86 = v23;
  v87 = v26;
  v88 = *v113;
  v89 = *(v111 + 72);
  v90 = *v113 + v89 * (v23 - 1);
  v91 = -v89;
  v101 = v87;
  v92 = v87 - v23;
  v110 = v86;
  v104 = v89;
  v5 = v88 + v86 * v89;
  v107 = v40;
LABEL_85:
  v108 = v5;
  v109 = v92;
  v112 = v90;
  v93 = v90;
  while (1)
  {
    sub_1C6B23588(v5, v22);
    sub_1C6B23588(v93, v18);
    a4 = sub_1C6D75EE0();
    sub_1C6B19E08(v18, type metadata accessor for ClusteringJournalEntry);
    sub_1C6B19E08(v22, type metadata accessor for ClusteringJournalEntry);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v90 = v112 + v104;
      v92 = v109 - 1;
      v41 = v107;
      v5 = v108 + v104;
      if (++v110 != v107)
      {
        goto LABEL_85;
      }

      v6 = v100;
      v26 = v101;
      if (v107 < v101)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = v114;
    sub_1C6B22BB0(v5, v114);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6B22BB0(a4, v93);
    v93 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1C6C72810(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v114 = a1;
  v8 = type metadata accessor for ClusteringJournalEntry(0);
  v122 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v118 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v125 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v127 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v126 = &v109 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v23 = *v114;
    if (!*v114)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v22 = sub_1C6C73C90(v22);
    }

    v129 = v22;
    v105 = *(v22 + 2);
    if (v105 >= 2)
    {
      while (*a3)
      {
        v106 = *&v22[16 * v105];
        v107 = *&v22[16 * v105 + 24];
        sub_1C6C73678(*a3 + *(v122 + 72) * v106, *a3 + *(v122 + 72) * *&v22[16 * v105 + 16], *a3 + *(v122 + 72) * v107, v23);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v107 < v106)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1C6C73C90(v22);
        }

        if (v105 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v108 = &v22[16 * v105];
        *v108 = v106;
        *(v108 + 1) = v107;
        v129 = v22;
        sub_1C6C73C04(v105 - 1);
        v22 = v129;
        v105 = *(v129 + 2);
        if (v105 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v111 = a4;
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v128 = v8;
  while (1)
  {
    v23 = v21;
    if (v21 + 1 >= v20)
    {
      v32 = v21 + 1;
    }

    else
    {
      v123 = v20;
      v113 = v5;
      v117 = *a3;
      v24 = v117;
      v25 = *(v122 + 72);
      v26 = v117 + v25 * (v21 + 1);
      v27 = v126;
      sub_1C6B23588(v26, v126);
      v28 = v127;
      sub_1C6B23588(v24 + v25 * v21, v127);
      v29 = sub_1C6D75F50();
      v119 = sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v120 = v29;
      LODWORD(v121) = sub_1C6D79540();
      sub_1C6B19E08(v28, type metadata accessor for ClusteringJournalEntry);
      sub_1C6B19E08(v27, type metadata accessor for ClusteringJournalEntry);
      v112 = v21;
      v30 = v21 + 2;
      v124 = v25;
      v31 = v117 + v25 * (v21 + 2);
      while (1)
      {
        v32 = v123;
        if (v123 == v30)
        {
          break;
        }

        v33 = v126;
        sub_1C6B23588(v31, v126);
        v34 = v127;
        sub_1C6B23588(v26, v127);
        v35 = a3;
        v36 = v22;
        v37 = sub_1C6D79540() & 1;
        sub_1C6B19E08(v34, type metadata accessor for ClusteringJournalEntry);
        sub_1C6B19E08(v33, type metadata accessor for ClusteringJournalEntry);
        ++v30;
        v31 += v124;
        v26 += v124;
        v38 = (v121 & 1) == v37;
        v22 = v36;
        a3 = v35;
        if (!v38)
        {
          v32 = v30 - 1;
          break;
        }
      }

      v23 = v112;
      v5 = v113;
      if ((v121 & 1) == 0)
      {
        if (v32 < v112)
        {
          goto LABEL_123;
        }

        if (v112 < v32)
        {
          v110 = v22;
          v39 = v124 * (v32 - 1);
          v40 = v32 * v124;
          v41 = v32;
          v42 = v112;
          v43 = v112 * v124;
          v115 = a3;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!v44)
              {
                goto LABEL_129;
              }

              sub_1C6B22BB0(v44 + v43, v118);
              if (v43 < v39 || v44 + v43 >= (v44 + v40))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C6B22BB0(v118, v44 + v39);
              a3 = v115;
            }

            ++v42;
            v39 -= v124;
            v40 -= v124;
            v43 += v124;
          }

          while (v42 < v41);
          v23 = v112;
          v5 = v113;
          v22 = v110;
        }
      }
    }

    v45 = a3[1];
    if (v32 < v45)
    {
      if (__OFSUB__(v32, v23))
      {
        goto LABEL_122;
      }

      if (v32 - v23 < v111)
      {
        if (__OFADD__(v23, v111))
        {
          goto LABEL_124;
        }

        if (v23 + v111 >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v23 + v111;
        }

        if (v46 < v23)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v32 != v46)
        {
          break;
        }
      }
    }

    v21 = v32;
    if (v32 < v23)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1C6B657D0(0, *(v22 + 2) + 1, 1, v22);
    }

    v48 = *(v22 + 2);
    v47 = *(v22 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v22 = sub_1C6B657D0((v47 > 1), v48 + 1, 1, v22);
    }

    *(v22 + 2) = v49;
    v50 = &v22[16 * v48];
    *(v50 + 4) = v23;
    *(v50 + 5) = v21;
    v23 = *v114;
    if (!*v114)
    {
      goto LABEL_131;
    }

    if (v48)
    {
      while (1)
      {
        v51 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v22 + 4);
          v53 = *(v22 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v22[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v22[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v49 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v22[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v22[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        v89 = v51 - 1;
        if (v51 - 1 >= v49)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v90 = *&v22[16 * v89 + 32];
        v91 = *&v22[16 * v51 + 40];
        sub_1C6C73678(*a3 + *(v122 + 72) * v90, *a3 + *(v122 + 72) * *&v22[16 * v51 + 32], *a3 + *(v122 + 72) * v91, v23);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v91 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1C6C73C90(v22);
        }

        if (v89 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v92 = &v22[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v129 = v22;
        sub_1C6C73C04(v51);
        v22 = v129;
        v49 = *(v129 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v22[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v22[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v22[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v49 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    if (v21 >= v20)
    {
      goto LABEL_94;
    }
  }

  v110 = v22;
  v113 = v5;
  v115 = a3;
  v93 = *a3;
  sub_1C6D75F50();
  v94 = *(v122 + 72);
  v95 = v93 + v94 * (v32 - 1);
  v96 = -v94;
  v112 = v23;
  v97 = v23 - v32;
  v124 = v93;
  v116 = v94;
  v117 = v46;
  v98 = v93 + v32 * v94;
LABEL_85:
  v123 = v32;
  v119 = v98;
  v120 = v97;
  v121 = v95;
  v99 = v95;
  while (1)
  {
    v100 = v126;
    sub_1C6B23588(v98, v126);
    v101 = v127;
    sub_1C6B23588(v99, v127);
    sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v102 = sub_1C6D79540();
    sub_1C6B19E08(v101, type metadata accessor for ClusteringJournalEntry);
    sub_1C6B19E08(v100, type metadata accessor for ClusteringJournalEntry);
    if (v102)
    {
LABEL_84:
      v32 = v123 + 1;
      v21 = v117;
      v95 = v121 + v116;
      v97 = v120 - 1;
      v98 = v119 + v116;
      if (v123 + 1 != v117)
      {
        goto LABEL_85;
      }

      v23 = v112;
      v5 = v113;
      a3 = v115;
      v22 = v110;
      if (v117 < v112)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v124)
    {
      break;
    }

    v103 = v125;
    sub_1C6B22BB0(v98, v125);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6B22BB0(v103, v99);
    v99 += v96;
    v98 += v96;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1C6C7316C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for ClusteringJournalEntry(0);
  MEMORY[0x1EEE9AC00](v46, v8);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v44 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_59;
          }

          v38 = v24;
          v30 = a3 + v25;
          v31 = v26 + v25;
          v32 = v44;
          sub_1C6B23588(v31, v44);
          v33 = v45;
          sub_1C6B23588(v28, v45);
          v34 = sub_1C6D75EE0();
          sub_1C6B19E08(v33, type metadata accessor for ClusteringJournalEntry);
          sub_1C6B19E08(v32, type metadata accessor for ClusteringJournalEntry);
          if (v34)
          {
            break;
          }

          v24 = v31;
          if (a3 < v26 || v30 >= v26)
          {
            a3 = v30;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v40;
          }

          else
          {
            v35 = a3 == v26;
            a3 = v30;
            a1 = v40;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v31;
          v27 = v42;
          v29 = v31 > v41;
          v28 = v43;
          v25 = v39;
          if (!v29)
          {
            a2 = v42;
            goto LABEL_58;
          }
        }

        if (a3 < v42 || v30 >= v42)
        {
          a3 = v30;
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          v35 = a3 == v42;
          a3 = v30;
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (!v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_58:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v44;
        sub_1C6B23588(a2, v44);
        v22 = v45;
        sub_1C6B23588(a4, v45);
        v23 = sub_1C6D75EE0();
        sub_1C6B19E08(v22, type metadata accessor for ClusteringJournalEntry);
        sub_1C6B19E08(v21, type metadata accessor for ClusteringJournalEntry);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v49 = a1;
      }

      while (a4 < v43 && a2 < a3);
    }
  }

LABEL_59:
  sub_1C6C73CD4(&v49, &v48, &v47, type metadata accessor for ClusteringJournalEntry);
}

void sub_1C6C73678(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for ClusteringJournalEntry(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v47 = &v38 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_59;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v17 = (a2 - a1) / v15;
  v51 = a1;
  v50 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v19;
    if (v19 >= 1)
    {
      v27 = v8;
      v28 = -v15;
      v29 = v26;
      v42 = a1;
      v43 = a4;
      v41 = -v15;
      do
      {
        v39 = v26;
        v30 = a2 + v28;
        v45 = a2;
        v46 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v51 = a2;
            v49 = v39;
            goto LABEL_57;
          }

          v32 = a3;
          v40 = v26;
          a3 += v28;
          v33 = v29 + v28;
          v34 = v47;
          sub_1C6B23588(v29 + v28, v47);
          v35 = v48;
          sub_1C6B23588(v30, v48);
          v36 = v27;
          sub_1C6D75F50();
          sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          v37 = sub_1C6D79540();
          sub_1C6B19E08(v35, type metadata accessor for ClusteringJournalEntry);
          sub_1C6B19E08(v34, type metadata accessor for ClusteringJournalEntry);
          if ((v37 & 1) == 0)
          {
            break;
          }

          v26 = v29 + v28;
          if (v32 < v29 || a3 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v41;
            a1 = v42;
          }

          else
          {
            v28 = v41;
            a1 = v42;
            if (v32 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v36;
          v29 = v33;
          v31 = v33 > v43;
          a2 = v45;
          v30 = v46;
          if (!v31)
          {
            goto LABEL_55;
          }
        }

        if (v32 < v45 || a3 >= v45)
        {
          a2 = v46;
          v27 = v36;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
          a1 = v42;
          v26 = v40;
        }

        else
        {
          v27 = v36;
          a2 = v46;
          v28 = v41;
          a1 = v42;
          v26 = v40;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v29 > v43);
    }

LABEL_55:
    v51 = a2;
    v49 = v26;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v18;
    v49 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v44 = v8;
      v45 = a3;
      do
      {
        v21 = v47;
        sub_1C6B23588(a2, v47);
        v22 = a2;
        v23 = v48;
        sub_1C6B23588(a4, v48);
        sub_1C6D75F50();
        sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v24 = sub_1C6D79540();
        sub_1C6B19E08(v23, type metadata accessor for ClusteringJournalEntry);
        sub_1C6B19E08(v21, type metadata accessor for ClusteringJournalEntry);
        if (v24)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v45;
            a2 = v22;
          }

          else
          {
            v25 = v45;
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v15;
          a4 += v15;
        }

        else
        {
          a2 = v22 + v15;
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v45;
          }

          else
          {
            v25 = v45;
            if (a1 != v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v15;
        v51 = a1;
      }

      while (a4 < v46 && a2 < v25);
    }
  }

LABEL_57:
  sub_1C6C73CD4(&v51, &v50, &v49, type metadata accessor for ClusteringJournalEntry);
}

uint64_t sub_1C6C73C04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C6C73C90(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C6C73CD4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1C6C73E1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B206A0(0, &qword_1EDCE6450, sub_1C6B68A4C, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1C6C7405C(uint64_t a1, void *a2)
{
  sub_1C6D75DE0();

  sub_1C6C70814(a1, a2);
}

uint64_t sub_1C6C740DC()
{
  sub_1C6B7E734(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v64 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7E910(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D76740();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v68 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7EAA4(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v67 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B206A0(0, &qword_1EDCE6280, MEMORY[0x1E69E3480], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v79 = v57 - v14;
  v15 = sub_1C6D76730();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v77 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D76700();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v73 = v57 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v74 = v57 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v75 = v57 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v76 = v57 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v65 = v57 - v36;
  v37 = sub_1C6D76770();
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v78 = v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7EC90(0);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v66 = v57 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C6D76780();
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v63 = v57 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C6D760B0();
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v62 = v57 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 104))(v48);
  v59 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76720();
  v72 = sub_1C6D766C0();
  v51 = *(v72 - 8);
  v52 = *(v51 + 56);
  v70 = v51 + 56;
  v71 = v52;
  v52(v79, 1, 1, v72);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v80 = v21;
  sub_1C6D766F0();
  v58 = sub_1C6D76680();
  sub_1C6D76690();
  sub_1C6D766A0();
  sub_1C6D76670();
  sub_1C6D76640();
  sub_1C6D76650();
  sub_1C6D766B0();
  sub_1C6D76660();
  sub_1C6B20604(&qword_1EDCE6288, MEMORY[0x1E69E3478], MEMORY[0x1E69E3470]);
  sub_1C6B20604(&qword_1EDCE6290, MEMORY[0x1E69E3448], MEMORY[0x1E69E3440]);
  v53 = v79;
  sub_1C6D766D0();
  v59 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76720();
  v71(v53, 1, 1, v72);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v58 = sub_1C6D76580();
  v57[1] = sub_1C6D76590();
  sub_1C6D765A0();
  sub_1C6D76570();
  sub_1C6D76540();
  sub_1C6D76550();
  sub_1C6D765B0();
  sub_1C6D76560();
  sub_1C6B20604(&qword_1EDCE62A8, MEMORY[0x1E69E33D8], MEMORY[0x1E69E33D0]);
  sub_1C6B20604(&qword_1EDCE62B0, MEMORY[0x1E69E33A8], MEMORY[0x1E69E33A0]);
  sub_1C6D766D0();
  (*(v60 + 104))(v68, *MEMORY[0x1E69E34D0], v61);
  v54 = MEMORY[0x1E69E7CC0];
  v61 = sub_1C6B60950(MEMORY[0x1E69E7CC0]);
  v60 = sub_1C6B6061C(v54);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76720();
  v71(v53, 1, 1, v72);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v59 = sub_1C6D76600();
  sub_1C6D76610();
  sub_1C6D76620();
  sub_1C6D765F0();
  sub_1C6D765C0();
  sub_1C6D765D0();
  sub_1C6D76630();
  sub_1C6D765E0();
  sub_1C6B20604(&qword_1EDCE6298, MEMORY[0x1E69E3428], MEMORY[0x1E69E3420]);
  sub_1C6B20604(&qword_1EDCE62A0, MEMORY[0x1E69E33F8], MEMORY[0x1E69E33F0]);
  v55 = v79;
  sub_1C6D766D0();
  v60 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76720();
  v71(v55, 1, 1, v72);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v72 = sub_1C6D76460();
  sub_1C6D76470();
  sub_1C6D76480();
  sub_1C6D76450();
  sub_1C6D76430();
  sub_1C6D76440();
  sub_1C6D76490();
  sub_1C6D764A0();
  sub_1C6B20604(&qword_1EDCE62D0, MEMORY[0x1E69E3328], MEMORY[0x1E69E3320]);
  sub_1C6B20604(&qword_1EDCE62C8, MEMORY[0x1E69E3338], MEMORY[0x1E69E3330]);
  sub_1C6D766D0();
  sub_1C6D764B0();
  sub_1C6D760F0();
  swift_allocObject();
  return sub_1C6D760E0();
}

void sub_1C6C74F64(uint64_t a1)
{
  if (!qword_1EDCDFCD0)
  {
    sub_1C6B0C69C(255, &qword_1EDCDF8F0, 0x1E69B5580);
    v1 = sub_1C6D790C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDFCD0);
    }
  }
}

uint64_t sub_1C6C74FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6C75034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t UserEventHistorySessionUnarchiver.unarchive(session:)()
{
  v1 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D78FB0();
  if (v8 >> 60 == 15)
  {
    sub_1C6C7534C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v16 = v7;
    v17 = v8;
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v10 = v7;
    v11 = v8;
    sub_1C6B1CD10(v7, v8);
    sub_1C6D78A70();
    sub_1C6C756F8(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSession);
    sub_1C6D78C00();
    if (v0)
    {
      return sub_1C6B75B88(v10, v11);
    }

    else
    {
      v12 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
      MEMORY[0x1EEE9AC00](v12, v13);
      *&v14[-1] = v6;
      sub_1C6C756F8(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session, &protocol conformance descriptor for Com_Apple_News_Personalization_Session);
      sub_1C6D78C30();
      sub_1C6B75B88(v10, v11);
      return sub_1C6C75740(v6, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
    }
  }
}

unint64_t sub_1C6C7534C()
{
  result = qword_1EC1D8560;
  if (!qword_1EC1D8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8560);
  }

  return result;
}

uint64_t RecipeUserEventHistorySessionUnarchiver.unarchive(session:)()
{
  v1 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = type metadata accessor for Com_Apple_News_Personalization_Envelope(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D78FB0();
  if (v10 >> 60 == 15)
  {
    sub_1C6C756A4();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v18 = v9;
    v19 = v10;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v12 = v9;
    v13 = v10;
    sub_1C6B1CD10(v9, v10);
    sub_1C6D78A70();
    sub_1C6C756F8(&qword_1EC1D6F98, type metadata accessor for Com_Apple_News_Personalization_Envelope, &protocol conformance descriptor for Com_Apple_News_Personalization_Envelope);
    sub_1C6D78C00();
    if (!v0)
    {
      type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
      v14 = *(v8 + 2);
      v18 = *(v8 + 1);
      v19 = v14;
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      sub_1C6B1CD10(v18, v14);
      sub_1C6D78A70();
      sub_1C6C756F8(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSession);
      sub_1C6D78C00();
      sub_1C6C75740(v8, type metadata accessor for Com_Apple_News_Personalization_Envelope);
    }

    return sub_1C6B75B88(v12, v13);
  }
}

unint64_t sub_1C6C756A4()
{
  result = qword_1EC1D8568;
  if (!qword_1EC1D8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8568);
  }

  return result;
}

uint64_t sub_1C6C756F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C75740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C6C75834()
{
  result = qword_1EC1D8570;
  if (!qword_1EC1D8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8570);
  }

  return result;
}

unint64_t sub_1C6C7588C()
{
  result = qword_1EC1D8578;
  if (!qword_1EC1D8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8578);
  }

  return result;
}

uint64_t sub_1C6C758F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void (*a6)(_OWORD *, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, float a9@<S0>)
{
  v147 = a7;
  v157 = a6;
  v150 = a4;
  v160 = a3;
  v163 = a2;
  sub_1C6C76A88(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v153 = &v141 - v15;
  v152 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v16);
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C76A88(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v144 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v149 = &v141 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v158 = (&v141 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v143 = &v141 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v146 = &v141 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v148 = &v141 - v36;
  v156 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v156, v37);
  v159 = &v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v141 - v41;
  sub_1C6C76A88(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v155 = &v141 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v154 = &v141 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v141 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v141 - v55;
  v162 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v57 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v141 - v63;
  MEMORY[0x1EEE9AC00](v65, v66);
  v70 = &v141 - v69;
  v161 = a5;
  v71 = *a5;
  v72 = a5[1];
  *a8 = v71;
  *(a8 + 8) = v72;
  v73 = v163;
  v163 = a8;
  v74 = v160;
  *(a8 + 16) = v73;
  *(a8 + 24) = v74;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v141 = v68;
  v142 = v67;
  v145 = v18;
  v75 = v163;
  *(v163 + 140) = a1;
  *(v75 + 144) = a9;
  v160 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6C76ADC(v161 + v160, v56, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v76 = *(v57 + 48);
  if (v76(v56, 1, v162) == 1)
  {

    sub_1C6C76B48(v56, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v77 = 0;
    v78 = 1;
    v70 = v156;
  }

  else
  {
    sub_1C6C76CD0(v56, v70, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v70, v64, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v64, v42, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v70 = v156;
    v79 = *&v42[v156[5]] + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
    swift_beginAccess();
    v77 = *v79;
    v78 = *(v79 + 8);

    sub_1C6C76C70(v42, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v165 = v77;
  v166 = v78;
  v80 = Com_Apple_News_Personalization_GroupType.string.getter();
  if (v81)
  {
    v82 = v80;
  }

  else
  {
    v82 = 0;
  }

  v83 = 0xE000000000000000;
  if (v81)
  {
    v83 = v81;
  }

  a8 = v163;
  *(v163 + 32) = v82;
  *(a8 + 40) = v83;
  v84 = v161;
  sub_1C6C76ADC(v161 + v160, v52, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if (v76(v52, 1, v162) == 1)
  {
    sub_1C6C76B48(v52, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v85 = 0;
    v86 = 1;
  }

  else
  {
    v87 = v141;
    sub_1C6C76CD0(v52, v141, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v87, v64, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v64, v42, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v88 = *&v42[*(v70 + 5)] + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
    swift_beginAccess();
    v85 = *v88;
    v86 = *(v88 + 8);
    sub_1C6C76C70(v42, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v165 = v85;
  v166 = v86;
  v89 = Com_Apple_News_Personalization_FeedType.string.getter();
  if (v90)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0;
  }

  v92 = 0xE000000000000000;
  if (v90)
  {
    v92 = v90;
  }

  *(a8 + 48) = v91;
  *(a8 + 56) = v92;
  v93 = v154;
  sub_1C6C76ADC(v84 + v160, v154, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if (v76(v93, 1, v162) == 1)
  {
    sub_1C6C76B48(v93, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v94 = 0;
    v95 = 1;
  }

  else
  {
    v96 = v93;
    v97 = v142;
    sub_1C6C76CD0(v96, v142, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v97, v64, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v64, v42, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v98 = *&v42[*(v70 + 5)] + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
    swift_beginAccess();
    v94 = *v98;
    v95 = *(v98 + 8);
    sub_1C6C76C70(v42, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v64 = v159;
  v165 = v94;
  v166 = v95;
  v99 = sub_1C6C26E00();
  if (v100)
  {
    v101 = v99;
  }

  else
  {
    v101 = 0;
  }

  v102 = 0xE000000000000000;
  if (v100)
  {
    v102 = v100;
  }

  *(a8 + 64) = v101;
  *(a8 + 72) = v102;
  v103 = v155;
  sub_1C6C76ADC(v84 + v160, v155, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if (v76(v103, 1, v162) != 1)
  {
    sub_1C6C76CD0(v103, v64, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v72 = v157;
    goto LABEL_31;
  }

  sub_1C6C76B48(v103, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D78A30();
  a1 = *(v70 + 5);
  v72 = v157;
  if (qword_1EDCE41F8 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *&v64[a1] = qword_1EDCE4200;

LABEL_31:
    v104 = *&v64[*(v70 + 5)];
    swift_beginAccess();
    v105 = v104[2];

    v106 = sub_1C6C0861C(v72, v105);

    v108 = *(v106 + 16);
    if (v108 != v72)
    {
      break;
    }

LABEL_34:
    *(a8 + 80) = v106;
    v110 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    *(a8 + 88) = *(v104 + v110);
    swift_beginAccess();
    v72 = v104[4];
    *(a8 + 96) = v104[3];
    *(a8 + 104) = v72;
    a1 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
    swift_beginAccess();
    v111 = *(v104 + a1);
    if ((v111 & 0x80000000) == 0)
    {
      *(a8 + 112) = v111;
      *(a8 + 152) = v147;
      v112 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
      swift_beginAccess();
      v113 = v146;
      sub_1C6C76ADC(v104 + v112, v146, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v114 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
      v160 = *(v114 - 8);
      v115 = *(v160 + 48);
      v116 = 1;
      v162 = v114;
      v117 = v115(v113, 1);

      sub_1C6C76B48(v113, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v118 = v148;
      if (v117 != 1)
      {
        v119 = v143;
        sub_1C6C76ADC(v104 + v112, v143, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((v115)(v119, 1, v162) == 1)
        {
          *v118 = xmmword_1C6D7F510;
          v120 = v162;
          sub_1C6D78A30();
          if ((v115)(v119, 1, v120) != 1)
          {
            sub_1C6C76B48(v119, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }

          v116 = 0;
        }

        else
        {
          sub_1C6C76CD0(v119, v118, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v116 = 0;
        }
      }

      v121 = *(v160 + 56);
      v122 = 1;
      v123 = v162;
      v160 += 56;
      v157 = v121;
      v121(v118, v116, 1, v162);
      v156 = type metadata accessor for EventArticleFeatures(0);
      v124 = v163;
      sub_1C6C76BF0(v118, v163 + v156[23]);
      *(v124 + 160) = v150;
      v125 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
      swift_beginAccess();
      v126 = v149;
      sub_1C6C76ADC(v104 + v125, v149, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      LODWORD(v123) = (v115)(v126, 1, v123);
      sub_1C6C76B48(v126, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v127 = v123 == 1;
      v128 = v145;
      v129 = v161;
      v130 = v151;
      if (!v127)
      {
        v131 = v144;
        sub_1C6C76ADC(v104 + v125, v144, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((v115)(v131, 1, v162) == 1)
        {
          *v158 = xmmword_1C6D7F510;
          v132 = v162;
          sub_1C6D78A30();
          if ((v115)(v131, 1, v132) != 1)
          {
            sub_1C6C76B48(v131, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }
        }

        else
        {
          sub_1C6C76CD0(v131, v158, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        v122 = 0;
      }

      v133 = v158;
      v157(v158, v122, 1, v162);
      sub_1C6C76BF0(v133, v163 + v156[24]);
      v134 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
      swift_beginAccess();
      v135 = v153;
      sub_1C6C76ADC(v104 + v134, v153, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      v136 = *(v130 + 48);
      v137 = v152;
      if (v136(v135, 1, v152) == 1)
      {
        *(v128 + 3) = 0;
        *v128 = 0;
        sub_1C6D78A30();
        sub_1C6C76C70(v129, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        if (v136(v135, 1, v137) != 1)
        {
          sub_1C6C76B48(v135, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        }
      }

      else
      {
        sub_1C6C76C70(v129, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        sub_1C6C76CD0(v135, v128, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      }

      sub_1C6C76C70(v159, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v138 = v163;
      if (*v128)
      {
        *(v163 + 116) = 1;
        if ((*(v128 + 1) & 1) == 0)
        {
          goto LABEL_53;
        }

LABEL_58:
        v138[30] = 1;
        if (*(v128 + 3))
        {
          goto LABEL_59;
        }

LABEL_54:
        v138[31] = 0;
        if ((*(v128 + 4) & 1) == 0)
        {
          goto LABEL_55;
        }

LABEL_60:
        v139 = 1;
        v138[32] = 1;
        if ((*(v128 + 6) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *(v163 + 116) = 0;
        if (*(v128 + 1))
        {
          goto LABEL_58;
        }

LABEL_53:
        v138[30] = 0;
        if ((*(v128 + 3) & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_59:
        v138[31] = 1;
        if (*(v128 + 4))
        {
          goto LABEL_60;
        }

LABEL_55:
        v138[32] = 0;
        if (*(v128 + 6))
        {
          v139 = 1;
        }

        else
        {
LABEL_61:
          v139 = 0;
        }
      }

      v138[33] = v139;
      v140 = *(v128 + 5);
      result = sub_1C6C76C70(v128, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      v138[34] = v140;
      return result;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  if (!__OFSUB__(v72, v108))
  {
    v109 = sub_1C6BFE220(0, 0xE000000000000000, v72 - v108);
    v164 = v106;
    sub_1C6B38560(v109);
    v106 = v164;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_1C6C76A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6C76ADC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C76A88(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C76B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C76A88(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for EventArticleFeatures(uint64_t a1)
{
  result = qword_1EDCE7370;
  if (!qword_1EDCE7370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C76BF0(uint64_t a1, uint64_t a2)
{
  sub_1C6C76A88(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C76C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C76CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6C76D60(uint64_t a1)
{
  sub_1C6B855D0();
  if (v1 <= 0x3F)
  {
    sub_1C6C76A88(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ArticleUnsaveEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AF0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleUnsaveEvent.Model.isANF.getter()
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
  sub_1C6D77AF0();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6C782C4(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
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

uint64_t ArticleUnsaveEvent.Model.isPaid.getter()
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
  sub_1C6D77AF0();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6C782C4(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
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

uint64_t ArticleUnsaveEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B00();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUnsaveEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C775C0(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
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

uint64_t sub_1C6C776CC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77AF0();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleUnsaveEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
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
  sub_1C6D77B10();
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

uint64_t ArticleUnsaveEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
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
  sub_1C6D77B30();
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

uint64_t ArticleUnsaveEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
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
  sub_1C6D77B20();
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

uint64_t sub_1C6C78004(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77AF0();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleUnsaveEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77B30();
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

uint64_t sub_1C6C782C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C78364()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AF0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6C78464()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B00();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUnsaveEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C785B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77AF0();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6C786D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
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

uint64_t sub_1C6C787DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77AF0();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6C788C8()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77B30();
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

uint64_t sub_1C6C78A18(uint64_t result, uint64_t a2)
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
    v8 = sub_1C6C78DA0(2 * a2);
    v9 = v5;
    sub_1C6C78A90(&v8, 0);
    v6 = v8;
    v7 = v9;
    result = sub_1C6B1C9F0(*v4, *(v4 + 8));
    *v4 = v6;
    *(v4 + 8) = v7;
  }

  return result;
}

uint64_t *sub_1C6C78A90(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1C6B1C9F0(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1C6D7F510;
      sub_1C6B1C9F0(0, 0xC000000000000000);
      result = sub_1C6C78CF8(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_1C6B1C9F0(v5, v4);
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

  sub_1C6B1C9F0(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1C6D7F510;
  sub_1C6B1C9F0(0, 0xC000000000000000);
  sub_1C6D75DF0();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_1C6D75BF0();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1C6D75C20();
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

  v17 = sub_1C6D75C10();
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

uint64_t sub_1C6C78CF8(int *a1, int a2)
{
  result = sub_1C6D75E10();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C6D75BF0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1C6D75C20();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1C6D75C10();
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

uint64_t sub_1C6C78DA0(uint64_t result)
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
      sub_1C6D75C40();
      swift_allocObject();
      sub_1C6D75C00();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C6D75E30();
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

id static OS_os_log.tabiUserEventHistoryScoring.getter()
{
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCEA540;

  return v1;
}

uint64_t sub_1C6C78E9C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE7188 = result;
  return result;
}

uint64_t sub_1C6C78F74()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D8588 = result;
  return result;
}

uint64_t sub_1C6C7904C()
{
  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE9D40 = result;
  return result;
}

uint64_t sub_1C6C790D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCDFFF0 = result;
  return result;
}

uint64_t sub_1C6C791B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE2368 = result;
  return result;
}

uint64_t sub_1C6C7928C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE7930 = result;
  return result;
}

uint64_t sub_1C6C793B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCEA6A8 = result;
  return result;
}

uint64_t sub_1C6C79488()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D85A0 = result;
  return result;
}

uint64_t sub_1C6C79560()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE0568 = result;
  return result;
}

uint64_t sub_1C6C79638()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE03C0 = result;
  return result;
}

uint64_t sub_1C6C79710()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE1AD8 = result;
  return result;
}

uint64_t sub_1C6C79814()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE18F8 = result;
  return result;
}

uint64_t sub_1C6C798EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE0C60 = result;
  return result;
}

uint64_t sub_1C6C799F0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D85B0 = result;
  return result;
}

uint64_t sub_1C6C79AC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D85B8 = result;
  return result;
}

void *sub_1C6C79BCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  off_1EDCE18E8 = result;
  return result;
}

uint64_t sub_1C6C79CBC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE96D0 = result;
  return result;
}

uint64_t sub_1C6C79D94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D85C0 = result;
  return result;
}

BOOL sub_1C6C79EE0(uint64_t a1)
{
  if (qword_1EDCE96C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCE96D0;
  v2 = sub_1C6D79A90();
  result = os_log_type_enabled(v1, v2);
  v4 = nullsub_1;
  if (result)
  {
    v4 = sub_1C6C79F7C;
  }

  qword_1EDCF0300 = v4;
  *algn_1EDCF0308 = 0;
  return result;
}

uint64_t sub_1C6C79F7C(uint64_t (*a1)(void))
{
  if (qword_1EDCE96C8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDCE96D0;
  v3 = sub_1C6D79A90();
  sub_1C6B1D314(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = a1();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C6B2064C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1C6D78D30("%@", 2, 2, &dword_1C6B09000, v2, v3, v4);
}

void sub_1C6C7A078(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v33[1] = a2;
  v8 = sub_1C6D77BD0();
  v33[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C7A4D0(0);
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
      sub_1C6C7A564(&qword_1EC1D8008, MEMORY[0x1E69B4988], MEMORY[0x1E69B4998]);
      v26 = v34;
      sub_1C6D75AF0();
      a5[3] = v8;
      v28 = MEMORY[0x1E69B4988];
      a5[4] = sub_1C6C7A564(&qword_1EC1D85D0, MEMORY[0x1E69B4988], &protocol conformance descriptor for ArticleDislikeEvent.Model);
      a5[5] = sub_1C6C7A564(&qword_1EC1D85D8, v28, &protocol conformance descriptor for ArticleDislikeEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a5);
      (*(v33[0] + 32))(boxed_opaque_existential_2, v26, v8);
      sub_1C6B1C9F0(v23, v25);
      v30 = *MEMORY[0x1E69E3670];
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

void sub_1C6C7A4D0(uint64_t a1)
{
  if (!qword_1EDCE6050)
  {
    sub_1C6D77BE0();
    sub_1C6C7A564(&qword_1EDCE5ED0, MEMORY[0x1E69B49A0], MEMORY[0x1E69B4970]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6050);
    }
  }
}

uint64_t sub_1C6C7A564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(uint64_t a1)
{
  result = qword_1EDCE4A10;
  if (!qword_1EDCE4A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagFollowed.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  sub_1C6D78A40();
  sub_1C6C7B0BC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C7A8D8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D85E0);
  __swift_project_value_buffer(v0, qword_1EC1D85E0);
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

uint64_t static Com_Apple_News_Personalization_SessionEventTagFollowed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D85E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6D78CC0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  sub_1C6C7B0BC(&qword_1EC1D85F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C7ACAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C7B0BC(&qword_1EC1D8610, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C7AD28@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D85E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C7ADD0(uint64_t a1)
{
  v2 = sub_1C6C7B0BC(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C7AE3C(uint64_t a1, uint64_t a2)
{
  sub_1C6C7B0BC(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);

  return sub_1C6D78C20();
}

uint64_t sub_1C6C7AFD8(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6C7B0BC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C7B0BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C7B104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  v114 = a3;
  v118 = a2;
  v106 = sub_1C6D76950();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v9);
  v105 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1C6D768B0();
  v115 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v11);
  v110 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D775C0();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v116 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v117 = &v100 - v18;
  v112 = sub_1C6D77C10();
  v120 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v19);
  v113 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v100 - v23;
  v119 = sub_1C6D77880();
  v109 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v25);
  v125 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA1AC0(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C6D77290();
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  (*(v37 + 16))(&v100 - v36, a1, v33, v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = sub_1C6D76F90();
    (*(*(v43 - 8) + 56))(a6, 1, 1, v43);
    return;
  }

  v103 = a6;
  (*(v29 + 8))(v32, v28);
  v38 = sub_1C6D77270();
  v39 = sub_1C6D77330();
  v41 = v40;

  if (!v6)
  {
    sub_1C6BA1B54(&qword_1EC1D6A30, MEMORY[0x1E69B47B0], MEMORY[0x1E69B47C0]);
    v42 = v119;
    sub_1C6D75AF0();
    v118 = 0;
    v101 = v39;
    sub_1C6D77840();
    sub_1C6D77BF0();
    v44 = *(v120 + 8);
    v45 = v112;
    v120 += 8;
    v102 = v44;
    v44(v24, v112);
    v47 = v107;
    v46 = v108;
    (*(v107 + 104))(v116, *MEMORY[0x1E69B4640], v108);
    sub_1C6BA1B54(&qword_1EC1D71C8, MEMORY[0x1E69B4648], MEMORY[0x1E69B4650]);
    sub_1C6D796F0();
    sub_1C6D796F0();
    if (v123 == v121 && v124 == v122)
    {
      v48 = *(v47 + 8);
      v48(v116, v46);
      v48(v117, v46);

      v49 = v113;
    }

    else
    {
      v50 = sub_1C6D7A130();
      v51 = *(v47 + 8);
      v51(v116, v46);
      v51(v117, v46);

      v52 = v103;
      v49 = v113;
      if ((v50 & 1) == 0)
      {
        (*(v109 + 8))(v125, v42);
        sub_1C6B1C9F0(v101, v41);
        v93 = sub_1C6D76F90();
        (*(*(v93 - 8) + 56))(v52, 1, 1, v93);
        return;
      }
    }

    v117 = v41;
    v53 = v125;
    sub_1C6D77840();
    v54 = sub_1C6D77C00();
    v102(v49, v45);
    v55 = v110;
    sub_1C6D76A00();
    v56 = sub_1C6D768A0();
    v57 = v55;
    v58 = *(v115 + 8);
    v115 += 8;
    v58(v57, v111);
    if (v56 >= v54)
    {
      if (qword_1EDCE03B8 != -1)
      {
        swift_once();
      }

      v78 = qword_1EDCE03C0;
      sub_1C6B1D314(0);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1C6D7EB10;
      v80 = v113;
      sub_1C6D77840();
      v81 = sub_1C6D77C00();
      v102(v80, v45);
      v123 = v81;
      v82 = sub_1C6D7A0E0();
      v84 = v83;
      v85 = MEMORY[0x1E69E6158];
      *(v79 + 56) = MEMORY[0x1E69E6158];
      v86 = sub_1C6B2064C();
      *(v79 + 64) = v86;
      *(v79 + 32) = v82;
      *(v79 + 40) = v84;
      v87 = v110;
      sub_1C6D76A00();
      v88 = sub_1C6D768A0();
      v58(v87, v111);
      v123 = v88;
      v89 = sub_1C6D7A0E0();
      *(v79 + 96) = v85;
      *(v79 + 104) = v86;
      *(v79 + 72) = v89;
      *(v79 + 80) = v90;
      v91 = sub_1C6D79AC0();
      sub_1C6D78D30("AudioEngageEvent seen, but failed track visited duration requirement to become trackListened action. See time played as %{public}@ but required %{public}@", 154, 2, &dword_1C6B09000, v78, v91, v79);
      sub_1C6B1C9F0(v101, v117);

      (*(v109 + 8))(v53, v119);
      goto LABEL_17;
    }

    sub_1C6D77840();
    v59 = sub_1C6D77C00();
    v60 = v102;
    v102(v49, v45);
    v61 = v105;
    sub_1C6D76A20();
    v62 = sub_1C6D768A0();
    v63 = *(v104 + 8);
    v63(v61, v106);
    if (v59 < v62)
    {
      v64 = v117;
      if (qword_1EDCE03B8 != -1)
      {
        swift_once();
      }

      v116 = qword_1EDCE03C0;
      sub_1C6B1D314(0);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1C6D7EB10;
      v66 = v113;
      sub_1C6D77840();
      v67 = sub_1C6D77C00();
      v60(v66, v112);
      v123 = v67;
      v68 = sub_1C6D7A0E0();
      v70 = v69;
      v71 = MEMORY[0x1E69E6158];
      *(v65 + 56) = MEMORY[0x1E69E6158];
      v72 = sub_1C6B2064C();
      *(v65 + 64) = v72;
      *(v65 + 32) = v68;
      *(v65 + 40) = v70;
      v73 = v105;
      sub_1C6D76A20();
      v74 = sub_1C6D768A0();
      v63(v73, v106);
      v123 = v74;
      v75 = sub_1C6D7A0E0();
      *(v65 + 96) = v71;
      *(v65 + 104) = v72;
      *(v65 + 72) = v75;
      *(v65 + 80) = v76;
      v77 = sub_1C6D79AC0();
      sub_1C6D78D30("AudioEngageEvent seen, but failed track listened duration requirement to become trackListened action. See time played as %{public}@ but required %{public}@", 155, 2, &dword_1C6B09000, v116, v77, v65);
      sub_1C6B1C9F0(v101, v64);

      (*(v109 + 8))(v53, v119);
LABEL_17:
      v92 = sub_1C6D76F90();
      (*(*(v92 - 8) + 56))(v103, 1, 1, v92);
      return;
    }

    v94 = v103;
    v103[3] = v42;
    v95 = MEMORY[0x1E69B47B0];
    v94[4] = sub_1C6BA1B54(&qword_1EC1D71D0, MEMORY[0x1E69B47B0], &protocol conformance descriptor for AudioEngageEvent.Model);
    v94[5] = sub_1C6BA1B54(&qword_1EC1D71D8, v95, &protocol conformance descriptor for AudioEngageEvent.Model);
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v94);
    (*(v109 + 32))(boxed_opaque_existential_2, v53, v42);
    sub_1C6B1C9F0(v101, v117);
    v97 = *MEMORY[0x1E69E3620];
    v98 = sub_1C6D76F90();
    v99 = *(v98 - 8);
    (*(v99 + 104))(v94, v97, v98);
    (*(v99 + 56))(v94, 0, 1, v98);
  }
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.encodingName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.encodingName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.float16List.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  sub_1C6C7C034(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6C150B4(v6, a1);
  }

  *a1 = xmmword_1C6D7F510;
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C7C0C8(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(uint64_t a1)
{
  result = qword_1EC1D8650;
  if (!qword_1EC1D8650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C7C034(uint64_t a1, uint64_t a2)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C7C0C8(uint64_t a1)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C7C154@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  sub_1C6C7C034(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6C150B4(v7, a2);
  }

  *a2 = xmmword_1C6D7F510;
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C7C0C8(v7);
  }

  return result;
}

uint64_t sub_1C6C7C2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C7C754(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0) + 24);
  sub_1C6C7C0C8(a2 + v9);
  sub_1C6C150B4(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.float16List.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0) + 24);
  sub_1C6C7C0C8(v1 + v3);
  sub_1C6C150B4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.float16List.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
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
  v16 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6C7C034(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C7C0C8(v9);
    }
  }

  else
  {
    sub_1C6C150B4(v9, v15);
  }

  return sub_1C6C7C648;
}

void sub_1C6C7C648(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1C6C7C754((*a1)[5], v5);
    sub_1C6C7C0C8(v10 + v4);
    sub_1C6C150B4(v5, v10 + v4);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1C6C7C7B8(v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    sub_1C6C7C0C8(v10 + v4);
    sub_1C6C150B4(v6, v10 + v4);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t sub_1C6C7C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C7C7B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.hasFloat16List.getter()
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  sub_1C6C7C034(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C7C0C8(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.clearFloat16List()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0) + 24);
  sub_1C6C7C0C8(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6C7CB78()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8618);
  __swift_project_value_buffer(v0, qword_1EC1D8618);
  sub_1C6C7DC1C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "encoding_name";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "float16_list";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6C7CE90(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C7CE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6C7DBD4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6C7CFF0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C7CFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  sub_1C6C7C034(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6C7C0C8(v8);
  }

  sub_1C6C150B4(v8, v13);
  sub_1C6C7DBD4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6C7C7B8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0);
  sub_1C6C7DBD4(&qword_1EC1D8630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C7D284@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6C7D358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C7DBD4(&qword_1EC1D8660, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C7D3D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C7D47C(uint64_t a1)
{
  v2 = sub_1C6C7DBD4(&qword_1EC1D8640, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C7D4E8(uint64_t a1, uint64_t a2)
{
  sub_1C6C7DBD4(&qword_1EC1D8640, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_A41_Algorithms_Proto_Encoder_Float16EncodingV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6C7DB40(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding(0) + 24);
  v19 = *(v14 + 48);
  sub_1C6C7C034(a1 + v18, v17);
  sub_1C6C7C034(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_1C6C7C034(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      sub_1C6C150B4(&v17[v19], v8);
      if (sub_1C6B5E090(*v12, *(v12 + 1), *v8, *(v8 + 1)))
      {
        sub_1C6D78A40();
        sub_1C6C7DBD4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = sub_1C6D79560();
        sub_1C6C7C7B8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C7C7B8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C7C0C8(v17);
        if (v23)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1C6C7C7B8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C7C7B8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C7C0C8(v17);
      }

LABEL_10:
      v21 = 0;
      return v21 & 1;
    }

    sub_1C6C7C7B8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_9:
    sub_1C6C7C7B8(v17, sub_1C6C7DB40);
    goto LABEL_10;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1C6C7C0C8(v17);
LABEL_6:
  sub_1C6D78A40();
  sub_1C6C7DBD4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = sub_1C6D79560();
  return v21 & 1;
}

void sub_1C6C7DA7C(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6C7DC1C(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C7DB40(uint64_t a1)
{
  if (!qword_1EC1D6BA8)
  {
    sub_1C6C7DC1C(255, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6BA8);
    }
  }
}

uint64_t sub_1C6C7DBD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C7DC1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = sub_1C6D78A00();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(uint64_t a1)
{
  result = qword_1EDCE33B0;
  if (!qword_1EDCE33B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.duration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
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

uint64_t sub_1C6C7DEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
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

uint64_t sub_1C6C7E060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0) + 24);
  sub_1C6B7655C(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0) + 24);
  sub_1C6B7655C(v1 + v3);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.duration.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0) + 24);
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

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.hasDuration.getter()
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  sub_1C6B764C8(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D78A00();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7655C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0) + 24);
  sub_1C6B7655C(v0 + v1);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C7E72C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8668);
  __swift_project_value_buffer(v0, qword_1EC1D8668);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C6C7EA4C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6C7EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  sub_1C6D78A00();
  sub_1C6C7F54C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C7EB9C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C7EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  sub_1C6B764C8(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B7655C(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6C7F54C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  sub_1C6C7F54C(&qword_1EC1D8680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C7EE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C7F54C(&qword_1EC1D8698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C7EF08@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C7EFB0(uint64_t a1)
{
  v2 = sub_1C6C7F54C(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C7F01C(uint64_t a1, uint64_t a2)
{
  sub_1C6C7F54C(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventSportsTagSeenV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
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
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
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
      sub_1C6C7F54C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B764C8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1C6B78020(v17);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6C7F54C(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v23 = sub_1C6D79560();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1C6B7655C(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C7F54C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NewsAppConfigurationManager.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform);
  v2 = [*(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_appConfigurationManager) possiblyUnfetchedAppConfiguration];
  v1();

  return swift_unknownObjectRelease();
}

uint64_t NewsAppConfigurationManager.fetchConfigurationIfNeeded(cachedOnly:)(char a1)
{
  sub_1C6C7F778();
  sub_1C6D783A0();
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  v3 = sub_1C6D78210();
  v4 = sub_1C6D782B0();

  return v4;
}

unint64_t sub_1C6C7F778()
{
  result = qword_1EDCE6560;
  if (!qword_1EDCE6560)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE6560);
  }

  return result;
}

uint64_t FCNewsAppConfigurationManager.fetchAppConfigurationIfNeeded(cachedOnly:)(char a1, uint64_t a2)
{
  sub_1C6C80140(0, &qword_1EDCE7A80, sub_1C6C7F778, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t NewsAppConfigurationManager.onChangeOfConfiguration(perform:)(uint64_t a1, uint64_t a2)
{
  sub_1C6D77F60();

  sub_1C6D781D0();
}

id NewsAppConfigurationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsAppConfigurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6C7FA54(char a1)
{
  v2 = *v1;
  sub_1C6C7F778();
  sub_1C6D783A0();
  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  v4 = sub_1C6D78210();
  v5 = sub_1C6D782B0();

  return v5;
}

void sub_1C6C7FBAC(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = [a5 respondsToSelector_];

  if ((v13 & 1) != 0 && (v14 = [a5 fetchedAppConfiguration]) != 0)
  {
    v15 = v14;

    v19[0] = v15;
    a1(v19);
    swift_unknownObjectRelease();
  }

  else if (a6)
  {

    v19[0] = [a5 possiblyUnfetchedAppConfiguration];
    a1(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    FCCurrentQoS();
    v16 = FCDispatchQueueForQualityOfService();
    v17 = swift_allocObject();
    v17[2] = sub_1C6C1EB50;
    v17[3] = v12;
    v17[4] = a3;
    v17[5] = a4;
    v19[4] = sub_1C6C80128;
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1C6C1C9F4;
    v19[3] = &block_descriptor_8;
    v18 = _Block_copy(v19);

    [a5 fetchAppConfigurationIfNeededWithCompletionQueue:v16 completion:v18];
    _Block_release(v18);
  }
}

void sub_1C6C7FDC0(uint64_t a1, void *a2, void (*a3)(), uint64_t a4, void (*a5)())
{
  swift_unknownObjectRetain();
  v8 = a2;
  sub_1C6C7F778();
  sub_1C6D78260();
  if (v10)
  {
    a5();
  }

  else
  {
    a3();
  }

  sub_1C6C80134(v9, v10);
}

uint64_t sub_1C6C7FE6C()
{
  (*(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform))(v10);
  *&v7[0] = *(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_lock);
  sub_1C6D77F60();
  sub_1C6C80140(0, &qword_1EDCDF958, sub_1C6B1DDB8, MEMORY[0x1E69E62F8]);

  sub_1C6D781D0();

  v2 = v9;
  v3 = *(v9 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v9 + 40;
    while (v4 < *(v2 + 16))
    {
      ++v4;
      v6 = *(v5 - 8);
      v7[4] = v10[4];
      v7[5] = v10[5];
      v8[0] = *v11;
      *(v8 + 14) = *&v11[14];
      v7[0] = v10[0];
      v7[1] = v10[1];
      v7[2] = v10[2];
      v7[3] = v10[3];

      v6(v7);

      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return sub_1C6B11190(v10);
  }

  return result;
}

uint64_t sub_1C6C80030()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return FCNewsAppConfigurationManager.fetchAppConfigurationIfNeeded(cachedOnly:)(v1, ObjectType);
}

uint64_t sub_1C6C800CC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_onChangeBlocks;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

void sub_1C6C80134(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1C6C80140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void Com_Apple_News_Personalization_Session.compress()(uint64_t a1@<X8>)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  sub_1C6C89B98(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6D78C30();
  if (!v1)
  {
    Com_Apple_News_PersonalizationStorage_CompressedSession.validate()();
    if (v3)
    {
      sub_1C6C88CF8(a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
    }
  }
}

uint64_t sub_1C6C802B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6C89BE0(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v14[-v10];
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_1C6C89B98(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D78C30();
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  return sub_1C6C89AE8(v11, a1, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
}

uint64_t sub_1C6C80440(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6C88C70(a2, v14, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6C89C34(v14, v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v15 = *&v10[*(v7 + 28)];
  v16 = v15 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v17 = *(v16 + 8);
  *a1 = *v16;
  *(a1 + 8) = v17;
  v18 = v15 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v19 = *(v18 + 8);
  *(a1 + 16) = *v18;
  *(a1 + 24) = v19;
  v20 = v15 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v21 = *(v20 + 8);
  *(a1 + 32) = *v20;
  *(a1 + 40) = v21;
  v22 = (v15 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  v23 = v22[1];
  if (!v23)
  {
    return sub_1C6C88CF8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v24 = *v22;

  v25 = a3(v24, v23);

  sub_1C6C88CF8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  v27 = a1 + *(result + 32);
  *v27 = v25;
  *(v27 + 4) = 0;
  return result;
}

char *sub_1C6C8069C()
{
  v2 = v1;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC8];
  v37 = v12;
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  v33 = (v12 + 16);
  v14 = swift_allocObject();
  v38 = v14;
  *(v14 + 16) = v13;
  v32 = (v14 + 16);
  result = swift_allocObject();
  v39 = result;
  *(result + 4) = 0;
  v16 = *(v0 + 16);
  v34 = *(v16 + 16);
  if (v34)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (v17 < *(v16 + 16))
    {
      v19 = sub_1C6C88C70(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v11, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      MEMORY[0x1EEE9AC00](v19, v20);
      v21 = v38;
      *(&v31 - 4) = v11;
      *(&v31 - 3) = v21;
      v22 = v37;
      *(&v31 - 2) = v39;
      *(&v31 - 1) = v22;
      sub_1C6C89B98(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      sub_1C6D78C30();
      if (v1)
      {
        sub_1C6C88CF8(v11, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        goto LABEL_15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1C6B66E28(0, v18[2] + 1, 1, v18);
      }

      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        v18 = sub_1C6B66E28((v23 > 1), v24 + 1, 1, v18);
      }

      ++v17;
      v18[2] = v24 + 1;
      sub_1C6C89C34(v6, v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      result = sub_1C6C88CF8(v11, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if (v34 == v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v25 = v33;
    swift_beginAccess();
    v26 = *v25;
    v27 = v32;
    swift_beginAccess();
    v28 = *v27;

    v29 = sub_1C6C88D58(v26, v18, v28);
    if (v2)
    {
LABEL_15:
    }

    else
    {
      v30 = v29;

      return v30;
    }
  }

  return result;
}

uint64_t sub_1C6C80AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (*(v8 + 16))
  {
    v9 = sub_1C6B5DEA8(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 4 * v9);
      swift_endAccess();
      return v11;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v11 = *(a4 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_1C6BC5730(v11, a1, a2, isUniquelyReferenced_nonNull_native);
  *(a3 + 16) = v17;
  swift_endAccess();
  result = swift_beginAccess();
  v14 = *(a4 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(a4 + 16) = v16;
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C80C14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v177 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v172 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v8);
  v158 = (&v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v161 = (&v154 - v12);
  sub_1C6C89BE0(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v157 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v162 = &v154 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v166 = &v154 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v159 = &v154 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v165 = &v154 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v154 - v30;
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v169 = &v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v154 - v37;
  v167 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v167, v39);
  v168 = &v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v173 = &v154 - v43;
  sub_1C6C89BE0(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v175 = &v154 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v154 - v49;
  v171 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v171, v51);
  v163 = &v154 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v170 = &v154 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v160 = &v154 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v176 = &v154 - v61;
  v62 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v181 = *(v62 - 8);
  v182 = v62;
  MEMORY[0x1EEE9AC00](v62, v63);
  v174 = &v154 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v178 = &v154 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v164 = &v154 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v154 - v73;
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v154 - v77;
  sub_1C6C89BE0(0, qword_1EDCE3B70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  MEMORY[0x1EEE9AC00](v79 - 8, v80);
  v179 = &v154 - v81;
  v180 = a1;
  v82 = sub_1C6C80AEC(*a1, a1[1], a2, a3);
  v83 = swift_beginAccess();
  v183 = a4;
  v85 = *(a4 + 16);
  if (!*(v85 + 16) || (v83 = sub_1C6B64DD0(v82), (v84 & 1) == 0))
  {
    MEMORY[0x1EEE9AC00](v83, v84);
    *(&v154 - 8) = v82;
    *(&v154 - 3) = v180;
    *(&v154 - 2) = a2;
    *(&v154 - 1) = a3;
    sub_1C6C89B98(qword_1EDCE3BC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v90 = v179;
    v91 = v182;
    sub_1C6D78C30();
    (*(v181 + 56))(v90, 0, 1, v91);
    swift_beginAccess();
    sub_1C6BC2244(v90, v82);
    swift_endAccess();
    return v82;
  }

  v156 = v82;
  v86 = sub_1C6B64DD0(v82);
  if (v87)
  {
    sub_1C6C88C70(*(v85 + 56) + *(v181 + 72) * v86, v74, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    sub_1C6C89C34(v74, v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    sub_1C6C893C4(&v78[*(v182 + 20)], v50, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    v89 = *(v88 - 8);
    if ((*(v89 + 48))(v50, 1, v88) == 1)
    {
      sub_1C6C88CF8(v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6C88C14(v50, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      goto LABEL_20;
    }

    v92 = v176;
    sub_1C6C89C34(v50, v176, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v93 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    sub_1C6C893C4(v180 + *(v93 + 20), v38, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v94 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    if ((*(*(v94 - 8) + 48))(v38, 1, v94) == 1)
    {
      sub_1C6C88CF8(v92, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
      sub_1C6C88CF8(v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6C88C14(v38, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      goto LABEL_20;
    }

    sub_1C6C89C34(v38, v173, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6C893C4(v92 + *(v171 + 44), v31, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v155 = *(v172 + 48);
    v95 = v92;
    v96 = v155(v31, 1, v177);
    sub_1C6C88C14(v31, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v96 == 1)
    {
      v97 = *(v173 + *(v167 + 20));
      v98 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
      swift_beginAccess();
      v99 = v165;
      sub_1C6C893C4(v97 + v98, v165, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      LODWORD(v98) = v155(v99, 1, v177);
      sub_1C6C88C14(v99, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (v98 != 1)
      {
        v103 = v160;
        sub_1C6C88C70(v176, v160, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        v104 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
        swift_beginAccess();
        v105 = v97 + v104;
        v106 = v159;
        sub_1C6C893C4(v105, v159, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v107 = v177;
        if (v155(v106, 1, v177) == 1)
        {
          v108 = v161;
          *v161 = xmmword_1C6D7F510;
          sub_1C6D78A30();
          if (v155(v106, 1, v107) != 1)
          {
            sub_1C6C88C14(v106, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }
        }

        else
        {
          v108 = v161;
          sub_1C6C89C34(v106, v161, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        v109 = *(v171 + 40);
        sub_1C6C88C14(v103 + v109, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C89C34(v108, v103 + v109, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v172 + 56))(v103 + v109, 0, 1, v107);
        v110 = v164;
        sub_1C6C88C70(v78, v164, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v111 = v182;
        v112 = *(v182 + 20);
        sub_1C6C88C14(v110 + v112, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        sub_1C6C88C70(v103, v110 + v112, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        (*(v89 + 56))(v110 + v112, 0, 1, v88);
        v113 = v179;
        sub_1C6C88C70(v110, v179, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        (*(v181 + 56))(v113, 0, 1, v111);
        swift_beginAccess();
        sub_1C6BC2244(v113, v156);
        swift_endAccess();
        sub_1C6C88CF8(v176, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        sub_1C6C88CF8(v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        sub_1C6C88CF8(v103, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        sub_1C6C88CF8(v173, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
        v102 = v110;
        v101 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle;
        goto LABEL_19;
      }

      v100 = v176;
    }

    else
    {
      v100 = v95;
    }

    sub_1C6C88CF8(v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6C88CF8(v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v101 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata;
    v102 = v173;
LABEL_19:
    sub_1C6C88CF8(v102, v101);
  }

LABEL_20:
  v114 = v183;
  swift_beginAccess();
  v115 = *(v114 + 16);
  v82 = v156;
  if (*(v115 + 16) && (v116 = sub_1C6B64DD0(v156), (v117 & 1) != 0))
  {
    v118 = v174;
    sub_1C6C88C70(*(v115 + 56) + *(v181 + 72) * v116, v174, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v119 = v178;
    sub_1C6C89C34(v118, v178, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    swift_endAccess();
    v120 = v175;
    sub_1C6C893C4(v119 + *(v182 + 20), v175, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v121 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    v122 = *(v121 - 8);
    if ((*(v122 + 48))(v120, 1, v121) == 1)
    {
      sub_1C6C88CF8(v119, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v123 = &qword_1EDCE3C40;
      v124 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata;
      v125 = v120;
LABEL_27:
      sub_1C6C88C14(v125, v123, v124);
      return v82;
    }

    v126 = v170;
    sub_1C6C89C34(v120, v170, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v127 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    v128 = v169;
    sub_1C6C893C4(v180 + *(v127 + 20), v169, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v129 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    if ((*(*(v129 - 8) + 48))(v128, 1, v129) == 1)
    {
      sub_1C6C88CF8(v126, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
      sub_1C6C88CF8(v119, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v123 = &qword_1EDCE5398;
      v124 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata;
      v125 = v128;
      goto LABEL_27;
    }

    v131 = v168;
    sub_1C6C89C34(v128, v168, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v132 = v166;
    sub_1C6C893C4(v126 + *(v171 + 44), v166, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v180 = *(v172 + 48);
    v133 = (v180)(v132, 1, v177);
    sub_1C6C88C14(v132, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v133 != 1)
    {
      sub_1C6C88CF8(v126, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
      sub_1C6C88CF8(v178, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v139 = v131;
      goto LABEL_33;
    }

    v134 = *(v131 + *(v167 + 20));
    v135 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
    swift_beginAccess();
    v136 = v162;
    sub_1C6C893C4(v134 + v135, v162, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v137 = v180;
    v138 = (v180)(v136, 1, v177);
    sub_1C6C88C14(v136, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v138 == 1)
    {
      sub_1C6C88CF8(v170, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
      sub_1C6C88CF8(v178, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v139 = v168;
LABEL_33:
      sub_1C6C88CF8(v139, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      return v156;
    }

    sub_1C6C88C70(v170, v163, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v140 = v134 + v135;
    v141 = v157;
    sub_1C6C893C4(v140, v157, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if ((v137)(v141, 1, v177) == 1)
    {
      v142 = v158;
      *v158 = xmmword_1C6D7F510;
      v143 = v177;
      sub_1C6D78A30();
      v144 = (v137)(v141, 1, v143);
      v145 = v168;
      if (v144 != 1)
      {
        sub_1C6C88C14(v141, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }
    }

    else
    {
      v142 = v158;
      sub_1C6C89C34(v141, v158, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v145 = v168;
    }

    v146 = *(v171 + 44);
    v147 = v163;
    sub_1C6C88C14(v163 + v146, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6C89C34(v142, v147 + v146, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v172 + 56))(v147 + v146, 0, 1, v177);
    v148 = v178;
    v149 = v164;
    sub_1C6C88C70(v178, v164, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v150 = v182;
    v151 = *(v182 + 20);
    sub_1C6C88C14(v149 + v151, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6C88C70(v147, v149 + v151, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    (*(v122 + 56))(v149 + v151, 0, 1, v121);
    v152 = v179;
    sub_1C6C88C70(v149, v179, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    (*(v181 + 56))(v152, 0, 1, v150);
    swift_beginAccess();
    v153 = v152;
    v82 = v156;
    sub_1C6BC2244(v153, v156);
    swift_endAccess();
    sub_1C6C88CF8(v170, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6C88CF8(v148, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    sub_1C6C88CF8(v147, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6C88CF8(v145, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6C88CF8(v149, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  }

  else
  {
    swift_endAccess();
  }

  return v82;
}

uint64_t sub_1C6C82250(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a3;
  v35 = a4;
  v36 = a5;
  v38 = a2;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v35 - v20;
  sub_1C6C89BE0(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v35 - v24;
  v40 = a1;
  *a1 = v38;
  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6C893C4(v39 + *(v26 + 20), v21, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if ((*(v10 + 48))(v21, 1, v9) == 1)
  {
    v27 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  }

  else
  {
    sub_1C6C89C34(v21, v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88C70(v17, v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v28 = v37;
    sub_1C6C89C34(v13, v37, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v29 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
    MEMORY[0x1EEE9AC00](v29, v30);
    v31 = v36;
    *(&v35 - 4) = v35;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v28;
    sub_1C6C89B98(qword_1EDCE2D98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6D78C30();
    sub_1C6C88CF8(v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v32 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
    sub_1C6C88CF8(v28, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v33 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  return sub_1C6C89AE8(v25, v40 + *(v33 + 20), &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
}

void sub_1C6C8269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v152 = *(v8 - 8);
  v153 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v146 = (&v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v144 = (&v140 - v13);
  sub_1C6C89BE0(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v145 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v149 = &v140 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v143 = &v140 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v148 = &v140 - v25;
  v26 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v151 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v142 = (&v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6C89BE0(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v141 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v147 = &v140 - v34;
  v35 = *(a4 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v37 = v35[3];
  v36 = v35[4];

  v165 = a2;
  LODWORD(a2) = sub_1C6C80AEC(v37, v36, a2, a3);

  *(a1 + 8) = a2;
  swift_beginAccess();
  v38 = v35[2];
  v39 = *(v38 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  v154 = a1;
  v155 = v35;
  v158 = a3;
  v150 = v26;
  if (!v39)
  {
LABEL_24:

    *a1 = v40;
    v72 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    v73 = *(v35 + v72);
    v74 = *(v73 + 16);
    v75 = MEMORY[0x1E69E7CC0];
    if (!v74)
    {
LABEL_46:

      *(a1 + 16) = v75;
      v105 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
      swift_beginAccess();
      v106 = v147;
      sub_1C6C893C4(v155 + v105, v147, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      v107 = *(v151 + 48);
      v108 = v107(v106, 1, v26);
      v109 = v106;
      v111 = v154;
      v110 = v155;
      sub_1C6C88C14(v109, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      v112 = v108 == 1;
      v113 = v153;
      if (!v112)
      {
        v114 = v110 + v105;
        v115 = v141;
        sub_1C6C893C4(v114, v141, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        if (v107(v115, 1, v26) == 1)
        {
          v116 = v142;
          *(v142 + 3) = 0;
          *v116 = 0;
          sub_1C6D78A30();
          v117 = v116;
          if (v107(v115, 1, v26) != 1)
          {
            sub_1C6C88C14(v115, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
          }
        }

        else
        {
          v117 = v142;
          sub_1C6C89C34(v115, v142, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        }

        v118 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 36);
        sub_1C6C88C14(v111 + v118, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        sub_1C6C89C34(v117, v111 + v118, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        (*(v151 + 56))(v111 + v118, 0, 1, v26);
      }

      v119 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
      swift_beginAccess();
      *(v111 + 12) = *(v110 + v119);
      v120 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
      swift_beginAccess();
      v121 = v110;
      v122 = v148;
      sub_1C6C893C4(v110 + v120, v148, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v123 = *(v152 + 48);
      v124 = v123(v122, 1, v113);
      sub_1C6C88C14(v122, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v112 = v124 == 1;
      v125 = v153;
      if (!v112)
      {
        v126 = v110 + v120;
        v127 = v143;
        sub_1C6C893C4(v126, v143, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if (v123(v127, 1, v125) == 1)
        {
          v128 = v144;
          *v144 = xmmword_1C6D7F510;
          sub_1C6D78A30();
          if (v123(v127, 1, v125) != 1)
          {
            sub_1C6C88C14(v127, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }
        }

        else
        {
          v128 = v144;
          sub_1C6C89C34(v127, v144, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        v129 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 40);
        v130 = v154;
        sub_1C6C88C14(v154 + v129, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C89C34(v128, v130 + v129, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v152 + 56))(v130 + v129, 0, 1, v125);
        v121 = v155;
      }

      v131 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
      swift_beginAccess();
      v132 = v149;
      sub_1C6C893C4(v121 + v131, v149, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v133 = v125;
      v134 = v123(v132, 1, v125);
      sub_1C6C88C14(v132, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (v134 != 1)
      {
        v135 = v145;
        sub_1C6C893C4(v121 + v131, v145, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if (v123(v135, 1, v133) == 1)
        {
          v136 = v146;
          *v146 = xmmword_1C6D7F510;
          sub_1C6D78A30();
          v137 = v123(v135, 1, v133);
          v138 = v154;
          if (v137 != 1)
          {
            sub_1C6C88C14(v135, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }
        }

        else
        {
          v136 = v146;
          sub_1C6C89C34(v135, v146, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v138 = v154;
        }

        v139 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 44);
        sub_1C6C88C14(v138 + v139, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C89C34(v136, v138 + v139, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v152 + 56))(v138 + v139, 0, 1, v133);
      }

      return;
    }

    v162[0] = MEMORY[0x1E69E7CC0];

    sub_1C6B392F0(0, v74, 0);
    v75 = v162[0];
    swift_beginAccess();
    swift_beginAccess();
    v76 = 0;
    v77 = (v73 + 40);
    v159 = v73;
    v157 = v74;
    while (1)
    {
      if (v76 >= *(v73 + 16))
      {
        goto LABEL_66;
      }

      v160 = v75;
      v79 = *(v77 - 1);
      v78 = *v77;
      v80 = v165;
      swift_beginAccess();
      v81 = *(v80 + 16);
      v82 = *(v81 + 16);

      if (!v82)
      {
        break;
      }

      v83 = sub_1C6B5DEA8(v79, v78);
      if ((v84 & 1) == 0)
      {
        break;
      }

      v85 = *(*(v81 + 56) + 4 * v83);
      swift_endAccess();
      v75 = v160;
LABEL_42:

      v162[0] = v75;
      v103 = *(v75 + 16);
      v102 = *(v75 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_1C6B392F0((v102 > 1), v103 + 1, 1);
        v75 = v162[0];
      }

      ++v76;
      *(v75 + 16) = v103 + 1;
      *(v75 + 4 * v103 + 32) = v85;
      v77 += 2;
      v73 = v159;
      if (v157 == v76)
      {

        a1 = v154;
        v26 = v150;
        goto LABEL_46;
      }
    }

    swift_endAccess();
    v85 = *(a3 + 16);
    v86 = v165;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = *(v86 + 16);
    v88 = v161;
    *(v86 + 16) = 0x8000000000000000;
    v89 = sub_1C6B5DEA8(v79, v78);
    v91 = v88[2];
    v92 = (v90 & 1) == 0;
    v66 = __OFADD__(v91, v92);
    v93 = v91 + v92;
    if (v66)
    {
      goto LABEL_69;
    }

    v94 = v90;
    if (v88[3] >= v93)
    {
      v75 = v160;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v104 = v89;
        sub_1C6B74918();
        v75 = v160;
        v89 = v104;
      }

      a3 = v158;
      v96 = v161;
      if ((v94 & 1) == 0)
      {
LABEL_34:
        v96[(v89 >> 6) + 8] |= 1 << v89;
        v97 = (v96[6] + 16 * v89);
        *v97 = v79;
        v97[1] = v78;
        *(v96[7] + 4 * v89) = v85;
        v98 = v96[2];
        v66 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v66)
        {
          goto LABEL_72;
        }

        v96[2] = v99;

        goto LABEL_40;
      }
    }

    else
    {
      sub_1C6B71A0C(v93, isUniquelyReferenced_nonNull_native);
      v89 = sub_1C6B5DEA8(v79, v78);
      if ((v94 & 1) != (v95 & 1))
      {
        goto LABEL_73;
      }

      a3 = v158;
      v75 = v160;
      v96 = v161;
      if ((v94 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    *(v96[7] + 4 * v89) = v85;
LABEL_40:
    *(v165 + 16) = v96;
    swift_endAccess();
    v100 = *(a3 + 16);
    v66 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v66)
    {
      goto LABEL_70;
    }

    *(a3 + 16) = v101;
    goto LABEL_42;
  }

  v164[0] = MEMORY[0x1E69E7CC0];

  sub_1C6B392F0(0, v39, 0);
  v40 = v164[0];
  swift_beginAccess();
  swift_beginAccess();
  v41 = 0;
  v42 = (v38 + 40);
  v156 = v38;
  v157 = v39;
  while (v41 < *(v38 + 16))
  {
    v159 = v40;
    v43 = *(v42 - 1);
    v44 = *v42;
    v45 = v165;
    swift_beginAccess();
    v46 = *(v45 + 16);
    v47 = *(v46 + 16);

    if (!v47 || (v48 = sub_1C6B5DEA8(v43, v44), (v49 & 1) == 0))
    {
      swift_endAccess();
      LODWORD(v160) = *(a3 + 16);
      v50 = v43;
      v51 = v165;
      swift_beginAccess();
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v163 = *(v51 + 16);
      v53 = v163;
      *(v51 + 16) = 0x8000000000000000;
      v54 = v50;
      v56 = sub_1C6B5DEA8(v50, v44);
      v57 = v53[2];
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_67;
      }

      v60 = v55;
      if (v53[3] >= v59)
      {
        v40 = v159;
        if ((v52 & 1) == 0)
        {
          sub_1C6B74918();
          goto LABEL_11;
        }
      }

      else
      {
        sub_1C6B71A0C(v59, v52);
        v61 = sub_1C6B5DEA8(v54, v44);
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_73;
        }

        v56 = v61;
LABEL_11:
        v40 = v159;
      }

      v63 = v163;
      v39 = v157;
      if (v60)
      {
        *(v163[7] + 4 * v56) = v160;
      }

      else
      {
        v163[(v56 >> 6) + 8] |= 1 << v56;
        v64 = (v63[6] + 16 * v56);
        *v64 = v54;
        v64[1] = v44;
        *(v63[7] + 4 * v56) = v160;
        v65 = v63[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_71;
        }

        v63[2] = v67;
      }

      *(v165 + 16) = v63;
      swift_endAccess();
      a3 = v158;
      v68 = *(v158 + 16);
      v66 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      v38 = v156;
      if (v66)
      {
        goto LABEL_68;
      }

      *(v158 + 16) = v69;
      goto LABEL_19;
    }

    LODWORD(v160) = *(*(v46 + 56) + 4 * v48);
    swift_endAccess();
    v40 = v159;
LABEL_19:

    v164[0] = v40;
    v71 = *(v40 + 16);
    v70 = *(v40 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_1C6B392F0((v70 > 1), v71 + 1, 1);
      v40 = v164[0];
    }

    ++v41;
    *(v40 + 16) = v71 + 1;
    *(v40 + 4 * v71 + 32) = v160;
    v42 += 2;
    if (v39 == v41)
    {

      a1 = v154;
      v35 = v155;
      v26 = v150;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_1C6D7A1C0();
  __break(1u);
}

uint64_t sub_1C6C83560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v179 = a3;
  v176 = a4;
  v177 = a1;
  v178 = a2;
  v181 = a5;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v175 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v174 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v173 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v172 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v171 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v170 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v169 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v168 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v167 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v166 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v165 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v164 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v163 = &v161 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v162 = &v161 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v50 = &v161 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v54 = &v161 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v58 = &v161 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v62 = &v161 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v66 = &v161 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v70 = &v161 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v74 = &v161 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v161 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C88C70(v177, v78, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6C89C34(v78, v70, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      v124 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
      MEMORY[0x1EEE9AC00](v124, v125);
      v126 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v126;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v70;
      sub_1C6C89B98(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v127 = v180;
      sub_1C6D78C30();
      if (!v127)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
      v84 = v70;
      return sub_1C6C88CF8(v84, v83);
    case 2u:
      sub_1C6C89C34(v78, v66, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v109 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
      MEMORY[0x1EEE9AC00](v109, v110);
      v111 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v111;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v66;
      sub_1C6C89B98(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v112 = v180;
      sub_1C6D78C30();
      if (!v112)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
      v84 = v66;
      return sub_1C6C88CF8(v84, v83);
    case 3u:
      sub_1C6C89C34(v78, v62, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      v117 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
      MEMORY[0x1EEE9AC00](v117, v118);
      v119 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v119;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v62;
      sub_1C6C89B98(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v120 = v180;
      sub_1C6D78C30();
      if (!v120)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared;
      v84 = v62;
      return sub_1C6C88CF8(v84, v83);
    case 4u:
      sub_1C6C89C34(v78, v58, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      v98 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
      MEMORY[0x1EEE9AC00](v98, v99);
      v100 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v100;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v58;
      sub_1C6C89B98(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v101 = v180;
      sub_1C6D78C30();
      if (!v101)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked;
      v84 = v58;
      return sub_1C6C88CF8(v84, v83);
    case 5u:
      sub_1C6C89C34(v78, v50, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v136 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
      MEMORY[0x1EEE9AC00](v136, v137);
      v138 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v138;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v50;
      sub_1C6C89B98(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v139 = v180;
      sub_1C6D78C30();
      if (!v139)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
      v84 = v50;
      return sub_1C6C88CF8(v84, v83);
    case 6u:
      v85 = v163;
      sub_1C6C89C34(v78, v163, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v144 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
      MEMORY[0x1EEE9AC00](v144, v145);
      v146 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v146;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v85;
      sub_1C6C89B98(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v147 = v180;
      sub_1C6D78C30();
      if (!v147)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
      goto LABEL_51;
    case 7u:
      v85 = v166;
      sub_1C6C89C34(v78, v166, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v121 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
      MEMORY[0x1EEE9AC00](v121, v122);
      v123 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v123;
      *(&v161 - 2) = v85;
      sub_1C6C89B98(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
      goto LABEL_51;
    case 8u:
      v85 = v167;
      sub_1C6C89C34(v78, v167, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v154 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
      MEMORY[0x1EEE9AC00](v154, v155);
      v156 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v156;
      *(&v161 - 2) = v85;
      sub_1C6C89B98(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
      goto LABEL_51;
    case 9u:
      v85 = v168;
      sub_1C6C89C34(v78, v168, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v106 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
      MEMORY[0x1EEE9AC00](v106, v107);
      v108 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v108;
      *(&v161 - 2) = v85;
      sub_1C6C89B98(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
      goto LABEL_51;
    case 0xAu:
      v85 = v170;
      sub_1C6C89C34(v78, v170, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      v151 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
      MEMORY[0x1EEE9AC00](v151, v152);
      v153 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v153;
      *(&v161 - 2) = v85;
      sub_1C6C89B98(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed;
      goto LABEL_51;
    case 0xBu:
      v85 = v171;
      sub_1C6C89C34(v78, v171, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v95 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
      MEMORY[0x1EEE9AC00](v95, v96);
      v97 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v97;
      *(&v161 - 2) = v85;
      sub_1C6C89B98(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView;
      goto LABEL_51;
    case 0xCu:
      v85 = v172;
      sub_1C6C89C34(v78, v172, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v102 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
      MEMORY[0x1EEE9AC00](v102, v103);
      v104 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v104;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v85;
      sub_1C6C89B98(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v105 = v180;
      sub_1C6D78C30();
      if (!v105)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
      goto LABEL_51;
    case 0xDu:
      v85 = v173;
      sub_1C6C89C34(v78, v173, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
      MEMORY[0x1EEE9AC00](v140, v141);
      v142 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v142;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v85;
      sub_1C6C89B98(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v143 = v180;
      sub_1C6D78C30();
      if (!v143)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
      goto LABEL_51;
    case 0xEu:
      v85 = v174;
      sub_1C6C89C34(v78, v174, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v91 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
      MEMORY[0x1EEE9AC00](v91, v92);
      v93 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v93;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v85;
      sub_1C6C89B98(&qword_1EC1D7678, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v94 = v180;
      sub_1C6D78C30();
      if (!v94)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
      goto LABEL_51;
    case 0xFu:
      sub_1C6C89C34(v78, v54, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      v113 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
      MEMORY[0x1EEE9AC00](v113, v114);
      v115 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v115;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v54;
      sub_1C6C89B98(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v116 = v180;
      sub_1C6D78C30();
      if (!v116)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked;
      v84 = v54;
      return sub_1C6C88CF8(v84, v83);
    case 0x10u:
      v85 = v162;
      sub_1C6C89C34(v78, v162, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v86 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
      MEMORY[0x1EEE9AC00](v86, v87);
      v88 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v88;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v85;
      sub_1C6C89B98(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v89 = v180;
      sub_1C6D78C30();
      if (!v89)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
      goto LABEL_51;
    case 0x11u:
      v85 = v164;
      sub_1C6C89C34(v78, v164, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v128 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
      MEMORY[0x1EEE9AC00](v128, v129);
      v130 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v130;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v85;
      sub_1C6C89B98(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v131 = v180;
      sub_1C6D78C30();
      if (!v131)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
      goto LABEL_51;
    case 0x12u:
      v85 = v165;
      sub_1C6C89C34(v78, v165, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      v148 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
      MEMORY[0x1EEE9AC00](v148, v149);
      v150 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v150;
      *(&v161 - 2) = v85;
      sub_1C6C89B98(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen;
      goto LABEL_51;
    case 0x13u:
      v85 = v169;
      sub_1C6C89C34(v78, v169, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      v157 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
      MEMORY[0x1EEE9AC00](v157, v158);
      v159 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v159;
      *(&v161 - 2) = v85;
      sub_1C6C89B98(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
      goto LABEL_51;
    case 0x14u:
      v85 = v175;
      sub_1C6C89C34(v78, v175, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v132 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
      MEMORY[0x1EEE9AC00](v132, v133);
      v134 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v134;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v85;
      sub_1C6C89B98(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v135 = v180;
      sub_1C6D78C30();
      if (!v135)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_51:
      v83 = v90;
      v84 = v85;
      break;
    default:
      sub_1C6C89C34(v78, v74, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      v79 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
      MEMORY[0x1EEE9AC00](v79, v80);
      v81 = v179;
      *(&v161 - 4) = v178;
      *(&v161 - 3) = v81;
      *(&v161 - 2) = v176;
      *(&v161 - 1) = v74;
      sub_1C6C89B98(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      v82 = v180;
      sub_1C6D78C30();
      if (!v82)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
      v84 = v74;
      break;
  }

  return sub_1C6C88CF8(v84, v83);
}

void sub_1C6C8510C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, double), uint64_t (*a7)(void, __n128), uint64_t a8, uint64_t a9)
{
  v91 = a8;
  v105 = a7;
  v110 = a4;
  v112 = a3;
  v111 = a2;
  v107 = a1;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v108 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v92 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v102 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v104 = &v87 - v19;
  v20 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v93 = *(v20 - 8);
  v94 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v90 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1C6D78A00();
  v106 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v23);
  v89 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v88 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v95 = &v87 - v30;
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v100 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v87 - v36;
  v38 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v98 = &v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v46 = (&v87 - v45);
  v47 = a6(0, v44);
  v48 = *(v47 + 20);
  v101 = a5;
  v96 = v48;
  sub_1C6C893C4(a5 + v48, v37, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v49 = *(v39 + 48);
  v50 = v49(v37, 1, v38);
  v103 = v11;
  v97 = v49;
  if (v50 == 1)
  {
    *v46 = 0;
    v46[1] = 0xE000000000000000;
    (*(v108 + 56))(v46 + *(v38 + 20), 1, 1, v11);
    sub_1C6D78A30();
    if (v49(v37, 1, v38) != 1)
    {
      sub_1C6C88C14(v37, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v37, v46, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v51 = v109;
  v52 = sub_1C6C80C14(v46, v111, v112, v110);
  sub_1C6C88CF8(v46, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (!v51)
  {
    v110 = 0;
    *v107 = v52;
    v53 = *(v47 + 24);
    v54 = MEMORY[0x1E69AAB70];
    v55 = v101;
    v56 = v95;
    sub_1C6C893C4(v101 + v53, v95, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v57 = v99;
    v109 = *(v106 + 48);
    v58 = v109(v56, 1, v99);
    sub_1C6C88C14(v56, &qword_1EDCDFD00, v54);
    if (v58 != 1)
    {
      v59 = v55 + v53;
      v60 = v88;
      sub_1C6C893C4(v59, v88, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v61 = v109;
      v62 = v57;
      if (v109(v60, 1, v57) == 1)
      {
        v63 = v89;
        sub_1C6D789F0();
        v64 = v61(v60, 1, v57);
        v65 = v107;
        if (v64 != 1)
        {
          sub_1C6C88C14(v60, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        }
      }

      else
      {
        v63 = v89;
        (*(v106 + 32))(v89, v60, v57);
        v65 = v107;
      }

      v66 = *(v105(0) + 28);
      sub_1C6C88C14(&v65[v66], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v67 = v106;
      (*(v106 + 32))(&v65[v66], v63, v62);
      (*(v67 + 56))(&v65[v66], 0, 1, v62);
    }

    v68 = v100;
    sub_1C6C893C4(v55 + v96, v100, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v69 = v97;
    if (v97(v68, 1, v38) == 1)
    {
      v70 = v98;
      *v98 = 0;
      *(v70 + 1) = 0xE000000000000000;
      v71 = v108;
      v72 = v103;
      (*(v108 + 56))(&v70[*(v38 + 20)], 1, 1, v103);
      sub_1C6D78A30();
      if (v69(v68, 1, v38) != 1)
      {
        sub_1C6C88C14(v68, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v70 = v98;
      sub_1C6C89C34(v68, v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v72 = v103;
      v71 = v108;
    }

    v73 = &v70[*(v38 + 20)];
    v74 = v104;
    sub_1C6C893C4(v73, v104, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88CF8(v70, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6C89430();
    v75 = swift_allocError();
    *v76 = 1;
    MEMORY[0x1EEE9AC00](v75, v76);
    v77 = v112;
    *(&v87 - 2) = v111;
    *(&v87 - 1) = v77;
    v78 = v102;
    sub_1C6C893C4(v74, v102, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v71 + 48))(v78, 1, v72) == 1)
    {
      swift_willThrow();
      sub_1C6C88C14(v74, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    }

    else
    {
      v79 = v92;
      v80 = sub_1C6C89C34(v78, v92, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      MEMORY[0x1EEE9AC00](v80, v81);
      v82 = v91;
      *(&v87 - 4) = v79;
      *(&v87 - 3) = v82;
      *(&v87 - 2) = (&v87 - 4);
      sub_1C6C89B98(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v83 = v90;
      v84 = v94;
      sub_1C6D78C30();
      sub_1C6C88C14(v74, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6C88CF8(v79, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);

      v85 = *(v105(0) + 24);
      v86 = v107;
      sub_1C6C88C14(&v107[v85], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6C89C34(v83, &v86[v85], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      (*(v93 + 56))(&v86[v85], 0, 1, v84);
    }
  }
}

void sub_1C6C85C0C(char *a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v100 = a4;
  v103 = a3;
  v102 = a2;
  v99 = a1;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v86 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v93 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v94 = &v82 - v14;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v85 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1C6D78A00();
  v95 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v18);
  v84 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v83 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v82 - v25;
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v92 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v82 - v32;
  v34 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v90 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = (&v82 - v40);
  v42 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  v43 = *(v42 + 24);
  v96 = a5;
  v89 = v43;
  sub_1C6C893C4(a5 + v43, v33, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v44 = *(v35 + 48);
  if (v44(v33, 1, v34) == 1)
  {
    *v41 = 0;
    v41[1] = 0xE000000000000000;
    (*(v97 + 56))(v41 + *(v34 + 20), 1, 1, v98);
    sub_1C6D78A30();
    if (v44(v33, 1, v34) != 1)
    {
      sub_1C6C88C14(v33, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v33, v41, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v45 = v101;
  v46 = sub_1C6C80C14(v41, v102, v103, v100);
  sub_1C6C88CF8(v41, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (!v45)
  {
    v100 = 0;
    v101 = v44;
    *v99 = v46;
    v47 = *(v42 + 28);
    v48 = MEMORY[0x1E69AAB70];
    v49 = v96;
    sub_1C6C893C4(v96 + v47, v26, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v50 = v91;
    v82 = *(v95 + 48);
    v51 = v82(v26, 1, v91);
    sub_1C6C88C14(v26, &qword_1EDCDFD00, v48);
    v52 = v97;
    if (v51 != 1)
    {
      v53 = v49 + v47;
      v54 = v83;
      sub_1C6C893C4(v53, v83, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v55 = v82;
      v56 = v50;
      if (v82(v54, 1, v50) == 1)
      {
        v57 = v84;
        sub_1C6D789F0();
        v58 = v55(v54, 1, v50);
        v59 = v99;
        if (v58 != 1)
        {
          sub_1C6C88C14(v54, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        }
      }

      else
      {
        v57 = v84;
        (*(v95 + 32))(v84, v54, v50);
        v59 = v99;
      }

      v60 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 32);
      sub_1C6C88C14(&v59[v60], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v61 = v95;
      (*(v95 + 32))(&v59[v60], v57, v56);
      (*(v61 + 56))(&v59[v60], 0, 1, v56);
      v49 = v96;
    }

    v62 = v92;
    sub_1C6C893C4(v49 + v89, v92, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v63 = v101;
    if ((v101)(v62, 1, v34) == 1)
    {
      v64 = v90;
      *v90 = 0;
      *(v64 + 1) = 0xE000000000000000;
      v65 = v52;
      v66 = v98;
      (*(v52 + 56))(&v64[*(v34 + 20)], 1, 1, v98);
      sub_1C6D78A30();
      v67 = v63(v62, 1, v34);
      v68 = v99;
      v69 = v94;
      if (v67 != 1)
      {
        sub_1C6C88C14(v62, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v65 = v52;
      v64 = v90;
      sub_1C6C89C34(v62, v90, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v66 = v98;
      v68 = v99;
      v69 = v94;
    }

    sub_1C6C893C4(&v64[*(v34 + 20)], v69, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88CF8(v64, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6C89430();
    v70 = swift_allocError();
    v101 = &v82;
    *v71 = 1;
    MEMORY[0x1EEE9AC00](v70, v71);
    v72 = v103;
    *(&v82 - 2) = v102;
    *(&v82 - 1) = v72;
    v73 = v93;
    sub_1C6C893C4(v69, v93, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v65 + 48))(v73, 1, v66) == 1)
    {
      swift_willThrow();
      sub_1C6C88C14(v69, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    }

    else
    {
      v74 = v73;
      v75 = v86;
      v76 = sub_1C6C89C34(v74, v86, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      MEMORY[0x1EEE9AC00](v76, v77);
      *(&v82 - 4) = v75;
      *(&v82 - 3) = sub_1C6C89D04;
      *(&v82 - 2) = (&v82 - 4);
      sub_1C6C89B98(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v78 = v85;
      v79 = v88;
      sub_1C6D78C30();
      sub_1C6C88C14(v69, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6C88CF8(v75, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);

      v80 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0) + 28);
      sub_1C6C88C14(&v68[v80], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6C89C34(v78, &v68[v80], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      (*(v87 + 56))(&v68[v80], 0, 1, v79);
      v81 = *v96;

      *(v68 + 1) = v81;
    }
  }
}

void sub_1C6C86708(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a4;
  v74 = a3;
  v73 = a2;
  v69 = a1;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v66 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v68 = &v58 - v14;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v64 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v58 - v23;
  v25 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v63 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v58 - v31);
  v33 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 24);
  v65 = a5;
  sub_1C6C893C4(a5 + v33, v24, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v34 = *(v26 + 48);
  v35 = v34(v24, 1, v25);
  v67 = v6;
  if (v35 == 1)
  {
    *v32 = 0;
    v32[1] = 0xE000000000000000;
    (*(v72 + 56))(v32 + *(v25 + 20), 1, 1, v6);
    sub_1C6D78A30();
    if (v34(v24, 1, v25) != 1)
    {
      sub_1C6C88C14(v24, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v24, v32, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v36 = v71;
  v37 = sub_1C6C80C14(v32, v73, v74, v70);
  sub_1C6C88CF8(v32, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (!v36)
  {
    v38 = v69;
    *v69 = v37;
    v40 = v64;
    v39 = v65;
    v41 = *(v65 + 8);
    *(v38 + 1) = *v65;
    *(v38 + 16) = v41;
    sub_1C6C893C4(v39 + v33, v40, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if (v34(v40, 1, v25) == 1)
    {
      v42 = v63;
      *v63 = 0;
      *(v42 + 1) = 0xE000000000000000;
      v43 = v67;
      (*(v72 + 56))(&v42[*(v25 + 20)], 1, 1, v67);
      sub_1C6D78A30();
      if (v34(v40, 1, v25) != 1)
      {
        sub_1C6C88C14(v40, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v42 = v63;
      sub_1C6C89C34(v40, v63, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v43 = v67;
    }

    v44 = &v42[*(v25 + 20)];
    v45 = v68;
    sub_1C6C893C4(v44, v68, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88CF8(v42, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6C89430();
    v46 = swift_allocError();
    *v47 = 1;
    MEMORY[0x1EEE9AC00](v46, v47);
    v48 = v74;
    *(&v58 - 2) = v73;
    *(&v58 - 1) = v48;
    v49 = v66;
    sub_1C6C893C4(v45, v66, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v72 + 48))(v49, 1, v43) == 1)
    {
      swift_willThrow();
      sub_1C6C88C14(v45, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    }

    else
    {
      v50 = v49;
      v51 = v60;
      v52 = sub_1C6C89C34(v50, v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      MEMORY[0x1EEE9AC00](v52, v53);
      *(&v58 - 4) = v51;
      *(&v58 - 3) = sub_1C6C89D04;
      *(&v58 - 2) = (&v58 - 4);
      sub_1C6C89B98(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v54 = v59;
      v55 = v62;
      sub_1C6D78C30();
      sub_1C6C88C14(v68, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6C88CF8(v51, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);

      v56 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 28);
      v57 = v69;
      sub_1C6C88C14(v69 + v56, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6C89C34(v54, &v57[v56], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      (*(v61 + 56))(&v57[v56], 0, 1, v55);
    }
  }
}

uint64_t sub_1C6C86F10(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = MEMORY[0x1E69AAB70];
  sub_1C6C89BE0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v22 - v11;
  v13 = sub_1C6D78A00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_1C6C80AEC(*a4, a4[1], a2, a3);
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
  sub_1C6C893C4(a4 + *(v18 + 24), v12, &qword_1EDCDFD00, v8);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_1C6D789F0();
    if (v19(v12, 1, v13) != 1)
    {
      sub_1C6C88C14(v12, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  v20 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0) + 24);
  sub_1C6C88C14(&a1[v20], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v14 + 32))(&a1[v20], v17, v13);
  return (*(v14 + 56))(&a1[v20], 0, 1, v13);
}

void sub_1C6C87180(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69AAB70];
  sub_1C6C89BE0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v29 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  v20 = sub_1C6C80AEC(*a4, a4[1], a2, a3);
  v32 = a1;
  *a1 = v20;
  v21 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0) + 24);
  sub_1C6C893C4(a4 + v21, v19, &qword_1EDCDFD00, v12);
  v31 = v9;
  v22 = *(v9 + 48);
  LODWORD(a2) = v22(v19, 1, v8);
  sub_1C6C88C14(v19, &qword_1EDCDFD00, v12);
  if (a2 != 1)
  {
    v23 = v29;
    sub_1C6C893C4(a4 + v21, v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    if (v22(v23, 1, v8) == 1)
    {
      v24 = v30;
      sub_1C6D789F0();
      v25 = v22(v23, 1, v8);
      v26 = v31;
      if (v25 != 1)
      {
        sub_1C6C88C14(v23, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      }
    }

    else
    {
      v24 = v30;
      v26 = v31;
      (*(v31 + 32))(v30, v23, v8);
    }

    v27 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0) + 24);
    v28 = v32;
    sub_1C6C88C14(&v32[v27], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v26 + 32))(&v28[v27], v24, v8);
    (*(v26 + 56))(&v28[v27], 0, 1, v8);
  }
}

void sub_1C6C87494(char *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t (*a6)(void, double), uint64_t a7, uint64_t a8, uint64_t (*a9)(void))
{
  v67 = a8;
  v63 = a7;
  v75 = a4;
  v79 = a3;
  v78 = a2;
  v74 = a1;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v71 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v73 = &v61 - v19;
  v20 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v62 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v69 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v61 - v28;
  v30 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v68 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = (&v61 - v37);
  v39 = *(a6(0, v36) + 20);
  v70 = a5;
  sub_1C6C893C4(a5 + v39, v29, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v40 = *(v31 + 48);
  v41 = v40(v29, 1, v30);
  v72 = v11;
  if (v41 == 1)
  {
    *v38 = 0;
    v38[1] = 0xE000000000000000;
    (*(v77 + 56))(v38 + *(v30 + 20), 1, 1, v11);
    sub_1C6D78A30();
    if (v40(v29, 1, v30) != 1)
    {
      sub_1C6C88C14(v29, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v29, v38, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v42 = v76;
  v43 = sub_1C6C80C14(v38, v78, v79, v75);
  sub_1C6C88CF8(v38, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (!v42)
  {
    *v74 = v43;
    v44 = v69;
    sub_1C6C893C4(v70 + v39, v69, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if (v40(v44, 1, v30) == 1)
    {
      v45 = v68;
      *v68 = 0;
      *(v45 + 1) = 0xE000000000000000;
      v46 = v72;
      (*(v77 + 56))(&v45[*(v30 + 20)], 1, 1, v72);
      sub_1C6D78A30();
      v47 = v40(v44, 1, v30);
      v48 = v73;
      if (v47 != 1)
      {
        sub_1C6C88C14(v44, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v45 = v68;
      sub_1C6C89C34(v44, v68, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v46 = v72;
      v48 = v73;
    }

    sub_1C6C893C4(&v45[*(v30 + 20)], v48, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88CF8(v45, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6C89430();
    v49 = swift_allocError();
    *v50 = 1;
    MEMORY[0x1EEE9AC00](v49, v50);
    v51 = v79;
    *(&v61 - 2) = v78;
    *(&v61 - 1) = v51;
    v52 = v71;
    sub_1C6C893C4(v48, v71, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v77 + 48))(v52, 1, v46) == 1)
    {
      swift_willThrow();
      sub_1C6C88C14(v48, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    }

    else
    {
      v79 = a9;
      v53 = v64;
      v54 = sub_1C6C89C34(v52, v64, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      MEMORY[0x1EEE9AC00](v54, v55);
      v56 = v63;
      *(&v61 - 4) = v53;
      *(&v61 - 3) = v56;
      *(&v61 - 2) = (&v61 - 4);
      sub_1C6C89B98(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v57 = v62;
      v58 = v66;
      sub_1C6D78C30();
      sub_1C6C88C14(v48, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6C88CF8(v53, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);

      v59 = *(v79(0) + 24);
      v60 = v74;
      sub_1C6C88C14(&v74[v59], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6C89C34(v57, &v60[v59], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      (*(v65 + 56))(&v60[v59], 0, 1, v58);
    }
  }
}

uint64_t sub_1C6C87C90(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v39 = a2;
  v40 = a3;
  v38 = a1;
  sub_1C6C89BE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v35 - v8;
  v43 = sub_1C6D789A0();
  v37 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v10);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v22 = *(v21 + 24);
  v35 = a5;
  sub_1C6C893C4(a5 + v22, v15, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v24 = *(v16 + 20);
    v25 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v25 - 8) + 56))(v20 + v24, 1, 1, v25);
    sub_1C6D78A30();
    if (v23(v15, 1, v16) != 1)
    {
      sub_1C6C88C14(v15, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v15, v20, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v26 = v42;
  v27 = sub_1C6C80C14(v20, v39, v40, v41);
  result = sub_1C6C88CF8(v20, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v29 = v43;
  if (!v26)
  {
    v30 = v38;
    *v38 = v27;
    sub_1C6C893C4(v35 + *(v21 + 20), v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v31 = v37;
    v32 = *(v37 + 48);
    if (v32(v9, 1, v29) == 1)
    {
      v33 = v36;
      sub_1C6D78990();
      if (v32(v9, 1, v29) != 1)
      {
        sub_1C6C88C14(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      v33 = v36;
      (*(v31 + 32))(v36, v9, v29);
    }

    v34 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0) + 24);
    sub_1C6C88C14(&v30[v34], &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v31 + 32))(&v30[v34], v33, v29);
    return (*(v31 + 56))(&v30[v34], 0, 1, v29);
  }

  return result;
}

uint64_t sub_1C6C88130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v37 = a3;
  v38 = a4;
  v44 = a1;
  sub_1C6C89BE0(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v41 = &v36 - v8;
  sub_1C6C89BE0(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v36 - v11;
  v42 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v13 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v14);
  v36 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69AA900];
  sub_1C6C89BE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v36 - v19;
  v21 = sub_1C6D789A0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  v43 = a2;
  sub_1C6C893C4(a2 + v26, v20, &qword_1EDCE66F0, v16);
  v27 = *(v22 + 48);
  if (v27(v20, 1, v21) == 1)
  {
    sub_1C6D78990();
    if (v27(v20, 1, v21) != 1)
    {
      sub_1C6C88C14(v20, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
  }

  v28 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  v29 = v44;
  sub_1C6C88C14(v44 + v28, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v22 + 32))(v29 + v28, v25, v21);
  (*(v22 + 56))(v29 + v28, 0, 1, v21);
  sub_1C6C893C4(v43, v12, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if ((*(v13 + 48))(v12, 1, v42) == 1)
  {
    sub_1C6C88C14(v12, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C89430();
    swift_allocError();
    *v30 = 0;
    return swift_willThrow();
  }

  else
  {
    v32 = v36;
    sub_1C6C89C34(v12, v36, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v40;
    v33 = v41;
    sub_1C6C83560(v32, v37, v38, v39, v41);
    result = sub_1C6C88CF8(v32, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (!v34)
    {
      v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
      return sub_1C6C89AE8(v33, v29, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    }
  }

  return result;
}

uint64_t sub_1C6C88634(uint64_t a1, void *a2)
{
  v62 = sub_1C6D789A0();
  v4 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v5);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v58 - v9;
  v10 = MEMORY[0x1E69AA900];
  sub_1C6C89BE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v64 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v58 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v58 - v22;
  v24 = *a2;
  v25 = a2[1];

  *a1 = v24;
  *(a1 + 8) = v25;
  v63 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  v26 = *(v63 + 36);
  sub_1C6C893C4(a2 + v26, v23, &qword_1EDCE66F0, v10);
  v66 = v4;
  v28 = v4 + 48;
  v27 = *(v4 + 48);
  v29 = v62;
  LODWORD(v4) = v27(v23, 1, v62);
  v30 = v10;
  v31 = v27;
  v32 = a2;
  sub_1C6C88C14(v23, &qword_1EDCE66F0, v30);
  if (v4 != 1)
  {
    v33 = a2 + v26;
    v34 = v58;
    sub_1C6C893C4(v33, v58, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v31(v34, 1, v29) == 1)
    {
      v35 = v59;
      sub_1C6D78990();
      if (v31(v34, 1, v29) != 1)
      {
        sub_1C6C88C14(v34, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      v35 = v59;
      (*(v66 + 32))(v59, v34, v29);
    }

    v36 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 44);
    sub_1C6C88C14(a1 + v36, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v37 = v66;
    (*(v66 + 32))(a1 + v36, v35, v29);
    (*(v37 + 56))(a1 + v36, 0, 1, v29);
  }

  v38 = v64;
  v39 = *(v63 + 40);
  v40 = MEMORY[0x1E69AA900];
  sub_1C6C893C4(v32 + v39, v64, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v41 = v31(v38, 1, v29);
  v63 = v28;
  v42 = v31;
  v43 = v41;
  sub_1C6C88C14(v38, &qword_1EDCE66F0, v40);
  if (v43 != 1)
  {
    v44 = v60;
    sub_1C6C893C4(v32 + v39, v60, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v42(v44, 1, v29) == 1)
    {
      v45 = v61;
      sub_1C6D78990();
      if (v42(v44, 1, v29) != 1)
      {
        sub_1C6C88C14(v44, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      v45 = v61;
      (*(v66 + 32))(v61, v44, v29);
    }

    v46 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0) + 48);
    sub_1C6C88C14(a1 + v46, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v47 = v66;
    (*(v66 + 32))(a1 + v46, v45, v29);
    (*(v47 + 56))(a1 + v46, 0, 1, v29);
  }

  v49 = v32[3];
  v48 = v32[4];

  *(a1 + 40) = v49;
  *(a1 + 48) = v48;
  v50 = *(v32 + 48);
  *(a1 + 56) = v32[5];
  *(a1 + 64) = v50;
  v51 = v65;
  result = sub_1C6C8069C();
  if (!v51)
  {
    v55 = v53;
    v56 = v54;
    v57 = result;

    *(a1 + 24) = v57;

    *(a1 + 16) = v55;

    *(a1 + 32) = v56;
  }

  return result;
}

uint64_t sub_1C6C88C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C89BE0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C88C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C88CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1C6C88D58(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v71 = a2;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v77 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = sub_1C6B673E8(*(a1 + 16), 0);
    v74 = sub_1C6B69160();
    v11 = v76[0];
    v72 = v76[4];
    swift_bridgeObjectRetain_n();
    sub_1C6B688C4(v11);
    if (v74 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v76[0] = v10;
  sub_1C6B64C58(v76);
  if (!v3)
  {
    v72 = 0;

    v12 = v76[0];
    v13 = *(v76[0] + 2);
    if (v13)
    {
      v76[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39864(0, v13, 0);
      v14 = 32;
      v15 = v76[0];
      v75 = a1;
      while (*(a1 + 16))
      {
        v16 = sub_1C6B64DD0(*&v12[v14]);
        if ((v17 & 1) == 0)
        {
          goto LABEL_49;
        }

        v18 = v77;
        v19 = *(v77 + 9);
        sub_1C6C88C70(*(a1 + 56) + v19 * v16, v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v20 = v15;
        v76[0] = v15;
        v21 = v8;
        v23 = *(v15 + 2);
        v22 = *(v15 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_1C6B39864((v22 > 1), v23 + 1, 1);
          v18 = v77;
          v20 = v76[0];
        }

        *(v20 + 2) = v23 + 1;
        v15 = v20;
        sub_1C6C89C34(v21, &v20[((v18[80] + 32) & ~v18[80]) + v23 * v19], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v14 += 4;
        --v13;
        v8 = v21;
        a1 = v75;
        if (!v13)
        {

          goto LABEL_15;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
LABEL_15:
      v24 = v73;
      v3 = v73 + 64;
      v25 = 1 << *(v73 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(v73 + 64);
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      v30 = MEMORY[0x1E69E7CC8];
      v74 = v28;
      v75 = v3;
      while (v27)
      {
        v32 = v29;
LABEL_25:
        v33 = __clz(__rbit64(v27)) | (v32 << 6);
        v34 = *(v24 + 56);
        v35 = (*(v24 + 48) + 16 * v33);
        v36 = v35[1];
        v77 = *v35;
        v37 = *(v34 + 4 * v33);
        swift_bridgeObjectRetain_n();
        v38 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = v38;
        v40 = sub_1C6B64DD0(v37);
        v42 = *(v38 + 2);
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          goto LABEL_52;
        }

        v46 = v41;
        if (*(v38 + 3) >= v45)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v51 = v15;
            v52 = v40;
            sub_1C6B7479C();
            v40 = v52;
            v15 = v51;
            v24 = v73;
          }
        }

        else
        {
          sub_1C6B71770(v45, isUniquelyReferenced_nonNull_native);
          v40 = sub_1C6B64DD0(v37);
          if ((v46 & 1) != (v47 & 1))
          {
            goto LABEL_55;
          }
        }

        v27 &= v27 - 1;
        v30 = v76[0];
        if (v46)
        {
          v31 = (*(v76[0] + 7) + 16 * v40);
          *v31 = v77;
          v31[1] = v36;
        }

        else
        {
          *&v76[0][8 * (v40 >> 6) + 64] |= 1 << v40;
          *(*(v30 + 6) + 4 * v40) = v37;
          v48 = (*(v30 + 7) + 16 * v40);
          *v48 = v77;
          v48[1] = v36;

          v49 = *(v30 + 2);
          v44 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v44)
          {
            goto LABEL_53;
          }

          *(v30 + 2) = v50;
        }

        v29 = v32;
        v28 = v74;
        v3 = v75;
      }

      while (1)
      {
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v32 >= v28)
        {
          break;
        }

        v27 = *(v3 + 8 * v32);
        ++v29;
        if (v27)
        {
          goto LABEL_25;
        }
      }

      v53 = *(v30 + 2);
      v77 = v30;
      if (v53)
      {
        v54 = sub_1C6B673E8(v53, 0);
        v55 = sub_1C6B69160();
        v56 = v76[0];
        swift_bridgeObjectRetain_n();
        sub_1C6B688C4(v56);
        if (v55 != v53)
        {
          goto LABEL_54;
        }

        v30 = v77;
      }

      else
      {

        v54 = MEMORY[0x1E69E7CC0];
      }

      v76[0] = v54;
      v3 = v72;
      sub_1C6B64C58(v76);
      if (v3)
      {
        v70 = v3;
        goto LABEL_58;
      }

      v57 = v76[0];
      v58 = *(v76[0] + 2);
      if (!v58)
      {
LABEL_46:

        return v15;
      }

      v74 = 0;
      v76[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39280(0, v58, 0);
      v59 = 32;
      v60 = v76[0];
      v75 = v57;
      while (*(v30 + 2))
      {
        v61 = sub_1C6B64DD0(*&v57[v59]);
        if ((v62 & 1) == 0)
        {
          goto LABEL_51;
        }

        v63 = v15;
        v64 = (*(v30 + 7) + 16 * v61);
        v65 = *v64;
        v66 = v64[1];
        v76[0] = v60;
        v67 = *(v60 + 2);
        v3 = *(v60 + 3);

        if (v67 >= v3 >> 1)
        {
          sub_1C6B39280((v3 > 1), v67 + 1, 1);
          v60 = v76[0];
        }

        *(v60 + 2) = v67 + 1;
        v68 = &v60[16 * v67];
        *(v68 + 4) = v65;
        *(v68 + 5) = v66;
        v59 += 4;
        --v58;
        v15 = v63;
        v30 = v77;
        v57 = v75;
        if (!v58)
        {
          goto LABEL_46;
        }
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_1C6D7A1C0();
    __break(1u);
  }

  v70 = v3;
LABEL_58:

  __break(1u);
  return result;
}

uint64_t sub_1C6C893C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C89BE0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1C6C89430()
{
  result = qword_1EDCE2AF0[0];
  if (!qword_1EDCE2AF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCE2AF0);
  }

  return result;
}

uint64_t sub_1C6C89644(_DWORD *a1)
{
  result = sub_1C6C80AEC(**(v1 + 32), *(*(v1 + 32) + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1C6C89AE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C89BE0(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C89B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6C89BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6C89C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6C89CB0()
{
  result = qword_1EC1D86C0;
  if (!qword_1EC1D86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D86C0);
  }

  return result;
}

uint64_t HeadlineExposureEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D10();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t HeadlineExposureEvent.Model.isANF.getter()
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
  sub_1C6D77D10();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6C8AE90(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
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

uint64_t HeadlineExposureEvent.Model.isPaid.getter()
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
  sub_1C6D77D10();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6C8AE90(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
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

uint64_t HeadlineExposureEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D20();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = HeadlineExposureEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C8A4A0(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
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

uint64_t sub_1C6C8A5AC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77D10();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t HeadlineExposureEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6D77E80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77E60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D30();
  sub_1C6D77E50();
  (*(v8 + 8))(v11, v7);
  sub_1C6C1EF1C(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t HeadlineExposureEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C8AA7C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D40();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6C8AAD4(v9);
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

void sub_1C6C8AA7C(uint64_t a1)
{
  if (!qword_1EDCE5E30)
  {
    sub_1C6D77EF0();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5E30);
    }
  }
}

uint64_t sub_1C6C8AAD4(uint64_t a1)
{
  sub_1C6C8AA7C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HeadlineExposureEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E3540];
  v3 = sub_1C6D76B90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C6C8AC04(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77D10();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t HeadlineExposureEvent.Model.groupBackingTagID.getter()
{
  sub_1C6C8AA7C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D40();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6C8AAD4(v3);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C8AE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6C8AF30()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D10();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6C8B030()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D20();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = HeadlineExposureEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C8B180(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77D10();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6C8B2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
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

uint64_t sub_1C6C8B3A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77D10();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6C8B48C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6D77E80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77E60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D30();
  sub_1C6D77E50();
  (*(v8 + 8))(v11, v7);
  sub_1C6C1EF1C(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C6C8B608@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E3540];
  v3 = sub_1C6D76B90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C6C8B67C()
{
  sub_1C6C8AA7C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D40();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6C8AAD4(v3);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}