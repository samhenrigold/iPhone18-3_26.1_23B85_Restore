id OBKStyleBulletListItemView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA4583C4()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button];

  return [v0 addSubview_];
}

void sub_1BA458450()
{
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5880;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 &selRef:v7 numberWithInteger:? + 5];

  *(v1 + 40) = v8;
  v9 = [v0 trailingAnchor];
  v10 = [v2 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel];
  v13 = [v12 leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 &selRef:v14 numberWithInteger:? + 5];

  *(v1 + 56) = v15;
  v16 = [v12 topAnchor];
  v17 = [v2 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:14.0];

  *(v1 + 64) = v18;
  v71 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextStackedConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextStackedConstraints] = v1;

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4C27A0;
  v20 = [v2 topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor_];

  *(v19 + 32) = v22;
  v23 = [v2 leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v19 + 40) = v25;
  v26 = [v0 bottomAnchor];
  v27 = [v2 bottomAnchor];
  v28 = [v26 constraintGreaterThanOrEqualToAnchor_];

  *(v19 + 48) = v28;
  v29 = [v2 centerYAnchor];
  v30 = [v0 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 56) = v31;
  v32 = [v12 leadingAnchor];
  v33 = [v2 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:14.0];

  *(v19 + 64) = v34;
  v35 = [v12 trailingAnchor];
  v36 = [v0 trailingAnchor];
  v37 = [v35 &selRef:v36 numberWithInteger:? + 5];

  *(v19 + 72) = v37;
  *(v19 + 80) = sub_1BA458EDC();
  v70 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextSideBySideConstraints;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextSideBySideConstraints] = v19;

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4BBC90;
  v39 = [v0 trailingAnchor];
  v40 = [v12 trailingAnchor];
  v41 = [v39 constraintGreaterThanOrEqualToAnchor_];

  *(v38 + 32) = v41;
  v42 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel];
  v43 = [v42 topAnchor];
  v44 = [v12 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:3.0];

  *(v38 + 40) = v45;
  v46 = [v42 leadingAnchor];
  v47 = [v12 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v38 + 48) = v48;
  v49 = [v42 trailingAnchor];
  v50 = [v0 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v38 + 56) = v51;
  v52 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button];
  v53 = [v52 topAnchor];
  v54 = [v42 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:2.0];

  *(v38 + 64) = v55;
  v56 = [v52 leadingAnchor];
  v57 = [v42 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v38 + 72) = v58;
  v59 = [v0 trailingAnchor];
  v60 = [v52 trailingAnchor];
  v61 = [v59 constraintGreaterThanOrEqualToAnchor_];

  *(v38 + 80) = v61;
  v62 = [v0 bottomAnchor];
  v63 = [v52 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v38 + 88) = v64;
  v65 = [v0 traitCollection];
  v66 = [v65 preferredContentSizeCategory];

  LOBYTE(v65) = sub_1BA4A74F8();
  v67 = v71;
  if ((v65 & 1) == 0)
  {
    v67 = v70;
  }

  v68 = *&v67[v0];

  v69 = objc_opt_self();
  sub_1B9F73B50(v68);
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v72 = sub_1BA4A6AE8();

  [v69 activateConstraints_];
}

id sub_1BA458D40()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  sub_1BA4A74F8();
  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v4 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];

  v7.receiver = v0;
  v7.super_class = type metadata accessor for OBKStyleBulletListItemView();
  return objc_msgSendSuper2(&v7, sel_updateConstraints);
}

id sub_1BA458EDC()
{
  v1 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel] text];
  v2 = v1;
  if (v1)
  {
  }

  v3 = &v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration];
  swift_beginAccess();
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel];
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 + 1) == 0;
  }

  if (v5)
  {
    v6 = [v4 centerYAnchor];
    v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView] centerYAnchor];
  }

  else
  {
    v6 = [v4 topAnchor];
    v7 = [v0 topAnchor];
  }

  v8 = v7;
  v9 = [v6 constraintEqualToAnchor_];

  return v9;
}

void sub_1BA458FF4(uint64_t a1)
{
  v3 = objc_opt_self();
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B7510;
  v5 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel) leadingAnchor];
  v6 = [*(a1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel) leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView) centerXAnchor];
  v9 = [*(a1 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView) centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v11 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

double sub_1BA45919C()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration];
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (v3)
  {
    sub_1BA1AE4BC(v2, v3, v4, v5);

    v6 = [v0 viewController];
    v4();
  }

  else
  {
    sub_1BA1AE4BC(v2, 0, v4, v5);
    return sub_1BA1AE55C(v2, 0, v4, v5);
  }

  return result;
}

id OBKStyleBulletListItemView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OBKStyleBulletListItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OBKStyleBulletListItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s18HealthExperienceUI26OBKStyleBulletListItemViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];

  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_titleLabel;
  *(v0 + v5) = sub_1BA1AE0E4();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_descriptionLabel;
  *(v0 + v6) = sub_1BA457578();
  v7 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_buttonConfiguration);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_button;
  *(v0 + v8) = sub_1BA4578A0();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextStackedConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI26OBKStyleBulletListItemView_imageAndTextSideBySideConstraints) = v9;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA459780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t PlaceholderTextDataSource.init(placeholderText:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v33 = *v2;
  v34 = v2;
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0xD000000000000014;
  v36 = 0x80000001BA4EB850;
  sub_1BA4A1788();
  v8 = sub_1BA4A1748();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x1BFAF1350](v8, v10);

  v13 = v35;
  v12 = v36;
  v35 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8(v14);
  v15 = sub_1BA4A6808();
  v17 = v16;
  sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
  inited = swift_initStackObject();
  v30 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA45A458(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = v30;
  *(v19 + 56) = &type metadata for PlaceholderTextItem;
  *(v19 + 64) = sub_1B9FE9528();
  v20 = swift_allocObject();
  *(v19 + 32) = v20;
  *(v20 + 16) = v13;
  *(v20 + 24) = v12;
  *(v20 + 32) = v15;
  *(v20 + 40) = v17;
  v21 = v32;
  *(v20 + 48) = v31;
  *(v20 + 56) = v21;
  *(v20 + 64) = 0;
  sub_1BA4A1788();
  v22 = sub_1BA4A1748();
  v24 = v23;
  v11(v7, v3);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v26 = Array<A>.identifierToIndexDict()(v25);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v19;
  *(inited + 56) = v26;
  *(inited + 64) = v22;
  *(inited + 72) = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = v33;
  v28 = sub_1B9F1DAFC(inited, 1, sub_1BA45A268, v27);

  return v28;
}

uint64_t sub_1BA459ADC(uint64_t a1, uint64_t a2)
{
  sub_1B9F1C048(0, &qword_1EBBF2D78, &type metadata for PlaceholderTextItem);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;

  sub_1BA459E78(a1, a2, 0, inited + 32);
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  sub_1BA45A458(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  v7 = sub_1B9FE5D88(inited);
  swift_setDeallocating();
  v8 = sub_1BA45A4BC(inited + 32);
  *(v6 + 32) = v7;
  (*(v2 + 592))(v11, v8);
  sub_1BA0117AC();
  v9 = sub_1B9F293A8(v11);
  return MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:sectionLayout:)(v6, 1, v9);
}

uint64_t PlaceholderTextDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

double sub_1BA459D40@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBBE8848 != -1)
  {
    swift_once();
  }

  v9[4] = xmmword_1EDC67D78;
  v9[5] = *&qword_1EDC67D88;
  v9[6] = xmmword_1EDC67D98;
  v9[7] = unk_1EDC67DA8;
  v9[0] = xmmword_1EDC67D38;
  v9[1] = *&qword_1EDC67D48;
  v9[2] = xmmword_1EDC67D58;
  v9[3] = *&qword_1EDC67D68;
  v16 = qword_1EDC67D48;
  v15 = xmmword_1EDC67D38;
  v2 = unk_1EDC67D50;
  v4 = xmmword_1EDC67D58;
  v3 = qword_1EDC67D68;
  v14 = qword_1EDC67DB0;
  v12 = unk_1EDC67D90;
  v13 = *(&xmmword_1EDC67D98 + 8);
  v10 = unk_1EDC67D70;
  v11 = *(&xmmword_1EDC67D78 + 8);
  sub_1B9F1D9A4(v9, &v8);
  sub_1B9F1DA18(v2, v4, *(&v4 + 1), v3);
  *a1 = v15;
  *(a1 + 16) = v16;
  v5 = v11;
  *(a1 + 56) = v10;
  *(a1 + 72) = v5;
  v6 = v13;
  *(a1 + 88) = v12;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = v6;
  *(a1 + 120) = v14;
  sub_1B9F1DA18(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t sub_1BA459E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0xD000000000000014;
  v21 = 0x80000001BA4EB850;
  sub_1BA4A1788();
  v13 = sub_1BA4A1748();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x1BFAF1350](v13, v15);

  v16 = v21;
  *a4 = v20;
  *(a4 + 8) = v16;
  v20 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8(v17);
  result = sub_1BA4A6808();
  *(a4 + 16) = result;
  *(a4 + 24) = v19;
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PlaceholderTextItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlaceholderTextItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA45A038(uint64_t a1)
{
  v2 = sub_1BA45A404();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1BA45A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 592))(v4, a1, a2);
  sub_1BA0117AC();
  return sub_1B9F293A8(v4);
}

uint64_t PlaceholderTextDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1BA45A268()
{
  (*(*(v0 + 16) + 592))(v2);
  sub_1BA0117AC();
  return sub_1B9F293A8(v2);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BA45A2DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BA45A324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for PlaceholderTextDataSource(uint64_t a1)
{
  result = qword_1EBBF2D60;
  if (!qword_1EBBF2D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA45A404()
{
  result = qword_1EBBF2D70;
  if (!qword_1EBBF2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D70);
  }

  return result;
}

void sub_1BA45A458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DataTypeDetailConfiguration.ChartComponent.init(hkType:respectsSystemMargins:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t *sub_1BA45A518(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v4[2] = a1;
  *(v4 + 40) = a2;
  v8 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v4[3] = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v4[4] = v8;
  v9 = v7;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v9;
  v4[6] = sub_1BA4531C8;
  v4[7] = v10;

  return v4;
}

id sub_1BA45A5D0(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v35 = &v35 - v8;
  sub_1BA45E348(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = sub_1BA4A1728();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v37 = sub_1BA4A0FA8();
  v21 = *(v37 - 8);
  *&v23 = MEMORY[0x1EEE9AC00](v37, v22).n128_u64[0];
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v3;
  v26 = [*v3 identifier];
  if (v26)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = sub_1BA4A6758();

    if (a2)
    {
LABEL_3:
      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
      {
        v27 = 0;
      }

      else
      {
        v27 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
      }

      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue))
      {
        v28 = 0x2000;
      }

      else
      {
        v28 = 0;
      }

      sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v12, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        sub_1B9F82BF4(v12, &qword_1EDC6E440, MEMORY[0x1E6969530]);
        v29 = v35;
        sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v35, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
        v30 = v37;
        if ((*(v21 + 48))(v29, 1, v37) == 1)
        {
          v31 = v27;
          goto LABEL_15;
        }

        (*(v21 + 32))(v25, v29, v30);
      }

      else
      {
        (*(v14 + 32))(v20, v12, v13);
        (*(v14 + 16))(v36, v20, v13);
        sub_1BA4A0F78();
        (*(v14 + 8))(v20, v13);
        v30 = v37;
      }

      v31 = v27;
      goto LABEL_19;
    }
  }

  (*(v14 + 56))(v12, 1, 1, v13);
  sub_1B9F82BF4(v12, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v29 = v35;
  v30 = v37;
  (*(v21 + 56))(v35, 1, 1, v37);
  v28 = 0;
  v31 = 0;
LABEL_15:
  sub_1B9F82BF4(v29, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  sub_1BA4A1718();
  sub_1BA4A0F78();
LABEL_19:
  v32 = sub_1BA4A0F28();
  v33 = [v39 interactiveChartForTypeIdentifier:v26 preferredOverlay:v31 chartOptions:v28 displayDateInterval:v32 restorationUserActivity:v38[1] chartSummaryTrendModel:v40];

  (*(v21 + 8))(v25, v30);
  return v33;
}

id sub_1BA45AB34(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v35 = &v35 - v8;
  sub_1BA45E348(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = sub_1BA4A1728();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v37 = sub_1BA4A0FA8();
  v21 = *(v37 - 8);
  *&v23 = MEMORY[0x1EEE9AC00](v37, v22).n128_u64[0];
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v3;
  v26 = [*(v3 + 16) identifier];
  if (v26)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = sub_1BA4A6758();

    if (a2)
    {
LABEL_3:
      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
      {
        v27 = 0;
      }

      else
      {
        v27 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
      }

      if (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue))
      {
        v28 = 0x2000;
      }

      else
      {
        v28 = 0;
      }

      sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v12, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        sub_1B9F82BF4(v12, &qword_1EDC6E440, MEMORY[0x1E6969530]);
        v29 = v35;
        sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v35, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
        v30 = v37;
        if ((*(v21 + 48))(v29, 1, v37) == 1)
        {
          v31 = v27;
          goto LABEL_15;
        }

        (*(v21 + 32))(v25, v29, v30);
      }

      else
      {
        (*(v14 + 32))(v20, v12, v13);
        (*(v14 + 16))(v36, v20, v13);
        sub_1BA4A0F78();
        (*(v14 + 8))(v20, v13);
        v30 = v37;
      }

      v31 = v27;
      goto LABEL_19;
    }
  }

  (*(v14 + 56))(v12, 1, 1, v13);
  sub_1B9F82BF4(v12, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v29 = v35;
  v30 = v37;
  (*(v21 + 56))(v35, 1, 1, v37);
  v28 = 0;
  v31 = 0;
LABEL_15:
  sub_1B9F82BF4(v29, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  sub_1BA4A1718();
  sub_1BA4A0F78();
LABEL_19:
  v32 = sub_1BA4A0F28();
  v33 = [v39 interactiveChartForTypeIdentifier:v26 preferredOverlay:v31 chartOptions:v28 displayDateInterval:v32 restorationUserActivity:*(v38 + 24) chartSummaryTrendModel:v40];

  (*(v21 + 8))(v25, v30);
  return v33;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  if ((*(a1 + 48) & 0xFE) == 2)
  {
    v10 = sub_1BA45B7B8(a1, 0, sub_1B9FAB774, 0, sub_1BA45D32C, 0, *v1, v9);

    sub_1BA45E0D0(0);
    v12 = swift_allocObject();
    v13 = *(v10 + 24);
    *(v12 + 16) = *(v10 + 16);
    *(v12 + 24) = v13;
    *(v12 + 32) = v10;
    *(v12 + 40) = 0;
  }

  else
  {
    v14 = *(a1 + 112);
    v44 = v9;
    v15 = v14;
    v43 = v8;
    DataTypeDetailChartCell.Item.init(dataType:restorationUserActivity:)(v43, v14, &v48);
    v16 = v48;
    v17 = v49;
    v18 = v50;
    sub_1BA45E348(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    v42 = xmmword_1BA4B5480;
    *(v19 + 16) = xmmword_1BA4B5480;
    *(v19 + 56) = &type metadata for DataTypeDetailChartCell.Item;
    *(v19 + 64) = sub_1BA40661C();
    v20 = swift_allocObject();
    *(v19 + 32) = v20;
    *(v20 + 16) = v16;
    *(v20 + 32) = v17;
    v47 = v18;
    *(v20 + 48) = v18;

    v21 = v16;
    v46 = *(&v16 + 1);
    v45 = v17;
    sub_1BA4A1788();
    v22 = sub_1BA4A1748();
    v24 = v23;
    (*(v4 + 8))(v7, v3);
    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

    v26 = Array<A>.identifierToIndexDict()(v25);

    sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
    inited = swift_initStackObject();
    *(inited + 16) = v42;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v19;
    *(inited + 56) = v26;
    *(inited + 64) = v22;
    *(inited + 72) = v24;
    v28 = swift_allocObject();
    v29 = v43;
    *(v28 + 16) = v43;
    v30 = v44;
    *(v28 + 24) = v44;
    type metadata accessor for MutableArrayDataSourceWithLayout(0);
    swift_allocObject();
    v31 = v29;
    v32 = sub_1B9F1DAFC(inited, 1, sub_1BA45E6E4, v28);

    sub_1BA114D9C(a1, &v48);
    v33 = swift_allocObject();
    v34 = v53;
    *(v33 + 80) = v52;
    *(v33 + 96) = v34;
    *(v33 + 112) = v54;
    *(v33 + 128) = v55;
    v35 = v49;
    *(v33 + 16) = v48;
    *(v33 + 32) = v35;
    v36 = v51;
    *(v33 + 48) = v50;
    *(v33 + 64) = v36;
    v37 = sub_1BA45B7B8(a1, v32, sub_1B9FAB774, 0, sub_1BA45E0C8, v33, v31, v30);
    v39 = v38;

    sub_1BA45E0D0(0);
    v12 = swift_allocObject();
    v40 = *(v37 + 24);
    *(v12 + 16) = *(v37 + 16);
    *(v12 + 24) = v40;
    *(v12 + 32) = v37;
    *(v12 + 40) = 1;
  }

  return v12;
}

void sub_1BA45B5D0(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 112);
  v6 = HKCodableChartFeedItemData.chartTrendModel.getter();
  a3[3] = &type metadata for DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem;
  a3[4] = sub_1BA45E62C();
  v7 = swift_allocObject();
  *a3 = v7;
  v7[4] = a1;
  v7[5] = v5;
  v7[6] = v6;
  v8 = v6;
  v9 = a1;
  v10 = v5;
  v11 = [v9 identifier];
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;

  MEMORY[0x1BFAF1350](v12, v14);

  v7[2] = 0xD000000000000018;
  v7[3] = 0x80000001BA509AF0;
}

void DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.init(dataType:restorationUserActivity:trendModel:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  v7 = a3;
  v8 = a1;
  v9 = a2;
  v10 = [v8 identifier];
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;

  MEMORY[0x1BFAF1350](v11, v13);

  *a4 = 0xD000000000000018;
  a4[1] = 0x80000001BA509AF0;
}

uint64_t sub_1BA45B7B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  v52 = a8;
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v53 = a2;
  v10 = MEMORY[0x1E6968130];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v48 - v13;
  sub_1BA4A27B8();
  sub_1BA45E348(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v15 = sub_1BA4A1C68();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v49 = xmmword_1BA4B5480;
  *(v18 + 16) = xmmword_1BA4B5480;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69A3B98], v15);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v19 = swift_allocObject();
  v48 = xmmword_1BA4B5470;
  *(v19 + 16) = xmmword_1BA4B5470;
  *(v19 + 32) = a7;
  v20 = sub_1BA4A0FA8();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v21 = swift_allocObject();
  *(v21 + 16) = v49;
  v22 = a7;
  *(v21 + 32) = sub_1BA4A6F38();
  v23 = MEMORY[0x1BFAED020](v18, v19, v14, v21);

  sub_1B9F82BF4(v14, &qword_1EDC6E2A0, v10);
  v24 = v23;
  *&v49 = v24;
  v25 = sub_1BA4A26C8();

  v26 = swift_allocObject();
  *(v26 + 16) = v48;
  v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v28 = sub_1BA4A6758();
  v29 = [v27 initWithKey:v28 ascending:0];

  *(v26 + 32) = v29;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v30 = sub_1BA4A6AE8();

  [v25 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v25;
  v32 = sub_1BA4A1B68();
  v33 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v31 managedObjectContext:v32 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F126E0(0);
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  v37 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v36);
  v38 = swift_allocObject();
  v39 = v51;
  *(v38 + 16) = v50;
  *(v38 + 24) = v39;
  *(v38 + 32) = v22;
  LOBYTE(v15) = v52;
  *(v38 + 40) = v52;
  sub_1BA1F2BF8(0);
  swift_allocObject();
  v40 = v22;
  v41 = v37;

  sub_1B9F17A68(v41, sub_1BA45E6E0, v38, 0);

  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v15;
  sub_1BA1F2BBC(0);
  swift_allocObject();
  v43 = v40;

  v45 = sub_1BA45A518(v44, 0, sub_1BA45E6E4, v42);
  v46 = sub_1BA45D9E0(v53, v45, v54, v55);

  return v46;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.makeTrendBackedChartDataSource<A>(context:backupDataSource:cellRegistrationBlock:chartItemMaker:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _UNKNOWN **a9)
{
  v60 = a4;
  v61 = a7;
  v55 = a5;
  v56 = a6;
  v57 = a2;
  v58 = a3;
  v59 = a9;
  v53 = MEMORY[0x1E6968130];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v51 - v13;
  v15 = *v9;
  v54 = *(v9 + 8);
  sub_1BA4A27B8();
  sub_1BA45E348(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v16 = sub_1BA4A1C68();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v51 = xmmword_1BA4B5480;
  *(v19 + 16) = xmmword_1BA4B5480;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x1E69A3B98], v16);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v20 = swift_allocObject();
  v52 = xmmword_1BA4B5470;
  *(v20 + 16) = xmmword_1BA4B5470;
  *(v20 + 32) = v15;
  v21 = sub_1BA4A0FA8();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v22 = swift_allocObject();
  *(v22 + 16) = v51;
  v23 = v15;
  *(v22 + 32) = sub_1BA4A6F38();
  v24 = MEMORY[0x1BFAED020](v19, v20, v14, v22);

  sub_1B9F82BF4(v14, &qword_1EDC6E2A0, v53);
  v25 = v24;
  v26 = sub_1BA4A26C8();

  v27 = swift_allocObject();
  *(v27 + 16) = v52;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = sub_1BA4A6758();
  v30 = [v28 initWithKey:v29 ascending:0];

  *(v27 + 32) = v30;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v31 = sub_1BA4A6AE8();

  [v26 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v26;
  v33 = sub_1BA4A1B68();
  v34 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v32 managedObjectContext:v33 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F126E0(0);
  v36 = objc_allocWithZone(v35);
  v37 = v34;
  v38 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v37);
  v39 = swift_allocObject();
  v40 = v56;
  *(v39 + 16) = v55;
  *(v39 + 24) = v40;
  *(v39 + 32) = v23;
  LOBYTE(v19) = v54;
  *(v39 + 40) = v54;
  sub_1BA1F2BF8(0);
  swift_allocObject();
  v41 = v23;
  v42 = v38;

  sub_1B9F17A68(v42, sub_1BA45E318, v39, 0);

  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v19;
  sub_1BA1F2BBC(0);
  v45 = v44;
  swift_allocObject();
  v46 = v41;

  v48 = sub_1BA45A518(v47, 0, sub_1BA45E328, v43);
  v49 = DataTypeDetailConfiguration.ChartComponent.makeChartDataSource<A, B>(backupDataSource:chartWithLayoutDataSource:cellRegistrationBlock:)(v57, v48, v58, v60, v61, v45, v59, &protocol witness table for DataSourceWithLayout<A>);

  return v49;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.makeSharableSummaryChartDataSource(context:)(void *a1)
{
  v2 = sub_1BA45B7B8(a1, 0, sub_1B9FAB774, 0, sub_1BA45D32C, 0, *v1, *(v1 + 8));

  return v2;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void *DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.restorationUserActivity.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.trendModel.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.createInteractiveChart(chartFactory:chartContext:)(void *a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    v3 = a1;
    v4 = a2;
    v5 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a2);
    a2 = v4;
    v6 = v5;
    a1 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1BA45AB34(a1, a2, v6);

  return v7;
}

void DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  if (!v2)
  {
    sub_1BA4A84A8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1BA4A84A8();
    return;
  }

  sub_1BA4A84A8();
  v4 = v2;
  sub_1BA4A77A8();

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1BA4A84A8();
  v5 = v3;
  sub_1BA4A77A8();
}

uint64_t DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  if (!v1)
  {
    sub_1BA4A84A8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1BA4A84A8();
    return sub_1BA4A84D8();
  }

  sub_1BA4A84A8();
  v3 = v1;
  sub_1BA4A77A8();

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1BA4A84A8();
  v4 = v2;
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

void *sub_1BA45C62C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_1BA45C654(void *a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    v3 = a1;
    v4 = a2;
    v5 = HKChartSummaryTrendModel.makeModel(updatedFor:)(a2);
    a2 = v4;
    v6 = v5;
    a1 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1BA45AB34(a1, a2, v6);

  return v7;
}

uint64_t sub_1BA45C6D0()
{
  v3[9] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  sub_1BA4A8488();
  DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.hash(into:)(v3);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA45C72C(uint64_t a1)
{
  v4[9] = *v1;
  v2 = *(v1 + 24);
  v5 = *(v1 + 8);
  v6 = v2;
  sub_1BA4A8488();
  DataTypeDetailConfiguration.ChartComponent.DatabaseBackedChartItem.hash(into:)(v4);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA45C780(uint64_t a1)
{
  v2 = sub_1BA45E62C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id DataTypeDetailConfiguration.ChartComponent.SharableChartItem.chartModel.getter()
{
  v1 = *(v0 + 24);
  if ([v1 hasChartModel])
  {
    return [v1 chartModel];
  }

  else
  {
    return 0;
  }
}

uint64_t _s18HealthExperienceUI27DataTypeDetailConfigurationV14ChartComponentV014DatabaseBackedH4ItemV15reuseIdentifierSSvg_0()
{
  type metadata accessor for DataTypeDetailChartCell();
  sub_1BA403C4C();
  return sub_1BA4A6808();
}

void DataTypeDetailConfiguration.ChartComponent.SharableChartItem.init(dataType:data:trendModel:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  v7 = a3;
  v8 = a1;
  v9 = a2;
  v10 = [v8 identifier];
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;

  MEMORY[0x1BFAF1350](v11, v13);

  *a4 = 0xD000000000000012;
  a4[1] = 0x80000001BA509B10;
}

id DataTypeDetailConfiguration.ChartComponent.SharableChartItem.createInteractiveChart(chartFactory:chartContext:)(void *a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E6720];
  sub_1BA45E348(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v40 - v8;
  sub_1BA45E348(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v40 - v16;
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v40 - v21;
  v24 = v2[2];
  v23 = v2[3];
  v25 = v2[4];
  if (![v23 hasChartModel])
  {
    return 0;
  }

  result = [v23 chartModel];
  if (!result)
  {
    return result;
  }

  v44 = result;
  v45 = a1;
  v43 = a2;
  if (!a2)
  {
    v28 = sub_1BA4A1728();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    goto LABEL_9;
  }

  v42 = v24;
  sub_1BA45E3AC(a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v17, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v27 = a2;
  v28 = sub_1BA4A1728();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v17, 1, v28) != 1)
  {
    (*(v29 + 32))(v22, v17, v28);
    (*(v29 + 56))(v22, 0, 1, v28);
    v24 = v42;
    goto LABEL_14;
  }

  sub_1BA45E3AC(v27 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v9, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  v30 = sub_1BA4A0FA8();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v9, 1, v30) == 1)
  {
    sub_1B9F82BF4(v9, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
    v24 = v42;
LABEL_9:
    sub_1BA4A1728();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    goto LABEL_12;
  }

  v41 = v25;
  sub_1BA4A0F58();
  v25 = v41;
  (*(v31 + 8))(v9, v30);
  (*(v29 + 56))(v22, 0, 1, v28);
  v24 = v42;
LABEL_12:
  sub_1BA4A1728();
  if ((*(*(v28 - 8) + 48))(v17, 1, v28) != 1)
  {
    sub_1B9F82BF4(v17, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  }

LABEL_14:
  v32 = [v24 identifier];
  v33 = v45;
  if (!v32)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v32 = sub_1BA4A6758();

    if (v25)
    {
      goto LABEL_16;
    }

LABEL_18:
    v34 = 0;
    goto LABEL_19;
  }

  if (!v25)
  {
    goto LABEL_18;
  }

LABEL_16:
  v34 = HKChartSummaryTrendModel.makeModel(updatedFor:)(v43);
LABEL_19:
  sub_1BA45E3AC(v22, v13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  v35 = sub_1BA4A1728();
  v36 = *(v35 - 8);
  v37 = 0;
  if ((*(v36 + 48))(v13, 1, v35) != 1)
  {
    v37 = sub_1BA4A16B8();
    (*(v36 + 8))(v13, v35);
  }

  v38 = v44;
  v39 = [v33 remoteInteractiveChartForTypeIdentifier:v32 model:v44 chartSummaryTrendModel:v34 displayDate:v37];

  sub_1B9F82BF4(v22, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  return v39;
}

void DataTypeDetailConfiguration.ChartComponent.SharableChartItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  if (v2)
  {
    sub_1BA4A84A8();
    v3 = v2;
    sub_1BA4A77A8();
  }

  else
  {
    sub_1BA4A84A8();
  }
}

uint64_t DataTypeDetailConfiguration.ChartComponent.SharableChartItem.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  sub_1BA4A84A8();
  if (v1)
  {
    v2 = v1;
    sub_1BA4A77A8();
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA45D0C8()
{
  v1 = *(v0 + 32);
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  sub_1BA4A84A8();
  if (v1)
  {
    v2 = v1;
    sub_1BA4A77A8();
  }

  return sub_1BA4A84D8();
}

void sub_1BA45D174(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  if (v2)
  {
    sub_1BA4A84A8();
    v3 = v2;
    sub_1BA4A77A8();
  }

  else
  {
    sub_1BA4A84A8();
  }
}

uint64_t sub_1BA45D234(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  sub_1BA4A84A8();
  if (v2)
  {
    v3 = v2;
    sub_1BA4A77A8();
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA45D2DC(uint64_t a1)
{
  v2 = sub_1BA45E5D8();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA45D32C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = HKCodableChartFeedItemData.chartTrendModel.getter();
  a3[3] = &type metadata for DataTypeDetailConfiguration.ChartComponent.SharableChartItem;
  a3[4] = sub_1BA45E5D8();
  v7 = swift_allocObject();
  *a3 = v7;
  v7[4] = a2;
  v7[5] = a1;
  v7[6] = v6;
  v8 = v6;
  v9 = a2;
  v10 = a1;
  v11 = [v9 identifier];
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;

  MEMORY[0x1BFAF1350](v12, v14);

  v7[2] = 0xD000000000000012;
  v7[3] = 0x80000001BA509B10;
}

uint64_t sub_1BA45D460(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v37);
  sub_1B9F32244();
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v13 = v36;
    v14 = [v36 userData];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1BA4A1608();
      v35 = v13;
      v17 = a3;
      v18 = v9;
      v19 = v16;
      v21 = v20;

      v22 = sub_1BA4A15F8();
      v23 = v19;
      v9 = v18;
      a3 = v17;
      v13 = v35;
      sub_1B9F2BB4C(v23, v21);
    }

    else
    {
      v22 = 0;
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69A4188]) initWithData_];

    if (v24)
    {
      sub_1BA45E348(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BA4B5480;
      a3(v37, v24, a5);
      v26 = v38;
      v27 = v39;
      v28 = __swift_project_boxed_opaque_existential_1(v37, v38);
      *(v25 + 56) = v26;
      *(v25 + 64) = *(v27 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
      (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v28, v26);

      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    else
    {
      sub_1BA4A3DD8();
      v30 = sub_1BA4A3E88();
      v31 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1B9F07000, v30, v31, "Unable to decode sharable charting model", v32, 2u);
        MEMORY[0x1BFAF43A0](v32, -1, -1);
      }

      (*(v9 + 8))(v12, v8);
      return MEMORY[0x1E69E7CC0];
    }

    return v25;
  }

  else
  {
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000038, 0x80000001BA509B70);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](93, 0xE100000000000000);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id sub_1BA45D830(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1BA4A6598();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 estimatedDimension_];
  v9 = [v7 fractionalWidthDimension_];
  if (qword_1EDC6D4A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDC6D4B0;
  v11 = qword_1EDC6D4A8;
  v12 = v10;
  sub_1BA4A75C8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v7 estimatedDimension_];

  if (a4)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  sub_1B9F1DA18(2, 1, v11, v12);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  *&v24 = v6;
  *(&v24 + 1) = v21;
  v25 = v9;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = v22;
  v31 = v14;
  v32 = v16;
  v33 = v18;
  v34 = v20;
  return sub_1B9F293A8(&v24);
}

uint64_t sub_1BA45D9E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_1BA45E228(0);
    swift_allocObject();

    v9 = sub_1BA063820(v8, a1);

    sub_1BA45E2AC(0, &qword_1EDC69050, sub_1BA45E228, &protocol witness table for PrimarySecondaryDataSource<A, B>, type metadata accessor for CellRegistering);
    v10 = swift_allocObject();
    v10[4] = v9;
    v12 = v9[3];
    v11 = v9[4];
    v10[2] = v12;
    v10[3] = v11;
    v13 = swift_allocObject();
    v14 = 0;
    v13[2] = v9;
    v13[3] = a3;
    v13[4] = a4;
    v10[5] = sub_1BA45E680;
    v10[6] = v13;
  }

  else
  {
    sub_1BA45E2AC(0, &qword_1EDC69070, sub_1BA1F2BBC, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
    v10 = swift_allocObject();
    v10[4] = a2;
    v10[5] = a3;
    v10[6] = a4;
    v12 = a2[3];
    v11 = a2[4];
    v10[2] = v12;
    v10[3] = v11;
    v14 = 1;
  }

  sub_1BA45E140(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  *(v15 + 32) = v10;
  *(v15 + 40) = v14;
  swift_bridgeObjectRetain_n();

  return v15;
}

uint64_t DataTypeDetailConfiguration.ChartComponent.makeChartDataSource<A, B>(backupDataSource:chartWithLayoutDataSource:cellRegistrationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _UNKNOWN **a7, _UNKNOWN **a8)
{
  if (a1)
  {
    v38 = a6;
    v39 = a5;
    v40 = a8;
    v41 = a7;
    v14 = type metadata accessor for PrimarySecondaryDataSource(0, &v38);
    swift_unknownObjectRetain();
    v15 = swift_unknownObjectRetain();
    sub_1B9F34FD8(v15, a1);
    swift_unknownObjectRelease();
    SnapshotDataSource<>.withCellRegistration(_:)(a3, a4, v14, &protocol witness table for PrimarySecondaryDataSource<A, B>, &protocol witness table for PrimarySecondaryDataSource<A, B>);

    v17 = type metadata accessor for CellRegistering(0, v14, &protocol witness table for PrimarySecondaryDataSource<A, B>, v16);
    nullsub_1();
    nullsub_1();
    v19 = type metadata accessor for CellRegistering(0, a6, a8, v18);

    static DataSourceBuilder.buildEither<A, B>(first:)(v20, v17, v19, &protocol witness table for CellRegistering<A>, &protocol witness table for CellRegistering<A>);

    swift_unknownObjectRelease();
  }

  else
  {
    SnapshotDataSource.withCellRegistration(_:)(a3, a4, a6, a8);
    v23 = type metadata accessor for CellRegistering(0, a6, a8, v22);
    nullsub_1();
    nullsub_1();
    v25 = v24;

    v38 = a6;
    v39 = a5;
    v40 = a8;
    v41 = a7;
    v26 = type metadata accessor for PrimarySecondaryDataSource(255, &v38);
    v28 = type metadata accessor for CellRegistering(0, v26, &protocol witness table for PrimarySecondaryDataSource<A, B>, v27);
    static DataSourceBuilder.buildEither<A, B>(second:)(v25, v28, v23, &protocol witness table for CellRegistering<A>, &protocol witness table for CellRegistering<A>);
  }

  v38 = a6;
  v39 = a5;
  v40 = a8;
  v41 = a7;
  v29 = type metadata accessor for PrimarySecondaryDataSource(255, &v38);
  v31 = type metadata accessor for CellRegistering(255, v29, &protocol witness table for PrimarySecondaryDataSource<A, B>, v30);
  v33 = type metadata accessor for CellRegistering(255, a6, a8, v32);
  v38 = v31;
  v39 = v33;
  v40 = &protocol witness table for CellRegistering<A>;
  v41 = &protocol witness table for CellRegistering<A>;
  type metadata accessor for _ConditionalDataSource(0, &v38);
  nullsub_1();
  v35 = v34;

  return v35;
}

uint64_t _s18HealthExperienceUI27DataTypeDetailConfigurationV14ChartComponentV014DatabaseBackedH4ItemV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  if ((sub_1BA4A7798() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B618, 0x1E696B090);
    v7 = v4;
    v8 = v2;
    v9 = sub_1BA4A7798();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_1B9F0ADF8(0, &qword_1EBBF2DA0, 0x1E69A4140);
      v10 = v5;
      v11 = v3;
      v12 = sub_1BA4A7798();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t _s18HealthExperienceUI27DataTypeDetailConfigurationV14ChartComponentV08SharableH4ItemV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
    if (sub_1BA4A7798() & 1) != 0 && (sub_1BA4A7798())
    {
      if (v2)
      {
        if (v3)
        {
          sub_1B9F0ADF8(0, &qword_1EBBF2DA0, 0x1E69A4140);
          v5 = v3;
          v6 = v2;
          v7 = sub_1BA4A7798();

          if (v7)
          {
            return 1;
          }
        }
      }

      else if (!v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1BA45E0D0(uint64_t a1)
{
  if (!qword_1EDC66CB0)
  {
    sub_1BA45E140(255);
    v5[0] = v2;
    v5[1] = v2;
    v5[2] = &protocol witness table for _ConditionalDataSource<A, B>;
    v5[3] = &protocol witness table for _ConditionalDataSource<A, B>;
    v3 = type metadata accessor for _ConditionalDataSource(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDC66CB0);
    }
  }
}

void sub_1BA45E140(uint64_t a1)
{
  if (!qword_1EDC66CC8)
  {
    sub_1BA45E2AC(255, &qword_1EDC69050, sub_1BA45E228, &protocol witness table for PrimarySecondaryDataSource<A, B>, type metadata accessor for CellRegistering);
    v3 = v2;
    sub_1BA45E2AC(255, &qword_1EDC69070, sub_1BA1F2BBC, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = &protocol witness table for CellRegistering<A>;
    v7[3] = &protocol witness table for CellRegistering<A>;
    v5 = type metadata accessor for _ConditionalDataSource(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDC66CC8);
    }
  }
}

void sub_1BA45E228(uint64_t a1)
{
  if (!qword_1EDC65328[0])
  {
    sub_1BA1F2BBC(255);
    v5[0] = v2;
    v5[1] = type metadata accessor for MutableArrayDataSourceWithLayout(255);
    v5[2] = &protocol witness table for DataSourceWithLayout<A>;
    v5[3] = &protocol witness table for MutableArrayDataSource;
    v3 = type metadata accessor for PrimarySecondaryDataSource(a1, v5);
    if (!v4)
    {
      atomic_store(v3, qword_1EDC65328);
    }
  }
}

void sub_1BA45E2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA45E348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA45E3AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA45E348(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA45E430()
{
  result = qword_1EDC64F30;
  if (!qword_1EDC64F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F30);
  }

  return result;
}

unint64_t sub_1BA45E488()
{
  result = qword_1EDC64F18;
  if (!qword_1EDC64F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F18);
  }

  return result;
}

unint64_t sub_1BA45E4E0()
{
  result = qword_1EBBF2D80;
  if (!qword_1EBBF2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D80);
  }

  return result;
}

unint64_t sub_1BA45E538()
{
  result = qword_1EBBF2D88;
  if (!qword_1EBBF2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D88);
  }

  return result;
}

unint64_t sub_1BA45E5D8()
{
  result = qword_1EBBF2D98;
  if (!qword_1EBBF2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2D98);
  }

  return result;
}

unint64_t sub_1BA45E62C()
{
  result = qword_1EDC64F20;
  if (!qword_1EDC64F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64F20);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1BA45E714()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (v1)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA45E788(uint64_t a1)
{
  type metadata accessor for SummaryHeaderProfileNameView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id SummaryHeaderProfileNameCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA45E8D0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA123998();
  v6 = *MEMORY[0x1E69DDD58];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:0];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = v6;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v14 = 136315906;
      v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = v11;
      v17 = sub_1B9F0B82C(v15, v16, &v35);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v33 = 0;
      v34 = 1;
      sub_1B9F6C1E4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v35);

      *(v14 + 14) = v20;
      *(v14 + 22) = 2080;
      LODWORD(v33) = 0;
      type metadata accessor for SymbolicTraits(0);
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v35);
      v11 = v32;

      *(v14 + 24) = v23;
      *(v14 + 32) = 2112;
      v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v14 + 34) = v24;
      v25 = v30;
      *v30 = v24;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v14, 0x2Au);
      sub_1BA4601D8(v25, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v27 = [v7 preferredFontDescriptorWithTextStyle_];
    v10 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
  }

  [v5 setFont_];

  [v5 setTextAlignment_];
  [v5 setAdjustsFontSizeToFitWidth_];
  LODWORD(v28) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v28];
  return v5;
}

char *sub_1BA45ECD8()
{
  v0 = sub_1BA4A3EA8();
  v73 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v67 - v6;
  v8 = [objc_allocWithZone(type metadata accessor for LabelWithSpinner()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  v10 = *&v8[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 secondaryLabelColor];
  [v12 setTextColor_];

  [*&v8[v9] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v8[v9] setNumberOfLines_];
  v14 = *&v8[v9];
  v15 = *MEMORY[0x1E69DDD80];
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  }

  else
  {
    v71 = v3;
    v72 = v0;
    sub_1BA4A3DD8();
    v21 = v15;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76 = v69;
      *v24 = 136315906;
      v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v70 = v21;
      v27 = sub_1B9F0B82C(v25, v26, &v76);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v74 = 0;
      v75 = 1;
      sub_1B9F6C1E4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, &v76);

      *(v24 + 14) = v30;
      *(v24 + 22) = 2080;
      LODWORD(v74) = 0;
      type metadata accessor for SymbolicTraits(0);
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v76);
      v21 = v70;

      *(v24 + 24) = v33;
      *(v24 + 32) = 2112;
      v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v24 + 34) = v34;
      v35 = v68;
      *v68 = v34;
      _os_log_impl(&dword_1B9F07000, v22, v23, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v24, 0x2Au);
      sub_1BA4601D8(v35, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      v36 = v69;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    v0 = v72;
    (*(v73 + 8))(v7, v72);
    v37 = [v16 preferredFontDescriptorWithTextStyle_];
    v20 = [objc_opt_self() fontWithDescriptor:v37 size:0.0];

    v3 = v71;
  }

  [v17 setFont_];

  [*&v8[v9] setMaximumContentSizeCategory_];
  [*&v8[v9] setAdjustsFontForContentSizeCategory_];
  [*&v8[v9] setTextAlignment_];
  LODWORD(v38) = 1148846080;
  [*&v8[v9] setContentCompressionResistancePriority:0 forAxis:v38];
  LODWORD(v39) = 1148846080;
  [*&v8[v9] setContentCompressionResistancePriority:1 forAxis:v39];
  LODWORD(v40) = 1148846080;
  [*&v8[v9] setContentHuggingPriority:1 forAxis:v40];
  [*&v8[v9] setIsAccessibilityElement_];
  v41 = *MEMORY[0x1E69DDD28];
  v42 = *&v8[v9];
  v43 = [v16 preferredFontDescriptorWithTextStyle:v41 compatibleWithTraitCollection:0];
  if (v43)
  {
    v44 = v43;
    v45 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v46 = v41;
    v47 = sub_1BA4A3E88();
    v48 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v72 = v0;
      v50 = v49;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76 = v70;
      *v50 = 136315906;
      v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v71 = v3;
      v53 = sub_1B9F0B82C(v51, v52, &v76);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v74 = 0;
      v75 = 1;
      sub_1B9F6C1E4(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v54 = sub_1BA4A6808();
      v56 = sub_1B9F0B82C(v54, v55, &v76);

      *(v50 + 14) = v56;
      *(v50 + 22) = 2080;
      LODWORD(v74) = 0;
      type metadata accessor for SymbolicTraits(0);
      v57 = sub_1BA4A6808();
      v59 = sub_1B9F0B82C(v57, v58, &v76);

      *(v50 + 24) = v59;
      *(v50 + 32) = 2112;
      v60 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v50 + 34) = v60;
      v61 = v69;
      *v69 = v60;
      _os_log_impl(&dword_1B9F07000, v47, v48, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v50, 0x2Au);
      sub_1BA4601D8(v61, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      v62 = v70;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v62, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);

      (*(v73 + 8))(v71, v72);
    }

    else
    {

      (*(v73 + 8))(v3, v0);
    }

    v44 = [v16 preferredFontDescriptorWithTextStyle_];
    v45 = [objc_opt_self() fontWithDescriptor:v44 size:0.0];
  }

  v63 = v45;

  [v42 setFont_];
  [*&v8[v9] setTextAlignment_];
  [*&v8[v9] setLineBreakMode_];
  LODWORD(v64) = 1148846080;
  [*&v8[v9] setContentCompressionResistancePriority:1 forAxis:v64];
  LODWORD(v65) = 1132068864;
  [*&v8[v9] setContentHuggingPriority:1 forAxis:v65];
  return v8;
}

uint64_t sub_1BA45F5A8(void *a1)
{
  sub_1B9F6C1E4(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20[-v4 - 8];
  v6 = sub_1BA4A2888();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B9F0A534(a1, v20);
  sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v12(v5, 0, 1, v6);
    (*(v7 + 32))(v10, v5, v6);
    v13 = sub_1BA4A2838();
    v14 = [v13 type];

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = (v7 + 8);
    if (v14 == 1)
    {
      v16 = sub_1BA4A2AF8();
    }

    else
    {
      v16 = sub_1BA4A2AB8();
    }

    v18 = v16;
    (*v15)(v10, v6);
    return v18;
  }

  else
  {
    v12(v5, 1, 1, v6);
    sub_1BA4601D8(v5, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_1BA4A2AB8();
  }
}

uint64_t sub_1BA45F81C(uint64_t a1)
{
  v2 = v1;
  sub_1B9F6C1E4(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-v6 - 8];
  v8 = sub_1BA4A2888();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BA125230(a1);
  sub_1B9F0A534(a1, v20);
  sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    v15 = sub_1BA4A2818();
    if ((v16 & 1) == 0 && v15 == 1)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_showProfileViewController];
      [v2 addGestureRecognizer_];
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v14(v7, 1, 1, v8);
    return sub_1BA4601D8(v7, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  }
}

void sub_1BA45FA74(void *a1)
{
  if (a1)
  {
    v7 = a1;
    if ([v7 type] == 1)
    {
      v2 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
      [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton) setHidden_];
      [*(v1 + v2) setUserInteractionEnabled_];
      v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint);
      if (v3)
      {
        [v3 setActive_];

        return;
      }

LABEL_13:
      __break(1u);
      return;
    }
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton) setHidden_];
  v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint);
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v5 setActive_];
  v6 = *(v1 + v4);

  [v6 setUserInteractionEnabled_];
}

double sub_1BA45FBA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F0A534(a1, v7);
  sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  sub_1B9F0D950(0, &qword_1EBBEC328, MEMORY[0x1E69A32C8]);
  if (swift_dynamicCast())
  {
    sub_1B9F25598(v5, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1BA4A2C28();
    if (v3)
    {

      sub_1B9F0A534(v8, a2);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1BA460114(v5);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_1BA45FCAC()
{
  v1 = [v0 viewController];
  if (v1)
  {
    v11 = v1;
    v2 = UIViewController.resolvedHealthStore.getter();
    if (v2)
    {
      v3 = v2;
      sub_1BA4A22B8();
      v4 = v3;
      v5 = sub_1BA4A22A8();
      v6 = objc_allocWithZone(type metadata accessor for ProfileViewController());
      v7 = v4;

      v8 = sub_1BA249DB8(v7, v5, v6);

      v9 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
      [v9 setModalPresentationStyle_];
      [v11 presentViewController:v9 animated:1 completion:0];

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

id sub_1BA45FE54(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = a1();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1BA45FED4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = a7(a1, a6);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1BA45FF60(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1BA45FFE4(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1BA460078(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA460114(uint64_t a1)
{
  sub_1BA460170(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA460170(uint64_t a1)
{
  if (!qword_1EBBEC320)
  {
    sub_1B9F0D950(255, &qword_1EBBEC328, MEMORY[0x1E69A32C8]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC320);
    }
  }
}

uint64_t sub_1BA4601D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F6C1E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DataTypeDetailConfiguration.TrendsComponent.init(hkType:maximumNumberOfItems:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id DataTypeDetailConfiguration.TrendsComponent.hkType.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t DataTypeDetailConfiguration.TrendsComponent.makeDataSource(context:)(void *a1)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v54 - v5;
  v6 = v1[1];
  v60 = *v1;
  v63 = v6;
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5460;
  v62 = a1;
  *(v7 + 32) = sub_1BA4A6F38();
  *(v7 + 40) = 0;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v8 = sub_1BA4A1318();
  v56 = v9;
  v57 = v8;
  v64 = sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v58 = v10;
  v11 = sub_1BA4A1C68();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v54 = xmmword_1BA4B5480;
  *(v14 + 16) = xmmword_1BA4B5480;
  v15 = *MEMORY[0x1E69A3BA0];
  v16 = *(v12 + 104);
  v16(v14 + v13, v15, v11);
  sub_1BA4A2208();
  v61 = v7;
  v55 = sub_1BA4A2638();

  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  v62 = sub_1BA4A1B68();
  v17 = swift_allocObject();
  *(v17 + 16) = v54;
  v16(v17 + v13, v15, v11);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B8B60;
  v19 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v20 = sub_1BA4A6758();
  v21 = [v19 initWithKey:v20 ascending:0];

  *(v18 + 32) = v21;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = sub_1BA4A6758();
  v24 = [v22 initWithKey:v23 ascending:1];

  *(v18 + 40) = v24;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v26 = sub_1BA4A6758();
  v27 = [v25 initWithKey:v26 ascending:0];

  *(v18 + 48) = v27;
  v28 = sub_1BA4A0FA8();
  v29 = v59;
  (*(*(v28 - 8) + 56))();
  v30 = objc_allocWithZone(type metadata accessor for RelatedItemsFetchedResultsControllerDataSource(0));
  v31 = v60;
  *&v30[qword_1EDC84A78] = v60;
  v58 = v30;
  v32 = &v30[qword_1EDC84A80];
  v33 = v56;
  *v32 = v57;
  *(v32 + 1) = v33;
  v34 = v31;
  v57 = v55;
  v35 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v36 = sub_1BA4A6AE8();

  [v35 setSortDescriptors_];

  if (v31)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BA4B5470;
    *(v37 + 32) = v34;
  }

  else
  {
    v37 = 0;
  }

  v38 = v34;
  v39 = v29;
  v40 = MEMORY[0x1BFAED020](v17, v37, v29, v61);

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BA4B5470;
  *(v41 + 32) = v40;
  v65 = v41;
  v42 = v57;
  v43 = v40;
  MEMORY[0x1BFAF1510]();
  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v44 = sub_1BA4A6AE8();

  v45 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v35 setPredicate_];
  [v35 setFetchLimit_];
  v46 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v47 = v62;
  v48 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v46 initWithFetchRequest:v35 managedObjectContext:v62 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v39);
  sub_1BA460A60(0);
  swift_allocObject();
  v49 = sub_1BA0488BC();

  sub_1BA460AB4(0, &qword_1EDC67CA8, sub_1BA460A60, &protocol witness table for DataSourceWithSectionItemLimit<A>, type metadata accessor for DataSourceWithLayout);
  v50 = swift_allocObject();
  v52 = *(v49 + 40);
  v51 = *(v49 + 48);
  *(v50 + 16) = v49;
  *(v50 + 24) = v52;
  *(v50 + 32) = v51;
  *(v50 + 40) = 1;
  *(v50 + 48) = sub_1BA236D80;
  *(v50 + 56) = 0;

  return v50;
}

void sub_1BA460AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA460C18()
{
  v1 = v0;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [v5 preferredFontForTextStyle_];
  [v7 pointSize];
  v9 = v8;

  v10 = [objc_opt_self() configurationWithPointSize_];
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() systemImageNamed_];

  v61 = v10;
  if (v12)
  {
    v13 = [v12 imageWithConfiguration_];

    v14 = [objc_opt_self() systemBlueColor];
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v60 = v15;
  [v16 setImage_];
  sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
  v59 = v16;
  v17 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  MEMORY[0x1BFAF1350](v2, v4);

  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1BA4A6758();

  v20 = [v18 initWithString_];

  [v17 appendAttributedString_];
  type metadata accessor for MultilineButton();
  v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v21;
  [v22 setAttributedTitle:v17 forState:0];
  v23 = [v22 titleLabel];
  if (v23)
  {
    v24 = v23;
    v25 = [v5 preferredFontForTextStyle_];
    [v24 setFont_];
  }

  v26 = [v22 titleLabel];

  if (v26)
  {
    [v26 setNumberOfLines_];
  }

  [v22 setContentHorizontalAlignment_];
  [v22 addTarget:v1 action:sel_didTapLearnMore_ forControlEvents:64];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 addSubview_];
  v28 = [v1 contentView];
  [v28 addSubview_];

  v58 = objc_opt_self();
  sub_1B9F109F8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4BBC90;
  v30 = [v22 topAnchor];
  v31 = [v27 topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v29 + 32) = v32;
  v33 = [v27 bottomAnchor];
  v34 = [v22 bottomAnchor];
  v35 = [v33 &selRef:v34 numberWithInteger:? + 5];

  *(v29 + 40) = v35;
  v36 = [v22 leadingAnchor];
  v37 = [v27 &selRef__totalDistance + 1];
  v38 = [v36 &selRef:v37 numberWithInteger:? + 5];

  *(v29 + 48) = v38;
  v39 = [v27 trailingAnchor];
  v40 = [v22 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v41 = [v39 constraintGreaterThanOrEqualToAnchor_];
  *(v29 + 56) = v41;
  v42 = [v27 topAnchor];
  v43 = [v1 contentView];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v29 + 64) = v45;
  v46 = [v27 bottomAnchor];
  v47 = [v1 contentView];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v29 + 72) = v49;
  v50 = [v27 leadingAnchor];
  v51 = [v1 contentView];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v29 + 80) = v53;
  v54 = [v27 trailingAnchor];
  v55 = [v1 contentView];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v29 + 88) = v57;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v62 = sub_1BA4A6AE8();

  [v58 activateConstraints_];
}

void sub_1BA4614B8()
{
  v1 = [objc_opt_self() boldButton];
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow + 8] > 1u)
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapNext_ forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

double sub_1BA461760()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A6488();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 dismissViewControllerAnimated:1 completion:{0, v14}];
  v18 = &v0[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
  v19 = v0[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow + 8];
  if (v19 <= 1)
  {
    v26 = v7;
    v20 = *v18;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v25 = v6;
    (*(v12 + 104))(v16, *MEMORY[0x1E69E7F88], v11);
    sub_1BA02040C(v20, v19);
    v21 = sub_1BA4A7338();
    (*(v12 + 8))(v16, v11);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    aBlock[4] = sub_1BA020420;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_126;
    v23 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v10, v5, v23);
    _Block_release(v23);

    (*(v2 + 8))(v5, v1);
    (*(v26 + 8))(v10, v25);
  }

  return result;
}

id sub_1BA461C04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyStewieViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmergencyAccessBuddyStewieViewController(uint64_t a1)
{
  result = qword_1EBBF2DC0;
  if (!qword_1EBBF2DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA461D08(uint64_t a1)
{
  result = type metadata accessor for EmergencyAccessUserStatus(319);
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

void sub_1BA461DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EndSharingRelationshipNotificationUserInfo(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1798();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  *&v9[*(v6 + 28)] = a3;
  sub_1BA461FF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v20 = 0x55656C69666F7270;
  v21 = 0xEB00000000444955;
  v12 = MEMORY[0x1E69E6158];
  sub_1BA4A7D58();
  v13 = sub_1BA4A1748();
  *(inited + 96) = v12;
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  v20 = 0x54656C69666F7270;
  v21 = 0xEB00000000657079;
  sub_1BA4A7D58();
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = a3;
  sub_1B9FDB524(inited);
  swift_setDeallocating();
  sub_1BA1284D4();
  swift_arrayDestroy();
  sub_1BA15F610(v9);
  if (qword_1EDC5E410 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDC5E418;
  v16 = objc_allocWithZone(sub_1BA4A34C8());
  v17 = v15;
  v18 = sub_1BA4A34B8();
  sub_1BA15F6D0();
  v19 = sub_1BA4A7198();
  [v19 addOperation_];
}

void sub_1BA461FF0(uint64_t a1)
{
  if (!qword_1EDC6B418)
  {
    sub_1BA1284D4();
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B418);
    }
  }
}

uint64_t sub_1BA462048()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2DD0 = result;
  *algn_1EBBF2DD8 = v1;
  return result;
}

uint64_t sub_1BA462108()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2DE0 = result;
  *algn_1EBBF2DE8 = v1;
  return result;
}

uint64_t sub_1BA4621CC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2DF0 = result;
  *algn_1EBBF2DF8 = v1;
  return result;
}

uint64_t sub_1BA462290()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2E00 = result;
  *algn_1EBBF2E08 = v1;
  return result;
}

uint64_t sub_1BA46233C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2E10 = result;
  *algn_1EBBF2E18 = v1;
  return result;
}

uint64_t sub_1BA4623E8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2E20 = result;
  *algn_1EBBF2E28 = v1;
  return result;
}

void PopoverPresenting<>.presentViewControllerAsPopover(_:animated:sender:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v9 = v6;
  if (a3)
  {
    swift_unknownObjectRetain();
    [v9 setModalPresentationStyle_];
    v7 = [v9 presentationController];
    if (v7)
    {
      v8 = v7;
      [v7 setSourceItem_];
    }

    swift_unknownObjectRelease();
    v6 = v9;
  }

  [v3 presentViewController:v6 animated:a2 & 1 completion:0];
}

uint64_t FavoritableFeedItemDataSource.init(managedObjectContext:pinnedContentManager:predicate:cellClass:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA46328C(a1, a2, a3, a4, a5);

  return v7;
}

uint64_t FavoritableFeedItemDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t FavoritableFeedItemDataSource.init(managedObjectContext:pinnedContentManagerProvider:predicate:cellClass:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA4635BC(a1, a2, a3, a4, a5);

  return v7;
}

uint64_t FavoritableFeedItemDataSource.__allocating_init(managedObjectContext:pinnedContentManagerProvider:predicate:cellClass:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1BA4635BC(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t sub_1BA462790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v48);
  sub_1B9F32244();
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v15 = v54[0];
    sub_1BA4A25A8();
    sub_1BA4A2478();
    sub_1B9F28360(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B5480;
    sub_1B9F0A534(v54, v53);
    *(v16 + 56) = &type metadata for FavoritableFeedItem;
    *(v16 + 64) = sub_1BA15BC8C();
    v17 = swift_allocObject();
    v18 = v16;
    *(v16 + 32) = v17;
    *(&v51 + 1) = 0;
    v52 = 0;
    *(&v49 + 1) = v15;
    sub_1B9F0A534(v53, v48);
    v19 = v15;
    sub_1BA4A2748();
    LOBYTE(v50) = sub_1BA4A2728() & 1;
    LOWORD(v50) = v50;
    *(&v50 + 1) = (*(*(a5 + 8) + 8))(a4);
    *&v51 = v20;
    v21 = sub_1BA4A2758();
    v22 = sub_1BA1591A8(v21);

    if (v22)
    {
      v23 = [v22 identifier];

      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v25;

      sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BA4B9FD0;
      *(v27 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      *(v27 + 40) = v28;
      strcpy((v27 + 48), "FavoritesEdit");
      *(v27 + 62) = -4864;
      *(v27 + 64) = v24;
      *(v27 + 72) = v26;
      v29 = sub_1BA4A6AE8();

      v30 = HKUIJoinStringsForAutomationIdentifier();

      if (v30)
      {
        v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v53);
      *(&v51 + 1) = v31;
      v52 = v33;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    v46 = v50;
    *(v17 + 48) = v49;
    *(v17 + 64) = v46;
    *(v17 + 80) = v51;
    *(v17 + 96) = v52;
    v47 = v48[1];
    *(v17 + 16) = v48[0];
    *(v17 + 32) = v47;

    __swift_destroy_boxed_opaque_existential_1(v54);
    return v18;
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v48);
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53[0] = v37;
      *v36 = 136315394;
      v54[0] = a6;
      swift_getMetatypeMetadata();
      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, v53);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      sub_1B9F0A534(v48, v54);
      v41 = sub_1BA4A6808();
      v43 = v42;
      __swift_destroy_boxed_opaque_existential_1(v48);
      v44 = sub_1B9F0B82C(v41, v43, v53);

      *(v36 + 14) = v44;
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%s]: Incorrect viewmodel; expected FeedItem, got: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    (*(v11 + 8))(v14, v10);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FavoritableFeedItemDataSource.__allocating_init(managedObjectContext:pinnedContentManager:predicate:cellClass:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1BA46328C(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t sub_1BA462CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v50);
  sub_1B9F32244();
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v16 = v55[0];
    sub_1B9F28360(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BA4B5480;
    sub_1B9F0A534(a5, v55);
    *(v17 + 56) = &type metadata for FavoritableFeedItem;
    *(v17 + 64) = sub_1BA15BC8C();
    v18 = swift_allocObject();
    v19 = v17;
    *(v17 + 32) = v18;
    *(&v53 + 1) = 0;
    v54 = 0;
    *(&v51 + 1) = v16;
    sub_1B9F0A534(v55, v50);
    v20 = v16;
    sub_1BA4A2748();
    LOBYTE(v52) = sub_1BA4A2728() & 1;
    LOWORD(v52) = v52;
    *(&v52 + 1) = (*(*(a4 + 8) + 8))(a3);
    *&v53 = v21;
    v22 = sub_1BA4A2758();
    v23 = sub_1BA1591A8(v22);

    if (v23)
    {
      v24 = [v23 identifier];

      v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v27 = v26;

      sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1BA4B9FD0;
      *(v28 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      *(v28 + 40) = v29;
      strcpy((v28 + 48), "FavoritesEdit");
      *(v28 + 62) = -4864;
      *(v28 + 64) = v25;
      *(v28 + 72) = v27;
      v30 = sub_1BA4A6AE8();

      v31 = HKUIJoinStringsForAutomationIdentifier();

      if (v31)
      {
        v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v55);
      *(&v53 + 1) = v32;
      v54 = v34;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    v47 = v52;
    *(v18 + 48) = v51;
    *(v18 + 64) = v47;
    *(v18 + 80) = v53;
    *(v18 + 96) = v54;
    v48 = v50[1];
    *(v18 + 16) = v50[0];
    *(v18 + 32) = v48;

    return v19;
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v50);
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315394;
      v55[0] = a6;
      swift_getMetatypeMetadata();
      v39 = sub_1BA4A6808();
      v41 = sub_1B9F0B82C(v39, v40, &v56);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      sub_1B9F0A534(v50, v55);
      v42 = sub_1BA4A6808();
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_1(v50);
      v45 = sub_1B9F0B82C(v42, v44, &v56);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%s]: Incorrect viewmodel; expected FeedItem, got: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    (*(v12 + 8))(v15, v11);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FavoritableFeedItemDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA46328C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = *v5;
  sub_1BA4A27B8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1BA4A2388();
  v9 = sub_1BA4A26E8();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B7510;
  *(v10 + 32) = a3;
  *(v10 + 40) = v9;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v11 = a3;
  v12 = v9;
  v13 = sub_1BA4A6AE8();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  v15 = v14;
  v16 = sub_1BA4A26C8();

  [v16 setFetchLimit_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5470;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1BA4A6758();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v17 + 32) = v20;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v21 = sub_1BA4A6AE8();

  [v16 setSortDescriptors_];

  v22 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v16 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0(0);
  v24 = objc_allocWithZone(v23);
  v25 = v22;
  v26 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v25);
  sub_1B9F0A534(a2, v33);
  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  sub_1B9F25598(v33, (v27 + 4));
  v27[9] = v30;
  v28 = sub_1B9F17A68(v26, sub_1BA1672F0, v27, 0);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v28;
}

uint64_t sub_1BA4635BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  sub_1BA4A27B8();
  v10 = sub_1BA4A26C8();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5470;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1BA4A6758();
  v14 = [v12 initWithKey:v13 ascending:1];

  *(v11 + 32) = v14;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v15 = sub_1BA4A6AE8();

  [v10 setSortDescriptors_];

  v16 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v10 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0(0);
  v18 = objc_allocWithZone(v17);
  v19 = v16;
  v20 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v19);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = v9;

  v22 = sub_1B9F17A68(v20, sub_1BA2E9AD0, v21, 0);

  return v22;
}

uint64_t type metadata accessor for FavoritableFeedItemDataSource(uint64_t a1)
{
  result = qword_1EDC6C180;
  if (!qword_1EDC6C180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BA463884(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA4638EC()
{
  swift_beginAccess();

  return result;
}

double sub_1BA463934(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1BA463A34(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA463A90(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

id sub_1BA463BC0()
{
  sub_1BA466E58(0, &qword_1EDC5F930, type metadata accessor for TabModel);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v5, v13, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
  if (v14)
  {
    sub_1B9F0D950(0, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
    v6 = type metadata accessor for TabModel(0);
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v4, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_1B9F43A50(v13, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
    v6 = type metadata accessor for TabModel(0);
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  type metadata accessor for TabModel(0);
  v8 = 1;
  v9 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1BA463DCC(v4);
  if (v9)
  {
    v10 = type metadata accessor for ListContentConfigurationHostCell();
    v12.receiver = v0;
    v12.super_class = v10;
    return objc_msgSendSuper2(&v12, sel_tintAdjustmentMode);
  }

  return v8;
}

uint64_t sub_1BA463DCC(uint64_t a1)
{
  sub_1BA466E58(0, &qword_1EDC5F930, type metadata accessor for TabModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA463E98(uint64_t a1)
{
  sub_1BA466E58(0, &qword_1EDC5F930, type metadata accessor for TabModel);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel;
  swift_beginAccess();
  sub_1B9F374E8(v1 + v7, v14, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
  if (v15)
  {
    sub_1B9F0D950(0, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
    v8 = type metadata accessor for TabModel(0);
    v9 = swift_dynamicCast();
    (*(*(v8 - 8) + 56))(v6, v9 ^ 1u, 1, v8);
  }

  else
  {
    sub_1B9F43A50(v14, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
    v8 = type metadata accessor for TabModel(0);
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  type metadata accessor for TabModel(0);
  v10 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  result = sub_1BA463DCC(v6);
  if (v10)
  {
    v12 = type metadata accessor for ListContentConfigurationHostCell();
    v13.receiver = v1;
    v13.super_class = v12;
    return objc_msgSendSuper2(&v13, sel_setTintAdjustmentMode_, a1);
  }

  return result;
}

void sub_1BA4640A8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier;
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;

  if (v3)
  {

    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  [v4 setAccessibilityIdentifier_];
}

uint64_t sub_1BA464144()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1BA46419C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  [v2 setAccessibilityIdentifier_];
}

uint64_t (*sub_1BA46424C(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA4642D4;
}

void sub_1BA4642D4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*&v4[v3[4] + 8])
    {

      v5 = sub_1BA4A6758();
      v4 = v3[3];
    }

    else
    {
      v5 = 0;
    }

    [v4 setAccessibilityIdentifier_];
  }

  free(v3);
}

uint64_t sub_1BA464374(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(a1, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA464898();
  return sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3);
}

uint64_t sub_1BA464424@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA464494(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA464898();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

void (*sub_1BA464518(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA46457C;
}

void sub_1BA46457C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA464898();
  }
}

id ListContentConfigurationHostCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ListContentConfigurationHostCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_configurationProvider];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_itemBasedTraitRegistration] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ListContentConfigurationHostCell();
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    [v9 setAutomaticallyUpdatesContentConfiguration_];
  }

  return v8;
}

id ListContentConfigurationHostCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ListContentConfigurationHostCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_configurationProvider];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_itemBasedTraitRegistration] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ListContentConfigurationHostCell();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setAutomaticallyUpdatesContentConfiguration_];
  return v13;
}

void sub_1BA464898()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v91 - v9;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F374E8(&v0[v11], &v103, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (*(&v104 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v12 = v102[0];
      v13 = [v102[0] userData];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1BA4A1608();
        v97 = v16;

        v17 = [v12 baseAutomationIdentifier];
        if (v17)
        {
          v18 = v17;
          v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v21 = v20;
        }

        else
        {
          v19 = 0;
          v21 = 0;
        }

        v38 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
        swift_beginAccess();
        *v38 = v19;
        v38[1] = v21;

        if (v21)
        {

          v39 = sub_1BA4A6758();
        }

        else
        {
          v39 = 0;
        }

        [v1 setAccessibilityIdentifier_];

        v40 = [v12 actionHandlerClassName];
        v41 = v40;
        if (v40)
        {
        }

        [v1 setUserInteractionEnabled_];
        v42 = 0;
        sub_1B9F48634(v12, &v103);
        v96 = v15;
        v95 = v12;
        v58 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_configurationProvider;
        swift_beginAccess();
        sub_1B9F4A184(&v103, &v1[v58], &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
        swift_endAccess();
        v59 = sub_1BA463B28(&v103);
        v61 = v59;
        v62 = *(v60 + 24);
        if (v62)
        {
          v63 = *(v60 + 32);
          v64 = v60;
          v65 = *(v60 + 24);
          v93 = v61;
          __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
          v98 = v3;
          v94 = 0;
          v66 = v58;
          v67 = *(v63 + 80);
          v68 = swift_unknownObjectRetain();
          v69 = v63;
          v15 = v96;
          v67(v68, &protocol witness table for ListContentConfigurationHostCell, v62, v69);
          v58 = v66;
          v42 = v94;
          v3 = v98;
          (v93)(&v103, 0);
        }

        else
        {
          (v59)(&v103, 0);
        }

        sub_1B9F374E8(&v1[v58], v102, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
        if (v102[3])
        {
          v98 = v58;
          sub_1B9F0A534(v102, v99);
          sub_1B9F43A50(v102, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
          v77 = v100;
          v78 = v101;
          __swift_project_boxed_opaque_existential_1(v99, v100);
          (*(v78 + 32))(&v103, v15, v97, v77, v78);
          if (v42)
          {
            __swift_destroy_boxed_opaque_existential_1(v99);
            v70 = v95;
            sub_1BA4A3E28();
            v43 = v1;
            v44 = v42;
            v45 = sub_1BA4A3E88();
            v46 = sub_1BA4A6FB8();

            LODWORD(v94) = v46;
            if (!os_log_type_enabled(v45, v46))
            {

              (*(v3 + 8))(v6, v2);
              v57 = &selRef_createHKUnitPreferenceController;
              v15 = v96;
LABEL_30:
              [v1 v57[267]];
              sub_1B9F2BB4C(v15, v97);

              return;
            }

            v93 = v45;
            v95 = v70;
            v98 = v3;
            v47 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v102[0] = v92;
            *v47 = 136315394;
            sub_1B9F374E8(&v1[v11], &v103, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
            v48 = *(&v104 + 1);
            if (*(&v104 + 1))
            {
              v49 = __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
              v91[1] = v91;
              v50 = *(v48 - 8);
              v51 = MEMORY[0x1EEE9AC00](v49, v49);
              v53 = v91 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v50 + 16))(v53, v51);
              sub_1B9F43A50(&v103, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
              v54 = sub_1BA4A2D58();
              v56 = v55;
              (*(v50 + 8))(v53, v48);
            }

            else
            {
              sub_1B9F43A50(&v103, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
              v54 = 0x6E776F6E6B6E75;
              v56 = 0xE700000000000000;
            }

            v70 = v95;
            v71 = sub_1B9F0B82C(v54, v56, v102);

            *(v47 + 4) = v71;
            *(v47 + 12) = 2080;
            swift_getErrorValue();
            v72 = sub_1BA4A8418();
            v74 = sub_1B9F0B82C(v72, v73, v102);

            *(v47 + 14) = v74;
            v75 = v93;
            _os_log_impl(&dword_1B9F07000, v93, v94, "Failed to update content for feed item: %s with error: %s", v47, 0x16u);
            v76 = v92;
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v76, -1, -1);
            MEMORY[0x1BFAF43A0](v47, -1, -1);

            (*(v98 + 8))(v6, v2);
            v15 = v96;
LABEL_29:
            v57 = &selRef_createHKUnitPreferenceController;
            goto LABEL_30;
          }

          __swift_destroy_boxed_opaque_existential_1(v99);
          v70 = v95;
          v58 = v98;
        }

        else
        {
          sub_1B9F43A50(v102, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
          v103 = 0u;
          v104 = 0u;
          v105 = 0;
          v70 = v95;
        }

        v79 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel;
        swift_beginAccess();
        sub_1B9F4A184(&v103, &v1[v79], &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
        swift_endAccess();
        sub_1B9F374E8(&v1[v58], &v103, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
        v80 = *(&v104 + 1);
        if (*(&v104 + 1))
        {
          v81 = v15;
          v82 = v105;
          v83 = __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
          v84 = *(v80 - 8);
          v85 = MEMORY[0x1EEE9AC00](v83, v83);
          v87 = v91 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v84 + 16))(v87, v85);
          sub_1B9F43A50(&v103, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
          v88 = (*(v82 + 8))(v80, v82);
          (*(v84 + 8))(v87, v80);
          if (*(v88 + 16))
          {
            v89 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_itemBasedTraitRegistration;
            if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_itemBasedTraitRegistration])
            {
              swift_unknownObjectRetain();
              sub_1BA4A7718();
              swift_unknownObjectRelease();
            }

            v57 = &selRef_createHKUnitPreferenceController;
            v90 = MEMORY[0x1BFAF2130](v88, sel_setNeedsUpdateConfiguration);

            *&v1[v89] = v90;
            swift_unknownObjectRelease();
            v15 = v81;
            goto LABEL_30;
          }
        }

        else
        {
          sub_1B9F43A50(&v103, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
    sub_1B9F43A50(&v103, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  }

  sub_1BA4A3E28();
  v22 = v0;
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v23, v24))
  {
    v98 = v3;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v102[0] = v26;
    *v25 = 136315138;
    sub_1B9F374E8(&v0[v11], &v103, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v27 = *(&v104 + 1);
    if (*(&v104 + 1))
    {
      v28 = __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
      v96 = v91;
      v29 = *(v27 - 8);
      v97 = v2;
      v30 = v29;
      v31 = MEMORY[0x1EEE9AC00](v28, v28);
      v33 = v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v33, v31);
      sub_1B9F43A50(&v103, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      v34 = sub_1BA4A2D58();
      v36 = v35;
      (*(v30 + 8))(v33, v27);
      v2 = v97;
    }

    else
    {
      v34 = 0x6E776F6E6B6E55;
      sub_1B9F43A50(&v103, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      v36 = 0xE700000000000000;
    }

    v37 = sub_1B9F0B82C(v34, v36, v102);

    *(v25 + 4) = v37;
    _os_log_impl(&dword_1B9F07000, v23, v24, "Failed to update hosting content for feed item: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);

    (*(v98 + 8))(v10, v2);
  }

  else
  {

    (*(v3 + 8))(v10, v2);
  }
}

uint64_t sub_1BA4655BC(uint64_t a1)
{
  v2 = v1;
  sub_1B9F7E0A0(0, &qword_1EDC5ECE0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60]);
  v121 = *(v4 - 8);
  v122 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v120 = v116 - v6;
  sub_1BA466E58(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v119 = v116 - v9;
  v10 = sub_1BA4A3EA8();
  v124 = *(v10 - 8);
  v125 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v123 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v126 = (v116 - v15);
  v16 = sub_1BA4A40C8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v116 - v23;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = v116 - v28;
  v30 = *(v17 + 16);
  v30(v116 - v28, a1, v16, v27);
  [v2 bounds];
  Width = CGRectGetWidth(v142);
  type metadata accessor for ObservableCellState(0);
  v32 = swift_allocObject();
  (v30)(v24, v29, v16);
  swift_beginAccess();
  (v30)(v20, v24, v16);
  sub_1BA4A4EE8();
  v33 = *(v17 + 8);
  v33(v24, v16);
  swift_endAccess();
  swift_beginAccess();
  *v141 = Width;
  v128 = v32;
  v34 = v127;
  sub_1BA4A4EE8();
  swift_endAccess();
  v33(v29, v16);
  v35 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  if (!*&v34[v35])
  {
    v36 = v126;
    sub_1BA4A3DD8();
    v37 = v34;
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v38, v39))
    {
      LODWORD(v118) = v39;
      v40 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v141[0] = v117;
      *v40 = 136446210;
      v41 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
      swift_beginAccess();
      sub_1B9F374E8(&v37[v41], &v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      v42 = *(&v130 + 1);
      if (*(&v130 + 1))
      {
        v43 = __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
        v116[1] = v116;
        v44 = *(v42 - 8);
        v45 = MEMORY[0x1EEE9AC00](v43, v43);
        v47 = v116 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        sub_1B9F43A50(&v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
        v48 = sub_1BA4A2D58();
        v50 = v49;
        (*(v44 + 8))(v47, v42);
        v36 = v126;
      }

      else
      {
        sub_1B9F43A50(&v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
        v50 = 0x80000001BA4FACA0;
        v48 = 0xD00000000000002FLL;
      }

      v51 = sub_1B9F0B82C(v48, v50, v141);

      *(v40 + 4) = v51;
      _os_log_impl(&dword_1B9F07000, v38, v118, "observableViewEnvironment was unexpectedly nil on %{public}s. Initializing with default HKHealthStore and Presentation", v40, 0xCu);
      v52 = v117;
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x1BFAF43A0](v52, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    (*(v124 + 8))(v36, v125);
  }

  v53 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    UIViewController.resolvedPinnedContentManager.getter(&v129);

    sub_1B9F1134C(&v129, v141);
  }

  else
  {
    v56 = sub_1BA4A22B8();
    v129 = 0u;
    v130 = 0u;
    v131 = 0;
    v57 = v53;
    v58 = sub_1BA4A22A8();
    v141[3] = v56;
    v141[4] = MEMORY[0x1E69A3CF8];
    v141[0] = v58;
    if (*(&v130 + 1))
    {
      sub_1B9F43A50(&v129, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    }
  }

  if (*&v34[v35])
  {
    v59 = *&v34[v35];
  }

  else
  {
    sub_1B9F0A534(v141, &v129);
    v60 = swift_unknownObjectWeakLoadStrong();
    if (v60)
    {
      v61 = v60;
      v62 = v53;
      UIViewController.resolvedHealthExperienceStore.getter(&v135);

      sub_1B9F1134C(&v135, v138);
    }

    else
    {
      v63 = sub_1BA4A1B08();
      v135 = 0u;
      v136 = 0u;
      v137 = 0;
      v64 = v53;
      v65 = sub_1BA4A1AF8();
      v139 = v63;
      v140 = MEMORY[0x1E69A3B38];
      v138[0] = v65;
      if (*(&v136 + 1))
      {
        sub_1B9F43A50(&v135, &qword_1EDC6AE08, &qword_1EDC6E248, MEMORY[0x1E69A3B40]);
      }
    }

    type metadata accessor for ProvidedViewContext(0);
    v59 = swift_allocObject();
    swift_beginAccess();
    v134[0] = v53;
    sub_1B9F2ACE8();
    v66 = v53;
    sub_1BA4A4EE8();
    swift_endAccess();
    *(v59 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManagerProvider) = 0;
    sub_1B9F0A534(&v129, v59 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
    sub_1B9F0A534(v138, &v135);
    swift_beginAccess();
    sub_1B9F0A534(&v135, v134);
    sub_1B9F0D950(0, &qword_1EDC6E248, MEMORY[0x1E69A3B40]);
    sub_1BA4A4EE8();
    __swift_destroy_boxed_opaque_existential_1(&v135);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(&v129);
    __swift_destroy_boxed_opaque_existential_1(v138);
  }

  v67 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_configurationProvider;
  swift_beginAccess();
  sub_1B9F374E8(&v34[v67], &v129, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
  if (!*(&v130 + 1))
  {

    sub_1B9F43A50(&v129, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
    return __swift_destroy_boxed_opaque_existential_1(v141);
  }

  sub_1B9F1134C(&v129, v138);
  v68 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_currentViewModel;
  swift_beginAccess();
  sub_1B9F374E8(&v34[v68], &v129, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
  if (!*(&v130 + 1))
  {

    v79 = &qword_1EDC68F40;
    v80 = &qword_1EDC68F50;
    v81 = &protocol descriptor for PluginViewModel;
LABEL_27:
    sub_1B9F43A50(&v129, v79, v80, v81);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v138);
    return __swift_destroy_boxed_opaque_existential_1(v141);
  }

  sub_1B9F1134C(&v129, &v135);
  v69 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F374E8(&v34[v69], &v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!*(&v130 + 1))
  {

    __swift_destroy_boxed_opaque_existential_1(&v135);

    v79 = &qword_1EDC6E1A0;
    v80 = &qword_1EDC6E1B0;
    v81 = MEMORY[0x1E69A3348];
    goto LABEL_27;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1BA4A27B8();

  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v135);

    goto LABEL_29;
  }

  v118 = v69;
  v70 = v134[0];
  v72 = v139;
  v71 = v140;
  v126 = __swift_project_boxed_opaque_existential_1(v138, v139);
  v73 = [v70 uniqueIdentifier];
  v74 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v76 = v75;

  v133 = 0;
  memset(v132, 0, sizeof(v132));
  sub_1BA2B2858(&v129);
  v77 = v74;
  v78 = v128;
  (*(v71 + 24))(v134, v77, v76, &v135, v132, v59, v128, &v129, v72, v71);
  v126 = 0;

  sub_1B9F8051C(&v129);
  sub_1B9F43A50(v132, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
  MEMORY[0x1BFAF1EF0](v134);
  v83 = v139;
  v84 = v140;
  __swift_project_boxed_opaque_existential_1(v138, v139);
  (*(v84 + 56))(v78, v83, v84);
  sub_1BA4A75F8();
  v85 = v139;
  v86 = v140;
  __swift_project_boxed_opaque_existential_1(v138, v139);
  v87 = (*(v86 + 40))(v78, v85, v86);
  if (v87)
  {
    v88 = v139;
    v89 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    v90 = v119;
    (*(v89 + 48))(v128, v88, v89);
    MEMORY[0x1BFAF1F10](v90);
  }

  v91 = v139;
  v92 = v140;
  __swift_project_boxed_opaque_existential_1(v138, v139);
  v93 = v126;
  v94 = (*(v92 + 64))(&v135, v91, v92);
  if (!v93)
  {
    [v34 setIndentationLevel_];

    __swift_destroy_boxed_opaque_existential_1(&v135);
    goto LABEL_29;
  }

  __swift_destroy_boxed_opaque_existential_1(&v135);

  __swift_destroy_boxed_opaque_existential_1(v138);
  v95 = v123;
  sub_1BA4A3DD8();
  v96 = v34;
  v97 = sub_1BA4A3E88();
  LODWORD(v70) = sub_1BA4A6FB8();

  v98 = os_log_type_enabled(v97, v70);
  v126 = v93;
  if (v98)
  {
    v119 = v96;
    v99 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v138[0] = v117;
    *v99 = 136315138;
    sub_1B9F374E8(v118 + v34, &v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v100 = *(&v130 + 1);
    if (*(&v130 + 1))
    {
      v101 = __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
      v118 = v116;
      v102 = *(v100 - 8);
      LODWORD(v127) = v70;
      v70 = v102;
      v103 = MEMORY[0x1EEE9AC00](v101, v101);
      v105 = v116 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v70 + 16))(v105, v103);
      sub_1B9F43A50(&v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      v106 = sub_1BA4A2D58();
      v108 = v107;
      (*(v70 + 8))(v105, v100);
      LOBYTE(v70) = v127;
    }

    else
    {
      v106 = 0xD000000000000011;
      sub_1B9F43A50(&v129, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      v108 = 0x80000001BA4FACD0;
    }

    v109 = sub_1B9F0B82C(v106, v108, v138);

    *(v99 + 4) = v109;
    _os_log_impl(&dword_1B9F07000, v97, v70, "Unable to load configuration for %s", v99, 0xCu);
    v110 = v117;
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x1BFAF43A0](v110, -1, -1);
    MEMORY[0x1BFAF43A0](v99, -1, -1);

    (*(v124 + 8))(v123, v125);
  }

  else
  {

    (*(v124 + 8))(v95, v125);
  }

  sub_1B9F7E0A0(0, &qword_1EBBED9A8, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
  *(&v130 + 1) = v111;
  v131 = sub_1BA1BD318();
  __swift_allocate_boxed_opaque_existential_1(&v129);
  v112 = [objc_opt_self() isAppleInternalInstall];
  v114 = v120;
  if (v112)
  {
    MEMORY[0x1EEE9AC00](v112, v113);
  }

  sub_1BA4A59B8();
  v115 = v122;
  sub_1BA4A5998();
  (*(v121 + 8))(v114, v115);
  MEMORY[0x1BFAF1EF0](&v129);

  return __swift_destroy_boxed_opaque_existential_1(v141);
}

id sub_1BA466840()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s]: providerInvalidatedContentConfiguration, updating configuration", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return [v1 setNeedsUpdateConfiguration];
}

id ListContentConfigurationHostCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListContentConfigurationHostCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1BA466B24()
{
  swift_beginAccess();

  return result;
}

double sub_1BA466B70(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v3 + v4) = a1;

  return result;
}

void (*sub_1BA466C30(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA466CC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1BA466D24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = &v5[OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier];
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 1) = a2;

  if (a2)
  {

    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  [v5 setAccessibilityIdentifier_];
}

void (*sub_1BA466DCC(uint64_t *a1))(void *a1, char a2)
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
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32ListContentConfigurationHostCell_baseIdentifier;
  *(v3 + 24) = *v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA4642D4;
}

void sub_1BA466E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id OnboardingAddToFavoritesViewController.__allocating_init(title:detailText:icon:healthExperienceStore:pinnedContentManager:objectType:useSystemMargins:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v13 = objc_allocWithZone(v9);
  sub_1B9F0A534(a6, v26);
  sub_1B9F0A534(a7, v25);
  type metadata accessor for OnboardingAddToFavoritesDataSource(0);
  swift_allocObject();
  v14 = a8;
  v15 = OnboardingAddToFavoritesDataSource.init(objectType:healthExperienceStore:pinnedContentManager:)(v14, v26, v25);
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
  v16 = &v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  *v16 = v15;
  v16[1] = &protocol witness table for MutableArrayDataSource;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = 2;
  v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = a9;
  v13[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = 0;
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();

  v24.receiver = v13;
  v24.super_class = type metadata accessor for OnboardingTableViewController();
  v19 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v17, v18, a5, 1);

  v20 = v19;
  [v20 setModalInPresentation_];

  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v20;
}

id OnboardingAddToFavoritesViewController.init(title:detailText:icon:healthExperienceStore:pinnedContentManager:objectType:useSystemMargins:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v10 = v9;
  sub_1B9F0A534(a6, v25);
  sub_1B9F0A534(a7, v24);
  type metadata accessor for OnboardingAddToFavoritesDataSource(0);
  swift_allocObject();
  v14 = a8;
  v15 = OnboardingAddToFavoritesDataSource.init(objectType:healthExperienceStore:pinnedContentManager:)(v14, v25, v24);
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
  v16 = &v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  *v16 = v15;
  v16[1] = &protocol witness table for MutableArrayDataSource;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = 2;
  v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = a9;
  v9[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = 0;
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();

  v23.receiver = v10;
  v23.super_class = type metadata accessor for OnboardingTableViewController();
  v19 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v17, v18, a5, 1);

  v20 = v19;
  [v20 setModalInPresentation_];

  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v20;
}

id OnboardingAddToFavoritesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingAddToFavoritesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SectionedDataSourceContainerViewType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA467678()
{
  result = qword_1EBBF2E78;
  if (!qword_1EBBF2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2E78);
  }

  return result;
}

uint64_t sub_1BA4676CC(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SummarySharingVersionMismatchCell();
  sub_1BA468C90();
  v8 = sub_1BA4A6808();
  v40 = v9;
  v42 = 0xD000000000000049;
  v43 = 0x80000001BA50A1B0;
  sub_1BA4A1788();
  v10 = sub_1BA4A1748();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v7, v3);
  MEMORY[0x1BFAF1350](v10, v12);

  v14 = v42;
  v15 = v43;
  sub_1B9FF6758();
  v16 = swift_allocObject();
  v39 = xmmword_1BA4B5480;
  *(v16 + 16) = xmmword_1BA4B5480;
  sub_1B9F0CF6C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = v39;
  *(v17 + 56) = &type metadata for SummarySharingVersionMismatchItem;
  *(v17 + 64) = sub_1BA468D44();
  v18 = swift_allocObject();
  *(v17 + 32) = v18;
  v20 = v40;
  v19 = v41;
  v18[2] = v8;
  v18[3] = v20;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v19;
  v18[7] = a2;

  sub_1BA4A1788();
  v21 = sub_1BA4A1748();
  v23 = v22;
  v13(v7, v3);
  v24 = MEMORY[0x1E69E7CC0];
  *(v16 + 48) = MEMORY[0x1E69E7CC0];
  v25 = sub_1B9F1C5F0(v24);
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = v17;
  *(v16 + 56) = v25;

  v26 = Array<A>.identifierToIndexDict()(v17);

  *(v16 + 56) = v26;

  *(v16 + 64) = v21;
  *(v16 + 72) = v23;
  v42 = 0x3C53447961727241;
  v43 = 0xE800000000000000;
  sub_1BA4A1788();
  v27 = sub_1BA4A1748();
  v29 = v28;
  v13(v7, v3);
  MEMORY[0x1BFAF1350](v27, v29);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v30 = v42;
  v31 = v43;
  type metadata accessor for ArrayDataSource(0);
  swift_allocObject();
  v32 = sub_1B9F348D8(v16, v30, v31);

  sub_1BA243890(0);
  v33 = swift_allocObject();
  v33[4] = v32;
  v33[5] = sub_1BA46868C;
  v33[6] = 0;
  v35 = v32[5];
  v34 = v32[6];
  v33[2] = v35;
  v33[3] = v34;
  v36 = swift_allocObject();
  v36[2] = sub_1BA4686B0;
  v36[3] = 0;
  v36[4] = v33;
  sub_1BA468DC4(0, &qword_1EBBEF0C0, sub_1BA243890, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  *(v37 + 24) = v35;
  *(v37 + 32) = v34;
  *(v37 + 40) = 1;
  *(v37 + 48) = sub_1BA468D98;
  *(v37 + 56) = v36;
  swift_bridgeObjectRetain_n();

  return v37;
}

id sub_1BA467AF0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_messageView;
  [v0 addSubview_];
  v2 = *&v0[v1];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = &v2[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton];
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_1BA468D3C;
  v4[1] = v3;
  v7 = v2;
  v8 = v0;
  sub_1B9F0E310(v5, v6);

  return [*&v0[v1] hk:v8 alignConstraintsWithView:?];
}

uint64_t sub_1BA467BD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9F68124(v1 + v3, v11);
  if (v12)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (swift_dynamicCast())
    {
      v4 = v13;
      v5 = v14;
      v6 = v15;
      v7 = v16;
      v8 = v17;
      v9 = v18;
    }
  }

  else
  {
    sub_1B9F7B644(v11);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_1BA2A8AB0(&v13);
  sub_1BA0CAA04(v4, v5, v6, v7, v8, v9);
  return sub_1B9F7B644(a1);
}

void (*sub_1BA467D14(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  *(v3 + 136) = v1;
  *(v3 + 144) = v4;
  swift_beginAccess();
  return sub_1BA467DA0;
}

void sub_1BA467DA0(uint64_t **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1B9F68124(v3[17] + v3[18], (v3 + 12));
    if (v3[15])
    {
      sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      if (swift_dynamicCast())
      {
        v4 = v3[6];
        v5 = v3[7];
        v6 = v3[8];
        v7 = v3[9];
        v8 = v3[10];
        v9 = v3[11];
      }
    }

    else
    {
      sub_1B9F7B644((v3 + 12));
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
    }

    *v3 = v4;
    v3[1] = v5;
    v3[2] = v6;
    v3[3] = v7;
    v3[4] = v8;
    v3[5] = v9;
    sub_1BA2A8AB0(v3);
    sub_1BA0CAA04(v4, v5, v6, v7, v8, v9);
  }

  free(v3);
}

id sub_1BA46807C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingVersionMismatchCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA468124@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

void (*sub_1BA468180(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1BA467D14(v2);
  return sub_1B9FCDD98;
}

unint64_t sub_1BA4681F4()
{
  result = qword_1EBBF2E98;
  if (!qword_1EBBF2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2E98);
  }

  return result;
}

unint64_t sub_1BA468248(uint64_t a1)
{
  *(a1 + 8) = sub_1BA468278();
  result = sub_1BA4682CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BA468278()
{
  result = qword_1EBBF2EA0;
  if (!qword_1EBBF2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EA0);
  }

  return result;
}

unint64_t sub_1BA4682CC()
{
  result = qword_1EBBF2EA8;
  if (!qword_1EBBF2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EA8);
  }

  return result;
}

uint64_t sub_1BA468320(void *a1)
{
  sub_1BA468CD8(0, &unk_1EBBF2EC8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA468C3C();
  sub_1BA4A8548();
  v10[15] = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    v10[14] = 1;
    sub_1BA4A8248();
    v10[13] = 2;
    sub_1BA4A8208();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BA4684AC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x4E676E6972616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564496573756572;
  }
}

uint64_t sub_1BA468520@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA4687C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA468548(uint64_t a1)
{
  v2 = sub_1BA468C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA468584(uint64_t a1)
{
  v2 = sub_1BA468C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA4685C0(uint64_t a1)
{
  v2 = sub_1BA468F5C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

double sub_1BA46860C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1BA4688F4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void *sub_1BA4686B0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EDC6CB90);
  sub_1B9F37E38(v8, v7);
  *(v7 + 7) = 0x4024000000000000;
  *(v7 + 9) = 0x4024000000000000;
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v7);
  return v9;
}

uint64_t sub_1BA4687C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4E1DC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E676E6972616873 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

uint64_t sub_1BA4688F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  sub_1BA468CD8(0, &qword_1EBBF2EB0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - v7;
  v9 = sub_1BA4A1798();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SummarySharingVersionMismatchCell();
  sub_1BA468C90();
  sub_1BA4A6808();

  v35 = 0xD000000000000049;
  v36 = 0x80000001BA50A1B0;
  sub_1BA4A1788();
  v14 = sub_1BA4A1748();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  MEMORY[0x1BFAF1350](v14, v16);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA468C3C();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v37;
  v18 = v34;
  LOBYTE(v35) = 0;
  v19 = sub_1BA4A8188();
  v21 = v20;
  v33 = v19;
  LOBYTE(v35) = 1;
  v22 = sub_1BA4A8188();
  v24 = v23;
  v32 = v22;
  LOBYTE(v35) = 2;
  v25 = sub_1BA4A8138();
  v26 = v8;
  v28 = v27;
  (*(v18 + 8))(v26, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v30 = v32;
  *v17 = v33;
  v17[1] = v21;
  v17[2] = v30;
  v17[3] = v24;
  v17[4] = v25;
  v17[5] = v28;
  return result;
}

unint64_t sub_1BA468C3C()
{
  result = qword_1EBBF2EB8;
  if (!qword_1EBBF2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EB8);
  }

  return result;
}

unint64_t sub_1BA468C90()
{
  result = qword_1EBBF2EC0;
  if (!qword_1EBBF2EC0)
  {
    type metadata accessor for SummarySharingVersionMismatchCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF2EC0);
  }

  return result;
}

void sub_1BA468CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA468C3C();
    v7 = a3(a1, &type metadata for SummarySharingVersionMismatchItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA468D44()
{
  result = qword_1EBBF2ED8;
  if (!qword_1EBBF2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2ED8);
  }

  return result;
}

void sub_1BA468DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA468E58()
{
  result = qword_1EBBF2EE0;
  if (!qword_1EBBF2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EE0);
  }

  return result;
}

unint64_t sub_1BA468EB0()
{
  result = qword_1EBBF2EE8;
  if (!qword_1EBBF2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EE8);
  }

  return result;
}

unint64_t sub_1BA468F08()
{
  result = qword_1EBBF2EF0;
  if (!qword_1EBBF2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EF0);
  }

  return result;
}

unint64_t sub_1BA468F5C()
{
  result = qword_1EBBF2EF8;
  if (!qword_1EBBF2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2EF8);
  }

  return result;
}

unint64_t sub_1BA468FB0@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1F88();
  v8 = v7;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v9 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v6, v8, 0, 0, 0, 0, v5, 0, 0);
  v11 = v10;
  a1[3] = v9;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v11;
  return result;
}

id GetMoreFromHealthResultsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetMoreFromHealthResultsController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetMoreFromHealthResultsController(uint64_t a1)
{
  result = qword_1EDC6E188;
  if (!qword_1EDC6E188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA469240(void *a1)
{
  sub_1B9F664FC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v49 = &v36 - v5;
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1BA442F0C(v6);
  }

  v7 = v6[2];
  v40 = v6 + 4;
  v48[0] = (v6 + 4);
  v48[1] = v7;
  v8 = sub_1BA4A82B8();
  if (v8 >= v7)
  {
    if (v7 >= 2)
    {
      v36 = v6;
      v37 = a1;
      v38 = v1;
      v39 = v7;
      v11 = -1;
      v12 = 1;
      v13 = v40;
      do
      {
        v42 = v12;
        v43 = v11;
        v14 = *&v40[2 * v12];
        v41 = v13;
        do
        {
          v44 = v14;
          v15 = v13[1];
          ObjectType = swift_getObjectType();
          v17 = *(&v44 + 1);
          v18 = *(*(&v44 + 1) + 24);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v19 = v18(ObjectType, v17);
          v20 = [v19 displayName];

          v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v23 = v22;

          v46 = v21;
          v47 = v23;
          v24 = swift_getObjectType();
          v25 = (*(v15 + 24))(v24, v15);
          v26 = [v25 displayName];

          v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v29 = v28;

          v45[0] = v27;
          v45[1] = v29;
          v30 = sub_1BA4A17C8();
          v31 = v49;
          (*(*(v30 - 8) + 56))(v49, 1, 1, v30);
          sub_1B9F252FC();
          v32 = sub_1BA4A7BB8();
          sub_1BA46E6F0(v31, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          if (v32 != -1)
          {
            break;
          }

          v33 = *v13;
          v14 = *(v13 + 1);
          *v13 = v14;
          *(v13 + 1) = v33;
          v13 -= 2;
        }

        while (!__CFADD__(v11++, 1));
        v12 = v42 + 1;
        v13 = v41 + 2;
        v11 = v43 - 1;
      }

      while (v42 + 1 != v39);
      a1 = v37;
      v6 = v36;
    }
  }

  else
  {
    v9 = v8;
    if (v7 >= 2)
    {
      sub_1B9F0D9AC(0, &unk_1EBBE9B28, &protocol descriptor for DisplayCategoryHeaderProviding, 0);
      v10 = sub_1BA4A6B98();
      *(v10 + 16) = v7 >> 1;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v46 = (v10 + 32);
    v47 = v7 >> 1;
    v35 = v10;
    sub_1BA46BFDC(&v46, v45, v48, v9);
    *(v35 + 16) = 0;
  }

  *a1 = v6;
}

char *AllHighlightsByCategoryViewController.__allocating_init(healthExperienceStore:healthStore:provenance:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = [objc_opt_self() allCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0, 0x1E69A4368);
  v13 = sub_1BA4A6B08();

  sub_1B9F0A534(a1, v18);
  type metadata accessor for AllHighlightsByCategoryDataSource(0);
  swift_allocObject();
  v14 = a2;
  v15 = sub_1BA46DEFC(v13, v18, v14);

  v16 = CompoundDataSourceCollectionViewController.init(dataSource:)(v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

char *AllHighlightsByCategoryViewController.init(healthExperienceStore:healthStore:provenance:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance);
  *v8 = a3;
  v8[1] = a4;
  v9 = [objc_opt_self() allCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0, 0x1E69A4368);
  v10 = sub_1BA4A6B08();

  sub_1B9F0A534(a1, v15);
  type metadata accessor for AllHighlightsByCategoryDataSource(0);
  swift_allocObject();
  v11 = a2;
  v12 = sub_1BA46DEFC(v10, v15, v11);

  v13 = CompoundDataSourceCollectionViewController.init(dataSource:)(v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t AllHighlightsByCategoryDataSource.__allocating_init(displayCategories:healthExperienceStore:healthStore:)(unint64_t a1, void *a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1BA46DEFC(a1, a2, a3);

  return v6;
}

id AllHighlightsByCategoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA46997C(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AllHighlightsByCategoryViewController();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = [v1 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v3 = sub_1BA4A6758();

  [v1 setTitle_];

  result = [v1 collectionView];
  if (result)
  {
    v5 = result;
    v6 = sub_1BA4A6AE8();
    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v5 setAccessibilityIdentifier_];
    v12 = 8;
    if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance + 8])
    {
      v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance];
      v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI37AllHighlightsByCategoryViewController_provenance + 8];
    }

    else
    {
      v9 = 0xE300000000000000;
      v8 = 7104878;
    }

    type metadata accessor for HealthAppAnalyticsManager();
    v11 = 0;
    memset(v10, 0, sizeof(v10));

    static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v12, v1, v8, v9, v10);

    return sub_1BA46E780(v10, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AllHighlightsByCategoryViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id AllHighlightsByCategoryViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AllHighlightsByCategoryViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA469D28(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA469D94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA469DEC(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AllHighlightsByCategoryDataSource.init(displayCategories:healthExperienceStore:healthStore:)(unint64_t a1, void *a2, void *a3)
{
  v4 = sub_1BA46DEFC(a1, a2, a3);

  return v4;
}

void sub_1BA469F24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore));

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthStore);
}

uint64_t AllHighlightsByCategoryDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore));

  return v0;
}

uint64_t AllHighlightsByCategoryDataSource.__deallocating_deinit()
{
  AllHighlightsByCategoryDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA46A0AC(uint64_t a1@<X3>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SnapshotDataSource.numberOfSections.getter(a1, a2[1]) >= 1)
  {
    v41 = v7;
    v11 = a2[3];
    v12 = v11(a1, a2);
    v13 = [v12 listIcon];

    if (v13)
    {
      v41 = 0x80000001BA4EA100;
      v14 = v11(a1, a2);
      v15 = [v14 displayName];

      v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v17 = v16;

      v18 = a2[4];
      v19 = v13;
      v20 = v18(a1, a2);
      v22 = v21;
      a3[3] = &type metadata for HeaderWithIconItem;
      a3[4] = sub_1B9FE8F38();
      v23 = swift_allocObject();
      *a3 = v23;

      v23[2] = 0xD000000000000024;
      v24 = v40;
      v23[3] = v41;
      v23[4] = v24;
      v23[5] = v17;
      v23[6] = v13;
      v23[7] = 0;
      v23[8] = v20;
      v23[9] = v22;
      return;
    }

    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = v25;
      v28 = v27;
      v40 = swift_slowAlloc();
      v42 = v40;
      *v28 = 136380675;
      v38 = v26;
      v29 = v11(a1, a2);
      v30 = [v29 displayName];

      v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v33 = v32;

      v34 = sub_1B9F0B82C(v31, v33, &v42);

      *(v28 + 4) = v34;
      v35 = v39;
      _os_log_impl(&dword_1B9F07000, v39, v38, "listIcon is missing from display category: %{private}s", v28, 0xCu);
      v36 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    else
    {
    }

    (*(v41 + 8))(v10, v6);
  }

  a3[3] = &type metadata for EmptyHeaderItem;
  a3[4] = sub_1B9FDA1B0();
  *a3 = swift_allocObject();
  EmptyHeaderItem.init()();
}

uint64_t sub_1BA46A450(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v75 = a4;
  v79 = a3;
  v7 = MEMORY[0x1E69E6720];
  sub_1B9F664FC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v78 = &v66 - v10;
  sub_1B9F664FC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v72 = &v66 - v13;
  v74 = sub_1BA4A3FB8();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A3F18();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A4428();
  v76 = *(v22 - 8);
  v77 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, &v84);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  sub_1BA4A2558();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v26 = *&v83[0];
  v27 = sub_1BA4A2508();
  if (!v27)
  {
LABEL_11:

LABEL_12:
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();
    v83[0] = v84;
    MEMORY[0x1BFAF1350](0xD000000000000039, 0x80000001BA50A690);
    sub_1B9F0A534(a1, &v84);
    v65 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v65);

    result = sub_1BA4A8018();
    __break(1u);
    return result;
  }

  v28 = v27;
  sub_1BA4A4418();
  v29 = [v79 displayTypeController];
  if (!v29)
  {
    __break(1u);
    goto LABEL_10;
  }

  a1 = v29;
  v70 = a5;
  v71 = v26;
  v26 = [v29 displayTypeForObjectType_];

  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = [v26 localization];

  v31 = [v30 displayName];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A43B8();
  sub_1B9F21D24(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  v66 = xmmword_1BA4B5480;
  *(v32 + 16) = xmmword_1BA4B5480;
  *&v84 = 0;
  *(&v84 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v84 = 0xD00000000000001BLL;
  *(&v84 + 1) = 0x80000001BA50A6D0;
  v33 = [v28 description];
  v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v35 = v25;
  v37 = v36;

  MEMORY[0x1BFAF1350](v34, v37);

  v67 = *(&v84 + 1);
  v68 = v84;
  v38 = v77;
  v85 = v77;
  v86 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v84);
  v40 = *(v76 + 16);
  v69 = v35;
  v40(boxed_opaque_existential_1, v35, v38);
  sub_1B9F664FC(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v41 = swift_allocObject();
  *(v41 + 16) = v66;
  (*(v18 + 104))(v21, *MEMORY[0x1E69DBF28], v17);
  v42 = sub_1BA4A3F48();
  (*(*(v42 - 8) + 56))(v72, 1, 1, v42);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v73 + 8))(v16, v74);
  (*(v18 + 8))(v21, v17);
  sub_1B9F0A534(v75, v83);
  v43 = swift_allocObject();
  v44 = v79;
  *(v43 + 16) = v28;
  *(v43 + 24) = v44;
  sub_1B9F1134C(v83, v43 + 32);
  v45 = v44;
  v46 = v28;
  v47 = v78;
  sub_1BA4A4158();
  v48 = sub_1BA4A4168();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1BA4B9FD0;
  strcpy((v49 + 32), "AllHighlights");
  *(v49 + 46) = -4864;
  v50 = [v70 displayName];
  v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v53 = v52;

  *(v49 + 48) = v51;
  *(v49 + 56) = v53;
  v79 = v46;
  *(v49 + 64) = sub_1BA190CA4();
  *(v49 + 72) = v54;
  v55 = sub_1BA4A6AE8();

  v56 = HKUIJoinStringsForAutomationIdentifier();

  if (v56)
  {
    v57 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v60 = type metadata accessor for ContentConfigurationItem(0);
  *(v32 + 56) = v60;
  *(v32 + 64) = sub_1B9F25550(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v61 = __swift_allocate_boxed_opaque_existential_1((v32 + 32));
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_1BA46E780(&v80, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v81 + 1) = &type metadata for BasicCellSelectionHandler;
  v82 = &off_1F381BCC8;
  *&v80 = sub_1BA46E800;
  *(&v80 + 1) = v43;
  LOBYTE(v81) = 2;
  sub_1B9F2F698(&v80, (v61 + 2));
  *(v61 + v60[12]) = 0;
  *(v61 + v60[13]) = 0;
  v62 = v67;
  *v61 = v68;
  v61[1] = v62;
  sub_1B9F1134C(&v84, (v61 + 9));
  *(v61 + 112) = 0;
  v61[15] = v41;
  sub_1B9F2F728(v78, v61 + v60[10]);
  v61[7] = v57;
  v61[8] = v59;
  v63 = (v61 + v60[11]);
  *v63 = 0;
  v63[1] = 0;
  sub_1BA46E780(&v80, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);

  (*(v76 + 8))(v69, v77);
  return v32;
}

void sub_1BA46AE4C(void *a1, void *a2, void *a3, uint64_t a4)
{
  sub_1B9F0A534(a4, v25);
  v7 = objc_allocWithZone(type metadata accessor for AllHighlightsForDataTypeViewController());
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hkType] = a2;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthStore] = a3;
  sub_1B9F0A534(v25, &v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_healthExperienceStore]);
  v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_hideShowAllButton] = 1;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController_provenance] = xmmword_1BA4C8530;
  sub_1B9F0A534(v25, v24);
  type metadata accessor for AllHighlightsForDataTypeDataSource(0);
  swift_allocObject();
  v8 = a2;
  v9 = a3;
  sub_1BA237ED8(v8, v9, v24, 1);

  v11 = CompoundDataSourceCollectionViewController.init(dataSource:)(v10);
  v12 = qword_1EDC5E100;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F21D24(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  v15 = [v9 displayTypeController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 displayTypeForObjectType_];

    if (v17)
    {
      v18 = [v17 localization];

      v19 = [v18 displayName];
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = v21;

      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1B9F1BE20();
      *(v14 + 32) = v20;
      *(v14 + 40) = v22;
      sub_1BA4A6768();

      v23 = sub_1BA4A6758();

      [v13 setTitle_];

      __swift_destroy_boxed_opaque_existential_1(v25);
      [a1 showViewController:v13 sender:a1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1BA46B1D8()
{

  return result;
}

uint64_t sub_1BA46B22C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t sub_1BA46B35C()
{
  v1 = *(v0 + qword_1EBBF2F28);

  return v1;
}

uint64_t sub_1BA46B3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v55 = a7;
  v50 = a5;
  v51 = a4;
  sub_1B9F664FC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v52 = &v44 - v10;
  v11 = sub_1BA4A3FB8();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BA4A3F18();
  v15 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BA4A4428();
  v46 = *(v56 - 8);
  v19 = v46;
  MEMORY[0x1EEE9AC00](v56, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HKTypeGroup.typeGroup(for:)(v61);
  sub_1BA4A4418();

  v45 = v22;
  sub_1BA4A43B8();
  sub_1B9F21D24(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  v44 = xmmword_1BA4B5480;
  *(v23 + 16) = xmmword_1BA4B5480;
  *&v60[0] = 0;
  *(&v60[0] + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v60[0] = 0xD000000000000019;
  *(&v60[0] + 1) = 0x80000001BA50A670;
  v24 = [a6 description];
  v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v27 = v26;

  MEMORY[0x1BFAF1350](v25, v27);

  v47 = *(&v60[0] + 1);
  v48 = *&v60[0];
  v28 = type metadata accessor for ContentConfigurationItem(0);
  *(v23 + 56) = v28;
  *(v23 + 64) = sub_1B9F25550(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  v30 = MEMORY[0x1E69DC110];
  v31 = v56;
  boxed_opaque_existential_1[12] = v56;
  boxed_opaque_existential_1[13] = v30;
  v32 = __swift_allocate_boxed_opaque_existential_1(boxed_opaque_existential_1 + 9);
  (*(v19 + 16))(v32, v22, v31);
  sub_1B9F664FC(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v33 = swift_allocObject();
  *(v33 + 16) = v44;
  v34 = v49;
  (*(v15 + 104))(v18, *MEMORY[0x1E69DBF28], v49);
  v35 = sub_1BA4A3F48();
  (*(*(v35 - 8) + 56))(v52, 1, 1, v35);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v53 + 8))(v14, v54);
  (*(v15 + 8))(v18, v34);
  sub_1B9F0A534(v55, v60);
  v36 = swift_allocObject();
  v37 = v61[1];
  *(v36 + 16) = v61[0];
  *(v36 + 32) = v37;
  *(v36 + 48) = v61[2];
  sub_1B9F1134C(v60, v36 + 64);
  v38 = v50;
  *(v36 + 104) = v51;
  *(v36 + 112) = v38;
  v39 = v28[10];

  sub_1BA4A4158();
  v40 = sub_1BA4A4168();
  (*(*(v40 - 8) + 56))(boxed_opaque_existential_1 + v39, 0, 1, v40);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  sub_1BA46E780(&v57, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v58 + 1) = &type metadata for BasicCellSelectionHandler;
  v59 = &off_1F381BCC8;
  *&v57 = sub_1BA46E770;
  *(&v57 + 1) = v36;
  LOBYTE(v58) = 2;
  sub_1B9F2F698(&v57, (boxed_opaque_existential_1 + 2));
  *(boxed_opaque_existential_1 + v28[12]) = 0;
  *(boxed_opaque_existential_1 + v28[13]) = 0;
  v41 = v47;
  *boxed_opaque_existential_1 = v48;
  boxed_opaque_existential_1[1] = v41;
  *(boxed_opaque_existential_1 + 112) = 0;
  boxed_opaque_existential_1[15] = v33;
  boxed_opaque_existential_1[7] = 0;
  boxed_opaque_existential_1[8] = 0;
  v42 = (boxed_opaque_existential_1 + v28[11]);
  *v42 = 0;
  v42[1] = 0;
  sub_1BA46E780(&v57, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  (*(v46 + 8))(v45, v56);
  return v23;
}

void sub_1BA46BAC0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = a2[1];
  sub_1B9F0A534(a3, v15);
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;

  *(inited + 32) = sub_1BA4A2068();
  *(inited + 40) = v9;
  *(inited + 48) = sub_1BA4A2058();
  *(inited + 56) = v10;
  objc_allocWithZone(type metadata accessor for AllHighlightsForExperienceViewController());
  sub_1B9F0A534(v15, v14);
  type metadata accessor for AllHighlightsForExperienceDataSource(0);
  swift_allocObject();
  v11 = AllHighlightsForExperienceDataSource.init(baseKeyword:sectionKeywords:healthExperienceStore:)(v6, v7, inited, v14);
  v12 = CompoundDataSourceCollectionViewController.init(dataSource:)(v11);
  v13 = sub_1BA4A6758();
  [v12 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(v15);
  [a1 showViewController:v12 sender:a1];
}

void sub_1BA46BC40()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EBBF2F58));
  v1 = *(v0 + qword_1EBBF2F68);
}

uint64_t sub_1BA46BCC8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EBBF2F58));
  return v0;
}

uint64_t sub_1BA46BE1C(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA46BE84()
{
  v1 = *(v0 + qword_1EBBF2F40);

  return v1;
}

double sub_1BA46BEC0()
{
  sub_1B9F437FC();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F405E0(v0, v1);

  return result;
}

void *sub_1BA46BF10(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  _s18HealthExperienceUI23ListLayoutConfigurationV16withLeadingInset5insetAC12CoreGraphics7CGFloatV_tFZ_0(v5);
  v7 = ListLayoutConfiguration.layout(for:)(v6);
  sub_1BA047354(v5);
  return v7;
}

void sub_1BA46BFDC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v137 = a1;
  sub_1B9F664FC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v147 = &v134 - v11;
  v144 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v134 = a4;
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v15 = v13;
      if (v13 + 1 >= v12)
      {
        v12 = v13 + 1;
      }

      else
      {
        v16 = *v144;
        v17 = *(*v144 + 16 * (v13 + 1) + 8);
        v135 = 16 * v13;
        v136 = v6;
        *&v148 = v16 + 16 * v13;
        v18 = *(v148 + 8);
        ObjectType = swift_getObjectType();
        v138 = v13;
        v20 = *(v17 + 24);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v21 = v20(ObjectType, v17);
        v22 = [v21 displayName];

        v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v25 = v24;

        v151 = v23;
        v152 = v25;
        v26 = swift_getObjectType();
        v27 = (*(v18 + 24))(v26, v18);
        v28 = [v27 displayName];

        v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v5 = v30;

        v149 = v29;
        v150 = v5;
        v31 = sub_1BA4A17C8();
        v32 = *(v31 - 8);
        v33 = v147;
        v141 = *(v32 + 56);
        v142 = v31;
        v140 = v32 + 56;
        (v141)(v147, 1, 1);
        v139 = sub_1B9F252FC();
        v146 = sub_1BA4A7BB8();
        sub_1BA46E6F0(v33, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v34 = v138 + 2;
        v35 = (v148 + 24);
        v143 = v14;
        v145 = v12;
        while (v12 != v34)
        {
          LODWORD(v148) = v146 == -1;
          v36 = *v35;
          v38 = v35 + 2;
          v37 = v35[2];
          v39 = swift_getObjectType();
          v40 = *(v37 + 24);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v41 = v40(v39, v37);
          v42 = [v41 displayName];

          v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v5 = v44;

          v151 = v43;
          v152 = v5;
          v45 = swift_getObjectType();
          v46 = (*(v36 + 24))(v45, v36);
          v47 = [v46 displayName];

          v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v50 = v49;

          v149 = v48;
          v150 = v50;
          v51 = v147;
          (v141)(v147, 1, 1, v142);
          v52 = sub_1BA4A7BB8();
          sub_1BA46E6F0(v51, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
          v12 = v145;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          ++v34;
          v35 = v38;
          v14 = v143;
          if (((v148 ^ (v52 != -1)) & 1) == 0)
          {
            v12 = v34 - 1;
            break;
          }
        }

        v53 = v135;
        v6 = v136;
        v15 = v138;
        if (v146 == -1)
        {
          if (v12 < v138)
          {
            __break(1u);
LABEL_123:
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
            return;
          }

          if (v138 < v12)
          {
            v54 = 16 * v12 - 16;
            v55 = v12;
            v56 = v138;
            do
            {
              if (v56 != --v55)
              {
                v58 = *v144;
                if (!*v144)
                {
                  goto LABEL_126;
                }

                v57 = *(v58 + v53);
                *(v58 + v53) = *(v58 + v54);
                *(v58 + v54) = v57;
              }

              ++v56;
              v54 -= 16;
              v53 += 16;
            }

            while (v56 < v55);
          }
        }
      }

      v59 = v144[1];
      if (v12 >= v59)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v12, v15))
      {
        goto LABEL_118;
      }

      if (v12 - v15 >= v134)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v15, v134))
      {
        goto LABEL_119;
      }

      if (v15 + v134 >= v59)
      {
        v60 = v144[1];
      }

      else
      {
        v60 = v15 + v134;
      }

      if (v60 < v15)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v12 == v60)
      {
LABEL_28:
        v13 = v12;
        if (v12 < v15)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v143 = v14;
        v136 = v6;
        v146 = *v144;
        v107 = v146 + 16 * v12 - 16;
        v138 = v15;
        v108 = (v15 - v12);
        v140 = v60;
        do
        {
          v145 = v12;
          v109 = *(v146 + 16 * v12);
          v141 = v108;
          v142 = v107;
          do
          {
            v148 = v109;
            v5 = *v107;
            v110 = *(v107 + 8);
            v111 = swift_getObjectType();
            v112 = *(&v148 + 1);
            v113 = *(*(&v148 + 1) + 24);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v114 = v113(v111, v112);
            v115 = [v114 displayName];

            v116 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v118 = v117;

            v151 = v116;
            v152 = v118;
            v119 = swift_getObjectType();
            v120 = (*(v110 + 24))(v119, v110);
            v121 = [v120 displayName];

            v122 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v124 = v123;

            v149 = v122;
            v150 = v124;
            v125 = sub_1BA4A17C8();
            v126 = v147;
            (*(*(v125 - 8) + 56))(v147, 1, 1, v125);
            sub_1B9F252FC();
            v127 = sub_1BA4A7BB8();
            sub_1BA46E6F0(v126, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            if (v127 != -1)
            {
              break;
            }

            if (!v146)
            {
              goto LABEL_123;
            }

            v128 = *v107;
            v109 = *(v107 + 16);
            *v107 = v109;
            *(v107 + 16) = v128;
            v107 -= 16;
          }

          while (!__CFADD__(v108++, 1));
          v12 = v145 + 1;
          v107 = v142 + 16;
          v108 = v141 - 1;
          v13 = v140;
        }

        while (v145 + 1 != v140);
        v6 = v136;
        v14 = v143;
        v15 = v138;
        if (v140 < v138)
        {
          goto LABEL_117;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BA27F470(0, *(v14 + 2) + 1, 1, v14);
      }

      v62 = *(v14 + 2);
      v61 = *(v14 + 3);
      v63 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        v14 = sub_1BA27F470((v61 > 1), v62 + 1, 1, v14);
      }

      *(v14 + 2) = v63;
      v64 = &v14[16 * v62];
      *(v64 + 4) = v15;
      *(v64 + 5) = v13;
      v65 = *v137;
      if (!*v137)
      {
        goto LABEL_127;
      }

      if (v62)
      {
        while (1)
        {
          v5 = v63 - 1;
          if (v63 >= 4)
          {
            break;
          }

          if (v63 == 3)
          {
            v66 = *(v14 + 4);
            v67 = *(v14 + 5);
            v76 = __OFSUB__(v67, v66);
            v68 = v67 - v66;
            v69 = v76;
LABEL_48:
            if (v69)
            {
              goto LABEL_106;
            }

            v82 = &v14[16 * v63];
            v84 = *v82;
            v83 = *(v82 + 1);
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            v87 = v85;
            if (v85)
            {
              goto LABEL_109;
            }

            v88 = &v14[16 * v5 + 32];
            v90 = *v88;
            v89 = *(v88 + 1);
            v76 = __OFSUB__(v89, v90);
            v91 = v89 - v90;
            if (v76)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v86, v91))
            {
              goto LABEL_113;
            }

            if (v86 + v91 >= v68)
            {
              if (v68 < v91)
              {
                v5 = v63 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v92 = &v14[16 * v63];
          v94 = *v92;
          v93 = *(v92 + 1);
          v76 = __OFSUB__(v93, v94);
          v86 = v93 - v94;
          v87 = v76;
LABEL_62:
          if (v87)
          {
            goto LABEL_108;
          }

          v95 = &v14[16 * v5];
          v97 = *(v95 + 4);
          v96 = *(v95 + 5);
          v76 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v76)
          {
            goto LABEL_111;
          }

          if (v98 < v86)
          {
            goto LABEL_3;
          }

LABEL_69:
          v103 = v5 - 1;
          if (v5 - 1 >= v63)
          {
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
            goto LABEL_120;
          }

          if (!*v144)
          {
            goto LABEL_124;
          }

          v104 = *&v14[16 * v103 + 32];
          v105 = *&v14[16 * v5 + 40];
          sub_1BA46CB24((*v144 + 16 * v104), (*v144 + 16 * *&v14[16 * v5 + 32]), (*v144 + 16 * v105), v65);
          if (v6)
          {
            goto LABEL_99;
          }

          if (v105 < v104)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1BA442D80(v14);
          }

          if (v103 >= *(v14 + 2))
          {
            goto LABEL_103;
          }

          v106 = &v14[16 * v103];
          *(v106 + 4) = v104;
          *(v106 + 5) = v105;
          v153 = v14;
          sub_1BA442CF4(v5);
          v14 = v153;
          v63 = *(v153 + 2);
          if (v63 <= 1)
          {
            goto LABEL_3;
          }
        }

        v70 = &v14[16 * v63 + 32];
        v71 = *(v70 - 64);
        v72 = *(v70 - 56);
        v76 = __OFSUB__(v72, v71);
        v73 = v72 - v71;
        if (v76)
        {
          goto LABEL_104;
        }

        v75 = *(v70 - 48);
        v74 = *(v70 - 40);
        v76 = __OFSUB__(v74, v75);
        v68 = v74 - v75;
        v69 = v76;
        if (v76)
        {
          goto LABEL_105;
        }

        v77 = &v14[16 * v63];
        v79 = *v77;
        v78 = *(v77 + 1);
        v76 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v76)
        {
          goto LABEL_107;
        }

        v76 = __OFADD__(v68, v80);
        v81 = v68 + v80;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v81 >= v73)
        {
          v99 = &v14[16 * v5 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v76 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v76)
          {
            goto LABEL_114;
          }

          if (v68 < v102)
          {
            v5 = v63 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v12 = v144[1];
      if (v13 >= v12)
      {
        goto LABEL_89;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_89:
  v5 = *v137;
  if (!*v137)
  {
    goto LABEL_128;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_121:
    v14 = sub_1BA442D80(v14);
  }

  v130 = v6;
  v153 = v14;
  v131 = *(v14 + 2);
  if (v131 >= 2)
  {
    while (*v144)
    {
      v132 = *&v14[16 * v131];
      v6 = *&v14[16 * v131 + 24];
      sub_1BA46CB24((*v144 + 16 * v132), (*v144 + 16 * *&v14[16 * v131 + 16]), (*v144 + 16 * v6), v5);
      if (v130)
      {
        goto LABEL_99;
      }

      if (v6 < v132)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BA442D80(v14);
      }

      if (v131 - 2 >= *(v14 + 2))
      {
        goto LABEL_116;
      }

      v133 = &v14[16 * v131];
      *v133 = v132;
      *(v133 + 1) = v6;
      v153 = v14;
      sub_1BA442CF4(v131 - 1);
      v14 = v153;
      v131 = *(v153 + 2);
      if (v131 <= 1)
      {
        goto LABEL_99;
      }
    }

    goto LABEL_125;
  }

LABEL_99:
}

uint64_t sub_1BA46CB24(char *a1, char *a2, char *a3, char *a4)
{
  sub_1B9F664FC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v67 = &v62 - v10;
  v11 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 4;
  v13 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 4;
  if (v12 >= v13 >> 4)
  {
    if (a4 != a2 || &a2[16 * v14] <= a4)
    {
      memmove(a4, a2, 16 * v14);
    }

    v73 = &a4[16 * v14];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v64 = a4;
      v66 = a1;
LABEL_26:
      v63 = a2 - 16;
      v37 = a3 - 16;
      v38 = v73;
      v65 = a2;
      do
      {
        v68 = v37;
        v39 = v37 + 16;
        v40 = *(v38 - 1);
        v38 -= 16;
        v41 = *(a2 - 1);
        ObjectType = swift_getObjectType();
        v43 = *(v40 + 24);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v44 = v43(ObjectType, v40);
        v45 = [v44 displayName];

        v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v48 = v47;

        v71 = v46;
        v72 = v48;
        v49 = swift_getObjectType();
        v50 = (*(v41 + 24))(v49, v41);
        v51 = [v50 displayName];

        v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v54 = v53;

        v69 = v52;
        v70 = v54;
        v55 = sub_1BA4A17C8();
        v56 = v67;
        (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
        sub_1B9F252FC();
        v57 = sub_1BA4A7BB8();
        sub_1BA46E6F0(v56, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v57 == -1)
        {
          a4 = v64;
          v36 = v39 == v65;
          v59 = v66;
          a3 = v68;
          v60 = v63;
          if (!v36)
          {
            *v68 = *v63;
          }

          if (v73 <= a4 || (a2 = v60, v60 <= v59))
          {
            a2 = v60;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v36 = v39 == v73;
        a4 = v64;
        v58 = v68;
        if (!v36)
        {
          *v68 = *v38;
        }

        v37 = v58 - 16;
        v73 = v38;
        a2 = v65;
      }

      while (v38 > a4);
      v73 = v38;
    }
  }

  else
  {
    if (a4 != a1 || &a1[16 * v12] <= a4)
    {
      memmove(a4, a1, 16 * v12);
    }

    v73 = &a4[16 * v12];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v68 = a3;
      while (1)
      {
        v66 = a1;
        v15 = *(a2 + 1);
        v16 = a2;
        v17 = *(a4 + 1);
        v18 = swift_getObjectType();
        v19 = *(v15 + 24);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v20 = v19(v18, v15);
        v21 = [v20 displayName];

        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v24 = v23;

        v71 = v22;
        v72 = v24;
        v25 = swift_getObjectType();
        v26 = (*(v17 + 24))(v25, v17);
        v27 = [v26 displayName];

        v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v30 = v29;

        v69 = v28;
        v70 = v30;
        v31 = sub_1BA4A17C8();
        v32 = v67;
        (*(*(v31 - 8) + 56))(v67, 1, 1, v31);
        sub_1B9F252FC();
        v33 = sub_1BA4A7BB8();
        sub_1BA46E6F0(v32, &qword_1EDC6AE40, MEMORY[0x1E6969770]);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v33 != -1)
        {
          break;
        }

        v34 = v16;
        a2 = v16 + 16;
        v35 = v66;
        if (v66 != v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        a1 = v35 + 16;
        if (a4 >= v73 || a2 >= v68)
        {
          goto LABEL_36;
        }
      }

      v34 = a4;
      v35 = v66;
      v36 = v66 == a4;
      a4 += 16;
      a2 = v16;
      if (v36)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v35 = *v34;
      goto LABEL_15;
    }

LABEL_36:
    a2 = a1;
  }

LABEL_38:
  if (a2 != a4 || a2 >= &a4[(v73 - a4 + (v73 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(a2, a4, 16 * ((v73 - a4) / 16));
  }

  return 1;
}

uint64_t sub_1BA46D134(void *a1, void *a2, void *a3)
{
  v46 = a2;
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v3 + qword_1EBBF2F28);
  *&v49[0] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(&v49[0] + 1) = v12;

  MEMORY[0x1BFAF1350](0x686769486C6C412ELL, 0xEE0073746867696CLL);

  v13 = *(&v49[0] + 1);
  *v11 = *&v49[0];
  v11[1] = v13;
  v48 = v3;
  *(v3 + qword_1EBBF2F18) = a1;
  *(v3 + qword_1EBBF2F20) = a3;
  sub_1BA4A2558();
  v45 = a1;
  v47 = a3;
  v14 = sub_1BA4A2518();
  static HKTypeGroup.typeGroup(for:)(v49);
  (*(v7 + 104))(v10, *MEMORY[0x1E69A3BF8], v6);
  v15 = sub_1BA4A2538();
  (*(v7 + 8))(v10, v6);
  v16 = sub_1BA4A2548();
  v17 = sub_1BA4A2528();

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B8B60;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = v17;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v44 = v15;
  v19 = v16;
  v20 = v17;
  v21 = sub_1BA4A6AE8();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v14 setPredicate_];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B5470;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1BA4A6758();
  v26 = [v24 initWithKey:v25 ascending:1];

  *(v23 + 32) = v26;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v27 = sub_1BA4A6AE8();

  [v14 setSortDescriptors_];

  v28 = v46;
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v29 = v14;
  v30 = sub_1BA4A1B68();
  v31 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v29 managedObjectContext:v30 sectionNameKeyPath:0 cacheName:0];

  sub_1BA3CBE80(0);
  v33 = objc_allocWithZone(v32);
  v34 = v31;
  v35 = sub_1BA3CB95C(v34);
  sub_1B9F0A534(v28, v49);
  v36 = swift_allocObject();
  v37 = v47;
  *(v36 + 16) = v47;
  sub_1B9F1134C(v49, v36 + 24);
  v38 = v45;
  *(v36 + 64) = v45;
  v39 = v38;
  v40 = v37;
  v41 = sub_1BA271C18(v35, sub_1BA46E7F0, v36, 0);

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v41;
}

void sub_1BA46D5E8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  sub_1B9F664FC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v51 - v13;
  v15 = (v5 + qword_1EBBF2F40);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v5 + qword_1EBBF2F48);
  *v16 = a1;
  v16[1] = a2;
  *(v5 + qword_1EBBF2F50) = a5;
  sub_1B9F0A534(a4, v5 + qword_1EBBF2F58);
  *(v5 + qword_1EBBF2F60) = a3;
  v17 = objc_opt_self();

  v18 = a5;
  v19 = a3;
  v20 = [v17 sharedInstanceForHealthStore_];
  if (v20)
  {
    v21 = v20;
    v54 = a1;
    v55 = a2;
    v22 = [v20 displayTypeForObjectType_];

    if (v22)
    {
      v23 = [v22 displayCategory];

      *(v5 + qword_1EBBF2F68) = v23;
      sub_1BA4A27B8();
      v52 = v23;
      v53 = v5;
      v24 = MEMORY[0x1BFAED110]();
      sub_1B9F664FC(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
      v25 = sub_1BA4A1C68();
      v26 = *(v25 - 8);
      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1BA4B5480;
      (*(v26 + 104))(v28 + v27, *MEMORY[0x1E69A3B88], v25);
      sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
      v29 = swift_allocObject();
      v51 = xmmword_1BA4B5470;
      *(v29 + 16) = xmmword_1BA4B5470;
      *(v29 + 32) = v19;
      v30 = sub_1BA4A0FA8();
      (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
      sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BA4B5460;
      v32 = v19;
      *(v31 + 32) = sub_1BA4A1D78();
      *(v31 + 40) = 0;
      v33 = MEMORY[0x1BFAED020](v28, v29, v14, v31);

      sub_1BA46E6F0(v14, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
      v34 = v33;
      [v24 setPredicate_];
      v35 = swift_allocObject();
      *(v35 + 16) = v51;
      v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v37 = sub_1BA4A6758();
      v38 = [v36 initWithKey:v37 ascending:1];

      *(v35 + 32) = v38;
      sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
      v39 = sub_1BA4A6AE8();

      [v24 setSortDescriptors_];

      __swift_project_boxed_opaque_existential_1(a4, a4[3]);
      v40 = v24;
      v41 = sub_1BA4A1B68();
      v42 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v40 managedObjectContext:v41 sectionNameKeyPath:0 cacheName:0];

      sub_1B9F126E0(0);
      v44 = objc_allocWithZone(v43);
      v45 = v42;
      v46 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v45);
      sub_1B9F0A534(a4, v56);
      v47 = swift_allocObject();
      v49 = v54;
      v48 = v55;
      v47[2] = v52;
      v47[3] = v49;
      v47[4] = v48;
      v47[5] = v32;
      sub_1B9F1134C(v56, (v47 + 6));
      v50 = v32;
      sub_1B9F17A68(v46, sub_1BA46E760, v47, 0);

      __swift_destroy_boxed_opaque_existential_1(a4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA46DB9C(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1BA4A7CC8();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_15:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
LABEL_25:
    __break(1u);

    __break(1u);
    return;
  }

  v7 = 0;
  v3 = (a1 & 0xC000000000000001);
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v3)
    {
      v9 = MEMORY[0x1BFAF2860](v7, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    sub_1B9F0A534(a2, v29);
    type metadata accessor for DataTypesWithHighlightsDataSource(0);
    swift_allocObject();
    v11 = v10;
    v12 = a3;
    v13 = sub_1BA46D134(v11, v29, v12);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1BA2808A0(0, v8[2] + 1, 1, v8);
    }

    v15 = v8[2];
    v14 = v8[3];
    if (v15 >= v14 >> 1)
    {
      v8 = sub_1BA2808A0((v14 > 1), v15 + 1, 1, v8);
    }

    ++v7;

    v8[2] = v15 + 1;
    v16 = &v8[2 * v15];
    v16[4] = v13;
    v16[5] = &off_1F3821780;
  }

  while (v6 != v7);
LABEL_16:
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v17 = sub_1BA4A1318();
  v19 = v18;
  v20 = [objc_opt_self() menstrualFlowType];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  sub_1B9F0A534(a2, v29);
  type metadata accessor for HighlightSearchItemDataSource(0);
  swift_allocObject();
  v22 = a3;
  sub_1BA46D5E8(v17, v19, v21, v29, v22);
  v24 = v23;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1BA2808A0(0, v8[2] + 1, 1, v8);
  }

  v26 = v8[2];
  v25 = v8[3];
  if (v26 >= v25 >> 1)
  {
    v8 = sub_1BA2808A0((v25 > 1), v26 + 1, 1, v8);
  }

  v8[2] = v26 + 1;
  v27 = &v8[2 * v26];
  v27[4] = v24;
  v27[5] = &off_1F3821720;
  v29[0] = v8;

  sub_1BA469240(v29);

  sub_1B9FE621C(v29[0]);
}

uint64_t sub_1BA46DEFC(unint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  sub_1B9F0A534(a2, v4 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthExperienceStore);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_displayCategories) = a1;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI33AllHighlightsByCategoryDataSource_healthStore) = a3;
  v13 = objc_opt_self();

  v45 = a3;
  v14 = [v13 configurationWithPointSize_];
  v15 = sub_1BA4A6758();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  if (v16)
  {
    v17 = [objc_opt_self() systemBlueColor];
    v18 = [v16 imageWithTintColor_];
  }

  else
  {
    v18 = 0;
  }

  v19 = qword_1EDC5E100;
  v44 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1BA4A1318();
  v22 = v21;
  *&v49 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  sub_1BA46E6A8();
  *&v49 = sub_1BA4A6808();
  *(&v49 + 1) = v23;
  *&v50 = v18;
  *(&v50 + 1) = v20;
  *v51 = v22;
  sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
  memset(&v51[8], 0, 32);
  inited = swift_initStackObject();
  v47 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F21D24(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = v47;
  *(v25 + 56) = &type metadata for CenteredIconDescriptionItem;
  *(v25 + 64) = sub_1BA3B87F4();
  v26 = swift_allocObject();
  *(v25 + 32) = v26;
  v27 = *&v51[16];
  *(v26 + 48) = *v51;
  *(v26 + 64) = v27;
  *(v26 + 80) = *&v51[32];
  v28 = v50;
  *(v26 + 16) = v49;
  *(v26 + 32) = v28;
  sub_1BA2985A8(&v49, v48);
  sub_1BA4A1788();
  v29 = sub_1BA4A1748();
  v31 = v30;
  (*(v9 + 8))(v12, v8);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v33 = Array<A>.identifierToIndexDict()(v32);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v25;
  *(inited + 56) = v33;
  *(inited + 64) = v29;
  *(inited + 72) = v31;
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  swift_allocObject();
  v34 = sub_1B9F1DAFC(inited, 1, sub_1B9F5AEA0, 0);
  sub_1BA139FFC(0);
  v35 = swift_allocObject();
  v35[4] = v34;
  v35[5] = sub_1BA296534;
  v35[6] = 0;
  v36 = *(v34 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v35[2] = *(v34 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v35[3] = v36;

  v37 = v46;
  sub_1BA46DB9C(a1, v46, v45);
  v39 = v38;

  sub_1B9F1DEA0(0);
  v40 = swift_allocObject();
  *(v40 + 16) = v47;
  *(v40 + 32) = v35;
  *(v40 + 40) = &protocol witness table for CellRegistering<A>;
  v48[0] = v40;

  sub_1B9FE20B8(v39);
  v41 = CompoundSectionedDataSource.init(_:)(v48[0]);

  sub_1BA298658(&v49);

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v41;
}

unint64_t sub_1BA46E6A8()
{
  result = qword_1EBBE9E10;
  if (!qword_1EBBE9E10)
  {
    type metadata accessor for CenteredIconDescriptionCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E10);
  }

  return result;
}

uint64_t sub_1BA46E6F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F664FC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA46E780(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F21D24(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t HeaderDescriptionDataSource.init()()
{
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HeaderDescriptionDataSource_notificationCancellable) = 0;
  sub_1BA46EA70(v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v19;
  v9 = v20;
  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v16 = v18;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  *(inited + 48) = v16;
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v17, "MutableArray<");
  HIWORD(v17[1]) = -4864;
  sub_1BA4A1788();
  v11 = sub_1BA4A1748();
  v13 = v12;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x1BFAF1350](v11, v13);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v14 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v17[0], v17[1]);

  sub_1BA46F424();

  return v14;
}

void sub_1BA46EA70(void *a1@<X8>)
{
  v2 = sub_1BA4A1798();
  v70 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v69 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  if ([v5 hasPairedWatch])
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDC84A30;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDC84A30;
  }

  v66 = sub_1BA4A1318();
  v65 = v7;
  v68 = [objc_opt_self() sharedInstance];
  v8 = [v68 getActivePairedDevice];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v9 = [v5 currentDeviceDisplayName];
  v67 = v8;
  v64 = v6;
  if (v9)
  {
    v10 = v9;
    v62 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v63 = v11;

    if (v8)
    {
      if ([v8 valueForProperty_])
      {
        sub_1BA4A7BF8();
        swift_unknownObjectRelease();
      }

      else
      {
        v71 = 0u;
        v72 = 0u;
      }

      v73 = v71;
      v74 = v72;
      if (*(&v72 + 1))
      {
        v14 = MEMORY[0x1E69E6158];
        if (swift_dynamicCast())
        {

          v15 = v2;
          v17 = *(&v71 + 1);
          v16 = v71;
          v61 = sub_1BA4A1318();
          sub_1B9F1B560(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740]);
          v18 = v14;
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1BA4B5460;
          *(v19 + 56) = v18;
          v20 = sub_1B9F1BE20();
          v21 = v63;
          *(v19 + 32) = v62;
          *(v19 + 40) = v21;
          *(v19 + 96) = v18;
          *(v19 + 104) = v20;
          *(v19 + 64) = v20;
          *(v19 + 72) = v16;
          v2 = v15;
          *(v19 + 80) = v17;
          v22 = sub_1BA4A6768();
          v24 = v23;

          sub_1BA4A1318();
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1BA4B5480;
          *(v25 + 56) = MEMORY[0x1E69E6158];
          *(v25 + 64) = v20;
          *(v25 + 32) = v22;
          *(v25 + 40) = v24;
          v12 = sub_1BA4A6768();
          v13 = v26;

          goto LABEL_23;
        }

        v61 = v2;
LABEL_22:
        v27 = MEMORY[0x1E69E6158];
        sub_1BA4A1318();
        sub_1B9F1B560(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740]);
        v28 = swift_allocObject();
        v60 = xmmword_1BA4B5480;
        *(v28 + 16) = xmmword_1BA4B5480;
        *(v28 + 56) = v27;
        v29 = sub_1B9F1BE20();
        *(v28 + 64) = v29;
        v30 = v63;
        *(v28 + 32) = v62;
        *(v28 + 40) = v30;
        v31 = sub_1BA4A6768();
        v33 = v32;

        v34 = swift_allocObject();
        *(v34 + 16) = v60;
        *(v34 + 56) = v27;
        *(v34 + 64) = v29;
        *(v34 + 32) = v31;
        *(v34 + 40) = v33;
        v12 = sub_1BA4A6768();
        v13 = v35;

        v2 = v61;
        goto LABEL_23;
      }
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
    }

    v61 = v2;
    sub_1B9F23224(&v73);
    goto LABEL_22;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_23:
  v36 = objc_opt_self();
  v37 = [v36 configurationWithPointSize_];
  v38 = [v36 configurationPreferringMulticolor];
  v39 = [v37 configurationByApplyingConfiguration_];

  type metadata accessor for HeaderDescriptionDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass_];
  v42 = v39;
  v43 = sub_1BA4A6758();
  v44 = [objc_opt_self() imageNamed:v43 inBundle:v41 withConfiguration:v42];

  v45 = v44;
  v46 = sub_1BA4A1318();
  v48 = v47;
  *&v73 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  sub_1BA46E6A8();
  *&v73 = sub_1BA4A6808();
  *(&v73 + 1) = v49;
  *&v74 = v44;
  *(&v74 + 1) = v46;
  *&v75 = v48;
  *(&v75 + 1) = v66;
  *&v76 = v65;
  *(&v76 + 1) = v12;
  v77 = v13;
  sub_1B9F1B560(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BA4B5480;
  *(v50 + 56) = &type metadata for CenteredIconDescriptionItem;
  *(v50 + 64) = sub_1BA3B87F4();
  v51 = swift_allocObject();
  *(v50 + 32) = v51;
  v52 = v76;
  *(v51 + 48) = v75;
  *(v51 + 64) = v52;
  *(v51 + 80) = v77;
  v53 = v74;
  *(v51 + 16) = v73;
  *(v51 + 32) = v53;
  sub_1BA2985A8(&v73, &v71);
  v54 = v69;
  sub_1BA4A1788();
  v55 = sub_1BA4A1748();
  v57 = v56;
  (*(v70 + 8))(v54, v2);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v59 = Array<A>.identifierToIndexDict()(v58);

  sub_1BA298658(&v73);

  *a1 = 0;
  a1[1] = 0;
  a1[2] = v50;
  a1[3] = v59;
  a1[4] = v55;
  a1[5] = v57;
}

uint64_t sub_1BA46F398()
{
  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA46EA70((inited + 32));
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

double sub_1BA46F424()
{
  v1 = v0;
  sub_1BA46FB50(0);
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A7488();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - v14;
  sub_1BA46FCAC(&qword_1EBBF2FB0, type metadata accessor for HeaderDescriptionDataSource, &protocol conformance descriptor for HeaderDescriptionDataSource);
  v16 = sub_1BA4A30E8();
  v17 = [objc_opt_self() defaultCenter];
  sub_1BA4A7498();

  v24 = v16;
  (*(v8 + 16))(v11, v15, v7);
  sub_1BA46FC3C(0);
  sub_1BA46FCAC(&qword_1EBBF2FA8, sub_1BA46FC3C, MEMORY[0x1E695BED8]);
  sub_1BA46FCAC(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);

  sub_1BA4A4BE8();
  swift_allocObject();
  swift_weakInit();
  sub_1BA46FCAC(&qword_1EBBF2FB8, sub_1BA46FB50, MEMORY[0x1E695BDC0]);
  v18 = v22;
  v19 = sub_1BA4A5148();

  (*(v23 + 8))(v6, v18);
  (*(v8 + 8))(v15, v7);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27HeaderDescriptionDataSource_notificationCancellable) = v19;

  return result;
}

double sub_1BA46F7CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA46F398();
  }

  return result;
}

uint64_t HeaderDescriptionDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t HeaderDescriptionDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *HeaderDescriptionDataSource.layout(for:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v2, qword_1EDC6CB90);
  return ListLayoutConfiguration.layout(for:)(v1);
}

uint64_t type metadata accessor for HeaderDescriptionDataSource(uint64_t a1)
{
  result = qword_1EBBF2F88;
  if (!qword_1EBBF2F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA46FB50(uint64_t a1)
{
  if (!qword_1EBBF2F98)
  {
    sub_1BA46FC3C(255);
    sub_1BA4A7488();
    sub_1BA46FCAC(&qword_1EBBF2FA8, sub_1BA46FC3C, MEMORY[0x1E695BED8]);
    sub_1BA46FCAC(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v1 = sub_1BA4A4BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2F98);
    }
  }
}

void sub_1BA46FC3C(uint64_t a1)
{
  if (!qword_1EBBF2FA0)
  {
    sub_1BA4A1018();
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF2FA0);
    }
  }
}

uint64_t sub_1BA46FCAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA46FD04(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA46FD8C();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA46FD8C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v12, v33);
  if (v34)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBF2FD8, &protocol descriptor for CalendarPickerTableViewCellDataSource);
    if (swift_dynamicCast())
    {
      if (*(&v36 + 1))
      {
        sub_1B9F1134C(&v35, v38);
        v13 = v39;
        v14 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        (*(v14 + 8))(v13, v14);
        v15 = sub_1BA470378();
        v16 = sub_1BA4A16B8();
        [v15 setDate:v16 animated:0];

        v17 = v39;
        v18 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        (*(v18 + 16))(v1, v11, v17, v18);
        (*(v8 + 8))(v11, v7);
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v33, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  sub_1B9F43A50(&v35, &qword_1EBBF2FD0, &qword_1EBBF2FD8, &protocol descriptor for CalendarPickerTableViewCellDataSource);
  sub_1BA4A3DE8();
  v20 = v1;
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38[0] = v24;
    *v23 = 136446722;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, v38);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v38);
    *(v23 + 22) = 2082;
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    *&v35 = v28;
    sub_1BA0928CC();
    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, v38);

    *(v23 + 24) = v31;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to CalendarPickerTableViewCellDataSource", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA470204@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA47025C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA46FD8C();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA4702E0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA470344;
}

uint64_t sub_1BA470344(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA46FD8C();
  }

  return result;
}

id sub_1BA470378()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker);
  }

  else
  {
    v4 = sub_1BA4703DC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA4703DC(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1BA4A18A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setPreferredDatePickerStyle_];
  [v11 setDatePickerMode_];
  sub_1BA4A1718();
  v12 = sub_1BA4A16B8();
  v13 = *(v7 + 8);
  v13(v10, v6);
  [v11 setMaximumDate_];

  v14 = objc_opt_self();
  sub_1BA4A1878();
  v15 = sub_1BA4A1818();
  (*(v2 + 8))(v5, v1);
  v16 = [v14 hk:v15 minimumDateForBirthDateWithCalendar:?];

  sub_1BA4A16F8();
  v17 = sub_1BA4A16B8();
  v13(v10, v6);
  [v11 setMinimumDate_];

  [v11 addTarget:v20 action:sel_pickerDateChanged_ forControlEvents:4096];
  return v11;
}

id CalendarPickerTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *CalendarPickerTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker] = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for CalendarPickerTableViewCell();
  v7 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = v7;
  v9 = [v8 contentView];
  v10 = sub_1BA470378();
  [v9 addSubview_];

  v11 = *&v8[OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker];
  v12 = [v8 contentView];

  [v11 hk:v12 alignConstraintsWithView:?];
  return v8;
}

uint64_t sub_1BA470928(void *a1)
{
  v3 = sub_1BA4A1728();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v8, v14);
  if (v15)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBF2FD8, &protocol descriptor for CalendarPickerTableViewCellDataSource);
    if (swift_dynamicCast())
    {
      v9 = *(&v17 + 1);
      if (*(&v17 + 1))
      {
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
        v11 = [a1 date];
        sub_1BA4A16F8();

        (*(v10 + 16))(v1, v7, v9, v10);
        (*(v4 + 8))(v7, v3);
        return __swift_destroy_boxed_opaque_existential_1(&v16);
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v14, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  return sub_1B9F43A50(&v16, &qword_1EBBF2FD0, &qword_1EBBF2FD8, &protocol descriptor for CalendarPickerTableViewCellDataSource);
}

id CalendarPickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarPickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA470D28(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v27 = v6;
  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  v7 = [a1 objectType];
  v8 = [v7 identifier];

  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  MEMORY[0x1BFAF1350](v9, v11);

  v12 = v26;
  v13 = v27;
  v14 = [a1 localization];
  v15 = [v14 titleEmbeddedDisplayName];

  v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v17;

  v19 = [a1 localization];
  v20 = [v19 summary];

  if (v20)
  {
    v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  DataTypeDescriptionAttribution.init(displayType:mode:)(a1, a2, &v26);
  v24 = v26;
  v25 = v27;
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v21;
  *(a3 + 24) = v23;
  *(a3 + 32) = v24;
  *(a3 + 40) = v25;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
}

id sub_1BA470EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t ViewFactoryFailure.localizedDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (!*(v0 + 16))
    {
      sub_1BA4A7DF8();

      v7 = 0x20656C646E7542;
      MEMORY[0x1BFAF1350](v2, v1);
      v3 = 0xD000000000000029;
      v4 = 0x80000001BA50A960;
LABEL_8:
      MEMORY[0x1BFAF1350](v3, v4);
      return v7;
    }

    sub_1BA4A7DF8();

    v5 = 0xD000000000000010;
LABEL_7:
    v7 = v5;
    v3 = v2;
    v4 = v1;
    goto LABEL_8;
  }

  if (*(v0 + 16) == 2)
  {
    sub_1BA4A7DF8();

    v5 = 0xD00000000000001DLL;
    goto LABEL_7;
  }

  return 0xD00000000000004FLL;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI18ViewFactoryFailureO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BA471098(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1BA4710E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1BA471124(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t (*sub_1BA471224(void *a1))()
{
  a1[2] = v1;
  *a1 = (*(*(*v1 + 88) + 80))(*(*v1 + 80));
  a1[1] = v3;
  return sub_1BA4712B0;
}

uint64_t sub_1BA4712B0(void *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if ((a2 & 1) == 0)
  {
    return (*(*(*v3 + 88) + 88))(*a1, v2, *(*v3 + 80));
  }

  v4 = *(*v3 + 88);
  v5 = *(v4 + 88);
  v6 = *(*v3 + 80);
  v7 = swift_unknownObjectRetain();
  v5(v7, v2, v6, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BA4714F0(uint64_t a1)
{
  v37 = a1;
  v31 = *v1;
  v32 = v2;
  v3 = sub_1BA4A3EA8();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v31 + 88);
  v7 = *(v31 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1BA4A7AA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v31 - v17;
  sub_1B9F0A534(v37, v36);
  sub_1B9F7EABC();
  v19 = swift_dynamicCast();
  v20 = *(v14 + 56);
  if (v19)
  {
    v20(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
    v21 = (*(v6 + 72))(v18, v7, v6);
    (*(v14 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v20(v13, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v13, v9);
    v22 = v33;
    sub_1BA4A3E28();
    v23 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v23, v21))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36[0] = v25;
      *v24 = 136315138;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, v36);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1B9F07000, v23, v21, "Model for %s is unable to cast to required type", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v34 + 8))(v22, v35);
    sub_1B9F21374();
    swift_allocError();
    *v29 = 0x8000000000000000;
    swift_willThrow();
  }

  return v21;
}

uint64_t PlatformConfigurationProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1BFAF43A0);
  }

  return result;
}

id OnboardingCollectionViewController.init(collectionViewController:title:detailText:icon:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v9 = &v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v10 = 0;
  v10[8] = 1;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = a1;
  v11 = a1;
  v12 = sub_1BA4A6758();

  if (a5)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for OnboardingCollectionViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, a6, 3);

  return v14;
}

void sub_1BA471C3C()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  [v3 setFrame_];

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v0 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 hk_onboardingListDirectionalEdgeInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setDirectionalLayoutMargins_];
  v26 = [v1 collectionView];
  if (!v26)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [objc_opt_self() systemBackgroundColor];
  [v27 setBackgroundColor_];
}

id OnboardingCollectionViewController.__allocating_init(collectionViewController:title:detailText:icon:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = objc_allocWithZone(v6);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v11 = &v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v12 = 0;
  v12[8] = 1;
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = a1;
  v13 = a1;
  v14 = sub_1BA4A6758();

  if (a5)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v10;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, a6, 3);

  return v16;
}

void sub_1BA471F68()
{
  v1 = v0;
  sub_1BA472460(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnboardingCollectionViewController();
  v42.receiver = v0;
  v42.super_class = v8;
  objc_msgSendSuper2(&v42, sel_viewDidLoad);
  v9 = [v0 scrollView];
  [v1 setContentScrollView:v9 forEdge:15];

  v10 = [v1 contentView];
  v11 = [v10 heightAnchor];

  v12 = [v11 constraintEqualToConstant_];
  v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = v12;
  v14 = v12;

  v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_];
  [v1 addChildViewController_];
  v16 = [v1 contentView];
  v17 = [v15 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  [v16 addSubview_];

  [v15 didMoveToParentViewController_];
  v19 = [v15 collectionView];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  [v19 setScrollEnabled_];

  v21 = [v15 collectionView];
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  [v21 setBounces_];

  v23 = [v15 collectionView];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  v25 = [v15 collectionView];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  [v25 setAutomaticallyAdjustsScrollIndicatorInsets_];

  v27 = [v15 view];
  if (!v27)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  v29 = [v15 view];
  if (!v29)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = v29;
  [v29 setAutoresizingMask_];

  sub_1BA471C3C();
  type metadata accessor for CompoundDataSourceCollectionViewController();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
    v33 = v31;
    swift_beginAccess();
    *(v33 + v32) = 0;
  }

  v34 = objc_opt_self();
  sub_1B9F109F8();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BA4B5470;
  *(v35 + 32) = v14;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v36 = v14;
  v37 = sub_1BA4A6AE8();

  [v34 activateConstraints_];

  v38 = [v15 collectionView];
  if (v38)
  {
    v39 = v38;
    swift_getKeyPath();
    sub_1BA4A14F8();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BA472C30();
    v40 = sub_1BA4A5148();

    (*(v4 + 8))(v7, v3);
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = v40;

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1BA472460(uint64_t a1)
{
  if (!qword_1EBBF3008)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E4E8, 0x1E69DC7F0);
    type metadata accessor for CGSize(255);
    v1 = sub_1BA4A7778();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3008);
    }
  }
}

void sub_1BA4724D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong availableContentViewHeight];
    v5 = v4;
    v6 = [*&v3[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] collectionView];
    if (v6)
    {
      v7 = v6;
      if (v5 > 120.0)
      {
        v8 = v5;
      }

      else
      {
        v8 = 120.0;
      }

      [v6 contentSize];
      v10 = v9;

      if (v8 > v10)
      {
        v10 = v8;
      }

      v11 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint];
      [v11 setConstant_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BA472608(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for OnboardingCollectionViewController();
  objc_msgSendSuper2(&v11, sel_viewIsAppearing_, a1 & 1);
  sub_1BA471C3C();
  [v1 availableContentViewHeight];
  v4 = v3;
  result = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] collectionView];
  if (result)
  {
    v6 = result;
    if (v4 > 120.0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 120.0;
    }

    [result contentSize];
    v9 = v8;

    if (v7 > v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    return [*&v1[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] setConstant_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA472730()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for OnboardingCollectionViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLayoutSubviews);
  sub_1BA471C3C();
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_];
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  [result layoutIfNeeded];

  [v0 availableContentViewHeight];
  v5 = v4;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  if (v5 > 120.0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 120.0;
  }

  [result contentSize];
  v9 = v8;

  if (v7 > v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] setConstant_];
  result = [v0 availableContentViewHeight];
  v13 = &v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  if ((v0[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight + 8] & 1) != 0 || v12 != *v13)
  {
    [v0 availableContentViewHeight];
    *v13 = v14;
    v13[8] = 0;
    [v0 availableContentViewHeight];
    v16 = v15;
    result = [v1 collectionView];
    if (result)
    {
      v17 = result;
      if (v16 > 120.0)
      {
        v18 = v16;
      }

      else
      {
        v18 = 120.0;
      }

      [result contentSize];
      v20 = v19;

      if (v18 > v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      return [*&v0[v11] setConstant_];
    }

LABEL_22:
    __break(1u);
  }

  return result;
}

id OnboardingCollectionViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingCollectionViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA472C30()
{
  result = qword_1EBBF3010;
  if (!qword_1EBBF3010)
  {
    sub_1BA472460(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3010);
  }

  return result;
}

id OnboardingIconSmallPaddingViewController.__allocating_init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_allocWithZone(v11);
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] = a5;
  v17 = &v16[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  *v17 = a6;
  v17[8] = a7 & 1;
  v18 = &v16[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText];
  *v18 = a8;
  *(v18 + 1) = a9;
  v19 = &v16[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier];
  *v19 = a10;
  *(v19 + 1) = a11;
  v20 = a5;
  v21 = sub_1BA4A6758();

  v22 = sub_1BA4A6758();

  v26.receiver = v16;
  v26.super_class = v25;
  v23 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, 0, 3);

  return v23;
}

id OnboardingIconSmallPaddingViewController.init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] = a5;
  v12 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  *v12 = a6;
  v12[8] = a7 & 1;
  v13 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText];
  *v13 = a8;
  *(v13 + 1) = a9;
  v14 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier];
  *v14 = a10;
  *(v14 + 1) = a11;
  v15 = a5;
  v16 = sub_1BA4A6758();

  v17 = sub_1BA4A6758();

  v20.receiver = v11;
  v20.super_class = type metadata accessor for OnboardingIconSmallPaddingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, 0, 3);

  return v18;
}

id OnboardingIconSmallPaddingViewController.__allocating_init(title:detailText:heroImage:heroImageHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(v11);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v16 setContentMode_];
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] = v16;
  v17 = &v15[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  *v17 = a6;
  v17[8] = a7 & 1;
  v18 = &v15[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText];
  *v18 = a8;
  *(v18 + 1) = a9;
  v19 = &v15[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier];
  *v19 = a10;
  *(v19 + 1) = a11;
  v20 = sub_1BA4A6758();

  v21 = sub_1BA4A6758();

  v26.receiver = v15;
  v26.super_class = v11;
  v22 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v20, v21, 0, 3);

  return v22;
}

id OnboardingIconSmallPaddingViewController.init(title:detailText:heroImage:heroImageHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v15 setContentMode_];
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] = v15;
  v16 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  *v16 = a6;
  v16[8] = a7 & 1;
  v17 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText];
  *v17 = a8;
  *(v17 + 1) = a9;
  v18 = &v11[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier];
  *v18 = a10;
  *(v18 + 1) = a11;
  v19 = sub_1BA4A6758();

  v20 = sub_1BA4A6758();

  v24.receiver = v11;
  v24.super_class = type metadata accessor for OnboardingIconSmallPaddingViewController();
  v21 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v19, v20, 0, 3);

  return v21;
}

void sub_1BA473200()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for OnboardingIconSmallPaddingViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight];
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroViewCustomHeight + 8])
  {
    v1 = 82.0;
  }

  [v0 hxui:*&v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_heroView] addCustomImageIconViewWithImageView:0 accessibilityIdentifier:v1 height:?];
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonText + 8])
  {
    v2 = sub_1BA4A6758();
    if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI40OnboardingIconSmallPaddingViewController_linkButtonAccessibilityIdentifier + 8])
    {
      v3 = sub_1BA4A6758();
    }

    else
    {
      v3 = 0;
    }
  }
}

id OnboardingIconSmallPaddingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingIconSmallPaddingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingIconSmallPaddingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingIconSmallPaddingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA4736C0()
{
  v1 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  *(v2 + 56) = v1;
  *(v2 + 64) = &protocol witness table for PDFSpacer;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PDFRenderableProvider<>.renderables.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA4737A0, 0, 0);
}

uint64_t sub_1BA4737A0()
{
  v1 = *(v0 + 32);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  v6 = *(v0 + 16);
  *(v2 + 56) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v1);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1BA4738A8(uint64_t a1)
{
  *(v2 + 48) = *v1;
  v3 = *(v1 + 8);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1BA4738DC, 0, 0);
}

uint64_t sub_1BA4738DC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = v5;
  *(v6 + 64) = &protocol witness table for PDFFloatingImage;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  v10 = *(v0 + 8);
  v8 = v4;

  return v10(v6);
}

uint64_t sub_1BA4739F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 1);
  return MEMORY[0x1EEE6DFA0](sub_1BA473A1C, 0, 0);
}

uint64_t sub_1BA473A1C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFVStackWithFixedWidth;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_1BA473B0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1BA473B3C, 0, 0);
}

uint64_t sub_1BA473B3C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFVerticalSeparator;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  v8 = v0[1];
  v6 = v1;

  return v8(v5);
}

uint64_t sub_1BA473C2C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BA473C50, 0, 0);
}

uint64_t sub_1BA473C50()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFTable;
  *(v3 + 32) = v1;
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1BA473D30(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA473D50, 0, 0);
}

uint64_t sub_1BA473D50()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFThreeStringSingleLineHStack;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  sub_1BA4770D8(v1, v4 + 16);
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1BA473E60()
{
  v1 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  *(v2 + 56) = v1;
  *(v2 + 64) = &protocol witness table for PDFColumnBreak;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BA473F3C()
{
  v1 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  *(v2 + 56) = v1;
  *(v2 + 64) = &protocol witness table for PDFPageBreak;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BA473FF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 56) = *(v1 + 16);
  *(v2 + 40) = *(v1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1BA474030, 0, 0);
}

uint64_t sub_1BA474030()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5480;
  *(v7 + 56) = v6;
  *(v7 + 64) = &protocol witness table for PDFEmptySpace;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = v1;
  v9 = *(v0 + 8);

  return v9(v7);
}

uint64_t sub_1BA47413C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1[1];
  *(v2 + 40) = *(v1 + 16);
  *(v2 + 41) = *(v1 + 17);
  return MEMORY[0x1EEE6DFA0](sub_1BA474178, 0, 0);
}

uint64_t sub_1BA474178()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = v5;
  *(v6 + 64) = &protocol witness table for PDFVStack;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  *(v6 + 49) = v1;
  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_1BA474280(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v1[1];
  return MEMORY[0x1EEE6DFA0](sub_1BA4742AC, 0, 0);
}

uint64_t sub_1BA4742AC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 56) = v3;
  *(v4 + 64) = &protocol witness table for PDFHorizontallySequentialItems;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1BA47439C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BA4743C0, 0, 0);
}

uint64_t sub_1BA4743C0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFGrid;
  *(v3 + 32) = v1;
  v5 = v0[1];

  return v5(v3);
}

void sub_1BA4744C0()
{
  v1 = v0[2];
  v2 = v1[2];
  v3 = MEMORY[0x1E69E7CC0];
  v0[3] = v2;
  v0[4] = v3;
  if (v2)
  {
    v0[5] = 1;
    v4 = v1[7];
    v5 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
    v20 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1BA474788;

    v20(v4, v5);
    return;
  }

  v7 = v3[2];
  if (!v7)
  {

    v9 = 0;
LABEL_25:
    v19 = v0[1];

    v19(v9);
    return;
  }

  v8 = 0;
  v9 = v3;
  while (v8 < v3[2])
  {
    v10 = v3[v8 + 4];
    v11 = *(v10 + 16);
    v12 = v9[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      goto LABEL_29;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v9[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v9 = sub_1BA27FAAC(isUniquelyReferenced_nonNull_native, v15, 1, v9);
      if (*(v10 + 16))
      {
LABEL_19:
        if ((v9[3] >> 1) - v9[2] < v11)
        {
          goto LABEL_31;
        }

        sub_1BA0A186C();
        swift_arrayInitWithCopy();

        if (v11)
        {
          v16 = v9[2];
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_32;
          }

          v9[2] = v18;
        }

        goto LABEL_8;
      }
    }

    if (v11)
    {
      goto LABEL_30;
    }

LABEL_8:
    if (v7 == ++v8)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1BA474788(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1BA4748DC, 0, 0);
  }
}

void sub_1BA4748DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4[7];
  if (v5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = v4[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_3;
  }

  v9 = v4[5];
LABEL_7:
  v10 = v4[3];
  if (v9 != v10)
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v4[5] = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        v23 = (v4[2] + 40 * v9);
        v24 = v23[7];
        v25 = v23[8];
        __swift_project_boxed_opaque_existential_1(v23 + 4, v24);
        v28 = (*(v25 + 8) + **(v25 + 8));
        v26 = swift_task_alloc();
        v4[6] = v26;
        *v26 = v4;
        v26[1] = sub_1BA474788;

        v28(v24, v25);
        return;
      }
    }

    __break(1u);
    return;
  }

  v5 = v4[4];
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        a4 = sub_1BA27FAD4(0, a4[2] + 1, 1, a4);
LABEL_3:
        v8 = a4[2];
        v7 = a4[3];
        if (v8 >= v7 >> 1)
        {
          a4 = sub_1BA27FAD4((v7 > 1), v8 + 1, 1, a4);
        }

        a4[2] = v8 + 1;
        a4[v8 + 4] = v5;
        v9 = v4[5];
        v4[4] = a4;
        goto LABEL_7;
      }

      v14 = *(v5 + 32 + 8 * v12);
      v15 = *(v14 + 16);
      v16 = v13[2];
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_37;
      }

      v18 = swift_isUniquelyReferenced_nonNull_native();
      if (v18 && v17 <= v13[3] >> 1)
      {
        if (*(v14 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v13 = sub_1BA27FAAC(v18, v19, 1, v13);
        if (*(v14 + 16))
        {
LABEL_22:
          if ((v13[3] >> 1) - v13[2] < v15)
          {
            goto LABEL_39;
          }

          sub_1BA0A186C();
          swift_arrayInitWithCopy();

          if (v15)
          {
            v20 = v13[2];
            v21 = __OFADD__(v20, v15);
            v22 = v20 + v15;
            if (v21)
            {
              goto LABEL_40;
            }

            v13[2] = v22;
          }

          goto LABEL_11;
        }
      }

      if (v15)
      {
        goto LABEL_38;
      }

LABEL_11:
      if (v11 == ++v12)
      {

        goto LABEL_33;
      }
    }
  }

  v13 = 0;
LABEL_33:
  v27 = v4[1];

  v27(v13);
}

uint64_t sub_1BA474C34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA474C5C, 0, 0);
}

uint64_t sub_1BA474C5C()
{
  v1 = v0[3];
  v2 = v0[2];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFVerticalSpacer;
  *(v3 + 32) = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1BA474D20(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA474D40, 0, 0);
}

uint64_t sub_1BA474D40()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFDebugContainer;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  sub_1BA2FC8A0(v1, v4 + 16);
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1BA474E30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  *(v2 + 48) = *(v1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1BA474E68, 0, 0);
}

uint64_t sub_1BA474E68()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v8 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 56) = v3;
  *(v4 + 64) = &protocol witness table for PDFHorizontalSeparator;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v9 = *(v0 + 8);
  v6 = v1;

  return v9(v4);
}

uint64_t sub_1BA474F80(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1[1];
  *(v2 + 40) = *(v1 + 1);
  *(v2 + 56) = v1[4];
  return MEMORY[0x1EEE6DFA0](sub_1BA474FBC, 0, 0);
}

uint64_t sub_1BA474FBC()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v6 = v0[2];
  v5 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5480;
  *(v7 + 56) = v6;
  *(v7 + 64) = &protocol witness table for PDFBox;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v2;
  v8[6] = v1;
  v12 = v0[1];
  v9 = v5;
  v10 = v2;

  return v12(v7);
}

uint64_t sub_1BA4750DC(uint64_t a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = a1;
  v3 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = *(v1 + 80);
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1BA47511C, 0, 0);
}

uint64_t sub_1BA47511C()
{
  v2 = v0[24];
  v1 = v0[25];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v1;
  *(v3 + 64) = &protocol witness table for PDFImage;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  v5 = *(v2 + 16);
  *(v4 + 16) = *v2;
  *(v4 + 32) = v5;
  v7 = *(v2 + 48);
  v6 = *(v2 + 64);
  v8 = *(v2 + 32);
  *(v4 + 96) = *(v2 + 80);
  *(v4 + 64) = v7;
  *(v4 + 80) = v6;
  *(v4 + 48) = v8;
  sub_1BA326508((v0 + 2), (v0 + 13));
  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_1BA47522C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1[1];
  *(v2 + 40) = *(v1 + 1);
  return MEMORY[0x1EEE6DFA0](sub_1BA475260, 0, 0);
}

uint64_t sub_1BA475260()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = v5;
  *(v6 + 64) = &protocol witness table for PDFHStack;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v2;
  v10 = v0[1];

  v8 = v1;

  return v10(v6);
}

uint64_t sub_1BA47537C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1BA4753A8, 0, 0);
}

uint64_t sub_1BA4753A8()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 56) = v3;
  *(v4 + 64) = &protocol witness table for PDFSeparatedContent;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_1BA475498(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA4754B8, 0, 0);
}

uint64_t sub_1BA4754B8()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PDFArticle;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  sub_1BA47707C(v1, v4 + 16);
  v5 = v0[1];

  return v5(v3);
}

double Array<A>.render(context:document:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BA47572C(a3, a4, a5);
  PDFVStack.render(context:document:)(a1, a2);

  return result;
}

double Array<A>.boundingRectForContent(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA47572C(a2, a3, a4);
  PDFVStack.boundingRectForContent(in:)(a1, v5);
  v7 = v6;

  return v7;
}

double Array<A>.minimumBoundingRectForContent(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA47572C(a2, a3, a4);
  PDFVStack.boundingRectForContent(in:)(a1, v5);
  v7 = v6;

  return v7;
}

uint64_t sub_1BA47572C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v3 = sub_1BA4A6BF8();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1BA3D8580(&v11, v3, WitnessTable);
  sub_1BA476BD4(0, &qword_1EBBEB2F0, sub_1BA0A17D4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v5;
  v7 = inited + 32;
  _s18HealthExperienceUI20PDFRenderableBuilderV10buildBlockySayAA0D0_pGAFd_tFZ_0(inited);
  v9 = v8;
  swift_setDeallocating();
  sub_1BA0A18D0(v7);
  return v9;
}

uint64_t Array<A>.renderables.getter(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA475898, 0, 0);
}

uint64_t sub_1BA475898()
{
  sub_1BA0A186C();
  v1 = sub_1BA4A7FA8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA475910(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a1 + 16);
  *v5 = v2;
  v5[1] = sub_1BA2A6C20;

  return Array<A>.renderables.getter(v4, v6);
}

uint64_t PDFRenderableProvider.shared()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  sub_1BA476BD4(0, &qword_1EBBF3038, sub_1BA476C38, MEMORY[0x1E69A3170]);
  (*(v6 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v6 + 32))(v9 + v8, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BA4A28C8();
}

uint64_t sub_1BA475B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = (*(a4 + 8) + **(a4 + 8));
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1BA475C3C;

  return v9(a3, a4);
}

uint64_t sub_1BA475C3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1BA475D88, 0, 0);
  }
}

uint64_t CachedAsync<>.renderables.getter()
{
  *(v1 + 24) = v0;
  v4 = (*MEMORY[0x1E69A3168] + MEMORY[0x1E69A3168]);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1BA475E58;

  return v4(v1 + 16);
}

uint64_t sub_1BA475E58()
{
  *(*v1 + 40) = v0;

  sub_1BA476BD4(0, &qword_1EBBF3038, sub_1BA476C38, MEMORY[0x1E69A3170]);
  sub_1BA476D54();
  v3 = sub_1BA4A6C28();
  if (v0)
  {
    v4 = sub_1BA475FF8;
  }

  else
  {
    v4 = sub_1BA475FDC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BA476010()
{
  *(v1 + 24) = *v0;
  v4 = (*MEMORY[0x1E69A3168] + MEMORY[0x1E69A3168]);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1BA4760C0;

  return v4(v1 + 16);
}

uint64_t sub_1BA4760C0()
{
  *(*v1 + 40) = v0;

  sub_1BA476BD4(0, &qword_1EBBF3038, sub_1BA476C38, MEMORY[0x1E69A3170]);
  sub_1BA476D54();
  v3 = sub_1BA4A6C28();
  if (v0)
  {
    v4 = sub_1BA477134;
  }

  else
  {
    v4 = sub_1BA47713C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BA476264()
{
  v1 = *(v0 + 16);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  *(v2 + 56) = v1;
  *(v2 + 64) = &protocol witness table for PDFEmptyTableCell;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BA476320(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BA477138;

  return PDFRenderableProvider<>.renderables.getter(a1, &protocol witness table for NSAttributedString);
}

uint64_t sub_1BA4763BC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA4763F0, 0, 0);
}

uint64_t sub_1BA4763F0()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFAttributedStrings;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA4764E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476518, 0, 0);
}

uint64_t sub_1BA476518()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFText;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA47660C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476640, 0, 0);
}

uint64_t sub_1BA476640()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFTitle;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA476734(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476768, 0, 0);
}

uint64_t sub_1BA476768()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFCaption;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA47685C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476890, 0, 0);
}

uint64_t sub_1BA476890()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFArticleTitle;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA476984(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA4769B8, 0, 0);
}

uint64_t sub_1BA4769B8()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFBody;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

uint64_t sub_1BA476AAC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 8);
  *(v2 + 33) = *(v1 + 9);
  return MEMORY[0x1EEE6DFA0](sub_1BA476AE0, 0, 0);
}

uint64_t sub_1BA476AE0()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BA476BD4(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 56) = v4;
  *(v5 + 64) = &protocol witness table for PDFBodyList;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v8 = *(v0 + 8);
  v6 = v3;

  return v8(v5);
}

void sub_1BA476BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA476C6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA475B1C(a1, v1 + v6, v4, v5);
}

unint64_t sub_1BA476D54()
{
  result = qword_1EBBF3048;
  if (!qword_1EBBF3048)
  {
    sub_1BA476BD4(255, &qword_1EBBF3038, sub_1BA476C38, MEMORY[0x1E69A3170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3048);
  }

  return result;
}

uint64_t sub_1BA476DDC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of PDFRenderableProvider.renderables.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA476F80;

  return v7(a1, a2);
}

uint64_t sub_1BA476F80(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ManualDataEntryType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA4771CC()
{
  result = qword_1EBBF3050;
  if (!qword_1EBBF3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3050);
  }

  return result;
}

double static UIButton.Configuration.cameraCloseButton()(uint64_t a1)
{
  sub_1BA4A78A8();
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() systemImageNamed_];

  sub_1BA4A7958();
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  sub_1BA4A78E8();
  v6 = [v3 blackColor];
  sub_1BA4A78F8();
  return result;
}

uint64_t DatePickerItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void DatePickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DatePickerItem.uniqueIdentifier.getter()
{
  type metadata accessor for DatePickerItem(0);
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return 0x6B63695065746144;
}

uint64_t type metadata accessor for DatePickerItem(uint64_t a1)
{
  result = qword_1EBBF30A0;
  if (!qword_1EBBF30A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DatePickerItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for DatePickerItem(0) + 24));

  return v1;
}

void DatePickerItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t DatePickerItem.placeholderText.getter()
{
  v1 = *(v0 + *(type metadata accessor for DatePickerItem(0) + 28));

  return v1;
}

void DatePickerItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA47773C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for DatePickerItem(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  sub_1B9F0F1B8(v2, v3);
  result = sub_1B9F0E310(v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t DatePickerItem.dataProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for DatePickerItem(0) + 32));
  v2 = *v1;
  sub_1B9F0F1B8(*v1, v1[1]);
  return v2;
}

uint64_t DatePickerItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem(0) + 32));
  result = sub_1B9F0E310(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1BA47787C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DatePickerItem(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA074E64;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B9F0F1B8(v4, v5);
}

uint64_t sub_1BA477910(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA074E3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DatePickerItem(0) + 36));
  v8 = *v7;
  v9 = v7[1];
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DatePickerItem.updateHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DatePickerItem(0) + 36));
  v2 = *v1;
  sub_1B9F0F1B8(*v1, v1[1]);
  return v2;
}

uint64_t DatePickerItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem(0) + 36));
  result = sub_1B9F0E310(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DatePickerItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for DatePickerItem(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t DatePickerItem.datePickerMode.setter(uint64_t a1)
{
  result = type metadata accessor for DatePickerItem(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t DatePickerItem.datePickerStyle.setter(uint64_t a1)
{
  result = type metadata accessor for DatePickerItem(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t DatePickerItem.baseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DatePickerItem(0) + 56));

  return v1;
}

void DatePickerItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DatePickerItem(0) + 56));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA477ECC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F481BC(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t DatePickerItem.init(title:placeholderText:isEditEnabled:datePickerMode:datePickerStyle:dataProvider:updateHandler:maximumDate:accessibilityIdentifierPrefix:backgroundConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  type metadata accessor for DatePickerCollectionViewCell();
  sub_1BA478304();
  *a9 = sub_1BA4A6808();
  *(a9 + 1) = v19;
  v20 = type metadata accessor for DatePickerItem(0);
  sub_1BA4A1788();
  v21 = &a9[v20[7]];
  v22 = &a9[v20[8]];
  v23 = &a9[v20[9]];
  v24 = v20[13];
  v25 = sub_1BA4A1728();
  (*(*(v25 - 8) + 56))(&a9[v24], 1, 1, v25);
  v26 = &a9[v20[14]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = v20[15];
  v28 = sub_1BA4A4168();
  (*(*(v28 - 8) + 56))(&a9[v27], 1, 1, v28);
  v29 = &a9[v20[6]];
  *v29 = a1;
  *(v29 + 1) = a2;
  *v21 = a3;
  *(v21 + 1) = a4;
  a9[v20[10]] = a5;
  *&a9[v20[11]] = a6;
  *&a9[v20[12]] = a7;
  *v22 = a8;
  *(v22 + 1) = a10;
  *v23 = a11;
  *(v23 + 1) = a12;
  sub_1BA478870(a13, &a9[v24], &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1BA478870(a16, &a9[v27], &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  if (a15)
  {
    v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v39 = v30;

    MEMORY[0x1BFAF1350](46, 0xE100000000000000);

    MEMORY[0x1BFAF1350](a14, a15);

    MEMORY[0x1BFAF1350](0x636950657461442ELL, 0xEB0000000072656BLL);

    sub_1BA47BCAC(a16, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    result = sub_1BA47BCAC(a13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    *v26 = v38;
    *(v26 + 1) = v39;
  }

  else
  {
    sub_1BA47BCAC(a16, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    return sub_1BA47BCAC(a13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  }

  return result;
}

unint64_t sub_1BA478304()
{
  result = qword_1EBBF3058;
  if (!qword_1EBBF3058)
  {
    type metadata accessor for DatePickerCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF3058);
  }

  return result;
}

uint64_t (*sub_1BA478348(uint64_t a1, uint64_t a2))(uint64_t result)
{
  v3 = *(a2 + 36);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_1BA47C1FC;
}

uint64_t sub_1BA47838C(uint64_t a1)
{
  v1 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v1);

  return 0x6B63695065746144;
}

uint64_t sub_1BA4783F8(uint64_t a1)
{
  v2 = sub_1BA47BDE4(&qword_1EBBF3090, &protocol conformance descriptor for DatePickerItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

double sub_1BA478460(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA4784CC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA478524(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1BA4785E4(uint64_t a1, void **a2)
{
  sub_1BA478734(a1, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478870(v7, v3 + v4, &qword_1EDC6E1A0, sub_1B9FCD918);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE8))(v5);
  return sub_1BA47BCAC(v7, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA4786C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_1BA478734(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA478734(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F481BC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA4787A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478870(a1, v1 + v3, &qword_1EDC6E1A0, sub_1B9FCD918);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(v4);
  return sub_1BA47BCAC(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA478870(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F481BC(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t (*sub_1BA4788DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA478940;
}

uint64_t sub_1BA478940(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xE8))(result);
  }

  return result;
}

char *sub_1BA4789A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v86 - v16;
  v18 = &v5[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v5[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = *MEMORY[0x1E69DDCF8];
  v92 = objc_opt_self();
  v22 = [v92 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  v89 = v13;
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];

    v25 = v92;
  }

  else
  {
    sub_1BA4A3DD8();
    v26 = v21;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v95 = v88;
      *v29 = 136315906;
      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = v26;
      v33 = sub_1B9F0B82C(v30, v31, &v95);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v93 = 0;
      v94 = 1;
      sub_1B9F481BC(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v95);

      *(v29 + 14) = v36;
      *(v29 + 22) = 2080;
      LODWORD(v93) = 0;
      type metadata accessor for SymbolicTraits(0);
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v95);

      *(v29 + 24) = v39;
      v26 = v32;
      *(v29 + 32) = 2112;
      v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v29 + 34) = v40;
      v41 = v87;
      *v87 = v40;
      _os_log_impl(&dword_1B9F07000, v27, v28, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v29, 0x2Au);
      sub_1BA47C19C(v41, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      v42 = v88;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v90 + 8))(v17, v91);
    v25 = v92;
    v43 = [v92 preferredFontDescriptorWithTextStyle_];
    v24 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];
  }

  v44 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_titleLabel;
  [v20 setFont_];

  [v20 setTextAlignment_];
  [v20 setAdjustsFontForContentSizeCategory_];
  v45 = objc_opt_self();
  v46 = [v45 labelColor];
  [v20 setTextColor_];

  [v20 setUserInteractionEnabled_];
  *&v5[v44] = v20;
  v47 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = [v25 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  if (v48)
  {
    v49 = v48;
    v50 = [objc_opt_self() fontWithDescriptor:v48 size:0.0];
  }

  else
  {
    v51 = v89;
    sub_1BA4A3DD8();
    v52 = v21;
    v53 = sub_1BA4A3E88();
    v54 = sub_1BA4A6FB8();
    v92 = v52;

    v55 = v54;
    v56 = v54;
    v57 = v53;
    if (os_log_type_enabled(v53, v56))
    {
      v58 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v95 = v88;
      *v58 = 136315906;
      v59 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v61 = sub_1B9F0B82C(v59, v60, &v95);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      v93 = 0;
      v94 = 1;
      sub_1B9F481BC(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v62 = sub_1BA4A6808();
      v64 = sub_1B9F0B82C(v62, v63, &v95);

      *(v58 + 14) = v64;
      *(v58 + 22) = 2080;
      LODWORD(v93) = 0;
      type metadata accessor for SymbolicTraits(0);
      v65 = sub_1BA4A6808();
      v67 = sub_1B9F0B82C(v65, v66, &v95);

      *(v58 + 24) = v67;
      *(v58 + 32) = 2112;
      v68 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v58 + 34) = v68;
      v69 = v87;
      *v87 = v68;
      _os_log_impl(&dword_1B9F07000, v57, v55, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v58, 0x2Au);
      sub_1BA47C19C(v69, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v69, -1, -1);
      v70 = v88;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v70, -1, -1);
      MEMORY[0x1BFAF43A0](v58, -1, -1);
    }

    (*(v90 + 8))(v51, v91);
    v49 = [v25 preferredFontDescriptorWithTextStyle_];
    v50 = [objc_opt_self() fontWithDescriptor:v49 size:0.0];
  }

  v71 = v50;

  v72 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel;
  [v47 setFont_];

  [v47 setTextAlignment_];
  [v47 setAdjustsFontForContentSizeCategory_];
  v73 = [v45 systemBlueColor];
  [v47 setTextColor_];

  [v47 setUserInteractionEnabled_];
  *&v5[v72] = v47;
  v74 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker;
  v75 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v75 setTranslatesAutoresizingMaskIntoConstraints_];
  [v75 setPreferredDatePickerStyle_];
  [v75 setDatePickerMode_];
  *&v5[v74] = v75;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_allConstraints] = MEMORY[0x1E69E7CC0];
  v76 = type metadata accessor for DatePickerCollectionViewCell();
  v96.receiver = v5;
  v96.super_class = v76;
  v77 = objc_msgSendSuper2(&v96, sel_initWithFrame_, a1, a2, a3, a4);
  v78 = [v77 contentView];
  [v78 addSubview_];

  v79 = [v77 contentView];
  [v79 addSubview_];

  v80 = [v77 contentView];
  [v80 addSubview_];

  v81 = *MEMORY[0x1E69796E8];
  v82 = [v77 layer];
  [v82 setCornerCurve_];

  v83 = [v77 layer];
  [v83 setCornerRadius_];

  v84 = [v77 layer];
  [v84 setMaskedCorners_];

  [v77 setClipsToBounds_];
  sub_1BA479984();

  return v77;
}

id DatePickerCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA479470()
{
  sub_1B9F481BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v32 - v6;
  v8 = sub_1BA4A4168();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  sub_1B9F481BC(0, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v32 - v18;
  v20 = type metadata accessor for DatePickerItem(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478734(v0 + v25, v34, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v35)
  {
    sub_1BA47BCAC(v34, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v21 + 56))(v19, 1, 1, v20);
    return sub_1BA47BCAC(v19, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  }

  sub_1B9FCD918();
  v26 = swift_dynamicCast();
  (*(v21 + 56))(v19, v26 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1BA47BCAC(v19, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  }

  sub_1BA47BD08(v19, v24);
  sub_1BA478734(&v24[*(v20 + 60)], v7, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  v27 = v32;
  if ((*(v32 + 48))(v7, 1, v8) == 1)
  {
    sub_1BA47BCAC(v7, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    sub_1BA4A4158();
    v28 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    v29 = v33;
    (*(v27 + 16))(v33, v11, v8);
    (*(v27 + 56))(v29, 0, 1, v8);
    MEMORY[0x1BFAF1F10](v29);
    (*(v27 + 8))(v11, v8);
  }

  else
  {
    (*(v27 + 32))(v15, v7, v8);
    v31 = v33;
    (*(v27 + 16))(v33, v15, v8);
    (*(v27 + 56))(v31, 0, 1, v8);
    MEMORY[0x1BFAF1F10](v31);
    (*(v27 + 8))(v15, v8);
  }

  return sub_1BA47C19C(v24, type metadata accessor for DatePickerItem);
}

void sub_1BA479984()
{
  v1 = v0;
  v57 = objc_opt_self();
  v58 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_allConstraints;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v2 = sub_1BA4A6AE8();

  [v57 deactivateConstraints_];

  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4C27A0;
  v4 = v3;
  v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_titleLabel];
  v6 = [v5 leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  v4[4] = v9;
  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel];
  v11 = [v10 topAnchor];
  v12 = [v1 &selRef_fetchSources];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:12.0];
  v4[5] = v14;
  v56 = v10;
  v15 = [v10 leadingAnchor];
  v16 = [v5 trailingAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:16.0];

  v4[6] = v17;
  v18 = [v1 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v10 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

  v4[7] = v21;
  v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker];
  v23 = [v22 leadingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:16.0];
  v4[8] = v26;
  v27 = [v1 contentView];
  v28 = [v27 trailingAnchor];

  v29 = [v22 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

  v4[9] = v30;
  v31 = [v1 contentView];
  v32 = [v31 bottomAnchor];

  v33 = [v22 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:12.0];

  v4[10] = v34;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B7510;
  v36 = [v5 centerYAnchor];
  v37 = [v22 centerYAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(inited + 32) = v38;
  v39 = [v22 topAnchor];
  v40 = [v1 contentView];
  v41 = [v40 topAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:12.0];
  *(inited + 40) = v42;
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1BA4B8B60;
  v44 = [v5 topAnchor];
  v45 = [v1 contentView];
  v46 = [v45 topAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:12.0];
  *(v43 + 32) = v47;
  v48 = [v22 topAnchor];
  v49 = [v5 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v43 + 40) = v50;
  v51 = [v22 topAnchor];
  v52 = [v56 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v43 + 48) = v53;
  if ([v56 isHidden])
  {
    v54 = inited;
  }

  else
  {
    v54 = v43;
  }

  sub_1B9F73B50(v54);
  *&v1[v58] = v4;

  v55 = sub_1BA4A6AE8();

  [v57 activateConstraints_];
}

uint64_t sub_1BA47A0DC()
{
  v1 = v0;
  sub_1B9F481BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v48 - v8;
  v10 = sub_1BA4A1728();
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v48 - v15;
  sub_1B9F481BC(0, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for DatePickerItem(0);
  v22 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478734(&v1[v26], v52, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v53)
  {
    sub_1BA47BCAC(v52, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v22 + 56))(v20, 1, 1, v21);
    return sub_1BA47BCAC(v20, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  }

  sub_1B9FCD918();
  v27 = swift_dynamicCast();
  (*(v22 + 56))(v20, v27 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1BA47BCAC(v20, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  }

  sub_1BA47BD08(v20, v25);
  sub_1BA479470();
  v28 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_titleLabel];
  v29 = sub_1BA4A6758();
  [v28 setText_];

  v30 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker];
  [v30 setDatePickerMode_];
  v49 = *&v25[v21[12]];
  [v30 setPreferredDatePickerStyle_];
  v31 = *&v25[v21[8]];
  if (!v31)
  {
    v32 = v51;
    (*(v51 + 56))(v9, 1, 1, v10);
    goto LABEL_9;
  }

  v31(v25);
  v32 = v51;
  if ((*(v51 + 48))(v9, 1, v10) == 1)
  {
LABEL_9:
    sub_1BA47BCAC(v9, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    goto LABEL_10;
  }

  (*(v32 + 32))(v16, v9, v10);
  v33 = sub_1BA4A16B8();
  [v30 setDate:v33 animated:1];

  (*(v32 + 8))(v16, v10);
LABEL_10:
  sub_1BA478734(&v25[v21[13]], v5, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if ((*(v32 + 48))(v5, 1, v10) == 1)
  {
    sub_1BA47BCAC(v5, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  }

  else
  {
    v35 = v50;
    (*(v32 + 32))(v50, v5, v10);
    v36 = sub_1BA4A16B8();
    [v30 setMaximumDate_];

    (*(v32 + 8))(v35, v10);
  }

  v37 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel];
  [v37 setHidden_];
  if (*&v25[v21[7] + 8])
  {
    v38 = sub_1BA4A6758();
  }

  else
  {
    v38 = 0;
  }

  [v37 setText_];

  v39 = v25[v21[10]];
  v40 = objc_opt_self();
  v41 = &selRef_systemBlueColor;
  if (!v39)
  {
    v41 = &selRef_systemGrayColor;
  }

  v42 = [v40 *v41];
  [v37 setTextColor_];

  [v1 setUserInteractionEnabled_];
  sub_1BA479984();
  [v30 addTarget:v1 action:sel_pickerDateChanged_ forControlEvents:0xFFFFFFFFLL];
  sub_1BA47A9EC(v30);
  v43 = &v25[v21[14]];
  v44 = *v43;
  v45 = *(v43 + 1);
  v46 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier];
  swift_beginAccess();
  *v46 = v44;
  *(v46 + 1) = v45;

  if (v45)
  {
    v47 = sub_1BA4A6758();
    [v30 setAccessibilityIdentifier_];
  }

  else
  {
    [v30 setAccessibilityIdentifier_];
  }

  return sub_1BA47C19C(v25, type metadata accessor for DatePickerItem);
}

Swift::Void __swiftcall DatePickerCollectionViewCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  if (with.value._object)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);
    v4 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);

    [v3 setAccessibilityIdentifier_];
  }
}

void sub_1BA47A8DC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v2 = sub_1BA4A6758();
  [v1 setDateFormat_];

  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel);
  v4 = sub_1BA4A16B8();
  v5 = [v1 stringFromDate_];

  if (!v5)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = sub_1BA4A6758();
  }

  [v3 setText_];
}

uint64_t sub_1BA47A9EC(void *a1)
{
  v2 = v1;
  v39 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1728();
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F481BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v38 - v13;
  sub_1B9F481BC(0, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for DatePickerItem(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA478734(v2 + v24, v44, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v44[3])
  {
    sub_1B9FCD918();
    v25 = swift_dynamicCast();
    (*(v20 + 56))(v18, v25 ^ 1u, 1, v19);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      sub_1BA47BD08(v18, v23);
      v26 = *&v23[*(v19 + 36)];
      v27 = v40;
      if (v26)
      {
        v28 = [v39 date];
        sub_1BA4A16F8();

        (*(v27 + 56))(v14, 0, 1, v7);
        v26(v23, v14);
        sub_1BA47BCAC(v14, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      }

      v29 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker) date];
      sub_1BA4A16F8();

      sub_1BA47A8DC();
      (*(v27 + 8))(v10, v7);
      return sub_1BA47C19C(v23, type metadata accessor for DatePickerItem);
    }
  }

  else
  {
    sub_1BA47BCAC(v44, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  sub_1BA47BCAC(v18, &qword_1EBBF3070, type metadata accessor for DatePickerItem);
  sub_1BA4A3DD8();
  v31 = sub_1BA4A3E88();
  v32 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44[0] = v34;
    *v33 = 136315138;
    v35 = sub_1BA4A85D8();
    v37 = sub_1B9F0B82C(v35, v36, v44);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1B9F07000, v31, v32, "[%s] item is not a DatePickerItem", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1BFAF43A0](v34, -1, -1);
    MEMORY[0x1BFAF43A0](v33, -1, -1);
  }

  return (*(v42 + 8))(v6, v43);
}

id DatePickerCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatePickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DatePickerCollectionViewCell.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v3 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant_];

  [v5 setActive_];

  [v3 setHidden_];
}

id sub_1BA47B170()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker;
  v3 = [*(*v0 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker) heightAnchor];
  v4 = [v3 constraintEqualToConstant_];

  [v4 setActive_];
  v5 = *(v1 + v2);

  return [v5 setHidden_];
}

void sub_1BA47B214(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);
    v6 = sub_1BA4A6758();
    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    v5 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker);

    [v5 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA47B2B0()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA47B30C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void _s18HealthExperienceUI28DatePickerCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  v10 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_baseIdentifier);
  *v10 = 0;
  v10[1] = 0;
  v11 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_item;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = *MEMORY[0x1E69DDCF8];
  v74 = objc_opt_self();
  v14 = [v74 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  v71 = v5;
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];

    v17 = v74;
  }

  else
  {
    sub_1BA4A3DD8();
    v18 = v13;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77 = v70;
      *v21 = 136315906;
      v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v24 = v18;
      v25 = sub_1B9F0B82C(v22, v23, &v77);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v75 = 0;
      v76 = 1;
      sub_1B9F481BC(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v77);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2080;
      LODWORD(v75) = 0;
      type metadata accessor for SymbolicTraits(0);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v77);

      *(v21 + 24) = v31;
      v18 = v24;
      *(v21 + 32) = 2112;
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v21 + 34) = v32;
      v33 = v69;
      *v69 = v32;
      _os_log_impl(&dword_1B9F07000, v19, v20, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v21, 0x2Au);
      sub_1BA47C19C(v33, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      v34 = v70;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v72 + 8))(v9, v73);
    v17 = v74;
    v35 = [v74 preferredFontDescriptorWithTextStyle_];
    v16 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
  }

  v36 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_titleLabel;
  [v12 setFont_];

  [v12 setTextAlignment_];
  [v12 setAdjustsFontForContentSizeCategory_];
  v37 = objc_opt_self();
  v38 = [v37 labelColor];
  [v12 setTextColor_];

  [v12 setUserInteractionEnabled_];
  *(v1 + v36) = v12;
  v39 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = [v17 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  if (v40)
  {
    v41 = v40;
    v42 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
  }

  else
  {
    v43 = v71;
    sub_1BA4A3DD8();
    v44 = v13;
    v45 = sub_1BA4A3E88();
    v46 = sub_1BA4A6FB8();
    v74 = v44;

    v47 = v46;
    v48 = v46;
    v49 = v45;
    if (os_log_type_enabled(v45, v48))
    {
      v50 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77 = v70;
      *v50 = 136315906;
      v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v53 = sub_1B9F0B82C(v51, v52, &v77);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v75 = 0;
      v76 = 1;
      sub_1B9F481BC(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v54 = sub_1BA4A6808();
      v56 = sub_1B9F0B82C(v54, v55, &v77);

      *(v50 + 14) = v56;
      *(v50 + 22) = 2080;
      LODWORD(v75) = 0;
      type metadata accessor for SymbolicTraits(0);
      v57 = sub_1BA4A6808();
      v59 = sub_1B9F0B82C(v57, v58, &v77);

      *(v50 + 24) = v59;
      *(v50 + 32) = 2112;
      v60 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v50 + 34) = v60;
      v61 = v69;
      *v69 = v60;
      _os_log_impl(&dword_1B9F07000, v49, v47, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v50, 0x2Au);
      sub_1BA47C19C(v61, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      v62 = v70;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v62, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
    }

    (*(v72 + 8))(v43, v73);
    v41 = [v17 preferredFontDescriptorWithTextStyle_];
    v42 = [objc_opt_self() fontWithDescriptor:v41 size:0.0];
  }

  v63 = v42;

  v64 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_selectedDateLabel;
  [v39 setFont_];

  [v39 setTextAlignment_];
  [v39 setAdjustsFontForContentSizeCategory_];
  v65 = [v37 systemBlueColor];
  [v39 setTextColor_];

  [v39 setUserInteractionEnabled_];
  *(v1 + v64) = v39;
  v66 = OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_datePicker;
  v67 = [objc_allocWithZone(MEMORY[0x1E69DC920]) init];
  [v67 setTranslatesAutoresizingMaskIntoConstraints_];
  [v67 setPreferredDatePickerStyle_];
  [v67 setDatePickerMode_];
  *(v1 + v66) = v67;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI28DatePickerCollectionViewCell_allConstraints) = MEMORY[0x1E69E7CC0];
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA47BCAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F481BC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA47BD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA47BD6C(uint64_t a1)
{
  result = sub_1BA47BDE4(&qword_1EBBF3090, &protocol conformance descriptor for DatePickerItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA47BDE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DatePickerItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA47BE50(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6158];
  sub_1BA4A1798();
  if (v2 <= 0x3F)
  {
    sub_1B9F23348(319, &qword_1EDC6E410, v1, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1B9F481BC(319, &qword_1EDC5DB48, sub_1B9F37BB8);
      if (v4 <= 0x3F)
      {
        type metadata accessor for Mode(319);
        if (v5 <= 0x3F)
        {
          type metadata accessor for UIDatePickerStyle(319);
          if (v6 <= 0x3F)
          {
            sub_1B9F481BC(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
            if (v7 <= 0x3F)
            {
              sub_1B9F481BC(319, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
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

uint64_t sub_1BA47C19C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *AllHealthDataViewController.__allocating_init(healthStore:healthExperienceStore:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation] = 1;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthStore] = a1;
  sub_1B9F0A534(a2, &v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthExperienceStore]);
  sub_1B9F0A534(a2, v10);
  type metadata accessor for AllHealthDataDataSource(0);
  swift_allocObject();
  v6 = a1;
  v7 = sub_1BA1ECE48(v6, v10);
  v8 = CompoundDataSourceCollectionViewController.init(dataSource:)(v7);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void sub_1BA47C2C0(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1BA47C314(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

char *AllHealthDataViewController.init(healthStore:healthExperienceStore:)(void *a1, void *a2)
{
  v3 = v2;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation) = 1;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthStore) = a1;
  sub_1B9F0A534(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthExperienceStore);
  sub_1B9F0A534(a2, v10);
  type metadata accessor for AllHealthDataDataSource(0);
  swift_allocObject();
  v6 = a1;
  v7 = sub_1BA1ECE48(v6, v10);
  v8 = CompoundDataSourceCollectionViewController.init(dataSource:)(v7);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void sub_1BA47C4F4()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AllHealthDataViewController();
  v14.receiver = v0;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v7 = [objc_opt_self() mainBundle];
  sub_1BA4A1318();

  v8 = sub_1BA4A6758();
  [v0 setTitle_];

  (*(v2 + 104))(v5, *MEMORY[0x1E69A2BF0], v1);
  v9 = sub_1BA4A35B8();
  (*(v2 + 8))(v5, v1);
  [v0 setUserActivity_];

  v10 = [v0 collectionView];
  if (v10)
  {
    v11 = v10;

    v12 = sub_1BA4A6AE8();
    v13 = HKUIJoinStringsForAutomationIdentifier();

    [v11 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA47C96C()
{
  sub_1B9F36938();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    sub_1B9FF578C();
  }

  else
  {
    __break(1u);
  }
}

id AllHealthDataViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA47CAA8()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthExperienceStore);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

id AllHealthDataViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AllHealthDataViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA47CB68(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

__n128 CategoryTileView.init(viewModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  result = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  *(a2 + 48) = v3;
  return result;
}

void HKTypeGroupCategoryTileViewModel.init(hkTypeGroupIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1EDC6EA18;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = off_1EDC6EA20;
  if (*(off_1EDC6EA20 + 2))
  {
    v8 = sub_1B9F24A34(a1, a2);
    v10 = v9;

    if (v10)
    {
      v11 = v7[7] + 48 * v8;
      v12 = *(v11 + 8);
      v14 = *(v11 + 32);
      v13 = *(v11 + 40);
      *a3 = *v11;
      *(a3 + 8) = v12;
      *(a3 + 16) = *(v11 + 16);
      *(a3 + 32) = v14;
      *(a3 + 40) = v13;
      *(a3 + 48) = a1;
      *(a3 + 56) = a2;

      return;
    }
  }

  else
  {
  }

  sub_1BA483124();
  swift_allocError();
  swift_willThrow();
}

uint64_t StandardCategoryTileViewModel.init(title:imageRepresentation:colorRepresentation:imageMode:usesAccessories:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v12 = *a5;
  v13 = a5[1];
  v14 = type metadata accessor for StandardCategoryTileViewModel(0);
  v15 = v14[5];
  v16 = sub_1BA4A2BF8();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = v14[6];
  v18 = sub_1BA4A2B98();
  (*(*(v18 - 8) + 56))(&a7[v17], 1, 1, v18);
  *a7 = a1;
  *(a7 + 1) = a2;
  sub_1BA4831C4(a3, &a7[v15], sub_1BA0D0F10);
  result = sub_1BA4831C4(a4, &a7[v17], sub_1B9F20584);
  v20 = &a7[v14[7]];
  *v20 = v12;
  *(v20 + 1) = v13;
  a7[v14[8]] = a6;
  return result;
}

uint64_t sub_1BA47CF74()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

void sub_1BA47CFA0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();

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

uint64_t sub_1BA47D074(uint64_t a1)
{
  v2 = sub_1BA4832D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47D0B0(uint64_t a1)
{
  v2 = sub_1BA4832D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BA47D104(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726564726F62 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1BA47D18C(uint64_t a1)
{
  v2 = sub_1BA48322C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47D1C8(uint64_t a1)
{
  v2 = sub_1BA48322C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA47D204()
{
  if (*v0)
  {
    return 0x7974696361706FLL;
  }

  else
  {
    return 0x6E65636341657375;
  }
}

void sub_1BA47D24C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65636341657375 && a2 == 0xEE00726F6C6F4374;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();

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

uint64_t sub_1BA47D330(uint64_t a1)
{
  v2 = sub_1BA483280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47D36C(uint64_t a1)
{
  v2 = sub_1BA483280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CategoryTileImageViewModel.ImageMode.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1BA48345C(0, &qword_1EDC5DD70, sub_1BA48322C, &type metadata for CategoryTileImageViewModel.ImageMode.CustomCodingKeys, MEMORY[0x1E69E6F58]);
  v25 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v24 = &v23 - v6;
  sub_1BA48345C(0, &qword_1EDC5DD68, sub_1BA483280, &type metadata for CategoryTileImageViewModel.ImageMode.SymbolCodingKeys, v3);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  sub_1BA48345C(0, &qword_1EDC5DD78, sub_1BA4832D4, &type metadata for CategoryTileImageViewModel.ImageMode.CodingKeys, v3);
  v12 = v11;
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v23 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4832D4();
  sub_1BA4A8548();
  if (v16 < 0)
  {
    v19 = v23;
    v33 = 1;
    sub_1BA48322C();
    v20 = v24;
    sub_1BA4A81F8();
    v21 = v25;
    sub_1BA4A8258();
    (*(v19 + 8))(v20, v21);
  }

  else
  {
    v32 = 0;
    sub_1BA483280();
    sub_1BA4A81F8();
    v31 = 0;
    v17 = v27;
    v18 = v28;
    sub_1BA4A8258();
    if (!v18)
    {
      v30 = 1;
      sub_1BA4A8268();
    }

    (*(v26 + 8))(v10, v17);
  }

  return (*(v29 + 8))(v15, v12);
}

uint64_t CategoryTileImageViewModel.ImageMode.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1BA48345C(0, &qword_1EDC5DED0, sub_1BA48322C, &type metadata for CategoryTileImageViewModel.ImageMode.CustomCodingKeys, MEMORY[0x1E69E6F48]);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v42 - v6;
  sub_1BA48345C(0, &qword_1EDC5DEC8, sub_1BA483280, &type metadata for CategoryTileImageViewModel.ImageMode.SymbolCodingKeys, v3);
  v8 = v7;
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v42 - v10;
  sub_1BA48345C(0, &qword_1EDC5DED8, sub_1BA4832D4, &type metadata for CategoryTileImageViewModel.ImageMode.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = a1[3];
  v50 = a1;
  v17 = a1;
  v19 = &v42 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_1BA4832D4();
  v48 = v19;
  v20 = v49;
  sub_1BA4A8528();
  if (!v20)
  {
    v21 = v45;
    v22 = v46;
    v23 = v47;
    v49 = v14;
    v24 = sub_1BA4A81D8();
    v25 = (2 * *(v24 + 16)) | 1;
    v52 = v24;
    v53 = v24 + 32;
    v54 = 0;
    v55 = v25;
    v26 = sub_1B9F4BD44();
    if (v26 == 2 || v54 != v55 >> 1)
    {
      v32 = sub_1BA4A7E68();
      swift_allocError();
      v34 = v33;
      sub_1B9FFFD90(0);
      *v34 = &type metadata for CategoryTileImageViewModel.ImageMode;
      v35 = v48;
      sub_1BA4A8128();
      sub_1BA4A7E48();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v49 + 8))(v35, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        v51 = 1;
        sub_1BA48322C();
        v27 = v21;
        sub_1BA4A8118();
        v28 = v44;
        v29 = v23;
        v30 = sub_1BA4A8198();
        v31 = v49;
        v36 = v30;
        (*(v22 + 8))(v27, v29);
        (*(v31 + 8))(v48, v13);
        swift_unknownObjectRelease();
        v37 = v36 & 1 | 0x8000000000000000;
        v38 = 0;
      }

      else
      {
        v51 = 0;
        sub_1BA483280();
        sub_1BA4A8118();
        v51 = 0;
        v39 = sub_1BA4A8198();
        v51 = 1;
        sub_1BA4A81A8();
        v38 = v41;
        (*(v43 + 8))(v11, v8);
        (*(v49 + 8))(v48, v13);
        swift_unknownObjectRelease();
        v37 = v39 & 1;
        v28 = v44;
      }

      *v28 = v37;
      v28[1] = v38;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

__n128 CategoryTileImageViewModel.init(regularSizeImage:compactSizeImage:mode:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t CategoryTileViewModel.accessories.getter()
{
  sub_1B9F87EE0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_1BA4A3FB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3F18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F87EE0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  (*(v10 + 104))(v13, *MEMORY[0x1E69DBF28], v9);
  v15 = sub_1BA4A3F48();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t HKTypeGroupCategoryTileViewModel.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HKTypeGroupCategoryTileViewModel.image.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = HKTypeGroup.displayCategory.getter();
  v3 = [v2 systemImageName];

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = HKTypeGroup.displayCategory.getter();
  v5 = [v4 largeListIcon];

  if (v5)
  {
    result = sub_1BA4A6158();
    v7 = 0x3FE999999999999ALL;
  }

  else
  {

    result = 0;
    v7 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  a1[2] = 0;
  a1[3] = v7;
  return result;
}

uint64_t HKTypeGroupCategoryTileViewModel.color.getter()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  v1 = HKTypeGroup.displayCategory.getter();
  v2 = [v1 color];

  if (v2)
  {
    return sub_1BA4A6048();
  }

  else
  {
    return 0;
  }
}

void sub_1BA47E1F0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001BA50ADC0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1BA47E284(uint64_t a1)
{
  v2 = sub_1BA483328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47E2C0(uint64_t a1)
{
  v2 = sub_1BA483328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void HKTypeGroupCategoryTileViewModel.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = a2;
  sub_1BA48345C(0, &qword_1EDC5DE78, sub_1BA483328, &type metadata for HKTypeGroupCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA483328();
  sub_1BA4A8528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v10 = v6;
  v11 = v42;
  v12 = sub_1BA4A8188();
  v14 = v13;
  v15 = qword_1EDC6EA18;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = off_1EDC6EA20;
  if (*(off_1EDC6EA20 + 2))
  {
    v35 = sub_1B9F24A34(v12, v14);
    v36 = v12;
    v18 = v17;

    if (v18)
    {
      v19 = (v16[7] + 48 * v35);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      v32 = v19[2];
      v33 = v20;
      v35 = v22;
      v23 = v19[5];
      v30 = v19[4];
      v31 = *(v10 + 8);
      v34 = v21;

      v31(v9, v5);
      v25 = v32;
      v24 = v33;
      *&v37 = v33;
      *(&v37 + 1) = v21;
      v26 = v36;
      *&v38 = v32;
      *(&v38 + 1) = v35;
      v27 = v30;
      *&v39 = v30;
      *(&v39 + 1) = v23;
      *&v40 = v36;
      *(&v40 + 1) = v14;
      v28 = v38;
      *v11 = v37;
      v11[1] = v28;
      v29 = v40;
      v11[2] = v39;
      v11[3] = v29;
      sub_1BA48337C(&v37, v41);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v41[0] = v24;
      v41[1] = v34;
      v41[2] = v25;
      v41[3] = v35;
      v41[4] = v27;
      v41[5] = v23;
      v41[6] = v26;
      v41[7] = v14;
      sub_1BA32C710(v41);
      return;
    }
  }

  else
  {
  }

  sub_1BA483124();
  swift_allocError();
  swift_willThrow();
  (*(v10 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HKTypeGroupCategoryTileViewModel.encode(to:)(void *a1)
{
  sub_1BA48345C(0, &qword_1EDC5DD10, sub_1BA483328, &type metadata for HKTypeGroupCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA483328();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BA47E794()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  v1 = HKTypeGroup.displayCategory.getter();
  v2 = [v1 color];

  if (v2)
  {
    return sub_1BA4A6048();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA47E808()
{
  sub_1B9F87EE0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_1BA4A3FB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3F18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F87EE0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  (*(v10 + 104))(v13, *MEMORY[0x1E69DBF28], v9);
  v15 = sub_1BA4A3F48();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t sub_1BA47EB30(void *a1)
{
  sub_1BA48345C(0, &qword_1EDC5DD10, sub_1BA483328, &type metadata for HKTypeGroupCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA483328();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v7, v3);
}

uint64_t StandardCategoryTileViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

void StandardCategoryTileViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

__n128 StandardCategoryTileViewModel.imageMode.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for StandardCategoryTileViewModel(0) + 28));
  *a1 = result;
  return result;
}

uint64_t StandardCategoryTileViewModel.imageMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for StandardCategoryTileViewModel(0);
  v5 = (v1 + *(result + 28));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t StandardCategoryTileViewModel.usesAccessories.setter(char a1)
{
  result = type metadata accessor for StandardCategoryTileViewModel(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t StandardCategoryTileViewModel.accessories.getter()
{
  sub_1B9F87EE0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v18 - v3;
  v5 = sub_1BA4A3FB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3F18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for StandardCategoryTileViewModel(0) + 32)) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B9F87EE0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5480;
  (*(v11 + 104))(v14, *MEMORY[0x1E69DBF28], v10);
  v16 = sub_1BA4A3F48();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  return v15;
}

__n128 StandardCategoryTileViewModel.image.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A2BF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for StandardCategoryTileViewModel(0);
  sub_1BA486560(v2 + *(v17 + 20), v7, sub_1BA0D0F10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BA486500(v7, sub_1BA0D0F10);
LABEL_7:
    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  (*(v9 + 32))(v16, v7, v8);
  v19 = sub_1BA4A2BB8();
  if (!v19)
  {
    (*(v9 + 8))(v16, v8);
    goto LABEL_7;
  }

  v20 = v19;
  (*(v9 + 16))(v12, v16, v8);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x1E69A3288])
  {
    (*(v9 + 96))(v12, v8);
    sub_1B9F2C258(0);
    v26 = *(v21 + 48);
    v22 = sub_1BA4A6158();
    (*(v9 + 8))(v16, v8);
    sub_1BA486500(&v12[v26], sub_1BA232FB8);
  }

  else
  {
    v22 = sub_1BA4A2BE8();
    v23 = *(v9 + 8);
    v23(v16, v8);
    v23(v12, v8);
  }

  v24 = *(v17 + 28);
  *a1 = v22;
  *(a1 + 8) = v20;
  result = *(v2 + v24);
  *(a1 + 16) = result;
  return result;
}

uint64_t StandardCategoryTileViewModel.color.getter()
{
  v1 = sub_1BA4A2C58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StandardCategoryTileViewModel(0);
  sub_1BA486560(v0 + *(v10 + 24), v9, sub_1B9F20584);
  v11 = sub_1BA4A2B98();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1BA486500(v9, sub_1B9F20584);
    return 0;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    sub_1BA4A2C48();
    v14 = sub_1BA4A2B78();
    (*(v2 + 8))(v5, v1);
    (*(v12 + 8))(v9, v11);
    return v14;
  }
}

unint64_t sub_1BA47F86C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0xD000000000000013;
  v4 = 0x646F4D6567616D69;
  if (v1 != 3)
  {
    v4 = 0x6563634173657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BA47F91C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA485C2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA47F944(uint64_t a1)
{
  v2 = sub_1BA4833B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA47F980(uint64_t a1)
{
  v2 = sub_1BA4833B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StandardCategoryTileViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1BA48345C(0, &qword_1EDC5DD40, sub_1BA4833B4, &type metadata for StandardCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4833B4();
  sub_1BA4A8548();
  LOBYTE(v13) = 0;
  sub_1BA4A8248();
  if (!v2)
  {
    v11 = type metadata accessor for StandardCategoryTileViewModel(0);
    LOBYTE(v13) = 1;
    sub_1BA4A2BF8();
    sub_1B9F208E4(&qword_1EDC6AD68, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32A8]);
    sub_1BA4A8238();
    LOBYTE(v13) = 2;
    sub_1BA4A2B98();
    sub_1B9F208E4(&qword_1EDC6AD70, MEMORY[0x1E69A3260], MEMORY[0x1E69A3268]);
    sub_1BA4A8238();
    v13 = *(v3 + *(v11 + 28));
    v14 = 3;
    sub_1BA483408();
    sub_1BA4A8288();
    LOBYTE(v13) = 4;
    sub_1BA4A8258();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t StandardCategoryTileViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA48345C(0, &qword_1EDC5DEA8, sub_1BA4833B4, &type metadata for StandardCategoryTileViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v40 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for StandardCategoryTileViewModel(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 20);
  v19 = sub_1BA4A2BF8();
  v20 = *(*(v19 - 8) + 56);
  v44 = v18;
  v20(v16 + v18, 1, 1, v19);
  v21 = *(v13 + 24);
  v22 = sub_1BA4A2B98();
  v23 = *(*(v22 - 8) + 56);
  v43 = v21;
  v23(v16 + v21, 1, 1, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4833B4();
  v41 = v12;
  v24 = v42;
  sub_1BA4A8528();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v27 = v43;
    sub_1BA486500(v16 + v44, sub_1BA0D0F10);
    v33 = sub_1B9F20584;
    v34 = v16 + v27;
  }

  else
  {
    v25 = v38;
    v26 = v39;
    v42 = v13;
    LOBYTE(v45) = 0;
    *v16 = sub_1BA4A8188();
    v16[1] = v29;
    v35 = v29;
    LOBYTE(v45) = 1;
    sub_1B9F208E4(&qword_1EDC6AD58, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32B8]);
    sub_1BA4A8178();
    sub_1BA4831C4(v26, v16 + v44, sub_1BA0D0F10);
    LOBYTE(v45) = 2;
    sub_1B9F208E4(&qword_1EDC6E1D8, MEMORY[0x1E69A3260], MEMORY[0x1E69A3270]);
    v30 = v37;
    sub_1BA4A8178();
    sub_1BA4831C4(v30, v16 + v43, sub_1B9F20584);
    v46 = 3;
    sub_1BA4834C4();
    sub_1BA4A81C8();
    v31 = v42;
    *(v16 + *(v42 + 28)) = v45;
    LOBYTE(v45) = 4;
    v32 = sub_1BA4A8198();
    (*(v25 + 8))(v41, v40);
    *(v16 + *(v31 + 32)) = v32 & 1;
    sub_1BA486560(v16, v36, type metadata accessor for StandardCategoryTileViewModel);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33 = type metadata accessor for StandardCategoryTileViewModel;
    v34 = v16;
  }

  return sub_1BA486500(v34, v33);
}

uint64_t AsyncImageCategoryTileViewModel.title.getter()
{
  v0 = sub_1BA43D4F0();

  return v0;
}

double AsyncImageCategoryTileViewModel.image.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = AsyncImageCategoryTileViewModel.regularSizeImage.getter(a1);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = AsyncImageCategoryTileViewModel.compactSizeImage.getter(a1);
  if (!v7)
  {

LABEL_5:
    *&v9 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return *&v9;
  }

  v8 = *(a1 + 44);
  *a2 = v6;
  *(a2 + 8) = v7;
  v9 = *(v2 + v8);
  *(a2 + 16) = v9;
  return *&v9;
}

uint64_t AsyncImageCategoryTileViewModel.regularSizeImage.getter(uint64_t a1)
{
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - v13;
  v15 = *(a1 + 36);
  sub_1BA486560(v1 + v15, &v23 - v13, sub_1BA0D0F10);
  v16 = sub_1BA4A2BF8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) != 1)
  {
    sub_1BA486560(v14, v10, sub_1BA0D0F10);
    if ((*(v17 + 88))(v10, v16) == *MEMORY[0x1E69A3288])
    {
      (*(v17 + 96))(v10, v16);
      sub_1B9F2C258(0);
      v20 = *(v19 + 48);
      v21 = sub_1BA4A6158();
      sub_1BA486500(&v10[v20], sub_1BA232FB8);
      goto LABEL_8;
    }

    (*(v17 + 8))(v10, v16);
  }

  sub_1BA486560(v1 + v15, v6, sub_1BA0D0F10);
  if (v18(v6, 1, v16) == 1)
  {
    sub_1BA486500(v6, sub_1BA0D0F10);
    v21 = 0;
  }

  else
  {
    v21 = sub_1BA4A2BE8();
    (*(v17 + 8))(v6, v16);
  }

LABEL_8:
  sub_1BA486500(v14, sub_1BA0D0F10);
  return v21;
}

uint64_t AsyncImageCategoryTileViewModel.compactSizeImage.getter(uint64_t a1)
{
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA486560(v1 + *(a1 + 36), v6, sub_1BA0D0F10);
  v7 = sub_1BA4A2BF8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BA486500(v6, sub_1BA0D0F10);
    return 0;
  }

  else
  {
    v10 = sub_1BA4A2BB8();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

__n128 AsyncImageCategoryTileViewModel.imageMode.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 44));
  *a2 = result;
  return result;
}

unint64_t sub_1BA4807C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A8108();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BA480810(unsigned __int8 a1)
{
  v1 = 0x656C746974;
  v2 = 0x646F4D6567616D69;
  v3 = 0x797341736465656ELL;
  if (a1 != 4)
  {
    v3 = 0x766F72506E6F6369;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA4808EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA480960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1BA4809CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BA480A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1BA480AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BA4807C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BA480AE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BA480810(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BA480B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA48080C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA480B50@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1BA485DF8();
  *a2 = result;
  return result;
}

uint64_t sub_1BA480B7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA480BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AsyncImageCategoryTileViewModel.init(title:imageRepresentation:colorRepresentation:needsAsyncImage:imageMode:iconProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v16 = *a6;
  v17 = a6[1];
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for AsyncImageCategoryTileViewModel(0, a8, a10, a4);
  sub_1BA486498(a3, a9 + v18[9], sub_1BA0D0F10);
  sub_1BA486498(a4, a9 + v18[10], sub_1B9F20584);
  *(a9 + v18[12]) = a5;
  v19 = (a9 + v18[11]);
  *v19 = v16;
  v19[1] = v17;
  v20 = *(*(a8 - 8) + 32);
  v21 = a9 + v18[13];

  return v20(v21, a7, a8);
}

uint64_t AsyncImageCategoryTileViewModel.color.getter(uint64_t a1)
{
  v3 = sub_1BA4A2C58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA486560(v1 + *(a1 + 40), v11, sub_1B9F20584);
  v12 = sub_1BA4A2B98();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BA486500(v11, sub_1B9F20584);
    return 0;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    sub_1BA4A2C48();
    v15 = sub_1BA4A2B78();
    (*(v4 + 8))(v7, v3);
    (*(v13 + 8))(v11, v12);
    return v15;
  }
}

uint64_t AsyncImageCategoryTileViewModel.fetchImage()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BA0C2E3C;

  return v8(a1, v5, v4);
}

uint64_t AsyncImageCategoryTileViewModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v5 = v4;
  v7 = *(a2 + 16);
  v17[0] = *(a2 + 24);
  v17[1] = v7;
  type metadata accessor for AsyncImageCategoryTileViewModel.CodingKeys(255, v7, v17[0], a4);
  swift_getWitnessTable();
  v8 = sub_1BA4A8298();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  LOBYTE(v20) = 0;
  v13 = v19;
  sub_1BA4A8248();
  if (v13)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v15 = v9;
  v16 = v18;
  LOBYTE(v20) = 1;
  sub_1BA4A2BF8();
  sub_1B9F208E4(&qword_1EDC6AD68, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32A8]);
  sub_1BA4A8238();
  LOBYTE(v20) = 2;
  sub_1BA4A2B98();
  sub_1B9F208E4(&qword_1EDC6AD70, MEMORY[0x1E69A3260], MEMORY[0x1E69A3268]);
  sub_1BA4A8238();
  v20 = *(v5 + *(v16 + 44));
  v21 = 3;
  sub_1BA483408();
  sub_1BA4A8288();
  LOBYTE(v20) = 4;
  sub_1BA4A8258();
  LOBYTE(v20) = 5;
  sub_1BA4A8288();
  return (*(v15 + 8))(v12, v8);
}

void AsyncImageCategoryTileViewModel.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v41 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v47 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AsyncImageCategoryTileViewModel.CodingKeys(255, a2, a3, v14);
  swift_getWitnessTable();
  v49 = sub_1BA4A81E8();
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v15);
  v17 = &v39 - v16;
  v44 = a3;
  v19 = type metadata accessor for AsyncImageCategoryTileViewModel(0, a2, a3, v18);
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v39 - v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v17;
  v23 = v50;
  sub_1BA4A8528();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = v46;
    v24 = v47;
    v50 = a2;
    LOBYTE(v51) = 0;
    *v22 = sub_1BA4A8188();
    v22[1] = v26;
    sub_1BA4A2BF8();
    LOBYTE(v51) = 1;
    sub_1B9F208E4(&qword_1EDC6AD58, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32B8]);
    v27 = v24;
    sub_1BA4A8178();
    v28 = v19;
    sub_1BA486498(v27, v22 + *(v19 + 36), sub_1BA0D0F10);
    sub_1BA4A2B98();
    LOBYTE(v51) = 2;
    sub_1B9F208E4(&qword_1EDC6E1D8, MEMORY[0x1E69A3260], MEMORY[0x1E69A3270]);
    v29 = v45;
    sub_1BA4A8178();
    sub_1BA486498(v29, v22 + v28[10], sub_1B9F20584);
    v52 = 3;
    sub_1BA4834C4();
    sub_1BA4A81C8();
    v30 = v28;
    *(v22 + v28[11]) = v51;
    LOBYTE(v51) = 4;
    v31 = sub_1BA4A8198();
    v32 = v28[12];
    v47 = v22;
    *(v22 + v32) = v31 & 1;
    LOBYTE(v51) = 5;
    v33 = v43;
    v34 = v50;
    sub_1BA4A81C8();
    (*(v25 + 8))(v48, v49);
    v35 = v30[13];
    v36 = v30;
    v37 = v47;
    (*(v41 + 32))(v47 + v35, v33, v34);
    v38 = v40;
    (*(v40 + 16))(v42, v37, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v38 + 8))(v37, v36);
  }
}

uint64_t sub_1BA4819D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C36D8;

  return AsyncImageCategoryTileViewModel.fetchImage()(a1, a2);
}

uint64_t HostedCategoryTileView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  sub_1B9F87EE0(0, &qword_1EBBECFB8, sub_1BA175634, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v12 = type metadata accessor for HostedCategoryTileView(0, v18);
  v13 = &a6[*(v12 + 52)];
  v16 = type metadata accessor for ViewModelState(0, a3, v14, v15);
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  (*(*(a3 - 8) + 16))(&a6[*(v12 + 56)], a1 + *(v16 + 28), a3);
  return (*(*(v16 - 8) + 8))(a1, v16);
}

__n128 HostedCategoryTileView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  v5 = (*(v3 + 16))(v4, v3);
  v7 = v6;
  v8 = (*(v3 + 24))(v4, v3);
  (*(v3 + 32))(v11, v4, v3);
  result = v11[0];
  v10 = v11[1];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  *(a2 + 40) = v10;
  return result;
}

void (*sub_1BA481D34(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = HostedCategoryTileView.actionHandlerContent.modify();
  return sub_1B9FCDD98;
}

uint64_t CategoryTileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_1BA4A5798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA485E00(0, &qword_1EBBF30D8, sub_1BA483560, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  return sub_1BA481E44(v6, a1 + *(v4 + 44));
}

uint64_t sub_1BA481E44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA4835FC(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  *v11 = sub_1BA4A5878();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_1BA485E00(0, &qword_1EBBF32E0, sub_1BA483690, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1BA481F8C(a1, &v11[*(v12 + 44)]);
  sub_1BA485F24(v11, v7, sub_1BA4835FC);
  sub_1BA485F24(v7, a2, sub_1BA4835FC);
  sub_1BA483594(0);
  v14 = a2 + *(v13 + 48);
  *v14 = 0;
  *(v14 + 8) = 0;
  sub_1BA48601C(v11, sub_1BA4835FC);
  return sub_1BA48601C(v7, sub_1BA4835FC);
}

uint64_t sub_1BA481F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v201 = a2;
  v176 = sub_1BA4A5438();
  MEMORY[0x1EEE9AC00](v176, v3);
  v177 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA483D60(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v184 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A6138();
  v179 = *(v8 - 8);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v178 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA483C28(0);
  v195 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v181 = &v175 - v17;
  sub_1BA485E6C(0, &qword_1EBBF32E8, sub_1BA483814, sub_1BA483C28, MEMORY[0x1E697F948]);
  v193 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v194 = &v175 - v20;
  sub_1BA485EF0(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F89828(0);
  v185 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA483940(0);
  v187 = v29;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4838E0(0, v31);
  v186 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA483898(0);
  v190 = v38;
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v42 = &v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA483814(0, v40);
  v192 = v43;
  v189 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v188 = &v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA485E6C(0, &qword_1EBBF3110, sub_1BA483814, sub_1BA483C28, MEMORY[0x1E697F960]);
  v47 = v46;
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v49);
  v191 = &v175 - v50;
  sub_1BA483778(0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v200 = &v175 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v57 = a1[1];
  v197 = *a1;
  v198 = v57;
  v58 = a1[3];
  v199 = a1[2];
  v202 = v58;
  v203 = &v175 - v59;
  if (v58)
  {
    v183 = v47;
    v61 = a1[4];
    v60 = a1[5];
    v62 = a1[6];
    v196 = v60;
    v182 = v61;
    if (v60 < 0)
    {
      v76 = v178;
      v75 = v179;
      v77 = v180;
      (*(v179 + 104))(v178, *MEMORY[0x1E6981630], v180, v56);

      v78 = v61;
      v189 = sub_1BA4A6198();
      (*(v75 + 8))(v76, v77);
      sub_1BA4A63C8();
      sub_1BA4A5448();
      *&v204[54] = v228;
      *&v204[70] = v229;
      *&v204[86] = v230;
      *&v204[102] = v231;
      *&v204[6] = v225;
      LOBYTE(v205) = 1;
      *&v204[22] = v226;
      v79 = 1;
      *&v204[38] = v227;
      if (v196)
      {
        v80 = *(v176 + 20);
        v81 = *MEMORY[0x1E697F468];
        v82 = sub_1BA4A5818();
        v83 = v177;
        (*(*(v82 - 8) + 104))(&v177[v80], v81, v82);
        __asm { FMOV            V0.2D, #3.0 }

        *v83 = _Q0;
        v89 = [objc_opt_self() systemGroupedBackgroundColor];
        v90 = sub_1BA4A6048();
        sub_1BA4A51F8();
        v91 = v184;
        sub_1BA486560(v83, v184, MEMORY[0x1E697EAF0]);
        sub_1BA48626C(0);
        v93 = v91 + *(v92 + 36);
        v94 = v233;
        *v93 = v232;
        *(v93 + 16) = v94;
        *(v93 + 32) = v234;
        sub_1BA486300(0);
        *(v91 + *(v95 + 52)) = v90;
        *(v91 + *(v95 + 56)) = 256;
        v96 = sub_1BA4A63C8();
        v98 = v97;
        sub_1BA486500(v83, MEMORY[0x1E697EAF0]);
        sub_1BA4863B0(0);
        v79 = 0;
        v100 = (v91 + *(v99 + 36));
        *v100 = v96;
        v100[1] = v98;
      }

      sub_1BA483D94(0);
      v102 = v184;
      (*(*(v101 - 8) + 56))(v184, v79, 1, v101);
      v103 = sub_1BA4A63C8();
      v105 = v104;
      v106 = &v14[*(v195 + 36)];
      sub_1BA486498(v102, v106, sub_1BA483D60);
      sub_1BA483CFC(0, v107);
      v109 = (v106 + *(v108 + 36));
      *v109 = v103;
      v109[1] = v105;
      v110 = *&v204[32];
      *(v14 + 66) = *&v204[48];
      *(v14 + 50) = v110;
      v111 = *v204;
      *(v14 + 34) = *&v204[16];
      *(v14 + 18) = v111;
      *(v14 + 16) = *&v204[110];
      *(v14 + 114) = *&v204[96];
      v112 = *&v204[64];
      *(v14 + 98) = *&v204[80];
      *v14 = v189;
      *(v14 + 1) = 0;
      *(v14 + 8) = 1;
      *(v14 + 82) = v112;
      v113 = v181;
      sub_1BA486498(v14, v181, sub_1BA483C28);
      sub_1BA486560(v113, v194, sub_1BA483C28);
      swift_storeEnumTagMultiPayload();
      v114 = sub_1BA483A3C();
      v209 = v190;
      v210 = v114;
      swift_getOpaqueTypeConformance2();
      sub_1BA486104();
      v115 = v191;
      sub_1BA4A58E8();
      sub_1BA277094(v202, v182);
      sub_1BA486500(v113, sub_1BA483C28);
    }

    else
    {
      v181 = v48;
      v184 = v62;
      v63 = *MEMORY[0x1E6981698];
      v64 = v61;
      v65 = sub_1BA4A6178();
      v66 = *(v65 - 8);
      (*(v66 + 104))(v24, v63, v65);
      (*(v66 + 56))(v24, 0, 1, v65);

      v67 = v64;
      v68 = sub_1BA4A6148();
      sub_1BA486500(v24, sub_1BA485EF0);
      v69 = (v28 + *(v185 + 36));
      sub_1B9F89374(0);
      v71 = *(v70 + 28);
      v72 = *MEMORY[0x1E69816C0];
      v73 = sub_1BA4A6188();
      (*(*(v73 - 8) + 104))(v69 + v71, v72, v73);
      *v69 = swift_getKeyPath();
      *v28 = v68;
      if (v196)
      {
        v74 = sub_1BA4A6078();
      }

      else
      {
        v116 = [objc_opt_self() systemBackgroundColor];
        v74 = sub_1BA4A6048();
      }

      v117 = v74;
      v118 = v184;
      v48 = v181;
      sub_1BA486498(v28, v33, sub_1B9F89828);
      *&v33[*(v187 + 36)] = v117;
      sub_1BA486498(v33, v37, sub_1BA483940);
      *&v37[*(v186 + 36)] = v118;
      v119 = sub_1BA4A5CE8();
      KeyPath = swift_getKeyPath();
      sub_1BA486498(v37, v42, sub_1BA4838E0);
      v121 = v190;
      v122 = &v42[*(v190 + 36)];
      *v122 = KeyPath;
      v122[1] = v119;
      sub_1BA4A5C98();
      v123 = sub_1BA483A3C();
      v124 = v188;
      sub_1BA4A5E98();
      sub_1BA486500(v42, sub_1BA483898);
      v125 = v189;
      v126 = v192;
      (*(v189 + 16))(v194, v124, v192);
      swift_storeEnumTagMultiPayload();
      *&v225 = v121;
      *(&v225 + 1) = v123;
      swift_getOpaqueTypeConformance2();
      sub_1BA486104();
      v115 = v191;
      sub_1BA4A58E8();
      sub_1BA277094(v202, v182);
      (*(v125 + 8))(v124, v126);
    }

    sub_1B9FAA3FC(v115, v203);
    (*(v48 + 56))(v127);
  }

  else
  {
    (*(v48 + 56))(v56);
  }

  v209 = v197;
  v210 = v198;
  sub_1B9F252FC();

  v128 = sub_1BA4A5E18();
  v130 = v129;
  v132 = v131;
  sub_1BA4A5C18();
  v133 = sub_1BA4A5DE8();
  v135 = v134;
  v137 = v136;

  sub_1BA102AF4(v128, v130, v132 & 1);

  sub_1BA4A5CB8();
  v138 = sub_1BA4A5DA8();
  v140 = v139;
  v142 = v141;
  sub_1BA102AF4(v133, v135, v137 & 1);

  if (v199)
  {
    v143 = [objc_opt_self() systemBackgroundColor];
    v144 = sub_1BA4A6048();
  }

  else
  {
    v144 = sub_1BA4A60E8();
  }

  v209 = v144;
  v145 = sub_1BA4A5DC8();
  v199 = v146;
  v148 = v147;
  v202 = v149;
  sub_1BA102AF4(v138, v140, v142 & 1);

  v150 = sub_1BA4A5B88();
  sub_1BA4A5188();
  v152 = v151;
  v154 = v153;
  v156 = v155;
  v158 = v157;
  v159 = v148 & 1;
  v224 = v148 & 1;
  v221 = 0;
  v160 = v203;
  v161 = v200;
  sub_1BA485F24(v203, v200, sub_1BA483778);
  v162 = v201;
  *v201 = 0;
  *(v162 + 8) = 0;
  sub_1BA4836C4(0, v163);
  v165 = v164;
  sub_1BA485F24(v161, v162 + *(v164 + 48), sub_1BA483778);
  v166 = v162 + *(v165 + 64);
  *v166 = 0;
  v166[8] = 0;
  v167 = (v162 + *(v165 + 80));
  *&v205 = v145;
  v168 = v199;
  *(&v205 + 1) = v199;
  LOBYTE(v206) = v159;
  *(&v206 + 1) = *v223;
  DWORD1(v206) = *&v223[3];
  v169 = v202;
  *(&v206 + 1) = v202;
  LOBYTE(v207) = v150;
  *(&v207 + 1) = *v222;
  DWORD1(v207) = *&v222[3];
  *(&v207 + 1) = v152;
  *&v208[0] = v154;
  *(&v208[0] + 1) = v156;
  *&v208[1] = v158;
  BYTE8(v208[1]) = 0;
  v170 = v205;
  v171 = v206;
  v172 = v207;
  *(v167 + 57) = *(v208 + 9);
  v173 = v208[0];
  v167[2] = v172;
  v167[3] = v173;
  *v167 = v170;
  v167[1] = v171;
  sub_1BA485F8C(&v205, &v209);
  sub_1BA48601C(v160, sub_1BA483778);
  v209 = v145;
  v210 = v168;
  v211 = v159;
  *v212 = *v223;
  *&v212[3] = *&v223[3];
  v213 = v169;
  v214 = v150;
  *v215 = *v222;
  *&v215[3] = *&v222[3];
  v216 = v152;
  v217 = v154;
  v218 = v156;
  v219 = v158;
  v220 = 0;
  sub_1BA48607C(&v209);
  return sub_1BA48601C(v161, sub_1BA483778);
}

uint64_t sub_1BA482FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_1BA4A5798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA485E00(0, &qword_1EBBF30D8, sub_1BA483560, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  return sub_1BA481E44(v6, a1 + *(v4 + 44));
}

uint64_t sub_1BA483088(uint64_t a1)
{
  sub_1BA175634(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BA486560(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1BA175634);
  return sub_1BA4A5638();
}

unint64_t sub_1BA483124()
{
  result = qword_1EBBF30D0;
  if (!qword_1EBBF30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF30D0);
  }

  return result;
}

uint64_t type metadata accessor for StandardCategoryTileViewModel(uint64_t a1)
{
  result = qword_1EDC6C070;
  if (!qword_1EDC6C070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA4831C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA48322C()
{
  result = qword_1EDC6C548;
  if (!qword_1EDC6C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C548);
  }

  return result;
}

unint64_t sub_1BA483280()
{
  result = qword_1EDC6C540;
  if (!qword_1EDC6C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C540);
  }

  return result;
}

unint64_t sub_1BA4832D4()
{
  result = qword_1EDC6C570[0];
  if (!qword_1EDC6C570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6C570);
  }

  return result;
}

unint64_t sub_1BA483328()
{
  result = qword_1EDC6BD48[0];
  if (!qword_1EDC6BD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6BD48);
  }

  return result;
}

unint64_t sub_1BA4833B4()
{
  result = qword_1EDC6C0A8[0];
  if (!qword_1EDC6C0A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6C0A8);
  }

  return result;
}

unint64_t sub_1BA483408()
{
  result = qword_1EDC654B8[0];
  if (!qword_1EDC654B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC654B8);
  }

  return result;
}

void sub_1BA48345C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA4834C4()
{
  result = qword_1EDC654B0;
  if (!qword_1EDC654B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC654B0);
  }

  return result;
}

void sub_1BA483594(uint64_t a1)
{
  if (!qword_1EBBF30E8)
  {
    sub_1BA4835FC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF30E8);
    }
  }
}

void sub_1BA4835FC(uint64_t a1)
{
  if (!qword_1EBBF30F0)
  {
    sub_1BA483690(255);
    sub_1B9F208E4(qword_1EBBF3190, sub_1BA483690, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF30F0);
    }
  }
}

void sub_1BA4836C4(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3100)
  {
    sub_1BA483778(255);
    sub_1BA486444(255, &qword_1EBBF3188, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBF3100);
    }
  }
}

void sub_1BA483778(uint64_t a1)
{
  if (!qword_1EBBF3108)
  {
    sub_1BA485E6C(255, &qword_1EBBF3110, sub_1BA483814, sub_1BA483C28, MEMORY[0x1E697F960]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3108);
    }
  }
}

void sub_1BA483814(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3118)
  {
    sub_1BA483898(255);
    sub_1BA483A3C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF3118);
    }
  }
}

void sub_1BA4838E0(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3128)
  {
    sub_1BA483940(255);
    v2 = sub_1BA4A5418();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF3128);
    }
  }
}

void sub_1BA483940(uint64_t a1)
{
  if (!qword_1EBBF3130)
  {
    sub_1B9F89828(255);
    sub_1BA486444(255, &qword_1EBBEC988, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3130);
    }
  }
}

void sub_1BA4839D4(uint64_t a1)
{
  if (!qword_1EDC5EC48)
  {
    sub_1B9F23398(255, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    v1 = sub_1BA4A5B08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EC48);
    }
  }
}

unint64_t sub_1BA483A3C()
{
  result = qword_1EBBF3138;
  if (!qword_1EBBF3138)
  {
    sub_1BA483898(255);
    sub_1BA4861EC(&qword_1EBBF3140, sub_1BA4838E0, sub_1BA483B24);
    sub_1B9F208E4(&qword_1EDC5EC50, sub_1BA4839D4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3138);
  }

  return result;
}

unint64_t sub_1BA483B24()
{
  result = qword_1EBBF3148;
  if (!qword_1EBBF3148)
  {
    sub_1BA483940(255);
    sub_1B9F893F0();
    sub_1BA483BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3148);
  }

  return result;
}

unint64_t sub_1BA483BA4()
{
  result = qword_1EBBEC9F0;
  if (!qword_1EBBEC9F0)
  {
    sub_1BA486444(255, &qword_1EBBEC988, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC9F0);
  }

  return result;
}

void sub_1BA483C70(uint64_t a1)
{
  if (!qword_1EBBF3158)
  {
    sub_1BA486444(255, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3158);
    }
  }
}

void sub_1BA483CFC(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3160)
  {
    sub_1BA483D60(255);
    sub_1BA483E58();
    v2 = sub_1BA4A5458();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF3160);
    }
  }
}

void sub_1BA483D94(uint64_t a1)
{
  if (!qword_1EBBF3170)
  {
    sub_1BA4A5438();
    sub_1B9F208E4(&qword_1EDC5EDD0, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v1 = sub_1BA4A5428();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3170);
    }
  }
}

unint64_t sub_1BA483E58()
{
  result = qword_1EBBF3178;
  if (!qword_1EBBF3178)
  {
    sub_1BA483D60(255);
    sub_1B9F208E4(&qword_1EBBF3180, sub_1BA483D94, MEMORY[0x1E697E8C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3178);
  }

  return result;
}

unint64_t sub_1BA483F00(uint64_t a1)
{
  result = sub_1BA483F28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA483F28()
{
  result = qword_1EDC6BD20;
  if (!qword_1EDC6BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD20);
  }

  return result;
}

unint64_t sub_1BA483F7C(uint64_t a1)
{
  *(a1 + 16) = sub_1BA232C40();
  result = sub_1BA2E6B44();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA483FAC(uint64_t a1)
{
  result = sub_1B9F208E4(&qword_1EDC6C080, type metadata accessor for StandardCategoryTileViewModel, &protocol conformance descriptor for StandardCategoryTileViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA484004(uint64_t a1)
{
  *(a1 + 16) = sub_1B9F208E4(&qword_1EDC6C088, type metadata accessor for StandardCategoryTileViewModel, &protocol conformance descriptor for StandardCategoryTileViewModel);
  result = sub_1B9F208E4(&qword_1EDC6C090, type metadata accessor for StandardCategoryTileViewModel, &protocol conformance descriptor for StandardCategoryTileViewModel);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA484088(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA4840C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA484140(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA48417C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of CategoryIconProvider.fetchImage()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0C2E3C;

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for CategoryTileImageViewModel.ImageMode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
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

uint64_t storeEnumTagSinglePayload for CategoryTileImageViewModel.ImageMode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 2 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of CategoryTileViewModelAsyncImageProviding.fetchImage()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0C36D8;

  return v9(a1, a2, a3);
}

void sub_1BA4845C8(uint64_t a1)
{
  sub_1BA0D0F10(319);
  if (v1 <= 0x3F)
  {
    sub_1B9F20584(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA484674(uint64_t a1)
{
  sub_1BA0D0F10(319);
  if (v1 <= 0x3F)
  {
    sub_1B9F20584(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA48473C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BA4A2BF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(sub_1BA4A2B98() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a3 + 16) - 8);
  if (v9 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = *(v14 + 84);
  v18 = *(v7 + 80);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v15 <= v17)
  {
    v23 = *(v14 + 84);
  }

  else
  {
    v23 = v15;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  if (v8)
  {
    v25 = *(v7 + 64);
  }

  else
  {
    v25 = *(v7 + 64) + 1;
  }

  if (v12)
  {
    v26 = v20;
  }

  else
  {
    v26 = v20 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v26 + 7;
  v28 = v21 + 17;
  if (a2 <= v24)
  {
    goto LABEL_45;
  }

  v29 = ((v28 + ((v27 + ((v25 + v19 + ((v18 + 16) & ~v18)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + v22;
  v30 = 8 * v29;
  if (v29 > 3)
  {
    goto LABEL_25;
  }

  v32 = ((a2 - v24 + ~(-1 << v30)) >> v30) + 1;
  if (HIWORD(v32))
  {
    v31 = *(a1 + v29);
    if (v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v32 <= 0xFF)
    {
      if (v32 < 2)
      {
        goto LABEL_45;
      }

LABEL_25:
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_45;
      }

LABEL_32:
      v33 = (v31 - 1) << v30;
      if (v29 > 3)
      {
        v33 = 0;
      }

      if (v29)
      {
        if (v29 <= 3)
        {
          v34 = v29;
        }

        else
        {
          v34 = 4;
        }

        if (v34 > 2)
        {
          if (v34 == 3)
          {
            v35 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v35 = *a1;
          }
        }

        else if (v34 == 1)
        {
          v35 = *a1;
        }

        else
        {
          v35 = *a1;
        }
      }

      else
      {
        v35 = 0;
      }

      return v24 + (v35 | v33) + 1;
    }

    v31 = *(a1 + v29);
    if (*(a1 + v29))
    {
      goto LABEL_32;
    }
  }

LABEL_45:
  if ((v23 & 0x80000000) == 0)
  {
    v36 = *(a1 + 1);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }

  if (v9 == v24)
  {
    if (v8 >= 2)
    {
      v38 = (*(v7 + 48))((a1 + v18 + 16) & ~v18, v8, v6);
      goto LABEL_62;
    }

    return 0;
  }

  v39 = (((a1 + v18 + 16) & ~v18) + v25 + v19) & ~v19;
  if (v13 == v24)
  {
    if (v12 >= 2)
    {
      v38 = (*(v11 + 48))(v39);
LABEL_62:
      if (v38 >= 2)
      {
        return v38 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v40 = *(v16 + 48);

  return v40((v28 + ((v27 + v39) & 0xFFFFFFFFFFFFFFF8)) & ~v21, v17);
}

void sub_1BA484AC0(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BA4A2BF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  v13 = *(sub_1BA4A2B98() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v11 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  v18 = *(a4 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v9 + 80);
  v22 = *(v13 + 80);
  v23 = *(v13 + 64);
  v24 = *(v19 + 80);
  if (v17 <= v20)
  {
    v25 = *(v19 + 84);
  }

  else
  {
    v25 = v17;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  if (v10)
  {
    v27 = *(v9 + 64);
  }

  else
  {
    v27 = *(v9 + 64) + 1;
  }

  if (v15)
  {
    v28 = v23;
  }

  else
  {
    v28 = v23 + 1;
  }

  v29 = v28 + 7;
  v30 = ((v24 + 17 + ((v29 + ((v27 + v22 + ((v21 + 16) & ~v21)) & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & ~v24) + *(v19 + 64);
  if (a3 <= v26)
  {
    goto LABEL_33;
  }

  if (v30 <= 3)
  {
    v31 = ((a3 - v26 + ~(-1 << (8 * v30))) >> (8 * v30)) + 1;
    if (HIWORD(v31))
    {
      v12 = 4;
      if (v26 >= a2)
      {
        goto LABEL_43;
      }

LABEL_34:
      v33 = ~v26 + a2;
      if (v30 >= 4)
      {
        bzero(a1, v30);
        *a1 = v33;
        v34 = 1;
        if (v12 > 1)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      v34 = (v33 >> (8 * v30)) + 1;
      if (v30)
      {
        v35 = v33 & ~(-1 << (8 * v30));
        bzero(a1, v30);
        if (v30 != 3)
        {
          if (v30 == 2)
          {
            *a1 = v35;
            if (v12 > 1)
            {
LABEL_69:
              if (v12 == 2)
              {
                *(a1 + v30) = v34;
              }

              else
              {
                *(a1 + v30) = v34;
              }

              return;
            }
          }

          else
          {
            *a1 = v33;
            if (v12 > 1)
            {
              goto LABEL_69;
            }
          }

LABEL_66:
          if (v12)
          {
            *(a1 + v30) = v34;
          }

          return;
        }

        *a1 = v35;
        *(a1 + 2) = BYTE2(v35);
      }

      if (v12 > 1)
      {
        goto LABEL_69;
      }

      goto LABEL_66;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    if (v31 >= 2)
    {
      v12 = v32;
    }

    else
    {
      v12 = 0;
    }

LABEL_33:
    if (v26 >= a2)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v12 = 1;
  if (v26 < a2)
  {
    goto LABEL_34;
  }

LABEL_43:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *(a1 + v30) = 0;
LABEL_49:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!v12)
  {
    goto LABEL_49;
  }

  *(a1 + v30) = 0;
  if (!a2)
  {
    return;
  }

LABEL_50:
  if ((v25 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

  if (v11 == v26)
  {
    if (v10 < 2)
    {
      return;
    }

    v36 = *(v9 + 56);
    v37 = (a2 + 1);
    v38 = (a1 + v21 + 16) & ~v21;
    v39 = v10;
    v18 = v8;
    goto LABEL_74;
  }

  v40 = (((a1 + v21 + 16) & ~v21) + v27 + v22) & ~v22;
  if (v16 != v26)
  {
    v36 = *(v19 + 56);
    v38 = (v24 + 17 + ((v29 + v40) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
    v37 = a2;
    v39 = v20;
LABEL_74:

    v36(v38, v37, v39, v18);
    return;
  }

  if (v15 >= 2)
  {
    v41 = *(v14 + 56);

    v41(v40, (a2 + 1));
  }
}

void sub_1BA484EF8(uint64_t a1)
{
  sub_1B9F87EE0(319, &qword_1EBBECF60, sub_1BA175634, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1B9F23398(319, qword_1EDC6BB70, &type metadata for ConfigurationFeedItemActionContent);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA484FD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BA4A59D8() - 8);
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_33;
  }

  v12 = (((v11 & 0xFFFFFFFFFFFFFFF8) + v9 + 88) & ~v9) + *(v7 + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_33:
      v20 = ((a1 + v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v8 > 0x7FFFFFFE)
      {
        v22 = *(v7 + 48);

        return v22((v20 + v9 + 80) & ~v9);
      }

      else
      {
        v21 = *v20;
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        if ((v21 + 1) >= 2)
        {
          return v21;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_33;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void sub_1BA48522C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BA4A59D8() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(*(a4 + 24) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  if (v15 <= 8)
  {
    v15 = 8;
  }

  v16 = (((v15 & 0xFFFFFFFFFFFFFFF8) + v13 + 88) & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v23 = (&a1[v15 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (v12 > 0x7FFFFFFE)
  {
    v24 = *(v11 + 56);

    v24((v23 + v13 + 80) & ~v13, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    v23[3] = 0u;
    v23[4] = 0u;
    v23[1] = 0u;
    v23[2] = 0u;
    *v23 = 0u;
    *v23 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v23 = a2;
  }
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI26CategoryTileImageViewModelVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1BA485564(uint64_t a1)
{
  if (!qword_1EBBF3220)
  {
    sub_1BA483560(255);
    sub_1B9F208E4(qword_1EBBF3228, sub_1BA483560, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3220);
    }
  }
}

unint64_t sub_1BA48565C()
{
  result = qword_1EBBF32B0;
  if (!qword_1EBBF32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32B0);
  }

  return result;
}

unint64_t sub_1BA4856B4()
{
  result = qword_1EBBF32B8;
  if (!qword_1EBBF32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32B8);
  }

  return result;
}

unint64_t sub_1BA48570C()
{
  result = qword_1EBBF32C0;
  if (!qword_1EBBF32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32C0);
  }

  return result;
}

unint64_t sub_1BA485764()
{
  result = qword_1EBBF32C8;
  if (!qword_1EBBF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32C8);
  }

  return result;
}

unint64_t sub_1BA4857BC()
{
  result = qword_1EBBF32D0;
  if (!qword_1EBBF32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32D0);
  }

  return result;
}

unint64_t sub_1BA485814()
{
  result = qword_1EBBF32D8;
  if (!qword_1EBBF32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32D8);
  }

  return result;
}

unint64_t sub_1BA4858C0()
{
  result = qword_1EDC6C098;
  if (!qword_1EDC6C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C098);
  }

  return result;
}

unint64_t sub_1BA485918()
{
  result = qword_1EDC6C0A0;
  if (!qword_1EDC6C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C0A0);
  }

  return result;
}

unint64_t sub_1BA485970()
{
  result = qword_1EDC6BD38;
  if (!qword_1EDC6BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD38);
  }

  return result;
}

unint64_t sub_1BA4859C8()
{
  result = qword_1EDC6BD40;
  if (!qword_1EDC6BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BD40);
  }

  return result;
}

unint64_t sub_1BA485A20()
{
  result = qword_1EDC6C560;
  if (!qword_1EDC6C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C560);
  }

  return result;
}

unint64_t sub_1BA485A78()
{
  result = qword_1EDC6C568;
  if (!qword_1EDC6C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C568);
  }

  return result;
}

unint64_t sub_1BA485AD0()
{
  result = qword_1EDC6C530;
  if (!qword_1EDC6C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C530);
  }

  return result;
}

unint64_t sub_1BA485B28()
{
  result = qword_1EDC6C538;
  if (!qword_1EDC6C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C538);
  }

  return result;
}

unint64_t sub_1BA485B80()
{
  result = qword_1EDC6C550;
  if (!qword_1EDC6C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C550);
  }

  return result;
}

unint64_t sub_1BA485BD8()
{
  result = qword_1EDC6C558;
  if (!qword_1EDC6C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C558);
  }

  return result;
}

uint64_t sub_1BA485C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1650 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F4D6567616D69 && a2 == 0xE900000000000065 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563634173657375 && a2 == 0xEF736569726F7373)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1BA485E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1BA4A52C8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA485E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1BA485F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA485F8C(uint64_t a1, uint64_t a2)
{
  sub_1BA486444(0, &qword_1EBBF3188, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA48601C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA48607C(uint64_t a1)
{
  sub_1BA486444(0, &qword_1EBBF3188, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA486104()
{
  result = qword_1EBBF32F8;
  if (!qword_1EBBF32F8)
  {
    sub_1BA483C28(255);
    sub_1BA4861EC(&qword_1EBBF3300, sub_1BA483C70, sub_1BA0D6A80);
    sub_1B9F208E4(&qword_1EBBF3308, sub_1BA483CFC, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF32F8);
  }

  return result;
}

uint64_t sub_1BA4861EC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA48626C(uint64_t a1)
{
  if (!qword_1EBBF3310)
  {
    sub_1BA4A5438();
    sub_1B9F208E4(&qword_1EDC5EDD0, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v1 = sub_1BA4A52B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3310);
    }
  }
}

void sub_1BA486300(uint64_t a1)
{
  if (!qword_1EBBF3318)
  {
    sub_1BA48626C(255);
    sub_1B9F208E4(&qword_1EBBF3320, sub_1BA48626C, MEMORY[0x1E697E298]);
    v1 = sub_1BA4A5198();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3318);
    }
  }
}

void sub_1BA4863B0(uint64_t a1)
{
  if (!qword_1EBBF3328)
  {
    sub_1BA486300(255);
    sub_1BA486444(255, &qword_1EBBF3330, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F930]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF3328);
    }
  }
}

void sub_1BA486444(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA486498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA486500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA486560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id InternalSettingsFeatureStateListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InternalSettingsFeatureStateListViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v13 = sub_1BA486D74;
  v14 = 0;
  v15 = 0;
  sub_1BA486DAC();
  sub_1BA4A6288();
  v7 = sub_1BA4A5A08();

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    *&v3[OBJC_IVAR____TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController_host] = v8;
    if (a2)
    {
      v9 = sub_1BA4A6758();
    }

    else
    {
      v9 = 0;
    }

    v12.receiver = v3;
    v12.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

    return v10;
  }

  else
  {

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall InternalSettingsFeatureStateListViewController.viewDidLoad()()
{
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = sub_1BA4A6758();
  [v0 setTitle_];

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController_host];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  [v4 addSubview_];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1BA488830(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5890;
  v10 = [v2 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v16;
  v17 = [v2 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v9 + 40) = v23;
  v24 = [v2 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v9 + 48) = v30;
  v31 = [v2 view];
  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v0 view];
  if (v34)
  {
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v35 trailingAnchor];

    v38 = [v33 constraintEqualToAnchor_];
    *(v9 + 56) = v38;
    sub_1B9F740B0();
    v39 = sub_1BA4A6AE8();

    [v36 activateConstraints_];

    [v2 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

id InternalSettingsFeatureStateListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BA486D74()
{
  type metadata accessor for InternalSettingsFeatureListModel();
  swift_allocObject();
  return sub_1BA380C7C();
}

unint64_t sub_1BA486DAC()
{
  result = qword_1EBBF3338;
  if (!qword_1EBBF3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3338);
  }

  return result;
}

uint64_t sub_1BA486E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>, __n128 a5@<Q0>)
{
  v56 = a4;
  sub_1BA487CA0(0, a5);
  v57 = v8;
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v58 = &v49 - v14;
  sub_1BA487A34(0, v13);
  v53 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v52 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v49 - v21;
  type metadata accessor for InternalSettingsFeatureListModel();
  sub_1BA487E8C(&unk_1EBBF15F0, type metadata accessor for InternalSettingsFeatureListModel, &unk_1BA4D52E8);
  v23 = a3 & 1;
  sub_1BA4A51E8();
  v24 = sub_1BA381488();
  v26 = v25;

  if (v26)
  {
    v59 = v24;
    v60 = v26;
    sub_1B9F252FC();
    v27 = sub_1BA4A5E18();
    v31 = v30 & 1;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v31 = 0;
    v29 = 0;
  }

  v59 = v27;
  v60 = v28;
  v61 = v31;
  v62 = v29;
  v32 = MEMORY[0x1EEE9AC00](v27, v28);
  *(&v49 - 4) = a1;
  *(&v49 - 3) = a2;
  *(&v49 - 16) = v23;
  sub_1BA487AC8(0, v32);
  sub_1BA488830(0, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  sub_1BA4886D8(&qword_1EBBF33A8, sub_1BA487AC8, sub_1BA487EE0);
  sub_1BA3B1428();
  v51 = v22;
  v33 = sub_1BA4A6368();
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v49 - 4) = a1;
  *(&v49 - 3) = a2;
  *(&v49 - 16) = v23;
  sub_1BA487D28(0, &qword_1EBBF3388, sub_1BA487DA4, &type metadata for InternalSettingsFeatureStateList);
  sub_1BA487F68();
  v35 = v58;
  sub_1BA4A6358();
  v36 = *(v16 + 16);
  v37 = v52;
  v38 = v53;
  v36(v52, v22, v53);
  v40 = v54;
  v39 = v55;
  v50 = *(v54 + 16);
  v41 = v35;
  v42 = v57;
  v50(v55, v41, v57);
  v43 = v56;
  v44.n128_f64[0] = v36(v56, v37, v38);
  sub_1BA4879C4(0, v44);
  v50(&v43[*(v45 + 48)], v39, v42);
  v46 = *(v40 + 8);
  v46(v58, v42);
  v47 = *(v16 + 8);
  v47(v51, v38);
  v46(v39, v42);
  return (v47)(v37, v38);
}

uint64_t sub_1BA487300(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for InternalSettingsFeatureListModel();
  sub_1BA487E8C(&unk_1EBBF15F0, type metadata accessor for InternalSettingsFeatureListModel, &unk_1BA4D52E8);
  sub_1BA4A51E8();

  sub_1BA487BB4(0, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
  sub_1BA487D28(0, &qword_1EBBF3370, sub_1BA3B18B8, &type metadata for InternalSettingsFeatureStateView);
  sub_1BA487C18();
  sub_1BA487EE0();
  sub_1BA487E8C(&qword_1EBBF33C0, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D52B0);
  return sub_1BA4A6308();
}

uint64_t sub_1BA4874A8(void **a1)
{
  v1 = *a1;
  v2 = [*(*a1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v3 = NSStringFromHKFeatureIdentifier();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA487E8C(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
  v4 = v1;
  sub_1BA4A5348();
  sub_1BA3B18B8();
  sub_1B9F252FC();
  return sub_1BA4A5328();
}

uint64_t sub_1BA4875C0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BA4A57F8();
  type metadata accessor for InternalSettingsFeatureListModel();
  sub_1BA487E8C(&unk_1EBBF15F0, type metadata accessor for InternalSettingsFeatureListModel, &unk_1BA4D52E8);
  sub_1BA4A51E8();
  sub_1BA4A5348();
  sub_1BA487DA4();
  return sub_1BA4A5318();
}

uint64_t sub_1BA4876DC()
{
  v1 = sub_1BA4A5938();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA487914(0, v4);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v11) = *(v0 + 16);
  v15 = *v0;
  v16 = v11;
  sub_1BA487BB4(0, &qword_1EBBF3350, sub_1BA4879C4, MEMORY[0x1E6981F40]);
  sub_1BA487DF8();
  sub_1BA4A5D88();
  sub_1BA4A5928();
  sub_1BA487E8C(&qword_1EBBF33A0, sub_1BA487914, MEMORY[0x1E697CD20]);
  sub_1BA4A6018();
  (*(v2 + 8))(v6, v1);
  return (*(v9 + 8))(v12, v8);
}

void sub_1BA487914(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3348)
  {
    sub_1BA487BB4(255, &qword_1EBBF3350, sub_1BA4879C4, MEMORY[0x1E6981F40]);
    sub_1BA487DF8();
    v2 = sub_1BA4A5D98();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF3348);
    }
  }
}

void sub_1BA4879C4(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3358)
  {
    sub_1BA487A34(255, a2);
    sub_1BA487CA0(255, v2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF3358);
    }
  }
}

void sub_1BA487A34(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3360)
  {
    sub_1BA487AC8(255, a2);
    sub_1BA488830(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v2 = sub_1BA4A6378();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF3360);
    }
  }
}

void sub_1BA487AC8(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3368)
  {
    sub_1BA487BB4(255, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
    sub_1BA487D28(255, &qword_1EBBF3370, sub_1BA3B18B8, &type metadata for InternalSettingsFeatureStateView);
    sub_1BA487C18();
    v2 = sub_1BA4A6318();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF3368);
    }
  }
}

void sub_1BA487BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA487C18()
{
  result = qword_1EBBF3378;
  if (!qword_1EBBF3378)
  {
    sub_1BA487BB4(255, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3378);
  }

  return result;
}

void sub_1BA487CA0(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF3380)
  {
    sub_1BA487D28(255, &qword_1EBBF3388, sub_1BA487DA4, &type metadata for InternalSettingsFeatureStateList);
    v2 = sub_1BA4A6378();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF3380);
    }
  }
}

void sub_1BA487D28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1BA4A5338();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BA487DA4()
{
  result = qword_1EBBF3390;
  if (!qword_1EBBF3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3390);
  }

  return result;
}

unint64_t sub_1BA487DF8()
{
  result = qword_1EBBF3398;
  if (!qword_1EBBF3398)
  {
    sub_1BA487BB4(255, &qword_1EBBF3350, sub_1BA4879C4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3398);
  }

  return result;
}

uint64_t sub_1BA487E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA487EE0()
{
  result = qword_1EBBF33B0;
  if (!qword_1EBBF33B0)
  {
    sub_1BA487D28(255, &qword_1EBBF3370, sub_1BA3B18B8, &type metadata for InternalSettingsFeatureStateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF33B0);
  }

  return result;
}

unint64_t sub_1BA487F68()
{
  result = qword_1EBBF33B8;
  if (!qword_1EBBF33B8)
  {
    sub_1BA487D28(255, &qword_1EBBF3388, sub_1BA487DA4, &type metadata for InternalSettingsFeatureStateList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF33B8);
  }

  return result;
}

uint64_t sub_1BA488010(uint64_t a1, uint64_t a2)
{
  sub_1BA487BB4(0, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
  sub_1BA487C18();
  sub_1BA3B0BA4();
  sub_1BA487E8C(&qword_1EBBF33C0, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D52B0);

  return sub_1BA4A6308();
}

__n128 sub_1BA488120@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA487E8C(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
  v4 = v3;
  v5 = sub_1BA4A5348();
  v7 = v6;
  sub_1BA488830(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1BA4A61A8();
  result = v9;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_1BA48820C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1BA4A5938();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA48856C(0, v5);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA488754(0, v12);
  v16 = *(v15 - 8);
  v26 = v15;
  v27 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[1];
  v29 = *v1;
  v30 = v20;
  sub_1BA48861C(0);
  sub_1BA4886D8(&qword_1EBBF33D8, sub_1BA48861C, sub_1BA3B0BA4);
  sub_1BA4A5D88();
  sub_1BA4A5928();
  v21 = sub_1BA487E8C(&qword_1EBBF33E8, sub_1BA48856C, MEMORY[0x1E697CD20]);
  v22 = MEMORY[0x1E697C750];
  sub_1BA4A6018();
  (*(v3 + 8))(v7, v2);
  (*(v10 + 8))(v14, v9);
  sub_1BA4A57F8();
  v31 = v9;
  v32 = v2;
  v33 = v21;
  v34 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_1BA4A5F48();

  return (*(v27 + 8))(v19, v23);
}

void sub_1BA48856C(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF33C8)
  {
    sub_1BA48861C(255);
    sub_1BA4886D8(&qword_1EBBF33D8, sub_1BA48861C, sub_1BA3B0BA4);
    v2 = sub_1BA4A5D98();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF33C8);
    }
  }
}

void sub_1BA48861C(uint64_t a1)
{
  if (!qword_1EBBF33D0)
  {
    sub_1BA487BB4(255, &qword_1EBBE99A8, type metadata accessor for InternalSettingsFeatureStateModel, MEMORY[0x1E69E62F8]);
    sub_1BA487C18();
    v1 = sub_1BA4A6318();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF33D0);
    }
  }
}

uint64_t sub_1BA4886D8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA488754(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF33E0)
  {
    sub_1BA48856C(255, a2);
    sub_1BA4A5938();
    sub_1BA487E8C(&qword_1EBBF33E8, sub_1BA48856C, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF33E0);
    }
  }
}

void sub_1BA488830(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 PluginDeepLinkRouter.__allocating_init(viewControllerRouter:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = swift_allocObject();
  result = *a1;
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 48) = v2;
  return result;
}

Swift::Void __swiftcall PluginDeepLinkRouter.launchPluginForSharingActivity(activity:)(NSUserActivity activity)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - v10;
  v12 = sub_1BA4A35D8();
  v13 = *(v12 - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v12, v14).n128_u64[0];
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [(objc_class *)activity.super.isa userInfo];
  if (!v18)
  {
    v51 = 0u;
    v52 = 0u;
    goto LABEL_11;
  }

  isa = activity.super.isa;
  v49 = v1;
  v50 = v11;
  v19 = v3;
  v20 = v18;
  v21 = sub_1BA4A6628();

  (*(v13 + 104))(v17, *MEMORY[0x1E69A2B78], v12);
  v22 = sub_1BA4A35C8();
  v24 = v23;
  (*(v13 + 8))(v17, v12);
  v56 = v22;
  v57 = v24;
  sub_1BA4A7D58();
  if (!*(v21 + 16) || (v25 = sub_1B9FDA8E4(&v54), (v26 & 1) == 0))
  {

    sub_1B9FDC768(&v54);
    v51 = 0u;
    v52 = 0u;
    v3 = v19;
    goto LABEL_11;
  }

  sub_1B9F0AD9C(*(v21 + 56) + 32 * v25, &v51);
  sub_1B9FDC768(&v54);

  v3 = v19;
  if (!*(&v52 + 1))
  {
LABEL_11:
    sub_1B9F23224(&v51);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_1BA4A3E08();
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1B9F07000, v38, v39, "UserActivity is missing plugin bundle name", v40, 2u);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return;
  }

  v28 = v54;
  v27 = v55;
  if (sub_1B9F119F8(v54, v55))
  {
    swift_getObjectType();
    v29 = swift_conformsToProtocol2();
    if (v29)
    {
      v30 = v29;

      v31 = v49[2];
      v32 = v49[3];
      v33 = v49[6];
      ObjectType = swift_getObjectType();
      v54 = v31;
      v35 = *(v33 + 24);
      v50 = v31;
      v36 = v35(ObjectType, v33);
      v37 = swift_getObjectType();
      sub_1BA489AEC(v36, &v54);
      *(&v52 + 1) = ObjectType;
      v53 = v32;
      *&v51 = v50;
      (*(v30 + 16))(isa, &v54, &v51, v37, v30);
      swift_unknownObjectRelease();

      sub_1BA489E8C(&v54);
      __swift_destroy_boxed_opaque_existential_1(&v51);
      return;
    }

    swift_unknownObjectRelease();
  }

  v41 = v50;
  sub_1BA4A3E08();

  v42 = sub_1BA4A3E88();
  v43 = sub_1BA4A6F88();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v54 = v45;
    *v44 = 136446210;
    v46 = sub_1B9F0B82C(v28, v27, &v54);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_1B9F07000, v42, v43, "%{public}s does not conform to PluginNSUADelegate", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1BFAF43A0](v45, -1, -1);
    MEMORY[0x1BFAF43A0](v44, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v41, v3);
}

uint64_t PluginDeepLinkRouter.launchPluginFromURL(_:pluginType:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v35 = a1;
  v37 = sub_1BA4A35A8();
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3588();
  if (sub_1B9F119F8(v14, v15) && (swift_getObjectType(), (v16 = swift_conformsToProtocol2()) != 0))
  {
    v17 = v16;

    v18 = v4[2];
    v37 = v4[3];
    v19 = v4[6];
    ObjectType = swift_getObjectType();
    v39[0] = v18;
    v21 = *(v19 + 24);
    v22 = v18;
    v23 = v21(ObjectType, v19);
    v24 = swift_getObjectType();
    sub_1BA489AEC(v23, v39);
    v38[3] = ObjectType;
    v38[4] = v37;
    v38[0] = v22;
    (*(v17 + 16))(v35, v39, v38, v24, v17);
    swift_unknownObjectRelease();

    sub_1BA489E8C(v39);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1BA4A3E08();
    v26 = v37;
    (*(v6 + 16))(v9, a2, v37);
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6F88();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39[0] = v30;
      *v29 = 136446210;
      v31 = sub_1BA4A3588();
      v35 = v10;
      v33 = v32;
      (*(v6 + 8))(v9, v37);
      v34 = sub_1B9F0B82C(v31, v33, v39);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1B9F07000, v27, v28, "launchPluginFromURL - %{public}s does not conform to PluginURLDelegate", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);

      return (*(v36 + 8))(v13, v35);
    }

    else
    {

      (*(v6 + 8))(v9, v26);
      return (*(v36 + 8))(v13, v10);
    }
  }
}

Swift::Void __swiftcall PluginDeepLinkRouter.launchPluginFromNSUA(activity:)(NSUserActivity activity)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - v10;
  v12 = sub_1BA4A35D8();
  v13 = *(v12 - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v12, v14).n128_u64[0];
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [(objc_class *)activity.super.isa userInfo];
  if (!v18)
  {
    v51 = 0u;
    v52 = 0u;
    goto LABEL_11;
  }

  isa = activity.super.isa;
  v49 = v1;
  v50 = v11;
  v19 = v3;
  v20 = v18;
  v21 = sub_1BA4A6628();

  (*(v13 + 104))(v17, *MEMORY[0x1E69A2B78], v12);
  v22 = sub_1BA4A35C8();
  v24 = v23;
  (*(v13 + 8))(v17, v12);
  v56 = v22;
  v57 = v24;
  sub_1BA4A7D58();
  if (!*(v21 + 16) || (v25 = sub_1B9FDA8E4(&v54), (v26 & 1) == 0))
  {

    sub_1B9FDC768(&v54);
    v51 = 0u;
    v52 = 0u;
    v3 = v19;
    goto LABEL_11;
  }

  sub_1B9F0AD9C(*(v21 + 56) + 32 * v25, &v51);
  sub_1B9FDC768(&v54);

  v3 = v19;
  if (!*(&v52 + 1))
  {
LABEL_11:
    sub_1B9F23224(&v51);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v28 = v54;
    v27 = v55;
    if (sub_1B9F119F8(v54, v55) && (swift_getObjectType(), (v29 = swift_conformsToProtocol2()) != 0))
    {
      v30 = v29;

      v31 = v49[2];
      v32 = v49[3];
      v33 = v49[6];
      ObjectType = swift_getObjectType();
      v54 = v31;
      v35 = *(v33 + 24);
      v50 = v31;
      v36 = v35(ObjectType, v33);
      v37 = swift_getObjectType();
      sub_1BA489AEC(v36, &v54);
      *(&v52 + 1) = ObjectType;
      v53 = v32;
      *&v51 = v50;
      (*(v30 + 16))(isa, &v54, &v51, v37, v30);
      swift_unknownObjectRelease();

      sub_1BA489E8C(&v54);
      __swift_destroy_boxed_opaque_existential_1(&v51);
    }

    else
    {
      swift_unknownObjectRelease();
      v41 = v50;
      sub_1BA4A3E08();

      v42 = sub_1BA4A3E88();
      v43 = sub_1BA4A6F88();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v44 = 136446210;
        v46 = sub_1B9F0B82C(v28, v27, &v54);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_1B9F07000, v42, v43, "launchPluginFromNSUA - %{public}s does not conform to PluginURLDelegate", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1BFAF43A0](v45, -1, -1);
        MEMORY[0x1BFAF43A0](v44, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v41, v3);
    }

    return;
  }

LABEL_12:
  sub_1BA4A3E08();
  v38 = sub_1BA4A3E88();
  v39 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1B9F07000, v38, v39, "UserActivity is missing plugin bundle name", v40, 2u);
    MEMORY[0x1BFAF43A0](v40, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t PluginDeepLinkRouter.launchPluginFromWebBrowsingActivity(activity:pluginType:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v38 = a1;
  v39 = sub_1BA4A35A8();
  v6 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A3588();
  v17 = sub_1B9F119F8(v15, v16);

  if (v17)
  {
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    if (v18)
    {
      v19 = v18;
      v20 = v4[2];
      v39 = v4[3];
      v21 = v4[6];
      ObjectType = swift_getObjectType();
      v41[0] = v20;
      v23 = *(v21 + 24);
      v24 = v20;
      v25 = v23(ObjectType, v21);
      v26 = swift_getObjectType();
      sub_1BA489AEC(v25, v41);
      v40[3] = ObjectType;
      v40[4] = v39;
      v40[0] = v24;
      (*(v19 + 16))(v38, v41, v40, v26, v19);
      swift_unknownObjectRelease();

      sub_1BA489E8C(v41);
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    swift_unknownObjectRelease();
  }

  v38 = v11;
  sub_1BA4A3E08();
  v28 = v39;
  (*(v6 + 16))(v9, a2, v39);
  v29 = sub_1BA4A3E88();
  v30 = sub_1BA4A6F88();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41[0] = v32;
    *v31 = 136446210;
    v33 = sub_1BA4A3588();
    v37 = v10;
    v35 = v34;
    (*(v6 + 8))(v9, v39);
    v36 = sub_1B9F0B82C(v33, v35, v41);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1B9F07000, v29, v30, "%{public}s does not conform to PluginNSUADelegate", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v31, -1, -1);

    return (*(v38 + 8))(v14, v37);
  }

  else
  {

    (*(v6 + 8))(v9, v28);
    return (*(v38 + 8))(v14, v10);
  }
}

uint64_t PluginDeepLinkRouter.init(viewControllerRouter:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = v2;
  return v1;
}

id sub_1BA489AEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  UIViewController.availableHealthExperienceStore.getter(&v34);
  if (*(&v35 + 1))
  {
    sub_1B9F1134C(&v34, v45);
  }

  else
  {
    v5 = v2[2];
    v6 = v3[4];
    ObjectType = swift_getObjectType();
    *&v26[0] = v5;
    (*(v6 + 8))(v45, ObjectType, v6);
    if (*(&v35 + 1))
    {
      sub_1B9F43A50(&v34, &qword_1EDC6AE08, &qword_1EDC6E248, MEMORY[0x1E69A3B40]);
    }
  }

  v8 = sub_1B9F600B4();
  if (!v8)
  {
    v9 = v3[2];
    v10 = v3[5];
    v11 = swift_getObjectType();
    *&v34 = v9;
    v8 = (*(v10 + 8))(v11, v10);
  }

  v12 = v8;
  UIViewController.resolvedPinnedContentManager.getter(v44);
  sub_1B9F0A534(v45, v43);
  UIViewController.resolvedPinnedContentManager.getter(v42);
  sub_1B9F0A534(v45, v33);
  v13 = v12;
  v14 = [v13 profileIdentifier];
  LOBYTE(v34) = 15;
  LOBYTE(v12) = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v14, &v34);

  sub_1B9F0A534(v44, v32);
  sub_1B9F0A534(v33, v26);
  *(&v27 + 1) = v13;
  LOBYTE(v28) = v12;
  sub_1BA4A2488();
  swift_allocObject();
  v15 = v13;
  *(&v28 + 1) = sub_1BA4A2468();
  sub_1BA10F7B4(v32, &v24);
  if (v25)
  {

    sub_1B9F43A50(v32, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_1B9F1134C(&v24, &v34);
  }

  else
  {
    v16 = sub_1BA4A22B8();
    v17 = sub_1BA4A22A8();
    *(&v35 + 1) = v16;
    *&v36 = MEMORY[0x1E69A3CF8];
    *&v34 = v17;
    sub_1B9F43A50(v32, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    if (v25)
    {
      sub_1B9F43A50(&v24, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    }
  }

  sub_1B9F1134C(&v34, v29);
  v31 = 0;
  v41 = 0;
  v38 = v29[0];
  v39 = v29[1];
  v34 = v26[0];
  v35 = v26[1];
  v36 = v27;
  v37 = v28;
  v40 = v30;
  sub_1B9F1134C(v43, a2);
  *(a2 + 40) = v15;
  sub_1B9F1134C(v42, a2 + 48);
  v18 = v39;
  *(a2 + 152) = v38;
  *(a2 + 168) = v18;
  *(a2 + 184) = v40;
  v19 = v35;
  *(a2 + 88) = v34;
  *(a2 + 104) = v19;
  v20 = v37;
  *(a2 + 120) = v36;
  v21 = v41;
  *(a2 + 136) = v20;
  *(a2 + 200) = v21;
  *(a2 + 208) = a1;

  return a1;
}

uint64_t PluginDeepLinkRouter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of PluginDeepLinkRouter.__allocating_init(viewControllerRouter:)(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return v2(v6);
}

uint64_t sub_1BA489F68(_BYTE *a1, void *a2, uint64_t (**a3)(unint64_t, void), void *a4)
{
  if (*a1 == 1)
  {
    v4 = sub_1BA48B8DC(a3, a4);
  }

  else
  {
    if (*a1)
    {
      return 0;
    }

    v4 = sub_1BA48ADCC(a2, a3, a4);
  }

  if (v4 >> 62)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF3400, 0x1E69DCC78);

    sub_1BA4A8028();
  }

  else
  {

    sub_1BA4A8358();
    sub_1B9F0ADF8(0, &qword_1EBBF3400, 0x1E69DCC78);
  }

  sub_1B9F0ADF8(0, &qword_1EBBEDA10, 0x1E69DCC60);
  return sub_1BA4A76C8();
}

uint64_t sub_1BA48A0A0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 <= 1u)
  {
    if (*a1)
    {
      (*(a3 + 32))(v19, a2, a3);
      v13 = v20;
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v5 = (*(v14 + 16))(v13, v14);
    }

    else
    {
      (*(a3 + 32))(v19, a2, a3);
      v3 = v20;
      v4 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v5 = (*(v4 + 8))(v3, v4);
    }

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v5 & 1;
  }

  if (*a1 == 2)
  {
    v6 = *(a3 + 32);
    v6(v19, a2, a3);
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    if ((*(v10 + 24))(v9, v10))
    {
      v6(v16, a2, a3);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v5 = (*(v12 + 32))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  v5 = 1;
  return v5 & 1;
}

void sub_1BA48A278(_BYTE *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      sub_1BA48A664(a5, a6);
    }

    else
    {
      sub_1BA48A87C(a4, a5, a6);
    }
  }

  else if (*a1)
  {
    sub_1BA48A47C(a2, a3, a5, a6);
  }

  else
  {
    sub_1BA48A354(a2, a3, a4);
  }
}

HealthExperienceUI::ContactQuickActionType_optional __swiftcall ContactQuickActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1BA48A2E8()
{
  result = qword_1EBBF33F0;
  if (!qword_1EBBF33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF33F0);
  }

  return result;
}

void sub_1BA48A354(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = objc_allocWithZone(MEMORY[0x1E6973F10]);

  v10 = [v7 init];
  [v10 setMessageComposeDelegate_];
  [v10 setModalPresentationStyle_];
  sub_1B9F25350();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  v9 = sub_1BA4A6AE8();

  [v10 setRecipients_];

  if (a3)
  {
    [a3 presentViewController:v10 animated:1 completion:0];
  }
}

double sub_1BA48A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(a4 + 32);
    v6(v19, a3, a4);
    v7 = v20;
    v8 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v9 = (*(v8 + 40))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (v9)
    {
      v10 = objc_allocWithZone(MEMORY[0x1E695CF50]);
      v11 = sub_1BA4A6758();
      v12 = [v10 initWithStringValue_];

      (*(*(a4 + 8) + 8))(v12, a3);
      return result;
    }
  }

  else
  {
    v6 = *(a4 + 32);
  }

  v6(v19, a3, a4);
  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v16 = (*(v15 + 48))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v16)
  {
    v17 = (*(a4 + 40))(a3, a4);
    if (v18)
    {
      (*(*(a4 + 16) + 8))(0, v17, v18, a3);
    }
  }

  return result;
}

void sub_1BA48A664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 40))(a1, a2, v7);
  if (v11)
  {
    (*(*(a2 + 16) + 8))(1, v10, v11, a1);
  }

  else
  {
    sub_1BA4A3DD8();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = a1;
      v20 = v15;
      *v14 = 136315138;
      swift_getMetatypeMetadata();
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Cannot FaceTime because there is no known email or phone number", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }
}

void sub_1BA48A87C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(a3 + 24);
    v12 = a1;
    v21 = v11(a2, a3);
    sub_1BA48AA9C(v21);

    v13 = v21;
  }

  else
  {
    sub_1BA4A3E28();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Presenting view controller not found", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

void sub_1BA48AA9C(void *a1)
{
  swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() authorizationStatusForEntityType_];
  if ((v8 - 1) < 2)
  {

    sub_1BA48C510();
  }

  else if ((v8 - 3) >= 2)
  {
    if (v8)
    {
      sub_1BA4A3DD8();
      v14 = sub_1BA4A3E88();
      v15 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446210;
        v18 = sub_1BA4A85D8();
        v20 = sub_1B9F0B82C(v18, v19, aBlock);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1B9F07000, v14, v15, "[%{public}s]: Unknown authorization status, showing access required alert.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1BFAF43A0](v17, -1, -1);
        MEMORY[0x1BFAF43A0](v16, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
      sub_1BA48C510();
    }

    else
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      *(v10 + 24) = a1;
      aBlock[4] = sub_1BA48CF08;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA454240;
      aBlock[3] = &block_descriptor_127;
      v11 = _Block_copy(aBlock);
      v12 = v1;
      v13 = a1;

      [v9 requestAccessForEntityType:0 completionHandler:v11];
      _Block_release(v11);
    }
  }

  else
  {

    sub_1BA48C844(a1);
  }
}

uint64_t sub_1BA48ADCC(void *a1, _DWORD *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v113 - v23;
  if (![objc_opt_self() canSendText])
  {
    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v8;
      v38 = swift_slowAlloc();
      v123[0] = v38;
      *v36 = 136315138;
      v120[0] = v4;
      swift_unknownObjectRetain();
      v39 = sub_1BA4A6828();
      v41 = sub_1B9F0B82C(v39, v40, v123);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1B9F07000, v34, v35, "%s: MFMessageComposeViewController is not in the state to send text", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);

      (*(v9 + 8))(v12, v37);
      return MEMORY[0x1E69E7CC0];
    }

    v42 = *(v9 + 8);
    v43 = v12;
LABEL_13:
    v42(v43, v8);
    return MEMORY[0x1E69E7CC0];
  }

  if (!a1)
  {
    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v44 = sub_1BA4A3E88();
    v45 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v8;
      v48 = swift_slowAlloc();
      v123[0] = v48;
      *v46 = 136315138;
      v120[0] = v4;
      swift_unknownObjectRetain();
      v49 = sub_1BA4A6828();
      v51 = sub_1B9F0B82C(v49, v50, v123);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1B9F07000, v44, v45, "%s: presentingViewController is nil so cannot send text", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1BFAF43A0](v48, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);

      (*(v9 + 8))(v16, v47);
      return MEMORY[0x1E69E7CC0];
    }

    v42 = *(v9 + 8);
    v43 = v16;
    goto LABEL_13;
  }

  v117 = v8;
  v126[0] = MEMORY[0x1E69E7CC8];
  v25 = a3[4];
  v114 = a1;
  v115 = v25;
  v25(v123, a2, a3);
  v26 = a2;
  v27 = v124;
  v28 = v125;
  __swift_project_boxed_opaque_existential_1(v123, v124);
  v29 = (*(v28 + 56))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v123);
  v118 = a3;
  v119 = v26;
  if (v29)
  {
    v30 = (a3[3])(v26, a3);
    v31 = [v30 phoneNumbers];

    sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
    v32 = sub_1BA4A6B08();

    sub_1BA2777D8(v32, v126);
    v116 = 0;

    v33 = v26;
  }

  else
  {
    sub_1BA4A3E28();
    v52 = sub_1BA4A3E88();
    v53 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v113 = v54;
      v116 = swift_slowAlloc();
      v123[0] = v116;
      *v54 = 136315138;
      v55 = v119;
      v56 = sub_1BA4A85D8();
      v58 = sub_1B9F0B82C(v56, v57, v123);

      v59 = v113;
      *(v113 + 1) = v58;
      a3 = v118;
      v60 = v53;
      v33 = v55;
      _os_log_impl(&dword_1B9F07000, v52, v60, "[%s] SMS is not available", v59, 0xCu);
      v61 = v116;
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v59, -1, -1);

      (*(v9 + 8))(v24, v117);
      v116 = 0;
    }

    else
    {

      (*(v9 + 8))(v24, v117);
      v116 = 0;
      v33 = v119;
    }
  }

  v63 = v115;
  v115(v123, v33, a3);
  v64 = a3;
  v65 = v124;
  v66 = v125;
  __swift_project_boxed_opaque_existential_1(v123, v124);
  if (((*(v66 + 8))(v65, v66) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v123);
    goto LABEL_21;
  }

  v63(v120, v33, v64);
  v67 = v121;
  v68 = v122;
  __swift_project_boxed_opaque_existential_1(v120, v121);
  LOBYTE(v67) = (*(v68 + 64))(v67, v68);
  __swift_destroy_boxed_opaque_existential_1(v120);
  __swift_destroy_boxed_opaque_existential_1(v123);
  if ((v67 & 1) == 0)
  {
LABEL_21:
    sub_1BA4A3E28();
    v75 = sub_1BA4A3E88();
    v76 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v123[0] = v78;
      *v77 = 136315138;
      v79 = v4;
      v80 = v119;
      v81 = sub_1BA4A85D8();
      v83 = sub_1B9F0B82C(v81, v82, v123);

      *(v77 + 4) = v83;
      v84 = v76;
      v33 = v80;
      v4 = v79;
      _os_log_impl(&dword_1B9F07000, v75, v84, "[%s] iMessage is not available", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1BFAF43A0](v78, -1, -1);
      MEMORY[0x1BFAF43A0](v77, -1, -1);

      v85 = (*(v9 + 8))(v20, v117);
    }

    else
    {

      v85 = (*(v9 + 8))(v20, v117);
      v33 = v119;
    }

    v74 = v114;
    goto LABEL_47;
  }

  v69 = v118;
  v63(v123, v33, v118);
  v70 = v124;
  v71 = v125;
  __swift_project_boxed_opaque_existential_1(v123, v124);
  LOBYTE(v70) = (*(v71 + 56))(v70, v71);
  __swift_destroy_boxed_opaque_existential_1(v123);
  v72 = v69;
  v73 = v69[3];
  if ((v70 & 1) == 0)
  {
    v117 = v69[3];
    v87 = v73(v33, v69);
    v88 = [v87 phoneNumbers];

    sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
    v89 = sub_1BA4A6B08();

    if (v89 >> 62)
    {
LABEL_43:
      v90 = sub_1BA4A7CC8();
      if (v90)
      {
LABEL_27:
        v91 = 0;
        while (1)
        {
          if ((v89 & 0xC000000000000001) != 0)
          {
            v92 = MEMORY[0x1BFAF2860](v91, v89);
          }

          else
          {
            if (v91 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v92 = *(v89 + 8 * v91 + 32);
          }

          v93 = v92;
          v33 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v123[0] = v92;
          if (sub_1BA48C2DC(v123, v4, v119, v118))
          {
            break;
          }

          ++v91;
          v94 = v33 == v90;
          v33 = v119;
          if (v94)
          {
            goto LABEL_44;
          }
        }

        v95 = [v93 label];
        if (v95)
        {
          v96 = v95;
          v97 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v99 = v98;
        }

        else
        {
          v97 = 0;
          v99 = 0xE000000000000000;
        }

        v33 = v119;
        v100 = [v93 value];
        v101 = [v100 stringValue];

        v102 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v104 = v103;

        v105 = v126[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123[0] = v105;
        sub_1B9F248E4(v102, v104, v97, v99, isUniquelyReferenced_nonNull_native);

        v126[0] = v123[0];
        goto LABEL_45;
      }
    }

    else
    {
      v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v90)
      {
        goto LABEL_27;
      }
    }

LABEL_44:

LABEL_45:
    v73 = v117;
    v72 = v118;
    v74 = v114;
    goto LABEL_46;
  }

  v74 = v114;
LABEL_46:
  v107 = v73(v33, v72);
  v108 = [v107 emailAddresses];

  sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
  v109 = sub_1BA4A6B08();

  sub_1BA277B1C(v109, v126);

LABEL_47:
  v110 = v126[0];
  MEMORY[0x1EEE9AC00](v85, v86);
  v111 = v118;
  *(&v113 - 4) = v33;
  *(&v113 - 3) = v111;
  *(&v113 - 2) = v4;
  *(&v113 - 1) = v74;
  v112 = sub_1BA27A22C(v110, sub_1BA48CF40);

  return v112;
}

uint64_t sub_1BA48B8DC(uint64_t (**a1)(unint64_t, void), void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v53 - v12;
  LOBYTE(v64[0]) = 1;
  v61 = sub_1BA3BFC74();
  v14 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  v56 = a2[4];
  v57 = a2 + 4;
  v56(v64, a1, a2);
  v15 = v65;
  v16 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v17 = (*(v16 + 40))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v64);
  if (v17)
  {
    v54 = v7;
    v18 = (a2[3])(a1, a2);
    v19 = [v18 phoneNumbers];

    sub_1B9F0ADF8(0, &unk_1EBBEE300, 0x1E695CEE0);
    v20 = sub_1BA4A6B08();

    if (v20 >> 62)
    {
      goto LABEL_18;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      while (1)
      {
        v60 = v20;
        v64[0] = v14;
        v20 = v64;
        sub_1BA4A7F08();
        if (v21 < 0)
        {
          break;
        }

        v16 = v3;
        v3 = a1;
        v53 = v6;
        v15 = 0;
        v19 = 0;
        v22 = v60;
        v6 = v60 & 0xC000000000000001;
        v58 = v60 & 0xFFFFFFFFFFFFFF8;
        v59 = a2;
        while (1)
        {
          a2 = (v15 + 1);
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v6)
          {
            v23 = MEMORY[0x1BFAF2860](v15);
          }

          else
          {
            if (v15 >= *(v58 + 16))
            {
              goto LABEL_17;
            }

            v23 = *(v22 + 8 * v15 + 32);
          }

          v24 = v23;
          v62 = v23;
          sub_1BA48C084(&v62, v61, v16, v3, v59, &v63);

          a1 = v63;
          v20 = v64;
          sub_1BA4A7ED8();
          v14 = *(v64[0] + 16);
          sub_1BA4A7F18();
          sub_1BA4A7F28();
          sub_1BA4A7EE8();
          ++v15;
          v22 = v60;
          if (a2 == v21)
          {

            v25 = v64[0];
            v67 = v64[0];
            v6 = v53;
            v7 = v54;
            a1 = v3;
            v3 = v16;
            a2 = v59;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v21 = sub_1BA4A7CC8();
        if (!v21)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_19:

    v25 = MEMORY[0x1E69E7CC0];
    v67 = MEMORY[0x1E69E7CC0];
    v7 = v54;
  }

  else
  {
    sub_1BA4A3E28();
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v64[0] = v59;
      *v28 = 136315138;
      v29 = sub_1BA4A85D8();
      v60 = a1;
      v31 = v6;
      v32 = a2;
      v33 = v3;
      v34 = v7;
      v35 = sub_1B9F0B82C(v29, v30, v64);
      a1 = v60;

      *(v28 + 4) = v35;
      v7 = v34;
      v3 = v33;
      a2 = v32;
      v6 = v31;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] cellular is not available", v28, 0xCu);
      v36 = v59;
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    v25 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:
  v56(v64, a1, a2);
  v37 = v65;
  v38 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  LOBYTE(v37) = (*(v38 + 48))(v37, v38);
  __swift_destroy_boxed_opaque_existential_1(v64);
  if (v37)
  {
    v39 = (a2[5])(a1, a2);
    if (v40)
    {
      v15 = v39;
      v16 = v40;
      v19 = a1;
      sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);
      if (qword_1EDC5E100 == -1)
      {
LABEL_23:
        sub_1BA4A1318();
        v41 = swift_allocObject();
        v41[2] = v19;
        v41[3] = a2;
        v41[4] = v3;
        v41[5] = v15;
        v41[6] = v16;
        v42 = v61;
        swift_unknownObjectRetain();
        v43 = sub_1BA4A77E8();
        MEMORY[0x1BFAF1510]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();

        return v67;
      }

LABEL_32:
      swift_once();
      goto LABEL_23;
    }
  }

  v44 = v55;
  sub_1BA4A3E28();
  v45 = sub_1BA4A3E88();
  v46 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v64[0] = v48;
    *v47 = 136315138;
    v49 = sub_1BA4A85D8();
    v51 = sub_1B9F0B82C(v49, v50, v64);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_1B9F07000, v45, v46, "[%s] FaceTime audio is not available", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1BFAF43A0](v48, -1, -1);
    MEMORY[0x1BFAF43A0](v47, -1, -1);
  }

  (*(v7 + 8))(v44, v6);
  return v25;
}

uint64_t sub_1BA48C084@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *a1;
  v9 = [*a1 label];
  if (v9)
  {
    v10 = v9;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v11 = objc_opt_self();

    v12 = sub_1BA4A6758();
    v13 = [v11 localizedStringForLabel_];

    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    swift_bridgeObjectRelease_n();
  }

  sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);
  v14 = a2;
  v15 = [v8 value];
  v16 = [v15 stringValue];

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a3;
  v17[5] = v8;
  swift_unknownObjectRetain();
  v18 = v8;
  result = sub_1BA4A77E8();
  *a6 = result;
  return result;
}

void sub_1BA48C268(int a1, int a2, id a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 value];
  (*(*(a5 + 8) + 8))();
}

uint64_t sub_1BA48C2DC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*a1 value];
  v7 = [v6 stringValue];

  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;

  v11 = (*(a4 + 40))(a3, a4);
  if (v12)
  {
    if (v8 == v11 && v12 == v10)
    {

      return 1;
    }

    else
    {
      v14 = sub_1BA4A8338();

      return v14 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1BA48C3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);

  sub_1BA3BFC74();
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a5;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a6;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  v15 = a6;
  return sub_1BA4A77E8();
}

void sub_1BA48C510()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A1318();
  sub_1BA4A1318();
  sub_1BA4A1318();
  v1 = sub_1BA4A6758();

  v2 = sub_1BA4A6758();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{1, 0xE000000000000000}];

  v4 = sub_1BA4A6758();

  aBlock[4] = sub_1BA48CA10;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_13_2;
  v5 = _Block_copy(aBlock);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];
  _Block_release(v5);

  v8 = sub_1BA4A6758();

  v9 = [v6 actionWithTitle:v8 style:0 handler:0];

  [v3 addAction_];
  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_1BA48C844(void *a1)
{
  v2 = v1;
  v4 = [a1 hasBeenPersisted];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 viewControllerForContact_];
  }

  else
  {
    v7 = [v5 viewControllerForUnknownContact_];
    v8 = swift_dynamicCastObjCProtocolConditional();
    v6 = v7;
    [v6 setDelegate_];
    sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
    v9 = sub_1BA4A7068();
    [v6 setContactStore_];
  }

  [v6 setAllowsEditing_];
  v10 = [v6 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v2 action:sel_dismissContactViewController];
  [v10 setRightBarButtonItem_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v2 presentViewController:v12 animated:1 completion:0];
}

id sub_1BA48CA10()
{
  sub_1B9F0AB34(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v17 - v6;
  v8 = [objc_opt_self() internalPrivacySettingsURLString];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  v17[0] = v9;
  v17[1] = v11;
  MEMORY[0x1BFAF1350](0x544341544E4F432FLL, 0xE900000000000053);
  sub_1BA4A15C8();

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;
    sub_1BA3331A4(v7, v3);
    v14 = sub_1BA4A15D8();
    v15 = *(v14 - 8);
    v16 = 0;
    if ((*(v15 + 48))(v3, 1, v14) != 1)
    {
      v16 = sub_1BA4A1548();
      (*(v15 + 8))(v3, v14);
    }

    [v13 openSensitiveURL:v16 withOptions:0];

    return sub_1BA0B17A4(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA48CC2C(char a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1BA4A6478();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A64C8();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v16 = sub_1BA4A7308();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  aBlock[4] = sub_1BA48CF10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_10_0;
  v18 = _Block_copy(aBlock);
  v19 = a3;
  v20 = a4;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0AB34(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v15, v11, v18);
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v23);
}

void sub_1BA48CF10()
{
  if (*(v0 + 16) == 1)
  {
    sub_1BA48C844(*(v0 + 32));
  }
}

uint64_t sub_1BA48CF4C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = 0;
  return (*(v2 + 48))(&v7, v3, v4, v5, v1);
}

void sub_1BA48D00C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA48D06C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA48D0C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA48D178(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  return [*(v3 + v5) setHidden_];
}

uint64_t sub_1BA48D1FC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1BA48D240(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
  swift_beginAccess();
  return [*(v1 + v4) setHidden_];
}

uint64_t (*sub_1BA48D2C4(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA48D34C;
}

void sub_1BA48D34C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView;
    swift_beginAccess();
    [*(v5 + v6) setHidden_];
  }

  free(v3);
}

id CameraScannerTextOverlayViewController.init(titleText:automationIdentifierPrefix:overlayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = *(a5 + 8);
  v5[OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground] = 1;
  v10 = &v5[OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_titleText];
  *v10 = a1;
  v10[1] = a2;
  v19 = v8;
  LOBYTE(v20) = v9;

  CameraScannerOverlayMode.createView()(v11);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_overlayView] = v12;
  v13 = &v5[OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_automationIdentifierPrefix];
  *v13 = a3;
  v13[1] = a4;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for CameraScannerTextOverlayViewController();

  v14 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  result = [v14 view];
  if (result)
  {
    v16 = result;

    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    [v14 setOverrideUserInterfaceStyle_];
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA48D70C()
{
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_titleText);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_titleText + 8);
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_automationIdentifierPrefix);
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_automationIdentifierPrefix + 8);
  v5 = type metadata accessor for CameraScannerOverlayContentView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___titleLabel] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___detailLabel] = 0;
  v7 = &v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_title];
  *v7 = v2;
  *(v7 + 1) = v1;
  v8 = &v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detail];
  *v8 = v2;
  *(v8 + 1) = v1;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detailMaxNumberOfLines] = 0;
  v9 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  swift_bridgeObjectRetain_n();

  v10 = [v9 init];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView] = v10;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerHeight] = 0;
  v11 = &v6[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix];
  *v11 = v4;
  *(v11 + 1) = v3;
  v54.receiver = v6;
  v54.super_class = v5;
  v12 = objc_msgSendSuper2(&v54, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1B9F109F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B8B60;
  v51 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView;
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView];
  *(inited + 32) = v14;
  v52 = v12;
  v15 = v12;
  v16 = v14;
  *(inited + 40) = sub_1BA2DE928();
  *(inited + 48) = sub_1BA2DEB5C();
  v17 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView;
  v18 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1BFAF2860](0, inited))
  {
    v20 = i;
    v21 = sub_1BA2DE850();
    [v21 addArrangedSubview_];

    [v20 hk:*&v15[v17] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v18)
    {
      v22 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_13;
      }

      v22 = *(inited + 40);
    }

    v23 = v22;
    v24 = sub_1BA2DE850();
    [v24 addArrangedSubview_];

    [v23 hk:*&v15[v17] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v18)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v25 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v25 = MEMORY[0x1BFAF2860](2, inited);
LABEL_10:
  v26 = v25;
  v27 = sub_1BA2DE850();
  [v27 addArrangedSubview_];

  [v26 hk:*&v15[v17] alignHorizontalConstraintsWithView:0.0 margin:?];
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = v15;
  v29 = sub_1BA2DE850();
  [v28 addSubview_];

  v50 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5880;
  v31 = [*&v52[v51] heightAnchor];
  v32 = [v31 constraintEqualToConstant_];

  *(v30 + 32) = v32;
  v33 = [*&v15[v17] leadingAnchor];
  v34 = [v28 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v30 + 40) = v35;
  v36 = [*&v15[v17] trailingAnchor];
  v37 = [v28 trailingAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v30 + 48) = v38;
  v39 = [*&v15[v17] topAnchor];
  v40 = [v28 topAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v30 + 56) = v41;
  v42 = [v28 heightAnchor];

  v43 = [*&v15[v17] heightAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v30 + 64) = v44;
  sub_1B9F740B0();
  v45 = sub_1BA4A6AE8();

  [v50 activateConstraints_];

  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v46 = [v53 view];
  if (v46)
  {
    v47 = v46;
    [v46 addSubview_];

    v48 = [v53 view];
    if (v48)
    {
      v49 = v48;
      [v48 hk:v28 alignConstraintsWithView:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id CameraScannerTextOverlayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CameraScannerTextOverlayViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerTextOverlayViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA48DEDC(uint64_t *a1))(void *a1, char a2)
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
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA48D34C;
}

Swift::Void __swiftcall FavoritableDisplayingConsuming.updateCellAndFavoritesStateFromUserInteractionWithAlert(_:in:)(UIView *_, UIViewController *in)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1BA4A2458();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedBehavior];
  if (v13)
  {
    v14 = v13;
    v34 = in;
    v15 = [v13 features];

    if (v15)
    {
      v16 = [v15 simplifiedLogging];

      if (v16)
      {
        FavoritableDisplayingConsuming.favoritesItem.getter(v5, v4, v36);
        v17 = v37;
        v18 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        (*(v18 + 32))(v35, v17, v18);
        __swift_project_boxed_opaque_existential_1(v35, v35[3]);
        v19 = sub_1BA4A2368();
        if (v19)
        {
          v20 = v19;
          v21 = sub_1BA4A0E68();

          v22 = *(v21 + 16);

          __swift_destroy_boxed_opaque_existential_1(v35);
          __swift_destroy_boxed_opaque_existential_1(v36);
          if (v22 == 1)
          {
            FavoritableDisplayingConsuming.favoritesItem.getter(v5, v4, v36);
            v23 = v37;
            v24 = v38;
            __swift_project_boxed_opaque_existential_1(v36, v37);
            LOBYTE(v23) = (*(v24 + 48))(v23, v24);
            __swift_destroy_boxed_opaque_existential_1(v36);
            if (v23)
            {
              FavoritableDisplayingConsuming.favoritesItem.getter(v5, v4, v36);
              v25 = v37;
              v26 = v38;
              __swift_project_boxed_opaque_existential_1(v36, v37);
              v33 = (*(v26 + 24))(v25, v26);
              v28 = v27;
              (*(v9 + 104))(v12, *MEMORY[0x1E69A3DA8], v8);
              v29 = sub_1BA4A2448();
              v31 = v30;
              (*(v9 + 8))(v12, v8);
              if (v33 == v29 && v28 == v31)
              {

                __swift_destroy_boxed_opaque_existential_1(v36);
LABEL_13:
                FavoritableDisplayingConsuming.presentQuickLogAlert(on:sender:)(v34, _, v5, v4);
                return;
              }

              v32 = sub_1BA4A8338();

              __swift_destroy_boxed_opaque_existential_1(v36);
              if (v32)
              {
                goto LABEL_13;
              }
            }
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v35);
          __swift_destroy_boxed_opaque_existential_1(v36);
        }
      }

      FavoritableDisplayingConsuming.updateCellAndFavoritesStateFromUserInteraction()();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t FavoritableDisplayingConsuming.favoritesItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 + 8);
  v6(v9, a1, v5);
  if (v9[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        return sub_1B9F1134C(&v10, a3);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1B9F43A50(&v10, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  v9[0] = 0xD00000000000001BLL;
  v9[1] = 0x80000001BA4E24D0;
  v6(&v10, a1, v5);
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v8 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v8);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

Swift::Void __swiftcall FavoritableDisplayingConsuming.updateCellAndFavoritesStateFromUserInteraction()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  FavoritableDisplayingConsuming.favoritesItem.getter(v4, v3, v49);
  v11 = v50;
  v10 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  LODWORD(v11) = (*(v10 + 48))(v11, v10);
  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_1BA4A3DD8();
  v12 = v2;
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = v11;
    v16 = v3;
    v43 = v5;
    v17 = v15;
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v17 = 136446979;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, v48);

    *(v17 + 4) = v20;
    HIDWORD(v41) = v14;
    *(v17 + 12) = 2080;
    FavoritableDisplayingConsuming.favoritesItem.getter(v4, v16, v49);
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v21 = sub_1BA4A2D58();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v49);
    v24 = sub_1B9F0B82C(v21, v23, v48);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    v25 = v16;
    FavoritableDisplayingConsuming.favoritesItem.getter(v4, v16, v49);
    v26 = v50;
    v11 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v27 = *(v11 + 24);
    v28 = v11;
    LOBYTE(v11) = v44;
    v29 = v27(v26, v28);
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_1(v49);
    v32 = sub_1B9F0B82C(v29, v31, v48);

    *(v17 + 24) = v32;
    *(v17 + 32) = 2081;
    if (v11)
    {
      v33 = 0x65736C6166;
    }

    else
    {
      v33 = 1702195828;
    }

    if (v11)
    {
      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    v35 = sub_1B9F0B82C(v33, v34, v48);

    *(v17 + 34) = v35;
    _os_log_impl(&dword_1B9F07000, v13, BYTE4(v41), "[%{public}s] User tapped on %s, in domain %s, changing isFavorite to: %{private}s", v17, 0x2Au);
    v36 = v42;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v36, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    (*(v6 + 8))(v9, v43);
  }

  else
  {
    v25 = v3;

    (*(v6 + 8))(v9, v5);
  }

  FavoritableDisplayingConsuming.favoritesItem.getter(v4, v25, v49);
  v37 = v50;
  v38 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v38 + 32))(v48, v37, v38);
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  FavoritableDisplayingConsuming.favoritesItem.getter(v4, v25, v45);
  v39 = v46;
  v40 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  (*(v40 + 16))(v39, v40);
  if (v11)
  {
    sub_1BA4A2378();
  }

  else
  {
    sub_1BA4A2348();
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
}

void FavoritableDisplayingConsuming.presentQuickLogAlert(on:sender:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v7;

  v9 = sub_1BA4A6758();

  aBlock[4] = sub_1BA48F0F0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_128;
  v10 = _Block_copy(aBlock);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:2 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  sub_1BA4A1318();
  v13 = sub_1BA4A6758();

  v14 = [v11 actionWithTitle:v13 style:1 handler:{0, 0xE000000000000000}];

  sub_1BA4A1318();
  sub_1BA4A1318();
  v15 = sub_1BA4A6758();

  v16 = sub_1BA4A6758();

  v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:{0, 0xE000000000000000}];

  v18 = [v17 popoverPresentationController];
  [v18 setSourceItem_];

  [v17 addAction_];
  [v17 addAction_];
  [a1 presentViewController:v17 animated:1 completion:0];
}

void sub_1BA48EF38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    FavoritableDisplayingConsuming.handleQuickLogAlertContinueTapped()();
  }
}

Swift::Void __swiftcall FavoritableDisplayingConsuming.handleQuickLogAlertContinueTapped()()
{
  v3 = v1;
  v4 = v0;
  FavoritableDisplayingConsuming.favoritesItem.getter(v0, v1, v15);
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v6 + 32))(v14, v5, v6);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  FavoritableDisplayingConsuming.favoritesItem.getter(v4, v3, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v8 + 16))(v7, v8);
  sub_1BA4A2378();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  v9 = [v2 viewController];
  if (v9)
  {
    v10 = v9;
    [v9 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t PromotionFeatureStatusFeedItemProvider.makeDismissalStateManager(context:)@<X0>(void *a3@<X8>)
{
  sub_1BA4A1F58();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1BA4A1F48();
  v4 = sub_1BA4A2498();
  v6 = v5;
  v7 = type metadata accessor for BasicPromotionDismissalStateManager();
  v8 = swift_allocObject();
  sub_1BA4A2438();
  swift_allocObject();
  v8[2] = sub_1BA4A2408();
  v8[3] = v4;
  v8[4] = v6;
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  a3[3] = v7;
  a3[4] = &protocol witness table for BasicPromotionDismissalStateManager;
  *a3 = v8;
  return result;
}

uint64_t PromotionFeatureStatusFeedItemProvider.customizedFeedItem(for:featureStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A1F38();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t PromotionFeatureStatusFeedItemProvider.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A3C00];
  v3 = sub_1BA4A1C68();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PromotionFeatureStatusFeedItemProvider.makeFeedItemPublisher(context:featureStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  sub_1BA48FA8C(0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA48FB24(0);
  v50 = v10;
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2906B8(0);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v46 - v18;
  v56 = sub_1BA4A1F38();
  v20 = *(v56 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v56, v22);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v61 = &v46 - v25;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v26 = sub_1BA4A7AA8();
  v59 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v46 - v29;
  v31 = v63;
  (*(a4 + 56))(a2, a3, a4, v28);
  v49 = a3;
  v65 = a3;
  v66 = a4;
  v32 = v57;
  v67 = v31;
  v68 = v57;
  v69 = a2;
  v33 = v56;
  v60 = v26;
  v58 = v30;
  sub_1B9F4F700(sub_1BA48FBD0, v64, MEMORY[0x1E69E73E0], v56, v34, v19);
  if ((*(v20 + 48))(v19, 1, v33) == 1)
  {
    sub_1BA48FC0C(v19);
    (*(v20 + 56))(v48, 1, 1, v33);
    v35 = v51;
    sub_1BA4A4E78();
    sub_1BA48FC68(&qword_1EDC5F450, sub_1BA48FA8C, MEMORY[0x1E695C008]);
    v36 = v53;
    v37 = sub_1BA4A4F98();
    (*(v52 + 8))(v35, v36);
  }

  else
  {
    v38 = *(v20 + 32);
    v39 = v61;
    v38(v61, v19, v33);
    v63 = sub_1BA490430(v32, v49, a4);
    v70 = v63;
    v40 = v47;
    (*(v20 + 16))(v47, v39, v33);
    v41 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v42 = swift_allocObject();
    v38((v42 + v41), v40, v33);
    sub_1BA18779C();
    sub_1BA48FC68(&qword_1EDC5F4A8, sub_1BA18779C, MEMORY[0x1E695BED8]);
    v43 = v54;
    sub_1BA4A4FE8();

    sub_1BA48FC68(&qword_1EDC5F678, sub_1BA48FB24, MEMORY[0x1E695BD60]);
    v44 = v50;
    v37 = sub_1BA4A4F98();
    (*(v55 + 8))(v43, v44);
    (*(v20 + 8))(v61, v33);
  }

  (*(v59 + 8))(v58, v60);
  return v37;
}

void sub_1BA48FAC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA48FB24(uint64_t a1)
{
  if (!qword_1EDC5F670)
  {
    sub_1BA18779C();
    sub_1BA2906B8(255);
    sub_1BA48FC68(&qword_1EDC5F4A8, sub_1BA18779C, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F670);
    }
  }
}

uint64_t sub_1BA48FC0C(uint64_t a1)
{
  sub_1BA2906B8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA48FC68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA48FCB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a6;
  v58 = a3;
  v66 = a2;
  v9 = sub_1BA4A1C68();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v69 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v65 = AssociatedConformanceWitness;
  v61 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v59 = v14;
  v60 = swift_getAssociatedTypeWitness();
  v15 = sub_1BA4A7AA8();
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v62 = &v53 - v17;
  v18 = sub_1BA4A1F38();
  v55 = *(v18 - 8);
  v56 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v68 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getAssociatedTypeWitness();
  v22 = sub_1BA4A7AA8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v53 - v25;
  v27 = *(v21 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v53 - v31;
  v33 = *(a5 + 72);
  v67 = a1;
  v33(a1, a4, a5, v30);
  if ((*(v27 + 48))(v26, 1, v21) == 1)
  {
    (*(v23 + 8))(v26, v22);
    v72 = 0xF000000000000000;
    v73 = 0;
  }

  else
  {
    (*(v27 + 32))(v32, v26, v21);
    sub_1BA4A0EE8();
    swift_allocObject();
    sub_1BA4A0ED8();
    swift_getAssociatedConformanceWitness();
    v34 = sub_1BA4A0EC8();
    v51 = *(v27 + 8);
    v72 = v52;
    v73 = v34;
    v51(v32, v21);
  }

  v54 = a5;
  v35 = swift_checkMetadataState();
  v36 = swift_checkMetadataState();
  v74 = sub_1BA4A2498();
  v38 = v37;
  v39 = v60;
  v40 = *(v60 - 8);
  v41 = v62;
  (*(v40 + 16))(v62, v66, v60);
  (*(v40 + 56))(v41, 0, 1, v39);
  v42 = v69;
  sub_1BA4A24A8();
  v43 = sub_1BA4A1F68();
  v44 = v68;
  static PluginFeedItem.platformFeedItem<A, B>(viewType:actionHandlerType:actionHandlerUserData:uniqueIdentifier:userDataObject:contentKind:sourceProfile:)(v35, v36, v73, v72, v74, v38, v41, v42, v43, v35, v36, v65);

  (*(v70 + 8))(v42, v71);
  (*(v63 + 8))(v41, v64);
  v45 = sub_1BA4A24C8();
  v47 = v46;
  sub_1BA490C24(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1BA4B5460;
  *(v48 + 32) = 0x6574736567677553;
  *(v48 + 40) = 0xEF6E6F6974634164;
  *(v48 + 48) = v45;
  *(v48 + 56) = v47;

  v49 = sub_1BA4A6AE8();

  v50 = HKUIJoinStringsForAutomationIdentifier();

  if (v50)
  {

    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A1ED8();
    sub_1BA4A24B8();
    sub_1BA4A1E48();
    (*(v54 + 80))(v44, v58, a4);
    sub_1B9F6AC8C(v73, v72);
    (*(v55 + 8))(v44, v56);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA490430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA49089C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(v19, a1, a2, a3, v10);
  v13 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18 = (*(v14 + 16))(v13, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_1BA49097C(0);
  sub_1BA490C24(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  sub_1BA48FC68(&qword_1EDC5F4B8, sub_1BA49097C, MEMORY[0x1E695BED8]);
  sub_1BA08FC30();
  sub_1BA4A5018();

  sub_1BA48FC68(&unk_1EDC5F5C8, sub_1BA49089C, MEMORY[0x1E695BDA0]);
  v16 = sub_1BA4A4F98();
  (*(v8 + 8))(v12, v7);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

uint64_t sub_1BA490698@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1BA4A1F38();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a2, v5, v8);
  v11 = sub_1BA4A1DE8();
  if (v11 == 2 || (v11 & 1) == 0)
  {
    sub_1BA4A1DF8();
  }

  (*(v6 + 32))(a3, v10, v5);
  return (*(v6 + 56))(a3, 0, 1, v5);
}

uint64_t sub_1BA4907CC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(sub_1BA4A1F38() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1BA490698(v5, a2);
}

void sub_1BA49089C(uint64_t a1)
{
  if (!qword_1EDC5F5C0)
  {
    sub_1BA49097C(255);
    sub_1BA490C24(255, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
    sub_1BA48FC68(&qword_1EDC5F4B8, sub_1BA49097C, MEMORY[0x1E695BED8]);
    sub_1BA08FC30();
    v1 = sub_1BA4A4BB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F5C0);
    }
  }
}

void sub_1BA49097C(uint64_t a1)
{
  if (!qword_1EDC5F4B0)
  {
    sub_1B9FED358();
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F4B0);
    }
  }
}

uint64_t sub_1BA4909E4@<X0>(void **a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v11 = v10;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    v17 = sub_1BA4A85D8();
    v19 = sub_1B9F0B82C(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v25[2] = v10;
    v20 = v10;
    sub_1B9FED358();
    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v26);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%{public}s] Failed to fetch dismissal state: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  LOBYTE(v26) = 0;
  return sub_1BA4A4E78();
}

void sub_1BA490C24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double PDFTableEmptyRow.row.getter()
{
  sub_1B9F1B560(0, &qword_1EDC5DC80, qword_1EDC69430, &protocol descriptor for PDFRenderable);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 56) = &type metadata for PDFEmptyTableCell;
  *(v0 + 64) = &protocol witness table for PDFEmptyTableCell;
  return result;
}

double sub_1BA490D08()
{
  sub_1B9F1B560(0, &qword_1EDC5DC80, qword_1EDC69430, &protocol descriptor for PDFRenderable);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1BA4B5480;
  *(v0 + 56) = &type metadata for PDFEmptyTableCell;
  *(v0 + 64) = &protocol witness table for PDFEmptyTableCell;
  return result;
}

HealthExperienceUI::PDFTableRow __swiftcall PDFTableRow.init(_:attributes:)(Swift::OpaquePointer _, Swift::OpaquePointer attributes)
{
  v4 = v2;
  v5 = *(_._rawValue + 2);
  if (v5)
  {
    v15 = v2;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1BA067080(0, v5, 0);
    v6 = v19;
    v7 = _._rawValue + 40;
    do
    {
      v8 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

      v9 = sub_1BA4A6758();
      type metadata accessor for Key(0);
      sub_1BA0262E4();
      v10 = sub_1BA4A6618();
      v11 = [v8 initWithString:v9 attributes:v10];

      v19 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1BA067080((v12 > 1), v13 + 1, 1);
        v6 = v19;
      }

      v17 = sub_1BA1C39F8();
      v18 = &protocol witness table for NSAttributedString;
      *&v16 = v11;
      *(v6 + 16) = v13 + 1;
      sub_1B9F25598(&v16, v6 + 40 * v13 + 32);
      v7 += 16;
      --v5;
    }

    while (v5);

    v4 = v15;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *v4 = v6;
  return result;
}

uint64_t Array<A>.row.getter(uint64_t a1, uint64_t a2)
{
  sub_1B9F0D950(0, qword_1EDC69430, &protocol descriptor for PDFRenderable);

  return sub_1BA4A7FA8();
}

uint64_t static PDFTableRowProvidingBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_1B9F1B560(0, &qword_1EBBEF698, &qword_1EBBEF6A0, &protocol descriptor for PDFTableRowProviding);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1B9F0A534(a1, v2 + 32);
  return v2;
}

void sub_1BA49104C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 32); ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v2 = sub_1BA281050(isUniquelyReferenced_nonNull_native, v9, 1, v2);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_21;
        }

        sub_1B9F0D950(0, &qword_1EBBEF6A0, &protocol descriptor for PDFTableRowProviding);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = v2[2];
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          v2[2] = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t static PDFTableRowProvidingBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t PromptTileView.init(_:didTapAction:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  v12 = type metadata accessor for PromptTileView(0);
  v13 = v12[6];
  *(a6 + v13) = swift_getKeyPath();
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  result = sub_1BA49147C(a1, a6 + v12[7], type metadata accessor for PromptTileViewModel);
  v15 = (a6 + v12[8]);
  *v15 = a2;
  v15[1] = a3;
  v16 = (a6 + v12[9]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

void static PromptTileViewModel.Padding.defaultConfiguration.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

uint64_t PromptTileViewModel.init(headerViewModel:contentPrimaryText:contentSecondaryText:contentActionText:imageRepresentation:presentationsToHideHeader:presentationsToHideAccessory:padding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v14 = *a12;
  v15 = a12[1];
  v16 = *(a12 + 16);
  v17 = a12[3];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v18 = type metadata accessor for PromptTileViewModel(0);
  result = sub_1BA49147C(a8, a9 + v18[8], sub_1BA0D0F10);
  *(a9 + v18[11]) = a11;
  *(a9 + v18[10]) = a10;
  v20 = a9 + v18[9];
  *v20 = v14;
  *(v20 + 1) = v15;
  v20[16] = v16;
  *(v20 + 3) = v17;
  return result;
}

uint64_t PromptTileViewModel.Padding.init(imageTopPadding:imageWidth:contentTrailingPadding:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = a5;
  return result;
}

uint64_t sub_1BA49147C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA4914E4()
{
  v1 = 0x6469576567616D69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706F546567616D69;
  }
}

uint64_t sub_1BA491554@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA499F64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA49157C(uint64_t a1)
{
  v2 = sub_1BA491804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA4915B8(uint64_t a1)
{
  v2 = sub_1BA491804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptTileViewModel.Padding.encode(to:)(void *a1)
{
  sub_1BA492890(0, &qword_1EDC5DDB8, sub_1BA491804, &type metadata for PromptTileViewModel.Padding.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v17 = *(v1 + 16);
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA491804();
  sub_1BA4A8548();
  v15 = v10;
  v18 = 0;
  sub_1BA013730();
  sub_1BA4A8288();
  if (!v2)
  {
    v15 = v14;
    v16 = v17;
    v18 = 1;
    sub_1BA4A8238();
    v15 = v11;
    v18 = 2;
    sub_1BA4A8288();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1BA491804()
{
  result = qword_1EDC6D120;
  if (!qword_1EDC6D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D120);
  }

  return result;
}

uint64_t PromptTileViewModel.Padding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1BA492890(0, &qword_1EDC5DF08, sub_1BA491804, &type metadata for PromptTileViewModel.Padding.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA491804();
  sub_1BA4A8528();
  if (!v2)
  {
    v10 = v6;
    v11 = v18;
    v21 = 0;
    sub_1BA013994();
    sub_1BA4A81C8();
    v12 = v19;
    v21 = 1;
    sub_1BA4A8178();
    v13 = v10;
    v14 = v19;
    v22 = v20;
    v21 = 2;
    sub_1BA4A81C8();
    (*(v13 + 8))(v9, v5);
    v16 = v19;
    v17 = v22;
    *v11 = v12;
    *(v11 + 8) = v14;
    *(v11 + 16) = v17;
    *(v11 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BA491B10()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000019;
    if (v1 != 6)
    {
      v5 = 0xD00000000000001CLL;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0x676E6964646170;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6956726564616568;
    v3 = 0xD000000000000014;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0xD000000000000012;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1BA491C28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA49A094(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA491C50(uint64_t a1)
{
  v2 = sub_1BA4920A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA491C8C(uint64_t a1)
{
  v2 = sub_1BA4920A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptTileViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1BA492890(0, &qword_1EDC5DDC0, sub_1BA4920A4, &type metadata for PromptTileViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4920A4();
  sub_1BA4A8548();
  v17[0] = *v3;
  v20 = 0;
  type metadata accessor for DismissibleCellHeaderView.ViewModel(0);
  sub_1BA4920F8(&qword_1EDC65D60, type metadata accessor for DismissibleCellHeaderView.ViewModel, &protocol conformance descriptor for CellHeaderViewModel);
  sub_1BA4A8288();
  if (!v2)
  {
    LOBYTE(v17[0]) = 1;
    sub_1BA4A8248();
    LOBYTE(v17[0]) = 2;
    sub_1BA4A8208();
    LOBYTE(v17[0]) = 3;
    sub_1BA4A8208();
    v12 = type metadata accessor for PromptTileViewModel(0);
    LOBYTE(v17[0]) = 4;
    sub_1BA4A2BF8();
    sub_1BA4920F8(&qword_1EDC6AD68, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32A8]);
    sub_1BA4A8238();
    v13 = v3 + v12[9];
    v14 = *(v13 + 1);
    v15 = v13[16];
    v16 = *(v13 + 3);
    v17[0] = *v13;
    v17[1] = v14;
    v18 = v15;
    v19 = v16;
    v20 = 5;
    sub_1BA492140();
    sub_1BA4A8288();
    v17[0] = *(v3 + v12[10]);
    v20 = 6;
    sub_1BA49AB08(0, &qword_1EDC6B680, &type metadata for Presentation, MEMORY[0x1E69E62F8]);
    sub_1BA49294C(&unk_1EDC5E700, sub_1BA492194, MEMORY[0x1E69E6300]);
    sub_1BA4A8288();
    v17[0] = *(v3 + v12[11]);
    v20 = 7;
    sub_1BA4A8288();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1BA4920A4()
{
  result = qword_1EDC6D138[0];
  if (!qword_1EDC6D138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6D138);
  }

  return result;
}

uint64_t sub_1BA4920F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA492140()
{
  result = qword_1EDC67D20;
  if (!qword_1EDC67D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67D20);
  }

  return result;
}

unint64_t sub_1BA492194()
{
  result = qword_1EDC69538[0];
  if (!qword_1EDC69538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC69538);
  }

  return result;
}

void PromptTileViewModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA492890(0, &qword_1EDC5DF10, sub_1BA4920A4, &type metadata for PromptTileViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v31 - v10;
  v12 = type metadata accessor for PromptTileViewModel(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1BA4920A4();
  v17 = v11;
  v18 = v36;
  sub_1BA4A8528();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v32 = v6;
    v36 = v15;
    type metadata accessor for DismissibleCellHeaderView.ViewModel(0);
    v42 = 0;
    sub_1BA4920F8(&qword_1EDC65D58, type metadata accessor for DismissibleCellHeaderView.ViewModel, &protocol conformance descriptor for CellHeaderViewModel);
    v19 = v34;
    v20 = v17;
    sub_1BA4A81C8();
    v21 = v36;
    *v36 = v38;
    LOBYTE(v38) = 1;
    v21[1] = sub_1BA4A8188();
    v21[2] = v22;
    LOBYTE(v38) = 2;
    v21[3] = sub_1BA4A8138();
    v21[4] = v23;
    LOBYTE(v38) = 3;
    v21[5] = sub_1BA4A8138();
    v21[6] = v24;
    v31[1] = v24;
    sub_1BA4A2BF8();
    LOBYTE(v38) = 4;
    sub_1BA4920F8(&qword_1EDC6AD58, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32B8]);
    v25 = v32;
    sub_1BA4A8178();
    sub_1BA49147C(v25, v21 + v12[8], sub_1BA0D0F10);
    v42 = 5;
    sub_1BA4928F8();
    sub_1BA4A81C8();
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v21 + v12[9];
    *v29 = v38;
    *(v29 + 1) = v26;
    v29[16] = v27;
    *(v29 + 3) = v28;
    sub_1BA49AB08(0, &qword_1EDC6B680, &type metadata for Presentation, MEMORY[0x1E69E62F8]);
    v42 = 6;
    v32 = sub_1BA49294C(&qword_1EDC5E6F8, sub_1BA4929DC, MEMORY[0x1E69E6330]);
    sub_1BA4A81C8();
    *(v21 + v12[10]) = v38;
    v42 = 7;
    sub_1BA4A81C8();
    (*(v35 + 8))(v20, v19);
    v30 = v36;
    *(v36 + v12[11]) = v38;
    sub_1BA49AAA0(v30, v33, type metadata accessor for PromptTileViewModel);
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_1BA492A30(v30, type metadata accessor for PromptTileViewModel);
  }
}

void sub_1BA492890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA4928F8()
{
  result = qword_1EDC67D18;
  if (!qword_1EDC67D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67D18);
  }

  return result;
}

uint64_t sub_1BA49294C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BA49AB08(255, &qword_1EDC6B680, &type metadata for Presentation, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA4929DC()
{
  result = qword_1EDC69528;
  if (!qword_1EDC69528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69528);
  }

  return result;
}

uint64_t sub_1BA492A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA492A90()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v7, v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return v7;
}

uint64_t sub_1BA492BF4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PromptTileView(0);
  sub_1BA23D6B4(v1 + *(v12 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BA4A53C8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BA4A6FB8();
    v15 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t PromptTileView.didTapAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromptTileView(0) + 32));

  return v1;
}

uint64_t PromptTileView.didTapDismiss.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromptTileView(0) + 36));

  return v1;
}

uint64_t PromptTileView.body.getter@<X0>(uint64_t a9@<X8>)
{
  *a9 = sub_1BA4A5868();
  *(a9 + 8) = 0x402C000000000000;
  *(a9 + 16) = 0;
  sub_1BA49A32C(0, &qword_1EDC5F300, sub_1BA493588, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  return sub_1BA492F78(v9, a9 + *(v11 + 44));
}

uint64_t sub_1BA492F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  sub_1BA493DF8(0);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v44[0] = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4937D4(0, &qword_1EDC5ED88, sub_1BA493640, sub_1BA493DF8, MEMORY[0x1E697F948]);
  v44[1] = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v44 - v8;
  sub_1BA493640(0);
  v44[2] = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A53C8();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = (v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA4935F8(0, v17);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v45 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v44 - v25;
  sub_1BA4935C4(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v44 - v33;
  sub_1BA4944C4(v44 - v33);
  sub_1BA492BF4(v19);
  v35 = sub_1BA4A53B8();
  (*(v15 + 8))(v19, v14);
  if (v35)
  {
    *v13 = sub_1BA4A5878();
    *(v13 + 1) = 0;
    v13[16] = 0;
    sub_1BA49A32C(0, &qword_1EBBF3440, sub_1BA4936D4, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1BA496148(a1, &v13[*(v36 + 44)]);
    sub_1BA49AAA0(v13, v9, sub_1BA493640);
    swift_storeEnumTagMultiPayload();
    sub_1BA4920F8(&qword_1EDC5EA90, sub_1BA493640, MEMORY[0x1E6981870]);
    sub_1BA49ADB4(&qword_1EDC5F120, sub_1BA493DF8, &qword_1EDC5EAE0, sub_1BA493E34);
    sub_1BA4A58E8();
    v37 = sub_1BA493640;
    v38 = v13;
  }

  else
  {
    v39 = v44[0];
    sub_1BA494748(v44[0]);
    sub_1BA49AAA0(v39, v9, sub_1BA493DF8);
    swift_storeEnumTagMultiPayload();
    sub_1BA4920F8(&qword_1EDC5EA90, sub_1BA493640, MEMORY[0x1E6981870]);
    sub_1BA49ADB4(&qword_1EDC5F120, sub_1BA493DF8, &qword_1EDC5EAE0, sub_1BA493E34);
    sub_1BA4A58E8();
    v37 = sub_1BA493DF8;
    v38 = v39;
  }

  sub_1BA492A30(v38, v37);
  sub_1BA49AAA0(v34, v30, sub_1BA4935C4);
  v40 = v45;
  sub_1BA49AAA0(v26, v45, sub_1BA4935F8);
  v41 = v47;
  sub_1BA49AAA0(v30, v47, sub_1BA4935C4);
  sub_1BA493710(0, &qword_1EDC65B10, sub_1BA4935C4, sub_1BA4935F8);
  sub_1BA49AAA0(v40, v41 + *(v42 + 48), sub_1BA4935F8);
  sub_1BA492A30(v26, sub_1BA4935F8);
  sub_1BA492A30(v34, sub_1BA4935C4);
  sub_1BA492A30(v40, sub_1BA4935F8);
  return sub_1BA492A30(v30, sub_1BA4935C4);
}

void sub_1BA493640(uint64_t a1)
{
  if (!qword_1EDC5EA88)
  {
    sub_1BA4936D4(255);
    sub_1BA4920F8(&qword_1EDC5E920, sub_1BA4936D4, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EA88);
    }
  }
}

void sub_1BA493710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1BA4937D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA49388C(uint64_t a1)
{
  if (!qword_1EDC5F108)
  {
    sub_1BA493914(255);
    sub_1BA2C446C(255, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, MEMORY[0x1E697E5E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5F108);
    }
  }
}

void sub_1BA493950(uint64_t a1)
{
  if (!qword_1EDC5EAE8)
  {
    sub_1BA4939E4(255);
    sub_1BA4920F8(&qword_1EDC5E960, sub_1BA4939E4, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EAE8);
    }
  }
}

void sub_1BA493A18(uint64_t a1)
{
  if (!qword_1EDC5F008)
  {
    sub_1BA493AB4(255);
    sub_1BA49AB08(255, &unk_1EDC694E0, &_s18HealthExperienceUI13AccessoryViewVN_0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5F008);
    }
  }
}

void sub_1BA493AFC(uint64_t a1)
{
  if (!qword_1EDC5F160)
  {
    sub_1BA493B5C(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F160);
    }
  }
}

void sub_1BA493B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1BA493C40(uint64_t a1)
{
  if (!qword_1EDC5EB48)
  {
    sub_1BA493CD4(255);
    sub_1BA4920F8(&qword_1EDC5E9F8, sub_1BA493CD4, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB48);
    }
  }
}

void sub_1BA493D08(uint64_t a1)
{
  if (!qword_1EDC67270)
  {
    sub_1BA49AB08(255, &unk_1EDC694E0, &_s18HealthExperienceUI13AccessoryViewVN_0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC67270);
    }
  }
}

void sub_1BA493E34(uint64_t a1)
{
  if (!qword_1EDC5EAD8)
  {
    sub_1BA493EC8(255);
    sub_1BA4920F8(&qword_1EDC5E940, sub_1BA493EC8, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EAD8);
    }
  }
}

void sub_1BA493F04(uint64_t a1)
{
  if (!qword_1EDC5ED50)
  {
    sub_1BA4937D4(255, &qword_1EDC5ED58, sub_1BA493FA0, sub_1BA49409C, MEMORY[0x1E697F960]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5ED50);
    }
  }
}

void sub_1BA49415C(uint64_t a1)
{
  if (!qword_1EDC5EA80)
  {
    sub_1BA4941F0(255);
    sub_1BA4920F8(&qword_1EDC5E910, sub_1BA4941F0, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EA80);
    }
  }
}

void sub_1BA49422C(uint64_t a1)
{
  if (!qword_1EDC5EB58)
  {
    sub_1BA4942C0(255);
    sub_1BA4920F8(&qword_1EDC5EA08, sub_1BA4942C0, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB58);
    }
  }
}

void sub_1BA4942F4(uint64_t a1)
{
  if (!qword_1EDC67268)
  {
    sub_1BA494364(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC67268);
    }
  }
}

void sub_1BA4943A0(uint64_t a1)
{
  if (!qword_1EDC5F2B0)
  {
    sub_1BA49AB08(255, &unk_1EDC694E0, &_s18HealthExperienceUI13AccessoryViewVN_0, MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F2B0);
    }
  }
}

uint64_t sub_1BA494424(uint64_t a1)
{
  *(a1 + 16) = sub_1BA4920F8(&qword_1EDC67D08, type metadata accessor for PromptTileViewModel, &protocol conformance descriptor for PromptTileViewModel);
  result = sub_1BA4920F8(&qword_1EDC67D10, type metadata accessor for PromptTileViewModel, &protocol conformance descriptor for PromptTileViewModel);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA4944C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PromptTileView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA497438())
  {
    v8 = *(v1 + *(v3 + 28));
    sub_1BA49AAA0(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PromptTileView);
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    sub_1BA49147C(v7, v10 + v9, type metadata accessor for PromptTileView);
    swift_beginAccess();
    *(a1 + 24) = swift_getKeyPath();
    *(a1 + 32) = 0;
    *(a1 + 40) = swift_getKeyPath();
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v11 = type metadata accessor for DismissibleCellHeaderView(0);
    v12 = *(v11 + 32);
    *(a1 + v12) = swift_getKeyPath();
    sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();

    *(a1 + 8) = v10;
    *(a1 + 16) = v8;
    *a1 = sub_1BA49B534;
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    v14 = type metadata accessor for DismissibleCellHeaderView(0);
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

void sub_1BA494748(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A5718();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA493E34(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v12 = sub_1BA4A5788();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  sub_1BA49A32C(0, &qword_1EDC5F308, sub_1BA493EC8, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1BA4949C0(v2, &v12[*(v13 + 44)]);
  v14 = sub_1BA4A5B88();
  v15 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_1BA4A6FB8();
    v16 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v15, 0);
    (*(v5 + 8))(v8, v4);
  }

  sub_1BA4A5188();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1BA49147C(v12, a1, sub_1BA493E34);
  sub_1BA493DF8(0);
  v26 = a1 + *(v25 + 36);
  *v26 = v14;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
}

void sub_1BA4949C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  sub_1BA494120(0);
  v131 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v107 - v9;
  sub_1BA4937D4(0, &qword_1EDC5EDA0, sub_1BA493FA0, sub_1BA49409C, MEMORY[0x1E697F948]);
  v123 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v125 = &v107 - v13;
  v117 = sub_1BA4A6138();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v14);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493FE8(0);
  v119 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v120 = (&v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA493FA0(0);
  v124 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v114 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v115 = &v107 - v25;
  sub_1BA4940E4(0);
  v118 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (&v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA49409C(0);
  v122 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v112 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v113 = &v107 - v35;
  sub_1BA4937D4(0, &qword_1EDC5ED58, sub_1BA493FA0, sub_1BA49409C, MEMORY[0x1E697F960]);
  v128 = *(v36 - 8);
  v129 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v121 = &v107 - v38;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BA4A2BF8();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v107 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493F04(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v130 = &v107 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v126 = &v107 - v53;
  v54 = *(type metadata accessor for PromptTileView(0) + 28);
  v133 = a1;
  v55 = a1 + v54;
  v56 = type metadata accessor for PromptTileViewModel(0);
  sub_1BA49AAA0(v55 + *(v56 + 32), v42, sub_1BA0D0F10);
  v57 = (*(v44 + 48))(v42, 1, v43);
  v127 = v55;
  if (v57 == 1)
  {
    sub_1BA492A30(v42, sub_1BA0D0F10);
    v58 = 1;
    v59 = v126;
LABEL_9:
    (*(v128 + 56))(v59, v58, 1, v129);
    *v10 = sub_1BA4A5878();
    *(v10 + 1) = 0;
    v10[16] = 0;
    sub_1BA49A32C(0, &qword_1EDC5F2E0, sub_1BA4941F0, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1BA495794(v133, &v10[*(v97 + 44)]);
    v98 = sub_1BA4A5BC8();
    sub_1BA4A5188();
    v99 = v130;
    v100 = &v10[*(v131 + 36)];
    *v100 = v98;
    *(v100 + 1) = v101;
    *(v100 + 2) = v102;
    *(v100 + 3) = v103;
    *(v100 + 4) = v104;
    v100[40] = 0;
    sub_1BA49AAA0(v59, v99, sub_1BA493F04);
    sub_1BA49AAA0(v10, v6, sub_1BA494120);
    v105 = v132;
    sub_1BA49AAA0(v99, v132, sub_1BA493F04);
    sub_1BA493710(0, &qword_1EDC5ED48, sub_1BA493F04, sub_1BA494120);
    sub_1BA49AAA0(v6, v105 + *(v106 + 48), sub_1BA494120);
    sub_1BA492A30(v10, sub_1BA494120);
    sub_1BA492A30(v59, sub_1BA493F04);
    sub_1BA492A30(v6, sub_1BA494120);
    sub_1BA492A30(v99, sub_1BA493F04);
    return;
  }

  v111 = v6;
  v108 = v44;
  v60 = *(v44 + 32);
  v109 = v43;
  v60(v47, v42, v43);
  v110 = v56;
  if (*(v55 + *(v56 + 36) + 16) == 1)
  {
    v61 = v47;
    v62 = sub_1BA4A2BE8();
    sub_1BA493AFC(0);
    sub_1BA4A53A8();
    *v29 = v62;
    LOBYTE(v62) = sub_1BA4A5B88();
    sub_1BA4A5188();
    v63 = v29 + *(v118 + 36);
    *v63 = v62;
    *(v63 + 1) = v64;
    *(v63 + 2) = v65;
    *(v63 + 3) = v66;
    *(v63 + 4) = v67;
    v63[40] = 0;
    sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1BA4B5460;
    *(v68 + 32) = sub_1BA492A90();
    *(v68 + 40) = v69;
    *(v68 + 48) = 1852793673;
    *(v68 + 56) = 0xE400000000000000;
    v70 = sub_1BA4A6AE8();

    v71 = HKUIJoinStringsForAutomationIdentifier();

    if (v71)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA49B230();
      v72 = v112;
      sub_1BA4A5F18();

      sub_1BA492A30(v29, sub_1BA4940E4);
      v73 = v113;
      sub_1BA4A5408();
      v74 = sub_1BA49409C;
      sub_1BA492A30(v72, sub_1BA49409C);
      sub_1BA49AAA0(v73, v125, sub_1BA49409C);
      swift_storeEnumTagMultiPayload();
      sub_1BA49B26C(&qword_1EDC5EE20, sub_1BA493FA0, sub_1BA49B320);
      sub_1BA49B26C(&qword_1EDC5EED8, sub_1BA49409C, sub_1BA49B230);
      v75 = v121;
LABEL_8:
      sub_1BA4A58E8();
      sub_1BA492A30(v73, v74);
      v6 = v111;
      (*(v108 + 8))(v61, v109);
      v96 = v75;
      v59 = v126;
      sub_1BA49B454(v96, v126, &qword_1EDC5ED58, sub_1BA493FA0, sub_1BA49409C, MEMORY[0x1E697F960]);
      v58 = 0;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v61 = v47;
    sub_1BA4A2BE8();
    v76 = v116;
    v77 = v117;
    (*(v116 + 104))(v16, *MEMORY[0x1E6981630], v117);
    v78 = sub_1BA4A6198();

    (*(v76 + 8))(v16, v77);
    sub_1BA493AFC(0);
    v79 = v120;
    sub_1BA4A53A8();
    *v79 = v78;
    sub_1BA494060(0);
    v81 = v79 + *(v80 + 36);
    *v81 = 0;
    *(v81 + 4) = 1;
    sub_1BA4A63C8();
    sub_1BA4A5278();
    sub_1BA494024(0);
    v83 = (v79 + *(v82 + 36));
    v84 = v135;
    *v83 = v134;
    v83[1] = v84;
    v83[2] = v136;
    v85 = sub_1BA4A5B88();
    sub_1BA4A5188();
    v86 = v79 + *(v119 + 36);
    *v86 = v85;
    *(v86 + 1) = v87;
    *(v86 + 2) = v88;
    *(v86 + 3) = v89;
    *(v86 + 4) = v90;
    v86[40] = 0;
    sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1BA4B5460;
    *(v91 + 32) = sub_1BA492A90();
    *(v91 + 40) = v92;
    *(v91 + 48) = 1852793673;
    *(v91 + 56) = 0xE400000000000000;
    v93 = sub_1BA4A6AE8();

    v94 = HKUIJoinStringsForAutomationIdentifier();

    if (v94)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA49B320();
      v95 = v114;
      sub_1BA4A5F18();

      sub_1BA492A30(v79, sub_1BA493FE8);
      v73 = v115;
      sub_1BA4A5408();
      v74 = sub_1BA493FA0;
      sub_1BA492A30(v95, sub_1BA493FA0);
      sub_1BA49AAA0(v73, v125, sub_1BA493FA0);
      swift_storeEnumTagMultiPayload();
      sub_1BA49B26C(&qword_1EDC5EE20, sub_1BA493FA0, sub_1BA49B320);
      sub_1BA49B26C(&qword_1EDC5EED8, sub_1BA49409C, sub_1BA49B230);
      v75 = v121;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1BA495794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptTileView(0);
  v5 = v4 - 8;
  v42 = *(v4 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  v43 = sub_1BA4A5788();
  v46 = 0;
  sub_1BA495DC0(a1, &v62);
  v55 = v63[7];
  v56 = v63[8];
  v57[0] = v63[9];
  *(v57 + 9) = *(&v63[9] + 9);
  v51 = v63[3];
  v52 = v63[4];
  v53 = v63[5];
  v54 = v63[6];
  v47 = v62;
  v48 = v63[0];
  v49 = v63[1];
  v50 = v63[2];
  v58[8] = v63[7];
  v58[9] = v63[8];
  v59[0] = v63[9];
  *(v59 + 9) = *(&v63[9] + 9);
  v58[4] = v63[3];
  v58[5] = v63[4];
  v58[6] = v63[5];
  v58[7] = v63[6];
  v58[0] = v62;
  v58[1] = v63[0];
  v58[2] = v63[1];
  v58[3] = v63[2];
  sub_1BA49AAA0(&v47, &v60, sub_1BA4942C0);
  sub_1BA492A30(v58, sub_1BA4942C0);
  *(&v45[8] + 7) = v55;
  *(&v45[9] + 7) = v56;
  *(&v45[10] + 7) = v57[0];
  v45[11] = *(v57 + 9);
  *(&v45[4] + 7) = v51;
  *(&v45[5] + 7) = v52;
  *(&v45[6] + 7) = v53;
  *(&v45[7] + 7) = v54;
  *(v45 + 7) = v47;
  *(&v45[1] + 7) = v48;
  *(&v45[2] + 7) = v49;
  *(&v45[3] + 7) = v50;
  v40 = v46;
  v17 = (a1 + *(v5 + 36));
  v18 = v17[3];
  v19 = v17[4];
  v20 = v17[5];
  v38 = v17[6];
  v39 = v20;
  sub_1BA49AAA0(a1, v8, type metadata accessor for PromptTileView);
  v21 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v22 = swift_allocObject();
  sub_1BA49147C(v8, v22 + v21, type metadata accessor for PromptTileView);
  KeyPath = swift_getKeyPath();
  *&v16[v10[7]] = swift_getKeyPath();
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *v16 = KeyPath;
  *(v16 + 1) = 0;
  v16[16] = 0;
  v24 = &v16[v10[8]];
  *v24 = v18;
  *(v24 + 1) = v19;
  v25 = &v16[v10[9]];
  v26 = v38;
  *v25 = v39;
  *(v25 + 1) = v26;
  v27 = &v16[v10[10]];
  *v27 = sub_1BA49B8D0;
  *(v27 + 1) = v22;
  v28 = v44;
  sub_1BA49AAA0(v16, v44, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  v29 = v43;
  v60 = v43;
  LOBYTE(v22) = v40;
  v61[0] = v40;
  *&v61[129] = v45[8];
  *&v61[145] = v45[9];
  *&v61[161] = v45[10];
  *&v61[177] = v45[11];
  *&v61[65] = v45[4];
  *&v61[81] = v45[5];
  *&v61[97] = v45[6];
  *&v61[113] = v45[7];
  *&v61[1] = v45[0];
  *&v61[17] = v45[1];
  *&v61[33] = v45[2];
  *&v61[49] = v45[3];
  v30 = *&v61[160];
  *(a2 + 160) = *&v61[144];
  *(a2 + 176) = v30;
  *(a2 + 192) = *&v61[176];
  *(a2 + 208) = v61[192];
  v31 = *&v61[96];
  *(a2 + 96) = *&v61[80];
  *(a2 + 112) = v31;
  v32 = *&v61[128];
  *(a2 + 128) = *&v61[112];
  *(a2 + 144) = v32;
  v33 = *&v61[32];
  *(a2 + 32) = *&v61[16];
  *(a2 + 48) = v33;
  v34 = *&v61[64];
  *(a2 + 64) = *&v61[48];
  *(a2 + 80) = v34;
  v35 = *v61;
  *a2 = v60;
  *(a2 + 16) = v35;
  sub_1BA493710(0, &qword_1EDC5EB50, sub_1BA49422C, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  sub_1BA49AAA0(v28, a2 + *(v36 + 48), _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);

  sub_1BA49AAA0(&v60, &v62, sub_1BA49422C);
  sub_1BA492A30(v16, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  sub_1BA492A30(v28, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  *(&v63[8] + 1) = v45[8];
  *(&v63[9] + 1) = v45[9];
  *(&v63[10] + 1) = v45[10];
  *(&v63[11] + 1) = v45[11];
  *(&v63[4] + 1) = v45[4];
  *(&v63[5] + 1) = v45[5];
  *(&v63[6] + 1) = v45[6];
  *(&v63[7] + 1) = v45[7];
  *(v63 + 1) = v45[0];
  *(&v63[1] + 1) = v45[1];
  *(&v63[2] + 1) = v45[2];
  v62 = v29;
  LOBYTE(v63[0]) = v22;
  *(&v63[3] + 1) = v45[3];
  return sub_1BA492A30(&v62, sub_1BA49422C);
}

void sub_1BA495DC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptTileView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v9 = a1 + *(v8 + 36);
  v10 = *(v9 + 16);
  v38 = *(v9 + 8);
  v39 = v10;
  KeyPath = swift_getKeyPath();

  if (sub_1BA497438())
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v15 = sub_1BA4975C0();
    sub_1BA49AAA0(a1, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PromptTileView);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    sub_1BA49147C(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v16, type metadata accessor for PromptTileView);
    v11 = swift_getKeyPath();
    if (v15)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    v14 = sub_1BA49B8CC;
  }

  v17 = sub_1BA4A5B88();
  sub_1BA4A5188();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v67 = 0;
  v26 = sub_1BA4A5BC8();
  sub_1BA4A5188();
  v68 = 0;
  v44 = 0;
  v43 = 0;
  v45[0] = v11;
  v45[1] = 0;
  *&v46 = v12;
  *(&v46 + 1) = v14;
  *&v47 = v13;
  BYTE8(v47) = v17;
  *&v48 = v19;
  *(&v48 + 1) = v21;
  *&v49 = v23;
  *(&v49 + 1) = v25;
  LOBYTE(v50) = 0;
  BYTE8(v50) = v26;
  *&v51 = v27;
  *(&v51 + 1) = v28;
  *&v52 = v29;
  *(&v52 + 1) = v30;
  v53 = 0;
  *&v42[7] = v11;
  *&v42[71] = v49;
  *&v42[55] = v48;
  *&v42[39] = v47;
  *&v42[23] = v46;
  v42[135] = 0;
  *&v42[119] = v52;
  *&v42[103] = v51;
  *&v42[87] = v50;
  v31 = v11;
  v33 = v39;
  v32 = KeyPath;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v38;
  *(a2 + 32) = v33;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v34 = *&v42[64];
  *(a2 + 129) = *&v42[80];
  v35 = *&v42[112];
  *(a2 + 145) = *&v42[96];
  *(a2 + 161) = v35;
  *(a2 + 177) = *&v42[128];
  v36 = *v42;
  *(a2 + 65) = *&v42[16];
  v37 = *&v42[48];
  *(a2 + 81) = *&v42[32];
  *(a2 + 97) = v37;
  *(a2 + 113) = v34;
  *(a2 + 49) = v36;
  v54[0] = v31;
  v54[1] = 0;
  v54[2] = v12;
  v54[3] = v14;
  v54[4] = v13;
  v55 = v17;
  v56 = v19;
  v57 = v21;
  v58 = v23;
  v59 = v25;
  v60 = 0;
  v61 = v26;
  v62 = v27;
  v63 = v28;
  v64 = v29;
  v65 = v30;
  v66 = 0;
  sub_1B9F84D0C(v32, 0, 0);

  sub_1BA49AAA0(v45, &v41, sub_1BA494364);
  sub_1BA492A30(v54, sub_1BA494364);
  sub_1B9F84D1C(v32, 0, 0);
}

uint64_t sub_1BA496148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = type metadata accessor for PromptTileView(0);
  v4 = v3 - 8;
  v112 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v113 = v6;
  v114 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493D9C(0);
  v116 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v118 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v117 = &v105 - v12;
  sub_1BA493858(0);
  v111 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v108 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493914(0);
  v106 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v107 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v105 - v21;
  sub_1BA4937D4(0, &qword_1EBBF3448, sub_1BA493858, sub_1BA493C04, MEMORY[0x1E697F948]);
  v110 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v105 - v25;
  sub_1BA0D0F10(0);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA49378C(0, v29);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v115 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v120 = a1;
  v121 = &v105 - v37;
  v38 = (a1 + *(v4 + 36));
  v109 = type metadata accessor for PromptTileViewModel(0);
  sub_1BA49AAA0(v38 + *(v109 + 32), v31, sub_1BA0D0F10);
  v39 = sub_1BA4A2BF8();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v31, 1, v39) == 1)
  {
    sub_1BA492A30(v31, sub_1BA0D0F10);
    v41 = sub_1BA4A5788();
    v122[0] = 1;
    sub_1BA4971C4(v120, &v129);
    v138 = v131;
    v139 = v132;
    v140 = v133;
    v141 = v134;
    v136 = v129;
    v137 = v130;
    v144 = v131;
    v145 = v132;
    v146 = v133;
    v147 = v134;
    v142 = v129;
    v143 = v130;
    sub_1BA49AAA0(&v136, &v123, sub_1BA493CD4);
    sub_1BA492A30(&v142, sub_1BA493CD4);
    *(&v135[2] + 7) = v138;
    *(&v135[3] + 7) = v139;
    *(&v135[4] + 7) = v140;
    *(&v135[5] + 7) = v141;
    *(v135 + 7) = v136;
    *(&v135[1] + 7) = v137;
    v42 = v122[0];
    v43 = sub_1BA4A5BC8();
    sub_1BA4A5188();
    v44 = v135[2];
    *(v26 + 65) = v135[3];
    v45 = v135[5];
    *(v26 + 81) = v135[4];
    *(v26 + 97) = v45;
    v46 = v135[1];
    *(v26 + 17) = v135[0];
    *(v26 + 33) = v46;
    *v26 = v41;
    *(v26 + 1) = 0;
    v26[16] = v42;
    *(v26 + 14) = *(&v135[5] + 15);
    *(v26 + 49) = v44;
    v26[120] = v43;
    *(v26 + 16) = v47;
    *(v26 + 17) = v48;
    *(v26 + 18) = v49;
    *(v26 + 19) = v50;
    v26[160] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BA493C04(0);
    sub_1BA4920F8(&qword_1EBBF3450, sub_1BA493858, MEMORY[0x1E6981F48]);
    sub_1BA49ADB4(&qword_1EBBF3458, sub_1BA493C04, &qword_1EBBF3460, sub_1BA493C40);
    sub_1BA4A58E8();
  }

  else
  {
    v51 = sub_1BA4A2BE8();
    v105 = v51;
    (*(v40 + 8))(v31, v39);
    *v22 = sub_1BA4A5788();
    *(v22 + 1) = 0;
    v22[16] = 1;
    sub_1BA49A32C(0, &qword_1EBBF3468, sub_1BA4939E4, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    sub_1BA496D08(v51, v120, &v22[*(v52 + 44)]);
    LOBYTE(v51) = sub_1BA4A5B98();
    sub_1BA4A5188();
    v53 = &v22[*(v106 + 36)];
    *v53 = v51;
    *(v53 + 1) = v54;
    *(v53 + 2) = v55;
    *(v53 + 3) = v56;
    *(v53 + 4) = v57;
    v53[40] = 0;
    v59 = v38[1];
    v58 = v38[2];
    KeyPath = swift_getKeyPath();

    v61 = sub_1BA4A5BC8();
    sub_1BA4A5188();
    LOBYTE(v142) = 0;
    LOBYTE(v136) = 0;
    v129 = KeyPath;
    LOBYTE(v130) = 0;
    *(&v130 + 1) = v59;
    *&v131 = v58;
    BYTE8(v131) = v61;
    *&v132 = v62;
    *(&v132 + 1) = v63;
    *&v133 = v64;
    *(&v133 + 1) = v65;
    LOBYTE(v134) = 0;
    v66 = v107;
    sub_1BA49AAA0(v22, v107, sub_1BA493914);
    v126 = v132;
    v127 = v133;
    v128 = v134;
    v123 = v129;
    v124 = v130;
    v125 = v131;
    v67 = v108;
    sub_1BA49AAA0(v66, v108, sub_1BA493914);
    sub_1BA49388C(0);
    v69 = v67 + *(v68 + 48);
    v70 = v67;
    v72 = v127;
    v139 = v126;
    v73 = v126;
    v71 = v126;
    v140 = v127;
    v74 = v128;
    LOBYTE(v141) = v128;
    v75 = v124;
    v137 = v124;
    v138 = v125;
    *(v69 + 32) = v125;
    *(v69 + 48) = v71;
    *(v69 + 64) = v72;
    v76 = v123;
    v77 = v123;
    v79 = v124;
    v78 = v125;
    v136 = v123;
    *(v69 + 80) = v74;
    *v69 = v76;
    *(v69 + 16) = v75;
    v144 = v78;
    v145 = v73;
    v146 = v127;
    LOBYTE(v147) = v128;
    v142 = v77;
    v143 = v79;
    v80 = MEMORY[0x1E697E5E0];
    sub_1BA49AD40(&v129, v122, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, MEMORY[0x1E697E5E0], sub_1BA2C446C);
    sub_1BA49AD40(&v136, v122, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, v80, sub_1BA2C446C);
    sub_1BA49ACE0(&v142, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, v80, sub_1BA2C446C);
    sub_1BA492A30(v66, sub_1BA493914);
    sub_1BA49AAA0(v70, v26, sub_1BA493858);
    swift_storeEnumTagMultiPayload();
    sub_1BA493C04(0);
    sub_1BA4920F8(&qword_1EBBF3450, sub_1BA493858, MEMORY[0x1E6981F48]);
    sub_1BA49ADB4(&qword_1EBBF3458, sub_1BA493C04, &qword_1EBBF3460, sub_1BA493C40);
    sub_1BA4A58E8();

    sub_1BA49ACE0(&v129, &qword_1EDC5F2C0, &_s18HealthExperienceUI22ContentPrimaryTextViewVN_0, MEMORY[0x1E697E5E0], sub_1BA2C446C);
    sub_1BA492A30(v70, sub_1BA493858);
    sub_1BA492A30(v22, sub_1BA493914);
  }

  v82 = v38[3];
  v81 = v38[4];
  v83 = v38[6];
  v111 = v38[5];
  v84 = v114;
  sub_1BA49AAA0(v120, v114, type metadata accessor for PromptTileView);
  v85 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v86 = swift_allocObject();
  sub_1BA49147C(v84, v86 + v85, type metadata accessor for PromptTileView);
  v87 = swift_getKeyPath();
  v88 = swift_getKeyPath();
  v89 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v90 = v117;
  *&v117[v89[5]] = v88;
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *v90 = v87;
  *(v90 + 8) = 0;
  *(v90 + 16) = 0;
  v91 = (v90 + v89[6]);
  *v91 = v82;
  v91[1] = v81;
  v92 = (v90 + v89[7]);
  *v92 = v111;
  v92[1] = v83;
  v93 = (v90 + v89[8]);
  *v93 = sub_1BA49AE54;
  v93[1] = v86;

  LOBYTE(v81) = sub_1BA4A5BC8();
  sub_1BA4A5188();
  v94 = v115;
  v95 = v90 + *(v116 + 36);
  *v95 = v81;
  *(v95 + 8) = v96;
  *(v95 + 16) = v97;
  *(v95 + 24) = v98;
  *(v95 + 32) = v99;
  *(v95 + 40) = 0;
  v100 = v121;
  sub_1BA49AAA0(v121, v94, sub_1BA49378C);
  v101 = v118;
  sub_1BA49AAA0(v90, v118, sub_1BA493D9C);
  v102 = v119;
  sub_1BA49AAA0(v94, v119, sub_1BA49378C);
  sub_1BA493710(0, &qword_1EDC5ED08, sub_1BA49378C, sub_1BA493D9C);
  sub_1BA49AAA0(v101, v102 + *(v103 + 48), sub_1BA493D9C);
  sub_1BA492A30(v90, sub_1BA493D9C);
  sub_1BA492A30(v100, sub_1BA49378C);
  sub_1BA492A30(v101, sub_1BA493D9C);
  return sub_1BA492A30(v94, sub_1BA49378C);
}

void sub_1BA496D08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for PromptTileView(0);
  v40[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v40[1] = v7;
  v41 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA493AFC(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA493AB4(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v40 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v40 - v22;
  sub_1BA4A53A8();
  *v11 = a1;
  sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5460;

  *(v24 + 32) = sub_1BA492A90();
  *(v24 + 40) = v25;
  *(v24 + 48) = 1852793673;
  *(v24 + 56) = 0xE400000000000000;
  v26 = sub_1BA4A6AE8();

  v27 = HKUIJoinStringsForAutomationIdentifier();

  if (v27)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA49AE58();
    sub_1BA4A5F18();

    sub_1BA492A30(v11, sub_1BA493AFC);
    sub_1BA4A5408();
    sub_1BA492A30(v19, sub_1BA493AB4);
    if (sub_1BA497438())
    {
      KeyPath = 0;
      v29 = 0;
      v30 = 0;
      v31 = 1;
    }

    else
    {
      v32 = sub_1BA4975C0();
      v33 = a2;
      v34 = v41;
      sub_1BA49AAA0(v33, v41, type metadata accessor for PromptTileView);
      v35 = (*(v40[0] + 80) + 16) & ~*(v40[0] + 80);
      v30 = swift_allocObject();
      sub_1BA49147C(v34, v30 + v35, type metadata accessor for PromptTileView);
      KeyPath = swift_getKeyPath();
      if (v32)
      {
        v29 = 256;
      }

      else
      {
        v29 = 0;
      }

      v31 = sub_1BA49B8CC;
    }

    sub_1BA49AAA0(v23, v15, sub_1BA493AB4);
    v36 = v42;
    sub_1BA49AAA0(v15, v42, sub_1BA493AB4);
    sub_1BA493A18(0);
    v38 = v36 + *(v37 + 48);
    *v38 = 0;
    *(v38 + 8) = 1;
    v39 = (v36 + *(v37 + 64));
    *v39 = KeyPath;
    v39[1] = 0;
    v39[2] = v29;
    v39[3] = v31;
    v39[4] = v30;
    sub_1BA49B15C(KeyPath, 0, v29, v31, v30, sub_1B9F84D0C, sub_1B9F0F1B4);
    sub_1BA492A30(v23, sub_1BA493AB4);
    sub_1BA49B15C(KeyPath, 0, v29, v31, v30, sub_1B9F84D1C, sub_1B9F0E310);
    sub_1BA492A30(v15, sub_1BA493AB4);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BA4971C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptTileView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v9 = a1 + *(v8 + 36);
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  KeyPath = swift_getKeyPath();

  if (sub_1BA497438())
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v17 = sub_1BA4975C0();
    sub_1BA49AAA0(a1, &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PromptTileView);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    sub_1BA49147C(&v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v18, type metadata accessor for PromptTileView);
    v13 = swift_getKeyPath();
    if (v17)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v16 = sub_1BA49B8CC;
  }

  v21[8] = 0;
  v21[0] = 0;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10;
  *(a2 + 40) = 0x4020000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = v13;
  *(a2 + 64) = 0;
  *(a2 + 72) = v14;
  *(a2 + 80) = v16;
  *(a2 + 88) = v15;
  v19 = v13;
  sub_1B9F84D0C(KeyPath, 0, 0);

  sub_1BA49B15C(v19, 0, v14, v16, v15, sub_1B9F84D0C, sub_1B9F0F1B4);
  sub_1BA49B15C(v19, 0, v14, v16, v15, sub_1B9F84D1C, sub_1B9F0E310);
  sub_1B9F84D1C(KeyPath, 0, 0);

  return result;
}

BOOL sub_1BA497438()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for PromptTileView(0) + 28);
  v7 = *(v6 + *(type metadata accessor for PromptTileViewModel(0) + 40));
  v8 = *v0;
  if (*(v0 + 8) == 1)
  {
    v12 = *v0;
  }

  else
  {

    sub_1BA4A6FB8();
    v9 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v8, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v8) = v12;
  }

  return !sub_1BA006608(v8, v7);
}

BOOL sub_1BA4975C0()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for PromptTileView(0) + 28);
  v7 = *(v6 + *(type metadata accessor for PromptTileViewModel(0) + 44));
  v8 = *v0;
  if (*(v0 + 8) == 1)
  {
    v12 = *v0;
  }

  else
  {

    sub_1BA4A6FB8();
    v9 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v8, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v8) = v12;
  }

  if (sub_1BA006608(v8, v7))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return (v11 & 2) == 0;
}

uint64_t sub_1BA4977A0@<X0>(uint64_t a9@<X8>)
{
  *a9 = sub_1BA4A5868();
  *(a9 + 8) = 0x402C000000000000;
  *(a9 + 16) = 0;
  sub_1BA49A32C(0, &qword_1EDC5F300, sub_1BA493588, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  return sub_1BA492F78(v9, a9 + *(v11 + 44));
}

void sub_1BA49783C(uint64_t a1)
{
  type metadata accessor for DismissibleCellHeaderView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BA49AB08(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BA0D0F10(319);
      if (v3 <= 0x3F)
      {
        sub_1BA49AB08(319, &qword_1EDC6B680, &type metadata for Presentation, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BA497978(uint64_t a1)
{
  sub_1BA49AB08(319, &qword_1EDC5F350, &type metadata for Presentation, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1BA49AB08(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1BA49AC7C(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PromptTileViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_1B9F37BB8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BA497ABC(uint64_t a1)
{
  if (!qword_1EDC5EAC8)
  {
    sub_1BA493588(255);
    sub_1BA4920F8(&qword_1EDC5E9E8, sub_1BA493588, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EAC8);
    }
  }
}

void sub_1BA497B78(uint64_t a1)
{
  sub_1BA49AB08(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1BA49AC7C(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1BA49AB08(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BA49AC7C(319, &qword_1EDC5DB48, sub_1B9F37BB8, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BA497CE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BA497D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1BA497DD0()
{
  result = qword_1EBBF3428;
  if (!qword_1EBBF3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3428);
  }

  return result;
}

unint64_t sub_1BA497E28()
{
  result = qword_1EBBF3430;
  if (!qword_1EBBF3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3430);
  }

  return result;
}

void sub_1BA497E98(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4937D4(0, &qword_1EBBF3438, sub_1BA2C7558, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v12 = MEMORY[0x1EEE9AC00](v8, v9);
  v14 = &v29 - v13;
  if (*(v1 + 17))
  {
    v30 = v4;
    v31 = v11;
    v32 = v10;
    v33 = a1;
    v15 = *(v1 + 3);
    v16 = *(v1 + 4);
    if (qword_1EDC5EBA0 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDC5EBA8;
    KeyPath = swift_getKeyPath();
    v35 = v15;
    v36 = v16;
    v37 = KeyPath;
    v38 = v17;
    sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BA4B9FD0;
    v39 = *v1;
    v40 = *(v1 + 16);
    v20 = *(&v39 + 1);
    v21 = v39;
    v22 = v40;
    sub_1B9F0F1B4(v15, v16);

    if (v22 == 1)
    {
      sub_1BA49AD40(&v39, v34, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1BA49AB08);
    }

    else
    {
      v24 = MEMORY[0x1E697DCC0];
      sub_1BA49AD40(&v39, v34, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1BA49AB08);
      sub_1BA4A6FB8();
      v25 = sub_1BA4A5B28();
      sub_1BA4A3CA8();

      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA49ACE0(&v39, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], v24, sub_1BA49AB08);
      (*(v30 + 8))(v7, v3);
      v21 = v34[0];
      v20 = v34[1];
    }

    *(v19 + 32) = v21;
    *(v19 + 40) = v20;
    *(v19 + 48) = 0x726564616548;
    *(v19 + 56) = 0xE600000000000000;
    *(v19 + 64) = 0x6E6F7474754258;
    *(v19 + 72) = 0xE700000000000000;
    v26 = sub_1BA4A6AE8();

    v27 = HKUIJoinStringsForAutomationIdentifier();

    if (v27)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA2C7558(0);
      sub_1BA49AB58(&qword_1EDC5F270, sub_1BA2C7558, sub_1BA2C7684);
      sub_1BA4A5F18();

      sub_1B9F0E310(v35, v36);

      v28 = v33;
      sub_1BA49B454(v14, v33, &qword_1EBBF3438, sub_1BA2C7558, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
      (*(v31 + 56))(v28, 0, 1, v32);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v23 = *(v11 + 56);

    v23(a1, 1, 1, v12);
  }
}

void sub_1BA49842C(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_1BA4A5718();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A5D68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 4);
  *&v48 = *(v1 + 3);
  *(&v48 + 1) = v14;
  sub_1B9F252FC();

  v15 = sub_1BA4A5E18();
  v44 = v16;
  v45 = v15;
  v18 = v17;
  v43 = v19;
  KeyPath = swift_getKeyPath();
  v21 = v18 & 1;
  LOBYTE(v48) = v18 & 1;
  (*(v10 + 104))(v13, *MEMORY[0x1E6980EF8], v9);
  v22 = sub_1BA4A5C28();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_1BA4A5CB8();
  v23 = sub_1BA4A5CD8();
  sub_1BA492A30(v8, sub_1B9F87DEC);
  (*(v10 + 8))(v13, v9);
  v24 = swift_getKeyPath();
  v25 = sub_1BA4A60E8();
  v26 = swift_getKeyPath();
  LOBYTE(v14) = sub_1BA4A5B98();
  sub_1BA4A5188();
  v57 = 0;
  *&v48 = v45;
  *(&v48 + 1) = v44;
  LOBYTE(v49) = v21;
  *(&v49 + 1) = v43;
  LOWORD(v50) = 256;
  *(&v50 + 1) = KeyPath;
  LOBYTE(v51) = 0;
  *(&v51 + 1) = v24;
  *&v52 = v23;
  *(&v52 + 1) = v26;
  *&v53 = v25;
  BYTE8(v53) = v14;
  *&v54 = v27;
  *(&v54 + 1) = v28;
  *&v55 = v29;
  *(&v55 + 1) = v30;
  v56 = 0;
  sub_1BA49AB08(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5460;
  v58 = *v1;
  v59 = *(v1 + 16);
  v32 = v58;
  if (v59 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v34 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v35 = v39;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA49ACE0(&v58, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1BA49AB08);
    (*(v40 + 8))(v35, v41);
    v33 = *(&v46[0] + 1);
    v32 = *&v46[0];
  }

  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(v31 + 48) = 0x656C746954;
  *(v31 + 56) = 0xE500000000000000;
  v36 = sub_1BA4A6AE8();

  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D62F4(0);
    sub_1BA49B3D4(&qword_1EDC5EE40, sub_1BA0D62F4, sub_1BA0D6574);
    sub_1BA4A5F18();

    v46[6] = v54;
    v46[7] = v55;
    v47 = v56;
    v46[2] = v50;
    v46[3] = v51;
    v46[4] = v52;
    v46[5] = v53;
    v46[0] = v48;
    v46[1] = v49;
    sub_1BA492A30(v46, sub_1BA0D62F4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA498978()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v7, v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return v7;
}

uint64_t sub_1BA498ADC@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  sub_1BA23D6B4(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BA4A53C8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BA4A6FB8();
    v15 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BA498D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA49A4D8(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31[-v10];
  sub_1BA49A430(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31[-v18];
  v20 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v21 = (a1 + *(v20 + 24));
  v22 = v21[1];
  if (v22)
  {
    v32 = *v21;
    v33 = v22;
    sub_1BA499170(&v32, a1);
    sub_1BA4937D4(0, &qword_1EDC5EE58, sub_1BA0D6380, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    (*(*(v23 - 8) + 56))(v19, 0, 1, v23);
  }

  else
  {
    sub_1BA4937D4(0, &qword_1EDC5EE58, sub_1BA0D6380, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  }

  v25 = (a1 + *(v20 + 28));
  v26 = v25[1];
  if (v26)
  {
    v32 = *v25;
    v33 = v26;
    sub_1BA4993A0(&v32, a1, v11);
    sub_1BA4937D4(0, &qword_1EDC5F1A8, sub_1BA49A584, sub_1BA0D5B58, MEMORY[0x1E697E830]);
    (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  }

  else
  {
    sub_1BA4937D4(0, &qword_1EDC5F1A8, sub_1BA49A584, sub_1BA0D5B58, MEMORY[0x1E697E830]);
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  }

  sub_1BA49AAA0(v19, v15, sub_1BA49A430);
  sub_1B9FAAF58(v11, v7);
  sub_1BA49AAA0(v15, a2, sub_1BA49A430);
  sub_1BA493710(0, &qword_1EDC5EE48, sub_1BA49A430, sub_1BA49A4D8);
  sub_1B9FAAF58(v7, a2 + *(v29 + 48));
  sub_1B9FAAFBC(v11);
  sub_1BA492A30(v19, sub_1BA49A430);
  sub_1B9FAAFBC(v7);
  return sub_1BA492A30(v15, sub_1BA49A430);
}

void sub_1BA499170(void *a1, uint64_t a2)
{
  v27 = a2;
  sub_1B9F252FC();

  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1BA4A5E18();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = v7 & 1;
  v12 = sub_1BA4A5C18();
  v13 = swift_getKeyPath();
  v14 = sub_1BA4A60F8();
  *&v21 = v3;
  *(&v21 + 1) = v5;
  LOBYTE(v22) = v11;
  *(&v22 + 1) = v9;
  LOWORD(v23) = 256;
  *(&v23 + 1) = KeyPath;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = v13;
  *&v25 = v12;
  *(&v25 + 1) = swift_getKeyPath();
  v26 = v14;
  sub_1BA49AB08(0, &qword_1EDC6E330, v2, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  *(v15 + 32) = sub_1BA498978();
  *(v15 + 40) = v16;
  *(v15 + 48) = 0x7470697263736544;
  *(v15 + 56) = 0xEB000000006E6F69;
  v17 = sub_1BA4A6AE8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D6380(0);
    sub_1BA0D6574();
    sub_1BA4A5F18();

    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    sub_1BA492A30(v19, sub_1BA0D6380);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA4993A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = sub_1BA4A53C8();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v60 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1BA4A5488();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A5848();
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v18);
  sub_1BA49A658(0);
  v54 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA49A584(0, v21);
  v58 = *(v24 - 8);
  v59 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v29 = a1[1];
  sub_1BA49AAA0(a2, &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  v30 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v31 = swift_allocObject();
  sub_1BA49147C(&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0);
  v67 = v28;
  v68 = v29;
  v69 = a2;
  sub_1BA4937D4(0, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  sub_1BA49A7C8();
  sub_1BA4A61C8();
  v32 = sub_1BA4A6058();
  KeyPath = swift_getKeyPath();
  sub_1BA49A6A0(0);
  v35 = &v23[*(v34 + 36)];
  *v35 = KeyPath;
  v35[1] = v32;
  v36 = &v23[*(v54 + 36)];
  sub_1BA49A8EC(0);
  v38 = *(v37 + 28);
  v39 = *MEMORY[0x1E697DC20];
  v40 = sub_1BA4A51C8();
  v41 = v36 + v38;
  v42 = v27;
  (*(*(v40 - 8) + 104))(v41, v39, v40);
  *v36 = swift_getKeyPath();
  v43 = v55;
  sub_1BA4A5838();
  sub_1BA49A920();
  sub_1BA4920F8(&qword_1EDC5EDC8, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  v44 = v56;
  sub_1BA4A5EA8();
  (*(v57 + 8))(v43, v44);
  sub_1BA492A30(v23, sub_1BA49A658);
  v45 = v60;
  sub_1BA498ADC(v60);
  LOBYTE(v39) = sub_1BA4A53B8();
  (*(v61 + 8))(v45, v62);
  v46 = v63;
  if (v39)
  {
    sub_1BA4A5468();
  }

  else
  {
    sub_1BA4A5478();
  }

  v47 = swift_getKeyPath();
  sub_1BA4937D4(0, &qword_1EDC5F1A8, sub_1BA49A584, sub_1BA0D5B58, MEMORY[0x1E697E830]);
  v49 = v66;
  v50 = (v66 + *(v48 + 36));
  sub_1BA0D5B58(0);
  (*(v64 + 32))(v50 + *(v51 + 28), v46, v65);
  *v50 = v47;
  return (*(v58 + 32))(v49, v42, v59);
}

void sub_1BA4999E0(uint64_t a1, uint64_t a2)
{
  sub_1B9F252FC();

  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1BA4A5E18();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1BA4A5C18();
  sub_1BA4A5C98();
  v10 = sub_1BA4A5D08();

  *&v17 = v3;
  *(&v17 + 1) = v5;
  LOBYTE(v18) = v7 & 1;
  *(&v18 + 1) = v9;
  LOWORD(v19) = 256;
  *(&v19 + 1) = swift_getKeyPath();
  *&v20 = v10;
  *(&v20 + 1) = swift_getKeyPath();
  v21 = 0;
  sub_1BA49AB08(0, &qword_1EDC6E330, v2, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5460;
  *(v11 + 32) = sub_1BA498978();
  *(v11 + 40) = v12;
  *(v11 + 48) = 1802398028;
  *(v11 + 56) = 0xE400000000000000;
  v13 = sub_1BA4A6AE8();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (v14)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D57D8(0);
    sub_1BA0D66E4(&qword_1EDC5EF08, sub_1BA0D57D8, sub_1BA0D5B8C);
    sub_1BA4A5F18();

    v15[2] = v19;
    v15[3] = v20;
    v16 = v21;
    v15[0] = v17;
    v15[1] = v18;
    sub_1BA492A30(v15, sub_1BA0D57D8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA499C18@<X0>(uint64_t a7@<X8>)
{
  *a7 = sub_1BA4A5878();
  *(a7 + 8) = 0x4028000000000000;
  *(a7 + 16) = 0;
  sub_1BA49A32C(0, &qword_1EDC5F2F0, sub_1BA49A398, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  return sub_1BA498D48(v7, a7 + *(v9 + 44));
}

unint64_t sub_1BA499C90()
{
  result = qword_1EDC6D128;
  if (!qword_1EDC6D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D128);
  }

  return result;
}

unint64_t sub_1BA499CE8()
{
  result = qword_1EDC6D130;
  if (!qword_1EDC6D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D130);
  }

  return result;
}

unint64_t sub_1BA499D40()
{
  result = qword_1EDC6D110;
  if (!qword_1EDC6D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D110);
  }

  return result;
}

unint64_t sub_1BA499D98()
{
  result = qword_1EDC6D118;
  if (!qword_1EDC6D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D118);
  }

  return result;
}

uint64_t sub_1BA499DEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A5588();
  *a1 = result;
  return result;
}

uint64_t sub_1BA499E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a6(v12);
}

uint64_t sub_1BA499F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F546567616D69 && a2 == 0xEF676E6964646150;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576567616D69 && a2 == 0xEA00000000006874 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA50B070 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

uint64_t sub_1BA49A094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6956726564616568 && a2 == 0xEF6C65646F4D7765;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BA4E9FF0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001BA4EA030 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4EA050 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BA50B090 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001BA50B0B0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

void sub_1BA49A32C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1BA4A52C8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA49A3D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA493710(255, a3, a4, a5);
    v6 = sub_1BA4A6428();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA49A46C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1BA49AB08(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1BA4A5B08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA49A514(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA4937D4(255, a3, a4, a5, MEMORY[0x1E697E830]);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA49A584(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5EBB0)
  {
    sub_1BA49A658(255);
    sub_1BA4A5848();
    sub_1BA49A920();
    sub_1BA4920F8(&qword_1EDC5EDC8, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBB0);
    }
  }
}

void sub_1BA49A6A0(uint64_t a1)
{
  if (!qword_1EDC5F130)
  {
    sub_1BA49A720(255);
    sub_1BA49A46C(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F130);
    }
  }
}

void sub_1BA49A720(uint64_t a1)
{
  if (!qword_1EDC5EB70)
  {
    sub_1BA4937D4(255, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA49A7C8();
    v1 = sub_1BA4A61F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB70);
    }
  }
}

unint64_t sub_1BA49A7C8()
{
  result = qword_1EDC5EE98;
  if (!qword_1EDC5EE98)
  {
    sub_1BA4937D4(255, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA0D66E4(&qword_1EDC5EF08, sub_1BA0D57D8, sub_1BA0D5B8C);
    sub_1BA4920F8(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EE98);
  }

  return result;
}

unint64_t sub_1BA49A920()
{
  result = qword_1EDC5EFC0;
  if (!qword_1EDC5EFC0)
  {
    sub_1BA49A658(255);
    sub_1BA49A9D0();
    sub_1BA4920F8(&qword_1EDC5ECA8, sub_1BA49A8EC, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EFC0);
  }

  return result;
}

unint64_t sub_1BA49A9D0()
{
  result = qword_1EDC5F138;
  if (!qword_1EDC5F138)
  {
    sub_1BA49A6A0(255);
    sub_1BA4920F8(&qword_1EDC5EB78, sub_1BA49A720, MEMORY[0x1E697D680]);
    sub_1B9F87940(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F138);
  }

  return result;
}

uint64_t sub_1BA49AAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA49AB08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA49AB58(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1B9F87940(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA49ABFC()
{
  v1 = _s18HealthExperienceUI33ContentSecondaryTextAndActionViewVMa_0(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 40) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

void sub_1BA49AC7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA49ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA49AD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA49ADB4(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1BA4920F8(a3, a4, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA49AE58()
{
  result = qword_1EDC5F168;
  if (!qword_1EDC5F168)
  {
    sub_1BA493AFC(255);
    sub_1BA4920F8(&qword_1EDC5ECC8, sub_1BA493B5C, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F168);
  }

  return result;
}

uint64_t objectdestroy_81Tm()
{
  v1 = type metadata accessor for PromptTileView(0);
  v2 = *(*(v1 - 8) + 80);
  v12 = *(*(v1 - 8) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1B9F80960(*(v0 + v3), *(v0 + v3 + 8));
  sub_1B9F84D1C(*(v4 + 16), *(v4 + 24), *(v4 + 32));
  v5 = *(v1 + 24);
  sub_1BA49AC7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1BA4A53C8();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v4 + *(v1 + 28);

  v8 = *(type metadata accessor for PromptTileViewModel(0) + 32);
  v9 = sub_1BA4A2BF8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v12, v2 | 7);
}

uint64_t sub_1BA49B15C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void), uint64_t (*a7)(uint64_t, uint64_t))
{
  if (a4 != 1)
  {
    a6(result, a2, a3 & 1);

    return a7(a4, a5);
  }

  return result;
}

uint64_t sub_1BA49B26C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1BA4920F8(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA49B3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA49B454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA4937D4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1BA49B538(uint64_t a1)
{
  if (!qword_1EDC5EAA8)
  {
    sub_1BA49A398(255);
    sub_1BA4920F8(&qword_1EDC5E950, sub_1BA49A398, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EAA8);
    }
  }
}

unint64_t sub_1BA49B5CC()
{
  result = qword_1EDC5EE10;
  if (!qword_1EDC5EE10)
  {
    sub_1BA4937D4(255, &qword_1EDC5EE08, sub_1BA0D62F4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA49B3D4(&qword_1EDC5EE40, sub_1BA0D62F4, sub_1BA0D6574);
    sub_1BA4920F8(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EE10);
  }

  return result;
}

unint64_t sub_1BA49B6F8()
{
  result = qword_1EBBF3470;
  if (!qword_1EBBF3470)
  {
    sub_1BA49A514(255, &qword_1EBBF3478, &qword_1EBBF3438, sub_1BA2C7558, MEMORY[0x1E697CBE8]);
    sub_1BA49B7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3470);
  }

  return result;
}

unint64_t sub_1BA49B7A8()
{
  result = qword_1EBBF3480;
  if (!qword_1EBBF3480)
  {
    sub_1BA4937D4(255, &qword_1EBBF3438, sub_1BA2C7558, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA49AB58(&qword_1EDC5F270, sub_1BA2C7558, sub_1BA2C7684);
    sub_1BA4920F8(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3480);
  }

  return result;
}

uint64_t PDFBody.init(attributedString:renderMethod:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *(a3 + 8) = 0;
  *a3 = result;
  *(a3 + 9) = v3;
  return result;
}

uint64_t sub_1BA49B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1B9F46920(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1B9F23224(v13);
}

void PDFBody.init(alignment:_:attributes:)(char *a1@<X0>, uint64_t a5@<X8>)
{
  v6 = *a1;
  *(a5 + 9) = 0;
  *(a5 + 8) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v8 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v9 = sub_1BA4A6618();

  v10 = [v7 initWithString:v8 attributes:v9];

  *a5 = v10;
}

void PDFRenderable<>.render(context:document:)(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(&v42 + 1, a3, a4);
  v8 = BYTE1(v42);
  if (*(a2 + 96) == 1)
  {
    BYTE1(v42) ^= 1u;
    if ((v8 & 1) == 0)
    {
LABEL_3:
      type metadata accessor for PDFBuilder.Document();
      swift_initStackObject();
      v9 = sub_1BA20F244(a2);
      v10 = PDFBuilder.Document.drawingContext.getter();
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v43.origin.x = v10;
      v43.origin.y = v12;
      v43.size.width = v14;
      v43.size.height = v16;
      Width = CGRectGetWidth(v43);
      v18 = *(a4 + 8);
      v19 = v18(a3, a4);
      [v19 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(*(v9 + 168)), INFINITY}];
      x = v44.origin.x;
      y = v44.origin.y;
      v22 = v44.size.width;
      height = v44.size.height;
      v24 = CGRectGetWidth(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = v22;
      v45.size.height = height;
      v25 = ceil(CGRectGetHeight(v45));
      v26 = *(v9 + 168);
      v27 = *(v9 + 176);

      v46.origin.x = v26;
      v46.origin.y = v27;
      v46.size.width = v24;
      v46.size.height = v25;
      v28 = Width - CGRectGetWidth(v46) + -1.0;
      v29 = *(v9 + 168);
      v30 = *(v9 + 176);
      v31 = *(v9 + 184);
      v32 = *(v9 + 192);
      v47.origin.x = v29;
      v47.origin.y = v30;
      v47.size.width = v31;
      v47.size.height = v32;
      v33 = v28 + CGRectGetMinX(v47);
      v48.origin.x = v29;
      v48.origin.y = v30;
      v48.size.width = v31;
      v48.size.height = v32;
      v34 = CGRectGetMinY(v48) + 0.0;
      v49.origin.x = v29;
      v49.origin.y = v30;
      v49.size.width = v31;
      v49.size.height = v32;
      v35 = CGRectGetWidth(v49) - v28;
      v50.origin.x = v29;
      v50.origin.y = v30;
      v50.size.width = v31;
      v50.size.height = v32;
      v36 = CGRectGetHeight(v50);
      *(v9 + 168) = v33;
      *(v9 + 176) = v34;
      *(v9 + 184) = v35;
      *(v9 + 192) = v36;
      *(v9 + 200) = 0;
      v37 = v18(a3, a4);
      (*(a4 + 24))(&v42, a3, a4);
      v41 = v42;
      v38.super.super.isa = a1;
      sub_1BA49C858(v38, v9, a2, &v41);

      return;
    }
  }

  else if (BYTE1(v42))
  {
    goto LABEL_3;
  }

  v39 = (*(a4 + 8))(a3, a4);
  (*(a4 + 24))(&v42, a3, a4);
  v41 = v42;
  v40.super.super.isa = a1;
  sub_1BA49C858(v40, a2, 0, &v41);
}

double PDFRenderable<>.boundingRectForContent(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  v11.origin.x = PDFBuilder.Document.drawingContext.getter();
  [v4 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v11), INFINITY}];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetHeight(v13);
  v9 = *(a1 + 168);

  return v9;
}

void PDFAttributedStrings.init(alignment:lineSplit:items:)(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v46 = 0;
  v47 = v5;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v7 = 0;
  v8 = *(a3 + 16);
  v36 = v8;
  v37 = a3 + 32;
  v9 = &selRef_createHKUnitPreferenceController;
  v35 = v6;
  while (1)
  {
    if (v7 == v8)
    {
      v10 = 0;
      v11 = 0uLL;
      v7 = v8;
      v12 = 0uLL;
      v13 = 0uLL;
      goto LABEL_7;
    }

    if (v7 >= *(a3 + 16))
    {
      break;
    }

    *&v40 = v7;
    sub_1BA4518A8(v37 + 48 * v7, &v40 + 8);
    v11 = v40;
    v12 = v41;
    v13 = v42;
    ++v7;
    v10 = v43;
LABEL_7:
    v44[0] = v11;
    v44[1] = v12;
    v44[2] = v13;
    v45 = v10;
    if (!v13)
    {

      v32 = v47;
      v33 = v46;
      *a4 = v6;
      *(a4 + 8) = v32;
      *(a4 + 9) = v33;
      return;
    }

    v39 = v11;
    sub_1BA0956E8((v44 + 8), &v40);
    v14 = *(&v41 + 1);
    v15 = v42;
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    v16 = (*(v15 + 8))(v14, v15);
    [v6 v9[254]];

    if (v39 != *(a3 + 16) - 1 && (a2 & 1) != 0)
    {
      v17 = *(&v41 + 1);
      v18 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v19 = (*(v18 + 8))(v17, v18);
      v20 = [v19 length];
      v21 = v20 - 1;
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_14;
      }

      v22 = a3;
      v23 = v9;
      v24 = *(&v41 + 1);
      v25 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v26 = (*(v25 + 8))(v24, v25);
      v27 = [v26 attributesAtIndex:v21 effectiveRange:0];

      type metadata accessor for Key(0);
      sub_1BA0262E4();
      sub_1BA4A6628();

      v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v29 = sub_1BA4A6758();
      v30 = sub_1BA4A6618();
      v9 = v23;
      a3 = v22;
      v6 = v35;
      v8 = v36;

      v31 = [v28 initWithString:v29 attributes:v30];

      [v35 v9 + 411];
    }

    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void NSAttributedString.font.getter()
{
  v9 = 0;
  v1 = [v0 length];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = *MEMORY[0x1E69DB648];
    v4 = swift_allocObject();
    *(v4 + 16) = &v9;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1BA49D86C;
    *(v5 + 24) = v4;
    aBlock[4] = sub_1BA49D874;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA49B910;
    aBlock[3] = &block_descriptor_129;
    v6 = _Block_copy(aBlock);

    [v0 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0x100000, v6}];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      return;
    }
  }

  __break(1u);
}

void sub_1BA49C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  sub_1B9FF168C(a1, v8);
  if (v9)
  {
    sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
    if (swift_dynamicCast())
    {
      v6 = *a5;
      *a5 = v7;
    }
  }

  else
  {
    sub_1B9F23224(v8);
  }
}

double NSAttributedString.boundingRectForContent(in:)(uint64_t a1)
{
  v2 = v1;
  v9.origin.x = PDFBuilder.Document.drawingContext.getter();
  [v2 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v9), INFINITY}];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetHeight(v11);
  return *(a1 + 168);
}

double NSAttributedString.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  NSAttributedString.font.getter();
  if (v2)
  {
    v3 = v2;
    [v2 lineHeight];
  }

  else
  {
    if (qword_1EBBE8438 != -1)
    {
      swift_once();
    }

    [qword_1EBBED250 lineHeight];
  }

  sub_1BA4A73B8();
  v5.origin.x = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(v5);
  return *(a1 + 168);
}

void NSAttributedString.render(context:document:)(UIGraphicsPDFRendererContext a1, uint64_t a2)
{
  v3 = v2;
  v43 = *MEMORY[0x1E69E9840];
  Length = CFAttributedStringGetLength(v2);
  NSAttributedString.font.getter();
  if (v7)
  {
    v8 = v7;
    [v7 lineHeight];
    v10 = v9;
  }

  else
  {
    if (qword_1EBBE8438 != -1)
    {
LABEL_16:
      swift_once();
    }

    [qword_1EBBED250 lineHeight];
    v10 = v11;
  }

  sub_1BA4A73B8();
  v13 = v12;
  v45.origin.x = PDFBuilder.Document.drawingContext.getter();
  Width = CGRectGetWidth(v45);
  if (v13 >= Width)
  {
    v15 = Width;
  }

  else
  {
    v15 = v13;
  }

  v16 = ceil(v10);
  v46 = *(a2 + 168);
  x = v46.origin.x;
  y = v46.origin.y;
  if (!CGRectContainsRect(v46, *(&v15 - 2)))
  {
    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }

  v19 = 0;
  v41 = 0x7FF0000000000000;
  while (1)
  {
    v20 = CTFramesetterCreateWithAttributedString(v3);
    fitRange.location = 0;
    fitRange.length = 0;
    v44.location = v19;
    v44.length = 0;
    v21 = CTFramesetterSuggestFrameSizeWithConstraints(v20, v44, 0, *(a2 + 184), &fitRange);
    v22 = [(__CFAttributedString *)v3 attributedSubstringFromRange:fitRange.location, fitRange.length, v21.width, v21.height];
    [v22 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(*(a2 + 168)), INFINITY}];
    v23 = v47.origin.x;
    v24 = v47.origin.y;
    v25 = v47.size.width;
    height = v47.size.height;
    v27 = CGRectGetWidth(v47);
    v48.origin.x = v23;
    v48.origin.y = v24;
    v48.size.width = v25;
    v48.size.height = height;
    v28 = ceil(CGRectGetHeight(v48));
    v29 = *(a2 + 168);
    v30 = *(a2 + 176);
    [v22 drawInRect_];
    v49.origin.x = v29;
    v49.origin.y = v30;
    v49.size.width = v27;
    v49.size.height = v28;
    v31 = CGRectGetHeight(v49);
    v32 = *(a2 + 168);
    v33 = *(a2 + 176);
    v34 = *(a2 + 184);
    v35 = *(a2 + 192);
    v50.origin.x = v32;
    v50.origin.y = v33;
    v50.size.width = v34;
    v50.size.height = v35;
    v36 = CGRectGetMinX(v50) + 0.0;
    v51.origin.x = v32;
    v51.origin.y = v33;
    v51.size.width = v34;
    v51.size.height = v35;
    v37 = v31 + CGRectGetMinY(v51);
    v52.origin.x = v32;
    v52.origin.y = v33;
    v52.size.width = v34;
    v52.size.height = v35;
    v38 = CGRectGetWidth(v52);
    v53.origin.x = v32;
    v53.origin.y = v33;
    v53.size.width = v34;
    v53.size.height = v35;
    v39 = CGRectGetHeight(v53);
    *(a2 + 168) = v36;
    *(a2 + 176) = v37;
    *(a2 + 184) = v38;
    *(a2 + 192) = v39 - v31;
    *(a2 + 200) = 0;
    v40 = __OFADD__(v19, fitRange.length);
    v19 += fitRange.length;
    if (v40)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v19 == Length)
    {
      break;
    }

    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }
}

void sub_1BA49C858(UIGraphicsPDFRendererContext a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4;
  v79 = *MEMORY[0x1E69E9840];
  LOBYTE(v9) = *a4;
  Length = CFAttributedStringGetLength(v4);
  NSAttributedString.font.getter();
  if (!v11)
  {
    if (qword_1EBBE8438 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_4;
  }

  v12 = v11;
  [v11 lineHeight];
  v14 = v13;

  while (1)
  {
    sub_1BA4A73B8();
    v17 = v16;
    v81.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v81);
    if (v17 >= Width)
    {
      v19 = Width;
    }

    else
    {
      v19 = v17;
    }

    v20 = ceil(v14);
    v82 = *(a2 + 168);
    x = v82.origin.x;
    y = v82.origin.y;
    if (!CGRectContainsRect(v82, *(&v19 - 2)))
    {
      PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
      if (a3)
      {
        swift_beginAccess();
        v23 = *(a2 + 160);
        swift_beginAccess();
        *(a3 + 160) = v23;
        *(a3 + 120) = *(a2 + 120);

        sub_1BA20F060();
      }
    }

    if (v9)
    {
      break;
    }

    swift_beginAccess();
    v9 = 0;
    while (1)
    {
      v44 = CTFramesetterCreateWithAttributedString(v5);
      fitRange.location = 0;
      fitRange.length = 0;
      v80.location = v9;
      v80.length = 0;
      v45 = CTFramesetterSuggestFrameSizeWithConstraints(v44, v80, 0, *(a2 + 184), &fitRange);
      v46 = [(__CFAttributedString *)v5 attributedSubstringFromRange:fitRange.location, fitRange.length, v45.width, v45.height];
      [v46 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(*(a2 + 168)), INFINITY}];
      v47 = v91.origin.x;
      v48 = v91.origin.y;
      v49 = v91.size.width;
      height = v91.size.height;
      v51 = CGRectGetWidth(v91);
      v92.origin.x = v47;
      v92.origin.y = v48;
      v92.size.width = v49;
      v92.size.height = height;
      v52 = ceil(CGRectGetHeight(v92));
      v53 = *(a2 + 168);
      v54 = *(a2 + 176);
      [v46 drawInRect_];
      v74 = v53;
      v75 = v52;
      v93.origin.x = v53;
      v93.origin.y = v54;
      rect = v51;
      v93.size.width = v51;
      v93.size.height = v52;
      v55 = CGRectGetHeight(v93);
      v56 = *(a2 + 168);
      v57 = *(a2 + 176);
      v58 = *(a2 + 184);
      v59 = *(a2 + 192);
      v94.origin.x = v56;
      v94.origin.y = v57;
      v94.size.width = v58;
      v94.size.height = v59;
      v77 = CGRectGetMinX(v94) + 0.0;
      v95.origin.x = v56;
      v95.origin.y = v57;
      v95.size.width = v58;
      v95.size.height = v59;
      v60 = v55 + CGRectGetMinY(v95);
      v96.origin.x = v56;
      v96.origin.y = v57;
      v96.size.width = v58;
      v96.size.height = v59;
      v61 = CGRectGetWidth(v96);
      v97.origin.x = v56;
      v97.origin.y = v57;
      v97.size.width = v58;
      v97.size.height = v59;
      v62 = CGRectGetHeight(v97);
      *(a2 + 168) = v77;
      *(a2 + 176) = v60;
      *(a2 + 184) = v61;
      *(a2 + 192) = v62 - v55;
      *(a2 + 200) = 0;
      if (a3)
      {
        v98.origin.x = v74;
        v98.size.height = v75;
        v98.origin.y = v54;
        v98.size.width = rect;
        v63 = CGRectGetHeight(v98);
        v99.origin.x = PDFBuilder.Document.drawingContext.getter();
        v64 = v99.origin.x;
        v65 = v99.origin.y;
        v66 = v99.size.width;
        v67 = v99.size.height;
        v68 = CGRectGetMinX(v99) + 0.0;
        v100.origin.x = v64;
        v100.origin.y = v65;
        v100.size.width = v66;
        v100.size.height = v67;
        v69 = v63 + CGRectGetMinY(v100);
        v101.origin.x = v64;
        v101.origin.y = v65;
        v101.size.width = v66;
        v101.size.height = v67;
        v70 = CGRectGetWidth(v101);
        v102.origin.x = v64;
        v102.origin.y = v65;
        v102.size.width = v66;
        v102.size.height = v67;
        v71 = CGRectGetHeight(v102);
        *(a3 + 168) = v68;
        *(a3 + 176) = v69;
        *(a3 + 184) = v70;
        *(a3 + 192) = v71 - v63;
        *(a3 + 200) = 0;
      }

      v72 = __OFADD__(v9, fitRange.length);
      v9 += fitRange.length;
      if (v72)
      {
        break;
      }

      if (v9 == Length)
      {

        return;
      }

      PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
      if (a3)
      {
        v73 = *(a2 + 160);
        swift_beginAccess();
        *(a3 + 160) = v73;
        *(a3 + 120) = *(a2 + 120);

        sub_1BA20F060();
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    [qword_1EBBED250 lineHeight];
    v14 = v15;
  }

  [(__CFAttributedString *)v5 drawAtPoint:*(a2 + 168), *(a2 + 176)];
  [(__CFAttributedString *)v5 size];
  v25 = v24;
  v26 = *(a2 + 168);
  v27 = *(a2 + 176);
  v28 = *(a2 + 184);
  v29 = *(a2 + 192);
  v83.origin.x = v26;
  v83.origin.y = v27;
  v83.size.width = v28;
  v83.size.height = v29;
  v30 = CGRectGetMinX(v83) + 0.0;
  v84.origin.x = v26;
  v84.origin.y = v27;
  v84.size.width = v28;
  v84.size.height = v29;
  v31 = v25 + CGRectGetMinY(v84);
  v85.origin.x = v26;
  v85.origin.y = v27;
  v85.size.width = v28;
  v85.size.height = v29;
  v32 = CGRectGetWidth(v85);
  v86.origin.x = v26;
  v86.origin.y = v27;
  v86.size.width = v28;
  v86.size.height = v29;
  v33 = CGRectGetHeight(v86);
  *(a2 + 168) = v30;
  *(a2 + 176) = v31;
  *(a2 + 184) = v32;
  *(a2 + 192) = v33 - v25;
  *(a2 + 200) = 0;
  if (a3)
  {
    [(__CFAttributedString *)v5 size];
    v35 = v34;
    v87.origin.x = PDFBuilder.Document.drawingContext.getter();
    v36 = v87.origin.x;
    v37 = v87.origin.y;
    v38 = v87.size.width;
    v39 = v87.size.height;
    v40 = CGRectGetMinX(v87) + 0.0;
    v88.origin.x = v36;
    v88.origin.y = v37;
    v88.size.width = v38;
    v88.size.height = v39;
    v41 = v35 + CGRectGetMinY(v88);
    v89.origin.x = v36;
    v89.origin.y = v37;
    v89.size.width = v38;
    v89.size.height = v39;
    v42 = CGRectGetWidth(v89);
    v90.origin.x = v36;
    v90.origin.y = v37;
    v90.size.width = v38;
    v90.size.height = v39;
    v43 = CGRectGetHeight(v90);
    *(a3 + 168) = v40;
    *(a3 + 176) = v41;
    *(a3 + 184) = v42;
    *(a3 + 192) = v43 - v35;
    *(a3 + 200) = 0;
  }
}

double sub_1BA49CDFC(uint64_t a1)
{
  v3 = *v1;
  v9.origin.x = PDFBuilder.Document.drawingContext.getter();
  [v3 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v9), INFINITY}];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetHeight(v11);
  return *(a1 + 168);
}

double PDFRenderable<>.minimumBoundingRectForContent(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  NSAttributedString.font.getter();
  if (v5)
  {
    v6 = v5;
    [v5 lineHeight];
  }

  else
  {
    if (qword_1EBBE8438 != -1)
    {
      swift_once();
    }

    [qword_1EBBED250 lineHeight];
  }

  sub_1BA4A73B8();
  v9.origin.x = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(v9);
  v7 = *(a1 + 168);

  return v7;
}

void PDFAttributedStrings.init(alignment:lineSplit:_:)(char *a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v6 = a3();
  PDFAttributedStrings.init(alignment:lineSplit:items:)(&v9, a2, v6, &v10);
  v7 = v11;
  v8 = v12;
  *a4 = v10;
  *(a4 + 8) = v7;
  *(a4 + 9) = v8;
}

void _s18HealthExperienceUI10PDFCaptionV_9alignment10attributesACSS_AA16PDFTextAlignmentOSDySo21NSAttributedStringKeyaypGtcfC_0(char *a3@<X2>, uint64_t a5@<X8>)
{
  v6 = *a3;
  *(a5 + 9) = 0;
  *(a5 + 8) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v8 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v9 = sub_1BA4A6618();

  v10 = [v7 initWithString:v8 attributes:v9];

  *a5 = v10;
}

void PDFBodyList.init(_:alignment:attributes:boldAttributes:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = *a3;
  sub_1BA49D89C(a1, a2, a4, a5);
  v8 = v7;

  *a6 = v8;
}

unint64_t sub_1BA49D4AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v46 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v12 = a5;
  v16 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v17 = HIBYTE(a6) & 0xF) : (v17 = a5 & 0xFFFFFFFFFFFFLL), !v17))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v16 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v8 = sub_1BA4A69E8();
    v12 = v31;
    v13 = v32;
    v14 = v33;

    v15 = sub_1BA280158(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v15 + 16);
    a7 = *(v15 + 24);
LABEL_39:
    v11 = v10 + 1;
    if (v10 < a7 >> 1)
    {
LABEL_40:
      *(v15 + 16) = v11;
      v37 = (v15 + 32 * v10);
      v37[4] = v8;
      v37[5] = v12;
      v37[6] = v13;
      v37[7] = v14;
      return v15;
    }

LABEL_43:
    v15 = sub_1BA280158((a7 > 1), v11, 1, v15);
    goto LABEL_40;
  }

  v8 = a4;
  v18 = 4 * v17;
  v15 = MEMORY[0x1E69E7CC0];
  v19 = 15;
  while (1)
  {
    v14 = v19 >> 14;
    if (v19 >> 14 == v18)
    {
      goto LABEL_33;
    }

    v42 = v15;
    v40 = a1;
    while (2)
    {
      v43 = v19;
      v15 = v19;
      while (1)
      {
        v20 = sub_1BA4A69B8();
        v13 = v21;
        v45[0] = v20;
        v45[1] = v21;
        v22 = v46(v45);
        if (v9)
        {

          return v15;
        }

        v23 = v22;

        if (v23)
        {
          break;
        }

        v15 = sub_1BA4A68E8();
        v14 = v15 >> 14;
        if (v15 >> 14 == v18)
        {
          v15 = v42;
          v19 = v43;
          goto LABEL_33;
        }
      }

      result = v43;
      if (v43 >> 14 == v14 && (a2 & 1) != 0)
      {
        v19 = sub_1BA4A68E8();
        v14 = v19 >> 14;
        if (v19 >> 14 != v18)
        {
          continue;
        }

        v15 = v42;
LABEL_33:
        if (v19 >> 14 == v18 && (a2 & 1) != 0)
        {

          return v15;
        }

        if (v18 < v19 >> 14)
        {
          __break(1u);
        }

        else
        {
          v8 = sub_1BA4A69E8();
          v12 = v34;
          v13 = v35;
          v14 = v36;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v10 = *(v15 + 16);
            a7 = *(v15 + 24);
            goto LABEL_39;
          }
        }

        v15 = sub_1BA280158(0, *(v15 + 16) + 1, 1, v15);
        goto LABEL_38;
      }

      break;
    }

    if (v14 < v43 >> 14)
    {
      break;
    }

    v25 = sub_1BA4A69E8();
    v44 = v26;
    v38 = v28;
    v39 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1BA280158(0, *(v42 + 2) + 1, 1, v42);
    }

    v14 = *(v42 + 2);
    v29 = *(v42 + 3);
    v13 = v14 + 1;
    if (v14 >= v29 >> 1)
    {
      v42 = sub_1BA280158((v29 > 1), v14 + 1, 1, v42);
    }

    *(v42 + 2) = v13;
    v30 = &v42[32 * v14];
    *(v30 + 4) = v25;
    *(v30 + 5) = v44;
    *(v30 + 6) = v39;
    *(v30 + 7) = v38;
    v15 = v42;
    v19 = sub_1BA4A68E8();
    a1 = v40;
    if (*(v42 + 2) == v40)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void sub_1BA49D89C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  *&v93 = 10;
  *(&v93 + 1) = 0xE100000000000000;
  v90 = &v93;

  v8 = sub_1BA49D4AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B9F13F84, v89, a1, a2, v7);
  v9 = v8;
  v80 = *(v8 + 16);
  if (v80)
  {
    v10 = 0;
    v11 = 0;
    v78 = a3;
    v79 = v8 + 32;
    v12 = 0xE000000000000000;
    v77 = v8;
    do
    {
      v17 = v10;
      v82 = v12;
      v83 = v11;
      while (1)
      {
        v18 = *(v9 + 16);
        if (v17 >= v18)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

        v19 = (v79 + 32 * v17);
        v20 = *v19;
        v21 = v19[1];
        v23 = v19[2];
        v22 = v19[3];
        v87 = v17;
        v88 = v17 + 1;
        v86 = v18 - 1;
        v24 = v21 >> 14;
        v25 = *v19 >> 14;

        if (v25 != v21 >> 14)
        {
          break;
        }

LABEL_12:
        if (v87 != v86)
        {
          *&v93 = 10;
          *(&v93 + 1) = 0xE100000000000000;
          v29 = MEMORY[0x1BFAF12A0](v20, v21, v23, v22);
          v31 = v30;

          *&v92[0] = v29;
          *(&v92[0] + 1) = v31;
          sub_1BA4A6908();
          v20 = sub_1BA4A7B08();
          v21 = v32;
          v23 = v33;
          v22 = v34;
        }

        v9 = v77;
        a3 = v78;
        v12 = v82;
        MEMORY[0x1BFAF12A0](v20, v21, v23, v22);

        v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v36 = sub_1BA4A6758();

        type metadata accessor for Key(0);
        sub_1BA0262E4();
        v37 = sub_1BA4A6618();
        v38 = [v35 initWithString:v36 attributes:v37];

        [v81 appendAttributedString_];
        v17 = v88;
        v11 = v83;
        if (v88 == v80)
        {
          goto LABEL_22;
        }
      }

      v26 = v20 >> 14;
      while (sub_1BA4A7AF8() != 32 || v27 != 0xE100000000000000)
      {
        v28 = sub_1BA4A8338();

        if (v28)
        {
          goto LABEL_17;
        }

        v26 = sub_1BA4A7AD8() >> 14;
        if (v26 == v24)
        {
          goto LABEL_12;
        }
      }

LABEL_17:

      if (v26 < v25)
      {
        goto LABEL_29;
      }

      v39 = sub_1BA4A7B18();
      v84 = v40;
      v42 = v41;
      v44 = v43;

      v45 = MEMORY[0x1BFAF12A0](v39, v84, v42, v44);
      v47 = v46;

      if (v24 < v26)
      {
        goto LABEL_30;
      }

      v48 = v45;
      v49 = sub_1BA4A7B18();
      v51 = v50;
      v52 = v47;
      v54 = v53;
      v56 = v55;

      v57 = MEMORY[0x1BFAF12A0](v49, v51, v54, v56);
      v59 = v58;

      v60 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v85 = v48;
      v61 = sub_1BA4A6758();
      type metadata accessor for Key(0);
      sub_1BA0262E4();
      v62 = sub_1BA4A6618();
      v63 = [v60 initWithString:v61 attributes:v62];

      v12 = v52;
      if (v87 != v86)
      {
        *&v93 = v57;
        *(&v93 + 1) = v59;

        MEMORY[0x1BFAF1350](10, 0xE100000000000000);
      }

      v9 = v77;
      a3 = v78;
      v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v14 = sub_1BA4A6758();

      v15 = sub_1BA4A6618();
      v16 = [v13 initWithString:v14 attributes:v15];

      [v81 appendAttributedString_];
      [v81 appendAttributedString_];

      v10 = v88;
      v11 = v85;
    }

    while (v88 != v80);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

LABEL_22:

  v64 = *MEMORY[0x1E69DB688];
  if (*(a3 + 16) && (v65 = sub_1B9F4E588(*MEMORY[0x1E69DB688]), (v66 & 1) != 0) && (sub_1B9F0AD9C(*(a3 + 56) + 32 * v65, &v93), sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8), (swift_dynamicCast() & 1) != 0))
  {
    v67 = *&v92[0];
  }

  else
  {
    v67 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  }

  *&v93 = v11;
  *(&v93 + 1) = v12;
  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  v68 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v69 = sub_1BA4A6618();
  [v68 sizeWithAttributes_];
  v71 = v70;

  [v67 setFirstLineHeadIndent_];
  [v67 setHeadIndent_];
  v72 = sub_1B9FDB1C4(MEMORY[0x1E69E7CC0]);
  v94 = sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  *&v93 = v67;
  sub_1B9F46920(&v93, v92);
  v73 = v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v72;
  sub_1B9FF1D74(v92, v64, isUniquelyReferenced_nonNull_native);
  v75 = sub_1BA4A6618();

  v76 = v81;
  [v76 addAttributes:v75 range:{0, objc_msgSend(v76, sel_length)}];
}

unint64_t sub_1BA49E02C()
{
  result = qword_1EBBF3488;
  if (!qword_1EBBF3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3488);
  }

  return result;
}

unint64_t sub_1BA49E084()
{
  result = qword_1EBBF3490;
  if (!qword_1EBBF3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF3490);
  }

  return result;
}

uint64_t sub_1BA49E264(uint64_t a1)
{
  v3 = type metadata accessor for MultiColumnDataSource.LayoutEngine();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 32) = 0x4072C00000000000;
  swift_beginAccess();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v4 + 40) = 1;
  v8[3] = v3;
  v8[4] = &protocol witness table for MultiColumnDataSource.LayoutEngine;
  v8[0] = v4;
  v5 = *(v1 + 656);

  v6 = v5(a1, v8);
  *(v4 + 24) = &protocol witness table for MultiColumnDataSource;
  swift_unknownObjectWeakAssign();

  return v6;
}

uint64_t MultiColumnDataSource.__allocating_init(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MultiColumnDataSource.LayoutEngine();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 32) = 0x4072C00000000000;
  swift_beginAccess();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v4 + 40) = 1;
  v8[3] = v3;
  v8[4] = &protocol witness table for MultiColumnDataSource.LayoutEngine;
  v8[0] = v4;
  v5 = *(v1 + 648);

  v6 = v5(a1, v8);
  *(v4 + 24) = &protocol witness table for MultiColumnDataSource;
  swift_unknownObjectWeakAssign();

  return v6;
}

uint64_t sub_1BA49E44C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = sub_1BA4A7548();
  v7 = sub_1BA4A7528();

  v8 = [v3 traitCollection];
  v9 = sub_1BA4A7368();

  if ((v7 & 1) != 0 || v9 == 2 || v9 == 1)
  {

    return 1;
  }

  else
  {
    v11 = sub_1BA49F8D4(v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider, *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems));

    v12 = *(v11 + 16);

    return v12;
  }
}

uint64_t sub_1BA49E550()
{
  v1 = *(sub_1BA49F8D4(v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider, *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems)) + 16);

  return v1;
}

uint64_t sub_1BA49E594(uint64_t a1, void *a2)
{
  swift_allocObject();
  sub_1B9F0A534(a2, v6);
  v4 = sub_1BA49FC08(a1, v6);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

uint64_t sub_1BA49E60C(uint64_t a1, void *a2)
{
  swift_allocObject();
  sub_1B9F0A534(a2, v7);
  sub_1BA49EE0C(a1, v7);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t MultiColumnDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider));
  return v0;
}

uint64_t sub_1BA49E7CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B9F39554(0, v2, 0);
    v3 = v9;
    v4 = (v1 + 64);
    do
    {
      v5 = *(v9 + 16);
      v6 = *(v9 + 24);
      v8 = *v4;
      swift_unknownObjectRetain();
      if (v5 >= v6 >> 1)
      {
        sub_1B9F39554((v6 > 1), v5 + 1, 1);
      }

      *(v9 + 16) = v5 + 1;
      *(v9 + 16 * v5 + 32) = v8;
      v4 = (v4 + 72);
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1BA49E8A4()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA49F8D4(v1 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider, *(v1 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems));
  v49 = *(v8 + 16);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v9, v3);
  v10 = sub_1BA4A4578();
  (*(v4 + 8))(v7, v3);
  v11 = *(v10 + 16);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  if (v11)
  {
    v13 = 0;
    v14 = v10 + 40;
    v46 = v11 - 1;
    v15 = MEMORY[0x1E69E7CC0];
    v47 = v10 + 40;
    v48 = v8;
    while (1)
    {
      v16 = (v14 + 16 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= *(v10 + 16))
        {
          __break(1u);
          return;
        }

        v18 = *(v1 + v12);
        if (*(v18 + 16))
        {
          break;
        }

LABEL_4:
        ++v17;
        v16 += 2;
        if (v11 == v17)
        {
          v8 = v48;
          goto LABEL_19;
        }
      }

      v19 = *(v16 - 1);
      v20 = *v16;

      v21 = sub_1B9F24A34(v19, v20);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = (*(v18 + 56) + 48 * v21);
      v25 = *v23;
      v24 = v23[1];
      v26 = v23[2];
      v40 = v23[3];
      v41 = v25;
      v27 = v23[5];
      v43 = v23[4];
      v44 = v24;

      v45 = v26;
      v28 = v40;

      v42 = v27;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v29 = v41;
      }

      else
      {
        v29 = v41;
        v15 = sub_1B9F21540(0, *(v15 + 2) + 1, 1, v15);
      }

      v31 = *(v15 + 2);
      v30 = *(v15 + 3);
      if (v31 >= v30 >> 1)
      {
        v15 = sub_1B9F21540((v30 > 1), v31 + 1, 1, v15);
      }

      v13 = v17 + 1;
      *(v15 + 2) = v31 + 1;
      v32 = &v15[48 * v31];
      v34 = v44;
      v33 = v45;
      *(v32 + 4) = v29;
      *(v32 + 5) = v34;
      *(v32 + 6) = v33;
      *(v32 + 7) = v28;
      v35 = v42;
      *(v32 + 8) = v43;
      *(v32 + 9) = v35;
      v14 = v47;
      v36 = v46 == v17;
      v8 = v48;
      if (v36)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_4;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_19:

  if (*(v15 + 2))
  {
    v37 = *(v15 + 6);

    v38 = *(v37 + 16);

    if (v49 == v38)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v39 = sub_1B9FE4F98(v8);

  sub_1BA0EB668(0, v39, 1);
LABEL_24:
}

uint64_t MultiColumnDataSource.LayoutEngine.__allocating_init(columnDelegate:collapseEmptySections:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0x4072C00000000000;
  swift_beginAccess();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 40) = a3;
  return v5;
}

uint64_t MultiColumnDataSource.__allocating_init(_:layoutProvider:)(uint64_t a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1BA49FC08(a1, a2);

  return v4;
}

uint64_t MultiColumnDataSource.init(_:layoutProvider:)(uint64_t a1, void *a2)
{
  v2 = sub_1BA49FC08(a1, a2);

  return v2;
}

void sub_1BA49EE0C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_childDataSourcesChangesSink) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems) = a1;
  sub_1B9F0A534(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;

  v12 = sub_1BA49F8D4(a2, a1);

  v13 = sub_1B9FE4F98(v12);

  sub_1BA4A1788();
  v14 = sub_1BA4A1748();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  v17 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v17);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v13;
  v18 = Array<A>.identifierToIndexDict()(v13);

  *(inited + 56) = v18;
  *(inited + 64) = v14;
  *(inited + 72) = v16;
  v30 = a2;
  sub_1B9F0A534(a2, v31);
  v19 = swift_allocObject();
  sub_1B9F1134C(v31, v19 + 16);
  v20 = sub_1B9F2E074(inited, 1, sub_1BA4A03BC, v19);

  v21 = sub_1BA49E7CC();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (v21 + 40);
    while (v24 < *(v22 + 16))
    {
      ++v24;
      v26 = *v25;
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 40);
      swift_unknownObjectRetain();
      v29 = v28(ObjectType, v26);
      [v29 registerObserver_];
      swift_unknownObjectRelease();

      v25 += 2;
      if (v23 == v24)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1(v30);
  }
}

uint64_t sub_1BA49F0F0(__int128 *a1, void *a2)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v7 = v6;
  v8 = v2;
  return (*(v4 + 8))(&v7, v3, v4);
}

void (*sub_1BA49F278(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_1BA0970B4;
}

uint64_t MultiColumnDataSource.LayoutEngine.init(columnDelegate:collapseEmptySections:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = 0x4072C00000000000;
  swift_beginAccess();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v3 + 40) = a3;
  return v3;
}

id sub_1BA49F394(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v27[0] = v3;
    v27[1] = v2;
    v27[2] = v4;
    v7 = (*(v5 + 8))(v27, ObjectType, v5);
    swift_unknownObjectRelease();
    v8 = objc_opt_self();
    v9 = [v8 fractionalWidthDimension_];
    v10 = [v8 estimatedDimension_];
    v11 = objc_opt_self();
    v12 = [v11 sizeWithWidthDimension:v9 heightDimension:v10];

    v13 = [objc_opt_self() itemWithLayoutSize_];
    v14 = objc_opt_self();
    v15 = [v8 fractionalWidthDimension_];
    v16 = [v8 estimatedDimension_];
    v17 = [v11 sizeWithWidthDimension:v15 heightDimension:v16];

    v18 = [v14 horizontalGroupWithLayoutSize:v17 repeatingSubitem:v13 count:v7];
    v19 = objc_opt_self();
    v20 = [v2 traitCollection];
    sub_1BA4A7368();

    sub_1BA4A6598();
    v21 = [v19 fixedSpacing_];
    [v18 setInterItemSpacing_];

    v22 = [objc_opt_self() sectionWithGroup_];
    return v22;
  }

  else
  {
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](91, 0xE100000000000000);
    v24 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v24);

    MEMORY[0x1BFAF1350](0xD00000000000003CLL, 0x80000001BA50B100);
    swift_unknownObjectRetain();
    v25 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v25);

    sub_1B9FF806C();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t MultiColumnDataSource.LayoutEngine.__deallocating_deinit()
{
  sub_1B9FAB600(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA49F7FC()
{

  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_1BA49F850()
{
  MultiColumnDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA49F8D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    v35 = a2 + 32;
LABEL_3:
    v7 = v6 + 72 * v5;
    v8 = v5;
    while (v8 < v2)
    {
      v9 = *(v7 + 48);
      v38 = *(v7 + 32);
      v39 = v9;
      v40 = *(v7 + 64);
      v10 = *(v7 + 16);
      v36 = *v7;
      v37 = v10;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_28;
      }

      v11 = *(v7 + 48);
      *&v42[40] = *(v7 + 32);
      *&v42[56] = v11;
      v42[72] = *(v7 + 64);
      v12 = *v7;
      *&v42[24] = *(v7 + 16);
      *&v42[8] = v12;
      *v42 = v8;
      v13 = *&v42[48];
      ObjectType = swift_getObjectType();
      sub_1BA038EEC(&v36, v41);
      if (!SnapshotDataSource.isEmpty.getter(ObjectType, v13) || (v15 = v4[3], v16 = v4[4], __swift_project_boxed_opaque_existential_1(v4, v15), ((*(v16 + 16))(v8, v15, v16) & 1) == 0))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v43 = v3;
        if ((result & 1) == 0)
        {
          result = sub_1BA066C24(0, *(v3 + 16) + 1, 1);
          v3 = v43;
        }

        v6 = v35;
        v18 = *(v3 + 16);
        v17 = *(v3 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1BA066C24((v17 > 1), v18 + 1, 1);
          v3 = v43;
        }

        *(v3 + 16) = v18 + 1;
        v19 = (v3 + 80 * v18);
        v19[2] = *v42;
        v20 = *&v42[16];
        v21 = *&v42[32];
        v22 = *&v42[48];
        *(v19 + 89) = *&v42[57];
        v19[4] = v21;
        v19[5] = v22;
        v19[3] = v20;
        if (v5 != v2)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }

      result = sub_1BA4A03D8(v42);
      ++v8;
      v7 += 72;
      if (v5 == v2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_27;
  }

LABEL_15:
  v23 = *(v3 + 16);
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v41[0] = MEMORY[0x1E69E7CC0];
  result = sub_1BA066BEC(0, v23, 0);
  if (*(v3 + 16))
  {
    v24 = 0;
    v25 = v41[0];
    v26 = 32;
    while (1)
    {
      *v42 = *(v3 + v26);
      v27 = *(v3 + v26 + 16);
      v28 = *(v3 + v26 + 32);
      v29 = *(v3 + v26 + 48);
      *&v42[57] = *(v3 + v26 + 57);
      *&v42[32] = v28;
      *&v42[48] = v29;
      *&v42[16] = v27;
      sub_1BA4A0498(v42, &v36);
      v41[0] = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1BA066BEC((v30 > 1), v31 + 1, 1);
        v25 = v41[0];
      }

      *(&v37 + 1) = &type metadata for EmbeddedDataSourceCollectionViewCell.Item;
      *&v38 = sub_1BA44AB60();
      v32 = swift_allocObject();
      *&v36 = v32;
      v33 = *&v42[24];
      v34 = *&v42[56];
      *(v32 + 48) = *&v42[40];
      *(v32 + 64) = v34;
      *(v32 + 80) = v42[72];
      *(v32 + 16) = *&v42[8];
      *(v32 + 32) = v33;
      *(v25 + 16) = v31 + 1;
      result = sub_1B9F1134C(&v36, v25 + 40 * v31 + 32);
      if (v23 - 1 == v24)
      {
        break;
      }

      ++v24;
      v26 += 80;
      if (v24 >= *(v3 + 16))
      {
        goto LABEL_26;
      }
    }

    return v25;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BA49FC08(uint64_t a1, void *a2)
{
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_childDataSourcesChangesSink) = 0;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v48 = v9;
  v46 = a1;
  if (v9)
  {
    v42 = v6;
    v43 = v5;
    v44 = v2;
    v45 = a2;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1BA066C44(0, v9, 0);
    v50 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
    v11 = v54;
    v12 = (a1 + 32);
    v49 = sub_1BA038E58();
    do
    {
      v52 = *v12;
      *&v53[0] = v50;
      swift_unknownObjectRetain();
      v51 = sub_1BA4A6808();
      v14 = v13;
      ObjectType = swift_getObjectType();
      v16 = *(&v52 + 1);
      v17 = *(*(&v52 + 1) + 8);
      swift_unknownObjectRetain();
      v18 = v17(ObjectType, v16);
      *&v53[0] = 0x6465646465626D45;
      *(&v53[0] + 1) = 0xE90000000000005FLL;
      MEMORY[0x1BFAF1350](v18);

      v19 = v53[0];
      v20 = swift_allocObject();
      *(v20 + 16) = v52;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1BA038EA0;
      *(v21 + 24) = v20;
      v54 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1BA066C44((v22 > 1), v23 + 1, 1);
        v11 = v54;
      }

      *(v11 + 16) = v23 + 1;
      v24 = v11 + 72 * v23;
      *(v24 + 32) = v19;
      *(v24 + 48) = v51;
      *(v24 + 56) = v14;
      *(v24 + 64) = v52;
      *(v24 + 80) = sub_1BA043E74;
      *(v24 + 88) = v21;
      *(v24 + 96) = 1;
      ++v12;
      --v9;
    }

    while (v9);
    a2 = v45;
    v2 = v44;
    v5 = v43;
    v6 = v42;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_columnItems) = v11;
  sub_1B9F0A534(a2, v2 + OBJC_IVAR____TtC18HealthExperienceUI21MultiColumnDataSource_layoutProvider);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;

  v26 = sub_1BA49F8D4(a2, v11);

  v27 = sub_1B9FE4F98(v26);

  v28 = v47;
  sub_1BA4A1788();
  v29 = sub_1BA4A1748();
  v31 = v30;
  (*(v6 + 8))(v28, v5);
  *(inited + 48) = v10;
  *(inited + 56) = sub_1B9F1C5F0(v10);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v27;
  v32 = Array<A>.identifierToIndexDict()(v27);

  *(inited + 56) = v32;
  *(inited + 64) = v29;
  *(inited + 72) = v31;
  sub_1B9F0A534(a2, v53);
  v33 = swift_allocObject();
  sub_1B9F1134C(v53, v33 + 16);
  v34 = sub_1B9F2E074(inited, 1, sub_1BA4A0520, v33);

  v35 = v48;
  if (v48)
  {
    v36 = (v46 + 40);
    do
    {
      v37 = *v36;
      v38 = swift_getObjectType();
      v39 = *(v37 + 40);
      swift_unknownObjectRetain();
      v40 = v39(v38, v37);
      [v40 registerObserver_];
      swift_unknownObjectRelease();

      v36 += 2;
      --v35;
    }

    while (v35);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v34;
}

uint64_t sub_1BA4A03D8(uint64_t a1)
{
  sub_1BA4A0434();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA4A0434()
{
  if (!qword_1EDC5E5C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E5C8);
    }
  }
}

uint64_t sub_1BA4A0498(uint64_t a1, uint64_t a2)
{
  sub_1BA4A0434();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x1EEDBF1C0](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x1EEDBF340](line);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}