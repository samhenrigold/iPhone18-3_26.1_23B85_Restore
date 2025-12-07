uint64_t sub_1A22919E0()
{
  result = qword_1ED94EB08;
  if (!qword_1ED94EB08)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ED94EB08);
  }

  return result;
}

uint64_t sub_1A2291A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A2291A6C(uint64_t result, int a2, int a3)
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
      *(result + 96) = (a2 - 1);
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

void sub_1A2291AEC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_slider;
  type metadata accessor for Slider(0, a2);
  *(v2 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_elapsedLabel;
  *(v2 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_durationLabel;
  *(v2 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = v2 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_style;
  sub_1A224A928(v21);
  v7 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v9 = v8;
  v13 = sub_1A21146A4(v8, v11, *MEMORY[0x1E69DB970], v10 | ((HIDWORD(v10) & 1) << 32), v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v21[1];
  *(v6 + 24) = v21[0];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = v20;
  *(v6 + 56) = v21[2];
  *(v6 + 72) = v22;
  *(v6 + 80) = xmmword_1A230DED0;
  *(v6 + 96) = v13;
  *(v6 + 104) = v15;
  *(v6 + 112) = v17;
  *(v6 + 116) = BYTE4(v17) & 1;
  *(v6 + 120) = v19;
  *(v2 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA81316410FiniteView_contentScale) = 0x3FF0000000000000;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A2291C94()
{
  v1 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_gradientLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v4 = v0 + OBJC_IVAR____TtC13MediaControlsP33_829B57C7993A181FC47DD954DA8131648LiveView_style;
  sub_1A224A928(v19);
  v5 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v7 = v6;
  v11 = sub_1A21146A4(v6, v9, *MEMORY[0x1E69DB970], v8 | ((HIDWORD(v8) & 1) << 32), v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v19[1];
  *(v4 + 24) = v19[0];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 40) = v18;
  *(v4 + 56) = v19[2];
  *(v4 + 72) = v20;
  *(v4 + 80) = xmmword_1A230DED0;
  *(v4 + 96) = v11;
  *(v4 + 104) = v13;
  *(v4 + 112) = v15;
  *(v4 + 116) = BYTE4(v15) & 1;
  *(v4 + 120) = v17;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A2291E98()
{
  result = qword_1ED94EB20;
  if (!qword_1ED94EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EB20);
  }

  return result;
}

id sub_1A2291EEC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() accessibilityTrackPositionValue];
  sub_1A22E65C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C10, qword_1A230A190);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A230A140;
  result = AXDurationStringForDuration();
  if (result)
  {
    v5 = result;
    v6 = sub_1A22E65C8();
    v8 = v7;

    v9 = MEMORY[0x1E69E6158];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1A2233A8C();
    *(v3 + 64) = v10;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    result = AXDurationStringForDuration();
    if (result)
    {
      v11 = result;
      v12 = sub_1A22E65C8();
      v14 = v13;

      *(v3 + 96) = v9;
      *(v3 + 104) = v10;
      *(v3 + 72) = v12;
      *(v3 + 80) = v14;
      v15 = sub_1A22E65F8();

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2292034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2292088(char a1)
{
  if (a1)
  {
    return 0x736165726365642ELL;
  }

  else
  {
    return 0x73616572636E692ELL;
  }
}

uint64_t sub_1A22920BC()
{
  if (*v0)
  {
    return 0x6573616572636564;
  }

  else
  {
    return 0x6573616572636E69;
  }
}

void sub_1A22920E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573616572636E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A22E71E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6573616572636564 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A22E71E8();

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

uint64_t sub_1A22921B8(uint64_t a1)
{
  v2 = sub_1A2292624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A22921F4(uint64_t a1)
{
  v2 = sub_1A2292624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2292278(uint64_t a1)
{
  v2 = sub_1A2292678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A22922B4(uint64_t a1)
{
  v2 = sub_1A2292678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A22922F0(uint64_t a1)
{
  v2 = sub_1A22926CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A229232C(uint64_t a1)
{
  v2 = sub_1A22926CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2292368(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089688, &qword_1A230E108);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089690, &qword_1A230E110);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089698, &qword_1A230E118);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2292624();
  sub_1A22E7318();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1A2292678();
    sub_1A22E7158();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1A22926CC();
    sub_1A22E7158();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1A2292624()
{
  result = qword_1EB08ED50;
  if (!qword_1EB08ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08ED50);
  }

  return result;
}

unint64_t sub_1A2292678()
{
  result = qword_1EB08ED58;
  if (!qword_1EB08ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08ED58);
  }

  return result;
}

unint64_t sub_1A22926CC()
{
  result = qword_1EB08ED60[0];
  if (!qword_1EB08ED60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08ED60);
  }

  return result;
}

uint64_t sub_1A229273C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A22938EC(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1A2292788()
{
  if (*v0)
  {
    return 0x736165726365642ELL;
  }

  else
  {
    return 0x73616572636E692ELL;
  }
}

uint64_t sub_1A22927C0()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_value;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A2292804(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls7Stepper_value;
  swift_beginAccess();
  *(v1 + v3) = a1 & 1;
}

double sub_1A22928C4()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_style;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A2292908(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls7Stepper_style;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*sub_1A2292968(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2264BE8;
}

id sub_1A22929CC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC738]);

  return [v0 init];
}

void *sub_1A2292A04()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A2292A50(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [*(v1 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton) setPreferredSymbolConfiguration:v5 forImageInState:0];
  [*(v1 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton) setPreferredSymbolConfiguration:*(v1 + v3) forImageInState:0];
}

uint64_t (*sub_1A2292AF0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2292B78;
}

void sub_1A2292B78(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    [*(v5 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton) setPreferredSymbolConfiguration:*(v5 + v4) forImageInState:0];
    [*(v5 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton) setPreferredSymbolConfiguration:*(v5 + v4) forImageInState:0];
  }

  free(v3);
}

void *sub_1A2292C04()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*sub_1A2292C64(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementImage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2292CEC;
}

void *sub_1A2292CF8()
{
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A2292D58(void *a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  [*(v3 + *a3) setImage:v8 forState:0];
}

uint64_t (*sub_1A2292DE0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementImage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2292E68;
}

void sub_1A2292E74(void *a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v5[3] + *a3) setImage:*(v5[3] + v5[4]) forState:0];
  }

  free(v5);
}

double sub_1A2292EE4()
{
  swift_beginAccess();

  return result;
}

double sub_1A2292F2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls7Stepper_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(v4);

  return result;
}

uint64_t (*sub_1A2292FE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2293044;
}

uint64_t sub_1A2293044(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x130))(result);
  }

  return result;
}

char *sub_1A22930B0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC13MediaControls7Stepper_value] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_style] = 0x4020000000000000;
  v9 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v10 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_decrementImage] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_incrementImage] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_visualStylingProvider] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for Stepper(v11, v12);
  v13 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton;
  v15 = *&v13[OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton];
  v16 = v13;
  v17 = v15;
  sub_1A225C9E8(v17, v18);

  v19 = *&v13[v14];
  sub_1A225CA7C();

  [*&v13[v14] addTarget:v16 action:sel_decreaseTouchUpInsideSender_ forControlEvents:64];
  [v16 addSubview_];
  v20 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton;
  v21 = *&v16[OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton];
  sub_1A225C9E8(v21, v22);

  v23 = *&v16[v20];
  sub_1A225CA7C();

  [*&v16[v20] addTarget:v16 action:sel_increaseTouchUpInsideSender_ forControlEvents:64];
  [v16 addSubview_];

  return v16;
}

id sub_1A22932D4(uint64_t a1, uint64_t a2)
{
  v18.receiver = v2;
  v18.super_class = type metadata accessor for Stepper(a1, a2);
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  [v2 bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  CGRectGetWidth(v29);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))();
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectGetMinX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  CGRectGetMinY(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetHeight(v32);
  v7 = *(v2 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton);
  [v2 bounds];
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = 0;
  sub_1A22E6BA8();
  [v7 setFrame_];
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  CGRectGetMaxX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  CGRectGetMinY(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  CGRectGetHeight(v35);
  v12 = *(v2 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton);
  [v2 bounds];
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = 0;
  sub_1A22E6BA8();
  return [v12 setFrame_];
}

id sub_1A229352C(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))(a2);

  return [v2 sendActionsForControlEvents_];
}

void sub_1A22935A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x98);
  v6 = a1;
  v5(a4);
  [v6 sendActionsForControlEvents_];
}

void sub_1A2293640()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton) imageView];
  v3 = MEMORY[0x1E69E7D40];
  if (v2)
  {
    v4 = v2;
    v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
    if (v5)
    {
      v6 = v5;
      v7 = [v1 traitCollection];
      (*(*v6 + 160))(0, v4, v7);
    }
  }

  v8 = [*(v1 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton) imageView];
  if (v8)
  {
    v12 = v8;
    v9 = (*((*v3 & *v1) + 0x108))();
    if (v9)
    {
      v10 = v9;
      v11 = [v1 traitCollection];
      (*(*v10 + 160))(0, v12, v11);
    }
  }
}

id sub_1A229382C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Stepper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A22938EC(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0896E8, &qword_1A230E4E0);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0896F0, &qword_1A230E4E8);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0896F8, &qword_1A230E4F0);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2292624();
  v10 = v26;
  sub_1A22E7308();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_1A22E7148();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_1A22E6EE8();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089700, &qword_1A230E4F8);
    *v18 = &type metadata for Stepper.AdjustmentType;
    sub_1A22E70C8();
    sub_1A22E6ED8();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1A2292678();
    sub_1A22E70B8();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1A22926CC();
    sub_1A22E70B8();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v27;
}

void sub_1A2293D4C()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_value) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_style) = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v2 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementImage) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementImage) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_visualStylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A2293E40()
{
  result = qword_1EB0896E0;
  if (!qword_1EB0896E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0896E0);
  }

  return result;
}

unint64_t sub_1A2293EE8()
{
  result = qword_1EB08F2F0;
  if (!qword_1EB08F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08F2F0);
  }

  return result;
}

unint64_t sub_1A2293F40()
{
  result = qword_1EB08F400;
  if (!qword_1EB08F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08F400);
  }

  return result;
}

unint64_t sub_1A2293F98()
{
  result = qword_1EB08F408[0];
  if (!qword_1EB08F408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08F408);
  }

  return result;
}

unint64_t sub_1A2293FF0()
{
  result = qword_1EB08F490;
  if (!qword_1EB08F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08F490);
  }

  return result;
}

unint64_t sub_1A2294048()
{
  result = qword_1EB08F498[0];
  if (!qword_1EB08F498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08F498);
  }

  return result;
}

unint64_t sub_1A22940A0()
{
  result = qword_1EB08F520;
  if (!qword_1EB08F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08F520);
  }

  return result;
}

unint64_t sub_1A22940F8()
{
  result = qword_1EB08F528[0];
  if (!qword_1EB08F528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08F528);
  }

  return result;
}

id sub_1A2294158(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionsView(0, a2);
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

id sub_1A22941A4()
{
  result = [v0 viewIfLoaded];
  if (result)
  {
    v3 = result;
    type metadata accessor for SessionsView(0, v2);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1A2294200()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_dismissHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A229425C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6, v7);
}

uint64_t sub_1A229431C()
{
  v1 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2294360(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView)) + 0x168))(a1);
}

uint64_t (*sub_1A2294408(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2294490;
}

void sub_1A2294490(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView)) + 0x168))(*(v3[3] + v3[4]));
  }

  free(v3);
}

double sub_1A2294524()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint;
  swift_beginAccess();
  return *v1;
}

void sub_1A229456C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint);
  v6 = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v6);
  if (v8)
  {
    v9 = v8;
    (*((*v7 & *v8) + 0x180))(*v5, v5[1]);
  }
}

void (*sub_1A2294644(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22946CC;
}

void sub_1A22946CC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & **(v3 + 24)) + 0x88))(v4);
    if (v6)
    {
      v7 = v6;
      v8 = (*(v3 + 24) + *(v3 + 32));
      (*((*v5 & *v6) + 0x180))(*v8, v8[1]);
    }
  }

  free(v3);
}

id sub_1A229479C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1A22976BC(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id sub_1A22947F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A22976BC(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A2294824@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69AE578];
  v3 = sub_1A22E58F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A22948F8()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SessionsViewController(0);
  v1 = objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))(v1);
  (*((*v3 & *v2) + 0x180))(v4);
  [v2 setMaximumContentSizeCategory_];
  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter);
  v6 = *(*v5 + 120);
  v7 = swift_unknownObjectRetain();
  v8 = v6(v7, &off_1F14415E0);
  (*(*v5 + 184))(v8);
  v9 = *((*v3 & *v2) + 0x100);
  v10 = swift_unknownObjectRetain();
  v11 = v9(v10, &off_1F1441610);
  (*(*v5 + 144))(v14, v11);
  (*((*v3 & *v0) + 0xF8))(v14);
  return sub_1A2248550(v14);
}

uint64_t sub_1A2294B90(char a1, SEL *a2, uint64_t a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for SessionsViewController(0);
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB0))(a3);
}

void sub_1A2294C2C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SessionsViewController(0);
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0xB0))(a5);
}

uint64_t sub_1A2294CD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_routingMode;
  swift_beginAccess();
  v4 = sub_1A22E58F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A2294D58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_routingMode;
  swift_beginAccess();
  v4 = sub_1A22E58F8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A2294E48(_OWORD *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = a1[1];
  v34[0] = *a1;
  v34[1] = v4;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A2104EA0();
  (*(v6 + 16))(v8, v9, v5);
  sub_1A221CB68(a1, v32);
  v10 = sub_1A22E6238();
  v11 = sub_1A22E6A68();
  sub_1A2248550(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    v15 = sub_1A22E7388();
    v17 = sub_1A2103450(v15, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = a1[1];
    v28 = *a1;
    v29 = v18;
    v30[0] = a1[2];
    *(v30 + 9) = *(a1 + 41);
    sub_1A221CB68(a1, v32);
    sub_1A2297960();
    v19 = sub_1A22E71D8();
    v21 = v20;
    v32[0] = v28;
    v32[1] = v29;
    v33[0] = v30[0];
    *(v33 + 9) = *(v30 + 9);
    sub_1A2248550(v32);
    v22 = sub_1A2103450(v19, v21, &v31);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1A20FC000, v10, v11, "[%s] update viewModel %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v14, -1, -1);
    v23 = v13;
    v2 = v27;
    MEMORY[0x1A58DCD00](v23, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v24 = *((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView)) + 0x118);
  sub_1A221CB68(a1, v32);
  return v24(v34);
}

void sub_1A2295178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v4 = sub_1A22E5968();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v65 = v11;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v47 - v12;
  sub_1A22E5988();
  v14 = v13;
  sub_1A22E5958();
  v16 = v15;
  if (v14)
  {
    v17 = sub_1A22E6598();

    if (v16)
    {
LABEL_3:
      v18 = sub_1A22E6598();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  v20 = sub_1A22E5978();
  v21 = *(v20 + 16);
  if (v21)
  {
    v48 = v19;
    v63 = a3;
    v72 = MEMORY[0x1E69E7CC0];
    sub_1A22E6F38();
    v22 = objc_opt_self();
    v24 = *(v5 + 16);
    v23 = v5 + 16;
    v69 = v24;
    v60 = *(v23 + 64);
    v61 = v22;
    v47 = v20;
    v59 = (v60 + 32) & ~v60;
    v25 = v20 + v59;
    v58 = *(v23 + 56);
    v57 = (v23 + 72);
    v56 = *MEMORY[0x1E69AE5C0];
    v55 = *MEMORY[0x1E69AE5C8];
    v54 = *MEMORY[0x1E69AE5B8];
    v51 = *MEMORY[0x1E69AE5D0];
    v68 = (v23 - 8);
    v50 = (v23 + 80);
    v53 = (v23 + 16);
    v52 = v71;
    v62 = v10;
    v26 = v67;
    do
    {
      v30 = v69;
      v69(v26, v25, v4);
      v30(v10, v26, v4);
      v31 = (*v57)(v10, v4);
      if (v31 == v56 || v31 == v55 || v31 == v54)
      {
        (*v50)(v10, v4);
        v34 = *(v10 + 1);
      }

      else
      {
        if (v31 != v51)
        {
          (*v68)(v10, v4);
        }

        v34 = 0;
      }

      v35 = v64;
      v36 = v23;
      v69(v64, v26, v4);
      v37 = v59;
      v38 = swift_allocObject();
      v39 = v63;
      *(v38 + 16) = v66;
      *(v38 + 24) = v39;
      (*v53)(v38 + v37, v35, v4);

      if (v34)
      {
        v27 = sub_1A22E6598();
      }

      else
      {
        v27 = 0;
      }

      v71[2] = sub_1A22979B4;
      v71[3] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v71[0] = sub_1A224DB84;
      v71[1] = &block_descriptor_15;
      v28 = _Block_copy(aBlock);

      v29 = [v61 actionWithTitle:v27 style:0 handler:{v28, v47}];
      _Block_release(v28);

      v26 = v67;
      (*v68)(v67, v4);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      sub_1A22E6F18();
      v25 += v58;
      --v21;
      v23 = v36;
      v10 = v62;
    }

    while (v21);

    v40 = v72;
    v19 = v48;
    if (!(v72 >> 62))
    {
      goto LABEL_25;
    }
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_25:
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_26;
    }
  }

  v41 = sub_1A22E6DE8();
LABEL_26:
  v42 = v19;
  if (v41)
  {
    v43 = 0;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1A58DB0F0](v43, v40);
      }

      else
      {
        if (v43 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v44 = *(v40 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      [v42 addAction_];

      ++v43;
      if (v46 == v41)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_35:

    [v49 presentViewController:v42 animated:1 completion:0];
  }
}

uint64_t sub_1A22957CC()
{
  v1 = v0;
  v2 = sub_1A22E5968();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69AE5C0] || v6 == *MEMORY[0x1E69AE5C8] || v6 == *MEMORY[0x1E69AE5B8])
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  else
  {
    if (v6 != *MEMORY[0x1E69AE5D0])
    {
      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }
}

void (*sub_1A2295938())(void)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  if (result)
  {
    v3 = v2;
    v4 = result;
    result();

    return sub_1A210F5C0(v4, v3);
  }

  return result;
}

void (*sub_1A22959C0())(void)
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = sub_1A22E7388();
    v13 = sub_1A2103450(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] didTapBackground", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58DCD00](v10, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  v14 = (*(v3 + 8))(v5, v2);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v14);
  if (result)
  {
    v17 = v16;
    v18 = result;
    result();
    return sub_1A210F5C0(v18, v17);
  }

  return result;
}

uint64_t sub_1A2295BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_1A22E6248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A2104EA0();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_1A22E6238();
  v13 = sub_1A22E6A98();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v7;
    v15 = v14;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v15 = 136315394;
    v16 = sub_1A22E7388();
    v18 = a3;
    v19 = v4;
    v20 = sub_1A2103450(v16, v17, &v30);

    *(v15 + 4) = v20;
    v4 = v19;
    a3 = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A2103450(a2, v18, &v30);
    _os_log_impl(&dword_1A20FC000, v12, v13, "[%s] didTapSession id:%s", v15, 0x16u);
    v21 = v28;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v21, -1, -1);
    MEMORY[0x1A58DCD00](v15, -1, -1);

    v22 = (*(v8 + 8))(v10, v29);
  }

  else
  {

    v22 = (*(v8 + 8))(v10, v7);
  }

  (*(**(v4 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter) + 136))(v22);
  v24 = v23;
  ObjectType = swift_getObjectType();
  (*(v24 + 16))(a2, a3, ObjectType, v24);
  return swift_unknownObjectRelease();
}

uint64_t sub_1A2295EA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, ...)
{
  swift_getObjectType();
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A2104EA0();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315394;
    v18 = sub_1A22E7388();
    v20 = sub_1A2103450(v18, v19, &v26);
    v24 = a5;
    v21 = v20;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1A2103450(v25, a4, &v26);
    _os_log_impl(&dword_1A20FC000, v13, v14, v24, v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v17, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

id sub_1A22960C0(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A2104EA0();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v15 = sub_1A22E7388();
    v17 = sub_1A2103450(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_1A22E6BD8();
    v20 = sub_1A2103450(v18, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] contentSizeDidChange:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v14, -1, -1);
    MEMORY[0x1A58DCD00](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return [v3 setPreferredContentSize_];
}

uint64_t sub_1A22962F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A2104EA0();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_1A22E6238();
  v10 = sub_1A22E6A98();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315394;
    v14 = sub_1A22E7388();
    v16 = sub_1A2103450(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_1A22E6938();
    v19 = sub_1A2103450(v17, v18, &v25);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1A20FC000, v9, v10, "[%s] Updating expandedSessionIdentifiers=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v13, -1, -1);
    v20 = v12;
    v3 = v24;
    MEMORY[0x1A58DCD00](v20, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v21 = *(**(v3 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter) + 216);

  return v21(v22);
}

uint64_t sub_1A2296568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsController + 8);
  ObjectType = swift_getObjectType();
  return (*(v6 + 48))(a2, a3, ObjectType, v6);
}

uint64_t sub_1A22965D0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v5);
  v6 = sub_1A22E6238();
  v7 = sub_1A22E6A68();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_1A22E7388();
    v12 = sub_1A2103450(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1A20FC000, v6, v7, "[%s] SHMR didSelectAllSpeakers", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1A58DCD00](v9, -1, -1);
    MEMORY[0x1A58DCD00](v8, -1, -1);
  }

  v13 = (*(v3 + 8))(v5, v2);
  return (*(**(v1 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter) + 200))(v13);
}

uint64_t sub_1A22967B4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A2215570();
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    return (*(**(v3 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter) + 192))();
  }

  return result;
}

void sub_1A229684C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1A2297AF8(0, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = ObjectType;

  v6 = sub_1A225C800(sub_1A2297B44, v5);

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v6;
  v8[4] = ObjectType;
  v12[4] = sub_1A2297B4C;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A2262D4C;
  v12[3] = &block_descriptor_17;
  v9 = _Block_copy(v12);
  v10 = v1;
  v11 = v6;

  [v7 requestWithCompletion_];
  _Block_release(v9);
}

void sub_1A22969DC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_1A22E6248();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A2104EA0();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a2;
  v15 = a3;
  v16 = sub_1A22E6238();
  v17 = sub_1A22E6A58();

  if (os_log_type_enabled(v16, v17))
  {
    v40 = v17;
    v41 = a1;
    v42 = a4;
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v18 = 136315650;
    v19 = sub_1A22E7388();
    v21 = sub_1A2103450(v19, v20, v44);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (a2 && (v22 = [v14 mediaRouteIdentifier]) != 0)
    {
      v23 = v22;
      v24 = sub_1A22E65C8();
      v26 = v25;

      v27 = v41;
    }

    else
    {
      v26 = 0xE300000000000000;
      v27 = v41;
      v24 = 7104878;
    }

    v28 = sub_1A2103450(v24, v26, v44);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2112;
    if (a3)
    {
      v29 = a3;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    a1 = v27;
    *(v18 + 24) = v30;
    v32 = v38;
    *v38 = v31;
    _os_log_impl(&dword_1A20FC000, v16, v40, "[%s] ShareAudio dismissed routeIdentfier:%s error:%@", v18, 0x20u);
    sub_1A226ADE4(v32);
    MEMORY[0x1A58DCD00](v32, -1, -1);
    v33 = v39;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v33, -1, -1);
    MEMORY[0x1A58DCD00](v18, -1, -1);

    (*(v10 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = sub_1A211A6BC();
    sub_1A22D1D0C(a1, v36 & 1, sub_1A2297C14);
  }
}

id sub_1A2296D38(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1A22E6248();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    MEMORY[0x1EEE9AC00](v9);
    *(&v22 - 2) = a2;
    *(&v22 - 1) = a3;
    v12 = sub_1A211A6BC();
    return sub_1A22D1C68(a3, v12 & 1, sub_1A2297B58);
  }

  else
  {
    v14 = sub_1A2104EA0();
    (*(v8 + 16))(v11, v14, v7);
    v15 = sub_1A22E6238();
    v16 = sub_1A22E6A98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_1A22E7388();
      v21 = sub_1A2103450(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1A20FC000, v15, v16, "[%s] ShareAudio not presented - device not unlocked", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1A58DCD00](v18, -1, -1);
      MEMORY[0x1A58DCD00](v17, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1A2296F68()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = sub_1A22E7388();
    v13 = sub_1A2103450(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] accessibilityPerformEscape", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58DCD00](v10, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  v14 = (*(v3 + 8))(v5, v2);
  v15 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v14);
  if (v15)
  {
    v17 = v16;
    v18 = v15;
    v15();
    sub_1A210F5C0(v18, v17);
  }

  return 1;
}

id sub_1A22971C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A22E6598();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_1A229729C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A22976BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView;
  type metadata accessor for SessionsView(0, a2);
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = &v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_dismissHandler];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen] = 0;
  *&v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint] = xmmword_1A230A760;
  v8 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_routingMode;
  v9 = *MEMORY[0x1E69AE578];
  v10 = sub_1A22E58F8();
  (*(*(v10 - 8) + 104))(&v3[v8], v9, v10);
  v11 = &v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsController];
  *v11 = a1;
  v11[1] = a2;
  type metadata accessor for SessionsPresenter(0, v12);
  v13 = swift_unknownObjectRetain_n();
  *&v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter] = sub_1A22767F8(v13, a2);
  v15.receiver = v3;
  v15.super_class = type metadata accessor for SessionsViewController(0);
  return objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A2297808(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView;
  type metadata accessor for SessionsView(0, a2);
  *(v2 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_dismissHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen) = 0;
  *(v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint) = xmmword_1A230A760;
  v5 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_routingMode;
  v6 = *MEMORY[0x1E69AE578];
  v7 = sub_1A22E58F8();
  (*(*(v7 - 8) + 104))(v2 + v5, v6, v7);
  sub_1A22E7028();
  __break(1u);
}

uint64_t type metadata accessor for SessionsViewController(uint64_t a1)
{
  result = qword_1EB08F5B0;
  if (!qword_1EB08F5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A2297960()
{
  result = qword_1EB089730;
  if (!qword_1EB089730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089730);
  }

  return result;
}

uint64_t sub_1A2297A24(uint64_t a1)
{
  result = sub_1A22E58F8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A2297AF8(uint64_t a1, uint64_t a2)
{
  result = qword_1EB089740;
  if (!qword_1EB089740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB089740);
  }

  return result;
}

id sub_1A2297B58()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v8);
    v7 = *v6;
    *v6 = v4;

    return v5(v8, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A2297C14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView);

    v3 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v6);
    v5 = *v4;
    *v4 = 0;

    v3(v6, 0);
  }
}

void (*sub_1A2297D24(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  return sub_1A2255490;
}

uint64_t sub_1A2297DE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = (*(*v3 + 88))();
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    a3(a1, a2, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2297EAC(uint64_t a1)
{
  if (!(*(*v1 + 88))())
  {
    return 0;
  }

  swift_getObjectType();
  v2 = sub_1A22E6198();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A2297F30(uint64_t a1)
{
  result = (*(*v1 + 88))();
  if (result)
  {
    swift_getObjectType();
    sub_1A22E61D8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2297FF0(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  result = (*(*v2 + 88))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    a2(a1, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2298088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*v4 + 88))();
  if (result)
  {
    swift_getObjectType();
    sub_1A22E61A8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A229813C()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1A2298180()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t *sub_1A22983AC()
{
  if (qword_1ED950D10 != -1)
  {
    swift_once();
  }

  return &qword_1ED950D18;
}

uint64_t *sub_1A2298440()
{
  if (qword_1ED950D40 != -1)
  {
    swift_once();
  }

  return &qword_1ED950D48;
}

uint64_t *sub_1A22984D0()
{
  if (qword_1EB08F5C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB08F5C8;
}

uint64_t sub_1A2298544(uint64_t a1, uint64_t a2)
{
  sub_1A2298A14(0, a2);
  result = sub_1A22E6D48();
  qword_1ED950D28 = result;
  return result;
}

uint64_t *sub_1A22985AC()
{
  if (qword_1ED950D20 != -1)
  {
    swift_once();
  }

  return &qword_1ED950D28;
}

uint64_t sub_1A2298640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1A2298A14(0, a2);
  result = sub_1A22E6D48();
  *a4 = result;
  return result;
}

uint64_t *sub_1A22986A8()
{
  if (qword_1ED950D30 != -1)
  {
    swift_once();
  }

  return &qword_1ED950D38;
}

id sub_1A229871C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_1A2298930(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_1A22E6248();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_1A22E6258();
}

unint64_t sub_1A2298A14(uint64_t a1, uint64_t a2)
{
  result = qword_1ED94E930;
  if (!qword_1ED94E930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E930);
  }

  return result;
}

uint64_t sub_1A2298A80@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = *v1;
  v3 = sub_1A22E6868();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = sub_1A22E6898();
  v7 = sub_1A22E6D68();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *(v2 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v13, &v1[v14], v7);
  v15 = *(v6 - 8);
  if ((*(v15 + 48))(v13, 1, v6) != 1)
  {
    return (*(v15 + 32))(v21, v13, v6);
  }

  (*(v8 + 8))(v13, v7);
  (*(v19 + 104))(v5, *MEMORY[0x1E69E8650], v20);
  v16 = v21;
  sub_1A22E68A8();
  (*(v15 + 16))(v11, v16, v6);
  (*(v15 + 56))(v11, 0, 1, v6);
  swift_beginAccess();
  (*(v8 + 40))(&v1[v14], v11, v7);
  return swift_endAccess();
}

uint64_t sub_1A2298DA0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = sub_1A22E6858();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v16 - v5;
  v7 = sub_1A22E6888();
  v8 = sub_1A22E6D68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *(v7 - 8);
  (*(v12 + 16))(&v16 - v10, a1, v7);
  (*(v12 + 56))(v11, 0, 1, v7);
  v13 = *(*a2 + 88);
  swift_beginAccess();
  (*(v9 + 40))(a2 + v13, v11, v8);
  v14 = swift_endAccess();
  (*(*a2 + 160))(v14);
  sub_1A22E6878();
  return (*(v4 + 8))(v6, v16);
}

uint64_t sub_1A229905C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = a2(0, a1);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_1A22990D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v22 - v4;
  v5 = sub_1A22E6888();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = sub_1A22E6D68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v23 = v3;
  v12 = sub_1A22E6858();
  v27 = sub_1A22E6D68();
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = &v22 - v14;
  v16 = *(v2 + 88);
  swift_beginAccess();
  v17 = v1 + v16;
  v18 = v26;
  (*(v9 + 16))(v11, v17, v8);
  if ((*(v18 + 48))(v11, 1, v5))
  {
    (*(v9 + 8))(v11, v8);
    v19 = 1;
  }

  else
  {
    (*(v18 + 16))(v7, v11, v5);
    (*(v9 + 8))(v11, v8);
    v20 = *(*v1 + 104);
    swift_beginAccess();
    (*(v25 + 16))(v24, v1 + v20, v23);
    sub_1A22E6878();
    (*(v18 + 8))(v7, v5);
    v19 = 0;
  }

  (*(*(v12 - 8) + 56))(v15, v19, 1, v12);
  return (*(v13 + 8))(v15, v27);
}

uint64_t sub_1A22994A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1A2299548(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  sub_1A22990D4(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*sub_1A2299630(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22996A0;
}

uint64_t sub_1A22996A0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A22990D4(result);
  }

  return result;
}

uint64_t sub_1A22996D8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A2299718(a1);
  return v2;
}

uint64_t sub_1A2299718(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = sub_1A22E6888();
  (*(*(v5 - 8) + 56))(v1 + v3, 1, 1, v5);
  v6 = *(*v1 + 96);
  v7 = sub_1A22E6898();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  (*(*(v4 - 8) + 32))(v1 + *(*v1 + 104), a1, v4);
  return v1;
}

uint64_t sub_1A2299854()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  sub_1A22E6888();
  v3 = sub_1A22E6D68();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 96);
  sub_1A22E6898();
  v5 = sub_1A22E6D68();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 104), v2);
  return v0;
}

uint64_t sub_1A2299990()
{
  sub_1A2299854();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A22999E8(uint64_t a1)
{
  sub_1A22E6888();
  result = sub_1A22E6D68();
  if (v2 <= 0x3F)
  {
    sub_1A22E6898();
    result = sub_1A22E6D68();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A2299B34(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t UIUserInterfaceStyle.description.getter(uint64_t a1)
{
  v1 = 0x69636570736E752ELL;
  if (a1 == 2)
  {
    v1 = 0x6B7261642ELL;
  }

  if (a1 == 1)
  {
    return 0x746867696C2ELL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A2299BA4()
{
  v1 = 0x69636570736E752ELL;
  if (*v0 == 2)
  {
    v1 = 0x6B7261642ELL;
  }

  if (*v0 == 1)
  {
    return 0x746867696C2ELL;
  }

  else
  {
    return v1;
  }
}

void type metadata accessor for UIUserInterfaceStyle()
{
  if (!qword_1EB089748)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB089748);
    }
  }
}

uint64_t sub_1A2299C50@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = sub_1A22E63A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E63C8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A22E6408();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC358], v1);
  sub_1A22E63B8();
  (*(v2 + 8))(v4, v1);
  sub_1A22E6418();
  sub_1A22E63F8();
  v16 = *(v7 + 8);
  v16(v10, v6);
  sub_1A22E63E8();
  v16(v13, v6);
  v17 = MEMORY[0x1E69DC388];
  v18 = v21;
  v21[3] = v6;
  v18[4] = v17;
  __swift_allocate_boxed_opaque_existential_0Tm(v18);
  sub_1A22E63D8();
  return (v16)(v15, v6);
}

unint64_t sub_1A2299F34@<X0>(void *a2@<X8>)
{
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  result = sub_1A2299FBC(0, v5);
  v7 = MEMORY[0x1E69DC4E0];
  a2[3] = result;
  a2[4] = v7;
  *a2 = v4;
  return result;
}

unint64_t sub_1A2299FBC(uint64_t a1, uint64_t a2)
{
  result = qword_1ED94E968;
  if (!qword_1ED94E968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E968);
  }

  return result;
}

uint64_t sub_1A229A020@<X0>(char a1@<W0>, int a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  v34 = a2;
  v35 = a4;
  v33 = sub_1A22E6408();
  v5 = *(v33 - 8);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = sub_1A22E63C8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v30 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v30 - v23;
  v32(v22);
  if (a1)
  {
    sub_1A22E6398();
  }

  else
  {
    (*(v15 + 16))(v18, v24, v14);
  }

  v31 = v14;
  (*(v15 + 32))(v21, v18, v14);
  sub_1A22E6418();
  sub_1A22E63F8();
  v25 = *(v5 + 8);
  v26 = v33;
  v25(v8, v33);
  sub_1A22E63E8();
  v25(v11, v26);
  v27 = MEMORY[0x1E69DC388];
  v28 = v35;
  v35[3] = v26;
  v28[4] = v27;
  __swift_allocate_boxed_opaque_existential_0Tm(v28);
  sub_1A22E63D8();

  v25(v13, v26);
  return (*(v15 + 8))(v24, v31);
}

uint64_t sub_1A229A344@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A22E63C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  sub_1A2299C50(a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1A229A49C()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A229A534(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    v6 = [v1 layer];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))())
    {
      v7 = *(v1 + OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer);
    }

    else
    {
      v7 = 0;
    }

    [v6 setMask_];
  }
}

uint64_t sub_1A229A620@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A229A6D8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A229A76C;
}

void sub_1A229A76C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if ((v5 ^ v6))
    {
      goto LABEL_5;
    }
  }

  else if ((v5 ^ v6))
  {
LABEL_5:
    v7 = v2[3];
    v8 = [v7 layer];
    if ((*((*MEMORY[0x1E69E7D40] & *v7) + 0x68))())
    {
      v9 = *(v2[3] + OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer);
    }

    else
    {
      v9 = 0;
    }

    [v8 setMask_];
  }

  free(v2);
}

void sub_1A229AA04(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView)) + 0x78))();
}

uint64_t sub_1A229AA80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1A229AADC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A229AB44(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView);
  a1[1] = v2;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))();
  return sub_1A229ABC8;
}

void sub_1A229ABC8(uint64_t a1, char a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **(a1 + 8)) + 0x78);
  v5 = *a1;
  if (a2)
  {
    v3 = v5;
    v2(v5);

    v4 = v3;
  }

  else
  {
    v2(v5);
    v4 = v5;
  }
}

id sub_1A229AC74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CrossfadeImageView(0, a2);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_1A2114DFC();

  return v3;
}

id sub_1A229ACC0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6979380]);

  return [v0 init];
}

char *sub_1A229ACF8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v6[OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled] = 1;
  v12 = OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView;
  type metadata accessor for CrossfadeImageView(0, a6);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = sub_1A2114DFC();

  *&v7[v12] = v14;
  v15 = OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer;
  v16 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  *&v7[v15] = v16;
  v43.receiver = v7;
  v43.super_class = type metadata accessor for MediaControlsModuleGradientView(v16, v17);
  v18 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = *&v18[OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView];
  v20 = v18;
  [v20 addSubview_];
  v21 = OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer;
  v22 = *&v20[OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer];
  [v20 bounds];
  [v22 setFrame_];

  v23 = *&v20[v21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0, &qword_1A2308C60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A2308C50;
  sub_1A2115288(0, &qword_1ED94E950, 0x1E696AD98);
  v25 = v23;
  *(v24 + 32) = sub_1A22E6C78();
  *(v24 + 40) = sub_1A22E6C78();
  v26 = sub_1A22E6738();

  [v25 setLocations_];

  v27 = *&v20[v21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918, &unk_1A230ACB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A230A140;
  v29 = objc_opt_self();
  v30 = v27;
  v31 = [v29 whiteColor];
  v32 = [v31 CGColor];

  type metadata accessor for CGColor(0);
  v34 = v33;
  *(v28 + 56) = v33;
  *(v28 + 32) = v32;
  v35 = [v29 clearColor];
  v36 = [v35 CGColor];

  *(v28 + 88) = v34;
  *(v28 + 64) = v36;
  v37 = sub_1A22E6738();

  [v30 setColors_];

  [v20 setClipsToBounds_];
  sub_1A229B43C(v38, v39);
  v40 = [v20 layer];
  v41 = 0;
  if ((*((*MEMORY[0x1E69E7D40] & *v20) + 0x68))())
  {
    v41 = *&v20[v21];
  }

  [v40 setMask_];

  return v20;
}

id sub_1A229B110(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MediaControlsModuleGradientView(a1, a2);
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  v4 = *&v2[OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer];
  [v2 bounds];
  [v4 setFrame_];
  return [v3 commit];
}

uint64_t sub_1A229B284()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6A68();
  sub_1A2115288(0, &qword_1ED94E930, 0x1E69E9BF8);
  v3 = sub_1A22E6D38();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_1A22E7388();
    v8 = sub_1A2103450(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1A20FC000, v3, v2, "%s prepareForReuse", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1A58DCD00](v5, -1, -1);
    MEMORY[0x1A58DCD00](v4, -1, -1);
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);

  return v9(0);
}

void sub_1A229B43C(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0, &qword_1A2308C60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A230E780;
  v5 = *&v2[OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView];
  v6 = [v5 topAnchor];
  v7 = [v2 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [v5 centerXAnchor];
  v10 = [v2 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v4 + 40) = v11;
  v12 = [v5 widthAnchor];
  v13 = [v2 widthAnchor];
  v14 = [v12 constraintGreaterThanOrEqualToAnchor_];

  *(v4 + 48) = v14;
  v15 = [v5 widthAnchor];
  v16 = [v5 heightAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v4 + 56) = v17;
  v18 = [v5 bottomAnchor];
  v19 = [v2 bottomAnchor];
  v20 = [v18 constraintGreaterThanOrEqualToAnchor_];

  *(v4 + 64) = v20;
  sub_1A2115288(0, &qword_1ED94EA28, 0x1E696ACD8);
  v21 = sub_1A22E6738();

  [v3 activateConstraints_];
}

id MediaControlsModuleGradientView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaControlsModuleGradientView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A229B780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled) = 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView;
  type metadata accessor for CrossfadeImageView(0, a2);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_1A2114DFC();

  *(v3 + v4) = v6;
  v7 = OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer;
  *(v3 + v7) = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A229B9D8(uint64_t a1, uint64_t a2)
{
  v3 = [v2 visibleCells];
  sub_1A229BAA4(0, v4);
  sub_1A22E6748();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089768, &qword_1A230E7F8);
  sub_1A229BB40();
  v5 = sub_1A22E6708();

  return v5;
}

unint64_t sub_1A229BAA4(uint64_t a1, uint64_t a2)
{
  result = qword_1ED94EA80;
  if (!qword_1ED94EA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94EA80);
  }

  return result;
}

id sub_1A229BAF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_dynamicCastUnknownClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_1A229BB40()
{
  result = qword_1ED94EAD0;
  if (!qword_1ED94EAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB089768, &qword_1A230E7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EAD0);
  }

  return result;
}

double sub_1A229BBC8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v2[1];
  v9 = *v2;
  v10 = v5;
  v11[0] = v2[2];
  *(v11 + 9) = *(v2 + 41);
  (*(v6 + 16))(&v9 - v4);
  sub_1A211A3BC(v2, &v12);
  swift_setAtWritableKeyPath();
  *&v13[9] = *(v11 + 9);
  v7 = v10;
  *v13 = v11[0];
  *a2 = v9;
  a2[1] = v7;
  a2[2] = *v13;
  result = *&v13[9];
  *(a2 + 41) = *&v13[9];
  return result;
}

double sub_1A229BD14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v14 = *v2;
  v5 = *(v2 + 40);
  v11 = *(v2 + 24);
  v12 = v5;
  v13 = *(v2 + 56);
  if ((a1 & ~v4) != 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | v4;
  sub_1A211A3BC(v2, &v10);
  *a2 = v14;
  *(a2 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a2 + 24) = v11;
  *(a2 + 40) = v9;
  *(a2 + 56) = v13;
  return result;
}

double sub_1A229BD9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v14 = *v2;
  v5 = *(v2 + 40);
  v11 = *(v2 + 24);
  v12 = v5;
  v13 = *(v2 + 56);
  v6 = -1;
  if ((v4 & a1) != 0)
  {
    v6 = ~a1;
  }

  v7 = v6 & v4;
  sub_1A211A3BC(v2, &v10);
  *a2 = v14;
  *(a2 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a2 + 24) = v11;
  *(a2 + 40) = v9;
  *(a2 + 56) = v13;
  return result;
}

__n128 sub_1A229BE28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(a2 + 32);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a1;
  result = *a2;
  v7 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 40) = v7;
  *(a3 + 56) = v5;
  return result;
}

double sub_1A229BE48@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A230E820;
  *(a1 + 16) = 6;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 3;
  return result;
}

double sub_1A229BE74@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0x3FD451EB851EB852;
  *(a1 + 24) = xmmword_1A230E830;
  result = 58.1632;
  *(a1 + 40) = xmmword_1A230E840;
  *(a1 + 56) = 1;
  return result;
}

double sub_1A229BEB0@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A2308720;
  *(a1 + 16) = xmmword_1A230E850;
  result = 288.0;
  *(a1 + 32) = xmmword_1A230E860;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

double sub_1A229BEE0@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A2308720;
  *(a1 + 16) = xmmword_1A230E870;
  result = 500.0;
  *(a1 + 32) = xmmword_1A230E880;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

id sub_1A229BF10@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1A230E800;
  *(a2 + 16) = 5242880;
  *(a2 + 24) = a1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 2;
  return a1;
}

uint64_t sub_1A229BF38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8, &unk_1A230EC70);
  v4 = 0x3FE0000000000000;
  v1 = sub_1A2249D0C(MEMORY[0x1E69E63B0], v0);
  v2 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000027, 0x80000001A2305E60, &v4, v1, v2 & 1);
  qword_1ED950D78 = result;
  return result;
}

uint64_t sub_1A229BFD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089798, &qword_1A230EC68);
  v4 = 0x3FC999999999999ALL;
  v1 = sub_1A2249D0C(MEMORY[0x1E69E7DE0], v0);
  v2 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000025, 0x80000001A2305E30, &v4, v1, v2 & 1);
  qword_1ED950D88 = result;
  return result;
}

void sub_1A229C070(uint64_t a1@<X8>)
{
  if (qword_1ED950D70 != -1)
  {
    swift_once();
  }

  v2 = *(*qword_1ED950D78 + 160);

  v2(&v8, v3);

  v4 = v8;
  if (qword_1ED950D80 != -1)
  {
    swift_once();
  }

  v5 = *(*qword_1ED950D88 + 160);

  v5(&v8, v6);

  v7 = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

uint64_t sub_1A229C1A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089798, &qword_1A230EC68);
  v4 = 0x3FC3333333333333;
  v1 = sub_1A2249D0C(MEMORY[0x1E69E7DE0], v0);
  v2 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000032, 0x80000001A2305DF0, &v4, v1, v2 & 1);
  qword_1EB08F668 = result;
  return result;
}

uint64_t sub_1A229C244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089798, &qword_1A230EC68);
  v4 = 0x3FD3333333333333;
  v1 = sub_1A2249D0C(MEMORY[0x1E69E7DE0], v0);
  v2 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000031, 0x80000001A2305DB0, &v4, v1, v2 & 1);
  qword_1ED950D68 = result;
  return result;
}

double sub_1A229C328@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v5 = *(**a2 + 160);

  v5(&v9, v6);

  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 36;
  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 3;
  return result;
}

double sub_1A229C3D8@<D0>(uint64_t a1@<X8>)
{
  result = 0.45;
  *a1 = xmmword_1A230E890;
  *(a1 + 16) = xmmword_1A230E8A0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  return result;
}

double sub_1A229C408()
{
  [swift_getObjCClassFromMetadata() inheritedAnimationDuration];
  v1 = v0;
  UIAnimationDragCoefficient();
  return v1 * v2;
}

BOOL sub_1A229C48C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A229C4BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A229C4E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_1A229C624(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A229C9DC(a1);

  *a2 = v3;
}

id sub_1A229C664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = [v1 alpha];
  if (v5 == v2 && v3 != 0)
  {

    return [v1 setHidden_];
  }

  return result;
}

uint64_t sub_1A229C6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A229C728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A229C78C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A229C7D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A229C81C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void type metadata accessor for AnimationOptions()
{
  if (!qword_1EB089770)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB089770);
    }
  }
}

uint64_t sub_1A229C998(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnimationOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A229C9DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1A229CA3C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x78456C6C616D732ELL;
    v6 = 0x576D756964656D2ELL;
    v7 = 0x656772616C2ELL;
    if (a1 != 3)
    {
      v7 = 0x7845656772616C2ELL;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6D756964656D2ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7473696C2ELL;
    if (a1 != 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x7845656772616C2ELL;
    v3 = 0x61546574756F722ELL;
    if (a1 != 6)
    {
      v3 = 0x69576574756F722ELL;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

__n128 sub_1A229CBC8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  if (a1 <= 5u)
  {
    if (a1 - 1 < 2)
    {
      v4 = sub_1A2220D34(a1, a2);
      v5 = sub_1A21275D0();
      sub_1A2220C34(v4, v46, 0.0, 2.0, 6.0, 0.24, v5);
      v6 = sub_1A221E310();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = sub_1A223EC78();
      v14 = sub_1A2113050();
      v15 = 14.0;
LABEL_12:
      v30 = v14 & 1;
      v26 = v6;
      v27 = v8;
      v28 = v10;
      v29 = v12;
      v25 = v13;
      goto LABEL_13;
    }

    if (!a1)
    {
      v31 = sub_1A2220D34(a1, a2);
      v32 = sub_1A21275D0();
      v33 = 2.0;
      v34 = 6.0;
LABEL_11:
      sub_1A2220C34(v31, v46, 0.0, v33, v34, 0.24, v32);
      v6 = sub_1A221E310();
      v8 = v40;
      v10 = v41;
      v12 = v42;
      v13 = sub_1A223EC78();
      v14 = sub_1A2113050();
      v15 = 10.0;
      goto LABEL_12;
    }

LABEL_10:
    v31 = sub_1A2220D34(a1, a2);
    v32 = sub_1A21275D0();
    v33 = 8.0;
    v34 = 16.0;
    goto LABEL_11;
  }

  if (a1 == 6)
  {
    v35 = sub_1A2220D34(a1, a2);
    v36 = sub_1A21275D0();
    sub_1A2220C34(v35, v46, 0.0, 2.0, 4.0, 0.3, v36);
    v6 = sub_1A221E310();
    v8 = v37;
    v10 = v38;
    v12 = v39;
    v13 = sub_1A223EC78();
    v14 = sub_1A2113050();
    v15 = 8.0;
    goto LABEL_12;
  }

  if (a1 != 8)
  {
    goto LABEL_10;
  }

  v16 = sub_1A2220D34(a1, a2);
  v17 = sub_1A21275D0();
  sub_1A2220C34(v16, v46, 0.0, 2.0, 4.0, 0.3, v17);
  v18 = sub_1A221E310();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1A223EC78();
  v15 = 8.0;
  v26 = v18;
  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = 1;
LABEL_13:
  sub_1A223ECE4(v46, v30, v47, v15, v26, v27, v28, v29, v25);
  v43 = v47[5];
  a3[4] = v47[4];
  a3[5] = v43;
  a3[6].n128_u8[0] = v48;
  v44 = v47[1];
  *a3 = v47[0];
  a3[1] = v44;
  result = v47[3];
  a3[2] = v47[2];
  a3[3] = result;
  return result;
}

double sub_1A229CE4C@<D0>(unsigned __int8 a1@<W0>, uint64_t a3@<X8>)
{
  if (a1 - 2 >= 6)
  {
    if (a1 == 1)
    {
      v33 = objc_opt_self();
      v34 = [v33 mru_subheadline2];
      sub_1A211476C();
      v36 = v35;
      v40 = sub_1A21146A4(v35, v38, *MEMORY[0x1E69DB980], v37 | ((HIDWORD(v37) & 1) << 32), v39);
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = [v33 mru_subheadline2];
    }

    else
    {
      *MEMORY[0x1E69DDD80];
      sub_1A211476C();
      v49 = v48;
      v40 = sub_1A21146A4(v48, v51, *MEMORY[0x1E69DB980], v50 | ((HIDWORD(v50) & 1) << 32), v52);
      v42 = v53;
      v44 = v54;
      v46 = v55;
    }

    sub_1A211476C();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = sub_1A211A6BC();
    v65 = sub_1A22C8E04();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = sub_1A22C8E30();
    sub_1A22C8F5C(v64 & 1, v40, v42, v44 | ((HIDWORD(v44) & 1) << 32), v46, v57, v59, v61 | ((HIDWORD(v61) & 1) << 32), &v80, v65, v67, v69, v71, v72, v63);
  }

  else
  {
    v4 = *MEMORY[0x1E69DDD80];
    sub_1A211476C();
    v6 = v5;
    v10 = sub_1A21146A4(v5, v8, *MEMORY[0x1E69DB980], v7 | ((HIDWORD(v7) & 1) << 32), v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    sub_1A211476C();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = sub_1A22C8E04();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = sub_1A22C8E30();
    sub_1A22C8F5C(0, v10, v12, v14 | ((HIDWORD(v14) & 1) << 32), v16, v18, v20, v22 | ((HIDWORD(v22) & 1) << 32), &v80, v25, v27, v29, v31, v32, v24);
  }

  result = v91;
  v74 = v85;
  v75 = v86;
  v76 = v88;
  v77 = v82;
  v78 = v83 & 1;
  v79 = v87 & 1;
  *a3 = v80;
  *(a3 + 8) = v81;
  *(a3 + 24) = v77;
  *(a3 + 28) = v78;
  *(a3 + 32) = v84;
  *(a3 + 48) = v74;
  *(a3 + 56) = v75;
  *(a3 + 60) = v79;
  *(a3 + 64) = v76;
  *(a3 + 72) = v89;
  *(a3 + 88) = v90;
  *(a3 + 104) = result;
  return result;
}

double sub_1A229D174@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = 14.0;
  v4 = 10.0;
  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 == 6)
      {
        v22 = sub_1A224A8BC();
        v23 = sub_1A224A8C8();
        v24 = sub_1A2113050();
        sub_1A224A94C(v24 & 1, v44, v22, v23, -20.0, -20.0, -20.0, -20.0);
        v25 = sub_1A2113050();
        v26 = sub_1A228C398();
        v27 = sub_1A228C3B0();
        v10 = sub_1A229207C();
        v12 = v28;
        v14 = v29;
        v16 = v30 | ((HIDWORD(v30) & 1) << 32);
        v20 = v25 & 1;
        v17 = 30.0;
LABEL_24:
        v18 = 7.0;
        v19 = v26;
        v21 = v27;
        goto LABEL_25;
      }

      v5 = -24.0;
      if (a1 == 7)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 > 2u)
  {
LABEL_10:
    v4 = 24.0;
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_11:
    v5 = -v4;
    if (a1 <= 5u)
    {
      if (a1 - 3 >= 3)
      {
        if (a1 - 1 < 2)
        {
          goto LABEL_23;
        }

LABEL_20:
        v3 = 10.0;
        goto LABEL_23;
      }

LABEL_19:
      v3 = 24.0;
      goto LABEL_23;
    }

    if (a1 > 8u)
    {
      goto LABEL_19;
    }

    if (a1 == 6)
    {
      v3 = 20.0;
      goto LABEL_23;
    }

    if (a1 != 7)
    {
      goto LABEL_20;
    }

LABEL_18:
    v3 = 0.0;
    goto LABEL_23;
  }

  v5 = -14.0;
  if (a1 == 1)
  {
LABEL_23:
    v31 = -v3;
    v32 = sub_1A224A8BC();
    v33 = sub_1A224A8C8();
    v34 = sub_1A2113050();
    sub_1A224A94C(v34 & 1, v44, v32, v33, -20.0, v5, -20.0, v31);
    v35 = sub_1A2113050();
    v26 = sub_1A228C398();
    v27 = sub_1A228C3B0();
    v10 = sub_1A229207C();
    v12 = v36;
    v14 = v37;
    v16 = v38 | ((HIDWORD(v38) & 1) << 32);
    v17 = 44.0;
    v20 = v35 & 1;
    goto LABEL_24;
  }

  v6 = sub_1A224A8BC();
  v7 = sub_1A224A8C8();
  v8 = sub_1A2113050();
  sub_1A224A94C(v8 & 1, v44, v6, v7, -20.0, -14.0, -20.0, -14.0);
  v9 = sub_1A228C3B0();
  v10 = sub_1A229207C();
  v12 = v11;
  v14 = v13;
  v16 = v15 | ((HIDWORD(v15) & 1) << 32);
  v17 = 24.0;
  v18 = 7.0;
  v19 = 4.0;
  v20 = 1;
  v21 = v9;
LABEL_25:
  sub_1A228C550(v20, v44, v10, v12, v16, v14, v45, v17, v18, v19, v21);
  v39 = v49;
  a2[4] = v48;
  a2[5] = v39;
  v40 = v51;
  a2[6] = v50;
  a2[7] = v40;
  v41 = v45[1];
  *a2 = v45[0];
  a2[1] = v41;
  result = *&v46;
  v43 = v47;
  a2[2] = v46;
  a2[3] = v43;
  return result;
}

double sub_1A229D420@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A22E18E8();
  if (a1 == 2)
  {
    sub_1A22E19A4(1, v4, 3, v39, 20.0, 0.75);
    v24 = sub_1A22E18E8();
    sub_1A22E19A4(1, v24, 1, v40, 20.0, 0.7);
    v7 = sub_1A2220B58();
    v9 = v25;
    v11 = v26;
    v13 = v27;
    v14 = 26.0;
    v15 = 24.0;
    v16 = 1;
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      sub_1A22E19A4(1, v4, 3, v39, 20.0, 0.75);
      v5 = sub_1A22E18E8();
      v6 = sub_1A22E18F0();
      sub_1A22E19A4(1, v5, v6, v40, 20.0, 0.7);
      v7 = sub_1A2220B58();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = 40.0;
      v15 = 14.0;
      v16 = 2;
      v17 = 0x4054000000000000;
      v18 = 0;
LABEL_9:
      v20 = v7;
      v21 = v9;
      v22 = v11;
      v23 = v13;
      goto LABEL_10;
    }

    v28 = sub_1A22E18F0();
    sub_1A22E19A4(1, v4, v28, v39, 40.0, 1.1);
    v29 = sub_1A22E18E8();
    v30 = sub_1A22E18F0();
    sub_1A22E19A4(1, v29, v30, v40, 26.0, 1.1);
    LOBYTE(v29) = sub_1A2113050();
    v7 = sub_1A2220B58();
    v9 = v31;
    v11 = v32;
    v13 = v33;
    v14 = 44.0;
    v15 = 20.0;
    v16 = v29;
LABEL_8:
    v17 = 0;
    v18 = 1;
    goto LABEL_9;
  }

  sub_1A22E19A4(1, v4, 3, v39, 20.0, 0.75);
  v19 = sub_1A22E18E8();
  sub_1A22E19A4(1, v19, 1, v40, 20.0, 0.7);
  v14 = 26.0;
  v20 = 0.0;
  v21 = 7.0;
  v22 = 0.0;
  v23 = 7.0;
  v15 = 21.0;
  v16 = 1;
  v17 = 0;
  v18 = 1;
LABEL_10:
  sub_1A221E454(v16, v17, v18, v39, v40, v41, v14, v20, v21, v22, v23, v15);
  v34 = v41[7];
  *(a2 + 96) = v41[6];
  *(a2 + 112) = v34;
  *(a2 + 128) = v41[8];
  *(a2 + 144) = v42;
  v35 = v41[3];
  *(a2 + 32) = v41[2];
  *(a2 + 48) = v35;
  v36 = v41[5];
  *(a2 + 64) = v41[4];
  *(a2 + 80) = v36;
  result = *v41;
  v38 = v41[1];
  *a2 = v41[0];
  *(a2 + 16) = v38;
  return result;
}

__n128 sub_1A229D6D8@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = 0.0;
  v4 = -20.0;
  v5 = -14.0;
  v6 = 14.0;
  v7 = 10.0;
  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 == 6)
      {
        goto LABEL_48;
      }

      if (a1 == 7)
      {
        v7 = 24.0;
        goto LABEL_21;
      }

LABEL_10:
      if (a1 <= 5u)
      {
        if (a1 > 2u)
        {
          goto LABEL_27;
        }

        if (a1)
        {
          v3 = 14.0;
          if (v7 <= 14.0)
          {
            v7 = v7 * 0.5;
            v6 = 14.0;
            goto LABEL_49;
          }

          goto LABEL_21;
        }

LABEL_18:
        v3 = 10.0;
        if (v7 <= 10.0)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      if (a1 > 8u)
      {
        goto LABEL_27;
      }

      if (a1 == 6)
      {
        v3 = 20.0;
        if (v7 <= 20.0)
        {
          v7 = v7 * 0.5;
          goto LABEL_48;
        }

        goto LABEL_21;
      }

      if (a1 != 7)
      {
        goto LABEL_18;
      }

LABEL_21:
      if ((*&v3 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3;
      }

      if ((~*&v3 & 0x7FF0000000000000) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = v8;
      }

LABEL_27:
      v7 = v7 * 0.5;
      v9 = 10.0;
      if (a1 > 5u)
      {
        if (a1 <= 8u)
        {
          if (a1 == 6)
          {
            goto LABEL_48;
          }

          v5 = -24.0;
          if (a1 == 7)
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }
      }

      else if (a1 - 3 >= 3)
      {
        if (a1 - 1 < 2)
        {
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      v9 = 24.0;
LABEL_36:
      v5 = -v9;
      if (a1 <= 5u)
      {
        if (a1 - 3 >= 3)
        {
          if (a1 - 1 < 2)
          {
            goto LABEL_49;
          }

LABEL_45:
          v6 = 10.0;
          goto LABEL_49;
        }

LABEL_44:
        v6 = 24.0;
        goto LABEL_49;
      }

      if (a1 > 8u)
      {
        goto LABEL_44;
      }

      if (a1 != 6)
      {
        if (a1 != 7)
        {
          goto LABEL_45;
        }

LABEL_43:
        v6 = 0.0;
        goto LABEL_49;
      }

      v4 = -v9;
LABEL_48:
      v6 = 20.0;
      v5 = v4;
      goto LABEL_49;
    }

LABEL_9:
    v7 = 24.0;
    goto LABEL_10;
  }

  if (a1 - 3 < 3)
  {
    goto LABEL_9;
  }

  if (a1 - 1 >= 2)
  {
    goto LABEL_10;
  }

  v7 = 7.0;
LABEL_49:
  v10 = -v6;
  v11 = sub_1A224A8BC();
  v12 = sub_1A2113050();
  sub_1A224A94C(v12 & 1, v15, v11, v7, -20.0, v5, -20.0, v10);
  sub_1A2264354(v15, v16, 44.0, 7.0, 32.0);
  v13 = v17[0];
  *(a2 + 32) = v16[2];
  *(a2 + 48) = v13;
  *(a2 + 57) = *(v17 + 9);
  result = v16[1];
  *a2 = v16[0];
  *(a2 + 16) = result;
  return result;
}

double sub_1A229D930@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  if (a1 <= 0xAu && ((1 << a1) & 0x4A0) != 0)
  {
    v3 = sub_1A222ED50();
    v4 = 24.0;
    v5 = 24.0;
    v6 = 24.0;
    v7 = 24.0;
    v8 = 0;
    v9 = 3;
    v10 = 3;
  }

  else
  {
    v3 = sub_1A222ED50();
    v4 = 24.0;
    v5 = 24.0;
    v6 = 10.0;
    v7 = 24.0;
    v8 = 1;
    v9 = 2;
    v10 = 2;
  }

  sub_1A22AFEE8(v8, v9, v10, v14, v3, v4, v5, v6, v7);
  v11 = v14[1];
  *a2 = v14[0];
  a2[1] = v11;
  result = *&v15;
  v13 = v16;
  a2[2] = v15;
  a2[3] = v13;
  return result;
}

double sub_1A229D9D8(unsigned __int8 a1)
{
  result = 0.0;
  if ((a1 | 2) == 7)
  {
    return 24.0;
  }

  return result;
}

double sub_1A229DA04(unsigned __int8 a1, double a2)
{
  v3 = a1 > 0xAu || ((1 << a1) & 0x4A0) == 0;
  result = 0.0;
  if (!v3)
  {
    return a2;
  }

  return result;
}

double sub_1A229DA54(char a1, double result, double a3, double a4)
{
  if (a1 == 6 || a1 == 3 || a1 == 1)
  {
    sub_1A22E6BF8();
  }

  else
  {
    if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v4 = result;
    }

    else
    {
      v4 = a3;
    }

    if ((~*&a3 & 0x7FF0000000000000) != 0)
    {
      v4 = a3;
    }

    if (result > a3)
    {
      return v4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaControlsModuleSessionLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaControlsModuleSessionLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A229DCD4(unsigned __int8 a1)
{
  v1 = 0x78456C6C616D732ELL;
  v2 = 0x61546574756F722ELL;
  if (a1 != 6)
  {
    v2 = 0x69576574756F722ELL;
  }

  if (a1 <= 5u)
  {
    v2 = 0x7845656772616C2ELL;
  }

  v3 = 0x576D756964656D2ELL;
  if (a1 != 2)
  {
    v3 = 0x656772616C2ELL;
  }

  if (a1)
  {
    v1 = 0x6D756964656D2ELL;
  }

  if (a1 > 1u)
  {
    v1 = v3;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A229DDF4()
{
  v1 = *v0;
  v2 = 0x78456C6C616D732ELL;
  v3 = 0x61546574756F722ELL;
  if (v1 != 6)
  {
    v3 = 0x69576574756F722ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = 0x7845656772616C2ELL;
  }

  v4 = 0x576D756964656D2ELL;
  if (v1 != 2)
  {
    v4 = 0x656772616C2ELL;
  }

  if (*v0)
  {
    v2 = 0x6D756964656D2ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A229DF14(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 1;
  }

  else
  {
    return byte_1A230EF0C[a1];
  }
}

uint64_t getEnumTagSinglePayload for MediaControlsModuleLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaControlsModuleLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_1A229E0C4(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1A220C0E8(0, a2);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v5;

  v12 = v5;
  sub_1A21179EC(a1, sub_1A2215434, v11, a4, a5);

  return result;
}

uint64_t sub_1A229E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A229C070(v10);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x50))(v10, a1, a2, a3, a4);
  return sub_1A2116928(v10);
}

id sub_1A229E220(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v12.receiver = v6;
  v12.super_class = type metadata accessor for RoutePickerContainerView(a5, a6);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1A229E318(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for RoutePickerContainerView(a1, a2);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1A229E3F0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoutePickerContainerView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A229E4B8(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a1 ^ a3))
  {
    return 0;
  }

  sub_1A2221998(0, a2);
  return sub_1A22E6C88() & 1;
}

uint64_t sub_1A229E50C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1A2221998(0, a2);
  return sub_1A22E6C88() & 1;
}

float sub_1A229E5F8@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 supportsVariableFramerate];
  v5 = [a1 minimumFramerate];
  v6 = [a1 lowPowerModeMaximumFramerate];
  v7 = [a1 maximumFramerate];
  [a1 framerateThreshold];
  v9 = v8;
  v10 = [a1 nonVariableFramerate];

  result = v10;
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  *(a2 + 16) = v9;
  *(a2 + 20) = v10;
  return result;
}

uint64_t sub_1A229E6F4(char a1)
{
  v3 = swift_beginAccess();
  *(v1 + 16) = a1;
  v4 = *(v1 + 88);
  v5 = (*(*v1 + 152))(v3);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x88))(v9);
  *(v7 + *(type metadata accessor for WaveformController.Model(0) + 20)) = v5 & 1;
  return v6(v9, 0);
}

uint64_t (*sub_1A229E7D8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A229E850;
}

void sub_1A229E850(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v5[11];
    v7 = (*(*v5 + 152))(v4);
    v8 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x88))(v3);
    *(v9 + *(type metadata accessor for WaveformController.Model(0) + 20)) = v7 & 1;
    v8(v3, 0);
  }

  free(v3);
}

void sub_1A229E984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(v3 + 20) = a1;
  *(v3 + 28) = a2;
  *(v3 + 36) = a3;
}

uint64_t sub_1A229EA68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[7] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v2[7];
      swift_getObjectType();
      (*(*v2 + 224))();
      v6 = v5;
      (*(v4 + 8))(v7 & 1, *MEMORY[0x1E69792B8], *(MEMORY[0x1E69792B8] + 4), *(MEMORY[0x1E69792B8] + 8));

      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(*v2 + 160))();
  }

  return swift_unknownObjectRelease();
}

void (*sub_1A229EB90(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A229EC24;
}

void sub_1A229EC24(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = v3[5];
        v5 = v4[7];
        swift_getObjectType();
        (*(*v4 + 224))();
        v7 = v6;
        (*(v5 + 8))(v8 & 1, *MEMORY[0x1E69792B8], *(MEMORY[0x1E69792B8] + 4), *(MEMORY[0x1E69792B8] + 8));

        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(*v3[5] + 160))();
    }
  }

  free(v3);
}

uint64_t sub_1A229EDCC()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1;
}

void sub_1A229EE18(char a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *sub_1A229EE70()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_1A229EEB4(void *a1)
{
  swift_beginAccess();
  v3 = v1[10];
  v1[10] = a1;
  v4 = a1;

  if ((*(*v1 + 200))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = v1[10];
    v9 = *(v6 + 16);
    v10 = v8;
    v9(v8, ObjectType, v6);

    swift_unknownObjectRelease();
  }
}

void (*sub_1A229EF94(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A229EFE8;
}

void sub_1A229EFE8(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0 && (*(**(a1 + 24) + 200))(v4))
  {
    v6 = v5;
    v7 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 80);
    v10 = *(v6 + 16);
    v11 = v9;
    v10(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

id sub_1A229F0CC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() defaultCenter];

  return v2;
}

uint64_t sub_1A229F10C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 112) != v3)
  {
    sub_1A2298A64(v8);
    swift_retain_n();
    v9 = sub_1A22E6238();
    v10 = sub_1A22E6A98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315394;
      v13 = sub_1A22E7388();
      v15 = sub_1A2103450(v13, v14, &v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1024;
      v16 = *(v2 + 112);

      *(v11 + 14) = v16;

      _os_log_impl(&dword_1A20FC000, v9, v10, "[%s] isLowPowerModeEnabled changed: %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1A58DCD00](v12, -1, -1);
      MEMORY[0x1A58DCD00](v11, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1A229F32C(void *a1)
{
  v2 = swift_allocObject();
  sub_1A229F36C(a1);
  return v2;
}

uint64_t sub_1A229F36C(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 20) = 2;
  *(v2 + 56) = 0;
  *(v2 + 36) = 0;
  *(v2 + 28) = 0;
  swift_unknownObjectWeakInit();
  v4 = [objc_opt_self() zero];
  *(v2 + 64) = 0;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0;
  *(v2 + 96) = [objc_opt_self() defaultCenter];
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 88) = a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xF8);
  v7 = a1;

  v6(v8, &off_1F1441E58);

  v10 = *(v2 + 88);
  v11 = (*(*v2 + 152))(v9);
  v12 = (*((*v5 & *v10) + 0x88))(v23);
  *(v13 + *(type metadata accessor for WaveformController.Model(0) + 20)) = v11 & 1;
  v12(v23, 0);
  v14 = *(v2 + 96);
  v15 = *MEMORY[0x1E696A7D8];
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 mainQueue];
  v19 = swift_allocObject();
  swift_weakInit();
  v23[4] = sub_1A229F638;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1A228A5BC;
  v23[3] = &block_descriptor_17;
  v20 = _Block_copy(v23);

  v21 = [v17 addObserverForName:v15 object:0 queue:v18 usingBlock:v20];

  _Block_release(v20);
  *(v2 + 104) = v21;
  swift_unknownObjectRelease();
  return v2;
}

double sub_1A229F638()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() processInfo];
    v4 = [v3 isLowPowerModeEnabled];

    v5 = *(v2 + 112);
    *(v2 + 112) = v4;
    sub_1A229F10C(v5);
  }

  return result;
}

uint64_t sub_1A229F6D4()
{
  if (*(v0 + 104))
  {
    [*(v0 + 96) removeObserver_];
  }

  sub_1A210DA3C(v0 + 48);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1A229F734()
{
  if (*(v0 + 104))
  {
    [*(v0 + 96) removeObserver_];
  }

  sub_1A210DA3C(v0 + 48);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 113, 7);
}

void sub_1A229F7AC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 224);
  v8 = (v7)(a1);
  v10 = v9;
  v11 = v8 & 1;
  swift_beginAccess();
  v12 = v3[9];
  v4[9] = a2;
  v13 = a2;

  v14 = v7();
  v16 = v15;
  if (v11 == (v14 & 1))
  {
    sub_1A2221998(0, v15);
    v17 = sub_1A22E6C88();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if ((*(*v4 + 200))())
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    v29 = v7();
    v21 = v20;
    v22 = *(*v4 + 360);
    v23 = v10;
    v24 = v22();
    v26 = v25;
    v28 = v27;

    (*(v19 + 8))(v29 & 1, v21, a3 & 1, ObjectType, v19, v24, v26, v28);
    swift_unknownObjectRelease();
  }

LABEL_6:
}

void sub_1A229F99C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(*v2 + 224);
  v6 = (v5)(a1);
  v8 = v7;
  v9 = v6 & 1;
  v10 = swift_beginAccess();
  v2[64] = a2;
  v11 = (v5)(v10);
  v13 = v12;
  if (v9 == (v11 & 1))
  {
    sub_1A2221998(0, v12);
    v14 = sub_1A22E6C88();

    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if ((*(*v3 + 200))())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v17 = v5();
    v19 = v18;
    v20 = *(*v3 + 360);
    v21 = v8;
    v22 = v20();
    v24 = v23;
    v26 = v25;

    (*(v16 + 8))(v17 & 1, v19, 0, ObjectType, v16, v22, v24, v26);
    swift_unknownObjectRelease();
  }

LABEL_6:
}

uint64_t sub_1A229FB70(void *a1)
{
  result = (*(*v1 + 176))();
  if (result != 2)
  {
    if (result)
    {
      (*(*v1 + 224))();
      v5 = v4;
      [a1 maxAbsoluteDifferenceFrom_];
    }

    return sub_1A22E6AC8();
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WaveformPresenter.AnimationSettings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WaveformPresenter.AnimationSettings(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1A229FE74(void *a1)
{
  v2 = v1;
  v4 = swift_beginAccess();
  v6 = v1[2];
  v1[2] = a1;
  if (a1)
  {
    if (v6)
    {
      sub_1A22531C4(0, v5);
      v7 = a1;
      v8 = v6;
      v9 = sub_1A22E6C88();

      if (v9)
      {

LABEL_11:
        return;
      }
    }

    else
    {
      v4 = a1;
    }

LABEL_8:
    if ((*(*v2 + 144))(v4))
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      v13 = v2[2];
      v14 = *(v11 + 8);
      v15 = v13;
      v14(v2, v13, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    v8 = a1;
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1A229FFEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A22A004C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A22A00E0;
}

void sub_1A22A00E0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_1A22A0164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[5] = 0;
  swift_unknownObjectWeakInit();
  v8[6] = a1;
  v8[7] = a2;
  sub_1A210B6BC(a3, v8 + OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model);
  v8[3] = a4;
  v9 = sub_1A22A10DC(&qword_1ED94F0F0, type metadata accessor for SessionArtworkController, &unk_1A230F0E0);
  v10 = *(*a4 + 240);

  v10(v11, v9);

  sub_1A2129CA8(a3);
  return v8;
}

void *sub_1A22A0274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[5] = 0;
  swift_unknownObjectWeakInit();
  v5[6] = a1;
  v5[7] = a2;
  sub_1A210B6BC(a3, v5 + OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model);
  v5[3] = a4;
  v10 = sub_1A22A10DC(&qword_1ED94F0F0, type metadata accessor for SessionArtworkController, &unk_1A230F0E0);
  v11 = *(*a4 + 240);

  v11(v12, v10);

  sub_1A2129CA8(a3);
  return v5;
}

uint64_t type metadata accessor for SessionArtworkController(uint64_t a1)
{
  result = qword_1ED9515C0;
  if (!qword_1ED9515C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A22A03BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A22E5C88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionArtworkPresentationModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A22E59B8();
  v20 = v11;
  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  v12 = sub_1A22C6C20(4);
  MEMORY[0x1A58DA8D0](v12);

  v13 = v19;
  v14 = v20;
  (*(v5 + 16))(v7, a1, v4);
  sub_1A22AD378(v7, 0, 0, v10);
  v15 = *sub_1A22B6DB8();
  v16 = *(v2 + 168);

  v17 = v16(v13, v14, v10, v15);
  (*(v5 + 8))(a1, v4);
  return v17;
}

uint64_t sub_1A22A0588()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60, &qword_1A230F0C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1A22E6848();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = *(v0 + 24);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v7;
  v8[6] = v6;

  sub_1A222B5A0(0, 0, v3, &unk_1A230F0D0, v8);

  sub_1A210DA3C(v0 + 32);

  sub_1A2129CA8(v0 + OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model);
  return v0;
}

uint64_t sub_1A22A06E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A22A0704, 0, 0);
}

uint64_t sub_1A22A0704()
{
  v1 = **(v0 + 16) + 256;
  *(v0 + 40) = *v1;
  *(v0 + 48) = v1 & 0xFFFFFFFFFFFFLL | 0xB8FC000000000000;
  sub_1A22E6828();
  *(v0 + 56) = sub_1A22E6818();
  v3 = sub_1A22E6808();

  return MEMORY[0x1EEE6DFA0](sub_1A22A07C0, v3, v2);
}

uint64_t sub_1A22A07C0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v2(v3, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A22A0844()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A222D660;

  return sub_1A22A06E0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A22A08EC()
{
  sub_1A22A0588();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A22A0944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model;
  swift_beginAccess();
  return sub_1A210B6BC(v1 + v3, a1);
}

uint64_t sub_1A22A099C(uint64_t a1)
{
  v3 = type metadata accessor for SessionArtworkPresentationModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model;
  swift_beginAccess();
  sub_1A210B6BC(v1 + v6, v5);
  swift_beginAccess();
  sub_1A210B82C(a1, v1 + v6);
  swift_endAccess();
  sub_1A212826C(v5);
  sub_1A2129CA8(a1);
  return sub_1A2129CA8(v5);
}

void sub_1A22A0A78(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for SessionArtworkPresentationModel(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A22987F8();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = v5;
    v16 = v15;
    v46 = swift_slowAlloc();
    v49[0] = v46;
    *v16 = 136315906;
    v17 = sub_1A22E7388();
    v45 = v14;
    v19 = sub_1A2103450(v17, v18, v49);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1A2103450(v3[6], v3[7], v49);
    *(v16 + 22) = 2080;
    v20 = (*(*v3 + 120))();
    v48 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0897A0, &qword_1A230F0D8);
    v22 = sub_1A2259178(v21);
    v47 = a2;
    v24 = v23;

    v25 = sub_1A2103450(v22, v24, v49);

    *(v16 + 24) = v25;
    *(v16 + 32) = 2080;
    (*(*v3 + 176))(v26);
    sub_1A22A10DC(&qword_1ED94EC58, type metadata accessor for SessionArtworkPresentationModel, &unk_1A230F638);
    v27 = sub_1A22E71D8();
    v29 = v28;
    sub_1A2129CA8(v7);
    v30 = sub_1A2103450(v27, v29, v49);
    a2 = v47;

    *(v16 + 34) = v30;
    _os_log_impl(&dword_1A20FC000, v13, v45, "[%s]<%s> Did update image(%s) for model:%s", v16, 0x2Au);
    v31 = v46;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v31, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v32 = swift_beginAccess();
  v34 = v3[2];
  v3[2] = a2;
  if (a2)
  {
    if (v34)
    {
      sub_1A22531C4(0, v33);
      v35 = a2;
      v36 = v34;
      v37 = sub_1A22E6C88();

      if (v37)
      {
LABEL_13:

        return;
      }
    }

    else
    {
      v32 = a2;
    }

LABEL_10:
    if ((*(*v3 + 144))(v32))
    {
      v39 = v38;
      ObjectType = swift_getObjectType();
      v41 = v3[2];
      v42 = *(v39 + 8);
      v43 = v41;
      v42(v3, v41, ObjectType, v39);

      swift_unknownObjectRelease();
    }

    v36 = v34;
    goto LABEL_13;
  }

  if (v34)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1A22A0FAC(uint64_t a1)
{
  result = sub_1A22A10DC(qword_1ED94F0F8, type metadata accessor for SessionArtworkController, &unk_1A230F0FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22A100C(uint64_t a1)
{
  result = type metadata accessor for SessionArtworkPresentationModel(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A22A10DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A22A1124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60, &qword_1A230F0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A22A1194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60, &qword_1A230F0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A22A11FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A22E5C88();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A22A1268@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088C30, &qword_1A230A1B0);
}

uint64_t (*sub_1A22A12D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A1334;
}

uint64_t sub_1A22A1334(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A212F904();
  }

  return result;
}

uint64_t sub_1A22A1368()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A0))(v2);
  v5 = sub_1A22E5C88();
  v6 = 0;
  v7 = 0;
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_1A22E59B8();
    v7 = v8;
  }

  sub_1A210D9B0(v4, &qword_1EB088C30, &qword_1A230A1B0);
  v9 = sub_1A22E59A8();
  if (v7)
  {
    if (v6 == v9 && v7 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1A22E71E8();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1A22A14F4()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void (*sub_1A22A154C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1A22A15EC;
}

void sub_1A22A15EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_1A21300C4(v9, v8);
  }

  else
  {
    sub_1A21300C4(v9, v8);
  }

  free(v2);
}

void sub_1A22A1680()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1A22E6248();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60, &qword_1A230F0C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))(v8);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_1A22E6848();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v18[5] = v14;
    v18[6] = v15;
    v18[7] = ObjectType;
    sub_1A222B5A0(0, 0, v10, &unk_1A230F268, v18);
  }

  else
  {
    sub_1A2298A60(v6);
    v19 = sub_1A22E6238();
    v20 = sub_1A22E6A68();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      v23 = sub_1A22E7388();
      v25 = sub_1A2103450(v23, v24, &v30);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1A20FC000, v19, v20, "[%s] updateApplicationSupport bundleID is nil", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v26 = v22;
      v11 = MEMORY[0x1E69E7D40];
      MEMORY[0x1A58DCD00](v26, -1, -1);
      MEMORY[0x1A58DCD00](v21, -1, -1);
    }

    v27 = (*(v4 + 8))(v6, v3);
    v28 = *(v1 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics);
    *(v1 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics) = 0;
    if (v28 == 1)
    {
      (*((*v11 & *v1) + 0x178))(v27);
    }
  }
}

uint64_t sub_1A22A19E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_1A22E6248();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A22A1AB4, 0, 0);
}

uint64_t sub_1A22A1AB4()
{
  v27 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    objc_allocWithZone(MEMORY[0x1E69635F8]);

    v6 = sub_1A22A2280(v2, v3, 0);
    v7 = *(v0 + 128);
    v8 = AXApplicationSupportsHapticMusic();
    sub_1A2298A60(v7);

    v9 = sub_1A22E6238();
    v10 = sub_1A22E6A98();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 128);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    if (v11)
    {
      v22 = *(v0 + 80);
      v23 = *(v0 + 88);
      v25 = *(v0 + 104);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v15 = 136315650;
      v17 = sub_1A22E7388();
      v24 = v12;
      v19 = sub_1A2103450(v17, v18, v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1A2103450(v22, v23, v26);
      *(v15 + 22) = 1024;
      *(v15 + 24) = v8;
      _os_log_impl(&dword_1A20FC000, v9, v10, "[%s] updateApplicationSupport for %s: %{BOOL}d", v15, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v16, -1, -1);
      MEMORY[0x1A58DCD00](v15, -1, -1);

      (*(v13 + 8))(v24, v25);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    *(v0 + 152) = v8;
    sub_1A22E6828();
    *(v0 + 144) = sub_1A22E6818();
    v21 = sub_1A22E6808();

    return MEMORY[0x1EEE6DFA0](sub_1A22A1F14, v21, v20);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A22A1F14()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  v4 = *(v2 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics);
  *(v2 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics) = v1;
  if (v1 != v4)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v0 + 136)) + 0x178))(v3);
  }

  return MEMORY[0x1EEE6DFA0](sub_1A22A1FD8, 0, 0);
}

uint64_t sub_1A22A1FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A22A2048()
{
  v1 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession;
  v2 = sub_1A22E5C88();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SessionHapticController(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

double sub_1A22A2194()
{
  sub_1A210D9B0(v0 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession, &qword_1EB088C30, &qword_1A230A1B0);

  return result;
}

id sub_1A22A21E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionHapticController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A22A2280(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1A22E6598();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1A22E54E8();

    swift_willThrow();
  }

  return v6;
}

uint64_t type metadata accessor for SessionHapticController(uint64_t a1)
{
  result = qword_1ED951690;
  if (!qword_1ED951690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A22A23B0(uint64_t a1)
{
  sub_1A22A2454(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A22A2454(uint64_t a1)
{
  if (!qword_1ED950738)
  {
    sub_1A22E5C88();
    v1 = sub_1A22E6D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED950738);
    }
  }
}

uint64_t sub_1A22A24AC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A222D660;

  return sub_1A22A19E4(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A22A2558()
{
  v0 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v2 = v1;
  v6 = sub_1A21146A4(v1, v4, *MEMORY[0x1E69DB980], v3 | ((HIDWORD(v3) & 1) << 32), v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  qword_1ED9535C8 = v6;
  unk_1ED9535D0 = v8;
  dword_1ED9535D8 = v10;
  byte_1ED9535DC = BYTE4(v10) & 1;
  qword_1ED9535E0 = v12;
}

uint64_t *sub_1A22A2610()
{
  if (qword_1ED952438 != -1)
  {
    swift_once();
  }

  return &qword_1ED9535C8;
}

id sub_1A22A2660()
{
  if (qword_1ED952438 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9535C8;

  return v0;
}

void sub_1A22A270C()
{
  v0 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  qword_1ED9535A8 = v1;
  unk_1ED9535B0 = v2;
  dword_1ED9535B8 = v3;
  byte_1ED9535BC = v4 & 1;
  qword_1ED9535C0 = v5;
}

uint64_t *sub_1A22A2750()
{
  if (qword_1ED952430 != -1)
  {
    swift_once();
  }

  return &qword_1ED9535A8;
}

id sub_1A22A27A0()
{
  if (qword_1ED952430 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9535A8;

  return v0;
}

double sub_1A22A2860(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() blackColor];
  sub_1A2220C34(v2, v13, 0.0, 2.0, 6.0, 0.24, 1.0);
  v3 = sub_1A221E310();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1A223EC78();
  v11 = sub_1A2113050();
  sub_1A223ECE4(v13, v11 & 1, v14, 7.0, v3, v5, v7, v9, v10);
  xmmword_1EB091700 = v16;
  unk_1EB091710 = v17;
  byte_1EB091720 = v18;
  xmmword_1EB0916C0 = v14[0];
  *algn_1EB0916D0 = v14[1];
  result = *&v15;
  xmmword_1EB0916E0 = v14[2];
  unk_1EB0916F0 = v15;
  return result;
}

__int128 *sub_1A22A2958()
{
  if (qword_1EB08FB70 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB0916C0;
}

uint64_t sub_1A22A29A8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB08FB70 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1A211C42C(&xmmword_1EB0916C0, v2);
}

void *sub_1A22A2A18()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22A2A64(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView)) + 0xB0))(v9);
  v8 = *(v7 + 16);
  *(v7 + 16) = a1;

  v6(v9, 0);
}

uint64_t (*sub_1A22A2B38(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1A22A2BC0;
}

void sub_1A22A2BC0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(v4 + v3[5]);
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView)) + 0xB0);
    v7 = v5;
    v8 = v6(v3);
    v10 = *(v9 + 16);
    *(v9 + 16) = v5;

    v8(v3, 0);
  }

  free(v3);
}

void *sub_1A22A2C88()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1A22A2CD4(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView)) + 0x120))(a1);
}

uint64_t (*sub_1A22A2D88(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22A2E10;
}

void sub_1A22A2E10(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView)) + 0x120);
    v7 = v5;
    v6(v5);
  }

  free(v3);
}

uint64_t (*sub_1A22A2EDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_title;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22A2F64;
}

id sub_1A22A2F90(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = &v4[*a3];
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 1) = a2;

  v9 = *&v4[*a4];
  if (a2)
  {
    v10 = sub_1A22E6598();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  return [v4 setNeedsLayout];
}

uint64_t (*sub_1A22A3058(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22A30E0;
}

void sub_1A22A30EC(void *a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[3];
    v7 = *&v6[*a3];
    if (*&v6[v5[4] + 8])
    {

      v8 = sub_1A22E6598();

      v6 = v5[3];
    }

    else
    {
      v8 = 0;
    }

    [v7 setText_];

    [v6 setNeedsLayout];
  }

  free(v5);
}

double sub_1A22A31B4()
{
  swift_beginAccess();

  return result;
}

double sub_1A22A31FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A22A3F04();

  return result;
}

void (*sub_1A22A326C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A32D0;
}

void sub_1A22A32D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A22A3F04();
  }
}

id sub_1A22A3304(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediaSuggestionArtworkView(0, a2);
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

id sub_1A22A3340()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC638]);

  return [v0 initWithActivityIndicatorStyle_];
}

id sub_1A22A33B8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MediaSuggestionCollectionViewCell(a1, a2);
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1A22A3404(SEL *a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for MediaSuggestionCollectionViewCell(a1, a2);
  return objc_msgSendSuper2(&v5, *a1);
}

void sub_1A22A344C(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for MediaSuggestionCollectionViewCell(a1, a2);
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_1A22A4124();
}

id sub_1A22A34C0(uint64_t a1, SEL *a2)
{
  v4 = a1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MediaSuggestionCollectionViewCell(a1, a2);
  objc_msgSendSuper2(&v6, *a2, v4 & 1);
  return sub_1A22A4124();
}

char *sub_1A22A3510(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork] = 0;
  *&v6[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon] = 0;
  v11 = &v6[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_title];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v6[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitle];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v6[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_visualStylingProvider] = 0;
  v13 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView;
  type metadata accessor for MediaSuggestionArtworkView(0, a6);
  *&v6[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView;
  *&v6[v14] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v15 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel;
  *&v6[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v16 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v6[v16] = v17;
  v37.receiver = v6;
  v37.super_class = type metadata accessor for MediaSuggestionCollectionViewCell(v17, v18);
  v19 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView;
  v21 = *&v19[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView];
  v22 = v19;
  [v21 setUserInteractionEnabled_];
  v23 = qword_1EB08FB70;
  v24 = *&v19[v20];
  if (v23 != -1)
  {
    swift_once();
  }

  v38[3] = unk_1EB0916F0;
  v38[4] = xmmword_1EB091700;
  v38[5] = unk_1EB091710;
  v38[0] = xmmword_1EB0916C0;
  v39 = byte_1EB091720;
  v38[1] = *algn_1EB0916D0;
  v38[2] = xmmword_1EB0916E0;
  v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x90);
  sub_1A211C42C(v38, v36);
  v25(v38);

  v26 = [v22 contentView];
  [v26 addSubview_];

  v27 = [v22 contentView];
  [v27 addSubview_];

  v28 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel;
  [*&v22[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel] setNumberOfLines_];
  [*&v22[v28] setTextAlignment_];
  [*&v22[v28] setUserInteractionEnabled_];
  v29 = [v22 contentView];
  [v29 addSubview_];

  v30 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel;
  [*&v22[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel] setNumberOfLines_];
  [*&v22[v30] setTextAlignment_];
  [*&v22[v30] setUserInteractionEnabled_];
  v31 = [v22 contentView];

  [v31 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20, &qword_1A230A680);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1A2308E80;
  v33 = sub_1A22E6378();
  v34 = MEMORY[0x1E69DC2B0];
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  MEMORY[0x1A58DAE60](v32, sel_updateContentSizeCategory);
  swift_unknownObjectRelease();

  sub_1A22A3CFC();

  return v22;
}

id sub_1A22A3930(uint64_t a1, uint64_t a2)
{
  v46.receiver = v2;
  v46.super_class = type metadata accessor for MediaSuggestionCollectionViewCell(a1, a2);
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  [v2 bounds];
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  v7 = CGRectGetWidth(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v8 = CGRectGetHeight(v48);
  if ((*&v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if ((~*&v8 & 0x7FF0000000000000) != 0)
  {
    v9 = v8;
  }

  if (v7 > v8)
  {
    v7 = v9;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v10 = CGRectGetWidth(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v11 = CGRectGetHeight(v50);
  if ((*&v11 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((~*&v11 & 0x7FF0000000000000) != 0)
  {
    v12 = v11;
  }

  if (v10 > v11)
  {
    v10 = v12;
  }

  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  MinX = CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  MinY = CGRectGetMinY(v52);
  [*&v2[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView] setFrame_];
  v15 = *&v2[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView];
  [v15 sizeThatFits_];
  sub_1A2128200(MinX, MinY, v7, v10, 0.0, 0.0, v16, v17);
  [v15 setFrame_];
  v53.origin.x = MinX;
  v53.origin.y = MinY;
  v53.size.width = v7;
  v53.size.height = v10;
  CGRectGetHeight(v53);
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2127EF0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *&v2[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel];
  [v26 sizeThatFits_];
  v28 = v27;
  v54.origin.x = v19;
  v54.origin.y = v21;
  v54.size.width = v23;
  v54.size.height = v25;
  v29 = CGRectGetMinX(v54);
  v55.origin.x = v19;
  v55.origin.y = v21;
  v55.size.width = v23;
  v55.size.height = v25;
  v30 = CGRectGetMinY(v55);
  v56.origin.x = v19;
  v56.origin.y = v21;
  v56.size.width = v23;
  v56.size.height = v25;
  v31 = CGRectGetWidth(v56);
  [v26 setFrame_];
  v57.origin.x = v29;
  v57.origin.y = v30;
  v57.size.width = v31;
  v57.size.height = v28;
  CGRectGetHeight(v57);
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2127EF0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = *&v2[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel];
  [v40 sizeThatFits_];
  v42 = v41;
  v58.origin.x = v33;
  v58.origin.y = v35;
  v58.size.width = v37;
  v58.size.height = v39;
  v43 = CGRectGetMinX(v58);
  v59.origin.x = v33;
  v59.origin.y = v35;
  v59.size.width = v37;
  v59.size.height = v39;
  v44 = CGRectGetMinY(v59);
  v60.origin.x = v33;
  v60.origin.y = v35;
  v60.size.width = v37;
  v60.size.height = v39;
  return [v40 setFrame_];
}

id sub_1A22A3CFC()
{
  v1 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel];
  if (qword_1ED952438 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9535C8;
  v3 = unk_1ED9535D0;
  v4 = dword_1ED9535D8;
  v5 = byte_1ED9535DC;
  v6 = qword_1ED9535E0;
  v7 = [v0 traitCollection];
  v8 = sub_1A21275D0();
  v9 = sub_1A21275D8(v7, v2, v3, v4 | (v5 << 32), v6, v8);

  [v1 setFont_];
  v10 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel];
  if (qword_1ED952430 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED9535A8;
  v12 = unk_1ED9535B0;
  v13 = dword_1ED9535B8;
  v14 = byte_1ED9535BC;
  v15 = qword_1ED9535C0;
  v16 = [v0 traitCollection];
  v17 = sub_1A21275D0();
  v18 = sub_1A21275D8(v16, v11, v12, v13 | (v14 << 32), v15, v17);

  [v10 setFont_];

  return [v0 setNeedsLayout];
}

void sub_1A22A3F04()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel];
    v6 = [v1 traitCollection];
    (*(*v4 + 160))(0, v5, v6);
  }

  v7 = v2();
  if (v7)
  {
    v8 = v7;
    v9 = *&v1[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel];
    v10 = [v1 traitCollection];
    (*(*v8 + 160))(1, v9, v10);
  }

  v11 = v2();
  if (v11)
  {
    v12 = v11;
    v13 = *&v1[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView];
    v14 = [v1 traitCollection];
    (*(*v12 + 160))(0, v13, v14);
  }
}

id sub_1A22A4124()
{
  v1 = &selRef_stopAnimating;
  if ([v0 isHighlighted])
  {
    v2 = 0.2;
  }

  else if ([v0 isSelected])
  {
    v1 = &selRef_startAnimating;
    v2 = 0.2;
  }

  else
  {
    v2 = 1.0;
  }

  [*&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView] *v1];
  v3 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView];

  return [v3 setAlpha_];
}

id sub_1A22A41E0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaSuggestionCollectionViewCell(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A22A42D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork) = 0;
  *(v2 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon) = 0;
  v3 = (v2 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_title);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v2 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitle);
  *v4 = 0;
  v4[1] = 0;
  *(v2 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_visualStylingProvider) = 0;
  v5 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView;
  type metadata accessor for MediaSuggestionArtworkView(0, a2);
  *(v2 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView;
  *(v2 + v6) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v7 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel;
  *(v2 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel;
  *(v2 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A22A4430()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A4474(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v5);
    v9 = *(v1 + v4);
    v10 = (*((*v7 & *v8) + 0xD0))(v12);
    *(v11 + 1) = v9;
    v10(v12, 0);
  }
}

void (*sub_1A22A4570(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_1A22A4604;
}

void sub_1A22A4604(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[7];
    v7 = v1[8];
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))();
    LOBYTE(v7) = *(v6 + v7);
    v10 = (*((*v8 & *v9) + 0xD0))(v1);
    *(v11 + 1) = v7;
    v10(v1, 0);
  }

  free(v1);
}

uint64_t sub_1A22A46FC()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_collapseToControlCenter;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A4740(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_collapseToControlCenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A22A47F8()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_expandedLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A483C(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_expandedLayout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A22A48EC(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1A22A88E0();
}

uint64_t (*sub_1A22A4940(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A49A4;
}

uint64_t sub_1A22A49BC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView);
  *(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView) = a1;
  return MEMORY[0x1EEE66BB8](a1, v2);
}

void (*sub_1A22A49D0(id *a1, uint64_t a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = sub_1A2111BAC(a1, a2);
  return sub_1A22A4A18;
}

void sub_1A22A4A18(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView);
  *(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView) = v2;
}

uint64_t sub_1A22A4A30()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A4A74(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = MEMORY[0x1E69E7D40];
    v8 = v1;
    v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v5);
    v10 = *(v8 + v4);
    v11 = (*((*v7 & *v9) + 0xD0))(v15);
    *v12 = v10;
    v11(v15, 0);

    v13 = *(v8 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter);
    v14 = (*(*v13 + 256))();
    if (*(v8 + v4) != 1)
    {
      (*(*v13 + 264))(v14);
    }
  }
}

void (*sub_1A22A4BF4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_1A22A4C88;
}

void sub_1A22A4C88(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = v1[7];
    v7 = v1[8];
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))();
    v10 = *(v6 + v7);
    v11 = (*((*v8 & *v9) + 0xD0))(v1);
    *v12 = v10;
    v11(v1, 0);

    v13 = *(v6 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter);
    v14 = (*(*v13 + 256))();
    if ((*(v6 + v7) & 1) == 0)
    {
      (*(*v13 + 264))(v14);
    }
  }

  free(v1);
}

uint64_t sub_1A22A4DF8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VisualStylingProvider(0, a2);
  sub_1A22E0878();
  v2 = sub_1A211A6BC();
  return sub_1A22DF9B0(v4, 0, 1, 4, 0, v2);
}

id sub_1A22A4E50()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_dismissModule];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A22A4F1C(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded] = 0;
  v2[OBJC_IVAR___MRUMediaControlsModuleViewController_collapseToControlCenter] = 0;
  v2[OBJC_IVAR___MRUMediaControlsModuleViewController_expandedLayout] = 8;
  v2[OBJC_IVAR___MRUMediaControlsModuleViewController_layout] = 1;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView] = 0;
  v2[OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen] = 0;
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_visualStylingProvider;
  type metadata accessor for VisualStylingProvider(0, a2);
  sub_1A22E0878();
  v5 = sub_1A211A6BC();
  v6 = sub_1A22DF9B0(v13, 0, 1, 4, 0, v5);
  *&v2[v4] = v6;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer] = 0;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController] = 0;
  v7 = &v2[OBJC_IVAR___MRUMediaControlsModuleViewController_dismissModuleBlock];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR___MRUMediaControlsModuleViewController_expandModuleBlock];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR___MRUMediaControlsModuleViewController_invalidateContainerViewsBlock];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass] = 4;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius] = 0;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics] = 0;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode] = 0;
  v2[OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing] = 0;
  v2[OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter] = 1;
  v2[OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction] = 0;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses] = 1536;
  *&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_presenter] = a1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for MediaControlsModuleViewController(v6, v10);
  return objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1A22A50CC(char *a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  type metadata accessor for MediaControlsModulePresenter(0, v5);
  v6 = *&a1[OBJC_IVAR___MRUMediaControlsModuleController_sessionsController + 8];
  v7 = swift_unknownObjectRetain();
  v8 = sub_1A2255888(v7, v6);
  v9 = (*(ObjectType + 440))(v8);

  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_1A22A5174(char *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MediaControlsModulePresenter(0, v3);
  v4 = *&a1[OBJC_IVAR___MRUMediaControlsModuleController_sessionsController + 8];
  v5 = swift_unknownObjectRetain();
  v6 = sub_1A2255888(v5, v4);
  v7 = (*(ObjectType + 440))(v6);

  swift_deallocPartialClassInstance();
  return v7;
}

void sub_1A22A52F0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  [v0 setView_];
}

void sub_1A22A5418(uint64_t a1, uint64_t a2)
{
  v21.receiver = v2;
  v21.super_class = type metadata accessor for MediaControlsModuleViewController(a1, a2);
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v3 = *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter);
  v4 = *(*v3 + 144);
  v5 = swift_unknownObjectRetain();
  v6 = v4(v5, &off_1F1442310);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x158);
  v9 = (v8)(v6);
  v10 = *&v9[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v11 = *((*v7 & *v10) + 0x188);
  v12 = swift_unknownObjectRetain();
  v11(v12, &off_1EE63F0D8);

  v13 = v8();
  [v13 setMaximumContentSizeCategory_];

  v14 = v8();
  v15 = sub_1A22A4E50();
  [v14 addGestureRecognizer_];

  v16 = v8();
  v17 = *&v16[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_allSpeakersButton];

  sub_1A2115288(0, &qword_1ED94E940, 0x1E69DC628);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1A22E6C98();
  [v17 addAction:v19 forControlEvents:{64, 0, 0, 0, sub_1A22ABBA4, v18}];

  v20 = v8();
  (*(*v3 + 224))(v22);
  (*((*v7 & *v20) + 0xB0))(v22);

  sub_1A22A9680();
}

uint64_t sub_1A22A57B4(uint64_t a1, SEL *a2, uint64_t a3)
{
  v6 = a1;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for MediaControlsModuleViewController(a1, a2);
  objc_msgSendSuper2(&v8, *a2, v6 & 1);
  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0x178))(a3);
}

void sub_1A22A5860(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for MediaControlsModuleViewController(a1, a2);
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x178))(a5);
}

void sub_1A22A5914(uint64_t a1, uint64_t a2)
{
  v3.receiver = v2;
  v3.super_class = type metadata accessor for MediaControlsModuleViewController(a1, a2);
  objc_msgSendSuper2(&v3, sel_viewDidLayoutSubviews);
  sub_1A211C9D0();
}

void sub_1A22A594C(void *a1, uint64_t a2, double a3, double a4)
{
  v20.receiver = v4;
  v20.super_class = type metadata accessor for MediaControlsModuleViewController(a1, a2);
  objc_msgSendSuper2(&v20, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a3, a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v18 = sub_1A22ABCF8;
  v19 = v8;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A22A5AEC;
  v17 = &block_descriptor_18;
  v9 = _Block_copy(&v14);
  v10 = v4;

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v18 = sub_1A22ABD84;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A22A5AEC;
  v17 = &block_descriptor_11;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [a1 animateAlongsideTransition:v9 completion:v12];
  _Block_release(v12);
  _Block_release(v9);
}

uint64_t sub_1A22A5AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

double sub_1A22A5CD0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_1A22ACD80;
  }

  else
  {
    v4 = 0;
  }

  v2(v3, v4);
  sub_1A210F5C0(v3, v4);

  return result;
}

void sub_1A22A5E38(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1A210E3F0;
    v6[3] = &block_descriptor_68;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  (*(a3 + 16))(a3, v5);
  _Block_release(v5);
}

id sub_1A22A6104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A210E3F0;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1A22A62B8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1A22A63C4()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22A64B8(uint64_t a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass;
  swift_beginAccess();
  *(v1 + v3) = a1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(8);
  return sub_1A22A8B1C();
}

uint64_t (*sub_1A22A6558(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A65BC;
}

uint64_t sub_1A22A65BC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x130))(8);
    return sub_1A22A8B1C();
  }

  return result;
}

void sub_1A22A66DC(double a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1A211C9D0();
}

uint64_t (*sub_1A22A6730(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A6794;
}

uint64_t sub_1A22A67AC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *sub_1A22A683C()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22A69A8(void *a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
  v8 = *(v1 + v3);
  v9 = *((*v6 & *v7) + 0x158);
  v10 = v8;
  v9(v8);
}

uint64_t (*sub_1A22A6AB4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22A6B3C;
}

void sub_1A22A6B3C(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x158))(v4);
    v9 = *(v5 + v6);
    v10 = *((*v7 & *v8) + 0x158);
    v11 = v9;
    v10(v9);
  }

  free(v3);
}

uint64_t sub_1A22A6C70()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A6D08(uint64_t a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = v1;
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v4);
    (*((*v6 & *v8) + 0x140))(*(v7 + v3));

    (*(**(v7 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 256))();
    sub_1A22A9680();
  }
}

void (*sub_1A22A6E3C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A22A6ED0;
}

void sub_1A22A6ED0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    v6 = v1[4];
    v7 = v1[5];
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))();
    (*((*v8 & *v9) + 0x140))(*(v6 + v7));

    (*(**(v6 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 256))();
    sub_1A22A9680();
  }

  free(v1);
}

uint64_t sub_1A22A7054()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A70EC(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_1A22A9680();
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
    v8 = *(v1 + v4);
    v9 = (*((*v6 & *v7) + 0xD0))(v11);
    *(v10 + 2) = v8;
    v9(v11, 0);
  }
}

void (*sub_1A22A71EC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_1A22A7280;
}

void sub_1A22A7280(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[7];
    v7 = v1[8];
    sub_1A22A9680();
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))();
    LOBYTE(v7) = *(v6 + v7);
    v10 = (*((*v8 & *v9) + 0xD0))(v1);
    *(v11 + 2) = v7;
    v10(v1, 0);
  }

  free(v1);
}

CGFloat sub_1A22A73C4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v4 = v3();
  v5 = (*((*v2 & *v4) + 0x190))();

  if ((v5 & 1) == 0)
  {
    v21 = (*((*v2 & *v1) + 0x238))();
    sub_1A211313C(v21, 1, 5);
    v23 = v22;

    return v23;
  }

  v6 = v3();
  v7 = [v6 window];

  if (!v7)
  {
    return 0.0;
  }

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;

  return CGRectGetHeight(*&v16);
}

double sub_1A22A76B8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  v4 = (*((*v2 & *v3) + 0x190))();

  v5 = (*((*v2 & *v1) + 0x238))();
  v6 = v5;
  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  v8 = sub_1A211313C(v5, 1, v7);

  return v8;
}

uint64_t sub_1A22A7820()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A78B8(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A22A79E8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v4 = v3();
  v5 = (*((*v2 & *v4) + 0x108))();

  if (v5)
  {
    if ((*((*v2 & *v1) + 0x250))() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0, &qword_1A2308C60);
      result = swift_allocObject();
      *(result + 16) = xmmword_1A230DE30;
      *(result + 32) = v5;
      return result;
    }
  }

  if (((*((*v2 & *v1) + 0x268))() & 1) == 0)
  {
    v7 = v3();
    v8 = *&v7[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

    LOBYTE(v7) = (*((*v2 & *v8) + 0xC8))();
    if (!sub_1A210E438(v7, 2))
    {
      return 0;
    }
  }

  v9 = v3();
  v10 = *&v9[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v11 = (*((*v2 & *v10) + 0x140))();
  v12 = *(v11 + 16);
  if (v12)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1A22E6F38();
    v13 = 0;
    v14 = 48;
    while (v13 < *(v11 + 16))
    {
      ++v13;
      v15 = *(v11 + v14);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      result = sub_1A22E6F18();
      v14 += 24;
      if (v12 == v13)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A22A7D48()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A7DE0(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A22A7E90(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))() - 3) < 3u)
  {
    return 0;
  }

  v5 = (*((*v3 & *v1) + 0x158))();
  v6 = (*((*v3 & *v5) + 0x188))(a1);

  return v6 & 1;
}

BOOL sub_1A22A80CC()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))() - 3) > 2u || (*((*v1 & *v0) + 0x128))() != 8)
  {
    return 1;
  }

  v2 = (*((*v1 & *v0) + 0x158))();
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v4 = (*((*v1 & *v3) + 0xC8))();

  return sub_1A210E438(v4, 1);
}

uint64_t sub_1A22A83C8()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A8460(uint64_t a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_1A22A8510()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))())
  {
    return 0;
  }

  v3 = *((*v1 & *v0) + 0x140);
  v4 = v3();
  if (sub_1A210E438(v4, 6))
  {
    return 1;
  }

  v5 = v3();
  if (sub_1A210E438(v5, 7))
  {
    return 1;
  }

  v6 = *((*v1 & *v0) + 0x158);
  v7 = v6();
  v8 = (*((*v1 & *v7) + 0xD8))();

  if (v8)
  {

    return 1;
  }

  v9 = v6();
  v10 = *&v9[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v11 = (*((*v1 & *v10) + 0xC8))();

  return sub_1A210E438(v11, 1);
}

void sub_1A22A8738(void *a1)
{
  if (*(a1 + OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController))
  {
    MEMORY[0x1EEE9AC00](a1);
    v3 = v2;
    v4 = sub_1A211A6BC();
    sub_1A22D1D0C(v3, v4 & 1, sub_1A22ACDB0);
  }

  v5 = sub_1A22A8B1C();
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x158))(v5);
  [v6 layoutIfNeeded];
}

void sub_1A22A88E0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v3 = v2();
  v4 = *((*v1 & *v0) + 0x140);
  v5 = v4();
  (*((*v1 & *v3) + 0x128))(v5);

  v6 = v4();
  v7 = sub_1A229DF4C(v6);
  if (!v7 && *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController))
  {
    MEMORY[0x1EEE9AC00](v7);
    v9 = v8;
    v10 = sub_1A211A6BC();
    sub_1A22D1D0C(v9, v10 & 1, sub_1A22ACDB0);
  }

  sub_1A22A8D04();
  v11 = (*(**(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 256))();
  if ((*((*v1 & *v0) + 0x268))(v11))
  {
    v12 = v2();
    [v12 layoutIfNeeded];
  }
}

uint64_t sub_1A22A8B1C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (v3 == 8)
  {
    if ((*((*v2 & *v0) + 0xF8))())
    {
      v4 = (*((*v2 & *v0) + 0x158))();
      v5 = (*((*v2 & *v4) + 0x190))();

      if (v5)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }
    }

    else
    {
      v6 = (*((*v2 & *v0) + 0x208))();
      v3 = sub_1A229DF14(v6);
    }
  }

  (*((*v2 & *v1) + 0x148))(v3);
  v7 = *((*v2 & *v1) + 0x130);

  return v7(8);
}

void sub_1A22A8D04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v9 = (v8)(v4);
  v10 = *&v9[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v11 = v8();
  v12 = *&v11[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v13 = *v7;
  v14 = ObjectType;
  v15 = (*((v13 & *v12) + 0x230))();

  v16 = v10;
  v17 = sub_1A22AB738(v15, v16, v14);

  v18 = sub_1A2104EA0();
  v33 = v3;
  (*(v3 + 16))(v6, v18, v2);

  v19 = sub_1A22E6238();
  v20 = sub_1A22E6A68();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v2;
    v23 = v22;
    v34[0] = v22;
    *v21 = 136315394;
    v24 = sub_1A22E7388();
    v26 = sub_1A2103450(v24, v25, v34);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = sub_1A22E6938();
    v29 = sub_1A2103450(v27, v28, v34);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_1A20FC000, v19, v20, "[%s] updateExpandedSessionIdentifiers - will update expandedSessionIdentifiers:%s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v23, -1, -1);
    MEMORY[0x1A58DCD00](v21, -1, -1);

    (*(v33 + 8))(v6, v31);
  }

  else
  {

    (*(v33 + 8))(v6, v2);
  }

  (*(**(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 312))(v17);
}

BOOL sub_1A22A9098(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v47[-v11];
  v13 = *a1;
  v14 = a1[1];
  v15 = MEMORY[0x1E69E7D40];
  v16 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x118))(v10);
  if (*(v16 + 16) && (v17 = sub_1A210FF30(v13, v14), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);

    v21 = *v15 & *v19;
    v50 = *(v21 + 0x130);
    v51 = v21 + 304;
    v22 = (v50)(v20);
    v23 = sub_1A229DADC(v22);
    v24 = sub_1A2104EA0();
    (*(v6 + 16))(v12, v24, v5);
    v25 = v19;

    v26 = sub_1A22E6238();
    v27 = sub_1A22E6A68();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v52 = v5;
      v29 = v28;
      v49 = swift_slowAlloc();
      v54 = v49;
      *v29 = 136315906;
      v30 = sub_1A22E7388();
      v48 = v27;
      v32 = sub_1A2103450(v30, v31, &v54);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1A2103450(v13, v14, &v54);
      *(v29 + 22) = 2080;
      v53 = v50();
      sub_1A22ACBF0();
      v33 = sub_1A22E71D8();
      v35 = sub_1A2103450(v33, v34, &v54);

      *(v29 + 24) = v35;
      *(v29 + 32) = 1024;
      *(v29 + 34) = v23;
      _os_log_impl(&dword_1A20FC000, v26, v48, "[%s] updateExpandedSessionIdentifiers - SessionView for sessionIdentifier:%s layout:%s isShowingRoutingItems:%{BOOL}d", v29, 0x26u);
      v36 = v49;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v36, -1, -1);
      MEMORY[0x1A58DCD00](v29, -1, -1);

      (*(v6 + 8))(v12, v52);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }
  }

  else
  {

    v37 = sub_1A2104EA0();
    (*(v6 + 16))(v9, v37, v5);

    v38 = sub_1A22E6238();
    v39 = sub_1A22E6A88();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *v40 = 136315394;
      v42 = sub_1A22E7388();
      v44 = sub_1A2103450(v42, v43, &v54);
      v52 = v5;
      v45 = v44;

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_1A2103450(v13, v14, &v54);
      _os_log_impl(&dword_1A20FC000, v38, v39, "[%s] updateExpandedSessionIdentifiers - SessionView not found for sessionIdentifier:%s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v41, -1, -1);
      MEMORY[0x1A58DCD00](v40, -1, -1);

      (*(v6 + 8))(v9, v52);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return 0;
  }

  return v23;
}

void sub_1A22A9680()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))();
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    v3();
    v3 = sub_1A210F5C0(v6, v5);
  }

  v7 = (*((*v2 & *v1) + 0x158))(v3);
  v8 = *&v7[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v9 = (*((*v2 & *v8) + 0x138))();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 48);
    while (v11 < *(v9 + 16))
    {
      ++v11;
      v13 = *v12;
      v14 = *((*v2 & **v12) + 0x1E8);

      v15 = v13;
      v14(2);

      v12 += 3;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

void sub_1A22A9858(void *a1)
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x158))();
  (*((*v1 & *v2) + 0xE0))(0);
}

id sub_1A22A996C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaControlsModuleViewController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A22A9A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A22E58F8();
  v14 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x250))(v4) || ((*((*v7 & *v1) + 0x170))() & 1) == 0)
  {
    v11 = *MEMORY[0x1E69AE580];
    v12 = *(v14 + 104);

    return v12(a1, v11, v3);
  }

  else
  {
    v8 = (*((*v7 & *v1) + 0x140))();
    v9 = MEMORY[0x1E69AE578];
    if ((v8 & 0xFC) != 4)
    {
      v9 = MEMORY[0x1E69AE570];
    }

    (*(v14 + 104))(v6, *v9, v3);
    return (*(v14 + 32))(a1, v6, v3);
  }
}

void sub_1A22A9C78()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  (*(**(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 224))(v3);
  (*((*v1 & *v2) + 0xB0))(v3);

  sub_1A22A9680();
}

void sub_1A22A9D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v5 = sub_1A22E5968();
  v60 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x140);
  v13 = (v12)(v8);
  if (!sub_1A210E438(v13, 6))
  {
    v14 = v12();
    if (!sub_1A210E438(v14, 7))
    {
      return;
    }
  }

  if (((*((*v11 & *v3) + 0x170))() & 1) == 0)
  {
    return;
  }

  v47 = v3;
  sub_1A22E5988();
  v16 = v15;
  sub_1A22E5958();
  v18 = v17;
  if (v16)
  {
    v19 = sub_1A22E6598();

    if (v18)
    {
LABEL_6:
      v20 = sub_1A22E6598();

      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
    if (v17)
    {
      goto LABEL_6;
    }
  }

  v20 = 0;
LABEL_9:
  v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  v22 = sub_1A22E5978();
  v23 = *(v22 + 16);
  if (v23)
  {
    v46 = v21;
    v56 = a3;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1A22E6F38();
    v24 = objc_opt_self();
    v54 = *(v60 + 16);
    v55 = v24;
    v53 = *(v60 + 80);
    v45 = v22;
    v52 = (v53 + 32) & ~v53;
    v25 = v22 + v52;
    v26 = *(v60 + 72);
    v50 = (v60 + 32);
    v51 = v26;
    v49 = v62;
    v60 += 16;
    v48 = (v60 - 8);
    do
    {
      v30 = v54;
      v54(v10, v25, v5);
      sub_1A22957CC();
      v32 = v31;
      v33 = v57;
      v30(v57, v10, v5);
      v34 = v5;
      v35 = v52;
      v36 = swift_allocObject();
      v37 = v56;
      *(v36 + 16) = v59;
      *(v36 + 24) = v37;
      v38 = v36 + v35;
      v5 = v34;
      (*v50)(v38, v33, v34);

      if (v32)
      {
        v27 = sub_1A22E6598();
      }

      else
      {
        v27 = 0;
      }

      v62[2] = sub_1A22979B4;
      v62[3] = v36;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v62[0] = sub_1A224DB84;
      v62[1] = &block_descriptor_21_1;
      v28 = _Block_copy(aBlock);

      v29 = [v55 actionWithTitle:v27 style:0 handler:{v28, v45}];
      _Block_release(v28);

      (*v48)(v10, v34);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      sub_1A22E6F18();
      v25 += v51;
      --v23;
    }

    while (v23);

    v39 = v63;
    v21 = v46;
    if (!(v63 >> 62))
    {
LABEL_16:
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        goto LABEL_17;
      }

LABEL_27:

      [v47 presentViewController:v21 animated:1 completion:0];

      return;
    }
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_16;
    }
  }

  v40 = sub_1A22E6DE8();
  if (!v40)
  {
    goto LABEL_27;
  }

LABEL_17:
  v41 = 0;
  while (1)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x1A58DB0F0](v41, v39);
    }

    else
    {
      if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v42 = *(v39 + 8 * v41 + 32);
    }

    v43 = v42;
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    [v21 addAction_];

    ++v41;
    if (v44 == v40)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1A22AA308()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (sub_1A229DF4C(v4) && ((*((*v3 & *v0) + 0x170))() & 1) != 0)
  {
    sub_1A2115288(0, &qword_1EB089740, 0x1E69CDFD0);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = ObjectType;

    v7 = sub_1A225C800(sub_1A22AC108, v6);

    v8 = *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController];
    *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController] = v7;
    v9 = v7;

    v10 = objc_opt_self();
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v9;
    v11[4] = ObjectType;
    v15[4] = sub_1A22AC11C;
    v15[5] = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1A2262D4C;
    v15[3] = &block_descriptor_31;
    v12 = _Block_copy(v15);
    v13 = v9;
    v14 = v1;

    [v10 requestWithCompletion_];
    _Block_release(v12);
  }
}

void sub_1A22AA544(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A22E6248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A2104EA0();
  (*(v8 + 16))(v10, v11, v7);
  v12 = a1;
  v13 = a2;
  v14 = sub_1A22E6238();
  v15 = sub_1A22E6A58();

  if (os_log_type_enabled(v14, v15))
  {
    v41 = v15;
    v42 = a3;
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43[0] = v40;
    *v16 = 136315650;
    v17 = sub_1A22E7388();
    v19 = sub_1A2103450(v17, v18, v43);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    if (a1 && (v20 = [v12 mediaRouteIdentifier]) != 0)
    {
      v21 = v20;
      v22 = sub_1A22E65C8();
      v24 = v23;

      v25 = v22;
    }

    else
    {
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    v26 = sub_1A2103450(v25, v24, v43);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2112;
    if (a2)
    {
      v27 = a2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v28;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v30 = v41;
    *(v16 + 24) = v28;
    v31 = v39;
    *v39 = v29;
    _os_log_impl(&dword_1A20FC000, v14, v30, "[%s] ShareAudio dismissed routeIdentfier:%s error:%@", v16, 0x20u);
    sub_1A226ADE4(v31);
    MEMORY[0x1A58DCD00](v31, -1, -1);
    v32 = v40;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v32, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);

    (*(v8 + 8))(v10, v7);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    if (*&Strong[OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController])
    {
      MEMORY[0x1EEE9AC00](Strong);
      *(&v38 - 2) = v34;
      v36 = v35;
      v37 = sub_1A211A6BC();
      sub_1A22D1D0C(v36, v37 & 1, sub_1A22ACD1C);
    }

    else
    {
    }
  }
}

id sub_1A22AA8E0(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1A22E6248();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    MEMORY[0x1EEE9AC00](v9);
    *(&v22 - 2) = a2;
    *(&v22 - 1) = a3;
    v12 = sub_1A211A6BC();
    return sub_1A22D1C68(a3, v12 & 1, sub_1A22ACC48);
  }

  else
  {
    v14 = sub_1A2104EA0();
    (*(v8 + 16))(v11, v14, v7);
    v15 = sub_1A22E6238();
    v16 = sub_1A22E6A98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_1A22E7388();
      v21 = sub_1A2103450(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1A20FC000, v15, v16, "[%s] ShareAudio not presented - device not unlocked", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1A58DCD00](v18, -1, -1);
      MEMORY[0x1A58DCD00](v17, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

BOOL sub_1A22AAB24()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x268))())
  {
    return 0;
  }

  else
  {
    v3 = (*((*v1 & *v0) + 0x158))();
    v4 = *&v3[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

    LOBYTE(v3) = (*((*v1 & *v4) + 0xC8))();
    return !sub_1A210E438(v3, 2);
  }
}

void sub_1A22AAC44(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x158))(a1);
  (*((*v4 & *v5) + 0x198))(a2);
}

uint64_t sub_1A22AAD14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  memset(v15, 0, sizeof(v15));
  v16 = 3;
  v8 = sub_1A2209D24();
  v9 = sub_1A2216D08();
  sub_1A229BE28(v9, v15, v14, 0.25, v8);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v4;
  v10[4] = a3;
  v10[5] = a4;
  v11 = a2;
  v12 = v4;

  sub_1A21179EC(v14, sub_1A22ACA38, v10, 0, 0);

  return sub_1A2116928(v14);
}

uint64_t sub_1A22AAE14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**(a2 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 192))();
  if (*(v7 + 16) && (v8 = sub_1A210FF30(a3, a4), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF0))(v10);
}

uint64_t sub_1A22AAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(**(v4 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 128))(a1, a2);
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(a3, a4, ObjectType, v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A22AAF90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  memset(v15, 0, sizeof(v15));
  v16 = 3;
  v8 = sub_1A2209D24();
  v9 = sub_1A2216D08();
  sub_1A229BE28(v9, v15, v14, 0.25, v8);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v4;
  v10[4] = a3;
  v10[5] = a4;
  v11 = a2;
  v12 = v4;

  sub_1A21179EC(v14, sub_1A22ACDB4, v10, 0, 0);

  return sub_1A2116928(v14);
}

void sub_1A22AB090(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediaControlsModuleViewController(a1, a2);

  nullsub_1();
}

void sub_1A22AB0E4(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0xF8))() & 1) == 0)
  {
    v4 = (*((*v3 & *v1) + 0x140))();
    if (!sub_1A229DF4C(v4))
    {
      return;
    }
  }

  v5 = *((*v3 & *v1) + 0x158);
  v6 = v5();
  v7 = *&v6[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  [a1 locationInView_];
  v9 = v8;
  v11 = v10;

  v12 = v5();
  v13 = *&v12[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v14 = (*((*v3 & *v13) + 0x140))();
  v15 = *(v14 + 16);
  if (v15)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A22E6F38();
    v16 = 0;
    v17 = 48;
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      ++v16;
      v18 = *(v14 + v17);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      sub_1A22E6F18();
      v17 += 24;
    }

    while (v15 != v16);

    v19 = v26;
    if (v26 >> 62)
    {
      goto LABEL_20;
    }
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_20:
      v20 = sub_1A22E6DE8();
      if (v20)
      {
        goto LABEL_9;
      }

LABEL_21:

      return;
    }
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_9:
  v21 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1A58DB0F0](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    [v22 frame];
    v27.x = v9;
    v27.y = v11;
    v25 = CGRectContainsPoint(v28, v27);

    if (!v25)
    {
      ++v21;
      if (v24 != v20)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1A22AB454(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1A22AB5D4(a1, a2, a3, a4, a5);
  v7 = v6;

  return v7;
}

unint64_t *sub_1A22AB494(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v11 = a4;
    sub_1A22AB54C(v10, a2, a3, v11, &v12, a5);

    if (!v5)
    {
      a3 = v12;
    }

    return a3;
  }

  return result;
}

void sub_1A22AB54C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>, uint64_t a6@<X4>)
{
  v12 = a4;
  v13 = sub_1A22AB454(a1, a2, a3, v12, a6);

  if (!v6)
  {
    *a5 = v13;
  }
}

void sub_1A22AB5D4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v26 = a5;
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v18 = v17[1];
    v25[0] = *v17;
    v25[1] = v18;

    v19 = sub_1A22A9098(v25, a4, v26);

    if (v5)
    {
      return;
    }

    if (v19)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1A2124D10(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1A22AB738(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a3;
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v31 = v8;
  if (v5 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27 = v6;
    v28 = &v26;
    MEMORY[0x1EEE9AC00](v8);
    v9 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v7);
    v29 = 0;
    v7 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v6 = v14 | (v7 << 6);
      v17 = (*(a1 + 48) + 16 * v6);
      v18 = v17[1];
      v33[0] = *v17;
      v33[1] = v18;

      v19 = sub_1A22A9098(v33, v31, v30);
      if (v32)
      {

        swift_willThrow();
        goto LABEL_20;
      }

      v20 = v19;

      if (v20)
      {
        *&v9[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          v12 = sub_1A2124D10(v9, v27, v29, a1);

          return v12;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v31;
  v25 = v32;
  v12 = sub_1A22AB494(v23, v6, a1, v24, v30);

  MEMORY[0x1A58DCD00](v23, -1, -1);
  v32 = v25;
  if (v25)
  {
LABEL_20:
  }

  else
  {
  }

  return v12;
}

void sub_1A22AB9F8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_collapseToControlCenter) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_expandedLayout) = 8;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_layout) = 1;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen) = 0;
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_visualStylingProvider;
  type metadata accessor for VisualStylingProvider(0, a2);
  sub_1A22E0878();
  v4 = sub_1A211A6BC();
  *(v2 + v3) = sub_1A22DF9B0(v8, 0, 1, 4, 0, v4);
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController) = 0;
  v5 = (v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_dismissModuleBlock);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_expandModuleBlock);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_invalidateContainerViewsBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass) = 4;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter) = 1;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction) = 0;
  *(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses) = 1536;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A22ABBA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = Strong;
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x158))();
    v4 = *&v3[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

    type metadata accessor for MediaControlsModuleSessionView(0, v5);
    v6 = sub_1A211A6BC();
    (*((*v1 & *v4) + 0xE0))(1, v6 & 1);

    v7 = *(**&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_presenter] + 272);

    v7(v8);
  }
}

void sub_1A22ABCF8()
{
  v1 = *(v0 + 16);
  v2 = sub_1A22A8B1C();
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v2);
  [v3 layoutIfNeeded];
}

uint64_t sub_1A22ABDA8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  v4 = *&v3[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  LOBYTE(v3) = (*((*v2 & *v4) + 0xC8))();
  result = sub_1A210E438(v3, 2);
  if (result)
  {
    result = (*((*v2 & *v1) + 0xF8))();
    if ((result & 1) == 0)
    {
      return (*(**(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 264))();
    }
  }

  return result;
}

void sub_1A22ABEE0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x158);
  v8 = v7();
  v9 = *&v8[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  LOBYTE(v8) = (*((*v6 & *v9) + 0xC8))();
  if (sub_1A210E438(v8, 1))
  {
    v10 = v7();
    v11 = *&v10[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

    (*((*v6 & *v11) + 0xE0))(0, 1);
    if (a1)
    {
      a1();
    }
  }

  else
  {
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    sub_1A229C070(v15);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = v3;
    sub_1A2111D40(a1, a2);
    sub_1A21179EC(v15, sub_1A22ACD24, v12, sub_1A22ACD2C, v13);

    sub_1A2116928(v15);
  }
}

uint64_t sub_1A22AC128()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v3 == 6)
  {
    v4 = 4;
  }

  else if (v3 == 7)
  {
    v4 = 5;
  }

  else
  {
    v5 = (*((*v2 & *v0) + 0x158))();
    v6 = (*((*v2 & *v5) + 0x190))();

    if (v6)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }
  }

  (*((*v2 & *v1) + 0x130))(v4);
  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  sub_1A229C070(v10);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  sub_1A21179EC(v10, sub_1A22ACD78, v7, 0, 0);

  return sub_1A2116928(v10);
}

void sub_1A22AC2FC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v3 == 4)
  {
    v4 = 6;
  }

  else if (v3 == 5)
  {
    v4 = 7;
  }

  else
  {
    v5 = (*((*v2 & *v0) + 0x158))();
    v6 = (*((*v2 & *v5) + 0x190))();

    if (v6)
    {
      v4 = 6;
    }

    else
    {
      v4 = 7;
    }
  }

  v7 = (*((*v2 & *v1) + 0x130))(v4);
  v8 = *((*v2 & *v1) + 0xF8);
  v9 = v8(v7);
  v10 = (*((*v2 & *v1) + 0x118))((v9 & 1) == 0);
  if (v8(v10))
  {
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    sub_1A229C070(v17);
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = v1;
    sub_1A21179EC(v17, sub_1A22ACC44, v11, 0, 0);

    sub_1A2116928(v17);
  }

  else
  {
    v13 = (*((*v2 & *v1) + 0x1D8))();
    if (v13)
    {
      v15 = v14;
      v16 = v13;
      v13();
      sub_1A210F5C0(v16, v15);
    }
  }

  UIAccessibilityPostNotification(*MEMORY[0x1E69DD930], 0);
}

void *sub_1A22AC5CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for MediaControlsModuleSessionView(0, a2);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = (*(**(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 192))();
  if (*(v7 + 16) && (v8 = sub_1A210FF30(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0xF0))(v10);
  v12 = *((*v11 & *v6) + 0xD8);
  v13 = swift_unknownObjectRetain();
  v14 = v12(v13, &off_1F1442338);
  v15 = (*((*v11 & *v3) + 0x238))(v14);
  v16 = (*((*v11 & *v6) + 0x168))(v15);
  v17 = (*((*v11 & *v3) + 0x140))(v16);
  (*((*v11 & *v6) + 0x120))(v17);
  v18 = *((*v11 & *v6) + 0x150);

  v18(v19);
  return v6;
}

uint64_t sub_1A22AC86C(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
  (*((*v4 & *v5) + 0x1C8))();

  sub_1A22A9680();
  if (sub_1A210E438(a1, 1) && ((*((*v4 & *v2) + 0xF8))() & 1) == 0)
  {
    v6 = (*((*v4 & *v2) + 0x1D8))();
    if (v6)
    {
      v8 = v7;
      v9 = v6;
      v6();
      sub_1A210F5C0(v9, v8);
    }
  }

  sub_1A2215570();
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    return (*(**(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 264))();
  }

  return result;
}

uint64_t sub_1A22ACAF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CCUIGridSizeClassMask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1A22ACBF0()
{
  result = qword_1EB0899B8;
  if (!qword_1EB0899B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0899B8);
  }

  return result;
}

void sub_1A22ACC48()
{
  v1 = *(v0 + 24);
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x158))();
  (*((*v2 & *v3) + 0xE0))([v1 view]);
}

uint64_t sub_1A22ACD2C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1A22ACDB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A22E5C88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A22ACE20(uint64_t a1)
{
  v3 = sub_1A22E5C88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1A22ACEAC(uint64_t a1)
{
  result = type metadata accessor for SessionArtworkPresentationModel(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1A22ACF48(char a1)
{
  result = type metadata accessor for SessionArtworkPresentationModel(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1A22ACFC0()
{
  v1 = 7104878;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440, &unk_1A230D640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - v3;
  v14 = 40;
  v15 = 0xE100000000000000;
  v5 = sub_1A22E59B8();
  MEMORY[0x1A58DA8D0](v5);

  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  v13[1] = *(v0 + *(type metadata accessor for SessionArtworkPresentationModel(0) + 20));
  v6 = sub_1A22E71D8();
  MEMORY[0x1A58DA8D0](v6);

  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  sub_1A22E5B48();
  v7 = sub_1A22E5B38();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_1A2105394(v4);
LABEL_5:
    v11 = 0xE300000000000000;
    goto LABEL_6;
  }

  v9 = sub_1A22E5AE8();
  (*(v8 + 8))(v4, v7);
  if (!v9)
  {
    goto LABEL_5;
  }

  v1 = sub_1A22E5908();
  v11 = v10;

LABEL_6:
  MEMORY[0x1A58DA8D0](v1, v11);

  MEMORY[0x1A58DA8D0](41, 0xE100000000000000);
  return v14;
}

uint64_t sub_1A22AD1AC(uint64_t a1, uint64_t a2)
{
  if ((sub_1A22E5B98() & 1) != 0 && (v4 = type metadata accessor for SessionArtworkPresentationModel(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1A22AD214(uint64_t a1)
{
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600], MEMORY[0x1E69AE608]);
  sub_1A22E6548();
  v2 = type metadata accessor for SessionArtworkPresentationModel(0);
  MEMORY[0x1A58DB4F0](*(v1 + *(v2 + 20)));
  return sub_1A22E72C8();
}

uint64_t sub_1A22AD2B8()
{
  sub_1A22E72A8();
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600], MEMORY[0x1E69AE608]);
  sub_1A22E6548();
  v1 = type metadata accessor for SessionArtworkPresentationModel(0);
  MEMORY[0x1A58DB4F0](*(v0 + *(v1 + 20)));
  sub_1A22E72C8();
  return sub_1A22E72F8();
}