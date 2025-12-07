uint64_t sub_1A22AD378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1A22E5C88();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SessionArtworkPresentationModel(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1A22AD400(uint64_t a1)
{
  sub_1A22E72A8();
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600], MEMORY[0x1E69AE608]);
  sub_1A22E6548();
  MEMORY[0x1A58DB4F0](*(v1 + *(a1 + 20)));
  sub_1A22E72C8();
  return sub_1A22E72F8();
}

uint64_t sub_1A22AD4B8(uint64_t a1, uint64_t a2)
{
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600], MEMORY[0x1E69AE608]);
  sub_1A22E6548();
  MEMORY[0x1A58DB4F0](*(v2 + *(a2 + 20)));
  return sub_1A22E72C8();
}

uint64_t sub_1A22AD55C(uint64_t a1, uint64_t a2)
{
  sub_1A22E72A8();
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600], MEMORY[0x1E69AE608]);
  sub_1A22E6548();
  MEMORY[0x1A58DB4F0](*(v2 + *(a2 + 20)));
  sub_1A22E72C8();
  return sub_1A22E72F8();
}

uint64_t sub_1A22AD614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1A22E5B98() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A22AD680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440, &unk_1A230D640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SessionArtworkPresentationModel(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 24))(a1, a2);
  sub_1A22E5B48();
  v10 = sub_1A22E5B38();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1A2129CA8(v9);
    sub_1A2105394(v6);
    return 0;
  }

  else
  {
    v13 = sub_1A22E5AE8();
    sub_1A2129CA8(v9);
    (*(v11 + 8))(v6, v10);
    return v13;
  }
}

uint64_t sub_1A22AD828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionArtworkPresentationModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = (*(a2 + 16))(a1, a2);
  v10[1] = v7;
  MEMORY[0x1A58DA8D0](2108704, 0xE300000000000000);
  (*(a2 + 24))(a1, a2);
  v8 = sub_1A22ACFC0();
  MEMORY[0x1A58DA8D0](v8);

  sub_1A2129CA8(v6);
  return v10[0];
}

uint64_t sub_1A22AD974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A22AD9E4(uint64_t a1)
{
  result = sub_1A22E5C88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1A22ADB30()
{
  v0 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v2 = v1;
  v6 = sub_1A21146A4(v1, v4, *MEMORY[0x1E69DB970], v3 | ((HIDWORD(v3) & 1) << 32), v5);

  return v6;
}

void sub_1A22ADC34(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v6 = v5;
  v10 = sub_1A21146A4(v5, v8, *MEMORY[0x1E69DB970], v7 | ((HIDWORD(v7) & 1) << 32), v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 20) = BYTE4(v14) & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 52) = v18 & 1;
  *(a2 + 56) = v22;
  *(a2 + 64) = a1;
}

void sub_1A22ADD30(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v4 = v3;
  v8 = sub_1A21146A4(v3, v6, *MEMORY[0x1E69DB970], v5 | ((HIDWORD(v5) & 1) << 32), v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 20) = BYTE4(v12) & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  *(a1 + 52) = v16 & 1;
  *(a1 + 56) = v20;
  *(a1 + 64) = 0;
}

__n128 sub_1A22ADE20@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_style);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1A22ADEA4(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A22ADEDC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_style;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 32);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  sub_1A22ADEA4(a1, &v11);

  sub_1A22AE9F0(v9, v8);
  return sub_1A22AEC0C(a1);
}

void (*sub_1A22ADFAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22AE010;
}

void sub_1A22AE010(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A22AE9F0(v4, v3);
  }
}

uint64_t sub_1A22AE044()
{
  v1 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22AE088(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!sub_1A2229988(a1, v4))
  {
    sub_1A22AEE6C();
  }
}

void (*sub_1A22AE0EC(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A22AE180;
}

void sub_1A22AE180(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = v1[3];
  v3 = v1[4];
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (!sub_1A2229988(v2, v5))
  {
    sub_1A22AEE6C();
  }

  free(v1);
}

id sub_1A22AE210(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = sub_1A2114DFC();

  return v2;
}

id sub_1A22AE264(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RoutePickerItemAccessoryView(0, a2);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_1A2114DFC();

  return v3;
}

id sub_1A22AE2C0()
{
  v1 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0, &qword_1A2308C60);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A2308C50;
    v5 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel);
    v6 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel);
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v7 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v8 = v5;
    v9 = v6;
    v10 = sub_1A22E6738();

    v11 = [v7 initWithArrangedSubviews_];

    v12 = v0;
    v13 = sub_1A2114DFC();

    v14 = *(v12 + v1);
    *(v12 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

uint64_t sub_1A22AE3F4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView);
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView) = a1;
  return MEMORY[0x1EEE66BB8](a1, v2);
}

void (*sub_1A22AE408(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A22AE2C0();
  return sub_1A22AE450;
}

void sub_1A22AE450(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView);
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView) = v2;
}

void *sub_1A22AE468(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_style];
  v11 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v13 = v12;
  v17 = sub_1A21146A4(v12, v15, *MEMORY[0x1E69DB970], v14 | ((HIDWORD(v14) & 1) << 32), v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v65 = BYTE4(v21) & 1;
  v24 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v64 = v25 & 1;
  *v10 = v17;
  *(v10 + 1) = v19;
  *(v10 + 4) = v21;
  v10[20] = BYTE4(v21) & 1;
  *(v10 + 3) = v23;
  *(v10 + 4) = v26;
  *(v10 + 5) = v27;
  *(v10 + 12) = v28;
  v10[52] = v25 & 1;
  *(v10 + 7) = v29;
  v10[64] = 0;
  v5[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state] = 0;
  v30 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView;
  v31 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v32 = sub_1A2114DFC();

  *&v5[v30] = v32;
  v33 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel;
  v34 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v35 = sub_1A2114DFC();

  *&v5[v33] = v35;
  v36 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel;
  v37 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v38 = sub_1A2114DFC();

  *&v5[v36] = v38;
  v39 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView;
  type metadata accessor for RoutePickerItemAccessoryView(0, v40);
  v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v42 = sub_1A2114DFC();

  *&v5[v39] = v42;
  *&v5[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_defaultTitleConstraints] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_centerAlignedTitleConstraints] = 0;
  v63.receiver = v5;
  v63.super_class = type metadata accessor for RoutePickerItemContentView(v43, v44);
  v45 = objc_msgSendSuper2(&v63, sel_initWithFrame_, a1, a2, a3, a4);
  [v45 setUserInteractionEnabled_];
  v46 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView;
  [*(v45 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView) setContentMode_];
  v47 = *(v45 + v46);
  v48 = objc_opt_self();
  v49 = v47;
  v50 = [v48 configurationWithPointSize_];
  [v49 setSymbolConfiguration_];

  v51 = [v45 addSubview_];
  v52 = *((*MEMORY[0x1E69E7D40] & *v45) + 0xC8);
  v53 = (v52)(v51);
  [v53 setAxis_];

  v54 = v52();
  [v54 setDistribution_];

  v55 = v52();
  [v55 setSpacing_];

  v56 = v52();
  [v45 addSubview_];

  [v45 addSubview_];
  sub_1A22AE930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20, &qword_1A230A680);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A2308E80;
  v58 = sub_1A22E6378();
  v59 = MEMORY[0x1E69DC2B0];
  *(v57 + 32) = v58;
  *(v57 + 40) = v59;
  MEMORY[0x1A58DAE60](v57, sel_updateContentSizeCategory);
  swift_unknownObjectRelease();

  sub_1A2115288(0, &qword_1ED94EA40, 0x1E69DD1B8);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  sub_1A22AEC3C();
  sub_1A22AEE6C();
  sub_1A22AE9F0(v61, v60);

  return v45;
}

double sub_1A22AE930()
{
  v1 = sub_1A211A6BC();
  sub_1A211A6C4(v1 & 1, sub_1A22AF544);

  *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_defaultTitleConstraints) = sub_1A211A6C4(0, sub_1A22AF9D4);

  *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_centerAlignedTitleConstraints) = sub_1A211A6C4(0, sub_1A22AFC20);

  return result;
}

void sub_1A22AE9F0(__n128 a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_defaultTitleConstraints);
  v4 = MEMORY[0x1E69E7D40];
  if (v3)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);

    v5(v12, v6);
    sub_1A22AEC0C(v12);
    (*(*v3 + 384))((v13 & 1) == 0);
  }

  v7 = *(v2 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_centerAlignedTitleConstraints);
  if (v7)
  {
    v8 = *((*v4 & *v2) + 0x98);

    v8(v14, v9);
    sub_1A22AEC0C(v14);
    (*(*v7 + 384))(v15);
  }

  v10 = (*((*v4 & *v2) + 0xC8))(a2);
  (*((*v4 & *v2) + 0x98))(v16);
  sub_1A22AEC0C(v16);
  if (v17)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  [v10 setAlignment_];
}

void sub_1A22AEC3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v2(v19);
  v3 = v19[1];
  v4 = v20;
  v5 = v21;
  v6 = v22;
  v7 = v19[0];

  sub_1A22AEC0C(v19);
  v8 = [v0 traitCollection];
  v9 = sub_1A21275D0();
  LOBYTE(v23[0]) = v5;
  v10 = sub_1A21275D8(v8, v7, v3, v4 | (v5 << 32), v6, v9);

  [v1 setFont_];
  v11 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel);
  v2(v23);
  v12 = v23[5];
  v13 = v24;
  LOBYTE(v10) = v25;
  v14 = v26;
  v15 = v23[4];

  sub_1A22AEC0C(v23);
  v16 = [v0 traitCollection];
  v17 = sub_1A21275D0();
  v18 = sub_1A21275D8(v16, v15, v12, v13 | (v10 << 32), v14, v17);

  [v11 setFont_];
}

void sub_1A22AEE6C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  LODWORD(v1) = v2 == 2;
  LODWORD(v2) = v3() == 0;
  v4 = objc_opt_self();
  v5 = &selRef_systemBlackColor;
  if (v2 == v1)
  {
    v5 = &selRef_systemWhiteColor;
  }

  v6 = [v4 *v5];
  v7 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView);
  v8 = v6;
  [v7 setTintColor_];
  [*(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel) setTextColor_];
  [*(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel) setTextColor_];
  [*(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView) setTintColor_];

  v9 = [v0 layer];
  v10 = [v0 traitCollection];
  v3();
  sub_1A226FA58();
  v11 = sub_1A22E6568();
  v12 = sub_1A228BAA0(v10, (v11 & 1) == 0);

  if (v12)
  {
    sub_1A224DFDC(v12);

    v12 = sub_1A22E6738();
  }

  [v9 setFilters_];
}

id sub_1A22AF110(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoutePickerItemContentView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A22AF230()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_style;
  v3 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v5 = v4;
  v9 = sub_1A21146A4(v4, v7, *MEMORY[0x1E69DB970], v6 | ((HIDWORD(v6) & 1) << 32), v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  *v2 = v9;
  *(v2 + 8) = v11;
  *(v2 + 16) = v13;
  *(v2 + 20) = BYTE4(v13) & 1;
  *(v2 + 24) = v15;
  *(v2 + 32) = v18;
  *(v2 + 40) = v19;
  *(v2 + 48) = v20;
  *(v2 + 52) = v17 & 1;
  *(v2 + 56) = v21;
  *(v2 + 64) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state) = 0;
  v22 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView;
  v23 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v24 = sub_1A2114DFC();

  *(v1 + v22) = v24;
  v25 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v27 = sub_1A2114DFC();

  *(v1 + v25) = v27;
  v28 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v30 = sub_1A2114DFC();

  *(v1 + v28) = v30;
  v31 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView;
  type metadata accessor for RoutePickerItemAccessoryView(0, v32);
  v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = sub_1A2114DFC();

  *(v1 + v31) = v34;
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_defaultTitleConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_centerAlignedTitleConstraints) = 0;
  sub_1A22E7028();
  __break(1u);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A22AF488(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1A22AF4D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A22AF544()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView);
  v3 = [v2 leadingAnchor];
  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);
  v4 = [v1 leadingAnchor];
  v5 = sub_1A211AA50();

  sub_1A211AA90(v3, v5);
  v7 = v6;
  v54 = v8;

  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);

  v49 = v7;
  v9 = [v2 centerYAnchor];
  v10 = [v1 centerYAnchor];
  v11 = sub_1A211AAD0();
  v53 = v12;

  v52 = v11;
  v13 = sub_1A2257E60();
  v15 = v14;
  v50 = sub_1A2257EBC(v13, v14, v16, 32.0, 32.0);

  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))();
  v18 = [v17 centerYAnchor];

  v19 = [v1 centerYAnchor];
  v20 = sub_1A211AAD0();
  v48 = v21;

  v22 = *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView);

  v47 = v20;
  v23 = [v22 trailingAnchor];
  v24 = [v1 trailingAnchor];
  v25 = sub_1A211AB14();

  sub_1A211AA90(v23, v25);
  v27 = v26;
  v46 = v28;

  v29 = v27;
  v30 = [v22 centerYAnchor];
  v31 = [v2 centerYAnchor];
  v32 = sub_1A211AAD0();
  v45 = v33;

  v44 = v32;
  v34 = sub_1A2257E60();
  v36 = v35;
  v43 = sub_1A2257EBC(v34, v35, v37, 32.0, 32.0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1A230CE20;
  *(v38 + 56) = &type metadata for Constraint;
  *(v38 + 64) = &off_1F14441B0;
  *(v38 + 32) = v49;
  *(v38 + 40) = v54;
  *(v38 + 96) = &type metadata for Constraint;
  *(v38 + 104) = &off_1F14441B0;
  *(v38 + 72) = v52;
  *(v38 + 80) = v53;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840, &unk_1A2308EF0);
  *(v38 + 136) = v39;
  *(v38 + 144) = &off_1F14441C0;
  *(v38 + 112) = v50;
  *(v38 + 176) = &type metadata for Constraint;
  *(v38 + 184) = &off_1F14441B0;
  *(v38 + 152) = v47;
  *(v38 + 160) = v48;
  *(v38 + 216) = &type metadata for Constraint;
  *(v38 + 224) = &off_1F14441B0;
  *(v38 + 192) = v29;
  *(v38 + 200) = v46;
  *(v38 + 256) = &type metadata for Constraint;
  *(v38 + 264) = &off_1F14441B0;
  *(v38 + 232) = v44;
  *(v38 + 240) = v45;
  *(v38 + 296) = v39;
  *(v38 + 304) = &off_1F14441C0;
  *(v38 + 272) = v43;
  sub_1A211AB54(v38, v40);
  v51 = v41;

  return v51;
}

uint64_t sub_1A22AF9D4()
{
  v1 = *(v0 + 16);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v3 = v2();
  v4 = [v3 leadingAnchor];

  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);
  v5 = [*(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView) trailingAnchor];
  v6 = sub_1A211AA50();

  sub_1A211AA90(v4, v6);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v2();
  v13 = [v12 trailingAnchor];

  v14 = [*(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView) leadingAnchor];
  v15 = sub_1A211AB14();

  sub_1A211AA90(v13, v15);
  v17 = v16;
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A230A140;
  *(v20 + 56) = &type metadata for Constraint;
  *(v20 + 64) = &off_1F14441B0;
  *(v20 + 32) = v11;
  *(v20 + 40) = v10;
  *(v20 + 96) = &type metadata for Constraint;
  *(v20 + 104) = &off_1F14441B0;
  *(v20 + 72) = v17;
  *(v20 + 80) = v19;

  v21 = v17;
  sub_1A211AB54(v20, v22);
  v24 = v23;

  return v24;
}

uint64_t sub_1A22AFC20()
{
  v1 = *(v0 + 16);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v3 = v2();
  v4 = [v3 leadingAnchor];

  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);
  v5 = [v1 leadingAnchor];
  v6 = sub_1A211AA50();

  sub_1A211AA90(v4, v6);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v2();
  v13 = [v12 trailingAnchor];

  v14 = [v1 trailingAnchor];
  v15 = sub_1A211AB14();

  sub_1A211AA90(v13, v15);
  v17 = v16;
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A230A140;
  *(v20 + 56) = &type metadata for Constraint;
  *(v20 + 64) = &off_1F14441B0;
  *(v20 + 32) = v11;
  *(v20 + 40) = v10;
  *(v20 + 96) = &type metadata for Constraint;
  *(v20 + 104) = &off_1F14441B0;
  *(v20 + 72) = v17;
  *(v20 + 80) = v19;

  v21 = v17;
  sub_1A211AB54(v20, v22);
  v24 = v23;

  return v24;
}

void sub_1A22AFE80()
{
  if (__OFSUB__(*(v0 + 8), 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(*(v0 + 16), 1))
  {
LABEL_5:
    __break(1u);
  }
}

__n128 sub_1A22AFEBC@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = vdupq_n_s64(1uLL);
  *(a1 + 24) = 0x4024000000000000;
  result = *MEMORY[0x1E69DC5C0];
  v2 = *(MEMORY[0x1E69DC5C0] + 16);
  *(a1 + 32) = *MEMORY[0x1E69DC5C0];
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_1A22AFEE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  *a4 = result & 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  *(a4 + 48) = a8;
  *(a4 + 56) = a9;
  return result;
}

BOOL sub_1A22AFF04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1A22B2988(v7, v8);
}

void sub_1A22AFF50(unsigned __int8 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_style);
  swift_beginAccess();
  if (*v3 != *a1 || *(v3 + 1) != *(a1 + 1) || *(v3 + 2) != *(a1 + 2) || *(v3 + 3) != *(a1 + 3) || *(v3 + 4) != *(a1 + 4) || (*(v3 + 5) == *(a1 + 5) ? (v4 = *(v3 + 6) == *(a1 + 6)) : (v4 = 0), v4 ? (v5 = *(v3 + 7) == *(a1 + 7)) : (v5 = 0), !v5))
  {
    sub_1A22B12D4();
  }
}

void sub_1A22B0014(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_style);
  swift_beginAccess();
  v4 = v3[1];
  v8[0] = *v3;
  v8[1] = v4;
  v5 = v3[3];
  v8[2] = v3[2];
  v8[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  v3[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  sub_1A22AFF50(v8);
}

void (*sub_1A22B008C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_style;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v4[10] = v6[2];
  v4[11] = v9;
  v4[8] = v7;
  v4[9] = v8;
  return sub_1A22B012C;
}

void sub_1A22B012C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 216) + *(*a1 + 224));
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 64;
  }

  v5 = v3[3];
  v7 = *v3;
  v6 = v3[1];
  *(v4 + 32) = v3[2];
  *(v4 + 48) = v5;
  *v4 = v7;
  *(v4 + 16) = v6;
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[11];
  v3[2] = v2[10];
  v3[3] = v10;
  *v3 = v8;
  v3[1] = v9;
  sub_1A22AFF50(v4);

  free(v2);
}

uint64_t sub_1A22B01E8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A22B0254(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

double sub_1A22B033C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_viewModel;
  swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v5)
    {

      v7 = sub_1A21297AC(v6, v5);

      if (v7)
      {
        goto LABEL_7;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_1A22B19A4();
LABEL_7:

  return result;
}

void (*sub_1A22B03CC(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1A22B0468;
}

void sub_1A22B0468(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (a2)
  {

    sub_1A22B033C(v5);
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v4;
    if (v4)
    {
      if (v8)
      {

        v10 = sub_1A21297AC(v9, v8);

        if (v10)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_10;
    }

    sub_1A22B19A4();
  }

LABEL_9:

LABEL_10:

  free(v3);
}

double sub_1A22B051C()
{
  sub_1A222DD24();

  return result;
}

double sub_1A22B0548()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_collectionView) visibleCells];
  sub_1A2115288(0, &qword_1EB089A90, 0x1E69DC7F8);
  v3 = sub_1A22E6748();

  if (v3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A22E6DE8())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A58DB0F0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v8 = v6;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      type metadata accessor for MediaSuggestionCollectionViewCell(0, v7);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = MEMORY[0x1E69E7D40];
        v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
        (*((*v12 & *v11) + 0x100))(v13);
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return result;
}

double sub_1A22B072C()
{
  swift_beginAccess();

  return result;
}

double sub_1A22B0774(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A22B0548();

  return result;
}

uint64_t (*sub_1A22B07E4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22B0848;
}

uint64_t sub_1A22B0860()
{
  v1 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22B08A4(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_onScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1A22B19A4();
}

uint64_t (*sub_1A22B08F8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22B095C;
}

uint64_t sub_1A22B0974(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1A22B09B8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaSuggestionsView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_frame);
}

void sub_1A22B09EC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = type metadata accessor for MediaSuggestionsView(a1, a2);
  v25.receiver = v6;
  v25.super_class = v11;
  objc_msgSendSuper2(&v25, sel_frame);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v24.receiver = v6;
  v24.super_class = v11;
  objc_msgSendSuper2(&v24, sel_setFrame_, a3, a4, a5, a6);
  [v6 frame];
  v27.origin.x = v20;
  v27.origin.y = v21;
  v27.size.width = v22;
  v27.size.height = v23;
  v26.origin.x = v13;
  v26.origin.y = v15;
  v26.size.width = v17;
  v26.size.height = v19;
  if (!CGRectEqualToRect(v26, v27))
  {
    sub_1A22B12D4();
  }
}

char *sub_1A22B0AD0(double a1, double a2, double a3, double a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089A38, &qword_1A230F830);
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v42);
  v12 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = &v4[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_style];
  *v15 = 1;
  *(v15 + 8) = vdupq_n_s64(1uLL);
  *(v15 + 3) = 0x4024000000000000;
  v16 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v15 + 2) = *MEMORY[0x1E69DC5C0];
  *(v15 + 3) = v16;
  *&v4[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_viewModel] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_dataSource] = 0;
  v17 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_cache;
  *&v4[v17] = *sub_1A222DD24();
  *&v4[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_visualStylingProvider] = 0;
  v4[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_onScreen] = 0;
  v18 = objc_allocWithZone(MEMORY[0x1E69DC850]);

  v19 = [v18 init];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v19 collectionViewLayout:{a1, a2, a3, a4}];

  *&v4[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_collectionView] = v20;
  v43 = type metadata accessor for MediaSuggestionsView(v21, v22);
  v45.receiver = v4;
  v45.super_class = v43;
  v23 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  *(swift_allocObject() + 16) = v23;
  type metadata accessor for MediaSuggestionCollectionViewCell(0, v24);
  sub_1A2115288(0, &qword_1ED94EA78, 0x1E69B0A58);
  v25 = v23;
  sub_1A22E6AE8();
  v26 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_collectionView;
  v27 = *&v25[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_collectionView];
  v28 = v42;
  (*(v9 + 16))(v12, v14, v42);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v12, v28);
  v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089A60, &qword_1A230F838));
  v32 = v27;
  v33 = sub_1A22E6328();
  v34 = *&v25[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_dataSource];
  *&v25[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_dataSource] = v33;

  v35 = *&v25[v26];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 clearColor];
  [v37 setBackgroundColor_];

  [*&v25[v26] setShowsVerticalScrollIndicator_];
  [*&v25[v26] setShowsHorizontalScrollIndicator_];
  [*&v25[v26] setAllowsMultipleSelection_];
  [*&v25[v26] setDelegate_];
  [v25 addSubview_];
  v39 = *(**&v25[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_cache] + 120);
  v40 = v25;

  v39(v40, &off_1F1442798);

  sub_1A2115288(0, &qword_1ED94EA40, 0x1E69DD1B8);
  sub_1A22E6B58();
  v44[3] = v43;
  v44[0] = v40;
  MEMORY[0x1A58DAE70]();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v44);
  sub_1A22B12D4();

  (*(v9 + 8))(v14, v28);
  return v40;
}

id sub_1A22B1020()
{
  v1 = *(**&v0[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_cache] + 128);

  v2 = v0;
  v1();

  v6.receiver = v2;
  v6.super_class = type metadata accessor for MediaSuggestionsView(v3, v4);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id sub_1A22B11F0(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for MediaSuggestionsView(a1, a2);
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_collectionView];
  [v2 bounds];
  return [v3 setFrame_];
}

void sub_1A22B12D4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v1(v51);
  v2 = LOBYTE(v51[0]);
  v3 = [v0 bounds];
  v49 = v2;
  if ((v2 & 1) == 0)
  {
    (v1)(v52, v3);
    sub_1A22E6A18();
    v24 = sub_1A22E6BE8();
    v26 = v25;
    v27 = (v1)(v53, v24);
    if (!__OFSUB__(v54, 1))
    {
      v28 = v26 - v55 * (v54 - 1);
      (v1)(v56, v27);
      v29 = v28 / v57;
      v30 = [v0 traitCollection];
      v31 = sub_1A21222D8(v30);

      v32 = objc_opt_self();
      v1(v58);
      v33 = [v32 fractionalWidthDimension_];
      v34 = [v32 fractionalHeightDimension_];
      v35 = objc_opt_self();
      v36 = [v35 sizeWithWidthDimension:v33 heightDimension:v34];

      v48 = v36;
      v37 = [objc_opt_self() itemWithLayoutSize_];
      v38 = [v32 fractionalWidthDimension_];
      v39 = [v32 absoluteDimension_];
      v19 = [v35 sizeWithWidthDimension:v38 heightDimension:v39];

      v40 = objc_opt_self();
      v21 = v1;
      v1(v59);
      v47 = v37;
      v22 = [v40 horizontalGroupWithLayoutSize:v19 repeatingSubitem:v37 count:v59[2]];
      v23 = 0;
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  (v1)(v52, v3);
  sub_1A22E6A18();
  v4 = sub_1A22E6BE8();
  v6 = v5;
  v7 = (v1)(v53, v4);
  if (__OFSUB__(v54, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v6 - v55 * (v54 - 1);
  (v1)(v56, v7);
  v9 = v8 / v57;
  v10 = [v0 traitCollection];
  sub_1A21222D8(v10);

  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension_];
  v1(v58);
  v13 = [v11 fractionalHeightDimension_];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v48 = v15;
  v16 = [objc_opt_self() itemWithLayoutSize_];
  v17 = [v11 absoluteDimension_];
  v18 = [v11 fractionalHeightDimension_];
  v19 = [v14 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = objc_opt_self();
  v21 = v1;
  v1(v59);
  v47 = v16;
  v22 = [v20 verticalGroupWithLayoutSize:v19 repeatingSubitem:v16 count:v59[1]];
  v23 = 1;
LABEL_6:
  v41 = v22;
  v42 = objc_opt_self();
  v21(v60);
  v43 = [v42 fixedSpacing_];
  [v41 setInterItemSpacing_];

  v44 = [objc_opt_self() sectionWithGroup_];
  v21(v61);
  (v21)(v62, [v44 setInterGroupSpacing_]);
  [v44 setContentInsets_];
  v50 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  [v50 setScrollDirection_];
  v45 = *(v0 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_collectionView);
  v46 = [objc_allocWithZone(MEMORY[0x1E69DC808]) initWithSection:v44 configuration:v50];
  [v45 setCollectionViewLayout_];

  [v45 setAlwaysBounceVertical_];
  [v45 setAlwaysBounceHorizontal_];
  [v45 setContentOffset_];
}

void sub_1A22B19A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089A98, &qword_1A230F988);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock - v4;
  sub_1A2115288(0, &qword_1ED94EA78, 0x1E69B0A58);
  sub_1A22B2DE8();
  sub_1A22E62E8();
  v6 = sub_1A22E62B8();
  v7 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))(v6))
  {
    if ((*((*v7 & *v0) + 0x108))())
    {
      aBlock = 0;
      v15 = 0;
      sub_1A22E62A8();
    }
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1A22B2E50;
  *(v10 + 24) = v9;
  v18 = sub_1A22154EC;
  v19 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A2212E7C;
  v17 = &block_descriptor_19;
  v11 = _Block_copy(&aBlock);
  v12 = v1;

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A22B1CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089A98, &qword_1A230F988);
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_dataSource);
  if (v9)
  {
    (*(v5 + 16))(v8, a2, v4);
    v10 = v9;
    sub_1A22E6348();

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A22B1DC4(void *a1, id a2)
{
  v3 = v2;
  v6 = [a2 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A22E65C8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD0))(v8, v10);
  v12 = [a2 artist];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1A22E65C8();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  (*((*v11 & *a1) + 0xE8))(v14, v16);
  v17 = *(v3 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_cache);
  v18 = (*(*v17 + 136))(a2);
  (*((*v11 & *a1) + 0xA0))(v18);
  v19 = [v3 traitCollection];
  v20 = sub_1A222E6A0();

  v21 = (*(*v17 + 144))(a2, v20);
  v22 = (*((*v11 & *a1) + 0xB8))(v21);
  v23 = (*((*v11 & *v3) + 0xF0))(v22);
  return (*((*v11 & *a1) + 0x100))(v23);
}

BOOL sub_1A22B2070(void *a1)
{
  v1 = [a1 indexPathsForSelectedItems];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  sub_1A22E56B8();
  v3 = sub_1A22E6748();

  v4 = *(v3 + 16);

  return v4 == 0;
}

void sub_1A22B2224(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_dataSource);
  if (v3)
  {
    v4 = v2;
    v6 = v3;
    sub_1A22E6338();

    if (v11)
    {
      if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0xA8))())
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(v4, v11, ObjectType, v8);

        swift_unknownObjectRelease();
        return;
      }
    }

    v10 = sub_1A22E5688();
    [a1 deselectItemAtIndexPath:v10 animated:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A22B243C(void *a1, unsigned int (**a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v56 = a3;
  v48 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089A70, &qword_1A230F840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_1A22E56B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 traitCollection];
  v15 = sub_1A222E6A0();

  if (v15 != a4)
  {
    return;
  }

  v16 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xC0))();
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v49 = v11;
  v54 = v13;
  v59 = MEMORY[0x1E69E7CC0];
  v18 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    goto LABEL_25;
  }

  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v10; v19; i = v10)
  {
    v53 = v5;
    v20 = 0;
    v57 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v57)
      {
        v21 = MEMORY[0x1A58DB0F0](v20, v17);
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_24;
        }

        v21 = *(v17 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 bundleID];
      if (v24)
      {
        v25 = v24;
        v5 = v18;
        v26 = sub_1A22E65C8();
        v28 = v27;

        if (v26 == v55 && v28 == v56)
        {

          v10 = i;
LABEL_20:
          sub_1A22E6F08();
          sub_1A22E6F48();
          sub_1A22E6F58();
          sub_1A22E6F18();
          v18 = v5;
          goto LABEL_7;
        }

        v30 = sub_1A22E71E8();

        v10 = i;
        if (v30)
        {
          goto LABEL_20;
        }

        v18 = v5;
      }

      else
      {

        v10 = i;
      }

LABEL_7:
      ++v20;
      if (v23 == v19)
      {
        v31 = v59;
        v5 = v53;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v19 = sub_1A22E6DE8();
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v32 = v49;
  if ((v31 & 0x8000000000000000) == 0 && (v31 & 0x4000000000000000) == 0)
  {
    v33 = *(v31 + 16);
    if (v33)
    {
      goto LABEL_30;
    }

LABEL_50:

    return;
  }

LABEL_49:
  v33 = sub_1A22E6DE8();
  if (!v33)
  {
    goto LABEL_50;
  }

LABEL_30:
  v34 = 0;
  v56 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_dataSource;
  v57 = v31 & 0xC000000000000001;
  v55 = (v32 + 48);
  v50 = (v32 + 32);
  v51 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_collectionView;
  v49 = v32 + 8;
  v52 = v33;
  v53 = v31;
  while (1)
  {
    if (v57)
    {
      v35 = MEMORY[0x1A58DB0F0](v34, v31);
    }

    else
    {
      if (v34 >= *(v31 + 16))
      {
        goto LABEL_48;
      }

      v35 = *(v31 + 8 * v34 + 32);
    }

    v36 = v35;
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v38 = *(v5 + v56);
    if (!v38)
    {
      break;
    }

    v59 = v35;
    v39 = v38;
    sub_1A22E6368();

    if ((*v55)(v9, 1, v10) == 1)
    {

      sub_1A22B2C0C(v9);
    }

    else
    {
      v40 = v54;
      (*v50)(v54, v9, v10);
      v32 = *(v5 + v51);
      v41 = sub_1A22E5688();
      v42 = [v32 cellForItemAtIndexPath_];

      if (v42)
      {
        type metadata accessor for MediaSuggestionCollectionViewCell(0, v43);
        v44 = swift_dynamicCastClass();
        if (v44)
        {
          v32 = *((*MEMORY[0x1E69E7D40] & *v44) + 0xB8);
          v45 = v48;
          v46 = v48;
          v47 = v45;
          v10 = i;
          (v32)(v47);
        }

        else
        {
        }

        (*v49)(v54, v10);
      }

      else
      {
        (*v49)(v40, v10);
      }

      v33 = v52;
      v31 = v53;
    }

    ++v34;
    if (v37 == v33)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
}

BOOL sub_1A22B2988(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && a1[3] == a2[3] && a1[4] == a2[4])
  {
    v2 = a1[5] == a2[5] && a1[6] == a2[6];
    if (v2 && a1[7] == a2[7])
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1A22B2A30(uint64_t a1, uint64_t a2, id *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089A38, &qword_1A230F830);
  v4 = *a3;
  type metadata accessor for MediaSuggestionCollectionViewCell(0, v5);
  sub_1A2115288(0, &qword_1ED94EA78, 0x1E69B0A58);
  v6 = v4;
  v7 = sub_1A22E6AF8();

  return v7;
}

void sub_1A22B2B1C()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_style;
  *v1 = 1;
  *(v1 + 8) = vdupq_n_s64(1uLL);
  *(v1 + 24) = 0x4024000000000000;
  v2 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v1 + 32) = *MEMORY[0x1E69DC5C0];
  *(v1 + 48) = v2;
  *(v0 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_dataSource) = 0;
  v3 = OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_cache;
  *(v0 + v3) = *sub_1A222DD24();
  *(v0 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_visualStylingProvider) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_onScreen) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A22B2C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089A70, &qword_1A230F840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A22B2C78()
{
  result = qword_1EB089A78;
  if (!qword_1EB089A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089A78);
  }

  return result;
}

uint64_t sub_1A22B2CCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A22B2D10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for NSDirectionalEdgeInsets()
{
  if (!qword_1EB089A88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB089A88);
    }
  }
}

unint64_t sub_1A22B2DE8()
{
  result = qword_1ED94EA60[0];
  if (!qword_1ED94EA60[0])
  {
    sub_1A2115288(255, &qword_1ED94EA78, 0x1E69B0A58);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED94EA60);
  }

  return result;
}

double sub_1A22B2E60(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls10HapticView_presenter;
  swift_beginAccess();
  v6 = *&v1[v4];
  if (!v6)
  {
    if (!a1)
    {
      return result;
    }

LABEL_6:
    (*(*a1 + 136))(0, 0);
    v6 = *&v2[v4];
    if (!v6)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v6 == a1)
  {
    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = *(*v6 + 136);

  v8 = v2;
  v7(v2, &off_1F14429C8);

  return result;
}

double sub_1A22B2F54(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls10HapticView_presenter;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = a1;
  if (!a1)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    if (!v5)
    {

      v7 = a1;
      goto LABEL_10;
    }

LABEL_9:
    v8 = *(*v5 + 136);

    v8(0, 0);
    v7 = *&v1[v4];
    if (!v7)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_10:
    v9 = *(*v7 + 136);

    v10 = v2;
    v9(v2, &off_1F14429C8);

    goto LABEL_12;
  }

LABEL_13:

  return result;
}

void (*sub_1A22B3088(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls10HapticView_presenter;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1A22B3124;
}

void sub_1A22B3124(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_1A22B2E60(v6);
  }

  else
  {
    sub_1A22B2E60(v6);
  }

  free(v3);
}

id sub_1A22B31D0()
{
  v0 = [objc_allocWithZone(MRUHapticView) initWithContext:1 frame:{0.0, 0.0, 0.0, 0.0}];
  v1 = sub_1A2114DFC();

  return v1;
}

char *sub_1A22B322C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC13MediaControls10HapticView_presenter] = 0;
  v10 = OBJC_IVAR____TtC13MediaControls10HapticView_hapticView;
  v11 = [objc_allocWithZone(MRUHapticView) initWithContext:1 frame:{0.0, 0.0, 0.0, 0.0}];
  v12 = sub_1A2114DFC();

  *&v5[v10] = v12;
  *&v5[OBJC_IVAR____TtC13MediaControls10HapticView_visualStylingProvider] = 0;
  v21.receiver = v5;
  v21.super_class = type metadata accessor for HapticView(v13, v14);
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC13MediaControls10HapticView_hapticView;
  v17 = *&v15[OBJC_IVAR____TtC13MediaControls10HapticView_hapticView];
  v18 = v15;
  [v17 setDelegate_];
  [v18 addSubview_];
  v19 = sub_1A211A6BC();
  sub_1A211A6C4(v19 & 1, sub_1A22B33A8);

  return v18;
}

uint64_t sub_1A22B33A8()
{
  sub_1A211A728(v6);
  sub_1A211A728(v7);
  v0 = sub_1A2257B48(v6, v7);
  sub_1A211A9FC(v7);
  sub_1A211A9FC(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A2308E80;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840, &unk_1A2308EF0);
  *(v1 + 64) = &off_1F14441C0;
  *(v1 + 32) = v0;
  sub_1A211AB54(v1, v2);
  v4 = v3;

  return v4;
}

void sub_1A22B34A0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC13MediaControls10HapticView_presenter) = 0;
  v2 = OBJC_IVAR____TtC13MediaControls10HapticView_hapticView;
  v3 = [objc_allocWithZone(MRUHapticView) initWithContext:1 frame:{0.0, 0.0, 0.0, 0.0}];
  v4 = sub_1A2114DFC();

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC13MediaControls10HapticView_visualStylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A22B363C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls10HapticView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC13MediaControls10HapticView_hapticView);
  if (*(v1 + v3))
  {

    v5 = sub_1A22DFF4C();
  }

  else
  {
    v5 = 0;
  }

  [v4 setStylingProvider_];
}

uint64_t (*sub_1A22B36F8(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC13MediaControls10HapticView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22B3780;
}

void sub_1A22B3780(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC13MediaControls10HapticView_hapticView);
    if (*(v4 + v3[4]))
    {

      v6 = sub_1A22DFF4C();
    }

    else
    {
      v6 = 0;
    }

    [v5 setStylingProvider_];
  }

  free(v3);
}

id sub_1A22B3820(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HapticView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1A22B38B0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  if (v1)
  {
    (*(*v1 + 160))(v1);
  }

  return result;
}

id sub_1A22B3A00(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls10HapticView_hapticView);
  v3 = sub_1A22894AC(a1);

  return [v2 setHapticStatus_];
}

uint64_t sub_1A22B3A7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1A22E71E8();
  }
}

uint64_t sub_1A22B3B28(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1A22E71E8();
      }

      return 1;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v9 == 1)
    {
      return *&v4 == *&v7;
    }

    return 0;
  }

  if (v4 | v5)
  {
    if (v9 != 2 || v7 != 1 || v8 != 0)
    {
      return 0;
    }
  }

  else if (v9 != 2 || (v8 | v7) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1A22B3BD0()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_viewModel;
  swift_beginAccess();
  v2 = *v1;
  sub_1A22B3C40(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_1A22B3C40(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

double sub_1A22B3C54(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_viewModel;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  return sub_1A227040C(v8, v9, v10);
}

id sub_1A22B3CC0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v1 = sub_1A2114DFC();

  return v1;
}

id sub_1A22B3D08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PackageView(0, a2);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_1A2114DFC();

  return v3;
}

id sub_1A22B3D54()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v1 = sub_1A2114DFC();

  return v1;
}

char *sub_1A22B3DA0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_viewModel];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 2;
  v11 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v13 = sub_1A2114DFC();

  *&v5[v11] = v13;
  v14 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView;
  type metadata accessor for PackageView(0, v15);
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = sub_1A2114DFC();

  *&v5[v14] = v17;
  v18 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_activityIndicator;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v20 = sub_1A2114DFC();

  *&v5[v18] = v20;
  v37.receiver = v5;
  v37.super_class = type metadata accessor for RoutePickerItemAccessoryView(v21, v22);
  v23 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView;
  v25 = *&v23[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView];
  v26 = v23;
  [v25 setContentMode_];
  v27 = *&v23[v24];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 configurationWithPointSize:5 weight:17.0];
  [v29 setSymbolConfiguration_];

  [v26 addSubview_];
  v31 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView;
  v32 = *&v26[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView];
  v33 = *((*MEMORY[0x1E69E7D40] & *v32) + 0xB0);
  v34 = v32;
  v33(0.85);

  [v26 addSubview_];
  [v26 addSubview_];
  v35 = sub_1A211A6BC();
  sub_1A211A6C4(v35 & 1, sub_1A22B40BC);

  sub_1A2115288(0, &qword_1ED94EA40, 0x1E69DD1B8);
  sub_1A22E6B58();
  sub_1A22E6C48();
  swift_unknownObjectRelease();

  sub_1A22B4580(0, 0, 255, 0);

  return v26;
}

uint64_t sub_1A22B40BC()
{
  v1 = *(v0 + 16);
  sub_1A211A728(v11);
  v2 = sub_1A211A7DC(v11, v1);
  sub_1A211A9FC(v11);
  sub_1A211A728(v12);
  v3 = sub_1A211A7DC(v12, v1);
  sub_1A211A9FC(v12);
  sub_1A211A728(v13);
  v4 = sub_1A211A7DC(v13, v1);
  sub_1A211A9FC(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A230F9C0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840, &unk_1A2308EF0);
  *(v5 + 56) = v6;
  *(v5 + 64) = &off_1F14441C0;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = &off_1F14441C0;
  *(v5 + 72) = v3;
  *(v5 + 136) = v6;
  *(v5 + 144) = &off_1F14441C0;
  *(v5 + 112) = v4;
  sub_1A211AB54(v5, v7);
  v9 = v8;

  return v9;
}

id sub_1A22B4294(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for RoutePickerItemAccessoryView(a1, a2);
  v3 = objc_msgSendSuper2(&v5, sel_tintColor);

  return v3;
}

void sub_1A22B4338(void *a1, uint64_t a2)
{
  sub_1A22B4E48(a1, a2);
}

double sub_1A22B4370(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v10 = v9();
  if (!a3)
  {
    if (!v12)
    {
      if (v10 == a1 && v11 == a2)
      {

        v13.n128_f64[0] = sub_1A227040C(a1, a2, 0);
        return v13.n128_f64[0];
      }

      v15 = v10;
      v16 = v11;
      v17 = sub_1A22E71E8();
      v13.n128_f64[0] = sub_1A227040C(v15, v16, 0);
      if (v17)
      {
        return v13.n128_f64[0];
      }

LABEL_28:
      v21 = (v9)(v13);
      v23 = v22;
      v25 = v24;
      v32 = a4;
      v26 = v4 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_viewModel;
      swift_beginAccess();
      v27 = a1;
      v29 = *v26;
      v28 = *(v26 + 1);
      *v26 = v27;
      *(v26 + 1) = a2;
      v30 = v26[16];
      v26[16] = a3;
      sub_1A22B3C40(v27, a2, a3);
      sub_1A227040C(v29, v28, v30);
      sub_1A22B4580(v21, v23, v25, v32 & 1);
      v13.n128_f64[0] = sub_1A227040C(v21, v23, v25);
      return v13.n128_f64[0];
    }

    goto LABEL_27;
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      if (v12 == 2 && v10 == 1 && v11 == 0)
      {
        return v13.n128_f64[0];
      }
    }

    else if (v12 == 2 && (v10 | v11) == 0)
    {
      return v13.n128_f64[0];
    }

    goto LABEL_27;
  }

  if (v12 != 1)
  {
LABEL_27:
    v13.n128_f64[0] = sub_1A227040C(v10, v11, v12);
    goto LABEL_28;
  }

  v13.n128_u32[0] = a1;
  if (*&a1 != *&v10)
  {
    goto LABEL_28;
  }

  return v13.n128_f64[0];
}

void sub_1A22B4580(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = v4;
  v34 = a4;
  v37 = a3;
  *&v33 = a2;
  *(&v33 + 1) = a1;
  v6 = sub_1A22E6458();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A22E6438();
  v31 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v35 = (*MEMORY[0x1E69E7D40] & *v4) + 112;
  v36 = v14;
  v15 = (v14)(v10);
  v18 = v15;
  if (v17 == 1)
  {
    sub_1A2125AB8(&v46, *&v15);
    v24 = [v4 traitCollection];
    v25 = [v24 layoutDirection];

    LOBYTE(v25) = v25 == 1;
    v26 = *(v5 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView);
    *(v39 + 9) = *&v47[9];
    v38 = v46;
    v39[0] = *v47;
    BYTE9(v39[1]) = v25;
    *(&v39[1] + 10) = v48;
    *(&v39[2] + 10) = v49;
    *(&v39[3] + 10) = *v50;
    *(&v39[4] + 1) = *&v50[14];
    v51[2] = v39[1];
    v51[3] = v39[2];
    v51[4] = v39[3];
    v51[5] = v39[4];
    v51[0] = v46;
    v51[1] = *v47;
    v27 = *((*v13 & *v26) + 0x98);
    sub_1A2116FC8(&v38, &v40);
    v27(v51);
    v40 = v46;
    *v41 = *v47;
    *&v41[9] = *&v47[9];
    v42 = v25;
    v43 = v48;
    v44 = v49;
    *v45 = *v50;
    *&v45[14] = *&v50[14];
    v22 = sub_1A21252B8(&v40);
  }

  else
  {
    v19 = v16;
    if (!v17)
    {
      v20 = sub_1A22DC57C(v15, v16);
      if (v20 && (v34 & 1) != 0)
      {
        sub_1A22E6428();
        sub_1A22E6448();
        sub_1A22B5058();
        sub_1A22E6A08();

        v21 = sub_1A227040C(v18, v19, 0);
        (*(v32 + 8))(v8, v6, v21);
        v22 = (*(v31 + 8))(v12, v9);
        goto LABEL_10;
      }

      [*(v4 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView) setImage_];

      v15 = v18;
      v16 = v19;
      v17 = 0;
    }

    v23.n128_f64[0] = sub_1A227040C(v15, v16, v17);
  }

LABEL_10:
  v28 = v36(v22, v23);
  if (v30)
  {
    if (v30 == 1)
    {
      if (v37 == 1)
      {
        return;
      }

LABEL_22:
      sub_1A211A04C(v34 & 1);
      return;
    }

    if (v28 | v29)
    {
      if (v37 != 2 || v33 != __PAIR128__(1, 0))
      {
        goto LABEL_22;
      }
    }

    else if (v37 != 2 || v33 != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1A227040C(v28, v29, 0);
    if (v37)
    {
      goto LABEL_22;
    }
  }
}

void sub_1A22B49C8(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x70))();
  if (v11 == 1)
  {
    v16 = *(a1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView);
    v21 = v4;
    v22 = v3;
    v23 = v6;
    v24 = v5;
    v25 = v8;
    v26 = v7;
    [v16 setTransform_];
    v17 = *(a1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView);
    v21 = 0x3FF0000000000000;
    v22 = 0;
    v23 = 0;
    v24 = 0x3FF0000000000000;
    v25 = 0;
    v26 = 0;
    [v17 setTransform_];
  }

  else if (v11)
  {
    v18 = sub_1A227040C(v9, v10, v11);
    v19 = *(a1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView);
    v21 = v4;
    v22 = v3;
    v23 = v6;
    v24 = v5;
    v25 = v8;
    v26 = v7;
    [v19 setTransform_];
    v20 = *(a1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView);
    v21 = v4;
    v22 = v3;
    v23 = v6;
    v24 = v5;
    v25 = v8;
    v26 = v7;
    [v20 setTransform_];
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView);
    v21 = 0x3FF0000000000000;
    v22 = 0;
    v23 = 0;
    v24 = 0x3FF0000000000000;
    v25 = 0;
    v26 = 0;
    v13 = v9;
    v14 = v10;
    [v12 setTransform_];
    v15 = *(a1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView);
    v21 = v4;
    v22 = v3;
    v23 = v6;
    v24 = v5;
    v25 = v8;
    v26 = v7;
    [v15 setTransform_];
    sub_1A227040C(v13, v14, 0);
  }
}

id sub_1A22B4B70(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoutePickerItemAccessoryView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A22B4C18(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView];
  v3 = [a1 tintColor];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))(v3);
  v4 = *&a1[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView];
  v5 = [a1 tintColor];
  [v4 setTintColor_];

  v6 = *&a1[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_activityIndicator];
  v7 = [a1 tintColor];
  [v6 setColor_];
}

void sub_1A22B4D24()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_viewModel;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
  v3 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = sub_1A2114DFC();

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView;
  type metadata accessor for PackageView(0, v7);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = sub_1A2114DFC();

  *(v1 + v6) = v9;
  v10 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_activityIndicator;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v12 = sub_1A2114DFC();

  *(v1 + v10) = v12;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A22B4E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for RoutePickerItemAccessoryView(a1, a2);
  objc_msgSendSuper2(&v11, sel_setTintColor_, a1);
  v5 = *&v3[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_packageView];
  v6 = [v3 tintColor];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xC8))(v6);
  v7 = *&v3[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_symbolImageView];
  v8 = [v3 tintColor];
  [v7 setTintColor_];

  v9 = *&v3[OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_activityIndicator];
  v10 = [v3 tintColor];
  [v9 setColor_];
}

uint64_t get_enum_tag_for_layout_string_13MediaControls28RoutePickerItemAccessoryViewC0G5ModelO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1A22B4F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A22B4FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A22B5024(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1A22B5058()
{
  result = qword_1ED94EB30;
  if (!qword_1ED94EB30)
  {
    sub_1A22E6438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EB30);
  }

  return result;
}

id sub_1A22B50B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArtworkView(0, a2);
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

double sub_1A22B50FC()
{
  swift_beginAccess();

  return result;
}

void sub_1A22B5144(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls14ArtworkControl_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v5 = *(v1 + OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))(v4);
  v7 = v6;
  if (v6)
  {
    (*(*v6 + 104))(v8);

    v7 = sub_1A22DF514(0);
  }

  [v5 setTintColor_];
}

void (*sub_1A22B5278(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  swift_beginAccess();
  return sub_1A22B5304;
}

void sub_1A22B5304(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(v3 + 64);
    v6 = *(v5 + OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView);
    v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x60))(v4);
    v8 = v7;
    if (v7)
    {
      (*(*v7 + 104))(v7);

      v8 = sub_1A22DF514(0);
    }

    [v6 setTintColor_];
  }

  free(v3);
}

id sub_1A22B545C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ArtworkControl(a1, a2);
  return objc_msgSendSuper2(&v4, sel_isHighlighted);
}

id sub_1A22B5514(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for ArtworkControl(a1, a2);
  v8.receiver = v2;
  v8.super_class = v4;
  v5 = objc_msgSendSuper2(&v8, sel_isHighlighted);
  v7.receiver = v2;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, sel_setHighlighted_, v3 & 1);
  return sub_1A22B5584(v5);
}

id sub_1A22B5584(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v2)
  {
    v4 = [v1 isHighlighted];
    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    if (v4)
    {
      sub_1A2126CF0(v9);
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v6 = v1;
      v7 = sub_1A22B622C;
    }

    else
    {
      sub_1A229BE74(v9);
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v8 = v1;
      v7 = sub_1A22B620C;
    }

    sub_1A21179EC(v9, v7, v5, 0, 0);

    return sub_1A2116928(v9);
  }

  return result;
}

char *sub_1A22B56A4(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView;
  type metadata accessor for ArtworkView(0, a6);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v6[v11] = v12;
  *&v6[OBJC_IVAR____TtC13MediaControls14ArtworkControl_visualStylingProvider] = 0;
  v23.receiver = v6;
  v23.super_class = type metadata accessor for ArtworkControl(v12, v13);
  v14 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView;
  v16 = *&v14[OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView];
  v17 = v14;
  [v16 setUserInteractionEnabled_];
  [v17 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20, &qword_1A230A680);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A2308E80;
  v19 = sub_1A22E6298();
  v20 = MEMORY[0x1E69DC0F8];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  MEMORY[0x1A58DAE60](v18, sel_updateVisualStyling);
  swift_unknownObjectRelease();

  v21 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

  [v17 addInteraction_];
  return v17;
}

void sub_1A22B5854(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView;
  type metadata accessor for ArtworkView(0, a2);
  *(v2 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v2 + OBJC_IVAR____TtC13MediaControls14ArtworkControl_visualStylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

id sub_1A22B5980(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ArtworkControl(a1, a2);
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v2 bounds];
  return [*&v2[OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView] setFrame_];
}

void sub_1A22B5A54()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (v2)
  {
    (*(*v2 + 104))(v5);

    v3 = sub_1A22DF514(0);
  }

  else
  {
    v3 = 0;
  }

  [v1 setTintColor_];
}

id sub_1A22B5BC4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ArtworkControl(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A22B5C44()
{
  v1 = v0;
  sub_1A2115288(0, &qword_1EB088D28, 0x1E69DCDC0);
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView];
  v3 = [v1 bounds];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))(v3);
  return sub_1A22E6AB8();
}

uint64_t sub_1A22B5E3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D38, &unk_1A2310DA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - v3;
  v4 = sub_1A22E6268();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A22E6278();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v31 - v13);
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  *v14 = v15;
  (*(v9 + 104))(v14, *MEMORY[0x1E69DBF70], v8);
  v16 = *&v0[OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView];
  v17 = v15;
  v18 = [v1 bounds];
  v19 = MEMORY[0x1E69E7D40];
  v20 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0xD0))(v18);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = (*((*v19 & *v16) + 0xD8))();
  *v7 = [objc_opt_self() bezierPathWithRoundedRect:v20 cornerRadius:{v22, v24, v26, v27}];
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBED8], v4);
  sub_1A2115288(0, &unk_1EB088D40, 0x1E69DCDD0);
  (*(v9 + 16))(v12, v14, v8);
  v28 = v32;
  (*(v5 + 16))(v32, v7, v4);
  (*(v5 + 56))(v28, 0, 1, v4);
  v29 = sub_1A22E6AA8();

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v14, v8);
  return v29;
}

id sub_1A22B62E4()
{
  v1 = *(v0 + OBJC_IVAR___MRUCrossfadeImageView_primaryImageView);
  if ([v1 isHidden])
  {
    v1 = *(v0 + OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView);
  }

  v2 = [v1 image];

  return v2;
}

id sub_1A22B6390(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CrossfadeImageView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_contentMode);
}

id sub_1A22B649C(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for CrossfadeImageView(a1, a2);
  objc_msgSendSuper2(&v5, sel_setContentMode_, a1);
  [*&v2[OBJC_IVAR___MRUCrossfadeImageView_primaryImageView] setContentMode_];
  return [*&v2[OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView] setContentMode_];
}

char *sub_1A22B653C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___MRUCrossfadeImageView_primaryImageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v10 = OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v4[v10] = v11;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CrossfadeImageView(v11, v12);
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR___MRUCrossfadeImageView_primaryImageView];
  v15 = v13;
  [v15 addSubview_];
  v16 = OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView;
  [v15 addSubview_];
  [*&v15[v16] setHidden_];

  return v15;
}

void sub_1A22B666C()
{
  v1 = OBJC_IVAR___MRUCrossfadeImageView_primaryImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v2 = OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  sub_1A22E7028();
  __break(1u);
}

id sub_1A22B67B8(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CrossfadeImageView(a1, a2);
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v3 = *&v2[OBJC_IVAR___MRUCrossfadeImageView_primaryImageView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView];
  [v2 bounds];
  return [v4 setFrame_];
}

void sub_1A22B68F4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___MRUCrossfadeImageView_primaryImageView);
  v5 = [v4 isHidden];
  v6 = v4;
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView);
  }

  v7 = [v6 image];
  v9 = v7;
  if (a1)
  {
    if (v7)
    {
      sub_1A22531C4(0, v8);
      v10 = a1;
      v11 = sub_1A22E6C88();

      if (v11)
      {
        return;
      }
    }
  }

  else
  {
    if (!v7)
    {
      return;
    }
  }

  v12 = [v4 isHidden];
  v13 = v4;
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView);
  }

  v14 = v13;
  if (([v4 isHidden] & 1) == 0)
  {
    v4 = *(v2 + OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView);
  }

  v15 = v4;
  [v15 setImage_];
  [v14 setHidden_];
  [v15 setHidden_];
  [objc_opt_self() transitionFromView:v14 toView:v15 duration:5373952 options:0 completion:0.25];
}

id CrossfadeImageView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CrossfadeImageView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1A22B6C0C()
{
  if (qword_1ED951528 != -1)
  {
    swift_once();
  }

  v0 = *(*qword_1ED951530 + 160);

  v0(&v3, v1);

  return v3;
}

uint64_t sub_1A22B6CAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8, &unk_1A230EC70);
  v4 = 0x3FF0000000000000;
  v1 = sub_1A2249D0C(MEMORY[0x1E69E63B0], v0);
  v2 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD00000000000001ELL, 0x80000001A2306BB0, &v4, v1, v2 & 1);
  qword_1ED951530 = result;
  return result;
}

void *sub_1A22B6D44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionArtworksDataSource(a1, a2);
  v2 = swift_allocObject();
  result = sub_1A22BC654();
  qword_1ED953138 = v2;
  return result;
}

uint64_t sub_1A22B6D80()
{
  v0 = swift_allocObject();
  sub_1A22BC654();
  return v0;
}

uint64_t *sub_1A22B6DB8()
{
  if (qword_1ED951520 != -1)
  {
    swift_once();
  }

  return &qword_1ED953138;
}

double sub_1A22B6E08()
{
  if (qword_1ED951520 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1A22B6E94()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1A22E6DE8())
  {
    v1 = MEMORY[0x1E69E7CC0];

    sub_1A22C0614(v1);
  }
}

void sub_1A22B6F34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A22987F8();
  (*(v7 + 16))(v9, v10, v6);
  swift_unknownObjectRetain();
  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = a2;
    v14 = v13;
    v29 = swift_slowAlloc();
    v32[0] = v29;
    *v14 = 136315394;
    v15 = sub_1A22E7388();
    v17 = sub_1A2103450(v15, v16, v32);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    swift_getObjectType();
    v31 = a1;
    v18 = sub_1A22E71D8();
    v20 = sub_1A2103450(v18, v19, v32);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] registerPresentation: %s", v14, 0x16u);
    v21 = v29;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v21, -1, -1);
    v22 = v14;
    a2 = v30;
    MEMORY[0x1A58DCD00](v22, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  ObjectType = swift_getObjectType();
  v24 = (*(a2 + 16))(ObjectType, a2);
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BC0, &qword_1A230FB70);
  v32[0] = a1;
  v32[1] = a2;
  swift_unknownObjectRetain();
  v27 = sub_1A2114324(v32);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1A22BD93C(v27, v24, v26, isUniquelyReferenced_nonNull_native, &qword_1EB089C00, &qword_1A230FC40);

  *(v3 + 16) = v31;
  swift_endAccess();
  sub_1A22B7DBC(a1, a2);
}

void sub_1A22B7270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1A22BD93C(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v5 = v18;
  }

  else
  {
    v13 = sub_1A210FF30(a2, a3);
    v15 = v14;

    if (v15)
    {
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v8;
      v19 = *v8;
      if (!v16)
      {
        sub_1A22BDDB4(a4, a5);
        v17 = v19;
      }

      sub_1A2239630(v13, v17);
      *v8 = v17;
    }
  }
}

void sub_1A22B7388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = *v2;
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v59 - v11;
  ObjectType = swift_getObjectType();
  v14 = *(a2 + 16);
  v63 = ObjectType;
  v15 = v14(ObjectType, a2);
  v17 = v16;
  swift_beginAccess();
  v18 = v2[2];
  if (!*(v18 + 16))
  {

LABEL_10:
    v29 = sub_1A22987F8();
    (*(v7 + 16))(v10, v29, v6);
    swift_unknownObjectRetain();
    v30 = sub_1A22E6238();
    v31 = sub_1A22E6A68();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64 = a1;
      v65[0] = v33;
      v34 = v7;
      v35 = v33;
      *v32 = 136315394;
      v36 = sub_1A22E7388();
      v38 = sub_1A2103450(v36, v37, v65);
      v62 = v6;
      v39 = a2;
      v40 = v38;

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      v66 = v64;
      v41 = sub_1A22E71D8();
      v43 = sub_1A2103450(v41, v42, v65);

      *(v32 + 14) = v43;
      a2 = v39;
      _os_log_impl(&dword_1A20FC000, v30, v31, "[%s] updatePresentation - non existing presentation. Will register: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v35, -1, -1);
      MEMORY[0x1A58DCD00](v32, -1, -1);

      (*(v34 + 8))(v10, v62);
      a1 = v64;
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    (*(*v3 + 240))(a1, a2);
    return;
  }

  v19 = sub_1A210FF30(v15, v17);
  if ((v20 & 1) == 0)
  {

    goto LABEL_10;
  }

  v64 = a1;
  v21 = v7;
  v22 = *(*(v18 + 56) + 8 * v19);

  (*(*v22 + 120))(v65, v23);

  v24 = v65[0];
  if (!v65[0])
  {

    v7 = v21;
    a1 = v64;
    goto LABEL_10;
  }

  v25 = v65[1];
  v26 = swift_getObjectType();
  v27 = *(v25 + 16);
  v61 = v24;
  if (v27(v26, v25) == v15 && v28 == v17)
  {
  }

  else
  {
    v44 = sub_1A22E71E8();

    if ((v44 & 1) == 0)
    {
      __break(1u);
      return;
    }
  }

  v45 = sub_1A22987F8();
  v46 = v21;
  (*(v21 + 16))(v12, v45, v6);
  v47 = v64;
  swift_unknownObjectRetain();
  v48 = sub_1A22E6238();
  v49 = sub_1A22E6A98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v65[0] = v60;
    *v50 = 136315394;
    v51 = sub_1A22E7388();
    v53 = v46;
    v54 = sub_1A2103450(v51, v52, v65);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    v66 = v64;
    v55 = sub_1A22E71D8();
    v57 = sub_1A2103450(v55, v56, v65);

    *(v50 + 14) = v57;
    _os_log_impl(&dword_1A20FC000, v48, v49, "[%s] updatePresentation: %s", v50, 0x16u);
    v58 = v60;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v58, -1, -1);
    MEMORY[0x1A58DCD00](v50, -1, -1);

    (*(v53 + 8))(v12, v6);
    v47 = v64;
  }

  else
  {

    (*(v46 + 8))(v12, v6);
  }

  sub_1A22BBA0C();
  sub_1A22BAE34(v47, a2);
  sub_1A22B7DBC(v47, a2);
  swift_unknownObjectRelease();
}

void sub_1A22B798C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {

    sub_1A210FF30(a1, a2);
    v10 = v9;

    if (v10)
    {
      v11 = sub_1A22987F8();
      (*(v6 + 16))(v8, v11, v5);

      v12 = sub_1A22E6238();
      v13 = sub_1A22E6A98();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        HIDWORD(v20) = v13;
        v15 = v14;
        v21 = swift_slowAlloc();
        v22[0] = v21;
        *v15 = 136315394;
        v16 = sub_1A22E7388();
        v18 = sub_1A2103450(v16, v17, v22);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_1A2103450(a1, a2, v22);
        _os_log_impl(&dword_1A20FC000, v12, BYTE4(v20), "[%s] removePresentation for %s", v15, 0x16u);
        v19 = v21;
        swift_arrayDestroy();
        MEMORY[0x1A58DCD00](v19, -1, -1);
        MEMORY[0x1A58DCD00](v15, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      swift_beginAccess();

      sub_1A22B7270(0, a1, a2, &qword_1EB089C00, &qword_1A230FC40);
      swift_endAccess();
    }
  }
}

void *sub_1A22B7C54(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1A22E6FF8();

    if (v3)
    {
      sub_1A2115288(0, &qword_1ED94E960, 0x1E69DCAB8);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1A22BC9C4(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

double sub_1A22B7D1C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 16))(ObjectType, a2);
  (*(*v2 + 256))(v5);

  return result;
}

void sub_1A22B7DBC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v153 = v2;
  v154 = v4;
  v5 = sub_1A22E6248();
  v157 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v155 = &v145[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v152 = &v145[-v9];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v150 = &v145[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v149 = &v145[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v147 = &v145[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v148 = &v145[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v145[-v18];
  v19 = type metadata accessor for SessionArtworkPresentationModel(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v145[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v156 = (*(a2 + 16))(ObjectType, a2);
  v24 = v23;
  v25 = *(a2 + 24);
  v25(ObjectType, a2);
  v26 = v21[*(v19 + 24)];
  sub_1A2129CA8(v21);
  if (v26 != 1)
  {
    v37 = sub_1A22987F8();
    v38 = v157;
    v39 = v155;
    (*(v157 + 16))(v155, v37, v5);

    v40 = sub_1A22E6238();
    v41 = sub_1A22E6A98();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v162[0] = v43;
      *v42 = 136315394;
      v44 = sub_1A22E7388();
      v46 = sub_1A2103450(v44, v45, v162);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v47 = sub_1A2103450(v156, v24, v162);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_1A20FC000, v40, v41, "[%s] loadImage for %s - not on screen, skipping.", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v43, -1, -1);
      MEMORY[0x1A58DCD00](v42, -1, -1);
    }

    else
    {
    }

    (*(v38 + 8))(v39, v5);
    return;
  }

  v155 = v24;
  v27 = v157;
  v25(ObjectType, a2);
  v28 = *&v21[*(v19 + 20)];
  sub_1A2129CA8(v21);
  if (v28 < 1)
  {
    v48 = sub_1A22987F8();
    v49 = v27;
    v50 = *(v27 + 16);
    v51 = v152;
    v52 = v5;
    v50(v152, v48, v5);
    v53 = v155;

    v54 = sub_1A22E6238();
    v55 = sub_1A22E6A98();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v162[0] = v57;
      *v56 = 136315394;
      v58 = sub_1A22E7388();
      v60 = sub_1A2103450(v58, v59, v162);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = sub_1A2103450(v156, v53, v162);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_1A20FC000, v54, v55, "[%s] loadImage for %s - pixelSize is 0, skipping.", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v57, -1, -1);
      MEMORY[0x1A58DCD00](v56, -1, -1);
    }

    else
    {
    }

    (*(v49 + 8))(v51, v52);
    return;
  }

  v29 = v153;
  swift_beginAccess();
  v30 = v29[5];
  v31 = v27;
  if (!*(v30 + 16))
  {
    goto LABEL_16;
  }

  v32 = sub_1A210FF30(v156, v155);
  if ((v33 & 1) == 0)
  {

LABEL_16:
    v35 = sub_1A22AD680(ObjectType, a2);
LABEL_17:
    if (!v35)
    {
LABEL_23:
      v81 = sub_1A22987F8();
      v82 = v150;
      v83 = v5;
      (*(v27 + 16))(v150, v81, v5);
      v84 = v155;

      v85 = sub_1A22E6238();
      v86 = sub_1A22E6A98();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v161[0] = v88;
        *v87 = 136315394;
        v89 = sub_1A22E7388();
        v91 = sub_1A2103450(v89, v90, v161);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2080;
        v92 = sub_1A2103450(v156, v84, v161);

        *(v87 + 14) = v92;
        _os_log_impl(&dword_1A20FC000, v85, v86, "[%s] loadImage for %s - image is up to date, skipping.", v87, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1A58DCD00](v88, -1, -1);
        MEMORY[0x1A58DCD00](v87, -1, -1);
      }

      else
      {
      }

      (*(v31 + 8))(v82, v83);
      return;
    }

    goto LABEL_18;
  }

  v34 = *(*(v30 + 56) + 8 * v32);

  v35 = sub_1A22AD680(ObjectType, a2);
  if (!v34)
  {
    goto LABEL_17;
  }

  v161[0] = v34;
  if (v35)
  {
    v160[0] = v35;
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
    v36 = sub_1A22E6568();

    if (v36)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_18:

LABEL_19:
  v62 = sub_1A22AD680(ObjectType, a2);
  if (v62)
  {
    v63 = v62;
    swift_beginAccess();
    v64 = v29[4];

    v66 = sub_1A22B7C54(v65, v64);

    if (v66)
    {
      v152 = v63;
      v67 = sub_1A22987F8();
      v68 = *(v27 + 16);
      v69 = v151;
      v70 = v5;
      v68(v151, v67, v5);
      v71 = v155;

      v72 = sub_1A22E6238();
      v73 = sub_1A22E6A98();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v160[0] = v75;
        *v74 = 136315394;
        v76 = sub_1A22E7388();
        v78 = sub_1A2103450(v76, v77, v160);

        *(v74 + 4) = v78;
        *(v74 + 12) = 2080;
        v79 = v156;
        *(v74 + 14) = sub_1A2103450(v156, v71, v160);
        _os_log_impl(&dword_1A20FC000, v72, v73, "[%s] loadImage for %s - image for token exists, returning cached image.", v74, 0x16u);
        swift_arrayDestroy();
        v80 = v75;
        v29 = v153;
        MEMORY[0x1A58DCD00](v80, -1, -1);
        MEMORY[0x1A58DCD00](v74, -1, -1);

        (*(v31 + 8))(v151, v70);
      }

      else
      {

        (*(v31 + 8))(v69, v5);
        v79 = v156;
      }

      swift_beginAccess();
      v113 = v152;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159 = v29[5];
      v29[5] = 0x8000000000000000;
      sub_1A22BD93C(v113, v79, v71, isUniquelyReferenced_nonNull_native, &qword_1EB089BD8, &qword_1A230FBE8);

      v29[5] = v159;
      swift_endAccess();
      v115 = v66;
      sub_1A22BA9B4(v66, v79, v71);
    }

    else
    {
      swift_beginAccess();
      v95 = v29[3];

      v96 = sub_1A22B9FCC(v63, v95);

      v97 = v5;
      if (v96)
      {

        v98 = sub_1A22987F8();
        v99 = v147;
        v150 = *(v27 + 16);
        v151 = v98;
        v150(v147);

        v100 = v155;

        v101 = sub_1A22E6238();
        v102 = sub_1A22E6A98();

        v103 = os_log_type_enabled(v101, v102);
        v152 = v63;
        if (v103)
        {
          v104 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v159 = v148;
          *v104 = 136315650;
          v105 = sub_1A22E7388();
          v146 = v102;
          v107 = sub_1A2103450(v105, v106, &v159);

          *(v104 + 4) = v107;
          *(v104 + 12) = 2080;
          *(v104 + 14) = sub_1A2103450(v156, v100, &v159);
          *(v104 + 22) = 2080;
          v158 = v63;
          sub_1A22E5948();
          sub_1A22C0CCC(&qword_1ED950758, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5B0]);
          v108 = sub_1A22E71D8();
          v110 = sub_1A2103450(v108, v109, &v159);

          *(v104 + 24) = v110;
          _os_log_impl(&dword_1A20FC000, v101, v146, "[%s] loadImage for %s - already loading image for %s, skipping.", v104, 0x20u);
          v111 = v148;
          swift_arrayDestroy();
          v97 = v5;
          MEMORY[0x1A58DCD00](v111, -1, -1);
          MEMORY[0x1A58DCD00](v104, -1, -1);
        }

        v112 = *(v157 + 8);
        v112(v99, v5);
        v131 = v149;
        (v150)(v149, v151, v97);

        v132 = sub_1A22E6238();
        v133 = sub_1A22E6A68();

        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v159 = v135;
          *v134 = 136315650;
          v136 = sub_1A22E7388();
          v154 = v112;
          v138 = sub_1A2103450(v136, v137, &v159);

          *(v134 + 4) = v138;
          *(v134 + 12) = 2080;
          v139 = sub_1A2103450(v156, v100, &v159);

          *(v134 + 14) = v139;
          *(v134 + 22) = 2080;
          sub_1A22E5948();
          sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
          v140 = v97;

          v141 = sub_1A22E6938();
          v143 = v142;

          v144 = sub_1A2103450(v141, v143, &v159);

          *(v134 + 24) = v144;
          _os_log_impl(&dword_1A20FC000, v132, v133, "[%s] loadImage for %s - loadingTokens: %s", v134, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1A58DCD00](v135, -1, -1);
          MEMORY[0x1A58DCD00](v134, -1, -1);

          v154(v149, v140);
        }

        else
        {

          v112(v131, v97);
        }
      }

      else
      {
        v116 = sub_1A22987F8();
        v117 = v148;
        (*(v27 + 16))(v148, v116, v5);

        v118 = v155;

        v119 = sub_1A22E6238();
        v120 = sub_1A22E6A98();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v159 = v122;
          *v121 = 136315650;
          v123 = sub_1A22E7388();
          v125 = v63;
          v126 = sub_1A2103450(v123, v124, &v159);

          *(v121 + 4) = v126;
          *(v121 + 12) = 2080;
          v127 = sub_1A2103450(v156, v118, &v159);

          *(v121 + 14) = v127;
          *(v121 + 22) = 2080;
          v158 = v125;
          sub_1A22E5948();
          sub_1A22C0CCC(&qword_1ED950758, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5B0]);
          v128 = sub_1A22E71D8();
          v130 = sub_1A2103450(v128, v129, &v159);

          *(v121 + 24) = v130;
          v63 = v125;
          _os_log_impl(&dword_1A20FC000, v119, v120, "[%s] loadImage for %s - will load image for %s", v121, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1A58DCD00](v122, -1, -1);
          MEMORY[0x1A58DCD00](v121, -1, -1);

          (*(v31 + 8))(v148, v97);
        }

        else
        {

          (*(v27 + 8))(v117, v97);
        }

        sub_1A22B8F74(v63);
      }
    }
  }

  else
  {
    swift_beginAccess();
    v93 = v155;

    v94 = v156;
    sub_1A22B7270(0, v156, v93, &qword_1EB089BD8, &qword_1A230FBE8);
    swift_endAccess();
    sub_1A22BA9B4(0, v94, v93);
  }
}

double sub_1A22B8F74(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A22987F8();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_1A22E6238();
  v11 = sub_1A22E6A98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27[0] = v25;
    *v12 = 136315394;
    v13 = sub_1A22E7388();
    v15 = sub_1A2103450(v13, v14, v27);
    v26 = v4;
    v16 = v15;

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v28 = a1;
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950758, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5B0]);
    v17 = sub_1A22E71D8();
    v19 = sub_1A2103450(v17, v18, v27);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1A20FC000, v10, v11, "[%s] loadImage for %s", v12, 0x16u);
    v20 = v25;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v20, -1, -1);
    MEMORY[0x1A58DCD00](v12, -1, -1);

    v21 = v5;
    v22 = v26;
    (*(v6 + 8))(v8, v21);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    v22 = v4;
  }

  swift_beginAccess();

  sub_1A22BE1E4(&v28, a1);
  swift_endAccess();

  v23 = swift_allocObject();
  v23[2] = v2;
  v23[3] = a1;
  v23[4] = v22;

  sub_1A22E5918();

  return result;
}

double sub_1A22B92C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a2;
  v11 = sub_1A22E6468();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A22E6488();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2115288(0, &qword_1ED94EA48, 0x1E69E9610);
  v25 = sub_1A22E6B28();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a3;
  v17[5] = a1;
  v18 = v24;
  v17[6] = v24;
  v17[7] = a6;
  aBlock[4] = sub_1A22C0BF8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A226B024;
  aBlock[3] = &block_descriptor_20;
  v19 = _Block_copy(aBlock);

  v20 = a3;
  sub_1A22C0BC4(a1, v18);
  sub_1A22E6478();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A22C0CCC(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  v21 = v25;
  MEMORY[0x1A58DAD70](0, v16, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v11);
  (*(v14 + 8))(v16, v26);

  return result;
}

void sub_1A22B95C8(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5, uint64_t a6)
{
  v38 = a6;
  v10 = sub_1A22E6248();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1A22BEFE4(a2);
  swift_endAccess();

  if (a3)
  {
    v37 = a4;
    v14 = a3;
    v15 = sub_1A22987F8();
    (*(v11 + 16))(v13, v15, v10);
    v16 = a3;

    v17 = sub_1A22E6238();
    v18 = sub_1A22E6A78();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = a5;
      v20 = v19;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40[0] = v35;
      *v20 = 136315650;
      v21 = sub_1A22E7388();
      v23 = sub_1A2103450(v21, v22, v40);
      LODWORD(v38) = v18;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v39 = a2;
      sub_1A22E5948();
      sub_1A22C0CCC(&qword_1ED950758, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5B0]);
      v25 = sub_1A22E71D8();
      v27 = sub_1A2103450(v25, v26, v40);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2112;
      v28 = a3;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v29;
      v30 = v34;
      *v34 = v29;
      _os_log_impl(&dword_1A20FC000, v17, v38, "[%s] loadImage for %s - failed with error: %@", v20, 0x20u);
      sub_1A210D9B0(v30, &unk_1EB089E80, &qword_1A230DBA0);
      MEMORY[0x1A58DCD00](v30, -1, -1);
      v31 = v35;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v31, -1, -1);
      v32 = v20;
      a5 = v36;
      MEMORY[0x1A58DCD00](v32, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);
    a4 = v37;
  }

  sub_1A22B9930(a4, a5, a2);
}

void sub_1A22B9930(void *a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v65 = *v3;
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v62 - v13;
  sub_1A22BAAC8();
  v16 = *(v15 + 16);

  if (!v16)
  {
    v17 = sub_1A22987F8();
    (*(v9 + 16))(v12, v17, v8);
    sub_1A22C0BC4(a1, a2);

    v18 = sub_1A22E6238();
    v19 = sub_1A22E6A98();
    sub_1A22C0BD8(a1, a2);

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = v8;
      v66 = v63;
      *v20 = 136315650;
      v21 = sub_1A22E7388();
      v23 = v9;
      v24 = sub_1A2103450(v21, v22, &v66);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v67 = a1;
      v68 = a2;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BE0, &qword_1A230FBF0);
      v26 = sub_1A2259178(v25);
      v28 = sub_1A2103450(v26, v27, &v66);

      *(v20 + 14) = v28;
      *(v20 + 22) = 2080;
      v67 = a3;
      sub_1A22E5948();
      sub_1A22C0CCC(&qword_1ED950758, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5B0]);
      v29 = sub_1A22E71D8();
      v31 = sub_1A2103450(v29, v30, &v66);

      *(v20 + 24) = v31;
      _os_log_impl(&dword_1A20FC000, v18, v19, "[%s] didLoadImage(%s) for %s - no presentation matches token, skipping.", v20, 0x20u);
      v32 = v63;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v32, -1, -1);
      MEMORY[0x1A58DCD00](v20, -1, -1);

      (*(v23 + 8))(v12, v64);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return;
  }

  if (a2 >> 60 == 15)
  {
    swift_beginAccess();
  }

  else
  {
    v33 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v34 = sub_1A22E5538();
    v35 = [v33 initWithData_];

    v36 = v4 + 4;
    swift_beginAccess();
    if (v35)
    {
      v37 = *v36;
      if ((*v36 & 0xC000000000000001) != 0)
      {
        if (v37 < 0)
        {
          v38 = *v36;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFFFFFFFF8;
        }

        v39 = v35;
        v40 = sub_1A22E6DE8();
        if (__OFADD__(v40, 1))
        {
          __break(1u);
          return;
        }

        *v36 = sub_1A22BCCC4(v38, v40 + 1);
      }

      else
      {
        v41 = v35;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *v36;
      sub_1A22BDC58(v35, a3, isUniquelyReferenced_nonNull_native);
      *v36 = v66;
      goto LABEL_17;
    }
  }

  v35 = 0;
LABEL_17:
  swift_endAccess();
  v43 = sub_1A22987F8();
  (*(v9 + 16))(v14, v43, v8);
  sub_1A22C0BC4(a1, a2);

  v44 = v14;
  v45 = sub_1A22E6238();
  v46 = sub_1A22E6A98();
  sub_1A22C0BD8(a1, a2);

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v63 = v44;
    v48 = v47;
    v62 = swift_slowAlloc();
    v66 = v62;
    *v48 = 136315650;
    v49 = sub_1A22E7388();
    LODWORD(v65) = v46;
    v51 = sub_1A2103450(v49, v50, &v66);
    v64 = v8;
    v52 = v35;
    v53 = v51;

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    v67 = a1;
    v68 = a2;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BE0, &qword_1A230FBF0);
    v55 = sub_1A2259178(v54);
    v57 = sub_1A2103450(v55, v56, &v66);

    *(v48 + 14) = v57;
    *(v48 + 22) = 2080;
    v35 = v52;
    v67 = a3;
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950758, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5B0]);
    v58 = sub_1A22E71D8();
    v60 = sub_1A2103450(v58, v59, &v66);

    *(v48 + 24) = v60;
    _os_log_impl(&dword_1A20FC000, v45, v65, "[%s] didLoadImage(%s) for %s - will update images for matching presentations.", v48, 0x20u);
    v61 = v62;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v61, -1, -1);
    MEMORY[0x1A58DCD00](v48, -1, -1);

    (*(v9 + 8))(v63, v64);
  }

  else
  {

    (*(v9 + 8))(v44, v8);
  }

  sub_1A22BA15C(v35, a3);
}

uint64_t sub_1A22B9FCC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1A22E6E18();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_1A22E5948(), sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]), v5 = sub_1A22E6538(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
      do
      {
        v9 = sub_1A22E6568();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

void sub_1A22BA15C(void *a1, void *a2)
{
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v2;
  sub_1A22BAAC8();
  v10 = v9;
  v11 = sub_1A22987F8();
  (*(v6 + 16))(v8, v11, v5);
  v12 = a1;

  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A98();

  v15 = os_log_type_enabled(v13, v14);
  v93 = a1;
  v94 = a2;
  v92 = v10;
  if (v15)
  {
    LODWORD(v95) = v14;
    v96 = v13;
    v97 = v6;
    v16 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v102[0] = v91;
    *v16 = 136315906;
    v17 = sub_1A22E7388();
    v19 = sub_1A2103450(v17, v18, v102);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v101 = a1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0897A0, &qword_1A230F0D8);
    v21 = sub_1A2259178(v20);
    v23 = sub_1A2103450(v21, v22, v102);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    v101 = a2;
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950758, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5B0]);
    v24 = sub_1A22E71D8();
    v26 = sub_1A2103450(v24, v25, v102);

    *(v16 + 24) = v26;
    *(v16 + 32) = 2080;
    v27 = *(v10 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      v90 = v5;
      v101 = MEMORY[0x1E69E7CC0];
      sub_1A210E5F8(0, v27, 0);
      v28 = v101;
      v29 = (v10 + 40);
      do
      {
        v30 = *v29;
        ObjectType = swift_getObjectType();
        v32 = *(v30 + 16);
        swift_unknownObjectRetain();
        v33 = v32(ObjectType, v30);
        v35 = v34;
        swift_unknownObjectRelease();
        v101 = v28;
        v37 = v28[2];
        v36 = v28[3];
        if (v37 >= v36 >> 1)
        {
          sub_1A210E5F8((v36 > 1), v37 + 1, 1);
          v28 = v101;
        }

        v28[2] = v37 + 1;
        v38 = &v28[2 * v37];
        v38[4] = v33;
        v38[5] = v35;
        v29 += 2;
        --v27;
      }

      while (v27);
      v10 = v92;
      v5 = v90;
    }

    v39 = MEMORY[0x1A58DA990](v28, MEMORY[0x1E69E6158]);
    v41 = v40;

    v42 = sub_1A2103450(v39, v41, v102);

    *(v16 + 34) = v42;
    v43 = v96;
    _os_log_impl(&dword_1A20FC000, v96, v95, "[%s] updateImage(%s) for %s - presentations: %s", v16, 0x2Au);
    v44 = v91;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v44, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);

    v97[1](v8, v5);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v45 = *(v10 + 16);
  if (!v45)
  {
LABEL_35:

    return;
  }

  swift_beginAccess();
  swift_beginAccess();
  v46 = (v92 + 40);
  while (1)
  {
    v95 = v46;
    v96 = v45;
    v47 = *v46;
    v48 = swift_getObjectType();
    v49 = *(v47 + 16);
    swift_unknownObjectRetain();
    v97 = v49;
    v50 = (v49)(v48, v47);
    v52 = v51;
    if (*(*(v98 + 48) + 16) && (v53 = v50, , sub_1A210FF30(v53, v52), v55 = v54, , (v55 & 1) != 0))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C98, &qword_1A230A4A0);
      sub_1A22E68B8();
    }

    else
    {
    }

    v56 = v48;
    v57 = v47;
    v58 = (v97)(v48, v47);
    v60 = v59;
    v61 = v98;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v61 + 40);
    v63 = v99;
    *(v61 + 40) = 0x8000000000000000;
    v65 = sub_1A210FF30(v58, v60);
    v66 = v63[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      break;
    }

    v69 = v64;
    if (v63[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v72 = v99;
        if (v64)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1A22BDDB4(&qword_1EB089BD8, &qword_1A230FBE8);
        v72 = v99;
        if (v69)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_1A22BCF44(v68, isUniquelyReferenced_nonNull_native, &qword_1EB089BD8, &qword_1A230FBE8);
      v70 = sub_1A210FF30(v58, v60);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_38;
      }

      v65 = v70;
      v72 = v99;
      if (v69)
      {
LABEL_25:
        *(v72[7] + 8 * v65) = v94;

        goto LABEL_29;
      }
    }

    v72[(v65 >> 6) + 8] |= 1 << v65;
    v73 = (v72[6] + 16 * v65);
    *v73 = v58;
    v73[1] = v60;
    *(v72[7] + 8 * v65) = v94;
    v74 = v72[2];
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      goto LABEL_37;
    }

    v72[2] = v76;
LABEL_29:
    v77 = v98;
    *(v98 + 40) = v72;
    swift_endAccess();
    v78 = (v97)(v56, v57);
    v80 = v79;
    v81 = *(v77 + 16);
    if (*(v81 + 16) && (v82 = v78, , v83 = sub_1A210FF30(v82, v80), v85 = v84, , (v85 & 1) != 0))
    {
      v86 = *(*(v81 + 56) + 8 * v83);

      (*(*v86 + 120))(v100, v87);

      if (v100[0])
      {
        v88 = v100[1];
        v89 = swift_getObjectType();
        (*(v88 + 32))(v98, v93, v89, v88);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v46 = v95 + 2;
    v45 = (v96 - 1);
    if (v96 == 1)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1A22E7208();
  __break(1u);
}

double sub_1A22BA9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v9 = *(v3 + 16);
  if (*(v9 + 16))
  {

    v10 = sub_1A210FF30(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      (*(*v12 + 120))(v16, v13);

      if (v16[0])
      {
        v14 = v16[1];
        ObjectType = swift_getObjectType();
        (*(v14 + 32))(v4, a1, ObjectType, v14);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1A22BAAC8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(**(*(v1 + 56) + ((v6 << 9) | (8 * v8))) + 120);

      v9(&v33, v10);

      if (v33)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v31 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A22BC890(0, v7[2] + 1, 1, v7);
    }

    v13 = v7[2];
    v12 = v7[3];
    v14 = v31;
    if (v13 >= v12 >> 1)
    {
      v15 = sub_1A22BC890((v12 > 1), v13 + 1, 1, v7);
      v14 = v31;
      v7 = v15;
    }

    v7[2] = v13 + 1;
    *&v7[2 * v13 + 4] = v14;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v11);
    ++v6;
    if (v4)
    {
      v6 = v11;
      goto LABEL_4;
    }
  }

  v16 = v7[2];
  if (v16)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v19 = v17;
LABEL_22:
      if (v19 >= v7[2])
      {
        goto LABEL_39;
      }

      v32 = *&v7[2 * v19 + 4];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1A22AD680(ObjectType, *(&v32 + 1)))
      {
        v21 = sub_1A22E5928();
        v23 = v22;

        v24 = sub_1A22E5928();
        if (v23)
        {
          if (v21 == v24 && v23 == v25)
          {

LABEL_32:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v33 = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1A22BF5AC(0, *(v18 + 16) + 1, 1);
              v18 = v33;
            }

            v30 = *(v18 + 16);
            v29 = *(v18 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_1A22BF5AC((v29 > 1), v30 + 1, 1);
              v18 = v33;
            }

            v17 = v19 + 1;
            *(v18 + 16) = v30 + 1;
            *(v18 + 16 * v30 + 32) = v32;
            if (v16 - 1 != v19)
            {
              continue;
            }

            goto LABEL_37;
          }

          v27 = sub_1A22E71E8();

          if (v27)
          {
            goto LABEL_32;
          }

          goto LABEL_21;
        }
      }

      else
      {
        sub_1A22E5928();
      }

      break;
    }

LABEL_21:
    ++v19;
    swift_unknownObjectRelease();
    if (v16 == v19)
    {
      goto LABEL_37;
    }

    goto LABEL_22;
  }

LABEL_37:
}

double sub_1A22BAE34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60, &qword_1A230F0C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  ObjectType = swift_getObjectType();
  v11 = (*(a2 + 16))(ObjectType, a2);
  v13 = v12;
  swift_beginAccess();
  v14 = v2[5];
  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  v15 = sub_1A210FF30(v11, v13);
  if ((v16 & 1) == 0)
  {

    goto LABEL_11;
  }

  v37 = v6;
  v38 = v11;
  v17 = *(*(v14 + 56) + 8 * v15);

  v39 = v17;
  v18 = sub_1A22E5938();
  v20 = v19;
  if (sub_1A22AD680(ObjectType, a2))
  {
    v21 = sub_1A22E5938();
    v23 = v22;

    if (v18 == v21 && v20 == v23)
    {

      goto LABEL_11;
    }

    v25 = sub_1A22E71E8();

    if (v25)
    {

LABEL_11:

      return result;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v27 = v38;
  if (*(v3[6] + 16))
  {

    sub_1A210FF30(v27, v13);
    if (v28)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C98, &qword_1A230A4A0);
      sub_1A22E68B8();
    }

    else
    {
    }
  }

  v29 = sub_1A22E6848();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_1A22E6828();

  swift_unknownObjectRetain();
  v30 = sub_1A22E6818();
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E85E0];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = v3;
  v31[5] = v27;
  v31[6] = v13;
  v31[7] = a1;
  v33 = v37;
  v31[8] = a2;
  v31[9] = v33;
  v34 = sub_1A225F65C(0, 0, v9, &unk_1A230FC28, v31);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v3[6];
  v3[6] = 0x8000000000000000;
  sub_1A22BDADC(v34, v27, v13, isUniquelyReferenced_nonNull_native);

  v3[6] = v40;
  swift_endAccess();

  return result;
}

uint64_t sub_1A22BB218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v15;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v9 = sub_1A22E6248();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = sub_1A22E6FA8();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  sub_1A22E6828();
  v8[20] = sub_1A22E6818();
  v12 = sub_1A22E6808();
  v8[21] = v12;
  v8[22] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1A22BB378, v12, v11);
}

uint64_t sub_1A22BB378()
{
  if (qword_1ED951528 != -1)
  {
    swift_once();
  }

  v1 = *(*qword_1ED951530 + 160);

  v1(v2);

  v3 = sub_1A22E7358();
  v5 = v4;
  sub_1A22E7238();
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_1A22BB4C8;

  return sub_1A22608AC(v3, v5, 0, 0, 1);
}

uint64_t sub_1A22BB4C8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  (*(v2[18] + 8))(v2[19], v2[17]);
  v3 = v2[22];
  v4 = v2[21];
  if (v0)
  {
    v5 = sub_1A22BB994;
  }

  else
  {
    v5 = sub_1A22BB650;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A22BB650()
{
  v33 = v0;
  v1 = v0[24];

  sub_1A22E68D8();
  if (v1)
  {

    v2 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[8];
  swift_beginAccess();
  v4 = *(v3 + 40);
  if (*(v4 + 16))
  {
    v6 = v0[9];
    v5 = v0[10];

    v7 = sub_1A210FF30(v6, v5);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v0[12];
  ObjectType = swift_getObjectType();
  v12 = sub_1A22AD680(ObjectType, v10);
  if (v9)
  {
    v0[6] = v9;
    if (v12)
    {
      v0[7] = v12;
      sub_1A22E5948();
      sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
      v13 = sub_1A22E6568();

      if (v13)
      {
        goto LABEL_18;
      }

LABEL_15:
      v15 = v0[15];
      v14 = v0[16];
      v16 = v0[14];
      v17 = sub_1A22987F8();
      (*(v15 + 16))(v14, v17, v16);

      v18 = sub_1A22E6238();
      v19 = sub_1A22E6A98();

      v20 = os_log_type_enabled(v18, v19);
      v22 = v0[15];
      v21 = v0[16];
      v23 = v0[14];
      if (v20)
      {
        v30 = v0[9];
        v31 = v0[10];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32[0] = v25;
        *v24 = 136315394;
        v26 = sub_1A22E7388();
        v28 = sub_1A2103450(v26, v27, v32);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1A2103450(v30, v31, v32);
        _os_log_impl(&dword_1A20FC000, v18, v19, "[%s] setupResetTaskIfNeeded for %s - reset task timed out, clearing existing image", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1A58DCD00](v25, -1, -1);
        MEMORY[0x1A58DCD00](v24, -1, -1);
      }

      (*(v22 + 8))(v21, v23);
      sub_1A22BA9B4(0, v0[9], v0[10]);
      goto LABEL_18;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

LABEL_18:

  v2 = v0[1];
LABEL_19:

  return v2();
}

uint64_t sub_1A22BB994()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A22BBA0C()
{
  v1 = v0;
  v57 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_11:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(v2 + 48) + ((v7 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v1 + 16);
      v14 = *(v13 + 16);

      if (!v14)
      {
        goto LABEL_17;
      }

      v15 = sub_1A210FF30(v12, v11);
      if ((v16 & 1) == 0)
      {

        goto LABEL_17;
      }

      v17 = *(*(v13 + 56) + 8 * v15);

      (*(*v17 + 120))(&v60, v18);

      if (v60)
      {

        swift_unknownObjectRelease();
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_17:
        swift_beginAccess();
        v19 = sub_1A210FF30(v12, v11);
        v21 = v20;

        if (v21)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = *(v1 + 16);
          v59[0] = v23;
          *(v1 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1A22BDDB4(&qword_1EB089C00, &qword_1A230FC40);
            v23 = v59[0];
          }

          sub_1A2239630(v19, v23);
          *(v1 + 16) = v23;
        }

        swift_endAccess();
        if (!v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  v24 = *(v1 + 16);
  v56 = MEMORY[0x1E69E7CC0];
  v59[0] = MEMORY[0x1E69E7CC0];
  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v24 + 64);
  v28 = (v25 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v27)
  {
LABEL_29:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = *(**(*(v24 + 56) + ((v29 << 9) | (8 * v31))) + 120);
    v33 = swift_retain_n();
    v32(&v60, v33);
    if (v60)
    {
      v34 = v61;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v36 = sub_1A22AD680(ObjectType, v34);

      v37 = swift_unknownObjectRelease_n();
      if (v36)
      {
        MEMORY[0x1A58DA960](v37);
        if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A22E6768();
        }

        sub_1A22E67A8();
        v56 = v59[0];
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      v38 = sub_1A22C0D14(v56);

      swift_beginAccess();

      sub_1A22BC028(v39);
      v41 = sub_1A22BC224(v38, v40);

      if ((v41 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1A22E6DD8();
        sub_1A22E5948();
        sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
        sub_1A22E6968();
        v43 = v60;
        v42 = v61;
        v44 = v62;
        v45 = v63;
        v46 = v64;
      }

      else
      {
        v47 = -1 << *(v41 + 32);
        v42 = v41 + 56;
        v44 = ~v47;
        v48 = -v47;
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v46 = v49 & *(v41 + 56);

        v45 = 0;
        v43 = v41;
      }

      v50 = (v44 + 64) >> 6;
      if (v43 < 0)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v51 = v45;
        v52 = v46;
        v53 = v45;
        if (!v46)
        {
          break;
        }

LABEL_45:
        v54 = (v52 - 1) & v52;
        v55 = *(*(v43 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v52)))));

        if (!v55)
        {
LABEL_51:
          sub_1A212508C(v43);

          return;
        }

        while (1)
        {
          v58 = v55;
          sub_1A22BC318(&v58, v1, v57);

          v45 = v53;
          v46 = v54;
          if ((v43 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_47:
          if (sub_1A22E6E08())
          {
            sub_1A22E5948();
            swift_dynamicCast();
            v55 = v58;
            v53 = v45;
            v54 = v46;
            if (v58)
            {
              continue;
            }
          }

          goto LABEL_51;
        }
      }

      while (1)
      {
        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_54;
        }

        if (v53 >= v50)
        {
          goto LABEL_51;
        }

        v52 = *(v42 + 8 * v53);
        ++v51;
        if (v52)
        {
          goto LABEL_45;
        }
      }
    }

    v27 = *(v24 + 64 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_29;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1A22BC028(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1A22E6DE8();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_1A22E5948();
  v5 = sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
  v18[1] = MEMORY[0x1A58DAB90](v3, v4, v5);
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = sub_1A22E6FD8() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v6 = v1 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 64);
  }

  v12 = 0;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_1A22E7018() || (swift_dynamicCast(), (v17 = v18[0]) == 0))
    {
LABEL_21:
      sub_1A212508C(v1);
      return;
    }

LABEL_11:
    sub_1A22BE1E4(v18, v17);
  }

  v13 = v12;
  v14 = v8;
  v15 = v12;
  if (v8)
  {
LABEL_17:

    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v8 = (v14 - 1) & v14;
    v12 = v15;
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1A22BC224(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1A22E6DE8();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1A22BF700(a1, a2);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1A22E6DE8() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1A22E6DE8();
  v2 = sub_1A22BE484(v5, v6);
LABEL_10:

  return sub_1A22BF938(a1, v2);
}

void sub_1A22BC318(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_1A22987F8();
  (*(v6 + 16))(v8, v10, v5);

  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[1] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v14 = 136315394;
    v16 = sub_1A22E7388();
    v18 = sub_1A2103450(v16, v17, v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v23[2] = v9;
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950758, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5B0]);
    v19 = sub_1A22E71D8();
    v21 = sub_1A2103450(v19, v20, v24);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] cleanUp removing image for token: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v15, -1, -1);
    MEMORY[0x1A58DCD00](v14, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  v22 = sub_1A22BCB6C(v9);
  swift_endAccess();
}

void *sub_1A22BC5BC()
{

  return v0;
}

uint64_t sub_1A22BC5FC()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1A22BC654()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = sub_1A22C09A0(MEMORY[0x1E69E7CC0], &qword_1EB089C00, &qword_1A230FC40);
  if (v1 >> 62 && sub_1A22E6DE8())
  {
    sub_1A22C0614(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v0[3] = v2;
  v0[4] = sub_1A22C08A8(v1);
  v0[5] = sub_1A22C09A0(v1, &qword_1EB089BD8, &qword_1A230FBE8);
  v0[6] = sub_1A22C0A9C(v1);
  return v0;
}

uint64_t sub_1A22BC700()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A22E6FA8();
  v5 = sub_1A22C0CCC(&qword_1ED94E920, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A22E7218();
  sub_1A22C0CCC(&qword_1ED94E928, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A22E6FB8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A2260B3C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

void *sub_1A22BC890(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BC8, &qword_1A230FBD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BD0, &unk_1A230FBD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A22BC9C4(uint64_t a1)
{
  sub_1A22E5948();
  sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
  v2 = sub_1A22E6538();
  return sub_1A22BCA70(a1, v2);
}

unint64_t sub_1A22BCA70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
    do
    {
      if (sub_1A22E6568())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A22BCB6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v13 = sub_1A22BC9C4(a1);
    if (v14)
    {
      v4 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v17 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v4);
        sub_1A22BD76C(v4, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1A22BE084();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_1A22E6FF8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1A22E6DE8();
  v8 = sub_1A22BCCC4(v5, v7);

  v9 = sub_1A22BC9C4(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1A22BD76C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1A22BCCC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BE8, &qword_1A230FBF8);
    v2 = sub_1A22E7068();
    v19 = v2;
    sub_1A22E6FD8();
    v3 = sub_1A22E7008();
    if (v3)
    {
      v4 = v3;
      sub_1A22E5948();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1A2115288(0, &qword_1ED94E960, 0x1E69DCAB8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A22BD48C(v12 + 1, 1);
        }

        v2 = v19;
        sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
        result = sub_1A22E6538();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A22E7008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1A22BCF44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_1A22E7058();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_1A22E72A8();
      sub_1A22E6658();
      v27 = sub_1A22E72F8();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1A22BD1E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF8, &unk_1A230FC30);
  v35 = v4;
  v6 = sub_1A22E7058();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1A22E72A8();
      sub_1A22E6658();
      v25 = sub_1A22E72F8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A22BD48C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BE8, &qword_1A230FBF8);
  v34 = v4;
  v6 = sub_1A22E7058();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v34 & 1) == 0)
      {

        v23 = v22;
      }

      sub_1A22E5948();
      sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
      v24 = sub_1A22E6538();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v33;
      v12 = v35;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1A22BD76C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A22E6DB8() + 1) & ~v5;
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
    do
    {
      result = sub_1A22E6538();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 >= v8 && v3 >= v9)
        {
LABEL_15:
          v12 = *(a2 + 48);
          v13 = (v12 + 8 * v3);
          v14 = (v12 + 8 * v6);
          if (v3 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v9 >= v8 || v3 >= v9)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A22BD93C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1A210FF30(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1A22BCF44(v20, a4 & 1, a5, a6);
      v15 = sub_1A210FF30(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1A22E7208();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1A22BDDB4(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1A22BDADC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A210FF30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A22BD1E4(v16, a4 & 1);
      v11 = sub_1A210FF30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A22E7208();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A22BDF14();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1A22BDC58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A22BC9C4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A22BD48C(v14, a3 & 1);
      v9 = sub_1A22BC9C4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1A22E5948();
        v9 = sub_1A22E7208();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8](v9, v21);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1A22BE084();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    goto _objc_release_x1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;
}

void sub_1A22BDDB4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A22E7048();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1A22BDF14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF8, &unk_1A230FC30);
  v2 = *v0;
  v3 = sub_1A22E7048();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A22BE084()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BE8, &qword_1A230FBF8);
  v2 = *v0;
  v3 = sub_1A22E7048();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1A22BE1E4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1A22E6DF8();

    if (v8)
    {

      sub_1A22E5948();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1A22E6DE8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1A22BE484(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1A22BE6B8(v17 + 1);
    }

    sub_1A22BE94C(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1A22E5948();
  sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
  v10 = sub_1A22E6538();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1A22BEA34(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
  while ((sub_1A22E6568() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1A22BE484(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF0, &unk_1A230FC10);
    v2 = sub_1A22E6E58();
    v15 = v2;
    sub_1A22E6DD8();
    if (sub_1A22E6E08())
    {
      sub_1A22E5948();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A22BE6B8(v9 + 1);
        }

        v2 = v15;
        sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
        result = sub_1A22E6538();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1A22E6E08());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1A22BE6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF0, &unk_1A230FC10);
  v4 = sub_1A22E6E48();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1A22E5948();
      sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
      v18 = sub_1A22E6538();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1A22BE94C(uint64_t a1, uint64_t a2)
{
  sub_1A22E5948();
  sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
  sub_1A22E6538();
  result = sub_1A22E6DC8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1A22BEA34(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A22BE6B8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A22BEC1C();
      goto LABEL_12;
    }

    sub_1A22BED6C(v6 + 1);
  }

  v8 = *v3;
  sub_1A22E5948();
  sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
  v9 = sub_1A22E6538();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
    while ((sub_1A22E6568() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A22E71F8();
  __break(1u);
}

void sub_1A22BEC1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF0, &unk_1A230FC10);
  v2 = *v0;
  v3 = sub_1A22E6E38();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A22BED6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF0, &unk_1A230FC10);
  v4 = sub_1A22E6E48();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1A22E5948();
      sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);

      v18 = sub_1A22E6538();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_1A22BEFE4(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_1A22E6E18();

    if (v5)
    {
      v6 = sub_1A22BF1E4(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1A22E5948();
  sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
  v8 = sub_1A22E6538();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
  while ((sub_1A22E6568() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A22BEC1C();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1A22BF3C0(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1A22BF1E4(uint64_t a1, uint64_t a2)
{

  v3 = sub_1A22E6DE8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1A22BE484(v4, v3);
  v12 = v5;
  sub_1A22E5948();
  sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);

  v6 = sub_1A22E6538();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
    while ((sub_1A22E6568() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1A22BF3C0(v8);
  result = sub_1A22E6568();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A22BF3C0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A22E6DB8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_1A22E5948();
      sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
      do
      {
        v10 = sub_1A22E6538() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void *sub_1A22BF5AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A22BF5CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A22BF5CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BC8, &qword_1A230FBD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BD0, &unk_1A230FBD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A22BF700(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_1A22E6DE8())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1A22E6DD8();
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
    sub_1A22E6968();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_22:
      sub_1A212508C(a1);
      return;
    }

    while (1)
    {
      sub_1A22BEFE4(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1A22E6E08())
      {
        sub_1A22E5948();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1A22BF938(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v78 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v5 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1A22E6DD8();
      sub_1A22E5948();
      sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
      sub_1A22E6968();
      v5 = v73;
      v7 = v74;
      v8 = v75;
      v9 = v76;
      v10 = v77;
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      v7 = a1 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(a1 + 56);

      v9 = 0;
    }

    v68 = v5;
    v69 = v7;
    v70 = v8;
    v71 = v9;
    v57 = v8;
    v14 = (v8 + 64) >> 6;
    v64 = (v4 + 56);
    v72 = v10;
    v60 = v14;
    v61 = v7;
    while (2)
    {
      if (v5 < 0)
      {
        v21 = sub_1A22E6E08();
        if (!v21)
        {
          goto LABEL_64;
        }

        v65 = v21;
        sub_1A22E5948();
        swift_dynamicCast();
        v20 = v66;
        v18 = v9;
        v2 = v10;
        if (!v66)
        {
          goto LABEL_64;
        }

        goto LABEL_25;
      }

      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;

        v18 = v16;
        goto LABEL_21;
      }

      if (v14 <= (v9 + 1))
      {
        v17 = v9 + 1;
      }

      else
      {
        v17 = v14;
      }

      v18 = v17 - 1;
      v19 = v9;
      while (1)
      {
        v16 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v16 >= v14)
        {
          break;
        }

        v15 = *(v7 + 8 * v16);
        ++v19;
        if (v15)
        {
          goto LABEL_20;
        }
      }

      v20 = 0;
      v2 = 0;
LABEL_21:
      v68 = v5;
      v69 = v7;
      v70 = v57;
      v71 = v18;
      v72 = v2;
      if (!v20)
      {
LABEL_64:
        v46 = v5;
        goto LABEL_62;
      }

LABEL_25:
      v62 = v20;
      v67 = v20;
      sub_1A22E5948();
      v59 = sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
      v22 = sub_1A22E6538();
      v23 = -1 << *(v4 + 32);
      v9 = v22 & ~v23;
      v7 = v9 >> 6;
      v3 = 1 << v9;
      if (((1 << v9) & v64[v9 >> 6]) == 0)
      {
LABEL_10:

        v9 = v18;
        v10 = v2;
        v14 = v60;
        v7 = v61;
        continue;
      }

      break;
    }

    v24 = ~v23;
    v25 = sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
    v66 = *(*(v4 + 48) + 8 * v9);
    for (i = v25; (sub_1A22E6568() & 1) == 0; v66 = *(*(v4 + 48) + 8 * v9))
    {
      v9 = (v9 + 1) & v24;
      v7 = v9 >> 6;
      v3 = 1 << v9;
      if (((1 << v9) & v64[v9 >> 6]) == 0)
      {
        goto LABEL_10;
      }
    }

    v27 = *(v4 + 32);
    v54 = ((1 << v27) + 63) >> 6;
    v6 = 8 * v54;
    if ((v27 & 0x3Fu) <= 0xD)
    {
LABEL_32:
      v55 = &v53;
      MEMORY[0x1EEE9AC00](v26);
      v29 = &v53 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v29, v64, v28);
      v30 = *&v29[8 * v7] & ~v3;
      v31 = *(v4 + 16);
      v56 = v29;
      *&v29[8 * v7] = v30;
      v9 = v31 - 1;
      v32 = v60;
      v33 = v61;
      v58 = v5;
      while (1)
      {
        if (v5 < 0)
        {
          v35 = sub_1A22E6E08();
          if (!v35)
          {
            goto LABEL_60;
          }

          v65 = v35;
          swift_dynamicCast();
          v7 = v66;
          if (!v66)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (!v2)
          {
            if (v32 <= (v18 + 1))
            {
              v36 = v18 + 1;
            }

            else
            {
              v36 = v32;
            }

            v37 = v36 - 1;
            while (1)
            {
              v34 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              if (v34 >= v32)
              {
                v7 = 0;
                v2 = 0;
                goto LABEL_49;
              }

              v2 = *(v33 + 8 * v34);
              ++v18;
              if (v2)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
            goto LABEL_66;
          }

          v34 = v18;
LABEL_48:
          v38 = __clz(__rbit64(v2));
          v2 &= v2 - 1;
          v7 = *(*(v5 + 48) + ((v34 << 9) | (8 * v38)));

          v37 = v34;
LABEL_49:
          v68 = v5;
          v69 = v33;
          v70 = v57;
          v71 = v37;
          v18 = v37;
          v72 = v2;
          if (!v7)
          {
LABEL_60:
            v4 = sub_1A22C0398(v56, v54, v9, v4);
            goto LABEL_61;
          }
        }

        v62 = v9;
        v67 = v7;
        v39 = sub_1A22E6538();
        v40 = v4;
        v41 = -1 << *(v4 + 32);
        v42 = v39 & ~v41;
        v3 = v42 >> 6;
        v43 = 1 << v42;
        if (((1 << v42) & v64[v42 >> 6]) == 0)
        {
          break;
        }

        v44 = ~v41;
        while (1)
        {
          v66 = *(*(v40 + 48) + 8 * v42);
          if (sub_1A22E6568())
          {
            break;
          }

          v42 = (v42 + 1) & v44;
          v3 = v42 >> 6;
          v43 = 1 << v42;
          if (((1 << v42) & v64[v42 >> 6]) == 0)
          {
            goto LABEL_33;
          }
        }

        v45 = v56[v3];
        v56[v3] = v45 & ~v43;
        v4 = v40;
        if ((v45 & v43) != 0)
        {
          v33 = v61;
          v9 = v62 - 1;
          v5 = v58;
          v32 = v60;
          if (__OFSUB__(v62, 1))
          {
            goto LABEL_67;
          }

          if (v62 == 1)
          {

            v4 = MEMORY[0x1E69E7CD0];
            goto LABEL_61;
          }
        }

        else
        {
LABEL_34:
          v5 = v58;
          v32 = v60;
          v33 = v61;
          v9 = v62;
        }
      }

LABEL_33:

      v4 = v40;
      goto LABEL_34;
    }

LABEL_68:
    v48 = v6;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_32;
    }

    v50 = swift_slowAlloc();
    memcpy(v50, v64, v49);
    sub_1A22C0088(v50, v54, v4, v9, &v68);
    v52 = v51;

    MEMORY[0x1A58DCD00](v50, -1, -1);
    v4 = v52;
LABEL_61:
    v46 = v68;
LABEL_62:
    sub_1A212508C(v46);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v4;
}

void sub_1A22C0088(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v26 = v7 - 1;
  v28 = a3 + 56;
  while (1)
  {
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_1A22E6E08())
      {
        goto LABEL_29;
      }

      sub_1A22E5948();
      swift_dynamicCast();
      if (!v29)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    v8 = v5[3];
    v9 = v5[4];
    if (!v9)
    {
      break;
    }

    v10 = v5[3];
LABEL_16:
    v14 = (v9 - 1) & v9;
    v15 = *(*(*v5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));

    v13 = v10;
LABEL_17:
    v5[3] = v13;
    v5[4] = v14;
    if (!v15)
    {
LABEL_29:

      sub_1A22C0398(a1, a2, v26, a3);
      return;
    }

LABEL_18:
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
    v16 = sub_1A22E6538();
    v17 = -1 << *(a3 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v28 + 8 * (v18 >> 6))) == 0)
    {
      goto LABEL_2;
    }

    sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
    v29 = *(*(a3 + 48) + 8 * v18);
    if (sub_1A22E6568())
    {
LABEL_23:

      v22 = a1[v19];
      a1[v19] = v22 & ~v20;
      if ((v22 & v20) != 0)
      {
        v5 = a5;
        v23 = v26 - 1;
        if (__OFSUB__(v26, 1))
        {
          goto LABEL_31;
        }

        --v26;
        if (!v23)
        {
          return;
        }
      }

      else
      {
        v5 = a5;
      }
    }

    else
    {
      v21 = ~v17;
      while (1)
      {
        v18 = (v18 + 1) & v21;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v28 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v29 = *(*(a3 + 48) + 8 * v18);
        if (sub_1A22E6568())
        {
          goto LABEL_23;
        }
      }

LABEL_2:

      v5 = a5;
    }
  }

  v11 = (v5[2] + 64) >> 6;
  if (v11 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = (v5[2] + 64) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_17;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v8;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1A22C0398(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF0, &unk_1A230FC10);
  v9 = sub_1A22E6E68();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_16:
    v17 = *(*(result + 48) + 8 * (v14 | (v11 << 6)));
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);

    result = sub_1A22E6538();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v17;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_32;
    }

    result = a4;
    v10 = v27;
    if (!v4)
    {
LABEL_28:

      return v5;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v27 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1A22C0614(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1A22E6DE8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF0, &unk_1A230FC10);
      v3 = sub_1A22E6E68();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1A22E6DE8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x1A58DB0F0](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1A22E5948();
    sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
    v10 = sub_1A22E6538();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1A22C0CCC(&qword_1ED950760, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A8]);
      do
      {
        if (sub_1A22E6568())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

unint64_t sub_1A22C08A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BE8, &qword_1A230FBF8);
    v3 = sub_1A22E7078();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_1A22BC9C4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A22C09A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1A22E7078();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A210FF30(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A22C0A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089BF8, &unk_1A230FC30);
    v3 = sub_1A22E7078();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A210FF30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A22C0BC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A222EB14(result, a2);
  }

  return result;
}

double sub_1A22C0BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A2228B6C(a1, a2);
  }

  return result;
}

uint64_t sub_1A22C0C08()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A222D660;

  return sub_1A22BB218(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A22C0CCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A22C0D14(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1A22E6DE8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_1A22E5948();
  v5 = sub_1A22C0CCC(&qword_1ED950768, MEMORY[0x1E69AE598], MEMORY[0x1E69AE5A0]);
  result = MEMORY[0x1A58DAB90](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A58DB0F0](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1A22BE1E4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1A22E6DE8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1A22C0EB8()
{
  result = qword_1EB089C08;
  if (!qword_1EB089C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089C08);
  }

  return result;
}

uint64_t sub_1A22C0F54(uint64_t a1, uint64_t (*a2)(void))
{
  v4[3] = a1;
  v4[4] = a2();
  v2 = sub_1A22E5708();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_1A22C0FA0()
{
  result = qword_1EB089C10;
  if (!qword_1EB089C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089C10);
  }

  return result;
}

unint64_t sub_1A22C1014()
{
  result = qword_1EB089C18;
  if (!qword_1EB089C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089C18);
  }

  return result;
}

unint64_t sub_1A22C106C()
{
  result = qword_1EB089C20;
  if (!qword_1EB089C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089C20);
  }

  return result;
}

uint64_t sub_1A22C110C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828, &qword_1A2308D10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1A22E5C88();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SessionContentViewModel(0);
  v21 = v15[6];
  sub_1A221BB10(a3 + v21);
  *a3 = sub_1A22E59B8();
  a3[1] = v16;
  v17 = *(v12 + 16);
  v17(v14, a1, v11);
  sub_1A2214CF8(a2, v10, &qword_1EB089540, &unk_1A230FE80);
  sub_1A2286874(v14, v10, (a3 + v15[5]));
  v17(v14, a1, v11);
  v18 = v22;
  sub_1A212B5D4(v14, v22);
  sub_1A221BC04(v18, a3 + v21);
  v19 = sub_1A22C1364();
  sub_1A210D9B0(a2, &qword_1EB089540, &unk_1A230FE80);
  result = (*(v12 + 8))(a1, v11);
  *(a3 + v15[7]) = v19 > 1;
  return result;
}

uint64_t sub_1A22C1364()
{
  v35 = sub_1A22E5808();
  v0 = *(v35 - 8);
  v1 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v24 - v3;
  v32 = sub_1A22E58D8();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A22E5BA8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v30 = v10;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v24 = v6;
    v25 = v12;
    v29 = *MEMORY[0x1E69AE540];
    v27 = (v0 + 8);
    v28 = (v0 + 104);
    v26 = (v9 - 8);
    v13 = v34;
    while (1)
    {
      v37 = v8;
      v14 = v31;
      v15 = v32;
      v16 = v9;
      v30(v31, v11, v32);
      v17 = v33;
      sub_1A22E5818();
      v18 = v35;
      (*v28)(v13, v29, v35);
      v36 = sub_1A22E57F8();
      v19 = *v27;
      (*v27)(v13, v18);
      v19(v17, v18);
      v20 = v14;
      v21 = v37;
      result = (*v26)(v20, v15);
      v23 = __OFADD__(v21, v36 & 1);
      v8 = v21 + (v36 & 1);
      if (v23)
      {
        break;
      }

      v11 += v25;
      --v7;
      v9 = v16;
      if (!v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1A22C1614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540, &unk_1A230FE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1A22E5C88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_1A22E59B8();
  a3[1] = v13;
  v14 = *(v10 + 16);
  v14(v12, a1, v9);
  sub_1A2214CF8(a2, v8, &qword_1EB089540, &unk_1A230FE80);
  v15 = type metadata accessor for SessionViewModel(0);
  sub_1A22C110C(v12, v8, (a3 + *(v15 + 20)));
  v14(v12, a1, v9);
  v16 = sub_1A2129284(v12);
  v18 = v17;
  sub_1A210D9B0(a2, &qword_1EB089540, &unk_1A230FE80);
  result = (*(v10 + 8))(a1, v9);
  v20 = (a3 + *(v15 + 24));
  *v20 = v16;
  v20[1] = v18;
  return result;
}

double sub_1A22C17EC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1A22E5C88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30, &qword_1A230A1B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v48 = sub_1A220D184();
  v47 = v11;
  v46 = v12;
  v45 = v13;
  v49 = a1;
  v14 = *a1;
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v42 = v10;
    v53 = v4;
    v44 = a2;
    v58[0] = MEMORY[0x1E69E7CC0];
    sub_1A210E5F8(0, v15, 0);
    v16 = v58[0];
    v43 = v5;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v51 = v18;
    v19 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v50 = *(v17 + 56);
    v52 = v17;
    v20 = (v17 - 8);
    do
    {
      v21 = v53;
      v51(v7, v19, v53);
      v22 = sub_1A22E59B8();
      v24 = v23;
      (*v20)(v7, v21);
      v58[0] = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1A210E5F8((v25 > 1), v26 + 1, 1);
        v16 = v58[0];
      }

      *(v16 + 16) = v26 + 1;
      v27 = v16 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v19 += v50;
      --v15;
    }

    while (v15);
    a2 = v44;
    v4 = v53;
    v5 = v43;
    v10 = v42;
  }

  v28 = type metadata accessor for RoutePickerSnapshot(0);
  v29 = v49;
  sub_1A2214CF8(v49 + v28[5], v10, &qword_1EB088C30, &qword_1A230A1B0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1A210D9B0(v10, &qword_1EB088C30, &qword_1A230A1B0);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v31 = sub_1A22E59B8();
    v30 = v32;
    (*(v5 + 8))(v10, v4);
  }

  v33 = (v29 + v28[7]);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  v37 = v33[3];
  sub_1A2214638(*v33, v35, v36, v37);
  sub_1A221467C(v48, v47, v46, v45);
  v38 = *(v29 + v28[6]);
  sub_1A2257128(v29);
  *&v55 = v16;
  *(&v55 + 1) = v31;
  *&v56 = v30;
  *(&v56 + 1) = v34;
  *v57 = v35;
  *&v57[8] = v36;
  *&v57[16] = v37;
  v57[24] = v38;
  v58[0] = v16;
  v58[1] = v31;
  v58[2] = v30;
  v58[3] = v34;
  v58[4] = v35;
  v58[5] = v36;
  v58[6] = v37;
  v59 = v38;
  sub_1A221CB68(&v55, v54);
  sub_1A2248550(v58);
  v39 = v56;
  *a2 = v55;
  a2[1] = v39;
  a2[2] = *v57;
  result = *&v57[9];
  *(a2 + 41) = *&v57[9];
  return result;
}

void (*sub_1A22C1BDC(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t sub_1A22C1C70()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_controller) + 200);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1A22C1CE4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 40))
  {
    v3 = *(v2 + 40);
  }

  else
  {
    type metadata accessor for WaveformPresenter(0, a2);
    v3 = sub_1A229F32C(*(v2 + OBJC_IVAR____TtC13MediaControls16SessionPresenter_waveformController));
    *(v2 + 40) = v3;
  }

  return v3;
}

double sub_1A22C1D60(uint64_t a1)
{
  *(v1 + 40) = a1;

  return result;
}

uint64_t sub_1A22C1D70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls16SessionPresenter_viewModel;
  swift_beginAccess();
  return sub_1A22C1DC8(v1 + v3, a1);
}

uint64_t sub_1A22C1DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A22C1E2C(uint64_t a1)
{
  v3 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13MediaControls16SessionPresenter_viewModel;
  swift_beginAccess();
  sub_1A2270C28(a1, v1 + v6);
  v7 = swift_endAccess();
  if ((*(*v1 + 136))(v7))
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    sub_1A22C1DC8(v1 + v6, v5);
    (*(v9 + 8))(v5, ObjectType, v9);
    swift_unknownObjectRelease();
    sub_1A22C1F68(a1);
    v11 = v5;
  }

  else
  {
    v11 = a1;
  }

  return sub_1A22C1F68(v11);
}

uint64_t sub_1A22C1F68(uint64_t a1)
{
  v2 = type metadata accessor for SessionViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A22C2008()
{
  v1 = OBJC_IVAR____TtC13MediaControls16SessionPresenter_isOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22C204C(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls16SessionPresenter_isOnScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = (*(**(v1 + 32) + 192))(v7);
  *(v5 + *(type metadata accessor for SessionArtworkPresentationModel(0) + 24)) = a1;
  return v4(v7, 0);
}

uint64_t (*sub_1A22C20F8(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC13MediaControls16SessionPresenter_isOnScreen;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1A22C2180;
}