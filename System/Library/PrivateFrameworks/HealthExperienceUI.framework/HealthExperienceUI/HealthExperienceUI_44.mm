uint64_t _s18HealthExperienceUI22CloudSyncStateObserverC05cloudegE9CompletedyySo07HKCloudeG0CF_0()
{
  v1 = sub_1BA4A2D28();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3E68();
  v11 = v0;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v42 = v2;
    v15 = v14;
    v40 = swift_slowAlloc();
    v43 = v40;
    *v15 = 136446466;
    v16 = v11;
    v38 = v13;
    v17 = v16;
    v18 = [v16 description];
    v41 = v6;
    v19 = v18;
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v39 = v7;
    v21 = v1;
    v22 = v20;
    v24 = v23;

    v25 = v22;
    v1 = v21;
    v26 = sub_1B9F0B82C(v25, v24, &v43);

    *(v15 + 4) = v26;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA505060, &v43);
    _os_log_impl(&dword_1B9F07000, v12, v38, "%{public}s - %{public}s", v15, 0x16u);
    v27 = v40;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    v28 = v15;
    v2 = v42;
    MEMORY[0x1BFAF43A0](v28, -1, -1);

    (*(v39 + 8))(v10, v41);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v29 = (*(v2 + 104))(v5, *MEMORY[0x1E69A32E8], v1);
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v37[-16] = v11;
  *&v37[-8] = v5;

  sub_1BA4A24E8();

  v32 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x98))(v31);
  if (v32)
  {
    v34 = v32;
    v35 = v33;
    v32(v5);
    sub_1B9F0E310(v34, v35);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1BA3B4748(void *a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v8, v9);
  v49 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v44 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v44 - v17;
  v19 = a1;
  sub_1BA4A2908();
  sub_1BA4A3E68();
  sub_1B9F39FD0(v18, v14, MEMORY[0x1E69A3190]);
  v20 = v1;
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v48 = v4;
    v24 = v23;
    v47 = swift_slowAlloc();
    v50 = v47;
    *v24 = 136446722;
    v25 = v20;
    v26 = [v25 description];
    v45 = v22;
    v27 = v26;
    v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v44[1] = v8;
    v29 = v28;
    v46 = v3;
    v31 = v30;

    v32 = sub_1B9F0B82C(v29, v31, &v50);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_1B9F0B82C(0xD000000000000029, 0x80000001BA505030, &v50);
    *(v24 + 22) = 2082;
    sub_1B9F39FD0(v14, v49, MEMORY[0x1E69A3190]);
    v33 = sub_1BA4A6808();
    v35 = v34;
    sub_1B9F0DF80(v14, MEMORY[0x1E69A3190]);
    v36 = sub_1B9F0B82C(v33, v35, &v50);

    *(v24 + 24) = v36;
    _os_log_impl(&dword_1B9F07000, v21, v45, "%{public}s - %{public}s, state: %{public}s", v24, 0x20u);
    v37 = v47;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v37, -1, -1);
    MEMORY[0x1BFAF43A0](v24, -1, -1);

    v38 = (*(v48 + 8))(v7, v46);
  }

  else
  {

    sub_1B9F0DF80(v14, MEMORY[0x1E69A3190]);
    v38 = (*(v4 + 8))(v7, v3);
  }

  v39 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0xB0))(v38);
  if (v39)
  {
    v41 = v39;
    v42 = v40;
    v39(v18);
    sub_1B9F0E310(v41, v42);
  }

  return sub_1B9F0DF80(v18, MEMORY[0x1E69A3190]);
}

id sub_1BA3B4DA4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA3B4FB0()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image];
  if (v1)
  {
    v2 = v0;
    v36 = v1;
    v3 = COERCE_DOUBLE(sub_1BA4A7748());
    if (v4)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v3;
    }

    [v36 size];
    if (v6 <= 0.0 || ([v36 size], v5 >= v7))
    {
      v29 = v36;
    }

    else
    {
      [v0 bounds];
      v34 = ceil(fabs(v5 * 0.5));
      v39 = CGRectInset(v38, 0.0, v34);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      v35 = v39.size.width;
      height = v39.size.height;
      [v36 size];
      v14 = v12 / v13;
      if (v13 == 0.0)
      {
        v14 = 0.0;
      }

      v40.origin.x = sub_1BA32EAD4(v14, x, y, width, height);
      v15 = v40.origin.x;
      v16 = v40.origin.y;
      v17 = v40.size.width;
      v18 = v40.size.height;
      v31 = CGRectGetHeight(v40);
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = v35;
      v41.size.height = height;
      v30 = CGRectGetHeight(v41);
      v33 = v15;
      v42.origin.x = v15;
      v42.origin.y = v16;
      v32 = v18;
      v42.size.width = v17;
      v42.size.height = v18;
      v19 = CGRectGetHeight(v42);
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = v35;
      v43.size.height = height;
      if (v5 >= vabdd_f64(v19, CGRectGetHeight(v43)))
      {
        v20 = sub_1BA3B4DA4();
        [v2 bounds];
      }

      else
      {
        v20 = sub_1BA3B4DA4();
        v44.origin.x = v33;
        v44.origin.y = v16;
        v44.size.width = v17;
        v44.size.height = v18;
        MinX = CGRectGetMinX(v44);
        v45.origin.x = v33;
        v45.origin.y = v16;
        v45.size.width = v17;
        v45.size.height = v32;
        v22 = v34 + CGRectGetMinY(v45) - v5 * (v31 / v30);
        v46.origin.x = v33;
        v46.origin.y = v16;
        v46.size.width = v17;
        v46.size.height = v32;
        v23 = CGRectGetWidth(v46);
        v47.origin.x = v33;
        v47.origin.y = v16;
        v47.size.width = v17;
        v47.size.height = v32;
        v24 = CGRectGetHeight(v47);
        v25 = v23;
        v26 = v22;
        v27 = v24;
        v28 = MinX;
      }

      [v20 setFrame_];

      v29 = v20;
    }
  }
}

id sub_1BA3B5250(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AspectFitScalingImageView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA3B52F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *v0;

  MEMORY[0x1BFAF1350](v1, v2);
  return v4;
}

uint64_t sub_1BA3B5344(uint64_t a1)
{
  v2 = sub_1BA298604();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA3B5390()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v8], &v40);
  if (!v41)
  {
    sub_1B9F7B644(&v40);
LABEL_6:
    sub_1BA4A3DD8();
    v14 = v1;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v3;
      v19 = v18;
      *&v35 = v18;
      *v17 = 136315394;
      *&v42[0] = ObjectType;
      swift_getMetatypeMetadata();
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v35);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      sub_1B9F68124(&v1[v8], v42);
      sub_1B9F0D20C(0, &qword_1EDC6E1A0, sub_1B9FCD918);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v35);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v15, v16, "Unexpected item received in %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);

      return (*(v4 + 8))(v7, v33);
    }

    else
    {

      return (*(v4 + 8))(v7, v3);
    }
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  *v43 = v37;
  *&v43[16] = v38;
  *&v43[32] = v39;
  v42[0] = v35;
  v42[1] = v36;
  [*&v1[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView] setImage_];
  v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel];
  v10 = sub_1BA4A6758();
  [v9 setText_];

  v11 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel];
  v40 = *&v43[8];
  v12 = *&v43[16];
  if (*&v43[16])
  {
    v13 = v11;
    sub_1B9F87F44(&v40, &v35);
    v12 = sub_1BA4A6758();
    sub_1BA3B86E8(&v40, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F23348);
  }

  else
  {
    v27 = v11;
  }

  [v11 setText_];

  v28 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel];
  v35 = *&v43[24];
  v29 = *&v43[32];
  if (*&v43[32])
  {
    v30 = v28;
    sub_1B9F87F44(&v35, v34);
    v29 = sub_1BA4A6758();
    sub_1BA3B86E8(&v35, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F23348);
  }

  else
  {
    v31 = v28;
  }

  [v28 setText_];

  sub_1BA3B75C0(v42);
  return sub_1BA298658(v42);
}

id sub_1BA3B5848(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v112 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v111 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v109 - v18;
  v20 = &v5[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v21] = v22;
  v23 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = objc_opt_self();
  v26 = [v25 secondarySystemGroupedBackgroundColor];
  [v24 setBackgroundColor_];

  [v24 hk:40.0 maskAllCornersWithRadius:?];
  *&v5[v23] = v24;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setContentMode_];

  *&v5[v27] = v28;
  v29 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [v25 labelColor];
  v31 = &selRef_preferredContentSizeCategory;
  [v29 setTextColor_];

  v32 = *MEMORY[0x1E69DDDB8];
  v115 = objc_opt_self();
  v33 = [v115 preferredFontDescriptorWithTextStyle:v32 compatibleWithTraitCollection:0];
  v34 = [v33 fontDescriptorWithSymbolicTraits_];

  if (v34)
  {
    v35 = [objc_opt_self() fontWithDescriptor:v34 size:0.0];

    v36 = v115;
  }

  else
  {
    sub_1BA4A3DD8();
    v37 = v32;
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v118 = v110;
      *v40 = 136315906;
      v41 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v43 = sub_1B9F0B82C(v41, v42, &v118);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v116 = 0;
      v117 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v44 = sub_1BA4A6808();
      v46 = sub_1B9F0B82C(v44, v45, &v118);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2080;
      LODWORD(v116) = 2;
      type metadata accessor for SymbolicTraits(0);
      v47 = sub_1BA4A6808();
      v49 = sub_1B9F0B82C(v47, v48, &v118);

      *(v40 + 24) = v49;
      *(v40 + 32) = 2112;
      v50 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v40 + 34) = v50;
      v51 = v109;
      *v109 = v50;
      _os_log_impl(&dword_1B9F07000, v38, v39, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v40, 0x2Au);
      sub_1BA3B86E8(v51, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v51, -1, -1);
      v52 = v110;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v52, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    (*(v113 + 8))(v19, v114);
    v36 = v115;
    v53 = [v115 preferredFontDescriptorWithTextStyle_];
    v35 = [objc_opt_self() fontWithDescriptor:v53 size:0.0];

    v31 = &selRef_preferredContentSizeCategory;
  }

  v54 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel;
  [v29 setFont_];

  [v29 setNumberOfLines_];
  [v29 setTextAlignment_];
  [v29 setAdjustsFontForContentSizeCategory_];
  *&v5[v54] = v29;
  v55 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];
  v56 = [v25 labelColor];
  [v55 setTextColor_];

  v57 = *MEMORY[0x1E69DDD80];
  v58 = [v36 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v58)
  {
    v59 = v58;
    v60 = [objc_opt_self() fontWithDescriptor:v58 size:0.0];
  }

  else
  {
    v61 = v111;
    sub_1BA4A3DD8();
    v62 = v57;
    v63 = sub_1BA4A3E88();
    v64 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v118 = v110;
      *v65 = 136315906;
      v66 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v68 = sub_1B9F0B82C(v66, v67, &v118);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      v116 = 0;
      v117 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v69 = sub_1BA4A6808();
      v71 = sub_1B9F0B82C(v69, v70, &v118);

      *(v65 + 14) = v71;
      *(v65 + 22) = 2080;
      LODWORD(v116) = 0;
      type metadata accessor for SymbolicTraits(0);
      v72 = sub_1BA4A6808();
      v74 = sub_1B9F0B82C(v72, v73, &v118);

      *(v65 + 24) = v74;
      v36 = v115;
      *(v65 + 32) = 2112;
      v75 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v65 + 34) = v75;
      v76 = v109;
      *v109 = v75;
      _os_log_impl(&dword_1B9F07000, v63, v64, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v65, 0x2Au);
      sub_1BA3B86E8(v76, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v76, -1, -1);
      v77 = v110;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v77, -1, -1);
      MEMORY[0x1BFAF43A0](v65, -1, -1);

      (*(v113 + 8))(v111, v114);
    }

    else
    {

      (*(v113 + 8))(v61, v114);
    }

    v59 = [v36 preferredFontDescriptorWithTextStyle_];
    v60 = [objc_opt_self() fontWithDescriptor:v59 size:0.0];
    v31 = &selRef_preferredContentSizeCategory;
  }

  v78 = v60;

  v79 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel;
  [v55 setFont_];

  [v55 setNumberOfLines_];
  [v55 setTextAlignment_];
  [v55 setAdjustsFontForContentSizeCategory_];
  *&v5[v79] = v55;
  v80 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v80 setTranslatesAutoresizingMaskIntoConstraints_];
  [v80 setAdjustsFontForContentSizeCategory_];
  v81 = *MEMORY[0x1E69DDD08];
  v82 = [v36 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:0];
  if (v82)
  {
    v83 = v82;
    v84 = [objc_opt_self() fontWithDescriptor:v82 size:0.0];
  }

  else
  {
    v85 = v112;
    sub_1BA4A3DD8();
    v86 = v81;
    v87 = sub_1BA4A3E88();
    v88 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v118 = v111;
      *v89 = 136315906;
      v90 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v92 = sub_1B9F0B82C(v90, v91, &v118);

      *(v89 + 4) = v92;
      *(v89 + 12) = 2080;
      v116 = 0;
      v117 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v93 = sub_1BA4A6808();
      v95 = sub_1B9F0B82C(v93, v94, &v118);

      *(v89 + 14) = v95;
      *(v89 + 22) = 2080;
      LODWORD(v116) = 0;
      type metadata accessor for SymbolicTraits(0);
      v96 = sub_1BA4A6808();
      v98 = sub_1B9F0B82C(v96, v97, &v118);

      *(v89 + 24) = v98;
      v36 = v115;
      *(v89 + 32) = 2112;
      v99 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v89 + 34) = v99;
      v100 = v110;
      *v110 = v99;
      _os_log_impl(&dword_1B9F07000, v87, v88, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v89, 0x2Au);
      sub_1BA3B86E8(v100, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v100, -1, -1);
      v101 = v111;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v101, -1, -1);
      MEMORY[0x1BFAF43A0](v89, -1, -1);

      (*(v113 + 8))(v112, v114);
    }

    else
    {

      (*(v113 + 8))(v85, v114);
    }

    v31 = &selRef_preferredContentSizeCategory;
    v83 = [v36 preferredFontDescriptorWithTextStyle_];
    v84 = [objc_opt_self() fontWithDescriptor:v83 size:0.0];
  }

  v102 = v84;

  v103 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel;
  [v80 setFont_];

  v104 = [v25 secondaryLabelColor];
  [v80 v31[152]];

  [v80 setTextAlignment_];
  [v80 setNumberOfLines_];
  *&v5[v103] = v80;
  v5[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_baseConstraintsActive] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabelConstraints] = MEMORY[0x1E69E7CC0];
  v105 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  v119.receiver = v5;
  v119.super_class = v105;
  v106 = objc_msgSendSuper2(&v119, sel_initWithFrame_, a1, a2, a3, a4);
  v107 = [v25 clearColor];
  [v106 setBackgroundColor_];

  sub_1BA3B74E0();
  return v106;
}

id sub_1BA3B6688(void *a1)
{
  v2 = v1;
  v108 = a1;
  v3 = sub_1BA4A3EA8();
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v107 = &v103 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v103 - v12;
  v14 = &v2[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v15] = v16;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = objc_opt_self();
  v20 = [v19 secondarySystemGroupedBackgroundColor];
  [v18 setBackgroundColor_];

  [v18 hk:40.0 maskAllCornersWithRadius:?];
  *&v2[v17] = v18;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setContentMode_];

  *&v2[v21] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = [v19 labelColor];
  [v23 setTextColor_];

  v25 = *MEMORY[0x1E69DDDB8];
  v111 = objc_opt_self();
  v26 = [v111 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
  v27 = [v26 fontDescriptorWithSymbolicTraits_];

  v105 = v6;
  v106 = v19;
  if (v27)
  {
    v28 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];

    v29 = &selRef_preferredContentSizeCategory;
    v30 = v111;
    v31 = v107;
  }

  else
  {
    sub_1BA4A3DD8();
    v32 = v25;
    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v114 = v36;
      *v35 = 136315906;
      v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v39 = sub_1B9F0B82C(v37, v38, &v114);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v112 = 0;
      v113 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v40 = sub_1BA4A6808();
      v42 = sub_1B9F0B82C(v40, v41, &v114);

      *(v35 + 14) = v42;
      *(v35 + 22) = 2080;
      LODWORD(v112) = 2;
      type metadata accessor for SymbolicTraits(0);
      v43 = sub_1BA4A6808();
      v45 = sub_1B9F0B82C(v43, v44, &v114);

      *(v35 + 24) = v45;
      v19 = v106;
      *(v35 + 32) = 2112;
      v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v35 + 34) = v46;
      v47 = v104;
      *v104 = v46;
      _os_log_impl(&dword_1B9F07000, v33, v34, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v35, 0x2Au);
      sub_1BA3B86E8(v47, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v47, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    (*(v109 + 8))(v13, v110);
    v29 = &selRef_preferredContentSizeCategory;
    v30 = v111;
    v31 = v107;
    v48 = [v111 preferredFontDescriptorWithTextStyle_];
    v28 = [objc_opt_self() fontWithDescriptor:v48 size:0.0];

    v6 = v105;
  }

  v49 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel;
  [v23 setFont_];

  [v23 setNumberOfLines_];
  [v23 setTextAlignment_];
  [v23 setAdjustsFontForContentSizeCategory_];
  *&v2[v49] = v23;
  v50 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  v51 = [v19 labelColor];
  [v50 v29[152]];

  v52 = *MEMORY[0x1E69DDD80];
  v53 = [v30 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v53)
  {
    v54 = v53;
    v55 = [objc_opt_self() fontWithDescriptor:v53 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v56 = v52;
    v57 = sub_1BA4A3E88();
    v58 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v114 = v107;
      *v59 = 136315906;
      v60 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v62 = sub_1B9F0B82C(v60, v61, &v114);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      v112 = 0;
      v113 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v63 = sub_1BA4A6808();
      v65 = sub_1B9F0B82C(v63, v64, &v114);

      *(v59 + 14) = v65;
      *(v59 + 22) = 2080;
      v30 = v111;
      LODWORD(v112) = 0;
      type metadata accessor for SymbolicTraits(0);
      v66 = sub_1BA4A6808();
      v68 = sub_1B9F0B82C(v66, v67, &v114);

      *(v59 + 24) = v68;
      *(v59 + 32) = 2112;
      v69 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v59 + 34) = v69;
      v70 = v104;
      *v104 = v69;
      _os_log_impl(&dword_1B9F07000, v57, v58, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v59, 0x2Au);
      sub_1BA3B86E8(v70, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      v71 = v70;
      v29 = &selRef_preferredContentSizeCategory;
      MEMORY[0x1BFAF43A0](v71, -1, -1);
      v72 = v107;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v72, -1, -1);
      MEMORY[0x1BFAF43A0](v59, -1, -1);
    }

    (*(v109 + 8))(v31, v110);
    v54 = [v30 preferredFontDescriptorWithTextStyle_];
    v55 = [objc_opt_self() fontWithDescriptor:v54 size:0.0];
    v6 = v105;
    v19 = v106;
  }

  v73 = v55;

  v74 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel;
  [v50 setFont_];

  [v50 setNumberOfLines_];
  [v50 setTextAlignment_];
  [v50 setAdjustsFontForContentSizeCategory_];
  *&v2[v74] = v50;
  v75 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v75 setTranslatesAutoresizingMaskIntoConstraints_];
  [v75 setAdjustsFontForContentSizeCategory_];
  v76 = *MEMORY[0x1E69DDD08];
  v77 = [v30 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:0];
  if (v77)
  {
    v78 = v77;
    v79 = [objc_opt_self() fontWithDescriptor:v77 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v80 = v76;
    v81 = sub_1BA4A3E88();
    v82 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v114 = v107;
      *v83 = 136315906;
      v84 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v86 = sub_1B9F0B82C(v84, v85, &v114);

      *(v83 + 4) = v86;
      *(v83 + 12) = 2080;
      v112 = 0;
      v113 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v87 = sub_1BA4A6808();
      v89 = sub_1B9F0B82C(v87, v88, &v114);

      *(v83 + 14) = v89;
      *(v83 + 22) = 2080;
      v30 = v111;
      LODWORD(v112) = 0;
      type metadata accessor for SymbolicTraits(0);
      v90 = sub_1BA4A6808();
      v92 = sub_1B9F0B82C(v90, v91, &v114);
      v29 = &selRef_preferredContentSizeCategory;

      *(v83 + 24) = v92;
      *(v83 + 32) = 2112;
      v93 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v83 + 34) = v93;
      v94 = v104;
      *v104 = v93;
      _os_log_impl(&dword_1B9F07000, v81, v82, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v83, 0x2Au);
      sub_1BA3B86E8(v94, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v94, -1, -1);
      v95 = v107;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v95, -1, -1);
      MEMORY[0x1BFAF43A0](v83, -1, -1);

      (*(v109 + 8))(v105, v110);
    }

    else
    {

      (*(v109 + 8))(v6, v110);
    }

    v19 = v106;
    v78 = [v30 preferredFontDescriptorWithTextStyle_];
    v79 = [objc_opt_self() fontWithDescriptor:v78 size:0.0];
  }

  v96 = v79;

  v97 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel;
  [v75 setFont_];

  v98 = [v19 secondaryLabelColor];
  [v75 v29[152]];

  [v75 setTextAlignment_];
  [v75 setNumberOfLines_];
  *&v2[v97] = v75;
  v2[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_baseConstraintsActive] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabelConstraints] = MEMORY[0x1E69E7CC0];
  v99 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  v115.receiver = v2;
  v115.super_class = v99;
  v100 = v108;
  v101 = objc_msgSendSuper2(&v115, sel_initWithCoder_, v108);

  if (v101)
  {
  }

  return v101;
}

id sub_1BA3B74E0()
{
  v1 = [v0 contentView];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  [v1 addSubview_];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  [*&v0[v2] addSubview_];
  [*&v0[v2] addSubview_];
  [*&v0[v2] addSubview_];
  [*&v0[v2] addSubview_];
  v4 = *&v0[v3];
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView];

  return [v4 addSubview_];
}

void sub_1BA3B75C0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_baseConstraintsActive;
  if ((*(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_baseConstraintsActive) & 1) == 0)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v6 = sub_1BA3B7940();
    sub_1B9F73B50(v6);
    v7 = sub_1BA3B7ED8();
    sub_1B9F73B50(v7);
    v8 = sub_1BA3B7BA4();
    sub_1B9F73B50(v8);
    v9 = sub_1BA3B7D88();
    sub_1B9F73B50(v9);
    v10 = sub_1BA3B80A0();
    sub_1B9F73B50(v10);
    sub_1B9F73B50(v26);
    *(v1 + v5) = 1;
  }

  if (*(a1 + 64))
  {
    *(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabelConstraints) = sub_1BA3B8260();

    sub_1B9F73B50(v11);
    v25 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint);
    v26 = v4;
    v12 = v25;
    if (v25)
    {
      v13 = v12;
      MEMORY[0x1BFAF1510]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v4 = v26;
    }

    sub_1BA3B86E8(&v25, &qword_1EBBECF58, &qword_1EDC6B570, 0x1E696ACD8, sub_1B9F6A804);
    sub_1B9F73B50(v4);
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel) setHidden_];
  }

  else
  {
    v14 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel) bottomAnchor];
    v15 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) bottomAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    v17 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint);
    *(v2 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint) = v16;
    v18 = v16;

    sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5470;
    *(inited + 32) = v18;
    v20 = v18;
    sub_1B9F73B50(inited);

    sub_1B9F73B50(v21);
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel) setHidden_];
  }

  v22 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v23 = sub_1BA4A6AE8();

  [v22 activateConstraints_];

  v24 = sub_1BA4A6AE8();

  [v22 deactivateConstraints_];
}

uint64_t sub_1BA3B7940()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView] topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [*&v0[v2] bottomAnchor];
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v1 + 40) = v10;
  v11 = [*&v0[v2] leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v1 + 48) = v14;
  v15 = [*&v0[v2] trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v1 + 56) = v18;
  return v1;
}

uint64_t sub_1BA3B7BA4()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView) centerXAnchor];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) centerXAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*(v0 + v2) topAnchor];
  v8 = [*(v0 + v4) topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:20.0];

  *(v1 + 40) = v9;
  v10 = [*(v0 + v2) widthAnchor];
  v11 = [v10 constraintEqualToConstant_];

  *(v1 + 48) = v11;
  v12 = [*(v0 + v2) heightAnchor];
  v13 = [v12 constraintEqualToConstant_];

  *(v1 + 56) = v13;
  return v1;
}

uint64_t sub_1BA3B7D88()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B7510;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView) centerXAnchor];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView) centerXAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*(v0 + v2) centerYAnchor];
  v8 = [*(v0 + v4) centerYAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  return v1;
}

uint64_t sub_1BA3B7ED8()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B8B60;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel) topAnchor];
  v4 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView) bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:20.0];

  *(v1 + 32) = v5;
  v6 = [*(v0 + v2) leadingAnchor];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v8 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:0.0];

  *(v1 + 40) = v9;
  v10 = [*(v0 + v2) trailingAnchor];
  v11 = [*(v0 + v7) trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-0.0];

  *(v1 + 48) = v12;
  return v1;
}

uint64_t sub_1BA3B80A0()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B8B60;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel) leadingAnchor];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) leadingAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*(v0 + v2) trailingAnchor];
  v8 = [*(v0 + v4) trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*(v0 + v2) topAnchor];
  v11 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel) bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:12.0];

  *(v1 + 48) = v12;
  return v1;
}

uint64_t sub_1BA3B8260()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel;
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel) leadingAnchor];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel) leadingAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*(v0 + v2) trailingAnchor];
  v8 = [*(v0 + v4) trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*(v0 + v2) topAnchor];
  v11 = [*(v0 + v4) bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:12.0];

  *(v1 + 48) = v12;
  v13 = [*(v0 + v2) bottomAnchor];
  v14 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView) bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  return v1;
}

id sub_1BA3B8478(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA3B858C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA3B85E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3B5390();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA3B8650(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3B86B4;
}

uint64_t sub_1BA3B86B4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA3B5390();
  }

  return result;
}

uint64_t sub_1BA3B86E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA3B8748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BA3B8790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA3B87F4()
{
  result = qword_1EBBF1D80;
  if (!qword_1EBBF1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1D80);
  }

  return result;
}

void sub_1BA3B8848(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  for (i = (a1 + 48); ; i += 6)
  {
    v5 = *i;
    v6 = *(*i + 16);
    v7 = *a2;
    v8 = *(*a2 + 16);
    v9 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v11 = v7[3] >> 1, v11 >= v9))
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      v7 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v11 = v7[3] >> 1;
      if (*(v5 + 16))
      {
LABEL_14:
        if (v11 - v7[2] < v6)
        {
          goto LABEL_21;
        }

        sub_1B9F32244();
        swift_arrayInitWithCopy();

        if (v6)
        {
          v13 = v7[2];
          v14 = __OFADD__(v13, v6);
          v15 = v13 + v6;
          if (v14)
          {
            goto LABEL_22;
          }

          v7[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_20;
    }

LABEL_4:
    *a2 = v7;
    if (!--v2)
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

uint64_t sub_1BA3B8990()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v17 - v5;
  sub_1BA4A3E08();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    sub_1BA4A3C48();
    v17[1] = sub_1BA4A3C38();
    sub_1BA3B96F8(0);
    v11 = sub_1BA4A6808();
    v13 = sub_1B9F0B82C(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "FoundationPluginBundleProvider.sharedInstance: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v1 + 8))(v6, v0);
  sub_1BA4A3C48();
  sub_1BA4A3C38();
  v14 = sub_1BA4A3B88();

  v15 = sub_1BA2FD2A8();

  return v15;
}

uint64_t sub_1BA3B8C84(void *a1)
{
  v2 = v1;
  v54 = sub_1BA4A1798();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI18FeaturesDataSource_healthRecordsPluginAccounts);
  *v7 = sub_1BA3B8990();
  v7[1] = v8;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI18FeaturesDataSource_healthStore;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI18FeaturesDataSource_healthStore) = a1;
  v58 = MEMORY[0x1E69E7CC0];
  v10 = a1;
  v11 = [v10 profileIdentifier];
  v12 = [v11 type];

  v13 = sub_1BA4A2C68();
  if (v12 == 1 && (v13 & 1) != 0)
  {
    v14 = type metadata accessor for HealthChecklistProfileDataSourceItem();
    swift_allocObject();
    v15 = sub_1BA347B24();
    v16 = sub_1B9F281E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1B9F281E8((v17 > 1), v18 + 1, 1, v16);
    }

    *(&v60 + 1) = v14;
    *&v61 = sub_1B9F324E4(&qword_1EBBF0EA0, type metadata accessor for HealthChecklistProfileDataSourceItem, &unk_1BA4D2A98);
    *&v59 = v15;
    v16[2] = v18 + 1;
    sub_1B9F25598(&v59, &v16[5 * v18 + 4]);
    v58 = v16;
  }

  v19 = [v10 profileIdentifier];
  v20 = [v19 type];

  if (v20 == 1)
  {
    v21 = [*(v2 + v9) profileIdentifier];
    v22 = v21;
    if (*v7)
    {
      v23 = v7[1];
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 16);
      swift_unknownObjectRetain();
      v26 = v25(v22, ObjectType, v23);
      swift_unknownObjectRelease();
      if (!v26)
      {
LABEL_11:

        goto LABEL_14;
      }

      type metadata accessor for ArrayDataSource(0);
      if (swift_dynamicCastClass())
      {

        sub_1BA3B8848(v27, &v58);

        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_14:
  v28 = [v10 profileIdentifier];
  v29 = [v28 type];

  if (v29 == 1)
  {
    sub_1BA2483C0(&v59);
    v30 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1B9F281E8(0, v30[2] + 1, 1, v30);
    }

    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1B9F281E8((v31 > 1), v32 + 1, 1, v30);
    }

    v56 = &type metadata for NotificationsProfileDataSourceItem;
    v57 = sub_1BA248704();
    v33 = swift_allocObject();
    *&v55 = v33;
    v34 = v62;
    *(v33 + 48) = v61;
    *(v33 + 64) = v34;
    *(v33 + 80) = v63;
    *(v33 + 96) = v64;
    v35 = v60;
    *(v33 + 16) = v59;
    *(v33 + 32) = v35;
    v30[2] = v32 + 1;
    sub_1B9F25598(&v55, &v30[5 * v32 + 4]);
    v58 = v30;
  }

  v36 = [v10 profileIdentifier];
  v37 = [v36 type];

  if (v37 == 1 && [objc_opt_self() isOrganDonationRegistrationAvailable])
  {
    v38 = type metadata accessor for OrganDonationDataSourceItem();
    swift_allocObject();
    v39 = sub_1BA40B0D4();
    v40 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1B9F281E8(0, v40[2] + 1, 1, v40);
    }

    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_1B9F281E8((v41 > 1), v42 + 1, 1, v40);
    }

    v56 = v38;
    v57 = sub_1B9F324E4(&qword_1EBBF1DA8, type metadata accessor for OrganDonationDataSourceItem, &protocol conformance descriptor for OrganDonationDataSourceItem);
    *&v55 = v39;
    v40[2] = v42 + 1;
    sub_1B9F25598(&v55, &v40[5 * v42 + 4]);
    v58 = v40;
  }

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v44 = v58;
  sub_1BA4A1788();
  v45 = sub_1BA4A1748();
  v47 = v46;
  (*(v53 + 8))(v6, v54);
  v48 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v48);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v44;
  v49 = Array<A>.identifierToIndexDict()(v44);

  *(inited + 56) = v49;
  *(inited + 64) = v45;
  *(inited + 72) = v47;
  v50 = sub_1B9F1DAFC(inited, 1, sub_1BA3153B0, 0);

  return v50;
}

uint64_t sub_1BA3B9330()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1BA3B9370()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BA3B9450()
{
  sub_1BA3B9370();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeaturesDataSource(uint64_t a1)
{
  result = qword_1EBBF1D98;
  if (!qword_1EBBF1D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA3B954C@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v9 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v6, v8, 0, 0, 0, 0, v5, 0, 0);
  v11 = v10;
  a1[3] = v9;
  result = sub_1B9F324E4(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v11;
  return result;
}

void sub_1BA3B96F8(uint64_t a1)
{
  if (!qword_1EDC5F8F0)
  {
    sub_1BA4A3AE8();
    sub_1B9F324E4(&unk_1EDC5F8F8, MEMORY[0x1E69A3DF0], MEMORY[0x1E69A3DE8]);
    v1 = sub_1BA4A3BA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F8F0);
    }
  }
}

uint64_t static PPTUtilities.getSelectedNavigationController(in:)(void *a1)
{
  v1 = [a1 connectedScenes];
  sub_1B9F0ADF8(0, &unk_1EDC5E1D0, 0x1E69DCE70);
  sub_1BA3B9A88();
  v2 = sub_1BA4A6D78();

  v3 = sub_1BA1592F8(v2);

  if (!v3)
  {
    goto LABEL_23;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = [v4 windows];
  sub_1B9F0ADF8(0, &qword_1EBBF1DB0, 0x1E69DD2E8);
  v6 = sub_1BA4A6B08();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (!sub_1BA4A7CC8())
  {
LABEL_14:

LABEL_15:

    goto LABEL_23;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1BFAF2860](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 rootViewController];
  if (!v9)
  {
    goto LABEL_23;
  }

  v6 = v9;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_19:

    goto LABEL_23;
  }

  v11 = [v10 selectedViewController];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;

      return v14;
    }
  }

LABEL_23:
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

unint64_t sub_1BA3B9A88()
{
  result = qword_1EDC5E1C8;
  if (!qword_1EDC5E1C8)
  {
    sub_1B9F0ADF8(255, &unk_1EDC5E1D0, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E1C8);
  }

  return result;
}

HealthExperienceUI::PPTUtilities::TestOptions::Keys_optional __swiftcall PPTUtilities.TestOptions.Keys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PPTUtilities.TestOptions.Keys.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F69746172657469;
  }

  else
  {
    return 0x656D614E74736574;
  }
}

uint64_t sub_1BA3B9B94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F69746172657469;
  }

  else
  {
    v3 = 0x656D614E74736574;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA0000000000736ELL;
  }

  if (*a2)
  {
    v5 = 0x6F69746172657469;
  }

  else
  {
    v5 = 0x656D614E74736574;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000736ELL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();
  }

  return v8 & 1;
}

uint64_t sub_1BA3B9C40()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA3B9CC8(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA3B9D3C(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3B9DC0(char *a2@<X8>)
{
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1BA3B9E20(uint64_t *a1@<X8>)
{
  v2 = 0x656D614E74736574;
  if (*v1)
  {
    v2 = 0x6F69746172657469;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000736ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PPTUtilities.TestOptions.testName.getter()
{
  v1 = *v0;

  return v1;
}

void PPTUtilities.TestOptions.testName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t PPTUtilities.TestOptions.iterations.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

HealthExperienceUI::PPTUtilities::TestOptions __swiftcall PPTUtilities.TestOptions.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  *&v42[0] = 0x656D614E74736574;
  *(&v42[0] + 1) = 0xE800000000000000;
  sub_1BA4A7D58();
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_83;
  }

  v4 = sub_1B9FDA8E4(&v43);
  if ((v5 & 1) == 0)
  {
    goto LABEL_83;
  }

  sub_1B9F0AD9C(*(a1._rawValue + 7) + 32 * v4, v42);
  sub_1B9FDC768(&v43);
  sub_1B9F46920(v42, v45);
  sub_1B9F0AD9C(v45, &v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    goto LABEL_85;
  }

  v6 = v42[0];
  *&v41[0] = 0x6F69746172657469;
  *(&v41[0] + 1) = 0xEA0000000000736ELL;
  sub_1BA4A7D58();
  if (*(a1._rawValue + 2) && (v7 = sub_1B9FDA8E4(&v43), (v8 & 1) != 0))
  {
    sub_1B9F0AD9C(*(a1._rawValue + 7) + 32 * v7, v41);
    sub_1B9FDC768(&v43);
    sub_1B9F46920(v41, v42);
    sub_1B9F0AD9C(v42, &v43);
    if (swift_dynamicCast())
    {
      v9 = *(&v41[0] + 1);
      v10 = *&v41[0];
      v11 = HIBYTE(*(&v41[0] + 1)) & 0xFLL;
      v12 = *&v41[0] & 0xFFFFFFFFFFFFLL;
      if ((*(&v41[0] + 1) & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(*(&v41[0] + 1)) & 0xFLL;
      }

      else
      {
        v13 = *&v41[0] & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        if ((*(&v41[0] + 1) & 0x1000000000000000) == 0)
        {
          if ((*(&v41[0] + 1) & 0x2000000000000000) != 0)
          {
            v43 = *&v41[0];
            v44 = *(&v41[0] + 1) & 0xFFFFFFFFFFFFFFLL;
            if (LOBYTE(v41[0]) == 43)
            {
              if (!v11)
              {
LABEL_82:
                __break(1u);
LABEL_83:
                sub_1B9FDC768(&v43);
                goto LABEL_85;
              }

              if (--v11)
              {
                v16 = 0;
                v30 = &v43 + 1;
                while (1)
                {
                  v31 = *v30 - 48;
                  if (v31 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v16, 0xAuLL))
                  {
                    break;
                  }

                  v19 = __CFADD__(10 * v16, v31);
                  v16 = 10 * v16 + v31;
                  if (v19)
                  {
                    break;
                  }

                  ++v30;
                  if (!--v11)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (LOBYTE(v41[0]) == 45)
            {
              if (!v11)
              {
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

              if (--v11)
              {
                v16 = 0;
                v25 = &v43 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v16, 0xAuLL))
                  {
                    break;
                  }

                  v19 = 10 * v16 >= v26;
                  v16 = 10 * v16 - v26;
                  if (!v19)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v11)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else if (v11)
            {
              v16 = 0;
              v33 = &v43;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v16, 0xAuLL))
                {
                  break;
                }

                v19 = __CFADD__(10 * v16, v34);
                v16 = 10 * v16 + v34;
                if (v19)
                {
                  break;
                }

                ++v33;
                if (!--v11)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            if ((*&v41[0] & 0x1000000000000000) != 0)
            {
              v11 = (*(&v41[0] + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v39 = *(&v41[0] + 1);
              v11 = sub_1BA4A7EB8();
              v9 = v39;
            }

            v14 = *v11;
            if (v14 == 43)
            {
              if (v12 >= 1)
              {
                v27 = v12 - 1;
                if (v12 != 1)
                {
                  v16 = 0;
                  if (!v11)
                  {
                    goto LABEL_74;
                  }

                  v28 = (v11 + 1);
                  while (1)
                  {
                    v29 = *v28 - 48;
                    if (v29 > 9)
                    {
                      break;
                    }

                    if (!is_mul_ok(v16, 0xAuLL))
                    {
                      break;
                    }

                    v19 = __CFADD__(10 * v16, v29);
                    v16 = 10 * v16 + v29;
                    if (v19)
                    {
                      break;
                    }

                    ++v28;
                    if (!--v27)
                    {
LABEL_65:
                      LOBYTE(v11) = 0;
                      goto LABEL_74;
                    }
                  }
                }

                goto LABEL_73;
              }

              goto LABEL_81;
            }

            if (v14 == 45)
            {
              if (v12 >= 1)
              {
                v15 = v12 - 1;
                if (v12 != 1)
                {
                  v16 = 0;
                  if (!v11)
                  {
                    goto LABEL_74;
                  }

                  v17 = (v11 + 1);
                  while (1)
                  {
                    v18 = *v17 - 48;
                    if (v18 > 9)
                    {
                      break;
                    }

                    if (!is_mul_ok(v16, 0xAuLL))
                    {
                      break;
                    }

                    v19 = 10 * v16 >= v18;
                    v16 = 10 * v16 - v18;
                    if (!v19)
                    {
                      break;
                    }

                    ++v17;
                    if (!--v15)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                goto LABEL_73;
              }

              __break(1u);
              goto LABEL_80;
            }

            if (v12)
            {
              v16 = 0;
              if (!v11)
              {
                goto LABEL_74;
              }

              while (1)
              {
                v32 = *v11 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v16, 0xAuLL))
                {
                  break;
                }

                v19 = __CFADD__(10 * v16, v32);
                v16 = 10 * v16 + v32;
                if (v19)
                {
                  break;
                }

                ++v11;
                if (!--v12)
                {
                  goto LABEL_65;
                }
              }
            }
          }

LABEL_73:
          v16 = 0;
          LOBYTE(v11) = 1;
LABEL_74:
          LOBYTE(v41[0]) = v11;
          if ((v11 & 1) == 0)
          {
LABEL_75:

            __swift_destroy_boxed_opaque_existential_1(v42);
            v20 = __swift_destroy_boxed_opaque_existential_1(v45);
            v24 = 0;
            goto LABEL_29;
          }

          goto LABEL_77;
        }

        v40 = *(&v41[0] + 1);

        sub_1BA3BAA4C(v10, v40, 10);
        v16 = v35;
        v37 = v36;

        v9 = v40;
        if ((v37 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

LABEL_77:
      v43 = 0;
      v44 = 0xE000000000000000;
      v38 = v9;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD00000000000003ELL, 0x80000001BA5054E0);
      MEMORY[0x1BFAF1350](v10, v38);
LABEL_85:
      v20 = sub_1BA4A8018();
      __break(1u);
      goto LABEL_86;
    }

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {

    sub_1B9FDC768(&v43);
  }

  v20 = __swift_destroy_boxed_opaque_existential_1(v45);
  v16 = 0;
  v24 = 1;
LABEL_29:
  *v3 = v6;
  *(v3 + 16) = v16;
  *(v3 + 24) = v24;
LABEL_86:
  result.iterations.value = v22;
  result.testName._object = v21;
  result.testName._countAndFlagsBits = v20;
  result.iterations.is_nil = v23;
  return result;
}

void sub_1BA3BA4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1BA4A69D8();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BA3BB058(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1BA4A7EB8();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

void sub_1BA3BAA4C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_1BA4A69D8();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BA3BB058(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1BA4A7EB8();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

unint64_t sub_1BA3BAFD4()
{
  result = qword_1EBBF1DB8;
  if (!qword_1EBBF1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1DB8);
  }

  return result;
}

uint64_t sub_1BA3BB058(uint64_t a1, unint64_t a2)
{
  v2 = sub_1BA4A69E8();
  v6 = sub_1BA3BB0D8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1BA3BB0D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BA4A7AE8();
    if (!v9 || (v10 = v9, v11 = sub_1B9F2D098(v9, 0), v12 = sub_1BA3BB230(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1BA4A68B8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BA4A68B8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BA4A7EB8();
LABEL_4:

  return sub_1BA4A68B8();
}

unint64_t sub_1BA3BB230(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1BA3BB450(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BA4A6968();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BA4A7EB8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1BA3BB450(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1BA4A6948();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1BA3BB450(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BA4A6978();
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
    v5 = MEMORY[0x1BFAF1390](15, a1 >> 16);
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

uint64_t ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v18 = *a10;
  v19 = type metadata accessor for ContentConfigurationItem(0);
  *(a9 + v19[12]) = 0;
  *(a9 + v19[13]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_1B9F25598(a3, a9 + 72);
  *(a9 + 112) = v18;
  *(a9 + 120) = a4;
  v20 = *(a5 + 16);
  *(a9 + 16) = *a5;
  *(a9 + 32) = v20;
  *(a9 + 48) = *(a5 + 32);
  result = sub_1B9F2F728(a6, a9 + v19[10]);
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  v22 = (a9 + v19[11]);
  *v22 = a7;
  v22[1] = a8;
  return result;
}

uint64_t ContentConfigurationItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContentConfigurationItem.reuseIdentifier.getter()
{
  if (*(v0 + 112))
  {
    type metadata accessor for ContentConfigurationTableViewCell();
    v1 = &unk_1EBBF1DC0;
    v2 = type metadata accessor for ContentConfigurationTableViewCell;
  }

  else
  {
    type metadata accessor for ContentConfigurationCollectionViewListCell();
    v1 = &qword_1EDC601D0;
    v2 = type metadata accessor for ContentConfigurationCollectionViewListCell;
  }

  sub_1B9F2F9B0(0, v1, v2);
  return sub_1BA4A6808();
}

uint64_t ContentConfigurationItem.baseIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void ContentConfigurationItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *ContentConfigurationItem.leadingSwipeActionsConfigurationProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentConfigurationItem(0) + 48));
  v2 = v1;
  return v1;
}

void ContentConfigurationItem.leadingSwipeActionsConfigurationProvider.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentConfigurationItem(0) + 48);

  *(v1 + v3) = a1;
}

void *ContentConfigurationItem.trailingSwipeActionsConfigurationProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentConfigurationItem(0) + 52));
  v2 = v1;
  return v1;
}

void ContentConfigurationItem.trailingSwipeActionsConfigurationProvider.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentConfigurationItem(0) + 52);

  *(v1 + v3) = a1;
}

void *sub_1BA3BB878(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  v3 = v2;
  return v2;
}

void *sub_1BA3BB8A4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2;
  return v2;
}

uint64_t ContentConfigurationItem.updateContentConfiguration(for:using:)(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ContentConfigurationItem(0);
  v6 = (v2 + *(result + 44));
  if (*v6)
  {
    return (*v6)(a1, a2);
  }

  return result;
}

uint64_t ContentConfigurationItem.makeBackgroundContentConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContentConfigurationItem(0) + 40);

  return sub_1B9F66128(v3, a1);
}

Swift::Void __swiftcall ContentConfigurationItem.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  sub_1B9F2F698(v2 + 16, v7);
  v5 = v8;
  if (v8)
  {
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 16))(_, in, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1B9F2F610(v7);
  }
}

uint64_t ContentConfigurationItem.deselectionBehavior(in:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1B9F2F698(v2 + 16, v9 + 1);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1((v9 + 1), v10);
    (*(v6 + 24))(v9, a1, v5, v6);
    v7 = v9[0];
    result = __swift_destroy_boxed_opaque_existential_1((v9 + 1));
  }

  else
  {
    result = sub_1B9F2F610(v9 + 1);
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1BA3BBAD8(uint64_t a1, uint64_t a2)
{
  sub_1B9F2F698(v2 + 16, v8);
  v5 = v9;
  if (!v9)
  {
    return sub_1B9F2F610(v8);
  }

  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 16))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1BA3BBC44(void *a1, void *a2)
{
  v3 = v2;
  sub_1B9F0A534(v3 + 16, &v21);
  v20[0] = a1;
  v20[1] = a2;
  sub_1B9F0A534(v3 + 16, v17);
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v8 = *(v7 + 80);
  v9 = a1;
  v10 = a2;
  v11 = v8(v20, v6, v7);
  if (v11)
  {
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = *(v3 + 80);
    *(v3 + 80) = v12;
    v14 = v12;

    v15 = *(v3 + 56);

    v15(v14);

    return sub_1BA0C3344(v20);
  }

  else
  {
    sub_1BA0C3344(v20);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }
}

uint64_t sub_1BA3BBD50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3BBDCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BA3BBE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA3BBE98()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI25DownloadingDataDataSource_downloadingItem;
  v8 = type metadata accessor for DownloadingDataItem();
  v9 = swift_allocObject();
  *(v1 + v7) = v9;
  sub_1B9F28360(0);
  v10 = swift_allocObject();
  v18 = xmmword_1BA4B5480;
  *(v10 + 16) = xmmword_1BA4B5480;
  *(v10 + 56) = v8;
  *(v10 + 64) = sub_1BA39C588();
  *(v10 + 32) = v9;

  sub_1BA4A1788();
  v11 = sub_1BA4A1748();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v15 = Array<A>.identifierToIndexDict()(v14);

  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = v18;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v10;
  *(inited + 56) = v15;
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  return sub_1B9F1DAFC(inited, 1, sub_1BA3BC05C, 0);
}

void *sub_1BA3BC05C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBBE8850 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EBBF0B98);
  sub_1B9F37E38(v8, v7);
  v7[6] = 0x4034000000000000;
  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v7);
  return v9;
}

uint64_t DownloadingDataDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DownloadingDataDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DownloadingDataDataSource(uint64_t a1)
{
  result = qword_1EBBF1DC8;
  if (!qword_1EBBF1DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *HKTCategoryViewFactory.makeViewController(typeGroup:context:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v23 = *a1;
  v24 = v4;
  v25 = v6;
  v26 = v5;
  v27 = v8;
  v28 = v7;
  v9 = HKTypeGroup.displayCategory.getter();
  v10 = [v9 categoryID];

  if (v10 <= 5)
  {
    if ((v10 - 1) >= 2 && v10 != 4)
    {
      if (v10 == 5)
      {
        v17 = v3;
        v18 = v4;
        v19 = v6;
        v20 = v5;
        v21 = v8;
        v22 = v7;
        v15 = 0x80000001BA4E94E0;
        v12 = 0xD000000000000021;
        return HKTCategoryViewFactory.createViewController(hkTypeGroup:pluginName:context:)(&v17, v12, v15, a2);
      }

      goto LABEL_18;
    }

LABEL_12:
    v23 = v3;
    v24 = v4;
    v25 = v6;
    v26 = v5;
    v27 = v8;
    v28 = v7;
    return sub_1BA3A7EE8(&v23, a2);
  }

  if (v10 > 0x1F)
  {
    goto LABEL_18;
  }

  if (((1 << v10) & 0x4807C40) != 0)
  {
    goto LABEL_12;
  }

  if (v10 == 8)
  {
    v17 = v3;
    v18 = v4;
    v19 = v6;
    v20 = v5;
    v21 = v8;
    v22 = v7;
    v11 = "ugin.healthplugin";
    v12 = 0xD000000000000025;
    goto LABEL_16;
  }

  if (v10 == 31)
  {
    v17 = v3;
    v18 = v4;
    v19 = v6;
    v20 = v5;
    v21 = v8;
    v22 = v7;
    v11 = "hAppPlugin.healthplugin";
    v12 = 0xD000000000000027;
LABEL_16:
    v15 = v11 | 0x8000000000000000;
    return HKTCategoryViewFactory.createViewController(hkTypeGroup:pluginName:context:)(&v17, v12, v15, a2);
  }

LABEL_18:
  sub_1B9FCB51C();
  swift_allocError();
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 3;
  return swift_willThrow();
}

uint64_t sub_1BA3BC63C()
{
  if (*v0 <= 1u)
  {
    if (*v0)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (*v0 == 2)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA3BC8D0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3BC92C(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA3BC9C4(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA3BD624();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA3BCA34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA3BCA8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3BD624();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA3BCAF8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3BCB5C;
}

void sub_1BA3BCB5C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA3BD624();
  }
}

id ProfileContactOptionsCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ProfileContactOptionsCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAlignment_];
  [v11 setSpacing_];
  [v11 setLayoutMarginsRelativeArrangement_];
  [v11 setDirectionalLayoutMargins_];

  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
  v13 = [objc_opt_self() effectWithStyle_];
  v14 = [objc_opt_self() effectForBlurEffect:v13 style:4];

  v15 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v15;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ProfileContactOptionsCell();
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA3BCE50();

  return v16;
}

id sub_1BA3BCE50()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView] contentView];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack;
  [v3 addSubview_];

  [v0 addSubview_];
  [*&v0[v2] hk:*&v0[v4] alignConstraintsWithView:?];
  v5 = objc_opt_self();
  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B7510;
  v7 = [*&v0[v2] topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [*&v0[v2] bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v13 = sub_1BA4A6AE8();

  [v5 activateConstraints_];

  [*&v0[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v0[v4];

  return [v14 setAxis_];
}

uint64_t sub_1BA3BD09C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints];
  }

  else
  {
    v2 = sub_1BA3BD104(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1BA3BD104(char *a1)
{
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B8B60;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
  v4 = [*&a1[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView] centerXAnchor];
  v5 = [a1 centerXAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = [*&a1[v3] leadingAnchor];
  v8 = [a1 leadingAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor_];

  *(v2 + 40) = v9;
  v10 = [*&a1[v3] trailingAnchor];
  v11 = [a1 trailingAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor_];

  *(v2 + 48) = v12;
  return v2;
}

uint64_t sub_1BA3BD284()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints];
  }

  else
  {
    sub_1B9F109F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BA4B7510;
    v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
    v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView] leadingAnchor];
    v5 = [v0 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v6;
    v7 = [*&v0[v3] trailingAnchor];
    v8 = [v0 trailingAnchor];
    v9 = [v7 constraintLessThanOrEqualToAnchor_];

    *(v2 + 40) = v9;
    *&v0[v1] = v2;
  }

  return v2;
}

void sub_1BA3BD3DC(uint64_t a1)
{
  v2 = objc_opt_self();
  if (a1 == 1)
  {
    sub_1BA3BD284();
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v3 = sub_1BA4A6AE8();

    [v2 deactivateConstraints_];

    sub_1BA3BD09C();
  }

  else
  {
    sub_1BA3BD09C();
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v4 = sub_1BA4A6AE8();

    [v2 deactivateConstraints_];

    sub_1BA3BD284();
  }

  v5 = sub_1BA4A6AE8();

  [v2 activateConstraints_];
}

double sub_1BA3BD520()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  sub_1BA3BD3DC(v2);
  sub_1B9F7A684(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = sub_1BA4A4438();
  v5 = MEMORY[0x1E69DC130];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();
  swift_unknownObjectRelease();

  return result;
}

void sub_1BA3BD624()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v6, v17);
  if (v17[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    type metadata accessor for ProfileContactOptionsItem();
    if (swift_dynamicCast())
    {
      v7 = v16;
      sub_1BA3BD888(v16);

      return;
    }
  }

  else
  {
    sub_1B9F7B644(v17);
  }

  sub_1BA4A3E28();
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315138;
    v12 = sub_1BA4A85D8();
    v14 = sub_1B9F0B82C(v12, v13, v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%s] item is not an ProfileContactOptionsItem", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_1BA3BD888(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack;
  v4 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack) arrangedSubviews];
  sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
  v5 = sub_1BA4A6B08();

  if (v5 >> 62)
  {
    v6 = sub_1BA4A7CC8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {

    sub_1BA3BDD98(a1);
  }

  else
  {
    v7 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_contactOptions);
    v8 = *(v7 + 16);
    if (v8)
    {
      v33 = objc_opt_self();
      v32 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_isDisabled);
      v9 = (v7 + 32);
      swift_beginAccess();
      v31 = type metadata accessor for ContactQuickActionView();
      v35 = v1;
      v34 = v3;
      do
      {
        v10 = *v9++;
        v11 = *(v35 + v34);
        Strong = swift_unknownObjectWeakLoadStrong();
        v12 = objc_allocWithZone(v31);
        swift_unknownObjectWeakInit();
        *&v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate + 8] = 0;
        v13 = swift_unknownObjectWeakInit();
        v14 = &v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
        *v14 = 0;
        v14[1] = 0;
        *&v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView] = 0;
        *&v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint] = 0;
        v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType] = v10;
        *(v13 + 8) = &off_1F380BB18;
        swift_unknownObjectWeakAssign();
        v12[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled] = v32;
        swift_unknownObjectWeakAssign();
        v37 = v11;
        v15 = [v33 systemBlackColor];
        v16 = [v15 colorWithAlphaComponent_];

        v17 = [v33 systemBlackColor];
        v18 = [v17 colorWithAlphaComponent_];

        *&v12[OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_regularColor] = v16;
        *&v12[OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_highlightedColor] = v18;
        v19 = type metadata accessor for BackgroundHighlightableButton();
        v38.receiver = v12;
        v38.super_class = v19;
        v20 = v16;
        v21 = v18;
        v22 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        [v22 setBackgroundColor_];

        v23 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled;
        if (*(v22 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled))
        {
          v24 = 0.3;
        }

        else
        {
          v24 = 1.0;
        }

        v25 = v22;
        [v25 setAlpha_];
        [v25 setUserInteractionEnabled_];
        v26 = sub_1BA3BE24C();
        [v25 addSubview_];

        sub_1BA3BE778();
        sub_1BA3BEBCC();
        sub_1BA3BE9CC();
        sub_1BA3BEDC8();
        ContactQuickActionType.baseIdentifier.getter();
        v27 = sub_1BA4A6758();
        [v25 setAccessibilityIdentifier_];

        v28 = *&v25[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView];

        MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
        v29 = sub_1BA4A6758();

        [v28 setAccessibilityIdentifier_];

        sub_1BA3BC63C();
        v30 = sub_1BA4A6758();

        [v25 setAccessibilityLabel_];

        [v37 addArrangedSubview_];
        --v8;
      }

      while (v8);
    }
  }
}

double sub_1BA3BDD98(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack) arrangedSubviews];
  sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
  v6 = sub_1BA4A6B08();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFAF2860](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = v9;
      sub_1BA3BDEF8(&v13, a1, ObjectType);

      ++v8;
      if (v11 == i)
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

  return result;
}

void sub_1BA3BDEF8(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  type metadata accessor for ContactQuickActionView();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    *(v11 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate + 8) = &off_1F380BB18;
    swift_unknownObjectWeakAssign();
    v12 = v10;
    sub_1BA3BEDC8();
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[1] = v3;
      v17 = v16;
      v22 = v16;
      *v15 = 136315138;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] subview is not type ContactQuickActionView", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

void (*sub_1BA3BE1B4(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

id sub_1BA3BE24C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView);
  }

  else
  {
    v4 = sub_1BA3BE2B0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA3BE2B0(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setContentMode_];

  [v1 setUserInteractionEnabled_];
  v2 = sub_1BA4A6758();

  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
  return v1;
}

uint64_t ContactQuickActionType.baseIdentifier.getter()
{
  v1 = *v0;
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA505610);

  if (v1 > 1)
  {
    if (v1 == 2)
    {

      v2 = 0x656D695465636146;
      v3 = 0xE800000000000000;
      goto LABEL_9;
    }

    v2 = 1868983881;
LABEL_8:
    v3 = 0xE400000000000000;
    goto LABEL_9;
  }

  if (v1)
  {

    v2 = 1819042115;
    goto LABEL_8;
  }

  v2 = 0x6567617373654DLL;
  v3 = 0xE700000000000000;
LABEL_9:
  MEMORY[0x1BFAF1350](v2, v3);

  return v5;
}

double sub_1BA3BE778()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v4 = MEMORY[0x1E69DDD40];
  if (v2 != 1)
  {
    v4 = MEMORY[0x1E69DDD80];
  }

  v5 = *v4;
  v6 = sub_1B9F6B774(v5, 0, 1, 0, 0, *MEMORY[0x1E69DDC40], 1);
  v7 = objc_opt_self();
  v8 = [v7 configurationWithFont_];

  v9 = [v7 configurationWithScale_];
  v10 = [v8 configurationByApplyingConfiguration_];
  v11 = sub_1BA3BE24C();
  [v11 setPreferredSymbolConfiguration_];

  v12 = [v0 traitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = sub_1BA3BEAD0();
  v15 = v14;
  v16 = 48.0;
  if (v13 == 1)
  {
    v16 = 64.0;
  }

  [v14 setConstant_];

  sub_1B9F7A684(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5480;
  v18 = sub_1BA4A4438();
  v19 = MEMORY[0x1E69DC130];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();
  swift_unknownObjectRelease();

  return result;
}

double sub_1BA3BE9CC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_1BA3BFAD4(v2);
  sub_1B9F7A684(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = sub_1BA4A4178();
  v5 = MEMORY[0x1E69DC0F8];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();
  swift_unknownObjectRelease();

  return result;
}

id sub_1BA3BEAD0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint];
  }

  else
  {
    v4 = [v0 heightAnchor];
    v5 = [v0 traitCollection];
    v6 = [v5 horizontalSizeClass];

    v7 = 48.0;
    if (v6 == 1)
    {
      v7 = 64.0;
    }

    v8 = [v4 constraintEqualToConstant_];

    [v8 setActive_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1BA3BEBCC()
{
  v1 = objc_opt_self();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B8B60;
  v3 = [v0 widthAnchor];
  v4 = [v0 heightAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 multiplier:1.0];

  *(v2 + 32) = v5;
  v6 = sub_1BA3BE24C();
  v7 = [v6 centerYAnchor];

  v8 = [v0 centerYAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v2 + 40) = v9;
  v10 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView] centerXAnchor];
  v11 = [v0 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v2 + 48) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v13 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

void sub_1BA3BEDC8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_41;
  }

  v8 = *(v7 + 1);
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType;
  v59 = v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType];
  LOBYTE(v8) = (*(v8 + 64))(&v59, ObjectType, v8);
  swift_unknownObjectRelease();
  if (v8)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v7 + 1);
      v12 = swift_getObjectType();
      v57[0] = v0[v10];
      Strong = swift_unknownObjectWeakLoadStrong();
      v56 = (*(v11 + 56))(v57, Strong, v12, v11);

      swift_unknownObjectRelease();
      if (v56)
      {
        v14 = [v56 children];
        sub_1B9F0ADF8(0, &qword_1EBBF3400, 0x1E69DCC78);
        v15 = sub_1BA4A6B08();

        if (v15 >> 62)
        {
          v16 = sub_1BA4A7CC8();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v16)
        {
          v47 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled;
          v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled] = 1;
          [v1 setAlpha_];
          [v1 setUserInteractionEnabled_];
LABEL_36:
          v53 = v56;

          return;
        }

        [v0 setMenu_];
        v17 = [v56 children];
        v18 = sub_1BA4A6B08();

        if (v18 >> 62)
        {
          v19 = sub_1BA4A7CC8();
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v19 != 1)
        {
          [v0 setShowsMenuAsPrimaryAction_];
          goto LABEL_36;
        }

        v20 = [v56 children];
        v21 = sub_1BA4A6B08();

        if (v21 >> 62)
        {
          if (sub_1BA4A7CC8())
          {
            goto LABEL_13;
          }
        }

        else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_13:
          if ((v21 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1BFAF2860](0, v21);
LABEL_16:
            v23 = v22;

            objc_opt_self();
            v24 = swift_dynamicCastObjCClass();
            if (v24)
            {
              v25 = [v24 discoverabilityTitle];

              if (v25)
              {
                v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
                v28 = v27;

LABEL_35:
                v48 = swift_allocObject();
                *(v48 + 2) = v1;
                *(v48 + 3) = v26;
                *(v48 + 4) = v28;
                v49 = &v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
                v50 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
                v51 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction + 8];
                *v49 = sub_1BA3BFF44;
                v49[1] = v48;
                v52 = v1;
                sub_1B9F0E310(v50, v51);
                [v52 addTarget:v52 action:sel_buttonTapped_ forControlEvents:64];
                goto LABEL_36;
              }
            }

            else
            {
            }

LABEL_34:
            v26 = 0;
            v28 = 0;
            goto LABEL_35;
          }

          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v21 + 32);
            goto LABEL_16;
          }

          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        goto LABEL_34;
      }
    }

    v41 = swift_allocObject();
    *(v41 + 16) = v0;
    v42 = &v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
    v43 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
    v44 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction + 8];
    *v42 = sub_1BA3BFF3C;
    v42[1] = v41;
    v45 = v1;
    sub_1B9F0E310(v43, v44);

    [v45 addTarget:v45 action:sel_buttonTapped_ forControlEvents:64];
  }

  else
  {
    sub_1BA4A3DD8();
    v29 = v0;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = v55;
      *v32 = 136315394;
      v33 = sub_1BA4A85D8();
      v35 = sub_1B9F0B82C(v33, v34, &v58);
      v56 = v2;
      v36 = v35;

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v57[1] = v1[v10];
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v58);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[%s] No action is available for %s. Disabling button.", v32, 0x16u);
      v40 = v55;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);

      (*(v3 + 8))(v6, v56);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v46 = OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled;
    v29[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_isDisabled] = 1;
    [v29 setAlpha_];
    [v29 setUserInteractionEnabled_];
  }
}

uint64_t sub_1BA3BF49C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = &a1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v11 = a1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType];
    v10 = [a1 viewController];
    (*(v8 + 48))(&v11, a2, a3, v10, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA3BF568(_BYTE *a1)
{
  v2 = &a1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v7 = a1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType];
    v6 = [a1 viewController];
    sub_1BA48A278(&v7, 0, 0, v6, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BA3BF674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA3BE24C();

    MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v5 = sub_1BA3BE24C();
    [v5 setAccessibilityIdentifier_];
  }
}

void sub_1BA3BF76C()
{
  MEMORY[0x1BFAF44B0](v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_presentingViewController);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate);
  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction), *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction + 8));

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint);
}

id sub_1BA3BF7FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BA3BF8FC(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 != [a2 horizontalSizeClass])
    {
      if (v8 == 1)
      {
        v9 = 64.0;
      }

      else
      {
        v9 = 48.0;
      }

      if (v8 == 1)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = MEMORY[0x1E69DDD40];
      if (v8 != 1)
      {
        v11 = MEMORY[0x1E69DDD80];
      }

      v12 = *v11;
      v13 = sub_1B9F6B774(v12, 0, 1, 0, 0, *MEMORY[0x1E69DDC40], 1);
      v14 = objc_opt_self();
      v15 = [v14 configurationWithFont_];

      v16 = [v14 configurationWithScale_];
      v17 = [v15 configurationByApplyingConfiguration_];
      v18 = sub_1BA3BE24C();
      [v18 setPreferredSymbolConfiguration_];

      v19 = sub_1BA3BEAD0();
      [v19 setConstant_];

      v6 = v19;
    }
  }
}

void sub_1BA3BFAD4(uint64_t a1)
{
  v3 = objc_opt_self();
  if (a1 == 2)
  {
    v4 = [v3 secondarySystemFillColor];
  }

  else
  {
    v5 = [v3 systemBlackColor];
    v4 = [v5 colorWithAlphaComponent_];
  }

  v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_regularColor];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_regularColor] = v4;
  v7 = v4;

  [v1 setBackgroundColor_];
}

void sub_1BA3BFBB8(void *a1, void *a2, uint64_t a3, SEL *a4, void (*a5)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [a1 traitCollection];
    v12 = [v11 *a4];

    if (v12 != [a2 *a4])
    {
      a5(v12);
    }
  }
}

id sub_1BA3BFC74()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*v0)
  {
    v7 = 0;
    if (v6 != 1)
    {
      return v7;
    }

    v8 = 0xE500000000000000;
    v9 = 0x656E6F6870;
  }

  else
  {
    v8 = 0xE700000000000000;
    v9 = 0x6567617373656DLL;
  }

  v10 = sub_1BA4A6758();

  v7 = [objc_opt_self() systemImageNamed_];

  if (v7)
  {
  }

  else
  {
    sub_1BA4A3E28();

    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v13 = 136315650;
      *(v13 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA505860, &v23);
      *(v13 + 12) = 2080;
      v14 = sub_1B9F0B82C(v9, v8, &v23);

      *(v13 + 14) = v14;
      *(v13 + 22) = 2080;
      v22 = v6;
      v15 = sub_1BA3BC63C();
      v17 = sub_1B9F0B82C(v15, v16, &v23);

      *(v13 + 24) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "%s Unable to look up system symbol named %s for %s", v13, 0x20u);
      v18 = v21;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return v7;
}

void sub_1BA3BFF50()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_allOptionsStack;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  [v3 setLayoutMarginsRelativeArrangement_];
  [v3 setDirectionalLayoutMargins_];

  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell_vibrancyView;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_opt_self() effectForBlurEffect:v5 style:4];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v7;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___compactConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsCell____lazy_storage___nonCompactConstraints) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA3C0134()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactButtonDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___contactIconImageView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView____lazy_storage___heightConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA3C01E4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 viewController];
  if (v13)
  {

    if (v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_contactQuickActionType] != 3)
    {
      sub_1BA4A1718();
      sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
      v14 = sub_1BA4A70E8();
      sub_1BA4A1628();
      v15 = sub_1BA4A1A08();
      [v14 setValue:v15 forKey:*MEMORY[0x1E696C898]];

      (*(v8 + 8))(v12, v7);
    }

    v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction];
    if (v16)
    {
      v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_67EC7A45FB9328F5A1BEF31B99AA524322ContactQuickActionView_didTapAction + 8];

      v16(v18);
      sub_1B9F0E310(v16, v17);
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] Could not get presenting view controller", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t PersonalizedFeedTrainer.__allocating_init(delegate:dwellPolicy:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v8 = sub_1B9F47720(a1, a3, v6, ObjectType, a2);
  swift_unknownObjectRelease();
  return v8;
}

Swift::Void __swiftcall PersonalizedFeedTrainerDelegate.submitTrainingEvents(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = *(a1._rawValue + 2);
  if (v13)
  {
    sub_1BA4A3DB8();

    swift_unknownObjectRetain();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v4;
      v18 = v17;
      v35 = v17;
      *v16 = 134349314;
      *(v16 + 4) = v13;

      *(v16 + 12) = 2082;
      v34 = v2;
      swift_unknownObjectRetain();
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, &v35);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_1B9F07000, v14, v15, "Received %{public}ld training events; sending training events to RelevanceEngine over XPC; %{public}s", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);

      (*(v5 + 8))(v12, v33);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }

    v29 = objc_allocWithZone(sub_1BA4A34A8());

    v30 = sub_1BA4A3498();
    sub_1B9F0ADF8(0, &qword_1EDC6B5F0, 0x1E696ADC8);
    v31 = sub_1BA4A71A8();
    [v31 addOperation_];
  }

  else
  {
    sub_1BA4A3DB8();
    swift_unknownObjectRetain();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v2;
      v35 = v25;
      *v24 = 136446210;
      swift_unknownObjectRetain();
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v35);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1B9F07000, v22, v23, "SubmitTrainingOperation called with no training events; %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

double static PersonalizedFeedTrainer.contentKindsEligibleForTraining.getter()
{
  if (qword_1EDC6CB58 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1BA3C09E4(char *a1)
{
  v2 = v1;
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DB8();
  (*(v5 + 16))(v8, a1, v4);

  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6F88();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v9;
    v16 = v15;
    v26 = swift_slowAlloc();
    v31 = v26;
    *v16 = 136315394;
    sub_1B9F85D08(&qword_1EDC6E448, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v17 = sub_1BA4A82D8();
    v28 = a1;
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1B9F0B82C(v17, v19, &v31);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v30 = v2;
    type metadata accessor for PersonalizedFeedTrainer();

    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v31);

    *(v16 + 14) = v23;
    a1 = v28;
    _os_log_impl(&dword_1B9F07000, v13, v14, "feedDidEndDisplay at date %s; %{public}s", v16, 0x16u);
    v24 = v26;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v29 + 8))(v12, v27);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v29 + 8))(v12, v9);
  }

  return sub_1BA3C1644(a1);
}

uint64_t sub_1BA3C0D3C(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v92 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v93 = &v85 - v7;
  v8 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v87 = sub_1BA4A3B08();
  v10 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A15D8();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v90 = sub_1BA4A3B48();
  v94 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v16);
  v89 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v86 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v88 = &v85 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v97 = &v85 - v26;
  v27 = sub_1BA4A1C68();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB58 != -1)
  {
    swift_once();
  }

  v32 = off_1EDC6CB60;
  sub_1BA4A26B8();
  LOBYTE(v32) = sub_1BA3D2E98(v31, v32);
  v33 = *(v28 + 8);
  v33(v31, v27);
  if (v32)
  {
    v34 = [a1 objectID];
    v35 = [v34 URIRepresentation];

    sub_1BA4A1588();
    (*(v10 + 104))(v13, *MEMORY[0x1E69A3DF8], v87);
    sub_1BA4A1718();
    v36 = v97;
    sub_1BA4A3B28();
    v37 = v93;
    sub_1BA4A3DB8();
    v38 = v94;
    v39 = *(v94 + 16);
    v40 = v88;
    v41 = v90;
    v39(v88, v36, v90);
    v42 = a1;
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      LODWORD(v87) = v44;
      v46 = v45;
      v92 = swift_slowAlloc();
      v98[0] = v92;
      *v46 = 136315394;
      v47 = [v42 uniqueIdentifier];
      v48 = v39;
      v49 = v40;
      v50 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v52 = v51;

      v53 = sub_1B9F0B82C(v50, v52, v98);
      v38 = v94;

      *(v46 + 4) = v53;
      *(v46 + 12) = 2080;
      v48(v86, v49, v41);
      v54 = sub_1BA4A6808();
      v56 = v55;
      v57 = *(v38 + 8);
      v58 = v49;
      v39 = v48;
      v57(v58, v41);
      v59 = sub_1B9F0B82C(v54, v56, v98);

      *(v46 + 14) = v59;
      _os_log_impl(&dword_1B9F07000, v43, v87, "Creating tap training for feedItem %s: %s", v46, 0x16u);
      v60 = v92;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);

      (*(v95 + 8))(v93, v96);
    }

    else
    {

      v78 = v40;
      v57 = *(v38 + 8);
      v57(v78, v41);
      (*(v95 + 8))(v37, v96);
    }

    v79 = v91;
    v80 = v89;
    v39(v89, v97, v41);
    swift_beginAccess();
    v81 = *(v79 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v79 + 32) = v81;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v81 = sub_1BA27F128(0, v81[2] + 1, 1, v81);
      *(v79 + 32) = v81;
    }

    v84 = v81[2];
    v83 = v81[3];
    if (v84 >= v83 >> 1)
    {
      v81 = sub_1BA27F128((v83 > 1), v84 + 1, 1, v81);
    }

    v81[2] = v84 + 1;
    (*(v38 + 32))(v81 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v84, v80, v41);
    *(v79 + 32) = v81;
    swift_endAccess();
    return (v57)(v97, v41);
  }

  else
  {
    v61 = v92;
    sub_1BA4A3DB8();
    v62 = a1;
    v63 = sub_1BA4A3E88();
    v64 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98[0] = v97;
      *v65 = 136315394;
      v66 = [v62 uniqueIdentifier];
      LODWORD(v94) = v64;
      v67 = v66;
      v68 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v70 = v69;

      v71 = sub_1B9F0B82C(v68, v70, v98);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2082;
      sub_1BA4A26B8();
      v72 = sub_1BA4A1C58();
      v74 = v73;
      v33(v31, v27);
      v75 = sub_1B9F0B82C(v72, v74, v98);

      *(v65 + 14) = v75;
      _os_log_impl(&dword_1B9F07000, v63, v94, "FeedItem %s has contentKind %{public}s; not training", v65, 0x16u);
      v76 = v97;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v76, -1, -1);
      MEMORY[0x1BFAF43A0](v65, -1, -1);

      return (*(v95 + 8))(v92, v96);
    }

    else
    {

      return (*(v95 + 8))(v61, v96);
    }
  }
}

uint64_t sub_1BA3C1644(char *a1)
{
  v3 = sub_1BA4A3EA8();
  v157 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v153 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v155 = &v151 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v151 - v11;
  v13 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v173 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1BA4A3B08();
  v161 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v16);
  v176 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v175 = &v151 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v172 = &v151 - v23;
  v24 = sub_1BA4A15D8();
  v171 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v182 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v162 = &v151 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v179 = &v151 - v32;
  sub_1B9F4803C(0, &qword_1EDC6B798, MEMORY[0x1E69A3E18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v151 - v35;
  v177 = sub_1BA4A3B48();
  v166 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v37);
  v169 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v160 = &v151 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v181 = &v151 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v159 = (&v151 - v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v152 = &v151 - v50;
  v156 = v3;
  v154 = v12;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_67;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = v150)
  {
    sub_1B9F51E70(i, a1);

    swift_beginAccess();
    v158 = v1;
    a1 = *(v1 + 24);
    v52 = a1 + 64;
    v53 = 1 << a1[32];
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(a1 + 8);
    v56 = (v53 + 63) >> 6;
    v168 = *MEMORY[0x1E69A3E00];
    v167 = (v161 + 13);
    v178 = v166 + 56;
    v163 = (v166 + 48);
    v170 = (v166 + 32);
    swift_bridgeObjectRetain_n();
    v1 = 0;
    v164 = MEMORY[0x1E69E7CC0];
    v57 = v165;
    v180 = v36;
    v174 = a1;
    if (v55)
    {
      while (1)
      {
LABEL_10:
        v59 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
        v60 = (v1 << 9) | (8 * v59);
        v61 = *(*(a1 + 7) + v60);
        if (v158[8] <= v61 || v158[9] <= v61 && v61 <= v158[10])
        {
          v62 = *(*(a1 + 6) + v60);
          v63 = [v62 objectID];
          v64 = [v63 URIRepresentation];

          sub_1BA4A1588();
          (*v167)(v172, v168, v57);
          sub_1BA4A1718();
          v36 = v180;
          sub_1BA4A3B28();
          v65 = v177;
          (*v178)(v36, 0, 1, v177);

          a1 = v174;
          if ((*v163)(v36, 1, v65) == 1)
          {
            goto LABEL_15;
          }

          v66 = *v170;
          v67 = v152;
          v68 = v177;
          (*v170)(v152, v36, v177);
          v66(v159, v67, v68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v164 = sub_1BA27F128(0, *(v164 + 2) + 1, 1, v164);
          }

          v70 = *(v164 + 2);
          v69 = *(v164 + 3);
          if (v70 >= v69 >> 1)
          {
            v164 = sub_1BA27F128((v69 > 1), v70 + 1, 1, v164);
          }

          v71 = v164;
          *(v164 + 2) = v70 + 1;
          v66(&v71[((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v70], v159, v177);
          v57 = v165;
          a1 = v174;
          if (!v55)
          {
            break;
          }
        }

        else
        {
          v36 = v180;
          (*v178)(v180, 1, 1, v177);
LABEL_15:
          sub_1BA3C3618(v36);
          if (!v55)
          {
            break;
          }
        }
      }
    }

LABEL_6:
    v58 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      break;
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_2;
    }

    sub_1B9FF7278(MEMORY[0x1E69E7CC0]);
  }

  if (v58 < v56)
  {
    v55 = *&v52[8 * v58];
    ++v1;
    if (v55)
    {
      v1 = v58;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v72 = v158;
  swift_beginAccess();
  v73 = *(v72 + 4);
  v74 = *(v73 + 2);
  v75 = MEMORY[0x1E69E7CC0];
  if (v74)
  {
    v185[0] = MEMORY[0x1E69E7CC0];

    sub_1BA067108(0, v74, 0);
    v75 = v185[0];
    v180 = *(v166 + 16);
    v76 = *(v166 + 80);
    v173 = v73;
    v77 = &v73[(v76 + 32) & ~v76];
    v178 = *(v166 + 72);
    v78 = (v166 + 8);
    v174 = v171 + 32;
    v79 = v162;
    do
    {
      v80 = v181;
      v81 = v177;
      (v180)(v181, v77, v177);
      sub_1BA4A3B18();
      (*v78)(v80, v81);
      v185[0] = v75;
      v83 = *(v75 + 16);
      v82 = *(v75 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1BA067108((v82 > 1), v83 + 1, 1);
        v75 = v185[0];
      }

      *(v75 + 16) = v83 + 1;
      (*(v171 + 32))(v75 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v83, v79, v24);
      v77 += v178;
      --v74;
    }

    while (v74);

    v57 = v165;
  }

  v84 = sub_1BA0248F0(v75);

  v85 = v164;
  v86 = *(v164 + 2);
  v36 = v177;
  a1 = v160;
  v181 = v84;
  v163 = v86;
  if (v86)
  {
    v87 = 0;
    v162 = (v166 + 16);
    ++v161;
    v159 = (v166 + 8);
    v180 = (v84 + 56);
    v178 = v171 + 16;
    v1 = MEMORY[0x1E69E7CC0];
    v88 = (v171 + 8);
    while (1)
    {
      if (v87 >= *(v85 + 16))
      {
        goto LABEL_66;
      }

      v174 = v1;
      v173 = ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v172 = *(v166 + 72);
      (*(v166 + 16))(a1, &v173[v85 + v172 * v87], v36);
      sub_1BA4A3B38();
      (*v167)(v176, v168, v57);
      sub_1B9F85D08(&qword_1EDC6B7B8, MEMORY[0x1E69A3E08], MEMORY[0x1E69A3E10]);
      sub_1BA4A6A58();
      sub_1BA4A6A58();
      if (v185[0] == v183 && v185[1] == v184)
      {
        break;
      }

      v90 = sub_1BA4A8338();
      v91 = *v161;
      (*v161)(v176, v57);
      v91(v175, v57);

      if (v90)
      {
        goto LABEL_39;
      }

      v36 = v177;
      (*v159)(a1, v177);
      v1 = v174;
      v57 = v165;
LABEL_33:
      ++v87;
      v85 = v164;
      if (v87 == v163)
      {
        goto LABEL_51;
      }
    }

    v89 = *v161;
    (*v161)(v176, v57);
    v89(v175, v57);

LABEL_39:
    sub_1BA4A3B18();
    v92 = v181;
    if (*(v181 + 2) && (sub_1B9F85D08(&qword_1EDC6E278, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]), v93 = sub_1BA4A6698(), v94 = -1 << v92[32], v95 = v93 & ~v94, ((*&v180[(v95 >> 3) & 0xFFFFFFFFFFFFFF8] >> v95) & 1) != 0))
    {
      v96 = ~v94;
      v97 = *(v171 + 72);
      v98 = *(v171 + 16);
      while (1)
      {
        v99 = *(v92 + 6) + v97 * v95;
        v100 = v179;
        v98(v179, v99, v24);
        sub_1B9F85D08(&qword_1EBBEBE70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v101 = sub_1BA4A6728();
        v102 = *v88;
        (*v88)(v100, v24);
        if (v101)
        {
          break;
        }

        v95 = (v95 + 1) & v96;
        v92 = v181;
        if (((*&v180[(v95 >> 3) & 0xFFFFFFFFFFFFFF8] >> v95) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v102(v182, v24);
      a1 = v160;
      v36 = v177;
      (*v159)(v160, v177);
      v57 = v165;
      v1 = v174;
    }

    else
    {
LABEL_44:
      (*v88)(v182, v24);
      v103 = *v170;
      a1 = v160;
      v36 = v177;
      (*v170)(v169, v160, v177);
      v1 = v174;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v186 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BA0670B8(0, *(v1 + 16) + 1, 1);
        v1 = v186;
      }

      v106 = *(v1 + 16);
      v105 = *(v1 + 24);
      v57 = v165;
      if (v106 >= v105 >> 1)
      {
        sub_1BA0670B8((v105 > 1), v106 + 1, 1);
        v1 = v186;
      }

      *(v1 + 16) = v106 + 1;
      v103(&v173[v1 + v106 * v172], v169, v36);
    }

    goto LABEL_33;
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_51:

  v107 = v154;
  sub_1BA4A3DB8();

  v108 = v158;

  v109 = v1;
  v110 = sub_1BA4A3E88();
  v111 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v185[0] = v113;
    *v112 = 136446466;
    v114 = sub_1BA024A8C(v85);

    sub_1BA08E184(v109, v114);
    sub_1B9F85D08(&qword_1EDC6B7B0, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E20]);
    v115 = sub_1BA4A6D88();
    v117 = v116;

    v118 = sub_1B9F0B82C(v115, v117, v185);

    *(v112 + 4) = v118;
    *(v112 + 12) = 2082;
    v183 = v108;
    type metadata accessor for PersonalizedFeedTrainer();

    v119 = sub_1BA4A6808();
    v121 = sub_1B9F0B82C(v119, v120, v185);

    *(v112 + 14) = v121;
    v36 = v177;
    _os_log_impl(&dword_1B9F07000, v110, v111, "Filtering these dwell events because their feedItems were tapped: %{public}s; %{public}s", v112, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v113, -1, -1);
    MEMORY[0x1BFAF43A0](v112, -1, -1);
  }

  else
  {
  }

  v122 = *(v157 + 8);
  v123 = v156;
  v122(v107, v156);
  v124 = v155;
  v185[0] = v109;

  sub_1B9FE2964(v125);
  v126 = v185[0];
  if (*(v185[0] + 16))
  {
    sub_1BA4A3DB8();

    v127 = sub_1BA4A3E88();
    v128 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v185[0] = v130;
      *v129 = 136446466;
      v131 = MEMORY[0x1BFAF1560](v126, v36);
      v133 = sub_1B9F0B82C(v131, v132, v185);

      *(v129 + 4) = v133;
      *(v129 + 12) = 2082;
      v183 = v108;
      type metadata accessor for PersonalizedFeedTrainer();

      v134 = sub_1BA4A6808();
      v136 = sub_1B9F0B82C(v134, v135, v185);

      *(v129 + 14) = v136;
      _os_log_impl(&dword_1B9F07000, v127, v128, "Sending personalization events to delegate %{public}s; %{public}s", v129, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v130, -1, -1);
      MEMORY[0x1BFAF43A0](v129, -1, -1);

      v137 = v124;
      v138 = v156;
    }

    else
    {

      v137 = v124;
      v138 = v123;
    }

    v122(v137, v138);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v147 = *(v108 + 7);
      ObjectType = swift_getObjectType();
      (*(v147 + 8))(v126, ObjectType, v147);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {

    v139 = v153;
    sub_1BA4A3DB8();

    v140 = sub_1BA4A3E88();
    v141 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v185[0] = v143;
      *v142 = 136315138;
      v183 = v108;
      type metadata accessor for PersonalizedFeedTrainer();

      v144 = sub_1BA4A6808();
      v146 = sub_1B9F0B82C(v144, v145, v185);

      *(v142 + 4) = v146;
      _os_log_impl(&dword_1B9F07000, v140, v141, "No events to send to delegate; %s", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v143);
      MEMORY[0x1BFAF43A0](v143, -1, -1);
      MEMORY[0x1BFAF43A0](v142, -1, -1);
    }

    v122(v139, v123);
  }

  return sub_1B9F8634C();
}

void sub_1BA3C2BB0(void *a1)
{
  v2 = v1;
  sub_1B9F4803C(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v63[-v6];
  v8 = sub_1BA4A3EA8();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v63[-v14];
  v16 = sub_1BA4A1728();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v63[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v21 = *(v1 + 16);
  if (*(v21 + 16))
  {

    v22 = sub_1B9FDAB44(a1);
    if ((v23 & 1) == 0)
    {

      return;
    }

    (*(v17 + 16))(v20, *(v21 + 56) + *(v17 + 72) * v22, v16);

    sub_1BA4A1698();
    if (v24 <= 0.0)
    {
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v72 = 0x6D69547472617473;
      v73 = 0xEA00000000002065;
      sub_1B9F85D08(&qword_1EDC6E448, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v61 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v61);

      MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA505950);
      v62 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v62);

      sub_1BA4A8018();
      __break(1u);
      return;
    }

    v25 = v24;
    swift_beginAccess();
    v26 = *(v2 + 24);
    if (*(v26 + 16))
    {

      v27 = sub_1B9FDAB44(a1);
      if (v28)
      {
        v29 = *(*(v26 + 56) + 8 * v27);

        if (v25 < v29)
        {
          sub_1BA4A3DB8();
          v30 = a1;

          v31 = sub_1BA4A3E88();
          v32 = sub_1BA4A6F88();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v71[0] = v67;
            *v33 = 136315906;
            v34 = [v30 uniqueIdentifier];
            v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            LODWORD(v66) = v32;
            v37 = v36;

            v38 = sub_1B9F0B82C(v35, v37, v71);

            *(v33 + 4) = v38;
            *(v33 + 12) = 2050;
            *(v33 + 14) = v29;
            *(v33 + 22) = 2050;
            *(v33 + 24) = v25;
            *(v33 + 32) = 2082;
            v70 = v2;
            type metadata accessor for PersonalizedFeedTrainer();

            v39 = sub_1BA4A6808();
            v41 = sub_1B9F0B82C(v39, v40, v71);

            *(v33 + 34) = v41;
            _os_log_impl(&dword_1B9F07000, v31, v66, "FeedItem %s already logged as onscreen for %{public}f seconds; skipping shorter training of %{public}f seconds; %{public}s", v33, 0x2Au);
            v42 = v67;
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v42, -1, -1);
            MEMORY[0x1BFAF43A0](v33, -1, -1);
          }

          (*(v68 + 8))(v15, v69);
LABEL_15:
          (*(v17 + 8))(v20, v16);
          return;
        }
      }

      else
      {
      }
    }

    sub_1BA4A3DB8();
    v43 = a1;

    v44 = sub_1BA4A3E88();
    v45 = sub_1BA4A6F88();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71[0] = v65;
      *v46 = 136315650;
      v47 = [v43 uniqueIdentifier];
      v67 = v16;
      v48 = v47;
      v49 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v66 = v17;
      v50 = v49;
      v64 = v45;
      v51 = v20;
      v52 = v43;
      v54 = v53;

      v55 = sub_1B9F0B82C(v50, v54, v71);
      v43 = v52;
      v20 = v51;

      *(v46 + 4) = v55;
      *(v46 + 12) = 2050;
      *(v46 + 14) = v25;
      *(v46 + 22) = 2082;
      v70 = v2;
      type metadata accessor for PersonalizedFeedTrainer();

      v56 = sub_1BA4A6808();
      v58 = sub_1B9F0B82C(v56, v57, v71);
      v17 = v66;

      *(v46 + 24) = v58;
      v16 = v67;
      _os_log_impl(&dword_1B9F07000, v44, v64, "FeedItem %s is offscreen after %{public}f seconds; %{public}s", v46, 0x20u);
      v59 = v65;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v59, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
    }

    (*(v68 + 8))(v11, v69);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_1B9FF22D0(v43, isUniquelyReferenced_nonNull_native, v25);
    *(v2 + 24) = v70;
    swift_endAccess();
    (*(v17 + 56))(v7, 1, 1, v16);
    swift_beginAccess();
    sub_1B9FEF65C(v7, v43);
    swift_endAccess();
    goto LABEL_15;
  }
}

void sub_1BA3C338C()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    sub_1BA4A1718();
    sub_1BA3C09E4(v5);
    (*(v2 + 8))(v5, v1);
    *(v0 + 40) = 1;
  }
}

void *PersonalizedFeedTrainer.deinit()
{

  sub_1B9FAB600(v0 + 48);
  return v0;
}

uint64_t PersonalizedFeedTrainer.__deallocating_deinit()
{

  sub_1B9FAB600(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for PersonalizedFeedTrainer.DwellPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PersonalizedFeedTrainer.DwellPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1BA3C3618(uint64_t a1)
{
  sub_1B9F4803C(0, &qword_1EDC6B798, MEMORY[0x1E69A3E18], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PluginAppDelegateContext.healthExperienceStore.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1B9F1134C(a1, v1);
}

uint64_t PluginAppDelegateContext.pinnedContentManager.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));

  return sub_1B9F1134C(a1, v1 + 48);
}

__n128 PluginAppDelegateContext.init(healthExperienceStore:pinnedContentManager:healthStore:detailContext:presentingViewController:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1B9F1134C(a1, a6);
  *(a6 + 40) = a3;
  sub_1B9F1134C(a2, a6 + 48);
  v11 = *(a4 + 80);
  *(a6 + 152) = *(a4 + 64);
  *(a6 + 168) = v11;
  *(a6 + 184) = *(a4 + 96);
  v12 = *(a4 + 16);
  *(a6 + 88) = *a4;
  *(a6 + 104) = v12;
  result = *(a4 + 32);
  v14 = *(a4 + 48);
  *(a6 + 120) = result;
  v15 = *(a4 + 112);
  *(a6 + 136) = v14;
  *(a6 + 200) = v15;
  *(a6 + 208) = a5;
  return result;
}

HealthExperienceUI::TabIdentifier::TopLevelTabIdentifier_optional __swiftcall TabIdentifier.TopLevelTabIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TabIdentifier.TopLevelTabIdentifier.rawValue.getter()
{
  v1 = 0x676E6972616873;
  if (*v0 != 1)
  {
    v1 = 0x686372616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D6D7573;
  }
}

uint64_t sub_1BA3C39C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E6972616873;
  if (v2 != 1)
  {
    v5 = 0x686372616573;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7972616D6D7573;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x676E6972616873;
  if (*a2 != 1)
  {
    v8 = 0x686372616573;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7972616D6D7573;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA3C3ABC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA3C3B5C(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA3C3BE8(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3C3C90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E6972616873;
  if (v2 != 1)
  {
    v5 = 0x686372616573;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D6D7573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TabIdentifier.identifier.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter(*v0);
    }

    else
    {
      v2 = *v0;

      return v2;
    }
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0x676E6972616873;
    }

    else
    {
      return 0x686372616573;
    }
  }

  else
  {
    return 0x7972616D6D7573;
  }
}

Swift::Void __swiftcall DeepLinkNavigator.place(viewController:on:popToRoot:)(UIViewController *viewController, HealthExperienceUI::TabIdentifier::TopLevelTabIdentifier on, Swift::Bool popToRoot)
{
  v5 = v4;
  v6 = v3;
  v10[0] = *on;
  v10[1] = 0;
  v11 = 0;

  v8 = (*(v5 + 16))(v6, v5);
  if (v8)
  {
    v9 = v8;
    [v8 pushViewController:viewController animated:0];
  }
}

BOOL DeepLinkNavigator.openTabOrCreateOnSearch(tab:popToTabVC:orCreate:)(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v8 = *(a1 + 16);
  v12 = *a1;
  v13 = v8;
  v9 = (*(a6 + 8))(&v12, a2, a5, a6);
  if (!v9)
  {
    v10 = a3();
    LOBYTE(v12) = 2;
    DeepLinkNavigator.place(viewController:on:popToRoot:)(v10, &v12, v7 & 1);
  }

  return v9 == 0;
}

BOOL DeepLinkNavigator.openTabOrFindOrCreateOnSearch<A>(tab:orCreate:popToTabVC:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 16);
  v19 = *a1;
  v20 = v12;
  v13 = (*(a7 + 8))(&v19, a4, a5, a7);
  if (!v13)
  {
    goto LABEL_5;
  }

  v15 = v13;
  if (!swift_dynamicCastUnknownClass())
  {

LABEL_5:
    MEMORY[0x1EEE9AC00](v13, v14);
    v18[2] = a5;
    v18[3] = a6;
    v18[4] = a7;
    v18[5] = a2;
    v18[6] = a3;
    LOBYTE(v19) = 2;
    return DeepLinkNavigator.displayExistingViewControllerMatchingType<A>(topLevelTab:orCreate:)(&v19, sub_1BA3C4060, v18, a5, a6, a7);
  }

  return 0;
}

BOOL DeepLinkNavigator.displayExistingViewControllerMatchingType<A>(topLevelTab:orCreate:)(char *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v16 = *a1;
  v17 = 0;
  v10 = DeepLinkNavigator.findExistingViewController<A>(in:)(&v16, a4, a5, a6);
  if (v10)
  {
    v11 = (*(a6 + 16))(a4, a6);
    if (v11)
    {
      v12 = v11;
    }
  }

  else
  {
    v13 = a2();
    LOBYTE(v16) = v9;
    v14 = v13;
    DeepLinkNavigator.place(viewController:on:popToRoot:)(v14, &v16, 1);
  }

  return v10 == 0;
}

void *DeepLinkNavigator.findExistingViewController<A>(in:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v9 = *a1;
  v10 = v7;

  return DeepLinkNavigator.findExistingViewControllerInCurrent<A>()(a2, a3, a4);
}

BOOL DeepLinkNavigator.displayExistingViewControllerInCurrent<A>(orCreate:on:)(uint64_t (*a1)(void), uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = DeepLinkNavigator.findExistingViewControllerInCurrent<A>()(a4, a5, a6);
  if (v10)
  {
    v11 = (*(a6 + 16))(a4, a6);
    if (v11)
    {
      v12 = v11;
    }
  }

  else
  {
    v15 = v9;
    v13 = a1();
    DeepLinkNavigator.place(viewController:on:popToRoot:)(v13, &v15, 1);
  }

  return v10 == 0;
}

void *DeepLinkNavigator.findExistingViewControllerInCurrent<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(a1, a3);
  if (result)
  {
    v4 = result;
    v5 = [result viewControllers];

    sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
    v6 = sub_1BA4A6B08();

    if (v6 >> 62)
    {
LABEL_17:
      v7 = sub_1BA4A7CC8();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1BFAF2860](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if (swift_dynamicCastUnknownClass())
          {
            break;
          }

          ++v8;
          if (v11 == v7)
          {
            goto LABEL_18;
          }
        }

        result = swift_dynamicCastUnknownClass();
        if (result)
        {
          return result;
        }

        return 0;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_18:

    return 0;
  }

  return result;
}

Swift::Void __swiftcall DeepLinkNavigator.dismissAndOpenSearch(popToRoot:)(Swift::Bool popToRoot)
{
  v3 = v2;
  v4 = v1;
  v6 = xmmword_1BA4D7C20;
  v7 = 0;

  v5 = *(v3 + 32);

  v5(0, 0, v4, v3);
}

uint64_t PluginSharingAuthorizationDelegate.pluginItemContent(for:flow:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = sub_1BA4A1C68();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = static PluginSharingAuthorizationDelegate.nameUpdatedForAlerts(feedItem:)(a1);
  v11 = v10;
  v12 = static PluginSharingAuthorizationDelegate.icon(for:flow:)(a1, a2);
  if (FeedItem.pluginInfo.getter())
  {
    v13 = sub_1BA4A3AD8();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1BA4A2758();
  v15 = sub_1BA1591A8(v14);

  v16 = sub_1BA4A2648();
  sub_1BA4A26B8();
  *a3 = v13;
  a3[1] = v15;
  a3[2] = v19;
  a3[3] = v11;
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = v12;
  a3[7] = v16;
  v17 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  (*(v6 + 32))(a3 + *(v17 + 40), v9, v20);
  *(a3 + *(v17 + 44)) = MEMORY[0x1E69E7CC0];
  return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
}

uint64_t static PluginSharingAuthorizationDelegate.nameUpdatedForAlerts(feedItem:)(void *a1)
{
  v2 = sub_1BA4A2758();
  v3 = sub_1BA1591A8(v2);

  if (v3)
  {
    if (HKObjectType.isAlertEventType.getter())
    {
      v4 = [a1 localizedTitle];
      if (v4)
      {
        v5 = v4;
        v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v8 = v7;

        v9._countAndFlagsBits = v6;
        v9._object = v8;
        countAndFlagsBits = LocalizedGeminiHealthAlertTitle(_:value:)(v3, v9)._countAndFlagsBits;

        return countAndFlagsBits;
      }
    }
  }

  v11 = [a1 localizedTitle];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  countAndFlagsBits = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return countAndFlagsBits;
}

id static PluginSharingAuthorizationDelegate.icon(for:flow:)(uint64_t a1, uint64_t a2)
{
  sub_1BA3C54D4(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  sub_1BA3C5528(a2, &v12 - v5, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  v7 = type metadata accessor for SummarySharingSelectionFlow(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BA3C560C(v6, type metadata accessor for SummarySharingSelectionFlow);
    }

    return 0;
  }

  v8 = sub_1BA4A2758();
  v9 = sub_1BA1591A8(v8);

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1BA39EEFC(v9);

  result = v10;
  if (!v10)
  {
    return 0;
  }

  return result;
}

unint64_t _s18HealthExperienceUI34PluginSharingAuthorizationDelegatePAAE20previewDataPredicate3forSo11NSPredicateCSgSayAA07Summarye10SelectableI8TypeItemVG_tF_0(uint64_t a1)
{
  v2 = sub_1BA4A3A28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v70 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA3C54D4(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v62 - v8;
  v64 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v64, v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v62 - v16;
  v18 = MEMORY[0x1E69E7CD0];
  v79 = MEMORY[0x1E69E7CD0];
  v80 = MEMORY[0x1E69E7CD0];
  v65 = *(a1 + 16);
  if (!v65)
  {
LABEL_40:
    v78 = MEMORY[0x1E69E7CC0];
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (sub_1BA4A7CC8() >= 1)
      {
        goto LABEL_42;
      }
    }

    else if (v18[2] >= 1)
    {
LABEL_42:
      sub_1BA4A27B8();
      v50 = sub_1BA2A14AC(v18);

      MEMORY[0x1BFAED000](v50);

      MEMORY[0x1BFAF1510](v51);
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_67;
      }

      goto LABEL_43;
    }

    v52 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v19 = 0;
  v63 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v76 = *(v15 + 72);
  v72 = (v3 + 88);
  v73 = v3 + 16;
  v71 = *MEMORY[0x1E69A38E8];
  v74 = v3;
  v75 = v2;
  v67 = (v3 + 96);
  v68 = (v3 + 8);
  v20 = v65;
  v69 = &v62 - v16;
LABEL_4:
  v21 = v63;
  v66 = v19 + 1;
  sub_1BA025290(v63 + v76 * v19, v17);
  v22 = *(v64 + 40);
  v23 = v20;
  v24 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1BA025290(v21, v12);
    sub_1BA3C5528(&v12[v22], v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v25 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
    if ((*(*(v25 - 8) + 48))(v9, 1, v25) == 1)
    {
      sub_1BA3C5594(v9);
      v26 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v26 = *&v9[*(v25 + 44)];

      sub_1BA3C560C(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    }

    sub_1BA3C560C(v12, type metadata accessor for SummarySharingSelectableDataTypeItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1BA27FC80(0, v24[2] + 1, 1, v24);
    }

    v28 = v24[2];
    v27 = v24[3];
    if (v28 >= v27 >> 1)
    {
      v24 = sub_1BA27FC80((v27 > 1), v28 + 1, 1, v24);
    }

    v24[2] = v28 + 1;
    v24[v28 + 4] = v26;
    v21 += v76;
    --v23;
  }

  while (v23);
  v29 = v28 + 1;
  v30 = MEMORY[0x1E69E7CC0];
  while (v23 < v24[2])
  {
    v31 = v24[v23 + 4];
    v32 = *(v31 + 16);
    v33 = v30[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_63;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v34 <= v30[3] >> 1)
    {
      if (!*(v31 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v30 = sub_1BA27FC4C(isUniquelyReferenced_nonNull_native, v36, 1, v30);
      if (!*(v31 + 16))
      {
LABEL_14:

        if (v32)
        {
          goto LABEL_64;
        }

        goto LABEL_15;
      }
    }

    if ((v30[3] >> 1) - v30[2] < v32)
    {
      goto LABEL_65;
    }

    swift_arrayInitWithCopy();

    if (v32)
    {
      v37 = v30[2];
      v38 = __OFADD__(v37, v32);
      v39 = v37 + v32;
      if (v38)
      {
        goto LABEL_66;
      }

      v30[2] = v39;
    }

LABEL_15:
    if (v29 == ++v23)
    {

      v40 = v30[2];
      if (v40)
      {
        v41 = v75;
        v42 = v30 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v43 = *(v74 + 72);
        v44 = *(v74 + 16);
        v45 = v70;
        v44(v70, v42, v75);
        while (1)
        {
          v46 = (*v72)(v45, v41);
          if (v46 == v71)
          {
            (*v67)(v45, v41);
            sub_1BA0E2518(&v77, *v45);
            v45 = v70;
          }

          else
          {
            v47 = *(v69 + 8);
            if (v47)
            {
              v48 = *(v69 + 7);

              v49 = v48;
              v41 = v75;
              sub_1BA0E1C3C(&v77, v49, v47);
              v45 = v70;
            }

            (*v68)(v45, v41);
          }

          v42 += v43;
          if (!--v40)
          {
            break;
          }

          v44(v45, v42, v41);
        }
      }

      v17 = v69;
      sub_1BA3C560C(v69, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v20 = v65;
      v19 = v66;
      if (v66 == v65)
      {
        v18 = v80;
        goto LABEL_40;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  sub_1BA4A6B68();
LABEL_43:
  sub_1BA4A6BB8();
  v52 = v78;
LABEL_46:
  v53 = v79;
  v54 = *(v79 + 16);
  if (!v54)
  {

    if (!(v52 >> 62))
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  v55 = sub_1BA021990(*(v79 + 16), 0);
  v56 = sub_1BA0238B0(&v77, v55 + 4, v54, v53);
  sub_1B9F52E48(v77);
  if (v56 == v54)
  {
    sub_1BA4A27B8();
    sub_1BA4A2688();

    MEMORY[0x1BFAF1510](v57);
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1BA4A6B68();
LABEL_49:
  sub_1BA4A6BB8();
  v52 = v78;
  if (v78 >> 62)
  {
LABEL_53:
    if (sub_1BA4A7CC8() < 2)
    {
      result = sub_1BA4A7CC8();
      goto LABEL_55;
    }

LABEL_51:
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v59 = sub_1BA4A6AE8();

    v60 = [objc_opt_self() orPredicateWithSubpredicates_];

    return v60;
  }

LABEL_50:
  result = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
    goto LABEL_51;
  }

LABEL_55:
  if (!result)
  {

    return 0;
  }

  if ((v52 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x1BFAF2860](0, v52);
LABEL_59:
    v60 = v61;

    return v60;
  }

  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v61 = *(v52 + 32);
    goto LABEL_59;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BA3C51F0()
{
  result = qword_1EBBF1E50;
  if (!qword_1EBBF1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1E50);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1BA3C529C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA3C52E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA3C54D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1BA3C5528(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA3C54D4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3C5594(uint64_t a1)
{
  sub_1BA3C54D4(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA3C560C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UserDemographicsAnalytics.init(age:biologicalSex:isImproveHealthAndActivityAllowed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 25) = a5;
  return result;
}

NSNumber_optional __swiftcall UserDemographicsAnalytics.ageValueForAnalytics()()
{
  if (v0[1])
  {
    goto LABEL_16;
  }

  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *(&unk_1F37FBE70 + v1 + 32);
    if (v2 >= v6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BA066D68(0, *(v3 + 16) + 1, 1);
      }

      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_1BA066D68((v4 > 1), v5 + 1, 1);
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + 8 * v5 + 32) = v6;
    }

    v1 += 8;
  }

  while (v1 != 64);
  v7 = *(v3 + 16);
  if (!v7)
  {

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v8 = *(v3 + 8 * v7 + 24);

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 19;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_17:
  result.value.super.super.isa = v10;
  result.is_nil = v11;
  return result;
}

NSString_optional __swiftcall UserDemographicsAnalytics.biologicalSexValueForAnalytics()()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1BA4A70F8();
  v2 = sub_1BA4A6758();

  return v2;
}

uint64_t UserDemographicsAnalytics.init(dob:hkBiologicalSex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA3C58A4(a1);
  v8 = v7;
  v9 = sub_1BA4A1148();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  *a3 = v6;
  *(a3 + 8) = v8 & 1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 256;
  return result;
}

uint64_t sub_1BA3C58A4(uint64_t a1)
{
  v42 = a1;
  v39 = sub_1BA4A1148();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v1);
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A17D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A18A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F480A0(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v35 - v15;
  v17 = sub_1BA4A1728();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v37 = &v35 - v25;
  (*(v4 + 104))(v7, *MEMORY[0x1E6969868], v3, v24);
  sub_1BA4A17E8();
  (*(v4 + 8))(v7, v3);
  sub_1BA4A1838();
  v36 = *(v9 + 8);
  v42 = v8;
  v38 = v9 + 8;
  v36(v12, v8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1BA05DB44(v16);
    return 0;
  }

  else
  {
    v27 = v37;
    (*(v18 + 32))(v37, v16, v17);
    sub_1BA4A1878();
    sub_1B9F480A0(0, &qword_1EBBEC248, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v28 = sub_1BA4A1898();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BA4B5480;
    (*(v29 + 104))(v31 + v30, *MEMORY[0x1E6969A68], v28);
    sub_1B9FF6D00(v31);
    swift_setDeallocating();
    (*(v29 + 8))(v31 + v30, v28);
    swift_deallocClassInstance();
    sub_1BA4A1718();
    v32 = v40;
    sub_1BA4A17F8();

    v33 = *(v18 + 8);
    v33(v21, v17);
    v36(v12, v42);
    v34 = sub_1BA4A1138();
    (*(v41 + 8))(v32, v39);
    v33(v27, v17);
    return v34;
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1BA3C5E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BA3C5E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

id sub_1BA3C5F0C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeUnit;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeUnit);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeUnit);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter + 24);
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter), v4);
    v11 = 0;
    v6 = v0;
    v7 = (*(v5 + 8))(&v11, v4, v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1BA3C6000(void *a1, double a2)
{
  v3 = v2 + *a1;
  if (*(v3 + 8) == 1)
  {
    v5 = [objc_opt_self() poundUnit];
    v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:a2];

    v7 = sub_1BA3C5F0C();
    [v6 doubleValueForUnit_];
    v9 = v8;

    v10 = round(v9);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        *v3 = v10;
        *(v3 + 8) = 0;
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_1BA3C611C()
{
  type metadata accessor for PickerTableViewCell();
  sub_1BA3C640C(0, &qword_1EBBF0850, 255, type metadata accessor for PickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA3C6178()
{
  swift_getObjectType();
  sub_1BA3C640C(0, &qword_1EBBF1F18, v0, type metadata accessor for WeightPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA3C6220(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA3C628C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

id WeightPickerItem.init(initialValue:valueFormatter:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeUnit] = 0;
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeMaxWeight];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeMinWeight];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem____lazy_storage___localeAverageWeight];
  *v7 = 0;
  v7[8] = 1;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_currentWeight] = a1;
  sub_1B9F0A534(a2, &v2[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter]);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for WeightPickerItem();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

uint64_t sub_1BA3C640C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BA3C647C(void *a1, char a2)
{
  v4 = sub_1BA3C5F0C();
  [a1 doubleValueForUnit_];
  v6 = v5;

  v7 = round(v6);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    return;
  }

  sub_1BA3C5FD8();
  v9 = v8;
  sub_1BA3C5FC0();
  if (v10 < v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1BA4A66E8();
}

id WeightPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeightPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeightPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3C66A4()
{
  swift_getObjectType();
  sub_1BA3C640C(0, &qword_1EBBF1F18, v0, type metadata accessor for WeightPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA3C66FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void WeightPickerItem.initialSelections.getter()
{
  sub_1BA31EC5C(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5480;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_currentWeight);
  if (v2)
  {
    v3 = v2;
    sub_1BA3C647C(v3, 1);
    v5 = v4;
  }

  else
  {
    sub_1BA3C5FE8();
    v5 = v6;
  }

  sub_1BA3C5FD8();
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v5 - v7;
    *(v1 + 40) = 0;
  }
}

Swift::Int __swiftcall WeightPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  if (numberOfRowsInComponent)
  {
    return 0;
  }

  sub_1BA3C5FC0();
  v4 = v3;
  sub_1BA3C5FD8();
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall WeightPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  sub_1BA3C69D4(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void sub_1BA3C69D4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1BA3C5FC0();
    if (v4 >= a1)
    {
      v5 = sub_1BA3C5F0C();
      sub_1BA3C5FD8();
      if (__OFADD__(a1, v6))
      {
        __break(1u);
      }

      else
      {
        v7 = [objc_opt_self() quantityWithUnit:v5 doubleValue:(a1 + v6)];

        v8 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter + 24);
        v9 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_valueFormatter), v8);
        v10 = 0;
        (*(v9 + 16))(&v10, v7, v8, v9);
      }
    }
  }
}

void sub_1BA3C6ACC(uint64_t a1)
{
  v3 = sub_1BA3C5F0C();
  sub_1BA3C5FD8();
  if (__OFADD__(a1, v4))
  {
    __break(1u);
  }

  else
  {
    v5 = [objc_opt_self() quantityWithUnit:v3 doubleValue:(a1 + v4)];

    v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_currentWeight);
    *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_currentWeight) = v5;
    v7 = v5;

    v8 = v1 + OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v1, v7, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1BA3C6BDC()
{
  result = qword_1EBBF1F68;
  if (!qword_1EBBF1F68)
  {
    type metadata accessor for WeightPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F68);
  }

  return result;
}

void __swiftcall NotificationAuthorizationAnalyticsEvent.init(context:featureDomain:featureName:selectedAction:)(HealthExperienceUI::NotificationAuthorizationAnalyticsEvent *__return_ptr retstr, HealthExperienceUI::NotificationAuthorizationAnalyticsEvent::Context context, Swift::String featureDomain, Swift::String_optional featureName, HealthExperienceUI::NotificationAuthorizationAnalyticsEvent::SelectedAction selectedAction)
{
  object = featureName.value._object;
  countAndFlagsBits = featureName.value._countAndFlagsBits;
  sub_1BA4A2F48();
  sub_1BA4A2F38();
  sub_1BA12ABBC();
  sub_1BA4A2CB8();
  if (sub_1BA4A2F28())
  {

    if (object)
    {
      v7 = MEMORY[0x1E69E6158];
      v8 = countAndFlagsBits;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v16[2] = 0;
    }

    v16[0] = v8;
    v16[1] = object;
    v16[3] = v7;
    sub_1BA4A2CC8();
    sub_1B9F23224(v16);
  }

  else
  {
  }

  sub_1BA4A2CE8();
  v9 = sub_1BA4A6758();

  v10 = sub_1BA4A6758();

  v11 = sub_1BA4A6758();

  v12 = sub_1BA4A6758();

  v13 = sub_1BA4A6758();

  v14 = sub_1BA4A6758();

  retstr->step = v9;
  retstr->context = v11;
  retstr->subContext = v12;
  retstr->feature = v10;
  retstr->action = v13;
  retstr->activeWatchProductType = v14;
}

HealthExperienceUI::NotificationAuthorizationAnalyticsEvent::Context_optional __swiftcall NotificationAuthorizationAnalyticsEvent.Context.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NotificationAuthorizationAnalyticsEvent.Context.rawValue.getter()
{
  v1 = 0x207972616D6D7553;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000015;
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
    return v1;
  }
}

uint64_t sub_1BA3C717C()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA3C724C(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA3C7308(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3C73E0(unint64_t *a1@<X8>)
{
  v2 = 0xED00007472656C41;
  v3 = 0x207972616D6D7553;
  v4 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x80000001BA4E1460;
  }

  v5 = 0x80000001BA4E1410;
  if (*v1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001BA4E1430;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

HealthExperienceUI::NotificationAuthorizationAnalyticsEvent::SelectedAction_optional __swiftcall NotificationAuthorizationAnalyticsEvent.SelectedAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationAuthorizationAnalyticsEvent.SelectedAction.rawValue.getter()
{
  v1 = 0x776F6C6C41;
  v2 = 0x73676E6974746553;
  if (*v0 != 2)
  {
    v2 = 0x664F20657661654CLL;
  }

  if (*v0)
  {
    v1 = 0x4120746F4E206F44;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA3C7558()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA3C7624(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA3C76DC(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3C77B0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x776F6C6C41;
  v4 = 0xE800000000000000;
  v5 = 0x73676E6974746553;
  if (*v1 != 2)
  {
    v5 = 0x664F20657661654CLL;
    v4 = 0xE900000000000066;
  }

  if (*v1)
  {
    v3 = 0x4120746F4E206F44;
    v2 = 0xEC000000776F6C6CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t static NotificationAuthorizationAnalyticsEvent.eventName.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBF1F70;

  return v0;
}

double static NotificationAuthorizationAnalyticsEvent.eventName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBF1F70 = a1;
  off_1EBBF1F78 = a2;

  return result;
}

unint64_t sub_1BA3C7944()
{
  result = qword_1EBBF1F80;
  if (!qword_1EBBF1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F80);
  }

  return result;
}

unint64_t sub_1BA3C799C()
{
  result = qword_1EBBF1F88;
  if (!qword_1EBBF1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F88);
  }

  return result;
}

unint64_t sub_1BA3C79F4()
{
  result = qword_1EBBF1F90;
  if (!qword_1EBBF1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F90);
  }

  return result;
}

unint64_t sub_1BA3C7A4C()
{
  result = qword_1EBBF1F98;
  if (!qword_1EBBF1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1F98);
  }

  return result;
}

double sub_1BA3C7AA0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBF1F70 = v2;
  off_1EBBF1F78 = v1;

  return result;
}

uint64_t sub_1BA3C7B04()
{
  swift_beginAccess();
  v0 = qword_1EBBF1F70;

  return v0;
}

uint64_t sub_1BA3C7B88(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA3C7C10();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA3C7C10()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v7, v39);
  if (v40)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBF1FB0, &protocol descriptor for TitleValueProviding);
    if (swift_dynamicCast())
    {
      if (*(&v42 + 1))
      {
        sub_1B9F1134C(&v41, v44);
        v8 = [v1 textLabel];
        if (v8)
        {
          v9 = v8;
          v10 = v45;
          v11 = v46;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          (*(v11 + 8))(v10, v11);
          v12 = sub_1BA4A6758();

          [v9 setText_];
        }

        v13 = [v1 textLabel];
        if (v13)
        {
          v14 = v13;
          [v13 setNumberOfLines_];
        }

        v15 = [v1 detailTextLabel];
        if (v15)
        {
          v16 = v15;
          v17 = v45;
          v18 = v46;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          (*(v18 + 16))(v17, v18);
          v19 = sub_1BA4A6758();

          [v16 setText_];
        }

        v20 = [v1 detailTextLabel];
        if (v20)
        {
          v21 = v20;
          [v20 setNumberOfLines_];
        }

        v22 = [v1 detailTextLabel];
        if (v22)
        {
          v23 = v22;
          v24 = [v1 tintColor];
          [v23 setTextColor_];
        }

        return __swift_destroy_boxed_opaque_existential_1(v44);
      }
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v39, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
  }

  sub_1B9F43A50(&v41, &qword_1EBBF1FA8, &qword_1EBBF1FB0, &protocol descriptor for TitleValueProviding);
  sub_1BA4A3DE8();
  v26 = v1;
  v27 = sub_1BA4A3E88();
  v28 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44[0] = v30;
    *v29 = 136446722;
    v31 = sub_1BA4A85D8();
    v33 = sub_1B9F0B82C(v31, v32, v44);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v44);
    *(v29 + 22) = 2082;
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    *&v41 = v34;
    sub_1BA0928CC();
    v35 = sub_1BA4A6808();
    v37 = sub_1B9F0B82C(v35, v36, v44);

    *(v29 + 24) = v37;
    _os_log_impl(&dword_1B9F07000, v27, v28, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to TitleValueProviding", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA3C8100@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA3C8158(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3C7C10();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA3C81DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3C8240;
}

uint64_t sub_1BA3C8240(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA3C7C10();
  }

  return result;
}

id TitleValueTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id TitleValueTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  if (a3)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TitleValueTableViewCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, 1, v5);

  return v6;
}

id TitleValueTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleValueTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SummaryProfileHeaderProviding.createLayout(environment:)()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D3C8;
  v14[5] = unk_1EDC6D3D8;
  v14[6] = xmmword_1EDC6D3E8;
  v14[7] = unk_1EDC6D3F8;
  v14[0] = xmmword_1EDC6D388;
  v14[1] = xmmword_1EDC6D398;
  v14[2] = xmmword_1EDC6D3A8;
  v14[3] = xmmword_1EDC6D3B8;
  v4 = xmmword_1EDC6D388;
  v0 = *(&xmmword_1EDC6D398 + 1);
  v5 = xmmword_1EDC6D398;
  v2 = xmmword_1EDC6D3A8;
  v1 = xmmword_1EDC6D3B8;
  v9 = *(&xmmword_1EDC6D3C8 + 8);
  v10 = *&qword_1EDC6D3E0;
  v11 = *(&xmmword_1EDC6D3E8 + 8);
  v12 = qword_1EDC6D400;
  v8 = *(&xmmword_1EDC6D3B8 + 8);
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

uint64_t HealthKitProfileInformation.createNameItem(healthStore:healthExperienceStore:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1BA4A2888();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v3, v6);
  sub_1BA4A2828();
  v9 = MEMORY[0x1E69A3100];
  a1[3] = v3;
  a1[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v4 + 32))(boxed_opaque_existential_1, v8, v3);
}

double HealthKitProfileInformation.createAvatarItem(healthStore:healthExperienceStore:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BA3C8920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, v3);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  sub_1BA4A2828();
  v10 = MEMORY[0x1E69A3100];
  a3[3] = a2;
  a3[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v6 + 32))(boxed_opaque_existential_1, v9, a2);
}

id sub_1BA3C8A20()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D3C8;
  v14[5] = unk_1EDC6D3D8;
  v14[6] = xmmword_1EDC6D3E8;
  v14[7] = unk_1EDC6D3F8;
  v14[0] = xmmword_1EDC6D388;
  v14[1] = xmmword_1EDC6D398;
  v14[2] = xmmword_1EDC6D3A8;
  v14[3] = xmmword_1EDC6D3B8;
  v4 = xmmword_1EDC6D388;
  v0 = *(&xmmword_1EDC6D398 + 1);
  v5 = xmmword_1EDC6D398;
  v2 = xmmword_1EDC6D3A8;
  v1 = xmmword_1EDC6D3B8;
  v9 = *(&xmmword_1EDC6D3C8 + 8);
  v10 = *&qword_1EDC6D3E0;
  v11 = *(&xmmword_1EDC6D3E8 + 8);
  v12 = qword_1EDC6D400;
  v8 = *(&xmmword_1EDC6D3B8 + 8);
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

uint64_t SharingEntryProfileInformation.createNameItem(healthStore:healthExperienceStore:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1BA4A33C8();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v3, v6);
  sub_1BA4A32C8();
  v9 = MEMORY[0x1E69A3428];
  a1[3] = v3;
  a1[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v4 + 32))(boxed_opaque_existential_1, v8, v3);
}

void SharingEntryProfileInformation.createAvatarItem(healthStore:healthExperienceStore:)(uint64_t *a1@<X8>)
{
  v2 = sub_1BA3C8D60();
  sub_1BA4A33A8();
  sub_1BA4A3398();
  sub_1BA4A79E8();
  v3 = sub_1BA4A2E48();
  swift_allocObject();
  v4 = sub_1BA4A2E38();
  type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  sub_1BA3C96A4(0, &qword_1EDC61318, type metadata accessor for SummaryHeaderProfileAvatarImageCell);
  sub_1BA4A6808();
  sub_1BA4A2E08();
  v5 = MEMORY[0x1E69A3338];
  a1[3] = v3;
  a1[4] = v5;

  *a1 = v4;
}

uint64_t sub_1BA3C8D60()
{
  v1 = v0;
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
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v1, v4);
  v6 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

id SharingEntryProfileInformation.createLayout(environment:)(void *a1)
{
  [objc_msgSend(a1 container)];
  v2 = v1;
  swift_unknownObjectRelease();
  v3 = v2 + -136.0;
  if (v2 + -136.0 <= 300.0)
  {
    v4 = 350.0;
  }

  else
  {
    v4 = 200.0;
  }

  v5 = objc_opt_self();
  v38 = [v5 uniformAcrossSiblingsWithEstimate_];
  v6 = [v5 estimatedDimension_];
  v7 = objc_opt_self();
  v8 = [v7 sizeWithWidthDimension:v6 heightDimension:v38];

  v9 = objc_opt_self();
  v37 = [v9 itemWithLayoutSize_];

  v10 = [v5 fractionalWidthDimension_];
  v11 = [v5 estimatedDimension_];
  v12 = [v7 &off_1E7EEF2C8 + 6];

  v13 = [v9 &selRef:v12 widthDesignationDidChangeWithTraitEnvironment:? previousTraitCollection:? + 3];
  v14 = [v5 fractionalWidthDimension_];
  v15 = [v5 estimatedDimension_];
  v16 = [v7 &off_1E7EEF2C8 + 6];

  v17 = [v9 itemWithLayoutSize_];
  sub_1B9F109F8();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B8B60;
  *(v18 + 32) = v13;
  *(v18 + 40) = v17;
  *(v18 + 48) = v17;
  v19 = objc_opt_self();
  v36 = v17;
  v35 = v13;
  v20 = [v5 estimatedDimension_];
  v21 = [v7 &off_1E7EEF2C8 + 6];

  sub_1B9F0ADF8(0, &qword_1EBBF1FB8, 0x1E6995578);
  v22 = sub_1BA4A6AE8();

  v23 = [v19 verticalGroupWithLayoutSize:v21 subitems:v22];

  v24 = [objc_opt_self() fixedSpacing_];
  [v23 setInterItemSpacing_];

  v25 = [v5 fractionalWidthDimension_];
  v26 = [v5 estimatedDimension_];
  v27 = [v7 &off_1E7EEF2C8 + 6];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B7510;
  *(v28 + 32) = v37;
  *(v28 + 40) = v23;
  v29 = v37;
  v30 = v23;
  v31 = sub_1BA4A6AE8();

  v32 = [v19 horizontalGroupWithLayoutSize:v27 subitems:v31];

  v33 = [objc_opt_self() sectionWithGroup_];
  [v33 setContentInsetsReference_];
  [v33 setInterGroupSpacing_];
  [v33 contentInsets];
  [v33 setContentInsets_];

  return v33;
}

uint64_t sub_1BA3C9408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, v3);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  sub_1BA4A32C8();
  v10 = MEMORY[0x1E69A3428];
  a3[3] = a2;
  a3[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v6 + 32))(boxed_opaque_existential_1, v9, a2);
}

uint64_t _s16HealthExperience30SharingEntryProfileInformationV0aB2UIE24createContactOptionsItem9hasAlertsSayAA019SectionedDataSourceK0_pGSb_tF_0()
{
  v0 = sub_1BA3C8D60();
  v1 = MEMORY[0x1BFAEDD40]();
  v3 = v2;
  v4 = type metadata accessor for ProfileContactOptionsItem();
  v5 = objc_allocWithZone(v4);
  v7 = sub_1BA1AAA68(v0, v1, v3, &unk_1F37FC110, v6);
  type metadata accessor for ProfileContactOptionsCell();
  sub_1BA3C96A4(0, &qword_1EBBED6E0, type metadata accessor for ProfileContactOptionsCell);
  v8 = sub_1BA4A6808();
  v10 = v9;
  v11 = &v7[OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier];
  swift_beginAccess();
  *v11 = v8;
  v11[1] = v10;

  sub_1BA28168C(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  *(v12 + 56) = v4;
  *(v12 + 64) = sub_1BA3C96F0();
  *(v12 + 32) = v7;

  return v12;
}

uint64_t sub_1BA3C96A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BA3C96F0()
{
  result = qword_1EBBF1FC0;
  if (!qword_1EBBF1FC0)
  {
    type metadata accessor for ProfileContactOptionsItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1FC0);
  }

  return result;
}

uint64_t sub_1BA3C974C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1FC8 = result;
  unk_1EBBF1FD0 = v1;
  return result;
}

uint64_t sub_1BA3C97F8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1FD8 = result;
  unk_1EBBF1FE0 = v1;
  return result;
}

void sub_1BA3C9910()
{
  sub_1BA1925B0();
  v1 = sub_1BA191D10();
  [v1 addSubview_];
}

void sub_1BA3C9964()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA192798(v2);
  sub_1BA191E60(v3);
  v4 = sub_1BA1946B4();
  sub_1BA19452C(v4);
  v5 = sub_1BA191DB4();
  [v5 setHidden_];

  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner] stopAnimating];
  v6 = objc_opt_self();
  sub_1B9F109F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5890;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel;
  v9 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel] topAnchor];
  v10 = sub_1BA191D10();
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [*&v0[v8] leadingAnchor];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  v15 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView] leadingAnchor];
  v16 = [v13 constraintEqualToAnchor_];

  *(v7 + 40) = v16;
  v17 = [*&v0[v8] trailingAnchor];
  v18 = [*&v0[v14] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 48) = v19;
  v20 = [*&v0[v8] bottomAnchor];
  v21 = [*&v0[v14] bottomAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor_];

  *(v7 + 56) = v22;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v23 = sub_1BA4A6AE8();

  [v6 activateConstraints_];
}

void sub_1BA3C9C50()
{
  sub_1B9F48104(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v21 - v3;
  sub_1BA193198();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1BA3CAE14(v0 + v5, v22, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v23)
  {
    sub_1B9F44590(v22, &qword_1EDC6E1A0, sub_1B9FCD918);
    return;
  }

  sub_1B9FCD918();
  type metadata accessor for FamilySharingProfileTileItem(0);
  if (swift_dynamicCast())
  {
    v6 = v21[0];
    v7 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_endSharingRelationshipState;
    swift_beginAccess();
    v8 = MEMORY[0x1E69A33B0];
    sub_1BA3CAE14(v6 + v7, v4, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    v9 = sub_1BA4A3118();
    LODWORD(v7) = (*(*(v9 - 8) + 48))(v4, 1, v9);
    sub_1B9F44590(v4, &qword_1EBBE97C8, v8);
    v10 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel);
    if (v7 == 1)
    {
      v11 = qword_1EBBE8900;
      v12 = v10;
      if (v11 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v13 = qword_1EBBE8908;
      v14 = v10;
      if (v13 == -1)
      {
LABEL_8:
        v15 = sub_1BA4A6758();
        [v10 setText_];

        v16 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel);
        v17 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase);
        v18 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_accessibilityIdentiferBase + 8);
        v21[0] = v17;
        v21[1] = v18;
        v19 = v16;

        MEMORY[0x1BFAF1350](0x6E6F63492ELL, 0xE500000000000000);
        v20 = sub_1BA4A6758();

        [v19 setAccessibilityIdentifier_];

        return;
      }
    }

    swift_once();
    goto LABEL_8;
  }
}

id sub_1BA3C9F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilySharingProfileTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA3CA008()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_106;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

char *sub_1BA3CA134()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem____lazy_storage___gradientsProvider;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem____lazy_storage___gradientsProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem____lazy_storage___gradientsProvider);
  }

  else
  {
    type metadata accessor for ProfileGradientsProviderFactory();
    swift_initStaticObject();
    v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v5 = v4;
    if (v0[14])
    {
      [v4 setProfileIdentifier_];
    }

    [v5 resume];
    v6 = v0[7];
    v7 = __swift_project_boxed_opaque_existential_1(v0 + 4, v6);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7, v7);
    v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = v0;
    v13 = sub_1BA4A1B68();
    (*(v8 + 8))(v11, v6);
    v14 = sub_1B9FE10EC(v5, v13, MEMORY[0x1E69E7CC0]);

    v15 = *(v0 + v1);
    *(v12 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

char *sub_1BA3CA300(uint64_t a1, void *a2, void *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v44 = a2;
  v45 = a3;
  v43[1] = *v5;
  v48 = MEMORY[0x1E69A33B0];
  sub_1B9F48104(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v43 - v10;
  v46 = MEMORY[0x1E6969530];
  sub_1B9F48104(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v43 - v14;
  v16 = sub_1BA4A1798();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a4;
  v5[14] = 0;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_lastUpdatedDate;
  v22 = sub_1BA4A1728();
  (*(*(v22 - 8) + 56))(v5 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_endSharingRelationshipState;
  v24 = sub_1BA4A3118();
  (*(*(v24 - 8) + 56))(v5 + v23, 1, 1, v24);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_disabledState) = 2;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem____lazy_storage___gradientsProvider) = 0;
  v25 = sub_1BA4A2838();
  v26 = [v25 identifier];

  sub_1BA4A1778();
  v27 = sub_1BA4A1748();
  v29 = v28;
  (*(v17 + 8))(v20, v16);
  v49 = sub_1BA4A85D8();
  v50 = v30;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](v27, v29);

  v31 = v50;
  v5[2] = v49;
  v5[3] = v31;
  v32 = v44;
  sub_1B9F0A534(v44, (v5 + 4));
  v33 = v45;
  sub_1B9F0A534(v45, (v5 + 9));
  v34 = sub_1BA4A2888();
  v35 = MEMORY[0x1E69A30F0];
  v5[18] = v34;
  v5[19] = v35;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 15);
  v37 = *(v34 - 8);
  (*(v37 + 16))(boxed_opaque_existential_1, a1, v34);
  sub_1BA4A2808();
  v38 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_lastUpdatedDate;
  swift_beginAccess();
  sub_1BA3CB784(v15, v5 + v38, &qword_1EDC6E440, v46);
  swift_endAccess();
  v39 = sub_1BA4A2838();
  v40 = v5[14];
  v5[14] = v39;

  sub_1BA4A2848();
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v32);
  (*(v37 + 8))(a1, v34);
  v41 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_endSharingRelationshipState;
  swift_beginAccess();
  sub_1BA3CB784(v11, v5 + v41, &qword_1EBBE97C8, v48);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_disabledState) = v47;
  return v5;
}

uint64_t sub_1BA3CA768()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  sub_1B9F44590(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_lastUpdatedDate, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1B9F44590(v0 + OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileItem_endSharingRelationshipState, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FamilySharingProfileTileItem(uint64_t a1)
{
  result = qword_1EBBF1FF8;
  if (!qword_1EBBF1FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA3CA8A0(uint64_t a1)
{
  sub_1B9F48104(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_1B9F48104(319, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_1BA3CA9F4()
{
  v1 = *(*v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA3CAA94@<X0>(uint64_t *a1@<X2>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  swift_beginAccess();
  return sub_1BA3CAE14(v8 + v9, a4, a2, a3);
}

uint64_t sub_1BA3CAB04()
{
  type metadata accessor for FamilySharingProfileTileCell();
  sub_1BA3CAE80();
  return sub_1BA4A6808();
}

uint64_t sub_1BA3CAB54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA3CABEC(uint64_t a1)
{
  result = sub_1BA3CAC30(&qword_1EBBED558, &unk_1BA4D85B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA3CAC30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FamilySharingProfileTileItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3CAC74(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1BA3CAE14(v1 + v3, v10, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v10[3])
  {
    sub_1B9FCD918();
    type metadata accessor for FamilySharingProfileTileItem(0);
    if (swift_dynamicCast())
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
      v5 = v4;
      if (*(v9[0] + 112))
      {
        [v4 setProfileIdentifier_];
      }

      [v5 resume];
      sub_1B9F0A534(v9[0] + 32, v10);
      sub_1B9F0A534(v9[0] + 72, v9);
      v6 = sub_1BA3CA134();
      v7 = objc_allocWithZone(type metadata accessor for ProfileOverviewViewController());
      v8 = sub_1BA1803C4(v5, v10, v9, v6);

      [a1 showViewController:v8 sender:a1];
    }
  }

  else
  {
    sub_1B9F44590(v10, &qword_1EDC6E1A0, sub_1B9FCD918);
  }
}

uint64_t sub_1BA3CAE14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F48104(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA3CAE80()
{
  result = qword_1EDC643F8[0];
  if (!qword_1EDC643F8[0])
  {
    type metadata accessor for FamilySharingProfileTileCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC643F8);
  }

  return result;
}

void *sub_1BA3CAEC4()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setNumberOfLines_];
  v7 = [objc_opt_self() secondaryLabelColor];
  [v6 setTextColor_];

  [v6 setAdjustsFontForContentSizeCategory_];
  v8 = *MEMORY[0x1E69DDD80];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  }

  else
  {
    v36 = v0;
    sub_1BA4A3DD8();
    v13 = v8;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v16 = 136315906;
      v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v35 = v13;
      v19 = sub_1B9F0B82C(v17, v18, &v39);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v37 = 0;
      v38 = 1;
      sub_1B9F48104(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v39);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      LODWORD(v37) = 0;
      type metadata accessor for SymbolicTraits(0);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v39);
      v13 = v35;

      *(v16 + 24) = v25;
      *(v16 + 32) = 2112;
      v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v16 + 34) = v26;
      v27 = v33;
      *v33 = v26;
      _os_log_impl(&dword_1B9F07000, v14, v15, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v16, 0x2Au);
      sub_1B9F8C6C8(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      v28 = v34;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v29 = [v9 preferredFontDescriptorWithTextStyle_];
    v12 = [objc_opt_self() fontWithDescriptor:v29 size:0.0];

    v0 = v36;
  }

  v30 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel;
  [v6 setFont_];

  *(v0 + v30) = v6;
  return sub_1BA191E80(1, 1);
}

void sub_1BA3CB310()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setNumberOfLines_];
  v8 = [objc_opt_self() secondaryLabelColor];
  [v7 setTextColor_];

  [v7 setAdjustsFontForContentSizeCategory_];
  v9 = *MEMORY[0x1E69DDD80];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v14 = v9;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v39 = v1;
      v18 = v17;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v18 = 136315906;
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = sub_1B9F0B82C(v19, v20, &v42);
      v38 = v14;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v40 = 0;
      v41 = 1;
      sub_1B9F48104(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v42);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      LODWORD(v40) = 0;
      type metadata accessor for SymbolicTraits(0);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v42);
      v14 = v38;

      *(v18 + 24) = v28;
      *(v18 + 32) = 2112;
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v18 + 34) = v29;
      v30 = v36;
      *v36 = v29;
      _os_log_impl(&dword_1B9F07000, v15, v16, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v18, 0x2Au);
      sub_1B9F8C6C8(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      v31 = v37;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      v32 = v18;
      v1 = v39;
      MEMORY[0x1BFAF43A0](v32, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v33 = [v10 preferredFontDescriptorWithTextStyle_];
    v13 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
  }

  v34 = OBJC_IVAR____TtC18HealthExperienceUI28FamilySharingProfileTileCell_appleWatchLabel;
  [v7 setFont_];

  *(v1 + v34) = v7;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA3CB784(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F48104(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}