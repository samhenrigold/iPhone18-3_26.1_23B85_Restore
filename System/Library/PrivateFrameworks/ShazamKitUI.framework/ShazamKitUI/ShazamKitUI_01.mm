unint64_t sub_265FA3B28()
{
  result = qword_280052308;
  if (!qword_280052308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052310, "~B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052308);
  }

  return result;
}

void *ListeningView.init(state:bass:treble:showIntroAnimation:compatibleWithCustomBackground:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12)
{
  v15 = result;
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v20 = a3;
    result = sub_265FAB048();
    a3 = v20;
    a4 = v23;
    v18 = v24;
    a6 = v25;
  }

  if (!a8)
  {
    v22 = a3;
    result = sub_265FAB048();
    a3 = v22;
    a7 = v23;
    a8 = v24;
    a10 = v25;
  }

  *a9 = v15;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v18;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12 & 1;
  return result;
}

double ListeningView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052320, &qword_265FAEE90);
  sub_265FAB038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052328, &qword_265FAEE98);
  sub_265FAB038();
  sub_265FAB038();
  result = v7;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v3;
  *(a1 + 73) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

id sub_265FA3E1C(uint64_t a1, double a2, double a3)
{
  [v3 setBass_];
  [v3 setTreble_];
  result = [v3 state];
  v7 = &selRef_stopAllAnimations;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (result == 3)
      {
        return result;
      }

      v7 = &selRef_startPassiveListeningAnimation;
      if (result != 4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_16;
      }

      if (result == 4)
      {
        return result;
      }

      v7 = &selRef_startActiveListeningAnimation;
      if (result != 3)
      {
        goto LABEL_16;
      }
    }

    [v3 stopAllAnimations];
  }

  else if (a1 == 1)
  {
    if (result == 1)
    {
      return result;
    }
  }

  else if (a1 == 2)
  {
    if (result == 2)
    {
      return result;
    }

    v7 = &selRef_startIdleAnimation;
  }

LABEL_16:
  v8 = *v7;

  return [v3 v8];
}

unint64_t sub_265FA40D8()
{
  result = qword_280052338;
  if (!qword_280052338)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052340, &qword_265FAEF88);
    sub_265FA4164(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052338);
  }

  return result;
}

unint64_t sub_265FA4164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280052348;
  if (!qword_280052348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052348);
  }

  return result;
}

uint64_t sub_265FA41B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_265FA4200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_265FA4268(void *a1)
{
  type metadata accessor for ListeningLayerPlatformWrapper.ListeningUIView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView_listeningLayer);
    v12 = *v1;
    v13 = *(v1 + 2);
    v5 = a1;
    v6 = v4;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052320, &qword_265FAEE90);
    MEMORY[0x2667746A0](&v11, v7);
    v8 = *&v11;
    v12 = *(v1 + 24);
    v13 = *(v1 + 5);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052328, &qword_265FAEE98);
    MEMORY[0x2667746A0](&v11);
    v10 = v11;
    v12 = v1[3];
    v13 = *(v1 + 8);
    MEMORY[0x2667746A0](&v11, v9);
    sub_265FA3E1C(v8, v10, v11);
  }
}

id sub_265FA4384()
{
  v1 = [objc_allocWithZone(SHListeningLayer) initWithIntroAnimation:*(v0 + 72) useCustomCompatibleBackground:*(v0 + 73)];
  v2 = type metadata accessor for ListeningLayerPlatformWrapper.ListeningUIView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView_listeningLayer] = v1;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 layer];
  [v6 addSublayer_];

  return v5;
}

unint64_t sub_265FA446C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265FA4494(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_265FA4494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280052350;
  if (!qword_280052350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052350);
  }

  return result;
}

uint64_t sub_265FA44E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265FA4494(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_265FA454C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265FA4494(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_265FA45B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_265FA4494(a1, a2, a3);
  sub_265FAAD08();
  __break(1u);
}

uint64_t sub_265FA45E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_265FA779C(a1);
  (*(*(*(v2 + qword_280054660) - 8) + 8))(a1);
  return v5;
}

id sub_265FA4660()
{
  v1 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_265FA4708(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + *a2) centerYAnchor];
    v7 = [*(v2 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView) centerYAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:391.0];

    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

void sub_265FA47DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v12 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v14 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamLogoImageView;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v16 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountLabel;
  *&v5[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_trackDetailsStackView;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v18 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v19 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052470, &qword_265FAF180));
  v21 = sub_265FAAC68();
  v22 = [v21 view];

  if (v22)
  {
    *&v5[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_placeholderArtworkView] = v22;
    *&v5[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtImageViewCenterYConstraint] = 0;
    *&v5[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint] = 0;
    *&v5[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___placeholderViewCenterYConstraint] = 0;
    v24.receiver = v5;
    v24.super_class = ObjectType;
    v23 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
    sub_265FA4A94();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265FA4A94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052478, &qword_265FAF188);
  MEMORY[0x28223BE20](v2 - 8);
  v134 = &v127 - v3;
  v4 = sub_265FAB2E8();
  v132 = *(v4 - 8);
  v133 = v4;
  MEMORY[0x28223BE20](v4);
  v131 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265FAB338();
  v141 = *(v6 - 8);
  v142 = v6;
  MEMORY[0x28223BE20](v6);
  v140 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = *&v0[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_trackDetailsStackView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v9 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel];
  [v8 addArrangedSubview_];
  v10 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel];
  [v8 addArrangedSubview_];
  [v8 setAxis_];
  [v8 setDistribution_];
  v138 = v8;
  [v8 setAlignment_];
  v11 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v12 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  [v12 _setContinuousCornerRadius_];
  [v12 setClipsToBounds_];
  v13 = [v12 layer];
  if (qword_280051A28 != -1)
  {
    swift_once();
  }

  v14 = qword_280052368;
  v15 = [qword_280052368 CGColor];
  [v13 setBorderColor_];

  v16 = [v12 layer];
  [v16 setBorderWidth_];

  v17 = [v12 layer];
  [v17 setBorderPathIsBounds_];

  v18 = sub_265FAB178();
  v129 = v12;
  [v12 setAccessibilityIdentifier_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = objc_opt_self();
  v20 = [v19 systemFontOfSize:38.0 weight:*MEMORY[0x277D74420]];
  [v9 setFont_];

  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  [v9 setTextColor_];

  [v9 setNumberOfLines_];
  LODWORD(v23) = 1132068864;
  [v9 setContentCompressionResistancePriority:0 forAxis:v23];
  v24 = sub_265FAB178();
  [v9 setAccessibilityIdentifier_];

  v25 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_placeholderArtworkView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  [v25 _setContinuousCornerRadius_];
  [v25 setClipsToBounds_];
  v26 = sub_265FAB178();
  [v25 setAccessibilityIdentifier_];

  v27 = [v25 layer];
  v28 = [v14 CGColor];
  [v27 setBorderColor_];

  v29 = [v25 layer];
  [v29 setBorderWidth_];

  v30 = [v25 layer];
  [v30 setBorderPathIsBounds_];

  v137 = v25;
  [v25 setOverrideUserInterfaceStyle_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = *MEMORY[0x277D74418];
  v127 = v19;
  v32 = [v19 systemFontOfSize:34.0 weight:v31];
  [v10 setFont_];

  [v10 setNumberOfLines_];
  if (qword_280051A18 != -1)
  {
    swift_once();
  }

  [v10 setTextColor_];
  LODWORD(v33) = 1132068864;
  [v10 setContentCompressionResistancePriority:0 forAxis:v33];
  v34 = sub_265FAB178();
  [v10 setAccessibilityIdentifier_];

  v35 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v36 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamLogoImageView];
  [v35 addArrangedSubview_];
  v139 = v36;
  [v35 setCustomSpacing:v36 afterView:4.0];
  v37 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountLabel];
  [v35 addArrangedSubview_];
  [v35 setAxis_];
  [v35 setDistribution_];
  v128 = v35;
  [v35 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051D40, &qword_265FAF190);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_265FAF0B0;
  *(v38 + 32) = [v21 blackColor];
  *(v38 + 40) = [v21 blackColor];
  if (qword_280051A20 != -1)
  {
    swift_once();
  }

  v39 = qword_280052360;
  *(v38 + 48) = qword_280052360;
  sub_265F97BC0(0, &qword_280052480, 0x277D75348);
  v40 = v39;
  v41 = sub_265FAB208();

  v42 = [objc_opt_self() configurationWithPaletteColors_];

  v43 = v42;
  v44 = sub_265FAB178();
  v45 = objc_opt_self();
  v46 = [v45 systemImageNamed:v44 withConfiguration:v43];

  v136 = v43;
  v135 = v46;
  [v139 setImage_];
  v47 = [v127 systemFontOfSize:20.0 weight:*MEMORY[0x277D74410]];
  [v37 setFont_];

  [v37 setAdjustsFontForContentSizeCategory_];
  [v37 setTextColor_];
  LODWORD(v48) = 1132068864;
  [v37 setContentCompressionResistancePriority:0 forAxis:v48];
  v49 = sub_265FAB178();
  [v37 setAccessibilityIdentifier_];

  v50 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  v51 = sub_265FAB178();
  [v50 setAccessibilityIdentifier_];

  v52 = objc_opt_self();
  v53 = [v52 mainBundle];
  sub_265FAA708();

  v54 = sub_265FAB178();

  [v50 setAccessibilityLabel_];

  [v1 addSubview_];
  v55 = v140;
  sub_265FAB328();
  v56 = [v52 bundleForClass_];
  v57 = sub_265FAB178();
  v58 = [v45 imageNamed:v57 inBundle:v56 withConfiguration:0];

  sub_265FAB318();
  v59 = v129;
  if (qword_280051A30 != -1)
  {
    swift_once();
  }

  v60 = qword_280052370;
  sub_265FAB308();
  (*(v132 + 104))(v131, *MEMORY[0x277D74FD8], v133);
  sub_265FAB2F8();
  v61 = v141;
  v62 = v142;
  v63 = v134;
  (*(v141 + 16))(v134, v55, v142);
  (*(v61 + 56))(v63, 0, 1, v62);
  sub_265FAB348();
  v134 = objc_opt_self();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_265FAF0C0;
  v65 = [v11 leadingAnchor];
  v66 = [v1 0x279BBF529];
  v67 = [v65 constraintEqualToAnchor:v66 constant:24.0];

  *(v64 + 32) = v67;
  *(v64 + 40) = sub_265FA4660();
  v68 = [v11 widthAnchor];
  v69 = [v11 heightAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v64 + 48) = v70;
  v71 = [v11 centerYAnchor];
  v72 = [v1 &selRef_presentMediaItem_presentationSettings_completionHandler_];
  v73 = [v71 constraintEqualToAnchor_];

  *(v64 + 56) = v73;
  v74 = [v59 centerXAnchor];
  v75 = [v11 centerXAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v64 + 64) = v76;
  v77 = [v59 heightAnchor];
  v78 = [v11 heightAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v64 + 72) = v79;
  v80 = [v59 widthAnchor];
  v81 = [v11 widthAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v64 + 80) = v82;
  *(v64 + 88) = sub_265FA4708(&OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtImageViewCenterYConstraint, &OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);
  v83 = v138;
  v84 = [v138 leadingAnchor];
  v85 = [v11 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:38.0];

  *(v64 + 96) = v86;
  v87 = [v83 trailingAnchor];
  v88 = [v1 trailingAnchor];
  v89 = [v87 constraintEqualToAnchor_];

  *(v64 + 104) = v89;
  v90 = [v83 centerYAnchor];
  v91 = [v1 centerYAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v64 + 112) = v92;
  v93 = [v50 trailingAnchor];
  v133 = v1;
  v94 = [v1 trailingAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v64 + 120) = v95;
  v96 = [v50 widthAnchor];
  v97 = [v96 constraintEqualToConstant_];

  *(v64 + 128) = v97;
  v98 = [v50 heightAnchor];
  v99 = [v98 constraintEqualToConstant_];

  *(v64 + 136) = v99;
  v100 = [v50 bottomAnchor];
  v101 = [v11 bottomAnchor];
  v102 = [v100 constraintEqualToAnchor_];

  *(v64 + 144) = v102;
  v103 = v128;
  v104 = [v128 leadingAnchor];
  v105 = [v83 leadingAnchor];
  v106 = [v104 constraintEqualToAnchor_];

  *(v64 + 152) = v106;
  v107 = [v103 centerYAnchor];
  v108 = [v50 centerYAnchor];
  v109 = [v107 &selRef:v108 systemFontOfSize:? weight:? + 5];

  *(v64 + 160) = v109;
  v110 = v139;
  v111 = [v139 heightAnchor];
  if (qword_280051A38 != -1)
  {
    swift_once();
  }

  v112 = [v111 constraintEqualToConstant_];

  *(v64 + 168) = v112;
  v113 = [v110 widthAnchor];
  v114 = [v113 constraintEqualToConstant_];

  *(v64 + 176) = v114;
  v115 = v137;
  v116 = [v137 centerXAnchor];
  v117 = [v11 centerXAnchor];
  v118 = [v116 &selRef:v117 systemFontOfSize:? weight:? + 5];

  *(v64 + 184) = v118;
  v119 = [v115 0x279BBF5BALL];
  v120 = [v11 0x279BBF5BALL];
  v121 = [v119 &selRef:v120 systemFontOfSize:? weight:? + 5];

  *(v64 + 192) = v121;
  v122 = [v115 widthAnchor];
  v123 = [v11 widthAnchor];
  v124 = [v122 &selRef:v123 systemFontOfSize:? weight:? + 5];

  *(v64 + 200) = v124;
  *(v64 + 208) = sub_265FA4708(&OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___placeholderViewCenterYConstraint, &OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_placeholderArtworkView);
  sub_265F97BC0(0, &qword_280051D48, 0x277CCAAD0);
  v125 = sub_265FAB208();

  [v134 activateConstraints_];

  return (*(v141 + 8))(v140, v142);
}

void sub_265FA5FCC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v6 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v9 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamLogoImageView;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountLabel;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_trackDetailsStackView;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v12 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v13 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052470, &qword_265FAF180));
  v15 = sub_265FAAC68();
  v16 = [v15 view];

  if (v16)
  {
    *&v2[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_placeholderArtworkView] = v16;
    *&v2[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtImageViewCenterYConstraint] = 0;
    *&v2[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint] = 0;
    *&v2[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___placeholderViewCenterYConstraint] = 0;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
    if (v17)
    {
      v18 = v17;
      sub_265FA4A94();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_265FA64A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);
  v2 = [v1 layer];
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  [v2 setBackgroundColor_];
  v5 = [v1 layer];
  [v5 setOpacity_];

  [v1 transform];
  CGAffineTransformScale(&v19, &aBlock, 0.9, 0.9);
  aBlock = v19;
  [v1 setTransform_];
  v6 = sub_265FA4708(&OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtImageViewCenterYConstraint, &OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);
  [v6 setConstant_];

  v18 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:120.0 damping:16.0 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v18 timingParameters:0.0];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_265FA7768;
  *&aBlock.ty = v8;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_27;
  v9 = _Block_copy(&aBlock);

  [v7 addAnimations_];
  _Block_release(v9);
  v10 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:120.0 damping:20.0 initialVelocity:{0.0, 0.0}];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v10 timingParameters:0.0];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_265FA7770;
  *&aBlock.ty = v12;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_31;
  v13 = _Block_copy(&aBlock);

  [v11 addAnimations_];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = objc_allocWithZone(MEMORY[0x277D75D40]);
  *&aBlock.tx = sub_265FA7794;
  *&aBlock.ty = v14;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_35;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 initWithDuration:3 curve:v16 animations:0.84];
  _Block_release(v16);

  [v7 startAnimation];
  [v11 startAnimationAfterDelay_];
  [v17 startAnimation];
}

void sub_265FA692C()
{
  v1 = *&v0[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel];
  [v1 transform];
  CGAffineTransformTranslate(&v15, &aBlock, 0.0, 70.0);
  aBlock = v15;
  [v1 setTransform_];
  v2 = *&v0[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel];
  [v2 transform];
  CGAffineTransformTranslate(&v15, &aBlock, 0.0, 80.0);
  aBlock = v15;
  [v2 setTransform_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:120.0 damping:20.0 initialVelocity:{0.0, 0.0}];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v14 timingParameters:0.0];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_265FA7678;
  *&aBlock.ty = v4;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_4;
  v5 = _Block_copy(&aBlock);

  [v3 addAnimations_];
  _Block_release(v5);
  v6 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:200.0 damping:27.0 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v6 timingParameters:0.0];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_265FA76B4;
  *&aBlock.ty = v8;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_5;
  v9 = _Block_copy(&aBlock);

  [v7 addAnimations_];
  _Block_release(v9);
  [v3 startAnimationAfterDelay_];
  [v7 startAnimationAfterDelay_];
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *&aBlock.tx = sub_265FA7710;
  *&aBlock.ty = v11;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_11;
  v12 = _Block_copy(&aBlock);
  v13 = v0;

  [v10 animateKeyframesWithDuration:0 delay:v12 options:0 animations:1.25 completion:0.25];

  _Block_release(v12);
}

void sub_265FA6D38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong layoutIfNeeded];
  }
}

double sub_265FA6D94(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_265FA6DD8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);

    v4 = [v3 layer];
    LODWORD(v5) = 1.0;
    [v4 setOpacity_];
  }
}

void sub_265FA6E74(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *a2);

    v6[0] = 0x3FF0000000000000;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0x3FF0000000000000;
    v6[4] = 0;
    v6[5] = 0;
    [v5 setTransform_];
  }
}

void sub_265FA6F00(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_265FA7718;
  v13 = v2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_265FA6D94;
  v11 = &block_descriptor_15;
  v3 = _Block_copy(&v8);

  [v1 addKeyframeWithRelativeStartTime:v3 relativeDuration:0.0 animations:1.0];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_265FA773C;
  v13 = v4;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_265FA6D94;
  v11 = &block_descriptor_19;
  v5 = _Block_copy(&v8);

  [v1 addKeyframeWithRelativeStartTime:v5 relativeDuration:0.05 animations:0.9];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_265FA7760;
  v13 = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_265FA6D94;
  v11 = &block_descriptor_23;
  v7 = _Block_copy(&v8);

  [v1 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.2 animations:0.8];
  _Block_release(v7);
}

void sub_265FA7158(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *a2);

    [v5 setAlpha_];
  }
}

void sub_265FA71D4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView);

    [v3 setAlpha_];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton);

    [v6 setAlpha_];
  }
}

id sub_265FA72A8()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  qword_280052358 = result;
  return result;
}

id sub_265FA72F4()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.447058824 green:0.447058824 blue:0.447058824 alpha:0.6];
  qword_280052360 = result;
  return result;
}

void sub_265FA7344()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_280052368 = v1;
}

id sub_265FA73B4()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
  qword_280052370 = result;
  return result;
}

__n128 sub_265FA73FC()
{
  __asm { FMOV            V0.2D, #24.0 }

  xmmword_280052378 = result;
  return result;
}

void *sub_265FA745C(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_280054660);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_265FAAC58();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_265FA7594(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_265FA7640()
{
  MEMORY[0x266775400](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_265FA76D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FA779C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_265FAAC68();
}

uint64_t sub_265FA790C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265FA7998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AlbumArt(uint64_t a1)
{
  result = qword_280052488;
  if (!qword_280052488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265FA7A60(uint64_t a1)
{
  sub_265F94FF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_265FA7AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v49 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800524E0, &qword_265FAF218);
  MEMORY[0x28223BE20](v45);
  v41 = &v40 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800524F8, &qword_265FAF228);
  MEMORY[0x28223BE20](v48);
  v46 = &v40 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052500, &qword_265FAF230);
  MEMORY[0x28223BE20](v42);
  v6 = &v40 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800524B0, &qword_265FAF200);
  MEMORY[0x28223BE20](v47);
  v8 = &v40 - v7;
  v9 = sub_265FAAFA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800524C0, &qword_265FAF208);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = sub_265FAAAC8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v43, v16);
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == *MEMORY[0x277CDD9C8])
  {
    (*(v17 + 96))(v19, v16);
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    v21 = sub_265FAAFE8();
    (*(v10 + 8))(v12, v9);
    v22 = *(v44 + *(type metadata accessor for AlbumArt(0) + 20));
    v23 = &v15[*(v13 + 36)];
    v24 = *(sub_265FAAAE8() + 20);
    v25 = *MEMORY[0x277CE0118];
    v26 = sub_265FAAC28();
    (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
    *v23 = v22;
    *(v23 + 1) = v22;
    *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520E8, &qword_265FAE7C0) + 36)] = 256;
    *v15 = v21;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    sub_265F8A480(v15, v6, &qword_2800524C0, &qword_265FAF208);
    swift_storeEnumTagMultiPayload();
    sub_265FA8738();
    sub_265FA8810();
    sub_265FAAD38();
    sub_265F8A480(v8, v46, &qword_2800524B0, &qword_265FAF200);
    swift_storeEnumTagMultiPayload();
    sub_265FA86AC();
    sub_265FAAD38();

    sub_265F8A4E8(v8, &qword_2800524B0, &qword_265FAF200);
    v27 = v15;
    v28 = &qword_2800524C0;
    v29 = &qword_265FAF208;
    return sub_265F8A4E8(v27, v28, v29);
  }

  v30 = v44;
  v31 = v45;
  v43 = v13;
  if (v20 == *MEMORY[0x277CDD9C0])
  {
    (*(v17 + 8))(v19, v16);
LABEL_6:
    if (qword_2800519E0 != -1)
    {
      swift_once();
    }

    v32 = qword_280054618;
    v33 = *(v30 + *(type metadata accessor for AlbumArt(0) + 20));
    v34 = v41;
    v35 = &v41[*(v31 + 36)];
    v36 = *(sub_265FAAAE8() + 20);
    v37 = *MEMORY[0x277CE0118];
    v38 = sub_265FAAC28();
    (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
    *v35 = v33;
    *(v35 + 1) = v33;
    *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520E8, &qword_265FAE7C0) + 36)] = 256;
    *v34 = v32;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    sub_265F8A480(v34, v6, &qword_2800524E0, &qword_265FAF218);
    swift_storeEnumTagMultiPayload();
    sub_265FA8738();
    sub_265FA8810();

    sub_265FAAD38();
    sub_265F8A480(v8, v46, &qword_2800524B0, &qword_265FAF200);
    swift_storeEnumTagMultiPayload();
    sub_265FA86AC();
    sub_265FAAD38();
    sub_265F8A4E8(v8, &qword_2800524B0, &qword_265FAF200);
    v27 = v34;
    v28 = &qword_2800524E0;
    v29 = &qword_265FAF218;
    return sub_265F8A4E8(v27, v28, v29);
  }

  if (v20 == *MEMORY[0x277CDD9B8])
  {
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_265FA86AC();
  sub_265FAAD38();
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_265FA8298(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  MEMORY[0x28223BE20](v4 - 8);
  sub_265F8A480(v1, &v9 - v5, &qword_280051CB0, &unk_265FAE990);
  sub_265FA8430(v1, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_265F96630(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052498, &qword_265FAF1F8);
  sub_265FA8620();
  return sub_265FAA948();
}

uint64_t sub_265FA8430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumArt(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FA8494()
{
  v1 = *(type metadata accessor for AlbumArt(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_265FAA7D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265FA85A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AlbumArt(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_265FA7AF0(a1, v6, a2);
}

unint64_t sub_265FA8620()
{
  result = qword_2800524A0;
  if (!qword_2800524A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052498, &qword_265FAF1F8);
    sub_265FA86AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800524A0);
  }

  return result;
}

unint64_t sub_265FA86AC()
{
  result = qword_2800524A8;
  if (!qword_2800524A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800524B0, &qword_265FAF200);
    sub_265FA8738();
    sub_265FA8810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800524A8);
  }

  return result;
}

unint64_t sub_265FA8738()
{
  result = qword_2800524B8;
  if (!qword_2800524B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800524C0, &qword_265FAF208);
    sub_265FA88E8(&qword_2800524C8, &qword_2800524D0, &qword_265FAF210, MEMORY[0x277CE1078]);
    sub_265F92604(&qword_280052178, &qword_2800520E8, &qword_265FAE7C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800524B8);
  }

  return result;
}

unint64_t sub_265FA8810()
{
  result = qword_2800524D8;
  if (!qword_2800524D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800524E0, &qword_265FAF218);
    sub_265FA88E8(&qword_2800524E8, &qword_2800524F0, &qword_265FAF220, MEMORY[0x277CE0F70]);
    sub_265F92604(&qword_280052178, &qword_2800520E8, &qword_265FAE7C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800524D8);
  }

  return result;
}

uint64_t sub_265FA88E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265FA89C8@<X0>(_OWORD *a1@<X8>)
{
  v48 = a1;
  v1 = sub_265FAAFA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280051A08 != -1)
  {
    swift_once();
  }

  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1);
  v47 = sub_265FAAFE8();
  (*(v2 + 8))(v4, v1);
  sub_265FAB0A8();
  sub_265FAAA08();
  v51 = v62;
  v52 = v64;
  v49 = v63;
  v50 = v65;
  v46 = v66;
  v53 = v67;
  LOBYTE(v88[0]) = v63;
  LOBYTE(v68) = v65;
  LOBYTE(v79[0]) = 1;
  sub_265FAABF8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_265FAAE78();
  v9 = v8;
  v11 = v10;
  sub_265FAADB8();
  v12 = sub_265FAAE48();
  v14 = v13;
  v16 = v15;

  sub_265F8D998(v7, v9, v11 & 1);

  sub_265FAADC8();
  v17 = sub_265FAAE18();
  v19 = v18;
  v21 = v20;
  sub_265F8D998(v12, v14, v16 & 1);

  LODWORD(v88[0]) = sub_265FAAD48();
  v22 = sub_265FAAE38();
  v24 = v23;
  LOBYTE(ObjCClassFromMetadata) = v25;
  sub_265F8D998(v17, v19, v21 & 1);

  sub_265FAAF78();
  v26 = sub_265FAAE28();
  v28 = v27;
  LOBYTE(v14) = v29;
  v31 = v30;

  sub_265F8D998(v22, v24, ObjCClassFromMetadata & 1);

  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = v14 & 1;
  LOBYTE(v88[0]) = v14 & 1;
  v36 = v46;
  v35 = v47;
  *&v68 = v47;
  *(&v68 + 1) = v51;
  LOBYTE(v69) = v49;
  *(&v69 + 1) = *v61;
  DWORD1(v69) = *&v61[3];
  *(&v69 + 1) = v52;
  LOBYTE(v70) = v50;
  DWORD1(v70) = *&v60[3];
  *(&v70 + 1) = *v60;
  *(&v70 + 1) = v46;
  v71 = v53;
  v72 = 0;
  v73 = 1;
  LOWORD(v58[0]) = 1;
  v56 = v70;
  v57 = v53;
  v54 = v68;
  v55 = v69;
  *&v74 = v26;
  *(&v74 + 1) = v28;
  LOBYTE(v75) = v34;
  DWORD1(v75) = *&v59[3];
  *(&v75 + 1) = *v59;
  *(&v75 + 1) = v31;
  *&v76 = KeyPath;
  *(&v76 + 1) = 0x3FE0000000000000;
  *&v77 = v33;
  *(&v77 + 1) = 2;
  v78 = 0;
  *(v58 + 8) = v74;
  BYTE8(v58[4]) = 0;
  *(&v58[3] + 8) = v77;
  *(&v58[2] + 8) = v76;
  *(&v58[1] + 8) = v75;
  v37 = v68;
  v38 = v69;
  v39 = v53;
  v40 = v48;
  v48[2] = v70;
  v40[3] = v39;
  *v40 = v37;
  v40[1] = v38;
  v41 = v58[0];
  v42 = v58[1];
  *(v40 + 121) = *(&v58[3] + 9);
  v43 = v58[3];
  v40[6] = v58[2];
  v40[7] = v43;
  v40[4] = v41;
  v40[5] = v42;
  v79[0] = v26;
  v79[1] = v28;
  v80 = v34;
  *v81 = *v59;
  *&v81[3] = *&v59[3];
  v82 = v31;
  v83 = KeyPath;
  v84 = 0x3FE0000000000000;
  v85 = v33;
  v86 = 2;
  v87 = 0;
  sub_265F8A480(&v68, v88, &qword_280052520, &qword_265FAF318);
  sub_265F8A480(&v74, v88, &qword_280052528, &qword_265FAF320);
  sub_265F8A4E8(v79, &qword_280052528, &qword_265FAF320);
  v88[0] = v35;
  v88[1] = v51;
  v89 = v49;
  *v90 = *v61;
  *&v90[3] = *&v61[3];
  v91 = v52;
  v92 = v50;
  *v93 = *v60;
  *&v93[3] = *&v60[3];
  v94 = v36;
  v95 = v53;
  v96 = 0;
  v97 = 1;
  return sub_265F8A4E8(v88, &qword_280052520, &qword_265FAF318);
}

double sub_265FA8F5C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_265FAABA8();
  v20 = 1;
  sub_265FA89C8(&v11);
  v26 = v16;
  v27 = v17;
  v28[0] = v18[0];
  *(v28 + 9) = *(v18 + 9);
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v21 = v11;
  v22 = v12;
  v29[5] = v16;
  v29[6] = v17;
  v30[0] = v18[0];
  *(v30 + 9) = *(v18 + 9);
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[0] = v11;
  v29[1] = v12;
  sub_265F8A480(&v21, &v10, &qword_280052518, &qword_265FAF2B0);
  sub_265F8A4E8(v29, &qword_280052518, &qword_265FAF2B0);
  *(&v19[6] + 7) = v27;
  *(&v19[5] + 7) = v26;
  *(&v19[2] + 7) = v23;
  *(&v19[1] + 7) = v22;
  *(&v19[7] + 7) = v28[0];
  v19[8] = *(v28 + 9);
  *(&v19[3] + 7) = v24;
  *(&v19[4] + 7) = v25;
  *(v19 + 7) = v21;
  v4 = v19[4];
  *(a2 + 97) = v19[5];
  v5 = v19[7];
  *(a2 + 113) = v19[6];
  *(a2 + 129) = v5;
  *(a2 + 145) = v19[8];
  v6 = v19[0];
  *(a2 + 33) = v19[1];
  result = *&v19[2];
  v8 = v19[3];
  *(a2 + 49) = v19[2];
  *(a2 + 65) = v8;
  *(a2 + 81) = v4;
  v9 = v20;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 17) = v6;
  return result;
}

unint64_t sub_265FA9190()
{
  result = qword_280052530;
  if (!qword_280052530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052538, &qword_265FAF328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052530);
  }

  return result;
}

uint64_t sub_265FA91F4()
{
  v0 = sub_265FAA8B8();
  __swift_allocate_value_buffer(v0, qword_280054670);
  __swift_project_value_buffer(v0, qword_280054670);
  return sub_265FAA8A8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_265FA92C8(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C68, &qword_265FAD8C0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x282200958](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_265FA9390()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_265FA94B0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052300, &qword_265FAEDA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265FA92C8;
  v0[13] = &block_descriptor_5;
  v0[14] = v2;
  [v1 _presentMediaLibraryWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265FA94B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    v2 = sub_265FA95D8;
  }

  else
  {
    v2 = sub_265FA95C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265FA95D8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_265FA9688@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052580, &qword_265FAF418);
  v3 = *(v41 - 8);
  v4 = MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052588, &qword_265FAF420);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = sub_265FAA9C8();
  sub_265FA9E04(v15, v16, v17);
  sub_265FAAEF8();
  if (a1 >> 62)
  {
    v39 = sub_265FAB3D8();
  }

  else
  {
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052598, &qword_265FAF428);
  sub_265FAA7F8();
  v18 = sub_265F92604(&qword_2800525A0, &qword_280052598, &qword_265FAF428, MEMORY[0x277D83980]);
  sub_265FA9E58(v18, v19, v20);
  sub_265FA9EAC();
  sub_265FAB058();
  v36 = *(v9 + 16);
  v21 = v12;
  v38 = v14;
  v22 = v8;
  v36(v12, v14, v8);
  v23 = v3;
  v37 = *(v3 + 16);
  v24 = v40;
  v25 = v41;
  v37(v40, v7, v41);
  v26 = v22;
  v27 = v9;
  v28 = v7;
  v29 = v24;
  v30 = v42;
  v31 = v26;
  (v36)(v42, v21);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800525C0, &unk_265FAF430);
  *(v30 + *(v32 + 48)) = v39;
  v37((v30 + *(v32 + 64)), v29, v25);
  v33 = *(v23 + 8);
  v33(v28, v25);
  v34 = *(v27 + 8);
  v34(v38, v31);
  v33(v29, v25);
  return (v34)(v21, v31);
}

id sub_265FA9A58@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_265FA9A64()
{
  v1 = sub_265FAAA98();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052540, &qword_265FAF3C8);
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  v12 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052548, &qword_265FAF3D0);
  sub_265F92604(&qword_280052550, &qword_280052548, &qword_265FAF3D0, MEMORY[0x277CE14C0]);
  sub_265FAAE08();
  KeyPath = swift_getKeyPath();
  v9 = &v7[*(v5 + 36)];
  *v9 = KeyPath;
  v9[1] = 0x4034000000000000;
  sub_265FAAA88();
  sub_265FA9CB8();
  sub_265FAAF38();
  (*(v2 + 8))(v4, v1);
  return sub_265FA9D9C(v7);
}

unint64_t sub_265FA9CB8()
{
  result = qword_280052558;
  if (!qword_280052558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052540, &qword_265FAF3C8);
    sub_265F92604(&qword_280052560, &qword_280052568, &qword_265FAF408, MEMORY[0x277CDE5A0]);
    sub_265F92604(&qword_280052570, &qword_280052578, &qword_265FAF410, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052558);
  }

  return result;
}

uint64_t sub_265FA9D9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052540, &qword_265FAF3C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265FA9E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280052590;
  if (!qword_280052590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052590);
  }

  return result;
}

unint64_t sub_265FA9E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800525A8;
  if (!qword_2800525A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800525A8);
  }

  return result;
}

unint64_t sub_265FA9EAC()
{
  result = qword_2800525B0;
  if (!qword_2800525B0)
  {
    sub_265FA9F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800525B0);
  }

  return result;
}

unint64_t sub_265FA9F04()
{
  result = qword_2800525B8;
  if (!qword_2800525B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800525B8);
  }

  return result;
}

uint64_t sub_265FA9F50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052540, &qword_265FAF3C8);
  sub_265FAAA98();
  sub_265FA9CB8();
  return swift_getOpaqueTypeConformance2();
}

id sub_265FAA000()
{
  type metadata accessor for AmbientNoMatchUIView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_265FAA03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265FAA130(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_265FAA0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265FAA130(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_265FAA104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_265FAA130(a1, a2, a3);
  sub_265FAAD08();
  __break(1u);
}

unint64_t sub_265FAA130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2800525C8;
  if (!qword_2800525C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800525C8);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_2800545F8 == -1)
  {
    if (qword_280054600)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280054600)
    {
      return _availability_version_check();
    }
  }

  if (qword_2800545F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2800545E4 > a3)
      {
        return 1;
      }

      if (dword_2800545E4 >= a3)
      {
        return dword_2800545E8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280054600;
  if (qword_280054600)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280054600 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x266774DA0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_2800545E4, &dword_2800545E8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}