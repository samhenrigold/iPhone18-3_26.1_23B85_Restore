void sub_25151CE88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall ProtoTextListProps.Item.clearSfSymbolResource()()
{
  v1 = (v0 + *(type metadata accessor for ProtoTextListProps.Item(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_25151D00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DDB0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoTextListProps.Item.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoTextListProps.Item(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = v2[6];
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  result = (v5)(a1 + v2[7], 1, 1, v4);
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_25151D1D0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  sub_251541F0C(v2 + *(v8 + 24), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_25151D36C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  sub_251541F0C(a1 + *(v9 + 24), v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_25151D50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoImageListProps.Item(0) + 24);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoImageListProps.Item.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoImageListProps.Item(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoImageListProps.Item.title.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for ProtoImageListProps.Item(0) + 24);
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

uint64_t ProtoImageListProps.Item.image.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(v1 + *(v6 + 28), v5, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
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

uint64_t sub_25151DBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(a1 + *(v7 + 28), v6, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
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

uint64_t sub_25151DD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoImageProps);
  v8 = *(type metadata accessor for ProtoImageListProps.Item(0) + 28);
  sub_251541E9C(a2 + v8, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoImageProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoImageListProps.Item.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoImageListProps.Item(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoImageProps);
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoImageListProps.Item.image.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for ProtoImageListProps.Item(0) + 28);
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

uint64_t sub_25151E29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoImageListProps.Item(0) + 32);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoImageListProps.Item.description_p.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoImageListProps.Item(0) + 32);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoImageListProps.Item.description_p.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for ProtoImageListProps.Item(0) + 32);
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

uint64_t sub_25151E81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DE04();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ProtoImageListProps.Item.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoImageListProps.Item(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = v2[6];
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(*(v4 - 8) + 56);
  (v9)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ProtoImageProps(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + v2[8];

  return v9(v7, 1, 1, v4);
}

uint64_t ProtoVideoListProps.Item.title.getter@<X0>(void *a1@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(v1 + *(v6 + 20), v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_25151EBAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v7 + 20), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
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

uint64_t sub_25151ED44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoVideoListProps.Item.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoVideoListProps.Item.title.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
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

BOOL ProtoVideoListProps.Item.hasTitle.getter()
{
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(v0 + *(v4 + 20), v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_251541E9C(v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  return v6;
}

Swift::Void __swiftcall ProtoVideoListProps.Item.clearTitle()()
{
  v1 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 20);
  sub_251541E9C(v0 + v1, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v2 = type metadata accessor for ProtoLocalizedTextProps(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_25151F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 24);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoVideoListProps.Item.description_p.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoVideoListProps.Item.description_p.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 24);
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

uint64_t ProtoVideoListProps.Item.video.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(v1 + *(v6 + 28), v5, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v7 = type metadata accessor for ProtoVideoProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150F55C(v5, a1, type metadata accessor for ProtoVideoProps);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_251541E9C(v5, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  return result;
}

uint64_t sub_25151F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v7 + 28), v6, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v8 = type metadata accessor for ProtoVideoProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150F55C(v6, a2, type metadata accessor for ProtoVideoProps);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251541E9C(v6, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  return result;
}

uint64_t sub_25151FB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoVideoProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoVideoProps);
  v8 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 28);
  sub_251541E9C(a2 + v8, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoVideoProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoVideoListProps.Item.video.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 28);
  sub_251541E9C(v1 + v3, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoVideoProps);
  v4 = type metadata accessor for ProtoVideoProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoVideoListProps.Item.video.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
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
  v10 = type metadata accessor for ProtoVideoProps(0);
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
  v16 = *(type metadata accessor for ProtoVideoListProps.Item(0) + 28);
  *(v5 + 12) = v16;
  sub_251541F0C(v1 + v16, v9, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251541E9C(v9, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    }
  }

  else
  {
    sub_25150F55C(v9, v15, type metadata accessor for ProtoVideoProps);
  }

  return sub_25151FFDC;
}

void sub_25151FFDC(uint64_t **a1, char a2)
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
    sub_251541FF0((*a1)[5], v4, type metadata accessor for ProtoVideoProps);
    sub_251541E9C(v9 + v3, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    sub_25150F55C(v4, v9 + v3, type metadata accessor for ProtoVideoProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_25150EE6C(v5, type metadata accessor for ProtoVideoProps);
  }

  else
  {
    sub_251541E9C(v9 + v3, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    sub_25150F55C(v5, v9 + v3, type metadata accessor for ProtoVideoProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ProtoVideoListProps.Item.init()@<X0>(uint64_t a2@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = type metadata accessor for ProtoVideoListProps.Item(0);
  v4 = v3[5];
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + v3[6], 1, 1, v5);
  v7 = v3[7];
  v8 = type metadata accessor for ProtoVideoProps(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t ProtoTableProps.rows.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_251520408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251541FF0(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoTableProps.ColumnHeader(0) + 24);
  sub_251541E9C(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoTableProps.ColumnHeader.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoTableProps.ColumnHeader(0) + 24);
  sub_251541E9C(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150F55C(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoTableProps.ColumnHeader.value.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for ProtoTableProps.ColumnHeader(0) + 24);
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

uint64_t ProtoTableProps.ColumnHeader.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for ProtoTableProps.ColumnHeader(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t ProtoTableProps.Column.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_251520B28()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C3C0);
  __swift_project_value_buffer(v0, qword_27F43C3C0);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25154F930;
  v5 = v35 + v4;
  v6 = v35 + v4 + *(v2 + 56);
  *(v35 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25154D190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "role";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "emptyProps";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "mainHeaderProps";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "fullMainHeaderProps";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "imageProps";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "videoProps";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "swooshProps";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "carouselProps";
  *(v23 + 8) = 13;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "textProps";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "textListProps";
  *(v27 + 1) = 13;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "imageListProps";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "videoListProps";
  *(v31 + 1) = 14;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "tableProps";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v9();
  return sub_25154D1A0();
}

uint64_t ProtoComponent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_25154D0B0();
          break;
        case 2:
          sub_25153DAC8();
          sub_25154D070();
          break;
        case 3:
          sub_251521230(v5, a1, a2, a3);
          break;
        case 4:
          sub_25152187C(v5, a1, a2, a3);
          break;
        case 5:
          sub_251521ED8(v5, a1, a2, a3);
          break;
        case 6:
          sub_251522534(v5, a1, a2, a3);
          break;
        case 7:
          sub_251522B90(v5, a1, a2, a3);
          break;
        case 8:
          sub_2515231EC(v5, a1, a2, a3);
          break;
        case 9:
          sub_251523848(v5, a1, a2, a3);
          break;
        case 10:
          sub_251523EA4(v5, a1, a2, a3);
          break;
        case 11:
          sub_251524500(v5, a1, a2, a3);
          break;
        case 12:
          sub_251524B5C(v5, a1, a2, a3);
          break;
        case 13:
          sub_2515251B8(v5, a1, a2, a3);
          break;
        case 14:
          sub_251525814(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251521230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoEmptyProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v41 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v26 = v4;
  v27 = v25;
  v25(&v36 - v23, 1, 1, v26);
  v36 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v36, v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v37 = v14;
  v38 = (*(v14 + 48))(v12, 1, v13);
  if (v38 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_5:
    v28 = v44;
    goto LABEL_6;
  }

  sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_5;
  }

  sub_251541E9C(v24, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
  v32 = v39;
  sub_25150F55C(v17, v39, type metadata accessor for ProtoEmptyProps);
  sub_25150F55C(v32, v24, type metadata accessor for ProtoEmptyProps);
  v28 = v44;
  v27(v24, 0, 1, v44);
LABEL_6:
  v29 = v42;
  sub_25153DB1C(&qword_27F43C998, type metadata accessor for ProtoEmptyProps, &protocol conformance descriptor for ProtoEmptyProps);
  v30 = v43;
  sub_25154D0D0();
  if (v30)
  {
    return sub_251541E9C(v24, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
  }

  sub_251541F0C(v24, v29, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
  if ((*(v41 + 48))(v29, 1, v28) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
    return sub_251541E9C(v29, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
  }

  else
  {
    v33 = v40;
    sub_25150F55C(v29, v40, type metadata accessor for ProtoEmptyProps);
    if (v38 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CD98, type metadata accessor for ProtoEmptyProps);
    v34 = v48;
    v35 = v36;
    sub_251541E9C(v48 + v36, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoEmptyProps);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v34 + v35, 0, 1, v13);
  }
}

uint64_t sub_25152187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoMainHeaderProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251541E9C(v24, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoMainHeaderProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoMainHeaderProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43C9B0, type metadata accessor for ProtoMainHeaderProps, &protocol conformance descriptor for ProtoMainHeaderProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
    return sub_251541E9C(v30, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoMainHeaderProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CDA0, type metadata accessor for ProtoMainHeaderProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoMainHeaderProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251521ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_251541E9C(v24, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoFullMainHeaderProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoFullMainHeaderProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43C9C8, type metadata accessor for ProtoFullMainHeaderProps, &protocol conformance descriptor for ProtoFullMainHeaderProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
    return sub_251541E9C(v30, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoFullMainHeaderProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CDA8, type metadata accessor for ProtoFullMainHeaderProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoFullMainHeaderProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251522534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoImageProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_251541E9C(v24, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoImageProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoImageProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    return sub_251541E9C(v30, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoImageProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoImageProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251522B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoVideoProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_251541E9C(v24, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoVideoProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoVideoProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps, &protocol conformance descriptor for ProtoVideoProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    return sub_251541E9C(v30, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoVideoProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoVideoProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_2515231EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoSwooshProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_251541E9C(v24, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoSwooshProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoSwooshProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43CA20, type metadata accessor for ProtoSwooshProps, &protocol conformance descriptor for ProtoSwooshProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
    return sub_251541E9C(v30, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoSwooshProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CDB0, type metadata accessor for ProtoSwooshProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoSwooshProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251523848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoCarouselProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_251541E9C(v24, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoCarouselProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoCarouselProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43CA48, type metadata accessor for ProtoCarouselProps, &protocol conformance descriptor for ProtoCarouselProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
    return sub_251541E9C(v30, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoCarouselProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CDB8, type metadata accessor for ProtoCarouselProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoCarouselProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251523EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_251541E9C(v24, &qword_27F43C188, type metadata accessor for ProtoTextProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoTextProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoTextProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    return sub_251541E9C(v30, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoTextProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoTextProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251524500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoTextListProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_251541E9C(v24, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoTextListProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoTextListProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43CA88, type metadata accessor for ProtoTextListProps, &protocol conformance descriptor for ProtoTextListProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
    return sub_251541E9C(v30, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoTextListProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CDC0, type metadata accessor for ProtoTextListProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoTextListProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251524B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoImageListProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_251541E9C(v24, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoImageListProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoImageListProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43CAB0, type metadata accessor for ProtoImageListProps, &protocol conformance descriptor for ProtoImageListProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
    return sub_251541E9C(v30, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoImageListProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CDC8, type metadata accessor for ProtoImageListProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoImageListProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_2515251B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoVideoListProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_251541E9C(v24, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoVideoListProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoVideoListProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43CAD8, type metadata accessor for ProtoVideoListProps, &protocol conformance descriptor for ProtoVideoListProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
    return sub_251541E9C(v30, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoVideoListProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CDD0, type metadata accessor for ProtoVideoListProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoVideoListProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251525814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for ProtoTableProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for ProtoComponent.OneOf_Props;
  v9 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25153D964(0, &qword_27F43CDD8, type metadata accessor for ProtoTableProps, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for ProtoComponent(0) + 24);
  sub_251541F0C(v48 + v37, v12, &qword_27F43C1D0, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251541E9C(v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_25150F55C(v12, v19, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v19, v17, type metadata accessor for ProtoComponent.OneOf_Props);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_251541E9C(v24, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
      v29 = v39;
      sub_25150F55C(v17, v39, type metadata accessor for ProtoTableProps);
      sub_25150F55C(v29, v24, type metadata accessor for ProtoTableProps);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_25150EE6C(v17, type metadata accessor for ProtoComponent.OneOf_Props);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_25153DB1C(&qword_27F43CB00, type metadata accessor for ProtoTableProps, &protocol conformance descriptor for ProtoTableProps);
  v31 = v43;
  sub_25154D0D0();
  if (v31)
  {
    return sub_251541E9C(v24, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
  }

  sub_251541F0C(v24, v30, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251541E9C(v24, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
    return sub_251541E9C(v30, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
  }

  else
  {
    v33 = v38;
    sub_25150F55C(v30, v38, type metadata accessor for ProtoTableProps);
    if (v26 != 1)
    {
      sub_25154D040();
    }

    sub_251541E9C(v24, &qword_27F43CDD8, type metadata accessor for ProtoTableProps);
    v34 = v48;
    v35 = v37;
    sub_251541E9C(v48 + v37, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    sub_25150F55C(v33, v34 + v35, type metadata accessor for ProtoTableProps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t ProtoComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = *(v3 + 8);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = sub_25154D160();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3 + 16))
  {
    v16 = *(v3 + 24);
    v21 = *(v3 + 16);
    v22 = v16;
    sub_25153DAC8();
    result = sub_25154D130();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v17 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(v6 + *(v17 + 24), v12, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v18 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
  {
    return sub_25154CFC0();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_251527888(v6, a1, a2, a3);
        if (!v5)
        {
          goto LABEL_39;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        sub_251527AFC(v6, a1, a2, a3);
        if (!v5)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_251527D70(v6, a1, a2, a3);
        if (!v5)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v20 = v5;
        sub_25152712C(v6, a1, a2, a3);
        goto LABEL_36;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v20 = v5;
        sub_2515273A0(v6, a1, a2, a3);
        goto LABEL_36;
      }

      sub_251527614(v6, a1, a2, a3);
      if (!v5)
      {
LABEL_39:
        sub_25150EE6C(v12, type metadata accessor for ProtoComponent.OneOf_Props);
        return sub_25154CFC0();
      }
    }

    return sub_25150EE6C(v12, type metadata accessor for ProtoComponent.OneOf_Props);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v20 = v5;
      sub_2515269D0(v6, a1, a2, a3);
    }

    else
    {
      v20 = v5;
      if (EnumCaseMultiPayload == 4)
      {
        sub_251526C44(v6, a1, a2, a3);
      }

      else
      {
        sub_251526EB8(v6, a1, a2, a3);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v20 = v5;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2515264E8(v6, a1, a2, a3);
    }

    else
    {
      sub_25152675C(v6, a1, a2, a3);
    }
  }

  else
  {
    v20 = v5;
    sub_251526278(v6, a1, a2, a3);
  }

LABEL_36:
  result = sub_25150EE6C(v12, type metadata accessor for ProtoComponent.OneOf_Props);
  if (!v20)
  {
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251526278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoEmptyProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoEmptyProps);
    sub_25153DB1C(&qword_27F43C998, type metadata accessor for ProtoEmptyProps, &protocol conformance descriptor for ProtoEmptyProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoEmptyProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_2515264E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoMainHeaderProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoMainHeaderProps);
    sub_25153DB1C(&qword_27F43C9B0, type metadata accessor for ProtoMainHeaderProps, &protocol conformance descriptor for ProtoMainHeaderProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoMainHeaderProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_25152675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoFullMainHeaderProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoFullMainHeaderProps);
    sub_25153DB1C(&qword_27F43C9C8, type metadata accessor for ProtoFullMainHeaderProps, &protocol conformance descriptor for ProtoFullMainHeaderProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoFullMainHeaderProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_2515269D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoImageProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoImageProps);
    sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoImageProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251526C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoVideoProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoVideoProps);
    sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps, &protocol conformance descriptor for ProtoVideoProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoVideoProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251526EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoSwooshProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoSwooshProps);
    sub_25153DB1C(&qword_27F43CA20, type metadata accessor for ProtoSwooshProps, &protocol conformance descriptor for ProtoSwooshProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoSwooshProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_25152712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoCarouselProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoCarouselProps);
    sub_25153DB1C(&qword_27F43CA48, type metadata accessor for ProtoCarouselProps, &protocol conformance descriptor for ProtoCarouselProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoCarouselProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_2515273A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoTextProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoTextProps);
    sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoTextProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251527614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoTextListProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoTextListProps);
    sub_25153DB1C(&qword_27F43CA88, type metadata accessor for ProtoTextListProps, &protocol conformance descriptor for ProtoTextListProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoTextListProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251527888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoImageListProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoImageListProps);
    sub_25153DB1C(&qword_27F43CAB0, type metadata accessor for ProtoImageListProps, &protocol conformance descriptor for ProtoImageListProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoImageListProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251527AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoVideoListProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoVideoListProps);
    sub_25153DB1C(&qword_27F43CAD8, type metadata accessor for ProtoVideoListProps, &protocol conformance descriptor for ProtoVideoListProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoVideoListProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251527D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoTableProps(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProtoComponent(0);
  sub_251541F0C(a1 + *(v11 + 24), v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251541E9C(v7, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_25150F55C(v7, v10, type metadata accessor for ProtoTableProps);
    sub_25153DB1C(&qword_27F43CB00, type metadata accessor for ProtoTableProps, &protocol conformance descriptor for ProtoTableProps);
    sub_25154D180();
    return sub_25150EE6C(v10, type metadata accessor for ProtoTableProps);
  }

  result = sub_25150EE6C(v7, type metadata accessor for ProtoComponent.OneOf_Props);
  __break(1u);
  return result;
}

uint64_t sub_251528030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25152810C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD80, type metadata accessor for ProtoComponent, &protocol conformance descriptor for ProtoComponent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2515281AC(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C000, type metadata accessor for ProtoComponent, &protocol conformance descriptor for ProtoComponent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251528218(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C000, type metadata accessor for ProtoComponent, &protocol conformance descriptor for ProtoComponent);

  return sub_25154D100();
}

uint64_t sub_251528298()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C3D8);
  __swift_project_value_buffer(v0, qword_27F43C3D8);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25154F940;
  v5 = v31 + v4;
  v6 = v31 + v4 + *(v2 + 56);
  *(v31 + v4) = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25154D190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "mainHeader";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "fullMainHeader";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "image";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "video";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "swoosh";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "carousel";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "text";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "textList";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "imageList";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "videoList";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "table";
  *(v29 + 1) = 5;
  v29[16] = 2;
  v9();
  return sub_25154D1A0();
}

uint64_t sub_251528734()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C3F0);
  __swift_project_value_buffer(v0, qword_27F43C3F0);
  return sub_25154D1B0();
}

uint64_t ProtoEmptyProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_25154D030();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_251528898(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD78, type metadata accessor for ProtoEmptyProps, &protocol conformance descriptor for ProtoEmptyProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251528938(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C998, type metadata accessor for ProtoEmptyProps, &protocol conformance descriptor for ProtoEmptyProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515289A4(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C998, type metadata accessor for ProtoEmptyProps, &protocol conformance descriptor for ProtoEmptyProps);

  return sub_25154D100();
}

uint64_t sub_251528A20(uint64_t a1, uint64_t a2)
{
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t sub_251528ACC()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C408);
  __swift_project_value_buffer(v0, qword_27F43C408);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25154F470;
  v5 = v19 + v4 + *(v2 + 56);
  *(v19 + v4) = 1;
  *v5 = "titleText";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25154D190();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v19 + v4 + v3 + *(v2 + 56);
  *(v19 + v4 + v3) = 2;
  *v9 = "headerType";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v19 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "imagePosition";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v19 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "image";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v19 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "leadingText";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v19 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "trailingText";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  return sub_25154D1A0();
}

uint64_t ProtoMainHeaderProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_251528FE4(a1, v5, a2, a3);
            break;
          case 5:
            sub_251529098(a1, v5, a2, a3);
            break;
          case 6:
            sub_25152914C(a1, v5, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_251528F30(a1, v5, a2, a3);
            goto LABEL_5;
          case 2:
            v11 = v4;
            sub_25153DB64();
            break;
          case 3:
            v11 = v4;
            sub_25153DBB8();
            break;
          default:
            goto LABEL_5;
        }

        v4 = v11;
        sub_25154D070();
      }

LABEL_5:
      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251528F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoMainHeaderProps(0);
  type metadata accessor for ProtoTextProps(0);
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251528FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoMainHeaderProps(0);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t sub_251529098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoMainHeaderProps(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_25152914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoMainHeaderProps(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoMainHeaderProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251529360(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_25153DB64();
      sub_25154D130();
    }

    if (v3[2])
    {
      sub_25153DBB8();
      sub_25154D130();
    }

    sub_2515295AC(v3, a1, a2, a3);
    sub_2515297F8(v3, a1, a2, a3);
    sub_251529A44(v3, a1, a2, a3);
    type metadata accessor for ProtoMainHeaderProps(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251529360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v12 + 28), v7, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoTextProps);
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoTextProps);
}

uint64_t sub_2515295AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v12 + 32), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoImageProps);
}

uint64_t sub_2515297F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v12 + 36), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251529A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoMainHeaderProps(0);
  sub_251541F0C(a1 + *(v12 + 40), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251529CD8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[7];
  v5 = type metadata accessor for ProtoTextProps(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for ProtoImageProps(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for ProtoLocalizedTextProps(0);
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), a2 + v8, 1, 1, v9);
  v10 = a2 + a1[10];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_251529E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD70, type metadata accessor for ProtoMainHeaderProps, &protocol conformance descriptor for ProtoMainHeaderProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251529F28(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C9B0, type metadata accessor for ProtoMainHeaderProps, &protocol conformance descriptor for ProtoMainHeaderProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251529F94(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C9B0, type metadata accessor for ProtoMainHeaderProps, &protocol conformance descriptor for ProtoMainHeaderProps);

  return sub_25154D100();
}

uint64_t sub_25152A014()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C420);
  __swift_project_value_buffer(v0, qword_27F43C420);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "unspecified";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "standard";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "topicExplainer";
  *(v12 + 8) = 14;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152A284()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C438);
  __swift_project_value_buffer(v0, qword_27F43C438);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "none";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "top";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "bottom";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152A510()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C450);
  __swift_project_value_buffer(v0, qword_27F43C450);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E650;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "sizeClass";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "leadingText";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "trailingText";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "backgroundImage";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "textItems";
  *(v16 + 8) = 9;
  *(v16 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoFullMainHeaderProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_25153DC0C();
          sub_25154D070();
        }

        else if (result == 2)
        {
          sub_25152A96C(a1, v5, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_25152AA20(a1, v5, a2, a3);
            break;
          case 4:
            sub_25152AAD4(a1, v5, a2, a3);
            break;
          case 5:
            type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
            sub_25153DB1C(&qword_27F43C6F0, type metadata accessor for ProtoFullMainHeaderProps.TextItem, &protocol conformance descriptor for ProtoFullMainHeaderProps.TextItem);
            sub_25154D0C0();
            break;
        }
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152A96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoFullMainHeaderProps(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_25152AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoFullMainHeaderProps(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_25152AAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoFullMainHeaderProps(0);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t ProtoFullMainHeaderProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_25153DC0C(), result = sub_25154D130(), !v4))
  {
    result = sub_25152AD04(v3, a1, a2, a3);
    if (!v4)
    {
      sub_25152AF50(v3, a1, a2, a3);
      sub_25152B19C(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
        sub_25153DB1C(&qword_27F43C6F0, type metadata accessor for ProtoFullMainHeaderProps.TextItem, &protocol conformance descriptor for ProtoFullMainHeaderProps.TextItem);
        sub_25154D170();
      }

      type metadata accessor for ProtoFullMainHeaderProps(0);
      return sub_25154CFC0();
    }
  }

  return result;
}

uint64_t sub_25152AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(a1 + *(v12 + 28), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(a1 + *(v12 + 32), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoFullMainHeaderProps(0);
  sub_251541F0C(a1 + *(v12 + 36), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoImageProps);
}

uint64_t sub_25152B430@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[7];
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[8], 1, 1, v5);
  v7 = a1[9];
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_25152B58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD68, type metadata accessor for ProtoFullMainHeaderProps, &protocol conformance descriptor for ProtoFullMainHeaderProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152B62C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C9C8, type metadata accessor for ProtoFullMainHeaderProps, &protocol conformance descriptor for ProtoFullMainHeaderProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152B698(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C9C8, type metadata accessor for ProtoFullMainHeaderProps, &protocol conformance descriptor for ProtoFullMainHeaderProps);

  return sub_25154D100();
}

uint64_t sub_25152B718()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C468);
  __swift_project_value_buffer(v0, qword_27F43C468);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
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
  *v11 = "medium";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "large";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "extraLarge";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152B9D8()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C480);
  __swift_project_value_buffer(v0, qword_27F43C480);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "textProps";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "position";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoFullMainHeaderProps.TextItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_25152BC9C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_25153DC60();
        sub_25154D070();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152BC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  type metadata accessor for ProtoTextProps(0);
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoFullMainHeaderProps.TextItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25152BE1C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_25153DC60();
      sub_25154D130();
    }

    type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152BE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  sub_251541F0C(a1 + *(v12 + 24), v7, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoTextProps);
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoTextProps);
}

uint64_t sub_25152C0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ProtoTextProps(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_25152C18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD60, type metadata accessor for ProtoFullMainHeaderProps.TextItem, &protocol conformance descriptor for ProtoFullMainHeaderProps.TextItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152C22C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C6F0, type metadata accessor for ProtoFullMainHeaderProps.TextItem, &protocol conformance descriptor for ProtoFullMainHeaderProps.TextItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152C298(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C6F0, type metadata accessor for ProtoFullMainHeaderProps.TextItem, &protocol conformance descriptor for ProtoFullMainHeaderProps.TextItem);

  return sub_25154D100();
}

uint64_t sub_25152C318()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C498);
  __swift_project_value_buffer(v0, qword_27F43C498);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "top";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "center";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "bottom";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152C5A0()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C4B0);
  __swift_project_value_buffer(v0, qword_27F43C4B0);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "imageId";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "imageFormat";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "imageBackgroundColor";
  *(v12 + 8) = 20;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoImageProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_25152C8D0(a1, v5, a2, a3);
          break;
        case 2:
          sub_25153DCB4();
          sub_25154D070();
          break;
        case 1:
          sub_25154D0B0();
          break;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoImageProps(0);
  sub_25150E514();
  return sub_25154D060();
}

uint64_t ProtoImageProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_25154D160(), !v4))
  {
    if (!v3[2] || (sub_25153DCB4(), result = sub_25154D130(), !v4))
    {
      result = sub_25152CA40(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for ProtoImageProps(0);
        return sub_25154CFC0();
      }
    }
  }

  return result;
}

uint64_t sub_25152CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoImageProps(0);
  if ((*(a1 + *(result + 28) + 9) & 1) == 0)
  {
    sub_25150E514();
    return sub_25154D130();
  }

  return result;
}

uint64_t sub_25152CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  result = _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v5 = a2 + *(a1 + 28);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t sub_25152CBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD58, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152CC70(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152CCDC(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);

  return sub_25154D100();
}

uint64_t sub_25152CD5C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C4C8);
  __swift_project_value_buffer(v0, qword_27F43C4C8);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
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
  *v11 = "crop";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "fullBleed";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "transparent";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_25152D01C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C4E0);
  __swift_project_value_buffer(v0, qword_27F43C4E0);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "videoId";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "isEmbeddedAutoPlay";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoVideoProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_25154D030();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_25154D0B0();
    }

    else if (result == 2)
    {
      sub_25154D050();
    }
  }

  return result;
}

uint64_t ProtoVideoProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_25154D160(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_25154D120(), !v4))
    {
      type metadata accessor for ProtoVideoProps(0);
      return sub_25154CFC0();
    }
  }

  return result;
}

uint64_t sub_25152D3B0@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_25152D428(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD50, type metadata accessor for ProtoVideoProps, &protocol conformance descriptor for ProtoVideoProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152D4C8(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps, &protocol conformance descriptor for ProtoVideoProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152D534(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps, &protocol conformance descriptor for ProtoVideoProps);

  return sub_25154D100();
}

uint64_t sub_25152D5B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_25154D520() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t ProtoSwooshProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtoSwooshProps.Tile(0), sub_25153DB1C(&qword_27F43C728, type metadata accessor for ProtoSwooshProps.Tile, &protocol conformance descriptor for ProtoSwooshProps.Tile), result = sub_25154D170(), !v4))
  {
    type metadata accessor for ProtoSwooshProps(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152D8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD48, type metadata accessor for ProtoSwooshProps, &protocol conformance descriptor for ProtoSwooshProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152D950(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA20, type metadata accessor for ProtoSwooshProps, &protocol conformance descriptor for ProtoSwooshProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152D9BC(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43CA20, type metadata accessor for ProtoSwooshProps, &protocol conformance descriptor for ProtoSwooshProps);

  return sub_25154D100();
}

uint64_t sub_25152DA6C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C510);
  __swift_project_value_buffer(v0, qword_27F43C510);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "image";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "backgroundColor";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "title";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoSwooshProps.Tile.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_25152DE54(a1, v5, a2, a3);
          break;
        case 2:
          sub_25150E514();
          sub_25154D070();
          break;
        case 1:
          sub_25152DDA0(a1, v5, a2, a3);
          break;
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152DDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoSwooshProps.Tile(0);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t sub_25152DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoSwooshProps.Tile(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoSwooshProps.Tile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25152DFF0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_25150E514();
      sub_25154D130();
    }

    sub_25152E23C(v3, a1, a2, a3);
    type metadata accessor for ProtoSwooshProps.Tile(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoSwooshProps.Tile(0);
  sub_251541F0C(a1 + *(v12 + 24), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoImageProps);
}

uint64_t sub_25152E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoSwooshProps.Tile(0);
  sub_251541F0C(a1 + *(v12 + 28), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152E4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ProtoImageProps(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for ProtoLocalizedTextProps(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_25152E5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD40, type metadata accessor for ProtoSwooshProps.Tile, &protocol conformance descriptor for ProtoSwooshProps.Tile);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152E698(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C728, type metadata accessor for ProtoSwooshProps.Tile, &protocol conformance descriptor for ProtoSwooshProps.Tile);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152E704(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C728, type metadata accessor for ProtoSwooshProps.Tile, &protocol conformance descriptor for ProtoSwooshProps.Tile);

  return sub_25154D100();
}

uint64_t ProtoCarouselProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtoCarouselProps.Tile(0), sub_25153DB1C(&qword_27F43C740, type metadata accessor for ProtoCarouselProps.Tile, &protocol conformance descriptor for ProtoCarouselProps.Tile), result = sub_25154D170(), !v4))
  {
    type metadata accessor for ProtoCarouselProps(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152E9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD38, type metadata accessor for ProtoCarouselProps, &protocol conformance descriptor for ProtoCarouselProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152EA60(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA48, type metadata accessor for ProtoCarouselProps, &protocol conformance descriptor for ProtoCarouselProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152EACC(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43CA48, type metadata accessor for ProtoCarouselProps, &protocol conformance descriptor for ProtoCarouselProps);

  return sub_25154D100();
}

uint64_t sub_25152EB7C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C540);
  __swift_project_value_buffer(v0, qword_27F43C540);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "image";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "backgroundColor";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "title";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "description";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoCarouselProps.Tile.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_25152EFC4(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_25152F078(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_25152EF10(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_25150E514();
        sub_25154D070();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_25152EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoCarouselProps.Tile(0);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t sub_25152EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoCarouselProps.Tile(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_25152F078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoCarouselProps.Tile(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoCarouselProps.Tile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25152F22C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_25150E514();
      sub_25154D130();
    }

    sub_25152F478(v3, a1, a2, a3);
    sub_25152F6C4(v3, a1, a2, a3);
    type metadata accessor for ProtoCarouselProps.Tile(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25152F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoCarouselProps.Tile(0);
  sub_251541F0C(a1 + *(v12 + 24), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoImageProps);
}

uint64_t sub_25152F478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoCarouselProps.Tile(0);
  sub_251541F0C(a1 + *(v12 + 28), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152F6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoCarouselProps.Tile(0);
  sub_251541F0C(a1 + *(v12 + 32), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_25152F95C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[6];
  v5 = type metadata accessor for ProtoImageProps(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ProtoLocalizedTextProps(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a2 + v6, 1, 1, v7);
  v8 = a2 + a1[8];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_25152FAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD30, type metadata accessor for ProtoCarouselProps.Tile, &protocol conformance descriptor for ProtoCarouselProps.Tile);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25152FB58(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C740, type metadata accessor for ProtoCarouselProps.Tile, &protocol conformance descriptor for ProtoCarouselProps.Tile);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25152FBC4(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C740, type metadata accessor for ProtoCarouselProps.Tile, &protocol conformance descriptor for ProtoCarouselProps.Tile);

  return sub_25154D100();
}

uint64_t sub_25152FC60()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C558);
  __swift_project_value_buffer(v0, qword_27F43C558);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "text";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "font";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "alignment";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "format";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTextProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v11 = v4;
          sub_25153DD08();
LABEL_5:
          v4 = v11;
          sub_25154D070();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v11 = v4;
          sub_25153DD5C();
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        sub_251530004(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        v11 = v4;
        sub_25150E568();
        goto LABEL_5;
      }

LABEL_6:
      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251530004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoTextProps(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoTextProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251530228(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_25150E568();
      sub_25154D130();
    }

    if (v3[2])
    {
      sub_25153DD08();
      sub_25154D130();
      if (!v3[4])
      {
        goto LABEL_9;
      }
    }

    else if (!v3[4])
    {
LABEL_9:
      type metadata accessor for ProtoTextProps(0);
      return sub_25154CFC0();
    }

    sub_25153DD5C();
    sub_25154D130();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_251530228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoTextProps(0);
  sub_251541F0C(a1 + *(v12 + 32), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_2515304BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_2515305A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD28, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251530644(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515306B0(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43CA70, type metadata accessor for ProtoTextProps, &protocol conformance descriptor for ProtoTextProps);

  return sub_25154D100();
}

uint64_t sub_251530730()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C570);
  __swift_project_value_buffer(v0, qword_27F43C570);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "leading";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "center";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "trailing";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t sub_2515309A0()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C588);
  __swift_project_value_buffer(v0, qword_27F43C588);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "none";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "markdown";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "blockQuote";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTextListProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtoTextListProps.Item(0), sub_25153DB1C(&qword_27F43C770, type metadata accessor for ProtoTextListProps.Item, &protocol conformance descriptor for ProtoTextListProps.Item), result = sub_25154D170(), !v4))
  {
    type metadata accessor for ProtoTextListProps(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251530E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD20, type metadata accessor for ProtoTextListProps, &protocol conformance descriptor for ProtoTextListProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251530EEC(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CA88, type metadata accessor for ProtoTextListProps, &protocol conformance descriptor for ProtoTextListProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251530F58(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43CA88, type metadata accessor for ProtoTextListProps, &protocol conformance descriptor for ProtoTextListProps);

  return sub_25154D100();
}

uint64_t sub_251531008()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C5B8);
  __swift_project_value_buffer(v0, qword_27F43C5B8);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
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
  *v11 = "pointStyle";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "description";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "sfSymbolResource";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTextListProps.Item.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_251531460(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          type metadata accessor for ProtoTextListProps.Item(0);
          sub_25154D0A0();
        }
      }

      else if (result == 1)
      {
        sub_2515313AC(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_25153DDB0();
        sub_25154D070();
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_2515313AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoTextListProps.Item(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251531460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoTextListProps.Item(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoTextListProps.Item.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251531614(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_25153DDB0();
      sub_25154D130();
    }

    sub_251531860(v3, a1, a2, a3);
    sub_251531AAC(v3, a1, a2, a3);
    type metadata accessor for ProtoTextListProps.Item(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251531614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoTextListProps.Item(0);
  sub_251541F0C(a1 + *(v12 + 24), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251531860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoTextListProps.Item(0);
  sub_251541F0C(a1 + *(v12 + 28), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251531AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoTextListProps.Item(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_25154D160();
  }

  return result;
}

uint64_t sub_251531B70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[6];
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  result = (v6)(a2 + a1[7], 1, 1, v5);
  v8 = (a2 + a1[8]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_251531C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD18, type metadata accessor for ProtoTextListProps.Item, &protocol conformance descriptor for ProtoTextListProps.Item);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251531D1C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C770, type metadata accessor for ProtoTextListProps.Item, &protocol conformance descriptor for ProtoTextListProps.Item);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251531D88(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C770, type metadata accessor for ProtoTextListProps.Item, &protocol conformance descriptor for ProtoTextListProps.Item);

  return sub_25154D100();
}

uint64_t sub_251531E08()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C5D0);
  __swift_project_value_buffer(v0, qword_27F43C5D0);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E660;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "none";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "sfSymbol";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "bullet";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "numeric";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoImageListProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtoImageListProps.Item(0), sub_25153DB1C(&qword_27F43C790, type metadata accessor for ProtoImageListProps.Item, &protocol conformance descriptor for ProtoImageListProps.Item), result = sub_25154D170(), !v4))
  {
    type metadata accessor for ProtoImageListProps(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_2515322E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD10, type metadata accessor for ProtoImageListProps, &protocol conformance descriptor for ProtoImageListProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251532388(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CAB0, type metadata accessor for ProtoImageListProps, &protocol conformance descriptor for ProtoImageListProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515323F4(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43CAB0, type metadata accessor for ProtoImageListProps, &protocol conformance descriptor for ProtoImageListProps);

  return sub_25154D100();
}

uint64_t sub_2515324A4()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C600);
  __swift_project_value_buffer(v0, qword_27F43C600);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
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
  *v11 = "image";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "imageAlignment";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "description";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoImageListProps.Item.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_25154D030();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_25153DE04();
          sub_25154D070();
        }

        else if (result == 4)
        {
          sub_2515329A0(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_251532838(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_2515328EC(a1, v5, a2, a3);
      }

      result = sub_25154D030();
    }
  }

  return result;
}

uint64_t sub_251532838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoImageListProps.Item(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_2515328EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoImageListProps.Item(0);
  type metadata accessor for ProtoImageProps(0);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  return sub_25154D0D0();
}

uint64_t sub_2515329A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoImageListProps.Item(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoImageListProps.Item.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251532B54(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251532DA0(v3, a1, a2, a3);
    if (*v3)
    {
      sub_25153DE04();
      sub_25154D130();
    }

    sub_251532FEC(v3, a1, a2, a3);
    type metadata accessor for ProtoImageListProps.Item(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251532B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(a1 + *(v12 + 24), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251532DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoImageProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(a1 + *(v12 + 28), v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoImageProps);
  sub_25153DB1C(&qword_27F43C9F0, type metadata accessor for ProtoImageProps, &protocol conformance descriptor for ProtoImageProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoImageProps);
}

uint64_t sub_251532FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoImageListProps.Item(0);
  sub_251541F0C(a1 + *(v12 + 32), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251533284@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[6];
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v10 = *(*(v5 - 8) + 56);
  (v10)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ProtoImageProps(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a2 + a1[8];

  return v10(v8, 1, 1, v5);
}

uint64_t sub_2515333E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD08, type metadata accessor for ProtoImageListProps.Item, &protocol conformance descriptor for ProtoImageListProps.Item);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251533480(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C790, type metadata accessor for ProtoImageListProps.Item, &protocol conformance descriptor for ProtoImageListProps.Item);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515334EC(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C790, type metadata accessor for ProtoImageListProps.Item, &protocol conformance descriptor for ProtoImageListProps.Item);

  return sub_25154D100();
}

uint64_t sub_25153356C()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C618);
  __swift_project_value_buffer(v0, qword_27F43C618);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "unspecified";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "leading";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "trailing";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoVideoListProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtoVideoListProps.Item(0), sub_25153DB1C(&qword_27F43C7B0, type metadata accessor for ProtoVideoListProps.Item, &protocol conformance descriptor for ProtoVideoListProps.Item), result = sub_25154D170(), !v4))
  {
    type metadata accessor for ProtoVideoListProps(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251533A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CD00, type metadata accessor for ProtoVideoListProps, &protocol conformance descriptor for ProtoVideoListProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251533AB8(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CAD8, type metadata accessor for ProtoVideoListProps, &protocol conformance descriptor for ProtoVideoListProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251533B24(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43CAD8, type metadata accessor for ProtoVideoListProps, &protocol conformance descriptor for ProtoVideoListProps);

  return sub_25154D100();
}

uint64_t sub_251533BD4()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C648);
  __swift_project_value_buffer(v0, qword_27F43C648);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154E5A0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "title";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "description";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "video";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoVideoListProps.Item.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_25154D030();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_251534044(a1, v5, a2, a3);
        break;
      case 2:
        sub_251533F90(a1, v5, a2, a3);
        break;
      case 1:
        sub_251533EDC(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_251533EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoVideoListProps.Item(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251533F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoVideoListProps.Item(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t sub_251534044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoVideoListProps.Item(0);
  type metadata accessor for ProtoVideoProps(0);
  sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps, &protocol conformance descriptor for ProtoVideoProps);
  return sub_25154D0D0();
}

uint64_t ProtoVideoListProps.Item.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251534180(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2515343CC(v3, a1, a2, a3);
    sub_251534618(v3, a1, a2, a3);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251534180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v12 + 20), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_2515343CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v12 + 24), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_251534618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoVideoProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoVideoListProps.Item(0);
  sub_251541F0C(a1 + *(v12 + 28), v7, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoVideoProps);
  sub_25153DB1C(&qword_27F43CA08, type metadata accessor for ProtoVideoProps, &protocol conformance descriptor for ProtoVideoProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoVideoProps);
}

uint64_t sub_2515348B0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = a1[5];
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[6], 1, 1, v5);
  v7 = a1[7];
  v8 = type metadata accessor for ProtoVideoProps(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_2515349EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CCF8, type metadata accessor for ProtoVideoListProps.Item, &protocol conformance descriptor for ProtoVideoListProps.Item);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251534A8C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C7B0, type metadata accessor for ProtoVideoListProps.Item, &protocol conformance descriptor for ProtoVideoListProps.Item);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251534AF8(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C7B0, type metadata accessor for ProtoVideoListProps.Item, &protocol conformance descriptor for ProtoVideoListProps.Item);

  return sub_25154D100();
}

uint64_t sub_251534B94()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C660);
  __swift_project_value_buffer(v0, qword_27F43C660);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "headers";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "rows";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTableProps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for ProtoTableProps.Column(0);
        sub_25153DB1C(&qword_27F43C7D0, type metadata accessor for ProtoTableProps.Column, &protocol conformance descriptor for ProtoTableProps.Column);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_25154D030();
    }

    v6 = v3;
    type metadata accessor for ProtoTableProps.ColumnHeader(0);
    sub_25153DB1C(&qword_27F43C7C8, type metadata accessor for ProtoTableProps.ColumnHeader, &protocol conformance descriptor for ProtoTableProps.ColumnHeader);
LABEL_5:
    v3 = v6;
    sub_25154D0C0();
    goto LABEL_6;
  }

  return result;
}

uint64_t ProtoTableProps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtoTableProps.ColumnHeader(0), sub_25153DB1C(&qword_27F43C7C8, type metadata accessor for ProtoTableProps.ColumnHeader, &protocol conformance descriptor for ProtoTableProps.ColumnHeader), result = sub_25154D170(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for ProtoTableProps.Column(0), sub_25153DB1C(&qword_27F43C7D0, type metadata accessor for ProtoTableProps.Column, &protocol conformance descriptor for ProtoTableProps.Column), result = sub_25154D170(), !v4))
    {
      type metadata accessor for ProtoTableProps(0);
      return sub_25154CFC0();
    }
  }

  return result;
}

uint64_t sub_251535074@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

uint64_t sub_2515350EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CCF0, type metadata accessor for ProtoTableProps, &protocol conformance descriptor for ProtoTableProps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25153518C(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43CB00, type metadata accessor for ProtoTableProps, &protocol conformance descriptor for ProtoTableProps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2515351F8(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43CB00, type metadata accessor for ProtoTableProps, &protocol conformance descriptor for ProtoTableProps);

  return sub_25154D100();
}

uint64_t sub_251535274(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2515053BC(*a1, *a2) & 1) == 0 || (sub_251505A74(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t sub_251535348()
{
  v0 = sub_25154D1C0();
  __swift_allocate_value_buffer(v0, qword_27F43C678);
  __swift_project_value_buffer(v0, qword_27F43C678);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25154F2B0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "value";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25154D190();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "widthPercent";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_25154D1A0();
}

uint64_t ProtoTableProps.ColumnHeader.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_2515355DC(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_25154D080();
    }
  }

  return result;
}

uint64_t sub_2515355DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoTableProps.ColumnHeader(0);
  type metadata accessor for ProtoLocalizedTextProps(0);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  return sub_25154D0D0();
}

uint64_t ProtoTableProps.ColumnHeader.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25153572C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_25154D140();
    }

    type metadata accessor for ProtoTableProps.ColumnHeader(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_25153572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoTableProps.ColumnHeader(0);
  sub_251541F0C(a1 + *(v12 + 24), v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251541E9C(v7, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  sub_25150F55C(v7, v11, type metadata accessor for ProtoLocalizedTextProps);
  sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps);
  sub_25154D180();
  return sub_25150EE6C(v11, type metadata accessor for ProtoLocalizedTextProps);
}

uint64_t sub_2515359C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ProtoLocalizedTextProps(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_251535A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CCE8, type metadata accessor for ProtoTableProps.ColumnHeader, &protocol conformance descriptor for ProtoTableProps.ColumnHeader);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251535B34(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C7C8, type metadata accessor for ProtoTableProps.ColumnHeader, &protocol conformance descriptor for ProtoTableProps.ColumnHeader);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251535BA0(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C7C8, type metadata accessor for ProtoTableProps.ColumnHeader, &protocol conformance descriptor for ProtoTableProps.ColumnHeader);

  return sub_25154D100();
}

uint64_t sub_251535C54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25154D1C0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_25153D964(0, &qword_27F43C1A0, sub_25150BDF8, MEMORY[0x277D84560]);
  sub_25150BDF8(0);
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

uint64_t sub_251535E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_25154D030();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_25153DB1C(a5, a6, a7);
      sub_25154D0C0();
    }
  }

  return result;
}

uint64_t ProtoTableProps.Column.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtoLocalizedTextProps(0), sub_25153DB1C(&qword_27F43C198, type metadata accessor for ProtoLocalizedTextProps, &protocol conformance descriptor for ProtoLocalizedTextProps), result = sub_25154D170(), !v4))
  {
    type metadata accessor for ProtoTableProps.Column(0);
    return sub_25154CFC0();
  }

  return result;
}

uint64_t sub_251536044(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t sub_251536144(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_25154D590();
  a1(0);
  sub_25153DB1C(a2, a3, a4);
  sub_25154D220();
  return sub_25154D5B0();
}

uint64_t sub_251536218(uint64_t a1, uint64_t a2)
{
  v4 = sub_25153DB1C(&qword_27F43CCE0, type metadata accessor for ProtoTableProps.Column, &protocol conformance descriptor for ProtoTableProps.Column);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2515362B8(uint64_t a1)
{
  v2 = sub_25153DB1C(&qword_27F43C7D0, type metadata accessor for ProtoTableProps.Column, &protocol conformance descriptor for ProtoTableProps.Column);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251536324(uint64_t a1, uint64_t a2)
{
  sub_25153DB1C(&qword_27F43C7D0, type metadata accessor for ProtoTableProps.Column, &protocol conformance descriptor for ProtoTableProps.Column);

  return sub_25154D100();
}

uint64_t sub_2515363B8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25154D240() & 1;
}

uint64_t _s25HealthContentDaemonPlugin24ProtoFullMainHeaderPropsV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoImageProps(0);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v67 - v9;
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v80 = type metadata accessor for ProtoLocalizedTextProps(0);
  v13 = *(v80 - 8);
  v14 = MEMORY[0x28223BE20](v80);
  v75 = (&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = (&v67 - v16);
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, v7);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = (&v67 - v22);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v25 = v24;
  v26 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v26);
  v29 = &v67 - v28;
  v30 = *a1;
  v31 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        if (v30 != 2)
        {
          goto LABEL_48;
        }
      }

      else if (v30 != 3)
      {
        goto LABEL_48;
      }
    }

    else if (v31)
    {
      if (v30 != 1)
      {
        goto LABEL_48;
      }
    }

    else if (v30)
    {
      goto LABEL_48;
    }
  }

  else if (v30 != v31)
  {
    goto LABEL_48;
  }

  v68 = v12;
  v69 = v21;
  v74 = v27;
  v71 = v6;
  v70 = type metadata accessor for ProtoFullMainHeaderProps(0);
  v32 = *(v70 + 28);
  v33 = *(v25 + 48);
  v72 = a1;
  sub_251541F0C(a1 + v32, v29, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v73 = a2;
  sub_251541F0C(a2 + v32, &v29[v33], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v34 = *(v13 + 48);
  v35 = v80;
  if (v34(v29, 1, v80) == 1)
  {
    if (v34(&v29[v33], 1, v35) == 1)
    {
      sub_251541E9C(v29, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_27;
    }

LABEL_15:
    v36 = &qword_27F43C180;
    v37 = &qword_27F43BFE8;
    v38 = type metadata accessor for ProtoLocalizedTextProps;
    v39 = v29;
LABEL_47:
    sub_251541DC8(v39, v36, v37, v38);
    goto LABEL_48;
  }

  sub_251541F0C(v29, v23, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v34(&v29[v33], 1, v35) == 1)
  {
    sub_25150EE6C(v23, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_15;
  }

  sub_25150F55C(&v29[v33], v17, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v23 != *v17 || v23[1] != v17[1]) && (sub_25154D520() & 1) == 0 || (v23[2] != v17[2] || v23[3] != v17[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v17, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v23, type metadata accessor for ProtoLocalizedTextProps);
    v54 = v29;
LABEL_51:
    sub_251541E9C(v54, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_48;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = sub_25154D240();
  sub_25150EE6C(v17, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v23, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v29, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v40 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_27:
  v41 = v70;
  v42 = *(v70 + 32);
  v43 = *(v25 + 48);
  v44 = v72;
  v45 = v74;
  sub_251541F0C(v72 + v42, v74, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v46 = v73;
  v47 = v45;
  sub_251541F0C(v73 + v42, v45 + v43, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v48 = v80;
  if (v34(v45, 1, v80) == 1)
  {
    v49 = v34((v45 + v43), 1, v48);
    v50 = v71;
    v51 = v79;
    if (v49 == 1)
    {
      sub_251541E9C(v47, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v52 = v69;
  sub_251541F0C(v45, v69, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v53 = v34((v45 + v43), 1, v48);
  v50 = v71;
  v51 = v79;
  if (v53 == 1)
  {
    sub_25150EE6C(v52, type metadata accessor for ProtoLocalizedTextProps);
LABEL_32:
    v36 = &qword_27F43C180;
    v37 = &qword_27F43BFE8;
    v38 = type metadata accessor for ProtoLocalizedTextProps;
    v39 = v47;
    goto LABEL_47;
  }

  v55 = v47 + v43;
  v56 = v75;
  sub_25150F55C(v55, v75, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v52 != *v56 || v52[1] != v56[1]) && (sub_25154D520() & 1) == 0 || (v69[2] != v56[2] || v69[3] != v56[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v56, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v69, type metadata accessor for ProtoLocalizedTextProps);
    v54 = v47;
    goto LABEL_51;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v57 = v69;
  v58 = sub_25154D240();
  sub_25150EE6C(v56, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v57, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v74, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v58 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_41:
  v59 = *(v41 + 36);
  v60 = *(v76 + 48);
  v61 = v68;
  sub_251541F0C(v44 + v59, v68, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_251541F0C(v46 + v59, v61 + v60, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v62 = v78;
  v63 = *(v77 + 48);
  if (v63(v61, 1, v78) != 1)
  {
    sub_251541F0C(v61, v51, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
    if (v63(v61 + v60, 1, v62) != 1)
    {
      sub_25150F55C(v61 + v60, v50, type metadata accessor for ProtoImageProps);
      v66 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v51, v50);
      sub_25150EE6C(v50, type metadata accessor for ProtoImageProps);
      sub_25150EE6C(v51, type metadata accessor for ProtoImageProps);
      sub_251541E9C(v61, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      if ((v66 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    sub_25150EE6C(v51, type metadata accessor for ProtoImageProps);
    goto LABEL_46;
  }

  if (v63(v61 + v60, 1, v62) != 1)
  {
LABEL_46:
    v36 = &qword_27F43CD90;
    v37 = &qword_27F43C6A8;
    v38 = type metadata accessor for ProtoImageProps;
    v39 = v61;
    goto LABEL_47;
  }

  sub_251541E9C(v61, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
LABEL_53:
  if (sub_251504A98(v44[2], *(v46 + 16)))
  {
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v64 = sub_25154D240();
    return v64 & 1;
  }

LABEL_48:
  v64 = 0;
  return v64 & 1;
}

uint64_t _s25HealthContentDaemonPlugin24ProtoFullMainHeaderPropsV8TextItemV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ProtoTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v23 - v8);
  sub_251541E24(0, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for ProtoFullMainHeaderProps.TextItem(0);
  v14 = *(v24 + 24);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_251541F0C(a1 + v14, v13, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  sub_251541F0C(a2 + v14, &v13[v15], &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_251541E9C(v13, &qword_27F43C188, type metadata accessor for ProtoTextProps);
      goto LABEL_8;
    }
  }

  else
  {
    sub_251541F0C(v13, v9, &qword_27F43C188, type metadata accessor for ProtoTextProps);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v25;
      sub_25150F55C(&v13[v15], v25, type metadata accessor for ProtoTextProps);
      v19 = _s25HealthContentDaemonPlugin14ProtoTextPropsV2eeoiySbAC_ACtFZ_0(v9, v18);
      sub_25150EE6C(v18, type metadata accessor for ProtoTextProps);
      sub_25150EE6C(v9, type metadata accessor for ProtoTextProps);
      sub_251541E9C(v13, &qword_27F43C188, type metadata accessor for ProtoTextProps);
      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_8:
      v20 = *v26;
      v21 = *a2;
      if (*(a2 + 8) == 1)
      {
        if (v21)
        {
          if (v21 == 1)
          {
            if (v20 == 1)
            {
              goto LABEL_14;
            }
          }

          else if (v20 == 2)
          {
            goto LABEL_14;
          }

LABEL_16:
          v17 = 0;
          return v17 & 1;
        }

        if (v20)
        {
          goto LABEL_16;
        }
      }

      else if (v20 != v21)
      {
        goto LABEL_16;
      }

LABEL_14:
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_25154D240();
      return v17 & 1;
    }

    sub_25150EE6C(v9, type metadata accessor for ProtoTextProps);
  }

  sub_251541DC8(v13, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v17 = 0;
  return v17 & 1;
}

uint64_t _s25HealthContentDaemonPlugin20ProtoMainHeaderPropsV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v95 = a2;
  v87 = type metadata accessor for ProtoLocalizedTextProps(0);
  v85 = *(v87 - 8);
  v3 = MEMORY[0x28223BE20](v87);
  v78 = (&v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v80 = (&v78 - v5);
  v6 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v79 = (&v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v82 = (&v78 - v10);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v86 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v78 - v14;
  v15 = type metadata accessor for ProtoImageProps(0);
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x28223BE20](v15);
  v83 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, v6);
  MEMORY[0x28223BE20](v17 - 8);
  v93 = &v78 - v18;
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v88 = v19;
  MEMORY[0x28223BE20](v19);
  v91 = &v78 - v20;
  v21 = type metadata accessor for ProtoTextProps(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, v6);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = (&v78 - v26);
  sub_251541E24(0, &qword_27F43C190, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v29 = v28 - 8;
  MEMORY[0x28223BE20](v28);
  v31 = &v78 - v30;
  v92 = type metadata accessor for ProtoMainHeaderProps(0);
  v32 = v92[7];
  v33 = *(v29 + 56);
  v94 = a1;
  sub_251541F0C(a1 + v32, v31, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v34 = v95;
  sub_251541F0C(v95 + v32, &v31[v33], &qword_27F43C188, type metadata accessor for ProtoTextProps);
  v35 = *(v22 + 48);
  if (v35(v31, 1, v21) == 1)
  {
    if (v35(&v31[v33], 1, v21) == 1)
    {
      sub_251541E9C(v31, &qword_27F43C188, type metadata accessor for ProtoTextProps);
      goto LABEL_12;
    }

LABEL_6:
    v36 = &qword_27F43C190;
    v37 = &qword_27F43C188;
    v38 = type metadata accessor for ProtoTextProps;
LABEL_7:
    v39 = v38;
    v40 = v31;
LABEL_8:
    sub_251541DC8(v40, v36, v37, v39);
    goto LABEL_9;
  }

  sub_251541F0C(v31, v27, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if (v35(&v31[v33], 1, v21) == 1)
  {
    sub_25150EE6C(v27, type metadata accessor for ProtoTextProps);
    goto LABEL_6;
  }

  sub_25150F55C(&v31[v33], v24, type metadata accessor for ProtoTextProps);
  v43 = _s25HealthContentDaemonPlugin14ProtoTextPropsV2eeoiySbAC_ACtFZ_0(v27, v24);
  sub_25150EE6C(v24, type metadata accessor for ProtoTextProps);
  sub_25150EE6C(v27, type metadata accessor for ProtoTextProps);
  sub_251541E9C(v31, &qword_27F43C188, type metadata accessor for ProtoTextProps);
  if ((v43 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v44 = v94;
  v45 = *v94;
  v46 = *v34;
  if (*(v34 + 8) == 1)
  {
    v47 = v93;
    if (v46)
    {
      if (v46 == 1)
      {
        if (v45 != 1)
        {
          goto LABEL_9;
        }
      }

      else if (v45 != 2)
      {
        goto LABEL_9;
      }
    }

    else if (v45)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v93;
    if (v45 != v46)
    {
      goto LABEL_9;
    }
  }

  v48 = v94[2];
  v49 = v34[2];
  if (*(v34 + 24) == 1)
  {
    if (v49)
    {
      if (v49 == 1)
      {
        if (v48 != 1)
        {
          goto LABEL_9;
        }
      }

      else if (v48 != 2)
      {
        goto LABEL_9;
      }
    }

    else if (v48)
    {
      goto LABEL_9;
    }
  }

  else if (v48 != v49)
  {
    goto LABEL_9;
  }

  v31 = v91;
  v50 = v92;
  v51 = v92[8];
  v52 = *(v88 + 48);
  sub_251541F0C(v94 + v51, v91, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_251541F0C(v34 + v51, &v31[v52], &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v53 = v90;
  v54 = *(v89 + 48);
  if (v54(v31, 1, v90) == 1)
  {
    if (v54(&v31[v52], 1, v53) == 1)
    {
      sub_251541E9C(v31, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  sub_251541F0C(v31, v47, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if (v54(&v31[v52], 1, v53) == 1)
  {
    sub_25150EE6C(v47, type metadata accessor for ProtoImageProps);
LABEL_37:
    v36 = &qword_27F43CD90;
    v37 = &qword_27F43C6A8;
    v38 = type metadata accessor for ProtoImageProps;
    goto LABEL_7;
  }

  v55 = &v31[v52];
  v56 = v83;
  sub_25150F55C(v55, v83, type metadata accessor for ProtoImageProps);
  v57 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v47, v56);
  sub_25150EE6C(v56, type metadata accessor for ProtoImageProps);
  sub_25150EE6C(v47, type metadata accessor for ProtoImageProps);
  sub_251541E9C(v31, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((v57 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_39:
  v58 = v50[9];
  v59 = *(v86 + 48);
  v60 = v84;
  sub_251541F0C(v44 + v58, v84, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v61 = v60;
  sub_251541F0C(v34 + v58, v60 + v59, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v62 = *(v85 + 48);
  v63 = v87;
  if (v62(v60, 1, v87) == 1)
  {
    if (v62(v60 + v59, 1, v63) != 1)
    {
LABEL_55:
      v36 = &qword_27F43C180;
      v37 = &qword_27F43BFE8;
      v39 = type metadata accessor for ProtoLocalizedTextProps;
      v40 = v61;
      goto LABEL_8;
    }

    sub_251541E9C(v60, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    v64 = v60;
    v65 = v82;
    sub_251541F0C(v64, v82, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v62(v61 + v59, 1, v63) == 1)
    {
LABEL_54:
      sub_25150EE6C(v65, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_55;
    }

    v66 = v61 + v59;
    v67 = v80;
    sub_25150F55C(v66, v80, type metadata accessor for ProtoLocalizedTextProps);
    if ((*v65 != *v67 || v65[1] != v67[1]) && (sub_25154D520() & 1) == 0 || (v65[2] != v67[2] || v65[3] != v67[3]) && (sub_25154D520() & 1) == 0)
    {
      v75 = v67;
LABEL_66:
      sub_25150EE6C(v75, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150EE6C(v65, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v61, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_9;
    }

    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v68 = sub_25154D240();
    sub_25150EE6C(v67, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v65, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v61, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if ((v68 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v69 = v92[10];
  v70 = *(v86 + 48);
  v71 = v81;
  sub_251541F0C(v44 + v69, v81, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v72 = v34 + v69;
  v61 = v71;
  sub_251541F0C(v72, v71 + v70, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v73 = v87;
  if (v62(v71, 1, v87) == 1)
  {
    if (v62(v71 + v70, 1, v73) == 1)
    {
      sub_251541E9C(v71, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_64:
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = sub_25154D240();
      return v41 & 1;
    }

    goto LABEL_55;
  }

  v74 = v71;
  v65 = v79;
  sub_251541F0C(v74, v79, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v62(v61 + v70, 1, v73) == 1)
  {
    goto LABEL_54;
  }

  v76 = v78;
  sub_25150F55C(v61 + v70, v78, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v65 != *v76 || v65[1] != v76[1]) && (sub_25154D520() & 1) == 0 || (v65[2] != v76[2] || v65[3] != v76[3]) && (sub_25154D520() & 1) == 0)
  {
    v75 = v76;
    goto LABEL_66;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v77 = sub_25154D240();
  sub_25150EE6C(v76, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v65, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v61, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v77)
  {
    goto LABEL_64;
  }

LABEL_9:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s25HealthContentDaemonPlugin19ProtoVideoListPropsV4ItemV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoVideoProps(0);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v60 - v8;
  sub_251541E24(0, &qword_27F43CD88, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v60 - v10;
  v11 = type metadata accessor for ProtoLocalizedTextProps(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v69 = (&v60 - v15);
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, v6);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v68 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = (&v60 - v19);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v22 = v21;
  v23 = MEMORY[0x28223BE20](v21);
  v71 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v60 - v25;
  v27 = type metadata accessor for ProtoVideoListProps.Item(0);
  v72 = a1;
  v73 = v27;
  v28 = *(v27 + 20);
  v70 = v22;
  v29 = *(v22 + 48);
  sub_251541F0C(a1 + v28, v26, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v30 = a2 + v28;
  v31 = a2;
  sub_251541F0C(v30, &v26[v29], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v32 = *(v12 + 48);
  if (v32(v26, 1, v11) == 1)
  {
    if (v32(&v26[v29], 1, v11) == 1)
    {
      sub_251541E9C(v26, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_14;
    }

LABEL_6:
    v33 = &qword_27F43C180;
    v34 = &qword_27F43BFE8;
    v35 = type metadata accessor for ProtoLocalizedTextProps;
    v36 = v26;
LABEL_35:
    sub_251541DC8(v36, v33, v34, v35);
    goto LABEL_36;
  }

  sub_251541F0C(v26, v20, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v32(&v26[v29], 1, v11) == 1)
  {
    sub_25150EE6C(v20, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_6;
  }

  v37 = v69;
  sub_25150F55C(&v26[v29], v69, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v20 != *v37 || v20[1] != v37[1]) && (sub_25154D520() & 1) == 0 || (v20[2] != v37[2] || v20[3] != v37[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v37, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v20, type metadata accessor for ProtoLocalizedTextProps);
    v44 = &qword_27F43BFE8;
    v45 = type metadata accessor for ProtoLocalizedTextProps;
    v46 = v26;
LABEL_44:
    sub_251541E9C(v46, v44, v45);
    goto LABEL_36;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v38 = sub_25154D240();
  sub_25150EE6C(v37, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v20, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v26, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v38 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_14:
  v39 = v72;
  v40 = *(v73 + 24);
  v41 = v71;
  v42 = *(v70 + 48);
  sub_251541F0C(v72 + v40, v71, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v31 + v40, v41 + v42, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v32(v41, 1, v11) == 1)
  {
    if (v32((v41 + v42), 1, v11) == 1)
    {
      sub_251541E9C(v41, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v43 = v68;
  sub_251541F0C(v41, v68, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v32((v41 + v42), 1, v11) == 1)
  {
    sub_25150EE6C(v43, type metadata accessor for ProtoLocalizedTextProps);
LABEL_19:
    v33 = &qword_27F43C180;
    v34 = &qword_27F43BFE8;
    v35 = type metadata accessor for ProtoLocalizedTextProps;
    v36 = v41;
    goto LABEL_35;
  }

  v47 = v63;
  sub_25150F55C(v41 + v42, v63, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v43 != *v47 || v43[1] != v47[1]) && (sub_25154D520() & 1) == 0 || (v43[2] != v47[2] || v43[3] != v47[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v43, type metadata accessor for ProtoLocalizedTextProps);
    v44 = &qword_27F43BFE8;
    v45 = type metadata accessor for ProtoLocalizedTextProps;
    v46 = v41;
    goto LABEL_44;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = sub_25154D240();
  sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v43, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v41, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v48 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v49 = *(v73 + 28);
  v50 = *(v64 + 48);
  v51 = v67;
  sub_251541F0C(v39 + v49, v67, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  sub_251541F0C(v31 + v49, v51 + v50, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
  v52 = v66;
  v53 = *(v65 + 48);
  if (v53(v51, 1, v66) != 1)
  {
    v55 = v62;
    sub_251541F0C(v51, v62, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    if (v53(v51 + v50, 1, v52) == 1)
    {
      sub_25150EE6C(v55, type metadata accessor for ProtoVideoProps);
      goto LABEL_34;
    }

    v57 = v51 + v50;
    v58 = v61;
    sub_25150F55C(v57, v61, type metadata accessor for ProtoVideoProps);
    if ((*v55 != *v58 || *(v55 + 8) != *(v58 + 8)) && (sub_25154D520() & 1) == 0 || *(v55 + 16) != *(v58 + 16))
    {
      sub_25150EE6C(v58, type metadata accessor for ProtoVideoProps);
      sub_25150EE6C(v55, type metadata accessor for ProtoVideoProps);
      v44 = &qword_27F43C6B0;
      v45 = type metadata accessor for ProtoVideoProps;
      v46 = v51;
      goto LABEL_44;
    }

    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v59 = sub_25154D240();
    sub_25150EE6C(v58, type metadata accessor for ProtoVideoProps);
    sub_25150EE6C(v55, type metadata accessor for ProtoVideoProps);
    sub_251541E9C(v51, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
    if (v59)
    {
      goto LABEL_31;
    }

LABEL_36:
    v54 = 0;
    return v54 & 1;
  }

  if (v53(v51 + v50, 1, v52) != 1)
  {
LABEL_34:
    v33 = &qword_27F43CD88;
    v34 = &qword_27F43C6B0;
    v35 = type metadata accessor for ProtoVideoProps;
    v36 = v51;
    goto LABEL_35;
  }

  sub_251541E9C(v51, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps);
LABEL_31:
  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v54 = sub_25154D240();
  return v54 & 1;
}

uint64_t _s25HealthContentDaemonPlugin19ProtoImageListPropsV4ItemV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v73 = a2;
  v3 = type metadata accessor for ProtoImageProps(0);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = (&v60 - v7);
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v60 - v9;
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v66 = (&v60 - v14);
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, v5);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v62 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v19 = (&v60 - v18);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v21 = v20;
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - v24;
  v71 = type metadata accessor for ProtoImageListProps.Item(0);
  v72 = a1;
  v26 = v71[6];
  v27 = *(v21 + 48);
  sub_251541F0C(a1 + v26, v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v73 + v26, &v25[v27], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v28 = *(v11 + 48);
  if (v28(v25, 1, v10) == 1)
  {
    if (v28(&v25[v27], 1, v10) != 1)
    {
LABEL_7:
      v30 = &qword_27F43C180;
      v31 = &qword_27F43BFE8;
      v32 = type metadata accessor for ProtoLocalizedTextProps;
      v33 = v25;
LABEL_21:
      sub_251541DC8(v33, v30, v31, v32);
      goto LABEL_22;
    }

    sub_251541E9C(v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    sub_251541F0C(v25, v19, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v28(&v25[v27], 1, v10) == 1)
    {
      v29 = v19;
LABEL_6:
      sub_25150EE6C(v29, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_7;
    }

    v34 = v66;
    sub_25150F55C(&v25[v27], v66, type metadata accessor for ProtoLocalizedTextProps);
    if ((*v19 != *v34 || v19[1] != v34[1]) && (sub_25154D520() & 1) == 0 || (v19[2] != v34[2] || v19[3] != v34[3]) && (sub_25154D520() & 1) == 0)
    {
      sub_25150EE6C(v34, type metadata accessor for ProtoLocalizedTextProps);
      v45 = v19;
LABEL_25:
      sub_25150EE6C(v45, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_22;
    }

    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v35 = sub_25154D240();
    sub_25150EE6C(v34, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v19, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if ((v35 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v36 = v72;
  v37 = v71[7];
  v38 = *(v67 + 48);
  v39 = v70;
  sub_251541F0C(v72 + v37, v70, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  sub_251541F0C(v73 + v37, v39 + v38, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v40 = v69;
  v41 = *(v68 + 48);
  if (v41(v39, 1, v69) == 1)
  {
    if (v41(v39 + v38, 1, v40) == 1)
    {
      sub_251541E9C(v39, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      goto LABEL_27;
    }

LABEL_20:
    v30 = &qword_27F43CD90;
    v31 = &qword_27F43C6A8;
    v32 = type metadata accessor for ProtoImageProps;
    v33 = v39;
    goto LABEL_21;
  }

  v42 = v65;
  sub_251541F0C(v39, v65, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if (v41(v39 + v38, 1, v40) == 1)
  {
    sub_25150EE6C(v42, type metadata accessor for ProtoImageProps);
    goto LABEL_20;
  }

  v46 = v64;
  sub_25150F55C(v39 + v38, v64, type metadata accessor for ProtoImageProps);
  v47 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v42, v46);
  sub_25150EE6C(v46, type metadata accessor for ProtoImageProps);
  sub_25150EE6C(v42, type metadata accessor for ProtoImageProps);
  sub_251541E9C(v39, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v36 = v72;
  if ((v47 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_27:
  v48 = *v36;
  v49 = v73;
  v50 = *v73;
  if (*(v73 + 8) == 1)
  {
    if (v50)
    {
      if (v50 == 1)
      {
        if (v48 != 1)
        {
          goto LABEL_22;
        }
      }

      else if (v48 != 2)
      {
        goto LABEL_22;
      }
    }

    else if (v48)
    {
      goto LABEL_22;
    }
  }

  else if (v48 != v50)
  {
    goto LABEL_22;
  }

  v51 = v71[8];
  v52 = *(v21 + 48);
  v53 = v63;
  sub_251541F0C(v36 + v51, v63, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v54 = v49 + v51;
  v25 = v53;
  sub_251541F0C(v54, v53 + v52, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v28(v53, 1, v10) == 1)
  {
    if (v28((v53 + v52), 1, v10) == 1)
    {
      sub_251541E9C(v53, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_49:
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = sub_25154D240();
      return v43 & 1;
    }

    goto LABEL_7;
  }

  v55 = v53;
  v56 = v62;
  sub_251541F0C(v55, v62, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v28(&v25[v52], 1, v10) == 1)
  {
    v29 = v56;
    goto LABEL_6;
  }

  v57 = &v25[v52];
  v58 = v61;
  sub_25150F55C(v57, v61, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v56 != *v58 || v56[1] != v58[1]) && (sub_25154D520() & 1) == 0 || (v56[2] != v58[2] || v56[3] != v58[3]) && (sub_25154D520() & 1) == 0)
  {
    sub_25150EE6C(v58, type metadata accessor for ProtoLocalizedTextProps);
    v45 = v56;
    goto LABEL_25;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v59 = sub_25154D240();
  sub_25150EE6C(v58, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v56, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v25, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v59)
  {
    goto LABEL_49;
  }

LABEL_22:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s25HealthContentDaemonPlugin18ProtoTextListPropsV4ItemV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v48 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v53 = (&v48 - v8);
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v49 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v48 - v12);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v15 = v14;
  v16 = MEMORY[0x28223BE20](v14);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v52 = type metadata accessor for ProtoTextListProps.Item(0);
  v20 = v52[6];
  v50 = v15;
  v21 = *(v15 + 48);
  v54 = a1;
  sub_251541F0C(a1 + v20, v19, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v55 = a2;
  sub_251541F0C(a2 + v20, &v19[v21], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_251541E9C(v19, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_21;
    }

LABEL_6:
    v23 = v19;
LABEL_7:
    sub_251541DC8(v23, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_8;
  }

  sub_251541F0C(v19, v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_6;
  }

  v26 = v53;
  sub_25150F55C(&v19[v21], v53, type metadata accessor for ProtoLocalizedTextProps);
  v27 = *v13 == *v26 && v13[1] == v26[1];
  if (!v27 && (sub_25154D520() & 1) == 0 || (v13[2] == v26[2] ? (v28 = v13[3] == v26[3]) : (v28 = 0), !v28 && (sub_25154D520() & 1) == 0))
  {
    sub_25150EE6C(v26, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
    v38 = v19;
    goto LABEL_31;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = sub_25154D240();
  sub_25150EE6C(v26, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v13, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v19, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  v31 = v54;
  v30 = v55;
  v32 = *v54;
  v33 = *v55;
  if (*(v55 + 8) == 1)
  {
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        if (v32 != 2)
        {
          goto LABEL_8;
        }
      }

      else if (v32 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v33)
    {
      if (v32 != 1)
      {
        goto LABEL_8;
      }
    }

    else if (v32)
    {
      goto LABEL_8;
    }
  }

  else if (v32 != v33)
  {
    goto LABEL_8;
  }

  v34 = v52[7];
  v35 = *(v50 + 48);
  v36 = v4;
  v37 = v51;
  sub_251541F0C(v54 + v34, v51, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v30 + v34, v37 + v35, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v22(v37, 1, v36) != 1)
  {
    v39 = v49;
    sub_251541F0C(v37, v49, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v22((v37 + v35), 1, v36) == 1)
    {
      sub_25150EE6C(v39, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_37;
    }

    v40 = v37 + v35;
    v41 = v48;
    sub_25150F55C(v40, v48, type metadata accessor for ProtoLocalizedTextProps);
    if (*v39 == *v41 && v39[1] == v41[1] || (sub_25154D520()) && (v39[2] == v41[2] && v39[3] == v41[3] || (sub_25154D520()))
    {
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = sub_25154D240();
      sub_25150EE6C(v41, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150EE6C(v39, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v37, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      if ((v42 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }

    sub_25150EE6C(v41, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v39, type metadata accessor for ProtoLocalizedTextProps);
    v38 = v37;
LABEL_31:
    sub_251541E9C(v38, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_8;
  }

  if (v22((v37 + v35), 1, v36) != 1)
  {
LABEL_37:
    v23 = v37;
    goto LABEL_7;
  }

  sub_251541E9C(v37, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_49:
  v43 = v52[8];
  v44 = (v31 + v43);
  v45 = *(v31 + v43 + 8);
  v46 = (v30 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (v47 && (*v44 == *v46 && v45 == v47 || (sub_25154D520() & 1) != 0))
    {
      goto LABEL_56;
    }
  }

  else if (!v47)
  {
LABEL_56:
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v24 = sub_25154D240();
    return v24 & 1;
  }

LABEL_8:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s25HealthContentDaemonPlugin18ProtoCarouselPropsV4TileV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v69 = a2;
  v64 = type metadata accessor for ProtoLocalizedTextProps(0);
  v62 = *(v64 - 8);
  v3 = MEMORY[0x28223BE20](v64);
  v58 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v60 = (&v58 - v5);
  v6 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v59 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v66 = &v58 - v10;
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v63 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v58 - v14;
  v15 = type metadata accessor for ProtoImageProps(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, v6);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v58 - v20);
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - v24;
  v65 = type metadata accessor for ProtoCarouselProps.Tile(0);
  v26 = v65[6];
  v27 = *(v23 + 56);
  v68 = a1;
  sub_251541F0C(a1 + v26, v25, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v28 = v69;
  sub_251541F0C(v69 + v26, &v25[v27], &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v29 = *(v16 + 48);
  if (v29(v25, 1, v15) == 1)
  {
    if (v29(&v25[v27], 1, v15) == 1)
    {
      sub_251541E9C(v25, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      goto LABEL_11;
    }

LABEL_6:
    v30 = &qword_27F43CD90;
    v31 = &qword_27F43C6A8;
    v32 = type metadata accessor for ProtoImageProps;
    v33 = v25;
LABEL_7:
    sub_251541DC8(v33, v30, v31, v32);
    goto LABEL_8;
  }

  sub_251541F0C(v25, v21, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if (v29(&v25[v27], 1, v15) == 1)
  {
    sub_25150EE6C(v21, type metadata accessor for ProtoImageProps);
    goto LABEL_6;
  }

  sub_25150F55C(&v25[v27], v18, type metadata accessor for ProtoImageProps);
  v36 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v21, v18);
  sub_25150EE6C(v18, type metadata accessor for ProtoImageProps);
  sub_25150EE6C(v21, type metadata accessor for ProtoImageProps);
  sub_251541E9C(v25, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((v36 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v37 = v68;
  v38 = *v68;
  v39 = *v28;
  if (*(v28 + 8) == 1)
  {
    v41 = v66;
    v40 = v67;
    if (v39 > 2)
    {
      if (v39 == 3)
      {
        if (v38 != 3)
        {
          goto LABEL_8;
        }
      }

      else if (v39 == 4)
      {
        if (v38 != 4)
        {
          goto LABEL_8;
        }
      }

      else if (v38 != 5)
      {
        goto LABEL_8;
      }
    }

    else if (v39)
    {
      if (v39 == 1)
      {
        if (v38 != 1)
        {
          goto LABEL_8;
        }
      }

      else if (v38 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v41 = v66;
    v40 = v67;
    if (v38 != v39)
    {
      goto LABEL_8;
    }
  }

  v42 = v65[7];
  v43 = *(v63 + 48);
  sub_251541F0C(v68 + v42, v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v28 + v42, v40 + v43, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v44 = *(v62 + 48);
  v45 = v64;
  if (v44(v40, 1, v64) == 1)
  {
    if (v44(v40 + v43, 1, v45) != 1)
    {
LABEL_46:
      v30 = &qword_27F43C180;
      v31 = &qword_27F43BFE8;
      v32 = type metadata accessor for ProtoLocalizedTextProps;
      v33 = v40;
      goto LABEL_7;
    }

    sub_251541E9C(v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  else
  {
    sub_251541F0C(v40, v41, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v44(v40 + v43, 1, v45) == 1)
    {
LABEL_45:
      sub_25150EE6C(v41, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_46;
    }

    v46 = v40 + v43;
    v47 = v60;
    sub_25150F55C(v46, v60, type metadata accessor for ProtoLocalizedTextProps);
    if ((*v41 != *v47 || v41[1] != v47[1]) && (sub_25154D520() & 1) == 0 || (v41[2] != v47[2] || v41[3] != v47[3]) && (sub_25154D520() & 1) == 0)
    {
      v55 = v47;
LABEL_57:
      sub_25150EE6C(v55, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150EE6C(v41, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_8;
    }

    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v48 = sub_25154D240();
    sub_25150EE6C(v47, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v41, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if ((v48 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v49 = v65[8];
  v50 = *(v63 + 48);
  v51 = v61;
  sub_251541F0C(v37 + v49, v61, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v52 = v28 + v49;
  v40 = v51;
  sub_251541F0C(v52, v51 + v50, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v53 = v64;
  if (v44(v51, 1, v64) == 1)
  {
    if (v44(v51 + v50, 1, v53) == 1)
    {
      sub_251541E9C(v51, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_55:
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_25154D240();
      return v34 & 1;
    }

    goto LABEL_46;
  }

  v54 = v51;
  v41 = v59;
  sub_251541F0C(v54, v59, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v44(v40 + v50, 1, v53) == 1)
  {
    goto LABEL_45;
  }

  v56 = v58;
  sub_25150F55C(v40 + v50, v58, type metadata accessor for ProtoLocalizedTextProps);
  if ((*v41 != *v56 || v41[1] != v56[1]) && (sub_25154D520() & 1) == 0 || (v41[2] != v56[2] || v41[3] != v56[3]) && (sub_25154D520() & 1) == 0)
  {
    v55 = v56;
    goto LABEL_57;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v57 = sub_25154D240();
  sub_25150EE6C(v56, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v41, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v40, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v57)
  {
    goto LABEL_55;
  }

LABEL_8:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s25HealthContentDaemonPlugin16ProtoSwooshPropsV4TileV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for ProtoLocalizedTextProps(0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x277D83D88];
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = (&v43 - v7);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v43 - v9;
  v10 = type metadata accessor for ProtoImageProps(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v43 - v15);
  sub_251541E24(0, &qword_27F43CD90, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v50 = type metadata accessor for ProtoSwooshProps.Tile(0);
  v51 = a1;
  v21 = *(v50 + 24);
  v22 = *(v18 + 56);
  sub_251541F0C(a1 + v21, v20, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v23 = v52;
  sub_251541F0C(v52 + v21, &v20[v22], &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  v24 = *(v11 + 48);
  if (v24(v20, 1, v10) == 1)
  {
    if (v24(&v20[v22], 1, v10) == 1)
    {
      sub_251541E9C(v20, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
      goto LABEL_11;
    }

LABEL_6:
    v25 = &qword_27F43CD90;
    v26 = &qword_27F43C6A8;
    v27 = type metadata accessor for ProtoImageProps;
    v28 = v20;
LABEL_7:
    sub_251541DC8(v28, v25, v26, v27);
    goto LABEL_8;
  }

  sub_251541F0C(v20, v16, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if (v24(&v20[v22], 1, v10) == 1)
  {
    sub_25150EE6C(v16, type metadata accessor for ProtoImageProps);
    goto LABEL_6;
  }

  sub_25150F55C(&v20[v22], v13, type metadata accessor for ProtoImageProps);
  v31 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v16, v13);
  sub_25150EE6C(v13, type metadata accessor for ProtoImageProps);
  sub_25150EE6C(v16, type metadata accessor for ProtoImageProps);
  sub_251541E9C(v20, &qword_27F43C6A8, type metadata accessor for ProtoImageProps);
  if ((v31 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v32 = *v51;
  v33 = *v23;
  if (*(v23 + 8) == 1)
  {
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        if (v32 != 3)
        {
          goto LABEL_8;
        }
      }

      else if (v33 == 4)
      {
        if (v32 != 4)
        {
          goto LABEL_8;
        }
      }

      else if (v32 != 5)
      {
        goto LABEL_8;
      }
    }

    else if (v33)
    {
      if (v33 == 1)
      {
        if (v32 != 1)
        {
          goto LABEL_8;
        }
      }

      else if (v32 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v32)
    {
      goto LABEL_8;
    }
  }

  else if (v32 != v33)
  {
    goto LABEL_8;
  }

  v34 = v49;
  v35 = *(v50 + 28);
  v36 = *(v46 + 48);
  sub_251541F0C(v51 + v35, v49, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(v23 + v35, v34 + v36, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v37 = v48;
  v38 = *(v47 + 48);
  if (v38(v34, 1, v48) == 1)
  {
    if (v38(v34 + v36, 1, v37) == 1)
    {
      sub_251541E9C(v34, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_35:
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v29 = sub_25154D240();
      return v29 & 1;
    }

    goto LABEL_27;
  }

  v39 = v45;
  sub_251541F0C(v34, v45, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v38(v34 + v36, 1, v37) == 1)
  {
    sub_25150EE6C(v39, type metadata accessor for ProtoLocalizedTextProps);
LABEL_27:
    v25 = &qword_27F43C180;
    v26 = &qword_27F43BFE8;
    v27 = type metadata accessor for ProtoLocalizedTextProps;
    v28 = v34;
    goto LABEL_7;
  }

  v40 = v34 + v36;
  v41 = v44;
  sub_25150F55C(v40, v44, type metadata accessor for ProtoLocalizedTextProps);
  if (*v39 == *v41 && v39[1] == v41[1] || (sub_25154D520()) && (v39[2] == v41[2] && v39[3] == v41[3] || (sub_25154D520()))
  {
    sub_25154CFE0();
    sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v42 = sub_25154D240();
    sub_25150EE6C(v41, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v39, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v34, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v42)
    {
      goto LABEL_35;
    }
  }

  else
  {
    sub_25150EE6C(v41, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v39, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v34, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

LABEL_8:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s25HealthContentDaemonPlugin15ProtoTablePropsV12ColumnHeaderV2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v23 - v8);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for ProtoTableProps.ColumnHeader(0);
  v14 = *(v24 + 24);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_251541F0C(a1 + v14, v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(a2 + v14, &v13[v15], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_251541E9C(v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  sub_251541F0C(v13, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_25150EE6C(v9, type metadata accessor for ProtoLocalizedTextProps);
LABEL_6:
    sub_251541DC8(v13, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_21;
  }

  v17 = v25;
  sub_25150F55C(&v13[v15], v25, type metadata accessor for ProtoLocalizedTextProps);
  v18 = *v9 == *v17 && v9[1] == v17[1];
  if (!v18 && (sub_25154D520() & 1) == 0 || (v9[2] == v17[2] ? (v19 = v9[3] == v17[3]) : (v19 = 0), !v19 && (sub_25154D520() & 1) == 0))
  {
    sub_25150EE6C(v17, type metadata accessor for ProtoLocalizedTextProps);
    sub_25150EE6C(v9, type metadata accessor for ProtoLocalizedTextProps);
    sub_251541E9C(v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_21;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_25154D240();
  sub_25150EE6C(v17, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150EE6C(v9, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541E9C(v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v21 = 0;
    return v21 & 1;
  }

LABEL_18:
  if (*v26 != *a2)
  {
    goto LABEL_21;
  }

  sub_25154CFE0();
  sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_25154D240();
  return v21 & 1;
}

uint64_t _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_25154D520() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v5 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v7 = *(type metadata accessor for ProtoImageProps(0) + 28);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 9);
  v10 = a2 + v7;
  v11 = *(a2 + v7 + 9);
  if (v9)
  {
    if (v11)
    {
LABEL_14:
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_25154D240() & 1;
    }
  }

  else if ((v11 & 1) == 0)
  {
    v13 = *v8;
    v14 = *v10;
    if (*(v10 + 8))
    {
      if (v14 > 2)
      {
        if (v14 == 3)
        {
          if (v13 == 3)
          {
            goto LABEL_14;
          }
        }

        else if (v14 == 4)
        {
          if (v13 == 4)
          {
            goto LABEL_14;
          }
        }

        else if (v13 == 5)
        {
          goto LABEL_14;
        }
      }

      else if (v14)
      {
        if (v14 == 1)
        {
          if (v13 == 1)
          {
            goto LABEL_14;
          }
        }

        else if (v13 == 2)
        {
          goto LABEL_14;
        }
      }

      else if (!v13)
      {
        goto LABEL_14;
      }
    }

    else if (v13 == v14)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t _s25HealthContentDaemonPlugin14ProtoTextPropsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v29 - v8);
  sub_251541E24(0, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v30 = type metadata accessor for ProtoTextProps(0);
  v14 = *(v30 + 32);
  v15 = *(v11 + 56);
  v32 = a1;
  sub_251541F0C(a1 + v14, v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_251541F0C(a2 + v14, &v13[v15], &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_251541F0C(v13, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v31;
      sub_25150F55C(&v13[v15], v31, type metadata accessor for ProtoLocalizedTextProps);
      v20 = *v9 == *v19 && v9[1] == v19[1];
      if (!v20 && (sub_25154D520() & 1) == 0 || (v9[2] == v19[2] ? (v21 = v9[3] == v19[3]) : (v21 = 0), !v21 && (sub_25154D520() & 1) == 0))
      {
        sub_25150EE6C(v19, type metadata accessor for ProtoLocalizedTextProps);
        sub_25150EE6C(v9, type metadata accessor for ProtoLocalizedTextProps);
        sub_251541E9C(v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
        goto LABEL_7;
      }

      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_25154D240();
      sub_25150EE6C(v19, type metadata accessor for ProtoLocalizedTextProps);
      sub_25150EE6C(v9, type metadata accessor for ProtoLocalizedTextProps);
      sub_251541E9C(v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    sub_25150EE6C(v9, type metadata accessor for ProtoLocalizedTextProps);
LABEL_6:
    sub_251541DC8(v13, &qword_27F43C180, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251541E9C(v13, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
LABEL_20:
  v23 = *v32;
  v24 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v24)
    {
      case 1:
        if (v23 == 1)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 2:
        if (v23 == 2)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 3:
        if (v23 == 3)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 4:
        if (v23 == 4)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 5:
        if (v23 == 5)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 6:
        if (v23 == 6)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 7:
        if (v23 == 7)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 8:
        if (v23 == 8)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 9:
        if (v23 == 9)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 10:
        if (v23 == 10)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 11:
        if (v23 == 11)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      case 12:
        if (v23 == 12)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
      default:
        if (!v23)
        {
          goto LABEL_25;
        }

        goto LABEL_7;
    }
  }

  if (v23 != v24)
  {
    goto LABEL_7;
  }

LABEL_25:
  v25 = v32[2];
  v26 = a2[2];
  if (*(a2 + 24) == 1)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        if (v25 != 1)
        {
          goto LABEL_7;
        }
      }

      else if (v25 != 2)
      {
        goto LABEL_7;
      }
    }

    else if (v25)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  v27 = v32[4];
  v28 = a2[4];
  if (*(a2 + 40) == 1)
  {
    if (v28)
    {
      if (v28 == 1)
      {
        if (v27 == 1)
        {
          goto LABEL_46;
        }
      }

      else if (v27 == 2)
      {
LABEL_46:
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v17 = sub_25154D240();
        return v17 & 1;
      }
    }

    else if (!v27)
    {
      goto LABEL_46;
    }
  }

  else if (v27 == v28)
  {
    goto LABEL_46;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s25HealthContentDaemonPlugin14ProtoComponentV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  sub_251541E24(0, &qword_27F43C1D8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  if (*a1 != *a2 && (sub_25154D520() & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = a1[2];
  v16 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v16 > 5)
    {
      if (v16 > 8)
      {
        if (v16 == 9)
        {
          if (v15 != 9)
          {
            goto LABEL_22;
          }
        }

        else if (v16 == 10)
        {
          if (v15 != 10)
          {
            goto LABEL_22;
          }
        }

        else if (v15 != 11)
        {
          goto LABEL_22;
        }
      }

      else if (v16 == 6)
      {
        if (v15 != 6)
        {
          goto LABEL_22;
        }
      }

      else if (v16 == 7)
      {
        if (v15 != 7)
        {
          goto LABEL_22;
        }
      }

      else if (v15 != 8)
      {
        goto LABEL_22;
      }
    }

    else if (v16 > 2)
    {
      if (v16 == 3)
      {
        if (v15 != 3)
        {
          goto LABEL_22;
        }
      }

      else if (v16 == 4)
      {
        if (v15 != 4)
        {
          goto LABEL_22;
        }
      }

      else if (v15 != 5)
      {
        goto LABEL_22;
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
        if (v15 != 1)
        {
          goto LABEL_22;
        }
      }

      else if (v15 != 2)
      {
        goto LABEL_22;
      }
    }

    else if (v15)
    {
      goto LABEL_22;
    }
  }

  else if (v15 != v16)
  {
    goto LABEL_22;
  }

  v24 = v7;
  v25 = type metadata accessor for ProtoComponent(0);
  v17 = *(v25 + 24);
  v18 = *(v12 + 48);
  sub_251541F0C(a1 + v17, v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_251541F0C(a2 + v17, &v14[v18], &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) == 1)
  {
    if (v19(&v14[v18], 1, v4) == 1)
    {
      sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_33:
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_25154D240();
      return v20 & 1;
    }

    goto LABEL_21;
  }

  sub_251541F0C(v14, v10, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  if (v19(&v14[v18], 1, v4) == 1)
  {
    sub_25150EE6C(v10, type metadata accessor for ProtoComponent.OneOf_Props);
LABEL_21:
    sub_251541DC8(v14, &qword_27F43C1D8, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
    goto LABEL_22;
  }

  v22 = v24;
  sub_25150F55C(&v14[v18], v24, type metadata accessor for ProtoComponent.OneOf_Props);
  v23 = _s25HealthContentDaemonPlugin14ProtoComponentV11OneOf_PropsO2eeoiySbAE_AEtFZ_0(v10, v22);
  sub_25150EE6C(v22, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_25150EE6C(v10, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_251541E9C(v14, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props);
  if (v23)
  {
    goto LABEL_33;
  }

LABEL_22:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s25HealthContentDaemonPlugin14ProtoComponentV11OneOf_PropsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v78 = type metadata accessor for ProtoTableProps(0);
  MEMORY[0x28223BE20](v78);
  v96 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ProtoVideoListProps(0);
  MEMORY[0x28223BE20](v84);
  v95 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ProtoImageListProps(0);
  MEMORY[0x28223BE20](v83);
  v94 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ProtoTextListProps(0);
  MEMORY[0x28223BE20](v82);
  v93 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProtoTextProps(0);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for ProtoCarouselProps(0);
  MEMORY[0x28223BE20](v81);
  v92 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ProtoSwooshProps(0);
  MEMORY[0x28223BE20](v80);
  v90 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for ProtoVideoProps(0);
  MEMORY[0x28223BE20](v79);
  v91 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoImageProps(0);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoFullMainHeaderProps(0);
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ProtoMainHeaderProps(0);
  MEMORY[0x28223BE20](v16 - 8);
  v86 = (&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ProtoEmptyProps(0);
  MEMORY[0x28223BE20](v18 - 8);
  v85 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProtoComponent.OneOf_Props(0);
  v21 = MEMORY[0x28223BE20](v20);
  v103 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v102 = &v78 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v78 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v100 = &v78 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v78 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v98 = &v78 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v97 = &v78 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v99 = &v78 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = (&v78 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = (&v78 - v42);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = (&v78 - v45);
  MEMORY[0x28223BE20](v44);
  v48 = &v78 - v47;
  sub_251541F8C(0);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v52 = &v78 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v50 + 56);
  sub_251541FF0(a1, v52, type metadata accessor for ProtoComponent.OneOf_Props);
  sub_251541FF0(v104, &v52[v53], type metadata accessor for ProtoComponent.OneOf_Props);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_251541FF0(v52, v46, type metadata accessor for ProtoComponent.OneOf_Props);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v55 = v86;
            sub_25150F55C(&v52[v53], v86, type metadata accessor for ProtoMainHeaderProps);
            v56 = _s25HealthContentDaemonPlugin20ProtoMainHeaderPropsV2eeoiySbAC_ACtFZ_0(v46, v55);
            v57 = type metadata accessor for ProtoMainHeaderProps;
            sub_25150EE6C(v55, type metadata accessor for ProtoMainHeaderProps);
            v58 = v46;
LABEL_72:
            sub_25150EE6C(v58, v57);
            goto LABEL_79;
          }

          v69 = type metadata accessor for ProtoMainHeaderProps;
          v70 = v46;
        }

        else
        {
          sub_251541FF0(v52, v43, type metadata accessor for ProtoComponent.OneOf_Props);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v64 = v87;
            sub_25150F55C(&v52[v53], v87, type metadata accessor for ProtoFullMainHeaderProps);
            v56 = _s25HealthContentDaemonPlugin24ProtoFullMainHeaderPropsV2eeoiySbAC_ACtFZ_0(v43, v64);
            v57 = type metadata accessor for ProtoFullMainHeaderProps;
            sub_25150EE6C(v64, type metadata accessor for ProtoFullMainHeaderProps);
            v58 = v43;
            goto LABEL_72;
          }

          v69 = type metadata accessor for ProtoFullMainHeaderProps;
          v70 = v43;
        }

        goto LABEL_68;
      }

      sub_251541FF0(v52, v48, type metadata accessor for ProtoComponent.OneOf_Props);
      if (!swift_getEnumCaseMultiPayload())
      {
        v73 = v85;
        sub_25150F55C(&v52[v53], v85, type metadata accessor for ProtoEmptyProps);
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v56 = sub_25154D240();
        v57 = type metadata accessor for ProtoEmptyProps;
        sub_25150EE6C(v73, type metadata accessor for ProtoEmptyProps);
        v58 = v48;
        goto LABEL_72;
      }

      v62 = type metadata accessor for ProtoEmptyProps;
LABEL_67:
      v69 = v62;
      v70 = v48;
      goto LABEL_68;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_251541FF0(v52, v40, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v63 = v88;
        sub_25150F55C(&v52[v53], v88, type metadata accessor for ProtoImageProps);
        v56 = _s25HealthContentDaemonPlugin15ProtoImagePropsV2eeoiySbAC_ACtFZ_0(v40, v63);
        v57 = type metadata accessor for ProtoImageProps;
        sub_25150EE6C(v63, type metadata accessor for ProtoImageProps);
        v58 = v40;
        goto LABEL_72;
      }

      v69 = type metadata accessor for ProtoImageProps;
      v70 = v40;
      goto LABEL_68;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v48 = v97;
      sub_251541FF0(v52, v97, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v62 = type metadata accessor for ProtoSwooshProps;
        goto LABEL_67;
      }

      v65 = v90;
      sub_25150F55C(&v52[v53], v90, type metadata accessor for ProtoSwooshProps);
      if (sub_2515051C8(*v48, *v65))
      {
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_25154D240())
        {
          sub_25150EE6C(v65, type metadata accessor for ProtoSwooshProps);
          v66 = v48;
          v67 = type metadata accessor for ProtoSwooshProps;
LABEL_55:
          sub_25150EE6C(v66, v67);
          v56 = 1;
LABEL_79:
          v71 = type metadata accessor for ProtoComponent.OneOf_Props;
          goto LABEL_80;
        }
      }

      sub_25150EE6C(v65, type metadata accessor for ProtoSwooshProps);
      v75 = v48;
      v76 = type metadata accessor for ProtoSwooshProps;
LABEL_78:
      sub_25150EE6C(v75, v76);
      v56 = 0;
      goto LABEL_79;
    }

    v48 = v99;
    sub_251541FF0(v52, v99, type metadata accessor for ProtoComponent.OneOf_Props);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v62 = type metadata accessor for ProtoVideoProps;
      goto LABEL_67;
    }

    v60 = v91;
    sub_25150F55C(&v52[v53], v91, type metadata accessor for ProtoVideoProps);
    if (*v48 == *v60 && *(v48 + 1) == *(v60 + 8) || (sub_25154D520()) && v48[16] == *(v60 + 16))
    {
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_25154D240())
      {
        v61 = type metadata accessor for ProtoVideoProps;
LABEL_54:
        v68 = v61;
        sub_25150EE6C(v60, v61);
        v66 = v48;
        v67 = v68;
        goto LABEL_55;
      }
    }

    v72 = type metadata accessor for ProtoVideoProps;
LABEL_77:
    v74 = v72;
    sub_25150EE6C(v60, v72);
    v75 = v48;
    v76 = v74;
    goto LABEL_78;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v48 = v101;
      sub_251541FF0(v52, v101, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v62 = type metadata accessor for ProtoImageListProps;
        goto LABEL_67;
      }

      v60 = v94;
      sub_25150F55C(&v52[v53], v94, type metadata accessor for ProtoImageListProps);
      if (sub_2515050CC(*v48, *v60))
      {
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_25154D240())
        {
          v61 = type metadata accessor for ProtoImageListProps;
          goto LABEL_54;
        }
      }

      v72 = type metadata accessor for ProtoImageListProps;
    }

    else if (EnumCaseMultiPayload == 10)
    {
      v48 = v102;
      sub_251541FF0(v52, v102, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v62 = type metadata accessor for ProtoVideoListProps;
        goto LABEL_67;
      }

      v60 = v95;
      sub_25150F55C(&v52[v53], v95, type metadata accessor for ProtoVideoListProps);
      if (sub_251505078(*v48, *v60))
      {
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_25154D240())
        {
          v61 = type metadata accessor for ProtoVideoListProps;
          goto LABEL_54;
        }
      }

      v72 = type metadata accessor for ProtoVideoListProps;
    }

    else
    {
      v48 = v103;
      sub_251541FF0(v52, v103, type metadata accessor for ProtoComponent.OneOf_Props);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v62 = type metadata accessor for ProtoTableProps;
        goto LABEL_67;
      }

      v60 = v96;
      sub_25150F55C(&v52[v53], v96, type metadata accessor for ProtoTableProps);
      if (sub_2515053BC(*v48, *v60) & 1) != 0 && (sub_251505A74(*(v48 + 1), *(v60 + 8)))
      {
        sub_25154CFE0();
        sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_25154D240())
        {
          v61 = type metadata accessor for ProtoTableProps;
          goto LABEL_54;
        }
      }

      v72 = type metadata accessor for ProtoTableProps;
    }

    goto LABEL_77;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v48 = v98;
    sub_251541FF0(v52, v98, type metadata accessor for ProtoComponent.OneOf_Props);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      v62 = type metadata accessor for ProtoCarouselProps;
      goto LABEL_67;
    }

    v60 = v92;
    sub_25150F55C(&v52[v53], v92, type metadata accessor for ProtoCarouselProps);
    if (sub_251505174(*v48, *v60))
    {
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_25154D240())
      {
        v61 = type metadata accessor for ProtoCarouselProps;
        goto LABEL_54;
      }
    }

    v72 = type metadata accessor for ProtoCarouselProps;
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v48 = v100;
    sub_251541FF0(v52, v100, type metadata accessor for ProtoComponent.OneOf_Props);
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      v62 = type metadata accessor for ProtoTextListProps;
      goto LABEL_67;
    }

    v60 = v93;
    sub_25150F55C(&v52[v53], v93, type metadata accessor for ProtoTextListProps);
    if (sub_251505120(*v48, *v60))
    {
      sub_25154CFE0();
      sub_25153DB1C(&qword_27F43C008, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_25154D240())
      {
        v61 = type metadata accessor for ProtoTextListProps;
        goto LABEL_54;
      }
    }

    v72 = type metadata accessor for ProtoTextListProps;
    goto LABEL_77;
  }

  sub_251541FF0(v52, v31, type metadata accessor for ProtoComponent.OneOf_Props);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v59 = v89;
    sub_25150F55C(&v52[v53], v89, type metadata accessor for ProtoTextProps);
    v56 = _s25HealthContentDaemonPlugin14ProtoTextPropsV2eeoiySbAC_ACtFZ_0(v31, v59);
    v57 = type metadata accessor for ProtoTextProps;
    sub_25150EE6C(v59, type metadata accessor for ProtoTextProps);
    v58 = v31;
    goto LABEL_72;
  }

  v69 = type metadata accessor for ProtoTextProps;
  v70 = v31;
LABEL_68:
  sub_25150EE6C(v70, v69);
  v56 = 0;
  v71 = sub_251541F8C;
LABEL_80:
  sub_25150EE6C(v52, v71);
  return v56 & 1;
}

void sub_25153D964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25153DAC8()
{
  result = qword_27F43C6B8;
  if (!qword_27F43C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C6B8);
  }

  return result;
}

uint64_t sub_25153DB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25153DB64()
{
  result = qword_27F43C6D0;
  if (!qword_27F43C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C6D0);
  }

  return result;
}

unint64_t sub_25153DBB8()
{
  result = qword_27F43C6D8;
  if (!qword_27F43C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C6D8);
  }

  return result;
}

unint64_t sub_25153DC0C()
{
  result = qword_27F43C6E8;
  if (!qword_27F43C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C6E8);
  }

  return result;
}

unint64_t sub_25153DC60()
{
  result = qword_27F43C700;
  if (!qword_27F43C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C700);
  }

  return result;
}

unint64_t sub_25153DCB4()
{
  result = qword_27F43C710;
  if (!qword_27F43C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C710);
  }

  return result;
}

unint64_t sub_25153DD08()
{
  result = qword_27F43C758;
  if (!qword_27F43C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C758);
  }

  return result;
}

unint64_t sub_25153DD5C()
{
  result = qword_27F43C760;
  if (!qword_27F43C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C760);
  }

  return result;
}

unint64_t sub_25153DDB0()
{
  result = qword_27F43C780;
  if (!qword_27F43C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C780);
  }

  return result;
}

unint64_t sub_25153DE04()
{
  result = qword_27F43C7A0;
  if (!qword_27F43C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C7A0);
  }

  return result;
}

unint64_t sub_25153DE5C()
{
  result = qword_27F43C7F0;
  if (!qword_27F43C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C7F0);
  }

  return result;
}

unint64_t sub_25153DEB4()
{
  result = qword_27F43C7F8;
  if (!qword_27F43C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C7F8);
  }

  return result;
}

uint64_t sub_25153DF38(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2515411C0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25153DFA0()
{
  result = qword_27F43C810;
  if (!qword_27F43C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C810);
  }

  return result;
}

unint64_t sub_25153DFF8()
{
  result = qword_27F43C818;
  if (!qword_27F43C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C818);
  }

  return result;
}

unint64_t sub_25153E050()
{
  result = qword_27F43C820;
  if (!qword_27F43C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C820);
  }

  return result;
}

unint64_t sub_25153E0D8()
{
  result = qword_27F43C838;
  if (!qword_27F43C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C838);
  }

  return result;
}

unint64_t sub_25153E130()
{
  result = qword_27F43C840;
  if (!qword_27F43C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C840);
  }

  return result;
}

unint64_t sub_25153E188()
{
  result = qword_27F43C848;
  if (!qword_27F43C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C848);
  }

  return result;
}

unint64_t sub_25153E210()
{
  result = qword_27F43C860;
  if (!qword_27F43C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C860);
  }

  return result;
}

unint64_t sub_25153E268()
{
  result = qword_27F43C868;
  if (!qword_27F43C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C868);
  }

  return result;
}

unint64_t sub_25153E2C0()
{
  result = qword_27F43C870;
  if (!qword_27F43C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C870);
  }

  return result;
}

unint64_t sub_25153E348()
{
  result = qword_27F43C888;
  if (!qword_27F43C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C888);
  }

  return result;
}

unint64_t sub_25153E3A0()
{
  result = qword_27F43C890;
  if (!qword_27F43C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C890);
  }

  return result;
}

unint64_t sub_25153E3F8()
{
  result = qword_27F43C898;
  if (!qword_27F43C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C898);
  }

  return result;
}

unint64_t sub_25153E480()
{
  result = qword_27F43C8B0;
  if (!qword_27F43C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8B0);
  }

  return result;
}

unint64_t sub_25153E4D8()
{
  result = qword_27F43C8B8;
  if (!qword_27F43C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8B8);
  }

  return result;
}

unint64_t sub_25153E530()
{
  result = qword_27F43C8C0;
  if (!qword_27F43C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8C0);
  }

  return result;
}

unint64_t sub_25153E5B8()
{
  result = qword_27F43C8D8;
  if (!qword_27F43C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8D8);
  }

  return result;
}

unint64_t sub_25153E610()
{
  result = qword_27F43C8E0;
  if (!qword_27F43C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8E0);
  }

  return result;
}

unint64_t sub_25153E668()
{
  result = qword_27F43C8E8;
  if (!qword_27F43C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C8E8);
  }

  return result;
}

unint64_t sub_25153E6F0()
{
  result = qword_27F43C900;
  if (!qword_27F43C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C900);
  }

  return result;
}

unint64_t sub_25153E748()
{
  result = qword_27F43C908;
  if (!qword_27F43C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C908);
  }

  return result;
}

unint64_t sub_25153E7A0()
{
  result = qword_27F43C910;
  if (!qword_27F43C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C910);
  }

  return result;
}

unint64_t sub_25153E828()
{
  result = qword_27F43C928;
  if (!qword_27F43C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C928);
  }

  return result;
}

unint64_t sub_25153E880()
{
  result = qword_27F43C930;
  if (!qword_27F43C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C930);
  }

  return result;
}

unint64_t sub_25153E8D8()
{
  result = qword_27F43C938;
  if (!qword_27F43C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C938);
  }

  return result;
}

unint64_t sub_25153E960()
{
  result = qword_27F43C950;
  if (!qword_27F43C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C950);
  }

  return result;
}

unint64_t sub_25153E9B8()
{
  result = qword_27F43C958;
  if (!qword_27F43C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C958);
  }

  return result;
}

unint64_t sub_25153EA10()
{
  result = qword_27F43C960;
  if (!qword_27F43C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C960);
  }

  return result;
}

unint64_t sub_25153EA98()
{
  result = qword_27F43C978;
  if (!qword_27F43C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43C978);
  }

  return result;
}

void sub_2515402B4(uint64_t a1)
{
  sub_25153D964(319, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25154CFE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2515403D0(uint64_t a1)
{
  result = type metadata accessor for ProtoEmptyProps(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ProtoMainHeaderProps(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ProtoFullMainHeaderProps(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ProtoImageProps(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ProtoVideoProps(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ProtoSwooshProps(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ProtoCarouselProps(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ProtoTextProps(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ProtoTextListProps(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for ProtoImageListProps(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for ProtoVideoListProps(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for ProtoTableProps(319);
                        if (v13 <= 0x3F)
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

  return result;
}

uint64_t sub_251540544(uint64_t a1)
{
  result = sub_25154CFE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2515405D8(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25154077C(uint64_t a1)
{
  sub_25153D964(319, &qword_27F43CB80, type metadata accessor for ProtoFullMainHeaderProps.TextItem, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25154CFE0();
    if (v2 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251540968(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_2515411C0(319, &qword_27F43CBA8, &type metadata for ProtoColorRole, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25154CFE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_167Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25154CFE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251540BB0(uint64_t a1)
{
  result = sub_25154CFE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251540CA4(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251540E20(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251540F54(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}