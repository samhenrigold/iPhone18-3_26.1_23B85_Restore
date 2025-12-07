uint64_t sub_1BA0BABA0(uint64_t a1, uint64_t *a2)
{
  sub_1BA04B338(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v6, v3 + v4);
  swift_endAccess();
  sub_1BA0BD294();
  return sub_1BA0BD670(v6);
}

uint64_t sub_1BA0BAC10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA0BAC68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  sub_1BA0BD294();
  return sub_1BA0BD670(a1);
}

uint64_t sub_1BA0BACD4(uint64_t a1, uint64_t a2)
{
  sub_1B9F40D78(0, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, 1);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1BA0BAD54(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0BADB8;
}

uint64_t sub_1BA0BADB8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA0BD294();
  }

  return result;
}

uint64_t sub_1BA0BADEC()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA04B338(v0 + v1, &v10);
  if (v11)
  {
    sub_1B9F1134C(&v10, v12);
    v2 = v13;
    v3 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v3 + 8))(v2, v3);
    if (v4 >> 60 != 15)
    {
      sub_1BA4A3078();
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1BA0BD670(&v10);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  v6 = sub_1BA4A85D8();
  v8 = v7;

  *&v10 = v6;
  *(&v10 + 1) = v8;
  MEMORY[0x1BFAF1350](0xD000000000000021, 0x80000001BA4E91B0);
  sub_1BA04B338(v0 + v1, v12);
  sub_1B9F40D78(0, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, 1);
  v9 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v9);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

id sub_1BA0BAFB8()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel);
  }

  else
  {
    v42 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

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
      v41 = v0;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v40 = v2;
        v23 = sub_1B9F0B82C(v21, v22, &v45);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v43 = 0;
        v44 = 1;
        sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v45);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        LODWORD(v43) = 2;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v45);

        *(v20 + 24) = v29;
        *(v20 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v30;
        v31 = v38;
        *v38 = v30;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F8C6C8(v31);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v39;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);

        (*(v40 + 8))(v6, v42);
      }

      else
      {

        (*(v2 + 8))(v6, v42);
      }

      v0 = v41;
      v33 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    [v10 setAdjustsFontForContentSizeCategory_];
    [v10 setNumberOfLines_];
    [v10 setLineBreakMode_];
    LODWORD(v34) = 1148846080;
    [v10 setContentHuggingPriority:1 forAxis:v34];
    v35 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v36 = v8;
  return v9;
}

id sub_1BA0BB498()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA0BB55C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel);
  }

  else
  {
    v4 = sub_1BA0BB5C0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA0BB5C0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTextColor_];
  [v2 setFont_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setNumberOfLines_];
  [v2 setLineBreakMode_];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  return v2;
}

id sub_1BA0BB6A0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];

    [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA0BB75C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
    v6 = [objc_opt_self() configurationWithFont:v5 scale:1];
    v7 = sub_1BA4A6758();
    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    [v4 setImage_];
    [v4 setContentMode_];

    v9 = [objc_opt_self() tertiaryLabelColor];
    [v4 setTintColor_];

    [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA0BB944()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ListStyleAccessoryView()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1BA0BB9F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v79 - v16;
  v18 = &v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier];
  *v18 = 0;
  *(v18 + 1) = 0;
  swift_unknownObjectWeakInit();
  v19 = &v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_actionHandler];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v21 = &qword_1EBBEB000;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_containerViewBackgroundColor;
  v23 = objc_opt_self();
  *&v5[v22] = [v23 secondarySystemGroupedBackgroundColor];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView] = 0;
  v24 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteColor;
  *&v5[v24] = [v23 secondaryLabelColor];
  v25 = *MEMORY[0x1E69DDD28];
  v26 = objc_opt_self();
  v27 = [v26 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];

  v29 = &selRef_createHKUnitPreferenceController;
  if (v28)
  {
    v30 = [objc_opt_self() fontWithDescriptor:v28 size:0.0];
  }

  else
  {
    v81 = v10;
    v82 = v11;
    sub_1BA4A3DD8();
    v31 = v25;
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v34 = 136315906;
      v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v37 = sub_1B9F0B82C(v35, v36, &v86);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v84 = 0;
      v85 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, &v86);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      LODWORD(v84) = 2;
      type metadata accessor for SymbolicTraits(0);
      v41 = sub_1BA4A6808();
      v43 = sub_1B9F0B82C(v41, v42, &v86);

      *(v34 + 24) = v43;
      *(v34 + 32) = 2112;
      v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v34 + 34) = v44;
      v45 = v79;
      *v79 = v44;
      _os_log_impl(&dword_1B9F07000, v32, v33, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v34, 0x2Au);
      sub_1B9F8C6C8(v45);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      v46 = v80;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      v47 = v34;
      v21 = &qword_1EBBEB000;
      MEMORY[0x1BFAF43A0](v47, -1, -1);
    }

    v10 = v81;
    v11 = v82;
    (*(v82 + 8))(v17, v81);
    v48 = [v26 preferredFontDescriptorWithTextStyle_];
    v29 = &selRef_createHKUnitPreferenceController;
    v30 = [objc_opt_self() fontWithDescriptor:v48 size:0.0];
  }

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteFont] = v30;
  v49 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkColor;
  *&v5[v49] = [v23 systemBlueColor];
  v50 = *MEMORY[0x1E69DDD80];
  v51 = [v26 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v51)
  {
    v52 = v51;
    v53 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];
  }

  else
  {
    v82 = v11;
    v54 = v83;
    sub_1BA4A3DD8();
    v55 = v50;
    v56 = sub_1BA4A3E88();
    v57 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v58 = 136315906;
      v60 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v62 = sub_1B9F0B82C(v60, v61, &v86);
      v81 = v10;
      v63 = v62;

      *(v58 + 4) = v63;
      *(v58 + 12) = 2080;
      v84 = 0;
      v85 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v64 = sub_1BA4A6808();
      v66 = sub_1B9F0B82C(v64, v65, &v86);

      *(v58 + 14) = v66;
      *(v58 + 22) = 2080;
      LODWORD(v84) = 0;
      type metadata accessor for SymbolicTraits(0);
      v67 = sub_1BA4A6808();
      v69 = sub_1B9F0B82C(v67, v68, &v86);
      v21 = &qword_1EBBEB000;

      *(v58 + 24) = v69;
      *(v58 + 32) = 2112;
      v70 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v58 + 34) = v70;
      *v59 = v70;
      _os_log_impl(&dword_1B9F07000, v56, v57, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v58, 0x2Au);
      sub_1B9F8C6C8(v59);
      MEMORY[0x1BFAF43A0](v59, -1, -1);
      v71 = v80;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v71, -1, -1);
      v72 = v58;
      v29 = &selRef_createHKUnitPreferenceController;
      MEMORY[0x1BFAF43A0](v72, -1, -1);

      (*(v82 + 8))(v83, v81);
    }

    else
    {

      (*(v82 + 8))(v54, v10);
    }

    v52 = [v26 preferredFontDescriptorWithTextStyle_];
    v53 = [objc_opt_self() v29[99]];
  }

  v73 = v53;

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkFont] = v73;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint] = 0;
  v74 = type metadata accessor for FeatureStatusPlatformFeedItemView();
  v87.receiver = v5;
  v87.super_class = v74;
  v75 = objc_msgSendSuper2(&v87, sel_initWithFrame_, a1, a2, a3, a4);
  v76 = *&v75[v21[212]];
  v77 = v75;
  [v77 setBackgroundColor_];
  sub_1BA0BC364();
  sub_1BA0BC44C();

  return v77;
}

id FeatureStatusPlatformFeedItemView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA0BC364()
{
  v1 = sub_1BA0BAFB8();
  [v0 addSubview_];

  v2 = sub_1BA0BB6A0();
  [v0 addSubview_];

  v3 = sub_1BA0BB498();
  [v0 addSubview_];

  v4 = sub_1BA0BB55C();
  [v0 addSubview_];

  v5 = sub_1BA0BB75C();
  [v0 addSubview_];

  v6 = sub_1BA0BB944();
  [v0 addSubview_];
}

void sub_1BA0BC44C()
{
  v0 = sub_1BA0BC550();
  sub_1B9F73B50(v0);
  sub_1BA0BC970();
  sub_1B9F73B50(v1);
  v2 = sub_1BA0BCB6C();
  sub_1B9F73B50(v2);
  v3 = sub_1BA0BCD94();
  sub_1B9F73B50(v3);
  v4 = sub_1BA0BC798();
  sub_1B9F73B50(v4);
  v5 = sub_1BA0BD01C();
  sub_1B9F73B50(v5);
  v6 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v7 = sub_1BA4A6AE8();

  [v6 activateConstraints_];
}

uint64_t sub_1BA0BC550()
{
  v1 = sub_1BA0BB6A0();
  LODWORD(v2) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:v2];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView;
  LODWORD(v4) = 1148846080;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView] setContentCompressionResistancePriority:0 forAxis:v4];
  v5 = [*&v0[v3] widthAnchor];
  v6 = [v5 constraintEqualToConstant_];

  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint] = v6;
  v8 = v6;

  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5890;
  v10 = [*&v0[v3] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];

  *(v9 + 32) = v12;
  v13 = [*&v0[v3] leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:16.0];

  *(v9 + 40) = v15;
  *(v9 + 48) = v8;
  v16 = *&v0[v3];
  v17 = v8;
  v18 = [v16 heightAnchor];
  v19 = [*&v0[v3] widthAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v9 + 56) = v20;
  return v9;
}

uint64_t sub_1BA0BC798()
{
  v1 = sub_1BA0BB75C();
  LODWORD(v2) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:v2];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView;
  LODWORD(v4) = 1148846080;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView] setContentCompressionResistancePriority:0 forAxis:v4];
  v5 = [*&v0[v3] trailingAnchor];
  v6 = [v0 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:-16.0];

  v8 = [*&v0[v3] widthAnchor];
  v9 = [v8 constraintEqualToConstant_];

  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint] = v9;

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint] = v7;
  v12 = v7;

  sub_1B9F109F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B7510;
  v14 = [*&v0[v3] firstBaselineAnchor];
  v15 = sub_1BA0BAFB8();
  v16 = [v15 firstBaselineAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v17;
  *(v13 + 40) = v12;
  return v13;
}

double sub_1BA0BC970()
{
  v1 = sub_1BA0BAFB8();
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel;
  v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel] topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:16.0];

  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint] = v6;
  v8 = v6;

  v9 = [*&v0[v3] leadingAnchor];
  v10 = sub_1BA0BB6A0();
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:11.0];
  v13 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint] = v12;
  v14 = v12;

  v15 = [*&v0[v3] trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-16.0];

  v18 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint] = v17;
  v19 = v17;

  sub_1B9F109F8();
  v20 = swift_allocObject();
  *&result = 3;
  *(v20 + 16) = xmmword_1BA4B8B60;
  *(v20 + 32) = v8;
  *(v20 + 40) = v14;
  *(v20 + 48) = v19;
  return result;
}

uint64_t sub_1BA0BCB6C()
{
  v1 = sub_1BA0BB498();
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView;
  v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView] topAnchor];
  v5 = sub_1BA0BAFB8();
  v6 = [v5 bottomAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:4.0];
  v8 = [*&v0[v3] heightAnchor];
  v9 = [v8 constraintEqualToConstant_];

  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint] = v9;

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint] = v7;
  v12 = v7;

  sub_1B9F109F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B8B60;
  v14 = [*&v0[v3] leadingAnchor];
  v15 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel] leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v13 + 32) = v16;
  v17 = [*&v0[v3] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-16.0];

  *(v13 + 40) = v19;
  *(v13 + 48) = v12;
  return v13;
}

uint64_t sub_1BA0BCD94()
{
  v1 = sub_1BA0BB55C();
  v2 = [v1 topAnchor];

  v3 = sub_1BA0BB498();
  v4 = [v3 bottomAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:6.0];
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint] = v5;
  v7 = v5;

  v8 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel;
  v9 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel] bottomAnchor];
  v10 = [v0 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-16.0];

  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint] = v11;
  v13 = v11;

  v14 = [*&v0[v8] heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  v16 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint] = v15;

  sub_1B9F109F8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5890;
  v18 = [*&v0[v8] leadingAnchor];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView;
  v20 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView] leadingAnchor];
  v21 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v21;
  v22 = [*&v0[v8] trailingAnchor];
  v23 = [*&v0[v19] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v17 + 40) = v24;
  *(v17 + 48) = v7;
  *(v17 + 56) = v13;
  return v17;
}

uint64_t sub_1BA0BD01C()
{
  v1 = sub_1BA0BB944();
  v2 = [v1 heightAnchor];

  v3 = [v2 constraintEqualToConstant_];
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint] = v3;
  v5 = v3;

  v6 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView] bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint] = v9;
  v11 = v9;

  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5890;
  v13 = [*&v0[v6] leadingAnchor];
  v14 = sub_1BA0BAFB8();
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v16;
  v17 = [*&v0[v6] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v12 + 40) = v19;
  v20 = [*&v0[v6] topAnchor];
  v21 = sub_1BA0BB55C();
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];
  *(v12 + 48) = v23;
  *(v12 + 56) = v11;

  return v12;
}

uint64_t sub_1BA0BD294()
{
  v1 = sub_1BA4A0F08();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6BF24(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v33 - v7;
  v9 = sub_1BA4A30B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  sub_1BA0BADEC();
  v18 = sub_1BA4A6C88();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v10 + 16))(v13, v17, v9);
  sub_1BA4A6C68();
  v19 = v0;
  v20 = sub_1BA4A6C58();
  v21 = *(v10 + 80);
  v34 = v10;
  v22 = (v21 + 40) & ~v21;
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 2) = v20;
  *(v23 + 3) = v24;
  *(v23 + 4) = v19;
  (*(v10 + 32))(&v23[v22], v13, v9);
  sub_1BA0BF220(0, 0, v8, &unk_1BA4BC938, v23);

  sub_1BA0BD6E8(v17);
  sub_1BA0BF544();
  sub_1BA0BDCD0(v17);
  sub_1BA0BE40C();
  sub_1BA0BF6F8(v17);
  v37 = sub_1BA4A3048();
  v38 = v25;
  sub_1BA4A0EF8();
  sub_1B9F252FC();
  v26 = sub_1BA4A7B48();
  v28 = v27;
  (*(v35 + 8))(v4, v36);

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v31 = v30;

  v37 = v29;
  v38 = v31;
  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4E8CA0);
  MEMORY[0x1BFAF1350](v26, v28);

  sub_1BA0C0DDC(v37, v38);

  return (*(v34 + 8))(v17, v9);
}

uint64_t sub_1BA0BD670(uint64_t a1)
{
  sub_1B9F40D78(0, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, 1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA0BD6E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A2A88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v62 - v14;
  v16 = sub_1BA0BAFB8();
  sub_1BA4A30A8();
  v17 = sub_1BA4A6758();

  [v16 setText_];

  v18 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel;
  v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel];
  v20 = [v19 text];
  [v19 setAccessibilityLabel_];

  v21 = *&v2[v18];
  v66 = a1;
  sub_1BA4A3018();
  (*(v5 + 16))(v11, v15, v4);
  v65 = *(v5 + 88);
  v22 = v65(v11, v4);
  v23 = (v5 + 8);
  if (v22 == *MEMORY[0x1E69A31C8] || v22 == *MEMORY[0x1E69A31C0])
  {
    [v21 setAlpha_];

    v63 = *v23;
    v63(v15, v4);
  }

  else
  {
    [v21 setAlpha_];

    v24 = *v23;
    (*v23)(v15, v4);
    v63 = v24;
    v24(v11, v4);
  }

  v25 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint;
  v26 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint];
  if (v26)
  {
    [v26 setActive_];
  }

  v64 = v4;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint;
  v28 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint];
  if (v28)
  {
    [v28 setActive_];
  }

  v62 = v5 + 8;
  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v30 = [*&v2[v18] topAnchor];
  v31 = v18;
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v32 = sub_1BA0BB6A0();
    v33 = [v32 bottomAnchor];

    v34 = [v30 constraintEqualToAnchor:v33 constant:11.0];
    v35 = *&v2[v25];
    *&v2[v25] = v34;

    v36 = [*&v2[v18] leadingAnchor];
    v37 = [v2 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];
  }

  else
  {
    v39 = [v2 topAnchor];
    v40 = [v30 constraintEqualToAnchor:v39 constant:16.0];

    v41 = *&v2[v25];
    *&v2[v25] = v40;

    v36 = [*&v2[v18] leadingAnchor];
    v42 = sub_1BA0BB6A0();
    v37 = [v42 trailingAnchor];

    v38 = [v36 constraintEqualToAnchor:v37 constant:11.0];
  }

  v43 = v38;

  v44 = *&v2[v27];
  *&v2[v27] = v43;

  v45 = *&v2[v25];
  v46 = v64;
  if (v45)
  {
    [v45 setActive_];
  }

  v47 = *&v2[v27];
  v48 = v67;
  if (v47)
  {
    [v47 setActive_];
  }

  v49 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint;
  v50 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint];
  if (v50)
  {
    [v50 setActive_];
  }

  sub_1BA4A3018();
  v51 = v65(v48, v46);
  v52 = *MEMORY[0x1E69A31D0];
  v53 = [*&v2[v31] trailingAnchor];
  if (v51 == v52)
  {
    v54 = sub_1BA0BB75C();
    v55 = [v54 leadingAnchor];

    v56 = [v53 constraintEqualToAnchor:v55 constant:-8.0];
    v57 = *&v2[v49];
    *&v2[v49] = v56;
  }

  else
  {
    v58 = [v2 trailingAnchor];
    v59 = [v53 constraintEqualToAnchor:v58 constant:-16.0];

    v60 = *&v2[v49];
    *&v2[v49] = v59;

    v63(v48, v46);
  }

  result = *&v2[v49];
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

void sub_1BA0BDCD0(uint64_t a1)
{
  v73 = a1;
  v76 = sub_1BA4A2A88();
  v1 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v2);
  v66 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v74 = &v61 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v70 = &v61 - v9;
  v10 = sub_1BA0BB498();
  v11 = [v10 arrangedSubviews];

  sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
  v12 = sub_1BA4A6B08();

  if (v12 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFAF2860](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v18 = sub_1BA4A3068();
  if (v18)
  {
    v19 = v18;
    v20 = *(v18 + 16);
    v21 = &qword_1EBBEB000;
    if (v20)
    {
      v22 = *MEMORY[0x1E69DC5C0];
      v23 = *(MEMORY[0x1E69DC5C0] + 8);
      v24 = *(MEMORY[0x1E69DC5C0] + 16);
      v25 = *(MEMORY[0x1E69DC5C0] + 24);
      v77 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView;
      v63 = (v18 + 32);
      v26 = v18 + 32 + 16 * v20;
      v68 = (v1 + 88);
      v69 = (v1 + 16);
      v72 = *MEMORY[0x1E69A31D0];
      v65 = *MEMORY[0x1E69A31D8];
      v67 = *MEMORY[0x1E69A31B8];
      v75 = (v1 + 8);
      v64 = (v1 + 104);
      v27 = (v18 + 40);
      v28 = &unk_1EBBEC000;
      v62 = (v18 + 40);
      v29 = v20;
      v30 = v70;
      v78 = v20;
      while (1)
      {
        v39 = *(v19 + 16);
        if (v20 > v39)
        {
          break;
        }

        v40 = *(v27 - 1);
        v41 = *v27;
        v42 = v40 == *(v26 - 16) && v41 == *(v26 - 8);
        if (v42 || (sub_1BA4A8338() & 1) != 0)
        {

          if (v39 <= 1)
          {
            v31 = v22;
          }

          else
          {
            v31 = 4.0;
          }

          v32 = 3;
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_1BA4A3018();
          v43 = v74;
          v44 = v76;
          (*v69)(v74, v30, v76);
          v45 = (*v68)(v43, v44);
          if (v45 == v72 || v45 == v65 || v45 == v67)
          {
            v48 = *v64;
            v49 = v66;
            v50 = v76;
            (*v64)(v66, v72, v76);
            v51 = sub_1BA4A2A78();
            v71 = *v75;
            v71(v49, v50);
            if (v51 & 1) != 0 || (v52 = v66, v53 = v76, v48(v66, v67, v76), v54 = sub_1BA4A2A78(), v71(v52, v53), (v54))
            {
              if (!*(v19 + 16))
              {
                goto LABEL_51;
              }

              if (v40 == *v63 && v41 == *v62)
              {
                v55 = 1;
              }

              else
              {
                v55 = sub_1BA4A8338();
              }
            }

            else
            {
              v55 = 0;
            }

            v30 = v70;
            v28 = &unk_1EBBEC000;

            v71(v30, v76);
            v32 = v55 & 1;
            v31 = v22;
          }

          else
          {

            v46 = v76;
            v47 = *v75;
            (*v75)(v30, v76);
            v47(v74, v46);
            v32 = 2;
            v31 = v22;
            v28 = &unk_1EBBEC000;
          }
        }

        v33 = type metadata accessor for LabelWithIndicatorView();
        v34 = objc_allocWithZone(v33);
        v35 = &v34[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier];
        *v35 = 0;
        v35[1] = 0;
        *&v34[v28[483]] = 0;
        *&v34[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView] = 0;
        *&v34[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint] = 0;
        *&v34[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewTrailingConstraint] = 0;
        *&v34[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor] = 0;
        v34[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_style] = v32;
        v36 = &v34[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_title];
        *v36 = v40;
        v36[1] = v41;
        v37 = &v34[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_contentInsets];
        *v37 = v31;
        *(v37 + 1) = v23;
        *(v37 + 2) = v24;
        *(v37 + 3) = v25;
        v80.receiver = v34;
        v80.super_class = v33;
        v38 = objc_msgSendSuper2(&v80, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_1BA17404C();
        [*(v79 + v77) addArrangedSubview_];

        v27 += 2;
        --v29;
        v20 = v78;
        if (!v29)
        {

          v21 = &qword_1EBBEB000;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
    }

    else
    {

LABEL_47:
      v58 = v21[214];
      v59 = v79;
      [*(v79 + v58) setHidden_];
      [*(v59 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint) setActive_];
      v60 = *(v59 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint);
      if (v60)
      {
        [v60 setConstant_];
      }
    }
  }

  else
  {
    v56 = v79;
    [*(v79 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView) setHidden_];
    [*(v56 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint) setActive_];
    v57 = *(v56 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint);
    if (v57)
    {

      [v57 setConstant_];
    }
  }
}

id sub_1BA0BE40C()
{
  v1 = v0;
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3058();
  v8 = v7;
  if (v7)
  {

    v9 = sub_1BA0BB55C();
    [v9 setHidden_];

    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint) setActive_];
    v10 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint);
    if (v10)
    {
      [v10 setConstant_];
    }
  }

  else
  {
    v11 = sub_1BA0BB55C();
    [v11 setHidden_];

    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint) setActive_];
    v12 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint);
    if (v12)
    {
      [v12 setConstant_];
    }
  }

  v13 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint);
  if (v13)
  {
    [v13 setActive_];
  }

  v14 = sub_1BA0BB55C();
  sub_1BA4A3058();
  if (v15)
  {
    v16 = sub_1BA4A6758();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText_];

  sub_1BA4A3018();
  v17 = (*(v3 + 88))(v6, v2);
  if (v17 != *MEMORY[0x1E69A31D0] && v17 != *MEMORY[0x1E69A31D8])
  {
    if (v17 == *MEMORY[0x1E69A31C8] || v17 == *MEMORY[0x1E69A31C0])
    {
      v23 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel;
      [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel) setTextColor_];
      v20 = *(v1 + v23);
      v21 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkFont;
      return [v20 setFont_];
    }

    if (v17 != *MEMORY[0x1E69A31B8])
    {
      return (*(v3 + 8))(v6, v2);
    }
  }

  v19 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel;
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel) setTextColor_];
  v20 = *(v1 + v19);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteFont;
  return [v20 setFont_];
}

uint64_t sub_1BA0BE718(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1B9F6BF24(0, &qword_1EDC6E1C8, MEMORY[0x1E69A32A0]);
  v2[4] = swift_task_alloc();
  v3 = sub_1BA4A2BF8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1BA4A6C68();
  v2[9] = sub_1BA4A6C58();
  v5 = sub_1BA4A6C28();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BA0BE860, v5, v4);
}

uint64_t sub_1BA0BE860()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_1BA4A3098();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];

    sub_1BA0C3508(v4, &qword_1EDC6E1C8, MEMORY[0x1E69A32A0]);
    v5 = 0;
LABEL_10:

    v25 = v0[1];

    return v25(v5);
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  (*(v9 + 32))(v7, v0[4], v8);
  (*(v9 + 16))(v6, v7, v8);
  if ((*(v9 + 88))(v6, v8) != *MEMORY[0x1E69A3298])
  {
    v20 = v0[8];
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];

    v5 = sub_1BA4A2BB8();
    v24 = *(v22 + 8);
    v24(v20, v23);
    v24(v21, v23);
    goto LABEL_10;
  }

  v10 = v0[7];
  v11 = v0[3];
  (*(v0[6] + 96))(v10, v0[5]);
  v12 = *(v10 + 25);

  v13 = [v11 traitCollection];
  [v13 displayScale];
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:45.0 scale:{45.0, v15}];
  v17 = v16;
  v0[12] = v16;
  if (v12 == 1)
  {
    [v16 setShape_];
  }

  v18 = v17;
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_1BA0BEB4C;

  return MEMORY[0x1EEE0D8E0](v17);
}

uint64_t sub_1BA0BEB4C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BA0BEC94, v5, v4);
}

uint64_t sub_1BA0BEC94()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  v5 = v0[14];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1BA0BED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1BA4A2A88();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = sub_1BA4A6C68();
  v5[9] = sub_1BA4A6C58();
  v8 = swift_task_alloc();
  v5[10] = v8;
  *v8 = v5;
  v8[1] = sub_1BA0BEE6C;

  return sub_1BA0BE718(a5);
}

uint64_t sub_1BA0BEE6C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_1BA4A6C28();

  return MEMORY[0x1EEE6DFA0](sub_1BA0BEFB0, v3, v2);
}

uint64_t sub_1BA0BEFB0()
{
  v1 = v0[11];

  v2 = sub_1BA0BB6A0();
  v3 = v2;
  if (v1)
  {
    v4 = v0[11];
    v5 = v0[2];
    [v2 setHidden_];

    [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView) setImage_];
    v6 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint);
    if (v6)
    {
      v7 = v6;
      [v7 setActive_];
    }

    else
    {
    }
  }

  else
  {
    v8 = v0[2];
    [v2 setHidden_];

    [*(v8 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView) setImage_];
    v9 = *(v8 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint);
    if (v9)
    {
      [v9 setActive_];
    }
  }

  v11 = v0 + 7;
  v10 = v0[7];
  v12 = v0[6];
  v13 = v0[4];
  v14 = v0[5];
  v15 = sub_1BA0BB6A0();
  sub_1BA4A3018();
  (*(v14 + 16))(v12, v10, v13);
  v16 = (*(v14 + 88))(v12, v13);
  v17 = (v14 + 8);
  if (v16 == *MEMORY[0x1E69A31C8] || v16 == *MEMORY[0x1E69A31C0])
  {
    [v15 setAlpha_];

    v20 = *v17;
  }

  else
  {
    v18 = v0[7];
    v19 = v0[4];
    [v15 setAlpha_];

    v20 = *v17;
    (*v17)(v18, v19);
    v11 = v0 + 6;
  }

  v20(*v11, v0[4]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BA0BF220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F6BF24(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1BA0C3488(a3, v26 - v11);
  v13 = sub_1BA4A6C88();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1BA0C3508(v12, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1BA4A6C78();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BA4A6C28();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BA4A6848() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1BA0C3508(a3, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BA0C3508(a3, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_1BA0BF544()
{
  v1 = v0;
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3018();
  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x1E69A31D0];
  v9 = sub_1BA0BB75C();
  v10 = v9;
  if (v7 == v8)
  {
    [v9 setHidden_];

    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint) setActive_];
    result = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint);
    if (result)
    {
      return [result setConstant_];
    }
  }

  else
  {
    [v9 setHidden_];

    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint) setActive_];
    v12 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint);
    if (v12)
    {
      [v12 setConstant_];
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

id sub_1BA0BF6F8(uint64_t a1)
{
  v2 = v1;
  v59 = sub_1BA4A2A88();
  v4 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA0BB944();
  v57 = a1;
  sub_1BA4A3028();
  v14 = v13;
  v15 = sub_1BA44666C();
  v58 = v4;
  if (v14)
  {
    v16 = sub_1BA4A6758();
  }

  else
  {
    v16 = 0;
  }

  [v15 setText_];

  v17 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label];
  v18 = *MEMORY[0x1E69DDCF8];
  v19 = objc_opt_self();
  v56 = v17;
  v20 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];

  if (v21)
  {
    v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v23 = v18;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v51 = v24;
      v27 = v26;
      v49 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v62 = v52;
      *v27 = 136315906;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v53 = v23;
      v30 = sub_1B9F0B82C(v28, v29, &v62);
      LODWORD(v50) = v25;
      v31 = v30;

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v60 = 0;
      v61 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v62);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      LODWORD(v60) = 2;
      type metadata accessor for SymbolicTraits(0);
      v35 = sub_1BA4A6808();
      v37 = sub_1B9F0B82C(v35, v36, &v62);
      v23 = v53;

      *(v27 + 24) = v37;
      *(v27 + 32) = 2112;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v27 + 34) = v38;
      v39 = v49;
      *v49 = v38;
      v40 = v51;
      _os_log_impl(&dword_1B9F07000, v51, v50, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v27, 0x2Au);
      sub_1B9F8C6C8(v39);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      v50 = v11;
      v41 = v52;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);

      (*(v54 + 8))(v50, v55);
    }

    else
    {

      (*(v54 + 8))(v11, v55);
    }

    v21 = [v19 preferredFontDescriptorWithTextStyle_];
    v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  }

  v42 = v22;

  v43 = v56;
  [v56 setFont_];

  sub_1BA4A3018();
  v45 = v58;
  v44 = v59;
  v46 = (*(v58 + 88))(v7, v59);
  v47 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView);
  if (v46 == *MEMORY[0x1E69A31D8] || v46 == *MEMORY[0x1E69A31B8])
  {
    [v47 setHidden_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint) setActive_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint) setActive_];
    return [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint) setActive_];
  }

  else
  {
    [v47 setHidden_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint) setActive_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint) setActive_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint) setActive_];
    return (*(v45 + 8))(v7, v44);
  }
}

double sub_1BA0BFD14(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for FeatureStatusPlatformFeedItemView();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;
  if (v5 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v7 == v8)
  {

    return result;
  }

  v10 = sub_1BA4A8338();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    sub_1BA0BD294();
  }

  return result;
}

uint64_t sub_1BA0BFEB8@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_1BA4A30B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0BADEC();
  sub_1BA4A3018();
  (*(v3 + 104))(v6, *MEMORY[0x1E69A31D0], v2);
  v16 = sub_1BA4A2A78();
  v17 = *(v3 + 8);
  v17(v6, v2);
  v17(v10, v2);
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  *a1 = v19;
  return result;
}

uint64_t sub_1BA0C00B0()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v59 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BA4A2A88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v58 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v48[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v48[-v14];
  v16 = sub_1BA4A30B8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA0BADEC();
  if ((sub_1BA4A3008() & 1) != 0 && (HKImproveHealthAndActivityAnalyticsAllowed() & 1) == 0)
  {
    return (*(v17 + 8))(v20, v16);
  }

  v55 = v1;
  v61 = v17;
  v56 = v0;
  v62 = v16;
  sub_1BA4A3018();
  v21 = v5[13];
  v21(v11, *MEMORY[0x1E69A31D0], v4);
  v60 = sub_1BA0C3398(&qword_1EBBE9D90, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31F8]);
  v22 = sub_1BA4A6728();
  v23 = v5[1];
  v23(v11, v4);
  v23(v15, v4);
  if (v22)
  {
    return (*(v61 + 8))(v20, v62);
  }

  sub_1BA4A3018();
  v21(v11, *MEMORY[0x1E69A31D8], v4);
  v24 = sub_1BA4A6728();
  v23(v11, v4);
  v23(v15, v4);
  if (v24)
  {
    return (*(v61 + 8))(v20, v62);
  }

  v54 = sub_1BA4A3048();
  v53 = v26;
  sub_1BA4A3018();
  sub_1BA4A2F48();
  v52 = sub_1BA4A2F38();
  v49 = sub_1BA4A2F28();
  v27 = v5[2];
  v27(v11, v15, v4);
  v28 = v58;
  v27(v58, v15, v4);
  sub_1BA4A2A68();
  v51 = sub_1BA4A6758();

  sub_1BA4A2A68();
  v50 = sub_1BA4A6758();

  v60 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v30 = [v29 initWithBool_];
  v31 = sub_1BA4A6758();

  v32 = sub_1BA4A6758();

  v23(v28, v4);
  v23(v11, v4);
  v23(v15, v4);
  *&v68 = v31;
  *(&v68 + 1) = v32;
  *&v69 = v51;
  *(&v69 + 1) = v50;
  *&v70 = v60;
  *(&v70 + 1) = v30;
  v71 = xmmword_1BA4BC920;
  v33 = v59;
  sub_1BA4A3E58();
  v34 = sub_1BA4A3E88();
  v35 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v63[0] = v37;
    *v36 = 136446466;
    *&v64 = ObjectType;
    swift_getMetatypeMetadata();
    v38 = sub_1BA4A6808();
    v40 = sub_1B9F0B82C(v38, v39, v63);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    swift_beginAccess();
    v42 = qword_1EBBEDEA0;
    v41 = off_1EBBEDEA8;

    v43 = sub_1B9F0B82C(v42, v41, v63);

    *(v36 + 14) = v43;
    _os_log_impl(&dword_1B9F07000, v34, v35, "[%{public}s]: Submitting %s analytics event (unavailable)", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v37, -1, -1);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
  }

  (*(v55 + 8))(v33, v56);
  v44 = v62;
  v45 = v61;
  v64 = v68;
  v65 = v69;
  v66 = v70;
  v67 = v71;
  v46 = sub_1BA4A29B8();
  v47 = sub_1BA4A29A8();
  v63[3] = v46;
  v63[4] = MEMORY[0x1E69A3198];
  v63[0] = v47;
  sub_1BA0C33E0();
  sub_1BA4A2B58();
  (*(v45 + 8))(v20, v44);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_1BA0C3434(&v68);
}

void *sub_1BA0C08D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v48 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v48 - v14;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA04B338(v1 + v16, &v50);
  if (v51[1])
  {
    sub_1B9F1134C(&v50, v52);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v48[1] = ObjectType;
      sub_1B9F0A534(v52, v51);
      *&v50 = v1;
      *(&v50 + 1) = v18;
      v19 = v53;
      v20 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v21 = *(v20 + 80);
      v22 = v1;
      v23 = v18;
      v24 = v21(&v50, v19, v20);
      if (v24)
      {
        v25 = v24;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          sub_1BA0C3344(&v50);

          __swift_destroy_boxed_opaque_existential_1(v52);
          return v25;
        }
      }

      sub_1BA4A3E28();
      v41 = sub_1BA4A3E88();
      v42 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v44;
        *v43 = 136315138;
        v45 = sub_1BA4A85D8();
        v47 = sub_1B9F0B82C(v45, v46, &v49);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_1B9F07000, v41, v42, "%s makePluginActionHandler actionHandler is nil, legacy subclass is handling action", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x1BFAF43A0](v44, -1, -1);
        MEMORY[0x1BFAF43A0](v43, -1, -1);
      }

      (*(v4 + 8))(v15, v3);
      sub_1BA0C3344(&v50);
    }

    else
    {
      sub_1BA4A3E28();
      v34 = sub_1BA4A3E88();
      v35 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v50 = v37;
        *v36 = 136315138;
        v38 = sub_1BA4A85D8();
        v40 = sub_1B9F0B82C(v38, v39, &v50);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_1B9F07000, v34, v35, "%s makePluginActionHandler parentViewController is nil", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1BFAF43A0](v37, -1, -1);
        MEMORY[0x1BFAF43A0](v36, -1, -1);
      }

      (*(v4 + 8))(v11, v3);
    }

    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    sub_1BA0BD670(&v50);
    sub_1BA4A3E28();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v50 = v30;
      *v29 = 136315138;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, &v50);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1B9F07000, v27, v28, "%s makePluginActionHandler context is nil", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  return 0;
}

void sub_1BA0C0DDC(uint64_t a1, unint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  if (a2)
  {
    v6 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v7 = sub_1BA0BAFB8();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v8 = sub_1BA4A6758();

    [v7 setAccessibilityIdentifier_];

    sub_1BA0C1124(a1, a2);
    v9 = sub_1BA0BB55C();

    MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4E8CC0);
    v10 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];

    v11 = sub_1BA0BB944();
    v20 = a2;

    MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E8CE0);
    v12 = &v11[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier];
    swift_beginAccess();
    *v12 = a1;
    *(v12 + 1) = a2;

    v13 = sub_1BA4A6758();
    [v11 setAccessibilityIdentifier_];

    v14 = sub_1BA44666C();

    MEMORY[0x1BFAF1350](0x7972616D6972502ELL, 0xEE006E6F74747542);
    v15 = sub_1BA4A6758();

    [v14 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v16 = sub_1BA0BAFB8();
    [v16 setAccessibilityIdentifier_];

    sub_1BA0C1124(a1, 0);
    v17 = sub_1BA0BB55C();
    [v17 setAccessibilityIdentifier_];

    v18 = sub_1BA0BB944();
    v19 = &v18[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier];
    swift_beginAccess();
    *v19 = a1;
    *(v19 + 1) = 0;

    [v18 setAccessibilityIdentifier_];
    v11 = sub_1BA44666C();
    [v11 setAccessibilityIdentifier_];
  }
}

double sub_1BA0C1124(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    v18 = sub_1BA0BB498();
    [v18 setAccessibilityIdentifier_];

    v19 = [*(v4 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView) arrangedSubviews];
    sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
    v6 = sub_1BA4A6B08();

    v50 = v5;
    if (v6 >> 62)
    {
      v20 = sub_1BA4A7CC8();
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_20:
        v21 = 0;
        v11 = v6 & 0xC000000000000001;
        v22 = MEMORY[0x1E69E7CC0];
LABEL_21:
        v23 = v21;
        while (1)
        {
          if (v11)
          {
            v24 = MEMORY[0x1BFAF2860](v23, v6);
          }

          else
          {
            if (v23 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v24 = *(v6 + 8 * v23 + 32);
          }

          v3 = v24;
          v21 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          type metadata accessor for LabelWithIndicatorView();
          if (swift_dynamicCastClass())
          {
            MEMORY[0x1BFAF1510]();
            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
            v22 = v5;
            if (v21 == v20)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          }

          ++v23;
          if (v21 == v20)
          {
            goto LABEL_56;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_56:

    if (v22 >> 62)
    {
      goto LABEL_68;
    }

    v36 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v37 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1BFAF2860](v37, v22);
        }

        else
        {
          if (v37 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v38 = *(v22 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v41 = &v38[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier];
        swift_beginAccess();
        *v41 = 0;
        *(v41 + 1) = 0;

        [v39 setAccessibilityIdentifier_];
        v42 = sub_1BA173D1C();
        [v42 setAccessibilityIdentifier_];

        v43 = sub_1BA17389C();
        [v43 setAccessibilityIdentifier_];

        ++v37;
        if (v40 == v36)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v36 = sub_1BA4A7CC8();
      if (!v36)
      {
        goto LABEL_69;
      }
    }
  }

  v6 = a2;
  v8 = sub_1BA0BB498();
  v49 = a1;

  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4E9130);
  v9 = sub_1BA4A6758();

  [v8 setAccessibilityIdentifier_];

  v10 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView) arrangedSubviews];
  sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
  v3 = sub_1BA4A6B08();

  v50 = v5;
  v11 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_39:
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

LABEL_38:
  v12 = sub_1BA4A7CC8();
  if (!v12)
  {
    goto LABEL_39;
  }

LABEL_4:
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = v13;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFAF2860](v15, v3);
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_35;
        }

        v16 = *(v3 + 8 * v15 + 32);
      }

      v17 = v16;
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      type metadata accessor for LabelWithIndicatorView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v15;
      if (v13 == v12)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1BFAF1510]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v14 = v50;
  }

  while (v13 != v12);
LABEL_40:

  if (v14 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v26 = 0;
    v47 = v14 & 0xC000000000000001;
    v48 = v6;
    v45 = v14;
    v46 = v14 & 0xFFFFFFFFFFFFFF8;
    while (v47)
    {
      v14 = MEMORY[0x1BFAF2860](v26, v14);
      v27 = v48;
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_50;
      }

LABEL_46:

      MEMORY[0x1BFAF1350](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);
      v29 = v27;
      v30 = (v14 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
      swift_beginAccess();
      *v30 = v49;
      v30[1] = v29;

      v31 = sub_1BA4A6758();
      v6 = &selRef_preferredContentSizeCategory;
      [v14 setAccessibilityIdentifier_];

      v32 = sub_1BA173D1C();

      MEMORY[0x1BFAF1350](0x74616369646E492ELL, 0xEA0000000000726FLL);
      v33 = sub_1BA4A6758();

      [v32 setAccessibilityIdentifier_];

      v34 = sub_1BA17389C();

      MEMORY[0x1BFAF1350](0x6C6562614C2ELL, 0xE600000000000000);
      v35 = sub_1BA4A6758();

      [v34 setAccessibilityIdentifier_];

      ++v26;
      v14 = v45;
      if (v28 == i)
      {
        goto LABEL_69;
      }
    }

    v27 = v48;
    if (v26 >= *(v46 + 16))
    {
      goto LABEL_51;
    }

    v14 = *(v14 + 8 * v26 + 32);
    v28 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      goto LABEL_46;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

LABEL_69:

  return result;
}

id FeatureStatusPlatformFeedItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStatusPlatformFeedItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0C1A60()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA0C1ABC(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void (*sub_1BA0C1B84(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA0C1C88(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0C1D80;

  return v6(a1);
}

uint64_t sub_1BA0C1D80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1BA0C1E78()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0C00B0();
  v6 = sub_1BA0C08D0();
  v7 = &v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_actionHandler];
  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_actionHandler];
  *v7 = v6;
  *(v7 + 1) = v9;

  sub_1BA4A3E28();
  v10 = v0;
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315394;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v28 = *v7;
    v18 = v28;
    sub_1B9F40D78(0, &qword_1EBBEB768, &qword_1EBBEB770, &protocol descriptor for SelectableViewPlatformFeedItemViewActionHandler, 0);
    v19 = v18;
    v20 = sub_1BA4A6808();
    v22 = sub_1B9F0B82C(v20, v21, &v29);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "%s didSelectCell actionHandler: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  v23 = *v7;
  if (*v7)
  {
    v24 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v26 = *(v24 + 16);
    v27 = v23;
    v26(ObjectType, v24);
  }
}

void sub_1BA0C2110(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_containerViewBackgroundColor];
LABEL_11:
    [v2 setBackgroundColor_];

    return;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA04B338(v2 + v3, v31);
  v4 = v32;
  if (v32)
  {
    v5 = v33;
    v6 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6, v6);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    (*(v5 + 40))(&v30, v4, v5);
    (*(v7 + 8))(v10, v4);
    if (v30 - 6 < 2)
    {
      v18 = objc_opt_self();
      v19 = [v18 systemGray5Color];
      v20 = [v18 tertiarySystemGroupedBackgroundColor];
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = v20;
      v21[4] = 0;
      v21[5] = v19;
      v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v28 = sub_1B9FD7F54;
      v29 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v16 = &block_descriptor_20;
    }

    else
    {
      if (v30 != 4 && v30 != 12)
      {
        v17 = [objc_opt_self() systemGray5Color];
        goto LABEL_10;
      }

      v11 = objc_opt_self();
      v12 = [v11 systemGray5Color];
      v13 = [v11 systemGray4Color];
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = v13;
      v14[4] = 0;
      v14[5] = v12;
      v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v28 = sub_1B9FE1088;
      v29 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v16 = &block_descriptor_77_1;
    }

    v26 = sub_1B9F7EBBC;
    v27 = v16;
    v22 = _Block_copy(&aBlock);
    v17 = [v15 initWithDynamicProvider_];
    _Block_release(v22);

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_11;
  }

  __break(1u);
}

void _s18HealthExperienceUI33FeatureStatusPlatformFeedItemViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v67 - v9;
  v11 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectWeakInit();
  v12 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_actionHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_containerViewBackgroundColor;
  v15 = objc_opt_self();
  *(v1 + v14) = [v15 secondarySystemGroupedBackgroundColor];
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView) = 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteColor;
  *(v1 + v16) = [v15 secondaryLabelColor];
  v17 = *MEMORY[0x1E69DDD28];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];

  v21 = &selRef_createHKUnitPreferenceController;
  if (v20)
  {
    v22 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
  }

  else
  {
    v70 = v6;
    v71 = v3;
    sub_1BA4A3DD8();
    v23 = v17;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v69 = v2;
      v27 = v26;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v74 = v68;
      *v27 = 136315906;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = sub_1B9F0B82C(v28, v29, &v74);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v72 = 0;
      v73 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v74);

      *(v27 + 14) = v33;
      *(v27 + 22) = 2080;
      LODWORD(v72) = 2;
      type metadata accessor for SymbolicTraits(0);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v74);

      *(v27 + 24) = v36;
      *(v27 + 32) = 2112;
      v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v27 + 34) = v37;
      v38 = v67;
      *v67 = v37;
      _os_log_impl(&dword_1B9F07000, v24, v25, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v27, 0x2Au);
      sub_1B9F8C6C8(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      v39 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      v40 = v27;
      v2 = v69;
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    v3 = v71;
    (*(v71 + 8))(v10, v2);
    v41 = [v18 preferredFontDescriptorWithTextStyle_];
    v21 = &selRef_createHKUnitPreferenceController;
    v22 = [objc_opt_self() fontWithDescriptor:v41 size:0.0];

    v6 = v70;
  }

  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteFont) = v22;
  v42 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkColor;
  *(v1 + v42) = [v15 systemBlueColor];
  v43 = *MEMORY[0x1E69DDD80];
  v44 = [v18 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v44)
  {
    v45 = v44;
    v46 = [objc_opt_self() fontWithDescriptor:v44 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v47 = v43;
    v48 = sub_1BA4A3E88();
    v49 = v6;
    v50 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v48, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v74 = v68;
      *v51 = 136315906;
      v53 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v69 = v2;
      v55 = sub_1B9F0B82C(v53, v54, &v74);
      v71 = v3;
      v56 = v55;

      *(v51 + 4) = v56;
      v70 = v49;
      *(v51 + 12) = 2080;
      v72 = 0;
      v73 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v57 = sub_1BA4A6808();
      v59 = sub_1B9F0B82C(v57, v58, &v74);

      *(v51 + 14) = v59;
      *(v51 + 22) = 2080;
      LODWORD(v72) = 0;
      type metadata accessor for SymbolicTraits(0);
      v60 = sub_1BA4A6808();
      v62 = sub_1B9F0B82C(v60, v61, &v74);

      *(v51 + 24) = v62;
      *(v51 + 32) = 2112;
      v63 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v51 + 34) = v63;
      *v52 = v63;
      _os_log_impl(&dword_1B9F07000, v48, v50, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v51, 0x2Au);
      sub_1B9F8C6C8(v52);
      MEMORY[0x1BFAF43A0](v52, -1, -1);
      v64 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v64, -1, -1);
      v65 = v51;
      v21 = &selRef_createHKUnitPreferenceController;
      MEMORY[0x1BFAF43A0](v65, -1, -1);

      (*(v71 + 8))(v70, v69);
    }

    else
    {

      (*(v3 + 8))(v49, v2);
    }

    v45 = [v18 preferredFontDescriptorWithTextStyle_];
    v46 = [objc_opt_self() v21[99]];
  }

  v66 = v46;

  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkFont) = v66;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA0C2D44(uint64_t a1)
{
  v4 = *(sub_1BA4A30B8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA0C2E3C;

  return sub_1BA0BED44(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1BA0C2E3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA0C3398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA0C33E0()
{
  result = qword_1EBBEB778;
  if (!qword_1EBBEB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB778);
  }

  return result;
}

uint64_t sub_1BA0C3488(uint64_t a1, uint64_t a2)
{
  sub_1B9F6BF24(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0C3508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F6BF24(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA0C3564(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C36D8;

  return sub_1BA0C1C88(a1, v4);
}

uint64_t sub_1BA0C361C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C2E3C;

  return sub_1BA0C1C88(a1, v4);
}

uint64_t RootNavigationMode.hashValue.getter(char a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1 & 1);
  return sub_1BA4A84D8();
}

uint64_t static TraitRootNavigationMode.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EDC66668 = a1 & 1;
  return result;
}

uint64_t static TraitRootNavigationMode.identifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEB780;

  return v0;
}

double static TraitRootNavigationMode.identifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBEB780 = a1;
  off_1EBBEB788 = a2;

  return result;
}

double sub_1BA0C3954(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEB780 = v2;
  off_1EBBEB788 = v1;

  return result;
}

uint64_t sub_1BA0C39B8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EDC66668;
  return result;
}

uint64_t sub_1BA0C3A04()
{
  swift_beginAccess();
  v0 = qword_1EBBEB780;

  return v0;
}

uint64_t UIMutableTraits.rootNavigationMode.getter(uint64_t a1, uint64_t a2)
{
  sub_1BA0C3AC4();
  sub_1BA4A3FF8();
  return v3;
}

unint64_t sub_1BA0C3AC4()
{
  result = qword_1EDC66660;
  if (!qword_1EDC66660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC66660);
  }

  return result;
}

uint64_t (*UIMutableTraits.rootNavigationMode.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_1BA0C3AC4();
  sub_1BA4A3FF8();
  *(a1 + 25) = *(a1 + 24);
  return sub_1BA0C3BF8;
}

uint64_t sub_1BA0C3BF8(uint64_t *a1)
{
  *(a1 + 24) = *(a1 + 25);
  sub_1BA0C3AC4();
  return sub_1BA4A4008();
}

uint64_t UITraitCollection.rootNavigationMode.getter()
{
  sub_1BA0C3AC4();
  sub_1BA4A7358();
  return v1;
}

unint64_t sub_1BA0C3C94()
{
  result = qword_1EDC67F18;
  if (!qword_1EDC67F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67F18);
  }

  return result;
}

void *HKTAlertDetailFactory.makeViewController(hkType:context:)(void *a1, uint64_t a2)
{
  v4 = [a1 identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  v8 = v5 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v7;
  if (v8 || (sub_1BA4A8338() & 1) != 0 || (v5 == 0xD000000000000029 ? (v9 = 0x80000001BA4E9230 == v7) : (v9 = 0), v9 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000031 && 0x80000001BA4E9260 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000033 && 0x80000001BA4E92D0 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD00000000000002DLL && 0x80000001BA4E9310 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000033 && 0x80000001BA4E9340 == v7 || (sub_1BA4A8338() & 1) != 0))
  {

    return HKTDataTypeDetailFactory.makeViewController(hkType:context:)(a1, a2);
  }

  if (v5 == 0xD000000000000038 && 0x80000001BA4E9380 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000031 && 0x80000001BA4E93C0 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000030 && 0x80000001BA4E9400 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000031 && 0x80000001BA4E9440 == v7 || (sub_1BA4A8338() & 1) != 0)
  {

    v11 = "ugin.healthplugin";
    v12 = 0xD000000000000025;
    return sub_1BA045704(a1, v12, v11 | 0x8000000000000000, a2);
  }

  if (v5 == 0xD000000000000027 && 0x80000001BA4E9480 == v7 || (sub_1BA4A8338() & 1) != 0)
  {

    v11 = "entifierHypertensionEvent";
    v12 = 0xD000000000000021;
    return sub_1BA045704(a1, v12, v11 | 0x8000000000000000, a2);
  }

  if (v5 == 0xD000000000000029 && 0x80000001BA4E94B0 == v7)
  {

    return HKTDataTypeDetailFactory.makeViewController(hkType:context:)(a1, a2);
  }

  v13 = sub_1BA4A8338();

  if (v13)
  {
    return HKTDataTypeDetailFactory.makeViewController(hkType:context:)(a1, a2);
  }

  sub_1BA045D5C();
  swift_allocError();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 2;
  return swift_willThrow();
}

void sub_1BA0C4168(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  [*&v1[v2] removeFromSuperview];
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 insertSubview:*&v1[v2] atIndex:0];

    v5 = *&v1[v2];
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA0C4288@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA0C695C;
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

uint64_t sub_1BA0C4328(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0C6958;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B9F0F1B8(v3, v4);
  return sub_1B9F0E310(v8, v9);
}

uint64_t sub_1BA0C4468@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA0A4A28;
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

uint64_t sub_1BA0C4508(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0C68C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B9F0F1B8(v3, v4);
  return sub_1B9F0E310(v8, v9);
}

uint64_t sub_1BA0C45DC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1B9F0F1B8(*v2, v2[1]);
  return v3;
}

uint64_t sub_1BA0C4640(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1B9F0E310(v7, v8);
}

id sub_1BA0C46FC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  return [*(v3 + v5) setHidden_];
}

uint64_t sub_1BA0C4780()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1BA0C47C4(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  return [*(v1 + v4) setHidden_];
}

uint64_t (*sub_1BA0C4848(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA0C48D0;
}

void sub_1BA0C48D0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
    swift_beginAccess();
    [*(v5 + v6) setHidden_];
  }

  free(v3);
}

id sub_1BA0C4958()
{
  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton);
  if (result)
  {
    return [result isUserInteractionEnabled];
  }

  return result;
}

id sub_1BA0C4988(id result)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton;
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton))
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton) setUserInteractionEnabled_];
    result = *(v1 + v2);
    if (result)
    {

      return [result setNeedsUpdateConfiguration];
    }
  }

  return result;
}

id (*sub_1BA0C49F4(uint64_t a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    LOBYTE(v4) = [v4 isUserInteractionEnabled];
  }

  *(a1 + 16) = v4;
  return sub_1BA0C4A54;
}

id sub_1BA0C4A54(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  result = *(*a1 + v2);
  if (result)
  {
    [result setUserInteractionEnabled_];
    result = *(v3 + v2);
    if (result)
    {

      return [result setNeedsUpdateConfiguration];
    }
  }

  return result;
}

void sub_1BA0C4ABC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA0C4B1C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA0C4B70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CameraScannerOverlayWithButtonsViewController.__allocating_init(title:detail:detailMaxNumberOfLines:primaryButtonTitle:primaryButtonImage:cancelButtonTitle:headerView:headerHeight:overlayMode:automationIdentifierPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, uint64_t a10, uint64_t a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v23 = objc_allocWithZone(v16);
  v24 = *a13;
  v25 = *(a13 + 8);
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton] = 0;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButton] = 0;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_topPaddingConstraint] = 0;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_customContentView] = 0;
  v26 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler];
  *v27 = 0;
  v27[1] = 0;
  v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground] = 1;
  v28 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonTitle];
  *v28 = a6;
  v28[1] = a7;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonImage] = a8;
  v29 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButtonTitle];
  *v29 = a10;
  v29[1] = a11;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderView] = a12;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderHeight] = a9;
  v30 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_titleText];
  *v30 = a1;
  v30[1] = a2;
  v31 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailText];
  *v31 = a3;
  v31[1] = a4;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailMaxNumberOfLines] = a5;
  v32 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix];
  *v32 = a14;
  v32[1] = a15;
  v51 = v24;
  v52 = v25;
  v33 = a12;

  v34 = a8;

  CameraScannerOverlayMode.createView()(v35);
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView] = v36;
  v37 = sub_1BA4A6758();
  v50.receiver = v23;
  v50.super_class = v49;
  v38 = objc_msgSendSuper2(&v50, sel_initWithTitle_detailText_icon_contentLayout_, v37, 0, 0, 2);

  v39 = v38;
  result = [v39 view];
  if (result)
  {
    v41 = result;

    v42 = objc_opt_self();
    v43 = [v42 clearColor];
    [v41 setBackgroundColor_];

    v44 = [v39 contentView];
    v45 = [v42 clearColor];
    [v44 setBackgroundColor_];

    [v39 setOverrideUserInterfaceStyle_];
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CameraScannerOverlayWithButtonsViewController.init(title:detail:detailMaxNumberOfLines:primaryButtonTitle:primaryButtonImage:cancelButtonTitle:headerView:headerHeight:overlayMode:automationIdentifierPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, uint64_t a10, uint64_t a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v18 = *a13;
  v19 = *(a13 + 8);
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButton] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_topPaddingConstraint] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_customContentView] = 0;
  v20 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler];
  *v21 = 0;
  v21[1] = 0;
  v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground] = 1;
  v22 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonTitle];
  *v22 = a6;
  v22[1] = a7;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonImage] = a8;
  v23 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButtonTitle];
  *v23 = a10;
  v23[1] = a11;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderView] = a12;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderHeight] = a9;
  v24 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_titleText];
  *v24 = a1;
  v24[1] = a2;
  v25 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailText];
  *v25 = a3;
  v25[1] = a4;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailMaxNumberOfLines] = a5;
  v26 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix];
  *v26 = a14;
  v26[1] = a15;
  v41 = v18;
  v42 = v19;
  v27 = a12;

  v28 = a8;

  CameraScannerOverlayMode.createView()(v29);
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView] = v30;
  v31 = sub_1BA4A6758();
  v40.receiver = v16;
  v40.super_class = type metadata accessor for CameraScannerOverlayWithButtonsViewController();
  v32 = objc_msgSendSuper2(&v40, sel_initWithTitle_detailText_icon_contentLayout_, v31, 0, 0, 2);

  v33 = v32;
  result = [v33 view];
  if (result)
  {
    v35 = result;

    v36 = objc_opt_self();
    v37 = [v36 clearColor];
    [v35 setBackgroundColor_];

    v38 = [v33 contentView];
    v39 = [v36 clearColor];
    [v38 setBackgroundColor_];

    [v33 setOverrideUserInterfaceStyle_];
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA0C5328(void *a1, const char *a2, ...)
{
  v5 = v2;
  swift_getObjectType();
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v5 + *a1;
  swift_beginAccess();
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 8);

    v12(v5);
    return sub_1B9F0E310(v12, v13);
  }

  else
  {
    sub_1BA4A3DF8();
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446210;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1B9F07000, v15, v16, a2, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

void sub_1BA0C5588()
{
  v1 = v0;
  sub_1BA0C6900(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A7838();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A79A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A6758();
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v14 = swift_allocObject();
  v34 = xmmword_1BA4B5460;
  *(v14 + 16) = xmmword_1BA4B5460;
  v15 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix];
  v16 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix + 8];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  strcpy((v14 + 48), "PrimaryButton");
  *(v14 + 62) = -4864;

  v17 = sub_1BA4A6AE8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  v19 = [v1 hxui:v13 addPrimaryFooterButtonWithTitle:v18 accessibilityIdentifier:?];
  if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButtonTitle + 8])
  {
    v20 = sub_1BA4A6758();
    v21 = swift_allocObject();
    *(v21 + 16) = v34;
    *(v21 + 32) = v15;
    *(v21 + 40) = v16;
    strcpy((v21 + 48), "CancelButton");
    *(v21 + 61) = 0;
    *(v21 + 62) = -5120;

    v22 = sub_1BA4A6AE8();

    v23 = HKUIJoinStringsForAutomationIdentifier();

    v24 = [v1 hxui:v20 addSecondaryFooterButtonWithTitle:0 bold:v23 accessibilityIdentifier:?];
    v25 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButton];
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButton] = v24;

    sub_1BA4A7988();
    (*(v36 + 104))(v35, *MEMORY[0x1E69DC508], v37);
    sub_1BA4A7848();
    v26 = objc_opt_self();
    v27 = [v26 tintColor];
    sub_1BA4A78F8();
    v28 = [v26 whiteColor];
    v29 = sub_1BA4A7808();
    sub_1BA4A4118();
    v29(v39, 0);
  }

  else
  {
    sub_1BA4A7948();
  }

  v30 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonImage];
  sub_1BA4A7958();
  sub_1BA4A7898();
  v31 = v38;
  (*(v9 + 16))(v38, v12, v8);
  (*(v9 + 56))(v31, 0, 1, v8);
  v32 = v19;
  sub_1BA4A79D8();

  (*(v9 + 8))(v12, v8);
  v33 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton] = v32;
}

void sub_1BA0C5A44()
{
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_titleText);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_titleText + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailMaxNumberOfLines);
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderView);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderHeight);
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailText);
  v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailText + 8);
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix);
  v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix + 8);
  v10 = type metadata accessor for CameraScannerOverlayContentView();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView] = 0;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___titleLabel] = 0;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___detailLabel] = 0;
  v12 = &v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_title];
  *v12 = v2;
  *(v12 + 1) = v1;
  v13 = &v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detail];
  *v13 = v7;
  *(v13 + 1) = v6;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detailMaxNumberOfLines] = v3;
  if (v4)
  {

    v14 = v4;
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x1E69DD250]);

    v14 = [v15 init];
    v4 = 0;
  }

  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView] = v14;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerHeight] = v5;
  v16 = &v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix];
  *v16 = v8;
  *(v16 + 1) = v9;
  v56.receiver = v11;
  v56.super_class = v10;
  v17 = v4;
  v18 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B8B60;
  v53 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView;
  v20 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView];
  *(inited + 32) = v20;
  v54 = v18;
  v21 = v18;
  v22 = v20;
  *(inited + 40) = sub_1BA2DE928();
  *(inited + 48) = sub_1BA2DEB5C();
  v23 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView;
  v24 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1BFAF2860](0, inited))
  {
    v26 = i;
    v27 = sub_1BA2DE850();
    [v27 addArrangedSubview_];

    [v26 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v24)
    {
      v28 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v28 = *(inited + 40);
    }

    v29 = v28;
    v30 = sub_1BA2DE850();
    [v30 addArrangedSubview_];

    [v29 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v24)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v31 = *(inited + 48);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v31 = MEMORY[0x1BFAF2860](2, inited);
LABEL_13:
  v32 = v31;
  v33 = sub_1BA2DE850();
  [v33 addArrangedSubview_];

  [v32 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
  swift_setDeallocating();
  swift_arrayDestroy();
  v34 = v21;
  v35 = sub_1BA2DE850();
  [v34 addSubview_];

  v52 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4B5880;
  v37 = [*&v54[v53] heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v36 + 32) = v38;
  v39 = [*&v21[v23] leadingAnchor];
  v40 = [v34 leadingAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v36 + 40) = v41;
  v42 = [*&v21[v23] trailingAnchor];
  v43 = [v34 trailingAnchor];

  v44 = [v42 constraintEqualToAnchor_];
  *(v36 + 48) = v44;
  v45 = [*&v21[v23] topAnchor];
  v46 = [v34 topAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v36 + 56) = v47;
  v48 = [v34 heightAnchor];

  v49 = [*&v21[v23] heightAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v36 + 64) = v50;
  sub_1B9F740B0();
  v51 = sub_1BA4A6AE8();

  [v52 activateConstraints_];

  [v55 setCenteredContentView_];
}

id CameraScannerOverlayWithButtonsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id CameraScannerOverlayWithButtonsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id CameraScannerOverlayWithButtonsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerOverlayWithButtonsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA0C6460(uint64_t *a1))(void *a1, char a2)
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
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA0C48D0;
}

uint64_t sub_1BA0C68C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1BA0C6900(uint64_t a1)
{
  if (!qword_1EDC5E0A8)
  {
    sub_1BA4A79A8();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E0A8);
    }
  }
}

uint64_t SummarySharingOnboardingError.init(error:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = a1;
  v5 = a1;
  v6 = MEMORY[0x1BFAED310](a1);
  if (v6 > 4 || ((1 << v6) & 0x13) == 0)
  {

    v8 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    type metadata accessor for HKError(0);
    if (swift_dynamicCast())
    {
      sub_1BA0C6B4C();
      v9 = sub_1BA4A1468();

      *a2 = v9;
      type metadata accessor for SummarySharingOnboardingError(0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_10:
    type metadata accessor for SummarySharingOnboardingError(0);
    return swift_storeEnumTagMultiPayload();
  }

  v7 = MEMORY[0x1BFAED310](a1);

  *a2 = v7;
  sub_1BA4A2918();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SummarySharingOnboardingError(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for SummarySharingOnboardingError(uint64_t a1)
{
  result = qword_1EBBEB908;
  if (!qword_1EBBEB908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA0C6B4C()
{
  result = qword_1EBBE9090;
  if (!qword_1EBBE9090)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9090);
  }

  return result;
}

void sub_1BA0C6BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v73 = a8;
  v74 = a7;
  v71 = a2;
  v72 = a3;
  v75 = a1;
  v12 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v66 - v18;
  v20 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA0CAA54(v8, v23, type metadata accessor for SummarySharingOnboardingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v70 = a6;
    if ((EnumCaseMultiPayload - 5) < 4)
    {
LABEL_10:
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v36 = sub_1BA4A1318();
      sub_1BA2C84D8(v75, v71, v72, v36, v37, MEMORY[0x1E69E7CC0], v74, v73);

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1BA2C84D8(v75, v71, v72, a4, a5, v70, v74, v73);
    }

    else
    {
      v72 = v8;
      v43 = *v23;
      v44 = v23[1];
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v45 = swift_allocObject();
      v68 = xmmword_1BA4B5480;
      *(v45 + 16) = xmmword_1BA4B5480;
      *(v45 + 56) = MEMORY[0x1E69E6158];
      v46 = sub_1B9F1BE20();
      *(v45 + 64) = v46;
      *(v45 + 32) = v43;
      *(v45 + 40) = v44;

      v69 = sub_1BA4A6768();
      v71 = v47;

      sub_1BA4A1318();
      v48 = swift_allocObject();
      *(v48 + 16) = v68;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = v46;
      *(v48 + 32) = v43;
      *(v48 + 40) = v44;
      v67 = sub_1BA4A6768();
      *&v68 = v49;

      *&v81 = MEMORY[0x1E69E7CC0];
      sub_1BA4A1318();
      v50 = swift_allocObject();
      v52 = v73;
      v51 = v74;
      *(v50 + 16) = v74;
      *(v50 + 24) = v52;
      sub_1B9F0F1B4(v51, v52);
      v53 = sub_1BA4A6758();

      v78 = sub_1BA0CAC90;
      v79 = v50;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v77 = sub_1BA0B06D4;
      *(&v77 + 1) = &block_descriptor_23;
      v54 = _Block_copy(&aBlock);

      v55 = objc_opt_self();
      v56 = [v55 actionWithTitle:v53 style:0 handler:v54];
      _Block_release(v54);

      sub_1BA4A1318();
      v57 = sub_1BA4A6758();

      v78 = sub_1BA0C8344;
      v79 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v77 = sub_1BA0B06D4;
      *(&v77 + 1) = &block_descriptor_26;
      v58 = _Block_copy(&aBlock);

      v59 = [v55 actionWithTitle:v57 style:0 handler:v58];
      _Block_release(v58);

      v60 = v56;
      MEMORY[0x1BFAF1510]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v61 = v59;
      MEMORY[0x1BFAF1510]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();

      sub_1B9FE23D0(v62);
      sub_1BA2C84D8(v75, v69, v71, v67, v68, v81, v74, v52);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1BA0C851C(v75, *v23, v74, v73);
        goto LABEL_21;
      }

      if (*v23 == 730)
      {
        v25 = v75;
        v80 = v75;
        sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
        sub_1B9F0D950(0, &qword_1EBBEB918, &protocol descriptor for SharingContactNameProviding);
        v26 = v25;
        if (swift_dynamicCast())
        {
          v27 = __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
          v28 = *v27 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact;
          aBlock = *v28;
          v77 = *(v28 + 16);
          v78 = *(v28 + 32);
          v29 = sub_1BA1FAFCC(v27);
          v31 = v30;
          __swift_destroy_boxed_opaque_existential_1(&v81);
          if (qword_1EDC5E100 != -1)
          {
            swift_once();
          }

          sub_1BA4A1318();
          sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1BA4B5480;
          *(v32 + 56) = MEMORY[0x1E69E6158];
          *(v32 + 64) = sub_1B9F1BE20();
          *(v32 + 32) = v29;
          *(v32 + 40) = v31;
          v33 = sub_1BA4A6768();
          v35 = v34;
        }

        else
        {
          v83 = 0;
          v81 = 0u;
          v82 = 0u;
          sub_1BA0CAC08(&v81);
          if (qword_1EDC5E100 != -1)
          {
            swift_once();
          }

          v33 = sub_1BA4A1318();
          v35 = v63;
        }

        if (qword_1EDC5E100 != -1)
        {
          swift_once();
        }

        v64 = sub_1BA4A1318();
        sub_1BA2C84D8(v26, v33, v35, v64, v65, MEMORY[0x1E69E7CC0], 0, 0);

        goto LABEL_21;
      }

      goto LABEL_10;
    }

    if (swift_getEnumCaseMultiPayload() == 1 && (sub_1BA0CAA54(v23, v19, MEMORY[0x1E69A3190]), *v19 == 4))
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v38 = sub_1BA4A1318();
      v40 = v39;
      v41 = sub_1BA4A1318();
      sub_1BA2C84D8(v75, v38, v40, v41, v42, MEMORY[0x1E69E7CC0], v74, v73);

      sub_1BA0CAC94(v23, MEMORY[0x1E69A3190]);
    }

    else
    {
      sub_1BA0CA998(v23, v15, MEMORY[0x1E69A3190]);
      sub_1BA0C8C3C(v15, v75, v74, v73);
      sub_1BA0CAC94(v15, MEMORY[0x1E69A3190]);
    }
  }

LABEL_21:
  SummarySharingOnboardingError.submitAnalyticsIfNeeded()();
}

void static SummarySharingOnboardingErrorHandling.displayError(on:title:message:customActions:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v53 = a7;
  v56 = a2;
  v57 = a4;
  v14 = sub_1BA4A3EA8();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A64F8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v22 = sub_1BA4A7308();
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v23 = sub_1BA4A6528();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v24, v25))
  {
    v51 = a8;
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58 = v50;
    *v26 = 136315650;
    v27 = sub_1BA4A85D8();
    v29 = sub_1B9F0B82C(v27, v28, &v58);
    v52 = a1;
    v30 = v29;

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    aBlock = v56;
    v60 = a3;
    sub_1B9F63FA8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

    v31 = sub_1BA4A6808();
    v33 = sub_1B9F0B82C(v31, v32, &v58);
    a1 = v52;

    *(v26 + 14) = v33;
    *(v26 + 22) = 2080;
    aBlock = v57;
    v60 = a5;

    v34 = sub_1BA4A6808();
    v36 = sub_1B9F0B82C(v34, v35, &v58);

    *(v26 + 24) = v36;
    a8 = v51;
    _os_log_impl(&dword_1B9F07000, v24, v25, "[%s] Received an error: %s, %s", v26, 0x20u);
    v37 = v50;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v37, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
  }

  (*(v54 + 8))(v17, v55);
  if (a3)
  {
    v38 = sub_1BA4A6758();
    if (a5)
    {
LABEL_6:
      v39 = sub_1BA4A6758();
      goto LABEL_9;
    }
  }

  else
  {
    v38 = 0;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  v39 = 0;
LABEL_9:
  v17 = [objc_opt_self() alertControllerWithTitle:v38 message:v39 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v41 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1BFAF2860](v41, a6);
      }

      else
      {
        if (v41 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v42 = *(a6 + 8 * v41 + 32);
      }

      v43 = v42;
      a8 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      [v17 addAction_];

      ++v41;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v44 = swift_allocObject();
  v45 = v53;
  *(v44 + 16) = v53;
  *(v44 + 24) = a8;
  sub_1B9F0F1B4(v45, a8);
  v46 = sub_1BA4A6758();

  v63 = sub_1BA0CAF80;
  v64 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1BA0B06D4;
  v62 = &block_descriptor_21;
  v47 = _Block_copy(&aBlock);

  v48 = [objc_opt_self() actionWithTitle:v46 style:0 handler:v47];
  _Block_release(v47);

  [v17 addAction_];
LABEL_26:
  [a1 presentViewController:v17 animated:1 completion:0];
}

double static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v12 = sub_1BA4A1318();
  static SummarySharingOnboardingErrorHandling.displayError(on:title:message:customActions:completion:)(a1, a2, a3, v12, v13, MEMORY[0x1E69E7CC0], a4, a5, a6);

  return result;
}

uint64_t SummarySharingOnboardingError.init(syncStatus:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummarySharingOnboardingError(0);
  v13 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4, v5).n128_u64[0];
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 syncEnabled] & 1) == 0)
  {

LABEL_8:
    sub_1BA4A2918();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1BA0CA998(v8, a2, type metadata accessor for SummarySharingOnboardingError);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }

  if (([a1 accountSupportsSecureContainer] & 1) == 0)
  {
    v11 = [a1 syncEnabled];

    *v8 = v11;
    goto LABEL_8;
  }

  v9 = *(v13 + 56);

  return v9(a2, 1, 1, v4);
}

uint64_t sub_1BA0C8198()
{
  sub_1B9F63FA8(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBEB818);
  __swift_project_value_buffer(v1, qword_1EBBEB818);
  sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
  sub_1BA4A70E8();
  return sub_1BA4A1CC8();
}

uint64_t sub_1BA0C8270()
{
  sub_1B9F63FA8(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EDC63A58);
  __swift_project_value_buffer(v1, qword_1EDC63A58);
  sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
  sub_1BA4A70E8();
  return sub_1BA4A1CC8();
}

uint64_t sub_1BA0C8344()
{
  sub_1BA011090(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A15D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A15C8();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1BA0CAC94(v3, sub_1BA011090);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BA4A1548();
    [v11 hk:v12 asyncOpenURL:?];
  }

  return (*(v5 + 8))(v8, v4);
}

double sub_1BA0C851C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a1;
  sub_1B9F63FA8(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v11 = sub_1BA4A1318();
  v13 = v12;
  if (!a2)
  {
    v24 = v11;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v24 = v11;
LABEL_7:
    sub_1BA4A1318();
    sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5480;
    if (qword_1EBBE8328 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_1EBBEB818);
    (*(v7 + 16))(v10, v15, v6);
    sub_1BA4A1CA8();
    (*(v7 + 8))(v10, v6);
    v16 = sub_1BA4A82D8();
    v18 = v17;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1B9F1BE20();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = sub_1BA4A6768();
    v21 = v20;

    sub_1BA2C84D8(v25, v24, v13, v19, v21, MEMORY[0x1E69E7CC0], v26, v27);

    return result;
  }

  return result;
}

double static SummarySharingOnboardingErrorHandling.displayMaxNumberRelationshipsError(on:for:completion:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  sub_1B9F63FA8(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v24 - v10;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v12 = sub_1BA4A1318();
  v14 = v13;
  if (!a2)
  {
    v24 = v12;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v24 = v12;
LABEL_7:
    sub_1BA4A1318();
    sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BA4B5480;
    if (qword_1EBBE8328 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v7, qword_1EBBEB818);
    (*(v8 + 16))(v11, v16, v7);
    sub_1BA4A1CA8();
    (*(v8 + 8))(v11, v7);
    v17 = sub_1BA4A82D8();
    v19 = v18;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1B9F1BE20();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    v20 = sub_1BA4A6768();
    v22 = v21;

    static SummarySharingOnboardingErrorHandling.displayError(on:title:message:customActions:completion:)(v25, v24, v14, v20, v22, MEMORY[0x1E69E7CC0], v27, v28, v26);

    return result;
  }

  return result;
}

double sub_1BA0C8C3C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1BA4A2918();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  sub_1BA0CA004(&aBlock);
  if (v44)
  {
    v34 = v9;
    v35 = a1;
    v12 = v45;
    v13 = v46;
    v37 = v48;
    v38 = v47;
    v41 = aBlock;
    v42 = a2;
    v36 = v44;
    v14 = sub_1BA4A6758();
    v39 = v13;
    v40 = v12;
    v15 = sub_1BA4A6758();
    v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    sub_1B9F0F1B4(a3, a4);
    v18 = sub_1BA4A6758();

    v47 = sub_1BA0CAF80;
    v48 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1BA0B06D4;
    v46 = &block_descriptor_33_0;
    v19 = _Block_copy(&aBlock);

    v20 = objc_opt_self();
    v21 = [v20 actionWithTitle:v18 style:1 handler:v19];
    _Block_release(v19);

    sub_1BA0CAA54(v35, &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1E69A3190]);
    v22 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v23 = swift_allocObject();
    sub_1BA0CA998(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, MEMORY[0x1E69A3190]);
    v24 = (v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v24 = a3;
    v24[1] = a4;
    sub_1B9F0F1B4(a3, a4);
    v26 = v37;
    v25 = v38;
    v27 = sub_1BA4A6758();
    v47 = sub_1BA0CAF84;
    v48 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1BA0B06D4;
    v46 = &block_descriptor_40_1;
    v28 = _Block_copy(&aBlock);

    v29 = [v20 actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    [v16 addAction_];
    [v16 addAction_];
    [v42 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v31 = sub_1BA4A1318();
    sub_1BA2C84D8(a2, 0, 0, v31, v32, MEMORY[0x1E69E7CC0], a3, a4);
  }

  return result;
}

void static SummarySharingOnboardingErrorHandling.displayHealthCloudError(for:on:completion:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1BA4A2918();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  sub_1BA0CA004(&aBlock);
  if (v44)
  {
    v34 = v11;
    v42 = a2;
    v14 = v45;
    v15 = v46;
    v37 = v48;
    v38 = v47;
    v41 = aBlock;
    v36 = v44;
    v16 = sub_1BA4A6758();
    v39 = v15;
    v40 = v14;
    v17 = sub_1BA4A6758();
    v35 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    sub_1B9F0F1B4(a3, a4);
    v19 = sub_1BA4A6758();

    v47 = sub_1BA0CAF80;
    v48 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1BA0B06D4;
    v46 = &block_descriptor_6_0;
    v20 = _Block_copy(&aBlock);

    v21 = objc_opt_self();
    v22 = [v21 actionWithTitle:v19 style:1 handler:v20];
    _Block_release(v20);

    sub_1BA0CAA54(a1, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1E69A3190]);
    v23 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v24 = swift_allocObject();
    sub_1BA0CA998(&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, MEMORY[0x1E69A3190]);
    v25 = (v24 + ((v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v25 = a3;
    v25[1] = a4;
    sub_1B9F0F1B4(a3, a4);
    v27 = v37;
    v26 = v38;
    v28 = sub_1BA4A6758();
    v47 = sub_1BA0CAA00;
    v48 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1BA0B06D4;
    v46 = &block_descriptor_12;
    v29 = _Block_copy(&aBlock);

    v30 = [v21 actionWithTitle:v28 style:0 handler:v29];
    _Block_release(v29);

    v31 = sub_1BA0CAA04(v41, v36, v40, v39, v26, v27);
    v32 = v35;
    [v35 addAction_];
    [v32 addAction_];
    [v42 presentViewController:v32 animated:1 completion:0];
  }

  else
  {
    static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(a2, 0, 0, a3, a4, a5);
  }
}

Swift::Void __swiftcall SummarySharingOnboardingError.submitAnalyticsIfNeeded()()
{
  v1 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SummarySharingOnboardingError.uiAnalyticsOperation.getter(v14);
  v5 = LOBYTE(v14[0]);
  if (LOBYTE(v14[0]) == 5)
  {
    return;
  }

  sub_1BA0CAA54(v0, v4, type metadata accessor for SummarySharingOnboardingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1BA0CAC94(v4, type metadata accessor for SummarySharingOnboardingError);
      }
    }

    else if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
    {
      return;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 1)
  {
LABEL_13:
    sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
    if (v5 <= 1)
    {
      if (v5)
      {
        v8 = "accept";
      }

      else
      {
        v8 = "invite";
      }

      v7 = sub_1BA4A77C8(v8, 6, 2);
    }

    else if (v5 == 2)
    {
      v7 = sub_1BA4A77C8("decline", 7, 2);
    }

    else if (v5 == 3)
    {
      v7 = sub_1BA4A77C8("modifyPending", 13, 2);
    }

    else
    {
      v7 = sub_1BA4A77C8("modifyAccepted", 14, 2);
    }

    v9 = v7;
    v10 = sub_1BA4A6758();

    v14[5] = v9;
    v14[6] = v10;
    v11 = sub_1BA4A29B8();
    v12 = sub_1BA4A29A8();
    v14[3] = v11;
    v14[4] = MEMORY[0x1E69A3198];
    v14[0] = v12;
    sub_1BA0CAABC();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v14);

    return;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1BA0CAC94(v4, type metadata accessor for SummarySharingOnboardingError);
  }
}

HealthExperienceUI::SummarySharingOnboardingError::SharingOperation_optional __swiftcall SummarySharingOnboardingError.SharingOperation.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  v4 = rawValue;
  v5 = sub_1BA4A77C8("invite", 6, 2);
  v6 = sub_1BA4A7798();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1BA4A77C8("accept", 6, 2);
    v11 = sub_1BA4A7798();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = sub_1BA4A77C8("decline", 7, 2);
      v14 = sub_1BA4A7798();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = sub_1BA4A77C8("modifyPending", 13, 2);
        v17 = sub_1BA4A7798();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = sub_1BA4A77C8("modifyAccepted", 14, 2);
          v19 = sub_1BA4A7798();

          if (v19)
          {
            v8 = 4;
          }

          else
          {
            v8 = 5;
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t SummarySharingOnboardingError.SharingOperation.rawValue.getter()
{
  v1 = *v0;
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  if (v1 <= 1)
  {
    if (v1)
    {
      return sub_1BA4A77C8("accept", 6, 2);
    }

    else
    {
      return sub_1BA4A77C8("invite", 6, 2);
    }
  }

  else if (v1 == 2)
  {
    return sub_1BA4A77C8("decline", 7, 2);
  }

  else if (v1 == 3)
  {
    return sub_1BA4A77C8("modifyPending", 13, 2);
  }

  else
  {
    return sub_1BA4A77C8("modifyAccepted", 14, 2);
  }
}

uint64_t sub_1BA0C9B3C()
{
  v1 = *v0;
  sub_1BA4A8488();
  sub_1BA380A48(v3, v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA0C9B8C(uint64_t a1)
{
  v2 = *v1;
  sub_1BA4A8488();
  sub_1BA380A48(v4, v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA0C9BD8@<X0>(uint64_t *a1@<X8>)
{
  result = SummarySharingOnboardingError.SharingOperation.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SummarySharingOnboardingError.uiAnalyticsOperation.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CAA54(v2, v7, type metadata accessor for SummarySharingOnboardingError);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if ((result - 5) < 2)
    {
LABEL_11:
      v9 = 0;
      goto LABEL_15;
    }

    if ((result - 7) >= 2)
    {
      result = sub_1BA0CAC94(v7, type metadata accessor for SummarySharingOnboardingError);
      goto LABEL_11;
    }

LABEL_8:
    v9 = 5;
LABEL_15:
    *a1 = v9;
    return result;
  }

  if (result <= 1)
  {
    if (!result)
    {
      result = sub_1BA0CAC94(v7, type metadata accessor for SummarySharingOnboardingError);
    }

    goto LABEL_8;
  }

  if (result != 2)
  {
    v9 = *v7;
    goto LABEL_15;
  }

  v10 = *v7;
  if (!*v7)
  {
    goto LABEL_11;
  }

  if (v10 == 1)
  {
    v9 = 1;
    goto LABEL_15;
  }

  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4E9900);
  v11[1] = v10;
  type metadata accessor for HKSharingMessageDirection(0);
  sub_1BA4A7FB8();
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t SummarySharingOnboardingError.uiAnalyticsDescription.getter()
{
  v1 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CAA54(v0, v4, type metadata accessor for SummarySharingOnboardingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return 0xD000000000000016;
      }

      else
      {
        return 0xD000000000000010;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_1BA0CAC94(v4, type metadata accessor for SummarySharingOnboardingError);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1BA0CAC94(v4, type metadata accessor for SummarySharingOnboardingError);
      return 0x4364696C61766E69;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0xD00000000000001FLL;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t sub_1BA0C9FD4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

uint64_t sub_1BA0CA004@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  sub_1BA0CAA54(v2, &v20 - v10, MEMORY[0x1E69A3190]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      if (qword_1EBBE8350 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EBBEB8C0;
      goto LABEL_19;
    case 1:
      sub_1BA0CAA54(v11, v7, MEMORY[0x1E69A3190]);
      if (!*v7)
      {
        if (qword_1EBBE8340 != -1)
        {
          swift_once();
        }

        v13 = &qword_1EBBEB860;
        goto LABEL_19;
      }

      if (*v7 == 1)
      {
        if (qword_1EBBE8338 != -1)
        {
          swift_once();
        }

        v13 = &qword_1EBBEB830;
        goto LABEL_19;
      }

      break;
    case 3:
      if (qword_1EBBE8348 != -1)
      {
        swift_once();
      }

      v13 = &qword_1EBBEB890;
LABEL_19:
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      *a1 = *v13;
      a1[1] = v14;
      a1[2] = v15;
      a1[3] = v16;
      a1[4] = v17;
      a1[5] = v18;

      return sub_1BA0CAC94(v11, MEMORY[0x1E69A3190]);
  }

  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  return sub_1BA0CAC94(v11, MEMORY[0x1E69A3190]);
}

void sub_1BA0CA25C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = [objc_allocWithZone(type metadata accessor for CloudSyncFlow()) init];
  sub_1BA2FAA50(a2);

  if (a3)
  {
    a3();
  }
}

uint64_t sub_1BA0CA2C8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = sub_1BA4A1318();
  v2 = v1;
  v3 = sub_1BA4A1318();
  v5 = v4;
  result = sub_1BA4A1318();
  qword_1EBBEB830 = v0;
  *algn_1EBBEB838 = v2;
  qword_1EBBEB840 = v3;
  unk_1EBBEB848 = v5;
  qword_1EBBEB850 = result;
  unk_1EBBEB858 = v7;
  return result;
}

uint64_t sub_1BA0CA424()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = sub_1BA4A1318();
  v2 = v1;
  result = sub_1BA4A1318();
  qword_1EBBEB860 = v0;
  *algn_1EBBEB868 = v2;
  qword_1EBBEB870 = result;
  unk_1EBBEB878 = v4;
  qword_1EBBEB880 = 0xD00000000000002DLL;
  unk_1EBBEB888 = 0x80000001BA4E9D20;
  return result;
}

uint64_t sub_1BA0CA558()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = sub_1BA4A1318();
  v2 = v1;
  v3 = sub_1BA4A1318();
  v5 = v4;
  result = sub_1BA4A1318();
  qword_1EBBEB890 = v0;
  *algn_1EBBEB898 = v2;
  qword_1EBBEB8A0 = v3;
  unk_1EBBEB8A8 = v5;
  qword_1EBBEB8B0 = result;
  unk_1EBBEB8B8 = v7;
  return result;
}

uint64_t sub_1BA0CA6B4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = sub_1BA4A1318();
  v2 = v1;
  v3 = sub_1BA4A1318();
  v5 = v4;
  result = sub_1BA4A1318();
  qword_1EBBEB8C0 = v0;
  *algn_1EBBEB8C8 = v2;
  qword_1EBBEB8D0 = v3;
  unk_1EBBEB8D8 = v5;
  qword_1EBBEB8E0 = result;
  unk_1EBBEB8E8 = v7;
  return result;
}

void (*sub_1BA0CA818(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BA0CAF60;
  }

  __break(1u);
  return result;
}

void (*sub_1BA0CA898(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BA04AB5C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BA0CA918(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1BA0CAF64;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA0CA998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1BA0CAA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BA0CAA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA0CAABC()
{
  result = qword_1EBBEB8F8;
  if (!qword_1EBBEB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB8F8);
  }

  return result;
}

unint64_t sub_1BA0CAB14()
{
  result = qword_1EBBEB900;
  if (!qword_1EBBEB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB900);
  }

  return result;
}

void sub_1BA0CAB68(uint64_t a1)
{
  sub_1BA4A2918();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKSharingMessageDirection(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1BA0CAC08(uint64_t a1)
{
  sub_1B9F1B310(0, &qword_1EBBEB920, &qword_1EBBEB918, &protocol descriptor for SharingContactNameProviding, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0CAC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA0CACF4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1BA0CAD24(uint64_t a1)
{
  v3 = *(sub_1BA4A2918() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA0CA25C(a1, v1 + v4, v5);
}

uint64_t *sub_1BA0CADC4(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1B9FCF2B8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BA0CAE44(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1BA0CAEC4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1BA0CAECC(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1B9FCDD1C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA0CAF88()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1B9F0D08C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v30 = &v27 - v3;
  v4 = sub_1BA4A3FB8();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BA4A3F18();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D08C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  v20 = sub_1BA31D5B4();
  MEMORY[0x1BFAF1F00](v20);
  v21 = sub_1BA4A4168();
  if ((*(*(v21 - 8) + 48))(v19, 1, v21))
  {
    v22 = MEMORY[0x1E69DC0D8];
    sub_1BA0CBC80(v19, v15, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v15);
    sub_1B9F43D14(v19, &qword_1EDC6B770, v22);
  }

  else
  {
    v23 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v19);
  }

  sub_1B9F0D08C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  v24 = v28;
  (*(v8 + 104))(v11, *MEMORY[0x1E69DBF28], v28);
  v25 = sub_1BA4A3F48();
  (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v29 + 8))(v7, v4);
  (*(v8 + 8))(v11, v24);
  return sub_1BA4A75F8();
}

id sub_1BA0CB4F4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UninstalledAppSourcesCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA0CB550(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UninstalledAppSourcesCell();
  sub_1BA0CB5AC();
  return sub_1BA4A6808();
}

unint64_t sub_1BA0CB5AC()
{
  result = qword_1EBBE9E28;
  if (!qword_1EBBE9E28)
  {
    type metadata accessor for UninstalledAppSourcesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E28);
  }

  return result;
}

uint64_t UninstalledAppsItem.__allocating_init(uninstalledAppSources:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UninstalledAppsItem.init(uninstalledAppSources:)(a1);
  return v2;
}

uint64_t UninstalledAppsItem.init(uninstalledAppSources:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 32) = v2;
  *(v1 + 56) = 1;
  return v1;
}

uint64_t UninstalledAppsItem.deinit()
{

  return v0;
}

uint64_t UninstalledAppsItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1BA0CB83C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - v12;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA0CBC80(v2 + v14, v39, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v39[3])
  {
    sub_1B9FCD918();
    type metadata accessor for UninstalledAppsItem();
    if (swift_dynamicCast())
    {
      v15 = v38;
      type metadata accessor for SourcesViewController();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v15 + 64);
        v18 = *(v16 + OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName);
        v19 = *(v16 + OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName + 8);
        v20 = v16;
        *(objc_allocWithZone(type metadata accessor for UninstalledAppSourcesViewController()) + OBJC_IVAR____TtC18HealthExperienceUI35UninstalledAppSourcesViewController_uninstalledApps) = v17;
        LOBYTE(v39[0]) = 1;

        v21 = a1;

        v22 = SourcesViewController.init(sourceType:profileName:)(v39, v18, v19);
        [v20 showViewController:v22 sender:0];
      }

      else
      {
        sub_1BA4A3E48();
        v30 = sub_1BA4A3E88();
        v31 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v38 = v33;
          *v32 = 136446210;
          v39[0] = ObjectType;
          swift_getMetatypeMetadata();
          v34 = sub_1BA4A6808();
          v36 = sub_1B9F0B82C(v34, v35, &v38);

          *(v32 + 4) = v36;
          _os_log_impl(&dword_1B9F07000, v30, v31, "[%{public}s] view coontroller was not a SourcesViewController", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x1BFAF43A0](v33, -1, -1);
          MEMORY[0x1BFAF43A0](v32, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v13, v5);
      }

      return;
    }
  }

  else
  {
    sub_1B9F43D14(v39, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3E48();
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136446210;
    v39[0] = ObjectType;
    swift_getMetatypeMetadata();
    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, &v38);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1B9F07000, v23, v24, "[%{public}s] item is not an UninstalledAppsItem", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BA0CBC80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D08C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t PDFHeaderContentProvider.HeaderContent.nameString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PDFHeaderContentProvider.HeaderContent.dateOfBirthString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PDFHeaderContentProvider.HeaderContent.exportedDateString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t static PDFHeaderContentProvider.headerContent(characteristics:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v5 = sub_1BA4A1318();
    v6 = v7;
  }

  v8 = sub_1BA0CBE90(a1);
  v10 = v9;
  result = sub_1BA0CC544();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = result;
  a2[5] = v12;
  return result;
}

uint64_t sub_1BA0CBE90(uint64_t a1)
{
  v2 = sub_1BA4A1648();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v52 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A1668();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v51 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1B9F1B448(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v48 - v11;
  v13 = sub_1BA4A1728();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v55 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1B448(0, &qword_1EBBEA478, MEMORY[0x1E6968278], v8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v48 - v19;
  v21 = sub_1BA4A1148();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PDFCharacteristicsProvider.Content(0);
  sub_1BA018958(a1 + *(v26 + 20), v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v27 = &qword_1EBBEA478;
    v28 = MEMORY[0x1E6968278];
    v29 = v20;
LABEL_5:
    sub_1BA0CC80C(v29, v27, v28);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }

  (*(v22 + 32))(v25, v20, v21);
  sub_1BA4A1128();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v22 + 8))(v25, v21);
    v27 = &qword_1EDC6E440;
    v28 = MEMORY[0x1E6969530];
    v29 = v12;
    goto LABEL_5;
  }

  v31 = v13;
  v32 = *(v14 + 32);
  v33 = v55;
  v50 = v31;
  v32();
  v49 = v14;
  v34 = sub_1BA4A10F8();
  v35 = sub_1BA4A16B8();
  v36 = [v34 hk:v35 ageWithCurrentDate:?];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v48[1] = sub_1BA4A1318();
  v37 = v51;
  sub_1BA4A1658();
  v38 = v52;
  sub_1BA4A1638();
  v48[0] = sub_1BA4A1708();
  v40 = v39;
  (*(v56 + 8))(v38, v57);
  (*(v53 + 8))(v37, v54);
  v58 = v36;
  sub_1BA0CC87C();
  v41 = sub_1BA4A7BD8();
  v43 = v42;
  sub_1B9F1B448(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BA4B5460;
  v45 = MEMORY[0x1E69E6158];
  *(v44 + 56) = MEMORY[0x1E69E6158];
  v46 = sub_1B9F1BE20();
  *(v44 + 32) = v48[0];
  *(v44 + 40) = v40;
  *(v44 + 96) = v45;
  *(v44 + 104) = v46;
  *(v44 + 64) = v46;
  *(v44 + 72) = v41;
  *(v44 + 80) = v43;
  v47 = sub_1BA4A67D8();

  (*(v49 + 8))(v33, v50);
  (*(v22 + 8))(v25, v21);
  return v47;
}

uint64_t sub_1BA0CC544()
{
  v0 = sub_1BA4A1648();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A1668();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  type metadata accessor for PDFCharacteristicsProvider.Content(0);
  sub_1BA4A1658();
  sub_1BA4A1638();
  v10 = sub_1BA4A1708();
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  sub_1B9F1B448(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5480;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1B9F1BE20();
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  v14 = sub_1BA4A67D8();

  return v14;
}

uint64_t sub_1BA0CC80C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F1B448(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BA0CC87C()
{
  result = qword_1EDC6B6A0;
  if (!qword_1EDC6B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B6A0);
  }

  return result;
}

uint64_t PDFThreeStringSingleLineHStack.Layout.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

__n128 PDFThreeStringSingleLineHStack.init(left:middle:right:layout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = *(a1 + 32);
  v7 = *(a2 + 16);
  *(a5 + 40) = *a2;
  *(a5 + 56) = v7;
  *(a5 + 72) = *(a2 + 32);
  result = *a3;
  v9 = *(a3 + 16);
  *(a5 + 80) = *a3;
  *(a5 + 96) = v9;
  *(a5 + 112) = *(a3 + 32);
  *(a5 + 120) = v5;
  return result;
}

double PDFThreeStringSingleLineHStack.render(context:document:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA0CD0A8(v2 + 40, v72);
  if (*(a2 + 96))
  {
    v6 = v73;
  }

  else
  {
    v6 = v71;
  }

  if (*(a2 + 96))
  {
    v7 = v71;
  }

  else
  {
    v7 = v73;
  }

  sub_1BA0CD0A8(v3 + 80, v6);
  sub_1BA0CD0A8(v3, v7);
  sub_1BA0CD0A8(v73, &v66);
  if (v67)
  {
    sub_1B9F25598(&v66, v68);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v8 = sub_1BA20F244(a2);
    v9 = v69;
    v10 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    (*(v10 + 16))(a1, v8, v9, v10);

    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    sub_1BA0CD164(&v66);
  }

  sub_1BA0CD0A8(v71, &v66);
  if (v67)
  {
    sub_1B9F25598(&v66, v68);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v11 = sub_1BA20F244(a2);
    v74.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v74);
    v75.origin.x = sub_1BA0CCF24(2, v11);
    v13 = Width - CGRectGetWidth(v75);
    v14 = *(v11 + 168);
    v15 = *(v11 + 176);
    v16 = *(v11 + 184);
    v17 = *(v11 + 192);
    v76.origin.x = v14;
    v76.origin.y = v15;
    v76.size.width = v16;
    v76.size.height = v17;
    v18 = v13 + CGRectGetMinX(v76);
    v77.origin.x = v14;
    v77.origin.y = v15;
    v77.size.width = v16;
    v77.size.height = v17;
    v19 = CGRectGetMinY(v77) + 0.0;
    v78.origin.x = v14;
    v78.origin.y = v15;
    v78.size.width = v16;
    v78.size.height = v17;
    v20 = CGRectGetWidth(v78) - v13;
    v79.origin.x = v14;
    v79.origin.y = v15;
    v79.size.width = v16;
    v79.size.height = v17;
    Height = CGRectGetHeight(v79);
    *(v11 + 168) = v18;
    *(v11 + 176) = v19;
    *(v11 + 184) = v20;
    *(v11 + 192) = Height;
    *(v11 + 200) = 0;
    v22 = v69;
    v23 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    (*(v23 + 16))(a1, v11, v22, v23);

    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    sub_1BA0CD164(&v66);
  }

  sub_1BA0CD0A8(v72, &v66);
  if (v67)
  {
    sub_1B9F25598(&v66, v68);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v24 = sub_1BA20F244(a2);
    if (*(v3 + 120))
    {
      v80.origin.x = PDFBuilder.Document.drawingContext.getter();
      v25 = CGRectGetWidth(v80) * 0.5;
    }

    else
    {
      v81.origin.x = sub_1BA0CCF24(0, v24);
      v28 = CGRectGetWidth(v81);
      v82.origin.x = sub_1BA0CCF24(2, v24);
      v29 = CGRectGetWidth(v82);
      v83.origin.x = PDFBuilder.Document.drawingContext.getter();
      v25 = v28 + (CGRectGetWidth(v83) - v28 - v29) * 0.5;
    }

    v84.origin.x = sub_1BA0CCF24(1, v24);
    v30 = v25 + CGRectGetWidth(v84) * -0.5;
    v31 = *(v24 + 168);
    v32 = *(v24 + 176);
    v33 = *(v24 + 184);
    v34 = *(v24 + 192);
    v85.origin.x = v31;
    v85.origin.y = v32;
    v85.size.width = v33;
    v85.size.height = v34;
    v35 = v30 + CGRectGetMinX(v85);
    v86.origin.x = v31;
    v86.origin.y = v32;
    v86.size.width = v33;
    v86.size.height = v34;
    v36 = CGRectGetMinY(v86) + 0.0;
    v87.origin.x = v31;
    v87.origin.y = v32;
    v87.size.width = v33;
    v87.size.height = v34;
    v37 = CGRectGetWidth(v87) - v30;
    v88.origin.x = v31;
    v88.origin.y = v32;
    v88.size.width = v33;
    v88.size.height = v34;
    v38 = CGRectGetHeight(v88);
    *(v24 + 168) = v35;
    *(v24 + 176) = v36;
    *(v24 + 184) = v37;
    *(v24 + 192) = v38;
    *(v24 + 200) = 0;
    v39 = v69;
    v40 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    (*(v40 + 16))(a1, v24, v39, v40);

    v26 = __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    v26 = sub_1BA0CD164(&v66);
  }

  MEMORY[0x1EEE9AC00](v26, v27);
  v65[2] = v3;
  v65[3] = a2;
  sub_1BA24A9C8(sub_1BA0CD1C0, v65, &unk_1F37FC448);
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = *(v41 + 32);
    v44 = v42 - 1;
    if (v44)
    {
      v45 = (v41 + 40);
      do
      {
        v46 = *v45++;
        v47 = v46;
        if (v43 < v46)
        {
          v43 = v47;
        }

        --v44;
      }

      while (v44);
    }

    v48 = PDFBuilder.Document.drawingContext.getter();
    v50 = v49;
    v51 = CGRectGetWidth(*(a2 + 168));
  }

  else
  {

    v48 = 0.0;
    v50 = 0;
    v51 = 0.0;
    v43 = 0.0;
  }

  v52 = v48;
  v53 = v50;
  v54 = v43;
  v55 = CGRectGetHeight(*(&v51 - 2));
  v89.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v89.origin.x;
  y = v89.origin.y;
  v58 = v89.size.width;
  v59 = v89.size.height;
  v60 = CGRectGetMinX(v89) + 0.0;
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = v58;
  v90.size.height = v59;
  v61 = v55 + CGRectGetMinY(v90);
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = v58;
  v91.size.height = v59;
  v62 = CGRectGetWidth(v91);
  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = v58;
  v92.size.height = v59;
  v63 = CGRectGetHeight(v92);
  sub_1BA0CD164(v71);
  sub_1BA0CD164(v72);
  sub_1BA0CD164(v73);
  result = v63 - v55;
  *(a2 + 168) = v60;
  *(a2 + 176) = v61;
  *(a2 + 184) = v62;
  *(a2 + 192) = v63 - v55;
  *(a2 + 200) = 0;
  return result;
}

double sub_1BA0CCF24(char a1, uint64_t a2)
{
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v5 = sub_1BA20F244(a2);
  v6 = *(a2 + 96);
  v7 = *(v5 + 48);
  *(v5 + 168) = *(v5 + 32);
  *(v5 + 184) = v7;
  *(v5 + 200) = 0;
  if (v6 == 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_8:
      v8 = v2;
      goto LABEL_10;
    }

    if (a1 == 1)
    {
LABEL_7:
      v8 = v2 + 40;
      goto LABEL_10;
    }
  }

  v8 = v2 + 80;
LABEL_10:
  sub_1BA0CD0A8(v8, v13);
  v9 = v14;
  if (v14)
  {
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v11 = (*(v10 + 24))(v5, v9, v10);

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {

    sub_1BA0CD164(v13);
    return 0.0;
  }

  return v11;
}

uint64_t sub_1BA0CD0A8(uint64_t a1, uint64_t a2)
{
  sub_1BA0CD10C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA0CD10C(uint64_t a1)
{
  if (!qword_1EBBEB928)
  {
    sub_1BA0A186C();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB928);
    }
  }
}

uint64_t sub_1BA0CD164(uint64_t a1)
{
  sub_1BA0CD10C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0CD1D8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA0CD2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double sub_1BA0CD348(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v13[3] = a1;
  sub_1BA24A9C8(a2, v13, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 32);
    v7 = v5 - 1;
    if (v7)
    {
      v8 = (v4 + 40);
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v6 < v9)
        {
          v6 = v10;
        }

        --v7;
      }

      while (v7);
    }

    v11 = PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(*(a1 + 168));
  }

  else
  {

    return 0.0;
  }

  return v11;
}

void sub_1BA0CD458(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, char *), uint64_t a5)
{
  v9[3] = a1;
  sub_1BA24A9C8(a4, v9, a5);
  sub_1BA0CD2E4(v6);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(*(a1 + 168));
  }
}

unint64_t sub_1BA0CD510()
{
  result = qword_1EBBEB930;
  if (!qword_1EBBEB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB930);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI13PDFRenderable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BA0CD5A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 121))
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

uint64_t sub_1BA0CD604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1BA0CD7A0(uint64_t a1, void (*a2)(uint64_t, unint64_t))
{
  sub_1B9F0A534(a1, &v14);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v3 = [v13 userData];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1BA4A1608();
      v7 = v6;

      a2(v5, v7);
      sub_1B9F2BB4C(v5, v7);

      return;
    }

    sub_1BA4A1B08();
    sub_1BA4A1AF8();
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v11 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v11);

    v10 = 0xD000000000000023;
    v9 = 0x80000001BA4E5070;
  }

  else
  {
    sub_1BA4A1B08();
    sub_1BA4A1AF8();
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v8 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v8);

    v9 = 0x80000001BA4E5050;
    v10 = 0xD00000000000001ALL;
  }

  MEMORY[0x1BFAF1350](v10, v9);
  sub_1BA4A7FB8();

  sub_1BA4A1AD8();
  __break(1u);
  sub_1BA4A1B08();
  sub_1BA4A1AF8();
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v12 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v12);

  MEMORY[0x1BFAF1350](0xD000000000000027, 0x80000001BA4E50A0);
  sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
  sub_1BA4A7FB8();

  sub_1BA4A1AD8();
  __break(1u);
}

uint64_t sub_1BA0CDA8C(void *a1, uint64_t a2)
{
  v43 = a2;
  v40 = a1;
  sub_1BA071250(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  v18 = *(v9 + 16);
  v41 = v16;
  v18(v16, a2, v8);
  type metadata accessor for SharedProfileHeaderDataSource(0);
  v19 = swift_allocObject();
  v42 = v12;
  v18(v12, v16, v8);
  v39 = sub_1BA19BAD0();
  *(v19 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v19 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = (v19 + qword_1EDC84CF0);
  *v20 = sub_1BA0CEEA0;
  v20[1] = 0;
  v21 = (v19 + qword_1EDC84CE0);
  sub_1BA0CF80C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *v21 = 0;
  v21[1] = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5470;
  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v24 = sub_1BA4A6758();
  v25 = [v23 initWithKey:v24 ascending:1 selector:sel_localizedStandardCompare_];

  *(v22 + 32) = v25;
  v26 = v40;
  v27 = sub_1BA4A7558();

  sub_1B9F126E0(0);
  v29 = objc_allocWithZone(v28);
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v27);
  v31 = sub_1BA4A33C8();
  (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
  sub_1BA0CF644(0);
  swift_allocObject();
  *(v19 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v32 = v30;
  v33 = sub_1B9F17A68(v32, sub_1BA0CF71C, v17, 0);

  v34 = *(*v33 + 760);

  v34(v35);
  sub_1BA4A4DA8();

  v36 = *(v9 + 8);
  v36(v41, v8);
  sub_1BA013068(v7);
  v36(v42, v8);
  v36(v43, v8);
  return v33;
}

uint64_t Publisher<>.asProtocolPublisher.getter(uint64_t a1, uint64_t a2)
{
  sub_1BA0CF6B4(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  v2 = sub_1BA4A4B78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - v5;
  sub_1BA4A4FE8();
  swift_getWitnessTable();
  v7 = sub_1BA4A4F98();
  (*(v3 + 8))(v6, v2);
  return v7;
}

{
  sub_1B9F0CF6C(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  v2 = sub_1BA4A4B78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - v5;
  sub_1BA4A4FE8();
  swift_getWitnessTable();
  v7 = sub_1BA4A4F98();
  (*(v3 + 8))(v6, v2);
  return v7;
}

{
  sub_1B9F40D10(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  v2 = sub_1BA4A4B78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - v5;
  sub_1BA4A4FE8();
  swift_getWitnessTable();
  v7 = sub_1BA4A4F98();
  (*(v3 + 8))(v6, v2);
  return v7;
}

{
  sub_1BA2B9364(255, &qword_1EDC6E1E0, sub_1BA0B43BC, MEMORY[0x1E69E6720]);
  v2 = sub_1BA4A4B78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - v5;
  sub_1BA4A4FE8();
  swift_getWitnessTable();
  v7 = sub_1BA4A4F98();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_1BA0CE080(uint64_t a1)
{
  v2 = sub_1BA4A33C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CD7A0(a1, MEMORY[0x1E69A3408]);
  v7 = sub_1BA0CEF64(v6);
  sub_1BA4A33A8();
  sub_1BA4A3398();
  sub_1BA4A79E8();
  v8 = sub_1BA4A2E48();
  swift_allocObject();
  v9 = sub_1BA4A2E38();
  v10 = v7;
  v11 = MEMORY[0x1BFAEDD40]();
  v13 = v12;
  v14 = type metadata accessor for ProfileContactOptionsItem();
  v15 = objc_allocWithZone(v14);
  v17 = sub_1BA1AAA68(v10, v11, v13, &unk_1F37FC698, v16);

  sub_1BA0CF6B4(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B9FD0;
  v19 = MEMORY[0x1E69A3330];
  *(v18 + 56) = v8;
  *(v18 + 64) = v19;
  *(v18 + 32) = v9;
  v20 = MEMORY[0x1E69A3420];
  *(v18 + 96) = v2;
  *(v18 + 104) = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 72));
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  *(v18 + 136) = v14;
  *(v18 + 144) = sub_1B9F253E8(&qword_1EBBED6A0, type metadata accessor for ProfileContactOptionsItem, &protocol conformance descriptor for ProfileContactOptionsItem);
  *(v18 + 112) = v17;

  (*(v3 + 8))(v6, v2);
  return v18;
}

void sub_1BA0CE320()
{
  sub_1B9FF5128();
  sub_1B9FF515C();
  sub_1B9FF5190();
}

uint64_t sub_1BA0CE34C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA071250(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A33C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CF958(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1BA013068(v7);
    v14 = 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_1BA0CF80C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BA4B5470;
    v16 = *MEMORY[0x1E695C400];
    *(v15 + 32) = *MEMORY[0x1E695C400];
    sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
    v17 = v16;
    v18 = sub_1BA4A7068();
    v21[3] = v8;
    v21[4] = MEMORY[0x1E69A3410];
    v21[5] = MEMORY[0x1E69A3418];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
    v20 = sub_1BA4A7018();

    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1BA4A3328();
    sub_1BA4A79E8();
    sub_1BA4A2E48();
    swift_allocObject();
    v14 = sub_1BA4A2E38();

    result = (*(v9 + 8))(v12, v8);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_1BA0CE620@<X0>(uint64_t a1@<X8>)
{
  sub_1BA071250(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v66 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v59 - v15;
  v17 = sub_1BA1F99B0();
  v18 = v17;
  v19 = *(v17 + 16);
  if (v19)
  {
    v65 = v17 + 32;
    v20 = 48;
    v21 = v19;
    while (!*(*(v17 + v20) + 16))
    {
      v20 += 48;
      if (!--v21)
      {
        goto LABEL_5;
      }
    }

    v59 = v9;
    v60 = v5;
    v61 = v16;
    v62 = a1;
    v25 = 0;
    v26 = 0;
    v27 = 48;
    do
    {
      if (*(*(v17 + v27) + 16))
      {

        v28 = 0;
        v69 = v18;
        v64 = v19;
        do
        {
          v29 = v26 >= v19;
          if (v26 >= v19)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          if (v25)
          {
            goto LABEL_44;
          }

          v30 = v65 + 48 * v26;
          v33 = *(v30 + 16);
          v32 = (v30 + 16);
          v31 = v33;
          v34 = *(v33 + 16);
          v29 = v28 >= v34;
          if (v28 >= v34)
          {
            goto LABEL_40;
          }

          v67 = v28;
          sub_1B9F0A534(v31 + 40 * v28 + 32, v71);
          sub_1B9F0A534(v71, v70);
          v35 = sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
          v36 = sub_1BA4A33C8();
          v37 = v66;
          v63 = v35;
          v38 = swift_dynamicCast();
          v39 = *(v36 - 8);
          v40 = *(v39 + 56);
          v40(v37, v38 ^ 1u, 1, v36);
          __swift_destroy_boxed_opaque_existential_1(v71);
          v9 = (v39 + 48);
          v41 = *(v39 + 48);
          LODWORD(v68) = v41(v37, 1, v36);
          sub_1BA013068(v37);
          v42 = *(v69 + 16);
          if (v68 != 1)
          {
            v66 = (v36 - 8);
            v68 = v41;
            if (v26 >= v42)
            {
              goto LABEL_48;
            }

            v48 = v36;
            v49 = *v32;
            v50 = *(*v32 + 16);
            v29 = v67 >= v50;
            v52 = v59;
            v51 = v60;
            if (v67 < v50)
            {
              v53 = v48;
              sub_1B9F0A534(v49 + 40 * v67 + 32, v71);
              sub_1B9F0A534(v71, v70);
              v54 = swift_dynamicCast();
              v40(v52, v54 ^ 1u, 1, v48);
              __swift_destroy_boxed_opaque_existential_1(v71);
              sub_1BA0CF958(v52, v51);
              v55 = v68(v51, 1, v48);
              v29 = v55 != 0;
              if (v55 != 1)
              {
                v9 = v61;
                (*(v39 + 32))(v61, v51, v48);
                sub_1BA013068(v52);
                v40(v9, 0, 1, v48);
                goto LABEL_37;
              }

              goto LABEL_45;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v29 = v26 >= v42;
          v19 = v64;
          if (v26 >= v42)
          {
            goto LABEL_41;
          }

          v28 = v67 + 1;
          if (v67 + 1 == *(*v32 + 16))
          {
            ++v26;
            while (1)
            {
              v25 = v26 == v42;
              if (v26 == v42)
              {
                v28 = 0;
                v26 = v42;
                goto LABEL_20;
              }

              sub_1BA0CF724(0);
              sub_1BA0CF8C4();
              v43 = sub_1BA1F9630(v71, v26, v69, sub_1BA0CECC0);
              v45 = *v44;

              (v43)(v71, 0);
              v46 = *(v45 + 16);

              if (v46)
              {
                break;
              }

              v29 = __CFADD__(v26, 1);
              if (__OFADD__(v26++, 1))
              {
                goto LABEL_43;
              }
            }

            v28 = 0;
          }

          else
          {
            v25 = 0;
          }

LABEL_20:
          ;
        }

        while (v26 != v19 || !v25);
        v56 = *(v69 + 16);
        v29 = v19 >= v56;
        if (v19 == v56)
        {
          goto LABEL_36;
        }

LABEL_46:
        if (!v29)
        {
          __break(1u);
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      ++v26;
      v27 += 48;
      v25 = v19 == v26;
    }

    while (v19 != v26);

LABEL_36:
    v53 = sub_1BA4A33C8();
    v9 = v61;
    (*(*(v53 - 8) + 56))(v61, 1, 1, v53);
LABEL_37:
    v57 = v62;

    sub_1BA4A33C8();
    v58 = *(v53 - 8);
    if ((*(v58 + 48))(v9, 1, v53) != 1)
    {

      (*(v58 + 32))(v57, v9, v53);
      return (*(v58 + 56))(v57, 0, 1, v53);
    }

LABEL_49:
    sub_1BA013068(v9);
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
LABEL_5:

    v22 = sub_1BA4A33C8();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }

  return result;
}

double sub_1BA0CECC0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

uint64_t sub_1BA0CECCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1BA0CF1F4(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v12;
}

uint64_t sub_1BA0CED5C()
{
  _s18HealthExperienceUI0A31KitProfileInformationDataSourceCfd_0();

  return swift_deallocClassInstance();
}

double sub_1BA0CEDB0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = sub_1BA4A2E48();
    v5 = MEMORY[0x1E69A3328];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v3;
  a2[3] = v4;
  a2[4] = v5;

  return result;
}

uint64_t type metadata accessor for SharedProfileHeaderDataSource(uint64_t a1)
{
  result = qword_1EBBEB938;
  if (!qword_1EBBEB938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA0CEEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  sub_1BA0CF6B4(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 56) = a3(0);
  *(v9 + 64) = a4;
  __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  sub_1BA0CD7A0(a1, a5);
  return v9;
}

uint64_t sub_1BA0CEF64(uint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v2 = [objc_opt_self() descriptorForRequiredKeys];
  MEMORY[0x1BFAF1510]();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  v3 = sub_1BA4A7068();
  v4 = sub_1BA4A33C8();
  v8[3] = v4;
  v8[4] = MEMORY[0x1E69A3410];
  v8[5] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  v6 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

id sub_1BA0CF0B8()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v16[4] = xmmword_1EDC6D2B0;
  v16[5] = *&qword_1EDC6D2C0;
  v16[6] = xmmword_1EDC6D2D0;
  v16[7] = unk_1EDC6D2E0;
  v16[0] = xmmword_1EDC6D270;
  v16[1] = *&qword_1EDC6D280;
  v16[2] = xmmword_1EDC6D290;
  v16[3] = *&qword_1EDC6D2A0;
  v7 = *(&xmmword_1EDC6D270 + 8);
  v0 = *algn_1EDC6D288;
  v1 = xmmword_1EDC6D290;
  v2 = *&qword_1EDC6D2A0;
  v4 = xmmword_1EDC6D2B0;
  v3 = qword_1EDC6D2C0;
  v12 = unk_1EDC6D2C8;
  v13 = *(&xmmword_1EDC6D2D0 + 8);
  v14 = qword_1EDC6D2E8;
  sub_1B9F1D9A4(v16, v15);
  sub_1B9F1DA18(v0, v1, *(&v1 + 1), v2);
  sub_1B9F1DA18(*(&v2 + 1), v4, *(&v4 + 1), v3);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v6 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  return sub_1B9F293A8(&v6);
}

uint64_t sub_1BA0CF1F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v48 = a2;
  v13 = *v7;
  v45 = a1;
  v46 = v13;
  sub_1BA071250(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BA4A1798();
  v18 = *(v47 - 8);
  v20 = MEMORY[0x1EEE9AC00](v47, v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a2, v20);
  v44 = sub_1BA19BAD0();
  *(v7 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v7 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v23 = (v7 + qword_1EDC84CE0);
  *v23 = a3;
  v23[1] = a4;
  v24 = (v7 + qword_1EDC84CF0);
  *v24 = a5;
  v24[1] = a6;
  sub_1BA0CF80C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5470;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  sub_1B9F0F1B8(a5, a6);
  v27 = sub_1BA4A6758();
  v28 = [v26 initWithKey:v27 ascending:1 selector:sel_localizedStandardCompare_];

  *(v25 + 32) = v28;
  v29 = v45;
  v30 = sub_1BA4A7558();

  sub_1B9F126E0(0);
  v32 = objc_allocWithZone(v31);
  v33 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v30);
  v34 = sub_1BA4A33C8();
  (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  sub_1BA0CF644(0);
  swift_allocObject();
  *(v7 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v35 = swift_allocObject();
  *(v35 + 16) = v46;
  v36 = v33;
  v37 = sub_1B9F17A68(v36, sub_1BA0CF6AC, v35, 0);

  v38 = *(*v37 + 760);

  v38(v39);
  sub_1BA4A4DA8();

  v40 = *(v18 + 8);
  v41 = v47;
  v40(v48, v47);
  sub_1BA013068(v17);
  v40(v22, v41);
  return v37;
}

void sub_1BA0CF644(uint64_t a1)
{
  if (!qword_1EBBEE020)
  {
    sub_1BA071250(255);
    v1 = sub_1BA4A4DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE020);
    }
  }
}

void sub_1BA0CF6B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA0CF724(uint64_t a1)
{
  if (!qword_1EBBEB948)
  {
    sub_1BA0CF80C(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    sub_1BA0CF6B4(255, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
    sub_1BA0CF85C(&qword_1EBBEB950, MEMORY[0x1E69E6328]);
    v1 = sub_1BA4A7F98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB948);
    }
  }
}

void sub_1BA0CF80C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA0CF85C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BA0CF80C(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA0CF8C4()
{
  result = qword_1EBBEB958;
  if (!qword_1EBBEB958)
  {
    sub_1BA0CF724(255);
    sub_1BA0CF85C(&qword_1EBBEB960, MEMORY[0x1E69E6340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB958);
  }

  return result;
}

uint64_t sub_1BA0CF958(uint64_t a1, uint64_t a2)
{
  sub_1BA071250(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA0CF9BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAccessibilityIdentifier_];
}

void sub_1BA0CFA14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = (*(a3 + 80))(a2, a3);
  if (v6)
  {
    (*(v7 + 24))(&v9, a1, *v6);

    v8 = v9;
  }

  else
  {
    v8 = 2;
  }

  *a4 = v8;
}

double sub_1BA0CFC4C(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 24))();
  v4 = (*(a2 + 80))(a1, a2);
  if (v4)
  {
    (*(v5 + 40))(*v4);
  }

  return result;
}

void *sub_1BA0CFD14(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 80))(a1);
  if (result)
  {
    v4 = (*(v3 + 16))(*result);

    return (v4 & 1);
  }

  return result;
}

uint64_t sub_1BA0CFD98(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 80))(a1);
  if (!v2)
  {
    return 2;
  }

  v4 = (*(v3 + 32))(*v2);

  return v4;
}

uint64_t SwiftChartPoint.id.getter()
{
  v1 = *v0;

  return v1;
}

void SwiftChartPoint.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SwiftChartPoint.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwiftChartPoint(0) + 20);
  v4 = sub_1BA4A0FA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwiftChartPoint.dateInterval.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwiftChartPoint(0) + 20);
  v4 = sub_1BA4A0FA8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwiftChartPoint.value.setter(double a1)
{
  result = type metadata accessor for SwiftChartPoint(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SwiftChartPoint.value2.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SwiftChartPoint(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SwiftChartPoint.init(dateInterval:value:value2:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v14 = type metadata accessor for SwiftChartPoint(0);
  v15 = &a6[v14[7]];
  v16 = v14[5];
  v17 = sub_1BA4A0FA8();
  result = (*(*(v17 - 8) + 32))(&a6[v16], a1, v17);
  *&a6[v14[6]] = a7;
  *v15 = a2;
  v15[8] = a3 & 1;
  *a6 = a4;
  *(a6 + 1) = a5;
  return result;
}

uint64_t static SwiftChartPoint.daily(dateInterval:value:value2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>, double a5@<D0>)
{
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SwiftChartPoint(0);
  v16 = v15[5];
  v17 = sub_1BA4A0FA8();
  (*(*(v17 - 8) + 16))(&a4[v16], a1, v17);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1BA4A0F88();
  sub_1BA4A1628();
  (*(v11 + 8))(v14, v10);
  result = sub_1BA4A6CF8();
  v19 = v23;
  v20 = v24;
  v21 = v15[7];
  *&a4[v15[6]] = a5;
  v22 = &a4[v21];
  *v22 = a2;
  v22[8] = a3 & 1;
  *a4 = v19;
  *(a4 + 1) = v20;
  return result;
}

void static SwiftChartPoint.unique(dateInterval:value:value2:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>, double a5@<D0>)
{
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SwiftChartPoint(0);
  v16 = v15[5];
  v17 = sub_1BA4A0FA8();
  (*(*(v17 - 8) + 16))(&a4[v16], a1, v17);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1BA4A0F88();
  sub_1BA4A1628();
  (*(v11 + 8))(v14, v10);
  sub_1BA4A6CF8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A6CF8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v22 = a2;
  v23 = a3 & 1;
  sub_1B9F482E4();
  v18 = sub_1BA4A7A88();
  MEMORY[0x1BFAF1350](v18);

  v19 = v24;
  v20 = v25;
  v21 = &a4[v15[7]];
  *&a4[v15[6]] = a5;
  *v21 = a2;
  v21[8] = a3 & 1;
  *a4 = v19;
  *(a4 + 1) = v20;
}

uint64_t SwiftChartPoint.init(diagramStyle:dateInterval:value:value2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>, double a6@<D0>)
{
  v29 = a4;
  v28 = a3;
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SwiftChartPoint(0);
  v27 = v15[7];
  v16 = v15[5];
  v17 = sub_1BA4A0FA8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a5[v16], a2, v17);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1BA4A0F88();
  sub_1BA4A1628();
  (*(v11 + 8))(v14, v10);
  sub_1BA4A6CF8();
  if (a1 == 9)
  {
    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    sub_1BA4A6CF8();
    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    v19 = v28;
    v30 = v28;
    v20 = v29;
    v31 = v29 & 1;
    sub_1B9F482E4();
    v21 = sub_1BA4A7A88();
    MEMORY[0x1BFAF1350](v21);

    v22 = v32;
    v23 = v33;
  }

  else
  {
    v22 = v32;
    v23 = v33;
    v20 = v29;
    v19 = v28;
  }

  result = (*(v18 + 8))(a2, v17);
  *&a5[v15[6]] = a6;
  v25 = &a5[v27];
  *v25 = v19;
  v25[8] = v20 & 1;
  *a5 = v22;
  *(a5 + 1) = v23;
  return result;
}

uint64_t static SwiftChartPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwiftChartPoint(0);
  if ((sub_1BA4A0F38() & 1) == 0 || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = a2 + v5;
  result = *(v8 + 8);
  if ((v7 & 1) == 0)
  {
    return (*v6 == *v8) & ~result;
  }

  return result;
}

uint64_t sub_1BA0D08E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA0D0CD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA0D0910(uint64_t a1)
{
  v2 = sub_1B9F79C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA0D094C(uint64_t a1)
{
  v2 = sub_1B9F79C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SwiftChartPoint.encode(to:)(void *a1)
{
  sub_1B9F79BD0(0, &qword_1EDC5DDD0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F79C98();
  sub_1BA4A8548();
  v10[15] = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    type metadata accessor for SwiftChartPoint(0);
    v10[14] = 1;
    sub_1BA4A0FA8();
    sub_1B9F79F10(&qword_1EDC6AF18, MEMORY[0x1E6968138]);
    sub_1BA4A8288();
    v10[13] = 2;
    sub_1BA4A8268();
    v10[12] = 3;
    sub_1BA4A8218();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA0D0BB8(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_1BA4A0F38() & 1) == 0 || *(a1 + a3[6]) != *(a2 + a3[6]))
  {
    return 0;
  }

  v6 = a3[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = a2 + v6;
  result = *(v9 + 8);
  if ((v8 & 1) == 0)
  {
    return (*v7 == *v9) & ~result;
  }

  return result;
}

unint64_t sub_1BA0D0C80()
{
  result = qword_1EBBEB968;
  if (!qword_1EBBEB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB968);
  }

  return result;
}

uint64_t sub_1BA0D0CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3265756C6176 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double static ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.defaultConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_1BA4BD220;
  return result;
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.init(contentPrimaryText:contentPrimarySubheaderText:contentSecondaryText:contentActionText:imageRepresentation:padding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v12 = *a11;
  v13 = a11[1];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v14 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  result = sub_1BA0D6768(a10, a9 + *(v14 + 32), sub_1BA0D0F10);
  v16 = (a9 + *(v14 + 36));
  *v16 = v12;
  v16[1] = v13;
  return result;
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.init(imageBottomPadding:imageHeight:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double *a5@<X8>)
{
  v5 = *&result;
  if (a2)
  {
    v5 = 16.0;
  }

  if (a4)
  {
    a3 = 80.0;
  }

  *a5 = v5;
  a5[1] = a3;
  return result;
}

uint64_t sub_1BA0D0F44()
{
  if (*v0)
  {
    return 0x6965486567616D69;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_1BA0D0F8C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001BA4E9FD0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x6965486567616D69 && a2 == 0xEB00000000746867)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1BA4A8338();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1BA0D1078(uint64_t a1)
{
  v2 = sub_1BA0D12B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA0D10B4(uint64_t a1)
{
  v2 = sub_1BA0D12B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.encode(to:)(void *a1)
{
  sub_1BA0D1EF0(0, &qword_1EBBEB970, sub_1BA0D12B0, &type metadata for ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  v11 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA0D12B0();
  sub_1BA4A8548();
  v15 = v11;
  v14 = 0;
  sub_1BA013730();
  sub_1BA4A8288();
  if (!v2)
  {
    v15 = v10;
    v14 = 1;
    sub_1BA4A8288();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1BA0D12B0()
{
  result = qword_1EBBEB978;
  if (!qword_1EBBEB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB978);
  }

  return result;
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  sub_1BA0D1EF0(0, &qword_1EBBEB980, sub_1BA0D12B0, &type metadata for ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA0D12B0();
  sub_1BA4A8528();
  if (!v2)
  {
    v10 = v6;
    v11 = v16;
    v17 = 0;
    sub_1BA013994();
    sub_1BA4A81C8();
    v12 = v18;
    v17 = 1;
    sub_1BA4A81C8();
    (*(v10 + 8))(v9, v5);
    v14 = v18;
    *v11 = v12;
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BA0D1548()
{
  v1 = *v0;
  v2 = 0x676E6964646170;
  if (v1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD00000000000001BLL;
  if (v1 != 1)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA0D1608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA0D5510(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA0D1630(uint64_t a1)
{
  v2 = sub_1BA0D1940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA0D166C(uint64_t a1)
{
  v2 = sub_1BA0D1940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1BA0D1EF0(0, &qword_1EBBEB988, sub_1BA0D1940, &type metadata for ProminentMessageWithActionTileViewWithImage.ViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA0D1940();
  sub_1BA4A8548();
  LOBYTE(v13) = 0;
  sub_1BA4A8248();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1BA4A8208();
    LOBYTE(v13) = 2;
    sub_1BA4A8208();
    LOBYTE(v13) = 3;
    sub_1BA4A8208();
    v12 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
    LOBYTE(v13) = 4;
    sub_1BA4A2BF8();
    sub_1B9F20854(&qword_1EDC6AD68, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32A8]);
    sub_1BA4A8238();
    v13 = *(v3 + *(v12 + 36));
    v14 = 5;
    sub_1BA0D1994();
    sub_1BA4A8288();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1BA0D1940()
{
  result = qword_1EBBEB990;
  if (!qword_1EBBEB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB990);
  }

  return result;
}

unint64_t sub_1BA0D1994()
{
  result = qword_1EBBEB998;
  if (!qword_1EBBEB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB998);
  }

  return result;
}

void ProminentMessageWithActionTileViewWithImage.ViewModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D1EF0(0, &qword_1EBBEB9A0, sub_1BA0D1940, &type metadata for ProminentMessageWithActionTileViewWithImage.ViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v36 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1BA0D1940();
  v16 = v10;
  v17 = v37;
  sub_1BA4A8528();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    return;
  }

  v18 = v34;
  v19 = v35;
  LOBYTE(v39) = 0;
  v20 = v36;
  v21 = v14;
  *v14 = sub_1BA4A8188();
  v14[1] = v22;
  LOBYTE(v39) = 1;
  v14[2] = sub_1BA4A8138();
  v14[3] = v23;
  LOBYTE(v39) = 2;
  v14[4] = sub_1BA4A8138();
  v14[5] = v24;
  LOBYTE(v39) = 3;
  v33 = 0;
  v25 = sub_1BA4A8138();
  v37 = 0;
  v14[6] = v25;
  v14[7] = v26;
  sub_1BA4A2BF8();
  LOBYTE(v39) = 4;
  sub_1B9F20854(&qword_1EDC6AD58, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32B8]);
  v27 = v37;
  sub_1BA4A8178();
  v37 = v27;
  if (v27)
  {
    (*(v18 + 8))(v16, v20);
    v28 = 0;
  }

  else
  {
    sub_1BA0D6768(v6, v14 + *(v11 + 32), sub_1BA0D0F10);
    v40 = 5;
    sub_1BA0D1F58();
    v29 = v37;
    sub_1BA4A81C8();
    v37 = v29;
    if (!v29)
    {
      (*(v18 + 8))(v16, v20);
      *(v14 + *(v11 + 36)) = v39;
      sub_1BA0D683C(v14, v19, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v31 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel;
      v32 = v14;
      goto LABEL_12;
    }

    (*(v18 + 8))(v16, v20);
    v28 = 1;
  }

  v30 = v33;
  __swift_destroy_boxed_opaque_existential_1(v38);

  if (!v30)
  {
  }

  if (v28)
  {
    v31 = sub_1BA0D0F10;
    v32 = v21 + *(v11 + 32);
LABEL_12:
    sub_1BA0D6B24(v32, v31);
  }
}

void sub_1BA0D1EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1BA0D1F58()
{
  result = qword_1EBBEB9A8;
  if (!qword_1EBBEB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB9A8);
  }

  return result;
}

uint64_t sub_1BA0D1FAC()
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

uint64_t ProminentMessageWithActionTileViewWithImage.didTapAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProminentMessageWithActionTileViewWithImage(0) + 28));

  return v1;
}

uint64_t ProminentMessageWithActionTileViewWithImage.init(_:didTapAction:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{

  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v9 = type metadata accessor for ProminentMessageWithActionTileViewWithImage(0);
  v10 = v9[5];
  *(a5 + v10) = swift_getKeyPath();
  sub_1B9F87E7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  result = sub_1BA0D6768(a1, a5 + v9[6], type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  v12 = (a5 + v9[7]);
  *v12 = a2;
  v12[1] = a3;
  return result;
}

void ProminentMessageWithActionTileViewWithImage.body.getter(uint64_t *a1@<X8>)
{
  v2 = a1;
  *a1 = sub_1BA4A5868();
  v2[1] = 0;
  *(v2 + 16) = 0;
  sub_1BA0D4824(0);
  v4 = v2 + *(v3 + 44);
  *v4 = sub_1BA4A5868();
  *(v4 + 1) = 0;
  v4[16] = 0;
  sub_1BA0D4B90(0, &qword_1EBBEBA10, sub_1BA0D48EC);
  sub_1BA0D23D8(v1, &v4[*(v5 + 44)]);
  LOBYTE(v2) = sub_1BA4A5B78();
  sub_1BA4A5188();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BA0D631C(0, &qword_1EBBEB9B8, sub_1BA0D48B0, MEMORY[0x1E697E5E0]);
  v15 = &v4[*(v14 + 36)];
  *v15 = v2;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
}

void sub_1BA0D23D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for ProminentMessageWithActionTileViewWithImage(0);
  v4 = v3 - 8;
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v96 = v6;
  v97 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1BA4A6138();
  v7 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D4A4C(0);
  v90 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D6E7C(0, &qword_1EBBEB9E0, sub_1BA0D4A4C, MEMORY[0x1E697CBE8]);
  v94 = v15;
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v88 = &v88 - v17;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A2BF8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v91 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D49B8(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v101 = &v88 - v32;
  v33 = *(v4 + 32);
  v100 = a1;
  v34 = (a1 + v33);
  v35 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  sub_1BA0D683C(v34 + *(v35 + 32), v21, sub_1BA0D0F10);
  v36 = *(v23 + 48);
  v92 = v22;
  v37 = v36(v21, 1, v22);
  v99 = v29;
  if (v37 == 1)
  {
    sub_1BA0D6B24(v21, sub_1BA0D0F10);
    v38 = 1;
    v39 = v101;
LABEL_5:
    (*(v93 + 56))(v39, v38, 1, v94);
    v64 = v34[1];
    v90 = *v34;
    KeyPath = swift_getKeyPath();
    v66 = v34[3];
    v91 = v34[2];
    v89 = swift_getKeyPath();
    v67 = v34[5];
    v93 = v34[4];
    v92 = v67;
    v88 = v34[6];
    v68 = v88;
    v94 = v34[7];
    v69 = v97;
    sub_1BA0D683C(v100, v97, type metadata accessor for ProminentMessageWithActionTileViewWithImage);
    v70 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v71 = swift_allocObject();
    sub_1BA0D6768(v69, v71 + v70, type metadata accessor for ProminentMessageWithActionTileViewWithImage);
    v72 = swift_getKeyPath();
    v97 = v72;
    v102 = 0;
    sub_1BA0D683C(v39, v29, sub_1BA0D49B8);
    v73 = v102;
    LODWORD(v100) = v102;
    v74 = v29;
    v75 = v98;
    sub_1BA0D683C(v74, v98, sub_1BA0D49B8);
    sub_1BA0D4920(0);
    v77 = v75 + v76[12];
    *v77 = KeyPath;
    *(v77 + 8) = 0;
    *(v77 + 16) = 0;
    *(v77 + 24) = v90;
    *(v77 + 32) = v64;
    v78 = v75 + v76[16];
    *v78 = 0;
    *(v78 + 8) = 0;
    v79 = v75 + v76[20];
    v80 = v89;
    *v79 = v89;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 24) = v91;
    *(v79 + 32) = v66;
    v81 = v75 + v76[24];
    *v81 = 0;
    *(v81 + 8) = 0;
    v82 = v75 + v76[28];
    v103 = v72;
    LOBYTE(v104) = v73;
    v83 = v93;
    v84 = v92;
    *(&v104 + 1) = v93;
    *&v105 = v92;
    v85 = v94;
    *(&v105 + 1) = v68;
    *&v106 = v94;
    *(&v106 + 1) = sub_1BA0D67D0;
    v107 = v71;
    *(v82 + 64) = v71;
    v86 = v104;
    *v82 = v103;
    *(v82 + 16) = v86;
    v87 = v106;
    *(v82 + 32) = v105;
    *(v82 + 48) = v87;

    sub_1B9F84D0C(KeyPath, 0, 0);

    sub_1B9F84D0C(v80, 0, 0);

    sub_1BA0D5DA0(&v103, v108);
    sub_1BA0D6B24(v101, sub_1BA0D49B8);
    v108[0] = v97;
    v108[1] = 0;
    v109 = v100;
    v110 = v83;
    v111 = v84;
    v112 = v88;
    v113 = v85;
    v114 = sub_1BA0D67D0;
    v115 = v71;
    sub_1BA0D68A4(v108);
    sub_1B9F84D1C(v80, 0, 0);

    sub_1B9F84D1C(KeyPath, 0, 0);

    sub_1BA0D6B24(v99, sub_1BA0D49B8);
    return;
  }

  v40 = v23;
  (*(v23 + 32))(v91, v21, v92);
  sub_1BA4A2BE8();
  v41 = v89;
  (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v89);
  v42 = sub_1BA4A6198();

  (*(v7 + 8))(v10, v41);
  v43 = sub_1BA4A5BE8();
  v44 = swift_getKeyPath();
  sub_1BA0D4A9C(0);
  v46 = &v14[*(v45 + 36)];
  sub_1B9F89374(0);
  v48 = *(v47 + 28);
  v49 = *MEMORY[0x1E69816E0];
  v50 = sub_1BA4A6188();
  (*(*(v50 - 8) + 104))(v46 + v48, v49, v50);
  *v46 = swift_getKeyPath();
  *v14 = v42;
  *(v14 + 1) = 0;
  *(v14 + 8) = 1;
  *(v14 + 3) = v44;
  *(v14 + 4) = v43;
  sub_1BA4A63C8();
  sub_1BA4A5278();
  sub_1BA0D4A74(0);
  v52 = &v14[*(v51 + 36)];
  v53 = v117;
  *v52 = v116;
  *(v52 + 1) = v53;
  *(v52 + 2) = v118;
  LOBYTE(v42) = sub_1BA4A5B98();
  sub_1BA4A5188();
  v54 = &v14[*(v90 + 36)];
  *v54 = v42;
  *(v54 + 1) = v55;
  *(v54 + 2) = v56;
  *(v54 + 3) = v57;
  *(v54 + 4) = v58;
  v54[40] = 0;
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1BA4B5460;
  *(v59 + 32) = sub_1BA0D1FAC();
  *(v59 + 40) = v60;
  *(v59 + 48) = 1852793673;
  *(v59 + 56) = 0xE400000000000000;
  v61 = sub_1BA4A6AE8();

  v62 = HKUIJoinStringsForAutomationIdentifier();

  if (v62)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D6144(&qword_1EBBEBB30, sub_1BA0D4A4C, sub_1BA0D68D4);
    v63 = v88;
    sub_1BA4A5F18();

    sub_1BA0D6B24(v14, sub_1BA0D4A4C);
    (*(v40 + 8))(v91, v92);
    v39 = v101;
    sub_1BA0D6B84(v63, v101);
    v38 = 0;
    v29 = v99;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1BA0D2EA4(uint64_t *a1@<X8>)
{
  v2 = a1;
  *a1 = sub_1BA4A5868();
  v2[1] = 0;
  *(v2 + 16) = 0;
  sub_1BA0D4824(0);
  v4 = v2 + *(v3 + 44);
  *v4 = sub_1BA4A5868();
  *(v4 + 1) = 0;
  v4[16] = 0;
  sub_1BA0D4B90(0, &qword_1EBBEBA10, sub_1BA0D48EC);
  sub_1BA0D23D8(v1, &v4[*(v5 + 44)]);
  LOBYTE(v2) = sub_1BA4A5B78();
  sub_1BA4A5188();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BA0D631C(0, &qword_1EBBEB9B8, sub_1BA0D48B0, MEMORY[0x1E697E5E0]);
  v15 = &v4[*(v14 + 36)];
  *v15 = v2;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
}

void sub_1BA0D2FA0(uint64_t a1@<X8>)
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
  (*(v10 + 104))(v13, *MEMORY[0x1E6980F00], v9);
  v22 = sub_1BA4A5C28();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_1BA4A5C48();
  v23 = sub_1BA4A5CD8();
  sub_1BA0D6B24(v8, sub_1B9F87DEC);
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
  LOBYTE(v51) = 1;
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
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    sub_1BA0D5CF0(&v58);
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
    sub_1BA0D6538();
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
    sub_1BA0D6B24(v46, sub_1BA0D62F4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA0D34BC(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v56 = a2;
  v44 = sub_1BA4A5718();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A5D18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D5F34(0);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  *&v54[0] = v15;
  *(&v54[0] + 1) = v16;
  sub_1B9F252FC();

  v46 = sub_1BA4A5E18();
  v18 = v17;
  LOBYTE(v16) = v19;
  v21 = v20;
  sub_1BA4A5C18();
  (*(v7 + 104))(v10, *MEMORY[0x1E6980EA8], v6);
  v22 = sub_1BA4A5D38();

  (*(v7 + 8))(v10, v6);
  v23 = v14;
  KeyPath = swift_getKeyPath();
  LOBYTE(v48) = v16 & 1;
  *&v50 = v46;
  *(&v50 + 1) = v18;
  v25 = v47;
  LOBYTE(v51) = v16 & 1;
  *(&v51 + 1) = v21;
  LOWORD(v52) = 256;
  *(&v52 + 1) = KeyPath;
  v53 = v22;
  sub_1BA0D5884(0, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
  sub_1BA0D5B8C();
  sub_1BA4A5FB8();
  v54[0] = v50;
  v54[1] = v51;
  v54[2] = v52;
  v55 = v53;
  sub_1BA0D608C(v54);
  v26 = swift_getKeyPath();
  sub_1BA0D5F5C(0);
  v28 = &v14[*(v27 + 36)];
  *v28 = v26;
  v28[8] = 1;
  LOBYTE(v26) = sub_1BA4A5B98();
  sub_1BA4A5188();
  v29 = &v14[*(v25 + 36)];
  *v29 = v26;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BA4B5460;
  v50 = *v56;
  LOBYTE(v51) = *(v56 + 16);
  v35 = v50;
  if (v51 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v37 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v38 = v42;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v50);
    (*(v43 + 8))(v38, v44);
    v35 = v48;
    v36 = v49;
  }

  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  *(v34 + 48) = 0x656C746974627553;
  *(v34 + 56) = 0xE800000000000000;
  v39 = sub_1BA4A6AE8();

  v40 = HKUIJoinStringsForAutomationIdentifier();

  if (v40)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D6108();
    sub_1BA4A5F18();

    sub_1BA0D6294(v23, sub_1BA0D5F34);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA0D39AC()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 16);
  v10 = *v0;
  v6 = v10;
  if (v11 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v10);
    (*(v2 + 8))(v5, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1BA0D3B14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v13 = *v1;
  v14 = v3;
  v4 = *(v1 + 32);
  v15 = v4;
  if (v4)
  {
    v12[0] = *(&v14 + 1);
    v12[1] = v4;

    sub_1BA0D34BC(v12, &v13, a1);

    sub_1BA0D6E7C(0, &qword_1EBBEBB00, sub_1BA0D5F34, MEMORY[0x1E697CBE8]);
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a1;
    v9 = 0;
  }

  else
  {
    sub_1BA0D6E7C(0, &qword_1EBBEBB00, sub_1BA0D5F34, MEMORY[0x1E697CBE8]);
    v6 = *(*(v10 - 8) + 56);
    v7 = v10;
    v8 = a1;
    v9 = 1;
  }

  return v6(v8, v9, 1, v7);
}

uint64_t sub_1BA0D3C64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA0D5924(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v36[-v14];
  sub_1BA0D57B0(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v36[-v22];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v36[-v26];
  v28 = a1[4];
  if (v28)
  {
    v37 = a1[3];
    v38 = v28;

    sub_1BA0D40A0(&v37, a1, v23);

    sub_1BA0D6E7C(0, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8]);
    (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
  }

  else
  {
    sub_1BA0D6E7C(0, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8]);
    (*(*(v30 - 8) + 56))(v23, 1, 1, v30);
  }

  sub_1BA0D6768(v23, v27, sub_1BA0D57B0);
  v31 = a1[6];
  if (v31)
  {
    v37 = a1[5];
    v38 = v31;

    sub_1BA0D43AC(&v37, a1, v11);

    sub_1BA0D6E7C(0, &qword_1EBBEBAC0, sub_1BA0D594C, MEMORY[0x1E697CBE8]);
    (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
  }

  else
  {
    sub_1BA0D6E7C(0, &qword_1EBBEBAC0, sub_1BA0D594C, MEMORY[0x1E697CBE8]);
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  }

  sub_1B9F935E8(v11, v15);
  sub_1BA0D683C(v27, v19, sub_1BA0D57B0);
  sub_1B9F9364C(v15, v7);
  sub_1BA0D683C(v19, a2, sub_1BA0D57B0);
  sub_1BA0D5740(0);
  sub_1B9F9364C(v7, a2 + *(v34 + 48));
  sub_1BA0D6294(v15, sub_1BA0D5924);
  sub_1BA0D6B24(v27, sub_1BA0D57B0);
  sub_1BA0D6294(v7, sub_1BA0D5924);
  return sub_1BA0D6B24(v19, sub_1BA0D57B0);
}

void sub_1BA0D40A0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v33 = a2;
  v4 = sub_1BA4A5D18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  *&v28 = v9;
  *(&v28 + 1) = v10;
  sub_1B9F252FC();

  v11 = sub_1BA4A5E18();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1BA4A5C18();
  (*(v5 + 104))(v8, *MEMORY[0x1E6980EA8], v4);
  v18 = sub_1BA4A5D38();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  LOBYTE(v28) = v15 & 1;
  v20 = swift_getKeyPath();
  *&v28 = v11;
  *(&v28 + 1) = v13;
  LOBYTE(v29) = v15 & 1;
  *(&v29 + 1) = v17;
  LOWORD(v30) = 256;
  *(&v30 + 1) = KeyPath;
  *&v31 = v18;
  *(&v31 + 1) = v20;
  v32 = 1;
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5460;
  *(v21 + 32) = sub_1BA0D39AC();
  *(v21 + 40) = v22;
  *(v21 + 48) = 0x7470697263736544;
  *(v21 + 56) = 0xEB000000006E6F69;
  v23 = sub_1BA4A6AE8();

  v24 = HKUIJoinStringsForAutomationIdentifier();

  if (v24)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D57D8(0);
    sub_1BA0D66E4(&qword_1EDC5EF08, sub_1BA0D57D8, sub_1BA0D5B8C);
    sub_1BA4A5F18();

    v26[2] = v30;
    v26[3] = v31;
    v27 = v32;
    v26[0] = v28;
    v26[1] = v29;
    sub_1BA0D6B24(v26, sub_1BA0D57D8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA0D43AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = sub_1BA4A5A68();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D5A80(0, &qword_1EBBEBAD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v30 - v12;
  sub_1BA0D594C(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = a1[1];
  v33 = v19;
  v34 = v20;
  v21 = swift_allocObject();
  v22 = *(a2 + 48);
  *(v21 + 48) = *(a2 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a2 + 64);
  v23 = *(a2 + 16);
  *(v21 + 16) = *a2;
  *(v21 + 32) = v23;

  sub_1BA0D5DA0(a2, v32);
  sub_1B9F252FC();
  sub_1BA4A61E8();
  sub_1BA4A5A58();
  sub_1BA0D5AD4();
  sub_1B9F20854(&qword_1EBBEBAE8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v24 = v31;
  sub_1BA4A5EA8();
  (*(v35 + 8))(v7, v24);
  (*(v10 + 8))(v13, v9);
  v25 = &v18[*(v15 + 36)];
  sub_1BA0D5B58(0);
  sub_1BA4A5478();
  *v25 = swift_getKeyPath();
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5460;
  *(v26 + 32) = sub_1BA0D39AC();
  *(v26 + 40) = v27;
  *(v26 + 48) = 1802398028;
  *(v26 + 56) = 0xE400000000000000;
  v28 = sub_1BA4A6AE8();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D5DD8();
    sub_1BA4A5F18();

    sub_1BA0D6294(v18, sub_1BA0D594C);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA0D47A0@<X0>(uint64_t a9@<X8>)
{
  v11 = *(v9 + 48);
  v15[2] = *(v9 + 32);
  v15[3] = v11;
  v16 = *(v9 + 64);
  v12 = *(v9 + 16);
  v15[0] = *v9;
  v15[1] = v12;
  *a9 = sub_1BA4A5868();
  *(a9 + 8) = 0x4034000000000000;
  *(a9 + 16) = 0;
  sub_1BA0D4B90(0, &qword_1EBBEBA98, sub_1BA0D570C);
  return sub_1BA0D3C64(v15, a9 + *(v13 + 44));
}

void sub_1BA0D4824(uint64_t a1)
{
  if (!qword_1EBBEB9B0)
  {
    sub_1BA0D631C(255, &qword_1EBBEB9B8, sub_1BA0D48B0, MEMORY[0x1E697E5E0]);
    v1 = sub_1BA4A52C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB9B0);
    }
  }
}

void sub_1BA0D4920(uint64_t a1)
{
  if (!qword_1EBBEB9D0)
  {
    sub_1BA0D49B8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBEB9D0);
    }
  }
}

void sub_1BA0D49E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA0D6E7C(255, a3, a4, MEMORY[0x1E697CBE8]);
    v5 = sub_1BA4A7AA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA0D4A9C(uint64_t a1)
{
  if (!qword_1EBBEB9F8)
  {
    sub_1BA0D5884(255, &qword_1EBBEBA00, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578]);
    sub_1B9F89374(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB9F8);
    }
  }
}

void sub_1BA0D4B24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F864BC(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1BA4A5B08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA0D4B90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A52C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA0D4BF4(uint64_t a1)
{
  *(a1 + 16) = sub_1B9F20854(&qword_1EBBEBA18, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel, &protocol conformance descriptor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  result = sub_1B9F20854(&qword_1EBBEBA20, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel, &protocol conformance descriptor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  *(a1 + 24) = result;
  return result;
}

void sub_1BA0D4CBC(uint64_t a1)
{
  sub_1B9F864BC(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1B9F87E7C(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_1B9F37BB8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BA0D4DEC(uint64_t a1)
{
  sub_1B9F864BC(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BA0D0F10(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA0D4EBC(uint64_t a1)
{
  if (!qword_1EBBEBA50)
  {
    sub_1BA0D631C(255, &qword_1EBBEB9B8, sub_1BA0D48B0, MEMORY[0x1E697E5E0]);
    sub_1BA0D4F44();
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEBA50);
    }
  }
}

unint64_t sub_1BA0D4F44()
{
  result = qword_1EBBEBA58;
  if (!qword_1EBBEBA58)
  {
    sub_1BA0D631C(255, &qword_1EBBEB9B8, sub_1BA0D48B0, MEMORY[0x1E697E5E0]);
    sub_1B9F20854(&qword_1EBBEBA60, sub_1BA0D48B0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BA0D5054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1BA0D50B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1BA0D5124(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1BA0D5180(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1BA0D51EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BA0D5234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA0D52B0()
{
  result = qword_1EBBEBA68;
  if (!qword_1EBBEBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA68);
  }

  return result;
}

unint64_t sub_1BA0D5308()
{
  result = qword_1EBBEBA70;
  if (!qword_1EBBEBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA70);
  }

  return result;
}

unint64_t sub_1BA0D53B4()
{
  result = qword_1EBBEBA78;
  if (!qword_1EBBEBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA78);
  }

  return result;
}

unint64_t sub_1BA0D540C()
{
  result = qword_1EBBEBA80;
  if (!qword_1EBBEBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA80);
  }

  return result;
}

unint64_t sub_1BA0D5464()
{
  result = qword_1EBBEBA88;
  if (!qword_1EBBEBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA88);
  }

  return result;
}

unint64_t sub_1BA0D54BC()
{
  result = qword_1EBBEBA90;
  if (!qword_1EBBEBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA90);
  }

  return result;
}

uint64_t sub_1BA0D5510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001BA4E9FF0 == a2;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001BA4EA010 == a2 || (sub_1BA4A8338() & 1) != 0)
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

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1BA0D5740(uint64_t a1)
{
  if (!qword_1EBBEBAA8)
  {
    sub_1BA0D57B0(255);
    sub_1BA0D5924(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEBAA8);
    }
  }
}

void sub_1BA0D57D8(uint64_t a1)
{
  if (!qword_1EDC5EF00)
  {
    sub_1BA0D5884(255, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
    sub_1B9F864BC(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EF00);
    }
  }
}

void sub_1BA0D5884(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1BA0D5A80(255, a3, a4, a5, MEMORY[0x1E697E830]);
    sub_1BA0D4B24(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA0D5980(uint64_t a1)
{
  if (!qword_1EBBEBAD0)
  {
    sub_1BA0D5A80(255, &qword_1EBBEBAD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1BA4A5A68();
    sub_1BA0D5AD4();
    sub_1B9F20854(&qword_1EBBEBAE8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEBAD0);
    }
  }
}