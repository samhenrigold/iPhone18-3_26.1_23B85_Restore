uint64_t sub_2145D5EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2145D5F28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 44);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2145D5FC0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 44);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

void (*sub_2145D606C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145D6108(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void (*sub_2145D61A0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145D623C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void (*sub_2145D6360(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0) + 24);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145D6590(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0) + 24);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145D665C()
{
  if (*v0)
  {
    return 0x5448474952;
  }

  else
  {
    return 1413891404;
  }
}

uint64_t sub_2145D668C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5448474952;
  }

  else
  {
    v3 = 1413891404;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x5448474952;
  }

  else
  {
    v5 = 1413891404;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2145D6728()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145D67A0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145D6804(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D6884(uint64_t *a1@<X8>)
{
  v2 = 1413891404;
  if (*v1)
  {
    v2 = 0x5448474952;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2145D6A48@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = a1 + *(a2(0) + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v9 + *(v10 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) != 1)
  {
    return sub_214032588(v8, a3);
  }

  sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145D6BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  sub_213FB2E54(a1, &v14 - v11, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v12, v10, &unk_27C9131A0, &unk_2146E9D10);
  a5(0);
  sub_21402F5FC(v10);
  return sub_213FB2DF4(v12, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145D6CF8(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_213FB2E54(a1, &v8 - v5, &unk_27C9131A0, &unk_2146E9D10);
  a2(0);
  sub_21402F5FC(v6);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145D6DC4(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0) + 28);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145D6FF4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0) + 28);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145D7428()
{
  if (*v0)
  {
    return 0x575F4D554944454DLL;
  }

  else
  {
    return 0x49575F4C4C414D53;
  }
}

uint64_t sub_2145D7474(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x575F4D554944454DLL;
  }

  else
  {
    v3 = 0x49575F4C4C414D53;
  }

  if (v2)
  {
    v4 = 0xEB00000000485444;
  }

  else
  {
    v4 = 0xEC00000048544449;
  }

  if (*a2)
  {
    v5 = 0x575F4D554944454DLL;
  }

  else
  {
    v5 = 0x49575F4C4C414D53;
  }

  if (*a2)
  {
    v6 = 0xEC00000048544449;
  }

  else
  {
    v6 = 0xEB00000000485444;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2145D752C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145D75C0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2145D7640(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D76DC(uint64_t *a1@<X8>)
{
  v2 = 0x49575F4C4C414D53;
  if (*v1)
  {
    v2 = 0x575F4D554944454DLL;
  }

  v3 = 0xEB00000000485444;
  if (*v1)
  {
    v3 = 0xEC00000048544449;
  }

  *a1 = v2;
  a1[1] = v3;
}

void (*sub_2145D7854(void *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0) + 28);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

void (*sub_2145D7A84(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0) + 28);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145D7B7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = *(v4 + 32);
  return sub_21431C5DC(v5, v6, v7, v8);
}

__n128 sub_2145D7C08(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a1 + 32);
  v5 = v2 + *(a2(0) + 20);
  sub_21431E10C(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_2145D7CC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = *(v4 + 32);
  return sub_21431C5DC(v5, v6, v7, v8);
}

__n128 sub_2145D7D30(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a1 + 32);
  v5 = v2 + *(a2(0) + 24);
  sub_21431E10C(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v4;
  return result;
}

double sub_2145D7DEC(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

void sub_2145D7E40(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);

  *(v2 + v4) = a1;
}

double sub_2145D7F50()
{
  type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);

  return result;
}

void sub_2145D7FA4(uint64_t a1)
{
  v3 = *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_2145D8040(uint64_t a1)
{
  v2 = sub_2145D86B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D807C(uint64_t a1)
{
  v2 = sub_2145D86B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D80B8(uint64_t a1)
{
  v2 = sub_2145D865C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D80F4(uint64_t a1)
{
  v2 = sub_2145D865C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D8130()
{
  v1 = 0x343665736162;
  if (*v0 != 1)
  {
    v1 = 0x5255343665736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 946238581;
  }
}

uint64_t sub_2145D8184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2145DEB4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2145D81AC(uint64_t a1)
{
  v2 = sub_2145D8608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D81E8(uint64_t a1)
{
  v2 = sub_2145D8608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D8224(uint64_t a1)
{
  v2 = sub_2145D8704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D8260(uint64_t a1)
{
  v2 = sub_2145D8704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D829C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FF8, &qword_214763EA8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916000, &qword_214763EB0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916008, &qword_214763EB8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916010, &qword_214763EC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D8608();
  sub_2146DAA28();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_2145D86B0();
      v9 = v21;
      sub_2146DA288();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2145D865C();
      v9 = v24;
      sub_2146DA288();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2145D8704();
    sub_2146DA288();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2145D8608()
{
  result = qword_27C916018;
  if (!qword_27C916018)
  {
    result = swift_getWitnessTable(aL_3, &type metadata for Chatbot.RootMessage.Context.DataEncoding.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916018);
  }

  return result;
}

unint64_t sub_2145D865C()
{
  result = qword_27C916020;
  if (!qword_27C916020)
  {
    result = swift_getWitnessTable(aUl_0, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Base64URLCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916020);
  }

  return result;
}

unint64_t sub_2145D86B0()
{
  result = qword_27C916028;
  if (!qword_27C916028)
  {
    result = swift_getWitnessTable(byte_214766964, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Base64CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916028);
  }

  return result;
}

unint64_t sub_2145D8704()
{
  result = qword_27C916030;
  if (!qword_27C916030)
  {
    result = swift_getWitnessTable(byte_214766914, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Utf8CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916030);
  }

  return result;
}

uint64_t sub_2145D8784()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2145D87CC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916038, &qword_214763EC8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916040, &qword_214763ED0);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916048, &qword_214763ED8);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916050, &qword_214763EE0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2145D8608();
  v15 = v36;
  sub_2146DAA08();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_2146DA238();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_214397004();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_2146D9F58();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v24 = &type metadata for Chatbot.RootMessage.Context.DataEncoding;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_2145D86B0();
          sub_2146DA0B8();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_2145D865C();
          v26 = v17;
          sub_2146DA0B8();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_2145D8704();
        sub_2146DA0B8();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

_BYTE *sub_2145D8DD4@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2145D8DE4()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x6F636E4561746164;
  }
}

void sub_2145D8E2C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F636E4561746164 && a2 == 0xEC000000676E6964;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002147A5230 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
}

uint64_t sub_2145D8F14(uint64_t a1)
{
  v2 = sub_2145D912C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D8F50(uint64_t a1)
{
  v2 = sub_2145D912C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D8F8C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916058, &qword_214763EE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D912C();
  sub_2146DAA28();
  v14 = v8;
  v13 = 0;
  sub_2145D9180();
  sub_2146DA388();
  if (!v2)
  {
    v12 = 1;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2145D912C()
{
  result = qword_27C916060;
  if (!qword_27C916060)
  {
    result = swift_getWitnessTable(aEm_3, &type metadata for Chatbot.RootMessage.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916060);
  }

  return result;
}

unint64_t sub_2145D9180()
{
  result = qword_27C916068;
  if (!qword_27C916068)
  {
    result = swift_getWitnessTable(byte_2147653F0, &type metadata for Chatbot.RootMessage.Context.DataEncoding, v0, v1);
    atomic_store(result, &qword_27C916068);
  }

  return result;
}

uint64_t sub_2145D91D4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916070, &qword_214763EF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D912C();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = 0;
    sub_2145D9394();
    sub_2146DA1C8();
    v9 = v15;
    v13 = 1;
    v10 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2145D9394()
{
  result = qword_27C916078;
  if (!qword_27C916078)
  {
    result = swift_getWitnessTable(aAn, &type metadata for Chatbot.RootMessage.Context.DataEncoding, v0, v1);
    atomic_store(result, &qword_27C916078);
  }

  return result;
}

uint64_t sub_2145D9418@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.VerificationInfo(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2145CBE50(v1, v5, type metadata accessor for Chatbot.VerificationInfo);
  v6 = type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2145D9554(v5);
    v8 = 1;
  }

  else
  {
    sub_2145DF420(v5, a1, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
    v8 = 0;
  }

  return (*(v7 + 56))(a1, v8, 1, v6);
}

uint64_t sub_2145D9554(uint64_t a1)
{
  v2 = type metadata accessor for Chatbot.VerificationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2145D960C()
{
  result = qword_27C916080;
  if (!qword_27C916080)
  {
    result = swift_getWitnessTable(byte_214763F30, &type metadata for Chatbot.URIEntry.URIType, v0, v1);
    atomic_store(result, &qword_27C916080);
  }

  return result;
}

unint64_t sub_2145D9664()
{
  result = qword_27C916088;
  if (!qword_27C916088)
  {
    result = swift_getWitnessTable(byte_214764020, &type metadata for Chatbot.URIEntry.Label, v0, v1);
    atomic_store(result, &qword_27C916088);
  }

  return result;
}

uint64_t sub_2145D9710(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BB68, type metadata accessor for Chatbot.Media, asc_2147018E0);
  result = sub_2145D9794(&qword_27C90BB88, type metadata accessor for Chatbot.Media, aF_7);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9794(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2145D97E0()
{
  result = qword_27C916090;
  if (!qword_27C916090)
  {
    result = swift_getWitnessTable(aE_82, &type metadata for Chatbot.MediaEntry.Label, v0, v1);
    atomic_store(result, &qword_27C916090);
  }

  return result;
}

unint64_t sub_2145D9838()
{
  result = qword_27C916098;
  if (!qword_27C916098)
  {
    result = swift_getWitnessTable(aU_94, &type metadata for Chatbot.MediaEntry.ContentType, v0, v1);
    atomic_store(result, &qword_27C916098);
  }

  return result;
}

uint64_t sub_2145D988C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BBC8, type metadata accessor for Chatbot.MediaEntry, aW_9);
  result = sub_2145D9794(&qword_27C90BBE8, type metadata accessor for Chatbot.MediaEntry, byte_214701958);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145D9998()
{
  result = qword_27C9160A0;
  if (!qword_27C9160A0)
  {
    result = swift_getWitnessTable(byte_2147643B4, &type metadata for Chatbot.OrganizationName.NameType, v0, v1);
    atomic_store(result, &qword_27C9160A0);
  }

  return result;
}

uint64_t sub_2145D9AC8(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BEB0, type metadata accessor for Chatbot.BotInfo, asc_214701C00);
  result = sub_2145D9794(&qword_27C90BEE8, type metadata accessor for Chatbot.BotInfo, byte_214701C28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9B4C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D828, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo, byte_214701C50);
  result = sub_2145D9794(&qword_27C90D810, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo, aA_40);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9BD0(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BE80, type metadata accessor for Chatbot.VerificationInfo, aIi_0);
  result = sub_2145D9794(&qword_27C90BE90, type metadata accessor for Chatbot.VerificationInfo, byte_2147038E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9C54(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BED8, type metadata accessor for Chatbot.BotVerification, aI_38);
  result = sub_2145D9794(&qword_27C90BF08, type metadata accessor for Chatbot.BotVerification, byte_214701CC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9CF8(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C9160A8, type metadata accessor for Chatbot.Info, byte_214701CF0);
  result = sub_2145D9794(&qword_27C9160B0, type metadata accessor for Chatbot.Info, byte_214701D18);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9D7C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BF30, type metadata accessor for Chatbot.MenuL2.Entry, byte_214703910);
  result = sub_2145D9794(&qword_27C90BF48, type metadata accessor for Chatbot.MenuL2.Entry, byte_214703938);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9E4C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BF70, type metadata accessor for Chatbot.MenuL1.Entry, byte_214703960);
  result = sub_2145D9794(&qword_27C90BF88, type metadata accessor for Chatbot.MenuL1.Entry, aQd);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9F1C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BFB0, type metadata accessor for Chatbot.MenuL0, aYh_0);
  result = sub_2145D9794(&qword_27C90BFC8, type metadata accessor for Chatbot.MenuL0, byte_2147039D8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DA074()
{
  result = qword_27C9160B8;
  if (!qword_27C9160B8)
  {
    result = swift_getWitnessTable(byte_2147646B8, &type metadata for Chatbot.URLAction.OpenURL.ApplicationType, v0, v1);
    atomic_store(result, &qword_27C9160B8);
  }

  return result;
}

unint64_t sub_2145DA0CC()
{
  result = qword_27C9160C0;
  if (!qword_27C9160C0)
  {
    result = swift_getWitnessTable(aY_36, &type metadata for Chatbot.URLAction.OpenURL.ViewMode, v0, v1);
    atomic_store(result, &qword_27C9160C0);
  }

  return result;
}

uint64_t sub_2145DA178(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D970, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber, byte_214701F70);
  result = sub_2145D9794(&qword_27C90D948, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber, aA_41);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA1FC(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D968, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall, aI_39);
  result = sub_2145D9794(&qword_27C90D940, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall, byte_214701FE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA280(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D960, type metadata accessor for Chatbot.DialerAction.DialVideoCall, byte_214702010);
  result = sub_2145D9794(&qword_27C90D938, type metadata accessor for Chatbot.DialerAction.DialVideoCall, byte_214702038);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA304(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB00, type metadata accessor for Chatbot.DialerAction, byte_214703A50);
  result = sub_2145D9794(&qword_27C90DAB8, type metadata accessor for Chatbot.DialerAction, aAc_0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA458(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D9A8, type metadata accessor for Chatbot.MapAction.ShowLocation, byte_214702150);
  result = sub_2145D9794(&qword_27C90D990, type metadata accessor for Chatbot.MapAction.ShowLocation, aA_42);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA4DC(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DAF8, type metadata accessor for Chatbot.MapAction, aIg);
  result = sub_2145D9794(&qword_27C90DAB0, type metadata accessor for Chatbot.MapAction, byte_214703AC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA580(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DA28, type metadata accessor for Chatbot.CalendarAction.CreateEvent, aI_40);
  result = sub_2145D9794(&qword_27C90DA10, type metadata accessor for Chatbot.CalendarAction.CreateEvent, byte_2147021C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA604(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DAF0, type metadata accessor for Chatbot.CalendarAction, byte_214703B40);
  result = sub_2145D9794(&qword_27C90DAA8, type metadata accessor for Chatbot.CalendarAction, aQb);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DA6D8()
{
  result = qword_27C9160C8;
  if (!qword_27C9160C8)
  {
    result = swift_getWitnessTable(byte_214764A3C, &type metadata for Chatbot.ComposeAction.ComposeRecordingMessage.MediaType, v0, v1);
    atomic_store(result, &qword_27C9160C8);
  }

  return result;
}

unint64_t sub_2145DA788()
{
  result = qword_27C9160D0;
  if (!qword_27C9160D0)
  {
    result = swift_getWitnessTable(aEu, &type metadata for Chatbot.DeviceAction, v0, v1);
    atomic_store(result, &qword_27C9160D0);
  }

  return result;
}

unint64_t sub_2145DA80C()
{
  result = qword_27C9160D8;
  if (!qword_27C9160D8)
  {
    result = swift_getWitnessTable(byte_214764C38, &type metadata for Chatbot.SettingsAction, v0, v1);
    atomic_store(result, &qword_27C9160D8);
  }

  return result;
}

uint64_t sub_2145DA88C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C1D0, type metadata accessor for Chatbot.Action.ActionType, aF_5);
  result = sub_2145D9794(&qword_27C90C1E0, type metadata accessor for Chatbot.Action.ActionType, byte_214703C08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA910(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D868, type metadata accessor for Chatbot.Action, aY_37);
  result = sub_2145D9794(&qword_27C90D848, type metadata accessor for Chatbot.Action, asc_2147022B8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DA998()
{
  result = qword_27C9160E0;
  if (!qword_27C9160E0)
  {
    result = swift_getWitnessTable(byte_214764D44, &type metadata for Chatbot.CardOrientation, v0, v1);
    atomic_store(result, &qword_27C9160E0);
  }

  return result;
}

unint64_t sub_2145DA9F0()
{
  result = qword_27C9160E8;
  if (!qword_27C9160E8)
  {
    result = swift_getWitnessTable(byte_214764E34, &type metadata for Chatbot.CardFontStyle, v0, v1);
    atomic_store(result, &qword_27C9160E8);
  }

  return result;
}

unint64_t sub_2145DAA48()
{
  result = qword_27C9160F0;
  if (!qword_27C9160F0)
  {
    result = swift_getWitnessTable(byte_214764F24, &type metadata for Chatbot.CardMedia.Height, v0, v1);
    atomic_store(result, &qword_27C9160F0);
  }

  return result;
}

uint64_t sub_2145DAA9C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C318, type metadata accessor for Chatbot.CardMedia, asc_2147022E0);
  result = sub_2145D9794(&qword_27C90C388, type metadata accessor for Chatbot.CardMedia, byte_214702308);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DABB4(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB50, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout, byte_214702420);
  result = sub_2145D9794(&qword_27C90DB30, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout, byte_214702448);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DAC3C()
{
  result = qword_27C9160F8;
  if (!qword_27C9160F8)
  {
    result = swift_getWitnessTable(aEp, &type metadata for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout.ImageAlignment, v0, v1);
    atomic_store(result, &qword_27C9160F8);
  }

  return result;
}

uint64_t sub_2145DAC90(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB48, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout, byte_214702470);
  result = sub_2145D9794(&qword_27C90DB28, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout, aAy);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAD14(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C250, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout, byte_214703C30);
  result = sub_2145D9794(&qword_27C90C268, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout, byte_214703C58);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAD98(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C258, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content, aI_41);
  result = sub_2145D9794(&qword_27C90C270, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content, byte_2147024E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAE1C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB98, type metadata accessor for Chatbot.GeneralPurposeCardMessage, a9_10);
  result = sub_2145D9794(&qword_27C90DB78, type metadata accessor for Chatbot.GeneralPurposeCardMessage, byte_2147023F8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DAEA4()
{
  result = qword_27C916100;
  if (!qword_27C916100)
  {
    result = swift_getWitnessTable(byte_2147651E4, &type metadata for Chatbot.GeneralPurposeCardCarouselMessage.Layout.Width, v0, v1);
    atomic_store(result, &qword_27C916100);
  }

  return result;
}

uint64_t sub_2145DAEF8(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C3D8, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout, byte_214702560);
  result = sub_2145D9794(&qword_27C90C400, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout, aQx);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAF7C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C3F0, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content, aY_38);
  result = sub_2145D9794(&qword_27C90C410, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content, byte_2147025D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DB000(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB90, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage, byte_214702510);
  result = sub_2145D9794(&qword_27C90DB70, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage, byte_214702538);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DB084(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(qword_27C90DBF8, type metadata accessor for Chatbot.Message, byte_214703C80);
  result = sub_2145D9794(&qword_27C90DBE0, type metadata accessor for Chatbot.Message, a1a);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DB128(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C370, type metadata accessor for Chatbot.Suggestion, a9e);
  result = sub_2145D9794(&qword_27C90C3C0, type metadata accessor for Chatbot.Suggestion, byte_214703CF8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DB1D0()
{
  result = qword_27C916108;
  if (!qword_27C916108)
  {
    result = swift_getWitnessTable(aIm, &type metadata for Chatbot.RootMessage.Context.DataEncoding, v0, v1);
    atomic_store(result, &qword_27C916108);
  }

  return result;
}

unint64_t sub_2145DB228()
{
  result = qword_27C916110;
  if (!qword_27C916110)
  {
    result = swift_getWitnessTable(byte_214765418, &type metadata for Chatbot.RootMessage.Context, v0, v1);
    atomic_store(result, &qword_27C916110);
  }

  return result;
}

unint64_t sub_2145DB280()
{
  result = qword_27C916118;
  if (!qword_27C916118)
  {
    result = swift_getWitnessTable(byte_214765440, &type metadata for Chatbot.RootMessage.Context, v0, v1);
    atomic_store(result, &qword_27C916118);
  }

  return result;
}

uint64_t sub_2145DB2D4(uint64_t a1)
{
  result = sub_2145D9794(&qword_27C916120, type metadata accessor for Chatbot.RootMessage, aE_83);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2145DB34C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D4C0, type metadata accessor for Chatbot.RootMessage, byte_214703D20);
  result = sub_2145D9794(&qword_27C90D460, type metadata accessor for Chatbot.RootMessage, byte_214703D48);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_122Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_2145DB630(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_2145DB678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145DB6F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2145DB738(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2145DB7D0(uint64_t a1)
{
  sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2145DB8D4(uint64_t a1)
{
  result = type metadata accessor for Chatbot.Media(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor7ChatbotO9MediaListVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145DB9EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145DBA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor7ChatbotO19OrganizationDetailsVSg(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_2145DBB08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t sub_2145DBB64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

void sub_2145DBC44(uint64_t a1)
{
  sub_2145DD8D4(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
      if (v3 <= 0x3F)
      {
        sub_2145DD8D4(319, &qword_27C916158, &type metadata for Chatbot.Address, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145DBE20(uint64_t a1)
{
  sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    sub_2145DC100(319, &qword_280B35230, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2145DBF38(uint64_t a1)
{
  result = type metadata accessor for Chatbot.VerificationInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2145DBFCC(uint64_t a1)
{
  type metadata accessor for Chatbot.BotInfo(319);
  if (v1 <= 0x3F)
  {
    sub_2145DD8D4(319, &qword_27C9161A0, &type metadata for Chatbot.Menu, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
      if (v3 <= 0x3F)
      {
        sub_2145DC100(319, &qword_27C9161A8, type metadata accessor for Chatbot.BotVerification, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145DC100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2145DC19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Chatbot.Action(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145DC28C(uint64_t a1)
{
  result = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Chatbot.DialerAction.DialVideoCall(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2145DC33C(uint64_t a1)
{
  sub_2145DD8D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2145DC438(uint64_t a1)
{
  sub_2145DD8D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_510Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_511Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_381Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 2)
  {
    return v7 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_382Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_2145DC818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_2145DC880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145DC8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145DC954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 58))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 56) & 0x7E | (*(a1 + 56) >> 7) & 1) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2145DC9A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 2 * ((((-a2 >> 1) & 0x3F) - (a2 << 6)) & 0x7F);
    }
  }

  return result;
}

void sub_2145DCA64(uint64_t a1)
{
  sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2145DCB0C(uint64_t a1, uint64_t a2)
{
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);

  return MEMORY[0x2821FE9C0](a1, a2, Event, j____swift_get_extra_inhabitant_index_580Tm);
}

uint64_t sub_2145DCB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, Event, j____swift_store_extra_inhabitant_index_581Tm);
}

uint64_t sub_2145DCBCC(uint64_t a1)
{
  result = type metadata accessor for Chatbot.CalendarAction.CreateEvent(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_580Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_581Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2145DCEF8(uint64_t a1)
{
  sub_2146D8B08();
  if (v1 <= 0x3F)
  {
    sub_2145DD8D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
      if (v3 <= 0x3F)
      {
        sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2145DD034(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 9;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2145DD084(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 9;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145DD19C(uint64_t a1)
{
  result = type metadata accessor for Chatbot.Action.ActionType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145DD218(uint64_t a1)
{
  result = type metadata accessor for Chatbot.DialerAction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Chatbot.MapAction(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Chatbot.CalendarAction(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2145DD310(uint64_t a1)
{
  sub_2145DC100(319, &qword_280B2E580, MEMORY[0x277CC9260], type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    sub_2145DD8D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_2145DD8D4(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
      if (v3 <= 0x3F)
      {
        sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
        if (v4 <= 0x3F)
        {
          sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
          if (v5 <= 0x3F)
          {
            sub_2145DD924(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0, type metadata accessor for Validated);
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

uint64_t sub_2145DD55C(uint64_t a1)
{
  result = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2145DD634(uint64_t a1)
{
  sub_2145DD924(319, &qword_27C9162C0, &qword_27C90C2A0, &qword_2146F6BB0, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2145DD77C(uint64_t a1)
{
  sub_2145DC100(319, &qword_27C9162E8, type metadata accessor for Chatbot.CardMedia, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2145DD8D4(319, &qword_27C9162F0, &type metadata for Chatbot.CardTitle, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2145DD8D4(319, &qword_27C9162F8, &type metadata for Chatbot.CardDescription, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2145DD924(319, &qword_27C916300, &qword_27C90C368, &qword_2146F6BF8, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145DD8D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2145DD924(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2145DD9B0(uint64_t a1)
{
  type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(319);
  if (v1 <= 0x3F)
  {
    sub_2145DC100(319, &qword_27C916318, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_722Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_723Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2145DDC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2145DD924(319, &qword_27C9162C0, &qword_27C90C2A0, &qword_2146F6BB0, MEMORY[0x277D83D88]);
  if (v4 <= 0x3F)
  {
    sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_737Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_738Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2145DDEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2145DDF70(uint64_t a1)
{
  result = type metadata accessor for Chatbot.Action(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2145DDFDC(uint64_t a1)
{
  type metadata accessor for Chatbot.Message(319);
  if (v1 <= 0x3F)
  {
    sub_2145DC100(319, &qword_27C916370, type metadata accessor for Chatbot.Suggestion, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Chatbot.RootMessage.Context(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Chatbot.RootMessage.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2145DE298()
{
  result = qword_27C916378;
  if (!qword_27C916378)
  {
    result = swift_getWitnessTable(byte_2147664E4, &type metadata for Chatbot.DeviceAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916378);
  }

  return result;
}

unint64_t sub_2145DE2F0()
{
  result = qword_27C916380;
  if (!qword_27C916380)
  {
    result = swift_getWitnessTable(byte_21476663C, &type metadata for Chatbot.SettingsAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916380);
  }

  return result;
}

unint64_t sub_2145DE348()
{
  result = qword_27C916388;
  if (!qword_27C916388)
  {
    result = swift_getWitnessTable(byte_2147667E4, &type metadata for Chatbot.RootMessage.Context.DataEncoding.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916388);
  }

  return result;
}

unint64_t sub_2145DE3A0()
{
  result = qword_27C916390;
  if (!qword_27C916390)
  {
    result = swift_getWitnessTable(a8_1, &type metadata for Chatbot.RootMessage.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916390);
  }

  return result;
}

unint64_t sub_2145DE3F8()
{
  result = qword_27C916398;
  if (!qword_27C916398)
  {
    result = swift_getWitnessTable(byte_21476680C, &type metadata for Chatbot.RootMessage.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916398);
  }

  return result;
}

unint64_t sub_2145DE450()
{
  result = qword_27C9163A0;
  if (!qword_27C9163A0)
  {
    result = swift_getWitnessTable(byte_214766834, &type metadata for Chatbot.RootMessage.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163A0);
  }

  return result;
}

unint64_t sub_2145DE4A8()
{
  result = qword_27C9163A8;
  if (!qword_27C9163A8)
  {
    result = swift_getWitnessTable(byte_214766704, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Utf8CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163A8);
  }

  return result;
}

unint64_t sub_2145DE500()
{
  result = qword_27C9163B0;
  if (!qword_27C9163B0)
  {
    result = swift_getWitnessTable(byte_21476672C, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Utf8CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163B0);
  }

  return result;
}

unint64_t sub_2145DE558()
{
  result = qword_27C9163B8;
  if (!qword_27C9163B8)
  {
    result = swift_getWitnessTable(byte_2147666B4, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Base64CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163B8);
  }

  return result;
}

unint64_t sub_2145DE5B0()
{
  result = qword_27C9163C0;
  if (!qword_27C9163C0)
  {
    result = swift_getWitnessTable(byte_2147666DC, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Base64CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163C0);
  }

  return result;
}

unint64_t sub_2145DE608()
{
  result = qword_27C9163C8;
  if (!qword_27C9163C8)
  {
    result = swift_getWitnessTable(aI_42, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Base64URLCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163C8);
  }

  return result;
}

unint64_t sub_2145DE660()
{
  result = qword_27C9163D0;
  if (!qword_27C9163D0)
  {
    result = swift_getWitnessTable(aMe_0, &type metadata for Chatbot.RootMessage.Context.DataEncoding.Base64URLCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163D0);
  }

  return result;
}

unint64_t sub_2145DE6B8()
{
  result = qword_27C9163D8;
  if (!qword_27C9163D8)
  {
    result = swift_getWitnessTable(aMh_3, &type metadata for Chatbot.RootMessage.Context.DataEncoding.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163D8);
  }

  return result;
}

unint64_t sub_2145DE710()
{
  result = qword_27C9163E0;
  if (!qword_27C9163E0)
  {
    result = swift_getWitnessTable(aD_5, &type metadata for Chatbot.RootMessage.Context.DataEncoding.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163E0);
  }

  return result;
}

unint64_t sub_2145DE768()
{
  result = qword_27C9163E8;
  if (!qword_27C9163E8)
  {
    result = swift_getWitnessTable(aEj, &type metadata for Chatbot.SettingsAction.DisableAnonymizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163E8);
  }

  return result;
}

unint64_t sub_2145DE7C0()
{
  result = qword_27C9163F0;
  if (!qword_27C9163F0)
  {
    result = swift_getWitnessTable(aUf, &type metadata for Chatbot.SettingsAction.DisableAnonymizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163F0);
  }

  return result;
}

unint64_t sub_2145DE818()
{
  result = qword_27C9163F8;
  if (!qword_27C9163F8)
  {
    result = swift_getWitnessTable(byte_21476650C, &type metadata for Chatbot.SettingsAction.EnableDisplayedNotificationsCodingKeys, v0, v1);
    atomic_store(result, &qword_27C9163F8);
  }

  return result;
}

unint64_t sub_2145DE870()
{
  result = qword_27C916400;
  if (!qword_27C916400)
  {
    result = swift_getWitnessTable(byte_214766534, &type metadata for Chatbot.SettingsAction.EnableDisplayedNotificationsCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916400);
  }

  return result;
}

unint64_t sub_2145DE8C8()
{
  result = qword_27C916408;
  if (!qword_27C916408)
  {
    result = swift_getWitnessTable(byte_2147665AC, &type metadata for Chatbot.SettingsAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916408);
  }

  return result;
}

unint64_t sub_2145DE920()
{
  result = qword_27C916410;
  if (!qword_27C916410)
  {
    result = swift_getWitnessTable(byte_2147665D4, &type metadata for Chatbot.SettingsAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916410);
  }

  return result;
}

unint64_t sub_2145DE978()
{
  result = qword_27C916418;
  if (!qword_27C916418)
  {
    result = swift_getWitnessTable(byte_214766404, &type metadata for Chatbot.DeviceAction.RequestDeviceSpecificsCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916418);
  }

  return result;
}

unint64_t sub_2145DE9D0()
{
  result = qword_27C916420;
  if (!qword_27C916420)
  {
    result = swift_getWitnessTable(byte_21476642C, &type metadata for Chatbot.DeviceAction.RequestDeviceSpecificsCodingKeys, v0, v1);
    atomic_store(result, &qword_27C916420);
  }

  return result;
}

unint64_t sub_2145DEA28()
{
  result = qword_27C916428;
  if (!qword_27C916428)
  {
    result = swift_getWitnessTable(aMk_1, &type metadata for Chatbot.DeviceAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916428);
  }

  return result;
}

unint64_t sub_2145DEA80()
{
  result = qword_27C916430;
  if (!qword_27C916430)
  {
    result = swift_getWitnessTable(aG_5, &type metadata for Chatbot.DeviceAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C916430);
  }

  return result;
}

uint64_t sub_2145DEAD4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  else
  {
    return sub_214047B58();
  }
}

uint64_t sub_2145DEAF4(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*a1 + 16);
  v5 = a3;
  return v3(a2, &v5) & 1;
}

uint64_t sub_2145DEB4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 946238581 && a2 == 0xE400000000000000;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x343665736162 && a2 == 0xE600000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5255343665736162 && a2 == 0xE90000000000004CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2145DEC68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_2145DECD0()
{
  result = qword_27C916438;
  if (!qword_27C916438)
  {
    result = swift_getWitnessTable(aUo_0, &type metadata for Chatbot.GeneralPurposeCardCarouselMessage.Layout.Width, v0, v1);
    atomic_store(result, &qword_27C916438);
  }

  return result;
}

unint64_t sub_2145DED24()
{
  result = qword_27C916440;
  if (!qword_27C916440)
  {
    result = swift_getWitnessTable(byte_2147650EC, &type metadata for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout.ImageAlignment, v0, v1);
    atomic_store(result, &qword_27C916440);
  }

  return result;
}

unint64_t sub_2145DED78()
{
  result = qword_27C916448;
  if (!qword_27C916448)
  {
    result = swift_getWitnessTable(byte_214764F8C, &type metadata for Chatbot.CardMedia.Height, v0, v1);
    atomic_store(result, &qword_27C916448);
  }

  return result;
}

unint64_t sub_2145DEDCC()
{
  result = qword_27C916450;
  if (!qword_27C916450)
  {
    result = swift_getWitnessTable(byte_214764E9C, &type metadata for Chatbot.CardFontStyle, v0, v1);
    atomic_store(result, &qword_27C916450);
  }

  return result;
}

unint64_t sub_2145DEE20()
{
  result = qword_27C916458;
  if (!qword_27C916458)
  {
    result = swift_getWitnessTable(byte_214764DAC, &type metadata for Chatbot.CardOrientation, v0, v1);
    atomic_store(result, &qword_27C916458);
  }

  return result;
}

unint64_t sub_2145DEE74()
{
  result = qword_27C916460;
  if (!qword_27C916460)
  {
    result = swift_getWitnessTable(byte_214764AA4, &type metadata for Chatbot.ComposeAction.ComposeRecordingMessage.MediaType, v0, v1);
    atomic_store(result, &qword_27C916460);
  }

  return result;
}

unint64_t sub_2145DEEC8()
{
  result = qword_27C916468;
  if (!qword_27C916468)
  {
    result = swift_getWitnessTable(byte_214764810, &type metadata for Chatbot.URLAction.OpenURL.ViewMode, v0, v1);
    atomic_store(result, &qword_27C916468);
  }

  return result;
}

unint64_t sub_2145DEF1C()
{
  result = qword_27C916470;
  if (!qword_27C916470)
  {
    result = swift_getWitnessTable(byte_214764720, &type metadata for Chatbot.URLAction.OpenURL.ApplicationType, v0, v1);
    atomic_store(result, &qword_27C916470);
  }

  return result;
}

unint64_t sub_2145DEF70()
{
  result = qword_27C916478;
  if (!qword_27C916478)
  {
    result = swift_getWitnessTable(byte_21476441C, &type metadata for Chatbot.OrganizationName.NameType, v0, v1);
    atomic_store(result, &qword_27C916478);
  }

  return result;
}

unint64_t sub_2145DEFC4()
{
  result = qword_27C916480;
  if (!qword_27C916480)
  {
    result = swift_getWitnessTable(byte_2147642BC, &type metadata for Chatbot.MediaEntry.ContentType, v0, v1);
    atomic_store(result, &qword_27C916480);
  }

  return result;
}

unint64_t sub_2145DF018()
{
  result = qword_27C916488;
  if (!qword_27C916488)
  {
    result = swift_getWitnessTable(byte_2147641CC, &type metadata for Chatbot.MediaEntry.Label, v0, v1);
    atomic_store(result, &qword_27C916488);
  }

  return result;
}

unint64_t sub_2145DF06C()
{
  result = qword_27C916490;
  if (!qword_27C916490)
  {
    result = swift_getWitnessTable(byte_214764088, &type metadata for Chatbot.URIEntry.Label, v0, v1);
    atomic_store(result, &qword_27C916490);
  }

  return result;
}

unint64_t sub_2145DF0C0()
{
  result = qword_27C916498;
  if (!qword_27C916498)
  {
    result = swift_getWitnessTable(aB_6, &type metadata for Chatbot.URIEntry.URIType, v0, v1);
    atomic_store(result, &qword_27C916498);
  }

  return result;
}

uint64_t sub_2145DF11C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_213FB2E54(a1, v14, &unk_27C9131A0, &unk_2146E9D10);
  v17 = *(v5 + 48);
  v18 = 1;
  if (v17(v14, 1, v4) != 1)
  {
    (*(v5 + 32))(v16, v14, v4);
    v18 = 0;
  }

  (*(v5 + 56))(v16, v18, 1, v4);
  sub_213FB2E54(v16, v11, &unk_27C9131A0, &unk_2146E9D10);
  if (v17(v11, 1, v4) == 1)
  {
    sub_213FB2DF4(v16, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v11, &unk_27C9131A0, &unk_2146E9D10);
    v19 = 1;
  }

  else
  {
    v20 = (*(v5 + 32))(v7, v11, v4);
    MEMORY[0x28223BE20](v20);
    *&v22[-16] = v7;
    v22[-8] = 2;
    v19 = sub_2140479E4(sub_214046F5C, &v22[-32], a2);
    sub_213FB2DF4(v16, &unk_27C9131A0, &unk_2146E9D10);
    (*(v5 + 8))(v7, v4);
  }

  return v19 & 1;
}

uint64_t sub_2145DF420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RedWoodInvite.sessionToken.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t RedWoodInvite.isprod.getter()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t RedWoodInvite.aaToken.getter()
{
  if (*(v0 + 120) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 112);

    return v1;
  }

  return result;
}

uint64_t RedWoodInvite.appleName.getter()
{
  if (*(v0 + 176) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 168);

    return v1;
  }

  return result;
}

uint64_t RedWoodInvite.shareType.getter()
{
  if (*(v0 + 216) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 208);

    return v1;
  }

  return result;
}

unint64_t sub_2145DF858@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2143E05A8;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_214032610;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2145DF978@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2145E278C;
  v5[3] = 0;
  v5[4] = 10;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_21439DF90;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2143E05A8;
  *(v10 + 24) = 0;
  *(v9 + 32) = v10;
  v11 = sub_2142E0070(v9);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(inited + 40) = v12;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2145DFB8C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2145E278C;
  v5[3] = 0;
  v5[4] = 30;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2140676DC;
  *(v10 + 24) = 0;
  *(v9 + 32) = v10;
  v11 = sub_2142E0070(v9);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(inited + 40) = v12;
  return sub_214042A28(inited, a1);
}

uint64_t RedWoodInvite.$sessionToken.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 RedWoodInvite.$sessionToken.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t RedWoodInvite.$isprod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 RedWoodInvite.$isprod.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t RedWoodInvite.$aaToken.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 RedWoodInvite.$aaToken.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[7].n128_i64[0];
  v7 = v1[7].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u64[1] = v4;
  v1[8].n128_u8[0] = v5;
  return result;
}

uint64_t RedWoodInvite.$appleName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  *a1 = *(v1 + 152);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 RedWoodInvite.$appleName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 152) = *a1;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  return result;
}

uint64_t RedWoodInvite.$shareType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = *(v1 + 224);
  *a1 = *(v1 + 192);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 RedWoodInvite.$shareType.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[13].n128_i64[0];
  v7 = v1[13].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u64[0] = v3;
  v1[13].n128_u64[1] = v4;
  v1[14].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E0130()
{
  v1 = *v0;
  sub_213FDCA18(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2145E0164(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2145E01BC()
{
  v1 = *(v0 + 16);
  sub_213FDCA18(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_2145E01F0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2145E0248()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2145E027C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2145E02D4()
{
  v1 = *(v0 + 48);
  sub_21402D9F8(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_2145E0308(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void RedWoodInvite.sessionToken.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*RedWoodInvite.sessionToken.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*RedWoodInvite.$sessionToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t RedWoodInvite.resourcepath.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void RedWoodInvite.resourcepath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void RedWoodInvite.isprod.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 56);
  v8 = *(v2 + 88);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*RedWoodInvite.isprod.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*RedWoodInvite.$isprod.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

void sub_2145E08E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 120);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 112);
    a2[1] = v4;
  }
}

double sub_2145E0954(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void RedWoodInvite.aaToken.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 96);
  v8 = *(v2 + 128);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 112), *(v2 + 120));

    *(v2 + 112) = a1;
    *(v2 + 120) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*RedWoodInvite.aaToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 112);
  *(v3 + 24) = v5;
  v6 = *(v1 + 120);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145E0C20;
  }

  return result;
}

void sub_2145E0C20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 96);
    v13 = *(v3 + 128);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 112) = v5;
      *(v9 + 120) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 96);
  v13 = *(v3 + 128);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 112) = v5;
  *(v7 + 120) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2145E0DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  *a2 = *(a1 + 96);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145E0E44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 112);
  v9 = *(a2 + 120);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = v5;
  *(a2 + 120) = v6;
  *(a2 + 128) = v7;
  return result;
}

void (*RedWoodInvite.$aaToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145E0F6C;
}

void sub_2145E0F6C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 112);
  v10 = *(v3 + 120);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v7;
    *(v3 + 120) = v6;
    *(v3 + 128) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v7;
    *(v3 + 120) = v6;
    *(v3 + 128) = v8;
  }

  free(v2);
}

uint64_t RedWoodInvite.timeout.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

void sub_2145E1088(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 176);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 168);
    a2[1] = v4;
  }
}

double sub_2145E10FC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void RedWoodInvite.appleName.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 152);
  v8 = *(v2 + 184);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 168), *(v2 + 176));

    *(v2 + 168) = a1;
    *(v2 + 176) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*RedWoodInvite.appleName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 168);
  *(v3 + 24) = v5;
  v6 = *(v1 + 176);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145E13C8;
  }

  return result;
}

void sub_2145E13C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 152);
    v13 = *(v3 + 184);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 168) = v5;
      *(v9 + 176) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 152);
  v13 = *(v3 + 184);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 168) = v5;
  *(v7 + 176) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2145E1598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  *a2 = *(a1 + 152);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145E15EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 168);
  v9 = *(a2 + 176);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 152) = v4;
  *(a2 + 160) = v3;
  *(a2 + 168) = v5;
  *(a2 + 176) = v6;
  *(a2 + 184) = v7;
  return result;
}

void (*RedWoodInvite.$appleName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  v8 = *(v1 + 184);
  *v4 = *(v1 + 152);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145E1714;
}

void sub_2145E1714(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 168);
  v10 = *(v3 + 176);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 152) = v5;
    *(v3 + 160) = v4;
    *(v3 + 168) = v7;
    *(v3 + 176) = v6;
    *(v3 + 184) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 152) = v5;
    *(v3 + 160) = v4;
    *(v3 + 168) = v7;
    *(v3 + 176) = v6;
    *(v3 + 184) = v8;
  }

  free(v2);
}

void sub_2145E17F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 216);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 208);
    a2[1] = v4;
  }
}

double sub_2145E1868(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void RedWoodInvite.shareType.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 192);
  v8 = *(v2 + 224);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 208), *(v2 + 216));

    *(v2 + 208) = a1;
    *(v2 + 216) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*RedWoodInvite.shareType.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 208);
  *(v3 + 24) = v5;
  v6 = *(v1 + 216);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145E1B34;
  }

  return result;
}

void sub_2145E1B34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 192);
    v13 = *(v3 + 224);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 208) = v5;
      *(v9 + 216) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 192);
  v13 = *(v3 + 224);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 208) = v5;
  *(v7 + 216) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2145E1D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  v4 = *(a1 + 216);
  v5 = *(a1 + 224);
  *a2 = *(a1 + 192);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145E1D58(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 208);
  v9 = *(a2 + 216);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 192) = v4;
  *(a2 + 200) = v3;
  *(a2 + 208) = v5;
  *(a2 + 216) = v6;
  *(a2 + 224) = v7;
  return result;
}

void (*RedWoodInvite.$shareType.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);
  *v4 = *(v1 + 192);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145E1E80;
}

void sub_2145E1E80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 208);
  v10 = *(v3 + 216);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    *(v3 + 208) = v7;
    *(v3 + 216) = v6;
    *(v3 + 224) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    *(v3 + 208) = v7;
    *(v3 + 216) = v6;
    *(v3 + 224) = v8;
  }

  free(v2);
}

uint64_t sub_2145E1F90@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_213FB2E54(v7, &v6, &qword_27C904250, qword_214766C00);
}

__n128 sub_2145E1FE0(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_213FB2DF4(v8, &qword_27C904250, qword_214766C00);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

uint64_t sub_2145E2060@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 272);
  v35 = *(v1 + 256);
  v36 = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 208);
  v31 = *(v1 + 192);
  v6 = v31;
  v32 = v5;
  v7 = *(v1 + 208);
  v8 = *(v1 + 240);
  v33 = *(v1 + 224);
  v9 = v33;
  v34 = v8;
  v10 = *(v1 + 112);
  v11 = *(v1 + 144);
  v27 = *(v1 + 128);
  v12 = v27;
  v28 = v11;
  v13 = *(v1 + 144);
  v14 = *(v1 + 176);
  v29 = *(v1 + 160);
  v15 = v29;
  v30 = v14;
  v16 = *(v1 + 80);
  v24[0] = *(v1 + 64);
  v24[1] = v16;
  v17 = *(v1 + 112);
  v19 = *(v1 + 64);
  v18 = *(v1 + 80);
  v25 = *(v1 + 96);
  v20 = v25;
  v26 = v17;
  v21 = *(v1 + 272);
  *(a1 + 192) = v35;
  *(a1 + 208) = v21;
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 160) = v9;
  *(a1 + 176) = v2;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v15;
  *(a1 + 112) = v4;
  *a1 = v19;
  *(a1 + 16) = v18;
  v37 = *(v1 + 288);
  *(a1 + 224) = *(v1 + 288);
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  return sub_213FB2E54(v24, v23, &qword_27C904248, &qword_2146F4C30);
}

__n128 sub_2145E2128(uint64_t a1)
{
  v3 = *(v1 + 272);
  v17[12] = *(v1 + 256);
  v17[13] = v3;
  v18 = *(v1 + 288);
  v4 = *(v1 + 208);
  v17[8] = *(v1 + 192);
  v17[9] = v4;
  v5 = *(v1 + 240);
  v17[10] = *(v1 + 224);
  v17[11] = v5;
  v6 = *(v1 + 144);
  v17[4] = *(v1 + 128);
  v17[5] = v6;
  v7 = *(v1 + 176);
  v17[6] = *(v1 + 160);
  v17[7] = v7;
  v8 = *(v1 + 80);
  v17[0] = *(v1 + 64);
  v17[1] = v8;
  v9 = *(v1 + 112);
  v17[2] = *(v1 + 96);
  v17[3] = v9;
  sub_213FB2DF4(v17, &qword_27C904248, &qword_2146F4C30);
  v10 = *(a1 + 208);
  *(v1 + 256) = *(a1 + 192);
  *(v1 + 272) = v10;
  *(v1 + 288) = *(a1 + 224);
  v11 = *(a1 + 144);
  *(v1 + 192) = *(a1 + 128);
  *(v1 + 208) = v11;
  v12 = *(a1 + 176);
  *(v1 + 224) = *(a1 + 160);
  *(v1 + 240) = v12;
  v13 = *(a1 + 80);
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = v13;
  v14 = *(a1 + 112);
  *(v1 + 160) = *(a1 + 96);
  *(v1 + 176) = v14;
  v15 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v15;
  result = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = result;
  return result;
}

uint64_t sub_2145E2238()
{
  v1 = *(v0 + 296);

  return v1;
}

void sub_2145E2268(uint64_t a1, uint64_t a2)
{

  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
}

uint64_t sub_2145E22C0()
{
  v1 = *(v0 + 312);

  return v1;
}

void sub_2145E22F0(uint64_t a1, uint64_t a2)
{

  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
}

uint64_t sub_2145E2354(uint64_t result, char a2)
{
  *(v2 + 328) = result;
  *(v2 + 336) = a2 & 1;
  return result;
}

uint64_t sub_2145E2408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145E2444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 56) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 56) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2145E2498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 56) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy226_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 112);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2145E2554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 226))
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

uint64_t sub_2145E259C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 226) = 1;
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

    *(result + 226) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor18AVConferenceInviteVSg(uint64_t a1)
{
  v1 = *(a1 + 56) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor13RedWoodInviteVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2145E2670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 337))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_2145E26CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 337) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 337) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_2145E27F8(uint64_t a1)
{
  *(a1 + 8) = sub_2145E2828();
  result = sub_2145E287C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145E2828()
{
  result = qword_27C9164A0;
  if (!qword_27C9164A0)
  {
    result = swift_getWitnessTable(a9_11, &type metadata for LocationCoordinate2D, v0, v1);
    atomic_store(result, &qword_27C9164A0);
  }

  return result;
}

unint64_t sub_2145E287C()
{
  result = qword_27C9164A8;
  if (!qword_27C9164A8)
  {
    result = swift_getWitnessTable(byte_2146FABF8, &type metadata for LocationCoordinate2D, v0, v1);
    atomic_store(result, &qword_27C9164A8);
  }

  return result;
}

uint64_t sub_2145E28E0(uint64_t a1, uint64_t a2)
{
  sub_214069AD8();
  v4 = MEMORY[0x277D837D0];
  v5 = (sub_2146D9DB8() + 16);
  if (!*v5)
  {

    goto LABEL_9;
  }

  v6 = &v5[2 * *v5];
  v8 = *v6;
  v7 = v6[1];

  if (v8 == a1 && v7 == a2)
  {

    goto LABEL_13;
  }

  v10 = sub_2146DA6A8();

  if ((v10 & 1) == 0)
  {
LABEL_9:
    v11 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v12 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2146EA710;
    v24 = a1;
    v26 = a2;

    v14 = sub_2146D9618();
    v16 = v15;
    *(v13 + 56) = v4;
    *(v13 + 64) = sub_213FB2DA0();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_2146D91D8(v11, &dword_213FAF000, v12, "Invalid path component '%@' cannot be a union of multiple components.", 69, 2, v13, 47, 0xE100000000000000, v24, v26);
    goto LABEL_19;
  }

LABEL_13:
  if (a1 == 11822 && a2 == 0xE200000000000000 || (sub_2146DA6A8() & 1) != 0)
  {
    v17 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v18 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2146EA710;
    v25 = a1;
    v27 = a2;

    v20 = sub_2146D9618();
    v22 = v21;
    *(v19 + 56) = v4;
    *(v19 + 64) = sub_213FB2DA0();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_2146D91D8(v17, &dword_213FAF000, v18, "Invalid path component '%@' cannot be backtracking components.", 62, 2, v19, 47, 0xE100000000000000, v25, v27);
LABEL_19:

    return 0;
  }

  return 1;
}

uint64_t sub_2145E2B90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145E2BDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E2C38()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2145E2CB4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145E2DFC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145E2E98(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

unint64_t sub_2145E2F30(uint64_t a1)
{
  *(a1 + 8) = sub_214307240();
  result = sub_21430775C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145E2F90@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_2146D8D48();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  sub_2146D8C88();
  v21 = sub_2146D8D88();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  sub_2146D8CE8();
  (*(v26 + 8))(v6, v27);
  sub_214503110(v9);
  (*(v11 + 8))(v13, v10);
  MEMORY[0x216053B20](v3, MEMORY[0x277D83E40]);
  v22 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  MEMORY[0x216053AF0](v18, v14, v22);
  v23 = *(v15 + 8);
  v23(v18, v14);
  sub_2146D8C08();
  return (v23)(v20, v14);
}

uint64_t sub_2145E339C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_2146D8D48();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  if (qword_27C9031F8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_27CA19E68);
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v17, v7, v18);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_27CA19E50);
  MEMORY[0x216053AD0](v19, v7, v18);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v20 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v24 + 8))(v3, v25);
  MEMORY[0x216053B70](v11, v20);
  (*(v23 + 8))(v6, v4);
  v21 = *(v8 + 8);
  v21(v14, v7);
  return (v21)(v16, v7);
}

uint64_t sub_2145E3760@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - v2;
  v4 = sub_2146D8D48();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  if (qword_27C9031F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27CA19E68);
  v17 = sub_2146D8D88();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v18 = MEMORY[0x277D83E40];
  sub_2146D8D18();
  (*(v23 + 8))(v6, v24);
  sub_214503110(v9);
  MEMORY[0x216053B90](v3, v18);
  v19 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  MEMORY[0x216053AF0](v14, v10, v19);
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_2146D8C08();
  return (v20)(v16, v10);
}

uint64_t sub_2145E3B00@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v39 = sub_2146D8D48();
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v36 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v35 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = v28 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v44 = 2036625250;
  v45 = 0xE400000000000000;
  v17 = sub_2145031D0();
  MEMORY[0x216053AD0](v46, &v44, MEMORY[0x277D837D0], v17);
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  v31 = v16;
  MEMORY[0x216053AD0](v14, v10, v18);
  v19 = *(v11 + 8);
  v32 = v11 + 8;
  v33 = v19;
  v30 = v10;
  v19(v14, v10);
  v42 = 0x5F65636976726573;
  v43 = 0xEA00000000006469;
  v20 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](&v44, &v42, MEMORY[0x277D837D0], v17);
  v40 = 0x6974736567677573;
  v41 = 0xEB00000000736E6FLL;
  v28[1] = v17;
  MEMORY[0x216053AD0](&v42, &v40, v20, v17);
  v40 = v46[0];
  v41 = v46[1];
  v29 = v9;
  sub_2146D8BE8();

  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v21 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v22 = *(v34 + 8);
  v23 = v39;
  v22(v2, v39);
  MEMORY[0x216053B70](v14, v21);
  v40 = v44;
  v41 = v45;
  sub_2146D8C38();
  sub_2146D8CF8();
  v22(v2, v23);

  v24 = v35;
  v25 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v14, MEMORY[0x277D83E40]);
  v40 = v42;
  v41 = v43;
  sub_2146D8C38();
  sub_2146D8CF8();
  v22(v2, v39);

  MEMORY[0x216053B70](v14, v25);
  v26 = *(v36 + 8);
  v26(v24, v3);
  v26(v38, v3);
  v26(v29, v3);
  return v33(v31, v30);
}

uint64_t sub_2145E4088@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v39 = sub_2146D8D48();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v30 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v30 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v16, v3, v19);
  v20 = *(v4 + 8);
  v35 = v4 + 8;
  v20(v16, v3);
  v40 = 61;
  v41 = 0xE100000000000000;
  v21 = sub_2145031D0();
  MEMORY[0x216053AF0](v42, &v40, MEMORY[0x277D837D0], v21);
  if (qword_27C903200 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v3, qword_27C9164B0);
  v30 = v16;
  MEMORY[0x216053AF0](v22, v3, v19);
  v32 = v18;
  sub_2146D8C08();
  v31 = v13;
  v23 = v42[0];
  v24 = v42[1];
  sub_2146D8C38();
  v40 = v23;
  v41 = v24;
  v25 = v33;
  sub_2146D8D08();
  v26 = v34;
  sub_2146D8D08();

  sub_2146D8CD8();
  v20(v26, v3);
  v20(v25, v3);
  v27 = *(v37 + 8);
  v27(v2, v39);
  sub_2146D8C38();
  sub_2146D8D08();
  v28 = v30;
  sub_2146D8D08();
  sub_2146D8CD8();
  v20(v26, v3);
  v20(v25, v3);
  v27(v2, v39);
  v20(v38, v3);
  v20(v31, v3);
  v20(v28, v3);
  return (v20)(v32, v3);
}

uint64_t sub_2145E4594(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2146D8C88();
  v8 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  MEMORY[0x216053AF0](v5, v1, v8);
  v9 = *(v2 + 8);
  v9(v5, v1);
  sub_2146D8C08();
  return (v9)(v7, v1);
}

uint64_t sub_2145E4718@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_2146D8D48();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  if (qword_27C903150 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_27CA19DC0);
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v17, v7, v18);
  if (qword_27C903200 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_27C9164B0);
  MEMORY[0x216053AD0](v19, v7, v18);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v20 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v24 + 8))(v3, v25);
  MEMORY[0x216053B70](v11, v20);
  (*(v23 + 8))(v6, v4);
  v21 = *(v8 + 8);
  v21(v14, v7);
  return (v21)(v16, v7);
}

uint64_t sub_2145E4ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v53 = a5;
  v7 = sub_2146D8D48();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v15 = *(v14 - 8);
  v51 = v14;
  v52 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v49 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = &v44 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v47 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](a1);
  v50 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v44 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v44 - v29;
  if (*v28 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v19, a2);
  v32 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v31, v19, v32);
  v33 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v34 = sub_2146D8D88();
  (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
  sub_2146D8C38();
  v46 = v24;
  sub_2146D8CE8();
  v35 = *(v57 + 8);
  v57 += 8;
  v48 = v35;
  v54 = v30;
  v35(v10, v56);
  sub_214503110(v13);
  v47 = *(v47 + 8);
  (v47)(v27, v19);
  v36 = v49;
  MEMORY[0x216053B20](v24, v33);
  v37 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v38 = v51;
  MEMORY[0x216053AF0](v36, v51, v37);
  v52 = *(v52 + 8);
  (v52)(v36, v38);
  v45 = v27;
  sub_2146D8C08();
  sub_2146D8C38();
  v39 = v46;
  sub_2146D8D08();
  v40 = v50;
  v41 = v55;
  sub_2146D8D08();
  sub_2146D8CD8();
  v42 = v47;
  (v47)(v40, v19);
  v42(v39, v19);
  v48(v10, v56);
  v42(v45, v19);
  (v52)(v41, v38);
  return (v42)(v54, v19);
}

uint64_t sub_2145E5058@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29[0] = a4;
  v29[1] = a5;
  v8 = sub_2146D8D48();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v29 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v29 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v29 - v22;
  v32 = a1;
  v33 = 0xE100000000000000;
  v24 = sub_2145031D0();
  MEMORY[0x216053AF0](v34, &v32, MEMORY[0x277D837D0], v24);
  if (*a2 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, a3);
  v26 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v25, v11, v26);
  v32 = v34[0];
  v33 = v34[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v27 = *(v12 + 8);
  v27(v15, v11);
  v27(v18, v11);
  (*(v30 + 8))(v10, v31);
  v27(v21, v11);
  return (v27)(v23, v11);
}

uint64_t sub_2145E53AC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_2146D8D48();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v50 = *(v48 - 8);
  v7 = MEMORY[0x28223BE20](v48);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v42 = &v36 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v49 = &v36 - v22;
  v53 = 980643187;
  v54 = 0xE400000000000000;
  v41 = sub_2145031D0();
  MEMORY[0x216053AF0](v55, &v53, MEMORY[0x277D837D0], v41);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v24 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v21, v10, v23);
  v25 = *(v11 + 8);
  v25(v21, v10);
  v26 = sub_2146D8D88();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  sub_2146D8C38();
  sub_2145E5A74(v18);
  sub_2146D8D38();
  v25(v18, v10);
  v27 = *(v51 + 8);
  v51 += 8;
  v46 = v27;
  v27(v3, v52);
  sub_214503110(v6);
  v28 = v43;
  MEMORY[0x216053B10](v21, v24);
  v38 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v29 = v48;
  MEMORY[0x216053AF0](v28, v48, v38);
  v30 = *(v50 + 8);
  v50 += 8;
  v40 = v30;
  v30(v28, v29);
  v53 = v55[0];
  v54 = v55[1];
  v39 = v21;
  sub_2146D8C08();

  sub_2146D8C38();
  v31 = v42;
  sub_2146D8D08();
  v32 = v44;
  sub_2146D8D08();
  v37 = v18;
  sub_2146D8CD8();
  v25(v32, v10);
  v25(v31, v10);
  v46(v3, v52);
  sub_2146D8C38();
  sub_2146D8D08();
  v33 = v47;
  v34 = v48;
  sub_2146D8D08();
  sub_2146D8CD8();
  v25(v32, v10);
  v25(v31, v10);
  v46(v3, v52);
  v25(v37, v10);
  v25(v39, v10);
  v40(v33, v34);
  return (v25)(v49, v10);
}

uint64_t sub_2145E5A74@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = sub_2146D8D48();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v21 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - v13;
  MEMORY[0x28223BE20](v12);
  v21[0] = v21 - v15;
  v24 = 63;
  v25 = 0xE100000000000000;
  v16 = sub_2145031D0();
  MEMORY[0x216053AF0](v26, &v24, MEMORY[0x277D837D0], v16);
  v17 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v14, v4, v17);
  v18 = *(v5 + 8);
  v18(v14, v4);
  v24 = v26[0];
  v25 = v26[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  v19 = v21[0];
  sub_2146D8D08();
  sub_2146D8CD8();
  v18(v8, v4);
  v18(v11, v4);
  (*(v22 + 8))(v3, v23);
  v18(v14, v4);
  return (v18)(v19, v4);
}

unint64_t sub_2145E5EB4(uint64_t a1)
{
  *(a1 + 8) = sub_2142FEA74();
  result = sub_2142FECFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145E5EF4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2145E6064@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2145E61D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2145E6344@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2145E64B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145E6500(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E655C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_2145E65B4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6BC(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2145E661C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145E6674(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[8].n128_i64[0];
  v7 = v1[8].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u64[1] = v4;
  v1[9].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E66DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  *a1 = *(v1 + 152);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145E6734(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 152) = *a1;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  return result;
}

uint64_t sub_2145E679C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = *(v1 + 224);
  *a1 = *(v1 + 192);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145E67F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[13].n128_i64[0];
  v7 = v1[13].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u64[0] = v3;
  v1[13].n128_u64[1] = v4;
  v1[14].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E685C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  v5 = *(v1 + 264);
  *a1 = *(v1 + 232);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145E68B4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 232) = *a1;
  *(v1 + 248) = v3;
  *(v1 + 256) = v4;
  *(v1 + 264) = v5;
  return result;
}

uint64_t sub_2145E691C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145E6998()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6A20()
{
  v1 = *(v0 + 136);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 128);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6AA8()
{
  v1 = *(v0 + 176);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 168);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6B30()
{
  v1 = *(v0 + 216);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 208);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6BB8()
{
  v1 = *(v0 + 256);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 248);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

void sub_2145E6C40(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2145E6D88(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145E6E24(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_2145E6EBC(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2145E6F88(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A2164;
  }

  return result;
}

void (*sub_2145E7028(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A2420;
}

uint64_t sub_2145E7104(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t sub_2145E7134()
{
  v1 = *(v0 + 96);

  return v1;
}

void sub_2145E7164(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_2145E71BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 136);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 128);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2145E7230(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2145E72E0(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145E73AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 136);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 128);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145E744C;
  }

  return result;
}

uint64_t sub_2145E744C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2145E758C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  *a2 = *(a1 + 112);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145E75E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 128);
  v9 = *(a2 + 136);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v5;
  *(a2 + 136) = v6;
  *(a2 + 144) = v7;
  return result;
}

void (*sub_2145E7668(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145E7708;
}

void sub_2145E7708(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 128);
  v10 = *(v3 + 136);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v8;
  }

  free(v2);
}

uint64_t sub_2145E77E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 176);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 168);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2145E785C(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2145E790C(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145E79D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 176);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 168);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145E7A78;
  }

  return result;
}

uint64_t sub_2145E7A78(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2145E7BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  *a2 = *(a1 + 152);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145E7C0C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 168);
  v9 = *(a2 + 176);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 152) = v4;
  *(a2 + 160) = v3;
  *(a2 + 168) = v5;
  *(a2 + 176) = v6;
  *(a2 + 184) = v7;
  return result;
}

void (*sub_2145E7C94(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  v8 = *(v1 + 184);
  *v4 = *(v1 + 152);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145E7D34;
}

void sub_2145E7D34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 168);
  v10 = *(v3 + 176);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 152) = v5;
    *(v3 + 160) = v4;
    *(v3 + 168) = v7;
    *(v3 + 176) = v6;
    *(v3 + 184) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 152) = v5;
    *(v3 + 160) = v4;
    *(v3 + 168) = v7;
    *(v3 + 176) = v6;
    *(v3 + 184) = v8;
  }

  free(v2);
}

uint64_t sub_2145E7E14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 216);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 208);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2145E7E88(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2145E7F38(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145E8004(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 216);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 208);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145E80A4;
  }

  return result;
}

uint64_t sub_2145E80A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2145E81E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  v4 = *(a1 + 216);
  v5 = *(a1 + 224);
  *a2 = *(a1 + 192);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145E8238(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 208);
  v9 = *(a2 + 216);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 192) = v4;
  *(a2 + 200) = v3;
  *(a2 + 208) = v5;
  *(a2 + 216) = v6;
  *(a2 + 224) = v7;
  return result;
}

void (*sub_2145E82C0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);
  *v4 = *(v1 + 192);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145E8360;
}

void sub_2145E8360(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 208);
  v10 = *(v3 + 216);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    *(v3 + 208) = v7;
    *(v3 + 216) = v6;
    *(v3 + 224) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    *(v3 + 208) = v7;
    *(v3 + 216) = v6;
    *(v3 + 224) = v8;
  }

  free(v2);
}

uint64_t sub_2145E8440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 256);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 248);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2145E84B4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2145E8564(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145E8630(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 256);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 248);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145E86D0;
  }

  return result;
}

uint64_t sub_2145E86D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2145E8810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 240);
  v3 = *(a1 + 248);
  v4 = *(a1 + 256);
  v5 = *(a1 + 264);
  *a2 = *(a1 + 232);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145E8864(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 248);
  v9 = *(a2 + 256);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 232) = v4;
  *(a2 + 240) = v3;
  *(a2 + 248) = v5;
  *(a2 + 256) = v6;
  *(a2 + 264) = v7;
  return result;
}

void (*sub_2145E88EC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  v8 = *(v1 + 264);
  *v4 = *(v1 + 232);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145E898C;
}

void sub_2145E898C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 248);
  v10 = *(v3 + 256);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 232) = v5;
    *(v3 + 240) = v4;
    *(v3 + 248) = v7;
    *(v3 + 256) = v6;
    *(v3 + 264) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 232) = v5;
    *(v3 + 240) = v4;
    *(v3 + 248) = v7;
    *(v3 + 256) = v6;
    *(v3 + 264) = v8;
  }

  free(v2);
}

uint64_t sub_2145E8A6C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x109uLL);
  memcpy(a1, v1, 0x109uLL);
  return sub_2142FB7A4(__dst, v4);
}

void *sub_2145E8AC0(const void *a1)
{
  memcpy(__dst, v1, 0x109uLL);
  sub_2142FB6FC(__dst);
  return memcpy(v1, a1, 0x109uLL);
}

uint64_t sub_2145E8B30@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NicknameInformationMessage(0) + 20);

  return sub_21405CD6C(v3, a1);
}

uint64_t type metadata accessor for NicknameInformationMessage(uint64_t a1)
{
  result = qword_27C916508;
  if (!qword_27C916508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2145E8BC0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NicknameInformationMessage(0) + 20);

  return sub_21405CDD8(a1, v3);
}

unint64_t sub_2145E8C4C(uint64_t a1)
{
  *(a1 + 8) = sub_2142FB854();
  result = sub_2142FB8A8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145E8C7C(uint64_t a1)
{
  *(a1 + 8) = sub_2145E8CE4(&qword_27C9164F8, aY_106);
  result = sub_2145E8CE4(&qword_27C916500, asc_2146FB4B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145E8CE4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for NicknameInformationMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2145E8D30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 265))
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

uint64_t sub_2145E8D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 265) = 1;
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

    *(result + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145E8E34(uint64_t a1)
{
  result = type metadata accessor for Metadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145E8EB0(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E8FD8(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E90C4(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E91AC(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E92CC(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E9400(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E9508(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E9610(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E9678(char a1)
{
  sub_2146DA958();
  sub_21405019C(*&a420v_0[8 * a1], 0xE400000000000000);
  sub_2146DA998();
  return sub_2146DA9B8();
}

uint64_t sub_2145E96D4(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E97E0(unsigned __int8 a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t MBDRichCard.dictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = v0[1];
  v25 = *v0;
  v26 = v2;
  v27 = v0[2];
  v28 = *(v0 + 48);
  v4 = *(v0 + 42);
  v3 = *(v0 + 43);
  v6 = *(v0 + 47);
  v5 = *(v0 + 48);
  v7 = *(v0 + 50);
  v23 = *(v0 + 408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_214737980;
  *(v8 + 32) = 0x74756F79616CLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = sub_21405B7F4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *(v8 + 48) = v9;
  *(v8 + 72) = v10;
  *(v8 + 80) = 0x616964656DLL;
  *(v8 + 88) = 0xE500000000000000;
  memcpy(__dst, v1 + 56, 0x101uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
  {
    v11 = 0;
    v12 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  else
  {
    memcpy(v24, __dst, 0x101uLL);
    v11 = sub_2144158B8();
    v12 = v10;
  }

  *(v8 + 96) = v11;
  *(v8 + 120) = v12;
  *(v8 + 128) = 0x656C746974;
  *(v8 + 136) = 0xE500000000000000;
  if (v3 == 1 || (!v3 ? (v14 = 0, v15 = 0, v13 = 0, *(v8 + 160) = 0) : (v13 = MEMORY[0x277D837D0], v14 = v4, v15 = v3), *(v8 + 144) = v14, *(v8 + 152) = v15, *(v8 + 168) = v13, *(v8 + 176) = 0x6373654464726163, *(v8 + 184) = 0xEF6E6F6974706972, v5 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v16 = MEMORY[0x277D837D0];
      v17 = v6;
      v18 = v5;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v16 = 0;
      *(v8 + 208) = 0;
    }

    *(v8 + 192) = v17;
    *(v8 + 200) = v18;
    *(v8 + 216) = v16;
    *(v8 + 224) = 0x7473694C70696863;
    *(v8 + 232) = 0xE800000000000000;
    if (v7)
    {
      v24[0] = v7;
      LOBYTE(v24[1]) = v23 & 1;
      sub_213FDC9D0(v4, v3);
      sub_213FDC9D0(v6, v5);
      v19 = MBDChipList.dictionaryRepresentation.getter();
      *(v8 + 264) = v10;
      *(v8 + 240) = v19;
    }

    else
    {
      *(v8 + 240) = 0u;
      *(v8 + 256) = 0u;
      sub_213FDC9D0(v4, v3);
      sub_213FDC9D0(v6, v5);
    }

    v20 = sub_214045690(v8);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v21 = sub_2140418B8(v20);

    return v21;
  }

  return result;
}

double sub_2145E9C1C(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

unint64_t sub_2145E9D18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2145EB038(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2145E9D48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x74756F79616CLL;
  v5 = 0xEF6E6F6974706972;
  v6 = 0x6373654464726163;
  v7 = 0xE800000000000000;
  v8 = 0x7473694C70696863;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000214788010;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x616964656DLL;
  if (v2 != 1)
  {
    v9 = 0x656C746974;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
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

uint64_t sub_2145E9E0C()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x6373654464726163;
  v4 = 0x7473694C70696863;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616964656DLL;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

unint64_t sub_2145E9ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2145EB038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2145E9EF4(uint64_t a1)
{
  v2 = sub_2145EABC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145E9F30(uint64_t a1)
{
  v2 = sub_2145EABC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDRichCard.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916518, &qword_214767BC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2145EABC4();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v6;
    v80 = 0;
    sub_2145EAC18();
    sub_2146DA0D8();
    v76 = v81;
    v77 = v82;
    v78 = v83;
    v79 = v84;
    v74[263] = 1;
    sub_2145EAC6C();
    sub_2146DA0C8();
    memcpy(v74, v75, 0x101uLL);
    LOBYTE(v51[0]) = 2;
    v11 = sub_2146DA0F8();
    v13 = v12;
    v50 = v11;
    LOBYTE(v51[0]) = 3;
    v44 = sub_2146DA0F8();
    v49 = v14;
    v71 = 4;
    sub_21409F598();
    sub_2146DA0C8();
    v36 = v72;
    v37 = v73;
    sub_2142FF3F8(&v76, v51);
    sub_2145EAD28(v74, v51);
    sub_21462CA80(v51);
    v47 = v51[2];
    v48 = v51[1];
    v45 = v51[0];
    v46 = v51[3];
    v16 = LOBYTE(v51[4]);
    sub_21462CBCC(&v63);
    v39 = v63;
    v41 = v65;
    v42 = v64;
    v43 = v66;
    v40 = v67;
    v68[0] = v76;
    v68[1] = v77;
    v68[2] = v78;
    LOBYTE(v68[3]) = v79;
    memcpy(&v68[3] + 8, v74, 0x101uLL);
    v63 = v50;
    v64 = v13;
    v35 = v16;
    v62 = v16;
    v33 = 0xD000000000000011;
    v34 = 0x800000021478F910;
    v51[0] = 0xD000000000000011;
    v51[1] = 0x800000021478F910;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    v38 = 0x800000021478A360;

    sub_213FDC9D0(v47, v46);
    v17 = v45(&v63, &v62, v51);
    v18 = v33;
    if (v17)
    {
      sub_213FDC6D0(v47, v46);
      v19 = v38;

      sub_213FDC6D0(v47, v46);
      v63 = v44;
      v64 = v49;
      v62 = v40;
      v46 = 0xD00000000000001BLL;
      v47 = 0x800000021478F930;
      v51[0] = 0xD00000000000001BLL;
      v51[1] = 0x800000021478F930;
      v51[2] = 0xD00000000000001CLL;
      v51[3] = v19;

      sub_213FDC9D0(v41, v43);
      v20 = v39(&v63, &v62, v51);
      v26 = v47;
      if (v20)
      {
        v27 = v41;
        sub_213FDC6D0(v41, v43);

        sub_21405C980(&v76);
        sub_2145EACC0(v74);
        (*(v10 + 8))(v8, v5);
        v28 = v42;

        sub_213FDC6D0(v27, v43);
        memcpy(a2, v68, 0x140uLL);
        v29 = v48;
        *(a2 + 320) = v45;
        *(a2 + 328) = v29;
        *(a2 + 336) = v50;
        *(a2 + 344) = v13;
        *(a2 + 352) = v35;
        *(a2 + 360) = v39;
        *(a2 + 368) = v28;
        v30 = v49;
        *(a2 + 376) = v44;
        *(a2 + 384) = v30;
        *(a2 + 392) = v40;
        *(a2 + 400) = v36;
        *(a2 + 408) = v37;
        return __swift_destroy_boxed_opaque_existential_1(v85);
      }

      sub_214031C4C();
      swift_allocError();
      *v31 = v46;
      v31[1] = v26;
      v31[2] = 0xD00000000000001CLL;
      v31[3] = v38;
      swift_willThrow();

      sub_21405C980(&v76);
      sub_2145EACC0(v74);
      (*(v10 + 8))(v8, v5);

      sub_213FDC6D0(v41, v43);
      v24 = v50;
      v25 = v13;
      v23 = v48;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v21 = v34;
      *v22 = v18;
      v22[1] = v21;
      v22[2] = 0xD00000000000001CLL;
      v22[3] = v38;
      swift_willThrow();

      sub_21405C980(&v76);
      sub_2145EACC0(v74);
      (*(v10 + 8))(v8, v5);
      v23 = v48;

      v25 = v46;
      v24 = v47;
      sub_213FDC6D0(v47, v46);
    }

    memcpy(v51, v68, 0x140uLL);
    v51[40] = v45;
    v51[41] = v23;
    v51[42] = v24;
    v51[43] = v25;
    v52 = v35;
    *v53 = *v70;
    *&v53[3] = *&v70[3];
    v54 = v39;
    v55 = v42;
    v56 = v41;
    v57 = v43;
    v58 = v40;
    *v59 = v69[0];
    *&v59[3] = *(v69 + 3);
    v60 = v36;
    v61 = v37;
    sub_2142FF1F4(v51);
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t MBDRichCard.encode(to:configuration:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916538, &qword_214767BD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = v1[1];
  v32 = *v1;
  v33 = v7;
  v34 = v1[2];
  v35 = *(v1 + 48);
  memcpy(v36, v1 + 56, 0x101uLL);
  v8 = *(v1 + 43);
  v17 = *(v1 + 42);
  v18 = v8;
  v9 = *(v1 + 47);
  v15 = *(v1 + 48);
  v16 = v9;
  v19 = *(v1 + 50);
  HIDWORD(v14) = *(v1 + 408);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145EABC4();
  sub_2146DAA28();
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v27 = 0;
  sub_2142FF3F8(&v32, v24);
  sub_2145EAD98();
  v10 = v37;
  sub_2146DA2A8();
  if (v10)
  {
    v24[0] = v28;
    v24[1] = v29;
    v24[2] = v30;
    LOBYTE(v24[3]) = v31;
    sub_21405C980(v24);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v25[0] = v28;
    v25[1] = v29;
    v25[2] = v30;
    v26 = v31;
    sub_21405C980(v25);
    memcpy(v24, v36, 0x101uLL);
    v23[263] = 1;
    sub_2145EAD28(v36, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
    sub_2145EAE40(&qword_27C916548, &qword_27C908918, &qword_214767BD0, sub_2145EADEC);
    sub_2146DA2A8();
    memcpy(v23, v24, 0x101uLL);
    sub_2145EACC0(v23);
    if (v18 == 1 || (v12 = v4, v21 = v17, v22 = v18, v20 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v13 = v19, v15 == 1))
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v21 = v16;
      v22 = v15;
      v20 = 3;
      sub_2146DA388();
      v21 = v13;
      LOBYTE(v22) = BYTE4(v14);
      v20 = 4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
      sub_2145EAE40(&qword_27C916558, &qword_27C908928, &qword_2146F5230, sub_2145EAEBC);
      sub_2146DA2A8();

      return (*(v12 + 8))(v6, 0);
    }
  }

  return result;
}

unint64_t sub_2145EABC4()
{
  result = qword_27C916520;
  if (!qword_27C916520)
  {
    result = swift_getWitnessTable(byte_214767D70, &_s19CodingConfigurationV10CodingKeysON_13, v0, v1);
    atomic_store(result, &qword_27C916520);
  }

  return result;
}

unint64_t sub_2145EAC18()
{
  result = qword_27C916528;
  if (!qword_27C916528)
  {
    result = swift_getWitnessTable(aI_43, &type metadata for MBDRichCardLayout, v0, v1);
    atomic_store(result, &qword_27C916528);
  }

  return result;
}

unint64_t sub_2145EAC6C()
{
  result = qword_27C916530;
  if (!qword_27C916530)
  {
    result = swift_getWitnessTable(byte_21473CFE8, &type metadata for MBDRichCardMedia, v0, v1);
    atomic_store(result, &qword_27C916530);
  }

  return result;
}

uint64_t sub_2145EACC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2145EAD28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2145EAD98()
{
  result = qword_27C916540;
  if (!qword_27C916540)
  {
    result = swift_getWitnessTable(asc_2146EC098, &type metadata for MBDRichCardLayout, v0, v1);
    atomic_store(result, &qword_27C916540);
  }

  return result;
}

unint64_t sub_2145EADEC()
{
  result = qword_27C916550;
  if (!qword_27C916550)
  {
    result = swift_getWitnessTable(byte_21473D018, &type metadata for MBDRichCardMedia, v0, v1);
    atomic_store(result, &qword_27C916550);
  }

  return result;
}

uint64_t sub_2145EAE40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2145EAEBC()
{
  result = qword_27C916560;
  if (!qword_27C916560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipList, &type metadata for MBDChipList, v0, v1);
    atomic_store(result, &qword_27C916560);
  }

  return result;
}

unint64_t sub_2145EAF34()
{
  result = qword_27C916568;
  if (!qword_27C916568)
  {
    result = swift_getWitnessTable(byte_214767D48, &_s19CodingConfigurationV10CodingKeysON_13, v0, v1);
    atomic_store(result, &qword_27C916568);
  }

  return result;
}

unint64_t sub_2145EAF8C()
{
  result = qword_27C916570;
  if (!qword_27C916570)
  {
    result = swift_getWitnessTable(a3_0, &_s19CodingConfigurationV10CodingKeysON_13, v0, v1);
    atomic_store(result, &qword_27C916570);
  }

  return result;
}

unint64_t sub_2145EAFE4()
{
  result = qword_27C916578;
  if (!qword_27C916578)
  {
    result = swift_getWitnessTable(a1_13, &_s19CodingConfigurationV10CodingKeysON_13, v0, v1);
    atomic_store(result, &qword_27C916578);
  }

  return result;
}

unint64_t sub_2145EB038(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2145EB084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2145EB0F8@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v2 = *(v1 - 8);
  v67 = v1;
  v68 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = &v59 - v5;
  v77 = sub_2146D8D48();
  v79 = *(v77 - 8);
  v6 = MEMORY[0x28223BE20](v77);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v59 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v78 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v59 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v63 = &v59 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v75 = &v59 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v59 - v32;
  if (qword_27C903268 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v21, qword_27CA19F18);
  v60 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v34, v21, v60);
  v35 = sub_2146D8D88();
  v36 = *(*(v35 - 8) + 56);
  v74 = v33;
  v36(v73, 1, 1, v35);
  sub_2146D8C38();
  v36(v14, 1, 1, v35);
  sub_2146D8C38();
  sub_2145EB8F8(v24);
  v37 = v27;
  v62 = v27;
  v38 = MEMORY[0x277D83E40];
  sub_2146D8D28();
  v72 = *(v78 + 8);
  v78 += 8;
  v72(v24, v21);
  v39 = v10;
  v40 = *(v79 + 8);
  v79 += 8;
  v40(v8, v77);
  v41 = v40;
  v61 = v40;
  sub_214503110(v14);
  v42 = v64;
  MEMORY[0x216053B60](v37, v38);
  v43 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88, MEMORY[0x277D853F8]);
  v44 = v65;
  v45 = v67;
  MEMORY[0x216053AF0](v42, v67, v43);
  v46 = *(v68 + 8);
  v46(v42, v45);
  v47 = v63;
  sub_2146D8C08();
  v46(v44, v45);
  v48 = v75;
  v49 = v73;
  v50 = MEMORY[0x277D83E40];
  v59 = v21;
  sub_2146D8D38();
  v72(v47, v21);
  v41(v39, v77);
  sub_214503110(v49);
  v51 = v66;
  MEMORY[0x216053B10](v48, v50);
  v52 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v53 = v69;
  MEMORY[0x216053AF0](v51, v69, v52);
  v73 = *(v70 + 8);
  (v73)(v51, v53);
  v54 = v59;
  sub_2146D8C08();
  sub_2146D8C38();
  v55 = v54;
  sub_2146D8D08();
  v56 = v62;
  sub_2146D8D08();
  sub_2146D8CD8();
  v57 = v72;
  v72(v56, v55);
  v57(v47, v55);
  v61(v39, v77);
  v57(v75, v55);
  (v73)(v76, v53);
  return (v57)(v74, v55);
}

uint64_t sub_2145EB8F8@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_2146D8D48();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v25 = 58;
  v26 = 0xE100000000000000;
  v17 = sub_2145031D0();
  MEMORY[0x216053AF0](v27, &v25, MEMORY[0x277D837D0], v17);
  if (qword_27C903270 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_27CA19F30);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v18, v4, v19);
  v25 = v27[0];
  v26 = v27[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v11, v4);
  (*(v23 + 8))(v3, v24);
  v20(v14, v4);
  return (v20)(v16, v4);
}

uint64_t sub_2145EBC5C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v36 - v12;
  v13 = sub_2146D8D48();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x28223BE20](v13);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v39 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_2146D8C38();
  sub_2146D8C88();
  v25 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  MEMORY[0x216053AF0](v5, v1, v25);
  v26 = *(v2 + 8);
  v26(v5, v1);
  v27 = v38;
  sub_2146D8C08();
  v26(v7, v1);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v28 = v40;
  v29 = v27;
  v30 = MEMORY[0x277D83E40];
  v31 = v43;
  v32 = v37;
  sub_2146D8D18();
  (*(v44 + 8))(v29, v31);
  (*(v41 + 8))(v32, v42);
  sub_214503110(v17);
  MEMORY[0x216053B90](v28, v30);
  v33 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  MEMORY[0x216053AF0](v21, v18, v33);
  v34 = *(v39 + 8);
  v34(v21, v18);
  sub_2146D8C08();
  return (v34)(v23, v18);
}

uint64_t sub_2145EC190@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_2146D8D48();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v4;
  v5 = sub_2146D8C48();
  v30 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v32 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_27CA19E08);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v29 = v12;
  MEMORY[0x216053AD0](v18, v12, v19);
  v39 = 11615;
  v40 = 0xE200000000000000;
  sub_2146D8D58();
  sub_2146D8D78();
  v20 = sub_2145030B8();
  MEMORY[0x216053AD0](v9, v5, v20);
  v28 = v17;
  v21 = *(v30 + 8);
  v21(v9, v5);
  v22 = v31;
  sub_2146D8BE8();
  v23 = v33;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v24 = MEMORY[0x277D83E40];
  v25 = v35;
  sub_2146D8CF8();
  (*(v36 + 8))(v23, v37);
  MEMORY[0x216053B70](v15, v24);
  (*(v34 + 8))(v22, v25);
  v21(v11, v5);
  return (*(v32 + 8))(v28, v29);
}

uint64_t sub_2145EC62C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145EC674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145EC6C8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2145EC6F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_2145EC718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146DA428();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_2145EC774(uint64_t a1)
{
  v2 = sub_2144EE044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145EC7B0(uint64_t a1)
{
  v2 = sub_2144EE044();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2145EC7F0()
{
  result = qword_280B34838;
  if (!qword_280B34838)
  {
    result = swift_getWitnessTable(byte_214767EC0, &type metadata for XPCCodingKey, v0, v1);
    atomic_store(result, &qword_280B34838);
  }

  return result;
}

unint64_t sub_2145EC848()
{
  result = qword_280B34840;
  if (!qword_280B34840)
  {
    result = swift_getWitnessTable(byte_214767EE8, &type metadata for XPCCodingKey, v0, v1);
    atomic_store(result, &qword_280B34840);
  }

  return result;
}

unint64_t sub_2145EC8C4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916610, &qword_214779300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = sub_2142E43D0();
  *(v4 + 32) = &type metadata for BaseWritingDirectionAttribute;
  *(v4 + 40) = v5;
  v6 = sub_2142E4328();
  *(v4 + 48) = &type metadata for MessagePartAttribute;
  *(v4 + 56) = v6;
  v7 = sub_2142E3A1C();
  *(v4 + 64) = &type metadata for FileTransferAttribute;
  *(v4 + 72) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C70, &qword_2147319F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v8 + 16) = sub_2145ED9C0;
  *(v8 + 24) = v9;
  *(v3 + 32) = v8;
  v10 = sub_2142E037C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904100, &unk_2146EAA50);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_2145ED9C8;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214043C30(inited, a1);
}

unint64_t sub_2145ECA68@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t BasicMessage.$content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_2142E5A68(v3, v4, v5);
}

__n128 BasicMessage.$content.setter(uint64_t a1)
{
  v9 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_214032578(v5, v6, v7);
  result = v9;
  *(v1 + 32) = *a1;
  *(v1 + 48) = v9;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

uint64_t BasicMessage.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 BasicMessage.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  return result;
}

uint64_t BasicMessage.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  if (v2 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = v1[7];
    v4 = v1[8];
    *a1 = v2;
    a1[1] = v3;
    a1[2] = v4;

    return sub_214031CA0(v2, v3, v4);
  }

  return result;
}

void BasicMessage.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 96))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t BasicMessage.plainTextBody.getter()
{
  v1 = *v0;

  return v1;
}

void BasicMessage.plainTextBody.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t BasicMessage.plainTextSubject.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void BasicMessage.plainTextSubject.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2145ECF54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[6];
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = a1[7];
    v6 = a1[8];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;

    return sub_214031CA0(v4, v5, v6);
  }

  return result;
}

double sub_2145ECFCC(uint64_t *a1)
{
  sub_21403220C(*a1, a1[1], a1[2], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t BasicMessage.content.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_21403220C(*a1, v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_214031CE0(v1, v2, v3);
}

uint64_t (*BasicMessage.content.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1[6];
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = v1[7];
    v5 = v1[8];
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    sub_214031CA0(v3, v4, v5);
    return sub_2145ED1FC;
  }

  return result;
}

uint64_t sub_2145ED1FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_214031CA0(*a1, v3, v4);
    sub_21403220C(v2, v3, v4, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_214031CE0(v2, v3, v4);
  }

  else
  {
    sub_21403220C(*a1, v3, v4, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_214031CE0(v2, v3, v4);
}

uint64_t sub_2145ED350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *a2 = *(a1 + 32);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;

  return sub_2142E5A68(v3, v4, v5);
}

uint64_t sub_2145ED3B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v12 = *(a1 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);

  sub_2142E5A68(v5, v6, v7);

  result = sub_214032578(v8, v9, v10);
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v12;
  return result;
}

void (*BasicMessage.$content.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;

  sub_2142E5A68(v6, v7, v8);
  return sub_2145ED50C;
}

void sub_2145ED50C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[1];
  v14 = **a1;
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v15 = *(*a1 + 40);
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  if (a2)
  {

    sub_2142E5A68(v6, v5, v7);

    sub_214032578(v8, v9, v10);
    *(v3 + 32) = v14;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = v7;
    *(v3 + 72) = v15;
    v11 = v2[2];
    v12 = v2[3];
    v13 = v2[4];

    sub_214032578(v11, v12, v13);
  }

  else
  {

    sub_214032578(v8, v9, v10);
    *(v3 + 32) = v14;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = v7;
    *(v3 + 72) = v15;
  }

  free(v2);
}

void BasicMessage.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 80);
  v6 = *(v1 + 104);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 96) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*BasicMessage.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214394968;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*BasicMessage.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_214394C54;
}

unint64_t sub_2145ED8B8(uint64_t a1)
{
  *(a1 + 8) = sub_214322730();
  result = sub_214322508();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145ED90C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145ED954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145EDAC0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  v7 = *(v3 + 20);
  v8 = *(v3 + 21);
  LOBYTE(v3) = *(v3 + 22);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 20) = v7;
  *(a1 + 16) = v6;
  *(a1 + 21) = v8;
  *(a1 + 22) = v3;
}

__n128 sub_2145EDB48(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];
  v6 = a1[1].n128_u8[6];
  v7 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u8[4] = v4;
  v7[1].n128_u32[0] = v3;
  v7[1].n128_u8[5] = v5;
  v7[1].n128_u8[6] = v6;
  return result;
}

unint64_t sub_2145EDBC0()
{
  v1 = v0 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36);
  if ((*(v1 + 21) & 1) == 0)
  {
    return *(v1 + 16) | ((*(v1 + 20) & 1) << 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145EDD20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EDD78(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[7].n128_i64[0];
  v7 = v1[7].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u64[1] = v4;
  v1[8].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EDE30()
{
  if (*(v0 + 120) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 112);

    return v1;
  }

  return result;
}

unint64_t sub_2145EDEC8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DF24;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF28;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF54;
  *(v9 + 24) = v10;
  *(v3 + 32) = v9;
  v11 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145EE0D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 408);
  v3 = *(v1 + 416);
  v4 = *(v1 + 424);
  v5 = *(v1 + 432);
  *a1 = *(v1 + 400);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EE130(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[26].n128_i64[0];
  v7 = v1[26].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[25] = *a1;
  v1[26].n128_u64[0] = v3;
  v1[26].n128_u64[1] = v4;
  v1[27].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EE198()
{
  if (*(v0 + 424) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 416);

    return v1;
  }

  return result;
}

unint64_t sub_2145EE254@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E0070(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042A28(inited, a5);
}

unint64_t sub_2145EE43C@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904148, qword_21476AE20);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0x3E800000001;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E05D4(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E8, &unk_2147319D0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214045004(inited, a5);
}

uint64_t sub_2145EE578@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EE5D0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EE638@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EE690(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2145EE6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2145EE784(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EE814@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 40));
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v4 + 4);
  v8 = *(v4 + 20);
  v9 = *(v4 + 21);
  LOBYTE(v4) = *(v4 + 22);
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 20) = v8;
  *(a2 + 16) = v7;
  *(a2 + 21) = v9;
  *(a2 + 22) = v4;
}

__n128 sub_2145EE89C(__n128 *a1, uint64_t (*a2)(void))
{
  v4 = a1[1].n128_u32[0];
  v5 = a1[1].n128_u8[4];
  v6 = a1[1].n128_u8[5];
  v7 = a1[1].n128_u8[6];
  v8 = (v2 + *(a2(0) + 40));

  result = *a1;
  *v8 = *a1;
  v8[1].n128_u8[4] = v5;
  v8[1].n128_u32[0] = v4;
  v8[1].n128_u8[5] = v6;
  v8[1].n128_u8[6] = v7;
  return result;
}