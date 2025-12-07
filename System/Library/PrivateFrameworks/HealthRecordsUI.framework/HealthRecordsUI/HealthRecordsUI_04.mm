id ConceptFeedItemTitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ConceptFeedItemTitleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = v11;
  LODWORD(v13) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v13];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[v10] = v12;
  v14 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel;
  *&v5[v14] = sub_1D10B83F8();
  v15 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_chevronView;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v16 setContentMode_];
  sub_1D106F934(0, &qword_1EE06A540, 0x1E69DCAB8);
  v17 = sub_1D1390CFC();
  [v16 setImage_];

  v18 = [objc_opt_self() tertiaryLabelColor];
  [v16 setTintColor_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v19) = 1148846080;
  [v16 setContentHuggingPriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v20];

  *&v5[v15] = v16;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___bottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateChevronConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_headerImage] = 0;
  v21 = &v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_title];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateString];
  *v22 = 0;
  v22[1] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_categoryColor] = 0;
  v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesChevron] = 0;
  v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode] = 0;
  v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesHeaderSymbolForAccessibilitySizing] = 1;
  v23 = &v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_baseAccessibilityIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData];
  v25 = type metadata accessor for ConceptFeedItemTitleView();
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  v31.receiver = v5;
  v31.super_class = v25;
  v26 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1D10BB498();
  [v26 addSubview_];
  [v26 addSubview_];
  [v26 addSubview_];
  sub_1D10BAAA4();
  sub_1D10BB580(0, &qword_1EC60D0C0, sub_1D107F520);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D139E700;
  v28 = sub_1D138F4EC();
  v29 = MEMORY[0x1E69DC2B0];
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  MEMORY[0x1D3886600](v27, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

  swift_unknownObjectRelease();

  return v26;
}

void sub_1D10BA268()
{
  v1 = &v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_title];
  swift_beginAccess();
  if (*(v1 + 1))
  {
    v2 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_categoryColor;
    swift_beginAccess();
    v3 = *&v0[v2];
    if (v3)
    {

      v4 = v3;
      v5 = [v0 traitCollection];
      v6 = [v5 preferredContentSizeCategory];

      LOBYTE(v5) = sub_1D1390B5C();
      if (v5 & 1) != 0 && (v7 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesHeaderSymbolForAccessibilitySizing, swift_beginAccess(), (v0[v7]) || (v8 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_headerImage, swift_beginAccess(), (v9 = *&v0[v8]) == 0) || (v10 = [v9 imageWithRenderingMode_]) == 0)
      {
        v23 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel];
        sub_1D10BB580(0, &qword_1EC60F520, sub_1D106F814);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D139E700;
        v25 = *MEMORY[0x1E69DB650];
        *(inited + 32) = *MEMORY[0x1E69DB650];
        *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0, 0x1E69DC888);
        *(inited + 40) = v4;
        v26 = v4;
        v27 = v25;
        sub_1D109B2B4(inited);
        swift_setDeallocating();
        sub_1D10BBEEC(inited + 32, sub_1D106F814);
        v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v29 = sub_1D139012C();

        type metadata accessor for Key(0);
        sub_1D10BC3B4(&qword_1EC60F530, type metadata accessor for Key, &unk_1D139D0EC);
        v30 = sub_1D138FFEC();

        v31 = [v28 initWithString:v29 attributes:v30];

        [v23 setAttributedText_];
      }

      else
      {
        v11 = v10;
        v12 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel];
        v13 = [v12 font];
        if (v13)
        {
          v14 = v13;
          v15 = [v0 traitCollection];
          [v15 displayScale];
          v17 = v16;

          v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v19 = v4;
          v20 = v11;
          v21 = sub_1D139012C();

          v22 = [v18 initWithLeadingImage:v20 text:v21 font:v14 displayScale:v19 imageTintColor:v19 textColor:1 adjustsImageSizeForAccessibilityContentSizeCategory:v17];

          [v12 setAttributedText_];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel] setAttributedText_];
  }
}

uint64_t sub_1D10BA6A0(uint64_t a1, uint64_t a2)
{
  sub_1D10BA704(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D10BA704(uint64_t a1)
{
  if (!qword_1EC60A4D0)
  {
    sub_1D1080EA4(255, &qword_1EC60A4D8, &protocol descriptor for ConceptTitleViewContentProviding);
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60A4D0);
    }
  }
}

uint64_t sub_1D10BA76C(uint64_t a1, uint64_t a2)
{
  sub_1D10BA704(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D10BA7F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel);
  swift_beginAccess();
  sub_1D10BB580(0, &qword_1EC60F520, sub_1D106F814);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v3 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v4 = objc_opt_self();

  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0, 0x1E69DC888);
  *(inited + 40) = v6;
  sub_1D109B2B4(inited);
  swift_setDeallocating();
  sub_1D10BBEEC(inited + 32, sub_1D106F814);
  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v8 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D10BC3B4(&qword_1EC60F530, type metadata accessor for Key, &unk_1D139D0EC);
  v9 = sub_1D138FFEC();

  v10 = [v7 initWithString:v8 attributes:v9];

  [v1 setAttributedText_];
}

void sub_1D10BAAA4()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_activeConstraints;
  sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);

  v4 = sub_1D139044C();

  [v2 deactivateConstraints_];

  v5 = [v1 heightAnchor];
  v6 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel];
  v7 = [v6 font];
  if (v7)
  {
    v8 = v7;
    [v7 lineHeight];
    v10 = v9;

    v11 = [v5 constraintGreaterThanOrEqualToConstant_];
    LODWORD(v12) = 1148846080;
    [v11 setPriority_];
    v13 = [v1 traitCollection];
    v14 = [v13 preferredContentSizeCategory];

    v15 = sub_1D1390B5C();
    sub_1D106F424();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139FBC0;
    v17 = [v6 leadingAnchor];
    v18 = [v1 safeAreaLayoutGuide];
    v19 = [v18 leadingAnchor];

    if (v15)
    {
      if (qword_1EC608BD8 != -1)
      {
        swift_once();
      }

      v20 = [v17 constraintEqualToAnchor:v19 constant:*&qword_1EC62F878];

      *(v16 + 32) = v20;
      v21 = [v6 topAnchor];
      v22 = [v1 &selRef_secondarySystemGroupedBackgroundColor + 2];
      v23 = [v22 topAnchor];

      v24 = [v21 constraintEqualToAnchor:v23 constant:*&qword_1EC62F870];
      *(v16 + 40) = v24;
      v25 = [v6 trailingAnchor];
      v26 = [v1 &selRef_secondarySystemGroupedBackgroundColor + 2];
      v27 = [v26 trailingAnchor];

      v28 = *&qword_1EC62F888;
      v29 = [v25 constraintEqualToAnchor:v27 constant:-(*&qword_1EC62F888 + 8.0)];

      *(v16 + 48) = v29;
      v30 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel];
      v31 = [v30 topAnchor];
      v32 = [v6 bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32 constant:2.0];

      *(v16 + 56) = v33;
      v34 = [v30 trailingAnchor];
      v35 = [v6 trailingAnchor];
      v36 = [v34 constraintEqualToAnchor_];

      *(v16 + 64) = v36;
      v37 = [v30 leadingAnchor];
      v38 = [v6 leadingAnchor];
      v39 = [v37 constraintEqualToAnchor_];

      *(v16 + 72) = v39;
      v40 = [v30 bottomAnchor];
      v41 = [v1 &selRef_secondarySystemGroupedBackgroundColor + 2];
      v42 = [v41 bottomAnchor];

      v43 = [v40 constraintEqualToAnchor:v42 constant:-*&qword_1EC62F880];
      *(v16 + 80) = v43;
      v44 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_chevronView];
      v45 = [v44 firstBaselineAnchor];
      v46 = [v6 firstBaselineAnchor];
      v47 = [v45 constraintEqualToAnchor_];

      *(v16 + 88) = v47;
      v48 = [v44 trailingAnchor];
      v49 = [v1 &selRef_secondarySystemGroupedBackgroundColor + 2];
      v50 = [v49 trailingAnchor];

      v51 = [v48 constraintEqualToAnchor:v50 constant:-v28];
    }

    else
    {
      if (qword_1EC608BD8 != -1)
      {
        swift_once();
      }

      v52 = [v17 constraintEqualToAnchor:v19 constant:*&qword_1EC62F878];

      *(v16 + 32) = v52;
      v53 = [v6 topAnchor];
      v54 = [v1 &selRef_secondarySystemGroupedBackgroundColor + 2];
      v55 = [v54 topAnchor];

      v56 = [v53 &selRef:v55 deactivateConstraints:*&qword_1EC62F870 + 6];
      *(v16 + 40) = v56;
      v57 = [v6 trailingAnchor];
      v58 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel];
      v59 = [v58 leadingAnchor];
      v60 = -*&qword_1EC62F888;
      v61 = [v57 constraintLessThanOrEqualToAnchor:v59 constant:-*&qword_1EC62F888];

      *(v16 + 48) = v61;
      *(v16 + 56) = sub_1D10B84DC();
      v62 = [v58 firstBaselineAnchor];
      v63 = [v6 firstBaselineAnchor];
      v64 = [v62 constraintEqualToAnchor_];

      *(v16 + 64) = v64;
      v65 = [v58 leadingAnchor];
      v66 = [v6 trailingAnchor];
      v67 = [v65 constraintEqualToAnchor:v66 constant:8.0];

      type metadata accessor for UILayoutPriority(0);
      sub_1D10BC3B4(&qword_1EC60A508, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
      sub_1D138F0DC();
      LODWORD(v68) = v77;
      [v67 setPriority_];
      *(v16 + 72) = v67;
      v69 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_chevronView];
      v70 = [v69 centerYAnchor];
      v71 = [v58 centerYAnchor];
      v72 = [v70 constraintEqualToAnchor_];

      *(v16 + 80) = v72;
      *(v16 + 88) = sub_1D10B85DC();
      v48 = [v69 trailingAnchor];
      v73 = [v1 safeAreaLayoutGuide];
      v50 = [v73 trailingAnchor];

      v51 = [v48 constraintEqualToAnchor:v50 constant:v60];
    }

    v74 = v51;

    *(v16 + 96) = v74;
    *(v16 + 104) = v11;
    *&v1[v3] = v16;
    v75 = v11;

    v76 = sub_1D139044C();

    [v2 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D10BB498()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel);
  v2 = objc_opt_self();
  v3 = [v2 _preferredFontForTextStyle_variant_];
  [v1 setFont_];

  v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel);
  v5 = [v2 _preferredFontForTextStyle_variant_];
  [v4 setFont_];
}

void sub_1D10BB580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D13915DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id ConceptFeedItemTitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptFeedItemTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_12Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = swift_beginAccess();
  *(v8 + v9) = v7;
  return a6(v10);
}

double keypath_get_5Tm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

uint64_t sub_1D10BBEEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D10BBF4C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v3 setNumberOfLines_];
  [v3 setLineBreakMode_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v4 = v3;
  LODWORD(v5) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v5];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v2) = v4;
  v6 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel;
  *(v1 + v6) = sub_1D10B83F8();
  v7 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_chevronView;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v8 setContentMode_];
  sub_1D106F934(0, &qword_1EE06A540, 0x1E69DCAB8);
  v9 = sub_1D1390CFC();
  [v8 setImage_];

  v10 = [objc_opt_self() tertiaryLabelColor];
  [v8 setTintColor_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v11) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v12];

  *(v1 + v7) = v8;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___bottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateChevronConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_activeConstraints) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_headerImage) = 0;
  v13 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_title);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateString);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_categoryColor) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesChevron) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode) = 0;
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesHeaderSymbolForAccessibilitySizing) = 1;
  v15 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_baseAccessibilityIdentifier);
  *v15 = 0;
  v15[1] = 0;
  v16 = v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  sub_1D13913BC();
  __break(1u);
}

double sub_1D10BC268(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    sub_1D10BA268();
    sub_1D10BA7F4();

    sub_1D10BAAA4();
    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1D139016C();
  v8 = v7;
  if (v6 != sub_1D139016C() || v8 != v9)
  {
    v11 = sub_1D139162C();

    if (v11)
    {
      return result;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1D10BC3B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D10BC3FC()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 32) & 1) == 0)
  {
    return 0x6E69676F6CLL;
  }

  v5 = *v0;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D13911EC();

  v9 = 0xD000000000000014;
  v10 = 0x80000001D13BA550;
  v6 = [v5 identifier];
  sub_1D138D5CC();

  sub_1D10C7A1C(&qword_1EC60D1C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v7 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v7);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1D3885C10](41, 0xE100000000000000);
  return v9;
}

uint64_t sub_1D10BC5AC(uint64_t a1)
{
  sub_1D10C74B8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v35 - v17;
  v19 = *v1;
  if (*(v1 + 32))
  {
    v20 = *(v1 + 24);
    v21 = [v19 gateway];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 baseURL];

      if (v23)
      {
        sub_1D138D33C();

        v24 = sub_1D138D39C();
        (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
      }

      else
      {
        v30 = sub_1D138D39C();
        (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
      }

      sub_1D10C7940(v8, v11);
    }

    else
    {
      v28 = sub_1D138D39C();
      (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    }
  }

  else
  {
    v20 = *(v1 + 8);
    v25 = [v19 baseURL];
    if (v25)
    {
      v26 = v25;
      sub_1D138D33C();

      v27 = sub_1D138D39C();
      (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
    }

    else
    {
      v29 = sub_1D138D39C();
      (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    }

    v11 = v14;
  }

  sub_1D10C7940(v11, v18);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  sub_1D10C7F90(v18, v5, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v31 = sub_1D138D39C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v5, 1, v31) == 1)
  {
    sub_1D10C79C0(v5, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
    v33 = 0;
  }

  else
  {
    v33 = sub_1D138D30C();
    (*(v32 + 8))(v5, v31);
  }

  sub_1D122101C(a1, v20, v33);

  return sub_1D10C79C0(v18, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
}

id ClinicalAccountLoginSession.__allocating_init(accountStore:presentationAnchor:funnelContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___HRUIClinicalAccountLoginSession_authSession] = 0;
  *&v7[OBJC_IVAR___HRUIClinicalAccountLoginSession_accountStore] = a1;
  *&v7[OBJC_IVAR___HRUIClinicalAccountLoginSession_presentationAnchor] = a2;
  *&v7[OBJC_IVAR___HRUIClinicalAccountLoginSession_funnelContext] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ClinicalAccountLoginSession.init(accountStore:presentationAnchor:funnelContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___HRUIClinicalAccountLoginSession_authSession] = 0;
  *&v3[OBJC_IVAR___HRUIClinicalAccountLoginSession_accountStore] = a1;
  *&v3[OBJC_IVAR___HRUIClinicalAccountLoginSession_presentationAnchor] = a2;
  *&v3[OBJC_IVAR___HRUIClinicalAccountLoginSession_funnelContext] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t ClinicalAccountLoginSession.startLogin(with:loginCancelledHandler:callbackErrorHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_1D13905DC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1D13905AC();
  v15 = v5;
  v16 = a1;
  sub_1D102CE24(a2, a3);

  v17 = sub_1D139059C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v15;
  v18[5] = v16;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  sub_1D10BDAEC(0, 0, v13, &unk_1D139FC08, v18);
}

uint64_t sub_1D10BCD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = sub_1D13905AC();
  v8[4] = sub_1D139059C();
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_1D10BCE00;

  return sub_1D10BD140(a5, a6, a7, a8, v16);
}

uint64_t sub_1D10BCE00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1D139055C();
    v7 = v6;
    v8 = sub_1D10BCFF0;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1D139055C();
    v7 = v9;
    v8 = sub_1D10BCF80;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1D10BCF80()
{
  v1 = v0[7];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D10BCFF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10BD054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D10819BC;

  return sub_1D10BCD0C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D10BD140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[42] = a5;
  v6[43] = v5;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  v7 = sub_1D138F0BC();
  v6[44] = v7;
  v6[45] = *(v7 - 8);
  v6[46] = swift_task_alloc();
  sub_1D13905AC();
  v6[47] = sub_1D139059C();
  v9 = sub_1D139055C();
  v6[48] = v9;
  v6[49] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D10BD23C, v9, v8);
}

uint64_t sub_1D10BD23C(uint64_t a1)
{
  v30 = v1;
  if (*(v1[43] + OBJC_IVAR___HRUIClinicalAccountLoginSession_authSession))
  {

    v2 = *MEMORY[0x1E696B7D0];
    v3 = MEMORY[0x1E69E6158];
    sub_1D10C750C(0, &unk_1EC60A5B0, &qword_1EC609F30, MEMORY[0x1E69E6158]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    *(inited + 32) = sub_1D139016C();
    *(inited + 72) = v3;
    *(inited + 40) = v5;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x80000001D13BA7F0;
    v6 = v2;
    sub_1D109D2C4(inited);
    swift_setDeallocating();
    sub_1D10C75C8(inited + 32, &qword_1EC609F30, v3);
    v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v8 = sub_1D138FFEC();

    [v7 initWithDomain:v6 code:100 userInfo:v8];

    swift_willThrow();

    v9 = v1[1];

    return v9();
  }

  else
  {
    v11 = v1[38];
    sub_1D138F06C();
    v12 = v11;
    v13 = sub_1D138F0AC();
    v14 = sub_1D139081C();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v1[45];
    v16 = v1[46];
    v18 = v1[44];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      v21 = HKSensitiveLogItem();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v22 = sub_1D13901EC();
      v24 = sub_1D11DF718(v22, v23, &v29);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D101F000, v13, v14, "ClinicalAccountLoginSession: initializing to start login to gateway %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1D38882F0](v20, -1, -1);
      MEMORY[0x1D38882F0](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    v25 = *(v1[43] + OBJC_IVAR___HRUIClinicalAccountLoginSession_accountStore);
    v26 = v1[38];
    v1[2] = v1;
    v1[7] = v1 + 37;
    v1[3] = sub_1D10BD630;
    v27 = swift_continuation_init();
    sub_1D10C7CEC(0);
    v1[27] = v28;
    v1[20] = MEMORY[0x1E69E9820];
    v1[21] = 1107296256;
    v1[22] = sub_1D10BE304;
    v1[23] = &block_descriptor_75;
    v1[24] = v27;
    [v25 beginInitialLoginSessionForGateway:v26 completion:v1 + 20];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }
}

uint64_t sub_1D10BD630()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);
  if (v2)
  {
    v5 = sub_1D10BD9F4;
  }

  else
  {
    v5 = sub_1D10BD760;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D10BD760()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  *(v0 + 408) = v3;
  v4 = *(v1 + OBJC_IVAR___HRUIClinicalAccountLoginSession_funnelContext);
  *(v0 + 224) = v2;
  *(v0 + 256) = 0;
  *(v0 + 232) = v4;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 416) = v6;
  *v6 = v0;
  v6[1] = sub_1D10BD83C;
  v7 = *(v0 + 336);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v10 = *(v0 + 312);

  return sub_1D10BE3E0(v3, v0 + 224, v10, v8, v9, v7);
}

uint64_t sub_1D10BD83C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_1D10BDA70;
  }

  else
  {
    v5 = sub_1D10BD978;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D10BD978()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 408);

  return v1(v2);
}

uint64_t sub_1D10BD9F4()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10BDA70()
{
  v1 = v0[51];
  v2 = v0[38];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D10BDAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1D10C7F90(a3, v22 - v10, &qword_1EE06A650, v8);
  v12 = sub_1D13905DC();
  v13 = *(v12 - 8);
  LODWORD(v8) = (*(v13 + 48))(v11, 1, v12);

  if (v8 == 1)
  {
    sub_1D10C79C0(v11, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D13905CC();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D139055C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1D139021C() + 32;
      sub_1D106F934(0, &qword_1EC60A600, 0x1E69A3FA0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D10C79C0(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0]);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D10C79C0(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  sub_1D106F934(0, &qword_1EC60A600, 0x1E69A3FA0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D10BDDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1D10C7F90(a3, v22 - v10, &qword_1EE06A650, v8);
  v12 = sub_1D13905DC();
  v13 = *(v12 - 8);
  LODWORD(v8) = (*(v13 + 48))(v11, 1, v12);

  if (v8 == 1)
  {
    sub_1D10C79C0(v11, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D13905CC();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D139055C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D139021C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D10C79C0(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0]);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D10C79C0(a3, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t *sub_1D10BE304(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D10BE3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = sub_1D138D39C();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  v9 = sub_1D138F0BC();
  v7[28] = v9;
  v7[29] = *(v9 - 8);
  v7[30] = swift_task_alloc();
  sub_1D13905AC();
  v7[31] = sub_1D139059C();
  v11 = sub_1D139055C();
  v7[32] = v11;
  v7[33] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D10BE53C, v11, v10);
}

uint64_t sub_1D10BE53C(uint64_t a1)
{
  v53 = v1;
  if (*(v1[24] + OBJC_IVAR___HRUIClinicalAccountLoginSession_authSession))
  {

    sub_1D10C7DEC();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();

    v3 = v1[1];

    return v3();
  }

  else
  {
    v50 = OBJC_IVAR___HRUIClinicalAccountLoginSession_authSession;
    v51 = v1[24];
    v5 = v1[18];
    v6 = v1[19];
    sub_1D138F06C();
    sub_1D10C7D7C(v6, (v1 + 2));
    v7 = v5;
    v8 = sub_1D138F0AC();
    v9 = sub_1D139081C();
    sub_1D10C7DB4(v6);

    v10 = os_log_type_enabled(v8, v9);
    v12 = v1[29];
    v11 = v1[30];
    v13 = v1[28];
    if (v10)
    {
      v48 = v9;
      v14 = v1[26];
      v15 = v1[27];
      v46 = v1[25];
      v47 = v1[30];
      v49 = v1[28];
      v16 = v1[18];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v52[0] = v18;
      *v17 = 136315394;
      v19 = sub_1D10BC3FC();
      v21 = sub_1D11DF718(v19, v20, v52);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = [v16 loginURL];
      sub_1D138D33C();

      v23 = sub_1D138D2DC();
      v25 = v24;
      (*(v14 + 8))(v15, v46);
      v1[16] = v23;
      v1[17] = v25;
      sub_1D13916AC();
      v26 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v27 = sub_1D13901EC();
      v29 = sub_1D11DF718(v27, v28, v52);

      *(v17 + 14) = v29;
      _os_log_impl(&dword_1D101F000, v8, v48, "ClinicalAccountLoginSession: %s starting at %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v18, -1, -1);
      MEMORY[0x1D38882F0](v17, -1, -1);

      (*(v12 + 8))(v47, v49);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v31 = v1[23];
    v30 = v1[24];
    v32 = v1[21];
    v33 = v1[22];
    v34 = v1[19];
    v35 = v1[20];
    v36 = v1[18];
    sub_1D10BC5AC(5);
    v37 = *(v30 + OBJC_IVAR___HRUIClinicalAccountLoginSession_accountStore);
    type metadata accessor for ClinicalAccountLoginSessionCallbackHandler();
    v38 = swift_allocObject();
    v1[34] = v38;
    v39 = v37;
    swift_defaultActor_initialize();
    *(v38 + 160) = 0;
    v40 = *v34;
    v41 = *(v34 + 16);
    *(v38 + 144) = *(v34 + 32);
    *(v38 + 112) = v40;
    *(v38 + 128) = v41;
    *(v38 + 152) = v39;
    *(v38 + 168) = v35;
    *(v38 + 176) = v32;
    *(v38 + 184) = v33;
    *(v38 + 192) = v31;
    sub_1D10C7D7C(v34, (v1 + 7));

    sub_1D102CE24(v35, v32);
    v42 = sub_1D10C0530(v36, sub_1D10C7DE4, v38);
    v1[35] = v42;

    v43 = *(v51 + v50);
    *(v51 + v50) = v42;
    v44 = v42;

    v45 = v44;

    return MEMORY[0x1EEE6DFA0](sub_1D10BE95C, v38, 0);
  }
}

uint64_t sub_1D10BE95C()
{
  v1 = v0[34];
  v2 = *(v1 + 160);
  if (v2)
  {
    [v2 cancel];
    v3 = *(v1 + 160);
    v1 = v0[34];
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 160) = v0[35];

  v4 = v0[32];
  v5 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1D10BE9EC, v4, v5);
}

uint64_t sub_1D10BE9EC()
{
  v1 = *(v0 + 280);

  [v1 start];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ClinicalAccountLoginSession.startRelogin(to:from:profile:loginCancelledHandler:callbackErrorHandler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_1D13905DC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1D13905AC();
  v18 = v7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_1D102CE24(a4, a5);

  v22 = sub_1D139059C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v18;
  v23[5] = v19;
  v23[6] = v20;
  v23[7] = v21;
  v23[8] = a4;
  v23[9] = a5;
  v23[10] = v27;
  v23[11] = a7;
  sub_1D10BDDF8(0, 0, v16, &unk_1D139FC18, v23);
}

uint64_t sub_1D10BEC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v14;
  *(v8 + 64) = v13;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  sub_1D13905AC();
  *(v8 + 88) = sub_1D139059C();
  v10 = sub_1D139055C();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D10BECF0, v10, v9);
}

uint64_t sub_1D10BECF0()
{
  v1 = [*(v0 + 48) healthStore];
  v2 = [v1 profileIdentifier];
  *(v0 + 112) = v2;

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1D10BEDD0;
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  return sub_1D10BF148(v9, v8, v2, v6, v7, v4, v5);
}

uint64_t sub_1D10BEDD0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D10BEF50;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D10BEEEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D10BEEEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10BEF50()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  *(v0 + 16) = v1;
  v3 = v1;
  sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast() && *(v0 + 136) == 1)
  {

    sub_1D10BFE40(1);
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D10BF048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D10819BC;

  return sub_1D10BEC3C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D10BF148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[46] = a7;
  v8[47] = v7;
  v8[44] = a5;
  v8[45] = a6;
  v8[42] = a3;
  v8[43] = a4;
  v8[40] = a1;
  v8[41] = a2;
  v9 = sub_1D138F0BC();
  v8[48] = v9;
  v8[49] = *(v9 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  sub_1D13905AC();
  v8[53] = sub_1D139059C();
  v11 = sub_1D139055C();
  v8[54] = v11;
  v8[55] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D10BF260, v11, v10);
}

uint64_t sub_1D10BF260(uint64_t a1)
{
  v64 = v1;
  v2 = *(v1 + 320);
  sub_1D138F06C();
  v3 = v2;
  v4 = sub_1D138F0AC();
  v5 = sub_1D139081C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 416);
    v7 = *(v1 + 384);
    v8 = *(v1 + 392);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v63[0] = v10;
    *v9 = 136315138;
    v11 = HKSensitiveLogItem();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v12 = sub_1D13901EC();
    v14 = sub_1D11DF718(v12, v13, v63);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D101F000, v4, v5, "ClinicalAccountLoginSession: initializing to start relogin to account %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    v15 = *(v8 + 8);
    v15(v6, v7);
  }

  else
  {
    v16 = *(v1 + 416);
    v17 = *(v1 + 384);
    v18 = *(v1 + 392);

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v19 = [*(v1 + 320) gateway];
  if (!v19)
  {
    v21 = *(v1 + 320);
    sub_1D138F06C();
    v22 = v21;
    v23 = sub_1D138F0AC();
    v24 = sub_1D139081C();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v1 + 400);
    v27 = *(v1 + 384);
    if (v25)
    {
      v28 = swift_slowAlloc();
      v61 = v15;
      v63[0] = swift_slowAlloc();
      v29 = v63[0];
      *v28 = 136315138;
      v30 = HKSensitiveLogItem();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v31 = sub_1D13901EC();
      v33 = sub_1D11DF718(v31, v32, v63);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1D101F000, v23, v24, "ClinicalAccountLoginSession: given account %s has no gateway, unable to check gateway status to determine whether login should be blocked, proceeding.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1D38882F0](v29, -1, -1);
      MEMORY[0x1D38882F0](v28, -1, -1);

      v61(v26, v27);
    }

    else
    {

      v15(v26, v27);
    }

LABEL_12:
    v52 = *(*(v1 + 376) + OBJC_IVAR___HRUIClinicalAccountLoginSession_accountStore);
    v53 = *(v1 + 320);
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 312;
    *(v1 + 24) = sub_1D10BF8F4;
    v54 = swift_continuation_init();
    sub_1D10C7CEC(0);
    *(v1 + 136) = v55;
    *(v1 + 80) = MEMORY[0x1E69E9820];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_1D10BE304;
    *(v1 + 104) = &block_descriptor_89;
    *(v1 + 112) = v54;
    [v52 beginReloginSessionForAccount:v53 completion:v1 + 80];

    return MEMORY[0x1EEE6DEC8](v1 + 16);
  }

  v20 = v19;
  if ([v19 status] < 2)
  {

    goto LABEL_12;
  }

  v34 = *(v1 + 320);

  sub_1D138F06C();
  v35 = v34;
  v36 = v20;
  v37 = sub_1D138F0AC();
  v38 = sub_1D13907FC();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v1 + 408);
  v41 = *(v1 + 384);
  if (v39)
  {
    v62 = v15;
    v42 = swift_slowAlloc();
    v60 = v41;
    v43 = swift_slowAlloc();
    v63[0] = v43;
    *v42 = 136315394;
    v44 = HKSensitiveLogItem();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v45 = sub_1D13901EC();
    v59 = v40;
    v47 = sub_1D11DF718(v45, v46, v63);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v48 = HKSensitiveLogItem();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v49 = sub_1D13901EC();
    v51 = sub_1D11DF718(v49, v50, v63);

    *(v42 + 14) = v51;
    _os_log_impl(&dword_1D101F000, v37, v38, "ClinicalAccountLoginSession: gateway %s for account %s does not currently allow logging in, bailing out", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v43, -1, -1);
    MEMORY[0x1D38882F0](v42, -1, -1);

    v62(v59, v60);
  }

  else
  {

    v15(v40, v41);
  }

  sub_1D10C7DEC();
  swift_allocError();
  *v56 = 1;
  swift_willThrow();

  v57 = *(v1 + 8);

  return v57();
}

uint64_t sub_1D10BF8F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 448) = v2;
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);
  if (v2)
  {
    v5 = sub_1D10BFD0C;
  }

  else
  {
    v5 = sub_1D10BFA24;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D10BFA24()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  *(v0 + 456) = v5;
  v6 = *(v1 + OBJC_IVAR___HRUIClinicalAccountLoginSession_funnelContext);
  *(v0 + 144) = v4;
  *(v0 + 152) = v3;
  *(v0 + 160) = v2;
  *(v0 + 168) = v6;
  *(v0 + 176) = 1;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1D10BFB18;
  v11 = *(v0 + 368);
  v12 = *(v0 + 352);
  v13 = *(v0 + 360);
  v14 = *(v0 + 344);

  return sub_1D10BE3E0(v5, v0 + 144, v14, v12, v13, v11);
}

uint64_t sub_1D10BFB18()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_1D10BFD9C;
  }

  else
  {
    v5 = sub_1D10BFC54;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D10BFC54()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D10BFD0C()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10BFD9C()
{
  v1 = v0[57];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];

  v5 = v0[1];

  return v5();
}

id sub_1D10BFE40(char a1)
{
  v2 = *MEMORY[0x1E696B7D0];
  v3 = MEMORY[0x1E69E6158];
  sub_1D10C750C(0, &unk_1EC60A5B0, &qword_1EC609F30, MEMORY[0x1E69E6158]);
  if (a1)
  {
    v4 = "v24@?0@NSURL8@NSError16";
  }

  else
  {
    v4 = "LoginSession8@NSError16";
  }

  if (a1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a1)
  {
    v6 = 110;
  }

  else
  {
    v6 = 100;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  *(inited + 32) = sub_1D139016C();
  *(inited + 72) = v3;
  *(inited + 40) = v8;
  *(inited + 48) = v5;
  *(inited + 56) = v4 | 0x8000000000000000;
  v9 = v2;
  sub_1D109D2C4(inited);
  swift_setDeallocating();
  sub_1D10C75C8(inited + 32, &qword_1EC609F30, v3);
  v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v11 = sub_1D138FFEC();

  v12 = [v10 initWithDomain:v9 code:v6 userInfo:v11];

  return v12;
}

uint64_t sub_1D10C023C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = MEMORY[0x1E6968FB0];
  sub_1D10C74B8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v23 - v10;
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_1D13905DC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1D10C7F90(a1, v11, &qword_1EC60A5F0, v6);
  sub_1D13905AC();

  v16 = a2;
  v17 = sub_1D139059C();
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v17;
  v20[3] = v21;
  v20[4] = a3;
  sub_1D10C7940(v11, v20 + v18);
  *(v20 + v19) = a2;
  sub_1D107877C(0, 0, v14, &unk_1D139FE40, v20);
}

uint64_t sub_1D10C046C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1D13905AC();
  v6[3] = sub_1D139059C();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1D10AA380;

  return sub_1D10C0C24(a5, a6);
}

id sub_1D10C0530(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a2;
  v54 = a3;
  v6 = sub_1D138D39C();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138D0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v50 - v19;
  v52 = a1;
  v21 = [a1 callbackURLComponents];
  sub_1D138D06C();

  sub_1D138D0AC();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v20, v8);
  if (!v23)
  {
    goto LABEL_7;
  }

  v25 = sub_1D13901FC();
  v27 = v26;

  if (v25 == 0x7370747468 && v27 == 0xE500000000000000)
  {

    goto LABEL_9;
  }

  v29 = sub_1D139162C();

  if (v29)
  {
LABEL_9:
    v35 = v52;
    v36 = [v52 callbackURLComponents];
    sub_1D138D06C();

    sub_1D138D08C();
    v24(v16, v8);
    v37 = objc_opt_self();
    v38 = sub_1D139012C();

    v39 = [v35 callbackURLComponents];
    v40 = v51;
    sub_1D138D06C();

    sub_1D138D09C();
    v41 = v40;
    v30 = v35;
    v24(v41, v8);
    v33 = sub_1D139012C();

    v34 = [v37 callbackWithHTTPSHost:v38 path:v33];

    goto LABEL_10;
  }

LABEL_7:
  v30 = v52;
  v31 = [v52 callbackURLComponents];
  sub_1D138D06C();

  sub_1D138D0AC();
  v24(v11, v8);
  v32 = objc_opt_self();
  v33 = sub_1D139012C();

  v34 = [v32 callbackWithCustomScheme_];
LABEL_10:

  v42 = v34;
  v43 = [v30 loginURL];
  v44 = v55;
  sub_1D138D33C();

  v45 = objc_allocWithZone(MEMORY[0x1E695A950]);
  v46 = sub_1D138D30C();
  aBlock[4] = v53;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10C6618;
  aBlock[3] = &block_descriptor_81;
  v47 = _Block_copy(aBlock);

  v48 = [v45 initWithURL:v46 callback:v42 completionHandler:v47];
  _Block_release(v47);

  (*(v56 + 8))(v44, v57);

  [v48 setPrefersEphemeralWebBrowserSession_];
  [v48 setPresentationContextProvider_];

  return v48;
}

id ClinicalAccountLoginSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClinicalAccountLoginSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10C0C24(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v4 = sub_1D138F0BC();
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  sub_1D10C74B8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v3[54] = swift_task_alloc();
  v5 = sub_1D138D39C();
  v3[55] = v5;
  v3[56] = *(v5 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D10C0DC8, v2, 0);
}

uint64_t sub_1D10C0DC8(uint64_t a1)
{
  v129 = v1;
  v2 = *(v1 + 368);
  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = *(v1 + 440);
    v5 = *(v1 + 448);
    v6 = *(v1 + 432);
    v7 = *(v1 + 352);
    *(v2 + 160) = 0;

    sub_1D10C7F90(v7, v6, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      v8 = *(v1 + 360);
      sub_1D10C79C0(*(v1 + 432), &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
      if (v8 && (*(v1 + 312) = v8, v9 = v8, sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]), type metadata accessor for ASWebAuthenticationSessionError(0), (swift_dynamicCast() & 1) != 0))
      {
        v10 = *(v1 + 320);
        *(v1 + 496) = v10;
        *(v1 + 328) = v10;
        sub_1D10C7A1C(&qword_1EC609510, 255, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D139E2FC);
        sub_1D138D26C();
        if (*(v1 + 336) != 1)
        {
          sub_1D138F06C();

          v100 = v10;
          v101 = sub_1D138F0AC();
          v102 = sub_1D13907FC();

          v103 = os_log_type_enabled(v101, v102);
          v104 = *(v1 + 408);
          v105 = *(v1 + 376);
          v106 = *(v1 + 384);
          if (v103)
          {
            v127 = *(v1 + 408);
            v107 = *(v1 + 368);
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v128 = v109;
            *v108 = 136315394;
            v110 = *(v107 + 144);
            v111 = *(v107 + 128);
            *(v1 + 96) = *(v107 + 112);
            *(v1 + 112) = v111;
            *(v1 + 128) = v110;
            v112 = sub_1D10BC3FC();
            v124 = v105;
            v114 = sub_1D11DF718(v112, v113, &v128);

            *(v108 + 4) = v114;
            *(v108 + 12) = 2080;
            *(v1 + 344) = v100;
            v115 = v100;
            v116 = sub_1D13901EC();
            v118 = sub_1D11DF718(v116, v117, &v128);

            *(v108 + 14) = v118;
            _os_log_impl(&dword_1D101F000, v101, v102, "ClinicalAccountLoginSession: %s failed with session error %s", v108, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D38882F0](v109, -1, -1);
            MEMORY[0x1D38882F0](v108, -1, -1);

            (*(v106 + 8))(v127, v124);
          }

          else
          {

            (*(v106 + 8))(v104, v105);
          }

          v119 = v100;
          v99 = sub_1D10C1CC0;
          goto LABEL_27;
        }

        sub_1D138F06C();

        v11 = sub_1D138F0AC();
        v12 = sub_1D139081C();

        v13 = os_log_type_enabled(v11, v12);
        v14 = *(v1 + 416);
        v15 = *(v1 + 376);
        v16 = *(v1 + 384);
        if (v13)
        {
          v17 = *(v1 + 368);
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v128 = v19;
          *v18 = 136315138;
          v20 = *(v17 + 144);
          v21 = *(v17 + 128);
          *(v1 + 136) = *(v17 + 112);
          *(v1 + 152) = v21;
          *(v1 + 168) = v20;
          v22 = sub_1D10BC3FC();
          v24 = sub_1D11DF718(v22, v23, &v128);

          *(v18 + 4) = v24;
          _os_log_impl(&dword_1D101F000, v11, v12, "ClinicalAccountLoginSession: %s was canceled", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
          MEMORY[0x1D38882F0](v19, -1, -1);
          MEMORY[0x1D38882F0](v18, -1, -1);
        }

        (*(v16 + 8))(v14, v15);
        v25 = *(v1 + 368);
        v26 = *(v25 + 144);
        v27 = *(v25 + 128);
        *(v1 + 176) = *(v25 + 112);
        *(v1 + 192) = v27;
        *(v1 + 208) = v26;
        sub_1D10BC5AC(7);
        v28 = sub_1D10C1AE4;
      }

      else
      {
        sub_1D138F06C();

        v74 = v8;
        v75 = sub_1D138F0AC();
        v76 = sub_1D13907FC();

        v77 = os_log_type_enabled(v75, v76);
        v78 = *(v1 + 400);
        v80 = *(v1 + 376);
        v79 = *(v1 + 384);
        if (v77)
        {
          v123 = *(v1 + 376);
          v126 = *(v1 + 400);
          v82 = *(v1 + 360);
          v81 = *(v1 + 368);
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v128 = v84;
          *v83 = 136315394;
          v85 = *(v81 + 144);
          v86 = *(v81 + 128);
          *(v1 + 56) = *(v81 + 112);
          *(v1 + 72) = v86;
          *(v1 + 88) = v85;
          v87 = sub_1D10BC3FC();
          v89 = sub_1D11DF718(v87, v88, &v128);

          *(v83 + 4) = v89;
          *(v83 + 12) = 2080;
          *(v1 + 304) = v82;
          v90 = v8;
          sub_1D10C68DC(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
          v91 = sub_1D13901EC();
          v93 = sub_1D11DF718(v91, v92, &v128);

          *(v83 + 14) = v93;
          _os_log_impl(&dword_1D101F000, v75, v76, "ClinicalAccountLoginSession: %s failed with error %s", v83, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38882F0](v84, -1, -1);
          MEMORY[0x1D38882F0](v83, -1, -1);

          (*(v79 + 8))(v126, v123);
        }

        else
        {

          (*(v79 + 8))(v78, v80);
        }

        v97 = v8;
        if (!v8)
        {
          v97 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696B7D0] code:0 userInfo:0];
        }

        *(v1 + 520) = v97;
        v98 = v8;
        v28 = sub_1D10C1EA4;
      }

      v99 = v28;
LABEL_27:

      return MEMORY[0x1EEE6DFA0](v99, 0, 0);
    }

    v45 = *(v1 + 456);
    v46 = *(v1 + 464);
    v47 = *(v1 + 440);
    v48 = *(v1 + 448);
    (*(v48 + 32))(v46, *(v1 + 432), v47);
    sub_1D138F06C();
    (*(v48 + 16))(v45, v46, v47);

    v49 = sub_1D138F0AC();
    v50 = sub_1D139081C();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v1 + 448);
    v53 = *(v1 + 456);
    v54 = *(v1 + 440);
    v55 = *(v1 + 424);
    v56 = *(v1 + 376);
    v57 = *(v1 + 384);
    if (v51)
    {
      v125 = *(v1 + 424);
      v58 = *(v1 + 368);
      v120 = *(v1 + 440);
      v59 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v128 = v122;
      *v59 = 136315394;
      v60 = *(v58 + 144);
      v61 = *(v58 + 128);
      *(v1 + 216) = *(v58 + 112);
      *(v1 + 232) = v61;
      *(v1 + 248) = v60;
      v62 = sub_1D10BC3FC();
      v121 = v56;
      v64 = sub_1D11DF718(v62, v63, &v128);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      *(v1 + 288) = sub_1D138D2DC();
      *(v1 + 296) = v65;
      sub_1D13916AC();
      v66 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v67 = sub_1D13901EC();
      v69 = v68;
      v72 = *(v52 + 8);
      v70 = v52 + 8;
      v71 = v72;
      v72(v53, v120);
      v73 = sub_1D11DF718(v67, v69, &v128);

      *(v59 + 14) = v73;
      _os_log_impl(&dword_1D101F000, v49, v50, "ClinicalAccountLoginSession: %s finished with callback URL %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v122, -1, -1);
      MEMORY[0x1D38882F0](v59, -1, -1);

      (*(v57 + 8))(v125, v121);
    }

    else
    {

      v94 = *(v52 + 8);
      v70 = v52 + 8;
      v71 = v94;
      v94(v53, v54);
      (*(v57 + 8))(v55, v56);
    }

    *(v1 + 472) = v70;
    *(v1 + 480) = v71;
    v95 = swift_task_alloc();
    *(v1 + 488) = v95;
    *v95 = v1;
    v95[1] = sub_1D10C1900;
    v96 = *(v1 + 464);

    return sub_1D10C2084(v96);
  }

  else
  {
    sub_1D138F06C();

    v29 = sub_1D138F0AC();
    v30 = sub_1D13907FC();

    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v1 + 384);
    v32 = *(v1 + 392);
    v34 = *(v1 + 376);
    if (v31)
    {
      v35 = *(v1 + 368);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v128 = v37;
      *v36 = 136315138;
      v38 = *(v35 + 144);
      v39 = *(v35 + 128);
      *(v1 + 16) = *(v35 + 112);
      *(v1 + 32) = v39;
      *(v1 + 48) = v38;
      v40 = sub_1D10BC3FC();
      v42 = sub_1D11DF718(v40, v41, &v128);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_1D101F000, v29, v30, "ClinicalAccountLoginSession: %s got a 2nd or more completion callback, ignoring", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1D38882F0](v37, -1, -1);
      MEMORY[0x1D38882F0](v36, -1, -1);
    }

    (*(v33 + 8))(v32, v34);

    v43 = *(v1 + 8);

    return v43();
  }
}

uint64_t sub_1D10C1900()
{
  v1 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1D10C1A10, v1, 0);
}

uint64_t sub_1D10C1A10()
{
  (*(v0 + 480))(*(v0 + 464), *(v0 + 440));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10C1AE4()
{
  sub_1D13905AC();
  *(v0 + 504) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10C1B78, v2, v1);
}

uint64_t sub_1D10C1B78()
{
  v1 = *(v0 + 368);

  v3 = *(v1 + 168);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1D10C1BFC, v4, 0);
}

uint64_t sub_1D10C1BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10C1CC0()
{
  sub_1D13905AC();
  *(v0 + 512) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10C1D54, v2, v1);
}

uint64_t sub_1D10C1D54()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 368);

  (*(v2 + 184))(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D10C1DDC, v2, 0);
}

uint64_t sub_1D10C1DDC()
{
  v1 = *(v0 + 496);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D10C1EA4()
{
  sub_1D13905AC();
  *(v0 + 528) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10C1F38, v2, v1);
}

uint64_t sub_1D10C1F38()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 368);

  (*(v2 + 184))(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D10C1FC0, v2, 0);
}

uint64_t sub_1D10C1FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10C2084(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_1D138D39C();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v4 = sub_1D138F0BC();
  v2[46] = v4;
  v2[47] = *(v4 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v5 = sub_1D138D5EC();
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = type metadata accessor for HealthRecordsURLParsingResult(0);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D10C2268, v1, 0);
}

uint64_t sub_1D10C2268()
{
  v106 = v0;
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 312);
  type metadata accessor for HealthRecordsURLHandler();
  *(v0 + 456) = swift_initStackObject();
  sub_1D11C6ED8(v3, v1);
  sub_1D10C7774(v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      sub_1D138F06C();

      v35 = sub_1D138F0AC();
      v36 = sub_1D139081C();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 392);
      v39 = *(v0 + 368);
      v40 = *(v0 + 376);
      if (v37)
      {
        v41 = *(v0 + 320);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v104 = v43;
        *v42 = 136315138;
        v44 = *(v41 + 144);
        v45 = *(v41 + 128);
        *(v0 + 136) = *(v41 + 112);
        *(v0 + 152) = v45;
        *(v0 + 168) = v44;
        v46 = sub_1D10BC3FC();
        v48 = sub_1D11DF718(v46, v47, &v104);

        *(v42 + 4) = v48;
        _os_log_impl(&dword_1D101F000, v35, v36, "ClinicalAccountLoginSession: %s was not granted access, we're done here", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1D38882F0](v43, -1, -1);
        MEMORY[0x1D38882F0](v42, -1, -1);
      }

      (*(v40 + 8))(v38, v39);
      v49 = *(v0 + 320);
      v50 = *(v49 + 144);
      v51 = *(v49 + 128);
      *(v0 + 176) = *(v49 + 112);
      *(v0 + 192) = v51;
      *(v0 + 208) = v50;
      sub_1D10BC5AC(7);
      v52 = sub_1D10C2FB8;
      goto LABEL_16;
    case 8:
      v15 = **(v0 + 440);
      *(v0 + 480) = v15;
      sub_1D138F06C();

      v16 = v15;
      v17 = sub_1D138F0AC();
      v18 = sub_1D13907FC();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 400);
      v22 = *(v0 + 368);
      v21 = *(v0 + 376);
      if (v19)
      {
        v102 = *(v0 + 400);
        v23 = *(v0 + 320);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v104 = v25;
        *v24 = 136315394;
        v26 = *(v23 + 144);
        v27 = *(v23 + 128);
        *(v0 + 216) = *(v23 + 112);
        *(v0 + 232) = v27;
        *(v0 + 248) = v26;
        v28 = sub_1D10BC3FC();
        v30 = sub_1D11DF718(v28, v29, &v104);

        *(v24 + 4) = v30;
        *(v24 + 12) = 2080;
        *(v0 + 304) = v15;
        v31 = v15;
        sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
        v32 = sub_1D13901EC();
        v34 = sub_1D11DF718(v32, v33, &v104);

        *(v24 + 14) = v34;
        _os_log_impl(&dword_1D101F000, v17, v18, "ClinicalAccountLoginSession: %s got redirected with error %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v25, -1, -1);
        MEMORY[0x1D38882F0](v24, -1, -1);

        (*(v21 + 8))(v102, v22);
      }

      else
      {

        (*(v21 + 8))(v20, v22);
      }

      sub_1D10C7834(0);
      *(v0 + 132) = *(v80 + 48);
      v52 = sub_1D10C2D8C;
LABEL_16:
      v81 = v52;
      goto LABEL_19;
    case 7:
      v5 = *(v0 + 440);
      v7 = *(v0 + 416);
      v6 = *(v0 + 424);
      v8 = *(v0 + 408);
      v9 = *v5;
      v10 = v5[1];
      *(v0 + 464) = v10;
      sub_1D10C78D4(0);
      (*(v7 + 32))(v6, v5 + *(v11 + 48), v8);
      v12 = swift_task_alloc();
      *(v0 + 472) = v12;
      *v12 = v0;
      v12[1] = sub_1D10C2B64;
      v13 = *(v0 + 424);

      return sub_1D10C33DC(v9, v10, v13);
  }

  v53 = *(v0 + 360);
  v54 = *(v0 + 328);
  v55 = *(v0 + 336);
  v56 = *(v0 + 312);
  sub_1D138F06C();
  v57 = *(v55 + 16);
  v57(v53, v56, v54);

  v58 = sub_1D138F0AC();
  v59 = sub_1D139080C();

  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 384);
  v103 = *(v0 + 376);
  v62 = *(v0 + 360);
  v63 = *(v0 + 368);
  if (v60)
  {
    v96 = *(v0 + 352);
    v101 = *(v0 + 384);
    v64 = *(v0 + 336);
    v65 = *(v0 + 344);
    v100 = v59;
    v66 = *(v0 + 320);
    v67 = *(v0 + 328);
    log = v58;
    v68 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v104 = v99;
    *v68 = 136315394;
    v69 = *(v66 + 144);
    v70 = *(v66 + 128);
    *(v0 + 96) = *(v66 + 112);
    *(v0 + 112) = v70;
    *(v0 + 128) = v69;
    v71 = sub_1D10BC3FC();
    v98 = v63;
    v73 = sub_1D11DF718(v71, v72, &v104);

    *(v68 + 4) = v73;
    *(v68 + 12) = 2080;
    v57(v96, v62, v67);
    v57(v65, v96, v67);
    sub_1D13916AC();
    v74 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v75 = sub_1D13901EC();
    v77 = v76;
    v78 = *(v64 + 8);
    v78(v96, v67);
    v78(v62, v67);
    v79 = sub_1D11DF718(v75, v77, &v104);

    *(v68 + 14) = v79;
    _os_log_impl(&dword_1D101F000, log, v100, "ClinicalAccountLoginSession: %s got an unexpected callback URL %s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v99, -1, -1);
    MEMORY[0x1D38882F0](v68, -1, -1);

    (*(v103 + 8))(v101, v98);
  }

  else
  {
    v83 = *(v0 + 328);
    v82 = *(v0 + 336);

    (*(v82 + 8))(v62, v83);
    (*(v103 + 8))(v61, v63);
  }

  v84 = *MEMORY[0x1E696B7D0];
  v85 = MEMORY[0x1E69E6158];
  sub_1D10C750C(0, &unk_1EC60A5B0, &qword_1EC609F30, MEMORY[0x1E69E6158]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  *(inited + 32) = sub_1D139016C();
  *(inited + 40) = v87;
  v104 = 0;
  v105 = 0xE000000000000000;
  v88 = v84;
  sub_1D13911EC();

  v104 = 0xD00000000000001DLL;
  v105 = 0x80000001D13BA780;
  sub_1D10C7A1C(&qword_1EC60A5D8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v89 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v89);

  v90 = v104;
  v91 = v105;
  *(inited + 72) = v85;
  *(inited + 48) = v90;
  *(inited + 56) = v91;
  sub_1D109D2C4(inited);
  swift_setDeallocating();
  sub_1D10C75C8(inited + 32, &qword_1EC609F30, v85);
  v92 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v93 = sub_1D138FFEC();

  v94 = [v92 initWithDomain:v88 code:3 userInfo:v93];
  *(v0 + 504) = v94;

  v95 = v94;
  v81 = sub_1D10C31CC;
LABEL_19:

  return MEMORY[0x1EEE6DFA0](v81, 0, 0);
}

uint64_t sub_1D10C2B64()
{
  v1 = *(*v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1D10C2C90, v1, 0);
}

uint64_t sub_1D10C2C90()
{
  v1 = v0[56];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];

  (*(v3 + 8))(v2, v4);
  sub_1D10C77D8(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D10C2D8C()
{
  sub_1D13905AC();
  *(v0 + 488) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10C2E20, v2, v1);
}

uint64_t sub_1D10C2E20()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 320);

  (*(v2 + 184))(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D10C2EA4, v2, 0);
}

uint64_t sub_1D10C2EA4()
{
  v1 = *(v0 + 132);
  v2 = *(v0 + 480);
  v3 = *(v0 + 448);
  v4 = *(v0 + 440);

  sub_1D10C77D8(v3);
  sub_1D10C79C0(v4 + v1, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D10C2FB8()
{
  sub_1D13905AC();
  *(v0 + 496) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10C304C, v2, v1);
}

uint64_t sub_1D10C304C()
{
  v1 = *(v0 + 320);

  v3 = *(v1 + 168);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1D10C30D0, v4, 0);
}

uint64_t sub_1D10C30D0()
{
  v1 = v0[56];
  v2 = v0[55];
  v3 = v0[51];
  v4 = v0[52];

  sub_1D10C77D8(v1);
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D10C31CC()
{
  sub_1D13905AC();
  *(v0 + 512) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10C3260, v2, v1);
}

uint64_t sub_1D10C3260()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 320);

  (*(v2 + 184))(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D10C32E4, v2, 0);
}

uint64_t sub_1D10C32E4()
{
  v1 = v0[63];
  v2 = v0[56];
  v3 = v0[55];

  sub_1D10C77D8(v2);
  sub_1D10C77D8(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D10C33DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  sub_1D10C74B8(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v4[45] = swift_task_alloc();
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  v4[46] = swift_task_alloc();
  v5 = sub_1D138D5EC();
  v4[47] = v5;
  v4[48] = *(v5 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v6 = sub_1D138F0BC();
  v4[53] = v6;
  v4[54] = *(v6 - 8);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D10C35D4, v3, 0);
}

uint64_t sub_1D10C35D4(uint64_t a1)
{
  v49 = v1;
  v2 = *(v1 + 416);
  v3 = *(v1 + 376);
  v4 = *(v1 + 384);
  v5 = *(v1 + 344);
  sub_1D138F06C();
  v6 = *(v4 + 16);
  *(v1 + 472) = v6;
  *(v1 + 480) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = sub_1D138F0AC();
  v8 = sub_1D139081C();

  if (os_log_type_enabled(v7, v8))
  {
    v45 = *(v1 + 432);
    v46 = *(v1 + 424);
    v47 = *(v1 + 464);
    v9 = *(v1 + 416);
    v10 = *(v1 + 376);
    v11 = *(v1 + 384);
    v44 = v8;
    v12 = *(v1 + 352);
    v13 = *(v1 + 336);
    v42 = *(v1 + 328);
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v14 = 136315650;
    v15 = *(v12 + 144);
    v16 = *(v12 + 128);
    *(v1 + 144) = *(v12 + 112);
    *(v1 + 160) = v16;
    *(v1 + 176) = v15;
    v17 = sub_1D10BC3FC();
    v19 = sub_1D11DF718(v17, v18, &v48);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    sub_1D10C7A1C(&qword_1EC60D1C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1D13915CC();
    v22 = v21;
    v23 = *(v11 + 8);
    v23(v9, v10);
    v24 = sub_1D11DF718(v20, v22, &v48);

    *(v14 + 14) = v24;
    *(v14 + 22) = 2080;
    *(v1 + 296) = v42;
    *(v1 + 304) = v13;

    sub_1D13916AC();
    v25 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v26 = sub_1D13901EC();
    v28 = sub_1D11DF718(v26, v27, &v48);

    *(v14 + 24) = v28;
    _os_log_impl(&dword_1D101F000, v7, v44, "ClinicalAccountLoginSession: %s with state %s will now exchange code %s for token", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v43, -1, -1);
    MEMORY[0x1D38882F0](v14, -1, -1);

    v29 = *(v45 + 8);
    v29(v47, v46);
  }

  else
  {
    v30 = *(v1 + 464);
    v31 = *(v1 + 424);
    v32 = *(v1 + 432);
    v33 = *(v1 + 416);
    v34 = *(v1 + 376);
    v35 = *(v1 + 384);

    v23 = *(v35 + 8);
    v23(v33, v34);
    v29 = *(v32 + 8);
    v29(v30, v31);
  }

  *(v1 + 488) = v29;
  *(v1 + 496) = v23;
  v36 = *(*(v1 + 352) + 152);
  v37 = sub_1D138D5AC();
  *(v1 + 504) = v37;
  v38 = sub_1D139012C();
  *(v1 + 512) = v38;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 312;
  *(v1 + 24) = sub_1D10C3A14;
  v39 = swift_continuation_init();
  sub_1D10C7624(0);
  *(v1 + 136) = v40;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1D10C486C;
  *(v1 + 104) = &block_descriptor_40;
  *(v1 + 112) = v39;
  [v36 endLoginSessionWithState:v37 code:v38 completion:v1 + 80];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_1D10C3A14()
{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1D10C3B08, v1, 0);
}

uint64_t sub_1D10C3B08()
{
  v128 = v0;
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 312);
  *(v0 + 520) = v3;

  v4 = [v3 error];
  if (v4)
  {
    v5 = v4;
    v125 = v3;
    v6 = *(v0 + 472);
    v7 = *(v0 + 408);
    v8 = *(v0 + 376);
    v9 = *(v0 + 344);
    sub_1D138F06C();
    v6(v7, v9, v8);

    v10 = v5;
    v11 = sub_1D138F0AC();
    LOBYTE(v5) = sub_1D13907FC();

    v118 = v5;
    v12 = os_log_type_enabled(v11, v5);
    v13 = *(v0 + 488);
    v14 = *(v0 + 496);
    v15 = *(v0 + 456);
    v16 = *(v0 + 424);
    v123 = v10;
    v17 = *(v0 + 408);
    v18 = *(v0 + 376);
    if (v12)
    {
      v116 = *(v0 + 488);
      v19 = *(v0 + 352);
      v113 = *(v0 + 424);
      v20 = v10;
      v21 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v127 = v112;
      *v21 = 136315650;
      v22 = *(v19 + 144);
      v23 = *(v19 + 128);
      *(v0 + 224) = *(v19 + 112);
      *(v0 + 240) = v23;
      *(v0 + 256) = v22;
      v24 = sub_1D10BC3FC();
      v110 = v15;
      v26 = sub_1D11DF718(v24, v25, &v127);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      sub_1D10C7A1C(&qword_1EC60D1C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v27 = sub_1D13915CC();
      v29 = v28;
      v14(v17, v18);
      v30 = sub_1D11DF718(v27, v29, &v127);

      *(v21 + 14) = v30;
      *(v21 + 22) = 2080;
      *(v0 + 320) = v20;
      sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
      v31 = v20;
      v32 = sub_1D13901EC();
      v34 = sub_1D11DF718(v32, v33, &v127);

      *(v21 + 24) = v34;
      _os_log_impl(&dword_1D101F000, v11, v118, "ClinicalAccountLoginSession: %s failed to end session with state %s. Error: %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v112, -1, -1);
      MEMORY[0x1D38882F0](v21, -1, -1);

      v116(v110, v113);
    }

    else
    {

      v14(v17, v18);
      v13(v15, v16);
    }

    v40 = v125;
    v41 = [v125 alternateCredentialPersistentID];
    if (v41)
    {
      v42 = v41;
      v43 = [v125 account];
      if (v43)
      {
        v44 = v43;
        sub_1D138F06C();
        v45 = v44;
        v46 = sub_1D138F0AC();
        v47 = sub_1D139081C();

        if (os_log_type_enabled(v46, v47))
        {
          v117 = *(v0 + 448);
          v119 = *(v0 + 488);
          v111 = *(v0 + 496);
          v114 = *(v0 + 424);
          v48 = *(v0 + 400);
          v49 = *(v0 + 376);
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v127 = v51;
          *v50 = 136315138;
          v121 = v45;
          v52 = [v45 identifier];
          sub_1D138D5CC();

          sub_1D10C7A1C(&qword_1EC60D1C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v53 = sub_1D13915CC();
          v55 = v54;
          v111(v48, v49);
          v56 = v53;
          v45 = v121;
          v57 = sub_1D11DF718(v56, v55, &v127);

          *(v50 + 4) = v57;
          _os_log_impl(&dword_1D101F000, v46, v47, "ClinicalAccountLoginSession: will ask user to replace account %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v51);
          MEMORY[0x1D38882F0](v51, -1, -1);
          v58 = v50;
          v40 = v125;
          MEMORY[0x1D38882F0](v58, -1, -1);

          v119(v117, v114);
        }

        else
        {
          v92 = *(v0 + 488);
          v93 = *(v0 + 448);
          v94 = *(v0 + 424);

          v92(v93, v94);
        }

        v95 = *(v0 + 368);
        v96 = *(v0 + 352);
        v97 = sub_1D13905DC();
        (*(*(v97 - 8) + 56))(v95, 1, 1, v97);
        v99 = sub_1D10C7A1C(&qword_1EC60A5D0, v98, type metadata accessor for ClinicalAccountLoginSessionCallbackHandler, &unk_1D139FDC8);
        v100 = swift_allocObject();
        v100[2] = v96;
        v100[3] = v99;
        v100[4] = v96;
        v100[5] = v42;
        swift_retain_n();
        v101 = v42;
        sub_1D107877C(0, 0, v95, &unk_1D139FE10, v100);

        goto LABEL_22;
      }
    }

    v59 = *(v0 + 472);
    v60 = *(v0 + 376);
    v61 = *(v0 + 384);
    v62 = *(v0 + 360);
    v63 = *(v0 + 344);
    v64 = objc_opt_self();
    v65 = sub_1D139012C();
    v66 = sub_1D138D2AC();
    v67 = [v64 hk:100 error:v65 description:v66 underlyingError:?];

    v59(v62, v63, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    sub_1D10C496C(v67, v62);

LABEL_21:
    sub_1D10C79C0(v62, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
LABEL_22:

    v109 = *(v0 + 8);

    return v109();
  }

  v35 = [v3 account];
  *(v0 + 528) = v35;
  if (!v35)
  {
    v126 = v3;
    v68 = *(v0 + 472);
    v69 = *(v0 + 392);
    v70 = *(v0 + 376);
    v71 = *(v0 + 344);
    sub_1D138F06C();
    v68(v69, v71, v70);

    v72 = sub_1D138F0AC();
    v73 = sub_1D139080C();

    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 488);
    v124 = *(v0 + 496);
    v76 = *(v0 + 440);
    v77 = *(v0 + 424);
    v78 = *(v0 + 392);
    v79 = *(v0 + 376);
    if (v74)
    {
      v122 = *(v0 + 488);
      v80 = *(v0 + 352);
      v120 = *(v0 + 424);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v127 = v82;
      *v81 = 136315394;
      v83 = *(v80 + 144);
      v84 = *(v80 + 128);
      *(v0 + 184) = *(v80 + 112);
      *(v0 + 200) = v84;
      *(v0 + 216) = v83;
      v85 = sub_1D10BC3FC();
      v115 = v76;
      v87 = sub_1D11DF718(v85, v86, &v127);

      *(v81 + 4) = v87;
      *(v81 + 12) = 2080;
      sub_1D10C7A1C(&qword_1EC60D1C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v88 = sub_1D13915CC();
      v90 = v89;
      v124(v78, v79);
      v91 = sub_1D11DF718(v88, v90, &v127);

      *(v81 + 14) = v91;
      _os_log_impl(&dword_1D101F000, v72, v73, "ClinicalAccountLoginSession: %s failed to end session with state %s: ended successfully but got no account", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v82, -1, -1);
      MEMORY[0x1D38882F0](v81, -1, -1);

      v122(v115, v120);
    }

    else
    {

      v124(v78, v79);
      v75(v76, v77);
    }

    v102 = *(v0 + 472);
    v103 = *(v0 + 376);
    v104 = *(v0 + 384);
    v62 = *(v0 + 360);
    v105 = *(v0 + 344);
    v106 = objc_opt_self();
    v107 = sub_1D139012C();
    v108 = [v106 hk:100 error:v107 description:?];

    v102(v62, v105, v103);
    (*(v104 + 56))(v62, 0, 1, v103);
    sub_1D10C496C(v108, v62);

    goto LABEL_21;
  }

  v36 = v35;
  v37 = swift_task_alloc();
  *(v0 + 536) = v37;
  *v37 = v0;
  v37[1] = sub_1D10C4674;
  v38 = *(v0 + 344);

  return sub_1D10C5138(v36, v38);
}

uint64_t sub_1D10C4674()
{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1D10C4784, v1, 0);
}

uint64_t sub_1D10C4784()
{
  v1 = *(v0 + 520);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D10C486C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1D10C48D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1D108077C;

  return sub_1D10C5AB4(a5);
}

void sub_1D10C496C(void *a1, uint64_t a2)
{
  v60 = sub_1D138D5EC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69695A8];
  sub_1D10C74B8(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v56 = sub_1D138F0BC();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();
  v58 = a2;
  sub_1D10C7F90(a2, v14, &qword_1EC60D6B0, v6);

  v17 = a1;
  v18 = sub_1D138F0AC();
  v19 = sub_1D139081C();

  v20 = os_log_type_enabled(v18, v19);
  v61 = v2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v63[0] = v53;
    *v21 = 136315650;
    v22 = *(v2 + 128);
    v68 = *(v2 + 112);
    v69 = v22;
    v70 = *(v2 + 144);
    v23 = sub_1D10BC3FC();
    v25 = sub_1D11DF718(v23, v24, v63);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = MEMORY[0x1E69695A8];
    sub_1D10C7F90(v14, v11, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v27 = sub_1D13901EC();
    v29 = v28;
    sub_1D10C79C0(v14, &qword_1EC60D6B0, v26);
    v30 = sub_1D11DF718(v27, v29, v63);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    *&v64 = a1;
    v31 = a1;
    sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    sub_1D13916AC();
    v32 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v33 = sub_1D13901EC();
    v35 = sub_1D11DF718(v33, v34, v63);

    *(v21 + 24) = v35;
    _os_log_impl(&dword_1D101F000, v18, v19, "ClinicalAccountLoginSession: %s with state %s failed to log in: %s", v21, 0x20u);
    v36 = v53;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v36, -1, -1);
    MEMORY[0x1D38882F0](v21, -1, -1);
  }

  else
  {

    sub_1D10C79C0(v14, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  (*(v55 + 8))(v16, v56);
  v37 = MEMORY[0x1E69E6158];
  sub_1D10C750C(0, &unk_1EC60A5B0, &qword_1EC609F30, MEMORY[0x1E69E6158]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  *(inited + 32) = 0xD00000000000002BLL;
  *(inited + 40) = 0x80000001D13BA6B0;
  swift_getErrorValue();
  v39 = v66;
  v40 = v67;
  *(inited + 72) = v67;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v39, v40);
  v42 = sub_1D109D2C4(inited);
  swift_setDeallocating();
  sub_1D10C75C8(inited + 32, &qword_1EC609F30, v37);
  v43 = v57;
  sub_1D10C7F90(v58, v57, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v44 = v59;
  v45 = v60;
  if ((*(v59 + 48))(v43, 1, v60) == 1)
  {
    sub_1D10C79C0(v43, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v46 = v54;
    (*(v44 + 32))(v54, v43, v45);
    v65 = v45;
    v47 = __swift_allocate_boxed_opaque_existential_1(&v64);
    (*(v44 + 16))(v47, v46, v45);
    sub_1D109E39C(&v64, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v42;
    sub_1D11DABF4(v63, 0xD00000000000002BLL, 0x80000001D13BA680, isUniquelyReferenced_nonNull_native);
    (*(v44 + 8))(v46, v45);
    v42 = v62;
  }

  v49 = v61;
  v50 = [objc_opt_self() defaultCenter];
  if (qword_1EC608D68 != -1)
  {
    swift_once();
  }

  v51 = qword_1EC60DA18;
  sub_1D10985D0(v42);

  v52 = sub_1D138FFEC();

  [v50 postNotificationName:v51 object:v49 userInfo:v52];
}

uint64_t sub_1D10C5138(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = sub_1D138D5EC();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v5 = sub_1D138F0BC();
  v3[55] = v5;
  v3[56] = *(v5 - 8);
  v3[57] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D10C5264, 0, 0);
}

uint64_t sub_1D10C5264(uint64_t a1)
{
  v63 = v1;
  v2 = *(v1 + 432);
  v3 = *(v1 + 408);
  v4 = *(v1 + 416);
  v5 = *(v1 + 392);
  sub_1D138F06C();
  v58 = *(v4 + 16);
  v58(v2, v5, v3);

  v6 = sub_1D138F0AC();
  v7 = sub_1D139081C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v1 + 448);
  v9 = *(v1 + 456);
  v12 = *(v1 + 432);
  v11 = *(v1 + 440);
  v14 = *(v1 + 408);
  v13 = *(v1 + 416);
  if (v8)
  {
    v54 = *(v1 + 456);
    v56 = *(v1 + 440);
    v15 = *(v1 + 400);
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v62 = v52;
    *v16 = 136315394;
    v17 = *(v15 + 144);
    v18 = *(v15 + 128);
    *(v1 + 296) = *(v15 + 112);
    *(v1 + 312) = v18;
    *(v1 + 328) = v17;
    v19 = sub_1D10BC3FC();
    v21 = sub_1D11DF718(v19, v20, &v62);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_1D10C7A1C(&qword_1EC60D1C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = sub_1D13915CC();
    v24 = v23;
    v61 = *(v13 + 8);
    v61(v12, v14);
    v25 = sub_1D11DF718(v22, v24, &v62);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1D101F000, v6, v7, "ClinicalAccountLoginSession: %s with state %s completed successfully", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v52, -1, -1);
    MEMORY[0x1D38882F0](v16, -1, -1);

    (*(v10 + 8))(v54, v56);
  }

  else
  {

    v61 = *(v13 + 8);
    v61(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v57 = objc_opt_self();
  v26 = [v57 defaultCenter];
  if (qword_1EC608D68 != -1)
  {
    swift_once();
  }

  v27 = *(v1 + 408);
  v29 = *(v1 + 384);
  v28 = *(v1 + 392);
  v53 = qword_1EC60DA18;
  v55 = *(v1 + 400);
  sub_1D10C750C(0, &qword_1EC60A598, &qword_1EC60A5A0, MEMORY[0x1E69E69B8]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  *(v1 + 336) = 0xD00000000000002DLL;
  *(v1 + 344) = 0x80000001D13BA650;
  v31 = MEMORY[0x1E69E6158];
  sub_1D139116C();
  *(inited + 96) = sub_1D106F934(0, &qword_1EC609A00, 0x1E69A3F00);
  *(inited + 72) = v29;
  *(v1 + 352) = 0xD00000000000002BLL;
  *(v1 + 360) = 0x80000001D13BA680;
  v32 = v29;
  sub_1D139116C();
  *(inited + 168) = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  v58(boxed_opaque_existential_1, v28, v27);
  sub_1D109D7FC(inited);
  swift_setDeallocating();
  sub_1D10C7564(0, &qword_1EC60A5A0, MEMORY[0x1E69E69B8]);
  swift_arrayDestroy();
  v34 = sub_1D138FFEC();

  [v26 postNotificationName:v53 object:v55 userInfo:v34];

  v35 = [v57 defaultCenter];
  if (qword_1EE069560 != -1)
  {
    swift_once();
  }

  v36 = *(v1 + 424);
  v37 = *(v1 + 408);
  v38 = *(v1 + 384);
  v59 = qword_1EE069568;
  v60 = *(v1 + 400);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1D139E700;
  *(v1 + 368) = 0x49746E756F636361;
  *(v1 + 376) = 0xE900000000000044;
  sub_1D139116C();
  v40 = [v38 identifier];
  sub_1D138D5CC();

  v41 = sub_1D138D59C();
  v43 = v42;
  v61(v36, v37);
  *(v39 + 96) = v31;
  *(v39 + 72) = v41;
  *(v39 + 80) = v43;
  sub_1D109D7FC(v39);
  swift_setDeallocating();
  sub_1D10C75C8(v39 + 32, &qword_1EC60A5A0, MEMORY[0x1E69E69B8]);
  v44 = sub_1D138FFEC();

  [v35 postNotificationName:v59 object:v60 userInfo:v44];

  if ([v38 isSharingToProvider] && (v45 = *(v1 + 400), *(v45 + 144) == 1))
  {
    v46 = *(v45 + 128);
    *(v1 + 464) = v46;
    v47 = v46;
    v48 = swift_task_alloc();
    *(v1 + 472) = v48;
    *v48 = v1;
    v48[1] = sub_1D10C593C;
    v49 = *(v1 + 384);

    return sub_1D10C6AC8(v49, v47);
  }

  else
  {

    v51 = *(v1 + 8);

    return v51();
  }
}

uint64_t sub_1D10C593C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D10C5A38, 0, 0);
}

uint64_t sub_1D10C5A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10C5AB4(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1D138F0BC();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D10C5B74, 0, 0);
}

uint64_t sub_1D10C5B74(uint64_t a1)
{
  v42 = v1;
  v2 = *(v1 + 160);
  v3 = *(v2 + 144);
  v4 = *(v2 + 128);
  *(v1 + 112) = *(v2 + 112);
  *(v1 + 128) = v4;
  *(v1 + 144) = v3;
  v6 = *(v1 + 112);
  v5 = *(v1 + 120);
  *(v1 + 192) = v6;
  *(v1 + 200) = v5;
  v7 = *(v1 + 128);
  *(v1 + 208) = v7;
  if (v3)
  {
    v9 = *(v2 + 120);
    v8 = *(v2 + 128);
    v10 = *(v2 + 112);
    v11 = objc_opt_self();
    v12 = v10;
    v13 = v9;
    v14 = v8;
    v15 = [v11 userProfileWithProfileIdentifier_];
    *(v1 + 216) = v15;
    type metadata accessor for ClinicalAccountManager();
    v16 = swift_allocObject();
    *(v1 + 224) = v16;
    v17 = MEMORY[0x1E69E7CD0];
    v16[5] = 0;
    v16[6] = 0;
    v16[4] = v17;
    v16[2] = v15;
    v16[3] = [v15 clinicalAccountStore];
    if (qword_1EE069ED0 != -1)
    {
      swift_once();
    }

    v18 = *(v1 + 152);
    v19 = swift_allocObject();
    *(v1 + 232) = v19;
    v19[2] = v16;
    v19[3] = v6;
    v19[4] = v5;
    v20 = swift_allocObject();
    *(v1 + 240) = v20;
    v20[2] = v16;
    v20[3] = v6;
    v20[4] = v18;
    v20[5] = v5;
    sub_1D13905AC();
    swift_retain_n();
    v21 = v6;
    v22 = v5;
    v23 = v21;
    v24 = v22;
    v25 = v18;
    *(v1 + 248) = sub_1D139059C();
    v27 = sub_1D139055C();

    return MEMORY[0x1EEE6DFA0](sub_1D10C5EC8, v27, v26);
  }

  else
  {
    sub_1D138F06C();

    v28 = sub_1D138F0AC();
    v29 = sub_1D139080C();

    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v1 + 176);
    v31 = *(v1 + 184);
    v33 = *(v1 + 168);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315138;
      v36 = sub_1D10BC3FC();
      v38 = sub_1D11DF718(v36, v37, &v41);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1D101F000, v28, v29, "ClinicalAccountLoginSession: can only login to different account with a relogin context but got %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1D38882F0](v35, -1, -1);
      MEMORY[0x1D38882F0](v34, -1, -1);
    }

    (*(v32 + 8))(v31, v33);

    v39 = *(v1 + 8);

    return v39();
  }
}

uint64_t sub_1D10C5EC8()
{

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v20 = v0[30];
  v22 = v0[29];
  v1 = v0[24];
  v21 = v0[25];
  sub_1D138D1CC();
  sub_1D138D1CC();
  sub_1D10C68DC(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E700;
  v3 = [v1 title];
  v4 = sub_1D139016C();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D1089930();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_1D139013C();

  v7 = sub_1D139012C();

  v8 = sub_1D139012C();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  sub_1D138D1CC();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_1D139FDF0;
  *(v10 + 24) = v22;

  v11 = sub_1D139012C();

  v0[6] = sub_1D10C6944;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D10CB11C;
  v0[5] = &block_descriptor_8;
  v12 = _Block_copy(v0 + 2);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:0 handler:{v12, 0xE000000000000000}];
  _Block_release(v12);

  [v9 addAction_];
  sub_1D138D1CC();
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_1D139FDF8;
  *(v15 + 24) = v20;

  v16 = sub_1D139012C();

  v0[12] = sub_1D10C6964;
  v0[13] = v15;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D10CB11C;
  v0[11] = &block_descriptor_35;
  v17 = _Block_copy(v0 + 8);

  v18 = [v13 actionWithTitle:v16 style:2 handler:{v17, 0xE000000000000000}];
  _Block_release(v17);

  [v9 addAction_];
  [v21 presentViewController:v9 animated:1 completion:0];

  return MEMORY[0x1EEE6DFA0](sub_1D10C6438, 0, 0);
}

uint64_t sub_1D10C6438()
{
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D10C64C0()
{
  sub_1D10C7A64(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  sub_1D102CC60(*(v0 + 168), *(v0 + 176));

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D10C6560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D10C65A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D10C6618(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D10C74B8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1D138D33C();
    v10 = sub_1D138D39C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1D138D39C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1D10C79C0(v8, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1D10C6788()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D10819BC;

  return sub_1D131E5B0(v2, v3, v4);
}

uint64_t sub_1D10C6830()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D108077C;

  return sub_1D131E65C(v2, v3, v5, v4);
}

void sub_1D10C68DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1080EA4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D10C696C(void *a1)
{
  v1 = a1;
  sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast() && (v9 & 1) != 0)
  {
    return 1;
  }

  v3 = sub_1D138D2AC();
  if ([v3 hk_isHealthKitError] && objc_msgSend(v3, sel_code) == 110)
  {
    v4 = [v3 localizedDescription];
    v5 = sub_1D139016C();
    v7 = v6;

    if (v5 == 0xD000000000000014 && 0x80000001D13BA830 == v7)
    {

      return 1;
    }

    v8 = sub_1D139162C();

    if (v8)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D10C6AC8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1D138D5EC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_1D138F0BC();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D10C6BFC, 0, 0);
}

uint64_t sub_1D10C6BFC(uint64_t a1)
{
  v35 = v1;
  v2 = v1[7];
  sub_1D138F06C();
  v3 = v2;
  v4 = sub_1D138F0AC();
  v5 = sub_1D139081C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[16];
  v9 = v1[13];
  v8 = v1[14];
  if (v6)
  {
    v31 = v5;
    v10 = v1[12];
    v11 = v1[9];
    v12 = v1[10];
    v13 = v1[7];
    v33 = v1[16];
    v14 = swift_slowAlloc();
    v32 = v9;
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136315138;
    v16 = [v13 identifier];
    sub_1D138D5CC();

    sub_1D10C7A1C(&qword_1EC60D1C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v17 = sub_1D13915CC();
    v19 = v18;
    (*(v12 + 8))(v10, v11);
    v20 = sub_1D11DF718(v17, v19, &v34);

    *(v14 + 4) = v20;
    v21 = &selRef_deselectRowAtIndexPath_animated_;
    _os_log_impl(&dword_1D101F000, v4, v31, "ClinicalAccountLoginSession: will update multi device status for %s to “override”", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1D38882F0](v15, -1, -1);
    MEMORY[0x1D38882F0](v14, -1, -1);

    v22 = *(v8 + 8);
    v22(v33, v32);
  }

  else
  {

    v22 = *(v8 + 8);
    v22(v7, v9);
    v21 = &selRef_deselectRowAtIndexPath_animated_;
  }

  v1[17] = v22;
  v23 = v1[7];
  v24 = [objc_opt_self() userProfileWithProfileIdentifier_];
  v1[18] = v24;
  type metadata accessor for ClinicalAccountManager();
  v25 = swift_allocObject();
  v1[19] = v25;
  v26 = MEMORY[0x1E69E7CD0];
  v25[5] = 0;
  v25[6] = 0;
  v25[4] = v26;
  v25[2] = v24;
  v25[3] = [v24 clinicalAccountStore];
  v27 = [v23 v21[171]];
  sub_1D138D5CC();

  v28 = swift_task_alloc();
  v1[20] = v28;
  *v28 = v1;
  v28[1] = sub_1D10C6F3C;
  v29 = v1[11];

  return sub_1D1324E18(v29, 3);
}

uint64_t sub_1D10C6F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v2[21] = v0;

  v6 = *(v4 + 8);
  v2[22] = v6;
  v2[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1D10C7154;
  }

  else
  {
    v7 = sub_1D10C70C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D10C70C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10C7154(uint64_t a1)
{
  v36 = v1;
  v2 = *(v1 + 168);
  v3 = *(v1 + 56);
  sub_1D138F06C();
  v4 = v3;
  v5 = v2;
  v6 = sub_1D138F0AC();
  v7 = sub_1D13907FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 176);
    v30 = *(v1 + 168);
    v31 = *(v1 + 144);
    v33 = *(v1 + 120);
    v34 = *(v1 + 136);
    v9 = *(v1 + 96);
    v32 = *(v1 + 104);
    v10 = *(v1 + 72);
    v11 = *(v1 + 56);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315394;
    v14 = [v11 identifier];
    sub_1D138D5CC();

    sub_1D10C7A1C(&qword_1EC60D1C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1D13915CC();
    v17 = v16;
    v8(v9, v10);
    v18 = sub_1D11DF718(v15, v17, &v35);

    *(v1 + 48) = v30;
    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = v30;
    sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    sub_1D13916AC();
    v20 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v21 = sub_1D13901EC();
    v23 = sub_1D11DF718(v21, v22, &v35);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_1D101F000, v6, v7, "ClinicalAccountLoginSession: failed to update clinical sharing device status of account %s with error: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v13, -1, -1);
    MEMORY[0x1D38882F0](v12, -1, -1);

    v34(v33, v32);
  }

  else
  {
    v24 = *(v1 + 168);
    v25 = *(v1 + 136);
    v26 = *(v1 + 120);
    v27 = *(v1 + 104);

    v25(v26, v27);
  }

  v28 = *(v1 + 8);

  return v28();
}

void sub_1D10C74B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D10C750C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D10C7564(255, a3, a4);
    v5 = sub_1D13915DC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D10C7564(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D10C75C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D10C7564(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D10C7624(uint64_t a1)
{
  if (!qword_1EC60A5C0)
  {
    sub_1D106F934(255, &qword_1EC60A5C8, 0x1E69A3F08);
    v1 = sub_1D139061C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60A5C0);
    }
  }
}

uint64_t sub_1D10C76B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D10819BC;

  return sub_1D10C48D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D10C7774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthRecordsURLParsingResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10C77D8(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsURLParsingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D10C7834(uint64_t a1)
{
  if (!qword_1EC60A5E0)
  {
    sub_1D1080EA4(255, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    sub_1D10C74B8(255, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60A5E0);
    }
  }
}

void sub_1D10C78D4(uint64_t a1)
{
  if (!qword_1EC60A5E8)
  {
    sub_1D138D5EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60A5E8);
    }
  }
}

uint64_t sub_1D10C7940(uint64_t a1, uint64_t a2)
{
  sub_1D10C74B8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10C79C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D10C74B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D10C7A1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D10C7A64(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

void sub_1D10C7B48(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D138D2AC();
  (*(v2 + 16))(v2, v3);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D10C7C00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D108077C;

  return sub_1D10BCD0C(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D10C7CEC(uint64_t a1)
{
  if (!qword_1EC60A5F8)
  {
    sub_1D106F934(255, &qword_1EC60A600, 0x1E69A3FA0);
    sub_1D1080EA4(255, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    v1 = sub_1D139061C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60A5F8);
    }
  }
}

unint64_t sub_1D10C7DEC()
{
  result = qword_1EC60A608;
  if (!qword_1EC60A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A608);
  }

  return result;
}

uint64_t sub_1D10C7E40(uint64_t a1)
{
  v3 = v2;
  sub_1D10C74B8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v6 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D10819BC;

  return sub_1D10C046C(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1D10C7F90(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D10C74B8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D10C8010()
{
  result = qword_1EC60A610;
  if (!qword_1EC60A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A610);
  }

  return result;
}

void static AccountIcon.Size.smallerOrEqual(to:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 <= 28.0)
  {
    v4 = a3 == 28.0;
    v3 = a3 >= 28.0;
  }

  else
  {
    v3 = 1;
    v4 = 0;
  }

  if (!v4 && v3)
  {
    if (a2 <= 40.0)
    {
      v6 = a3 == 40.0;
      v5 = a3 >= 40.0;
    }

    else
    {
      v5 = 1;
      v6 = 0;
    }

    if (!v6 && v5)
    {
      if (a3 <= 48.0)
      {
        v8 = a2 == 48.0;
        v7 = a2 >= 48.0;
      }

      else
      {
        v7 = 1;
        v8 = 0;
      }

      v9 = 2;
      if (!v8 && v7)
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v9;
  *(a1 + 24) = 1;
}

double AccountIcon.Size.cornerRadius.getter()
{
  v1 = *(v0 + 2);
  if (*(v0 + 24) != 1)
  {
    return v0[2];
  }

  v2 = *v0;
  v3 = *(v0 + 1);
  if (!(v1 | *v0 | v3))
  {
    return 7.0;
  }

  v4 = v3 | v1;
  result = 10.0;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *&v2 == 2;
  }

  v7 = 18.0;
  if (v6)
  {
    v7 = 12.0;
  }

  if (*&v2 != 1 || v4 != 0)
  {
    return v7;
  }

  return result;
}

double AccountIcon.Size.imageDimension.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 24) != 1)
  {
    return v1 - v2;
  }

  v3 = *(v0 + 16);
  if (!(*&v2 | *&v1 | v3))
  {
    return 28.0 - 5.0;
  }

  v4 = v3 | *&v2;
  v5 = v4 == 0;
  v6 = *&v1 == 2;
  v7 = 12.0;
  if (v6 && v5)
  {
    v7 = 8.0;
  }

  v8 = 82.0;
  if (v6 && v5)
  {
    v8 = 48.0;
  }

  if (*&v1 == 1 && v4 == 0)
  {
    v7 = 6.0;
    v10 = 40.0;
  }

  else
  {
    v10 = v8;
  }

  return v10 - v7;
}

double AccountIcon.Size.insetDimension.getter()
{
  v1 = *(v0 + 1);
  if (*(v0 + 24) != 1)
  {
    return v0[1];
  }

  v2 = *v0;
  v3 = *(v0 + 2);
  if (!(v1 | *v0 | v3))
  {
    return 5.0;
  }

  v4 = v3 | v1;
  result = 6.0;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *&v2 == 2;
  }

  v7 = 12.0;
  if (v6)
  {
    v7 = 8.0;
  }

  if (*&v2 != 1 || v4 != 0)
  {
    return v7;
  }

  return result;
}

double AccountIcon.Size.imageViewDimension.getter()
{
  v1 = *v0;
  if (*(v0 + 24) != 1)
  {
    return *v0;
  }

  if (!(v0[1] | v0[2] | v1))
  {
    return 28.0;
  }

  result = 40.0;
  v3 = *(v0 + 1) == 0 && v1 == 2;
  v4 = 82.0;
  if (v3)
  {
    v4 = 48.0;
  }

  if (v1 != 1 || *(v0 + 1) != 0)
  {
    return v4;
  }

  return result;
}

void AccountIcon.imageViewStyle.getter(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v2 = 0;
    v3 = 2;
  }

  else
  {
    v2 = *(v1 + 24);
    if (*(v1 + 32) == 1)
    {
      v4 = *(v1 + 8);
      v5 = v2 | *(v1 + 16);
      if (v5 | v4)
      {
        if (v5)
        {
          v6 = 0;
        }

        else
        {
          v6 = v4 == 2;
        }

        v7 = 0x4032000000000000;
        if (v6)
        {
          v7 = 0x4028000000000000;
        }

        if (v4 == 1 && v5 == 0)
        {
          v2 = 0x4024000000000000;
        }

        else
        {
          v2 = v7;
        }

        v3 = 0;
      }

      else
      {
        v3 = 0;
        v2 = 0x401C000000000000;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t AccountIcon.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  return sub_1D13917CC();
}

uint64_t AccountIcon.Size.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*(v0 + 24) == 1)
  {
    v4 = v3 | v2;
    if (v3 | v2 | v1)
    {
      if (v1 == 1 && v4 == 0)
      {
        v7 = 1;
      }

      else if (v1 == 2 && v4 == 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 0;
    }

    return MEMORY[0x1D38870E0](v7);
  }

  else
  {
    MEMORY[0x1D38870E0](4);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1D3887110](v8);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1D3887110](v9);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    return MEMORY[0x1D3887110](v10);
  }
}

uint64_t AccountIcon.Size.hashValue.getter()
{
  sub_1D139177C();
  AccountIcon.Size.hash(into:)();
  return sub_1D13917CC();
}

uint64_t sub_1D10C84D8()
{
  sub_1D139177C();
  AccountIcon.Size.hash(into:)();
  return sub_1D13917CC();
}

uint64_t sub_1D10C8538(uint64_t a1)
{
  sub_1D139177C();
  AccountIcon.Size.hash(into:)();
  return sub_1D13917CC();
}

__n128 AccountIcon.size.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

void AccountIcon.init(monogram:size:)(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *a3 = 1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  if (v8 == 1)
  {
    v9 = v7 | v6;
    v10 = 28.0;
    v11 = 40.0;
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = *&v5 == 2;
    }

    v13 = 82.0;
    if (v12)
    {
      v13 = 48.0;
    }

    if (*&v5 != 1 || v9 != 0)
    {
      v11 = v13;
    }

    if (v9 | *&v5)
    {
      v10 = v11;
    }
  }

  else
  {
    v10 = v5;
  }

  v15 = [a1 scaledToTargetSize_];

  *(a3 + 40) = v15;
}

double AccountIcon.Size.imageViewSize.getter()
{
  v1 = *v0;
  if (*(v0 + 24) != 1)
  {
    return *v0;
  }

  if (!(v0[1] | v0[2] | v1))
  {
    return 28.0;
  }

  result = 40.0;
  v3 = *(v0 + 1) == 0 && v1 == 2;
  v4 = 82.0;
  if (v3)
  {
    v4 = 48.0;
  }

  if (v1 != 1 || *(v0 + 1) != 0)
  {
    return v4;
  }

  return result;
}

void AccountIcon.init(logo:size:)(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *a3 = 0;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  if (v8 == 1)
  {
    v9 = v7 | *&v6;
    if (v9 | *&v5)
    {
      v10 = *&v5 == 1;
      v11 = v9 == 0;
      v12 = *&v5 == 2;
      v13 = 12.0;
      if (v12 && v11)
      {
        v13 = 8.0;
      }

      v14 = 82.0;
      if (v12 && v11)
      {
        v14 = 48.0;
      }

      v15 = 6.0;
      if (!v10 || !v11)
      {
        v15 = v13;
      }

      v16 = 40.0;
      if (!v10 || !v11)
      {
        v16 = v14;
      }
    }

    else
    {
      v15 = 5.0;
      v16 = 28.0;
    }
  }

  else
  {
    v16 = v5;
    v15 = v6;
  }

  v17 = [a1 scaledToTargetSize:v16 - v15 - v15 padding:{v16 - v15 - v15, v15, v15}];

  *(a3 + 40) = v17;
}

double AccountIcon.Size.imageSize.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 24) == 1)
  {
    v3 = *(v0 + 16);
    if (v2 | *&v1 | v3)
    {
      v4 = v3 | v2;
      v5 = v4 == 0;
      v6 = *&v1 == 2;
      v7 = 12.0;
      if (v6 && v5)
      {
        v7 = 8.0;
      }

      v8 = 82.0;
      if (v6 && v5)
      {
        v8 = 48.0;
      }

      if (*&v1 == 1 && v4 == 0)
      {
        v7 = 6.0;
        v10 = 40.0;
      }

      else
      {
        v10 = v8;
      }
    }

    else
    {
      v10 = 28.0;
      v7 = 5.0;
    }
  }

  else
  {
    v10 = *v0;
    v7 = *(v0 + 8);
  }

  return v10 - v7 - v7;
}

uint64_t AccountIcon.imageStyle.getter()
{
  if (*v0)
  {
    v1 = 0x100000000;
    v2 = 0x100000000;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + 8);
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = objc_opt_self();
    v12 = [v11 whiteColor];
    v13 = [v11 separatorColor];
    v14 = [objc_opt_self() currentTraitCollection];
    [v14 displayPixel];
    v16 = v15;

    if (v10 == 1)
    {
      v17 = *&v9 | v8;
      if (*&v9 | v8 | v7)
      {
        if (v7 != 1 || (v18 = 10.0, v17))
        {
          v19 = !v17 && v7 == 2;
          v18 = 18.0;
          if (v19)
          {
            v18 = 12.0;
          }
        }
      }

      else
      {
        v18 = 7.0;
      }
    }

    else
    {
      v18 = v9;
    }

    *&v20 = v16;
    v21 = v20;
    *&v22 = v18;
    v23 = v22;
    v24 = *MEMORY[0x1E69796E8];
    v25 = *MEMORY[0x1E69796E8];
    v1 = v21;
    v2 = v23;
    v3 = 1;
    v4 = v12;
    v5 = v13;
    v6 = v24;
  }

  return MEMORY[0x1EEE0DFE8](v3, 0, v4, 0, v5, v1, v2, v6);
}

uint64_t sub_1D10C8A94(SEL *a1)
{
  if (*v1)
  {
    return 0;
  }

  result = [objc_opt_self() *a1];
  if (result)
  {

    return 1;
  }

  return result;
}

id sub_1D10C8AF8(SEL *a1)
{
  if (*v1)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *a1];
  }
}

uint64_t AccountIcon.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = v1[32];
  MEMORY[0x1D38870E0](*v1);
  if (v5 == 1)
  {
    v6 = v4 | v3;
    if (v4 | v3 | v2)
    {
      if (v2 == 1 && v6 == 0)
      {
        v8 = 1;
      }

      else if (v2 != 2 || v6)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1D38870E0](v8);
  }

  else
  {
    MEMORY[0x1D38870E0](4);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1D3887110](v9);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1D3887110](v10);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1D3887110](v11);
  }

  return sub_1D1390D9C();
}

uint64_t AccountIcon.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[32];
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  if (v5 == 1)
  {
    v6 = v4 | v3;
    if (v4 | v3 | v2)
    {
      if (v2 == 1 && v6 == 0)
      {
        v8 = 1;
      }

      else if (v2 != 2 || v6)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1D38870E0](v8);
  }

  else
  {
    MEMORY[0x1D38870E0](4);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1D3887110](v9);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1D3887110](v10);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1D3887110](v11);
  }

  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D10C8D4C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[32];
  sub_1D139177C();
  MEMORY[0x1D38870E0](v2);
  if (v6 == 1)
  {
    v7 = v5 | v4;
    if (v5 | v4 | v3)
    {
      if (v3 == 1 && v7 == 0)
      {
        v9 = 1;
      }

      else if (v3 != 2 || v7)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1D38870E0](v9);
  }

  else
  {
    MEMORY[0x1D38870E0](4);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1D3887110](v10);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1D3887110](v11);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1D3887110](v12);
  }

  sub_1D1390D9C();
  return sub_1D13917CC();
}

double AccountIcon.Size.imageInsets.getter()
{
  v1 = *(v0 + 1);
  if (*(v0 + 24) != 1)
  {
    return v0[1];
  }

  v2 = *v0;
  v3 = *(v0 + 2);
  if (!(v1 | *v0 | v3))
  {
    return 5.0;
  }

  v4 = v3 | v1;
  result = 6.0;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *&v2 == 2;
  }

  v7 = 12.0;
  if (v6)
  {
    v7 = 8.0;
  }

  if (*&v2 != 1 || v4 != 0)
  {
    return v7;
  }

  return result;
}

uint64_t _s15HealthRecordsUI11AccountIconV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (*(a1 + 32) != 1)
  {
    if (a2[4])
    {
      return 0;
    }

    v11 = v3 == v6 && v4 == v7;
    if (!v11 || v5 != v8)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v9 = *&v5 | *&v4;
  if (!(v9 | *&v3))
  {
    if (!*(a2 + 32) || *&v8 | *&v7 | *&v6)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (*&v3 != 1 || v9)
  {
    if (*&v3 != 2 || v9)
    {
      if ((a2[4] & 1) == 0)
      {
        return 0;
      }

      v13 = *&v8 | *&v7;
      if (!(v13 | *&v6) || (*&v6 - 1) <= 1 && !v13)
      {
        return 0;
      }

      goto LABEL_24;
    }

    if (!*(a2 + 32))
    {
      return 0;
    }

    v10 = *&v8 | *&v7;
    if (!(v10 | *&v6) || *&v6 == 1 && !v10)
    {
      return 0;
    }

    if (*&v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a2 + 32))
    {
      return 0;
    }

    v10 = *&v8 | *&v7;
    if (!(v10 | *&v6) || *&v6 != 1)
    {
      return 0;
    }
  }

  if (v10)
  {
    return 0;
  }

LABEL_24:
  sub_1D10C94AC();
  return sub_1D1390D8C() & 1;
}

BOOL _s15HealthRecordsUI11AccountIconV4SizeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 24) != 1)
  {
    if (*(a2 + 24))
    {
      return 0;
    }

    if (v2 == v5 && v3 == v6)
    {
      return v4 == v7;
    }

    return 0;
  }

  v8 = *&v4 | *&v3;
  if (!(v8 | *&v2))
  {
    if (*(a2 + 24))
    {
      return (*&v7 | *&v6 | *&v5) == 0;
    }

    return 0;
  }

  if (*&v2 == 1 && v8 == 0)
  {
    if (*(a2 + 24))
    {
      v15 = *&v7 | *&v6;
      if (v15 | *&v5)
      {
        if (*&v5 == 1 && !v15)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 != 2 || v8 != 0)
  {
    if (*(a2 + 24))
    {
      v11 = *&v7 | *&v6;
      if (v11 | *&v5)
      {
        if (*&v5 != 1 || v11)
        {
          return *&v5 != 2 || v11 != 0;
        }
      }
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    return 0;
  }

  v16 = *&v7 | *&v6;
  if (!(v16 | *&v5) || *&v5 == 1 && !v16)
  {
    return 0;
  }

  return *&v5 == 2 && v16 == 0;
}

unint64_t sub_1D10C914C()
{
  result = qword_1EC60A620;
  if (!qword_1EC60A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A620);
  }

  return result;
}

unint64_t sub_1D10C91A4()
{
  result = qword_1EE06B028;
  if (!qword_1EE06B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B028);
  }

  return result;
}

unint64_t sub_1D10C91FC()
{
  result = qword_1EC60A628;
  if (!qword_1EC60A628)
  {
    sub_1D10C9254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A628);
  }

  return result;
}

void sub_1D10C9254()
{
  if (!qword_1EC60A630)
  {
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A630);
    }
  }
}

unint64_t sub_1D10C92A8()
{
  result = qword_1EC60A638;
  if (!qword_1EC60A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A638);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D10C9310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D10C9358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AccountIcon.Size(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AccountIcon.Size(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccountIcon.Size(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1D10C945C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D10C9478(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

unint64_t sub_1D10C94AC()
{
  result = qword_1EE06B0C0;
  if (!qword_1EE06B0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06B0C0);
  }

  return result;
}

uint64_t sub_1D10C94F8()
{
  v1 = type metadata accessor for AccountStatusSummaryTileFeedItemViewData(0);
  if (!*(v0 + *(v1 + 28)))
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (*(v0 + *(v1 + 28)) == 1)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D10C9668()
{
  v1 = type metadata accessor for AccountStatusSummaryTileFeedItemViewData(0);
  if (!*(v0 + *(v1 + 28)))
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (*(v0 + *(v1 + 28)) == 1)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_9;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1D138D1CC();
}

int *AccountStatusSummaryTileFeedItemViewData.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1D138EDCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D10C9CD0(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D10CA0F4(0, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38[-v17];
  v41 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
  sub_1D10C9D50(a1 + v41[9], v18);
  (*(v4 + 104))(v15, *MEMORY[0x1E69A3E88], v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_1D10C9D50(v18, v9);
  sub_1D10C9D50(v15, &v9[v19]);
  v20 = *(v4 + 48);
  if (v20(v9, 1, v3) == 1)
  {
    v21 = MEMORY[0x1E69A3E90];
    sub_1D10CA148(v15, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
    sub_1D10CA148(v18, &qword_1EE0696E0, v21);
    if (v20(&v9[v19], 1, v3) == 1)
    {
      sub_1D10CA148(v9, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
      v22 = 2;
      goto LABEL_10;
    }

LABEL_6:
    sub_1D10C9DD0(v9, sub_1D10C9CD0);
    v22 = 0;
    goto LABEL_10;
  }

  sub_1D10C9D50(v9, v12);
  if (v20(&v9[v19], 1, v3) == 1)
  {
    v23 = MEMORY[0x1E69A3E90];
    sub_1D10CA148(v15, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
    sub_1D10CA148(v18, &qword_1EE0696E0, v23);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  v24 = v40;
  (*(v4 + 32))(v40, &v9[v19], v3);
  sub_1D10C9E7C();
  v39 = sub_1D139011C();
  v25 = *(v4 + 8);
  v25(v24, v3);
  v26 = MEMORY[0x1E69A3E90];
  sub_1D10CA148(v15, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
  sub_1D10CA148(v18, &qword_1EE0696E0, v26);
  v25(v12, v3);
  sub_1D10CA148(v9, &qword_1EE0696E0, v26);
  if (v39)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

LABEL_10:
  v27 = sub_1D138D5EC();
  v28 = v42;
  (*(*(v27 - 8) + 16))(v42, a1, v27);
  v29 = v41[7];
  v30 = (a1 + v41[6]);
  v32 = *v30;
  v31 = v30[1];
  v34 = *(a1 + v29);
  v33 = *(a1 + v29 + 8);

  sub_1D10C9DD0(a1, type metadata accessor for AccountStatusSummaryTileFeedItemData);
  result = type metadata accessor for AccountStatusSummaryTileFeedItemViewData(0);
  v36 = (v28 + result[5]);
  *v36 = v32;
  v36[1] = v31;
  v37 = (v28 + result[6]);
  *v37 = v34;
  v37[1] = v33;
  *(v28 + result[7]) = v22;
  return result;
}

void sub_1D10C9CD0(uint64_t a1)
{
  if (!qword_1EC60A640)
  {
    sub_1D10CA0F4(255, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60A640);
    }
  }
}

uint64_t sub_1D10C9D50(uint64_t a1, uint64_t a2)
{
  sub_1D10CA0F4(0, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10C9DD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AccountStatusSummaryTileFeedItemViewData(uint64_t a1)
{
  result = qword_1EE069798;
  if (!qword_1EE069798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D10C9E7C()
{
  result = qword_1EC60A648;
  if (!qword_1EC60A648)
  {
    sub_1D138EDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A648);
  }

  return result;
}

uint64_t AccountStatusSummaryTileFeedItemViewData.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D10CA0F4(0, &qword_1EC60A650, type metadata accessor for AccountStatusSummaryTileFeedItemData);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v14 = a1;
  AccountStatusSummaryTileFeedItemData.init(_:)(v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1D10CA148(v6, &qword_1EC60A650, type metadata accessor for AccountStatusSummaryTileFeedItemData);
    v15 = 1;
  }

  else
  {
    sub_1D10CA1A4(v6, v13);
    sub_1D10CA208(v13, v10);
    AccountStatusSummaryTileFeedItemViewData.init(_:)(v10, a2);

    sub_1D10C9DD0(v13, type metadata accessor for AccountStatusSummaryTileFeedItemData);
    v15 = 0;
  }

  v16 = type metadata accessor for AccountStatusSummaryTileFeedItemViewData(0);
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

void sub_1D10CA0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D10CA148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D10CA0F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D10CA1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10CA208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountStatusSummaryTileFeedItemData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10CA294(uint64_t a1)
{
  result = sub_1D138D5EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordRangeView.InRangeContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordRangeView.InRangeContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D10CA468()
{
  result = qword_1EC60A658;
  if (!qword_1EC60A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A658);
  }

  return result;
}

void sub_1D10CA4BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a1;
  v96 = a3;
  v4 = sub_1D138D57C();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v88 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v88 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v89 = &v88 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v88 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v88 - v31;
  v33 = sub_1D138D76C();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D72C();
  v37 = sub_1D138D6DC();
  (*(v34 + 8))(v36, v33);
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v38 = sub_1D138D4EC();
          v39 = [v37 hk:0 startOfWeekWithFirstWeekday:v38 beforeDate:0 addingWeeks:?];

          v40 = v94;
          sub_1D138D52C();

          v41 = sub_1D138D4EC();
          v42 = [v37 hk:0 startOfWeekWithFirstWeekday:v41 beforeDate:1 addingWeeks:?];

          v43 = v95;
          sub_1D138D52C();

          v44 = sub_1D138D4EC();
          v45 = sub_1D138D4EC();
          v46 = HKUIMidDate();

          if (v46)
          {
            v47 = v91;
            sub_1D138D52C();

            v49 = v97;
            v48 = v98;
            v50 = *(v97 + 8);
            v50(v43, v98);
            v50(v40, v48);
            (*(v49 + 32))(v96, v47, v48);
            return;
          }

          goto LABEL_20;
        }

        goto LABEL_15;
      }

      v74 = sub_1D138D4EC();
      v75 = v37;
      v76 = [v37 hk:v74 startOfMonthForDate:?];

      v77 = v92;
      sub_1D138D52C();

      v78 = sub_1D138D4EC();
      v79 = [v37 hk:v78 startOfMonthForDate:1 addingMonths:?];

      v80 = v93;
      sub_1D138D52C();

      v81 = sub_1D138D4EC();
      v82 = sub_1D138D4EC();
      v83 = HKUIMidDate();

      if (v83)
      {
        v84 = v90;
        sub_1D138D52C();

        v86 = v97;
        v85 = v98;
        v87 = *(v97 + 8);
        v87(v80, v98);
        v87(v77, v85);
        (*(v86 + 32))(v96, v84, v85);
        return;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v62 = sub_1D138D4EC();
    v63 = v37;
    v64 = [v37 hk:v62 startOfYearForDate:0 addingYears:?];

    sub_1D138D52C();
    v65 = sub_1D138D4EC();
    v66 = [v37 hk:v65 startOfYearForDate:1 addingYears:?];

    sub_1D138D52C();
    v67 = sub_1D138D4EC();
    v68 = sub_1D138D4EC();
    v69 = HKUIMidDate();

    if (v69)
    {
      v70 = v89;
      sub_1D138D52C();

      v72 = v97;
      v71 = v98;
      v73 = *(v97 + 8);
      v73(v29, v98);
      v73(v32, v71);
      (*(v72 + 32))(v96, v70, v71);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a2 - 4) < 2)
  {
    v51 = v6;
    v52 = sub_1D138D4EC();
    v53 = [v37 hk:0 startOfDateByAddingDays:v52 toDate:?];

    sub_1D138D52C();
    v54 = sub_1D138D4EC();
    v55 = [v37 hk:1 startOfDateByAddingDays:v54 toDate:?];

    sub_1D138D52C();
    v56 = sub_1D138D4EC();
    v57 = sub_1D138D4EC();
    v58 = HKUIMidDate();

    if (v58)
    {
      sub_1D138D52C();

      v60 = v97;
      v59 = v98;
      v61 = *(v97 + 8);
      v61(v9, v98);
      v61(v12, v59);
      (*(v60 + 32))(v96, v51, v59);
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_15:
  (*(v97 + 16))(v96, v99, v98);
}

id sub_1D10CACA4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) < 3)
  {
    result = [objc_opt_self() hk_monthDayYearIntervalFormatter];
    if (result)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a2 == 2)
  {
    goto LABEL_8;
  }

  if (a2 == 1)
  {
    result = [objc_opt_self() hk_yearIntervalFormatter];
    if (result)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    result = [objc_opt_self() hk_monthIntervalFormatter];
    if (result)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  result = [objc_opt_self() hk_hourDateIntervalFormatter];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_11:
  v3 = result;
  v4 = sub_1D138CF5C();
  v5 = [v3 stringFromDateInterval_];

  if (v5)
  {
    v6 = sub_1D139016C();
  }

  else
  {

    return 0;
  }

  return v6;
}

void static TapToRadarManager.presentTapToRadarDialogue(from:)(void *a1)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v3 = sub_1D139012C();
    v4 = sub_1D139012C();
    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v1;
    v7 = a1;
    v8 = sub_1D139012C();
    v21 = sub_1D10CB9BC;
    v22 = v6;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1D10CB11C;
    v20 = &block_descriptor_9;
    v9 = _Block_copy(&v17);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:0 handler:v9];
    _Block_release(v9);

    v12 = sub_1D139012C();
    v21 = sub_1D10CB380;
    v22 = 0;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1D10CB11C;
    v20 = &block_descriptor_3;
    v13 = _Block_copy(&v17);

    v14 = [v10 actionWithTitle:v12 style:0 handler:v13];
    _Block_release(v13);

    [v5 addAction_];
    [v5 addAction_];
    v15 = sub_1D139012C();
    v16 = [v10 actionWithTitle:v15 style:1 handler:0];

    [v5 addAction_];
    [v7 presentViewController:v5 animated:1 completion:0];
  }
}

void sub_1D10CB11C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D10CB184(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = objc_allocWithZone(WDAppleInternalConsentViewController);
  v10[4] = sub_1D10CBA00;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D10CB734;
  v10[3] = &block_descriptor_10;
  v7 = _Block_copy(v10);
  v8 = a2;
  v9 = [v6 initWithPresentingViewController:v8 completionBlock:v7];
  _Block_release(v7);

  [v8 presentViewController:v9 animated:1 completion:0];
}

void sub_1D10CB29C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v8[4] = sub_1D10CBA08;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D10CBD3C;
  v8[3] = &block_descriptor_16;
  v6 = _Block_copy(v8);
  v7 = a2;

  [v7 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_1D10CB380()
{
  v0 = sub_1D138D39C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_1D139012C();
  v6 = sub_1D139012C();
  v7 = [v4 hk:938492 tapToHealthRadarURLForComponent:v5 title:v6 description:0 classification:0 reproducibility:0 keywords:2 autoDiagnostics:0 attachments:?];

  sub_1D138D33C();
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D138D30C();
    sub_1D109D2C4(MEMORY[0x1E69E7CC0]);
    v11 = sub_1D138FFEC();

    [v9 openSensitiveURL:v10 withOptions:v11];
  }

  return (*(v1 + 8))(v3, v0);
}

id TapToRadarManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapToRadarManager.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TapToRadarManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TapToRadarManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TapToRadarManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1D10CB6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = _sSo15UIBarButtonItemC15HealthRecordsUIE014makeTapToRadarC06target6actionABSgypSg_10ObjectiveC8SelectorVSgtFZ_0(v7, a4);
  sub_1D1096BE0(v7);

  return v5;
}

uint64_t sub_1D10CB734(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id _sSo15UIBarButtonItemC15HealthRecordsUIE014makeTapToRadarC06target6actionABSgypSg_10ObjectiveC8SelectorVSgtFZ_0(uint64_t a1, uint64_t a2)
{
  if (![objc_opt_self() isAppleInternalInstall])
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 BOOLForKey_];

  if (v5)
  {
    return 0;
  }

  v7 = sub_1D139012C();
  v8 = [objc_opt_self() systemImageNamed_];

  sub_1D1096B28(a1, v17);
  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_1D139161C();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v8 style:0 target:v15 action:a2];

  swift_unknownObjectRelease();
  [v16 setSharesBackground_];
  return v16;
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t OS_dispatch_queue.schedule(task:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138FECC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138FF0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);

  sub_1D138FEEC();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1D10CBDF0(&qword_1EE06B7E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D10CBD98(0);
  sub_1D10CBDF0(&qword_1EE06B7B0, sub_1D10CBD98, MEMORY[0x1E69E6328]);
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v11, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D10CBD3C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D10CBD98(uint64_t a1)
{
  if (!qword_1EE06B7C0)
  {
    sub_1D138FECC();
    v1 = sub_1D139052C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06B7C0);
    }
  }
}

uint64_t sub_1D10CBDF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void NSOperationQueue.schedule(task:)(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D10CBD3C;
  v6[3] = &block_descriptor_3_0;
  v3 = _Block_copy(v6);
  v4 = objc_opt_self();

  v5 = [v4 blockOperationWithBlock_];
  _Block_release(v3);

  [v2 addOperation_];
}

void sub_1D10CBF40(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D10CBD3C;
  v7[3] = &block_descriptor_10_0;
  v4 = _Block_copy(v7);
  v5 = objc_opt_self();

  v6 = [v5 blockOperationWithBlock_];
  _Block_release(v4);

  [v3 addOperation_];
}

id sub_1D10CC08C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticTestResultFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D10CC0F4(uint64_t a1)
{
  result = sub_1D10CC11C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D10CC11C()
{
  result = qword_1EC60A670;
  if (!qword_1EC60A670)
  {
    type metadata accessor for DiagnosticTestResultFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A670);
  }

  return result;
}

id sub_1D10CC170(void *a1)
{
  v1 = [a1 interpretation];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980, 0x1E696C010);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

id sub_1D10CC4D4(void *a1)
{
  v1 = [a1 method];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 localizedPreferredName];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1D10CC6E4(void *a1)
{
  v1 = [a1 performers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139045C();

  v4 = Array<A>.newlineJoined.getter(v3);
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v8 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  [v8 setTitle_];

  v10 = sub_1D139012C();

  [v8 setSubtitle_];

  [v8 setSeparatorStyle_];
  [v8 setSeparatorHidden_];
  [v8 setExtraTopPadding_];

  return v8;
}

id sub_1D10CC8C8(void *a1)
{
  v1 = [a1 comments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v7 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v8 = sub_1D139012C();

  [v7 setTitle_];

  v9 = sub_1D139012C();

  [v7 setSubtitle_];

  [v7 setSeparatorStyle_];
  [v7 setSeparatorHidden_];
  [v7 setExtraTopPadding_];

  return v7;
}

void *sub_1D10CCA90(void *a1)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v83 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v83 - v10;
  v90[4] = sub_1D1201200(a1);
  v88 = sub_1D106F934(0, &qword_1EC609BE8, off_1E83DAD48);
  v12 = [a1 effectiveStartDate];
  v13 = [a1 effectiveEndDate];
  v14 = [a1 meaningfulDateTitle];
  v87 = sub_1D139016C();
  v16 = v15;

  if (v12)
  {
    if (v13)
    {
      v84 = v4;
      v17 = v13;
      v18 = v12;
      v86 = v17;
      v19 = [v17 dateForUTC];
      sub_1D138D52C();

      v85 = v18;
      v20 = [v18 dateForUTC];
      sub_1D138D52C();

      sub_1D138D4CC();
      v22 = v21;
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v11, v5);
      if (v22 <= COERCE_DOUBLE(1))
      {
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        v56 = sub_1D138D1CC();
        v58 = v57;
        v59 = v85;
        v48 = sub_1D11EDE68(v56, v58, v12, v87, v16);
        v60 = v48;

        v61 = v86;
        if (v48)
        {
        }
      }

      else
      {

        v87 = "ETAIL_TITLE_RELEASED";
        v24 = sub_1D138D67C();
        v25 = v84;
        (*(*(v24 - 8) + 56))(v84, 1, 1, v24);
        if (qword_1EC608CB0 != -1)
        {
          swift_once();
        }

        v83[1] = qword_1EC60C070;
        sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D139E710;
        v27 = [v85 displayString];
        v28 = sub_1D139016C();
        v30 = v29;

        v31 = MEMORY[0x1E69E6158];
        *(v26 + 56) = MEMORY[0x1E69E6158];
        v32 = sub_1D1089930();
        *(v26 + 64) = v32;
        *(v26 + 32) = v28;
        *(v26 + 40) = v30;
        v33 = [v86 displayString];
        v34 = sub_1D139016C();
        v36 = v35;

        *(v26 + 96) = v31;
        *(v26 + 104) = v32;
        *(v26 + 72) = v34;
        *(v26 + 80) = v36;
        v37 = sub_1D138D1CC();
        v39 = v38;
        if (*(v26 + 16))
        {
          v37 = sub_1D139019C();
          v41 = v40;

          sub_1D10CD608(v25);
          v39 = v41;
        }

        else
        {
          sub_1D10CD608(v25);
        }

        v63 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v63 = v37 & 0xFFFFFFFFFFFFLL;
        }

        if (v63)
        {
          v48 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
          [v48 setDisplayItemType_];
          if (qword_1EE06AD00 != -1)
          {
            swift_once();
          }

          sub_1D138D1CC();
          v64 = sub_1D139012C();

          [v48 setTitle_];

          v65 = sub_1D139012C();

          [v48 setSubtitle_];

          [v48 setSeparatorStyle_];
          [v48 setSeparatorHidden_];
          [v48 setExtraTopPadding_];
          v66 = v86;

          v67 = v85;
        }

        else
        {

          v68 = v86;

          v69 = v85;
          v48 = 0;
        }
      }

      goto LABEL_31;
    }

    v50 = qword_1EE06AD00;
    v51 = v12;
    if (v50 != -1)
    {
      swift_once();
    }

    v52 = sub_1D138D1CC();
    v54 = v53;
    v55 = v51;
    v48 = sub_1D11EDE68(v52, v54, v12, v87, v16);
    v49 = v48;

    if (!v48)
    {
      goto LABEL_31;
    }

LABEL_12:

LABEL_31:
    v62 = &selRef_deselectRowAtIndexPath_animated_;
    goto LABEL_32;
  }

  if (v13)
  {
    v42 = qword_1EE06AD00;
    v43 = v13;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = sub_1D138D1CC();
    v46 = v45;
    v47 = v43;
    v48 = sub_1D11EDE68(v44, v46, v13, v87, v16);
    v49 = v48;

    if (!v48)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v48 = 0;
  v62 = &selRef_deselectRowAtIndexPath_animated_;
LABEL_32:
  v90[5] = v48;
  if (qword_1EE06AD00 != -1)
  {
LABEL_45:
    swift_once();
  }

  v70 = sub_1D138D1CC();
  v72 = v71;
  v73 = [a1 issueDate];
  v74 = [a1 v62[359]];
  v75 = sub_1D139016C();
  v77 = v76;

  v90[6] = sub_1D11EDE68(v70, v72, v73, v75, v77);
  v90[7] = sub_1D10CC170(a1);
  v90[8] = sub_1D1201218(a1);
  v90[9] = sub_1D10CC4D4(a1);
  v90[10] = sub_1D10CC6E4(a1);
  v90[11] = sub_1D10CC8C8(a1);
  v78 = 0;
  v90[12] = sub_1D128719C();
  a1 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v62 = v90;
LABEL_34:
  if (v78 <= 9)
  {
    v79 = 9;
  }

  else
  {
    v79 = v78;
  }

  while (v78 != 9)
  {
    if (v79 == v78)
    {
      __break(1u);
      goto LABEL_45;
    }

    v80 = v90[v78++ + 4];
    if (v80)
    {
      v81 = v80;
      MEMORY[0x1D3885D90]();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      a1 = v89;
      goto LABEL_34;
    }
  }

  sub_1D10CD53C(0);
  swift_arrayDestroy();
  return a1;
}

void sub_1D10CD53C(uint64_t a1)
{
  if (!qword_1EC60A678)
  {
    sub_1D106F934(255, &qword_1EC609BE8, off_1E83DAD48);
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60A678);
    }
  }
}

void sub_1D10CD5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D10CD608(uint64_t a1)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InternalConceptsFeedViewController(uint64_t a1)
{
  result = qword_1EC60A680;
  if (!qword_1EC60A680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D10CD720@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1EC60AAB8);
  v4 = *(v1 + qword_1EC60AAC0);
  v5 = [v3 healthStore];
  v6 = [v5 profileIdentifier];

  sub_1D139092C();
  v7 = type metadata accessor for ConceptListViewDataSourceProvider();
  swift_allocObject();
  v8 = sub_1D133C8A4(v4, v6, v10);
  a1[3] = v7;
  result = sub_1D10CD840();
  a1[4] = result;
  *a1 = v8;
  return result;
}

id sub_1D10CD800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalConceptsFeedViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D10CD840()
{
  result = qword_1EC60A690;
  if (!qword_1EC60A690)
  {
    type metadata accessor for ConceptListViewDataSourceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A690);
  }

  return result;
}

id sub_1D10CD918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v5 = result;
    v6 = [result isAppleInternalInstall];

    if (v6 && (sub_1D10CDB30(), v7 = sub_1D139084C(), v8 = sub_1D139012C(), v9 = [v7 hk:v8 keyExists:?], v7, v8, v9))
    {
      v10 = sub_1D139084C();
      v11 = sub_1D139012C();
      v12 = [v10 integerForKey_];

      return v12;
    }

    else
    {
      return a3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D10CDA28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v5 = result;
    v6 = [result isAppleInternalInstall];

    if (v6)
    {
      sub_1D10CDB30();
      v7 = sub_1D139084C();
      v8 = sub_1D139012C();
      v9 = [v7 hk:v8 keyExists:?];

      if (v9)
      {
        v10 = sub_1D139084C();
        v11 = sub_1D139012C();
        a3 = [v10 BOOLForKey_];
      }
    }

    return (a3 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D10CDB30()
{
  result = qword_1EE069590;
  if (!qword_1EE069590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE069590);
  }

  return result;
}

uint64_t sub_1D10CDBF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1D138E60C();
  sub_1D138E5FC();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_1D138E6AC();
  v9(v8, v2);
  return v10;
}

uint64_t sub_1D10CDD14(char *a1)
{
  v2 = v1;
  sub_1D10D1E0C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = qword_1EC60A6A8;
  v8 = *(v2 + qword_1EC60A6A8);
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_qrImage);
    v10 = *&a1[OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_qrImage];
    *&a1[OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_qrImage] = v9;
    v11 = v9;

    v12 = *(v2 + v7);
  }

  else
  {
    v12 = 0;
  }

  *(v2 + v7) = a1;
  v13 = a1;

  v14 = sub_1D13905DC();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1D13905AC();

  v15 = sub_1D139059C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v2;
  sub_1D107877C(0, 0, v6, &unk_1D13A0558, v16);
}

uint64_t sub_1D10CDEB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[4] = a4;
  v4[5] = *a4;
  v5 = sub_1D138F0BC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1D13905AC();
  v4[10] = sub_1D139059C();
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_1D10CDFE4;

  return sub_1D10CE49C();
}

uint64_t sub_1D10CDFE4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D139055C();
    v4 = v3;
    v5 = sub_1D10CE240;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    v5 = sub_1D10CE11C;
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D10CE11C(uint64_t a1)
{
  *(v1 + 104) = sub_1D139059C();
  v3 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10CE1A8, v3, v2);
}

uint64_t sub_1D10CE1A8()
{

  sub_1D10CEF18();
  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D1078468, v1, v0);
}

uint64_t sub_1D10CE240()
{
  v25 = v0;
  v1 = *(v0 + 96);

  sub_1D138F06C();

  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v23 = *(v0 + 64);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v0 + 16) = v8;
    swift_getMetatypeMetadata();
    v11 = sub_1D13901EC();
    v13 = sub_1D11DF718(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 24) = v5;
    v14 = v5;
    sub_1D1080EA4(0, &qword_1EE06B690, MEMORY[0x1E69E7280]);
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D101F000, v3, v4, "%s: Failed to generate QR images, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    v20 = *(v0 + 48);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D10CE49C()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = sub_1D138F0BC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1D13905AC();
  v1[11] = sub_1D139059C();
  v3 = sub_1D139055C();
  v1[12] = v3;
  v1[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D10CE5F8, v3, v4);
}

uint64_t sub_1D10CE5F8()
{
  v47 = v0;
  v46[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0[5] + qword_1EC60A6A8);
  v0[14] = v1;
  if (!v1)
  {

    sub_1D138F06C();

    v16 = sub_1D138F0AC();
    v17 = sub_1D139081C();

    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[7];
    if (v18)
    {
      v22 = v0[6];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = v24;
      *v23 = 136315138;
      v0[2] = v22;
      swift_getMetatypeMetadata();
      v25 = sub_1D13901EC();
      v27 = sub_1D11DF718(v25, v26, v46);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1D101F000, v16, v17, "%s: No SCD context, cannot generate QR image", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1D38882F0](v24, -1, -1);
      MEMORY[0x1D38882F0](v23, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    goto LABEL_22;
  }

  v2 = OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_qrImage;
  v0[15] = OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_qrImage;
  if (*&v1[v2])
  {
    v3 = v1;

    sub_1D138F06C();

    v4 = sub_1D138F0AC();
    v5 = sub_1D139081C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[10];
    v9 = v0[7];
    v8 = v0[8];
    if (v6)
    {
      v10 = v0[6];
      v45 = v3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46[0] = v12;
      *v11 = 136315138;
      v0[4] = v10;
      swift_getMetatypeMetadata();
      v13 = sub_1D13901EC();
      v15 = sub_1D11DF718(v13, v14, v46);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D101F000, v4, v5, "%s: Already have QR image, not re-fetching", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1D38882F0](v12, -1, -1);
      MEMORY[0x1D38882F0](v11, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_22;
  }

  v28 = OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_group;
  v29 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_group];
  v30 = v1;
  v31 = [v29 mainRecord];
  v0[16] = v31;
  if (!v31)
  {
    goto LABEL_20;
  }

  v32 = v31;
  v33 = [*&v1[v28] QRRepresentation];
  v0[17] = v33;
  if (!v33)
  {

    goto LABEL_22;
  }

  v34 = v33;
  v0[3] = 0;
  v35 = [v33 orderedSegmentsWithError_];
  v36 = v0[3];
  if (!v35)
  {
    v44 = v36;

    sub_1D138D2BC();

    swift_willThrow();

    v43 = v0[1];
    goto LABEL_23;
  }

  v37 = v35;
  sub_1D106F934(0, &qword_1EC609AD0, 0x1E69A3FC8);
  v38 = sub_1D139045C();
  v39 = v36;

  if (v38 >> 62)
  {
    v40 = sub_1D13910DC();
  }

  else
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v40 != 1 && (sub_1D1390BFC() & 1) == 0)
  {

LABEL_20:

LABEL_22:

    v43 = v0[1];
LABEL_23:

    return v43();
  }

  v41 = swift_task_alloc();
  v0[18] = v41;
  *v41 = v0;
  v41[1] = sub_1D10CEB7C;

  return sub_1D1083E00(v34);
}

uint64_t sub_1D10CEB7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);
  if (v1)
  {
    v7 = sub_1D10CEE5C;
  }

  else
  {
    v7 = sub_1D10CECEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D10CECEC()
{
  v1 = *(v0 + 152);

  if (v1 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1D3886B70](0, *(v0 + 152));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(*(v0 + 152) + 32);
  }

  v3 = sub_1D10838F8(158.0);

LABEL_9:
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);

  v7 = *&v6[v5];
  *&v6[v5] = v3;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D10CEE5C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

void sub_1D10CEF18()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138FF3C();
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + qword_1EC60A6A8);
  if (v12)
  {
    v43 = v11;
    v44 = v9;
    v45 = v8;
    v50 = v12;
    v13 = sub_1D12869C4(v50);
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v16 = 0;
      v48 = v14 & 0xFFFFFFFFFFFFFF8;
      v49 = v14 & 0xC000000000000001;
      v17 = MEMORY[0x1E69E7CC0];
      v46 = i;
      v47 = v1;
      while (1)
      {
        if (v49)
        {
          v18 = MEMORY[0x1D3886B70](v16, v14);
        }

        else
        {
          if (v16 >= *(v48 + 16))
          {
            goto LABEL_22;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v55 = v18;
        sub_1D10CF48C(&v55, v50, v1, &v51);

        if (v52)
        {
          sub_1D102CC18(&v51, v54);
          sub_1D102CC18(v54, &v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v17 = sub_1D10F857C(0, v17[2] + 1, 1, v17);
            v56 = v17;
          }

          v23 = v17[2];
          v22 = v17[3];
          if (v23 >= v22 >> 1)
          {
            v17 = sub_1D10F857C((v22 > 1), v23 + 1, 1, v17);
            v56 = v17;
          }

          v24 = v52;
          v25 = v53;
          v26 = __swift_mutable_project_boxed_opaque_existential_1(&v51, v52);
          v27 = MEMORY[0x1EEE9AC00](v26);
          v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v29, v27);
          sub_1D125DA54(v23, v29, &v56, v24, v25);
          __swift_destroy_boxed_opaque_existential_1Tm(&v51);
          i = v46;
          v1 = v47;
        }

        else
        {
          sub_1D10A72B8(&v51);
        }

        ++v16;
        if (v20 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_25:

    sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
    v38 = sub_1D1390A7C();
    v40 = v43;
    v39 = v44;
    *v43 = v38;
    v41 = v45;
    (*(v39 + 104))(v40, *MEMORY[0x1E69E8020], v45);
    v42 = sub_1D138FF5C();
    (*(v39 + 8))(v40, v41);
    if (v42)
    {
      sub_1D110A5C8(v17);

      sub_1D138E5AC();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D138F06C();

    v31 = sub_1D138F0AC();
    v32 = sub_1D139081C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v54[0] = v34;
      *v33 = 136315138;
      *&v51 = v2;
      swift_getMetatypeMetadata();
      v35 = sub_1D13901EC();
      v37 = sub_1D11DF718(v35, v36, v54);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1D101F000, v31, v32, "%s: No SCD context, cannot update data source items", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1D38882F0](v34, -1, -1);
      MEMORY[0x1D38882F0](v33, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1D10CF48C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  result = [*a1 displayItemType];
  if (result <= 14)
  {
    if (result != 11)
    {
      if (result == 13)
      {
        result = [v7 image];
        if (result)
        {
          v9 = result;
          v10 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_group);
          v11 = type metadata accessor for QRCodeItem();
          v12 = swift_allocObject();
          v12[3] = v10;
          v12[4] = 0;
          v12[2] = v9;
          *(a4 + 24) = v11;
          *(a4 + 32) = sub_1D10D1288(&qword_1EC60A6E8, v13, type metadata accessor for QRCodeItem, &unk_1D13A0478);
          *a4 = v12;
          return v10;
        }
      }

      goto LABEL_14;
    }

    result = [*(a2 + OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_group) medicalRecords];
    if (result)
    {
      v26 = result;
      sub_1D106F934(0, &qword_1EE06B0E0, 0x1E696C250);
      v27 = sub_1D139045C();

      result = [v7 title];
      if (result)
      {
        v28 = result;
        v29 = sub_1D139016C();
        v31 = v30;

        v32 = *(a3 + qword_1EC60A698);
        v33 = type metadata accessor for MultiRecordItem();
        swift_allocObject();
        v34 = v32;
        v35 = sub_1D10D15BC(v29, v31, v27, v34);

        *(a4 + 24) = v33;
        v37 = &unk_1EC60A6F8;
        v38 = type metadata accessor for MultiRecordItem;
        v39 = &unk_1D13A19EC;
LABEL_18:
        result = sub_1D10D1288(v37, v36, v38, v39);
        *(a4 + 32) = result;
        *a4 = v35;
        return result;
      }

      goto LABEL_29;
    }

LABEL_14:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  if (result == 16)
  {
    result = [v7 title];
    if (result)
    {
      v40 = result;
      v41 = sub_1D139016C();
      v43 = v42;

      result = [v7 attributedSubtitle];
      if (result)
      {
        v44 = result;
        v45 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_group);
        v46 = type metadata accessor for RecordVerificationItem(0);
        swift_allocObject();
        v47 = v45;
        v35 = sub_1D10D1A04(v41, v43, v44, v47);

        *(a4 + 24) = v46;
        v37 = &unk_1EC60A6F0;
        v38 = type metadata accessor for RecordVerificationItem;
        v39 = &unk_1D13A3010;
        v36 = 255;
        goto LABEL_18;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (result != 15)
  {
    goto LABEL_14;
  }

  sub_1D1086E1C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D139E710;
  *(v14 + 32) = sub_1D139016C();
  *(v14 + 40) = v15;
  result = [v7 title];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = result;
  v17 = [result removeSpecialCharactersAndWhiteSpaces];

  v18 = sub_1D139016C();
  v20 = v19;

  v62 = v18;

  MEMORY[0x1D3885C10](1819043139, 0xE400000000000000);

  *(v14 + 48) = v18;
  *(v14 + 56) = v20;
  v21 = sub_1D139044C();

  v22 = HKUIJoinStringsForAutomationIdentifier();

  if (v22)
  {
    v23 = sub_1D139016C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  result = [v7 title];
  if (!result)
  {
    goto LABEL_28;
  }

  v48 = result;
  v49 = v25;
  v50 = sub_1D139016C();
  v52 = v51;

  v53 = [v7 subtitle];
  v54 = v23;
  if (v53)
  {
    v55 = v53;
    v56 = sub_1D139016C();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = type metadata accessor for TitleSubtitleDetailItem(0);
  v60 = swift_allocObject();
  sub_1D138D5DC();
  v60[2] = v50;
  v60[3] = v52;
  v61 = MEMORY[0x1E69E7CC0];
  v60[4] = v56;
  v60[5] = v58;
  v60[6] = 0;
  v60[7] = v61;
  v60[8] = v54;
  v60[9] = v49;
  *(a4 + 24) = v59;
  result = sub_1D10D1288(&qword_1EC60A700, 255, type metadata accessor for TitleSubtitleDetailItem, &unk_1D13A3010);
  *(a4 + 32) = result;
  *a4 = v60;
  return result;
}

void sub_1D10CFA44()
{
  v1 = *(v0 + qword_1EC60A6A8);
}

uint64_t sub_1D10CFA94()
{
  v0 = sub_1D138EABC();
  v1 = *(v0 + qword_1EC60A698);

  v2 = *(v0 + qword_1EC60A6A8);

  return swift_deallocClassInstance();
}

uint64_t sub_1D10CFB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  if (sub_1D139016C() == a1 && v11 == a2)
  {

    goto LABEL_13;
  }

  v13 = sub_1D139162C();

  if (v13)
  {
LABEL_13:
    if (qword_1EC608CD0 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D138F36C();
    v18 = sub_1D138DE3C();
    swift_allocObject();
    v19 = sub_1D138DE1C();
    a3[3] = v18;
    result = sub_1D10D1288(&qword_1EC60B610, 255, MEMORY[0x1E69A34C8], MEMORY[0x1E69A34C0]);
    a3[4] = result;
    *a3 = v19;
    return result;
  }

  if (sub_1D139016C() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = sub_1D139162C();

    if ((v16 & 1) == 0)
    {
      a3[3] = sub_1D138DF7C();
      a3[4] = sub_1D10D1288(&qword_1EC60C2A0, 255, MEMORY[0x1E69A35B8], MEMORY[0x1E69A35B0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_1D138DF6C();
    }
  }

  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v23[0] = 0x74497265746F6F46;
  v23[1] = 0xEB000000005F6D65;
  sub_1D138D5DC();
  v20 = sub_1D138D59C();
  v22 = v21;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x1D3885C10](v20, v22);

  a3[3] = sub_1D138EA2C();
  a3[4] = sub_1D10D1288(&qword_1EC60A048, 255, MEMORY[0x1E69A3798], MEMORY[0x1E69A3790]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_1D138EA1C();
}

void sub_1D10CFF9C()
{

  v1 = *(v0 + 104);
}

uint64_t sub_1D10CFFCC()
{
  v0 = sub_1D1109C38();

  v1 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_1D10D0088()
{

  v1 = OBJC_IVAR____TtC15HealthRecordsUI23TitleSubtitleDetailItem_uuid;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1D10D01D0(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = sub_1D113E370(*(v4 + OBJC_IVAR____TtC15HealthRecordsUI22RecordVerificationItem_group));
  [a2 showViewController:v5 sender:v4];
}

uint64_t sub_1D10D023C()
{
  v7 = sub_1D139184C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v1 = *(v0 + 16);
  v2 = [v1 description];
  v3 = sub_1D139016C();
  v5 = v4;

  MEMORY[0x1D3885C10](v3, v5);

  return v7;
}

uint64_t sub_1D10D0390()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D10D03FC()
{
  type metadata accessor for QRCodeCell();
  sub_1D10D1288(&unk_1EC60F700, v0, type metadata accessor for QRCodeCell, &unk_1D13A03A8);
  return sub_1D138DECC();
}

uint64_t sub_1D10D04AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

id sub_1D10D0510()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell____lazy_storage___QRCodeView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell____lazy_storage___QRCodeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell____lazy_storage___QRCodeView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D10D05B8(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D10A71C0(v1 + v3, v8);
  if (v9)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0, MEMORY[0x1E69A3348]);
    type metadata accessor for QRCodeItem();
    if (swift_dynamicCast())
    {
      v4 = sub_1D10D0510();
      [v4 setImage_];
    }

    v5 = a1;
  }

  else
  {
    sub_1D10A72B8(a1);
    v5 = v8;
  }

  return sub_1D10A72B8(v5);
}

uint64_t (*sub_1D10D06A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell_item;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1D10D0730;
}

void sub_1D10D0730(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D10A71C0(v3[6] + v3[7], v3);
    if (v3[3])
    {
      sub_1D1080EA4(0, &qword_1EC60A3D0, MEMORY[0x1E69A3348]);
      type metadata accessor for QRCodeItem();
      if (swift_dynamicCast())
      {
        v4 = v3[5];
        v5 = sub_1D10D0510();
        [v5 setImage_];
      }
    }

    else
    {
      sub_1D10A72B8(v3);
    }
  }

  free(v3);
}

char *sub_1D10D0804(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell____lazy_storage___QRCodeView] = 0;
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell_item];
  v10 = type metadata accessor for QRCodeCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v64.receiver = v4;
  v64.super_class = v10;
  v11 = objc_msgSendSuper2(&v64, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_allocWithZone(MEMORY[0x1E69DCC20]);
  v13 = v11;
  v14 = [v12 init];
  v15 = [v13 contentView];
  [v15 addLayoutGuide_];

  v16 = [v14 leadingAnchor];
  v17 = [v13 &selRef_batches];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  [v19 setActive_];

  v20 = [v14 trailingAnchor];
  v21 = [v13 &selRef_batches];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  [v23 &selRef:1 setShouldCancelDataCollection:?];

  v24 = [v14 topAnchor];
  v25 = [v13 &selRef_batches];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  [v27 &selRef:1 setShouldCancelDataCollection:?];

  v28 = [v14 bottomAnchor];
  v29 = [v13 &selRef_batches];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  [v31 &selRef:1 setShouldCancelDataCollection:?];

  v32 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v33 = [objc_opt_self() whiteColor];
  [v32 setBackgroundColor_];

  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = [v13 &selRef_batches];
  [v34 addSubview_];

  v35 = [v32 centerXAnchor];
  v36 = [v14 centerXAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  [v37 &selRef:1 setShouldCancelDataCollection:?];
  v38 = [v32 centerYAnchor];
  v39 = [v14 centerYAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  [v40 &selRef:1 setShouldCancelDataCollection:?];
  v41 = sub_1D10D0510();
  [v41 setContentMode_];

  v42 = OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell____lazy_storage___QRCodeView;
  [*&v13[OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell____lazy_storage___QRCodeView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 addSubview_];
  v43 = [*&v13[v42] centerXAnchor];
  v44 = [v14 centerXAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  [v45 &selRef:1 setShouldCancelDataCollection:?];
  v46 = [*&v13[v42] centerYAnchor];
  v47 = [v14 centerYAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  [v48 &selRef:1 setShouldCancelDataCollection:?];
  v49 = *&v13[v42];
  v50 = [v13 contentView];

  [v49 hk:v50 alignVerticalConstraintsWithView:20.0 margin:?];
  v51 = [v32 widthAnchor];
  v52 = [*&v13[v42] widthAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 multiplier:1.0 constant:6.0];

  [v53 &selRef:1 setShouldCancelDataCollection:?];
  v54 = [v32 heightAnchor];
  v55 = [*&v13[v42] heightAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 multiplier:1.0 constant:6.0];

  [v56 &selRef:1 setShouldCancelDataCollection:?];
  v57 = [v32 layer];
  [v57 setCornerRadius_];

  v58 = [v32 layer];
  [v58 setCornerCurve_];

  [v32 setClipsToBounds_];
  sub_1D1086E1C();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1D139E710;
  *(v59 + 32) = sub_1D139016C();
  *(v59 + 40) = v60;
  *(v59 + 48) = 0x654365646F435251;
  *(v59 + 56) = 0xEA00000000006C6CLL;
  v61 = sub_1D139044C();

  v62 = HKUIJoinStringsForAutomationIdentifier();

  [v13 setAccessibilityIdentifier_];
  return v13;
}

id sub_1D10D10D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10D1174@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI10QRCodeCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

void (*sub_1D10D11D0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D10D06A8(v2);
  return sub_1D10B0564;
}

uint64_t sub_1D10D1288(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D10D12D0(void *a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3 = a1;

  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v1 action:sel_didTapDone];
  v5 = sub_1D113E26C(*(v1 + 24));
  v6 = [v5 navigationItem];
  [v6 setRightBarButtonItem_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v3 showViewController:v7 sender:v1];
}

void sub_1D10D13D4(void *a1)
{
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = type metadata accessor for SignedClinicalDataMultiRecordViewController();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_medicalRecords] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_profile] = v4;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_displayGroups] = MEMORY[0x1E69E7CC0];
  v10.receiver = v6;
  v10.super_class = v5;

  v7 = v4;
  v8 = objc_msgSendSuper2(&v10, sel_initWithUsingInsetStyling_, 1);
  if (v8)
  {
    v9 = v8;
    [a1 showViewController:v8 sender:{v1, v10.receiver, v10.super_class}];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D10D14A8(uint64_t a1)
{
  if (!qword_1EC60B620)
  {
    sub_1D1080EA4(255, &qword_1EC60A3D0, MEMORY[0x1E69A3348]);
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60B620);
    }
  }
}

id sub_1D10D1510@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    result = [v3 dismissViewControllerAnimated:1 completion:0];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_1D10D15BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v33 = a1;
  v34 = a2;
  sub_1D10D1E0C(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v32 = sub_1D138F15C();
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138F0FC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[12] = a3;
  v4[13] = a4;
  sub_1D10D1E0C(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1D138F17C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D139E700;
  (*(v15 + 104))(v17, *MEMORY[0x1E69DBF28], v14);
  v19 = sub_1D138F10C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = a4;
  sub_1D138F14C();
  sub_1D138F11C();
  (*(v11 + 8))(v13, v32);
  (*(v15 + 8))(v17, v14);
  sub_1D1086E1C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D139E710;
  *(v21 + 32) = sub_1D139016C();
  *(v21 + 40) = v22;
  *(v21 + 48) = 0x63655269746C754DLL;
  *(v21 + 56) = 0xEF6C6C654364726FLL;
  v23 = sub_1D139044C();

  v24 = HKUIJoinStringsForAutomationIdentifier();

  if (v24)
  {
    v25 = sub_1D139016C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  type metadata accessor for TextItemCell();
  sub_1D10D1288(&unk_1EC60F720, 255, type metadata accessor for TextItemCell, &unk_1D13A75DC);
  v5[10] = sub_1D138DECC();
  v5[11] = v28;
  v29 = v34;
  v5[2] = v33;
  v5[3] = v29;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = v18;
  v5[8] = v25;
  v5[9] = v27;
  return v5;
}

void *sub_1D10D1A04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  sub_1D10D1E0C(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v28 = sub_1D138F15C();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138F0FC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC15HealthRecordsUI22RecordVerificationItem_group) = a4;
  sub_1D10D1E0C(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1D138F17C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E700;
  (*(v13 + 104))(v15, *MEMORY[0x1E69DBF28], v12);
  v17 = sub_1D138F10C();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = a4;
  sub_1D138F14C();
  sub_1D138F11C();
  (*(v9 + 8))(v11, v28);
  (*(v13 + 8))(v15, v12);
  sub_1D1086E1C();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D139E710;
  *(v19 + 32) = sub_1D139016C();
  *(v19 + 40) = v20;
  *(v19 + 48) = 0xD000000000000016;
  *(v19 + 56) = 0x80000001D13BB2E0;
  v21 = sub_1D139044C();

  v22 = HKUIJoinStringsForAutomationIdentifier();

  if (v22)
  {
    v23 = sub_1D139016C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_1D138D5DC();
  v26 = v30;
  v4[2] = v29;
  v4[3] = v26;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = v31;
  v4[7] = v16;
  v4[8] = v23;
  v4[9] = v25;
  return v4;
}

void sub_1D10D1E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D10D1E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D10CDEB0(a1, v4, v5, v6);
}

uint64_t AccountViewData.accountId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D138D5EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccountViewData.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountViewData(0) + 20));

  return v1;
}

uint64_t AccountViewData.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountViewData(0) + 24));

  return v1;
}

uint64_t AccountViewData.init(accountId:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1D138D5EC();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for AccountViewData(0);
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

id sub_1D10D20D8()
{
  v1 = qword_1EC60A720;
  v2 = *(v0 + qword_1EC60A720);
  if (v2)
  {
    v3 = *(v0 + qword_1EC60A720);
  }

  else
  {
    v4 = sub_1D10D213C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D10D213C(uint64_t a1)
{
  sub_1D10D49C8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E6E0;
  v3 = *(a1 + qword_1EC60A728);
  v4 = *(a1 + qword_1EC60A730);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D106F934(0, &qword_1EC609680, 0x1E69DD250);
  v6 = v3;
  v7 = v4;
  v8 = sub_1D139044C();

  v9 = [v5 initWithArrangedSubviews_];

  [v9 setAxis_];
  [v9 setSpacing_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  return v9;
}

id sub_1D10D227C()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setFont_];
  [v1 setNumberOfLines_];
  [v1 setTextColor_];

  v6 = sub_1D139016C();
  v7 = v2;
  v3 = v1;

  MEMORY[0x1D3885C10](0x746E756F6363412ELL, 0xEE00726564616548);

  MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);

  v4 = sub_1D139012C();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  return v3;
}

id sub_1D10D23F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = sub_1D139016C();
  v6 = v1;
  v2 = v0;

  MEMORY[0x1D3885C10](0x746E756F6363412ELL, 0xEE00726564616548);

  MEMORY[0x1D3885C10](0x6C7469746275532ELL, 0xE900000000000065);

  v3 = sub_1D139012C();

  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

void sub_1D10D2538()
{
  v1 = *&v0[qword_1EC60A718];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = sub_1D10D20D8();
  [v0 addSubview_];

  sub_1D10D25E4();
}

void sub_1D10D25E4()
{
  v44 = objc_opt_self();
  sub_1D10D49C8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D139E6E0;
  v2 = *&v0[qword_1EC60A718];
  v3 = [v2 widthAnchor];
  v4 = [v3 constraintEqualToConstant_];

  *(v1 + 32) = v4;
  v5 = [v2 heightAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *(v1 + 40) = v6;
  sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);
  v7 = sub_1D139044C();

  [v44 activateConstraints_];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139FBC0;
  v9 = [v2 leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v8 + 32) = v11;
  v12 = [v2 trailingAnchor];
  v13 = sub_1D10D20D8();
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-8.0];
  *(v8 + 40) = v15;
  v16 = qword_1EC60A720;
  v17 = [*&v0[qword_1EC60A720] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 &selRef:v18 dateWithTimeIntervalSinceNow:? + 5];

  *(v8 + 48) = v19;
  v20 = [v2 topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor_];

  *(v8 + 56) = v22;
  v23 = [*&v0[v16] topAnchor];
  v24 = [v0 topAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor_];

  *(v8 + 64) = v25;
  v26 = [v2 centerYAnchor];
  v27 = [*&v0[v16] centerYAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  LODWORD(v29) = 1148846080;
  [v28 setPriority_];
  *(v8 + 72) = v28;
  v30 = [v0 bottomAnchor];
  v31 = [v2 bottomAnchor];
  v32 = [v30 constraintGreaterThanOrEqualToAnchor_];

  *(v8 + 80) = v32;
  v33 = [v0 bottomAnchor];
  v34 = [*&v0[v16] bottomAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor_];

  *(v8 + 88) = v35;
  v36 = [*&v0[v16] topAnchor];
  v37 = [v0 topAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  LODWORD(v39) = 1132068864;
  [v38 setPriority_];
  *(v8 + 96) = v38;
  v40 = [v0 bottomAnchor];
  v41 = [*&v0[v16] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  LODWORD(v43) = 1132068864;
  [v42 setPriority_];
  *(v8 + 104) = v42;
  v45 = sub_1D139044C();

  [v44 activateConstraints_];
}

id sub_1D10D2BBC(double a1, double a2, double a3, double a4)
{
  v9 = qword_1EC60A718;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for AccountIconView(0)) init];
  *&v4[qword_1EC60A720] = 0;
  v10 = qword_1EC60A728;
  *&v4[v10] = sub_1D10D227C();
  v11 = qword_1EC60A730;
  *&v4[v11] = sub_1D10D23F8();
  *&v4[qword_1EC60A738] = 0x4044000000000000;
  *&v4[qword_1EC60A740] = 0x4020000000000000;
  *&v4[qword_1EC60A748] = 0x4000000000000000;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for AccountView2(0);
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1D10D2CD0(void *a1)
{
  v3 = qword_1EC60A718;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for AccountIconView(0)) init];
  *&v1[qword_1EC60A720] = 0;
  v4 = qword_1EC60A728;
  *&v1[v4] = sub_1D10D227C();
  v5 = qword_1EC60A730;
  *&v1[v5] = sub_1D10D23F8();
  *&v1[qword_1EC60A738] = 0x4044000000000000;
  *&v1[qword_1EC60A740] = 0x4020000000000000;
  *&v1[qword_1EC60A748] = 0x4000000000000000;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AccountView2(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1D10D2DE4()
{
  v1 = *(v0 + qword_1EC60A730);
}

void sub_1D10D2E5C(uint64_t a1)
{
  v2 = *(a1 + qword_1EC60A730);
}

id sub_1D10D2EFC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = type metadata accessor for AccountViewData(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10D3384(0, &qword_1EC60A708, type metadata accessor for AccountViewData);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  sub_1D10D3384(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v38 - v20;
  v40 = a1;
  v41 = v4;
  sub_1D10D33D8(a1, v18);
  v22 = *(v7 + 48);
  if (v22(v18, 1, v6) == 1)
  {
    v23 = type metadata accessor for AccountIconViewData(0);
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  }

  else
  {
    sub_1D10D46D0(v18, v9);
    v24 = sub_1D138D5EC();
    (*(*(v24 - 8) + 16))(v21, v9, v24);
    v25 = &v9[*(v6 + 20)];
    v27 = *v25;
    v26 = *(v25 + 1);

    sub_1D10D4674(v9);
    v28 = type metadata accessor for AccountIconViewData(0);
    v29 = &v21[*(v28 + 20)];
    *v29 = v27;
    *(v29 + 1) = v26;
    (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
  }

  sub_1D1303C34(v21);
  sub_1D10D4618(v21, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  v31 = v40;
  v30 = v41;
  v32 = *&v41[*v38];
  sub_1D10D33D8(v40, v15);
  if (v22(v15, 1, v6) == 1)
  {
    sub_1D10D4618(v15, &qword_1EC60A708, type metadata accessor for AccountViewData);
    v33 = 0;
  }

  else
  {

    sub_1D10D4674(v15);
    v33 = sub_1D139012C();
  }

  [v32 setText_];

  v34 = *&v30[*v39];
  sub_1D10D33D8(v31, v12);
  if (v22(v12, 1, v6) == 1)
  {
    sub_1D10D4618(v12, &qword_1EC60A708, type metadata accessor for AccountViewData);
LABEL_11:
    v36 = 0;
    goto LABEL_12;
  }

  v35 = *&v12[*(v6 + 24) + 8];

  sub_1D10D4674(v12);
  if (!v35)
  {
    goto LABEL_11;
  }

  v36 = sub_1D139012C();

LABEL_12:
  [v34 setText_];

  return [v30 setNeedsLayout];
}

void sub_1D10D3384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D10D33D8(uint64_t a1, uint64_t a2)
{
  sub_1D10D3384(0, &qword_1EC60A708, type metadata accessor for AccountViewData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D10D3458(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D10D49C8(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D139E710;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    *(v5 + 48) = 0x56746E756F636341;
    *(v5 + 56) = 0xEB00000000776569;
    swift_bridgeObjectRetain_n();
    v6 = sub_1D139044C();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
    v8 = *&v2[qword_1EE06A3F0];
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E710;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    *(v9 + 48) = 0x656C746954;
    *(v9 + 56) = 0xE500000000000000;

    v10 = sub_1D139044C();

    v11 = HKUIJoinStringsForAutomationIdentifier();

    [v8 setAccessibilityIdentifier_];
    v12 = *&v2[qword_1EE06A3E8];
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D139E710;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    *(v13 + 48) = 0x656C746974627553;
    *(v13 + 56) = 0xE800000000000000;
    v14 = sub_1D139044C();

    v15 = HKUIJoinStringsForAutomationIdentifier();

    [v12 setAccessibilityIdentifier_];
  }
}

id sub_1D10D36B4()
{
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[qword_1EE06A3E8];

  return [v0 addSubview_];
}

void sub_1D10D373C(void *a1, void *a2)
{
  v4 = *(v2 + *a1);
  v5 = objc_opt_self();
  v6 = [v5 _preferredFontForTextStyle_variant_];
  [v4 setFont_];

  v7 = *(v2 + *a2);
  v8 = [v5 _preferredFontForTextStyle_variant_];
  [v7 setFont_];
}

void sub_1D10D383C(void *a1, void *a2)
{
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  [v2 setBackgroundColor_];

  v7 = *&v2[*a1];
  v8 = [v5 labelColor];
  [v7 setTextColor_];

  v9 = *&v2[*a2];
  v10 = [v5 secondaryLabelColor];
  [v9 setTextColor_];
}

void sub_1D10D393C(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for AccountView(0);
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v1 bounds];
  sub_1D10D3A88(v4, v2);
  [*&v1[qword_1EE06A3F8] setFrame_];
  [*&v1[qword_1EE06A3F0] setFrame_];
  [*&v1[qword_1EE06A3E8] setFrame_];
}

double sub_1D10D3A0C(void *a1, double a2)
{
  v3 = a1;
  sub_1D10D3A88(v5, a2);
  CGRectGetMaxY(v5[2]);
  CGRectGetMaxY(v5[0]);

  return a2;
}

CGFloat sub_1D10D3A88@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = sub_1D139160C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [v3 effectiveUserInterfaceLayoutDirection];
  [v3 directionalLayoutMargins];
  v12 = v11;
  [v3 directionalLayoutMargins];
  v14 = v13;
  [v3 layoutMargins];
  v16 = v15;
  v17 = v15;
  v38 = a2 - v12;
  v39 = v12;
  v18 = a2 - v12 - v14 + -40.0 + -16.0;
  v19 = *&v3[qword_1EE06A3F0];
  [v19 sizeThatFits_];
  v20 = *MEMORY[0x1E69E7040];
  v21 = *(v7 + 104);
  v21(v10, v20, v6);
  v22 = [v19 traitCollection];
  [v22 displayScale];
  sub_1D138D86C();
  [v22 &selRef_setLineCap_];
  sub_1D138D86C();
  v24 = v23;

  v25 = *(v7 + 8);
  v25(v10, v6);
  v26 = *&v3[qword_1EE06A3E8];
  [v26 sizeThatFits_];
  v40 = v21;
  v21(v10, v20, v6);
  v27 = [v26 traitCollection];
  [v27 displayScale];
  sub_1D138D86C();
  [v27 displayScale];
  sub_1D138D86C();
  v29 = v28;

  v25(v10, v6);
  v30 = v24 + 2.0 + v29;
  v31 = MEMORY[0x1E69E7048];
  v32 = v17;
  if (v30 >= 40.0)
  {
    v40(v10, *MEMORY[0x1E69E7048], v6);
    sub_1D138D88C();
    v32 = v33;
    v25(v10, v6);
  }

  if (v32 <= v16)
  {
    v32 = v16;
  }

  if (v30 <= 40.0)
  {
    v40(v10, *v31, v6);
    sub_1D138D88C();
    v17 = v34;
    v25(v10, v6);
  }

  if (v41 == 1)
  {
    v35 = v38 + -40.0;
  }

  else
  {
    v42.size.width = 40.0;
    v35 = v39;
    v42.origin.x = v39;
    v42.origin.y = v32;
    v42.size.height = 40.0;
    v14 = CGRectGetMaxX(v42) + 16.0;
  }

  if (v17 > v16)
  {
    v16 = v17;
  }

  v43.origin.x = v14;
  v43.origin.y = v16;
  v43.size.width = v18;
  v43.size.height = v24;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = v14;
  v44.origin.y = v16;
  v44.size.width = v18;
  v44.size.height = v24;
  result = CGRectGetMaxY(v44) + 2.0;
  *a1 = v35;
  *(a1 + 8) = v32;
  *(a1 + 16) = vdupq_n_s64(0x4044000000000000uLL);
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v24;
  *(a1 + 64) = MinX;
  *(a1 + 72) = result;
  *(a1 + 80) = v18;
  *(a1 + 88) = v29;
  return result;
}

id AccountView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AccountView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = qword_1EE06A3F8;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for AccountIconView(0)) init];
  v10 = qword_1EE06A3F0;
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) &selRef_constraintEqualToAnchor_multiplier_constant_];
  [v13 setFont_];
  [v13 setNumberOfLines_];
  v14 = v12;
  [v13 setTextColor_];

  *&v4[v10] = v13;
  v15 = qword_1EE06A3E8;
  v16 = [v11 labelColor];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v17 setFont_];
  [v17 setNumberOfLines_];
  v18 = v16;
  [v17 setTextColor_];

  *&v4[v15] = v17;
  *&v4[qword_1EE06A3E0] = 0x4044000000000000;
  *&v4[qword_1EE06A3D0] = 0x4030000000000000;
  *&v4[qword_1EE06A3D8] = 0x4000000000000000;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for AccountView(0);
  return objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
}

id AccountView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AccountView.init(coder:)(void *a1)
{
  v2 = qword_1EE06A3F8;
  *&v1[v2] = [objc_allocWithZone(type metadata accessor for AccountIconView(0)) init];
  v3 = qword_1EE06A3F0;
  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) &selRef_constraintEqualToAnchor_multiplier_constant_];
  [v6 setFont_];
  [v6 setNumberOfLines_];
  v7 = v5;
  [v6 setTextColor_];

  *&v1[v3] = v6;
  v8 = qword_1EE06A3E8;
  v9 = [v4 labelColor];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v10 setFont_];
  [v10 setNumberOfLines_];
  v11 = v9;
  [v10 setTextColor_];

  *&v1[v8] = v10;
  *&v1[qword_1EE06A3E0] = 0x4044000000000000;
  *&v1[qword_1EE06A3D0] = 0x4030000000000000;
  *&v1[qword_1EE06A3D8] = 0x4000000000000000;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AccountView(0);
  v12 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

void sub_1D10D43F8()
{
  v1 = *(v0 + qword_1EE06A3E8);
}