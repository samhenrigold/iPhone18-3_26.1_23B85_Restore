unint64_t sub_24F2595A4()
{
  result = qword_27F23CF10;
  if (!qword_27F23CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF10);
  }

  return result;
}

unint64_t sub_24F2595FC()
{
  result = qword_27F23CF18;
  if (!qword_27F23CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF18);
  }

  return result;
}

unint64_t sub_24F259654()
{
  result = qword_27F23CF20;
  if (!qword_27F23CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF20);
  }

  return result;
}

unint64_t sub_24F2596AC()
{
  result = qword_27F23CF28;
  if (!qword_27F23CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF28);
  }

  return result;
}

unint64_t sub_24F259704()
{
  result = qword_27F23CF30;
  if (!qword_27F23CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF30);
  }

  return result;
}

unint64_t sub_24F25975C()
{
  result = qword_27F23CF38;
  if (!qword_27F23CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF38);
  }

  return result;
}

unint64_t sub_24F2597B4()
{
  result = qword_27F23CF40;
  if (!qword_27F23CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF40);
  }

  return result;
}

unint64_t sub_24F25980C()
{
  result = qword_27F23CF48;
  if (!qword_27F23CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF48);
  }

  return result;
}

unint64_t sub_24F259864()
{
  result = qword_27F23CF50;
  if (!qword_27F23CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF50);
  }

  return result;
}

uint64_t sub_24F2598B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7641726579616C70 && a2 == 0xED00007372617461;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F2599D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA70A70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24F259C70@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

char *DynamicTypeTextView.__allocating_init(useCase:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = [objc_allocWithZone(v1) initWithFrame_];
  v7 = sub_24F922378();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  v10 = v6;
  sub_24E61DA68(v5, v6 + v9, &qword_27F222038, &unk_24F9689B0);
  swift_endAccess();

  return v10;
}

char *DynamicTypeTextView.__allocating_init(textStyle:)(__int128 *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame_];
  sub_24E612C80(a1, v7);
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  v5 = v3;
  sub_24E61DA68(v7, v3 + v4, &qword_27F22E6E8, &qword_24F998F88);
  swift_endAccess();

  return v5;
}

id DynamicTypeTextView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicTypeTextView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  v10 = sub_24F922378();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_hyphenationFactor] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for DynamicTypeTextView(0);
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_textContainer_, 0, a1, a2, a3, a4);
  sub_24F25A180();

  return v13;
}

uint64_t type metadata accessor for DynamicTypeTextView(uint64_t a1)
{
  result = qword_27F23CF78;
  if (!qword_27F23CF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DynamicTypeTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_24F25A180()
{
  swift_getObjectType();
  [v0 setTextContainerInset_];
  v1 = [v0 textContainer];
  [v1 setLineFragmentPadding_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E720, &qword_24F9D9CC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = sub_24F922E88();
  v4 = MEMORY[0x277D74DB8];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_24F92C2C8();
  swift_unknownObjectRelease();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24F922D78();
  v7 = MEMORY[0x277D74B90];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_24F92C2C8();
  swift_unknownObjectRelease();

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v0 selector:sel_buttonShapesDidChange name:*MEMORY[0x277D76450] object:0];
}

id sub_24F25A344()
{
  result = [v0 text];
  if (result)
  {

    result = [v0 text];
    if (result)
    {
      v2 = result;
      sub_24F92B0D8();

      v3 = sub_24F92B228();

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_24F25A3EC(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 textContainer];
  v4 = [v3 maximumNumberOfLines];

  *a1 = v4;
  return sub_24F25A468;
}

void sub_24F25A474(uint64_t *a1, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = [*a2 textContainer];
  [v7 *a5];
}

id sub_24F25A4E8(SEL *a1)
{
  v3 = [v1 textContainer];
  v4 = [v3 *a1];

  return v4;
}

void sub_24F25A544(uint64_t a1, SEL *a2)
{
  v5 = [v2 textContainer];
  [v5 *a2];
}

void (*sub_24F25A5B4(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 textContainer];
  v4 = [v3 lineBreakMode];

  *a1 = v4;
  return sub_24F25A630;
}

void sub_24F25A63C(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = [a1[1] textContainer];
  [v5 *a3];
}

uint64_t sub_24F25A6A4()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 text];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24F92B0D8();
    v10 = v9;

    v14[0] = v8;
    v14[1] = v10;
    sub_24F91EA78();
    sub_24E600AEC();
    sub_24F92C508();
    LOBYTE(v7) = v11;
    (*(v2 + 8))(v5, v1);

    v12 = v7 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double sub_24F25A7EC()
{
  v1 = [v0 font];
  if (!v1)
  {
    return *MEMORY[0x277D768C8];
  }

  v2 = v1;
  sub_24F92C278();
  v4 = v3;

  return v4;
}

uint64_t sub_24F25A874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F222038, &unk_24F9689B0);
  return sub_24F25A988(v4);
}

uint64_t sub_24F25A920@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F222038, &unk_24F9689B0);
}

uint64_t sub_24F25A988(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4 + 16;
  v6 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v6, &qword_27F222038, &unk_24F9689B0);
  swift_endAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F222038, &unk_24F9689B0);
  v7 = sub_24F922378();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_24E601704(a1, &qword_27F222038, &unk_24F9689B0);
    a1 = v5;
  }

  else
  {
    sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v8 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
    swift_beginAccess();
    sub_24E9CBF30(v12, v1 + v8, &qword_27F22E6E8, &qword_24F998F88);
    swift_endAccess();
    sub_24F25B25C();
    v9 = sub_24E601704(v12, &qword_27F22E6E8, &qword_24F998F88);
    (*((*MEMORY[0x277D85000] & *v1) + 0x208))(v9);
  }

  return sub_24E601704(a1, &qword_27F222038, &unk_24F9689B0);
}

void (*sub_24F25AB94(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  swift_beginAccess();
  return sub_24F25AC60;
}

void sub_24F25AC60(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[12];
    sub_24E60169C(v3[11] + v3[13], v4, &qword_27F222038, &unk_24F9689B0);
    v5 = sub_24F922378();
    v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
    sub_24E601704(v4, &qword_27F222038, &unk_24F9689B0);
    if (v6 != 1)
    {
      v7 = v3[11];
      *v3 = 0u;
      *(v3 + 1) = 0u;
      v3[4] = 0;
      v8 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
      swift_beginAccess();
      sub_24E9CBF30(v3, v7 + v8, &qword_27F22E6E8, &qword_24F998F88);
      swift_endAccess();
      sub_24F25B25C();
      v9 = sub_24E601704(v3, &qword_27F22E6E8, &qword_24F998F88);
      (*((*MEMORY[0x277D85000] & *v7) + 0x208))(v9);
    }
  }

  free(v3[12]);

  free(v3);
}

uint64_t sub_24F25ADF4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24F25EE50;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24F25AE94(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24E94DFEC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = (v7 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v5;
  sub_24E5FCA4C(v3, v4);
  sub_24E5FCA4C(v6, v5);
  v11.n128_f64[0] = sub_24E824448(v9, v10);
  (*((*MEMORY[0x277D85000] & *v7) + 0x208))(v11);
  return sub_24E824448(v6, v5);
}

uint64_t sub_24F25AFC0()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v2 = *v1;
  sub_24E5FCA4C(*v1, v1[1]);
  return v2;
}

double sub_24F25B01C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_24E5FCA4C(a1, a2);
  v8.n128_f64[0] = sub_24E824448(v6, v7);
  (*((*MEMORY[0x277D85000] & *v2) + 0x208))(v8);
  return sub_24E824448(a1, a2);
}

uint64_t (*sub_24F25B0EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F25B150;
}

uint64_t sub_24F25B150(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x208))(result);
  }

  return result;
}

uint64_t sub_24F25B1BC(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v6, &qword_27F22E6E8, &qword_24F998F88);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E9CBF30(v6, v3 + v4, &qword_27F22E6E8, &qword_24F998F88);
  swift_endAccess();
  sub_24F25B25C();
  return sub_24E601704(v6, &qword_27F22E6E8, &qword_24F998F88);
}

uint64_t sub_24F25B25C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E60169C(v0 + v7, &v18, &qword_27F22E6E8, &qword_24F998F88);
  v8 = *(&v19 + 1);
  result = sub_24E601704(&v18, &qword_27F22E6E8, &qword_24F998F88);
  if (v8)
  {
    v10 = sub_24F922378();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    v12 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
    swift_beginAccess();
    sub_24E9CBF30(v6, v0 + v12, &qword_27F222038, &unk_24F9689B0);
    swift_endAccess();
    sub_24E60169C(v0 + v12, v3, &qword_27F222038, &unk_24F9689B0);
    v13 = (*(v11 + 48))(v3, 1, v10);
    v14 = MEMORY[0x277D85000];
    if (v13 == 1)
    {
      sub_24E601704(v6, &qword_27F222038, &unk_24F9689B0);
      v15 = sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
    }

    else
    {
      sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      swift_beginAccess();
      sub_24E9CBF30(&v18, v0 + v7, &qword_27F22E6E8, &qword_24F998F88);
      swift_endAccess();
      sub_24F25B25C();
      v16 = sub_24E601704(&v18, &qword_27F22E6E8, &qword_24F998F88);
      (*((*v14 & *v0) + 0x208))(v16);
      v15 = sub_24E601704(v6, &qword_27F222038, &unk_24F9689B0);
    }

    return (*((*v14 & *v0) + 0x208))(v15);
  }

  return result;
}

uint64_t sub_24F25B590@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22E6E8, &qword_24F998F88);
}

uint64_t sub_24F25B5F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v3, &qword_27F22E6E8, &qword_24F998F88);
  swift_endAccess();
  sub_24F25B25C();
  return sub_24E601704(a1, &qword_27F22E6E8, &qword_24F998F88);
}

uint64_t (*sub_24F25B68C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F25B6F0;
}

float sub_24F25B770()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_hyphenationFactor;
  swift_beginAccess();
  return *v1;
}

void sub_24F25B7B8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_hyphenationFactor);
  swift_beginAccess();
  *v3 = a1;
  sub_24F25C664();
}

uint64_t (*sub_24F25B810(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F25EEF8;
}

id sub_24F25B92C(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for DynamicTypeTextView(0);
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

uint64_t sub_24F25BA0C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F25BA50(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_24F25C664();
}

uint64_t (*sub_24F25BAA4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F25BB08;
}

uint64_t sub_24F25BB20(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_24F25BD94(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_24F25BDE8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v2 != v4)
  {
    sub_24F25BF34();
  }
}

void (*sub_24F25BE48(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24F25BEDC;
}

void sub_24F25BEDC(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    sub_24F25BF34();
  }

  free(v2);
}

void *sub_24F25BF34()
{
  v1 = v0;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))(&v11);
  if (v11)
  {
    if (v11 == 1)
    {
      v3 = [v0 traitCollection];
      v4 = sub_24F92BF88();

      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v9.receiver = v1;
      v9.super_class = type metadata accessor for DynamicTypeTextView(0);
      return objc_msgSendSuper2(&v9, sel_setTextAlignment_, v5);
    }

    else
    {
      v6 = [v0 traitCollection];
      v7 = sub_24F92BF88();

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      v10.receiver = v1;
      v10.super_class = type metadata accessor for DynamicTypeTextView(0);
      return objc_msgSendSuper2(&v10, sel_setTextAlignment_, v8);
    }
  }

  return result;
}

void sub_24F25C058()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_24F922378();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [v0 setAdjustsFontForContentSizeCategory_];
  v11 = (*((*MEMORY[0x277D85000] & *v0) + 0x138))(v10);
  v20 = v1;
  v12 = sub_24F92BFB8();

  v13 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E60169C(&v1[v13], v23, &qword_27F22E6E8, &qword_24F998F88);
  if (v24)
  {
    sub_24E615E00(v23, v21);
    sub_24E601704(v23, &qword_27F22E6E8, &qword_24F998F88);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v14 = sub_24F9225B8();
    __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_6:
    v16 = v14;
    goto LABEL_7;
  }

  sub_24E601704(v23, &qword_27F22E6E8, &qword_24F998F88);
  v15 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  sub_24E60169C(&v1[v15], v4, &qword_27F222038, &unk_24F9689B0);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_24E69A5C4(0, &qword_27F217E58, 0x277D74300);
    v14 = MEMORY[0x253051BF0](v9, v12);
    (*(v6 + 8))(v9, v5);
    goto LABEL_6;
  }

  sub_24E601704(v4, &qword_27F222038, &unk_24F9689B0);
  v14 = 0;
LABEL_7:
  v17 = type metadata accessor for DynamicTypeTextView(0);
  v22.receiver = v1;
  v22.super_class = v17;
  objc_msgSendSuper2(&v22, sel_setFont_, v14);
  v18 = *&v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont];
  *&v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont] = v14;

  sub_24F25C664();
}

double sub_24F25C3C0(uint64_t a1, void *a2)
{
  v4 = a2 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping;
  swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 1);
    v8 = *((*MEMORY[0x277D85000] & *a2) + 0x138);

    v10 = v8(v9);
    v11 = [v10 preferredContentSizeCategory];

    v6(v11);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F922D48();
    return sub_24E824448(v6, v7);
  }

  return result;
}

void sub_24F25C4D8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView) == 1)
  {
    v1 = [v0 attributedText];
    if (v1)
    {
      v2 = v1;
      v6 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v3 = UIAccessibilityButtonShapesEnabled();
      v4 = *MEMORY[0x277D741F0];
      if (v3)
      {
        v5 = sub_24F92BB08();
        [v6 addAttribute:v4 value:v5 range:{0, objc_msgSend(v6, sel_length)}];
      }

      else
      {
        [v6 removeAttribute:v4 range:{0, objc_msgSend(v6, sel_length)}];
      }

      [v0 setAttributedText_];
    }
  }
}

void sub_24F25C664()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText) = 1;
  v3 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = [v1 textColor];
    if (*(v1 + v3) == 1)
    {
      v16.receiver = v1;
      v16.super_class = type metadata accessor for DynamicTypeTextView(0);
      v5 = objc_msgSendSuper2(&v16, sel_font);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor);
    v6 = v4;
  }

  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont);
  v7 = v5;
LABEL_6:
  v8 = [v1 attributedText];
  if (!v8)
  {
    v9 = [v1 text];
    if (v9)
    {
      v10 = v9;
      sub_24F92B0D8();
    }

    v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v12 = sub_24F92B098();

    v8 = [v11 initWithString_];
  }

  v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x158))();
  v14 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  sub_24F25D170(v4, v5, v13);
  v15 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  [v1 setAttributedText_];
  [v1 setNeedsLayout];

  *(v1 + v2) = 0;
}

void sub_24F25C904(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 1;
  if (UIAccessibilityButtonShapesEnabled())
  {
    if (a2)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v5 = sub_24F92B098();
      v6 = [v4 initWithString_];

      v7 = *MEMORY[0x277D741F0];
      v8 = sub_24F92BB08();
      v10 = v6;
      [v10 addAttribute:v7 value:v8 range:{0, objc_msgSend(v10, sel_length)}];

      [v2 setAttributedText_];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = sub_24F92B098();
LABEL_7:
  v10 = v9;
  [v2 setText_];
LABEL_8:
}

void sub_24F25CA44(void *a1)
{
  v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 1;
  if (UIAccessibilityButtonShapesEnabled() && a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v4 = a1;
    v5 = [v3 initWithAttributedString_];
    v6 = *MEMORY[0x277D741F0];
    v7 = sub_24F92BB08();
    v8 = v5;
    [v8 addAttribute:v6 value:v7 range:{0, objc_msgSend(v8, sel_length)}];

    [v1 setAttributedText_];
  }

  else
  {

    [v1 setAttributedText_];
  }
}

id DynamicTypeTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id DynamicTypeTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_24F25CD48(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F25A3EC(v2);
  return sub_24F25EEFC;
}

id sub_24F25CDC8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 textContainer];
  v6 = [v5 *a3];

  return v6;
}

void sub_24F25CE24(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [*v4 textContainer];
  [v7 *a4];
}

void (*sub_24F25CE94(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F25A5B4(v2);
  return sub_24EA092C8;
}

id sub_24F25CF08()
{
  v1 = [*v0 font];

  return v1;
}

void sub_24F25CF40(void *a1)
{
  [*v1 setFont_];
}

void (*sub_24F25CF88(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 font];
  return sub_24F25CFE4;
}

void sub_24F25CFE4(id *a1)
{
  v1 = *a1;
  [a1[1] setFont_];
}

double sub_24F25D054()
{
  v1 = [*v0 font];
  if (!v1)
  {
    return *MEMORY[0x277D768C8];
  }

  v2 = v1;
  sub_24F92C278();
  v4 = v3;

  return v4;
}

id sub_24F25D0DC()
{
  v1 = *v0;
  result = [*v0 text];
  if (result)
  {

    result = [v1 text];
    if (result)
    {
      v3 = result;
      sub_24F92B0D8();

      v4 = sub_24F92B228();

      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_24F25D170(void *a1, void *a2, float a3)
{
  [v3 beginEditing];
  *&v51 = MEMORY[0x277D84F90];
  v8 = *MEMORY[0x277D74118];
  v9 = [v3 length];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = &v51;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24F25EE94;
  *(v11 + 24) = v10;
  v57 = sub_24F25EEA0;
  v58 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_24EA259AC;
  v56 = &block_descriptor_131;
  v12 = _Block_copy(&aBlock);

  [v3 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v12}];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_42;
  }

  v43 = a2;
  v14 = v51;

  *&v45 = v14;
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    v47 = v3;
    do
    {
      v19 = *(v16 - 1);
      v20 = *v16;
      if ([v3 attribute:v8 atIndex:v19 effectiveRange:{0, v43}])
      {
        sub_24F92C648();
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
      }

      v51 = v49;
      v52 = v50;
      if (*(&v50 + 1))
      {
        sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
        if (swift_dynamicCast())
        {
          [v48 mutableCopy];

          sub_24F92C648();
          swift_unknownObjectRelease();
          sub_24E69A5C4(0, &qword_27F2254C8, 0x277D74240);
          if (swift_dynamicCast())
          {
            v17 = v51;
            v3 = v47;
            goto LABEL_6;
          }

          v3 = v47;
        }
      }

      else
      {
        sub_24E601704(&v51, &qword_27F2129B0, &unk_24F945320);
      }

      v17 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
LABEL_6:
      v16 += 2;
      *&v18 = a3;
      [v17 setHyphenationFactor_];
      [v3 addAttribute:v8 value:v17 range:{v19, v20}];

      --v15;
    }

    while (v15);
  }

  v4 = &selRef_systemBackgroundColor;
  v5 = &selRef_hasManagedStateChangedFromAccount_toAccount_;
  if (!a1)
  {
    goto LABEL_27;
  }

  v8 = *MEMORY[0x277D740C0];
  *&v49 = MEMORY[0x277D84F90];
  v51 = 0uLL;
  LOBYTE(v52) = 1;
  isEscapingClosureAtFileLocation = a1;
  v21 = [v3 length];
  v22 = swift_allocObject();
  *(v22 + 16) = &v51;
  *(v22 + 24) = &v49;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_24F25EED4;
  *(v23 + 24) = v22;
  v57 = sub_24F25EED0;
  v58 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_24EA259AC;
  v56 = &block_descriptor_59_0;
  v24 = _Block_copy(&aBlock);

  [v3 enumerateAttribute:v8 inRange:0 options:v21 usingBlock:{0, v24}];
  _Block_release(v24);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v52 & 1) == 0)
  {
    v45 = v51;
    v11 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

  for (i = v49; ; *(i + 16 * v28 + 32) = v45)
  {

    v29 = *(i + 16);
    if (v29)
    {
      v30 = (i + 40);
      do
      {
        [v3 v4[181]];
        v30 += 2;
        --v29;
      }

      while (v29);
    }

LABEL_27:
    if (!v43)
    {
      break;
    }

    isEscapingClosureAtFileLocation = *MEMORY[0x277D740A8];
    *&v49 = MEMORY[0x277D84F90];
    v51 = 0uLL;
    LOBYTE(v52) = 1;
    v31 = v43;
    v32 = [v3 v5[84]];
    v8 = swift_allocObject();
    *(v8 + 16) = &v51;
    *(v8 + 24) = &v49;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_24F25EEC0;
    *(v33 + 24) = v8;
    v57 = sub_24F25EED0;
    v58 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_24EA259AC;
    v56 = &block_descriptor_48;
    v34 = _Block_copy(&aBlock);

    [v3 enumerateAttribute:isEscapingClosureAtFileLocation inRange:0 options:v32 usingBlock:{0, v34}];
    _Block_release(v34);
    v11 = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      if (v52)
      {

        v35 = v49;
      }

      else
      {
        v46 = v51;
        v36 = v49;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *&v49 = v36;
        if ((v37 & 1) == 0)
        {
          v36 = sub_24E616164(0, *(v36 + 2) + 1, 1, v36);
          *&v49 = v36;
        }

        v39 = *(v36 + 2);
        v38 = *(v36 + 3);
        if (v39 >= v38 >> 1)
        {
          *&v49 = sub_24E616164((v38 > 1), v39 + 1, 1, v36);
        }

        v35 = v49;
        *(v49 + 16) = v39 + 1;
        *(v35 + 16 * v39 + 32) = v46;
      }

      v40 = *(v35 + 16);
      if (v40)
      {
        v41 = (v35 + 40);
        do
        {
          [v3 v4[181]];
          v41 += 2;
          --v40;
        }

        while (v40);
      }

      return [v3 endEditing];
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v11 = sub_24E616164(0, *(v11 + 16) + 1, 1, v11);
    *&v49 = v11;
LABEL_20:
    v28 = *(v11 + 16);
    v27 = *(v11 + 24);
    if (v28 >= v27 >> 1)
    {
      *&v49 = sub_24E616164((v27 > 1), v28 + 1, 1, v11);
    }

    i = v49;
    *(v49 + 16) = v28 + 1;
  }

  return [v3 endEditing];
}

uint64_t sub_24F25D9CC(uint64_t result, NSRange range2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!*(result + 24))
  {
    if ((*(a4 + 16) & 1) == 0)
    {
      length = range2.length;
      v6 = a4;
      location = range2.location;
      if (vaddvq_s64(*a4) == range2.location)
      {
        v21.location = range2.location;
        v21.length = length;
        v8 = NSUnionRange(*a4, v21);
        result = v8.location;
        range2 = v8;
        a4 = v6;
      }

      else
      {
        v20 = *a4;
        v9 = *a5;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v9;
        if (result)
        {
          v11 = a5;
        }

        else
        {
          result = sub_24E616164(0, *(v9 + 16) + 1, 1, v9);
          v11 = a5;
          v9 = result;
          *a5 = result;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
        v14 = v12 + 1;
        v15 = v20;
        if (v12 >= v13 >> 1)
        {
          v16 = v9;
          v17 = v11;
          v18 = v12 + 1;
          v19 = v12;
          result = sub_24E616164((v13 > 1), v12 + 1, 1, v16);
          v15 = v20;
          v12 = v19;
          v14 = v18;
          range2.location = location;
          range2.length = length;
          a4 = v6;
          v9 = result;
          *v17 = result;
        }

        else
        {
          a4 = v6;
          range2.length = length;
          range2.location = location;
        }

        *(v9 + 16) = v14;
        *(v9 + 16 * v12 + 32) = v15;
      }
    }

    *a4 = range2;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_24F25DB20(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, char **a6)
{
  sub_24E60169C(a1, v22, &qword_27F2129B0, &unk_24F945320);
  if (!v23)
  {
    sub_24E601704(v22, &qword_27F2129B0, &unk_24F945320);
    goto LABEL_6;
  }

  sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v11 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_24E616164(0, *(v11 + 2) + 1, 1, v11);
      *a6 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_24E616164((v13 > 1), v14 + 1, 1, v11);
      *a6 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    goto LABEL_11;
  }

  [v21 hyphenationFactor];
  if (v10 == a4)
  {

    return;
  }

  v16 = *a6;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_24E616164(0, *(v16 + 2) + 1, 1, v16);
    *a6 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    *a6 = sub_24E616164((v18 > 1), v19 + 1, 1, v16);
  }

  v20 = *a6;
  *(v20 + 2) = v19 + 1;
  v15 = &v20[16 * v19];
LABEL_11:
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
}

uint64_t sub_24F25DD00(void *a1)
{
  result = [a1 adjustsFontForContentSizeCategory];
  if ((result & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *a1) + 0x208))();
  }

  return result;
}

void _s12GameStoreKit19DynamicTypeTextViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  v2 = sub_24F922378();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_hyphenationFactor) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes) = 1;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isLinkStyleTextView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_directionalTextAlignment) = 0;
  sub_24F92CA88();
  __break(1u);
}

void *sub_24F25DE9C(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x1E8))(&v11);
  if (v11)
  {
    if (v11 == 1)
    {
      v3 = [a1 traitCollection];
      v4 = sub_24F92BF88();

      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v9.receiver = a1;
      v9.super_class = type metadata accessor for DynamicTypeTextView(0);
      return objc_msgSendSuper2(&v9, sel_setTextAlignment_, v5);
    }

    else
    {
      v6 = [a1 traitCollection];
      v7 = sub_24F92BF88();

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      v10.receiver = a1;
      v10.super_class = type metadata accessor for DynamicTypeTextView(0);
      return objc_msgSendSuper2(&v10, sel_setTextAlignment_, v8);
    }
  }

  return result;
}

void sub_24F25DFC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4 + 16;
  v6 = type metadata accessor for DynamicTypeTextView(0);
  v14.receiver = v1;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_setFont_, a1);
  v7 = *&v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont];
  *&v1[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedFont] = a1;
  v8 = a1;

  v9 = sub_24F922378();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_24F25A988(v5);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_24E9CBF30(v12, &v1[v10], &qword_27F22E6E8, &qword_24F998F88);
  swift_endAccess();
  sub_24F25B25C();
  sub_24E601704(v12, &qword_27F22E6E8, &qword_24F998F88);
  [v1 setAdjustsFontForContentSizeCategory_];
  sub_24F25C664();
}

void sub_24F25E154(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 textContainer];
  v4 = [v3 maximumNumberOfLines];

  *a2 = v4;
}

void sub_24F25E1D0(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 textContainer];
  v4 = [v3 lineBreakMode];

  *a2 = v4;
}

uint64_t sub_24F25E24C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F222038, &unk_24F9689B0);
}

uint64_t sub_24F25E2C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F22E6E8, &qword_24F998F88);
}

void sub_24F25E3F8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24F25E450(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_24F25C664();
}

void *sub_24F25E4A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1E8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_24F25E51C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x1F0))(&v4);
}

void sub_24F25E594(uint64_t a1)
{
  sub_24E935B08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F25EE18()
{

  return swift_deallocObject();
}

uint64_t sub_24F25EE50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_131(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double UpsellGridLayout.init(metrics:icons:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

double UpsellGridLayout.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

double UpsellGridLayout.metrics.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 8) = v2;
  *(v1 + 16) = result;
  return result;
}

uint64_t UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t static UpsellGridLayout.iconCount(fitting:using:in:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  swift_getObjectType();

  return sub_24F260590(a1, a2, a3, a4);
}

double sub_24F25F078@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v18 = *a1;
  v19 = 7 * *a1;
  if ((*a1 * 7) >> 64 != v19 >> 63)
  {
    goto LABEL_109;
  }

  v20 = a4;
  if (a5 < a4)
  {
    a4 = a5;
  }

  if (v20 > a5)
  {
    v21 = v20;
  }

  else
  {
    v21 = a5;
  }

  if (v18 <= 1)
  {
    v18 = 1;
  }

  v22 = v18 - 1;
  if (!*(a1 + 8))
  {
    a4 = v21;
  }

  v11 = a4 / (v19 + v22);
  v268 = *(a1 + 2) * (v11 * 7.0);
  v23 = v11 + v268 + v268;
  if (!*(a1 + 8))
  {
    a6 = 0.0;
  }

  if (!*(a1 + 8))
  {
    a7 = 0.0;
  }

  v273.origin.x = a6;
  v273.origin.y = a7;
  v273.size.width = v20;
  v273.size.height = a5;
  v27 = CGRectGetMidX(v273) - v23 * 0.5;
  v274.origin.x = a6;
  v274.origin.y = a7;
  v274.size.width = v20;
  v274.size.height = a5;
  v10 = a6;
  v267 = a7;
  v12 = a5;
  v254 = CGRectGetMidY(v274) - v23 * 0.5;
  v255 = v27;
  rect = v11 + v268 + v268;
  sub_24F92C1D8();
  v15 = v28;
  v16 = v29;
  v13 = v30;
  v14 = v31;
  v7 = sub_24E617B8C(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = *(v7 + 2);
  v18 = *(v7 + 3);
  v8 = v9 + 1;
  v258 = v20;
  if (v9 >= v18 >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    *(v7 + 2) = v8;
    v32 = &v7[32 * v9];
    *(v32 + 4) = v15;
    *(v32 + 5) = v16;
    *(v32 + 6) = v13;
    *(v32 + 7) = v14;
    v275.origin.y = v254;
    v275.origin.x = v255;
    v275.size.width = rect;
    v275.size.height = rect;
    v33 = CGRectGetMinY(v275) - v11;
    v269 = v10;
    v276.origin.x = v10;
    v34 = v267;
    v276.origin.y = v267;
    v276.size.width = v258;
    v35 = v12;
    v276.size.height = v12;
    v265 = v11 + v268;
    v253 = v11;
    if (CGRectGetMinY(v276) < v33)
    {
      v64 = v258;
      v65 = v269;
      do
      {
        v278.origin.y = v254;
        v278.origin.x = v255;
        v278.size.width = rect;
        v278.size.height = rect;
        v36 = v35;
        MinX = CGRectGetMinX(v278);
        v279.origin.x = v65;
        v279.origin.y = v34;
        v279.size.width = v64;
        v279.size.height = v36;
        v328.origin.x = MinX;
        v328.origin.y = v33 - v268;
        v328.size.width = v268;
        v328.size.height = v268;
        if (CGRectIntersectsRect(v279, v328))
        {
          sub_24F92C1D8();
          v43 = *(v7 + 2);
          v42 = *(v7 + 3);
          v44 = MinX;
          if (v43 >= v42 >> 1)
          {
            v263 = v38;
            v55 = v39;
            v56 = v40;
            v57 = v41;
            v58 = sub_24E617B8C((v42 > 1), v43 + 1, 1, v7);
            v41 = v57;
            v40 = v56;
            v39 = v55;
            v38 = v263;
            v7 = v58;
          }

          *(v7 + 2) = v43 + 1;
          v45 = &v7[32 * v43];
          *(v45 + 4) = v38;
          *(v45 + 5) = v39;
          *(v45 + 6) = v40;
          *(v45 + 7) = v41;
        }

        else
        {
          v44 = MinX;
        }

        v35 = v36;
        v280.origin.y = v254;
        v280.origin.x = v255;
        v280.size.width = rect;
        v280.size.height = rect;
        v46 = CGRectGetMaxX(v280) - v268;
        v281.origin.x = v44;
        v281.origin.y = v33 - v268;
        v281.size.width = v268;
        v281.size.height = v268;
        MinY = CGRectGetMinY(v281);
        v282.origin.x = v269;
        v34 = v267;
        v282.origin.y = v267;
        v282.size.width = v258;
        v282.size.height = v36;
        v329.origin.x = v46;
        v329.origin.y = MinY;
        v329.size.width = v268;
        v329.size.height = v268;
        if (CGRectIntersectsRect(v282, v329))
        {
          sub_24F92C1D8();
          v53 = *(v7 + 2);
          v52 = *(v7 + 3);
          if (v53 >= v52 >> 1)
          {
            v59 = v48;
            v60 = v49;
            v61 = v50;
            v62 = v51;
            v63 = sub_24E617B8C((v52 > 1), v53 + 1, 1, v7);
            v51 = v62;
            v50 = v61;
            v49 = v60;
            v48 = v59;
            v7 = v63;
          }

          v11 = v253;
          *(v7 + 2) = v53 + 1;
          v54 = &v7[32 * v53];
          *(v54 + 4) = v48;
          *(v54 + 5) = v49;
          *(v54 + 6) = v50;
          *(v54 + 7) = v51;
          v65 = v269;
        }

        else
        {
          v11 = v253;
          v65 = v269;
        }

        v33 = v33 - v265;
        v277.origin.x = v65;
        v277.origin.y = v267;
        v64 = v258;
        v277.size.width = v258;
        v277.size.height = v36;
      }

      while (CGRectGetMinY(v277) < v33);
    }

    else
    {
      v64 = v258;
      v65 = v269;
    }

    v283.origin.y = v254;
    v283.origin.x = v255;
    v66 = rect;
    v283.size.width = rect;
    v283.size.height = rect;
    v67 = v11 + CGRectGetMaxY(v283);
    v284.origin.x = v65;
    v284.origin.y = v34;
    v284.size.width = v64;
    v284.size.height = v35;
    v68 = v64;
    v266 = v35;
    if (v67 >= CGRectGetMaxY(v284))
    {
      v10 = v269;
    }

    else
    {
      v10 = v269;
      do
      {
        v286.origin.y = v254;
        v286.origin.x = v255;
        v286.size.width = v66;
        v286.size.height = v66;
        v69 = v35;
        v70 = CGRectGetMinX(v286);
        v287.origin.x = v10;
        v287.origin.y = v34;
        v287.size.width = v68;
        v287.size.height = v69;
        v330.origin.x = v70;
        v330.origin.y = v67;
        v330.size.width = v268;
        v330.size.height = v268;
        if (CGRectIntersectsRect(v287, v330))
        {
          sub_24F92C1D8();
          v76 = *(v7 + 2);
          v75 = *(v7 + 3);
          if (v76 >= v75 >> 1)
          {
            v87 = v71;
            v88 = v72;
            v89 = v73;
            v90 = v74;
            v91 = sub_24E617B8C((v75 > 1), v76 + 1, 1, v7);
            v74 = v90;
            v73 = v89;
            v72 = v88;
            v71 = v87;
            v7 = v91;
          }

          *(v7 + 2) = v76 + 1;
          v77 = &v7[32 * v76];
          *(v77 + 4) = v71;
          *(v77 + 5) = v72;
          *(v77 + 6) = v73;
          *(v77 + 7) = v74;
        }

        v288.origin.y = v254;
        v288.origin.x = v255;
        v288.size.width = rect;
        v288.size.height = rect;
        v78 = CGRectGetMaxX(v288) - v268;
        v289.origin.x = v70;
        v289.origin.y = v67;
        v289.size.width = v268;
        v289.size.height = v268;
        v79 = CGRectGetMinY(v289);
        v290.origin.x = v269;
        v35 = v266;
        v34 = v267;
        v290.origin.y = v267;
        v290.size.width = v68;
        v290.size.height = v266;
        v331.origin.x = v78;
        v331.origin.y = v79;
        v331.size.width = v268;
        v331.size.height = v268;
        if (CGRectIntersectsRect(v290, v331))
        {
          sub_24F92C1D8();
          v85 = *(v7 + 2);
          v84 = *(v7 + 3);
          if (v85 >= v84 >> 1)
          {
            v92 = v80;
            v93 = v81;
            v94 = v82;
            v95 = v83;
            v96 = sub_24E617B8C((v84 > 1), v85 + 1, 1, v7);
            v83 = v95;
            v68 = v258;
            v82 = v94;
            v81 = v93;
            v80 = v92;
            v7 = v96;
          }

          *(v7 + 2) = v85 + 1;
          v86 = &v7[32 * v85];
          *(v86 + 4) = v80;
          *(v86 + 5) = v81;
          *(v86 + 6) = v82;
          *(v86 + 7) = v83;
          v10 = v269;
          v66 = rect;
        }

        else
        {
          v66 = rect;
          v10 = v269;
        }

        v67 = v265 + v67;
        v285.origin.x = v10;
        v285.origin.y = v267;
        v285.size.width = v68;
        v285.size.height = v266;
      }

      while (v67 < CGRectGetMaxY(v285));
    }

    v291.origin.x = v255;
    v97 = v66;
    v291.origin.y = v254;
    v291.size.width = v66;
    v291.size.height = v66;
    v98 = v253 + CGRectGetMaxX(v291);
    v292.origin.x = v255;
    v292.origin.y = v254;
    v292.size.width = v66;
    v292.size.height = v66;
    v99 = CGRectGetMaxY(v292) - v265;
    v293.origin.x = v10;
    v293.origin.y = v34;
    v293.size.width = v68;
    v293.size.height = v35;
    v271.x = v98;
    v271.y = v99;
    if (!CGRectContainsPoint(v293, v271))
    {
      break;
    }

    v252 = v253 + v97;
    v9 = 1;
    while (1)
    {
      v251 = v99;
      v100 = rect;
      v294.origin.x = v255;
      v294.origin.y = v254;
      v294.size.width = rect;
      v294.size.height = rect;
      v259 = CGRectGetMinX(v294);
      v295.origin.x = v255;
      v295.origin.y = v254;
      v13 = v258;
      v295.size.width = rect;
      v295.size.height = rect;
      MaxY = CGRectGetMaxY(v295);
      v261 = v99 - rect;
      sub_24F92C1D8();
      v106 = *(v7 + 2);
      v105 = *(v7 + 3);
      if (v106 >= v105 >> 1)
      {
        v240 = v101;
        v241 = v102;
        v242 = v103;
        v243 = v104;
        v244 = sub_24E617B8C((v105 > 1), v106 + 1, 1, v7);
        v104 = v243;
        v13 = v258;
        v103 = v242;
        v102 = v241;
        v101 = v240;
        v10 = v269;
        v100 = rect;
        v7 = v244;
      }

      *(v7 + 2) = v106 + 1;
      v107 = &v7[32 * v106];
      *(v107 + 4) = v101;
      *(v107 + 5) = v102;
      *(v107 + 6) = v103;
      *(v107 + 7) = v104;
      v264 = v98;
      v296.origin.x = v98;
      v296.origin.y = v261;
      v296.size.width = v100;
      v296.size.height = v100;
      for (i = CGRectGetMinY(v296) - v253; ; i = i - v265)
      {
        v297.origin.x = v10;
        v297.origin.y = v34;
        v297.size.width = v13;
        v297.size.height = v35;
        if (CGRectGetMinY(v297) >= i)
        {
          break;
        }

        v298.origin.y = v261;
        v298.origin.x = v98;
        v298.size.width = v100;
        v298.size.height = v100;
        v109 = v13;
        v110 = v35;
        v111 = CGRectGetMinX(v298);
        v299.origin.x = v10;
        v299.origin.y = v34;
        v299.size.width = v109;
        v299.size.height = v110;
        v332.origin.x = v111;
        v332.origin.y = i - v268;
        v332.size.width = v268;
        v332.size.height = v268;
        if (CGRectIntersectsRect(v299, v332))
        {
          sub_24F92C1D8();
          v114 = v113;
          v116 = v115;
          v118 = v117;
          v120 = *(v7 + 2);
          v119 = *(v7 + 3);
          v121 = v111;
          if (v120 >= v119 >> 1)
          {
            v132 = v112;
            v133 = sub_24E617B8C((v119 > 1), v120 + 1, 1, v7);
            v112 = v132;
            v7 = v133;
          }

          *(v7 + 2) = v120 + 1;
          v122 = &v7[32 * v120];
          *(v122 + 4) = v114;
          *(v122 + 5) = v112;
          *(v122 + 6) = v116;
          *(v122 + 7) = v118;
          v35 = v266;
          v13 = v258;
        }

        else
        {
          v121 = v111;
          v35 = v110;
          v13 = v109;
        }

        v300.size.width = rect;
        v300.origin.y = v261;
        v300.origin.x = v98;
        v300.size.height = rect;
        v123 = CGRectGetMaxX(v300) - v268;
        v301.origin.x = v121;
        v301.origin.y = i - v268;
        v301.size.width = v268;
        v301.size.height = v268;
        v124 = CGRectGetMinY(v301);
        v302.origin.x = v269;
        v34 = v267;
        v302.origin.y = v267;
        v302.size.width = v13;
        v302.size.height = v35;
        v333.origin.x = v123;
        v333.origin.y = v124;
        v333.size.width = v268;
        v333.size.height = v268;
        if (CGRectIntersectsRect(v302, v333))
        {
          sub_24F92C1D8();
          v130 = *(v7 + 2);
          v129 = *(v7 + 3);
          if (v130 >= v129 >> 1)
          {
            v134 = v125;
            v135 = v126;
            v136 = v127;
            v137 = v128;
            v138 = sub_24E617B8C((v129 > 1), v130 + 1, 1, v7);
            v128 = v137;
            v127 = v136;
            v126 = v135;
            v13 = v258;
            v125 = v134;
            v7 = v138;
          }

          *(v7 + 2) = v130 + 1;
          v131 = &v7[32 * v130];
          *(v131 + 4) = v125;
          *(v131 + 5) = v126;
          *(v131 + 6) = v127;
          *(v131 + 7) = v128;
          v10 = v269;
          v100 = rect;
        }

        else
        {
          v100 = rect;
          v10 = v269;
        }
      }

      v303.origin.y = v261;
      v303.origin.x = v98;
      v303.size.width = v100;
      v303.size.height = v100;
      v139 = v253 + CGRectGetMaxY(v303);
      v304.origin.x = v10;
      v304.origin.y = v34;
      v304.size.width = v13;
      v304.size.height = v35;
      if (v139 >= CGRectGetMaxY(v304))
      {
        v140 = v268;
      }

      else
      {
        v140 = v268;
        do
        {
          v306.origin.y = v261;
          v306.origin.x = v264;
          v306.size.width = v100;
          v141 = v100;
          v306.size.height = v100;
          v142 = v13;
          v143 = v35;
          v144 = CGRectGetMinX(v306);
          v307.origin.x = v10;
          v307.origin.y = v34;
          v307.size.width = v142;
          v307.size.height = v143;
          v334.origin.x = v144;
          v334.origin.y = v139;
          v334.size.width = v140;
          v334.size.height = v140;
          if (CGRectIntersectsRect(v307, v334))
          {
            sub_24F92C1D8();
            v150 = *(v7 + 2);
            v149 = *(v7 + 3);
            if (v150 >= v149 >> 1)
            {
              v161 = v145;
              v162 = v146;
              v163 = v147;
              v164 = v148;
              v165 = sub_24E617B8C((v149 > 1), v150 + 1, 1, v7);
              v148 = v164;
              v142 = v258;
              v147 = v163;
              v141 = rect;
              v146 = v162;
              v145 = v161;
              v7 = v165;
            }

            *(v7 + 2) = v150 + 1;
            v151 = &v7[32 * v150];
            *(v151 + 4) = v145;
            *(v151 + 5) = v146;
            *(v151 + 6) = v147;
            *(v151 + 7) = v148;
          }

          v308.origin.y = v261;
          v308.origin.x = v264;
          v308.size.width = v141;
          v308.size.height = v141;
          v152 = CGRectGetMaxX(v308) - v140;
          v309.origin.x = v144;
          v309.origin.y = v139;
          v309.size.width = v140;
          v309.size.height = v140;
          v153 = CGRectGetMinY(v309);
          v310.origin.x = v269;
          v34 = v267;
          v310.origin.y = v267;
          v310.size.width = v142;
          v310.size.height = v266;
          v335.origin.x = v152;
          v335.origin.y = v153;
          v335.size.width = v140;
          v335.size.height = v140;
          if (CGRectIntersectsRect(v310, v335))
          {
            sub_24F92C1D8();
            v159 = *(v7 + 2);
            v158 = *(v7 + 3);
            if (v159 >= v158 >> 1)
            {
              v166 = v154;
              v167 = v155;
              v168 = v156;
              v169 = v157;
              v170 = sub_24E617B8C((v158 > 1), v159 + 1, 1, v7);
              v157 = v169;
              v13 = v258;
              v156 = v168;
              v155 = v167;
              v154 = v166;
              v7 = v170;
            }

            else
            {
              v13 = v142;
            }

            *(v7 + 2) = v159 + 1;
            v160 = &v7[32 * v159];
            *(v160 + 4) = v154;
            *(v160 + 5) = v155;
            *(v160 + 6) = v156;
            *(v160 + 7) = v157;
            v10 = v269;
            v100 = rect;
            v35 = v266;
            v140 = v268;
          }

          else
          {
            v10 = v269;
            v35 = v266;
            v13 = v142;
            v100 = rect;
          }

          v139 = v265 + v139;
          v305.origin.x = v10;
          v305.origin.y = v267;
          v305.size.width = v13;
          v305.size.height = v35;
        }

        while (v139 < CGRectGetMaxY(v305));
      }

      v171 = v259 - v252 * v9;
      v260 = v265 * (v9 - 1) + MaxY - v140;
      v262 = v171;
      sub_24F92C1D8();
      v177 = *(v7 + 2);
      v176 = *(v7 + 3);
      v8 = v177 + 1;
      if (v177 >= v176 >> 1)
      {
        v245 = v172;
        v246 = v173;
        v247 = v174;
        v248 = v175;
        v249 = sub_24E617B8C((v176 > 1), v177 + 1, 1, v7);
        v175 = v248;
        v13 = v258;
        v174 = v247;
        v173 = v246;
        v178 = v253;
        v172 = v245;
        v10 = v269;
        v100 = rect;
        v7 = v249;
      }

      else
      {
        v178 = v253;
      }

      *(v7 + 2) = v8;
      v179 = &v7[32 * v177];
      *(v179 + 4) = v172;
      *(v179 + 5) = v173;
      *(v179 + 6) = v174;
      *(v179 + 7) = v175;
      v311.origin.y = v260;
      v311.origin.x = v262;
      v311.size.width = v100;
      v311.size.height = v100;
      v12 = CGRectGetMinY(v311) - v178;
      v312.origin.x = v10;
      v312.origin.y = v34;
      v312.size.width = v13;
      v312.size.height = v35;
      v180 = CGRectGetMinY(v312) < v12;
      v181 = v35;
      v16 = v34;
      v14 = v181;
      if (v180)
      {
        do
        {
          v257 = v12;
          v182 = v12 - v268;
          v316.origin.y = v260;
          v316.origin.x = v262;
          v316.size.width = v100;
          v316.size.height = v100;
          v183 = CGRectGetMinX(v316);
          v317.origin.x = v10;
          v317.origin.y = v16;
          v317.size.width = v13;
          v317.size.height = v14;
          v336.origin.x = v183;
          v336.origin.y = v182;
          v336.size.width = v268;
          v336.size.height = v268;
          if (CGRectIntersectsRect(v317, v336))
          {
            sub_24F92C1D8();
            v189 = *(v7 + 2);
            v188 = *(v7 + 3);
            v8 = v189 + 1;
            v190 = v183;
            if (v189 >= v188 >> 1)
            {
              v202 = v184;
              v203 = v185;
              v204 = v186;
              v205 = v187;
              v206 = sub_24E617B8C((v188 > 1), v189 + 1, 1, v7);
              v187 = v205;
              v186 = v204;
              v100 = rect;
              v185 = v203;
              v184 = v202;
              v7 = v206;
            }

            v191 = v257;
            *(v7 + 2) = v8;
            v192 = &v7[32 * v189];
            *(v192 + 4) = v184;
            *(v192 + 5) = v185;
            *(v192 + 6) = v186;
            *(v192 + 7) = v187;
          }

          else
          {
            v190 = v183;
            v191 = v257;
          }

          v318.origin.y = v260;
          v318.origin.x = v262;
          v318.size.width = v100;
          v318.size.height = v100;
          v193 = CGRectGetMaxX(v318) - v268;
          v319.origin.x = v190;
          v319.origin.y = v182;
          v319.size.width = v268;
          v319.size.height = v268;
          v194 = CGRectGetMinY(v319);
          v320.origin.x = v269;
          v14 = v266;
          v16 = v267;
          v320.origin.y = v267;
          v13 = v258;
          v320.size.width = v258;
          v320.size.height = v266;
          v337.origin.x = v193;
          v337.origin.y = v194;
          v337.size.width = v268;
          v337.size.height = v268;
          if (CGRectIntersectsRect(v320, v337))
          {
            sub_24F92C1D8();
            v200 = *(v7 + 2);
            v199 = *(v7 + 3);
            v8 = v200 + 1;
            if (v200 >= v199 >> 1)
            {
              v207 = v195;
              v208 = v196;
              v209 = v197;
              v210 = v198;
              v211 = sub_24E617B8C((v199 > 1), v200 + 1, 1, v7);
              v198 = v210;
              v14 = v266;
              v197 = v209;
              v196 = v208;
              v13 = v258;
              v195 = v207;
              v7 = v211;
            }

            *(v7 + 2) = v8;
            v201 = &v7[32 * v200];
            *(v201 + 4) = v195;
            *(v201 + 5) = v196;
            *(v201 + 6) = v197;
            *(v201 + 7) = v198;
            v10 = v269;
            v100 = rect;
          }

          else
          {
            v100 = rect;
            v10 = v269;
          }

          v12 = v191 - v265;
          v315.origin.x = v10;
          v315.origin.y = v267;
          v315.size.width = v13;
          v315.size.height = v14;
        }

        while (CGRectGetMinY(v315) < v12);
      }

      v313.origin.y = v260;
      v313.origin.x = v262;
      v313.size.width = v100;
      v313.size.height = v100;
      v11 = v253 + CGRectGetMaxY(v313);
      v314.origin.x = v10;
      v314.origin.y = v16;
      v314.size.width = v13;
      v314.size.height = v14;
      if (v11 < CGRectGetMaxY(v314))
      {
        v14 = v266;
        v12 = v267;
        do
        {
          v322.origin.y = v260;
          v322.origin.x = v262;
          v322.size.width = rect;
          v322.size.height = rect;
          v213 = CGRectGetMinX(v322);
          v323.origin.x = v10;
          v323.origin.y = v12;
          v323.size.width = v13;
          v323.size.height = v14;
          v338.origin.x = v213;
          v338.origin.y = v11;
          v338.size.width = v268;
          v338.size.height = v268;
          if (CGRectIntersectsRect(v323, v338))
          {
            sub_24F92C1D8();
            v219 = *(v7 + 2);
            v218 = *(v7 + 3);
            v8 = v219 + 1;
            if (v219 >= v218 >> 1)
            {
              v234 = v214;
              v235 = v215;
              v236 = v216;
              v237 = v217;
              v238 = sub_24E617B8C((v218 > 1), v219 + 1, 1, v7);
              v217 = v237;
              v216 = v236;
              v215 = v235;
              v220 = v268;
              v214 = v234;
              v7 = v238;
            }

            else
            {
              v220 = v268;
            }

            *(v7 + 2) = v8;
            v221 = &v7[32 * v219];
            *(v221 + 4) = v214;
            *(v221 + 5) = v215;
            *(v221 + 6) = v216;
            *(v221 + 7) = v217;
          }

          else
          {
            v220 = v268;
          }

          v324.origin.y = v260;
          v324.origin.x = v262;
          v324.size.width = rect;
          v324.size.height = rect;
          v16 = CGRectGetMaxX(v324) - v220;
          v325.origin.x = v213;
          v325.origin.y = v11;
          v325.size.width = v220;
          v325.size.height = v220;
          v222 = CGRectGetMinY(v325);
          v10 = v269;
          v326.origin.x = v269;
          v326.origin.y = v267;
          v326.size.width = v258;
          v326.size.height = v266;
          v339.origin.x = v16;
          v339.origin.y = v222;
          v339.size.width = v220;
          v339.size.height = v220;
          if (CGRectIntersectsRect(v326, v339))
          {
            sub_24F92C1D8();
            v228 = *(v7 + 2);
            v227 = *(v7 + 3);
            v8 = v228 + 1;
            if (v228 >= v227 >> 1)
            {
              v229 = v223;
              v230 = v224;
              v231 = v225;
              v232 = v226;
              v233 = sub_24E617B8C((v227 > 1), v228 + 1, 1, v7);
              v226 = v232;
              v225 = v231;
              v224 = v230;
              v223 = v229;
              v7 = v233;
            }

            *(v7 + 2) = v8;
            v212 = &v7[32 * v228];
            *(v212 + 4) = v223;
            *(v212 + 5) = v224;
            *(v212 + 6) = v225;
            *(v212 + 7) = v226;
            v10 = v269;
          }

          v14 = v266;
          v11 = v265 + v11;
          v321.origin.x = v10;
          v12 = v267;
          v321.origin.y = v267;
          v13 = v258;
          v321.size.width = v258;
          v321.size.height = v266;
        }

        while (v11 < CGRectGetMaxY(v321));
      }

      v239 = __OFADD__(v9++, 1);
      v15 = v264;
      if (v239)
      {
        break;
      }

      v35 = v266;
      v99 = v251 - v265;
      v98 = v252 + v264;
      v327.origin.x = v10;
      v34 = v267;
      v327.origin.y = v267;
      v327.size.width = v13;
      v327.size.height = v266;
      v272.x = v252 + v264;
      v272.y = v251 - v265;
      if (!CGRectContainsPoint(v327, v272))
      {
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    v7 = sub_24E617B8C((v18 > 1), v8, 1, v7);
  }

LABEL_107:
  *a3 = v7;
  *(a3 + 8) = v253;
  *(a3 + 16) = v268;
  result = rect;
  *(a3 + 24) = v268;
  *(a3 + 32) = rect;
  *(a3 + 40) = rect;
  return result;
}

uint64_t static UpsellGridLayout.iconSizes(fitting:using:in:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  swift_getObjectType();

  return sub_24F260478(a1, a2, a3, a4);
}

void UpsellGridLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  *&v16 = *v5;
  BYTE8(v16) = v7;
  v17 = v8;
  sub_24F25F078(&v16, v18, a4, a5, a2, a3);
  v10 = v18[0];
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    v14 = v18[0] + 56;
    while (v12 < *(v9 + 16))
    {
      sub_24E615E00(v13, &v16);
      v15 = *(v10 + 16);
      if (v12 == v15)
      {

        __swift_destroy_boxed_opaque_existential_1(&v16);
        goto LABEL_9;
      }

      if (v12 >= v15)
      {
        goto LABEL_11;
      }

      ++v12;
      sub_24E612E28(&v16, v18);
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(v18);
      v13 += 40;
      v14 += 32;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

LABEL_9:
    sub_24F922128();
  }
}

uint64_t sub_24F260478(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v15 = *a1;
  v16 = v4;
  v17 = v5;
  sub_24F25F078(&v15, v18, a3, a4, 0.0, 0.0);
  v6 = v18[0];
  v7 = *(v18[0] + 16);
  if (v7)
  {
    v18[0] = MEMORY[0x277D84F90];
    sub_24F4587DC(0, v7, 0);
    v8 = v18[0];
    v9 = *(v18[0] + 16);
    v10 = 48;
    do
    {
      v11 = *(v6 + v10);
      v18[0] = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        v14 = v11;
        sub_24F4587DC((v12 > 1), v9 + 1, 1);
        v11 = v14;
        v8 = v18[0];
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 16 * v9 + 32) = v11;
      v10 += 32;
      ++v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_24F260590(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  sub_24F25F078(&v8, v11, a3, a4, 0.0, 0.0);
  v6 = *(v11[0] + 16);

  return v6;
}

uint64_t *_s12GameStoreKit16UpsellGridLayoutV13largeIconSize7fitting5using2inSo6CGSizeVAI_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t *result)
{
  if ((*result * 7) >> 64 != (7 * *result) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpsellGridLayout.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpsellGridLayout.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t SystemImage.rawValue.getter()
{
  result = 7630433;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
    case 0x11:
    case 0x1F:
      return 0xD000000000000017;
    case 3:
      return 0x746177656C707061;
    case 4:
      return 0x65726F7473707061;
    case 5:
    case 0x4A:
      return 0xD000000000000011;
    case 6:
      return 0x6C632E776F727261;
    case 7:
    case 0xA:
    case 0x50:
      return 0xD000000000000010;
    case 8:
    case 0x3E:
      return 0xD000000000000022;
    case 9:
      return 0x72616D6B63656863;
    case 0xB:
    case 0x27:
    case 0x4C:
      return 0xD000000000000014;
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      return 0x2E6E6F7276656863;
    case 0x10:
      return 0x2E6E6F7276656863;
    case 0x12:
      return 0x747865742E636F64;
    case 0x13:
      return 0x73697370696C6C65;
    case 0x14:
      return 0xD000000000000016;
    case 0x15:
      return 0xD00000000000001DLL;
    case 0x16:
      return 0x73616C732E657965;
    case 0x17:
      return 0x632E322E67616C66;
    case 0x18:
      return 0xD000000000000013;
    case 0x19:
      return 0x72656D6D6168;
    case 0x1A:
      v5 = 0x72656D6D6168;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x1B:
      return 0x69662E6573756F68;
    case 0x1C:
    case 0x2B:
    case 0x38:
    case 0x49:
      return 0xD000000000000015;
    case 0x1D:
      return 0xD000000000000028;
    case 0x1E:
    case 0x32:
    case 0x33:
    case 0x42:
      return 0xD000000000000012;
    case 0x20:
      return 0x6C2E6C657275616CLL;
    case 0x21:
      return 0x742E6C657275616CLL;
    case 0x22:
    case 0x48:
      return 0xD00000000000001ALL;
    case 0x23:
      return 0xD000000000000021;
    case 0x24:
      return 0xD000000000000026;
    case 0x25:
      return 1802398060;
    case 0x26:
      return 0x6C75622E7473696CLL;
    case 0x28:
      return 0x697966696E67616DLL;
    case 0x29:
      return 0x6567617373656DLL;
    case 0x2A:
      return 0x6F68706F7263696DLL;
    case 0x2C:
      return 0x757262746E696170;
    case 0x2D:
      return 0x757262746E696170;
    case 0x2E:
      return 0x616C707265706170;
    case 0x2F:
      return 0x616C707265706170;
    case 0x30:
      v4 = 1937072496;
      goto LABEL_61;
    case 0x31:
      return 0x332E6E6F73726570;
    case 0x34:
      v5 = 0x6E6F73726570;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x35:
      return 0x656E6F6870;
    case 0x36:
      return 0x6F642E656E6F6870;
    case 0x37:
      v4 = 1852794992;
LABEL_61:
      v2 = v4 & 0xFFFF0000FFFFFFFFLL | 0x2E6500000000;
      goto LABEL_62;
    case 0x39:
      v3 = 2036427888;
      goto LABEL_49;
    case 0x3A:
      return 1937075312;
    case 0x3B:
      return 0xD000000000000013;
    case 0x3C:
      return 0x6C632E65746F7571;
    case 0x3D:
      return 0x706F2E65746F7571;
    case 0x3F:
      return 0x74656B636F72;
    case 0x40:
      v5 = 0x74656B636F72;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x41:
      return 0x697261666173;
    case 0x43:
      return 0xD000000000000013;
    case 0x44:
      return 1918989427;
    case 0x45:
      v3 = 1918989427;
      goto LABEL_49;
    case 0x46:
      v3 = 1886352499;
LABEL_49:
      result = v3 | 0x6C69662E00000000;
      break;
    case 0x47:
      result = 0xD000000000000013;
      break;
    case 0x4B:
      result = 0x672E657261757173;
      break;
    case 0x4D:
      result = 0x6873617274;
      break;
    case 0x4E:
      result = 0x6F65646976;
      break;
    case 0x4F:
      v2 = 0x2E6F65646976;
LABEL_62:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
      break;
    case 0x51:
      result = 0x6B72616D78;
      break;
    default:
      return result;
  }

  return result;
}

id static SystemImage.load(_:with:includePrivateImages:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  v6 = sub_24F92B098();
  v7 = objc_opt_self();
  v8 = &selRef__systemImageNamed_withConfiguration_;
  if ((a4 & 1) == 0)
  {
    v8 = &selRef_systemImageNamed_withConfiguration_;
  }

  v9 = [v7 *v8];

  if (v9)
  {
    return v9;
  }

  v11 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v11 init];
}

id static SystemImage.load(artwork:with:includePrivateImages:)(uint64_t a1, void *a2, char a3)
{
  _s12GameStoreKit11SystemImageO4name3forSSSgAA7ArtworkC_tFZ_0(a1);
  if (!v6)
  {
    return 0;
  }

  if (*(a1 + 96) > 1u)
  {
    if (*(a1 + 96) != 2)
    {
LABEL_13:
      v13 = a2;
      goto LABEL_14;
    }

    v7 = 3;
  }

  else if (*(a1 + 96))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v9 = [objc_opt_self() configurationWithScale_];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  if (!a2)
  {

    goto LABEL_13;
  }

  v11 = a2;
  v12 = [v10 configurationByApplyingConfiguration_];

  v13 = v12;
LABEL_14:
  v14 = v13;
  v15 = sub_24F92B098();

  v16 = objc_opt_self();
  v17 = &selRef__systemImageNamed_withConfiguration_;
  if ((a3 & 1) == 0)
  {
    v17 = &selRef_systemImageNamed_withConfiguration_;
  }

  v8 = [v16 *v17];

  return v8;
}

BOOL SystemImage.isPublic.getter()
{
  v1 = *v0;
  v2 = v1 - 65 < 0x11;
  v3 = v1 > 0x3E;
  v4 = (1 << v1) & 0x7FFFFDFF3FFFFFEDLL;
  return !v3 && v4 != 0 || v2;
}

id static SystemImage.load(_:with:)(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = v3 > 0x3E || ((1 << v3) & 0x7FFFFDFF3FFFFFEDLL) == 0;
  if (v4 && v3 - 65 >= 0x11)
  {
    SystemImage.rawValue.getter();
    v5 = a2;
    v6 = sub_24F92B098();

    v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];
  }

  else
  {
    SystemImage.rawValue.getter();
    v5 = a2;
    v6 = sub_24F92B098();

    v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];
  }

  v8 = v7;

  if (v8)
  {
    return v8;
  }

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v10 init];
}

id static SystemImage.loadIfExists(_:with:includePrivateImages:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  v6 = sub_24F92B098();
  v7 = objc_opt_self();
  v8 = &selRef__systemImageNamed_withConfiguration_;
  if ((a4 & 1) == 0)
  {
    v8 = &selRef_systemImageNamed_withConfiguration_;
  }

  v9 = [v7 *v8];

  return v9;
}

GameStoreKit::SystemImage_optional __swiftcall SystemImage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 0;
  v6 = 64;
  switch(v3)
  {
    case 0:
      goto LABEL_80;
    case 1:
      v5 = 1;
      goto LABEL_80;
    case 2:
      v5 = 2;
      goto LABEL_80;
    case 3:
      v5 = 3;
      goto LABEL_80;
    case 4:
      v5 = 4;
      goto LABEL_80;
    case 5:
      v5 = 5;
      goto LABEL_80;
    case 6:
      v5 = 6;
      goto LABEL_80;
    case 7:
      v5 = 7;
      goto LABEL_80;
    case 8:
      v5 = 8;
      goto LABEL_80;
    case 9:
      v5 = 9;
      goto LABEL_80;
    case 10:
      v5 = 10;
      goto LABEL_80;
    case 11:
      v5 = 11;
      goto LABEL_80;
    case 12:
      v5 = 12;
      goto LABEL_80;
    case 13:
      v5 = 13;
      goto LABEL_80;
    case 14:
      v5 = 14;
      goto LABEL_80;
    case 15:
      v5 = 15;
      goto LABEL_80;
    case 16:
      v5 = 16;
      goto LABEL_80;
    case 17:
      v5 = 17;
      goto LABEL_80;
    case 18:
      v5 = 18;
      goto LABEL_80;
    case 19:
      v5 = 19;
      goto LABEL_80;
    case 20:
      v5 = 20;
      goto LABEL_80;
    case 21:
      v5 = 21;
      goto LABEL_80;
    case 22:
      v5 = 22;
      goto LABEL_80;
    case 23:
      v5 = 23;
      goto LABEL_80;
    case 24:
      v5 = 24;
      goto LABEL_80;
    case 25:
      v5 = 25;
      goto LABEL_80;
    case 26:
      v5 = 26;
      goto LABEL_80;
    case 27:
      v5 = 27;
      goto LABEL_80;
    case 28:
      v5 = 28;
      goto LABEL_80;
    case 29:
      v5 = 29;
      goto LABEL_80;
    case 30:
      v5 = 30;
      goto LABEL_80;
    case 31:
      v5 = 31;
      goto LABEL_80;
    case 32:
      v5 = 32;
      goto LABEL_80;
    case 33:
      v5 = 33;
      goto LABEL_80;
    case 34:
      v5 = 34;
      goto LABEL_80;
    case 35:
      v5 = 35;
      goto LABEL_80;
    case 36:
      v5 = 36;
      goto LABEL_80;
    case 37:
      v5 = 37;
      goto LABEL_80;
    case 38:
      v5 = 38;
      goto LABEL_80;
    case 39:
      v5 = 39;
      goto LABEL_80;
    case 40:
      v5 = 40;
      goto LABEL_80;
    case 41:
      v5 = 41;
      goto LABEL_80;
    case 42:
      v5 = 42;
      goto LABEL_80;
    case 43:
      v5 = 43;
      goto LABEL_80;
    case 44:
      v5 = 44;
      goto LABEL_80;
    case 45:
      v5 = 45;
      goto LABEL_80;
    case 46:
      v5 = 46;
      goto LABEL_80;
    case 47:
      v5 = 47;
      goto LABEL_80;
    case 48:
      v5 = 48;
      goto LABEL_80;
    case 49:
      v5 = 49;
      goto LABEL_80;
    case 50:
      v5 = 50;
      goto LABEL_80;
    case 51:
      v5 = 51;
      goto LABEL_80;
    case 52:
      v5 = 52;
      goto LABEL_80;
    case 53:
      v5 = 53;
      goto LABEL_80;
    case 54:
      v5 = 54;
      goto LABEL_80;
    case 55:
      v5 = 55;
      goto LABEL_80;
    case 56:
      v5 = 56;
      goto LABEL_80;
    case 57:
      v5 = 57;
      goto LABEL_80;
    case 58:
      v5 = 58;
      goto LABEL_80;
    case 59:
      v5 = 59;
      goto LABEL_80;
    case 60:
      v5 = 60;
      goto LABEL_80;
    case 61:
      v5 = 61;
      goto LABEL_80;
    case 62:
      v5 = 62;
      goto LABEL_80;
    case 63:
      v5 = 63;
LABEL_80:
      v6 = v5;
      break;
    case 64:
      break;
    case 65:
      v6 = 65;
      break;
    case 66:
      v6 = 66;
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    case 71:
      v6 = 71;
      break;
    case 72:
      v6 = 72;
      break;
    case 73:
      v6 = 73;
      break;
    case 74:
      v6 = 74;
      break;
    case 75:
      v6 = 75;
      break;
    case 76:
      v6 = 76;
      break;
    case 77:
      v6 = 77;
      break;
    case 78:
      v6 = 78;
      break;
    case 79:
      v6 = 79;
      break;
    case 80:
      v6 = 80;
      break;
    case 81:
      v6 = 81;
      break;
    default:
      v6 = 82;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24F261914()
{
  v0 = SystemImage.rawValue.getter();
  v2 = v1;
  if (v0 == SystemImage.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24F2619B0()
{
  sub_24F92D068();
  SystemImage.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F261A18(uint64_t a1)
{
  SystemImage.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24F261A7C()
{
  sub_24F92D068();
  SystemImage.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F261AEC@<X0>(uint64_t *a1@<X8>)
{
  result = SystemImage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s12GameStoreKit11SystemImageO4name3forSSSgAA7ArtworkC_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24E70E058(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_24F91F438();
    if (v10)
    {
      v11 = v9;
      v12 = *(a1 + 24);
      v15[0] = *(a1 + 16);
      v15[1] = v12;
      v13 = Artwork.URLTemplate.isSystemImage.getter();
      (*(v6 + 8))(v8, v5);
      if (v13)
      {
        return v11;
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  return 0;
}

unint64_t sub_24F261DA8()
{
  result = qword_27F23CF88;
  if (!qword_27F23CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemImage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAF)
  {
    goto LABEL_17;
  }

  if (a2 + 81 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 81) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 81;
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

      return (*a1 | (v4 << 8)) - 81;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 81;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x52;
  v8 = v6 - 82;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 81 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 81) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAF)
  {
    v4 = 0;
  }

  if (a2 > 0xAE)
  {
    v5 = ((a2 - 175) >> 8) + 1;
    *result = a2 + 81;
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
    *result = a2 + 81;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24F261F4C()
{
  result = qword_27F23CF90;
  if (!qword_27F23CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF90);
  }

  return result;
}

JSValue __swiftcall MetricsFieldLintingIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v5 = [v2 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F2620D0()
{
  result = qword_27F23CF98;
  if (!qword_27F23CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF98);
  }

  return result;
}

void sub_24F262170(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

UIImage __swiftcall UIImage.fitting(_:mode:)(CGSize _, UIViewContentMode mode)
{
  height = _.height;
  width = _.width;
  [v2 size];
  v6 = CGSize.fitting(_:mode:)(__PAIR128__(*&height, *&width), mode);
  v7 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24F2623C4;
  *(v9 + 24) = v8;
  v14[4] = sub_24F2623F0;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_24F262170;
  v14[3] = &block_descriptor_132;
  v10 = _Block_copy(v14);
  v11 = v2;

  v12 = [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F26238C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OfferConfirmationAction.__allocating_init(buyAction:confirmationInitiationAction:confirmationAccessibilityAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction) = a1;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationInitiationAction) = a2;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationAccessibilityAction) = a3;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  (*(v15 + 16))(v17, a4, v14);
  v19 = sub_24F929608();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = (v18 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v18 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v35, &v32);
  if (*(&v33 + 1))
  {
    v22 = v33;
    *v21 = v32;
    *(v21 + 16) = v22;
    *(v21 + 32) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v28 + 8))(v10, v29);
    v30 = v23;
    v31 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v15 + 8))(a4, v14);
  sub_24E601704(v35, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v13, v18 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  (*(v15 + 32))(v18 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v18;
}

uint64_t OfferConfirmationAction.init(buyAction:confirmationInitiationAction:confirmationAccessibilityAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationInitiationAction) = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationAccessibilityAction) = a3;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v39, &v33);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v29 + 8))(v12, v30);
    v31 = v22;
    v32 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  v25 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v25 + 32) = v38;
  v26 = v37;
  *v25 = v36;
  *(v25 + 16) = v26;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

char *OfferConfirmationAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v72 = *v3;
  v79 = sub_24F9285B8();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - v9;
  MEMORY[0x28223BE20](v10);
  v71 = &v58 - v11;
  v75 = sub_24F928388();
  v12 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v21);
  v70 = &v58 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v26 = type metadata accessor for Action(0);
  v77 = a1;
  sub_24F928398();
  v76 = a2;
  v27 = v73;
  v28 = static Action.makeInstance(byDeserializing:using:)(v25, a2);
  if (v27)
  {
    (*(v78 + 8))(v76, v79);
    v29 = *(v12 + 8);
    v30 = v75;
    v29(v77, v75);
    v29(v25, v30);
    v31 = v74;
  }

  else
  {
    v32 = v28;
    v62 = v26;
    v63 = v17;
    v64 = v14;
    v65 = v7;
    v33 = *(v12 + 8);
    v67 = 0;
    v68 = v33;
    v34 = v75;
    v73 = v12 + 8;
    v33(v25, v75);
    v66 = OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction;
    *&v74[OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction] = v32;
    v35 = v70;
    sub_24F928398();
    v37 = v78 + 16;
    v36 = *(v78 + 16);
    v38 = v71;
    v39 = v79;
    v36(v71, v76, v79);
    type metadata accessor for BlankAction(0);
    swift_allocObject();
    v59 = *(v12 + 16);
    v59(v20, v35, v34);
    v40 = v69;
    v60 = v36;
    v61 = v37;
    v36(v69, v38, v39);
    v41 = v67;
    v42 = Action.init(deserializing:using:)(v20, v40);
    v31 = v74;
    if (!v41)
    {
      v48 = v42;
      v49 = *(v78 + 8);
      v78 += 8;
      v72 = v49;
      v49(v71, v79);
      v50 = v75;
      v51 = v68;
      v68(v70, v75);
      *&v31[OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationInitiationAction] = v48;
      v52 = v63;
      v53 = v77;
      sub_24F928398();
      v54 = v76;
      v55 = static Action.tryToMakeInstance(byDeserializing:using:)(v52, v76);
      v51(v52, v50);
      *&v31[OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationAccessibilityAction] = v55;
      v56 = v64;
      v59(v64, v53, v50);
      v57 = v65;
      v60(v65, v54, v79);
      v31 = Action.init(deserializing:using:)(v56, v57);
      v72(v76, v79);
      v68(v77, v50);
      return v31;
    }

    v43 = *(v78 + 8);
    v44 = v79;
    v43(v76, v79);
    v45 = v75;
    v46 = v68;
    v68(v77, v75);
    v43(v71, v44);
    v46(v70, v45);
  }

  swift_deallocPartialClassInstance();
  return v31;
}

double sub_24F2631EC()
{

  return result;
}

uint64_t OfferConfirmationAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t OfferConfirmationAction.__deallocating_deinit()
{
  OfferConfirmationAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferConfirmationAction(uint64_t a1)
{
  result = qword_27F23CFA0;
  if (!qword_27F23CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F26348C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E635714;

  return sub_24F263544(a2, a3);
}

uint64_t sub_24F263544(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v2[23] = swift_task_alloc();
  v6 = sub_24F91F648();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F263774, 0, 0);
}

uint64_t sub_24F263774()
{
  v43 = v0;
  v1 = objc_opt_self();
  *(v0 + 224) = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_24F006288(v2);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_24F008BB0(v5);

    if (qword_27F211430 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E8E0);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = [v1 standardUserDefaults];
    v11 = sub_24F006288(v10);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Increased the friend profile page visit count to %ld", v9, 0xCu);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v16 = *(v0 + 184);

  sub_24F91F638();
  v17 = [v1 standardUserDefaults];
  v18 = *(v15 + 16);
  v18(v16, v12, v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  sub_24F0088C8(v16);

  v18(v13, v12, v14);
  v19 = sub_24F9220B8();
  v20 = sub_24F92BD98();
  v21 = os_log_type_enabled(v19, v20);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 192);
  if (v21)
  {
    v25 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v25 = 136315138;
    sub_24EC05C80();
    v26 = sub_24F92CD88();
    v28 = v27;
    v29 = *(v23 + 8);
    v29(v22, v24);
    v30 = sub_24E7620D4(v26, v28, &v42);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_24E5DD000, v19, v20, "Last friend profile page visit is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x2530542D0](v41, -1, -1);
    MEMORY[0x2530542D0](v25, -1, -1);
  }

  else
  {

    v29 = *(v23 + 8);
    v29(v22, v24);
  }

  *(v0 + 232) = v29;
  sub_24EC05C10(*(v0 + 96), v0 + 56);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v31 = swift_task_alloc();
    *(v0 + 240) = v31;
    *v31 = v0;
    v31[1] = sub_24F263C14;
    v32 = *(v0 + 176);
    v33 = *(v0 + 160);

    return MEMORY[0x28217F228](v32, v33, v33);
  }

  else
  {
    sub_24EA418B4(v0 + 56);
    v34 = *(v0 + 232);
    v35 = *(v0 + 216);
    v36 = *(v0 + 192);
    v37 = [*(v0 + 224) standardUserDefaults];
    v38 = sub_24F006288(v37);

    v34(v35, v36);

    v39 = *(v0 + 8);

    return v39(v38, 0);
  }
}

uint64_t sub_24F263C14()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24EC05A20;
  }

  else
  {
    v2 = sub_24F263D28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F263D28()
{
  (*(v0[15] + 104))(v0[16], *MEMORY[0x277D21E18], v0[14]);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_24F263DF4;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[13];

  return MEMORY[0x28217F468](v2, v0 + 2, v4, v5, v3);
}

uint64_t sub_24F263DF4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 264) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC05B0C;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v6 = sub_24F263F84;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F263F84()
{
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = [*(v0 + 224) standardUserDefaults];
  v5 = sub_24F006288(v4);

  v1(v2, v3);

  v6 = *(v0 + 8);

  return v6(v5, 0);
}

uint64_t sub_24F2640C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F264208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F928818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SignInMoltresView(uint64_t a1)
{
  result = qword_27F23CFB0;
  if (!qword_27F23CFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F264384(uint64_t a1)
{
  sub_24F264544(319);
  if (v1 <= 0x3F)
  {
    sub_24F2645E8(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24E6CAE80();
      if (v3 <= 0x3F)
      {
        sub_24F928FD8();
        if (v4 <= 0x3F)
        {
          sub_24F928818();
          if (v5 <= 0x3F)
          {
            sub_24E6D753C(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24F2645E8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24E6D753C(319, &qword_27F22CC10, &unk_27F237670, &qword_24F989C80, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F264544(uint64_t a1)
{
  if (!qword_27F23CFC0)
  {
    sub_24F26459C();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23CFC0);
    }
  }
}

unint64_t sub_24F26459C()
{
  result = qword_27F23CFC8;
  if (!qword_27F23CFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23CFC8);
  }

  return result;
}

void sub_24F2645E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_24F264654(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E040 = xmmword_24F947C50;
  *algn_27F39E050 = xmmword_24F9DA310;
  *&xmmword_27F39E060 = 0;
  *(&xmmword_27F39E060 + 1) = v1;
  qword_27F39E070 = v3;
  unk_27F39E078 = v4;
  return result;
}

double sub_24F2646A4(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E080 = xmmword_24F947C70;
  *algn_27F39E090 = xmmword_24F9DA310;
  *&xmmword_27F39E0A0 = 0;
  *(&xmmword_27F39E0A0 + 1) = v1;
  qword_27F39E0B0 = v3;
  unk_27F39E0B8 = v4;
  return result;
}

uint64_t sub_24F2646F4@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = &v57 - v3;
  v74 = sub_24F929158();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v57 - v6;
  v7 = type metadata accessor for SignInMoltresView(0);
  v62 = *(v7 - 8);
  v61 = *(v62 + 64);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CFD0, &qword_24F9DA398);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CFD8, &qword_24F9DA3A0);
  MEMORY[0x28223BE20](v71);
  v70 = &v57 - v14;
  v15 = v1[12];
  v65 = v1[11];
  v64 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;
  sub_24E615E00((v1 + 6), v16 + 32);
  v69 = v8;
  v17 = v1 + *(v8 + 64);
  v18 = *v17;
  v63 = *(v17 + 1);
  LOBYTE(v81) = v18;
  v82 = v63;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v59 = *(&v79 + 1);
  v60 = v79;
  v58 = v80;
  v19 = (v1 + *(v8 + 68));
  v20 = *v19;
  v67 = v19[1];
  v68 = v20;
  v81 = v20;
  v82 = v67;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8, &unk_24F9E63E0);
  sub_24F926F58();
  v57 = v79;
  v21 = v80;
  *(v13 + 6) = type metadata accessor for ProgressPerformAction(0);
  *(v13 + 7) = sub_24F26784C(&qword_27F2162F0, type metadata accessor for ProgressPerformAction, &unk_24F975958);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 3);
  sub_24F928A98();
  v23 = v60;
  *boxed_opaque_existential_1 = v16;
  boxed_opaque_existential_1[1] = v23;
  boxed_opaque_existential_1[2] = v59;
  *(boxed_opaque_existential_1 + 24) = v58;
  *(boxed_opaque_existential_1 + 2) = v57;
  boxed_opaque_existential_1[6] = v21;
  *(v13 + 15) = 0;
  *(v13 + 104) = 0u;
  *(v13 + 88) = 0u;
  LOBYTE(v79) = v18;
  *(&v79 + 1) = v63;
  sub_24F926F38();
  LODWORD(v63) = v81;
  v24 = v1[13];
  v25 = v1;
  sub_24F265868(v1, v10);
  v26 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v27 = swift_allocObject();
  sub_24F2658D0(v10, v27 + v26);
  sub_24F265868(v25, v10);
  v28 = swift_allocObject();
  sub_24F2658D0(v10, v28 + v26);
  sub_24F265868(v25, v10);
  v29 = swift_allocObject();
  sub_24F2658D0(v10, v29 + v26);
  v30 = v11[34];
  v31 = type metadata accessor for HeaderPresentation(0);
  (*(*(v31 - 8) + 56))(&v13[v30], 1, 1, v31);
  v32 = &v13[v11[37]];
  LOBYTE(v81) = 0;

  sub_24F926F28();
  v33 = *(&v79 + 1);
  *v32 = v79;
  *(v32 + 1) = v33;
  v34 = &v13[v11[38]];
  LOBYTE(v81) = 0;
  sub_24F926F28();
  v35 = *(&v79 + 1);
  *v34 = v79;
  *(v34 + 1) = v35;
  v36 = &v13[v11[39]];
  v81 = 0;
  sub_24F926F28();
  v37 = *(&v79 + 1);
  *v36 = v79;
  *(v36 + 1) = v37;
  v38 = v11[40];
  *&v13[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v39 = v11[41];
  *&v13[v39] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v40 = v11[42];
  *&v13[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v41 = &v13[v11[43]];
  *v41 = sub_24F923398() & 1;
  *(v41 + 1) = v42;
  v41[16] = v43 & 1;
  v44 = v64;
  *v13 = v65;
  *(v13 + 1) = v44;
  *(v13 + 2) = 0;
  v13[128] = 0;
  *(v13 + 9) = 0;
  *(v13 + 10) = 0;
  *(v13 + 8) = 0;
  v13[129] = v63;
  *(v13 + 17) = v24;
  *(v13 + 9) = xmmword_24F9DA320;
  *(v13 + 20) = sub_24F265934;
  *(v13 + 21) = v27;
  *(v13 + 22) = sub_24F2659B4;
  *(v13 + 23) = v28;
  *(v13 + 24) = sub_24F265CE8;
  *(v13 + 25) = v29;
  *(v13 + 26) = CGSizeMake;
  *(v13 + 27) = 0;
  v13[v11[35]] = 7;
  v13[v11[36]] = 0;
  v78 = v25;
  sub_24F928FD8();
  sub_24E602068(&qword_27F23CFE0, &qword_27F23CFD0, &qword_24F9DA398, &unk_24F9651C8);
  v45 = v70;
  sub_24F925EB8();
  sub_24E601704(v13, &qword_27F23CFD0, &qword_24F9DA398);
  v81 = v68;
  v82 = v67;
  sub_24F926F58();
  v46 = v80;
  v47 = v45 + *(v71 + 36);
  *v47 = v79;
  *(v47 + 16) = v46;
  v48 = *(v69 + 52);
  v49 = sub_24F928818();
  v50 = *(v49 - 8);
  v51 = v72;
  (*(v50 + 16))(v72, v25 + v48, v49);
  (*(v50 + 56))(v51, 0, 1, v49);
  v53 = v73;
  v52 = v74;
  sub_24F928F28();
  v54 = sub_24F921B48();
  v55 = v75;
  (*(*(v54 - 8) + 56))(v75, 1, 1, v54);
  sub_24F265D78();
  sub_24F925E58();
  sub_24E601704(v55, &qword_27F2157E8, &unk_24F940C00);
  (*(v76 + 8))(v53, v52);
  sub_24E601704(v51, &qword_27F2157F0, &qword_24F9846A0);
  return sub_24E601704(v45, &qword_27F23CFD8, &qword_24F9DA3A0);
}

void *sub_24F265080@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24F924C88();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_24F265130(a2, __src);
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v9, __src, 0x121uLL);
  sub_24E60169C(__dst, &v6, &qword_27F23D010, &qword_24F9DA478);
  sub_24E601704(v9, &qword_27F23D010, &qword_24F9DA478);
  return memcpy((a3 + 24), __dst, 0x121uLL);
}

uint64_t sub_24F265130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];

  sub_24F266F68(v54);
  v50 = v54[0];
  v51 = v54[1];
  v52 = v54[2];
  v53 = v54[3];
  KeyPath = swift_getKeyPath();
  v58 = 0;
  sub_24F267814(v54, v72);
  v5 = sub_24F925818();
  sub_24F266F68(&v55);
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v58;
  v29 = v58;
  LOBYTE(v72[0]) = 0;
  v15 = a1[3];
  v16 = a1[5];
  v27 = a1[4];
  v28 = a1[2];

  sub_24F266F68(v56);
  v46 = v56[0];
  v47 = v56[1];
  v48 = v56[2];
  v49 = v56[3];
  sub_24F267814(v56, v72);
  v17 = sub_24F925818();
  sub_24F266F68(&v57);
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  *&v59 = KeyPath;
  BYTE8(v59) = v14;
  *v60 = v3;
  *&v60[8] = v50;
  *&v60[24] = v51;
  *&v60[40] = v52;
  *&v60[56] = v53;
  v60[72] = v5;
  *&v61 = v7;
  *(&v61 + 1) = v9;
  *&v62 = v11;
  *(&v62 + 1) = v13;
  __src[6] = v61;
  __src[7] = v62;
  __src[4] = *&v60[48];
  __src[5] = *&v60[64];
  __src[2] = *&v60[16];
  __src[3] = *&v60[32];
  __src[0] = v59;
  __src[1] = *v60;
  *&v64 = v28;
  *(&v64 + 1) = v15;
  *&v65 = v27;
  *(&v65 + 1) = v16;
  v66 = v46;
  v67 = v47;
  v68 = v48;
  v69 = v49;
  LOBYTE(v70) = v17;
  *(&v70 + 1) = v18;
  *v71 = v20;
  *&v71[8] = v22;
  *&v71[16] = v24;
  v71[24] = 0;
  *(&__src[16] + 1) = *&v71[9];
  *(&__src[9] + 8) = v65;
  v63 = 0;
  LOBYTE(__src[8]) = 0;
  *(&__src[12] + 8) = v48;
  *(&__src[11] + 8) = v47;
  *(&__src[8] + 8) = v64;
  *(&__src[15] + 8) = *v71;
  *(&__src[14] + 8) = v70;
  *(&__src[13] + 8) = v49;
  *(&__src[10] + 8) = v46;
  v44 = 0;
  memcpy(a2, __src, 0x118uLL);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  v72[0] = v28;
  v72[1] = v15;
  v72[2] = v27;
  v72[3] = v16;
  v73 = v46;
  v74 = v47;
  v75 = v48;
  v76 = v49;
  v77 = v17;
  v78 = v19;
  v79 = v21;
  v80 = v23;
  v81 = v25;
  v82 = 0;
  sub_24E60169C(&v59, &v31, &qword_27F23D018, &qword_24F9DA480);
  sub_24E60169C(&v64, &v31, &qword_27F23D020, &qword_24F9DA488);
  sub_24E601704(v72, &qword_27F23D020, &qword_24F9DA488);
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  v31 = KeyPath;
  v32 = v29;
  v33 = v3;
  v38 = v5;
  v39 = v7;
  v40 = v9;
  v41 = v11;
  v42 = v13;
  v43 = 0;
  return sub_24E601704(&v31, &qword_27F23D018, &qword_24F9DA480);
}

uint64_t sub_24F265490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);

  sub_24F266F68(v9);
  KeyPath = swift_getKeyPath();
  v10 = 0;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  v5 = v9[1];
  *(a2 + 24) = v9[0];
  *(a2 + 40) = v5;
  v6 = v9[3];
  *(a2 + 56) = v9[2];
  *(a2 + 72) = v6;
  return sub_24F267814(v9, v8);
}

uint64_t sub_24F265520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];

  sub_24F266F68(v11);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  v7 = v11[1];
  *(a2 + 32) = v11[0];
  *(a2 + 48) = v7;
  v8 = v11[3];
  *(a2 + 64) = v11[2];
  *(a2 + 80) = v8;
  return sub_24F267814(v11, &v10);
}

uint64_t sub_24F2655A0@<X0>(uint64_t a2@<X8>)
{
  v14[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  swift_unknownObjectWeakInit();
  v16 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CFF8 &unk_24F9E64D0))];
  swift_unknownObjectWeakAssign();
  v14[0] = sub_24F928FD8();
  sub_24F929298();
  v9 = *(v3 + 16);
  v9(v8, v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D000, &qword_24F9DA440);
  sub_24E602068(&qword_27F23D008, &qword_27F23D000, &qword_24F9DA440, &protocol conformance descriptor for GamesSignInActionImplementation<A>);
  sub_24F929238();
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_24E601704(v15, &qword_27F23D000, &qword_24F9DA440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8, &qword_24F9C34B0);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v9((v12 + v11), v8, v2);
  sub_24F929298();
  v9(v5, (v12 + v11), v2);
  swift_setDeallocating();
  v10((v12 + v11), v2);
  swift_deallocClassInstance();
  sub_24F929228();
  v10(v5, v2);
  return (v10)(v8, v2);
}

uint64_t sub_24F265868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInMoltresView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2658D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInMoltresView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24F265934@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SignInMoltresView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_24F265080(v5, a2);
}

uint64_t sub_24F2659B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInMoltresView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F265490(v4, a1);
}

uint64_t objectdestroyTm_58()
{
  v1 = type metadata accessor for SignInMoltresView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 48));

  v3 = v1[11];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F265CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInMoltresView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F265520(v4, a1);
}

unint64_t sub_24F265D78()
{
  result = qword_27F23CFE8;
  if (!qword_27F23CFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CFD8, &qword_24F9DA3A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CFD0, &qword_24F9DA398);
    sub_24F928FD8();
    sub_24E602068(&qword_27F23CFE0, &qword_27F23CFD0, &qword_24F9DA398, &unk_24F9651C8);
    swift_getOpaqueTypeConformance2();
    sub_24F265E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CFE8);
  }

  return result;
}

unint64_t sub_24F265E8C()
{
  result = qword_27F23CFF0;
  if (!qword_27F23CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CFF0);
  }

  return result;
}

uint64_t sub_24F265EE0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D028, &qword_24F9DA620);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D030, &qword_24F9DA628);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  *v4 = sub_24F9249A8();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v28[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D038, &unk_24F9DA630) + 44);
  v32 = *(v1 + 16);
  v30 = v32;
  swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = *(v1 + 48);
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(v1 + 64);
  *(v9 + 96) = *(v1 + 80);
  v11 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v11;
  sub_24E60169C(&v32, v31, &unk_27F2285F0, &qword_24F93B070);
  sub_24F2679FC(v1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D040, &unk_24F9DA660);
  sub_24E602068(&qword_27F2181D8, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83980]);
  sub_24F267A34();
  sub_24F927228();
  sub_24F9242E8();
  sub_24E6009C8(v4, v8, &qword_27F23D028, &qword_24F9DA620);
  v12 = &v8[*(v6 + 44)];
  v13 = v31[5];
  *(v12 + 4) = v31[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v31[6];
  v14 = v31[1];
  *v12 = v31[0];
  *(v12 + 1) = v14;
  v15 = v31[3];
  *(v12 + 2) = v31[2];
  *(v12 + 3) = v15;
  v16 = sub_24F925838();
  sub_24F923318();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v29;
  sub_24E6009C8(v8, v29, &qword_27F23D030, &qword_24F9DA628);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D050, &unk_24F9DA670);
  v27 = v25 + *(result + 36);
  *v27 = v16;
  *(v27 + 8) = v18;
  *(v27 + 16) = v20;
  *(v27 + 24) = v22;
  *(v27 + 32) = v24;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_24F266230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_24F929888();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24F926E08();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218200, &qword_24F948018);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v30 - v11;
  v12 = sub_24F924848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v33 = *a1;
  v32 = v16;
  static SystemAppIcon.from(iconName:)(v33, v16, &v47);
  v17 = v47;
  if (v47 == 4 || ((v53 = *(a2 + 8), v18 = *a2, v52 = *a2, v53 != 1) ? (v30 = a2, , sub_24F92BDC8(), v31 = v10, v20 = sub_24F9257A8(), v10 = v31, sub_24F921FD8(), v20, sub_24F924838(), swift_getAtKeyPath(), sub_24E601704(&v52, &qword_27F218208, &qword_24F94E940), (*(v13 + 8))(v15, v12), a2 = v30, v19 = *v42) : (v19 = v18), v21 = *(a2 + 48), LOBYTE(v42[0]) = v17, !sub_24EFFE798(v42, 0, v21, v21, v19)))
  {
    v28 = 1;
    v27 = v38;
  }

  else
  {
    sub_24F926DE8();
    v22 = v35;
    v23 = v34;
    v24 = v36;
    (*(v35 + 104))(v34, *MEMORY[0x277CE0FE0], v36);
    v25 = sub_24F926E88();
    (*(v22 + 8))(v23, v24);
    sub_24F927618();
    sub_24F9238C8();
    v42[0] = v25;
    v42[1] = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v46 = v51;
    memset(v41, 0, sizeof(v41));
    memset(v40, 0, sizeof(v40));
    sub_24F9297A8();
    sub_24E601704(v40, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v41, &qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217338, &qword_24F945480);
    sub_24E6A6234();
    v26 = v37;
    sub_24F925EE8();

    (*(v6 + 8))(v8, v5);

    v27 = v38;
    (*(v38 + 32))(v39, v26, v10);
    v28 = 0;
  }

  return (*(v27 + 56))(v39, v28, 1, v10);
}

__n128 sub_24F26681C@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_24F924C98();
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 5);
  v33 = *(v2 + 4);
  v34 = v7;
  v39 = v33;
  v40 = v7;
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);
  v10 = *(v2 + 2);
  v32[0] = v5;
  v32[1] = v8;
  v11 = v8;
  v31 = 0;
  v13 = *v2;
  v12 = v2[1];
  v14 = v2[2];
  v15 = v2[3];
  v37 = v5;
  v38 = v8;
  *&v35[0] = v14;
  *(&v35[0] + 1) = v15;
  v16 = *(v2 + 5);
  v35[1] = v10;
  v35[2] = v6;
  v35[3] = v9;
  v35[4] = v16;
  v28 = v6;
  v29 = v9;
  v30 = v16;
  v26 = v35[0];
  v27 = v10;
  v36[0] = v14;
  v36[1] = v15;

  sub_24F267814(v32, v25);

  sub_24F267940(v35, v25);
  sub_24F267978(v36);

  v17 = v31;
  sub_24F927628();
  sub_24F9242E8();
  *a2 = v4;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  v18 = v26;
  *(a2 + 56) = v27;
  v19 = v29;
  *(a2 + 72) = v28;
  *(a2 + 88) = v19;
  *(a2 + 104) = v30;
  *(a2 + 40) = v18;
  v20 = v25[0];
  v21 = v25[1];
  v22 = v25[3];
  *(a2 + 152) = v25[2];
  *(a2 + 136) = v21;
  *(a2 + 120) = v20;
  result = v25[4];
  v24 = v25[5];
  *(a2 + 216) = v25[6];
  *(a2 + 200) = v24;
  *(a2 + 184) = result;
  *(a2 + 168) = v22;
  return result;
}

uint64_t sub_24F2669DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = sub_24F929888();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110, &qword_24F93F700);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925988();
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v8, v10, v12 & 1);

  *&v31 = v13;
  *(&v31 + 1) = v15;
  LOBYTE(v32) = v17 & 1;
  *(&v32 + 1) = v19;
  sub_24F9268B8();
  sub_24E600B40(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v21 = v26;
  v22 = &v7[*(v25 + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  sub_24F9297A8();
  sub_24E601704(v30, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
  sub_24E64575C();
  sub_24F925EE8();
  (*(v27 + 8))(v21, v29);
  return sub_24E601704(v7, &qword_27F215110, &qword_24F93F700);
}

uint64_t sub_24F266C9C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_24F929888();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v1[1];
  v30 = *v1;
  v31 = v4;
  sub_24E600AEC();

  v5 = sub_24F925E18();
  v7 = v6;
  v9 = v8;
  v10 = sub_24F925C98();
  v12 = v11;
  v14 = v13;
  sub_24E600B40(v5, v7, v9 & 1);

  LODWORD(v30) = sub_24F9251C8();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_24E600B40(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v15;
  v31 = v17;
  v32 = v19 & 1;
  v33 = v21;
  v34 = KeyPath;
  v35 = 0;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  sub_24F9297A8();
  sub_24E601704(v28, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v29, &qword_27F2129B0, &unk_24F945320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8, &unk_24F964BD0);
  sub_24E62FBF4();
  sub_24F925EE8();
  (*(v25 + 8))(v3, v27);
  sub_24E600B40(v15, v17, v19 & 1);
}

double sub_24F266F68@<D0>(__int128 *a1@<X8>)
{
  v68 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v64 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v62 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v63 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v67 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v51[-v22];
  v60 = type metadata accessor for SignInMoltresView(0);
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v59 = *MEMORY[0x277CE0560];
  v58 = v25;
  v56 = v3 + 13;
  v25(v20);
  v57 = v3[7];
  v57(v20, 0, 1, v2);
  v61 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598, &qword_24F945EF0);
  v66 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v67, &qword_27F215598, &qword_24F945EF0);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v65 = v27;
      v53 = v24;
      v29 = v55;
      (v66[4])(v55, &v9[v26], v2);
      sub_24F26784C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v30 = v67;
      v52 = sub_24F92AFF8();
      v31 = v66[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v67, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v53 = v24;
  v65 = v27;
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  if (v65(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v32 = v63;
  sub_24F769764(v63);
  v33 = v62;
  v58(v62, v59, v2);
  v57(v33, 0, 1, v2);
  v34 = *(v61 + 48);
  v35 = v64;
  sub_24E60169C(v32, v64, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598, &qword_24F945EF0);
  v36 = v65;
  if (v65(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F211028 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39E080;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v54;
  sub_24E60169C(v35, v54, &qword_27F215598, &qword_24F945EF0);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v45 = v33;
  v46 = v66;
  v47 = &v35[v34];
  v48 = v55;
  (v66[4])(v55, v47, v2);
  sub_24F26784C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v49 = sub_24F92AFF8();
  v50 = v46[1];
  v50(v48, v2);
  sub_24E601704(v45, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
  v50(v37, v2);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
  if (v49)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F211020 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39E040;
LABEL_18:
  v39 = v38[1];
  v69 = *v38;
  v70 = v39;
  v40 = v38[3];
  v71 = v38[2];
  v72 = v40;
  v41 = v70;
  v42 = v68;
  *v68 = v69;
  v42[1] = v41;
  result = *&v71;
  v44 = v72;
  v42[2] = v71;
  v42[3] = v44;
  return result;
}

uint64_t sub_24F26784C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2679A8()
{
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_24F267A34()
{
  result = qword_27F23D048;
  if (!qword_27F23D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D040, &unk_24F9DA660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217338, &qword_24F945480);
    sub_24E6A6234();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D048);
  }

  return result;
}

unint64_t sub_24F267B18()
{
  result = qword_27F23D058;
  if (!qword_27F23D058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D060, &qword_24F9DA6E0);
    sub_24E602068(&qword_27F23D068, &qword_27F23D070, qword_24F9DA6E8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D058);
  }

  return result;
}

unint64_t sub_24F267BD4()
{
  result = qword_27F23D078;
  if (!qword_27F23D078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D050, &unk_24F9DA670);
    sub_24F267C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D078);
  }

  return result;
}

unint64_t sub_24F267C60()
{
  result = qword_27F23D080;
  if (!qword_27F23D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D030, &qword_24F9DA628);
    sub_24E602068(&qword_27F23D088, &qword_27F23D028, &qword_24F9DA620, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D080);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP011_JetEngine_aB0E11pageMetrics_8pipeline7tracker26clickLocationConfigurationQr0dE004PageG0VSg_AI0G8PipelineVAI18ImpressionsTracker_pSgAD05ClickkL0VSgtFQOyAA15ModifiedContentVyAcDE16actionDispatcher4with15implementationsQrqd___AI06ActionU0Vyqd__GyXEtAI15BaseObjectGraphCRbd__lFQOy12GameStoreKit013GSKOnboardingC0VyAA6VStackVyAA05TupleC0VyAUyA2_6Header33_19D11E5C555F1138A9978CFAF74389B6LLVAA14_PaddingLayoutVG_AUyA2_0sC0A10_LLVA13_GAA6SpacerVtGGA11_A16_AA05EmptyC0VG_A1_Qo_A2_016SignInErrorAlertC8Modifier33_01D15633BC9F85C0F699400E92596DFBLLVG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.__allocating_init(presenter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D098, &qword_24F9DA7C0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = a1 + qword_27F39DFC0;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  LOBYTE(v5) = *(v5 + 40);
  sub_24ED21BB0(v6, v7, v8, v9, v10, v5);

  *(v2 + 16) = v6;
  *(v2 + 24) = v7;
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  *(v2 + 48) = v10;
  *(v2 + 56) = v5;
  return v2;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.init(presenter:)(uint64_t a1)
{
  *(v1 + 72) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D098, &qword_24F9DA7C0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = a1 + qword_27F39DFC0;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  LOBYTE(v5) = *(v5 + 40);
  sub_24ED21BB0(v6, v7, v8, v9, v10, v5);

  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = v10;
  *(v1 + 56) = v5;
  return v1;
}

void *sub_24F2680AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v24 = *(a1 + 41);
  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  v20 = *a1;
  v21 = *(a1 + 64);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  *(a2 + 16) = *a1;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  v13 = *(a2 + 56);
  *(a2 + 56) = v7;
  v18 = v4;
  v19 = v3;
  sub_24ED21BB0(v20, v3, v4, v5, v6, v7);
  sub_24EF43964(v8, v9, v10, v11, v12, v13);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(a2 + 72);
    ObjectType = swift_getObjectType();
    v25 = v20;
    v26 = v19;
    v27 = v18;
    v28 = v5;
    v29 = v6;
    v30 = v7;
    v17 = *(v15 + 8);
    sub_24ED21BB0(v20, v19, v18, v5, v6, v7);
    v17(&v25, v24, v23, v22, v21, ObjectType, v15);
    swift_unknownObjectRelease();
    return sub_24EF43964(v25, v26, v27, v28, v29, v30);
  }

  return result;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.reconfigureArcadeHeaderView(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  return swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall ArcadeTitleEffectCollectionElementsObserver.prepareForReuse()()
{
  swift_beginAccess();
  *(v0 + 72) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.deinit()
{
  sub_24EF43964(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_24E883630(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription, &qword_27F23D0A0, &qword_24F9DA7C8);
  return v0;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.__deallocating_deinit()
{
  sub_24EF43964(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_24E883630(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription, &qword_27F23D0A0, &qword_24F9DA7C8);

  return swift_deallocClassInstance();
}

uint64_t _s12GameStoreKit43ArcadeTitleEffectCollectionElementsObserverC15willDisplayCell_2in14collectionView8asPartOfySo012UICollectionoL0C_AA17ItemLayoutContextVSo0sO0C9JetEngine15BaseObjectGraphCtF_0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0A0, &qword_24F9DA7C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D098, &qword_24F9DA7C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v48 = a1;
  sub_24E8E7C80();
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0C0, &qword_24F9DA880);
  if (swift_dynamicCast())
  {
    sub_24E612C80(&v44, v49);
    v15 = OBJC_IVAR____TtC12GameStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
    swift_beginAccess();
    sub_24F268C70(v2 + v15, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_24E601704(v9, &qword_27F23D0A0, &qword_24F9DA7C8);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v17 = v50;
      v18 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      (*(v18 + 16))(v17, v18);
      sub_24F92AD78();

      (*(v11 + 8))(v13, v10);
    }

    v19 = v50;
    v20 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v20 + 16))(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0D0, &qword_24F9DA890);
    sub_24F268CE0();
    sub_24F9288B8();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v44);
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_24F268D44(v6, v2 + v15);
    swift_endAccess();
    v21 = v50;
    v22 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v22 + 8))(&v44, v21, v22);
    v23 = v47;
    if (v47 == 255)
    {
      v27 = *(v2 + 16);
      v42 = *(v2 + 32);
      v43 = v27;
      v26 = *(v2 + 48);
      v23 = *(v2 + 56);
      sub_24ED21BB0(v27, *(&v27 + 1), v42, *(&v42 + 1), v26, v23);
      v25 = v43;
      v24 = v42;
    }

    else
    {
      v25 = v44;
      v24 = v45;
      v26 = v46;
    }

    v28 = *(v2 + 16);
    v29 = *(v2 + 24);
    v30 = *(v2 + 32);
    v31 = *(v2 + 40);
    v32 = *(v2 + 48);
    *(v2 + 16) = v25;
    *(v2 + 32) = v24;
    *(v2 + 48) = v26;
    v33 = *(v2 + 56);
    *(v2 + 56) = v23;
    sub_24EF43964(v28, v29, v30, v31, v32, v33);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v2 + 72);
      ObjectType = swift_getObjectType();
      v36 = *(v2 + 24);
      v37 = *(v2 + 32);
      v38 = *(v2 + 40);
      v39 = *(v2 + 48);
      v40 = *(v2 + 56);
      *&v44 = *(v2 + 16);
      *(&v44 + 1) = v36;
      *&v45 = v37;
      *(&v45 + 1) = v38;
      v46 = v39;
      v47 = v40;
      v41 = *(v34 + 8);
      sub_24ED21BB0(v44, v36, v37, v38, v39, v40);
      v41(&v44, 0, 0, 1, 0, ObjectType, v34);
      swift_unknownObjectRelease();
      sub_24EF43964(v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47);
    }

    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    return sub_24E601704(&v44, &qword_27F23D0C8, &qword_24F9DA888);
  }
}

void _s12GameStoreKit43ArcadeTitleEffectCollectionElementsObserverC30willDisplayGlobalSupplementary_14registeredWith14collectionView8asPartOfySo020UICollectionReusableQ0C_AA03AnyvM12Registration_pSo0uQ0C9JetEngine15BaseObjectGraphCtF_0(void *a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    ObjectType = swift_getObjectType();
    v7 = a1;
    if (!Strong || (swift_unknownObjectRelease(), Strong != v7))
    {
      v8 = *(v1 + 24);
      v9 = *(v1 + 32);
      v10 = *(v1 + 40);
      v11 = *(v1 + 48);
      v12 = *(v1 + 56);
      v14 = *(v1 + 16);
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v18 = v11;
      v19 = v12;
      v13 = *(v4 + 8);
      sub_24ED21BB0(v14, v8, v9, v10, v11, v12);
      v13(&v14, 0, 0, 1, 0, ObjectType, v4);
      sub_24EF43964(v14, v15, v16, v17, v18, v19);
      *(v1 + 72) = v4;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_24F268A28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F268A78(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for ArcadeTitleEffectCollectionElementsObserver(uint64_t a1)
{
  result = qword_27F23D0A8;
  if (!qword_27F23D0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F268B3C(uint64_t a1)
{
  sub_24F268C0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F268C0C(uint64_t a1)
{
  if (!qword_27F23D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D098, &qword_24F9DA7C0);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23D0B8);
    }
  }
}

uint64_t sub_24F268C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0A0, &qword_24F9DA7C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F268CE0()
{
  result = qword_27F23D0D8;
  if (!qword_27F23D0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D0D0, &qword_24F9DA890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D0D8);
  }

  return result;
}

uint64_t sub_24F268D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D0A0, &qword_24F9DA7C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F268DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F7D8, &qword_24F99D518);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B78, &qword_24F93B790);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F9479A0;
  sub_24F91F638();
  sub_24F91F568();
  sub_24F91F568();
  sub_24F91F638();
  sub_24F91F558();
  v12 = v11;
  (*(v4 + 8))(v9, v3);
  if (v12 > 3600.0)
  {
    sub_24F91F568();
    (*(v4 + 32))(v2, v6, v3);
    v13 = *(v10 + 16);
    if (v13)
    {
      v16 = v10;
      if (v13 < *(v10 + 24) >> 1)
      {
LABEL_4:
        sub_24EDAAC14(1, 1, 1, v2);
        return v10;
      }
    }

    else
    {
      __break(1u);
    }

    v10 = sub_24E616878(1, v13 + 1, 1, v10);
    v16 = v10;
    goto LABEL_4;
  }

  return v10;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter()
{
  if (*(v0 + 96) == 5)
  {
    if (qword_27F210568 == -1)
    {
LABEL_3:
      v1 = sub_24F92AAE8();
      __swift_project_value_buffer(v1, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A5A8();

      return 0;
    }

LABEL_14:
    swift_once();
    goto LABEL_3;
  }

  v3 = *(v0 + 192);
  if ((v3 & 0xC0) == 0x80)
  {
    if (!*(v0 + 40))
    {
      v4 = *(v0 + 184);
      v5 = qword_27F210568;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_24F92AAE8();
      __swift_project_value_buffer(v7, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A5A8();

      sub_24EB6CE70(v4, v3);
      return 0;
    }
  }

  else if (!*(v0 + 32))
  {
    if (qword_27F210568 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  swift_allocObject();
  v12 = sub_24F26A038(a1, a2, a3, a4, a5, a6);

  return v12;
}

double sub_24F2694BC(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  sub_24F26BCD4(v2, v1);

  swift_unknownObjectRelease();
  return result;
}

double ArcadeSubscriptionOfferButtonPresenter.view.setter(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24F26BCD4(a1, a3);

  swift_unknownObjectRelease();
  return result;
}

void (*ArcadeSubscriptionOfferButtonPresenter.view.modify(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F2695DC;
}

void sub_24F2695DC(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 3);
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    sub_24F26BCD4(v6, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F26BCD4(v5, v4);
  }

  swift_unknownObjectRelease();

  free(v3);
}

id ArcadeSubscriptionOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_24E9534EC(v2, v3);
}

void ArcadeSubscriptionOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 120);
  *(a1 + 4) = v2;
}

void ArcadeSubscriptionOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 130);
  *a1 = *(v1 + 126);
  *(a1 + 4) = v2;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  v6 = sub_24F26A038(a1, a2, a3, a4, a5, a6);

  return v6;
}

double sub_24F269728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

double sub_24F269780(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 184);
    *(Strong + 184) = v2;
    v7 = *(Strong + 192);
    *(Strong + 192) = v3;
    sub_24EB6CE50(v2, v3);
    sub_24EB6CE70(v6, v7);
    _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

double sub_24F26981C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.deinit()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 208);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_24E883630(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  sub_24E97D004(*(v0 + 104), *(v0 + 112));

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  sub_24EB6CE70(*(v0 + 184), *(v0 + 192));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ArcadeSubscriptionOfferButtonPresenter.__deallocating_deinit()
{
  ArcadeSubscriptionOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F269978(char a1)
{
  v2 = *(v1 + 88);
  if ((a1 & 1) == 0)
  {
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 88);
    if (!*(v3 + 16))
    {
      return 0;
    }

    v4 = sub_24E76DB58(10);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v7 = *(*(v3 + 56) + 16 * v4);

    return v7;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 88);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_24E76DB58(9);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:

  return 0;
}

BOOL sub_24F269A28()
{
  v1 = *(v0 + 88);
  if (v1 && *(v1 + 96) == 5)
  {
    return 0;
  }

  v2 = *(v0 + 192) >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (v1)
      {
        v4 = *(v1 + 16);
        if (v4 != 4 && (sub_24F0C8AE0(v4, 2u) & 1) != 0)
        {
          return *(v0 + 40) != 0;
        }
      }

      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      v7 = 0;
      v5 = &v7;
      return RestrictionsProtocol.doesAllow(_:properties:)(v5, v1);
    }

LABEL_11:
    __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
    v8 = 0;
    v5 = &v8;
    return RestrictionsProtocol.doesAllow(_:properties:)(v5, v1);
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  return 0;
}

void sub_24F269B08()
{
  v1 = sub_24F928418();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter();
  if (v2)
  {
    v3 = v2;
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    v5 = sub_24F9283F8();
    v6 = (*(*v3 + 192))(v5);
    v16 = MEMORY[0x277D837D0];
    v13 = v6;
    v14 = v7;
    sub_24F9283D8();
    sub_24E857CC8(&v13);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 24);
      Strong = swift_unknownObjectWeakLoadStrong();
      v10 = Strong;
      if (Strong)
      {
        Strong = swift_getObjectType();
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      v13 = v10;
      v16 = Strong;
      ObjectType = swift_getObjectType();
      (*(*(v8 + 8) + 8))(v3, &v13, ObjectType);

      swift_unknownObjectRelease();
      sub_24E857CC8(&v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v11 = sub_24F92AAE8();
    __swift_project_value_buffer(v11, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

double sub_24F269F40(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24F26BCD4(a1, a3);

  swift_unknownObjectRelease();
  return result;
}

void (*sub_24F269F7C(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_24F2695DC;
}

uint64_t sub_24F26A038(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned int *a6)
{
  v7 = v6;
  v71 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233758, &unk_24F9AEEF0);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x28223BE20](v13);
  v68 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x28223BE20](v15);
  v64 = &v62 - v16;
  LODWORD(v16) = a4[1];
  v62 = *a4;
  v63 = v16;
  v17 = a4[2];
  v18 = a4[3];
  v19 = a4[4];
  v20 = a4[5];
  v21 = *a6 | (*(a6 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 184) = 0;
  *(v7 + 192) = -64;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB80, &unk_24F9AEF00);
  v67 = a1;

  sub_24F928F28();
  sub_24E612C80(&v74, v7 + 48);
  v24 = v62;
  v23 = v63;
  *(v7 + 126) = v62;
  *(v7 + 127) = v23;
  *(v7 + 128) = v17;
  *(v7 + 129) = v18;
  *(v7 + 130) = v19;
  *(v7 + 131) = v20;
  if (v21 == 3)
  {
    v73[0] = v24;
    v73[1] = v23;
    v73[2] = v17;
    v73[3] = v18;
    v73[4] = v19;
    v73[5] = v20;
    sub_24E9536D8(v73, &v74, v22);
    LOBYTE(v21) = v74;
    v25.i32[0] = *(&v74 + 1);
    v26 = vmovl_u8(v25).u64[0];
    LOBYTE(v27) = BYTE5(v74);
  }

  else
  {
    v28 = vdupq_n_s64(v21);
    v26 = vmovn_s32(vuzp1q_s32(vshlq_u64(v28, xmmword_24F99A2D0), vshlq_u64(v28, xmmword_24F99A2C0)));
    v27 = v21 >> 40;
  }

  *(v7 + 120) = v21;
  *(v7 + 121) = vuzp1_s8(v26, v26).u32[0];
  *(v7 + 125) = v27;
  v29 = v67;
  if (!v67)
  {
    v32 = 0;
    v31 = 16;
    v33 = 3;
    goto LABEL_8;
  }

  v30 = *(v67 + 96);
  v31 = *(v67 + 97);
  v33 = *(v67 + 104);
  v32 = *(v67 + 112);
  sub_24E9534EC(v33, v32);
  if (v30 == 7)
  {
LABEL_8:
    v30 = 0;
  }

  if (v31 == 16)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  if (v33 == 3)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  *(v7 + 96) = v30;
  *(v7 + 97) = v34;
  if (v33 == 3)
  {
    v36 = 0;
  }

  else
  {
    v36 = v32;
  }

  *(v7 + 104) = v35;
  *(v7 + 112) = v36;
  v75 = type metadata accessor for Restrictions();
  v76 = &protocol witness table for Restrictions;
  sub_24F928FD8();
  sub_24F92A758();
  sub_24E612C80(&v74, v7 + 144);
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F92A758();
  v37 = v74;
  *(v7 + 136) = v74;
  v38 = v37 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v39 = *v38;
  v40 = *(v7 + 184);
  v41 = *(v38 + 8);
  *(v7 + 184) = *v38;
  LOBYTE(v38) = *(v7 + 192);
  *(v7 + 192) = v41;
  sub_24EB6CE50(v39, v41);
  sub_24EB6CE70(v40, v38);
  type metadata accessor for ASKBagContract(0);
  sub_24F92A758();
  if (qword_27F210B10 != -1)
  {
    swift_once();
  }

  v42 = v64;
  sub_24F92A3B8();
  v43 = v66;
  sub_24F92A408();

  (*(v65 + 8))(v42, v43);
  *(v7 + 216) = v72;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);

    sub_24F92A758();
    v44 = *(&v74 + 1);
    ObjectType = swift_getObjectType();
    v46 = *(v29 + 32);
    *&v74 = *(v29 + 24);
    *(&v74 + 1) = v46;
    v47 = *(v44 + 56);

    v48 = v47(&v74, ObjectType, v44);
    v50 = v49;

    *(v7 + 200) = v48;
    *(v7 + 208) = v50;
    v51 = swift_getObjectType();
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = *(v50 + 72);

    v53(v7, sub_24F26BEB4, v52, v51, v50);

    swift_unknownObjectRelease();
  }

  else
  {
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  v54 = *(v7 + 136);
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = *&v54[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];
  swift_retain_n();
  v57 = v54;

  [v56 lock];
  sub_24F213714(v7, sub_24F26BEA4, v55, v57);
  [v56 unlock];

  v58 = *(v7 + 72);
  v59 = *(v7 + 80);
  __swift_project_boxed_opaque_existential_1((v7 + 48), v58);
  (*(v59 + 16))(v58, v59);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE08, &qword_24F9971C8);
  sub_24EEFE2E4();
  sub_24F9288B8();
  v60 = v68;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  (*(v69 + 8))(v60, v70);
  return v7;
}

uint64_t sub_24F26A7B8(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a1[8] >> 6;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = *a3;
      if (v14 == 4 || (sub_24F0C8AE0(v14, 2u) & 1) == 0)
      {
        if (!*(a2 + 16) || (v10 = sub_24E76DB58(4), (v19 & 1) == 0))
        {
          v12 = 0xD000000000000016;
          v13 = 0x800000024FA5BA00;
          goto LABEL_22;
        }
      }

      else
      {
        v16 = *(a2 + 16);
        if (a6)
        {
          if (!v16 || (v10 = sub_24E76DB58(13), (v17 & 1) == 0))
          {
            v12 = 0xD00000000000002BLL;
            v13 = 0x800000024FA6B8C0;
            goto LABEL_22;
          }
        }

        else if (!v16 || (v10 = sub_24E76DB58(11), (v23 & 1) == 0))
        {
          v12 = 0xD00000000000001CLL;
          v13 = 0x800000024FA5BA80;
          goto LABEL_22;
        }
      }

      goto LABEL_31;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    if (a6)
    {
      if (!*(a2 + 16) || (v10 = sub_24E76DB58(14), (v11 & 1) == 0))
      {
        v12 = 0xD00000000000002ELL;
        v13 = 0x800000024FA71020;
LABEL_22:
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        return localizedString(_:comment:)(*&v12, v20)._countAndFlagsBits;
      }

      goto LABEL_31;
    }

    v21 = *(a2 + 16);
    if (*a1 == 1)
    {
      if (v21)
      {
        v10 = sub_24E76DB58(9);
        if (v22)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_17;
    }

    if (!v21)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = sub_24E76DB58(10);
    if (v18)
    {
LABEL_31:
      a4 = *(*(a2 + 56) + 16 * v10);
      goto LABEL_32;
    }

LABEL_17:
    if (!a5)
    {
      v13 = 0x800000024FA5BAC0;
      v12 = 0xD000000000000015;
      goto LABEL_22;
    }

LABEL_32:

    return a4;
  }

  return 0;
}

double _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v0 + 48), v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    v11._object = 0x800000024FA500B0;
    v11._countAndFlagsBits = 0xD000000000000016;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = localizedString(_:comment:)(v11, v12);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  LOBYTE(v216) = 0;
  v4 = *(v0 + 88);
  if (RestrictionsProtocol.doesAllow(_:properties:)(&v216, v4) || !v4)
  {
    v22 = (v0 + 184);
    v21 = *(v0 + 184);
    v24 = (v0 + 192);
    v23 = *(v0 + 192);
    v216 = v21;
    LOBYTE(v217) = v23;
    if (!v4)
    {
      sub_24EB6CE50(v21, v23);
      v25 = sub_24E6096FC(MEMORY[0x277D84F90]);
      v26 = 4;
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *(v4 + 72);
    if (*(v5 + 16))
    {

      v6 = sub_24E76DB58(12);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        countAndFlagsBits = *v8;
        object = v8[1];

LABEL_8:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          v16 = *(v1 + 104);
          v17 = *(v1 + 112);
          LOWORD(v220) = *(v1 + 96);
          v222 = v16;
          v223 = v17;
          v18 = *(v14 + 32);
          sub_24E9534EC(v16, v17);
          v18(countAndFlagsBits, object, 0, 0, &v220, ObjectType, v14);
          swift_unknownObjectRelease();
          sub_24E97D004(v222, v223);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {

          return result;
        }

        v19 = *(v1 + 24);
        v20 = swift_getObjectType();
        (*(v19 + 128))(countAndFlagsBits, object, v20, v19);
        goto LABEL_105;
      }
    }

    v22 = (v1 + 184);
    v21 = *(v1 + 184);
    v24 = (v1 + 192);
    v23 = *(v1 + 192);
    v216 = v21;
    LOBYTE(v217) = v23;
  }

  v25 = *(v4 + 72);
  v26 = *(v4 + 16);
  sub_24EB6CE50(v21, v23);

LABEL_18:
  LOBYTE(v220) = v26;
  v28 = *(v1 + 32);
  if (v28)
  {
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);

    if (v4)
    {
LABEL_20:
      v31 = *(v4 + 122);
      goto LABEL_23;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    if (v4)
    {
      goto LABEL_20;
    }
  }

  v31 = 0;
LABEL_23:
  v208 = sub_24F26A7B8(&v216, v25, &v220, v29, v30, v31);
  v33 = v32;

  sub_24EB6CE70(v216, v217);
  v34 = *v24 >> 6;
  if (v34 <= 1)
  {
    if (v34)
    {
      if (v4)
      {
        v55 = *(v4 + 16);
        if (v55 != 4 && (sub_24F0C8AE0(v55, 2u) & 1) != 0)
        {
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v56 = *(v1 + 24);
            v57 = swift_getObjectType();
            v58 = *(v1 + 124);
            v220 = *(v1 + 120);
            v221 = v58;
            v59 = *(v1 + 104);
            v60 = *(v1 + 112);
            LOWORD(v216) = *(v1 + 96);
            v217 = v59;
            v218 = v60;
            v61 = v24;
            v62 = *(v56 + 56);
            sub_24E9534EC(v59, v60);
            v62(0, 0, &v220, &v216, 0, v57, v56);
            v24 = v61;
            swift_unknownObjectRelease();
            sub_24E97D004(v217, v218);
          }
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v63 = *(v1 + 24);
        v64 = swift_getObjectType();
        (*(v63 + 144))(0x6973616863727570, 0xEA0000000000676ELL, v64, v63);
LABEL_67:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v35 = sub_24F269978(*(v1 + 184) == 1);
      if (v36)
      {
        v37 = v35;
        v38 = v36;
        v202 = v22;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = v37;
          v40 = v33;
          v41 = *(v1 + 24);
          v204 = v24;
          v42 = swift_getObjectType();
          v43 = *(v1 + 130);
          v214 = *(v1 + 126);
          v215 = v43;
          v44 = *(v1 + 104);
          v45 = *(v1 + 112);
          LOWORD(v216) = *(v1 + 96);
          v217 = v44;
          v218 = v45;
          v46 = *(v41 + 24);
          sub_24E9534EC(v44, v45);
          v194 = v42;
          v197 = v41;
          v33 = v40;
          v37 = v39;
          v24 = v204;
          v46(v208, v33, v39, v38, &v214, 0, 0, &v216, v194, v197);
          swift_unknownObjectRelease();
          sub_24E97D004(v217, v218);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v47 = v37;
          v48 = v24;
          v49 = *(v1 + 24);
          v50 = swift_getObjectType();
          v216 = v208;
          v217 = v33;

          MEMORY[0x253050C20](8236, 0xE200000000000000);
          MEMORY[0x253050C20](v47, v38);

          v51 = *(v49 + 128);
          v52 = v49;
          v24 = v48;
          v51(v216, v217, v50, v52);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        v22 = v202;
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v95 = *(v1 + 24);
          v96 = swift_getObjectType();
          v97 = *(v1 + 104);
          v98 = *(v1 + 112);
          LOWORD(v216) = *(v1 + 96);
          v217 = v97;
          v218 = v98;
          v99 = v24;
          v100 = *(v95 + 32);
          sub_24E9534EC(v97, v98);
          v100(v208, v33, 0, 0, &v216, v96, v95);
          v24 = v99;
          swift_unknownObjectRelease();
          sub_24E97D004(v217, v218);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v101 = *(v1 + 24);
          v102 = swift_getObjectType();
          v103 = v24;
          v104 = *(v101 + 128);

          v104(v208, v33, v102, v101);
          v24 = v103;
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v105 = *(v1 + 24);
        v106 = swift_getObjectType();
        (*(v105 + 144))(0x6269726373627573, 0xE900000000000065, v106, v105);
        goto LABEL_67;
      }
    }

LABEL_68:
    v117 = sub_24F269A28();
    if (!v4 || (*(v4 + 122) & 1) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_70;
  }

  if (v34 != 2)
  {
    if (v4)
    {
      v65 = *(v4 + 88);
      if (*(v65 + 16))
      {

        v66 = sub_24E76DB58(10);
        if (v67)
        {
          v201 = v33;
          v68 = (*(v65 + 56) + 16 * v66);
          v69 = *v68;
          v70 = v68[1];

          swift_beginAccess();
          v205 = v24;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v71 = v69;
            v72 = *(v1 + 24);
            v73 = swift_getObjectType();
            v74 = *(v1 + 130);
            v214 = *(v1 + 126);
            v215 = v74;
            v75 = *(v1 + 104);
            v76 = *(v1 + 112);
            LOWORD(v216) = *(v1 + 96);
            v217 = v75;
            v218 = v76;
            v77 = *(v72 + 24);
            sub_24E9534EC(v75, v76);
            v195 = v73;
            v198 = v72;
            v69 = v71;
            v24 = v205;
            v77(v208, v33, v71, v70, &v214, 0, 0, &v216, v195, v198);
            swift_unknownObjectRelease();
            sub_24E97D004(v217, v218);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v78 = *(v1 + 24);
            v79 = swift_getObjectType();
            v216 = v208;
            v217 = v33;

            MEMORY[0x253050C20](8236, 0xE200000000000000);
            MEMORY[0x253050C20](v69, v70);

            v80 = *(v78 + 128);
            v81 = v78;
            v24 = v205;
            v80(v216, v217, v79, v81);
            swift_unknownObjectRelease();
            goto LABEL_101;
          }

LABEL_99:
          v33 = v201;
          goto LABEL_101;
        }
      }
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v107 = *(v1 + 24);
      v108 = swift_getObjectType();
      v109 = *(v1 + 104);
      v110 = *(v1 + 112);
      LOWORD(v216) = *(v1 + 96);
      v217 = v109;
      v218 = v110;
      v111 = v24;
      v112 = *(v107 + 32);
      sub_24E9534EC(v109, v110);
      v112(v208, v33, 0, 0, &v216, v108, v107);
      v24 = v111;
      swift_unknownObjectRelease();
      sub_24E97D004(v217, v218);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v113 = *(v1 + 24);
      v114 = swift_getObjectType();
      v115 = v24;
      v116 = *(v113 + 128);

      v116(v208, v33, v114, v113);
      v24 = v115;
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  if (!v4)
  {
    goto LABEL_88;
  }

  v53 = *(v4 + 16);
  if (v53 != 4 && (sub_24F0C8AE0(v53, 2u) & 1) != 0)
  {
    v201 = v33;
    if (*(v1 + 40))
    {
      v54 = *(v1 + 96);
    }

    else
    {
      v54 = 5;
    }

    v152 = *(v1 + 97);
    v154 = *(v1 + 104);
    v153 = *(v1 + 112);
    sub_24E9534EC(v154, v153);
    swift_beginAccess();
    v206 = v24;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v155 = *(v1 + 24);
      v156 = swift_getObjectType();
      LOBYTE(v216) = v54;
      BYTE1(v216) = v152;
      v217 = v154;
      v218 = v153;
      v157 = *(v155 + 32);
      sub_24E9534EC(v154, v153);
      v158 = v155;
      v24 = v206;
      v157(v208, v201, 0, 0, &v216, v156, v158);
      swift_unknownObjectRelease();
      sub_24E97D004(v217, v218);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v159 = *(v1 + 24);
      v160 = swift_getObjectType();
      v200 = *(v159 + 128);
      v33 = v201;

      v161 = v159;
      v24 = v206;
      v200(v208, v201, v160, v161);
      sub_24E97D004(v154, v153);
      swift_unknownObjectRelease();
      goto LABEL_101;
    }

    sub_24E97D004(v154, v153);
    goto LABEL_99;
  }

  v82 = *(v4 + 88);
  if (!*(v82 + 16))
  {
LABEL_88:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v140 = *(v1 + 24);
      v141 = swift_getObjectType();
      v142 = *(v1 + 104);
      v143 = *(v1 + 112);
      LOWORD(v216) = *(v1 + 96);
      v217 = v142;
      v218 = v143;
      v144 = v24;
      v145 = *(v140 + 32);
      sub_24E9534EC(v142, v143);
      v145(v208, v33, 0, 0, &v216, v141, v140);
      v24 = v144;
      swift_unknownObjectRelease();
      sub_24E97D004(v217, v218);
    }

    goto LABEL_68;
  }

  v83 = sub_24E76DB58(4);
  if ((v84 & 1) == 0)
  {

    goto LABEL_88;
  }

  v85 = (*(v82 + 56) + 16 * v83);
  v86 = *v85;
  v87 = v85[1];

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v88 = *(v1 + 24);
    v199 = v86;
    v89 = v24;
    v90 = swift_getObjectType();
    v91 = *(v1 + 130);
    v214 = *(v1 + 126);
    v215 = v91;
    v92 = *(v1 + 104);
    v93 = *(v1 + 112);
    LOWORD(v216) = *(v1 + 96);
    v217 = v92;
    v218 = v93;
    v203 = v22;
    v94 = *(v88 + 24);
    sub_24E9534EC(v92, v93);
    v196 = v90;
    v24 = v89;
    v94(v208, v33, v199, v87, &v214, 0, 0, &v216, v196, v88);
    v22 = v203;

    swift_unknownObjectRelease();
    sub_24E97D004(v217, v218);
  }

  else
  {
  }

LABEL_101:
  v117 = sub_24F269A28();
  if ((*(v4 + 122) & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_70:
  if (!*(v1 + 200))
  {
    goto LABEL_102;
  }

  v118 = *(v1 + 208);
  v119 = swift_getObjectType();
  (*(v118 + 16))(&v216, v119, v118);
  if (v219 >> 60 == 1)
  {
    if (v216)
    {
      if (*(v1 + 216) != 1)
      {
        v146 = *(v1 + 97);
        v148 = *(v1 + 104);
        v147 = *(v1 + 112);
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v149 = *(v1 + 24);
          v150 = swift_getObjectType();
          LOBYTE(v211) = 5;
          HIBYTE(v211) = v146;
          v212 = v148;
          v213 = v147;
          v151 = *(v149 + 32);
          sub_24E9534EC(v148, v147);
          v151(v208, v33, 0, 0, &v211, v150, v149);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_24E9534EC(v148, v147);
        }

        sub_24E97D004(v148, v147);
        v117 = 0;
        goto LABEL_126;
      }

      v133 = *v24;
      if (v133 >> 6 == 2)
      {
        v164 = *(v4 + 80);
        if (*(v164 + 16))
        {
          v165 = v33;
          v166 = *v22;
          sub_24EB6CE50(*v22, v133);

          v167 = sub_24E76DB58(15);
          if (v168)
          {
            v169 = (*(v164 + 56) + 16 * v167);
            v138 = *v169;
            v139 = v169[1];

            sub_24EB6CE70(v166, v133);
            v33 = v165;
            goto LABEL_112;
          }

          sub_24EB6CE70(v166, v133);
          v33 = v165;
        }
      }

      else if (!(v133 >> 6))
      {
        v134 = *(v4 + 80);
        if (*(v134 + 16))
        {

          v135 = sub_24E76DB58(16);
          if (v136)
          {
            v137 = (*(v134 + 56) + 16 * v135);
            v138 = *v137;
            v139 = v137[1];

LABEL_112:

            v170 = *(v1 + 97);
            if (v170 == 3 || v170 == 6)
            {
              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v175 = *(v1 + 24);
                v176 = swift_getObjectType();
                v177 = *(v1 + 97);
                LOBYTE(v211) = 0;
                HIBYTE(v211) = v177;
                v212 = 0;
                v213 = 0;
                (*(v175 + 48))(v138, v139, &v211, v176, v175);
LABEL_134:
                swift_unknownObjectRelease();

                goto LABEL_125;
              }
            }

            else
            {
              if (v170 == 8)
              {
                swift_beginAccess();
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v171 = *(v1 + 24);
                  v207 = swift_getObjectType();
                  v172 = *(v1 + 97);
                  if (qword_27F210200 != -1)
                  {
                    swift_once();
                  }

                  v173 = qword_27F2287C0;
                  v174 = objc_opt_self();
                  LOBYTE(v211) = 0;
                  HIBYTE(v211) = v172;
                  v212 = v173;
                  v213 = [v174 whiteColor];
                  (*(v171 + 48))(v138, v139, &v211, v207, v171);

                  swift_unknownObjectRelease();
                  sub_24E97D004(v212, v213);
                  goto LABEL_126;
                }

                goto LABEL_135;
              }

              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v187 = *(v1 + 24);
                v188 = v33;
                v189 = swift_getObjectType();
                v190 = *(v1 + 104);
                v191 = *(v1 + 112);
                v211 = *(v1 + 96);
                v212 = v190;
                v213 = v191;
                v192 = *(v187 + 48);
                sub_24E9534EC(v190, v191);
                v193 = v189;
                v33 = v188;
                v192(v138, v139, &v211, v193, v187);
                goto LABEL_134;
              }
            }

LABEL_135:

            goto LABEL_126;
          }
        }
      }

      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_126:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v183 = *(v1 + 24);
          v184 = swift_getObjectType();
          (*(v183 + 128))(v208, v33, v184, v183);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_103;
        }

        v185 = *(v1 + 24);
        v186 = swift_getObjectType();
        (*(v185 + 144))(0x726564726F657270, 0xEA00000000006465, v186, v185);
        goto LABEL_131;
      }

      v178 = *(v1 + 24);
      v179 = swift_getObjectType();
      v180 = *(v1 + 104);
      v181 = *(v1 + 112);
      v211 = *(v1 + 96);
      v212 = v180;
      v213 = v181;
      v182 = *(v178 + 32);
      sub_24E9534EC(v180, v181);
      v182(v208, v33, 0, 0, &v211, v179, v178);
      swift_unknownObjectRelease();
LABEL_125:
      sub_24E97D004(v212, v213);
      goto LABEL_126;
    }

LABEL_102:

    goto LABEL_103;
  }

  if (!(v219 >> 60))
  {

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v120 = *(v1 + 24);
      v121 = swift_getObjectType();
      v122 = *(v1 + 124);
      v209 = *(v1 + 120);
      v210 = v122;
      v123 = *(v1 + 104);
      v124 = *(v1 + 112);
      v211 = *(v1 + 96);
      v212 = v123;
      v213 = v124;
      v125 = *(v120 + 56);
      sub_24E9534EC(v123, v124);
      v125(0, 0, &v209, &v211, 0, v121, v120);
      swift_unknownObjectRelease();
      sub_24E97D004(v212, v213);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v126 = *(v1 + 24);
      v127 = swift_getObjectType();
      v128._countAndFlagsBits = 0xD00000000000001CLL;
      v128._object = 0x800000024FA71000;
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      v130 = localizedString(_:comment:)(v128, v129);
      (*(v126 + 128))(v130._countAndFlagsBits, v130._object, v127, v126);
      swift_unknownObjectRelease();
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_103;
    }

    v131 = *(v1 + 24);
    v132 = swift_getObjectType();
    (*(v131 + 144))(0x676E6964616F6CLL, 0xE700000000000000, v132, v131);
LABEL_131:
    swift_unknownObjectRelease();
    goto LABEL_103;
  }

  sub_24E88D2AC(&v216);
LABEL_103:
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return result;
  }

  v162 = *(v1 + 24);
  v163 = swift_getObjectType();
  (*(v162 + 16))(v117, v163, v162);
LABEL_105:
  swift_unknownObjectRelease();
  return result;
}

double sub_24F26BCD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  return _s12GameStoreKit38ArcadeSubscriptionOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_24F26BDC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F26BE6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24F26BED8()
{
  result = qword_27F23D0E0;
  if (!qword_27F23D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D0E0);
  }

  return result;
}

unint64_t sub_24F26BF34()
{
  result = qword_27F23D0E8[0];
  if (!qword_27F23D0E8[0])
  {
    type metadata accessor for BatchPurchaseParams();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23D0E8);
  }

  return result;
}

void sub_24F26BF8C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  if ([v4 valueWithNewObjectInContext_])
  {
    v5 = *(a2 + 16);
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = MEMORY[0x277D84F90];
      sub_24F457900(0, v5, 0);
      v6 = v13;
      v7 = a2 + 32;
      do
      {
        sub_24EB69CEC(v7, v12);
        v8 = sub_24EBA9E24();
        sub_24E95A048(v12);
        v13 = v6;
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_24F457900((v9 > 1), v10 + 1, 1);
          v6 = v13;
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
        v7 += 160;
        --v5;
      }

      while (v5);
    }

    v12[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
    v11 = [v4 valueWithObject:sub_24F92CF68() inContext:a1];
    swift_unknownObjectRelease();
    if (v11)
    {
      sub_24F92C328();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24F26C13C(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v3 + 104))(v6, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

unint64_t sub_24F26C248()
{
  result = qword_27F23A788;
  if (!qword_27F23A788)
  {
    type metadata accessor for LocalAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A788);
  }

  return result;
}

void sub_24F26C2B8(uint64_t a1)
{
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C330, &qword_24F9DAB90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v17 - v7);
  v9 = sub_24F929FB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    type metadata accessor for PageRenderMetricsViewModifier(0);
    sub_24F76A268(v8);
    v13 = *(a1 + 8);
    if (*(a1 + 16) != 1)
    {

      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      v17 = v2;
      v15 = v3;
      v16 = v14;
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v13, 0);
      (*(v15 + 8))(v5, v17);
    }

    sub_24F929F78();
    sub_24F92A0B8();
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_24F26C530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  sub_24F26CBF0(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24F26CC58(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D188, &qword_24F9DABE8);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D190, &qword_24F9DABF0) + 36));
  *v11 = sub_24F26CCBC;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  sub_24F26CBF0(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_24F26CC58(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D198, &qword_24F9DABF8);
  v14 = (a3 + *(result + 36));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = sub_24F26CE9C;
  v14[3] = v12;
  return result;
}

uint64_t sub_24F26C6F4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for PageRenderMetricsViewModifier(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 1) = swift_getKeyPath();
  v9[16] = 0;
  v10 = *(v7 + 24);
  *&v9[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231510, &qword_24F9A6490);
  swift_storeEnumTagMultiPayload();
  *v9 = a1;

  MEMORY[0x25304C420](v9, a2, v7, a3);
  return sub_24F26C880(v9);
}

uint64_t type metadata accessor for PageRenderMetricsViewModifier(uint64_t a1)
{
  result = qword_27F23D170;
  if (!qword_27F23D170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F26C84C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9244D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F26C880(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderMetricsViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F26C8F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231530, &qword_24F9A6528);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_24F26C9CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231530, &qword_24F9A6528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F26CA7C(uint64_t a1, __n128 a2)
{
  sub_24F26CB18(319, a2);
  if (v2 <= 0x3F)
  {
    sub_24EB999AC();
    if (v3 <= 0x3F)
    {
      sub_24F26CB70(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F26CB18(uint64_t a1, __n128 a2)
{
  if (!qword_27F23D180)
  {
    sub_24F92A0F8();
    v2 = sub_24F92C4A8();
    if (!v3)
    {
      atomic_store(v2, &qword_27F23D180);
    }
  }
}

void sub_24F26CB70(uint64_t a1)
{
  if (!qword_27F231550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C330, &qword_24F9DAB90);
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F231550);
    }
  }
}

uint64_t sub_24F26CBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderMetricsViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F26CC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderMetricsViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F26CCBC()
{
  v1 = type metadata accessor for PageRenderMetricsViewModifier(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80))))
  {
    return sub_24F92A0A8();
  }

  return result;
}

uint64_t objectdestroyTm_59()
{
  v1 = (type metadata accessor for PageRenderMetricsViewModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_24E62A5EC(*(v2 + 8), *(v2 + 16));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231510, &qword_24F9A6490);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F9219D8();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_24F26CE9C()
{
  v1 = *(type metadata accessor for PageRenderMetricsViewModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24F26C2B8(v2);
}

uint64_t sub_24F26CF70(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F26CFF4()
{
  result = qword_27F23D1B0;
  if (!qword_27F23D1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D188, &qword_24F9DABE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D1B0);
  }

  return result;
}

uint64_t sub_24F26D05C()
{
  v0 = sub_24F91EF78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-v5];
  sub_24F91EE38();
  sub_24F26E2F4(&qword_27F225C00, MEMORY[0x277CC8B48], v7);
  v8 = 0;
  if ((sub_24F92BBE8() & 1) == 0)
  {
    sub_24F92BC08();
    sub_24F26E2F4(&qword_27F22D310, MEMORY[0x277CC8B38], v9);
    sub_24F92AF58();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v11 = sub_24F92BC88();
    v8 = *v12;

    v11(v14, 0);
    v10(v6, v0);
  }

  return v8;
}

uint64_t sub_24F26D234(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_24F92B248();
  return sub_24F92B3A8();
}

Swift::String __swiftcall String.asMarkdown(configuration:)(GameStoreKit::NqmlConfiguration *configuration)
{
  v1 = *&configuration->listItemStyle.super.isa;
  listItemBullet = configuration->listItemBullet;
  v25 = v1;
  v26 = *&configuration->orderedListItemBulletFormat._object;
  v2 = *&configuration->font.super.isa;
  newline = configuration->newline;
  v23 = v2;
  v3 = type metadata accessor for MarkdownStringGenerator();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_accumulator];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_didParseEverything] = 1;
  v6 = objc_allocWithZone(ASKNQMLParser);

  sub_24E8EB83C(&newline, v21);
  v7 = sub_24F92B098();

  v8 = [v6 initWithString_];

  *&v4[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser] = v8;
  v9 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_configuration];
  *v9 = newline;
  v10 = v26;
  v12 = v23;
  v11 = listItemBullet;
  v9[3] = v25;
  v9[4] = v10;
  v9[1] = v12;
  v9[2] = v11;
  v20.receiver = v4;
  v20.super_class = v3;
  v13 = [(GameStoreKit::NqmlConfiguration *)&v20 init];
  [*(&v13->newline._countAndFlagsBits + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser) setDelegate_];
  v14 = sub_24F26D57C();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_24F26D434()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F23D1C0);
  __swift_project_value_buffer(v4, qword_27F23D1C0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24F26D57C()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser) parse];
  v6 = (v0 + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_accumulator);
  swift_beginAccess();
  v7 = v6[1];
  v12[1] = *v6;
  v12[2] = v7;

  sub_24F91EA68();
  sub_24E600AEC();
  v8 = sub_24F92C538();
  v10 = v9;
  (*(v2 + 8))(v5, v1);

  *v6 = v8;
  v6[1] = v10;

  return v8;
}

id sub_24F26DA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarkdownStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24F26DAFC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_24F26DC4C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_24F92C878();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_24F92C928() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_24F26DC4C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_24F26DCE4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_24F26DD58(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_24F26DCE4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_24F26DE7C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24F26DD58(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_24F92C928();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_24F26DE7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24F92B348();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x253050C70](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_24F26DEF8(uint64_t a1)
{
  if (qword_27F211030 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F23D1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v6);
  sub_24F92A5A8();

  *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_didParseEverything) = 0;
  return result;
}

unint64_t sub_24F26E0C8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_accumulator);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_24F26D234(v4, v5);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_10;
  }

  if (sub_24F92AF18())
  {

LABEL_9:
    sub_24E8EC218();
    sub_24F92BC98();
    goto LABEL_10;
  }

  result = sub_24F26DAFC(v6, v8);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
    return result;
  }

  v10 = result;

  v11 = (v10 - 14) <= 0xFFFFFFFB && (v10 - 8232) >= 2;
  if (!v11 || v10 == 133)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (qword_27F210F40 != -1)
  {
    swift_once();
  }

  v13 = a1;
  v12 = a2;
  if (qword_27F39DBA0)
  {
    v14 = qword_27F39DBA0;
    v15 = sub_24F92B098();
    v16 = sub_24F92B228();

    v17 = sub_24F92B098();
    v18 = [v14 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{v16, v17}];

    v13 = sub_24F92B0D8();
    v12 = v19;
  }

  swift_beginAccess();
  MEMORY[0x253050C20](v13, v12);
  swift_endAccess();
}

uint64_t sub_24F26E2F4(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_24F91EE38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ConversationHandle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_24EA15AB8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_24EDD3E74(v2, v3);
}

uint64_t sub_24F26E39C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];
  v5 = *(result + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      sub_24ED7CF18(&v7, *(v2 + v6));
      v6 += 24;
      --v5;
    }

    while (v5);

    v4 = v8;
  }

  *a2 = v2;
  a2[1] = v4;
  return result;
}

unint64_t ConversationHandle.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x646E61486C6C6163;
  *(inited + 40) = 0xEB0000000073656CLL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690, &qword_24F98E9E8);
  *(inited + 80) = sub_24F26F088(&qword_27F23D1F8, sub_24F26E56C, MEMORY[0x277D22590]);
  *(inited + 48) = v3;

  v5 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24ED2CD6C(inited + 32);
  v6 = sub_24E80FFAC(v5);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_24F26E56C()
{
  result = qword_27F23D200;
  if (!qword_27F23D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D200);
  }

  return result;
}

uint64_t sub_24F26E5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x646E61486C6C6163 && a2 == 0xEB0000000073656CLL;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E61486C6C6163 && a2 == 0xEF7365707954656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F26E6DC(uint64_t a1)
{
  v2 = sub_24F26EF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F26E718(uint64_t a1)
{
  v2 = sub_24F26EF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationHandle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D208, &qword_24F9DAC20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F26EF68();

  sub_24F92D128();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690, &qword_24F98E9E8);
  sub_24F26F088(&qword_27F22BE30, sub_24EC37814, MEMORY[0x277D83948]);
  sub_24F92CD48();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D218, &qword_24F9DAC28);
    sub_24F26EFBC(&qword_27F23D220, sub_24F26F034, MEMORY[0x277D83B50]);
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

void ConversationHandle.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_24EA1DBB0(a1, v3);

  sub_24EDC97AC(a1, v4);
}

uint64_t ConversationHandle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24EA1DBB0(v4, v1);
  sub_24EDC97AC(v4, v2);
  return sub_24F92D0B8();
}

uint64_t ConversationHandle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D230, &qword_24F9DAC30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F26EF68();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690, &qword_24F98E9E8);
  v13 = 0;
  sub_24F26F088(&qword_27F22BE48, sub_24EC37CB4, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D218, &qword_24F9DAC28);
  v13 = 1;
  sub_24F26EFBC(&qword_27F23D238, sub_24F26F100, MEMORY[0x277D83B70]);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F26ECB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24EA1DBB0(v4, v1);
  sub_24EDC97AC(v4, v2);
  return sub_24F92D0B8();
}

void sub_24F26ED04(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_24EA1DBB0(a1, v3);

  sub_24EDC97AC(a1, v4);
}

uint64_t sub_24F26ED44()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  sub_24EA1DBB0(v4, v1);
  sub_24EDC97AC(v4, v2);
  return sub_24F92D0B8();
}

unint64_t sub_24F26EDC4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x646E61486C6C6163;
  *(inited + 40) = 0xEB0000000073656CLL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690, &qword_24F98E9E8);
  *(inited + 80) = sub_24F26F088(&qword_27F23D1F8, sub_24F26E56C, MEMORY[0x277D22590]);
  *(inited + 48) = v3;

  v5 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24ED2CD6C(inited + 32);
  v6 = sub_24E80FFAC(v5);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F26EF0C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_24EA15AB8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_24EDD3E74(v2, v3);
}

unint64_t sub_24F26EF68()
{
  result = qword_27F23D210;
  if (!qword_27F23D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D210);
  }

  return result;
}

uint64_t sub_24F26EFBC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D218, &qword_24F9DAC28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F26F034()
{
  result = qword_27F23D228;
  if (!qword_27F23D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D228);
  }

  return result;
}

uint64_t sub_24F26F088(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237690, &qword_24F98E9E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F26F100()
{
  result = qword_27F23D240;
  if (!qword_27F23D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D240);
  }

  return result;
}

unint64_t sub_24F26F158()
{
  result = qword_27F23D248;
  if (!qword_27F23D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D248);
  }

  return result;
}

unint64_t sub_24F26F1D0()
{
  result = qword_27F23D250;
  if (!qword_27F23D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D250);
  }

  return result;
}

unint64_t sub_24F26F228()
{
  result = qword_27F23D258;
  if (!qword_27F23D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D258);
  }

  return result;
}

unint64_t sub_24F26F280()
{
  result = qword_27F23D260;
  if (!qword_27F23D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D260);
  }

  return result;
}

id EmptyLayoutSectionProvider.layoutSection(for:with:in:shelfLayoutSpacingProvider:shelfSupplementaryProvider:itemSupplementaryProvider:asPartOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24EB07708(a1, &v8 - v3);
  v5 = type metadata accessor for ShelfLayoutContext(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = _sSo25NSCollectionLayoutSectionC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v4);
  sub_24F0857FC(v4);
  return v6;
}

id sub_24F26F3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24EB07708(a1, &v8 - v3);
  v5 = type metadata accessor for ShelfLayoutContext(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = _sSo25NSCollectionLayoutSectionC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v4);
  sub_24F0857FC(v4);
  return v6;
}

uint64_t sub_24F26F55C(uint64_t a1, void *a2)
{
  if (a1 == 0xD000000000000017 && 0x800000024FA71110 == a2 || (sub_24F92CE08() & 1) != 0)
  {
    v4 = sub_24F91FE58();
    *(&v22 + 1) = v4;
    v23 = sub_24F17D9D0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08030], v4);
    v6 = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {

    v8._countAndFlagsBits = a1;
    v8._object = a2;
    Feature.init(rawValue:)(v8);
    if (v16 == 16)
    {
      v18 = 0u;
      v19 = 0u;
      v20 = 0;

      Feature.iOS.init(rawValue:)(&v16);
      v9 = v16;
      if (v16 == 11)
      {
        v10 = 0;
        v11 = 0;
        *&v22 = 0;
        v21 = 0uLL;
      }

      else
      {
        v11 = sub_24F26F8C0();
        LOBYTE(v21) = v9;
        v10 = &type metadata for Feature.iOS;
      }

      *(&v22 + 1) = v10;
      v23 = v11;
      if (*(&v19 + 1))
      {
        sub_24F26F7E8(&v18);
      }
    }

    else
    {
      *(&v19 + 1) = &type metadata for Feature;
      v20 = sub_24EAEAC44();
      LOBYTE(v18) = v16;
      sub_24E612C80(&v18, &v21);
    }

    sub_24F26F850(&v21, &v16);
    if (v17)
    {
      sub_24E612C80(&v16, &v18);
    }

    else
    {

      v12 = sub_24F28B3E4(a1, a2);
      if (v12 == 5)
      {
        v13 = 0;
        v14 = 0;
        v18 = 0uLL;
        *&v19 = 0;
      }

      else
      {
        v15 = v12;
        v14 = sub_24EDA569C();
        LOBYTE(v18) = v15;
        v13 = &_s14descr2861AC041O5GamesON;
      }

      *(&v19 + 1) = v13;
      v20 = v14;
      if (v17)
      {
        sub_24F26F7E8(&v16);
      }
    }

    sub_24F26F7E8(&v21);
    v21 = v18;
    v22 = v19;
    v23 = v20;
    sub_24F26F850(&v21, &v16);
    if (v17)
    {
      sub_24E612C80(&v16, &v18);
      v6 = sub_24F91FE68();
      __swift_destroy_boxed_opaque_existential_1(&v18);
      sub_24F26F7E8(&v21);
    }

    else
    {
      sub_24F26F7E8(&v16);
      sub_24F26F7E8(&v21);
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_24F26F7E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D268, &unk_24F9DAEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F26F850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D268, &unk_24F9DAEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F26F8C0()
{
  result = qword_27F23D270[0];
  if (!qword_27F23D270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23D270);
  }

  return result;
}

uint64_t sub_24F26F92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v6 = sub_24F92A9E8();
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F92A758();
  v7 = v27[0];
  v8 = v27[0] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v9 = *(v8 + 8) >> 6;
  if (v9 <= 1)
  {
    if (v9)
    {
      v10 = &OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_purchasingAction;
    }

    else
    {
      v10 = &OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction;
    }

    v12 = *(a1 + *v10);
    if (!v12)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v9 == 2)
  {
    v11 = &OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_subscribedAction;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC12GameStoreKit29ArcadeSubscriptionStateAction_unknownAction;
  }

  v12 = *(a1 + *v11);
  if (v12)
  {
LABEL_11:
    v14 = type metadata accessor for Action(0);
    v13 = sub_24F26FC54(&qword_27F216DE8, type metadata accessor for Action);
    goto LABEL_13;
  }

  v14 = 0;
  v13 = 0;
LABEL_13:
  v27[0] = v12;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = v14;
  v27[4] = v13;

  sub_24E7538CC(v27, &v23);
  if (v24)
  {
    sub_24E612C80(&v23, v26);
    type metadata accessor for ArcadeSubscriptionStateActionImplementation(0, a3, v15, v16);
    swift_getWitnessTable();
    sub_24F1489C4(v26, a2);
    v17 = sub_24E74EC40();
    swift_retain_n();
    v18 = sub_24F92BEF8();
    v24 = v17;
    v25 = MEMORY[0x277D225C0];
    *&v23 = v18;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_24EA418B4(v27);
    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    sub_24EA418B4(&v23);
    type metadata accessor for ArcadeSubscriptionStateActionImplementation.ArcadeSubscriptionStateActionImplementationError(0, a3, v19, v20);
    swift_getWitnessTable();
    v21 = swift_allocError();
    sub_24F92A9A8();

    sub_24EA418B4(v27);
  }

  return v6;
}

uint64_t sub_24F26FC54(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t ProductNoRatings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v20);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  return v25;
}

uint64_t ProductNoRatings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v21);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  return v25;
}

uint64_t ProductNoRatings.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t ProductNoRatings.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductNoRatings(uint64_t a1)
{
  result = qword_27F23D378;
  if (!qword_27F23D378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F27023C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F2702BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AsymmetricalInsetRoundedRectangle(uint64_t a1)
{
  result = qword_27F23D388;
  if (!qword_27F23D388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F270378(uint64_t a1)
{
  result = sub_24F924258();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F2703F0()
{
  result = qword_27F23D398;
  if (!qword_27F23D398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D3A0, &qword_24F9DB0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D398);
  }

  return result;
}

CGFloat sub_24F270454(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = sub_24F923F78();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  if (!CGRectIsNull(v36))
  {
    v35 = a3;
    v37.origin.x = a5;
    v37.origin.y = a6;
    v37.size.width = a7;
    v37.size.height = a8;
    v38 = CGRectStandardize(v37);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    v27 = a4;
    if (a2 != a4)
    {
      v28 = *MEMORY[0x277CDFA88];
      v29 = *(v17 + 104);
      v29(v22, v28, v16, a4);
      (v29)(v19, v28, v16);
      LOBYTE(v28) = sub_24F923F68();
      v30 = *(v17 + 8);
      v30(v19, v16);
      v30(v22, v16);
      if (v28)
      {
        v27 = a2;
      }

      else
      {
        v27 = a4;
      }
    }

    a5 = x + v27;
    v31 = width - (a2 + a4);
    v32 = height - (a1 + v35);
    v39.origin.x = x + v27;
    v39.origin.y = y + a1;
    v39.size.width = v31;
    v39.size.height = v32;
    if (CGRectGetWidth(v39) < 0.0)
    {
      return *MEMORY[0x277CBF398];
    }

    v40.origin.x = a5;
    v40.origin.y = y + a1;
    v40.size.width = v31;
    v40.size.height = v32;
    if (CGRectGetHeight(v40) < 0.0)
    {
      return *MEMORY[0x277CBF398];
    }
  }

  return a5;
}

double sub_24F2706B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_24F270454(*(v6 + *(a1 + 20)), *(v6 + *(a1 + 20) + 8), *(v6 + *(a1 + 20) + 16), *(v6 + *(a1 + 20) + 24), a3, a4, a5, a6);
  sub_24F924228();
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

void (*sub_24F270718(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F2707A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F270970(&qword_27F215938, &unk_24F9DB160);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F270820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F270970(&qword_27F215938, &unk_24F9DB160);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F2708A0(uint64_t a1)
{
  v2 = sub_24F270970(&qword_27F215938, &unk_24F9DB160);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24F270970(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AsymmetricalInsetRoundedRectangle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24F2709B4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v5 = 200;
    v3 = &selRef_setIncludeFullRequestInHARLogging_;
    v2 = &selRef_setIncludeFullResponseInHARLogging_;
    v1 = a1 == 2;
  }

  else
  {
    v1 = 0;
    v2 = &selRef_setIncludeFullRequestInHARLogging_;
    v3 = &selRef_setIncludeFullResponseInHARLogging_;
    if (!a1)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v5 = 50;
  }

  v4 = v1;
  v6 = objc_opt_self();
  v1 = 1;
  [v6 setHARLoggingEnabled_];
  [v6 setHARLoggingItemLimit_];
LABEL_7:
  v7 = objc_opt_self();
  [v7 *v3];
  v8 = *v2;

  return [v7 v8];
}

uint64_t sub_24F270AC8(uint64_t a1)
{
  v1 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9479A0;
  *(v2 + 32) = @"debug";
  *(v2 + 40) = @"convergence";
  *(v2 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v3 = @"debug";
  v4 = @"convergence";
  v5 = @"internal";
  v6 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v1, v6);

  if (IsAnyOf)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = sub_24F92B098();
    v10 = [v8 BOOLForKey_];

    if (v10)
    {

      return 3;
    }
  }

  v12 = sub_24F92B0D8();
  v14 = v13;
  if (v12 == sub_24F92B0D8() && v14 == v15)
  {
    goto LABEL_10;
  }

  v17 = sub_24F92CE08();

  if (v17)
  {
LABEL_9:

    return 2;
  }

  v18 = sub_24F92B0D8();
  v20 = v19;
  if (v18 == sub_24F92B0D8() && v20 == v21)
  {
LABEL_10:

    return 2;
  }

  v22 = sub_24F92CE08();

  if (v22)
  {
    goto LABEL_9;
  }

  v23 = sub_24F92B0D8();
  v25 = v24;
  if (v23 == sub_24F92B0D8() && v25 == v26)
  {

    return 1;
  }

  else
  {
    v27 = sub_24F92CE08();

    return v27 & 1;
  }
}

uint64_t MarketingIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a2;
  v40 = a3;
  v4 = sub_24F9285B8();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v33 = a1;
  sub_24F928398();
  v16 = sub_24F928348();
  v34 = v11;
  v32[2] = v12;
  if (v17)
  {
    v38 = v16;
    v39 = v17;
    sub_24F92C7F8();
    v18 = *(v12 + 8);
    v18(v15, v11);
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v32[0] = v6;
    v20 = v11;
    v22 = v21;
    (*(v8 + 8))(v10, v7);
    v38 = v19;
    v39 = v22;
    sub_24F92C7F8();
    v18 = *(v12 + 8);
    v23 = v20;
    v6 = v32[0];
    v18(v15, v23);
  }

  type metadata accessor for MarketingItemRequestInfo();
  v24 = v33;
  sub_24F928398();
  v26 = v35;
  v25 = v36;
  v27 = v37;
  (*(v35 + 16))(v6, v37, v36);
  sub_24F27124C(&qword_27F23D3B8, type metadata accessor for MarketingItemRequestInfo, &protocol conformance descriptor for MarketingItemRequestInfo);
  sub_24F929548();
  v28 = v38;
  if (v38)
  {
    (*(v26 + 8))(v27, v25);
    result = (v18)(v24, v34);
    v40[5] = v28;
  }

  else
  {
    v30 = sub_24F92AC38();
    sub_24F27124C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v31 = 0x4974736575716572;
    v31[1] = 0xEB000000006F666ELL;
    v31[2] = &type metadata for MarketingIntent;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    (*(v26 + 8))(v27, v25);
    v18(v24, v34);
    return sub_24E6585F8(v40);
  }

  return result;
}