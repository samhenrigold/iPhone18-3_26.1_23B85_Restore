BOOL sub_2514FCDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_2514F808C(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_25150A6B0(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_25150A730(v11, a1, a2);
  return v14;
}

uint64_t sub_2514FCF0C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_25150A730(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoArticle.TileProps.summary.getter@<X0>(void *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(v1 + *(v6 + 28), v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v7 = type metadata accessor for ProtoLocalizedTextProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150A7A0(v5, a1, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25150A730(v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FD14C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v7 + 28), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_25150A730(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FD2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoArticle.TileProps(0) + 28);
  sub_25150A730(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoArticle.TileProps.summary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle.TileProps(0) + 28);
  sub_25150A730(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoArticle.TileProps.summary.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoArticle.TileProps(0) + 28);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25150A98C;
}

BOOL sub_2514FD788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_2514F808C(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_25150A6B0(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_25150A730(v11, a1, a2);
  return v14;
}

uint64_t sub_2514FD8EC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_25150A730(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoArticle.TileProps.subheadline.getter@<X0>(void *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(v1 + *(v6 + 32), v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v7 = type metadata accessor for ProtoLocalizedTextProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150A7A0(v5, a1, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25150A730(v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FDB2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v7 + 32), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_25150A730(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FDCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoArticle.TileProps(0) + 32);
  sub_25150A730(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoArticle.TileProps.subheadline.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle.TileProps(0) + 32);
  sub_25150A730(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoArticle.TileProps.subheadline.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoArticle.TileProps(0) + 32);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_2514FE120;
}

void sub_2514FE120(uint64_t **a1, char a2)
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
    sub_25150A648((*a1)[5], v4, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150A730(v9 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150A7A0(v4, v9 + v3, type metadata accessor for ProtoLocalizedTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_251500F0C(v5, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    sub_25150A730(v9 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150A7A0(v5, v9 + v3, type metadata accessor for ProtoLocalizedTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_2514FE2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_2514F808C(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_25150A6B0(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_25150A730(v11, a1, a2);
  return v14;
}

uint64_t sub_2514FE44C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_25150A730(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoArticle.init()@<X0>(uint64_t a1@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v2 = type metadata accessor for ProtoArticle(0);
  v3 = v2[5];
  v4 = type metadata accessor for ProtoArticle.Metadata(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for ProtoArticle.Theme(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for ProtoArticle.Content(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[9];
  v12 = type metadata accessor for ProtoArticle.TileProps(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a1 + v11, 1, 1, v12);
}

uint64_t sub_2514FE740()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43BEF8);
  __swift_project_value_buffer(v0, qword_27F43BEF8);
  sub_25150A4CC(0);
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890], MEMORY[0x277D83B88]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E650;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "metadata";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "articleTheme";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "content";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "mediaLibrary";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "tileProps";
  *(v16 + 8) = 9;
  *(v16 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoArticle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_25154D030();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_2514FEB0C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_2514FEBC0(a1, v5, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_2514FEC74(a1, v5, a2, a3);
          break;
        case 4:
          sub_2514FED28(a1, v5, a2, a3);
          break;
        case 5:
          sub_2514FEDDC(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_2514FEB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoArticle(0);
  type metadata accessor for ProtoArticle.Metadata(0);
  sub_25150949C(&qword_27F43C060, type metadata accessor for ProtoArticle.Metadata, &protocol conformance descriptor for ProtoArticle.Metadata);
  return sub_25154D0D0();
}

uint64_t sub_2514FEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoArticle(0);
  type metadata accessor for ProtoArticle.Theme(0);
  sub_25150949C(&qword_27F43C090, type metadata accessor for ProtoArticle.Theme, &protocol conformance descriptor for ProtoArticle.Theme);
  return sub_25154D0D0();
}

uint64_t sub_2514FEC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoArticle(0);
  type metadata accessor for ProtoArticle.Content(0);
  sub_25150949C(&qword_27F43C078, type metadata accessor for ProtoArticle.Content, &protocol conformance descriptor for ProtoArticle.Content);
  return sub_25154D0D0();
}

uint64_t sub_2514FED28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoArticle(0);
  type metadata accessor for ProtoArticle.MediaLibrary(0);
  sub_25150949C(&qword_27F43C0A8, type metadata accessor for ProtoArticle.MediaLibrary, &protocol conformance descriptor for ProtoArticle.MediaLibrary);
  return sub_25154D0D0();
}

uint64_t sub_2514FEDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoArticle(0);
  type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150949C(&qword_27F43C0C0, type metadata accessor for ProtoArticle.TileProps, &protocol conformance descriptor for ProtoArticle.TileProps);
  return sub_25154D0D0();
}

uint64_t ProtoArticle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2514FEF48(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2514FF194(v3, a1, a2, a3);
    sub_2514FF3E0(v3, a1, a2, a3);
    sub_2514FF62C(v3, a1, a2, a3);
    sub_2514FF878(v3, a1, a2, a3);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_2514FEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoArticle.Metadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v12 + 20), v7, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25150A730(v7, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  }

  sub_25150A7A0(v7, v11, type metadata accessor for ProtoArticle.Metadata);
  sub_25150949C(&qword_27F43C060, type metadata accessor for ProtoArticle.Metadata, &protocol conformance descriptor for ProtoArticle.Metadata);
  sub_25154D180();
  return sub_251500F0C(v11, type metadata accessor for ProtoArticle.Metadata);
}

uint64_t sub_2514FF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoArticle.Theme(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v12 + 24), v7, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25150A730(v7, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  }

  sub_25150A7A0(v7, v11, type metadata accessor for ProtoArticle.Theme);
  sub_25150949C(&qword_27F43C090, type metadata accessor for ProtoArticle.Theme, &protocol conformance descriptor for ProtoArticle.Theme);
  sub_25154D180();
  return sub_251500F0C(v11, type metadata accessor for ProtoArticle.Theme);
}

uint64_t sub_2514FF3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoArticle.Content(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v12 + 28), v7, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25150A730(v7, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  }

  sub_25150A7A0(v7, v11, type metadata accessor for ProtoArticle.Content);
  sub_25150949C(&qword_27F43C078, type metadata accessor for ProtoArticle.Content, &protocol conformance descriptor for ProtoArticle.Content);
  sub_25154D180();
  return sub_251500F0C(v11, type metadata accessor for ProtoArticle.Content);
}

uint64_t sub_2514FF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v12 + 32), v7, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25150A730(v7, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  }

  sub_25150A7A0(v7, v11, type metadata accessor for ProtoArticle.MediaLibrary);
  sub_25150949C(&qword_27F43C0A8, type metadata accessor for ProtoArticle.MediaLibrary, &protocol conformance descriptor for ProtoArticle.MediaLibrary);
  sub_25154D180();
  return sub_251500F0C(v11, type metadata accessor for ProtoArticle.MediaLibrary);
}

uint64_t sub_2514FF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoArticle.TileProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v12 + 36), v7, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25150A730(v7, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  }

  sub_25150A7A0(v7, v11, type metadata accessor for ProtoArticle.TileProps);
  sub_25150949C(&qword_27F43C0C0, type metadata accessor for ProtoArticle.TileProps, &protocol conformance descriptor for ProtoArticle.TileProps);
  sub_25154D180();
  return sub_251500F0C(v11, type metadata accessor for ProtoArticle.TileProps);
}

uint64_t sub_2514FFB10@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[5];
  v5 = type metadata accessor for ProtoArticle.Metadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for ProtoArticle.Theme(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for ProtoArticle.Content(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[8];
  v11 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = a1[9];
  v13 = type metadata accessor for ProtoArticle.TileProps(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2 + v12, 1, 1, v13);
}

uint64_t sub_2514FFD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C178, type metadata accessor for ProtoArticle, &protocol conformance descriptor for ProtoArticle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2514FFDA8(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C048, type metadata accessor for ProtoArticle, &protocol conformance descriptor for ProtoArticle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2514FFE14(uint64_t a1, uint64_t a2)
{
  sub_25150949C(&qword_27F43C048, type metadata accessor for ProtoArticle, &protocol conformance descriptor for ProtoArticle);

  return sub_25154D100();
}

uint64_t sub_2514FFEB0()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43BF10);
  __swift_project_value_buffer(v0, qword_27F43BF10);
  sub_25150A4CC(0);
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890], MEMORY[0x277D83B88]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "articleId";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "revision";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "datePublished";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoArticle.Metadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25154D030();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_25154D0B0();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t ProtoArticle.Metadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_25154D160(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_25154D160(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_25154D160(), !v4))
      {
        v12 = v3[7];
        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (result = sub_25154D160(), !v4))
        {
          type metadata accessor for ProtoArticle.Metadata(0);
          return sub_25154CFC0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251500340@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_251500390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251500404(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2515004CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C170, type metadata accessor for ProtoArticle.Metadata, &protocol conformance descriptor for ProtoArticle.Metadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150056C(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C060, type metadata accessor for ProtoArticle.Metadata, &protocol conformance descriptor for ProtoArticle.Metadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515005D8(uint64_t a1, uint64_t a2)
{
  sub_25150949C(&qword_27F43C060, type metadata accessor for ProtoArticle.Metadata, &protocol conformance descriptor for ProtoArticle.Metadata);

  return sub_25154D100();
}

uint64_t ProtoArticle.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25154D030();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ProtoComponent(0);
        sub_25150949C(&qword_27F43C000, type metadata accessor for ProtoComponent, &protocol conformance descriptor for ProtoComponent);
        sub_25154D0C0();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t ProtoArticle.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtoComponent(0), sub_25150949C(&qword_27F43C000, type metadata accessor for ProtoComponent, &protocol conformance descriptor for ProtoComponent), result = sub_25154D170(), !v4))
  {
    type metadata accessor for ProtoArticle.Content(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251500968(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C168, type metadata accessor for ProtoArticle.Content, &protocol conformance descriptor for ProtoArticle.Content);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251500A08(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C078, type metadata accessor for ProtoArticle.Content, &protocol conformance descriptor for ProtoArticle.Content);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251500A74(uint64_t a1, uint64_t a2)
{
  sub_25150949C(&qword_27F43C078, type metadata accessor for ProtoArticle.Content, &protocol conformance descriptor for ProtoArticle.Content);

  return sub_25154D100();
}

uint64_t sub_251500B2C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43BF40);
  __swift_project_value_buffer(v0, qword_27F43BF40);
  sub_25150A4CC(0);
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890], MEMORY[0x277D83B88]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25154E650;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "selectedState";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25154D190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v17 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "card";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v17 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "background";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v17 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "text";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v17 + v4 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "secondaryTint";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_25154D1A0();
}

uint64_t sub_251500DE4()
{
  type metadata accessor for ProtoArticle.Theme._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  v2 = type metadata accessor for ProtoColorValue(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint, 1, 1, v2);
  qword_27F43BF58 = v0;
  return result;
}

uint64_t sub_251500F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251500FAC(uint64_t a1)
{
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  v7 = type metadata accessor for ProtoColorValue(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  v8(v1 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card, 1, 1, v7);
  v10 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  v8(v1 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background, 1, 1, v7);
  v20 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  v8(v1 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text, 1, 1, v7);
  v21 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  v8(v1 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint, 1, 1, v7);
  v11 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  swift_beginAccess();
  sub_25150A6B0(a1 + v11, v5, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  swift_beginAccess();
  sub_2515093D0(v5, v1 + v6);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  swift_beginAccess();
  sub_25150A6B0(a1 + v12, v5, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  swift_beginAccess();
  sub_2515093D0(v5, v1 + v9);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  swift_beginAccess();
  sub_25150A6B0(a1 + v13, v5, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  swift_beginAccess();
  sub_2515093D0(v5, v1 + v10);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  swift_beginAccess();
  sub_25150A6B0(a1 + v14, v5, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v15 = v20;
  swift_beginAccess();
  sub_2515093D0(v5, v1 + v15);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  swift_beginAccess();
  sub_25150A6B0(a1 + v16, v5, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);

  v17 = v21;
  swift_beginAccess();
  sub_2515093D0(v5, v1 + v17);
  swift_endAccess();
  return v1;
}

uint64_t sub_251501320()
{
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A730(v0 + OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ProtoArticle.Theme.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for ProtoArticle.Theme._StorageClass(0);
    swift_allocObject();
    v10 = sub_251500FAC(v11);
    *(v4 + v8) = v10;
  }

  return sub_2515014C0(v10, a1, a2, a3);
}

uint64_t sub_2515014C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25154D030();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
LABEL_5:
            sub_251501608(v11, v12, v13, v14, v15);
            break;
          case 4:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
            goto LABEL_5;
          case 5:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
            goto LABEL_5;
        }
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251501608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for ProtoColorValue(0);
  sub_25150949C(&qword_27F43C1C8, type metadata accessor for ProtoColorValue, &protocol conformance descriptor for ProtoColorValue);
  sub_25154D0D0();
  return swift_endAccess();
}

uint64_t ProtoArticle.Theme.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ProtoArticle.Theme(0);
  result = sub_25150174C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25150174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState, 1);
  if (!v4)
  {
    sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card, 2);
    sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background, 3);
    sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text, 4);
    return sub_251501820(a1, a2, a3, a4, &OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint, 5);
  }

  return result;
}

uint64_t sub_251501820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17[1] = a6;
  v17[2] = a3;
  v17[7] = a4;
  v17[0] = a2;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for ProtoColorValue(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  swift_beginAccess();
  sub_25150A6B0(a1 + v15, v10, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_25150A730(v10, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  }

  sub_25150A7A0(v10, v14, type metadata accessor for ProtoColorValue);
  sub_25150949C(&qword_27F43C1C8, type metadata accessor for ProtoColorValue, &protocol conformance descriptor for ProtoColorValue);
  sub_25154D180();
  return sub_251500F0C(v14, type metadata accessor for ProtoColorValue);
}

BOOL sub_251501A80(uint64_t a1, uint64_t a2)
{
  v108 = type metadata accessor for ProtoColorValue(0);
  v109 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v91[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25150A808(0, &qword_27F43C1C0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v6 = v5;
  v7 = MEMORY[0x28223BE20](v5);
  v94 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v97 = &v91[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v100 = &v91[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v104 = &v91[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v91[-v15];
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v93 = &v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v96 = &v91[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v91[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v99 = &v91[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v98 = &v91[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v102 = &v91[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v101 = &v91[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v107 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  swift_beginAccess();
  sub_25150A6B0(a1 + v39, v38, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v40 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  swift_beginAccess();
  v105 = v6;
  v41 = *(v6 + 48);
  sub_25150A6B0(v38, v16, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v42 = v109;
  v43 = v108;
  sub_25150A6B0(a2 + v40, &v16[v41], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v46 = *(v42 + 48);
  v44 = v42 + 48;
  v45 = v46;
  if (v46(v16, 1, v43) == 1)
  {

    sub_25150A730(v38, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    v47 = a1;
    if (v45(&v16[v41], 1, v43) != 1)
    {
      goto LABEL_14;
    }

    v103 = v45;
    sub_25150A730(v16, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  }

  else
  {
    sub_25150A6B0(v16, v36, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v45(&v16[v41], 1, v43) == 1)
    {

      sub_25150A730(v38, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
      v48 = v36;
LABEL_13:
      sub_251500F0C(v48, type metadata accessor for ProtoColorValue);
      goto LABEL_14;
    }

    v103 = v45;
    v49 = &v16[v41];
    v50 = v106;
    sub_25150A7A0(v49, v106, type metadata accessor for ProtoColorValue);

    v51 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v36, v50);
    sub_251500F0C(v50, type metadata accessor for ProtoColorValue);
    sub_25150A730(v38, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    v52 = v36;
    v47 = a1;
    sub_251500F0C(v52, type metadata accessor for ProtoColorValue);
    sub_25150A730(v16, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if ((v51 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v53 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  swift_beginAccess();
  v54 = v107;
  sub_25150A6B0(v47 + v53, v107, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v55 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  swift_beginAccess();
  v56 = v105;
  v57 = *(v105 + 48);
  v16 = v104;
  sub_25150A6B0(v54, v104, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A6B0(a2 + v55, &v16[v57], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v58 = v108;
  v59 = v103;
  if (v103(v16, 1, v108) == 1)
  {
    sub_25150A730(v54, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v59(&v16[v57], 1, v58) == 1)
    {
      v103 = v59;
      v109 = v44;
      sub_25150A730(v16, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
      goto LABEL_20;
    }

LABEL_14:
    v62 = v16;
LABEL_15:
    sub_25150A40C(v62, &qword_27F43C1C0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    goto LABEL_16;
  }

  v60 = v101;
  sub_25150A6B0(v16, v101, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v103 = v59;
  if (v59(&v16[v57], 1, v58) == 1)
  {
    v61 = &v111;
LABEL_12:
    sub_25150A730(*(v61 - 32), &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    v48 = v60;
    goto LABEL_13;
  }

  v109 = v44;
  v64 = v106;
  sub_25150A7A0(&v16[v57], v106, type metadata accessor for ProtoColorValue);
  v92 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v60, v64);
  sub_251500F0C(v64, type metadata accessor for ProtoColorValue);
  sub_25150A730(v107, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_251500F0C(v60, type metadata accessor for ProtoColorValue);
  sub_25150A730(v16, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if ((v92 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v65 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  swift_beginAccess();
  v66 = v102;
  sub_25150A6B0(v47 + v65, v102, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v67 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  swift_beginAccess();
  v68 = *(v56 + 48);
  v69 = v100;
  sub_25150A6B0(v66, v100, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A6B0(a2 + v67, &v69[v68], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v70 = v103;
  if (v103(v69, 1, v58) == 1)
  {
    sub_25150A730(v66, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v70(&v69[v68], 1, v58) == 1)
    {
      v71 = v56;
      sub_25150A730(v69, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
      goto LABEL_27;
    }

LABEL_25:
    v62 = v69;
    goto LABEL_15;
  }

  v72 = v98;
  sub_25150A6B0(v69, v98, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if (v70(&v69[v68], 1, v58) == 1)
  {
    sub_25150A730(v102, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    sub_251500F0C(v72, type metadata accessor for ProtoColorValue);
    goto LABEL_25;
  }

  v71 = v56;
  v73 = &v69[v68];
  v74 = v106;
  sub_25150A7A0(v73, v106, type metadata accessor for ProtoColorValue);
  v75 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v72, v74);
  sub_251500F0C(v74, type metadata accessor for ProtoColorValue);
  sub_25150A730(v102, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_251500F0C(v72, type metadata accessor for ProtoColorValue);
  sub_25150A730(v69, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if ((v75 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v76 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  swift_beginAccess();
  v77 = v99;
  sub_25150A6B0(v47 + v76, v99, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v78 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  swift_beginAccess();
  v79 = *(v71 + 48);
  v16 = v97;
  sub_25150A6B0(v77, v97, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A6B0(a2 + v78, &v16[v79], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v80 = v103;
  if (v103(v16, 1, v58) != 1)
  {
    v60 = v95;
    sub_25150A6B0(v16, v95, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v80(&v16[v79], 1, v58) == 1)
    {
      v61 = v110;
      goto LABEL_12;
    }

    v81 = v106;
    sub_25150A7A0(&v16[v79], v106, type metadata accessor for ProtoColorValue);
    v82 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v60, v81);
    sub_251500F0C(v81, type metadata accessor for ProtoColorValue);
    sub_25150A730(v99, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    sub_251500F0C(v60, type metadata accessor for ProtoColorValue);
    sub_25150A730(v16, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v82)
    {
      goto LABEL_33;
    }

LABEL_16:

    return 0;
  }

  sub_25150A730(v77, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if (v80(&v16[v79], 1, v58) != 1)
  {
    goto LABEL_14;
  }

  sub_25150A730(v16, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
LABEL_33:
  v83 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  swift_beginAccess();
  v84 = v96;
  sub_25150A6B0(v47 + v83, v96, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v85 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  swift_beginAccess();
  v86 = *(v105 + 48);
  v87 = v94;
  sub_25150A6B0(v84, v94, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_25150A6B0(a2 + v85, &v87[v86], &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if (v80(v87, 1, v58) == 1)
  {

    sub_25150A730(v84, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    if (v80(&v87[v86], 1, v58) == 1)
    {
      sub_25150A730(v87, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
      return 1;
    }

    goto LABEL_38;
  }

  v88 = v93;
  sub_25150A6B0(v87, v93, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  if (v80(&v87[v86], 1, v58) == 1)
  {

    sub_25150A730(v96, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    sub_251500F0C(v88, type metadata accessor for ProtoColorValue);
LABEL_38:
    sub_25150A40C(v87, &qword_27F43C1C0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    return 0;
  }

  v89 = v106;
  sub_25150A7A0(&v87[v86], v106, type metadata accessor for ProtoColorValue);
  v90 = _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(v88, v89);

  sub_251500F0C(v89, type metadata accessor for ProtoColorValue);
  sub_25150A730(v96, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  sub_251500F0C(v88, type metadata accessor for ProtoColorValue);
  sub_25150A730(v87, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  return (v90 & 1) != 0;
}

uint64_t sub_251502C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_27F43B9E0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27F43BF58;
}

uint64_t sub_251502CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C160, type metadata accessor for ProtoArticle.Theme, &protocol conformance descriptor for ProtoArticle.Theme);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251502D80(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C090, type metadata accessor for ProtoArticle.Theme, &protocol conformance descriptor for ProtoArticle.Theme);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251502DEC(uint64_t a1, uint64_t a2)
{
  sub_25150949C(&qword_27F43C090, type metadata accessor for ProtoArticle.Theme, &protocol conformance descriptor for ProtoArticle.Theme);

  return sub_25154D100();
}

uint64_t sub_251502EA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25154D1C0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_25150A4CC(0);
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890], MEMORY[0x277D83B88]);
  v9 = v8 - 8;
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25154E670;
  v12 = v11 + v10 + *(v9 + 56);
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_25154D190();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_25154D1A0();
}

uint64_t ProtoArticle.MediaLibrary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_25154D030();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2515030B0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2515030B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25154CFB0();
  type metadata accessor for ProtoRichMedia(0);
  sub_25150949C(&qword_27F43C020, type metadata accessor for ProtoRichMedia, &protocol conformance descriptor for ProtoRichMedia);
  sub_25150949C(&qword_27F43C028, type metadata accessor for ProtoRichMedia, &protocol conformance descriptor for ProtoRichMedia);
  return sub_25154D020();
}

uint64_t ProtoArticle.MediaLibrary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_25154CFB0(), type metadata accessor for ProtoRichMedia(0), sub_25150949C(&qword_27F43C020, type metadata accessor for ProtoRichMedia, &protocol conformance descriptor for ProtoRichMedia), sub_25150949C(&qword_27F43C028, type metadata accessor for ProtoRichMedia, &protocol conformance descriptor for ProtoRichMedia), result = sub_25154D110(), !v5))
  {
    type metadata accessor for ProtoArticle.MediaLibrary(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251503310(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t sub_25150349C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C158, type metadata accessor for ProtoArticle.MediaLibrary, &protocol conformance descriptor for ProtoArticle.MediaLibrary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150353C(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C0A8, type metadata accessor for ProtoArticle.MediaLibrary, &protocol conformance descriptor for ProtoArticle.MediaLibrary);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515035A8(uint64_t a1, uint64_t a2)
{
  sub_25150949C(&qword_27F43C0A8, type metadata accessor for ProtoArticle.MediaLibrary, &protocol conformance descriptor for ProtoArticle.MediaLibrary);

  return sub_25154D100();
}

uint64_t sub_25150363C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t sub_251503704()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43BF78);
  __swift_project_value_buffer(v0, qword_27F43BF78);
  sub_25150A4CC(0);
  sub_25150A880(0, &qword_27F43C1A8, MEMORY[0x277D21890], MEMORY[0x277D83B88]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "title";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "summary";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "subheadline";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "previewImageId";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25150397C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25154D1C0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t ProtoArticle.TileProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_25154D030();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_251503C5C(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        sub_25154D0B0();
      }
    }

    else if (result == 1)
    {
      sub_251503AF4(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_251503BA8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_251503AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoArticle.TileProps(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251503BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoArticle.TileProps(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251503C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoArticle.TileProps(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoArticle.TileProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251503DEC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251504038(v3, a1, a2, a3);
    sub_251504284(v3, a1, a2, a3);
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_25154D160();
    }

    type metadata accessor for ProtoArticle.TileProps(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251503DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v12 + 24), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25150A730(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150A7A0(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_251500F0C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251504038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v12 + 28), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25150A730(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150A7A0(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_251500F0C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251504284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v12 + 32), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25150A730(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150A7A0(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150949C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_251500F0C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25150451C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_25154D590();
  a1(0);
  sub_25150949C(a2, a3, a4);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_2515045A4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[6];
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v8(&a2[a1[7]], 1, 1, v5);
  v6 = &a2[a1[8]];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_2515046AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251504720(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2515047C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150949C(&qword_27F43C150, type metadata accessor for ProtoArticle.TileProps, &protocol conformance descriptor for ProtoArticle.TileProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251504864@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25154D1C0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_251504900(uint64_t a1)
{
  v2 = sub_25150949C(&qword_27F43C0C0, type metadata accessor for ProtoArticle.TileProps, &protocol conformance descriptor for ProtoArticle.TileProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25150496C(uint64_t a1, uint64_t a2)
{
  sub_25154D590();
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_2515049C4(uint64_t a1, uint64_t a2)
{
  sub_25150949C(&qword_27F43C0C0, type metadata accessor for ProtoArticle.TileProps, &protocol conformance descriptor for ProtoArticle.TileProps);

  return sub_25154D100();
}

uint64_t sub_251504A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25154D590();
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_251504A98(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for ProtoTextProps(0);
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F808C(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  sub_25150A808(0, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = (&v38 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v19 || a1 == a2)
  {
    v36 = 1;
    return v36 & 1;
  }

  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = v4;
  v22 = a1 + v20;
  v23 = a2 + v20;
  v42 = &v38 - v17;
  v43 = (v21 + 48);
  v24 = *(v16 + 72);
  v38 = v8;
  v39 = v24;
  v25 = &qword_27F43C188;
  v41 = v12;
  while (1)
  {
    sub_25150A648(v22, v18, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
    sub_25150A648(v23, v15, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
    v26 = *(v12 + 24);
    v27 = *(v44 + 48);
    sub_25150A6B0(v18 + v26, v11, v25, type metadata accessor for ProtoTextProps);
    v28 = v25;
    v29 = v45;
    sub_25150A6B0(&v15[v26], &v11[v27], v28, type metadata accessor for ProtoTextProps);
    v30 = *v43;
    if ((*v43)(v11, 1, v29) != 1)
    {
      break;
    }

    if (v30(&v11[v27], 1, v45) != 1)
    {
      goto LABEL_25;
    }

    v25 = v28;
    sub_25150A730(v11, v28, type metadata accessor for ProtoTextProps);
    v12 = v41;
    v18 = v42;
LABEL_10:
    v34 = *v18;
    v35 = *v15;
    if (v15[8] == 1)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            goto LABEL_26;
          }
        }

        else if (v34 != 2)
        {
          goto LABEL_26;
        }
      }

      else if (v34)
      {
        goto LABEL_26;
      }
    }

    else if (v34 != v35)
    {
      goto LABEL_26;
    }

    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v36 = sub_25154D240();
    sub_251500F0C(v15, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
    sub_251500F0C(v18, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
    if (v36)
    {
      v23 += v39;
      v22 += v39;
      if (--v19)
      {
        continue;
      }
    }

    return v36 & 1;
  }

  v31 = v38;
  sub_25150A6B0(v11, v38, v28, type metadata accessor for ProtoTextProps);
  if (v30(&v11[v27], 1, v45) != 1)
  {
    v32 = v40;
    sub_25150A7A0(&v11[v27], v40, type metadata accessor for ProtoTextProps);
    v33 = static ProtoTextProps.== infix(_:_:)(v31, v32);
    sub_251500F0C(v32, type metadata accessor for ProtoTextProps);
    sub_251500F0C(v31, type metadata accessor for ProtoTextProps);
    sub_25150A730(v11, v28, type metadata accessor for ProtoTextProps);
    v25 = v28;
    v12 = v41;
    v18 = v42;
    if ((v33 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  sub_251500F0C(v31, type metadata accessor for ProtoTextProps);
LABEL_25:
  sub_25150A40C(v11, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v18 = v42;
LABEL_26:
  sub_251500F0C(v15, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
  sub_251500F0C(v18, type metadata accessor for ProtoFullMainHeaderProps.TextItem);
LABEL_27:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_25150521C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_25150A648(v20, v17, a4);
        sub_25150A648(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_251500F0C(v14, a6);
        sub_251500F0C(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_2515053BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = (&v43 - v9);
  sub_25150A808(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v51 = type metadata accessor for ProtoTableProps.ColumnHeader(0);
  v13 = MEMORY[0x28223BE20](v51);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v18 = (&v43 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_29:
    v42 = 0;
    return v42 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v52 = a2 + v20;
  v22 = (v5 + 48);
  v23 = *(v16 + 72);
  v44 = v15;
  v45 = v23;
  v24 = &qword_27F43BFE8;
  v47 = &v43 - v17;
  while (1)
  {
    result = sub_25150A648(v21, v18, type metadata accessor for ProtoTableProps.ColumnHeader);
    if (!v19)
    {
      break;
    }

    v49 = v19;
    v50 = v21;
    v26 = v24;
    v27 = v22;
    v28 = v12;
    v29 = v18;
    v30 = v7;
    sub_25150A648(v52, v15, type metadata accessor for ProtoTableProps.ColumnHeader);
    v31 = v4;
    v32 = *(v51 + 24);
    v33 = *(v48 + 48);
    v34 = v29 + v32;
    v12 = v28;
    v22 = v27;
    v24 = v26;
    sub_25150A6B0(v34, v12, v26, type metadata accessor for ProtoLocalizedTextProps);
    v35 = v15 + v32;
    v4 = v31;
    sub_25150A6B0(v35, &v12[v33], v26, type metadata accessor for ProtoLocalizedTextProps);
    v36 = *v22;
    if ((*v22)(v12, 1, v31) == 1)
    {
      v37 = v36(&v12[v33], 1, v31);
      v7 = v30;
      v18 = v47;
      if (v37 != 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v38 = v46;
      sub_25150A6B0(v12, v46, v26, type metadata accessor for ProtoLocalizedTextProps);
      if (v36(&v12[v33], 1, v31) == 1)
      {
        sub_251500F0C(v38, type metadata accessor for ProtoLocalizedTextProps);
        v15 = v44;
        v18 = v47;
LABEL_25:
        sub_25150A40C(v12, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
        goto LABEL_28;
      }

      v7 = v30;
      sub_25150A7A0(&v12[v33], v30, type metadata accessor for ProtoLocalizedTextProps);
      v39 = *(v30 + 1);
      v40 = *v38 == *v30;
      v18 = v47;
      if ((!v40 || v38[1] != v39) && (sub_25154D520() & 1) == 0 || (v38[2] != *(v7 + 2) || v38[3] != *(v7 + 3)) && (sub_25154D520() & 1) == 0)
      {
        sub_251500F0C(v7, type metadata accessor for ProtoLocalizedTextProps);
LABEL_27:
        sub_251500F0C(v38, type metadata accessor for ProtoLocalizedTextProps);
        sub_25150A730(v12, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
        v15 = v44;
LABEL_28:
        sub_251500F0C(v15, type metadata accessor for ProtoTableProps.ColumnHeader);
        sub_251500F0C(v18, type metadata accessor for ProtoTableProps.ColumnHeader);
        goto LABEL_29;
      }

      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = sub_25154D240();
      sub_251500F0C(v7, type metadata accessor for ProtoLocalizedTextProps);
      if ((v41 & 1) == 0)
      {
        goto LABEL_27;
      }

      sub_251500F0C(v38, type metadata accessor for ProtoLocalizedTextProps);
      v15 = v44;
    }

    sub_25150A730(v12, v26, type metadata accessor for ProtoLocalizedTextProps);
    if (*v18 != *v15)
    {
      goto LABEL_28;
    }

    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v42 = sub_25154D240();
    sub_251500F0C(v15, type metadata accessor for ProtoTableProps.ColumnHeader);
    sub_251500F0C(v18, type metadata accessor for ProtoTableProps.ColumnHeader);
    if (v42)
    {
      v19 = v49 - 1;
      v52 += v45;
      v21 = v50 + v45;
      if (v49 != 1)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251505A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (v34 - v9);
  v11 = type metadata accessor for ProtoTableProps.Column(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_26:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = 0;
  v36 = v14;
  v37 = a2 + v19;
  v38 = *(v15 + 72);
  v39 = v20;
  v34[1] = v11;
  v35 = v34 - v16;
  v34[0] = v18;
  while (1)
  {
    v22 = v38 * v21;
    result = sub_25150A648(v39 + v38 * v21, v17, type metadata accessor for ProtoTableProps.Column);
    if (v21 == v18)
    {
      break;
    }

    v40 = v21;
    result = sub_25150A648(v37 + v22, v14, type metadata accessor for ProtoTableProps.Column);
    v24 = *v17;
    v25 = *v14;
    v26 = *(*v17 + 16);
    if (v26 != *(*v14 + 16))
    {
LABEL_25:
      sub_251500F0C(v36, type metadata accessor for ProtoTableProps.Column);
      sub_251500F0C(v35, type metadata accessor for ProtoTableProps.Column);
      goto LABEL_26;
    }

    if (v26 && v24 != v25)
    {
      v27 = 0;
      v28 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v29 = v24 + v28;
      v30 = v25 + v28;
      while (v27 < *(v24 + 16))
      {
        v31 = *(v42 + 72) * v27;
        result = sub_25150A648(v29 + v31, v10, type metadata accessor for ProtoLocalizedTextProps);
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_29;
        }

        sub_25150A648(v30 + v31, v8, type metadata accessor for ProtoLocalizedTextProps);
        if ((*v10 != *v8 || v10[1] != v8[1]) && (sub_25154D520() & 1) == 0 || (v10[2] != v8[2] || v10[3] != v8[3]) && (sub_25154D520() & 1) == 0)
        {
          sub_251500F0C(v8, type metadata accessor for ProtoLocalizedTextProps);
          sub_251500F0C(v10, type metadata accessor for ProtoLocalizedTextProps);
          goto LABEL_25;
        }

        sub_25154CFE0();
        sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v32 = sub_25154D240();
        sub_251500F0C(v8, type metadata accessor for ProtoLocalizedTextProps);
        result = sub_251500F0C(v10, type metadata accessor for ProtoLocalizedTextProps);
        if ((v32 & 1) == 0)
        {
          goto LABEL_25;
        }

        if (v26 == ++v27)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

LABEL_20:
    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = v35;
    v14 = v36;
    v33 = sub_25154D240();
    sub_251500F0C(v14, type metadata accessor for ProtoTableProps.Column);
    sub_251500F0C(v17, type metadata accessor for ProtoTableProps.Column);
    if (v33)
    {
      v21 = v40 + 1;
      v18 = v34[0];
      if (v40 + 1 != v34[0])
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251505F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_25150A648(v13, v10, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150A648(v14, v7, type metadata accessor for ProtoLocalizedTextProps);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_25154D520() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_25154D520() & 1) == 0)
      {
        break;
      }

      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_25154D240();
      sub_251500F0C(v7, type metadata accessor for ProtoLocalizedTextProps);
      sub_251500F0C(v10, type metadata accessor for ProtoLocalizedTextProps);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_251500F0C(v7, type metadata accessor for ProtoLocalizedTextProps);
    sub_251500F0C(v10, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_2515061B8(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F808C(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  sub_25150A808(0, &qword_27F43C1D8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for ProtoComponent(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = (&v40 - v18);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_59:
    v38 = 0;
    return v38 & 1;
  }

  if (v20 && a1 != a2)
  {
    v44 = v13;
    v45 = v12;
    v41 = v6;
    v42 = v9;
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = a1 + v21;
    v23 = a2 + v21;
    v46 = (v4 + 48);
    v43 = *(v17 + 72);
    v24 = &qword_27F43C1D0;
    v25 = v45;
    while (1)
    {
      sub_25150A648(v22, v19, type metadata accessor for ProtoComponent);
      sub_25150A648(v23, v16, type metadata accessor for ProtoComponent);
      v26 = *v19 == *v16 && v19[1] == *(v16 + 1);
      if (!v26 && (sub_25154D520() & 1) == 0)
      {
        break;
      }

      v27 = v19[2];
      v28 = *(v16 + 2);
      if (v16[24] == 1)
      {
        if (v28 > 5)
        {
          if (v28 > 8)
          {
            if (v28 == 9)
            {
              if (v27 != 9)
              {
                break;
              }
            }

            else if (v28 == 10)
            {
              if (v27 != 10)
              {
                break;
              }
            }

            else if (v27 != 11)
            {
              break;
            }
          }

          else if (v28 == 6)
          {
            if (v27 != 6)
            {
              break;
            }
          }

          else if (v28 == 7)
          {
            if (v27 != 7)
            {
              break;
            }
          }

          else if (v27 != 8)
          {
            break;
          }
        }

        else if (v28 > 2)
        {
          if (v28 == 3)
          {
            if (v27 != 3)
            {
              break;
            }
          }

          else if (v28 == 4)
          {
            if (v27 != 4)
            {
              break;
            }
          }

          else if (v27 != 5)
          {
            break;
          }
        }

        else if (v28)
        {
          if (v28 == 1)
          {
            if (v27 != 1)
            {
              break;
            }
          }

          else if (v27 != 2)
          {
            break;
          }
        }

        else if (v27)
        {
          break;
        }
      }

      else if (v27 != v28)
      {
        break;
      }

      v48 = v22;
      v29 = *(v13 + 24);
      v30 = *(v47 + 48);
      sub_25150A6B0(v19 + v29, v25, v24, type metadata accessor for ProtoComponent.OneOf_Props);
      v31 = v24;
      v32 = v49;
      sub_25150A6B0(&v16[v29], v25 + v30, v31, type metadata accessor for ProtoComponent.OneOf_Props);
      v33 = *v46;
      if ((*v46)(v25, 1, v32) == 1)
      {
        if (v33(v25 + v30, 1, v49) != 1)
        {
          goto LABEL_57;
        }

        v24 = v31;
        sub_25150A730(v25, v31, type metadata accessor for ProtoComponent.OneOf_Props);
        v13 = v44;
        v34 = v48;
      }

      else
      {
        v35 = v42;
        sub_25150A6B0(v25, v42, v31, type metadata accessor for ProtoComponent.OneOf_Props);
        if (v33(v25 + v30, 1, v49) == 1)
        {
          sub_251500F0C(v35, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_57:
          sub_25150A40C(v25, &qword_27F43C1D8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
          break;
        }

        v36 = v41;
        sub_25150A7A0(v25 + v30, v41, type metadata accessor for ProtoComponent.OneOf_Props);
        v37 = _s25HealthContentDaemonPlugin14ProtoComponentV11OneOf_PropsO2eeoiySbAE_AEtFZ_0(v35, v36);
        sub_251500F0C(v36, type metadata accessor for ProtoComponent.OneOf_Props);
        sub_251500F0C(v35, type metadata accessor for ProtoComponent.OneOf_Props);
        sub_25150A730(v25, v31, type metadata accessor for ProtoComponent.OneOf_Props);
        v13 = v44;
        v24 = v31;
        v34 = v48;
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_25154D240();
      sub_251500F0C(v16, type metadata accessor for ProtoComponent);
      sub_251500F0C(v19, type metadata accessor for ProtoComponent);
      if (v38)
      {
        v23 += v43;
        v22 = v34 + v43;
        if (--v20)
        {
          continue;
        }
      }

      return v38 & 1;
    }

    sub_251500F0C(v16, type metadata accessor for ProtoComponent);
    sub_251500F0C(v19, type metadata accessor for ProtoComponent);
    goto LABEL_59;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t sub_251506874(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for ProtoRichMedia(0);
  v4 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v56 = &v52 - v11;
  sub_2514F808C(0, &qword_27F43C1B0, sub_25150A548, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = a1;
  v55 = (&v52 - v15);
  v57 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v53 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v59 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_18:
    v30 = (*(v54 + 48) + 16 * v24);
    v32 = *v30;
    v31 = v30[1];
    v33 = v56;
    sub_25150A648(*(v54 + 56) + *(v4 + 72) * v24, v56, type metadata accessor for ProtoRichMedia);
    sub_25150A548(0);
    v35 = v34;
    v36 = *(v34 + 48);
    v37 = v57;
    *v57 = v32;
    v37[1] = v31;
    v38 = v33;
    v27 = v37;
    sub_25150A7A0(v38, v37 + v36, type metadata accessor for ProtoRichMedia);
    (*(*(v35 - 8) + 56))(v27, 0, 1, v35);

LABEL_19:
    v39 = v27;
    v40 = v55;
    sub_25150A5B4(v39, v55);
    sub_25150A548(0);
    v41 = (*(*(v35 - 8) + 48))(v40, 1, v35);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = *(v35 + 48);
    v44 = *v40;
    v45 = v40[1];
    sub_25150A7A0(v40 + v43, v10, type metadata accessor for ProtoRichMedia);
    v46 = sub_25154ADBC(v44, v45);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_43;
    }

    sub_25150A648(*(a2 + 56) + *(v4 + 72) * v46, v7, type metadata accessor for ProtoRichMedia);
    if ((*v7 != *v10 || v7[1] != *(v10 + 1)) && (sub_25154D520() & 1) == 0 || (v7[2] != *(v10 + 2) || v7[3] != *(v10 + 3)) && (sub_25154D520() & 1) == 0)
    {
LABEL_42:
      sub_251500F0C(v7, type metadata accessor for ProtoRichMedia);
LABEL_43:
      sub_251500F0C(v10, type metadata accessor for ProtoRichMedia);
      return 0;
    }

    v49 = v7[4];
    v50 = *(v10 + 4);
    if (v10[40] == 1)
    {
      if (v50 <= 1)
      {
        if (v50)
        {
          if (v49 != 1)
          {
            goto LABEL_42;
          }
        }

        else if (v49)
        {
          goto LABEL_42;
        }
      }

      else if (v50 == 2)
      {
        if (v49 != 2)
        {
          goto LABEL_42;
        }
      }

      else if (v50 == 3)
      {
        if (v49 != 3)
        {
          goto LABEL_42;
        }
      }

      else if (v49 != 4)
      {
        goto LABEL_42;
      }
    }

    else if (v49 != v50)
    {
      goto LABEL_42;
    }

    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v23 = sub_25154D240();
    sub_251500F0C(v7, type metadata accessor for ProtoRichMedia);
    result = sub_251500F0C(v10, type metadata accessor for ProtoRichMedia);
    v21 = v59;
    if ((v23 & 1) == 0)
    {
      return v42;
    }
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v27 = v57;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      sub_25150A548(0);
      v35 = v51;
      (*(*(v51 - 8) + 56))(v27, 1, 1, v51);
      v59 = 0;
      v17 = v26;
      goto LABEL_19;
    }

    v29 = *(v53 + 8 * v28);
    ++v17;
    if (v29)
    {
      v59 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251506E38(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25154ADBC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25154D520();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v127 = a2;
  v128 = a1;
  v107 = type metadata accessor for ProtoArticle.TileProps(0);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = (&v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = MEMORY[0x277D83D88];
  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v126 = &v102 - v5;
  sub_25150A808(0, &qword_27F43C1E0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v105 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v102 - v7;
  v8 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v112 = *(v8 - 8);
  v113 = v8;
  MEMORY[0x28223BE20](v8);
  v104 = (&v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v109 = (&v102 - v11);
  sub_25150A808(0, &qword_27F43C1E8, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v111 = v12;
  MEMORY[0x28223BE20](v12);
  v114 = &v102 - v13;
  v14 = type metadata accessor for ProtoArticle.Content(0);
  v118 = *(v14 - 8);
  v119 = v14;
  MEMORY[0x28223BE20](v14);
  v110 = (&v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, v3);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = (&v102 - v17);
  sub_25150A808(0, &qword_27F43C1F0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v117 = v18;
  MEMORY[0x28223BE20](v18);
  v120 = &v102 - v19;
  v20 = type metadata accessor for ProtoArticle.Theme(0);
  v122 = *(v20 - 8);
  v123 = v20;
  MEMORY[0x28223BE20](v20);
  v116 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, v3);
  MEMORY[0x28223BE20](v22 - 8);
  v121 = &v102 - v23;
  sub_25150A808(0, &qword_27F43C1F8, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v25 = v24;
  MEMORY[0x28223BE20](v24);
  v124 = &v102 - v26;
  v27 = type metadata accessor for ProtoArticle.Metadata(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = (&v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, v3);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = (&v102 - v32);
  sub_25150A808(0, &qword_27F43C200, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v35 = v34 - 8;
  MEMORY[0x28223BE20](v34);
  v37 = &v102 - v36;
  v125 = type metadata accessor for ProtoArticle(0);
  v38 = *(v125 + 20);
  v39 = *(v35 + 56);
  sub_25150A6B0(v128 + v38, v37, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v40 = v127 + v38;
  v41 = v127;
  sub_25150A6B0(v40, &v37[v39], &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v42 = *(v28 + 48);
  if (v42(v37, 1, v27) == 1)
  {
    if (v42(&v37[v39], 1, v27) == 1)
    {
      sub_25150A730(v37, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
      goto LABEL_8;
    }

LABEL_6:
    v43 = &qword_27F43C200;
    v44 = &qword_27F43BF90;
    v45 = type metadata accessor for ProtoArticle.Metadata;
    v46 = v37;
LABEL_44:
    sub_25150A40C(v46, v43, v44, v45);
    goto LABEL_45;
  }

  sub_25150A6B0(v37, v33, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  if (v42(&v37[v39], 1, v27) == 1)
  {
    sub_251500F0C(v33, type metadata accessor for ProtoArticle.Metadata);
    goto LABEL_6;
  }

  sub_25150A7A0(&v37[v39], v30, type metadata accessor for ProtoArticle.Metadata);
  v47 = _s25HealthContentDaemonPlugin12ProtoArticleV8MetadataV2eeoiySbAE_AEtFZ_0(v33, v30);
  sub_251500F0C(v30, type metadata accessor for ProtoArticle.Metadata);
  sub_251500F0C(v33, type metadata accessor for ProtoArticle.Metadata);
  sub_25150A730(v37, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  if ((v47 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_8:
  v48 = v124;
  v49 = v125;
  v50 = *(v125 + 24);
  v51 = *(v25 + 48);
  v52 = v128;
  sub_25150A6B0(v128 + v50, v124, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  sub_25150A6B0(v41 + v50, v48 + v51, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v53 = v123;
  v54 = *(v122 + 48);
  if (v54(v48, 1, v123) == 1)
  {
    v55 = v54(v48 + v51, 1, v53);
    v56 = v126;
    if (v55 == 1)
    {
      sub_25150A730(v48, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v57 = v121;
  sub_25150A6B0(v48, v121, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v58 = v54(v48 + v51, 1, v53);
  v56 = v126;
  if (v58 == 1)
  {
    sub_251500F0C(v57, type metadata accessor for ProtoArticle.Theme);
LABEL_13:
    v43 = &qword_27F43C1F8;
    v44 = &qword_27F43BF98;
    v45 = type metadata accessor for ProtoArticle.Theme;
    v46 = v48;
    goto LABEL_44;
  }

  v59 = v116;
  sub_25150A7A0(v48 + v51, v116, type metadata accessor for ProtoArticle.Theme);
  v60 = *(v53 + 20);
  v61 = *(v57 + v60);
  v62 = *(v59 + v60);
  if (v61 != v62)
  {

    v63 = sub_251501A80(v61, v62);

    if (!v63)
    {
      sub_251500F0C(v59, type metadata accessor for ProtoArticle.Theme);
      sub_251500F0C(v57, type metadata accessor for ProtoArticle.Theme);
      v89 = &qword_27F43BF98;
      v90 = type metadata accessor for ProtoArticle.Theme;
      v91 = v48;
LABEL_49:
      sub_25150A730(v91, v89, v90);
      goto LABEL_45;
    }
  }

  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v64 = sub_25154D240();
  sub_251500F0C(v59, type metadata accessor for ProtoArticle.Theme);
  sub_251500F0C(v57, type metadata accessor for ProtoArticle.Theme);
  sub_25150A730(v48, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  if ((v64 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_17:
  v65 = v49[7];
  v66 = *(v117 + 48);
  v67 = v120;
  sub_25150A6B0(v52 + v65, v120, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v68 = v41 + v65;
  v69 = v67;
  sub_25150A6B0(v68, v67 + v66, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v70 = v119;
  v71 = *(v118 + 48);
  if (v71(v67, 1, v119) == 1)
  {
    if (v71(v67 + v66, 1, v70) == 1)
    {
      sub_25150A730(v67, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
      goto LABEL_20;
    }

LABEL_28:
    v43 = &qword_27F43C1F0;
    v44 = &qword_27F43BFA0;
    v85 = type metadata accessor for ProtoArticle.Content;
LABEL_43:
    v45 = v85;
    v46 = v69;
    goto LABEL_44;
  }

  v84 = v115;
  sub_25150A6B0(v69, v115, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  if (v71(v69 + v66, 1, v70) == 1)
  {
    sub_251500F0C(v84, type metadata accessor for ProtoArticle.Content);
    goto LABEL_28;
  }

  v86 = v69 + v66;
  v87 = v110;
  sub_25150A7A0(v86, v110, type metadata accessor for ProtoArticle.Content);
  if ((sub_2515061B8(*v84, *v87) & 1) == 0)
  {
    sub_251500F0C(v87, type metadata accessor for ProtoArticle.Content);
    sub_251500F0C(v84, type metadata accessor for ProtoArticle.Content);
    v89 = &qword_27F43BFA0;
    v93 = type metadata accessor for ProtoArticle.Content;
LABEL_48:
    v90 = v93;
    v91 = v69;
    goto LABEL_49;
  }

  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v88 = sub_25154D240();
  sub_251500F0C(v87, type metadata accessor for ProtoArticle.Content);
  sub_251500F0C(v84, type metadata accessor for ProtoArticle.Content);
  sub_25150A730(v69, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  if ((v88 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_20:
  v72 = v49[8];
  v73 = *(v111 + 48);
  v74 = v114;
  sub_25150A6B0(v52 + v72, v114, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v75 = v41 + v72;
  v69 = v74;
  sub_25150A6B0(v75, v74 + v73, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v76 = v113;
  v77 = *(v112 + 48);
  if (v77(v74, 1, v113) != 1)
  {
    v92 = v109;
    sub_25150A6B0(v69, v109, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
    if (v77(v69 + v73, 1, v76) == 1)
    {
      sub_251500F0C(v92, type metadata accessor for ProtoArticle.MediaLibrary);
      goto LABEL_35;
    }

    v94 = v69 + v73;
    v95 = v104;
    sub_25150A7A0(v94, v104, type metadata accessor for ProtoArticle.MediaLibrary);
    if (sub_251506874(*v92, *v95))
    {
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v96 = sub_25154D240();
      sub_251500F0C(v95, type metadata accessor for ProtoArticle.MediaLibrary);
      sub_251500F0C(v92, type metadata accessor for ProtoArticle.MediaLibrary);
      sub_25150A730(v69, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
      if ((v96 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_23;
    }

    sub_251500F0C(v95, type metadata accessor for ProtoArticle.MediaLibrary);
    sub_251500F0C(v92, type metadata accessor for ProtoArticle.MediaLibrary);
    v89 = &qword_27F43BFA8;
    v93 = type metadata accessor for ProtoArticle.MediaLibrary;
    goto LABEL_48;
  }

  if (v77(v74 + v73, 1, v76) != 1)
  {
LABEL_35:
    v43 = &qword_27F43C1E8;
    v44 = &qword_27F43BFA8;
    v85 = type metadata accessor for ProtoArticle.MediaLibrary;
    goto LABEL_43;
  }

  sub_25150A730(v74, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
LABEL_23:
  v78 = v49[9];
  v79 = *(v105 + 48);
  v80 = v108;
  sub_25150A6B0(v52 + v78, v108, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v81 = v41 + v78;
  v69 = v80;
  sub_25150A6B0(v81, v80 + v79, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v82 = *(v106 + 48);
  v83 = v107;
  if (v82(v80, 1, v107) == 1)
  {
    if (v82(v80 + v79, 1, v83) == 1)
    {
      sub_25150A730(v80, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
LABEL_51:
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v97 = sub_25154D240();
      return v97 & 1;
    }

    goto LABEL_42;
  }

  sub_25150A6B0(v80, v56, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  if (v82(v80 + v79, 1, v83) == 1)
  {
    sub_251500F0C(v56, type metadata accessor for ProtoArticle.TileProps);
LABEL_42:
    v43 = &qword_27F43C1E0;
    v44 = &qword_27F43BFB0;
    v85 = type metadata accessor for ProtoArticle.TileProps;
    goto LABEL_43;
  }

  v99 = v80 + v79;
  v100 = v103;
  sub_25150A7A0(v99, v103, type metadata accessor for ProtoArticle.TileProps);
  v101 = _s25HealthContentDaemonPlugin12ProtoArticleV9TilePropsV2eeoiySbAE_AEtFZ_0(v56, v100);
  sub_251500F0C(v100, type metadata accessor for ProtoArticle.TileProps);
  sub_251500F0C(v56, type metadata accessor for ProtoArticle.TileProps);
  sub_25150A730(v80, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  if (v101)
  {
    goto LABEL_51;
  }

LABEL_45:
  v97 = 0;
  return v97 & 1;
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV9TilePropsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v56 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v58 = (&v55 - v9);
  MEMORY[0x28223BE20](v8);
  v61 = (&v55 - v10);
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v57 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v60 = (&v55 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = (&v55 - v16);
  sub_25150A808(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v19 = v18;
  v20 = MEMORY[0x28223BE20](v18);
  v59 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v62 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - v24;
  v26 = type metadata accessor for ProtoArticle.TileProps(0);
  v65 = v19;
  v66 = v26;
  v27 = *(v26 + 24);
  v28 = *(v19 + 48);
  v63 = a1;
  sub_25150A6B0(a1 + v27, v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v64 = a2;
  sub_25150A6B0(a2 + v27, &v25[v28], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v29 = *(v5 + 48);
  if (v29(v25, 1, v4) == 1)
  {
    if (v29(&v25[v28], 1, v4) == 1)
    {
      sub_25150A730(v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_18;
    }

LABEL_6:
    v30 = v25;
LABEL_38:
    sub_25150A40C(v30, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_39;
  }

  sub_25150A6B0(v25, v17, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v29(&v25[v28], 1, v4) == 1)
  {
    sub_251500F0C(v17, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_6;
  }

  v31 = v61;
  sub_25150A7A0(&v25[v28], v61, type metadata accessor for ProtoLocalizedTextProps);
  v32 = *v17 == *v31 && v17[1] == v31[1];
  if (!v32 && (sub_25154D520() & 1) == 0 || (v17[2] == v31[2] ? (v33 = v17[3] == v31[3]) : (v33 = 0), !v33 && (sub_25154D520() & 1) == 0))
  {
    sub_251500F0C(v31, type metadata accessor for ProtoLocalizedTextProps);
    sub_251500F0C(v17, type metadata accessor for ProtoLocalizedTextProps);
    v41 = v25;
    goto LABEL_54;
  }

  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v34 = sub_25154D240();
  sub_251500F0C(v31, type metadata accessor for ProtoLocalizedTextProps);
  sub_251500F0C(v17, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A730(v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v34 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_18:
  v35 = *(v66 + 28);
  v36 = *(v65 + 48);
  v38 = v62;
  v37 = v63;
  sub_25150A6B0(v63 + v35, v62, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v39 = v64;
  sub_25150A6B0(v64 + v35, v38 + v36, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v29(v38, 1, v4) == 1)
  {
    if (v29((v38 + v36), 1, v4) == 1)
    {
      sub_25150A730(v38, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v40 = v60;
  sub_25150A6B0(v38, v60, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v29((v38 + v36), 1, v4) == 1)
  {
    sub_251500F0C(v40, type metadata accessor for ProtoLocalizedTextProps);
LABEL_23:
    v30 = v38;
    goto LABEL_38;
  }

  v42 = v58;
  sub_25150A7A0(v38 + v36, v58, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v40 != *v42 || v40[1] != v42[1]) && (sub_25154D520() & 1) == 0 || (v40[2] != v42[2] || v40[3] != v42[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_251500F0C(v42, type metadata accessor for ProtoLocalizedTextProps);
    sub_251500F0C(v40, type metadata accessor for ProtoLocalizedTextProps);
    v41 = v38;
    goto LABEL_54;
  }

  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v43 = sub_25154D240();
  sub_251500F0C(v42, type metadata accessor for ProtoLocalizedTextProps);
  sub_251500F0C(v40, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A730(v38, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v43 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  v44 = *(v66 + 32);
  v45 = *(v65 + 48);
  v46 = v59;
  sub_25150A6B0(v37 + v44, v59, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v47 = v39 + v44;
  v48 = v46;
  sub_25150A6B0(v47, v46 + v45, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v29(v46, 1, v4) != 1)
  {
    v49 = v46;
    v50 = v57;
    sub_25150A6B0(v49, v57, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v29((v48 + v45), 1, v4) == 1)
    {
      sub_251500F0C(v50, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_37;
    }

    v53 = v56;
    sub_25150A7A0(v48 + v45, v56, type metadata accessor for ProtoLocalizedTextProps);
    if (*v50 == *v53 && v50[1] == v53[1] || (sub_25154D520()) && (v50[2] == v53[2] && v50[3] == v53[3] || (sub_25154D520()))
    {
      sub_25154CFE0();
      sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v54 = sub_25154D240();
      sub_251500F0C(v53, type metadata accessor for ProtoLocalizedTextProps);
      sub_251500F0C(v50, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150A730(v48, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      if ((v54 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_49;
    }

    sub_251500F0C(v53, type metadata accessor for ProtoLocalizedTextProps);
    sub_251500F0C(v50, type metadata accessor for ProtoLocalizedTextProps);
    v41 = v48;
LABEL_54:
    sub_25150A730(v41, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_39;
  }

  if (v29((v46 + v45), 1, v4) != 1)
  {
LABEL_37:
    v30 = v48;
    goto LABEL_38;
  }

  sub_25150A730(v46, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_49:
  if (*v37 == *v39 && v37[1] == v39[1] || (sub_25154D520() & 1) != 0)
  {
    sub_25154CFE0();
    sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v51 = sub_25154D240();
    return v51 & 1;
  }

LABEL_39:
  v51 = 0;
  return v51 & 1;
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV8MetadataV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_25154D520() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ProtoArticle.Metadata(0);
  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV5ThemeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_251501A80(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_25154CFE0();
  sub_25150949C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

unint64_t sub_251508FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25150A8EC(0, &unk_2813D8360, sub_2514F6B28, MEMORY[0x277D84460]);
    v3 = sub_25154D4E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_25150A37C(v4, &v13, &qword_2813D83B0, sub_2514F6B28);
      v5 = v13;
      v6 = v14;
      result = sub_25154ADBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25150A3F4(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251509128(uint64_t a1)
{
  sub_25150A880(0, &qword_27F43C208, type metadata accessor for ProtoRichMedia, MEMORY[0x277D837D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_25150A8EC(0, &qword_27F43C210, type metadata accessor for ProtoRichMedia, MEMORY[0x277D84460]);
    v8 = sub_25154D4E0();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_25150A37C(v10, v6, &qword_27F43C208, type metadata accessor for ProtoRichMedia);
      v12 = *v6;
      v13 = v6[1];
      result = sub_25154ADBC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ProtoRichMedia(0);
      result = sub_25150A7A0(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for ProtoRichMedia);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_251509398(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2515093D0(uint64_t a1, uint64_t a2)
{
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25150949C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251509BCC(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_2514F808C(319, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2514F808C(319, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2514F808C(319, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2514F808C(319, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2514F808C(319, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
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

uint64_t sub_251509DC8(uint64_t a1)
{
  result = sub_25154CFE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251509EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_25154CFE0();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251509F74(uint64_t a1)
{
  result = sub_25154CFE0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ProtoArticle.Theme._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_50Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25154CFE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_51Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25154CFE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25150A1E0(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_2514F808C(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25150A2B4(uint64_t a1)
{
  sub_2514F808C(319, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25150A37C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25150A880(0, a3, a4, MEMORY[0x277D837D0]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25150A3F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25150A40C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25150A808(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_25150A4CC(uint64_t a1)
{
  if (!qword_27F43C1A0)
  {
    sub_25150A880(255, &qword_27F43C1A8, MEMORY[0x277D21890], MEMORY[0x277D83B88]);
    v1 = sub_25154D510();
    if (!v2)
    {
      atomic_store(v1, &qword_27F43C1A0);
    }
  }
}

void sub_25150A548(uint64_t a1)
{
  if (!qword_27F43C1B8)
  {
    type metadata accessor for ProtoRichMedia(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F43C1B8);
    }
  }
}

uint64_t sub_25150A5B4(uint64_t a1, uint64_t a2)
{
  sub_2514F808C(0, &qword_27F43C1B0, sub_25150A548, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25150A648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25150A6B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2514F808C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25150A730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2514F808C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25150A7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25150A808(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2514F808C(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25150A880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25150A8EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t ProtoRichMedia.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProtoRichMedia.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProtoRichMedia.url.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProtoRichMedia.url.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void ProtoRichMedia.mediaType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t ProtoRichMedia.mediaType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t ProtoRichMedia.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoRichMedia(0) + 28);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ProtoRichMedia(uint64_t a1)
{
  result = qword_27F43C288;
  if (!qword_27F43C288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtoRichMedia.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoRichMedia(0) + 28);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t ProtoRichMedia.MediaType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25150ACDC(uint64_t a1, uint64_t a2)
{
  sub_25154D590();
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_25150AD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150B25C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_25150AD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25154D590();
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t ProtoRichMedia.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  type metadata accessor for ProtoRichMedia(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150AE64()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C218);
  __swift_project_value_buffer(v0, qword_27F43C218);
  sub_25150A4CC(0);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "url";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "mediaType";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoRichMedia.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25154D030();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        sub_25150B25C();
        sub_25154D070();
      }

      else if (result == 2 || result == 1)
      {
        sub_25154D0B0();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t ProtoRichMedia.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_25154D160(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_25154D160(), !v4))
    {
      if (!v3[4] || (sub_25150B25C(), result = sub_25154D130(), !v4))
      {
        type metadata accessor for ProtoRichMedia(0);
        return sub_25154CFC0();
      }
    }
  }

  return result;
}

unint64_t sub_25150B25C()
{
  result = qword_27F43C248;
  if (!qword_27F43C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C248);
  }

  return result;
}

uint64_t ProtoRichMedia.hashValue.getter()
{
  sub_25154D590();
  type metadata accessor for ProtoRichMedia(0);
  sub_25150BE60(&qword_27F43C028, type metadata accessor for ProtoRichMedia, &protocol conformance descriptor for ProtoRichMedia);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_25150B33C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150B390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25150B404(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_25150B4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150BE60(&qword_27F43C298, type metadata accessor for ProtoRichMedia, &protocol conformance descriptor for ProtoRichMedia);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150B56C(uint64_t a1)
{
  v2 = sub_25150BE60(&qword_27F43C020, type metadata accessor for ProtoRichMedia, &protocol conformance descriptor for ProtoRichMedia);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25150B5D8(uint64_t a1, uint64_t a2)
{
  sub_25150BE60(&qword_27F43C020, type metadata accessor for ProtoRichMedia, &protocol conformance descriptor for ProtoRichMedia);

  return sub_25154D100();
}

uint64_t sub_25150B658()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C230);
  __swift_project_value_buffer(v0, qword_27F43C230);
  sub_25150A4CC(0);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E650;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "unspecified";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "animation";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "motion";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "image";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 4;
  *v16 = "video";
  *(v16 + 8) = 5;
  *(v16 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t _s25HealthContentDaemonPlugin14ProtoRichMediaV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v6 != 4)
      {
        return 0;
      }

LABEL_18:
      type metadata accessor for ProtoRichMedia(0);
      sub_25154CFE0();
      sub_25150BE60(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_25154D240() & 1;
    }

    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_18;
  }

  return 0;
}

unint64_t sub_25150BA64()
{
  result = qword_27F43C250;
  if (!qword_27F43C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C250);
  }

  return result;
}

unint64_t sub_25150BABC()
{
  result = qword_27F43C258;
  if (!qword_27F43C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C258);
  }

  return result;
}

void sub_25150BB58()
{
  if (!qword_27F43C268)
  {
    v0 = sub_25154D350();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43C268);
    }
  }
}

unint64_t sub_25150BBAC()
{
  result = qword_27F43C270;
  if (!qword_27F43C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C270);
  }

  return result;
}

uint64_t sub_25150BD48(uint64_t a1)
{
  result = sub_25154CFE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_25150BDF8(uint64_t a1)
{
  if (!qword_27F43C1A8)
  {
    sub_25154D190();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F43C1A8);
    }
  }
}

uint64_t sub_25150BE60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ProtoLocalizedTextProps.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for ProtoLocalizedTextProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t type metadata accessor for ProtoLocalizedTextProps(uint64_t a1)
{
  result = qword_27F43C2D0;
  if (!qword_27F43C2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtoLocalizedTextProps.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProtoLocalizedTextProps.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProtoLocalizedTextProps.source.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProtoLocalizedTextProps.source.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ProtoLocalizedTextProps.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoLocalizedTextProps(0) + 24);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoLocalizedTextProps.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoLocalizedTextProps(0) + 24);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25150C1A0()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C2A0);
  __swift_project_value_buffer(v0, qword_27F43C2A0);
  sub_25150A4CC(0);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "source";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t static ProtoLocalizedTextProps._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F43BA08 != -1)
  {
    swift_once();
  }

  v2 = sub_25154D1C0();
  v3 = __swift_project_value_buffer(v2, qword_27F43C2A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProtoLocalizedTextProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_25154D030();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_25154D0B0();
    }
  }

  return result;
}

uint64_t ProtoLocalizedTextProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_25154D160(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_25154D160(), !v4))
    {
      type metadata accessor for ProtoLocalizedTextProps(0);
      return sub_25154CFC0();
    }
  }

  return result;
}

uint64_t static ProtoLocalizedTextProps.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25154CFE0();
  sub_25150CCD0(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t ProtoLocalizedTextProps.hashValue.getter()
{
  sub_25154D590();
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25150CCD0(&qword_27F43C2B8, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_25150C6A0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25150C75C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_25150C824(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150CCD0(&qword_27F43C2E0, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150C8A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F43BA08 != -1)
  {
    swift_once();
  }

  v2 = sub_25154D1C0();
  v3 = __swift_project_value_buffer(v2, qword_27F43C2A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25150C948(uint64_t a1)
{
  v2 = sub_25150CCD0(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25150C9B4(uint64_t a1, uint64_t a2)
{
  sub_25150CCD0(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);

  return sub_25154D100();
}

uint64_t sub_25150CA30(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  sub_25154CFE0();
  sub_25150CCD0(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t sub_25150CC54(uint64_t a1)
{
  result = sub_25154CFE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25150CCD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ProtoColorValue.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ProtoColorValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t type metadata accessor for ProtoColorValue(uint64_t a1)
{
  result = qword_27F43C398;
  if (!qword_27F43C398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t ProtoFont.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25150CDE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150E568();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t ProtoColorRole.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25150CEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150E514();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoColorValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoColorValue(0) + 32);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoColorValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoColorValue(0) + 32);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25150D0EC()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C2E8);
  __swift_project_value_buffer(v0, qword_27F43C2E8);
  sub_25150A4CC(0);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_25154F460;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 0;
  *v6 = "fontUnspecified";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25154D190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v33 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "extraLargeTitle";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v33 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "largeTitle";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v33 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "title1";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v33 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "title2";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v33 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "title3";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v33 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "headline";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v33 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "body";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v9();
  v23 = v33 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "callout";
  *(v23 + 8) = 7;
  *(v23 + 16) = 2;
  v9();
  v24 = (v33 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "subhead";
  *(v25 + 1) = 7;
  v25[16] = 2;
  v9();
  v26 = (v33 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "footnote";
  *(v27 + 1) = 8;
  v27[16] = 2;
  v9();
  v28 = (v33 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "caption1";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v9();
  v30 = (v33 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "caption2";
  *(v31 + 1) = 8;
  v31[16] = 2;
  v9();
  return sub_25154D1A0();
}

uint64_t sub_25150D574()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C300);
  __swift_project_value_buffer(v0, qword_27F43C300);
  sub_25150A4CC(0);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25154F470;
  v5 = v19 + v4 + *(v2 + 56);
  *(v19 + v4) = 0;
  *v5 = "colorRoleUnspecified";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25154D190();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v19 + v4 + v3 + *(v2 + 56);
  *(v19 + v4 + v3) = 1;
  *v9 = "selectedState";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v19 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "card";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v19 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "background";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v19 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "text";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v19 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "secondaryTint";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  return sub_25154D1A0();
}

uint64_t sub_25150D87C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C318);
  __swift_project_value_buffer(v0, qword_27F43C318);
  sub_25150A4CC(0);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "red";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "green";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "blue";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "alpha";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoColorValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25154D030();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_25154D090();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t ProtoColorValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_25154D150(), !v4))
  {
    if (!v3[1] || (result = sub_25154D150(), !v4))
    {
      if (!v3[2] || (result = sub_25154D150(), !v4))
      {
        if (!v3[3] || (result = sub_25154D150(), !v4))
        {
          type metadata accessor for ProtoColorValue(0);
          return sub_25154CFC0();
        }
      }
    }
  }

  return result;
}

uint64_t ProtoColorValue.hashValue.getter()
{
  sub_25154D590();
  type metadata accessor for ProtoColorValue(0);
  sub_25150E32C(&qword_27F43C330, type metadata accessor for ProtoColorValue, &protocol conformance descriptor for ProtoColorValue);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_25150DD00@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150DD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_25150E32C(&qword_27F43C3A8, type metadata accessor for ProtoColorValue, &protocol conformance descriptor for ProtoColorValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25150DE14(uint64_t a1)
{
  v2 = sub_25150E32C(&qword_27F43C1C8, type metadata accessor for ProtoColorValue, &protocol conformance descriptor for ProtoColorValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25150DE80(uint64_t a1, uint64_t a2)
{
  sub_25150E32C(&qword_27F43C1C8, type metadata accessor for ProtoColorValue, &protocol conformance descriptor for ProtoColorValue);

  return sub_25154D100();
}

uint64_t _s25HealthContentDaemonPlugin15ProtoColorValueV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for ProtoColorValue(0);
  sub_25154CFE0();
  sub_25150E32C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

unint64_t sub_25150DFDC()
{
  result = qword_27F43C338;
  if (!qword_27F43C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C338);
  }

  return result;
}

unint64_t sub_25150E034()
{
  result = qword_27F43C340;
  if (!qword_27F43C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C340);
  }

  return result;
}

uint64_t sub_25150E0B8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_25150E240(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25150E10C()
{
  result = qword_27F43C358;
  if (!qword_27F43C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C358);
  }

  return result;
}

unint64_t sub_25150E164()
{
  result = qword_27F43C360;
  if (!qword_27F43C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C360);
  }

  return result;
}

unint64_t sub_25150E1BC()
{
  result = qword_27F43C368;
  if (!qword_27F43C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C368);
  }

  return result;
}

void sub_25150E240(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25154D350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25150E290()
{
  result = qword_27F43C380;
  if (!qword_27F43C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C380);
  }

  return result;
}

uint64_t sub_25150E32C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25150E494(uint64_t a1)
{
  result = sub_25154CFE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25150E514()
{
  result = qword_27F43C3B0;
  if (!qword_27F43C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C3B0);
  }

  return result;
}

unint64_t sub_25150E568()
{
  result = qword_27F43C3B8;
  if (!qword_27F43C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C3B8);
  }

  return result;
}

uint64_t ProtoComponent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProtoComponent.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void ProtoComponent.role.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t ProtoComponent.role.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t ProtoComponent.props.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProtoComponent(0) + 24);

  return sub_25150E790(a1, v3);
}

uint64_t sub_25150E790(uint64_t a1, uint64_t a2)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProtoComponent.emptyProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoEmptyProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25150EA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_25150F55C(v6, a2, type metadata accessor for ProtoEmptyProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.emptyProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoEmptyProps(0) - 8) + 64);
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
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_25150F55C(v9, v12, type metadata accessor for ProtoEmptyProps);
      return sub_25150EE28;
    }

    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  return sub_25150EE28;
}

uint64_t sub_25150EE6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ProtoComponent.mainHeaderProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoMainHeaderProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v9 = type metadata accessor for ProtoMainHeaderProps(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = v9[7];
  v11 = type metadata accessor for ProtoTextProps(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v9[8];
  v13 = type metadata accessor for ProtoImageProps(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[9];
  v15 = type metadata accessor for ProtoLocalizedTextProps(0);
  v16 = *(*(v15 - 8) + 56);
  v16(a1 + v14, 1, 1, v15);
  return (v16)(a1 + v9[10], 1, 1, v15);
}

uint64_t sub_25150F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_251541FF0(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541E9C(a2 + v15, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_25150F55C(v14, a2 + v15, a7);
  v16 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t sub_25150F2C0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541E9C(v3 + v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_25150F55C(a1, v3 + v6, a2);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

uint64_t ProtoMainHeaderProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for ProtoMainHeaderProps(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = v2[7];
  v4 = type metadata accessor for ProtoTextProps(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for ProtoImageProps(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a1 + v7, 1, 1, v8);
  v9 = a1 + v2[10];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_25150F55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*ProtoComponent.mainHeaderProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoMainHeaderProps(0);
  v11 = *(*(v10 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v17 = v10[7];
    v18 = type metadata accessor for ProtoTextProps(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    v19 = v10[8];
    v20 = type metadata accessor for ProtoImageProps(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    v21 = v10[9];
    v22 = type metadata accessor for ProtoLocalizedTextProps(0);
    v23 = *(*(v22 - 8) + 56);
    v23(v13 + v21, 1, 1, v22);
    v23(v13 + v10[10], 1, 1, v22);
    return sub_25150F930;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoMainHeaderProps);
  return sub_25150F930;
}

uint64_t ProtoComponent.fullMainHeaderProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoFullMainHeaderProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v9 = type metadata accessor for ProtoFullMainHeaderProps(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = v9[7];
  v11 = type metadata accessor for ProtoLocalizedTextProps(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  v12(a1 + v9[8], 1, 1, v11);
  v13 = v9[9];
  v14 = type metadata accessor for ProtoImageProps(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t ProtoFullMainHeaderProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for ProtoFullMainHeaderProps(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = v2[7];
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  v6 = v2[9];
  v7 = type metadata accessor for ProtoImageProps(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void (*ProtoComponent.fullMainHeaderProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v11 = *(*(v10 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = MEMORY[0x277D84F90];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v17 = v10[7];
    v18 = type metadata accessor for ProtoLocalizedTextProps(0);
    v19 = *(*(v18 - 8) + 56);
    v19(v13 + v17, 1, 1, v18);
    v19(v13 + v10[8], 1, 1, v18);
    v20 = v10[9];
    v21 = type metadata accessor for ProtoImageProps(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    return sub_251510060;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoFullMainHeaderProps);
  return sub_251510060;
}

uint64_t ProtoComponent.imageProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoImageProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v9 = type metadata accessor for ProtoImageProps(0);
  result = _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = a1 + *(v9 + 28);
  *v10 = 0;
  *(v10 + 8) = 256;
  return result;
}

uint64_t ProtoImageProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for ProtoImageProps(0);
  result = _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1 + *(v2 + 28);
  *v4 = 0;
  *(v4 + 8) = 256;
  return result;
}

void (*ProtoComponent.imageProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoImageProps(0);
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
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v17 = v13 + *(v10 + 28);
    *v17 = 0;
    *(v17 + 8) = 256;
    return sub_251510580;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoImageProps);
  return sub_251510580;
}

uint64_t ProtoComponent.videoProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoVideoProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for ProtoVideoProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t ProtoVideoProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for ProtoVideoProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.videoProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoVideoProps(0) - 8) + 64);
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
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = 0;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_251510A64;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v12, type metadata accessor for ProtoVideoProps);
  return sub_251510A64;
}

uint64_t ProtoComponent.swooshProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoSwooshProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoSwooshProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_251510C58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_25150F55C(v6, a2, type metadata accessor for ProtoSwooshProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoSwooshProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.swooshProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoSwooshProps(0) - 8) + 64);
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
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_2515110D4;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v12, type metadata accessor for ProtoSwooshProps);
  return sub_2515110D4;
}

uint64_t ProtoComponent.carouselProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoCarouselProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoCarouselProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515112C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_25150F55C(v6, a2, type metadata accessor for ProtoCarouselProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoCarouselProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515114B0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.carouselProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoCarouselProps(0) - 8) + 64);
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
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_25151178C;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v12, type metadata accessor for ProtoCarouselProps);
  return sub_25151178C;
}

uint64_t ProtoComponent.textProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoTextProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v9 = type metadata accessor for ProtoTextProps(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = *(v9 + 32);
  v11 = type metadata accessor for ProtoLocalizedTextProps(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t ProtoTextProps.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = type metadata accessor for ProtoTextProps(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

void (*ProtoComponent.textProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoTextProps(0);
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
  v14 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v14;
  sub_251541F0C(v1 + v14, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v15 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v17 = *(v10 + 32);
    v18 = type metadata accessor for ProtoLocalizedTextProps(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    return sub_251511D60;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v13, type metadata accessor for ProtoTextProps);
  return sub_251511D60;
}

uint64_t ProtoComponent.textListProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoTextListProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoTextListProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_251511F54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_25150F55C(v6, a2, type metadata accessor for ProtoTextListProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoTextListProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.textListProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoTextListProps(0) - 8) + 64);
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
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_2515123D0;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v12, type metadata accessor for ProtoTextListProps);
  return sub_2515123D0;
}

uint64_t ProtoComponent.imageListProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoImageListProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoImageListProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515125C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_25150F55C(v6, a2, type metadata accessor for ProtoImageListProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoImageListProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.imageListProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoImageListProps(0) - 8) + 64);
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
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_251512A40;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v12, type metadata accessor for ProtoImageListProps);
  return sub_251512A40;
}

uint64_t ProtoComponent.videoListProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoVideoListProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoVideoListProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_251512C34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_25150F55C(v6, a2, type metadata accessor for ProtoVideoListProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoVideoListProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.videoListProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoVideoListProps(0) - 8) + 64);
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
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_2515130B0;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v12, type metadata accessor for ProtoVideoListProps);
  return sub_2515130B0;
}

uint64_t ProtoComponent.tableProps.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v7 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251541E9C(v5, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_25150F55C(v5, a1, type metadata accessor for ProtoTableProps);
    }

    sub_25150EE6C(v5, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v9;
  type metadata accessor for ProtoTableProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515132A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v7 + 24), v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v8 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_251541E9C(v6, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_25150F55C(v6, a2, type metadata accessor for ProtoTableProps);
    }

    sub_25150EE6C(v6, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  v10 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v10;
  type metadata accessor for ProtoTableProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t ProtoTableProps.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  type metadata accessor for ProtoTableProps(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoComponent.tableProps.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
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
  v10 = *(*(type metadata accessor for ProtoTableProps(0) - 8) + 64);
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
  v13 = *(type metadata accessor for ProtoComponent(0) + 24);
  *(v5 + 12) = v13;
  sub_251541F0C(v1 + v13, v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v14 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_251541E9C(v9, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    *v12 = MEMORY[0x277D84F90];
    v12[1] = v16;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    return sub_251513748;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_15;
  }

  sub_25150F55C(v9, v12, type metadata accessor for ProtoTableProps);
  return sub_251513748;
}

void sub_25151378C(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_251541FF0(v12, v11, a5);
    sub_251541E9C(v13 + v10, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_25150EE6C(v12, a6);
  }

  else
  {
    sub_251541E9C(v13 + v10, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t static ProtoEmptyProps.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t static ProtoVideoProps.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_25154D520() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for ProtoVideoProps(0);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t static ProtoTableProps.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2515053BC(*a1, *a2) & 1) == 0 || (sub_251505A74(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ProtoTableProps(0);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

unint64_t ProtoComponent.Role.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xC;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_251513CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DAC8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = *(type metadata accessor for ProtoComponent(0) + 24);
  v3 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t ProtoMainHeaderProps.titleText.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v1 + *(v6 + 28), v5, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v7 = type metadata accessor for ProtoTextProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150F55C(v5, a1, type metadata accessor for ProtoTextProps);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v9 = *(v7 + 32);
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_251541E9C(v5, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  return result;
}

uint64_t sub_251513FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v7 + 28), v6, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v8 = type metadata accessor for ProtoTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a2, type metadata accessor for ProtoTextProps);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = *(v8 + 32);
  v11 = type metadata accessor for ProtoLocalizedTextProps(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  return result;
}

uint64_t sub_2515141E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoTextProps);
  v8 = *(type metadata accessor for ProtoMainHeaderProps(0) + 28);
  sub_251541E9C(a2 + v8, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoMainHeaderProps.titleText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoMainHeaderProps(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoTextProps);
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoMainHeaderProps.titleText.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoTextProps(0);
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
  v16 = *(type metadata accessor for ProtoMainHeaderProps(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 1;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = *(v10 + 32);
    v19 = type metadata accessor for ProtoLocalizedTextProps(0);
    (*(*(v19 - 8) + 56))(v15 + v18, 1, 1, v19);
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoTextProps);
  }

  return sub_251514690;
}

void sub_251514690(uint64_t **a1, char a2)
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
    sub_251541FF0((*a1)[5], v4, type metadata accessor for ProtoTextProps);
    sub_251541E9C(v9 + v3, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    sub_25150F55C(v4, v9 + v3, type metadata accessor for ProtoTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_25150EE6C(v5, type metadata accessor for ProtoTextProps);
  }

  else
  {
    sub_251541E9C(v9 + v3, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    sub_25150F55C(v5, v9 + v3, type metadata accessor for ProtoTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ProtoMainHeaderProps.image.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v1 + *(v6 + 32), v5, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v7 = type metadata accessor for ProtoImageProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150F55C(v5, a1, type metadata accessor for ProtoImageProps);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v9 = a1 + *(v7 + 28);
  *v9 = 0;
  *(v9 + 8) = 256;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_251541E9C(v5, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_251514A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v7 + 32), v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a2, type metadata accessor for ProtoImageProps);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = a2 + *(v8 + 28);
  *v10 = 0;
  *(v10 + 8) = 256;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_251514C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoImageProps);
  v8 = *(type metadata accessor for ProtoMainHeaderProps(0) + 32);
  sub_251541E9C(a2 + v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoMainHeaderProps.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoMainHeaderProps(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoMainHeaderProps.image.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoImageProps(0);
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
  v16 = *(type metadata accessor for ProtoMainHeaderProps(0) + 32);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = v15 + *(v10 + 28);
    *v18 = 0;
    *(v18 + 8) = 256;
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoImageProps);
  }

  return sub_251542170;
}

uint64_t ProtoMainHeaderProps.leadingText.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v1 + *(v6 + 36), v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v7 = type metadata accessor for ProtoLocalizedTextProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150F55C(v5, a1, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_251541E9C(v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2515152E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v7 + 36), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_251515478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoMainHeaderProps(0) + 36);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoMainHeaderProps.leadingText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoMainHeaderProps(0) + 36);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoMainHeaderProps.leadingText.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoMainHeaderProps(0) + 36);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t ProtoMainHeaderProps.trailingText.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v1 + *(v6 + 40), v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v7 = type metadata accessor for ProtoLocalizedTextProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150F55C(v5, a1, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_251541E9C(v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_251515AF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v7 + 40), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_251515C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoMainHeaderProps.trailingText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoMainHeaderProps.trailingText.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

BOOL ProtoMainHeaderProps.hasTrailingText.getter()
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(v0 + *(v4 + 40), v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_251541E9C(v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  return v6;
}

Swift::Void __swiftcall ProtoMainHeaderProps.clearTrailingText()()
{
  v1 = *(type metadata accessor for ProtoMainHeaderProps(0) + 40);
  sub_251541E9C(v0 + v1, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v2 = type metadata accessor for ProtoLocalizedTextProps(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_251516330(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB64();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251516398(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DBB8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_25151641C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 28);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoFullMainHeaderProps.leadingText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoFullMainHeaderProps.leadingText.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

BOOL sub_2515168C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_25153D964(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_251541F0C(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_251541E9C(v11, a1, a2);
  return v14;
}

uint64_t sub_251516A24(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_251541E9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_251516AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 32);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoFullMainHeaderProps.trailingText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoFullMainHeaderProps.trailingText.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 32);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

BOOL sub_251516F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_25153D964(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_251541F0C(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_251541E9C(v11, a1, a2);
  return v14;
}

uint64_t sub_2515170F0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_251541E9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoFullMainHeaderProps.backgroundImage.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(v1 + *(v6 + 36), v5, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v7 = type metadata accessor for ProtoImageProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150F55C(v5, a1, type metadata accessor for ProtoImageProps);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v9 = a1 + *(v7 + 28);
  *v9 = 0;
  *(v9 + 8) = 256;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_251541E9C(v5, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_25151734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(a1 + *(v7 + 36), v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a2, type metadata accessor for ProtoImageProps);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = a2 + *(v8 + 28);
  *v10 = 0;
  *(v10 + 8) = 256;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_251517500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoImageProps);
  v8 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 36);
  sub_251541E9C(a2 + v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoFullMainHeaderProps.backgroundImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 36);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoFullMainHeaderProps.backgroundImage.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoImageProps(0);
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
  v16 = *(type metadata accessor for ProtoFullMainHeaderProps(0) + 36);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = v15 + *(v10 + 28);
    *v18 = 0;
    *(v18 + 8) = 256;
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoImageProps);
  }

  return sub_251542170;
}

BOOL sub_2515179C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_25153D964(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_251541F0C(v4 + *(v12 + 36), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_251541E9C(v11, a1, a2);
  return v14;
}

uint64_t sub_251517B24(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_251541E9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoFullMainHeaderProps.textItems.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_251517C3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251517CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251517DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DC0C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoFullMainHeaderProps.TextItem.textProps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  sub_251541F0C(v1 + *(v6 + 24), v5, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v7 = type metadata accessor for ProtoTextProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150F55C(v5, a1, type metadata accessor for ProtoTextProps);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v9 = *(v7 + 32);
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_251541E9C(v5, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  return result;
}

uint64_t sub_251517FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  sub_251541F0C(a1 + *(v7 + 24), v6, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v8 = type metadata accessor for ProtoTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a2, type metadata accessor for ProtoTextProps);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = *(v8 + 32);
  v11 = type metadata accessor for ProtoLocalizedTextProps(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  return result;
}

uint64_t sub_2515181DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoTextProps);
  v8 = *(type metadata accessor for ProtoFullMainHeaderProps.TextItem(0) + 24);
  sub_251541E9C(a2 + v8, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoFullMainHeaderProps.TextItem.textProps.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoFullMainHeaderProps.TextItem(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoTextProps);
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoFullMainHeaderProps.TextItem.textProps.modify(void *a1))(uint64_t **, char)
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
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoTextProps(0);
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
  v16 = *(type metadata accessor for ProtoFullMainHeaderProps.TextItem(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 1;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = *(v10 + 32);
    v19 = type metadata accessor for ProtoLocalizedTextProps(0);
    (*(*(v19 - 8) + 56))(v15 + v18, 1, 1, v19);
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoTextProps);
  }

  return sub_251542174;
}

uint64_t sub_2515187D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DC60();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoFullMainHeaderProps.TextItem.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t ProtoImageProps.imageBackgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ProtoImageProps(0);
  v4 = (v1 + *(result + 28));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t ProtoImageProps.imageBackgroundColor.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for ProtoImageProps(0);
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*ProtoImageProps.imageBackgroundColor.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for ProtoImageProps(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return sub_251518A0C;
}

uint64_t sub_251518A0C(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall ProtoImageProps.clearImageBackgroundColor()()
{
  v1 = v0 + *(type metadata accessor for ProtoImageProps(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 256;
}

unint64_t ProtoImageProps.Format.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_251518B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DCB4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251518C88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251518D24(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251518E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoImageProps);
  v8 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 24);
  sub_251541E9C(a2 + v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoSwooshProps.Tile.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoSwooshProps.Tile.image.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoImageProps(0);
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
  v16 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = v15 + *(v10 + 28);
    *v18 = 0;
    *(v18 + 8) = 256;
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoImageProps);
  }

  return sub_25151927C;
}

void sub_25151927C(uint64_t **a1, char a2)
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
    sub_251541FF0((*a1)[5], v4, type metadata accessor for ProtoImageProps);
    sub_251541E9C(v9 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    sub_25150F55C(v4, v9 + v3, type metadata accessor for ProtoImageProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_25150EE6C(v5, type metadata accessor for ProtoImageProps);
  }

  else
  {
    sub_251541E9C(v9 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    sub_25150F55C(v5, v9 + v3, type metadata accessor for ProtoImageProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_251519444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_25153D964(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_251541F0C(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_251541E9C(v11, a1, a2);
  return v14;
}

uint64_t sub_2515195A8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_251541E9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_25151968C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  sub_251541F0C(v2 + *(v8 + 28), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = type metadata accessor for ProtoLocalizedTextProps(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150F55C(v7, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_251519828@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  sub_251541F0C(a1 + *(v9 + 28), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_25150F55C(v8, a3, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2515199C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 28);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoSwooshProps.Tile.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoSwooshProps.Tile.title.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoSwooshProps.Tile(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t ProtoSwooshProps.Tile.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoSwooshProps.Tile(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ProtoImageProps(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for ProtoLocalizedTextProps(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_25151A0BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = a1(0);
  sub_251541F0C(v2 + *(v8 + 24), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v9 = type metadata accessor for ProtoImageProps(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150F55C(v7, a2, type metadata accessor for ProtoImageProps);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v11 = a2 + *(v9 + 28);
  *v11 = 0;
  *(v11 + 8) = 256;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_25151A274@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = a2(0);
  sub_251541F0C(a1 + *(v9 + 24), v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v10 = type metadata accessor for ProtoImageProps(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_25150F55C(v8, a3, type metadata accessor for ProtoImageProps);
  }

  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v12 = a3 + *(v10 + 28);
  *v12 = 0;
  *(v12 + 8) = 256;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_251541E9C(v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  return result;
}

uint64_t sub_25151A430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoImageProps);
  v8 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 24);
  sub_251541E9C(a2 + v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoCarouselProps.Tile.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoCarouselProps.Tile.image.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoImageProps(0);
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
  v16 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = v15 + *(v10 + 28);
    *v18 = 0;
    *(v18 + 8) = 256;
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoImageProps);
  }

  return sub_251542170;
}

uint64_t sub_25151A970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 28);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoCarouselProps.Tile.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoCarouselProps.Tile.title.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t sub_25151AE74@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  sub_251541F0C(v2 + *(v8 + 32), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v9 = type metadata accessor for ProtoLocalizedTextProps(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_25150F55C(v7, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_25151B010@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  sub_251541F0C(a1 + *(v9 + 32), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_25150F55C(v8, a3, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_251541E9C(v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_25151B1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 32);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoCarouselProps.Tile.description_p.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoCarouselProps.Tile.description_p.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoCarouselProps.Tile(0) + 32);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t ProtoCarouselProps.Tile.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoCarouselProps.Tile(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = v2[6];
  v4 = type metadata accessor for ProtoImageProps(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a1 + v5, 1, 1, v6);
  v7 = a1 + v2[8];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_25151B844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoTextProps(0) + 32);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoTextProps.text.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTextProps(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoTextProps.text.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoTextProps(0) + 32);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25151BCA0;
}

void sub_25151BCA0(uint64_t **a1, char a2)
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
    sub_251541FF0((*a1)[5], v4, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v9 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150F55C(v4, v9 + v3, type metadata accessor for ProtoLocalizedTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_25150EE6C(v5, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    sub_251541E9C(v9 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150F55C(v5, v9 + v3, type metadata accessor for ProtoLocalizedTextProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

void ProtoTextProps.font.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ProtoTextProps.font.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void ProtoTextProps.format.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t ProtoTextProps.format.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_25151BF78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25151C014(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_25151C0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DD08();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t ProtoTextProps.Format.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25151C178(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DD5C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_25151C274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoTextListProps.Item(0) + 24);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoTextListProps.Item.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTextListProps.Item(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoTextListProps.Item.title.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoTextListProps.Item(0) + 24);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t sub_25151C798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoTextListProps.Item(0) + 28);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoTextListProps.Item.description_p.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTextListProps.Item(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoTextListProps.Item.description_p.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
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
  v16 = *(type metadata accessor for ProtoTextListProps.Item(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25154216C;
}

uint64_t ProtoTextListProps.Item.sfSymbolResource.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25151CCD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25151CD3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoTextListProps.Item.sfSymbolResource.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*ProtoTextListProps.Item.sfSymbolResource.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoTextListProps.Item(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_25151CE88;
}