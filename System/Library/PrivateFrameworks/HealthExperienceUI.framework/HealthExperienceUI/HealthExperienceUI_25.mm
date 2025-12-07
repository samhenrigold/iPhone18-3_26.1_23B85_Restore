uint64_t sub_1BA1ADDF4(uint64_t a1, uint64_t a2)
{
  sub_1B9F6BF78(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA1ADE74(uint64_t a1)
{
  sub_1B9F6BF78(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DataSourceWithLayout<>.registerCells(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall _ConditionalDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_1BA2499F8();
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v2 = *(&v5 + 1);
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    (*(v3 + 8))(a1, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(&v4);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_1B9F399C0(&v4);
  }
}

id sub_1BA1AE0E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_1BA1AE1F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v0 setContentHuggingPriority:1 forAxis:v5];
  return v0;
}

double sub_1BA1AE358@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1BA1AE4BC(v4, v5, v6, v7);
}

double sub_1BA1AE3B8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1BA1AE4BC(v2, v3, v4, v5);
  return sub_1BA1AE55C(v7, v8, v9, v10);
}

double sub_1BA1AE460@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_1BA1AE4BC(v4, v5, v6, v7);
}

double sub_1BA1AE4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double sub_1BA1AE500(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v8;
  return sub_1BA1AE55C(v4, v5, v6, v7);
}

double sub_1BA1AE55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

id sub_1BA1AE600()
{
  sub_1BA1B058C(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v21 - v2;
  v4 = sub_1BA4A1338();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A79A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [objc_opt_self() systemBlueColor];
  [v13 setTitleColor:v14 forState:0];

  sub_1BA4A7968();
  sub_1BA4A7878();
  v15 = sub_1BA4A78C8();
  v17 = v16;
  v18 = sub_1BA4A12C8();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    sub_1BA4A1328();
    sub_1BA4A11A8();
    (*(v22 + 8))(v7, v4);
  }

  v15(v23, 0);
  (*(v9 + 16))(v3, v12, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  sub_1BA4A79D8();
  LODWORD(v19) = 1148846080;
  [v13 setContentHuggingPriority:1 forAxis:v19];
  (*(v9 + 8))(v12, v8);
  return v13;
}

char *FeatureOnboardingBulletListItemView.__allocating_init(image:title:description:buttonConfiguration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_1BA1AFB78(a1, a2, a3, a4, a5, a6);

  return v14;
}

char *FeatureOnboardingBulletListItemView.init(image:title:description:buttonConfiguration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = sub_1BA1AFB78(a1, a2, a3, a4, a5, a6);

  return v7;
}

void sub_1BA1AEA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsUpdateConstraints];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

id FeatureOnboardingBulletListItemView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA1AEB40()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button];

  return [v0 addSubview_];
}

void sub_1BA1AEBCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel];
  v3 = [v2 text];
  if (v3)
  {
  }

  else
  {
    sub_1B9F109F8();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5470;
    v5 = [v2 heightAnchor];
    v6 = [v5 constraintEqualToConstant_];

    *(v4 + 32) = v6;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionHeightConstraints] = v4;
  }

  sub_1B9F109F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5890;
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView];
  v9 = [v8 topAnchor];
  v10 = [v1 topAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v7 + 32) = v11;
  v12 = [v1 trailingAnchor];
  v13 = [v8 trailingAnchor];
  v14 = [v12 constraintGreaterThanOrEqualToAnchor_];

  *(v7 + 40) = v14;
  v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel];
  v16 = [v15 leadingAnchor];
  v17 = [v1 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v7 + 48) = v18;
  v19 = [v15 topAnchor];
  v20 = [v8 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:14.0];

  *(v7 + 56) = v21;
  v88 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextStackedConstraints];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextStackedConstraints] = v7;

  if (_UISolariumEnabled())
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5890;
    v23 = [v8 topAnchor];
    v24 = [v1 topAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v22 + 32) = v25;
    v26 = v1;
    v27 = [v1 bottomAnchor];
    v28 = [v8 bottomAnchor];
    v29 = [v27 constraintGreaterThanOrEqualToAnchor_];

    *(v22 + 40) = v29;
    v30 = [v15 leadingAnchor];
    v31 = [v8 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:14.0];

    *(v22 + 48) = v32;
    v33 = (v22 + 56);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5880;
    v34 = [v8 topAnchor];
    v35 = [v1 topAnchor];
    v36 = [v34 constraintGreaterThanOrEqualToAnchor_];

    *(v22 + 32) = v36;
    v37 = [v1 bottomAnchor];
    v38 = [v8 bottomAnchor];
    v39 = [v37 constraintGreaterThanOrEqualToAnchor_];

    *(v22 + 40) = v39;
    v40 = [v8 centerYAnchor];
    v41 = [v1 centerYAnchor];
    v26 = v1;
    v42 = [v40 constraintEqualToAnchor_];

    *(v22 + 48) = v42;
    v43 = [v15 leadingAnchor];
    v44 = [v8 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:14.0];

    *(v22 + 56) = v45;
    v33 = (v22 + 64);
  }

  v46 = [v15 topAnchor];
  v47 = v26;
  v48 = [v26 topAnchor];
  v49 = [v46 constraintEqualToAnchor_];

  *v33 = v49;
  v87 = &v26[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextSideBySideConstraints];
  *&v26[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextSideBySideConstraints] = v22;

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BA4C27B0;
  v51 = [v47 trailingAnchor];
  v52 = [v15 trailingAnchor];
  v53 = [v51 &selRef:v52 numberWithInteger:? + 5];

  *(v50 + 32) = v53;
  v54 = [v8 leadingAnchor];
  v55 = [v47 leadingAnchor];
  v56 = [v54 &selRef:v55 numberWithInteger:? + 5];

  *(v50 + 40) = v56;
  v57 = [v2 topAnchor];
  v58 = [v15 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:3.0];

  *(v50 + 48) = v59;
  v60 = [v2 leadingAnchor];
  v61 = [v15 leadingAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v50 + 56) = v62;
  v63 = [v2 trailingAnchor];
  v64 = [v47 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v50 + 64) = v65;
  v66 = *&v47[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button];
  v67 = [v66 topAnchor];
  v68 = [v2 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:2.0];

  *(v50 + 72) = v69;
  v70 = [v66 leadingAnchor];
  v71 = [v2 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(v50 + 80) = v72;
  v73 = [v47 trailingAnchor];
  v74 = [v66 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v50 + 88) = v75;
  v76 = [v47 bottomAnchor];
  v77 = [v66 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v50 + 96) = v78;
  v79 = [v47 traitCollection];
  v80 = [v79 horizontalSizeClass];

  v81 = v88;
  if (v80 == 1 || (v82 = [v47 traitCollection], v83 = objc_msgSend(v82, sel_preferredContentSizeCategory), v82, LOBYTE(v82) = sub_1BA4A74F8(), v83, (v82 & 1) != 0))
  {
    v81 = v87;
  }

  v84 = *v81;

  v85 = objc_opt_self();
  sub_1B9F73B50(v84);

  sub_1B9F73B50(v86);
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v89 = sub_1BA4A6AE8();

  [v85 activateConstraints_];
}

id sub_1BA1AF6BC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    sub_1BA4A74F8();
  }

  v5 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v6 = sub_1BA4A6AE8();

  [v5 activateConstraints_];

  v7 = sub_1BA4A6AE8();

  [v5 deactivateConstraints_];

  v9.receiver = v0;
  v9.super_class = type metadata accessor for FeatureOnboardingBulletListItemView();
  return objc_msgSendSuper2(&v9, sel_updateConstraints);
}

double sub_1BA1AF898()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration];
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

id FeatureOnboardingBulletListItemView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FeatureOnboardingBulletListItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureOnboardingBulletListItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BA1AFB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = *a6;
  v7 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setContentMode_];

  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v14];
  *&v6[v11] = v12;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel;
  *&v6[v15] = sub_1BA1AE0E4();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel;
  *&v6[v16] = sub_1BA1AE1F8();
  v17 = &v6[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button;
  *&v6[v18] = sub_1BA1AE600();
  v19 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextStackedConstraints] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextSideBySideConstraints] = v19;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionHeightConstraints] = v19;
  swift_beginAccess();
  v20 = *v17;
  v21 = v17[1];
  v22 = v17[2];
  v23 = v17[3];
  *v17 = v8;
  v17[1] = v7;
  v17[2] = v9;
  v17[3] = v10;
  v71 = v8;
  v24 = v8;
  v25 = v7;
  v70 = v10;
  sub_1BA1AE4BC(v24, v7, v9, v10);
  sub_1BA1AE55C(v20, v21, v22, v23);
  v75.receiver = v6;
  v75.super_class = type metadata accessor for FeatureOnboardingBulletListItemView();
  v26 = objc_msgSendSuper2(&v75, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v27 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView;
  [*&v26[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView] setImage_];
  v28 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel;
  v29 = *&v26[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel];
  v30 = sub_1BA4A6758();

  [v29 setText_];

  v31 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel;
  v32 = *&v26[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel];
  v33 = v32;
  if (a5)
  {
    v34 = sub_1BA4A6758();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText_];

  [v26 addSubview_];
  [v26 addSubview_];
  [v26 addSubview_];
  v35 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button;
  [v26 addSubview_];
  sub_1BA1AEBCC();
  v36 = [*&v26[v31] text];
  v37 = MEMORY[0x1E69DDD80];
  if (!v36)
  {
    v55 = *&v26[v28];
    v56 = objc_opt_self();
    v57 = *v37;
    v58 = v55;
    v59 = [v56 preferredFontForTextStyle_];
    [v58 setFont_];

    LODWORD(v60) = 1148846080;
    [*&v26[v28] setContentCompressionResistancePriority:1 forAxis:v60];
    v38 = &unk_1BA4B5000;
    if (v25)
    {
      goto LABEL_6;
    }

LABEL_8:
    v61 = [*&v26[v35] heightAnchor];
    v62 = [v61 constraintEqualToConstant_];

    [v62 setActive_];
    goto LABEL_9;
  }

  v38 = &unk_1BA4B5000;
  if (!v25)
  {
    goto LABEL_8;
  }

LABEL_6:
  v74 = v25;
  sub_1BA1B058C(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  v39 = v37;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v41 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v42 = objc_opt_self();
  v43 = *v39;
  v44 = v41;
  v45 = [v42 preferredFontForTextStyle_];
  v46 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v45;
  v47 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v46;
  *(inited + 72) = v47;
  v48 = objc_opt_self();
  v49 = v47;
  v50 = [v48 systemBlueColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v50;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  v51 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v52 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v53 = sub_1BA4A6618();

  v54 = [v51 initWithString:v52 attributes:v53];

  v38 = &unk_1BA4B5000;
  [*&v26[v35] setAttributedTitle:v54 forState:0];
  [*&v26[v35] addTarget:v26 action:sel_buttonWasTapped forControlEvents:64];

  sub_1BA1AE55C(v71, v74, v9, v70);
LABEL_9:
  sub_1BA1B058C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v63 = swift_allocObject();
  *(v63 + 16) = v38[70];
  v64 = sub_1BA4A4858();
  v65 = MEMORY[0x1E69DC2B0];
  *(v63 + 32) = v64;
  *(v63 + 40) = v65;
  v66 = sub_1BA4A4438();
  v67 = MEMORY[0x1E69DC130];
  *(v63 + 48) = v66;
  *(v63 + 56) = v67;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();

  swift_unknownObjectRelease();

  return v26;
}

void _s18HealthExperienceUI35FeatureOnboardingBulletListItemViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];

  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel;
  *(v0 + v5) = sub_1BA1AE0E4();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel;
  *(v0 + v6) = sub_1BA1AE1F8();
  v7 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button;
  *(v0 + v8) = sub_1BA1AE600();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextStackedConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextSideBySideConstraints) = v9;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionHeightConstraints) = v9;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA1B058C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA1B05F0(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA2FD9C4();
  if (!result)
  {
    v21 = 0;
    sub_1BA4A3D88();
    v8 = a1;
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v11 = 136315394;
      *(v11 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4EF8B0, &v22);
      *(v11 + 12) = 2080;
      v12 = v8;
      v13 = [v12 description];
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v15;

      v17 = sub_1B9F0B82C(v14, v16, &v22);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Could not get bundle app delegate class as PluginSharingAuthorizationDelegate: %s", v11, 0x16u);
      v18 = v20;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return v21;
  }

  return result;
}

uint64_t sub_1BA1B0828(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA2FD9C4();
  if (!result)
  {
    v21 = 0;
    sub_1BA4A3D88();
    v8 = a1;
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v11 = 136315394;
      *(v11 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C36F0, &v22);
      *(v11 + 12) = 2080;
      v12 = v8;
      v13 = [v12 description];
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v15;

      v17 = sub_1B9F0B82C(v14, v16, &v22);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Could not get bundle app delegate class as PluginSharingAuthorizationDelegate: %s", v11, 0x16u);
      v18 = v20;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return v21;
  }

  return result;
}

uint64_t sub_1BA1B0A60()
{
  v0 = sub_1BA4A72F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1BA4A64C8();
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  result = MEMORY[0x1BFAF3940](v9);
  if (!result)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA4A64A8();
    v11[1] = MEMORY[0x1E69E7CC0];
    sub_1BA1B443C(&unk_1EDC5E480, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1B9F66328(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1B9F21B28();
    sub_1BA4A7C38();
    (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
    return sub_1BA4A7328();
  }

  return result;
}

uint64_t sub_1BA1B0CCC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v52 = MEMORY[0x1E69E8050];
  sub_1B9F66328(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v46 = &v42 - v5;
  sub_1BA1B45BC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B46F4(0, &qword_1EBBED7E8, sub_1BA03CEA0, MEMORY[0x1E695C0C0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v42 - v16;
  sub_1BA1B4768(0);
  v19 = *(v18 - 8);
  v44 = v18;
  v45 = v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B4994(0);
  v24 = *(v23 - 8);
  v48 = v23;
  v49 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B4A98(0);
  v29 = *(v28 - 8);
  v50 = v28;
  v51 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v43 = &v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  sub_1B9F66328(0, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
  sub_1BA1B466C();
  sub_1BA4A6A18();
  v54 = MEMORY[0x1E69E7CC8];
  sub_1BA03CEA0(0);
  sub_1BA4A4C78();
  (*(v8 + 8))(v11, v7);
  sub_1BA4A4D08();
  sub_1BA1B4858(0);
  sub_1BA1B490C();
  sub_1BA1B443C(&qword_1EBBED800, 255, sub_1BA1B4858, MEMORY[0x1E695BE60]);
  sub_1BA4A5178();
  (*(v14 + 8))(v17, v13);
  v55 = v47;
  v32 = sub_1BA4A72A8();
  v33 = v46;
  (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  sub_1BA1B443C(&qword_1EBBED818, 255, sub_1BA1B4768, MEMORY[0x1E695BE40]);
  sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v34 = v44;
  sub_1BA4A50A8();
  sub_1BA1B4CD0(v33, &qword_1EDC6B5B8, v52);
  (*(v45 + 8))(v22, v34);
  v35 = swift_allocObject();
  v36 = v53;
  *(v35 + 16) = sub_1BA1B4B48;
  *(v35 + 24) = v36;
  sub_1BA1B4268(0);
  sub_1BA1B443C(&qword_1EBBED828, 255, sub_1BA1B4994, MEMORY[0x1E695BE98]);

  v37 = v43;
  v38 = v48;
  sub_1BA4A4FA8();

  (*(v49 + 8))(v27, v38);
  sub_1BA1B443C(&qword_1EBBED830, 255, sub_1BA1B4A98, MEMORY[0x1E695BC80]);
  v39 = v50;
  v40 = sub_1BA4A4F98();
  (*(v51 + 8))(v37, v39);
  return v40;
}

uint64_t sub_1BA1B13E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - v18;
  sub_1B9F66328(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v42 - v22);
  sub_1BA1B4C50(a2 + *(v8 + 40), &v42 - v22, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v24 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
  {
    sub_1BA1B4CD0(v23, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
LABEL_7:
    sub_1BA4A3D88();
    sub_1BA1B4B88(a2, v15, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C36F0, &v45);
      *(v33 + 12) = 2080;
      sub_1BA1B4B88(v15, v11, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v35 = sub_1BA4A6808();
      v37 = v36;
      sub_1BA1B4BF0(v15, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v38 = sub_1B9F0B82C(v35, v37, &v45);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v31, v32, "[%s] Could not get bundle for %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    else
    {

      sub_1BA1B4BF0(v15, type metadata accessor for SummarySharingSelectableDataTypeItem);
    }

    (*(v43 + 8))(v7, v44);

    return a1;
  }

  v25 = *v23;
  v26 = *v23;
  sub_1BA1B4BF0(v23, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v25)
  {
    goto LABEL_7;
  }

  v45 = a1;
  v27 = *(a1 + 16);

  if (v27 && (v28 = sub_1B9FDA9BC(v26), (v29 & 1) != 0))
  {
    v30 = *(*(a1 + 56) + 8 * v28);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  sub_1BA1B4B88(a2, v19, type metadata accessor for SummarySharingSelectableDataTypeItem);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1BA27F5C8(0, v30[2] + 1, 1, v30);
  }

  v40 = v30[2];
  v39 = v30[3];
  if (v40 >= v39 >> 1)
  {
    v30 = sub_1BA27F5C8((v39 > 1), v40 + 1, 1, v30);
  }

  v30[2] = v40 + 1;
  sub_1BA025350(v19, v30 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40);
  sub_1BA202AB0(v30, v26);

  return v45;
}

void sub_1BA1B1948()
{
  v22 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA0FD5B4();
  v3 = [v2 topAnchor];

  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] bottomAnchor];
  v9 = [v0 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v11;
  v12 = [*&v0[v7] leadingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v12 constraintEqualToAnchor_];

  *(v1 + 48) = v16;
  v17 = [*&v0[v7] trailingAnchor];
  v18 = [v0 contentView];
  v19 = [v18 layoutMarginsGuide];

  v20 = [v19 trailingAnchor];
  v21 = [v17 constraintLessThanOrEqualToAnchor_];

  *(v1 + 56) = v21;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v23 = sub_1BA4A6AE8();

  [v22 activateConstraints_];
}

double sub_1BA1B1C40()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA1B4B88(v1 + v7, v33, sub_1B9F7B6F8);
  if (!v34)
  {
    sub_1BA1B4BF0(v33, sub_1B9F7B6F8);
LABEL_7:
    sub_1BA4A3D88();
    v17 = v1;
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v2;
      v32 = v21;
      v22 = v21;
      *v20 = 136315394;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, &v32);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      sub_1BA1B4B88(v1 + v7, v33, sub_1B9F7B6F8);
      sub_1B9F7B6F8(0);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v32);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_1B9F07000, v18, v19, "[%s] Item is not a SummarySharingPreviewSummariesItem: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);

      (*(v3 + 8))(v6, v31);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return result;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
  type metadata accessor for SummarySharingPreviewSummariesItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = v32;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  *(v1 + v9) = 0;
  sub_1BA0FE74C();
  v10 = *(v8 + 64);
  v11 = *(v8 + 48);
  v12 = *(v8 + 56);
  if (v10)
  {
    v13 = v10;

    v14 = sub_1BA1B23F8();
    sub_1BA0FEA50(v11, v12, v13, v14, v15, *(v8 + 136));
  }

  else
  {

    v29 = sub_1BA1B23F8();
    sub_1BA0FE864(v11, v12, v29, v30, *(v8 + 136));
  }

  return result;
}

uint64_t sub_1BA1B2008()
{
  v1 = v0;
  sub_1B9F66328(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - v8;
  v10 = sub_1BA4A40A8();
  v11 = type metadata accessor for SummarySharingPreviewSummariesCell();
  v16.receiver = v1;
  v16.super_class = v11;
  objc_msgSendSuper2(&v16, sel__bridgedUpdateConfigurationUsingState_, v10);

  MEMORY[0x1BFAF1F00]();
  v12 = sub_1BA4A4168();
  if ((*(*(v12 - 8) + 48))(v9, 1, v12))
  {
    v13 = MEMORY[0x1E69DC0D8];
    sub_1BA1B4C50(v9, v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v5);
    return sub_1BA1B4CD0(v9, &qword_1EDC6B770, v13);
  }

  else
  {
    v15 = [objc_opt_self() clearColor];
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v9);
  }
}

id sub_1BA1B23A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingPreviewSummariesCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t (*sub_1BA1B23F8())(void *a1)
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[20];
  v4 = v0[21];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = v2;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    v5 = sub_1BA1B41A4;
    v1[20] = sub_1BA1B41A4;
    v1[21] = v7;

    sub_1B9F0E310(0, v4);
  }

  sub_1B9F0F1B8(v3, v4);
  return v5;
}

uint64_t sub_1BA1B24C8(void *a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v66 = a1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F66328(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v61 - v12;
  sub_1BA1B41AC(0, v11);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B43A4(0, v18);
  v64 = *(v21 - 8);
  v65 = v21;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B4484(0, v23);
  v67 = *(v26 - 8);
  v68 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = *(a2 + 152);
    v63 = Strong;
    ObjectType = swift_getObjectType();
    v33 = (*(v31 + 8))(ObjectType, v31);
    v34 = sub_1BA1B0A60();
    v62 = a2;
    v35 = v34;
    v36 = sub_1BA1B0CCC(v33, v34);

    v70 = v36;
    sub_1BA1B46F4(0, &qword_1EBBED780, sub_1BA1B4268, MEMORY[0x1E695BED0]);
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    sub_1BA1B431C(v37);
    sub_1BA4A4FA8();

    sub_1BA1B443C(&qword_1EBBED7A8, 255, sub_1BA1B41AC, MEMORY[0x1E695BC80]);
    sub_1BA4A5068();
    (*(v16 + 8))(v20, v15);
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v38 = sub_1BA4A7308();
    v70 = v38;
    v39 = sub_1BA4A72A8();
    (*(*(v39 - 8) + 56))(v13, 1, 1, v39);
    sub_1BA1B443C(&qword_1EBBED7B8, 255, sub_1BA1B43A4, MEMORY[0x1E695BE38]);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v40 = v65;
    sub_1BA4A50A8();
    sub_1BA1B4CD0(v13, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

    (*(v64 + 8))(v25, v40);
    v41 = swift_allocObject();
    v42 = v69;
    *(v41 + 16) = v69;
    v43 = swift_allocObject();
    v44 = v66;
    v43[2] = v62;
    v43[3] = v44;
    v43[4] = v42;
    sub_1BA1B443C(&qword_1EBBED7D0, 255, sub_1BA1B4484, MEMORY[0x1E695BE98]);

    v45 = v44;
    v46 = v68;
    sub_1BA4A4F88();
    swift_unknownObjectRelease();

    return (*(v67 + 8))(v29, v46);
  }

  else
  {
    v68 = v4;
    sub_1BA4A3DD8();

    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v72 = v51;
      *v50 = 136315394;
      v52 = sub_1BA4A85D8();
      v54 = a2;
      v55 = sub_1B9F0B82C(v52, v53, &v72);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      v56 = swift_unknownObjectWeakLoadStrong();
      v57 = *(v54 + 152);
      v70 = v56;
      v71 = v57;
      sub_1B9F35724(0, &qword_1EBBED7C0, &qword_1EBBED7C8, &protocol descriptor for SummarySharingPreviewSummariesProviding, MEMORY[0x1E69E6720]);
      v58 = sub_1BA4A6808();
      v60 = sub_1B9F0B82C(v58, v59, &v72);

      *(v50 + 14) = v60;
      _os_log_impl(&dword_1B9F07000, v48, v49, "[%s] Could not run didTapAction from previewSummariesProviding %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v51, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
    }

    return (*(v5 + 8))(v8, v68);
  }
}

uint64_t sub_1BA1B2CA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 24))(v4, ObjectType, v3);
  *a2 = result;
  return result;
}

uint64_t sub_1BA1B2CFC(uint64_t a1, uint64_t a2)
{
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
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] Fetch summaries predicates stream completed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1BA1B2EA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  sub_1BA4A6C68();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1BA1E0AA4(sub_1BA1B459C, v8, "HealthExperienceUI/SummarySharingPreviewSummariesCell.swift", 59, 2u, 90);
}

void sub_1BA1B2F2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = sub_1BA4A3EA8();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();

  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27[0] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27[2] = v4;
    v17 = v16;
    v29 = v16;
    *v15 = 136315394;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, &v29);
    v27[1] = a2;
    v21 = v20;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v23 = MEMORY[0x1BFAF1560](a1, v22);
    v25 = sub_1B9F0B82C(v23, v24, &v29);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Fetched summaries predicates: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    v26 = v15;
    a3 = v27[0];
    MEMORY[0x1BFAF43A0](v26, -1, -1);
  }

  (*(v8 + 8))(v11, v28);
  sub_1BA1B3178(a1, a3);
}

void sub_1BA1B3178(uint64_t a1, void *a2)
{
  v3 = v2;
  v72 = a2;
  v65 = *v2;
  *&v69 = sub_1BA4A3EA8();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  v70 = sub_1BA4A25B8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v7 = sub_1BA4A6AE8();
  v8 = [objc_opt_self() orPredicateWithSubpredicates_];

  type metadata accessor for ProfileGradientsProviderFactory();
  swift_initStaticObject();
  v9 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 9, v3[12]);
  v10 = sub_1BA4A1B68();
  sub_1B9F109F8();
  inited = swift_initStackObject();
  v73 = xmmword_1BA4B5470;
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = v8;
  v12 = v8;
  v66 = v9;
  v13 = sub_1B9FE10EC(v9, v10, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BA4A3DD8();
  v14 = v12;
  v67 = v6;
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v64 = v13;
    v18 = v17;
    v63 = swift_slowAlloc();
    v74[0] = v63;
    *v18 = 136315394;
    v19 = sub_1BA4A85D8();
    v21 = sub_1B9F0B82C(v19, v20, v74);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = v14;
    v23 = [v22 description];
    v24 = v14;
    v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v27 = v26;

    v28 = sub_1B9F0B82C(v25, v27, v74);

    *(v18 + 14) = v28;
    v14 = v24;
    _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] Presenting SharedProfileOverviewViewController with additional predicate %s", v18, 0x16u);
    v29 = v63;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    v30 = v18;
    v13 = v64;
    MEMORY[0x1BFAF43A0](v30, -1, -1);
  }

  (*(v68 + 8))(v67, v69);
  v71 = v14;
  sub_1B9F0A534((v3 + 9), v74);
  v69 = *(v3 + 15);
  v31 = swift_initStackObject();
  *(v31 + 16) = v73;
  v32 = v70;
  *(v31 + 32) = v70;
  v33 = swift_allocObject();
  *(v33 + 16) = v73;
  *(v33 + 32) = v14;
  v34 = objc_allocWithZone(type metadata accessor for PreviewSharedProfileOverviewViewController());
  v34[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_providedPresentation] = 9;
  v35 = &v34[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  type metadata accessor for ProfileGradientWithFadeView();
  v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v37 = v13;
  *&v73 = v32;
  *v35 = [v36 init];
  v35[1] = &protocol witness table for ProfileGradientWithFadeView;
  *&v34[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientSubscriber] = 0;
  v34[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_hasConfiguredGradientView] = 0;
  *&v34[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController____lazy_storage___previewSummariesLabel] = 0;
  v38 = &v34[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider];
  v38[3] = type metadata accessor for ProfileGradientsProvider();
  v38[4] = &protocol witness table for ProfileGradientsProvider;
  *v38 = v37;
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v39 = v37;
  v40 = sub_1BA4A1B68();
  type metadata accessor for PreviewSharedProfileOverviewDataSource(0);
  v70 = swift_allocObject();
  type metadata accessor for PreviewProfileContactOptionsDataSource(0);
  swift_allocObject();
  v41 = sub_1BA32CD38();
  v42 = v40;
  v43 = v66;
  v44 = sub_1BA4A6F38();
  v45 = objc_allocWithZone(type metadata accessor for SharedProfileNoticesDataSource(0));
  v46 = sub_1BA26C5A4(v42, v44, v31);
  v47 = v42;
  v48 = [v43 profileIdentifier];
  type metadata accessor for SummaryFeedTrendsSectionDataSource(0);
  swift_allocObject();

  v49 = SummaryFeedTrendsSectionDataSource.init(context:sourceProfile:additionalPredicates:significantTrendsDataSourceLoadingCompletion:)(v47, v48, v33, 0, 0);
  v50 = objc_allocWithZone(type metadata accessor for SharedSummariesDataSource(0));
  v51 = v47;
  v52 = sub_1BA20F6B4(v43, v33, v51);

  v53 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v52);

  type metadata accessor for NoDataDataSource(0);
  swift_allocObject();
  v54 = v53;
  v55 = NoDataDataSource.init()();
  sub_1BA1B3C90(0);
  swift_allocObject();
  v56 = sub_1BA06413C(v54, v55);

  sub_1B9F35724(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, MEMORY[0x1E69E6F90]);
  v57 = swift_allocObject();
  *(v57 + 48) = v41;
  *(v57 + 56) = &protocol witness table for MutableArrayDataSource;
  *(v57 + 64) = v46;
  *(v57 + 72) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  *(v57 + 80) = v49;
  *(v57 + 88) = &protocol witness table for HideableDataSource<A>;
  *(v57 + 96) = v56;
  *(v57 + 104) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v58 = v69;
  *(v57 + 16) = xmmword_1BA4B9A90;
  *(v57 + 32) = v58;
  swift_unknownObjectRetain();

  v59 = v46;

  v60 = CompoundSectionedDataSource.init(_:)(v57);

  v61 = CompoundDataSourceCollectionViewController.init(dataSource:)(v60);

  __swift_destroy_boxed_opaque_existential_1(v74);
  v62 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
  [v72 presentViewController:v62 animated:1 completion:0];
}

uint64_t sub_1BA1B3970()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();
  sub_1B9FAB600(v0 + 144);
  sub_1B9F0E310(*(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t sub_1BA1B39D0()
{
  sub_1BA1B3970();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1B3A3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA1B3AE8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED758 = result;
  unk_1EBBED760 = v1;
  return result;
}

void sub_1BA1B3BA0()
{
  v0 = sub_1BA4A6758();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = *MEMORY[0x1E69DDCF8];
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 configurationWithTextStyle_];

    v6 = [v1 imageWithConfiguration_];
  }

  else
  {
    v6 = 0;
  }

  qword_1EBBED768 = v6;
}

void sub_1BA1B3C90(uint64_t a1)
{
  if (!qword_1EBBED770)
  {
    v4[0] = type metadata accessor for SharedSummariesDataSource(255);
    v4[1] = type metadata accessor for NoDataDataSource(255);
    v4[2] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    v4[3] = &protocol witness table for MutableArrayDataSource;
    v2 = type metadata accessor for PrimarySecondaryDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBED770);
    }
  }
}

uint64_t sub_1BA1B3D14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BA1B13E0(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA1B3D40(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - v11;
  v14 = sub_1BA1B0828(a1);
  if (v14)
  {
    v15 = v13;
    sub_1BA4A3D88();
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v41 = v5;
      v20 = v19;
      v44 = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C36F0, &v44);
      *(v18 + 12) = 2080;
      v43[0] = v14;
      v43[1] = v15;
      sub_1B9F0D9AC(0, &qword_1EBBED790, &protocol descriptor for PluginSharingAuthorizationDelegate, 0);
      swift_unknownObjectRetain();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v44);
      v42 = v4;
      v24 = v23;

      *(v18 + 14) = v24;
      *(v18 + 22) = 2048;
      v25 = *(a2 + 16);

      *(v18 + 24) = v25;

      _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] Successfully fetched auth delegate %s for %ld items", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);

      (*(v41 + 8))(v12, v42);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v5 + 8))(v12, v4);
    }
  }

  else
  {
    sub_1BA4A3D88();
    v26 = a1;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43[0] = v41;
      *v29 = 136315394;
      *(v29 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C36F0, v43);
      *(v29 + 12) = 2080;
      v30 = v26;
      v42 = v4;
      v31 = v30;
      v32 = [v30 description];
      v33 = v5;
      v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v36 = v35;

      v37 = sub_1B9F0B82C(v34, v36, v43);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Bundle does not conform to PluginSharingAuthorizationDelegate: %s", v29, 0x16u);
      v38 = v41;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);

      (*(v33 + 8))(v8, v42);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  return v14;
}

void sub_1BA1B41AC(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBED778)
  {
    sub_1BA1B46F4(255, &qword_1EBBED780, sub_1BA1B4268, MEMORY[0x1E695BED0]);
    sub_1B9F0ADF8(255, &qword_1EDC6B630, 0x1E696AE18);
    sub_1BA1B431C(v2);
    v3 = sub_1BA4A4AC8();
    if (!v4)
    {
      atomic_store(v3, &qword_1EBBED778);
    }
  }
}

void sub_1BA1B4268(uint64_t a1)
{
  if (!qword_1EBBED788)
  {
    sub_1B9F0D9AC(255, &qword_1EBBED790, &protocol descriptor for PluginSharingAuthorizationDelegate, 0);
    sub_1B9F66328(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBED788);
    }
  }
}

unint64_t sub_1BA1B431C(__n128 a1)
{
  result = qword_1EBBED798;
  if (!qword_1EBBED798)
  {
    sub_1BA1B46F4(255, &qword_1EBBED780, sub_1BA1B4268, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED798);
  }

  return result;
}

void sub_1BA1B43A4(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBED7A0)
  {
    sub_1BA1B41AC(255, a2);
    sub_1BA1B443C(&qword_1EBBED7A8, 255, sub_1BA1B41AC, MEMORY[0x1E695BC80]);
    v2 = sub_1BA4A4C18();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBED7A0);
    }
  }
}

uint64_t sub_1BA1B443C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1BA1B4484(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBED7B0)
  {
    sub_1BA1B43A4(255, a2);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA1B443C(&qword_1EBBED7B8, 255, sub_1BA1B43A4, MEMORY[0x1E695BE38]);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v2 = sub_1BA4A4CC8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBED7B0);
    }
  }
}

void sub_1BA1B45BC(uint64_t a1)
{
  if (!qword_1EBBED7D8)
  {
    sub_1B9F66328(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    sub_1BA1B466C();
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED7D8);
    }
  }
}

unint64_t sub_1BA1B466C()
{
  result = qword_1EBBED7E0;
  if (!qword_1EBBED7E0)
  {
    sub_1B9F66328(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED7E0);
  }

  return result;
}

void sub_1BA1B46F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA1B4768(uint64_t a1)
{
  if (!qword_1EBBED7F0)
  {
    sub_1BA1B4858(255);
    sub_1BA1B46F4(255, &qword_1EBBED7E8, sub_1BA03CEA0, MEMORY[0x1E695C0C0]);
    sub_1BA1B443C(&qword_1EBBED800, 255, sub_1BA1B4858, MEMORY[0x1E695BE60]);
    sub_1BA1B490C();
    v1 = sub_1BA4A4C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED7F0);
    }
  }
}

void sub_1BA1B4858(uint64_t a1)
{
  if (!qword_1EBBED7F8)
  {
    sub_1BA03CEA0(255);
    sub_1BA1B443C(&qword_1EBBEA8E8, 255, sub_1BA03CEA0, MEMORY[0x1E69E5E50]);
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED7F8);
    }
  }
}

unint64_t sub_1BA1B490C()
{
  result = qword_1EBBED808;
  if (!qword_1EBBED808)
  {
    sub_1BA1B46F4(255, &qword_1EBBED7E8, sub_1BA03CEA0, MEMORY[0x1E695C0C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED808);
  }

  return result;
}

void sub_1BA1B4994(uint64_t a1)
{
  if (!qword_1EBBED810)
  {
    sub_1BA1B4768(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA1B443C(&qword_1EBBED818, 255, sub_1BA1B4768, MEMORY[0x1E695BE40]);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED810);
    }
  }
}

void sub_1BA1B4A98(uint64_t a1)
{
  if (!qword_1EBBED820)
  {
    sub_1BA1B4994(255);
    sub_1BA1B4268(255);
    sub_1BA1B443C(&qword_1EBBED828, 255, sub_1BA1B4994, MEMORY[0x1E695BE98]);
    v1 = sub_1BA4A4AC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED820);
    }
  }
}

uint64_t sub_1BA1B4B4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1BA1B4B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA1B4BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA1B4C50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F66328(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA1B4CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F66328(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static DataTypeDetailDataManagementDataSource.makeShowAllDataItem(hkType:healthStore:customTitle:secondaryText:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v57 = a6;
  v58 = a3;
  v62 = a2;
  v63 = a7;
  v10 = MEMORY[0x1E69E6720];
  sub_1B9F6638C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v64 = &v56 - v13;
  sub_1B9F6638C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v60 = &v56 - v16;
  v61 = sub_1BA4A3FB8();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A3F18();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BA4A4428();
  v65 = *(v25 - 8);
  v66 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();
  if (!a4)
  {
    v56 = a5;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
  }

  sub_1BA4A43B8();

  sub_1BA4A41A8();
  strcpy(&v67, "ShowAllData_");
  BYTE13(v67) = 0;
  HIWORD(v67) = -5120;
  v29 = [a1 description];
  v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v31 = a1;
  v33 = v32;

  MEMORY[0x1BFAF1350](v30, v33);

  v57 = *(&v67 + 1);
  v58 = v67;
  v34 = v66;
  v68 = v66;
  v69 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
  (*(v65 + 16))(boxed_opaque_existential_1, v28, v34);
  sub_1B9F6638C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4B5480;
  (*(v21 + 104))(v24, *MEMORY[0x1E69DBF28], v20);
  v37 = sub_1BA4A3F48();
  (*(*(v37 - 8) + 56))(v60, 1, 1, v37);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v59 + 8))(v19, v61);
  (*(v21 + 8))(v24, v20);
  v38 = swift_allocObject();
  v39 = v62;
  *(v38 + 16) = v62;
  *(v38 + 24) = v31;
  v40 = v39;
  v41 = v31;
  v42 = v64;
  sub_1BA4A4158();
  v43 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_1BA4A4118();
  v44 = sub_1BA4A4168();
  (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
  v45 = sub_1BA4A6AE8();
  v46 = HKUIJoinStringsForAutomationIdentifier();

  if (v46)
  {
    v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = type metadata accessor for ContentConfigurationItem(0);
  v51 = v63;
  v63[3] = v50;
  v51[4] = sub_1B9F2F868(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v52 = __swift_allocate_boxed_opaque_existential_1(v51);
  *(v52 + v50[12]) = 0;
  *(v52 + v50[13]) = 0;
  v53 = v57;
  *v52 = v58;
  v52[1] = v53;
  sub_1B9F1134C(&v67, (v52 + 9));
  *(v52 + 112) = 0;
  v52[15] = v36;
  v52[2] = sub_1BA1B6228;
  v52[3] = v38;
  v52[5] = &type metadata for BasicCellSelectionWithDeselectionOnRegularHorizontalSizeClassHandler;
  v52[6] = &off_1F381BCA0;
  sub_1B9F2F728(v42, v52 + v50[10]);
  v52[7] = v47;
  v52[8] = v49;
  v54 = (v52 + v50[11]);
  *v54 = sub_1BA1B760C;
  v54[1] = 0;
  return (*(v65 + 8))(v28, v66);
}

uint64_t DataTypeDetailDataManagementDataSource.__allocating_init(for:unitPreferencesController:healthStore:includeShowAllData:contentInsetsReference:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  swift_allocObject();
  v10 = sub_1BA1B63CC(a1, a3, v6, a5);

  return v10;
}

uint64_t DataTypeDetailDataManagementDataSource.init(for:unitPreferencesController:healthStore:includeShowAllData:contentInsetsReference:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BA1B63CC(a1, a3, a4, a5);

  return v8;
}

uint64_t static DataTypeDetailDataManagementDataSource.makeDataSourcesAndAccessItemIfNeeded(hkType:healthStore:customTitle:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1B9F6638C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v60 = &v51 - v11;
  v61 = sub_1BA4A3FB8();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v12);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3F18();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A4428();
  v19 = *(v18 - 8);
  *&v21 = MEMORY[0x1EEE9AC00](v18, v20).n128_u64[0];
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  if (!a4)
  {
    v24 = [a2 profileIdentifier];
    v25 = [v24 type];

    if (v25 == 1 && ([a1 requiresPerObjectAuthorization] & 1) == 0)
    {
      if (qword_1EDC5E100 == -1)
      {
LABEL_7:
        sub_1BA4A1318();
        goto LABEL_8;
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      goto LABEL_7;
    }

    swift_once();
    goto LABEL_7;
  }

LABEL_8:

  sub_1BA4A43A8();
  v52 = v23;
  sub_1BA4A43B8();
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v63 = 0xD000000000000015;
  v64 = 0x80000001BA4F2050;
  v53 = a1;
  v26 = [a1 description];
  v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v29 = v28;

  MEMORY[0x1BFAF1350](v27, v29);

  v54 = v64;
  v55 = v63;
  v30 = type metadata accessor for ContentConfigurationItem(0);
  a5[3] = v30;
  a5[4] = sub_1B9F2F868(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v32 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1[12] = v18;
  boxed_opaque_existential_1[13] = v32;
  v51 = v18;
  v33 = __swift_allocate_boxed_opaque_existential_1(boxed_opaque_existential_1 + 9);
  (*(v19 + 16))(v33, v23, v18);
  sub_1B9F6638C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BA4B5480;
  v35 = v56;
  v36 = v17;
  v37 = v17;
  v38 = v57;
  (*(v56 + 104))(v37, *MEMORY[0x1E69DBF28], v57);
  v39 = sub_1BA4A3F48();
  (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
  v40 = v58;
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v59 + 8))(v40, v61);
  (*(v35 + 8))(v36, v38);
  v41 = swift_allocObject();
  v42 = v62;
  v43 = v53;
  *(v41 + 16) = v62;
  *(v41 + 24) = v43;
  boxed_opaque_existential_1[5] = &type metadata for BasicCellSelectionWithDeselectionOnRegularHorizontalSizeClassHandler;
  boxed_opaque_existential_1[6] = &off_1F381BCA0;
  boxed_opaque_existential_1[2] = sub_1BA1B717C;
  boxed_opaque_existential_1[3] = v41;
  v44 = v30[10];
  v45 = v42;
  v46 = v43;
  sub_1BA4A4158();
  v47 = sub_1BA4A4168();
  (*(*(v47 - 8) + 56))(boxed_opaque_existential_1 + v44, 0, 1, v47);
  *(boxed_opaque_existential_1 + v30[12]) = 0;
  *(boxed_opaque_existential_1 + v30[13]) = 0;
  v48 = v54;
  *boxed_opaque_existential_1 = v55;
  boxed_opaque_existential_1[1] = v48;
  *(boxed_opaque_existential_1 + 112) = 0;
  boxed_opaque_existential_1[15] = v34;
  boxed_opaque_existential_1[7] = 0;
  boxed_opaque_existential_1[8] = 0;
  v49 = (boxed_opaque_existential_1 + v30[11]);
  *v49 = sub_1BA1B760C;
  v49[1] = 0;
  return (*(v19 + 8))(v52, v51);
}

id static DataTypeDetailDataManagementDataSource.makeUnitItem(displayType:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DataTypeDetailUnitCell();
  sub_1BA1B71A0();
  v3 = sub_1BA4A6808();
  v5 = v4;
  a2[3] = &type metadata for DataTypeDetailUnitCell.Item;
  a2[4] = sub_1BA1B71E8();
  v6 = swift_allocObject();
  *a2 = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = 0;
  v6[5] = 0;
  v6[6] = a1;

  return a1;
}

void *sub_1BA1B5DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    v13 = v6;
    swift_once();
    v6 = v13;
  }

  v10 = __swift_project_value_buffer(v6, qword_1EDC6CB90);
  sub_1B9F37E38(v10, v8);
  *(v8 + 18) = a2;
  v11 = ListLayoutConfiguration.layout(for:)(v9);
  sub_1BA047354(v8);
  return v11;
}

uint64_t DataTypeDetailDataManagementDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DataTypeDetailDataManagementDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1B6148(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = [objc_opt_self() sharedInstanceForHealthStore_];
  v7 = [v6 *a4];

  memset(v9, 0, sizeof(v9));
  sub_1BA4A7238();

  return sub_1BA1B7524(v9, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA1B624C()
{
  v0 = HKUnitPreferenceControllerAvailableUnitsForDisplayType();
  sub_1BA1B75A0();
  sub_1B9F2F868(&qword_1EDC6B4C8, sub_1BA1B75A0, MEMORY[0x1E69E81B8]);
  v1 = sub_1BA4A6D78();

  v2 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (sub_1BA4A7CC8() != 1)
    {
      v3 = 0;
LABEL_15:
      v7 = sub_1BA4A7CC8();
      goto LABEL_16;
    }
  }

  else if (*(v1 + 16) != 1)
  {
    v3 = 0;
    v7 = *(v1 + 16);
    goto LABEL_16;
  }

  v4 = sub_1BA159194(v1);
  v5 = [objc_opt_self() countUnit];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v3 = sub_1BA4A7798();

      if (v2)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    v6 = v4;
  }

  else if (!v5)
  {
    v3 = 1;
    if (v2)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v3 = 0;
  if (v2)
  {
    goto LABEL_15;
  }

LABEL_8:
  v7 = *(v1 + 16);
LABEL_16:

  return (v7 != 0) & (v3 ^ 1u);
}

uint64_t sub_1BA1B63CC(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v110 = a2;
  v109 = sub_1BA4A1798();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v9);
  v107 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1B9F6638C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v103 = &v97 - v14;
  sub_1B9F6638C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v11);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v97 - v17;
  v102 = sub_1BA4A3FB8();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v19);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A3F18();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1BA4A4428();
  v104 = *(v105 - 8);
  *&v28 = MEMORY[0x1EEE9AC00](v105, v27).n128_u64[0];
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  v31 = [a1 objectType];
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI38DataTypeDetailDataManagementDataSource_hkType) = v31;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI38DataTypeDetailDataManagementDataSource_contentInsetsReference) = a4;
  v32 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v99 = a4;
    v100 = v5;
    v33 = v31;
    sub_1BA4A4418();
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A43B8();
    sub_1BA4A41A8();
    strcpy(&v114, "ShowAllData_");
    BYTE13(v114) = 0;
    HIWORD(v114) = -5120;
    v34 = [v33 description];
    v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v37 = v36;

    MEMORY[0x1BFAF1350](v35, v37);

    v97 = *(&v114 + 1);
    v98 = v114;
    v38 = v105;
    v112 = v105;
    v113 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v111);
    (*(v104 + 16))(boxed_opaque_existential_1, v30, v38);
    sub_1B9F6638C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BA4B5480;
    (*(v23 + 104))(v26, *MEMORY[0x1E69DBF28], v22);
    v41 = sub_1BA4A3F48();
    (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v101 + 8))(v21, v102);
    (*(v23 + 8))(v26, v22);
    v42 = swift_allocObject();
    v43 = v110;
    *(v42 + 16) = v110;
    *(v42 + 24) = v33;
    v44 = v33;
    v45 = v43;
    v46 = v103;
    sub_1BA4A4158();
    v47 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_1BA4A4118();
    v48 = sub_1BA4A4168();
    (*(*(v48 - 8) + 56))(v46, 0, 1, v48);
    v49 = sub_1BA4A6AE8();
    v50 = HKUIJoinStringsForAutomationIdentifier();

    if (v50)
    {
      v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v54 = type metadata accessor for ContentConfigurationItem(0);
    v115 = v54;
    v116 = sub_1B9F2F868(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
    v55 = __swift_allocate_boxed_opaque_existential_1(&v114);
    *(v55 + v54[12]) = 0;
    *(v55 + v54[13]) = 0;
    v56 = v97;
    *v55 = v98;
    v55[1] = v56;
    sub_1B9F1134C(&v111, (v55 + 9));
    *(v55 + 112) = 0;
    v55[15] = v40;
    v55[2] = sub_1BA1B7610;
    v55[3] = v42;
    v55[5] = &type metadata for BasicCellSelectionWithDeselectionOnRegularHorizontalSizeClassHandler;
    v55[6] = &off_1F381BCA0;
    sub_1B9F2F728(v46, v55 + v54[10]);

    v55[7] = v51;
    v55[8] = v53;
    v57 = (v55 + v54[11]);
    *v57 = sub_1BA1B760C;
    v57[1] = 0;
    (*(v104 + 8))(v30, v105);
    v32 = sub_1BA27EFB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v117 = v32;
    v59 = v32[2];
    v58 = v32[3];
    if (v59 >= v58 >> 1)
    {
      v32 = sub_1BA27EFB4((v58 > 1), v59 + 1, 1, v32);
      v117 = v32;
    }

    a4 = v99;
    v60 = v115;
    v61 = v116;
    v62 = __swift_mutable_project_boxed_opaque_existential_1(&v114, v115);
    v63 = MEMORY[0x1EEE9AC00](v62, v62);
    v65 = &v97 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v65, v63);
    sub_1B9F1C4F4(v59, v65, &v117, v60, v61);
    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  v67 = v106;
  v68 = [v106 objectType];
  static DataTypeDetailDataManagementDataSource.makeDataSourcesAndAccessItemIfNeeded(hkType:healthStore:customTitle:)(v68, v110, 0, &v111);

  if (v112)
  {
    sub_1B9F1134C(&v111, &v114);
    sub_1B9F0A534(&v114, &v111);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1BA27EFB4(0, v32[2] + 1, 1, v32);
      v117 = v32;
    }

    v71 = v32[2];
    v70 = v32[3];
    if (v71 >= v70 >> 1)
    {
      v32 = sub_1BA27EFB4((v70 > 1), v71 + 1, 1, v32);
      v117 = v32;
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
    v72 = v112;
    v73 = v113;
    v74 = __swift_mutable_project_boxed_opaque_existential_1(&v111, v112);
    v75 = MEMORY[0x1EEE9AC00](v74, v74);
    v77 = &v97 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v77, v75);
    sub_1B9F1C4F4(v71, v77, &v117, v72, v73);
    __swift_destroy_boxed_opaque_existential_1(&v111);
  }

  else
  {
    sub_1BA1B7524(&v111, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F6638C);
  }

  if (sub_1BA1B624C())
  {
    *&v114 = type metadata accessor for DataTypeDetailUnitCell();
    sub_1BA1B71A0();
    v79 = sub_1BA4A6808();
    v81 = v80;
    v82 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1BA27EFB4(0, v32[2] + 1, 1, v32);
    }

    v84 = v32[2];
    v83 = v32[3];
    if (v84 >= v83 >> 1)
    {
      v32 = sub_1BA27EFB4((v83 > 1), v84 + 1, 1, v32);
    }

    v115 = &type metadata for DataTypeDetailUnitCell.Item;
    v116 = sub_1BA1B71E8();
    v85 = swift_allocObject();
    *&v114 = v85;
    v85[2] = v79;
    v85[3] = v81;
    v85[4] = 0;
    v85[5] = 0;
    v85[6] = v82;
    v32[2] = v84 + 1;
    sub_1B9F1134C(&v114, &v32[5 * v84 + 4]);
  }

  sub_1B9F23348(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v87 = sub_1B9FE4F98(v32);

  v88 = v107;
  sub_1BA4A1788();
  v89 = sub_1BA4A1748();
  v91 = v90;
  (*(v108 + 8))(v88, v109);
  v92 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v92);
  *(inited + 32) = xmmword_1BA4C37E0;

  *(inited + 48) = v87;
  v93 = Array<A>.identifierToIndexDict()(v87);

  *(inited + 56) = v93;
  *(inited + 64) = v89;
  *(inited + 72) = v91;
  v94 = swift_allocObject();
  *(v94 + 16) = a4;
  v95 = sub_1B9F2E074(inited, 1, sub_1BA1B7584, v94);

  return v95;
}

unint64_t sub_1BA1B71A0()
{
  result = qword_1EDC67250;
  if (!qword_1EDC67250)
  {
    type metadata accessor for DataTypeDetailUnitCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC67250);
  }

  return result;
}

unint64_t sub_1BA1B71E8()
{
  result = qword_1EDC67258;
  if (!qword_1EDC67258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67258);
  }

  return result;
}

uint64_t type metadata accessor for DataTypeDetailDataManagementDataSource(uint64_t a1)
{
  result = qword_1EDC6A818;
  if (!qword_1EDC6A818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1B733C(void *a1)
{
  sub_1B9F6638C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v14[-v9];
  MEMORY[0x1BFAF1F00](v8);
  v11 = sub_1BA4A4168();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_1B9F66128(v10, v5);
    MEMORY[0x1BFAF1F10](v5);
    return sub_1BA1B7524(v10, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720], sub_1B9F6638C);
  }

  else
  {
    v13 = [a1 traitCollection];
    sub_1B9F3AEE8();
    sub_1BA4A7358();

    v14[14] = v14[15];
    Presentation.cellBackgroundColor(for:)();
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v10);
  }
}

uint64_t sub_1BA1B7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1BA1B75A0()
{
  result = qword_1EDC6B4D0;
  if (!qword_1EDC6B4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B4D0);
  }

  return result;
}

void __swiftcall PDFEmptySpace.init(origin:size:)(HealthExperienceUI::PDFEmptySpace *__return_ptr retstr, CGPoint_optional origin, CGSize size)
{
  retstr->origin.value.x = *&origin.is_nil;
  retstr->origin.value.y = v3;
  retstr->origin.is_nil = v4 & 1;
  retstr->size.width = origin.value.x;
  retstr->size.height = origin.value.y;
}

void sub_1BA1B7630(__n128 a1)
{
  if (*(v1 + 16))
  {
    PDFBuilder.Document.drawingContext.getter();
  }
}

uint64_t sub_1BA1B7678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA1B7698(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t CollectionViewLayoutContext.init(section:environment:numberOfItemsInSection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id SnapshotDataSource<>.createCompositionalLayoutFromDataSource(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v5;
  v11[6] = a1;
  v11[7] = a2;
  v12 = objc_opt_self();
  swift_unknownObjectRetain();
  sub_1B9F0F1B8(a1, a2);
  v13 = [v12 defaultConfiguration];
  [v13 setContentInsetsReference_];
  v14 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v18[4] = sub_1BA1B7958;
  v18[5] = v11;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1B9F54940;
  v18[3] = &block_descriptor_45;
  v15 = _Block_copy(v18);
  v16 = [v14 initWithSectionProvider:v15 configuration:v13];

  _Block_release(v15);

  return v16;
}

uint64_t sub_1BA1B785C(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[2] = SnapshotDataSource.numberOfItems(in:)(a1);
  v15[3] = a3;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(a7 + 8);
  swift_unknownObjectRetain();
  v13 = v12(v15, a6, a7);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t CollectionViewLayoutContext.environment.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t CompoundSectionedDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA1B7B18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA1B7C2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA1B7C70(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1BA1B7D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
  MEMORY[0x1BFAF1350](a3, a4);
}

unint64_t sub_1BA1B7D90(uint64_t a1)
{
  v3 = sub_1BA4A1998();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9F55C08(v7, a1);
  if (!v1)
  {
    v9 = result;
    (*(v4 + 8))(v7, v3);
    return v9;
  }

  return result;
}

uint64_t sub_1BA1B7E84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B9F3A92C(a1, a2);
  sub_1B9F3A3B4(v7, v8, v9, v10, &v22);

  if (v23)
  {
    sub_1B9F1134C(&v22, v24);
    v11 = a3;
    return sub_1B9F1134C(v24, v11);
  }

  else
  {
    v21 = a3;
    result = sub_1B9F3B8FC(&v22, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    v13 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = (v13 + 40);
      while (v15 < *(v13 + 16))
      {
        v17 = *v16;
        type metadata accessor for CompoundSectionedDataSource(0);
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain_n();
          sub_1BA1B7E84(a1, a2, &v22);
          swift_unknownObjectRelease();
          if (v23)
          {
            swift_unknownObjectRelease();
LABEL_16:
            sub_1B9F1134C(&v22, v24);
            v11 = v21;
            return sub_1B9F1134C(v24, v11);
          }

          sub_1B9F3B8FC(&v22, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 8))(ObjectType, v17);
        sub_1B9F3A3B4(v19, v20, a1, a2, &v22);

        swift_unknownObjectRelease();
        if (v23)
        {
          goto LABEL_16;
        }

        ++v15;
        result = sub_1B9F3B8FC(&v22, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
        v16 += 2;
        if (v14 == v15)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      *(v21 + 32) = 0;
      *v21 = 0u;
      *(v21 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1BA1B809C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = sub_1B9F3A92C(a1, a2);
  sub_1B9F3A3B4(v5, v6, v7, v8, &v31);

  v9 = v33;
  result = sub_1B9F3B8FC(&v31, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  if (v9)
  {

    return v4;
  }

  v11 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v28 = *(v11 + 16);
  if (!v28)
  {
    return 0;
  }

  v29 = a2;
  v30 = v4;
  v12 = 0;
  v13 = (v11 + 40);
  while (v12 < *(v11 + 16))
  {
    v14 = *v13;
    type metadata accessor for CompoundSectionedDataSource(0);
    v15 = swift_dynamicCastClass();
    swift_unknownObjectRetain();
    if (v15)
    {
      swift_unknownObjectRetain();
      v16 = sub_1BA1B809C(v30, v29);
      if (v17)
      {
        v24 = v16;
        v25 = v17;
        ObjectType = swift_getObjectType();
        v31 = (*(v14 + 8))(ObjectType, v14);
        v32 = v27;
        MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
        MEMORY[0x1BFAF1350](v24, v25);
        swift_unknownObjectRelease_n();

        return v31;
      }

      swift_unknownObjectRelease();
    }

    v18 = v11;
    v19 = swift_getObjectType();
    v20 = *(v14 + 8);
    v21 = v20(v19, v14);
    sub_1B9F3A3B4(v21, v22, v30, v29, &v31);

    if (v33)
    {
      sub_1B9F3B8FC(&v31, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      v31 = v20(v19, v14);
      v32 = v23;
      MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
      MEMORY[0x1BFAF1350](v30, v29);
      swift_unknownObjectRelease();
      return v31;
    }

    ++v12;
    swift_unknownObjectRelease();
    result = sub_1B9F3B8FC(&v31, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    v13 += 2;
    v11 = v18;
    if (v28 == v12)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA1B833C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9F3A92C(a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = sub_1B9F3A69C(v2, v7);
  v10 = v9;

  if (!v8)
  {

LABEL_9:
    v13 = 0;
    return v13 & 1;
  }

  v18[0] = v8;
  v18[1] = v10;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1BA10CBC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
LABEL_7:

    if (*(&v16 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v15);
    }

    goto LABEL_9;
  }

  if (!*(&v16 + 1))
  {
    goto LABEL_7;
  }

  sub_1B9F1134C(&v15, v18);
  v11 = v19;
  v12 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  *&v15 = v4;
  *(&v15 + 1) = v6;
  v13 = (*(v12 + 40))(&v15, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13 & 1;
}

uint64_t sub_1BA1B847C(uint64_t a1, char *a2)
{
  v64 = a2;
  sub_1BA1BA074(0);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v60 - v10);
  v12 = sub_1BA4A1998();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v60 - v27;
  v63 = v2;
  v29 = sub_1B9F55C08(v24, a1);
  v60 = v7;
  v62 = v20;
  v30 = v65;
  v31 = *(v65 + 48);
  *v11 = v29;
  v11[1] = v32;
  v33 = v28;
  v34 = *(v13 + 32);
  v34(v11 + v31, v24, v12);
  v35 = *v11;
  v61 = v11[1];
  v34(v33, v11 + *(v30 + 48), v12);
  v36 = sub_1B9F55C08(v16, v64);
  v64 = v33;
  v37 = v65;
  v38 = *(v65 + 48);
  v39 = v60;
  *v60 = v36;
  v39[1] = v40;
  v34(v39 + v38, v16, v12);
  v41 = v39[1];
  v42 = v62;
  (v34)(v62, v39 + *(v37 + 48));
  v43 = v61;
  v68 = v35;
  v69 = v61;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, &qword_1EDC66C70, &protocol descriptor for DiffableReorderHandling, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v66, v70);
    ObjectType = swift_getObjectType();
    v45 = (*(v43 + 8))(ObjectType, v43);
    v47 = v46;
    v48 = swift_getObjectType();
    if (v45 == (*(v41 + 8))(v48, v41) && v47 == v49)
    {
      v51 = 1;
    }

    else
    {
      v51 = sub_1BA4A8338();
    }

    v54 = v71;
    v55 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v56 = v64;
    v57 = (*(v55 + 56))(v64, v42, v54, v55);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v58 = *(v13 + 8);
    v58(v42, v12);
    v58(v56, v12);
    v53 = v51 & v57;
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    v52 = *(v13 + 8);
    v52(v42, v12);
    v52(v64, v12);
    sub_1B9F3B8FC(v66, &unk_1EBBED870, &qword_1EDC66C70, &protocol descriptor for DiffableReorderHandling);
    v53 = 0;
  }

  return v53 & 1;
}

void sub_1BA1B8944(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B9FDBAF0(MEMORY[0x1E69E7CC0]);
  v35 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1B9F117BC(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
    v7 = *(v6 - 8);
    v8 = (a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
    v9 = *(v7 + 72);
    do
    {
      sub_1BA1B9434(v8, v2, &v35);
      v8 = (v8 + v9);
      --v5;
    }

    while (v5);
    v10 = v35;
  }

  else
  {
    v10 = v4;
  }

  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  while (v14)
  {
LABEL_16:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = v18 | (v16 << 6);
    v20 = (*(v10 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v10 + 56) + 8 * v19);

    if (sub_1B9F3A69C(v21, v22) && (sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0), sub_1BA10CBC8(), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v30 + 1))
      {
        sub_1B9F1134C(&v29, v32);
        v27 = v33;
        v28 = v10;
        v24 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v25 = *(v24 + 48);
        v26 = v24;
        v10 = v28;
        v25(v23, v27, v26);
        __swift_destroy_boxed_opaque_existential_1(v32);
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_1BA1B8BCC()
{
  sub_1B9F261DC(0, &unk_1EBBED8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EF0]);
  sub_1BA1BA6FC();
  v0 = sub_1BA4A6E18();
  v1 = MEMORY[0x1E69E7CC0];
  if (!v0)
  {
LABEL_14:
    v35 = v1;
    sub_1BA1BA778(0, &unk_1EBBED8D0, &qword_1EBBEAAA8, MEMORY[0x1E69E6EE8], MEMORY[0x1E69E62F8]);
    sub_1BA1BA7E8();
    return sub_1BA4A80E8();
  }

  v2 = v0;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1BA066EE0(0, v0 & ~(v0 >> 63), 0);
  result = sub_1BA4A6DF8();
  if (v2 < 0)
  {
    goto LABEL_19;
  }

  v34 = v39;
  while (1)
  {
    v4 = sub_1BA4A6E88();
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 33);
    v31 = *(v5 + 24);
    v32 = *v5;
    v29 = *(v5 + 32);
    v9 = sub_1BA051CD4(*v5, v6, v7);
    v4(&v35, 0, v9);
    v33 = v2;
    v30 = v8;
    if (v8)
    {
      break;
    }

    v35 = v6;
    v36 = v7;
    sub_1BA164F44();
    result = sub_1BA4A6E08();
    if (!result[2])
    {
      goto LABEL_16;
    }

    v15 = result[4];
    v16 = result[5];
    v18 = result[6];
    v17 = result[7];

    MEMORY[0x1BFAF12A0](v15, v16, v18, v17);

    v35 = v6;
    v36 = v7;
    result = sub_1BA4A6E08();
    v14 = result[2];
    if (!v14)
    {
      goto LABEL_18;
    }

LABEL_10:
    v35 = result;
    v36 = result + 4;
    v37 = 1;
    v38 = (2 * v14) | 1;
    sub_1B9F261DC(0, &qword_1EDC5E068, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
    sub_1B9F407D0();
    sub_1B9F439FC();
    v19 = sub_1BA4A6A48();
    v21 = v20;

    v35 = v19;
    v36 = v21;
    v22 = sub_1BA4A69D8();
    v24 = v23;
    sub_1BA051CDC(v32, v6, v7);

    v25 = v34;
    v39 = v34;
    v27 = v34[2];
    v26 = v34[3];
    if (v27 >= v26 >> 1)
    {
      sub_1BA066EE0((v26 > 1), v27 + 1, 1);
      v25 = v39;
    }

    v25[2] = v27 + 1;
    v34 = v25;
    v28 = &v25[5 * v27];
    v28[4] = v32;
    v28[5] = v22;
    v28[6] = v24;
    v28[7] = v31;
    *(v28 + 64) = v29 & 1;
    *(v28 + 65) = v30;
    sub_1BA4A6E48();
    v2 = v33 - 1;
    if (v33 == 1)
    {
      v1 = v34;
      goto LABEL_14;
    }
  }

  v35 = v6;
  v36 = v7;
  sub_1BA164F44();
  result = sub_1BA4A6E08();
  if (result[2])
  {
    v10 = result[4];
    v11 = result[5];
    v12 = result[6];
    v13 = result[7];

    MEMORY[0x1BFAF12A0](v10, v11, v12, v13);

    v35 = v6;
    v36 = v7;
    result = sub_1BA4A6E08();
    v14 = result[2];
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t CompoundSectionedDataSource.__allocating_init(makeChildren:)(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 208);

  return v3(v2);
}

uint64_t sub_1BA1B9200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA1B92B0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v14 - v9;
  (*(v6 + 16))(&v14 - v9, a1, v5, v8);
  v11 = *a2;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 40))(v11 + v12, v10, v5);
  return swift_endAccess();
}

uint64_t CompoundSectionedDataSource.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);

  return v1;
}

void sub_1BA1B9434(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  sub_1B9F117BC(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  v6 = v5;
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v35 = &v34 - v8;
  v9 = MEMORY[0x1E69E6EF0];
  sub_1BA1BA778(0, &qword_1EBBED8F8, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34 - v12;
  sub_1B9F261DC(0, &unk_1EBBED8B0, MEMORY[0x1E69E6158], v9);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v34 - v18;
  v20 = sub_1B9F3A92C(*a1, a1[1]);
  v34 = v22;
  v37 = v23;
  v38 = v20;
  v39 = v21;
  v40 = a3;
  v24 = *a3;
  if (*(*a3 + 16) && (v25 = sub_1B9F24A34(v20, v21), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  sub_1BA1B8BCC();
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {

    sub_1BA1BA920(v13);
  }

  else
  {
    (*(v16 + 32))(v19, v13, v15);
    v28 = v35;
    (*(v16 + 16))(&v35[*(v6 + 52)], v19, v15);
    v29 = v37;
    *v28 = v34;
    v28[1] = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1BA280644(0, v27[2] + 1, 1, v27);
    }

    v31 = v27[2];
    v30 = v27[3];
    if (v31 >= v30 >> 1)
    {
      v27 = sub_1BA280644((v30 > 1), v31 + 1, 1, v27);
    }

    (*(v16 + 8))(v19, v15);
    v27[2] = v31 + 1;
    sub_1BA10CAD8(v28, v27 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31);
  }

  v32 = v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v32;
  *v32 = 0x8000000000000000;
  sub_1B9FF1EB4(v27, v38, v39, isUniquelyReferenced_nonNull_native);

  *v32 = v41;
}

uint64_t CompoundSectionedDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

HealthExperienceUI::FallbackHeaderItem __swiftcall FallbackHeaderItem.init()()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = 0xD00000000000001CLL;
  v1[1] = 0x80000001BA4EB5F0;
  v14 = &type metadata for FallbackHeaderItem;
  sub_1BA1BA14C();
  v14 = sub_1BA4A6808();
  v15 = v7;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9F46F90(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v8 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v8);

  v9 = (*(v3 + 8))(v6, v2);
  v13 = v15;
  v1[2] = v14;
  v1[3] = v13;
  result.uniqueIdentifier._object = v12;
  result.uniqueIdentifier._countAndFlagsBits = v11;
  result.reuseIdentifier._object = v10;
  result.reuseIdentifier._countAndFlagsBits = v9;
  return result;
}

uint64_t CompoundSectionedDataSource.description.getter()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA4F2440);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BA1B9C00()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA4F2440);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

uint64_t FallbackHeaderItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void FallbackHeaderItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t FallbackHeaderItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FallbackHeaderItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BA1B9DB0(uint64_t a1)
{
  v2 = sub_1BA1BA8CC();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

HealthExperienceUI::FallbackCollectionViewItem __swiftcall FallbackCollectionViewItem.init()()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = 0xD00000000000001ALL;
  v1[1] = 0x80000001BA4F2460;
  v14 = &type metadata for FallbackCollectionViewItem;
  sub_1BA1BA194();
  v14 = sub_1BA4A6808();
  v15 = v7;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9F46F90(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v8 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v8);

  v9 = (*(v3 + 8))(v6, v2);
  v13 = v15;
  v1[2] = v14;
  v1[3] = v13;
  result.uniqueIdentifier._object = v12;
  result.uniqueIdentifier._countAndFlagsBits = v11;
  result.reuseIdentifier._object = v10;
  result.reuseIdentifier._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1BA1B9FBC(uint64_t a1)
{
  v2 = sub_1BA1BA878();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA1BA008(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

unint64_t sub_1BA1BA020()
{
  result = qword_1EBBED848;
  if (!qword_1EBBED848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED848);
  }

  return result;
}

void sub_1BA1BA074(uint64_t a1)
{
  if (!qword_1EBBED860)
  {
    sub_1B9F0D9AC(255, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
    sub_1BA4A1998();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBED860);
    }
  }
}

unint64_t sub_1BA1BA0F8()
{
  result = qword_1EBBED880;
  if (!qword_1EBBED880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED880);
  }

  return result;
}

unint64_t sub_1BA1BA14C()
{
  result = qword_1EBBED890;
  if (!qword_1EBBED890)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBED890);
  }

  return result;
}

unint64_t sub_1BA1BA194()
{
  result = qword_1EBBED8A0;
  if (!qword_1EBBED8A0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBED8A0);
  }

  return result;
}

unint64_t sub_1BA1BA1E4()
{
  result = qword_1EBBED8A8;
  if (!qword_1EBBED8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8A8);
  }

  return result;
}

uint64_t dispatch thunk of CompoundSectionedDataSource.dataSource(for:)()
{
  return (*(*v0 + 280))();
}

{
  return (*(*v0 + 288))();
}

unint64_t sub_1BA1BA6FC()
{
  result = qword_1EBBEAAA0;
  if (!qword_1EBBEAAA0)
  {
    sub_1B9F261DC(255, &unk_1EBBED8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAAA0);
  }

  return result;
}

void sub_1BA1BA778(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F261DC(255, a3, MEMORY[0x1E69E6158], a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA1BA7E8()
{
  result = qword_1EBBED8E0;
  if (!qword_1EBBED8E0)
  {
    sub_1BA1BA778(255, &unk_1EBBED8D0, &qword_1EBBEAAA8, MEMORY[0x1E69E6EE8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8E0);
  }

  return result;
}

unint64_t sub_1BA1BA878()
{
  result = qword_1EBBED8E8;
  if (!qword_1EBBED8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8E8);
  }

  return result;
}

unint64_t sub_1BA1BA8CC()
{
  result = qword_1EBBED8F0;
  if (!qword_1EBBED8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8F0);
  }

  return result;
}

uint64_t sub_1BA1BA920(uint64_t a1)
{
  sub_1BA1BA778(0, &qword_1EBBED8F8, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA1BAAE8()
{
  swift_unknownObjectRelease();

  sub_1B9F0E310(*(v0 + qword_1EBBED920), *(v0 + qword_1EBBED920 + 8));
  v1 = *(v0 + qword_1EBBED908);
  v2 = *(v0 + qword_1EBBED908 + 8);

  return sub_1B9F0E310(v1, v2);
}

id HideablePregnancyArticlesFRCDataSource.__deallocating_deinit()
{
  [*&v0[qword_1EBBED900] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HideablePregnancyArticlesFRCDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA1BABB4(char *a1)
{
  v1 = *&a1[qword_1EBBED900];
  v2 = a1;
  [v1 unregisterObserver_];
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HideablePregnancyArticlesFRCDataSource(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA1BAC1C(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_1B9F0E310(*(a1 + qword_1EBBED920), *(a1 + qword_1EBBED920 + 8));
  v2 = *(a1 + qword_1EBBED908);
  v3 = *(a1 + qword_1EBBED908 + 8);

  return sub_1B9F0E310(v2, v3);
}

id sub_1BA1BACA0(uint64_t a1, int a2)
{
  v45 = a2;
  v44 = a1;
  sub_1B9F0A7B0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v43 - v5;
  v7 = *(v2 + qword_1EBBED910);
  v8 = *(v2 + qword_1EBBED910 + 8);
  sub_1BA4A27B8();
  sub_1B9F0A7B0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v9 = sub_1BA4A1C68();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v43 = xmmword_1BA4B5480;
  *(v12 + 16) = xmmword_1BA4B5480;
  v13 = *MEMORY[0x1E69A3BD0];
  (*(v10 + 104))(v12 + v11, v13, v9);
  if (v8)
  {
    v14 = sub_1BA4A0FA8();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = *(v2 + qword_1EBBED918);
    v16 = v7;
    v17 = MEMORY[0x1BFAED020](v12, 0, v6, v15);

    sub_1B9F1C1B0(v6);
    sub_1B9F109F8();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BA4B7510;
    *(v18 + 32) = v17;
    *(v18 + 40) = v16;
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v19 = v16;
    v20 = v17;
    v21 = sub_1BA4A6AE8();

    v22 = [objc_opt_self() andPredicateWithSubpredicates_];

    if (v45)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1B9F109F8();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BA4B5470;
    *(v23 + 32) = v7;
    v24 = sub_1BA4A0FA8();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    v15 = *(v2 + qword_1EBBED918);
    v25 = v7;
    v22 = MEMORY[0x1BFAED020](v12, v23, v6, v15);

    sub_1B9F1C1B0(v6);
    if (v45)
    {
      goto LABEL_7;
    }
  }

  if ((v44 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return v22;
  }

LABEL_7:
  v27 = v15;
  sub_1B9F0A7B0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v28 = sub_1BA4A1C68();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v43;
  (*(v29 + 104))(v31 + v30, v13, v28);
  sub_1B9F109F8();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BA4B5470;
  result = [objc_opt_self() pregnancyType];
  if (result)
  {
    v33 = result;
    sub_1BA4A27B8();
    *(v32 + 32) = v33;
    v34 = sub_1BA4A0FA8();
    (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
    v35 = MEMORY[0x1BFAED020](v31, v32, v6, v27);

    sub_1B9F1C1B0(v6);
    v36 = objc_opt_self();
    v37 = [v36 notPredicateWithSubpredicate_];
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BA4B7510;
    *(v38 + 32) = v22;
    *(v38 + 40) = v37;
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v39 = v22;
    v40 = v37;
    v41 = sub_1BA4A6AE8();

    v42 = [v36 andPredicateWithSubpredicates_];

    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA1BB2D8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EBBED908);
  v4 = *(v2 + qword_1EBBED908);
  v5 = *(v2 + qword_1EBBED908 + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_1B9F0E310(v4, v5);
}

double HideablePregnancyArticlesFRCDataSource.pregnancyModelDidUpdate(_:)(void *a1)
{
  v35 = a1;
  swift_getObjectType();
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    v34 = v2;
    sub_1BA4A3DA8();
    v15 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v15, v33))
    {
      v16 = swift_slowAlloc();
      v30 = v16;
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v16 = 136315138;
      v17 = sub_1BA4A85D8();
      v32 = v1;
      v19 = sub_1B9F0B82C(v17, v18, aBlock);
      v1 = v32;

      v20 = v30;
      *(v30 + 1) = v19;
      _os_log_impl(&dword_1B9F07000, v15, v33, "[%s] Received pregnancy model update", v20, 0xCu);
      v21 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v2 = v34;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v22 = sub_1BA4A7308();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = v35;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  aBlock[4] = sub_1BA1BBD78;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_47;
  v26 = _Block_copy(aBlock);

  v27 = v25;
  sub_1BA4A64A8();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A7B0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v9, v5, v26);
  _Block_release(v26);

  (*(v2 + 8))(v5, v1);
  (*(v36 + 8))(v9, v37);

  return result;
}

void sub_1BA1BB7DC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 state];
    v6 = *&v4[qword_1EBBED920];
    if (v6)
    {
      v7 = *&v4[qword_1EBBED920 + 8];
      v8 = v5;

      v9 = v6(v8, 0);
      sub_1B9F0E310(v6, v7);
    }

    else
    {
      v9 = sub_1BA1BACA0(v5, 0);
    }

    v10 = qword_1EDC84AD8;
    swift_beginAccess();
    v11 = *&v4[v10];
    v12 = v4;
    v13 = [v11 fetchRequest];
    v14 = [v13 predicate];

    if (v14)
    {
      sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
      v15 = v9;
      v16 = sub_1BA4A7798();

      if (v16)
      {

        v9 = v15;
LABEL_12:

        return;
      }
    }

    else
    {
      v17 = v9;
    }

    v18 = [*&v4[v10] fetchRequest];
    [v18 setPredicate_];

    sub_1B9F128B4();
    sub_1BA047948();

    v19 = *&v12[qword_1EBBED908];
    if (v19)
    {
      v20 = *&v12[qword_1EBBED908 + 8];

      v19(v21);

      sub_1B9F0E310(v19, v20);
      v9 = v12;
    }

    else
    {
    }

    goto LABEL_12;
  }
}

char *sub_1BA1BBA58(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = objc_allocWithZone(type metadata accessor for HideablePregnancyArticlesFRCDataSource(0));

  return sub_1BA1BBAEC(a1, a2, a3, a4, a5, a6, a7, v16);
}

char *sub_1BA1BBAEC(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = (a8 + qword_1EBBED908);
  *v14 = 0;
  v14[1] = 0;
  *(a8 + qword_1EBBED900) = a5;
  v15 = a8 + qword_1EBBED910;
  *v15 = v12;
  *(v15 + 8) = v13;
  *(a8 + qword_1EBBED918) = a2;
  v16 = (a8 + qword_1EBBED920);
  *v16 = a6;
  v16[1] = a7;
  v33 = v12;
  v34 = v13;
  *v32 = *a4;
  v17 = v12;

  v18 = a1;
  sub_1B9F0F1B8(a6, a7);
  v19 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v18, a2, &v33, v32);
  v20 = qword_1EBBED900;
  v21 = *&v19[qword_1EBBED900];
  v22 = v19;
  v23 = [v21 getCurrentPregnancyModel];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 state];
  }

  else
  {
    v25 = 0;
  }

  v26 = *&v22[qword_1EBBED920];
  if (v26)
  {
    v27 = *&v22[qword_1EBBED920 + 8];

    v28 = v26(v25, v24 == 0);
    sub_1B9F0E310(v26, v27);
  }

  else
  {
    v28 = sub_1BA1BACA0(v25, v24 == 0);
  }

  v29 = qword_1EDC84AD8;
  swift_beginAccess();
  v30 = [*&v22[v29] fetchRequest];
  [v30 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  [*&v19[v20] registerObserver:v22 isUserInitiated:1];
  sub_1B9F0E310(a6, a7);

  return v22;
}

uint64_t type metadata accessor for HideablePregnancyArticlesFRCDataSource(uint64_t a1)
{
  result = qword_1EDC60A10;
  if (!qword_1EDC60A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1BBE68(uint64_t a1)
{
  v2 = sub_1BA1BC048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1BBEA4(uint64_t a1)
{
  v2 = sub_1BA1BC048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptySnidgetVisualizationView.ViewModel.encode(to:)(void *a1)
{
  sub_1BA1BBFEC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1BC048();
  sub_1BA4A8548();
  return (*(v4 + 8))(v7, v3);
}

void sub_1BA1BBFEC(uint64_t a1)
{
  if (!qword_1EBBED988)
  {
    sub_1BA1BC048();
    v1 = sub_1BA4A8298();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED988);
    }
  }
}

unint64_t sub_1BA1BC048()
{
  result = qword_1EBBED990;
  if (!qword_1EBBED990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED990);
  }

  return result;
}

uint64_t sub_1BA1BC0EC(void *a1)
{
  sub_1BA1BBFEC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1BC048();
  sub_1BA4A8548();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BA1BC220(uint64_t a1)
{
  result = sub_1BA1BC248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA1BC248()
{
  result = qword_1EDC63F40;
  if (!qword_1EDC63F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63F40);
  }

  return result;
}

unint64_t sub_1BA1BC2D0()
{
  result = qword_1EBBED998;
  if (!qword_1EBBED998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED998);
  }

  return result;
}

unint64_t sub_1BA1BC328()
{
  result = qword_1EBBED9A0;
  if (!qword_1EBBED9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9A0);
  }

  return result;
}

uint64_t HKTypeGroup.keywordID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKTypeGroup.displayName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HKTypeGroup.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  return MEMORY[0x1BFAF2ED0](v2);
}

id sub_1BA1BC458(SEL *a1)
{
  v3 = [objc_opt_self() categoryWithID_];
  v4 = [v3 *a1];

  return v4;
}

uint64_t HKTypeGroup.iconName.getter()
{
  v1 = [objc_opt_self() categoryWithID_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 largeListIconName];

  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  return v4;
}

uint64_t HKTypeGroup.displayNameForEmbedding.getter()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() categoryWithID_];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 embeddedDisplayName];
    v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
  }

  return v1;
}

char *sub_1BA1BC5F0()
{
  result = sub_1BA1BC610();
  off_1EDC6EA10 = result;
  return result;
}

char *sub_1BA1BC610()
{
  v29 = objc_opt_self();
  v0 = [v29 sortedCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0, 0x1E69A4368);
  v1 = sub_1BA4A6B08();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v4 = MEMORY[0x1E69E7CC0];
LABEL_23:

    return v4;
  }

LABEL_21:
  v2 = sub_1BA4A7CC8();
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v28 = v1 & 0xC000000000000001;
  v4 = MEMORY[0x1E69E7CC0];
  v26 = v1;
  v27 = v1 & 0xFFFFFFFFFFFFFF8;
  v5 = &selRef_createHKUnitPreferenceController;
  v25 = v2;
  while (1)
  {
    if (v28)
    {
      v6 = MEMORY[0x1BFAF2860](v3, v1);
    }

    else
    {
      if (v3 >= *(v27 + 16))
      {
        goto LABEL_20;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    [v6 v5[332]];
    v9 = HKDisplayCategoryIdentifierToString();
    if (!v9)
    {
      break;
    }

    v10 = v9;
    v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v12;

    v13 = [v7 v5[332]];
    v14 = [v7 displayName];
    v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v16 = v15;

    v17 = [v29 categoryWithID_];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1BA4A7258();
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B9F2A754(0, *(v4 + 2) + 1, 1, v4);
    }

    v22 = *(v4 + 2);
    v21 = *(v4 + 3);
    if (v22 >= v21 >> 1)
    {
      v4 = sub_1B9F2A754((v21 > 1), v22 + 1, 1, v4);
    }

    *(v4 + 2) = v22 + 1;
    v23 = &v4[48 * v22];
    *(v23 + 4) = v20;
    *(v23 + 5) = v31;
    *(v23 + 6) = v13;
    *(v23 + 7) = v30;
    *(v23 + 8) = v16;
    *(v23 + 9) = v19;
    ++v3;
    v1 = v26;
    v5 = &selRef_createHKUnitPreferenceController;
    if (v8 == v25)
    {
      goto LABEL_23;
    }
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void *sub_1BA1BC908()
{
  result = sub_1BA1BC928();
  off_1EDC6EA20 = result;
  return result;
}

void *sub_1BA1BC928()
{
  if (qword_1EDC6EA08 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v0 = off_1EDC6EA10;
    v1 = sub_1B9FDB2E4(MEMORY[0x1E69E7CC0]);
    v26 = v0[2];
    if (!v26)
    {
      return v1;
    }

    v2 = 0;
    v3 = v0 + 9;
    v25 = v0;
    while (v2 < v0[2])
    {
      v6 = *(v3 - 5);
      v5 = *(v3 - 4);
      v7 = *(v3 - 3);
      v27 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = *v3;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_1B9F24A34(v6, v5);
      v13 = v1[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_19;
      }

      v17 = v12;
      if (v1[3] < v16)
      {
        sub_1BA0F3974(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_1B9F24A34(v6, v5);
        if ((v17 & 1) != (v18 & 1))
        {
          result = sub_1BA4A83B8();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v17)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v23 = v11;
      sub_1BA0F194C();
      v11 = v23;
      if (v17)
      {
LABEL_4:
        v4 = (v1[7] + 48 * v11);
        *v4 = v6;
        v4[1] = v5;
        v4[2] = v7;
        v4[3] = v27;
        v4[4] = v8;
        v4[5] = v9;

        goto LABEL_5;
      }

LABEL_13:
      v1[(v11 >> 6) + 8] |= 1 << v11;
      v19 = (v1[6] + 16 * v11);
      *v19 = v6;
      v19[1] = v5;
      v20 = (v1[7] + 48 * v11);
      *v20 = v6;
      v20[1] = v5;
      v20[2] = v7;
      v20[3] = v27;
      v20[4] = v8;
      v20[5] = v9;

      v21 = v1[2];
      v15 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v15)
      {
        goto LABEL_20;
      }

      v1[2] = v22;
LABEL_5:
      ++v2;
      v3 += 6;
      v0 = v25;
      if (v26 == v2)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

void static HKTypeGroup.typeGroup(for:)(void *a2@<X8>)
{
  if (qword_1EDC6EA08 != -1)
  {
LABEL_11:
    swift_once();
  }

  v16 = off_1EDC6EA10;
  v15 = *(off_1EDC6EA10 + 2);
  if (v15)
  {
    v2 = 0;
    v3 = (off_1EDC6EA10 + 72);
    while (1)
    {
      if (v2 >= v16[2])
      {
        __break(1u);
        goto LABEL_11;
      }

      v4 = *(v3 - 5);
      v5 = *(v3 - 4);
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = *v3;
      v10 = objc_opt_self();

      v11 = [v10 categoryWithID_];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
      v13 = sub_1BA4A7798();

      if (v13)
      {
        *a2 = v4;
        a2[1] = v5;
        a2[2] = v7;
        a2[3] = v6;
        a2[4] = v8;
        a2[5] = v9;
        return;
      }

      ++v2;

      v3 += 6;
      if (v15 == v2)
      {
        goto LABEL_13;
      }
    }

    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000029, 0x80000001BA4F2650);
    type metadata accessor for HKDisplayCategoryIdentifier(0);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
    MEMORY[0x1BFAF1350](v6, v8);
  }

LABEL_13:
  sub_1BA4A8018();
  __break(1u);
}

void static HKTypeGroup.typeGroup(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() categoryWithID_];
  if (v3)
  {
    v4 = v3;
    static HKTypeGroup.typeGroup(for:)(a2);
  }

  else
  {
    __break(1u);
  }
}

double HKTypeGroup.style.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = [objc_opt_self() categoryWithID_];
  v7 = [v6 largeListIcon];

  if (!v7)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  *a1 = v7;
  a1[1] = v4;
  a1[2] = v5;
  a1[6] = 0;
  a1[7] = 0;

  return result;
}

uint64_t HKTypeGroup.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  MEMORY[0x1BFAF2ED0](v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1BCFD8()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  MEMORY[0x1BFAF2ED0](v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1BD03C()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  return MEMORY[0x1BFAF2ED0](v2);
}

uint64_t sub_1BA1BD098(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1BA4A8488();
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v2);
  v3 = sub_1BA4A84D8();
  MEMORY[0x1BFAF2ED0](v3);
  return sub_1BA4A84D8();
}

double sub_1BA1BD0F8@<D0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = [objc_opt_self() categoryWithID_];
  v7 = [v6 largeListIcon];

  if (!v7)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  *a1 = v7;
  a1[1] = v4;
  a1[2] = v5;
  a1[6] = 0;
  a1[7] = 0;

  return result;
}

uint64_t _s18HealthExperienceUI11HKTypeGroupV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BA4A8338() & 1) == 0 || v2 != v7 || (v3 != v6 || v4 != v9) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  return sub_1B9FF1258(v5, v8);
}

unint64_t sub_1BA1BD298()
{
  result = qword_1EDC69600;
  if (!qword_1EDC69600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69600);
  }

  return result;
}

unint64_t sub_1BA1BD318()
{
  result = qword_1EBBF2E70;
  if (!qword_1EBBF2E70)
  {
    sub_1B9F7E0A0(255, &qword_1EBBED9A8, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2E70);
  }

  return result;
}

uint64_t (*sub_1BA1BD458(uint64_t (*a1)(__n128), uint64_t a2, double a3, double a4, double a5, double a6))(__n128)
{
  sub_1B9F7E0A0(0, &qword_1EDC5ECE0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60]);
  v13 = v12;
  v14 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v28[-1] - v17;
  v19 = a1(v16);
  v29.receiver = v6;
  v29.super_class = v19;
  v20 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a3, a4, a5, a6);
  sub_1B9F7E0A0(0, &qword_1EBBED9A8, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
  v28[3] = v21;
  v28[4] = sub_1BA1BD318();
  __swift_allocate_boxed_opaque_existential_1(v28);
  v22 = objc_opt_self();
  v23 = v20;
  v24 = [v22 isAppleInternalInstall];
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24, v25);
    *(&v27 - 2) = 1819043139;
    *(&v27 - 1) = 0xE400000000000000;
  }

  sub_1BA4A59B8();
  sub_1BA4A5998();
  (*(v14 + 8))(v18, v13);
  MEMORY[0x1BFAF1EF0](v28);

  return v23;
}

id sub_1BA1BD708(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(__n128), uint64_t a8)
{
  sub_1B9F7E0A0(0, &qword_1EDC5ECE0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60]);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v30[-1] - v19;
  v21 = a7(v18);
  v31.receiver = a1;
  v31.super_class = v21;
  v22 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a2, a3, a4, a5);
  sub_1B9F7E0A0(0, &qword_1EBBED9A8, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
  v30[3] = v23;
  v30[4] = sub_1BA1BD318();
  __swift_allocate_boxed_opaque_existential_1(v30);
  v24 = objc_opt_self();
  v25 = v22;
  v26 = [v24 isAppleInternalInstall];
  if (v26)
  {
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v29 - 2) = 1819043139;
    *(&v29 - 1) = 0xE400000000000000;
  }

  sub_1BA4A59B8();
  sub_1BA4A5998();
  (*(v16 + 8))(v20, v15);
  MEMORY[0x1BFAF1EF0](v30);

  return v25;
}

id sub_1BA1BDA00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t FallbackView.domain.getter()
{
  v1 = *v0;

  return v1;
}

double FallbackView.body.getter()
{
  v2 = sub_1BA4A57E8();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = *v1;
  v4 = v1[1];
  sub_1BA4A57D8();
  sub_1BA4A57C8();
  sub_1BA4A57B8();
  sub_1BA4A57C8();
  sub_1BA4A5808();
  v6 = sub_1BA4A5DF8();
  v8 = v7;
  v10 = v9;
  sub_1BA4A5988();
  v11 = sub_1BA4A5DC8();
  v13 = v12;
  v15 = v14;
  sub_1BA102AF4(v6, v8, v10 & 1);

  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v4;

  sub_1BA4A5F08();

  sub_1BA102AF4(v11, v13, v15 & 1);

  return result;
}

void sub_1BA1BDC80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A15D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v19 = 0xD000000000000010;
    v20 = 0x80000001BA4F27D0;
    MEMORY[0x1BFAF1350](a1, a2);
    MEMORY[0x1BFAF1350](93, 0xE100000000000000);
    v12 = sub_1BA4A6758();

    v13 = sub_1BA4A6758();
    sub_1BA0B5A7C();
    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1BA4A6AE8();
    v16 = [v11 hk:v12 tapToHealthRadarURLWithTitle:v13 description:5 classification:0 reproducibility:v15 keywords:2 autoDiagnostics:0 attachments:?];

    sub_1BA4A1588();
    v17 = sub_1BA4A1548();
    (*(v5 + 8))(v8, v4);
    sub_1B9FDB798(v14);
    v18 = sub_1BA4A6618();

    [v10 openSensitiveURL:v17 withOptions:v18];
  }
}

uint64_t sub_1BA1BDEF8@<X0>(uint64_t *a3@<X8>)
{
  sub_1BA1BE558();

  result = sub_1BA4A6288();
  *a3 = result;
  return result;
}

uint64_t sub_1BA1BDF58@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA1BE2CC(0, &qword_1EBBED9B0, sub_1BA1BE1B0, &type metadata for PlatformCellCornerRadius, MEMORY[0x1E697E830]);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12 - v4;
  v6 = sub_1BA4A60A8();
  sub_1BA1BE1B0(0);
  v8 = &v5[*(v7 + 36)];
  sub_1BA4A63B8();
  v9 = sub_1BA4A5B78();
  sub_1BA1BE2CC(0, &qword_1EBBED9C8, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
  v8[*(v10 + 36)] = v9;
  *v5 = v6;
  *(v5 + 4) = 256;
  sub_1BA1BE338();
  result = sub_1BA4A6288();
  *a1 = result;
  return result;
}

uint64_t sub_1BA1BE0A0@<X0>(uint64_t *a2@<X8>)
{
  sub_1BA4A63C8();
  sub_1BA4A5278();
  sub_1BA1BE5AC();
  sub_1BA1BE604();
  result = sub_1BA4A6288();
  *a2 = result;
  return result;
}

uint64_t sub_1BA1BE138@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BA4A6288();
  *a2 = result;
  return result;
}

void sub_1BA1BE1B0(uint64_t a1)
{
  if (!qword_1EBBED9B8)
  {
    sub_1BA1BE250(255);
    sub_1BA1BE2CC(255, &qword_1EBBED9C8, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED9B8);
    }
  }
}

void sub_1BA1BE250(uint64_t a1)
{
  if (!qword_1EBBED9C0)
  {
    sub_1B9F58524();
    v1 = sub_1BA4A5198();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED9C0);
    }
  }
}

void sub_1BA1BE2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1BA1BE338()
{
  result = qword_1EBBED9D0;
  if (!qword_1EBBED9D0)
  {
    sub_1BA1BE2CC(255, &qword_1EBBED9B0, sub_1BA1BE1B0, &type metadata for PlatformCellCornerRadius, MEMORY[0x1E697E830]);
    sub_1BA1BE3F0();
    sub_1B9F8A01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9D0);
  }

  return result;
}

unint64_t sub_1BA1BE3F0()
{
  result = qword_1EBBED9D8;
  if (!qword_1EBBED9D8)
  {
    sub_1BA1BE1B0(255);
    sub_1BA1BE470();
    sub_1BA1BE4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9D8);
  }

  return result;
}

unint64_t sub_1BA1BE470()
{
  result = qword_1EBBED9E0;
  if (!qword_1EBBED9E0)
  {
    sub_1BA1BE250(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9E0);
  }

  return result;
}

unint64_t sub_1BA1BE4C8()
{
  result = qword_1EBBED9E8;
  if (!qword_1EBBED9E8)
  {
    sub_1BA1BE2CC(255, &qword_1EBBED9C8, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9E8);
  }

  return result;
}

unint64_t sub_1BA1BE558()
{
  result = qword_1EBBED9F0;
  if (!qword_1EBBED9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9F0);
  }

  return result;
}

void sub_1BA1BE5AC()
{
  if (!qword_1EBBED9F8)
  {
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED9F8);
    }
  }
}

unint64_t sub_1BA1BE604()
{
  result = qword_1EBBEDA00;
  if (!qword_1EBBEDA00)
  {
    sub_1BA1BE5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDA00);
  }

  return result;
}

double sub_1BA1BE684(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA1BE6EC()
{
  swift_beginAccess();

  return result;
}

double sub_1BA1BE734(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id InternalFeedItemListViewController.__allocating_init(contentKinds:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_initWithCollectionViewLayout_, 0);
}

id InternalFeedItemListViewController.init(contentKinds:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *&v1[v3] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InternalFeedItemListViewController();
  return objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, 0);
}

id InternalFeedItemListViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InternalFeedItemListViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds] = MEMORY[0x1E69E7CC0];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InternalFeedItemListViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1BA1BEB54()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = type metadata accessor for ContentKindFeedItemDataSourceProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v8[3] = v3;
  v8[4] = &off_1F380C5F8;
  v8[0] = v4;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();

  sub_1B9F10C48(v8, &v0[v5]);
  swift_endAccess();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for InternalFeedItemListViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v6 = sub_1BA4A6758();

  [v0 setTitle_];
}

id InternalFeedItemListViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id InternalFeedItemListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalFeedItemListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1BEE60()
{
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UIViewController.resolvedHealthExperienceStore.getter(v28);
  sub_1BA4A27B8();
  v5 = MEMORY[0x1BFAED110]();
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1BA4A6758();
  v8 = [v6 initWithKey:v7 ascending:1 selector:sel_localizedStandardCompare_];

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5470;
  *(v9 + 32) = v8;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v10 = v8;
  v11 = sub_1BA4A6AE8();

  [v5 setSortDescriptors_];

  v12 = *(v0 + 16);
  v13 = sub_1BA4A0FA8();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5460;
  *(v14 + 32) = sub_1BA4A1D78();
  *(v14 + 40) = 0;
  v15 = MEMORY[0x1BFAED020](v12, 0, v4, v14);

  sub_1B9F1C1B0(v4);
  [v5 setPredicate_];

  __swift_project_boxed_opaque_existential_1(v28, v29);
  v16 = v5;
  v17 = sub_1BA4A1B68();
  v18 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v16 managedObjectContext:v17 sectionNameKeyPath:0 cacheName:0];

  v19 = qword_1EDC6D410;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v30[4] = xmmword_1EDC6D458;
  v30[5] = *&qword_1EDC6D468;
  v30[6] = xmmword_1EDC6D478;
  v30[7] = xmmword_1EDC6D488;
  v30[0] = xmmword_1EDC6D418;
  v30[1] = *&qword_1EDC6D428;
  v30[2] = xmmword_1EDC6D438;
  v30[3] = xmmword_1EDC6D448;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v27[4] = xmmword_1EDC6D458;
  v27[5] = *&qword_1EDC6D468;
  v27[6] = xmmword_1EDC6D478;
  v27[7] = xmmword_1EDC6D488;
  v27[0] = xmmword_1EDC6D418;
  v27[1] = *&qword_1EDC6D428;
  v27[2] = xmmword_1EDC6D438;
  v27[3] = xmmword_1EDC6D448;
  sub_1B9F1D9A4(v30, v26);
  v21 = sub_1B9F293A8(v27);
  v22 = objc_allocWithZone(type metadata accessor for ListFeedItemsDataSource(0));
  *&v22[qword_1EBBF0168] = 0;
  *&v22[qword_1EBC09850] = v21;
  v23 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v20);
  sub_1B9F1DEA0(0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5480;
  *(v24 + 32) = v23;
  *(v24 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v24;
}

uint64_t sub_1BA1BF25C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1BF3E4()
{
  v1 = v0;
  v2 = sub_1BA4A28B8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x1E69A3138], v2, v5);
  v9 = sub_1BA4A2898();
  v10 = *(v3 + 8);
  v10(v7, v2);
  (v8)(v7, *MEMORY[0x1E69A3140], v2);
  v11 = sub_1BA4A2898();
  v10(v7, v2);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v12, v45);
  v13 = v46;
  v14 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v15 = (*(v14 + 72))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v16 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7D40];
  if (v9 & 1) != 0 && (v15 & 1) != 0 && (v11)
  {
    sub_1BA1C01E0(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BA4B5480;
    sub_1B9F109F8();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BA4B7510;
    v20 = sub_1BA4A6758();
    v43 = objc_opt_self();
    v21 = [v43 systemImageNamed_];

    sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);
    (*((*v17 & *v1) + 0x230))();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = v21;
    v23 = sub_1BA4A77E8();
    v45[0] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v45[1] = v24;
    v25 = v23;

    MEMORY[0x1BFAF1350](0x617461446464412ELL, 0xE800000000000000);

    v26 = sub_1BA4A6758();

    [v25 setAccessibilityIdentifier_];

    *(v19 + 32) = v25;
    if (qword_1EBBE84C0 != -1)
    {
      swift_once();
    }

    v27 = qword_1EBBE84C8;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = qword_1EBC09650;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = v28;
    *(v19 + 40) = sub_1BA4A77E8();
    v30 = sub_1BA4A6758();
    v31 = [v43 systemImageNamed_];

    sub_1B9F0ADF8(0, &qword_1EBBEDA10, 0x1E69DCC60);
    sub_1BA4A76C8();
    sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
    swift_unknownObjectRetain();
    *(v18 + 32) = sub_1BA4A7138();
    v44 = v18;
    v17 = MEMORY[0x1E69E7D40];
    goto LABEL_20;
  }

  sub_1B9F0A534(v1 + v12, v45);
  v32 = v46;
  v33 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v34 = (*(v33 + 72))(v32, v33);
  __swift_destroy_boxed_opaque_existential_1(v45);
  if ((v34 & 1) == 0)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v35 = sub_1BA328364();
  MEMORY[0x1BFAF1510]();
  if (*(v44 + 16) >= *(v44 + 24) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  v18 = v44;
  if (v11)
  {
LABEL_15:
    sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
    if (qword_1EBBE84C8 != -1)
    {
      swift_once();
    }

    v36 = qword_1EBC09650;
    v37 = v1;
    sub_1BA4A7138();
    MEMORY[0x1BFAF1510]();
    if (*(v44 + 16) >= *(v44 + 24) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v18 = v44;
  }

LABEL_20:
  v38 = (*((*v17 & *v1) + 0x280))();
  if (v38)
  {
    v1 = v38;
    MEMORY[0x1BFAF1510]();
    if (*(v44 + 16) >= *(v44 + 24) >> 1)
    {
LABEL_32:
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v18 = v44;
  }

  v39 = 0;
  v45[0] = v16;
  v40 = *(v18 + 16);
  while (v40 != v39)
  {
    if (v39 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v41 = *(v18 + 8 * v39++ + 32);
    if (v41)
    {
      v1 = v41;
      MEMORY[0x1BFAF1510]();
      if (*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v16 = v45[0];
    }
  }

  return v16;
}

void sub_1BA1BFC4C(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a3;
    v7 = Strong;
    [Strong v6];
  }
}

id sub_1BA1BFCB8()
{
  sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x230);
  v1();
  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() systemImageNamed_];

  swift_unknownObjectRetain();
  v4 = sub_1BA4A7138();
  sub_1BA4A7DF8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4F2960);
  v5 = sub_1BA4A6758();

  [v4 setAccessibilityIdentifier_];

  v6 = v4;
  v1();
  v7 = sub_1BA4A6758();

  [v6 setAccessibilityValue_];

  return v6;
}

uint64_t sub_1BA1BFFF0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09640 = result;
  *algn_1EBC09648 = v1;
  return result;
}

void sub_1BA1C00A4()
{
  v0 = sub_1BA4A6758();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EBC09650 = v1;
}

void sub_1BA1C01E0(uint64_t a1)
{
  if (!qword_1EDC5DBC8)
  {
    sub_1BA1C0238(255);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DBC8);
    }
  }
}

void sub_1BA1C0238(uint64_t a1)
{
  if (!qword_1EDC5E510)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B600, 0x1E69DC708);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E510);
    }
  }
}

Swift::Void __swiftcall CardStackPresentation.present(_:dismissVC:)(UIViewController *_, UIViewController *dismissVC)
{
  if (*v2 >= 2u)
  {
    v6 = [(UIViewController *)dismissVC navigationController];
    if (v6 && (v7 = v6, v8 = [(UINavigationController *)v6 presentingViewController], v7, v8) && (sub_1B9F21ADC(), sub_1B9F0D950(0, &qword_1EBBEDA20, &protocol descriptor for ViewControllerRouterProtocol), (swift_dynamicCast() & 1) != 0))
    {
      v9 = *(&v18 + 1);
      if (*(&v18 + 1))
      {
        v10 = v19;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v18 + 1));
        v11 = (*(v10 + 3))(v9, v10);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_13:
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = _;
        v19 = sub_1BA1C0548;
        v20 = v12;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v18 = sub_1B9F0B040;
        *(&v18 + 1) = &block_descriptor_48;
        v13 = _Block_copy(&aBlock);
        v14 = v11;
        v15 = _;

        [(UIViewController *)dismissVC dismissViewControllerAnimated:1 completion:v13];

        _Block_release(v13);
        return;
      }
    }

    else
    {
      v19 = 0;
      aBlock = 0u;
      v18 = 0u;
    }

    sub_1B9F43A50(&aBlock, &qword_1EBBEDA18, &qword_1EBBEDA20, &protocol descriptor for ViewControllerRouterProtocol);
    v11 = 0;
    goto LABEL_13;
  }

  v5 = [(UIViewController *)dismissVC parentViewController];
  if (v5)
  {
    v16 = v5;
    [(UIViewController *)v5 presentViewController:_ animated:1 completion:0];
  }
}

id sub_1BA1C0548()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result presentViewController:*(v0 + 24) animated:1 completion:0];
  }

  return result;
}

Swift::Void __swiftcall CardStackPresentation.pushViewController(_:dismissVC:)(UIViewController *_, UIViewController *dismissVC)
{
  if (*v2 >= 2u)
  {
    v6 = [(UIViewController *)dismissVC navigationController];
    if (v6 && (v7 = v6, v8 = [(UINavigationController *)v6 presentingViewController], v7, v8) && (sub_1B9F21ADC(), sub_1B9F0D950(0, &qword_1EBBEDA20, &protocol descriptor for ViewControllerRouterProtocol), (swift_dynamicCast() & 1) != 0))
    {
      v9 = *(&v19 + 1);
      if (*(&v19 + 1))
      {
        v10 = v20;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v19 + 1));
        v11 = (*(v10 + 3))(v9, v10);
        v12 = [v11 navigationController];

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_13:
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = _;
        v20 = sub_1BA1C07E0;
        v21 = v13;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v19 = sub_1B9F0B040;
        *(&v19 + 1) = &block_descriptor_6_5;
        v14 = _Block_copy(&aBlock);
        v15 = v12;
        v16 = _;

        [(UIViewController *)dismissVC dismissViewControllerAnimated:1 completion:v14];

        _Block_release(v14);
        return;
      }
    }

    else
    {
      v20 = 0;
      aBlock = 0u;
      v19 = 0u;
    }

    sub_1B9F43A50(&aBlock, &qword_1EBBEDA18, &qword_1EBBEDA20, &protocol descriptor for ViewControllerRouterProtocol);
    v12 = 0;
    goto LABEL_13;
  }

  v5 = [(UIViewController *)dismissVC navigationController];
  if (v5)
  {
    v17 = v5;
    [(UINavigationController *)v5 pushViewController:_ animated:1];
  }
}

id sub_1BA1C07E0()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result pushViewController:*(v0 + 24) animated:1];
  }

  return result;
}

uint64_t CardStackPresentation.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

void sub_1BA1C088C(char *a1@<X8>)
{
  v3 = sub_1B9F21ADC();
  v27 = v3;
  v26[0] = v1;
  sub_1B9F0AD9C(v26, v22 + 1);
  sub_1B9F0D950(0, &qword_1EDC63A28, &protocol descriptor for CardStackPresentationProviding);
  v4 = v1;
  if (swift_dynamicCast())
  {
    v5 = *(&v24 + 1);
    v6 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    (*(v6 + 8))(v22, v5, v6);
    v7 = v22[0];
    __swift_destroy_boxed_opaque_existential_1(&v23);
    __swift_destroy_boxed_opaque_existential_1(v26);
    goto LABEL_23;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1B9F43A50(&v23, &qword_1EDC63A20, &qword_1EDC63A28, &protocol descriptor for CardStackPresentationProviding);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v8 = sub_1BA096838();
  v9 = v8;
  v20 = v4;
  v21 = a1;
  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_5:
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFAF2860](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          v14 = *(&v24 + 1);
          v15 = v25;
          __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
          (*(v15 + 8))(v22, v14, v15);
          v7 = v22[0];
          __swift_destroy_boxed_opaque_existential_1(&v23);
          __swift_destroy_boxed_opaque_existential_1(v26);
          a1 = v21;
          goto LABEL_23;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_17:
          v10 = sub_1BA4A7CC8();
          if (!v10)
          {
            break;
          }

          goto LABEL_5;
        }

        v12 = *(v9 + 8 * v11 + 32);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }
      }

      v27 = v3;
      v26[0] = v12;
      sub_1B9F0AD9C(v26, v22 + 1);
      if (swift_dynamicCast())
      {
        goto LABEL_15;
      }

      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_1B9F43A50(&v23, &qword_1EDC63A20, &qword_1EDC63A28, &protocol descriptor for CardStackPresentationProviding);
      __swift_destroy_boxed_opaque_existential_1(v26);
      ++v11;
    }

    while (v13 != v10);
  }

  v16 = [v4 parentViewController];
  a1 = v21;
  if (!v16 || (v17 = v16, sub_1BA1C088C(&v23), v17, v7 = v23, v23 == 3))
  {
    v18 = [v20 presentingViewController];
    if (!v18 || (v19 = v18, sub_1BA1C088C(&v23), v19, v7 = v23, v23 == 3))
    {
      v7 = 3;
    }
  }

LABEL_23:
  *a1 = v7;
}

unint64_t sub_1BA1C0BAC()
{
  result = qword_1EBBEDA28;
  if (!qword_1EBBEDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDA28);
  }

  return result;
}

uint64_t CollectionViewGroupedFooterItem.init(text:uniqueIdentifier:accessibilityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA0603B0();
  *a7 = sub_1BA4A6808();
  a7[1] = v14;
  v15 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v16 = a7 + *(v15 + 32);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = (a7 + *(v15 + 28));
  *v17 = a1;
  v17[1] = a2;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1BA1C0D30(uint64_t a1)
{
  v67 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1C3AEC(0);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D31C(0, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v69 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v62 - v23;
  v25 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v66 = (&v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v62 - v31;
  v33 = OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item;
  swift_beginAccess();
  v73 = v1;
  sub_1BA1C3BD4(v1 + v33, v75, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v76)
  {
    v63 = v13;
    v65 = v9;
    sub_1B9FCD918();
    v34 = swift_dynamicCast();
    v35 = *(v26 + 56);
    v35(v24, v34 ^ 1u, 1, v25);
    v64 = *(v26 + 48);
    if (v64(v24, 1, v25) != 1)
    {
      v36 = v32;
      sub_1BA18F0B8(v24, v32);
      sub_1BA1C3BD4(v67, v75, &qword_1EDC6E1A0, sub_1B9FCD918);
      if (v76)
      {
        v37 = v69;
        v38 = swift_dynamicCast() ^ 1;
        v39 = v37;
      }

      else
      {
        sub_1B9F43FD8(v75, &qword_1EDC6E1A0, sub_1B9FCD918);
        v37 = v69;
        v39 = v69;
        v38 = 1;
      }

      v35(v39, v38, 1, v25);
      v53 = v64;
      sub_1BA1C3B6C(v36, v17, type metadata accessor for CollectionViewGroupedFooterItem);
      v35(v17, 0, 1, v25);
      v54 = *(v68 + 48);
      v55 = v65;
      sub_1BA1C3BD4(v37, v65, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
      sub_1BA1C3BD4(v17, v55 + v54, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
      if (v53(v55, 1, v25) == 1)
      {
        sub_1B9F43FD8(v17, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
        if (v53(v55 + v54, 1, v25) == 1)
        {
          sub_1B9F43FD8(v55, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1B9F43FD8(v37, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          return sub_1BA1C3C40(v36, type metadata accessor for CollectionViewGroupedFooterItem);
        }
      }

      else
      {
        v56 = v63;
        sub_1BA1C3BD4(v55, v63, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
        if (v53(v55 + v54, 1, v25) != 1)
        {
          v60 = v66;
          sub_1BA18F0B8(v55 + v54, v66);
          v61 = _s18HealthExperienceUI31CollectionViewGroupedFooterItemV2eeoiySbAC_ACtFZ_0(v56, v60);
          sub_1BA1C3C40(v60, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1B9F43FD8(v17, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1BA1C3C40(v56, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1B9F43FD8(v55, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1B9F43FD8(v37, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          v57 = v73;
          if (v61)
          {
            return sub_1BA1C3C40(v36, type metadata accessor for CollectionViewGroupedFooterItem);
          }

          goto LABEL_16;
        }

        sub_1B9F43FD8(v17, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
        sub_1BA1C3C40(v56, type metadata accessor for CollectionViewGroupedFooterItem);
      }

      sub_1BA1C3C40(v55, sub_1BA1C3AEC);
      sub_1B9F43FD8(v37, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
      v57 = v73;
LABEL_16:
      sub_1BA1C1D44(v36);
      v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA1C2790(v58, v59);

      [v57 setAccessibilityTraits_];
      return sub_1BA1C3C40(v36, type metadata accessor for CollectionViewGroupedFooterItem);
    }
  }

  else
  {
    sub_1B9F43FD8(v75, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v26 + 56))(v24, 1, 1, v25);
  }

  sub_1B9F43FD8(v24, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  sub_1BA4A3E48();
  v40 = v73;
  v41 = v73;
  v42 = sub_1BA4A3E88();
  v43 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v74 = v45;
    *v44 = 136446466;
    v75[0] = ObjectType;
    swift_getMetatypeMetadata();
    v46 = sub_1BA4A6808();
    v48 = sub_1B9F0B82C(v46, v47, &v74);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    sub_1BA1C3BD4(v40 + v33, v75, &qword_1EDC6E1A0, sub_1B9FCD918);
    sub_1B9F0D31C(0, &qword_1EDC6E1A0, sub_1B9FCD918);
    v49 = sub_1BA4A6808();
    v51 = sub_1B9F0B82C(v49, v50, &v74);

    *(v44 + 14) = v51;
    _os_log_impl(&dword_1B9F07000, v42, v43, "[%{public}s] item %s is not an CollectionViewGroupedFooterItem", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v45, -1, -1);
    MEMORY[0x1BFAF43A0](v44, -1, -1);
  }

  return (*(v71 + 8))(v5, v72);
}

uint64_t sub_1BA1C161C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item;
  swift_beginAccess();
  return sub_1BA1C3BD4(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA1C1690(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item;
  swift_beginAccess();
  sub_1BA1C3BD4(v1 + v3, v5, &qword_1EDC6E1A0, sub_1B9FCD918);
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA1C0D30(v5);
  sub_1B9F43FD8(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
  return sub_1B9F43FD8(v5, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void (*sub_1BA1C1764(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_1BA1C3BD4(v1 + v5, v4, &qword_1EDC6E1A0, sub_1B9FCD918);
  return sub_1BA1C1818;
}

void sub_1BA1C1818(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_1BA1C3BD4(*a1, v2 + 40, &qword_1EDC6E1A0, sub_1B9FCD918);
    sub_1BA1C3BD4(v3 + v4, v2 + 80, &qword_1EDC6E1A0, sub_1B9FCD918);
    swift_beginAccess();
    sub_1B9F63E74(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_1BA1C0D30(v2 + 80);
    sub_1B9F43FD8(v2 + 80, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  else
  {
    sub_1BA1C3BD4(v3 + v4, v2 + 40, &qword_1EDC6E1A0, sub_1B9FCD918);
    swift_beginAccess();
    sub_1B9F63E74(v2, v3 + v4);
    swift_endAccess();
    sub_1BA1C0D30(v2 + 40);
  }

  sub_1B9F43FD8(v2 + 40, &qword_1EDC6E1A0, sub_1B9FCD918);
  sub_1B9F43FD8(v2, &qword_1EDC6E1A0, sub_1B9FCD918);

  free(v2);
}

id CollectionViewGroupedFooterCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollectionViewGroupedFooterCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  sub_1B9F0D31C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20[-1] - v11;
  v13 = &v4[OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item];
  v14 = type metadata accessor for CollectionViewGroupedFooterCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v21.receiver = v4;
  v21.super_class = v14;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v20[3] = sub_1BA4A4428();
  v20[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v20);
  v16 = v15;
  sub_1BA4A43E8();
  MEMORY[0x1BFAF1EF0](v20);
  sub_1BA4A40E8();
  v17 = sub_1BA4A4168();
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  MEMORY[0x1BFAF1F10](v12);

  return v16;
}

id CollectionViewGroupedFooterCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CollectionViewGroupedFooterCell.init(coder:)(void *a1)
{
  sub_1B9F0D31C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14[-1] - v5;
  v7 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item];
  v8 = type metadata accessor for CollectionViewGroupedFooterCell();
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v15.receiver = v1;
  v15.super_class = v8;
  v9 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  if (v9)
  {
    v14[3] = sub_1BA4A4428();
    v14[4] = MEMORY[0x1E69DC110];
    __swift_allocate_boxed_opaque_existential_1(v14);
    v10 = v9;
    sub_1BA4A43E8();
    MEMORY[0x1BFAF1EF0](v14);
    sub_1BA4A40E8();
    v11 = sub_1BA4A4168();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    MEMORY[0x1BFAF1F10](v6);
  }

  return v9;
}

uint64_t sub_1BA1C1D44(uint64_t a1)
{
  v32 = sub_1BA4A12C8();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A4428();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v21 = a1 + *(v19 + 32);
  if (*(v21 + 32))
  {
    v21 = MEMORY[0x1E69DC5C0];
  }

  *&v20 = *(v21 + 24);
  v36 = v20;
  *&v20 = *(v21 + 16);
  v35 = v20;
  *&v20 = *(v21 + 8);
  v33 = v20;
  *&v20 = *v21;
  v34 = v20;
  sub_1BA4A43E8();
  sub_1BA1C3B6C(a1 + *(v19 + 28), v13, type metadata accessor for CollectionViewGroupedFooterItem.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BA4A43B8();
  }

  else
  {
    v22 = v13;
    v23 = v32;
    (*(v2 + 32))(v9, v22, v32);
    sub_1BA1C39F8();
    (*(v2 + 16))(v5, v9, v23);
    sub_1BA4A73A8();
    sub_1BA4A4228();
    (*(v2 + 8))(v9, v23);
  }

  v24 = sub_1BA4A4328();
  *&v25.f64[0] = v34;
  *&v25.f64[1] = v33;
  *&v27.f64[0] = v35;
  *&v27.f64[1] = v36;
  v28 = vaddq_f64(v27, v26[1]);
  *v26 = vaddq_f64(v25, *v26);
  v26[1] = v28;
  v24(v37, 0);
  v37[3] = v14;
  v37[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(v15 + 16))(boxed_opaque_existential_1, v18, v14);
  MEMORY[0x1BFAF1EF0](v37);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BA1C209C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D31C(0, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v26 - v11;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))(v28, v10);
  if (v29)
  {
    sub_1B9FCD918();
    v13 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    v14 = swift_dynamicCast();
    v15 = *(v13 - 8);
    (*(v15 + 56))(v12, v14 ^ 1u, 1, v13);
    if ((*(v15 + 48))(v12, 1, v13) != 1)
    {
      v16 = &v12[*(v13 + 32)];
      v17 = *(v16 + 1);
      v26 = *v16;
      v27 = v17;
      v18 = v16[32];
      sub_1BA1C3C40(v12, type metadata accessor for CollectionViewGroupedFooterItem);
      if (v18 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_1B9F43FD8(v28, &qword_1EDC6E1A0, sub_1B9FCD918);
    v19 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  sub_1B9F43FD8(v12, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
LABEL_7:
  v20 = *(MEMORY[0x1E69DC5C0] + 16);
  v26 = *MEMORY[0x1E69DC5C0];
  v27 = v20;
LABEL_8:
  sub_1BA4A43E8();

  sub_1BA4A43B8();
  v21 = sub_1BA4A4328();
  v23 = vaddq_f64(v27, v22[1]);
  *v22 = vaddq_f64(v26, *v22);
  v22[1] = v23;
  v21(v28, 0);
  v29 = v3;
  v30 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(v4 + 16))(boxed_opaque_existential_1, v7, v3);
  MEMORY[0x1BFAF1EF0](v28);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BA1C2420(void *a1)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D31C(0, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v27 - v11;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v29, v10);
  if (v30)
  {
    sub_1B9FCD918();
    v13 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    v14 = swift_dynamicCast();
    v15 = *(v13 - 8);
    (*(v15 + 56))(v12, v14 ^ 1u, 1, v13);
    if ((*(v15 + 48))(v12, 1, v13) != 1)
    {
      v16 = &v12[*(v13 + 32)];
      v17 = *(v16 + 1);
      v27 = *v16;
      v28 = v17;
      v18 = v16[32];
      sub_1BA1C3C40(v12, type metadata accessor for CollectionViewGroupedFooterItem);
      if (v18 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_1B9F43FD8(v29, &qword_1EDC6E1A0, sub_1B9FCD918);
    v19 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  sub_1B9F43FD8(v12, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
LABEL_7:
  v20 = *(MEMORY[0x1E69DC5C0] + 16);
  v27 = *MEMORY[0x1E69DC5C0];
  v28 = v20;
LABEL_8:
  sub_1BA4A43E8();
  v21 = a1;
  sub_1BA4A4228();
  v22 = sub_1BA4A4328();
  v24 = vaddq_f64(v28, v23[1]);
  *v23 = vaddq_f64(v27, *v23);
  v23[1] = v24;
  v22(v29, 0);
  v30 = v3;
  v31 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(v4 + 16))(boxed_opaque_existential_1, v7, v3);
  MEMORY[0x1BFAF1EF0](v29);
  return (*(v4 + 8))(v7, v3);
}

void sub_1BA1C2790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0D31C(0, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v19[-1] - v9;
  if (!a2)
  {
    goto LABEL_8;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))(v19, v8);
  if (!v19[3])
  {
    sub_1B9F43FD8(v19, &qword_1EDC6E1A0, sub_1B9FCD918);
    v17 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    goto LABEL_7;
  }

  sub_1B9FCD918();
  v11 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v12 = swift_dynamicCast();
  v13 = *(v11 - 8);
  (*(v13 + 56))(v10, v12 ^ 1u, 1, v11);
  if ((*(v13 + 48))(v10, 1, v11) == 1)
  {
LABEL_7:
    sub_1B9F43FD8(v10, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
    goto LABEL_8;
  }

  v15 = *(v10 + 4);
  v14 = *(v10 + 5);

  sub_1BA1C3C40(v10, type metadata accessor for CollectionViewGroupedFooterItem);
  if (v14)
  {
    v19[0] = a1;
    v19[1] = a2;

    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    MEMORY[0x1BFAF1350](v15, v14);

    v16 = sub_1BA4A6758();

    [v3 setAccessibilityIdentifier_];

    return;
  }

LABEL_8:
  [v3 setAccessibilityIdentifier_];
}

id CollectionViewGroupedFooterCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewGroupedFooterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1BA1C2B40(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))();
  return sub_1B9FCF2C4;
}

uint64_t (*sub_1BA1C2C88(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x68))();
  return sub_1B9FCDCF4;
}

uint64_t CollectionViewGroupedFooterItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void CollectionViewGroupedFooterItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CollectionViewGroupedFooterItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CollectionViewGroupedFooterItem.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 CollectionViewGroupedFooterItem.additionalLayoutMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CollectionViewGroupedFooterItem(0) + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 CollectionViewGroupedFooterItem.additionalLayoutMargins.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CollectionViewGroupedFooterItem(0) + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t CollectionViewGroupedFooterItem.init(attributedText:uniqueIdentifier:accessibilityIdentifier:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA0603B0();
  *a6 = sub_1BA4A6808();
  a6[1] = v11;
  v12 = a6 + *(type metadata accessor for CollectionViewGroupedFooterItem(0) + 32);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  sub_1BA4A1308();
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

void static CollectionViewGroupedFooterItem.favoriteCellDescription.getter(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 features];

    if (v4)
    {
      [v4 isPinnedInBrowse];

      type metadata accessor for DataTypeDetailFavoritesDataSource(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v7 = sub_1BA4A1318();
      v9 = v8;

      type metadata accessor for CollectionViewGroupedFooterCell();
      sub_1BA0603B0();
      *a1 = sub_1BA4A6808();
      a1[1] = v10;
      v11 = type metadata accessor for CollectionViewGroupedFooterItem(0);
      v12 = a1 + *(v11 + 32);
      *v12 = 0u;
      *(v12 + 1) = 0u;
      v12[32] = 1;
      v13 = (a1 + *(v11 + 28));
      *v13 = v7;
      v13[1] = v9;
      type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
      swift_storeEnumTagMultiPayload();
      a1[2] = 0xD000000000000019;
      a1[3] = 0x80000001BA4F2A60;
      a1[4] = 0xD000000000000019;
      a1[5] = 0x80000001BA4F2A60;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA1C3200(uint64_t a1)
{
  v2 = sub_1BA1C3A44(&qword_1EDC63270, &protocol conformance descriptor for CollectionViewGroupedFooterItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t _s18HealthExperienceUI31CollectionViewGroupedFooterItemV7ContentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v33 = sub_1BA4A12C8();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  sub_1BA1C3A88(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v19[*(v20 + 56)];
  sub_1BA1C3B6C(a1, v19, type metadata accessor for CollectionViewGroupedFooterItem.Content);
  sub_1BA1C3B6C(a2, v21, type metadata accessor for CollectionViewGroupedFooterItem.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BA1C3B6C(v19, v11, type metadata accessor for CollectionViewGroupedFooterItem.Content);
    v23 = *v11;
    v22 = v11[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v23 == *v21 && v22 == *(v21 + 1))
      {

        LOBYTE(v26) = 1;
      }

      else
      {
        v25 = sub_1BA4A8338();

        v26 = v25 << 31 >> 31;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_1BA1C3B6C(v19, v15, type metadata accessor for CollectionViewGroupedFooterItem.Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = v21;
      v29 = v33;
      (*(v4 + 32))(v7, v28, v33);
      LOBYTE(v26) = sub_1BA4A1218();
      v30 = *(v4 + 8);
      v30(v7, v29);
      v30(v15, v29);
LABEL_14:
      v27 = type metadata accessor for CollectionViewGroupedFooterItem.Content;
      goto LABEL_15;
    }

    (*(v4 + 8))(v15, v33);
  }

  LOBYTE(v26) = 0;
  v27 = sub_1BA1C3A88;
LABEL_15:
  sub_1BA1C3C40(v19, v27);
  return v26 & 1;
}

uint64_t _s18HealthExperienceUI31CollectionViewGroupedFooterItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1BA4A8338() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  if (_s18HealthExperienceUI31CollectionViewGroupedFooterItemV7ContentO2eeoiySbAE_AEtFZ_0(a1 + *(v8 + 28), a2 + *(v8 + 28)))
  {
    v9 = *(v8 + 32);
    v10 = (a1 + v9);
    v11 = *(a1 + v9 + 32);
    v12 = (a2 + v9);
    if (v11)
    {
      if ((LOBYTE(v12[2].f64[0]) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((LOBYTE(v12[2].f64[0]) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v10, *v12), vceqq_f64(v10[1], v12[1])), xmmword_1BA4C4100)) & 0xF) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t dispatch thunk of CollectionViewGroupedFooterCell.updateFooter(with:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
}

void sub_1BA1C38C8(uint64_t a1)
{
  sub_1B9F2F388();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CollectionViewGroupedFooterItem.Content(319);
    if (v2 <= 0x3F)
    {
      sub_1B9F0D31C(319, &qword_1EDC5E348, type metadata accessor for NSDirectionalEdgeInsets);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA1C3990(uint64_t a1)
{
  result = sub_1BA4A12C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BA1C39F8()
{
  result = qword_1EDC6B580;
  if (!qword_1EDC6B580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B580);
  }

  return result;
}

uint64_t sub_1BA1C3A44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionViewGroupedFooterItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA1C3A88(uint64_t a1)
{
  if (!qword_1EDC63280[0])
  {
    type metadata accessor for CollectionViewGroupedFooterItem.Content(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC63280);
    }
  }
}

void sub_1BA1C3AEC(uint64_t a1)
{
  if (!qword_1EDC63218)
  {
    sub_1B9F0D31C(255, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC63218);
    }
  }
}

uint64_t sub_1BA1C3B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA1C3BD4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D31C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA1C3C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

UIInterfaceOrientation __swiftcall UIViewController.interfaceOrientation()()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 interfaceOrientation];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BrowseTileViewController.Style.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56) >> 61;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        sub_1BA4A7DF8();
        MEMORY[0x1BFAF1350](0x7865546567616D69, 0xEA00000000002874);
        v18 = [v1 description];
        v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v21 = v20;

        MEMORY[0x1BFAF1350](v19, v21);

        MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
        sub_1BA4A7FB8();
        MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
        MEMORY[0x1BFAF1350](v2, v3);
        v16 = 0xE000000000000000;
        v15 = 0;
        goto LABEL_15;
      }

      v5 = *(v0 + 8);
      sub_1BA4A7DF8();

      v23 = 0x6373694474786574;
      v24 = 0xEF28657275736F6CLL;
      v7 = v1;
      goto LABEL_10;
    }

    v12 = *(v0 + 8);
    v13 = 0x6974634174786574;
    v14 = 0xEB00000000286E6FLL;
LABEL_13:
    v23 = v13;
    v24 = v14;
    v7 = *v0;
    goto LABEL_14;
  }

  if (!v4)
  {
    v5 = *(v0 + 16);
    v22 = *(v0 + 8);
    sub_1BA4A7DF8();

    v23 = 0xD000000000000014;
    v24 = 0x80000001BA4F2B00;
    v6 = [v1 description];
    goto LABEL_9;
  }

  if (v4 != 1)
  {
    v12 = *(v0 + 8);
    v13 = 0x2874786574;
    v14 = 0xE500000000000000;
    goto LABEL_13;
  }

  v5 = *(v0 + 16);
  v22 = *(v0 + 8);
  sub_1BA4A7DF8();

  v23 = 0x7865546567616D69;
  v24 = 0xEA00000000002874;
  v6 = [v1 description];
LABEL_9:
  v8 = v6;
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  MEMORY[0x1BFAF1350](v9, v11);

  MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
  v7 = v22;
LABEL_10:
  v12 = v5;
LABEL_14:
  MEMORY[0x1BFAF1350](v7, v12);
  v16 = v24;
  v15 = v23;
LABEL_15:
  MEMORY[0x1BFAF1350](v15, v16);

  return 0x203E656C7974533CLL;
}

void sub_1BA1C40D0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  if (v3)
  {
    v5 = v3;
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v6;

    MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

    MEMORY[0x1BFAF1350](v4, v5);

    v4 = v8;
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v4;
  a2[1] = v7;
}

uint64_t sub_1BA1C41D8()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  if (v2)
  {
    v3 = v2;
    v4 = result;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

    MEMORY[0x1BFAF1350](v4, v3);

    return v5;
  }

  return result;
}

uint64_t (*sub_1BA1C42D0(uint64_t *a1))(uint64_t a1)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x188))();
  if (v3)
  {
    v5 = v3;
    v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v6;

    MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

    MEMORY[0x1BFAF1350](v4, v5);

    v4 = v9;
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v4;
  a1[1] = v7;
  return sub_1B9FF3F48;
}

uint64_t sub_1BA1C43F0(uint64_t a1, void **a2)
{
  sub_1BA1CADA0(a1, v6, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context;
  swift_beginAccess();
  sub_1BA1CAE24(v6, v3 + v4, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  swift_endAccess();
  if ([v3 isViewLoaded])
  {
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x170))();
  }

  return sub_1BA1CB808(v6, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
}

uint64_t sub_1BA1C453C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context;
  swift_beginAccess();
  sub_1BA1CAE24(a1, v1 + v3, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))();
  }

  return sub_1BA1CB808(a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
}

id (*sub_1BA1C4638(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1C469C;
}

id sub_1BA1C469C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x170))();
    }
  }

  return result;
}

uint64_t sub_1BA1C471C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1B9F6BFCC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - v5;
  sub_1BA1CACCC(a1, &v8 - v5, qword_1EDC6E9C8, type metadata accessor for SectionContext, v2, sub_1B9F6BFCC);
  return sub_1BA1C48A4(v6);
}

uint64_t sub_1BA1C4808@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  swift_beginAccess();
  return sub_1BA1CACCC(v1 + v3, a1, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
}

uint64_t sub_1BA1C48A4(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1B9F6BFCC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for SectionContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  swift_beginAccess();
  sub_1B9F75CCC(a1, v1 + v13);
  swift_endAccess();
  sub_1BA1CACCC(v1 + v13, v7, qword_1EDC6E9C8, type metadata accessor for SectionContext, v3, sub_1B9F6BFCC);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v14 = MEMORY[0x1E69E6720];
    sub_1BA1CAD40(a1, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
    return sub_1BA1CAD40(v7, qword_1EDC6E9C8, type metadata accessor for SectionContext, v14, sub_1B9F6BFCC);
  }

  else
  {
    sub_1B9FE1020(v7, v12);
    v16 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
    if (v16)
    {
      v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
      v18 = v16;
      LOBYTE(v17) = v17(v12);
      v19 = sub_1BA1C8B70();
      [v19 setHidden_];
    }

    sub_1BA1CAD40(a1, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
    return sub_1BA1CBBAC(v12, type metadata accessor for SectionContext);
  }
}

uint64_t (*sub_1BA1C4BD0(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  sub_1B9F6BFCC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[4] = v8;
  v9 = type metadata accessor for SectionContext(0);
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  v5[7] = v11;
  v5[8] = v12;
  swift_beginAccess();
  return sub_1BA1C4D24;
}

void sub_1BA1C4D24(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = v3[4];
    sub_1BA1CACCC(v3[3] + v3[8], v6, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_1BA1CAD40(v3[4], qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
    }

    else
    {
      v7 = v3[3];
      sub_1B9FE1020(v3[4], v3[7]);
      v8 = *(v7 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
      v9 = v3[7];
      if (v8)
      {
        v10 = *((*MEMORY[0x1E69E7D40] & *v3[3]) + 0x128);
        v11 = v8;
        LOBYTE(v10) = v10(v9);
        v12 = sub_1BA1C8B70();
        [v12 setHidden_];
      }

      sub_1BA1CBBAC(v9, type metadata accessor for SectionContext);
    }
  }

  v13 = v3[4];
  free(v3[7]);
  free(v13);

  free(v3);
}

uint64_t sub_1BA1C4F10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v15 = *(v3 + 80);
  v14[3] = v6;
  v14[4] = v7;
  v14[2] = v5;
  v8 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v8;
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v11 = *(v3 + 64);
  *(a2 + 80) = *(v3 + 80);
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 32) = v9;
  return sub_1BA1CACCC(v14, &v13, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA1C4FE0(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v18 = a1[2];
  v19 = v2;
  v20 = a1[4];
  v21 = *(a1 + 10);
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  v16 = *a1;
  v17 = v3;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v22[0] = *v4;
  v22[1] = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v23 = *(v4 + 80);
  v22[3] = v7;
  v22[4] = v8;
  v22[2] = v6;
  v10 = v19;
  v9 = v20;
  v11 = v18;
  *(v4 + 80) = v21;
  *(v4 + 48) = v10;
  *(v4 + 64) = v9;
  *(v4 + 32) = v11;
  v12 = v17;
  *v4 = v16;
  *(v4 + 16) = v12;
  v13 = MEMORY[0x1E69E6720];
  sub_1BA1CACCC(&v16, &v15, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
  return sub_1BA1CAD40(v22, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, v13, sub_1B9F23348);
}

uint64_t sub_1BA1C5104@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v12 = *(v3 + 32);
  v4 = v12;
  v13 = v5;
  v14 = *(v3 + 64);
  v6 = v14;
  v15 = *(v3 + 80);
  v8 = *(v3 + 16);
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  *(a1 + 80) = v15;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *a1 = v7;
  *(a1 + 16) = v8;
  return sub_1BA1CACCC(v11, &v10, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA1C51C0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  return sub_1BA1CAD40(v9, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA1C52E8(uint64_t a1, uint64_t *a2)
{
  sub_1BA1CADA0(a1, v6, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider;
  swift_beginAccess();
  sub_1BA1CAE24(v6, v3 + v4, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  swift_endAccess();
  sub_1BA1C53B8();
  return sub_1BA1CB808(v6, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider, sub_1B9F0D950);
}

uint64_t sub_1BA1C53B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v161[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v161[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v161[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v161[-v18];
  v20 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider;
  swift_beginAccess();
  sub_1BA1CADA0(v1 + v20, &v214, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  if (!v215)
  {
    return sub_1BA1CB808(&v214, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider, sub_1B9F0D950);
  }

  v165 = v19;
  v166 = v15;
  v167 = v11;
  v168 = ObjectType;
  v169 = v7;
  v170 = v4;
  v171 = v3;
  sub_1B9F1134C(&v214, v216);
  v21 = v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  swift_beginAccess();
  v22 = *(v21 + 3);
  v210 = *(v21 + 2);
  v211 = v22;
  v212 = *(v21 + 4);
  v213 = *(v21 + 10);
  v23 = *(v21 + 1);
  v208 = *v21;
  v209 = v23;
  v24 = v217;
  v25 = v218;
  __swift_project_boxed_opaque_existential_1(v216, v217);
  v26 = *(v25 + 8);
  sub_1BA1CACCC(&v208, v189, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
  v26(&v202, v24, v25);
  v27 = v205;
  v199 = v208;
  v200 = v209;
  v201 = v210;
  v28 = v211;
  v198 = v213;
  v197 = v212;
  if (v211 < 0xFFFFFFFE00000000 || (*(&v211 + 1) & 0xFFFFFFFE00000000) != 0x200000000)
  {
    v189[0] = v208;
    v189[1] = v209;
    v189[2] = v210;
    v189[3] = v211;
    v189[4] = v212;
    v190 = v213;
    v183 = v208;
    v184 = v209;
    v188 = v213;
    v185 = v210;
    v186 = v211;
    v187 = v212;
    if (v205 < 0xFFFFFFFE00000000 || (*(&v205 + 1) & 0xFFFFFFFE00000000) != 0x200000000)
    {
      v177 = v202;
      v178 = v203;
      v179 = v204;
      v181 = v206;
      v182 = v207;
      v180 = v205;
      v52 = MEMORY[0x1E69E6720];
      sub_1BA1CACCC(v189, &v174, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
      v53 = _s18HealthExperienceUI24BrowseTileViewControllerC5StyleO2eeoiySbAE_AEtFZ_0(&v183, &v177);
      v172[2] = v179;
      v172[3] = v180;
      v172[4] = v181;
      v173 = v182;
      v172[0] = v177;
      v172[1] = v178;
      sub_1BA1CBB44(v172);
      v175[1] = v185;
      v175[2] = v186;
      v175[3] = v187;
      v176 = v188;
      v174 = v183;
      v175[0] = v184;
      sub_1BA1CBB44(&v174);
      v177 = v199;
      v178 = v200;
      v179 = v201;
      v180 = v28;
      v181 = v197;
      v182 = v198;
      sub_1BA1CAD40(&v177, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, v52, sub_1B9F23348);
      if (v53)
      {
        return __swift_destroy_boxed_opaque_existential_1(v216);
      }

LABEL_12:
      v30 = v217;
      v31 = v218;
      __swift_project_boxed_opaque_existential_1(v216, v217);
      (*(v31 + 8))(&v177, v30, v31);
      v32 = *(v21 + 3);
      v185 = *(v21 + 2);
      v186 = v32;
      v187 = *(v21 + 4);
      v188 = *(v21 + 10);
      v33 = *(v21 + 1);
      v183 = *v21;
      v184 = v33;
      v34 = v180;
      *(v21 + 2) = v179;
      *(v21 + 3) = v34;
      *(v21 + 4) = v181;
      *(v21 + 10) = v182;
      v35 = v178;
      *v21 = v177;
      *(v21 + 1) = v35;
      sub_1BA1CAD40(&v183, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
      v36 = v217;
      v37 = v218;
      __swift_project_boxed_opaque_existential_1(v216, v217);
      (*(v37 + 8))(&v202, v36, v37);
      v189[2] = v204;
      v189[3] = v205;
      v189[4] = v206;
      v190 = v207;
      v189[0] = v202;
      v189[1] = v203;
      v38 = *(&v205 + 1) >> 61;
      if ((*(&v205 + 1) >> 61) > 2)
      {
        if (v38 != 3)
        {
          if (v38 != 4)
          {
            v68 = v190;
            *(&v189[3] + 1) = *(&v205 + 1) & 0x1FFFFFFFFFFFFFFFLL;
            v69 = *(&v189[4] + 1);
            v70 = *&v189[0];
            type metadata accessor for BrowseTileContentViewImageTextAccessory();
            v71 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v174 = *(v189 + 8);
            v175[0] = *(&v189[1] + 8);
            v175[1] = *(&v189[2] + 8);
            v175[2] = *(&v189[3] + 8);
            v71[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 1;
            v72 = v70;
            v43 = v71;
            sub_1BA1C8B10();
            v73 = sub_1BA1C9970();
            sub_1B9FE7890(v70, v69, v68, &v174);

            [v43 setNeedsLayout];
            [v43 invalidateIntrinsicContentSize];

            sub_1BA1CBAF0(v189 + 8);
            v44 = v43;
LABEL_46:

            v145 = MEMORY[0x1E69E7D40];
            v146 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x188))();
            if (v147)
            {
              v148 = v146;
              v149 = v147;
              *&v174 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              *(&v174 + 1) = v150;

              MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

              MEMORY[0x1BFAF1350](v148, v149);

              (*((*v145 & *v44) + 0x1B0))(v174, *(&v174 + 1));
            }

            else
            {
              v151 = v169;
              sub_1BA4A3E28();
              v152 = sub_1BA4A3E88();
              v153 = sub_1BA4A6FA8();
              if (os_log_type_enabled(v152, v153))
              {
                v154 = swift_slowAlloc();
                v155 = swift_slowAlloc();
                *&v174 = v155;
                *v154 = 136315138;
                v156 = sub_1BA4A85D8();
                v158 = sub_1B9F0B82C(v156, v157, &v174);

                *(v154 + 4) = v158;
                _os_log_impl(&dword_1B9F07000, v152, v153, "[%s] Could not get content identifier for browse tile, so cannot set the Browse tile accessibility identifier.", v154, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v155);
                MEMORY[0x1BFAF43A0](v155, -1, -1);
                MEMORY[0x1BFAF43A0](v154, -1, -1);
              }

              (*(v170 + 8))(v151, v171);
            }

            v159 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
            *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView) = v44;
            v160 = v44;
            sub_1BA1C73F0(v159);

            sub_1BA1C7B8C();
            return __swift_destroy_boxed_opaque_existential_1(v216);
          }

          *(&v189[3] + 1) = *(&v205 + 1) & 0x1FFFFFFFFFFFFFFFLL;
          v166 = *(&v189[0] + 1);
          type metadata accessor for BrowseTileContentViewTextAccessory();
          v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v47 = *MEMORY[0x1E69DDCF8];
          v48 = objc_opt_self();
          v49 = [v48 preferredFontDescriptorWithTextStyle:v47 compatibleWithTraitCollection:0];
          v50 = [v49 fontDescriptorWithSymbolicTraits_];

          if (v50)
          {
            v51 = [objc_opt_self() fontWithDescriptor:v50 size:0.0];
          }

          else
          {
            v93 = v167;
            sub_1BA4A3DD8();
            v94 = v47;
            v95 = sub_1BA4A3E88();
            v96 = sub_1BA4A6FB8();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v163 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              *&v172[0] = v164;
              *v97 = 136315906;
              v98 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v165 = v94;
              v100 = sub_1B9F0B82C(v98, v99, v172);
              v162 = v96;
              v101 = v100;

              *(v97 + 4) = v101;
              *(v97 + 12) = 2080;
              *&v174 = 0;
              BYTE8(v174) = 1;
              sub_1B9F6BFCC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
              v102 = sub_1BA4A6808();
              v104 = sub_1B9F0B82C(v102, v103, v172);

              *(v97 + 14) = v104;
              *(v97 + 22) = 2080;
              LODWORD(v174) = 32770;
              type metadata accessor for SymbolicTraits(0);
              v105 = sub_1BA4A6808();
              v107 = sub_1B9F0B82C(v105, v106, v172);
              v94 = v165;

              *(v97 + 24) = v107;
              *(v97 + 32) = 2112;
              v108 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
              *(v97 + 34) = v108;
              v109 = v163;
              *v163 = v108;
              _os_log_impl(&dword_1B9F07000, v95, v162, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v97, 0x2Au);
              sub_1BA1CB808(v109, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
              MEMORY[0x1BFAF43A0](v109, -1, -1);
              v110 = v164;
              swift_arrayDestroy();
              MEMORY[0x1BFAF43A0](v110, -1, -1);
              MEMORY[0x1BFAF43A0](v97, -1, -1);

              (*(v170 + 8))(v167, v171);
            }

            else
            {

              (*(v170 + 8))(v93, v171);
            }

            v50 = [v48 preferredFontDescriptorWithTextStyle_];
            v51 = [objc_opt_self() fontWithDescriptor:v50 size:0.0];
          }

          v133 = v51;

          v134 = objc_opt_self();
          v43 = v133;
          v135 = [v134 labelColor];
          v46[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 1;
          v44 = v46;
          sub_1BA1C8B10();
          v136 = sub_1BA1C94A0();
          v137 = sub_1BA4A6758();
          sub_1BA1CBB44(&v202);
          [v136 setText_];

          v138 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label;
          [*(v44 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label) setFont_];
          [*(v44 + v138) setTextColor_];
          [v44 setNeedsLayout];
          [v44 invalidateIntrinsicContentSize];

LABEL_45:
          goto LABEL_46;
        }

        *(&v189[3] + 1) = *(&v205 + 1) & 0x1FFFFFFFFFFFFFFFLL;
        v55 = *(&v189[0] + 1);
        type metadata accessor for BrowseTileContentViewTextAccessory();
        v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v57 = *MEMORY[0x1E69DDCF8];
        v58 = objc_opt_self();
        v59 = [v58 preferredFontDescriptorWithTextStyle:v57 compatibleWithTraitCollection:0];
        v60 = [v59 fontDescriptorWithSymbolicTraits_];

        if (v60)
        {
          v61 = [objc_opt_self() fontWithDescriptor:v60 size:0.0];
        }

        else
        {
          v74 = v165;
          sub_1BA4A3DD8();
          v75 = v57;
          v76 = sub_1BA4A3E88();
          v77 = sub_1BA4A6FB8();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v167 = v55;
            v79 = v78;
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *&v172[0] = v164;
            *v79 = 136315906;
            v80 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v166 = v75;
            v82 = sub_1B9F0B82C(v80, v81, v172);
            v162 = v77;
            v83 = v82;

            *(v79 + 4) = v83;
            *(v79 + 12) = 2080;
            *&v174 = 0;
            BYTE8(v174) = 1;
            sub_1B9F6BFCC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
            v84 = sub_1BA4A6808();
            v86 = sub_1B9F0B82C(v84, v85, v172);

            *(v79 + 14) = v86;
            *(v79 + 22) = 2080;
            LODWORD(v174) = 0x8000;
            type metadata accessor for SymbolicTraits(0);
            v87 = sub_1BA4A6808();
            v89 = sub_1B9F0B82C(v87, v88, v172);
            v75 = v166;

            *(v79 + 24) = v89;
            *(v79 + 32) = 2112;
            v90 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            *(v79 + 34) = v90;
            v91 = v163;
            *v163 = v90;
            _os_log_impl(&dword_1B9F07000, v76, v162, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v79, 0x2Au);
            sub_1BA1CB808(v91, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
            MEMORY[0x1BFAF43A0](v91, -1, -1);
            v92 = v164;
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v92, -1, -1);
            MEMORY[0x1BFAF43A0](v79, -1, -1);

            (*(v170 + 8))(v165, v171);
          }

          else
          {

            (*(v170 + 8))(v74, v171);
          }

          v60 = [v58 preferredFontDescriptorWithTextStyle_];
          v61 = [objc_opt_self() fontWithDescriptor:v60 size:0.0];
        }

        v130 = v61;

        v131 = objc_opt_self();
        v43 = v130;
        v132 = [v131 hk_appTintColor];
      }

      else
      {
        if (!v38)
        {
          *(&v189[3] + 1) = *(&v205 + 1) & 0x1FFFFFFFFFFFFFFFLL;
          v40 = *(&v189[0] + 1);
          v39 = *&v189[0];
          v41 = *&v189[1];
          type metadata accessor for BrowseTileContentViewImageTextAccessory();
          v54 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v54[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 1;
          v43 = v39;
          v44 = v54;
          sub_1BA1C8B10();
          v45 = sub_1BA1C9970();
          v174 = 0uLL;
          *&v175[0] = 1;
          goto LABEL_23;
        }

        if (v38 == 1)
        {
          *(&v189[3] + 1) = *(&v205 + 1) & 0x1FFFFFFFFFFFFFFFLL;
          v40 = *(&v189[0] + 1);
          v39 = *&v189[0];
          v41 = *&v189[1];
          type metadata accessor for BrowseTileContentViewImageTextAccessory();
          v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v42[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 0;
          v43 = v39;
          v44 = v42;
          sub_1BA1C8B10();
          v45 = sub_1BA1C9970();
          v174 = 0uLL;
          *&v175[0] = 1;
LABEL_23:
          *(v175 + 8) = 0u;
          *(&v175[1] + 8) = 0u;
          *(&v175[2] + 1) = 0;
          sub_1B9FE7890(v39, v40, v41, &v174);

          [v44 setNeedsLayout];
          [v44 invalidateIntrinsicContentSize];

          goto LABEL_45;
        }

        *(&v189[3] + 1) = *(&v205 + 1) & 0x1FFFFFFFFFFFFFFFLL;
        v62 = *(&v189[0] + 1);
        type metadata accessor for BrowseTileContentViewTextAccessory();
        v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v63 = *MEMORY[0x1E69DDCF8];
        v64 = objc_opt_self();
        v65 = [v64 preferredFontDescriptorWithTextStyle:v63 compatibleWithTraitCollection:0];
        v66 = [v65 fontDescriptorWithSymbolicTraits_];

        if (v66)
        {
          v67 = [objc_opt_self() fontWithDescriptor:v66 size:0.0];
        }

        else
        {
          v111 = v166;
          sub_1BA4A3DD8();
          v112 = v63;
          v113 = sub_1BA4A3E88();
          v114 = sub_1BA4A6FB8();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v167 = v62;
            v116 = v115;
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *&v172[0] = v164;
            *v116 = 136315906;
            v117 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v165 = v112;
            v119 = sub_1B9F0B82C(v117, v118, v172);
            v162 = v114;
            v120 = v119;

            *(v116 + 4) = v120;
            *(v116 + 12) = 2080;
            *&v174 = 0;
            BYTE8(v174) = 1;
            sub_1B9F6BFCC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
            v121 = sub_1BA4A6808();
            v123 = sub_1B9F0B82C(v121, v122, v172);

            *(v116 + 14) = v123;
            *(v116 + 22) = 2080;
            LODWORD(v174) = 32770;
            type metadata accessor for SymbolicTraits(0);
            v124 = sub_1BA4A6808();
            v126 = sub_1B9F0B82C(v124, v125, v172);
            v112 = v165;

            *(v116 + 24) = v126;
            *(v116 + 32) = 2112;
            v127 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            *(v116 + 34) = v127;
            v128 = v163;
            *v163 = v127;
            _os_log_impl(&dword_1B9F07000, v113, v162, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v116, 0x2Au);
            sub_1BA1CB808(v128, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
            MEMORY[0x1BFAF43A0](v128, -1, -1);
            v129 = v164;
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v129, -1, -1);
            MEMORY[0x1BFAF43A0](v116, -1, -1);

            (*(v170 + 8))(v166, v171);
          }

          else
          {

            (*(v170 + 8))(v111, v171);
          }

          v66 = [v64 preferredFontDescriptorWithTextStyle_];
          v67 = [objc_opt_self() fontWithDescriptor:v66 size:0.0];
        }

        v139 = v67;

        v140 = objc_opt_self();
        v43 = v139;
        v132 = [v140 labelColor];
      }

      v141 = v132;
      v56[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 0;
      v44 = v56;
      sub_1BA1C8B10();
      v142 = sub_1BA1C94A0();
      v143 = sub_1BA4A6758();
      sub_1BA1CBB44(&v202);
      [v142 setText_];

      v144 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label;
      [*(v44 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label) setFont_];
      [*(v44 + v144) setTextColor_];
      [v44 setNeedsLayout];
      [v44 invalidateIntrinsicContentSize];

      goto LABEL_45;
    }

    v179 = v189[2];
    v180 = v189[3];
    v181 = v189[4];
    v182 = v190;
    v177 = v189[0];
    v178 = v189[1];
    sub_1BA1CACCC(v189, &v174, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
    sub_1BA1CBB44(&v177);
LABEL_11:
    v189[0] = v199;
    v189[1] = v200;
    v189[2] = v201;
    v189[4] = v197;
    v191 = v202;
    v189[3] = v28;
    v192 = v203;
    v193 = v204;
    v190 = v198;
    v194 = v27;
    v196 = v207;
    v195 = v206;
    sub_1BA1CBBAC(v189, sub_1BA1CBA68);
    goto LABEL_12;
  }

  if (v205 < 0xFFFFFFFE00000000 || (*(&v205 + 1) & 0xFFFFFFFE00000000) != 0x200000000)
  {
    goto LABEL_11;
  }

  v189[0] = v208;
  v189[1] = v209;
  v189[2] = v210;
  v189[3] = v211;
  v189[4] = v212;
  v190 = v213;
  sub_1BA1CAD40(v189, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
  return __swift_destroy_boxed_opaque_existential_1(v216);
}

uint64_t sub_1BA1C6B74@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  return sub_1BA1CADA0(v5 + v10, a5, a2, a3, a4);
}

uint64_t sub_1BA1C6BE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider;
  swift_beginAccess();
  sub_1BA1CAE24(a1, v1 + v3, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  swift_endAccess();
  sub_1BA1C53B8();
  return sub_1BA1CB808(a1, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider, sub_1B9F0D950);
}

uint64_t (*sub_1BA1C6CA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1C6D04;
}

uint64_t sub_1BA1C6D04(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA1C53B8();
  }

  return result;
}

void sub_1BA1C6D78(void (*a1)(void), const char *a2, ...)
{
  v5 = v2;
  swift_getObjectType();
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v11 && (type metadata accessor for BrowseTileContentViewImageTextAccessory(), swift_dynamicCastClass()))
  {
    v20 = v11;
    a1();
    v12 = v20;
  }

  else
  {
    sub_1BA4A3E28();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B9F07000, v13, v14, a2, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

id sub_1BA1C6FA4(id result)
{
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView))
  {
    return [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView) setUserInteractionEnabled_];
  }

  return result;
}

uint64_t sub_1BA1C6FCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v1)
  {
    return [v1 isUserInteractionEnabled];
  }

  else
  {
    return 1;
  }
}

id (*sub_1BA1C7008(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = [v4 isUserInteractionEnabled];
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 16) = v5;
  return sub_1BA1C7070;
}

id sub_1BA1C7070(uint64_t a1)
{
  result = *(*a1 + *(a1 + 8));
  if (result)
  {
    return [result setUserInteractionEnabled_];
  }

  return result;
}

id sub_1BA1C7094()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView];
LABEL_5:
    v4 = v1;
    return v2;
  }

  result = [v0 view];
  if (result)
  {
    v2 = result;
    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA1C70F8(void *a1)
{
  type metadata accessor for SectionContext(0);
  result = sub_1BA4A1958();
  if (!__OFSUB__(*a1, 1))
  {
    return result != *a1 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA1C7150()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1B9F6BFCC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SectionContext(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  swift_beginAccess();
  sub_1BA1CACCC(v0 + v11, v5, qword_1EDC6E9C8, type metadata accessor for SectionContext, v1, sub_1B9F6BFCC);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1BA1CAD40(v5, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
  }

  sub_1B9FE1020(v5, v10);
  v13 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v13)
  {
    v14 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x128);
    v15 = v13;
    LOBYTE(v14) = v14(v10);
    v16 = sub_1BA1C8B70();
    [v16 setHidden_];
  }

  return sub_1BA1CBBAC(v10, type metadata accessor for SectionContext);
}

void sub_1BA1C73F0(id a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView];
  if (v2)
  {
    v28 = v2;
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 addSubview_];

      sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1BA4B5890;
      v6 = [v28 topAnchor];
      v7 = [v1 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 topAnchor];

        v10 = [v6 constraintEqualToAnchor_];
        *(v5 + 32) = v10;
        v11 = [v28 bottomAnchor];
        v12 = [v1 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 bottomAnchor];

          v15 = [v11 constraintEqualToAnchor_];
          *(v5 + 40) = v15;
          v16 = [v28 leadingAnchor];
          v17 = [v1 view];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 leadingAnchor];

            v20 = [v16 constraintEqualToAnchor_];
            *(v5 + 48) = v20;
            v21 = [v28 trailingAnchor];

            v22 = [v1 view];
            if (v22)
            {
              v23 = v22;
              v24 = objc_opt_self();
              v25 = [v23 trailingAnchor];

              v26 = [v21 constraintEqualToAnchor_];
              *(v5 + 56) = v26;
              sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
              v27 = sub_1BA4A6AE8();

              [v24 activateConstraints_];

              sub_1BA1C7B8C();
              sub_1BA1C7150();

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_1BA1C7B8C();
}

void sub_1BA1C778C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for BrowseTileViewController(0);
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 heightAnchor];

    v4 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
    v5 = [v3 constraintEqualToConstant_];

    LODWORD(v6) = 1148829696;
    [v5 setPriority_];
    v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint);
    *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint) = v5;
    v8 = v5;

    (*((*v4 & *v0) + 0x170))([v8 setActive_]);
    sub_1BA1C7B8C();
    sub_1B9F6BFCC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B5480;
    v10 = sub_1BA4A4858();
    v11 = MEMORY[0x1E69DC2B0];
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1B9FE8ED0();
    sub_1BA4A7228();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA1C79E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BA1C7B8C();
  }
}

void sub_1BA1C7ADC()
{
  sub_1BA4A7DF8();
  swift_getObjectType();
  sub_1BA4A85D8();

  MEMORY[0x1BFAF1350](0xD000000000000028, 0x80000001BA4F2B60);
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA1C7B8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v1)
  {
    v19 = v1;
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    Width = CGRectGetWidth(v21);
    v13 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
    [v19 sizeThatFits_];
    if (v13 > v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint);
    [v16 setConstant_];
  }

  else
  {
    v17 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint);
    if (!v17)
    {
      return;
    }

    v18 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x130);
    v19 = v17;
    v18();
    [v19 setConstant_];
  }
}

void sub_1BA1C7D68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
    if (v3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
      v7 = v3;
      v4(a1, a2);
    }
  }
}

id sub_1BA1C7E2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider;
  swift_beginAccess();
  sub_1BA1CADA0(v0 + v1, &v17, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  if (!v18)
  {
    sub_1BA1CB808(&v17, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v17, v19);
  v2 = v20;
  v3 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v3 + 8))(v13, v2, v3);
  v4 = v13[1];
  v5 = v14 >> 61;
  if ((v14 >> 61) <= 2)
  {
    if (v5 <= 1)
    {

      __swift_destroy_boxed_opaque_existential_1(v19);
      return v4;
    }

    goto LABEL_8;
  }

  if (v5 == 3 || v5 == 4)
  {
LABEL_8:
    v7 = v13[0];
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v7;
  }

  v8 = v16;
  v9 = v15;
  v11 = v13[4];
  v10 = v13[5];
  v12 = v13[3];

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v8;
}

id BrowseTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id BrowseTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  v8 = type metadata accessor for SectionContext(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = xmmword_1BA4C42D0;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 8) = 0;
  v10 = &v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView] = 0;
  if (a2)
  {
    v11 = sub_1BA4A6758();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for BrowseTileViewController(0);
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id BrowseTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BrowseTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  v5 = type metadata accessor for SectionContext(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = xmmword_1BA4C42D0;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  *(v6 + 8) = 0;
  v7 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for BrowseTileViewController(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1BA1C84D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context;
  swift_beginAccess();
  return sub_1BA1CADA0(v1 + v3, a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
}

uint64_t (*sub_1BA1C8548(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1C85AC;
}

uint64_t sub_1BA1C85AC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x170))();
    }
  }

  return result;
}

uint64_t sub_1BA1C862C()
{
  result = (*((*MEMORY[0x1E69E7D40] & **v0) + 0x188))();
  if (v2)
  {
    v3 = v2;
    v4 = result;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

    MEMORY[0x1BFAF1350](v4, v3);

    return v5;
  }

  return result;
}

uint64_t (*sub_1BA1C8720(uint64_t **a1))()
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
  v2[4] = sub_1BA1C42D0(v2);
  return sub_1B9FCF2C4;
}

void sub_1BA1C8794(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*v2 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
    if (v3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
      v7 = v3;
      v4(a1, a2);
    }
  }
}

uint64_t (*sub_1BA1C8860(uint64_t **a1))()
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
  v2[4] = sub_1BA1C4BD0(v2);
  return sub_1B9FCDCF4;
}

void sub_1BA1C88D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  v4 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView];
  if (v3)
  {
    if (v5)
    {
      sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
      v6 = v5;
      v7 = v3;
      v8 = sub_1BA4A7798();

      if (v8)
      {
        return;
      }

      v3 = *&v1[v2];
      v5 = *&v1[v4];
    }
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v3 = 0;
  }

  *&v1[v4] = v3;
  v9 = v3;

  v10 = sub_1BA1C8F14();
  v11 = *&v1[v2];
  *&v1[v2] = v10;

  [*&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator] startAnimating];

  [v1 setNeedsLayout];
}

void sub_1BA1C89E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  v4 = v3;
  v5 = sub_1BA1C8F14();
  if (v3)
  {
    v12 = v5;
    sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
    v6 = sub_1BA4A7798();

    if (v6)
    {
      [*&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator] stopAnimating];
      v7 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView;
      v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView];
      v9 = *&v1[v2];
      *&v1[v2] = v8;
      v10 = v8;

      v11 = *&v1[v7];
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
    }
  }

  else
  {
  }
}

id sub_1BA1C8B10()
{
  if (v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType])
  {
    v1 = sub_1BA1C8D4C();
  }

  else
  {
    v1 = 0;
  }

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView] = v1;

  return [v0 setNeedsLayout];
}

id sub_1BA1C8B70()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_1BA1C8C24()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset];
  v2 = v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset + 8];
  [v0 bounds];
  CGRectGetWidth(v7);
  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1BA4A74F8();
  if ((v3 & 1) == 0)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 scale];
  }

  if (v2)
  {
    v1 = 16.0;
  }

  [v0 bounds];
  CGRectGetHeight(v8);
  return v1;
}

id sub_1BA1C8D4C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    v5 = [objc_opt_self() tertiaryLabelColor];
    [v4 setTintColor_];

    [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v6 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
    v7 = [objc_opt_self() configurationWithFont:v6 scale:1];
    v8 = sub_1BA4A6758();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    [v4 setImage_];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA1C8F14()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setHidesWhenStopped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1C8FA0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_enabled] = 1;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessorySpace] = 0x4010000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for BrowseTileContentViewBase();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_1BA1C8B70();
  [v10 addSubview_];

  v12 = sub_1BA1C8D4C();
  [v10 addSubview_];

  v13 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v10 setBackgroundColor_];

  return v10;
}

void sub_1BA1C9180()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for BrowseTileContentViewBase();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  if (v1 == 1)
  {
    if (v3)
    {
      v4 = v3;
      [v0 bounds];
      v5 = CGRectGetHeight(v31) + -30.0;
      v6 = *&v0[v2];
      if (v6)
      {
        [v6 sizeThatFits_];
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      [v0 bounds];
      v14 = CGRectGetWidth(v33) - v8 + -16.0;
      [v0 bounds];
      v15 = CGRectGetWidth(v34) - v14;
      v35.origin.y = 15.0;
      v35.origin.x = v14;
      v35.size.width = v8;
      v35.size.height = v5;
      [v4 setFrame_];
    }

    v16 = sub_1BA1C8B70();
    v17 = sub_1BA1C8C24();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v0 bounds];
    v24 = CGRectGetWidth(v36) - v17;
    v37.origin.x = v17;
    v37.origin.y = v19;
    v37.size.width = v21;
    v37.size.height = v23;
    Width = CGRectGetWidth(v37);
    v26 = v23;
    v27 = v21;
    v28 = v19;
    v29 = v24 - Width;
  }

  else
  {
    if (v3)
    {
      v9 = v3;
      [v0 bounds];
      v10 = CGRectGetHeight(v32) + -30.0;
      v11 = *&v0[v2];
      if (v11)
      {
        [v11 sizeThatFits_];
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      [v0 bounds];
      [v9 setFrame_];
    }

    v16 = sub_1BA1C8B70();
    v29 = sub_1BA1C8C24();
  }

  [v16 setFrame_];
}

id sub_1BA1C94A0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setTextAlignment_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1BA1C97A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA1C94A0();

  MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
  v3 = sub_1BA4A6758();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_1BA1C9864()
{
  swift_getObjectType();
  v0 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v0);

  MEMORY[0x1BFAF1350](0x3A6C6562616C203ELL, 0xE900000000000020);
  v1 = sub_1BA1C94A0();
  v2 = [v1 description];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  return 60;
}

char *sub_1BA1C9970()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView;
  v9 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView);
  }

  else
  {
    v48 = v5;
    v11 = [objc_allocWithZone(type metadata accessor for LabelAndImageView()) initWithFrame_];
    v12 = *MEMORY[0x1E69DDCF8];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    v15 = [v14 fontDescriptorWithSymbolicTraits_];

    if (v15)
    {
      v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v47 = v13;
        v21 = v20;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v51 = v45;
        *v21 = 136315906;
        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v24 = sub_1B9F0B82C(v22, v23, &v51);
        v46 = v17;
        v25 = v24;

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        v49 = 0;
        v50 = 1;
        sub_1B9F6BFCC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v51);

        *(v21 + 14) = v28;
        *(v21 + 22) = 2080;
        LODWORD(v49) = 32770;
        type metadata accessor for SymbolicTraits(0);
        v29 = sub_1BA4A6808();
        v31 = sub_1B9F0B82C(v29, v30, &v51);
        v17 = v46;

        *(v21 + 24) = v31;
        *(v21 + 32) = 2112;
        v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v21 + 34) = v32;
        v33 = v44;
        *v44 = v32;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v21, 0x2Au);
        sub_1BA1CB808(v33, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v33, -1, -1);
        v34 = v45;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v34, -1, -1);
        v35 = v21;
        v13 = v47;
        MEMORY[0x1BFAF43A0](v35, -1, -1);
      }

      (*(v3 + 8))(v7, v48);
      v36 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
    }

    v37 = OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font;
    v38 = *&v11[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font];
    *&v11[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font] = v16;
    v39 = v16;

    v40 = sub_1B9FE7DE0();
    [v40 setFont_];

    [v11 setNeedsLayout];
    [v11 invalidateIntrinsicContentSize];

    v11[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_doubleLabelImageSpaceForBrowse] = 1;
    [v11 setNeedsLayout];
    [v11 invalidateIntrinsicContentSize];
    v41 = *(v1 + v8);
    *(v1 + v8) = v11;
    v10 = v11;

    v9 = 0;
  }

  v42 = v9;
  return v10;
}

id sub_1BA1C9E54(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for BrowseTileContentViewImageTextAccessory();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_1BA1C9970();
  [v9 addSubview_];

  sub_1B9F6BFCC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  v12 = sub_1BA4A4858();
  v13 = MEMORY[0x1E69DC2B0];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1B9FE8ED0();
  sub_1BA4A7708();

  swift_unknownObjectRelease();

  return v9;
}

void sub_1BA1CA074()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for BrowseTileContentViewImageTextAccessory();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v2 = [v0 effectiveUserInterfaceLayoutDirection];
  v3 = sub_1BA1C9970();
  [v1 bounds];
  v4 = CGRectGetHeight(v33) + -30.0;
  [v1 bounds];
  v5 = CGRectGetHeight(v34) + -30.0;
  v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  if (v2 == 1)
  {
    if (v6)
    {
      [v6 sizeThatFits_];
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    [v1 bounds];
    v36.origin.x = CGRectGetWidth(v35) - v8 + -16.0;
    v11 = 15.0;
    v36.origin.y = 15.0;
    v36.size.width = v8;
    v36.size.height = v5;
    v12 = CGRectGetMinX(v36) + -16.0 + -4.0;
    [v1 bounds];
    v13 = CGRectGetWidth(v37) + -16.0;
    v38.origin.x = 16.0;
    v38.origin.y = 15.0;
    v38.size.width = v12;
    v38.size.height = v4;
    v14 = v13 - CGRectGetWidth(v38);
  }

  else
  {
    if (v6)
    {
      [v6 sizeThatFits_];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    [v1 bounds];
    v40.origin.x = CGRectGetWidth(v39) - v10 + -16.0;
    v11 = 15.0;
    v40.origin.y = 15.0;
    v40.size.width = v10;
    v40.size.height = v5;
    v12 = CGRectGetMinX(v40) + -16.0 + -4.0;
    v14 = 16.0;
  }

  [v3 setFrame_];

  [v1 bounds];
  v15 = CGRectGetHeight(v41) + -30.0;
  [v1 bounds];
  v16 = CGRectGetHeight(v42) + -30.0;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  if (v17)
  {
    [v17 sizeThatFits_];
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  [v1 bounds];
  v44.origin.x = CGRectGetWidth(v43) - v19 + -16.0;
  v44.origin.y = 15.0;
  v44.size.width = v19;
  v44.size.height = v16;
  v45.size.width = CGRectGetMinX(v44) + -16.0 + -4.0;
  v45.origin.x = 16.0;
  v45.origin.y = 15.0;
  v45.size.height = v15;
  MinX = CGRectGetMinX(v45);
  v21 = sub_1BA1C9970();
  [v1 bounds];
  CGRectGetHeight(v46);
  if (!*(*&v21[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView] + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image))
  {

    v29 = 4.0;
LABEL_19:
    v30 = &v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset];
    *v30 = MinX + v29;
    *(v30 + 8) = 0;
    v31 = sub_1BA1C8B70();
    [v31 setFrame_];

    return;
  }

  v22 = sub_1B9FE7DE0();
  v23 = [v22 font];

  if (v23)
  {
    [v23 lineHeight];
    v25 = v24;

    v26 = 36.0;
    if (v25 > 36.0)
    {
      v26 = v25;
    }

    v27 = v26 + 4.0;
    v28 = sub_1B9FE7EBC();

    v29 = v28 + v27;
    goto LABEL_19;
  }

  __break(1u);
}

double sub_1BA1CA42C(uint64_t (*a1)(void), double a2, double a3)
{
  v5 = a2;
  if (a2 > 0.0)
  {
    if (*(v3 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView))
    {
      v6 = a1;
      [*(v3 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView) sizeThatFits_];
      a1 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    a2 = v5 + -32.0 + -4.0 - v7;
  }

  if (a2 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  v9 = a1();
  [v9 sizeThatFits_];

  return v5;
}

void sub_1BA1CA564(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView);
  if (v5)
  {

    v6 = v5;
    MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);
    v7 = sub_1BA4A6758();

    [v6 setAccessibilityIdentifier_];
  }

  v8 = sub_1BA1C9970();
  sub_1B9FE7BE4(a1, a2);
}

id sub_1BA1CA668(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1BA4A6758();

  return v5;
}

uint64_t sub_1BA1CA6D8()
{
  v1 = v0;
  swift_getObjectType();
  sub_1BA4A7DF8();

  v2 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v2);

  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4F2E20);
  v3 = sub_1BA1C9970();
  v4 = [v3 description];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  MEMORY[0x1BFAF1350](v5, v7);

  MEMORY[0x1BFAF1350](0x6F73736563636120, 0xEC000000203A7972);
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView);
  sub_1B9F40DD8(0, &unk_1EDC5E200, &qword_1EDC6B4A0, 0x1E69DD250, sub_1B9F0ADF8);
  v9 = v8;
  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  return 60;
}

id sub_1BA1CA890(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s18HealthExperienceUI24BrowseTileViewControllerC5StyleO2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v46 = a1[2];
  v47 = v3;
  v4 = a1[3];
  v48 = a1[4];
  v5 = a1[1];
  v44 = *a1;
  v45 = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  *&v50[32] = *(a2 + 32);
  *&v50[48] = v6;
  v8 = *(a2 + 48);
  v51 = *(a2 + 64);
  v9 = *(a2 + 16);
  *v50 = *a2;
  *&v50[16] = v9;
  v53[0] = v44;
  v53[1] = v2;
  v10 = a1[4];
  v53[3] = v4;
  v53[4] = v10;
  v53[2] = v46;
  v57 = *&v50[32];
  v58 = v8;
  v59 = *(a2 + 64);
  v56 = v7;
  v49 = *(a1 + 10);
  v52 = *(a2 + 80);
  v11 = *(a2 + 80);
  v54 = *(a1 + 10);
  v60 = v11;
  v55 = *v50;
  v12 = *(&v44 + 1);
  v13 = *(&v47 + 1);
  v14 = *(&v47 + 1) >> 61;
  if ((*(&v47 + 1) >> 61) > 2)
  {
    if (v14 == 3)
    {
      if (*&v50[56] >> 61 != 3)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 != 4)
      {
        v20 = *&v50[56];
        if (*&v50[56] >> 61 == 5)
        {
          v34 = v45;
          v21 = v47;
          v22 = v48;
          v27 = v49;
          v30 = *&v50[8];
          v31 = v46;
          v28 = *&v50[40];
          v29 = *&v50[24];
          v23 = *(&v51 + 1);
          v26 = v52;
          v24 = v51;
          sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
          sub_1BA1CBB74(v50, &v38);
          sub_1BA1CBB74(&v44, &v38);
          if (sub_1BA4A7798())
          {
            v38 = v12;
            v39 = v34;
            v40 = v31;
            v41 = v21;
            v42 = v13 & 0x1FFFFFFFFFFFFFFFLL;
            v43 = v22;
            v35[0] = v30;
            v35[1] = v29;
            v35[2] = v28;
            v36 = v20 & 0x1FFFFFFFFFFFFFFFLL;
            v37 = v24;
            if (_s18HealthExperienceUI10ImageStyleV2eeoiySbAC_ACtFZ_0(&v38, v35))
            {
              if (*(&v22 + 1) != v23 || v27 != v26)
              {
                goto LABEL_17;
              }

              goto LABEL_28;
            }
          }

          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (*&v50[56] >> 61 != 4)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (!v14)
    {
      if (!(*&v50[56] >> 61))
      {
        v33 = v45;
        v18 = *&v50[8];
        v17 = *&v50[16];
        sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
        sub_1BA1CBB74(v50, &v38);
        sub_1BA1CBB74(&v44, &v38);
        if (sub_1BA4A7798())
        {
          if (v12 != v18 || v33 != v17)
          {
            goto LABEL_17;
          }

          goto LABEL_28;
        }

LABEL_30:
        v19 = 0;
        goto LABEL_31;
      }

LABEL_29:
      sub_1BA1CBB74(v50, &v38);
      sub_1BA1CBB74(&v44, &v38);
      goto LABEL_30;
    }

    if (v14 == 1)
    {
      if (*&v50[56] >> 61 == 1)
      {
        v32 = v45;
        v16 = *&v50[8];
        v15 = *&v50[16];
        sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
        sub_1BA1CBB74(v50, &v38);
        sub_1BA1CBB74(&v44, &v38);
        if (sub_1BA4A7798())
        {
          if (v12 != v16 || v32 != v15)
          {
LABEL_17:
            v19 = sub_1BA4A8338();
            goto LABEL_31;
          }

LABEL_28:
          v19 = 1;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (*&v50[56] >> 61 != 2)
    {
      goto LABEL_29;
    }
  }

  if (v44 == *v50)
  {
    sub_1BA1CBB74(v50, &v38);
    sub_1BA1CBB74(&v44, &v38);
    v19 = 1;
  }

  else
  {
    v19 = sub_1BA4A8338();
    sub_1BA1CBB74(v50, &v38);
    sub_1BA1CBB74(&v44, &v38);
  }

LABEL_31:
  sub_1BA1CBBAC(v53, sub_1BA1CBC0C);
  return v19 & 1;
}

uint64_t sub_1BA1CACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA1CAD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA1CADA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F40DD8(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1BA1CAE24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F40DD8(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 24))(a2, a1, v7);
  return a2;
}

uint64_t type metadata accessor for BrowseTileViewController(uint64_t a1)
{
  result = qword_1EDC6C710;
  if (!qword_1EDC6C710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_1Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unint64_t *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  swift_beginAccess();
  return sub_1BA1CADA0(v10 + v11, a6, a3, a4, a5);
}

void sub_1BA1CAFB4(uint64_t a1)
{
  sub_1B9F6BFCC(319, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA1CB654(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 2) & 0x80000000 | (*(a1 + 48) >> 33);
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

double sub_1BA1CB6B0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 33;
      *(a1 + 56) = 0x200000000;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}