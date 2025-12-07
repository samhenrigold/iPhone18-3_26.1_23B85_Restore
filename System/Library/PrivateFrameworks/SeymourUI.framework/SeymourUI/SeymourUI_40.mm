uint64_t sub_20B98A718(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_20C134EC4() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_20B98A7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B98A7F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
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

double sub_20B98A848(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B98A8D8()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_20C13E164();
  v10 = v2;
  v11 = v1;
  if (v6 < 0)
  {
    LOBYTE(v12) = v4 & 1;
    v13 = v3;
    LODWORD(v14) = v5;
    BYTE4(v14) = BYTE4(v5) & 1;
    MEMORY[0x20F2F58E0](1);
    sub_20B992E10(v9);
  }

  else
  {
    v12 = v4;
    LODWORD(v13) = v3;
    BYTE4(v13) = BYTE4(v3) & 1;
    BYTE5(v13) = BYTE5(v3);
    v14 = v5;
    v15 = v6 & 1;
    v16 = v7;
    MEMORY[0x20F2F58E0](0);
    sub_20B7C71D4(v9);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20B98A9C8(uint64_t a1)
{
  if ((*(v1 + 40) & 0x8000000000000000) != 0)
  {
    MEMORY[0x20F2F58E0](1);
    return sub_20B992E10(a1);
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    return sub_20B7C71D4(a1);
  }
}

uint64_t sub_20B98AA90(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  sub_20C13E164();
  v11 = v3;
  v12 = v2;
  if (v7 < 0)
  {
    LOBYTE(v13) = v5 & 1;
    v14 = v4;
    LODWORD(v15) = v6;
    BYTE4(v15) = BYTE4(v6) & 1;
    MEMORY[0x20F2F58E0](1);
    sub_20B992E10(v10);
  }

  else
  {
    v13 = v5;
    LODWORD(v14) = v4;
    BYTE4(v14) = BYTE4(v4) & 1;
    BYTE5(v14) = BYTE5(v4);
    v15 = v6;
    v16 = v7 & 1;
    v17 = v8;
    MEMORY[0x20F2F58E0](0);
    sub_20B7C71D4(v10);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20B98AB7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_20B98AC30(v5, v7) & 1;
}

unint64_t sub_20B98ABDC()
{
  result = qword_27C768300;
  if (!qword_27C768300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768300);
  }

  return result;
}

uint64_t sub_20B98AC30(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7 < 0)
  {
    if ((*(a2 + 40) & 0x8000000000000000) == 0 || *a2 != v4)
    {
      goto LABEL_5;
    }

    v16 = *(a2 + 32);
    if (v6)
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (*(a2 + 16) & 1 | (*(a2 + 8) != v3))
    {
      goto LABEL_5;
    }

    v17 = sub_20C13C954();
    v19 = v18;
    if (v17 == sub_20C13C954() && v19 == v20)
    {
    }

    else
    {
      v21 = sub_20C13DFF4();

      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if ((v8 & 0x100000000) != 0)
    {
      if ((v16 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((v16 & 0x100000000) != 0 || v8 != v16)
    {
      goto LABEL_5;
    }

    v14 = 1;
    return v14 & 1;
  }

  v9 = *(a1 + 48);
  *v26 = v4;
  *&v26[1] = v3;
  v26[2] = v6;
  v26[3] = v5;
  v26[4] = v8;
  v26[5] = v7;
  v26[6] = v9;
  v10 = *(a2 + 40);
  if (v10 < 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v11 = *(a2 + 48);
  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v13;
  v23 = v12;
  v24 = v10;
  v25 = v11;
  sub_20B7C7E30(v26, v22);
  return v14 & 1;
}

Swift::String_optional __swiftcall NumberFormattingUtility.formatInteger(_:)(Swift::Int a1)
{
  v1 = a1;
  if (qword_27C760830 != -1)
  {
    swift_once();
  }

  v2 = qword_27C768308;
  [qword_27C768308 setRoundingMode_];
  [v2 setMaximumFractionDigits_];
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v4 = [v2 stringFromNumber_];

  if (v4)
  {
    v5 = sub_20C13C954();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v5;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::String_optional __swiftcall NumberFormattingUtility.formatElapsedTime(interval:)(Swift::Double interval)
{
  if ((*&interval & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (qword_27C760838 != -1)
    {
      swift_once();
    }

    v1 = [qword_27C768310 stringFromTimeInterval_];
    if (v1)
    {
      v3 = v1;
      v4 = sub_20C13C954();
      v6 = v5;

      v2 = v6;
      v1 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

id sub_20B98AFB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  result = [v0 setMaximumFractionDigits_];
  qword_27C768308 = v0;
  return result;
}

id sub_20B98B000()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setZeroFormattingBehavior_];
  qword_27C768310 = v0;
  return result;
}

Swift::String_optional __swiftcall NumberFormattingUtility.formatDouble(_:numberOfDecimalPlaces:roundingMode:)(Swift::Double _, Swift::Int numberOfDecimalPlaces, NSNumberFormatterRoundingMode roundingMode)
{
  if (qword_27C760830 != -1)
  {
    swift_once();
  }

  v6 = qword_27C768308;
  [qword_27C768308 setRoundingMode_];
  [v6 setMaximumFractionDigits_];
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = [v6 stringFromNumber_];

  if (v8)
  {
    v9 = sub_20C13C954();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = v9;
  v13 = v11;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::String_optional __swiftcall NumberFormattingUtility.formatDoubleAsInteger(_:)(Swift::Double a1)
{
  if (qword_27C760830 != -1)
  {
    swift_once();
  }

  v2 = qword_27C768308;
  [qword_27C768308 setRoundingMode_];
  [v2 setMaximumFractionDigits_];
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v4 = [v2 stringFromNumber_];

  if (v4)
  {
    v5 = sub_20C13C954();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v5;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

id sub_20B98B2A0()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 pointSize];
  v2 = v1;

  result = [objc_opt_self() configurationWithPointSize:5 weight:v2];
  qword_27C79AE70 = result;
  return result;
}

id sub_20B98B3EC(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v9 - 8);
  v230 = &v226 - v10;
  v231 = sub_20C13D874();
  *&v229 = *(v231 - 1);
  MEMORY[0x28223BE20](v231);
  *&v228 = &v226 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setAdjustsFontForContentSizeCategory_];
  v14 = v13;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v235 = objc_opt_self();
  v15 = [v235 whiteColor];
  [v14 setTextColor_];

  v232 = objc_opt_self();
  v16 = [v232 preferredFontForTextStyle_];
  [v14 setFont_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v233 = objc_opt_self();
  v234 = ObjCClassFromMetadata;
  v18 = [v233 bundleForClass_];
  sub_20C132964();

  v19 = sub_20C13C914();
  [v14 setText_];

  LODWORD(v20) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v14 &selRef:1 setBackgroundColor:v21 + 6];
  v22 = sub_20C13C914();
  [v14 setAccessibilityIdentifier_];

  *&v4[v12] = v14;
  v23 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_thumbnailView;
  v24 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setContentMode_];
  [v24 setClipsToBounds_];
  v25 = [v24 layer];
  [v25 setCornerRadius_];

  [v24 setClipsToBounds_];
  v26 = v4;
  *&v4[v23] = v24;
  v27 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_gymKitIconView;
  v28 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = v235;
  v30 = [v235 clearColor];
  [v28 setBackgroundColor_];

  [v28 setContentMode_];
  v31 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v28 setTintColor_];

  *&v26[v27] = v28;
  v32 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutTitleLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = [v29 whiteColor];
  [v33 setTextColor_];

  v35 = v232;
  v227 = *MEMORY[0x277D76988];
  v36 = [v232 preferredFontForTextStyle_];
  [v33 setFont_];

  [v33 setNumberOfLines_];
  LODWORD(v37) = 1148846080;
  [v33 setContentCompressionResistancePriority:0 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v38];

  *&v26[v32] = v33;
  v39 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutSubtitleLabel;
  v40 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v41 = [v29 secondaryLabelColor];
  [v40 setTextColor_];

  v42 = v35;
  v43 = v35;
  v44 = v26;
  v45 = [v43 preferredFontForTextStyle_];
  [v40 setFont_];

  [v40 setNumberOfLines_];
  LODWORD(v46) = 1148846080;
  [v40 setContentCompressionResistancePriority:0 forAxis:v46];
  LODWORD(v47) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v47];

  *&v26[v39] = v40;
  v48 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_summaryQueueCountView;
  v49 = [objc_allocWithZone(type metadata accessor for SummaryQueueCountView()) initWithFrame_];
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v26[v48] = v49;
  v50 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButtonTextView;
  *&v44[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButtonTextView] = 0;
  v51 = &v44[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onStartButtonTapped];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = &v44[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onDoneButtonTapped];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = _UISolariumEnabled();
  v54 = type metadata accessor for TVButtonTextContentView();
  v55 = objc_allocWithZone(v54);
  v56 = TVButtonTextContentView.init(title:)(0, 0);
  v57 = [v29 blackColor];
  sub_20BB87C88(v57);

  if (v53)
  {
    v58 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    sub_20BB87D08(v58);

    v59 = *&v44[v50];
    *&v44[v50] = v56;
    v60 = v56;

    v61 = *MEMORY[0x277D76938];
    v62 = *&v60[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
    v63 = [v42 smu:v61 preferredFontForTextStyle:8 variant:?];
    [v62 setFont_];

    v64 = objc_allocWithZone(type metadata accessor for TVButton());
    v65 = v60;
    v66 = sub_20BB87F6C(v65, 1, 0, v64, 0.0, 0.0, 0.0, 0.0);
    v67 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v68 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
    [*&v66[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v67 forState:8];

    v69 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v70 = [v69 colorWithAlphaComponent_];

    [*&v66[v68] setBackgroundColor:v70 forState:0];
    v71 = v66;
    v72 = sub_20C13C914();
    [v71 setAccessibilityIdentifier_];

    *&v44[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButton] = v71;
    v73 = v228;
    sub_20C13D844();
    v74 = [v233 bundleForClass_];
    sub_20C132964();

    sub_20C13D824();
    v75 = [objc_opt_self() buttonWithType_];
    v76 = v229;
    v77 = v230;
    v78 = v231;
    (*(v229 + 16))(v230, v73, v231);
    (*(v76 + 56))(v77, 0, 1, v78);
    sub_20C13D894();

    (*(v76 + 8))(v73, v78);
  }

  else
  {
    v79 = [v235 whiteColor];
    sub_20BB87D08(v79);

    v80 = *&v44[v50];
    *&v44[v50] = v56;
    v81 = v56;

    v82 = *&v81[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
    if (_UISolariumEnabled())
    {
      v83 = [v42 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
    }

    else
    {
      v83 = [v42 preferredFontForTextStyle_];
    }

    v84 = v83;
    [v82 setFont_];

    v85 = type metadata accessor for TVButton();
    v86 = objc_allocWithZone(v85);
    v231 = v81;
    v87 = sub_20BB87F6C(v231, 0, 0, v86, 0.0, 0.0, 0.0, 0.0);
    v88 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [*&v87[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v88 forState:8];

    v89 = v87;
    v90 = sub_20C13C914();
    [v89 setAccessibilityIdentifier_];

    *&v44[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButton] = v89;
    v91 = [v233 bundleForClass_];
    v92 = sub_20C132964();
    v94 = v93;

    v95 = objc_allocWithZone(v54);
    v96 = TVButtonTextContentView.init(title:)(v92, v94);
    v97 = v235;
    v98 = [v235 whiteColor];
    sub_20BB87C88(v98);

    v99 = [v97 whiteColor];
    sub_20BB87D08(v99);

    v100 = *&v96[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
    if (_UISolariumEnabled())
    {
      v101 = [v42 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
    }

    else
    {
      v101 = [v42 preferredFontForTextStyle_];
    }

    v102 = v101;
    [v100 setFont_];

    v103 = objc_allocWithZone(v85);
    v104 = v96;
    v105 = sub_20BB87F6C(v104, 0, 0, v103, 0.0, 0.0, 0.0, 0.0);
    if (sub_20C1380F4() == 3)
    {
      v106 = 0.415686275;
    }

    else
    {
      v106 = 0.15;
    }

    v107 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v106 alpha:1.0];
    v108 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
    [*&v105[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v107 forState:8];

    if (sub_20C1380F4() == 3)
    {
      v109 = [v235 tertiarySystemFillColor];
    }

    else
    {
      v110 = [v235 tertiarySystemBackgroundColor];
      v111 = [objc_opt_self() currentTraitCollection];
      v112 = sub_20C13D3B4();
      v109 = [v110 resolvedColorWithTraitCollection_];
    }

    [*&v105[v108] setBackgroundColor:v109 forState:0];

    v75 = v105;
    v113 = sub_20C13C914();
    [v75 setAccessibilityIdentifier_];
  }

  *&v44[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_doneButton] = v75;
  View = type metadata accessor for TVSummaryUpNextView();
  v237.receiver = v44;
  v237.super_class = View;
  v115 = objc_msgSendSuper2(&v237, sel_initWithFrame_, a1, a2, a3, a4);
  v116 = [v235 secondarySystemBackgroundColor];
  v117 = [objc_opt_self() currentTraitCollection];
  v118 = sub_20C13D3B4();
  v119 = [v116 resolvedColorWithTraitCollection_];

  [v115 setBackgroundColor_];
  v120 = v115;
  v121 = [v120 layer];
  [v121 setCornerRadius_];

  v234 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButton;
  [*(v120 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButton) addTarget:v120 action:sel_startButtonTapped forControlEvents:0x2000];
  v233 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_doneButton;
  v122 = *(v120 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_doneButton);
  [v122 addTarget:v120 action:sel_doneButtonTapped forControlEvents:0x2000];

  v230 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_gymKitIconView;
  v123 = qword_27C760840;
  v124 = *(v120 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_gymKitIconView);
  if (v123 != -1)
  {
    swift_once();
  }

  v125 = qword_27C79AE70;
  v126 = sub_20C13C914();
  v127 = [objc_opt_self() smm:v126 systemImageNamed:v125 withConfiguration:?];

  [v124 setImage_];
  v128 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v128 setTranslatesAutoresizingMaskIntoConstraints_];
  v130 = *MEMORY[0x277D768C8];
  v129 = *(MEMORY[0x277D768C8] + 8);
  v131 = *(MEMORY[0x277D768C8] + 16);
  v132 = *(MEMORY[0x277D768C8] + 24);
  v133 = [v128 leadingAnchor];
  v134 = [v120 leadingAnchor];
  v135 = [v133 constraintEqualToAnchor:v134 constant:v129];

  LODWORD(v136) = 1148846080;
  [v135 setPriority_];
  v137 = v135;
  v138 = [v128 trailingAnchor];
  v139 = [v120 trailingAnchor];
  v140 = [v138 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v141) = 1148846080;
  [v140 setPriority_];
  v142 = v140;
  v235 = v128;
  v143 = [v128 topAnchor];
  v144 = [v120 &selRef_setLineBreakMode_];
  v145 = [v143 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v146) = 1148846080;
  [v145 setPriority_];
  v147 = [v128 bottomAnchor];
  v148 = [v120 &selRef_secondaryLabel + 5];
  v149 = [v147 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v150) = 1148846080;
  [v149 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v151 = swift_allocObject();
  v229 = xmmword_20C14FE90;
  v231 = v151;
  *(v151 + 16) = xmmword_20C14FE90;
  *(v151 + 32) = v137;
  *(v151 + 40) = v142;
  *(v151 + 48) = v145;
  *(v151 + 56) = v149;

  v152 = swift_allocObject();
  v228 = xmmword_20C151490;
  *(v152 + 16) = xmmword_20C151490;
  v153 = *(v120 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_titleLabel);
  *(v152 + 32) = v153;
  v154 = *(v120 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_summaryQueueCountView);
  *(v152 + 40) = v154;
  v155 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v156 = v153;
  v157 = v154;
  v158 = sub_20C13CC54();

  v159 = [v155 initWithArrangedSubviews_];

  v160 = v159;
  [v160 setTranslatesAutoresizingMaskIntoConstraints_];
  [v160 setAxis_];
  [v160 setAlignment_];
  v232 = v160;
  [v160 setDistribution_];
  v161 = swift_allocObject();
  *(v161 + 16) = v229;
  *(v161 + 32) = v160;
  v162 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_thumbnailView;
  v163 = *(v120 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_thumbnailView);
  *(v161 + 40) = v163;
  *&v229 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutTitleLabel;
  v164 = *(v120 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutTitleLabel);
  *(v161 + 48) = v164;
  v165 = *(v120 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutSubtitleLabel);
  *(v161 + 56) = v165;
  v166 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v167 = v163;
  v168 = v164;
  v169 = v165;
  v170 = sub_20C13CC54();

  v171 = [v166 initWithArrangedSubviews_];

  v172 = v171;
  [v172 setTranslatesAutoresizingMaskIntoConstraints_];
  [v172 setSpacing_];
  [v172 setAxis_];
  v173 = swift_allocObject();
  *(v173 + 16) = v228;
  v174 = *(v120 + v234);
  *(v173 + 32) = v174;
  v175 = *&v233[v120];
  *(v173 + 40) = v175;
  v176 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v177 = v174;
  v178 = v175;
  v179 = sub_20C13CC54();

  v180 = [v176 initWithArrangedSubviews_];

  v181 = v180;
  [v181 setTranslatesAutoresizingMaskIntoConstraints_];
  [v181 setSpacing_];
  *&v228 = v181;
  [v181 setAxis_];
  v182 = v235;
  [v120 addSubview_];
  [v182 addSubview_];
  [v182 addSubview_];
  v183 = v230;
  [v120 addSubview_];
  [v172 setCustomSpacing:v232 afterView:30.0];
  [v172 setCustomSpacing:*(v120 + v162) afterView:20.0];
  [v172 setCustomSpacing:*(v120 + v229) afterView:4.0];
  *&v229 = objc_opt_self();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C165CF0;
  v185 = [*(v120 + v162) widthAnchor];
  v186 = [v185 constraintEqualToConstant_];

  *(inited + 32) = v186;
  v187 = [*(v120 + v162) heightAnchor];
  v188 = [v187 constraintEqualToConstant_];

  *(inited + 40) = v188;
  v189 = [*&v183[v120] leadingAnchor];
  v190 = [*(v120 + v162) leadingAnchor];
  v191 = [v189 constraintEqualToAnchor:v190 constant:20.0];

  *(inited + 48) = v191;
  v192 = [*&v183[v120] bottomAnchor];
  v193 = [*(v120 + v162) bottomAnchor];
  v194 = [v192 constraintEqualToAnchor:v193 constant:-10.0];

  *(inited + 56) = v194;
  v195 = [*&v233[v120] widthAnchor];
  v196 = [*(v120 + v162) widthAnchor];
  v197 = [v195 constraintEqualToAnchor_];

  *(inited + 64) = v197;
  v198 = [*(v120 + v234) widthAnchor];
  v199 = [*(v120 + v162) widthAnchor];
  v200 = [v198 &selRef:v199 alertControllerReleasedDictationButton:? + 5];

  *(inited + 72) = v200;
  v201 = [v172 topAnchor];
  v202 = v235;
  v203 = [v235 topAnchor];
  v204 = [v201 &selRef_passwordEntryCancelledHandler + 6];

  *(inited + 80) = v204;
  v205 = [v172 leadingAnchor];
  v206 = [v202 leadingAnchor];
  v207 = [v205 &selRef_passwordEntryCancelledHandler + 6];

  *(inited + 88) = v207;
  v208 = [v172 trailingAnchor];
  v209 = [v202 trailingAnchor];
  v210 = [v208 &selRef_passwordEntryCancelledHandler + 6];

  *(inited + 96) = v210;
  v211 = [v172 bottomAnchor];
  v212 = v228;
  v213 = [v228 topAnchor];
  v214 = [v211 constraintLessThanOrEqualToAnchor_];

  *(inited + 104) = v214;
  v215 = [v212 leadingAnchor];
  v216 = [v172 leadingAnchor];
  v217 = [v215 constraintEqualToAnchor_];

  *(inited + 112) = v217;
  v218 = [v212 trailingAnchor];
  v219 = [v172 trailingAnchor];

  v220 = [v218 constraintEqualToAnchor_];
  *(inited + 120) = v220;
  v221 = [v212 bottomAnchor];

  v222 = [v120 bottomAnchor];
  v223 = [v221 constraintEqualToAnchor:v222 constant:-60.0];

  *(inited + 128) = v223;
  v236 = v231;
  sub_20B8D9310(inited);
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v224 = sub_20C13CC54();

  [v229 activateConstraints_];

  return v120;
}

id sub_20B98D260(void *a1, void *a2)
{
  v4 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutTitleLabel];
  v5 = [a1 string];
  if (!v5)
  {
    sub_20C13C954();
    v5 = sub_20C13C914();
  }

  [v4 setText_];

  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutSubtitleLabel];
  v7 = [a2 string];
  if (!v7)
  {
    sub_20C13C954();
    v7 = sub_20C13C914();
  }

  [v6 setText_];

  return [v2 invalidateIntrinsicContentSize];
}

void sub_20B98D358(char a1, char a2)
{
  if (a2)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = a1 & 1;
    v9[4] = sub_20B98D5E8;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_20B7B548C;
    v9[3] = &block_descriptor_58;
    v6 = _Block_copy(v9);
    v7 = v2;

    [v4 animateWithDuration:v6 animations:0.1];
    _Block_release(v6);
  }

  else
  {
    v8 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButton];

    [v8 setHidden_];
  }
}

id sub_20B98D4AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TVSummaryUpNextView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20B98D610()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  [v3 setTextColor_];

  v36 = objc_opt_self();
  v6 = [v36 preferredFontForTextStyle_];
  [v3 setFont_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v9 = sub_20C13C914();
  [v3 setText_];

  LODWORD(v10) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v3 &selRef:1 setBackgroundColor:v11 + 6];
  v12 = sub_20C13C914();
  [v3 setAccessibilityIdentifier_];

  *(v0 + v1) = v3;
  v13 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_thumbnailView;
  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setContentMode_];
  [v14 setClipsToBounds_];
  v15 = [v14 layer];
  [v15 setCornerRadius_];

  [v14 setClipsToBounds_];
  *(v0 + v13) = v14;
  v16 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_gymKitIconView;
  v17 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v4 clearColor];
  [v17 setBackgroundColor_];

  [v17 setContentMode_];
  v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v17 setTintColor_];

  *(v0 + v16) = v17;
  v20 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutTitleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [v4 whiteColor];
  [v21 setTextColor_];

  v23 = [v36 preferredFontForTextStyle_];
  [v21 setFont_];

  [v21 setNumberOfLines_];
  LODWORD(v24) = 1148846080;
  [v21 setContentCompressionResistancePriority:0 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v25];

  *(v0 + v20) = v21;
  v26 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_workoutSubtitleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v27 &selRef_count + 2];
  v28 = [v4 secondaryLabelColor];
  [v27 setTextColor_];

  v29 = [v36 preferredFontForTextStyle_];
  [v27 setFont_];

  [v27 setNumberOfLines_];
  LODWORD(v30) = 1148846080;
  [v27 setContentCompressionResistancePriority:0 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [v27 setContentCompressionResistancePriority:1 forAxis:v31];

  *(v0 + v26) = v27;
  v32 = OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_summaryQueueCountView;
  v33 = [objc_allocWithZone(type metadata accessor for SummaryQueueCountView()) initWithFrame_];
  [v33 &selRef_count + 2];
  *(v0 + v32) = v33;
  *(v0 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButtonTextView) = 0;
  v34 = (v0 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onStartButtonTapped);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v0 + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onDoneButtonTapped);
  *v35 = 0;
  v35[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B98DC94()
{
  sub_20B583ECC(*(v0 + 32), *(v0 + 40));

  sub_20B7B2434(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocClassInstance();
}

void sub_20B98DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + 32);
    if (v7)
    {
      v8 = *(Strong + 40);

      v9 = v7(a4);
      sub_20B583ECC(v7, v8);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v6 + 48);
    v11 = *(v6 + 56);

    sub_20BCE67BC(v10, v11, v9);

    sub_20BCE8210(2.5, 8.0, 2.5, 8.0);
    v12 = *(v6 + 80);
    v14[0] = *(v6 + 64);
    v14[1] = v12;
    v14[2] = *(v6 + 96);
    v15 = *(v6 + 112);
    sub_20B98E598(v14, &v13);
    sub_20BCE82F0(v14);
    sub_20B98E608(v14);
  }
}

uint64_t sub_20B98DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for PillConfiguration();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24);
    if (v3[3])
    {
      if (!v8)
      {
LABEL_23:
        LOBYTE(v7) = 0;
        return v7 & 1;
      }

      type metadata accessor for CGColor(0);
      sub_20B98ECB0();
      swift_unknownObjectRetain();
      v9 = v8;
      v10 = sub_20C13B654();

      if ((v10 & 1) == 0)
      {
LABEL_5:
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_23;
      }

      swift_unknownObjectRetain();
    }

    v11 = v4[4];
    if (v11 && (v12 = v11(a3)) != 0 && (v13 = v12, v14 = UIImagePNGRepresentation(v12), v13, v14))
    {
      v15 = sub_20C132C54();
      v17 = v16;

      v18 = v7[4];
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0xF000000000000000;
      v18 = v7[4];
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = v18(a3);
    if (v19)
    {
      v20 = v19;
      v21 = UIImagePNGRepresentation(v19);

      if (v21)
      {
        v22 = sub_20C132C54();
        v24 = v23;

        goto LABEL_18;
      }
    }

LABEL_17:
    v22 = 0;
    v24 = 0xF000000000000000;
LABEL_18:
    if (v17 >> 60 == 15)
    {
      if (v24 >> 60 == 15)
      {
        sub_20B94ACA8(v15, v17);
        goto LABEL_26;
      }
    }

    else if (v24 >> 60 != 15)
    {
      sub_20B98EC9C(v15, v17);
      sub_20B98EC9C(v22, v24);
      v26 = sub_20B98EAE8(v15, v17, v22, v24);
      sub_20B94ACA8(v22, v24);
      sub_20B94ACA8(v22, v24);
      sub_20B94ACA8(v15, v17);
      sub_20B94ACA8(v15, v17);
      if (!v26)
      {
        goto LABEL_5;
      }

LABEL_26:
      v27 = v4[15];
      v28 = v7[15];
      if (v27)
      {
        if (!v28)
        {
          goto LABEL_5;
        }

        sub_20B98EC50();
        v29 = v28;
        v30 = v27;
        v31 = sub_20C13D5F4();

        if ((v31 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v28)
      {
        goto LABEL_5;
      }

      v32 = v4[7];
      v33 = v7[7];
      if (v32)
      {
        if (!v33 || (v4[6] != v7[6] || v32 != v33) && (sub_20C13DFF4() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v33)
      {
        goto LABEL_5;
      }

      v35 = v4[8];
      v34 = v4[9];
      v36 = v4[10];
      v37 = v4[11];
      v38 = v4[12];
      v39 = v4[13];
      v63 = v4[14];
      v41 = v7[8];
      v40 = v7[9];
      v43 = v7[10];
      v42 = v7[11];
      v45 = v7[12];
      v44 = v7[13];
      v46 = v7[14];
      v7 = v36;
      if (v36)
      {
        if (v43)
        {
          v65[0] = v41;
          v65[1] = v40;
          v65[2] = v43;
          v65[3] = v42;
          v65[4] = v45;
          v65[5] = v44;
          v65[6] = v46;
          v59 = v34;
          v60 = v35;
          v64[0] = v35;
          v64[1] = v34;
          v64[2] = v36;
          v64[3] = v37;
          v61 = v37;
          v62 = v38;
          v64[4] = v38;
          v64[5] = v39;
          v47 = v39;
          v53 = v39;
          v64[6] = v63;
          v48 = v42;
          v49 = v45;
          v50 = v44;
          v51 = v46;
          sub_20B7B23D8(v41, v40, v43, v42, v45, v44, v46);
          sub_20B7B23D8(v41, v40, v43, v48, v49, v50, v51);
          sub_20B7B23D8(v60, v59, v7, v61, v62, v47, v63);
          sub_20B7C7E30(v64, v65);
          v57 = v7;
          LOBYTE(v7) = v52;
          sub_20B7B2434(v41, v40, v43, v48, v49, v50, v51);
          sub_20B7B2434(v41, v40, v43, v48, v49, v50, v51);
          swift_unknownObjectRelease();
          sub_20B7B2434(v60, v59, v57, v61, v62, v53, v63);
          return v7 & 1;
        }

        v56 = v45;
        v58 = v42;
        v54 = v46;
        v55 = v44;
        sub_20B7B23D8(v41, v40, 0, v42, v45, v44, v46);
        sub_20B7B23D8(v35, v34, v7, v37, v38, v39, v63);
        swift_unknownObjectRelease();
      }

      else
      {
        v56 = v45;
        v58 = v42;
        v54 = v46;
        v55 = v44;
        sub_20B7B23D8(v41, v40, v43, v42, v45, v44, v46);
        sub_20B7B23D8(v35, v34, 0, v37, v38, v39, v63);
        swift_unknownObjectRelease();
        if (!v43)
        {
          sub_20B7B2434(v35, v34, 0, v37, v38, v39, v63);
          LOBYTE(v7) = 1;
          return v7 & 1;
        }
      }

      sub_20B7B2434(v35, v34, v7, v37, v38, v39, v63);
      sub_20B7B2434(v41, v40, v43, v58, v56, v55, v54);
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
    sub_20B94ACA8(v15, v17);
    sub_20B94ACA8(v22, v24);
    goto LABEL_23;
  }

  return v7 & 1;
}

void sub_20B98E388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + 32);
    if (v7)
    {
      v8 = *(Strong + 40);

      v9 = v7(a3);
      sub_20B583ECC(v7, v8);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v6 + 48);
    v11 = *(v6 + 56);

    sub_20BCE67BC(v10, v11, v9);

    v12 = *(v6 + 80);
    v14[0] = *(v6 + 64);
    v14[1] = v12;
    v14[2] = *(v6 + 96);
    v15 = *(v6 + 112);
    sub_20B98E598(v14, &v13);
    sub_20BCE82F0(v14);
    sub_20B98E608(v14);
  }
}

id sub_20B98E490(id result)
{
  if (*(v1 + 120))
  {
    return [result setTintColor_];
  }

  return result;
}

void (*sub_20B98E4AC(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;
  return sub_20B98ED08;
}

void (*sub_20B98E538())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  swift_weakInit();
  return sub_20B98E590;
}

uint64_t sub_20B98E598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768378, &qword_20C16FBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B98E608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768378, &qword_20C16FBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B98E670@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_20C132714();
    if (v10)
    {
      v11 = sub_20C132734();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_20C132724();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_20C132714();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_20C132734();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_20C132724();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20B98E8A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_20B98EA30(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_20B7197A0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_20B98E670(v13, a3, a4, &v12);
  v10 = v4;
  sub_20B7197A0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_20B98EA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_20C132714();
  v11 = result;
  if (result)
  {
    result = sub_20C132734();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_20C132724();
  sub_20B98E670(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_20B98EAE8(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_20B719888(a3, a4);
          return sub_20B98E8A0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_20B98EC50()
{
  result = qword_27C762070;
  if (!qword_27C762070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C762070);
  }

  return result;
}

double sub_20B98EC9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20B719888(a1, a2);
  }

  return result;
}

unint64_t sub_20B98ECB0()
{
  result = qword_27C768380;
  if (!qword_27C768380)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768380);
  }

  return result;
}

uint64_t sub_20B98ED10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762970, &unk_20C162000);
  v1 = swift_allocObject();
  v2 = MEMORY[0x277CDA130];
  *(v1 + 16) = xmmword_20C150DC0;
  v3 = *v2;
  *(v1 + 32) = *v2;
  *(v1 + 40) = 0;
  v4 = *(v0 + 24);
  v5 = v4;
  if (!v4)
  {
    v5 = *(v0 + 128);
    v6 = v5;
  }

  *(v1 + 48) = v5;
  v7 = MEMORY[0x277CDA780];
  *(v1 + 56) = 1;
  v8 = *v7;
  *(v1 + 64) = *v7;
  v9 = MEMORY[0x277CDA7A0];
  *(v1 + 72) = 2;
  v10 = *v9;
  *(v1 + 80) = *v9;
  *(v1 + 88) = 3;
  *(v1 + 96) = 0;
  *(v1 + 104) = 4;
  *(v1 + 112) = 0x3FECCCCCCCCCCCCDLL;
  *(v1 + 120) = 6;
  *(v1 + 128) = 0;
  *(v1 + 136) = 7;
  *(v1 + 144) = 0x3FB999999999999ALL;
  *(v1 + 152) = 8;
  v11 = v4;
  v12 = v8;
  v13 = v10;
  v14 = v3;
  return v1;
}

unint64_t sub_20B98EE2C(uint64_t a1)
{
  result = sub_20B98EE54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20B98EE54()
{
  result = qword_27C76B390;
  if (!qword_27C76B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B390);
  }

  return result;
}

unint64_t sub_20B98EEA8(uint64_t a1)
{
  result = sub_20B98EED0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20B98EED0()
{
  result = qword_27C768388;
  if (!qword_27C768388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768388);
  }

  return result;
}

unint64_t sub_20B98EF24(uint64_t a1)
{
  result = sub_20B98EF4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20B98EF4C()
{
  result = qword_27C768390;
  if (!qword_27C768390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768390);
  }

  return result;
}

uint64_t type metadata accessor for MarketingUserInterfaceConfiguration(uint64_t a1)
{
  result = qword_27C768398;
  if (!qword_27C768398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B98F014(uint64_t a1)
{
  sub_20B98F100(319);
  if (v1 <= 0x3F)
  {
    sub_20B98F1A4();
    if (v2 <= 0x3F)
    {
      sub_20B7FCDE0();
      if (v3 <= 0x3F)
      {
        sub_20C136354();
        if (v4 <= 0x3F)
        {
          type metadata accessor for MarketingUserInterfaceResource(319);
          if (v5 <= 0x3F)
          {
            sub_20C139354();
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

void sub_20B98F100(uint64_t a1)
{
  if (!qword_27C7683A8)
  {
    sub_20B98F158();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C7683A8);
    }
  }
}

unint64_t sub_20B98F158()
{
  result = qword_27C7683B0;
  if (!qword_27C7683B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7683B0);
  }

  return result;
}

unint64_t sub_20B98F1A4()
{
  result = qword_27C7683B8;
  if (!qword_27C7683B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C7683B8);
  }

  return result;
}

uint64_t static WorkoutPlanCreationRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20B98F290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764530, &qword_20C155FB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_20C137424();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, v3, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D53370])
  {
    (*(v16 + 96))(v19, v15);
    v22 = *v19;
    v21 = v19[1];
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    sub_20B98FEE8();
    sub_20C137C94();
    (*(v9 + 16))(v11, v14, v8);
    v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25 = swift_allocObject();
    (*(v9 + 32))(v25 + v24, v11, v8);
    v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20B98F7FC;
    v26[1] = 0;
    sub_20C137C94();
    return (*(v9 + 8))(v14, v8);
  }

  else if (v20 == *MEMORY[0x277D53360])
  {
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v28 = v39;
    sub_20C13B914();
    v30 = v40;
    v29 = v41;
    v31 = v38;
    (*(v40 + 16))(v38, v28, v41);
    v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v33 = swift_allocObject();
    (*(v30 + 32))(v33 + v32, v31, v29);
    v34 = (v33 + ((v5 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v34 = sub_20B98F8FC;
    v34[1] = 0;
    sub_20C137C94();
    return (*(v30 + 8))(v28, v29);
  }

  else
  {
    sub_20B98F7A8();
    v35 = swift_allocError();
    *v36 = 0;
    *(swift_allocObject() + 16) = v35;
    sub_20C137CA4();
    return (*(v16 + 8))(v19, v15);
  }
}

unint64_t sub_20B98F7A8()
{
  result = qword_27C7683C8;
  if (!qword_27C7683C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7683C8);
  }

  return result;
}

uint64_t sub_20B98F7FC(id *a1)
{
  v1 = [*a1 altDSID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_20C13C954();
    v5 = v4;

    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    sub_20B98F7A8();
    v7 = swift_allocError();
    *v8 = 0;
    *(swift_allocObject() + 16) = v7;
  }

  return sub_20C137CA4();
}

id sub_20B98F8FC(id *a1)
{
  result = [*a1 aa_altDSID];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C954();
    v5 = v4;

    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;

    return sub_20C137CA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B98F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(MEMORY[0x277D08280]);

  v10 = [v9 init];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_20B7E9034;
  v11[5] = v8;
  v13[4] = sub_20B99003C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20B98FE2C;
  v13[3] = &block_descriptor_59;
  v12 = _Block_copy(v13);

  [v10 startRequestWithCompletionHandler_];
  _Block_release(v12);
}

void sub_20B98FAF4(void *a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v5 = a5;
  v6 = a2;
  if (a1)
  {
    v7 = [a1 members];
    sub_20B98FEE8();
    v8 = sub_20C13CC74();

    if (v8 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v15 = [v12 appleID];
        if (v15)
        {
          v16 = v15;
          v17 = sub_20C13C954();
          v19 = v18;

          if (sub_20C13CB54() & 1) != 0 || (sub_20C13CB54())
          {
            sub_20B5F6EB0();
            v17 = sub_20C13DA14();
            v21 = v20;

            v19 = v21;
          }

          if (v17 == a3 && v19 == a4)
          {

LABEL_19:

            v22 = v13;
            a5(v13, 0);

            return;
          }

          v11 = sub_20C13DFF4();

          if (v11)
          {
            goto LABEL_19;
          }
        }

        ++v10;
        if (v14 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    v5 = a5;
    v6 = a2;
  }

  if (v6)
  {
    v23 = v6;
    v24 = v6;
  }

  else
  {
    sub_20B98F7A8();
    v24 = swift_allocError();
    v6 = v24;
    *v25 = 1;
  }

  v5(v24, 1);
}

void sub_20B98FE2C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_20B98FEE8()
{
  result = qword_27C7683D0;
  if (!qword_27C7683D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7683D0);
  }

  return result;
}

uint64_t sub_20B98FF5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

double sub_20B990048@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t CatalogLockup.metricDestination.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_20C133E94();
  if ((v5 & 1) == 0)
  {
    sub_20B683084(v3, v4, 0);
    v6 = MEMORY[0x277D52400];
    goto LABEL_18;
  }

  if (v3 > 4u)
  {
    if (v3 > 7u)
    {
      v6 = MEMORY[0x277D52408];
      goto LABEL_18;
    }

    if (v3 == 6)
    {
      v6 = MEMORY[0x277D523A0];
      goto LABEL_18;
    }

    if (v3 == 7)
    {
      v6 = MEMORY[0x277D523F8];
      goto LABEL_18;
    }

LABEL_21:
    sub_20C13DC94();

    v11 = sub_20C135984();
    MEMORY[0x20F2F4230](v11);

    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if (v3 > 2u)
  {
    v6 = MEMORY[0x277D52390];
    if (v3 != 3)
    {
      v6 = MEMORY[0x277D52418];
    }

    goto LABEL_18;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v6 = MEMORY[0x277D52420];
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v6 = MEMORY[0x277D523C8];
LABEL_18:
  v7 = *v6;
  v8 = sub_20C135ED4();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

uint64_t static SessionSummaryDismissed.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void PrivacyLinkListView.init(dependencies:onPrivacyLinkButtonTapped:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_20C13C384();
  *(a4 + 136) = v7;
  *(a4 + 144) = v8;
  sub_20C13C384();
  *(a4 + 152) = v7;
  *(a4 + 160) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00, &unk_20C156CF0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();

  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
}

uint64_t PrivacyLinkListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7683D8, &qword_20C165FC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-v6];
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7683E0, &qword_20C165FD0);
  sub_20B6D6ABC(&qword_27C7683E8, &qword_27C7683E0, &qword_20C165FD0, MEMORY[0x277CE14C0]);
  sub_20C13C284();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_20C132964();
  v12 = v11;

  *&v23[0] = v10;
  *(&v23[0] + 1) = v12;
  sub_20B6D6ABC(&qword_27C7683F0, &qword_27C7683D8, &qword_20C165FC8, MEMORY[0x277CDE5A0]);
  sub_20B5F6EB0();
  sub_20C13C2E4();

  (*(v5 + 8))(v7, v4);
  sub_20B99185C(v2, v23);
  v13 = swift_allocObject();
  v14 = v23[7];
  v15 = v23[9];
  *(v13 + 144) = v23[8];
  *(v13 + 160) = v15;
  *(v13 + 176) = v24;
  v16 = v23[5];
  *(v13 + 80) = v23[4];
  *(v13 + 96) = v16;
  *(v13 + 112) = v23[6];
  *(v13 + 128) = v14;
  v17 = v23[1];
  *(v13 + 16) = v23[0];
  *(v13 + 32) = v17;
  v18 = v23[3];
  *(v13 + 48) = v23[2];
  *(v13 + 64) = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7683F8, &qword_20C165FD8);
  v20 = (a1 + *(result + 36));
  *v20 = sub_20B991894;
  v20[1] = v13;
  v20[2] = 0;
  v20[3] = 0;
  return result;
}

uint64_t sub_20B9906C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768418, &qword_20C1660B0);
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v75 - v5;
  v6 = sub_20C1350D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768420, &qword_20C1660B8);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768428, &qword_20C1660C0);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v18 = *(a1 + 144);
  LOBYTE(v94) = *(a1 + 136);
  *(&v94 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768410, &qword_20C1660A8);
  v19 = sub_20C13C394();
  if (v90 == 1)
  {
    v76 = &v75;
    MEMORY[0x28223BE20](v19);
    v75 = &v75 - 4;
    v77 = v6;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = objc_opt_self();
    v22 = [v21 bundleForClass_];
    v23 = sub_20C132964();
    v25 = v24;

    *&v94 = v23;
    *(&v94 + 1) = v25;
    sub_20B5F6EB0();
    *&v94 = sub_20C13C2A4();
    *(&v94 + 1) = v26;
    LOBYTE(v95) = v27 & 1;
    *(&v95 + 1) = v28;
    v29 = [v21 bundleForClass_];
    v30 = sub_20C132964();
    v32 = v31;

    v90 = v30;
    v91 = v32;
    v90 = sub_20C13C2A4();
    v91 = v33;
    v92 = v34 & 1;
    v93 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768448, &qword_20C1660D8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C768450, qword_20C1660E0);
    v6 = v77;
    v37 = sub_20B6D6ABC(&qword_27C768458, &qword_27C768450, qword_20C1660E0, MEMORY[0x277CDF068]);
    v89[0] = v36;
    v89[1] = MEMORY[0x277D839B0];
    v89[2] = v37;
    v89[3] = MEMORY[0x277D839C8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v74 = MEMORY[0x277CE0BC8];
    sub_20C13C424();
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768430, &qword_20C1660C8);
  (*(*(v39 - 8) + 56))(v17, v38, 1, v39);
  (*(v7 + 104))(v9, *MEMORY[0x277D51590], v6);
  v40 = sub_20C1350C4();
  v42 = v41;
  (*(v7 + 8))(v9, v6);
  sub_20B99185C(a1, &v94);
  v43 = swift_allocObject();
  v44 = v103;
  *(v43 + 144) = v102;
  *(v43 + 160) = v44;
  v45 = v104;
  v46 = v99;
  *(v43 + 80) = v98;
  *(v43 + 96) = v46;
  v47 = v101;
  *(v43 + 112) = v100;
  *(v43 + 128) = v47;
  v48 = v95;
  *(v43 + 16) = v94;
  *(v43 + 32) = v48;
  v49 = v97;
  *(v43 + 48) = v96;
  *(v43 + 64) = v49;
  *(v43 + 176) = v45;
  *(v43 + 184) = v40;
  *(v43 + 192) = v42;
  MEMORY[0x28223BE20](v43);
  *(&v75 - 4) = a1;
  *(&v75 - 3) = v40;
  OpaqueTypeConformance2 = v42;

  v78 = v17;
  v50 = v87;
  sub_20C13C3C4();

  type metadata accessor for SeymourLocalizationBundle();
  v51 = swift_getObjCClassFromMetadata();
  v52 = [objc_opt_self() bundleForClass_];
  OpaqueTypeConformance2 = 0xE000000000000000;
  v53 = sub_20C132964();
  v55 = v54;

  *&v94 = v53;
  *(&v94 + 1) = v55;
  sub_20B5F6EB0();
  *&v94 = sub_20C13C2A4();
  *(&v94 + 1) = v56;
  LOBYTE(v95) = v57 & 1;
  *(&v95 + 1) = v58;
  MEMORY[0x28223BE20](v94);
  OpaqueTypeConformance2 = a1;
  sub_20B6D6ABC(&qword_27C768438, &qword_27C768420, &qword_20C1660B8, MEMORY[0x277CDF028]);
  v59 = v88;
  v60 = v81;
  sub_20C13C414();
  v61 = v86;
  sub_20B54FF34(v17, v86);
  v62 = v80;
  v77 = *(v80 + 16);
  v63 = v79;
  v77(v79, v50, v60);
  v64 = v82;
  v76 = *(v82 + 16);
  v65 = v83;
  v66 = v59;
  v67 = v85;
  v76(v83, v66, v85);
  v68 = v84;
  sub_20B54FF34(v61, v84);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768440, &qword_20C1660D0);
  v77((v68 + *(v69 + 48)), v63, v60);
  v76((v68 + *(v69 + 64)), v65, v67);
  v70 = *(v64 + 8);
  v70(v88, v67);
  v71 = *(v62 + 8);
  v71(v87, v60);
  sub_20B54FFA4(v78);
  v70(v65, v67);
  v71(v63, v60);
  return sub_20B54FFA4(v86);
}

uint64_t sub_20B991124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768450, qword_20C1660E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  v26 = v9;
  v27 = v11;
  v13 = *(a1 + 160);
  v24 = *(a1 + 152);
  v12 = v24;
  v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768410, &qword_20C1660A8);
  sub_20C13C3B4();
  sub_20B5F6EB0();
  sub_20C13C3D4();
  LOBYTE(v22[0]) = v12;
  *(&v22[0] + 1) = v13;
  sub_20C13C394();
  sub_20B99185C(a1, v22);
  v14 = swift_allocObject();
  v15 = v22[9];
  *(v14 + 144) = v22[8];
  *(v14 + 160) = v15;
  *(v14 + 176) = v23;
  v16 = v22[5];
  *(v14 + 80) = v22[4];
  *(v14 + 96) = v16;
  v17 = v22[7];
  *(v14 + 112) = v22[6];
  *(v14 + 128) = v17;
  v18 = v22[1];
  *(v14 + 16) = v22[0];
  *(v14 + 32) = v18;
  v19 = v22[3];
  *(v14 + 48) = v22[2];
  *(v14 + 64) = v19;
  sub_20B6D6ABC(&qword_27C768458, &qword_27C768450, qword_20C1660E0, MEMORY[0x277CDF068]);
  sub_20C13C2F4();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20B991424(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v15 = sub_20C137834();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a3 + 7, a3[10]);
  sub_20C137824();
  sub_20C137804();
  sub_20C139C24();
  (*(v4 + 8))(v6, v15);
  v11 = sub_20C137CB4();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v11(sub_20B5DF6DC, v12);

  return (*(v8 + 8))(v10, v7);
}

double sub_20B991674(uint64_t a1)
{
  v2 = sub_20C1350D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x277D51598], v2, v4);
  v7 = sub_20C1350C4();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_20B99185C(a1, v22);
  v10 = swift_allocObject();
  v11 = v22[9];
  *(v10 + 144) = v22[8];
  *(v10 + 160) = v11;
  v12 = v23;
  v13 = v22[5];
  *(v10 + 80) = v22[4];
  *(v10 + 96) = v13;
  v14 = v22[7];
  *(v10 + 112) = v22[6];
  *(v10 + 128) = v14;
  v15 = v22[1];
  *(v10 + 16) = v22[0];
  *(v10 + 32) = v15;
  v16 = v22[3];
  *(v10 + 48) = v22[2];
  *(v10 + 64) = v16;
  *(v10 + 176) = v12;
  *(v10 + 184) = v7;
  *(v10 + 192) = v9;
  v19 = a1;
  v20 = v7;
  v21 = v9;

  sub_20C13C3C4();

  return result;
}

uint64_t sub_20B9918D4()
{
  v1 = v0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647F8, &qword_20C1561B8);
  v53 = *(v54 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v50 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500, &qword_20C161210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v55 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v48 - v12;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_20C139D44();
  sub_20B99185C(v0, &v56);
  v14 = swift_allocObject();
  v15 = v65;
  *(v14 + 144) = v64;
  *(v14 + 160) = v15;
  *(v14 + 176) = v66;
  v16 = v61;
  *(v14 + 80) = v60;
  *(v14 + 96) = v16;
  v17 = v63;
  *(v14 + 112) = v62;
  *(v14 + 128) = v17;
  v18 = v57;
  *(v14 + 16) = v56;
  *(v14 + 32) = v18;
  v19 = v59;
  *(v14 + 48) = v58;
  *(v14 + 64) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20B9927B8;
  *(v20 + 24) = v14;
  (*(v6 + 16))(v8, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v21, v8, v5);
  v24 = (v23 + v22);
  *v24 = sub_20B64E71C;
  v24[1] = v20;
  sub_20C137C94();
  (*(v6 + 8))(v11, v5);
  v25 = v48;
  v26 = sub_20C137CB4();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v26(sub_20B52347C, v27);

  v28 = *(v55 + 8);
  v55 += 8;
  v49 = v28;
  v28(v13, v25);
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v29 = v50;
  sub_20C139C14();
  sub_20B99185C(v1, &v56);
  v30 = swift_allocObject();
  v31 = v65;
  *(v30 + 144) = v64;
  *(v30 + 160) = v31;
  *(v30 + 176) = v66;
  v32 = v61;
  *(v30 + 80) = v60;
  *(v30 + 96) = v32;
  v33 = v63;
  *(v30 + 112) = v62;
  *(v30 + 128) = v33;
  v34 = v57;
  *(v30 + 16) = v56;
  *(v30 + 32) = v34;
  v35 = v59;
  *(v30 + 48) = v58;
  *(v30 + 64) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20B9927FC;
  *(v36 + 24) = v30;
  v37 = v53;
  v38 = v51;
  v39 = v54;
  (*(v53 + 16))(v51, v29, v54);
  v40 = v37;
  v41 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v42 = (v52 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v40 + 32))(v43 + v41, v38, v39);
  v44 = (v43 + v42);
  *v44 = sub_20B992818;
  v44[1] = v36;
  sub_20C137C94();
  (*(v40 + 8))(v29, v39);
  v45 = sub_20C137CB4();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v45(sub_20B5DF6DC, v46);

  return v49(v13, v25);
}

uint64_t sub_20B991F34(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C135534();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277D51A28], v3, v5);
  sub_20B992910();
  sub_20C13CC34();
  sub_20C13CC34();
  if (v12 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  (*(v4 + 8))(v7, v3);

  v9 = *(a2 + 144);
  LOBYTE(v12) = *(a2 + 136);
  *(&v12 + 1) = v9;
  LOBYTE(v11) = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768410, &qword_20C1660A8);
  return sub_20C13C3A4();
}

uint64_t sub_20B9920E4()
{
  sub_20C137814();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768408, "T)\t");
  sub_20C133BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768410, &qword_20C1660A8);
  return sub_20C13C3A4();
}

void sub_20B9921CC(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_20B9922BC(a1, a2);
  sub_20B5F6EB0();
  v4 = sub_20C13C2A4();
  v6 = v5;
  v8 = v7;
  sub_20C13C304();
  v9 = sub_20C13C294();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_20B992A24(v4, v6, v8 & 1);

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
}

uint64_t sub_20B9922BC(uint64_t a1, unint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C914();
  v10 = [objc_opt_self() bundleWithIdentifier_];

  if (v10)
  {
    v11 = [v10 privacyFlow];
    if (v11)
    {
      v12 = v11;
      __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
      sub_20C138CE4();
      v13 = sub_20C13C914();

      v14 = [v12 localizedButtonTitleForLanguage:v13 preferredDeviceType:1];

      if (v14)
      {
        v15 = sub_20C13C954();

        return v15;
      }
    }
  }

  sub_20C13B534();

  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_20B51E694(a1, a2, &v22);
    _os_log_impl(&dword_20B517000, v17, v18, "Failed to fetch privacy link title for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return 0;
}

uint64_t sub_20B992588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_20B9925D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20B992648()
{
  result = qword_27C768400;
  if (!qword_27C768400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7683F8, &qword_20C165FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7683D8, &qword_20C165FC8);
    sub_20B6D6ABC(&qword_27C7683F0, &qword_27C7683D8, &qword_20C165FC8, MEMORY[0x277CDE5A0]);
    sub_20B5F6EB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768400);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_20B992848(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20B992910()
{
  result = qword_281103BB0;
  if (!qword_281103BB0)
  {
    sub_20C135534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103BB0);
  }

  return result;
}

uint64_t objectdestroy_29Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

double sub_20B992A24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

void sub_20B992A3C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79AE78 = v2;
  unk_27C79AE80 = v4;
}

id sub_20B992B08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  if (*(v0 + 36))
  {
    v4 = *(v0 + 16);
    v5 = *v0;
    v6 = *(v0 + 8);
    v7 = *(v0 + 24);

    return sub_20B6B2150(v6, v4, v7, v5);
  }

  else
  {
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);
    if (v10)
    {
      v11 = [objc_opt_self() systemFontOfSize_];
    }

    else
    {
      v11 = [objc_opt_self() systemFontOfSize:v1 weight:v2];
    }

    v12 = v11;
    v13 = [v12 fontDescriptor];
    v14 = [v13 fontDescriptorWithSymbolicTraits_];
    if (v14)
    {
      v15 = v14;

      v13 = v15;
    }

    if ((v10 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
      inited = swift_initStackObject();
      v29 = xmmword_20C14F980;
      *(inited + 16) = xmmword_20C14F980;
      v17 = *MEMORY[0x277D74380];
      *(inited + 32) = *MEMORY[0x277D74380];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
      v18 = swift_initStackObject();
      v19 = MEMORY[0x277D74430];
      *(v18 + 16) = xmmword_20C14F980;
      v20 = *v19;
      *(v18 + 32) = *v19;
      *(v18 + 40) = v2;
      v21 = v17;
      v22 = v20;
      v23 = sub_20B6B134C(v18);
      swift_setDeallocating();
      sub_20B520158(v18 + 32, &unk_27C773200, qword_20C158A40);
      *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
      *(inited + 40) = v23;
      sub_20B6B143C(inited);
      swift_setDeallocating();
      sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
      type metadata accessor for AttributeName(0);
      sub_20B5E5BD0();
      v24 = sub_20C13C744();

      v25 = [v13 fontDescriptorByAddingAttributes_];

      v13 = v25;
    }

    v26 = [v13 fontDescriptorWithDesign_];
    if (v26)
    {
      v27 = v26;

      v13 = v27;
    }

    v28 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

    return v28;
  }
}

uint64_t sub_20B992E10(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2F5910](*&v2);
  if (*(v1 + 16) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v3 = *(v1 + 8);
    sub_20C13E184();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x20F2F5910](v4);
  }

  sub_20C13C954();
  sub_20C13CA64();

  if (*(v1 + 36))
  {
    return sub_20C13E184();
  }

  sub_20C13E184();
  return sub_20C13E194();
}

uint64_t sub_20B992ED4()
{
  sub_20C13E164();
  sub_20B992E10(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B992F18(uint64_t a1)
{
  sub_20C13E164();
  sub_20B992E10(v2);
  return sub_20C13E1B4();
}

BOOL sub_20B992F54(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return sub_20B992FF8(&v5, &v7);
}

unint64_t sub_20B992FA4()
{
  result = qword_27C768460;
  if (!qword_27C768460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768460);
  }

  return result;
}

BOOL sub_20B992FF8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v6 = sub_20C13C954();
  v8 = v7;
  if (v6 == sub_20C13C954() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_20C13DFF4();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a2 + 36);
  if ((*(a1 + 36) & 1) == 0)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v12 = 1;
    }

    return (v12 & 1) == 0;
  }

  return (*(a2 + 36) & 1) != 0;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20B993120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_20B993168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_20B9931C0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v90 = a1;
  v10 = _UISolariumEnabled();
  v11 = 0xD000000000000016;
  if (!v10)
  {
    v11 = 0xD000000000000018;
  }

  v12 = &v5[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_layout];
  *v12 = 0x4004000000000000;
  *(v12 + 1) = v11;
  if (v10)
  {
    v13 = "checkmark.rectangle.fill";
  }

  else
  {
    v13 = "w";
  }

  *(v12 + 2) = v13 | 0x8000000000000000;
  *(v12 + 24) = xmmword_20C1661B0;
  *(v12 + 40) = xmmword_20C1661C0;
  __asm { FMOV            V0.2D, #2.0 }

  *(v12 + 56) = _Q0;
  *(v12 + 72) = xmmword_20C1661D0;
  *(v12 + 22) = 1056964608;
  *(v12 + 12) = 0x4010000000000000;
  v19 = OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView;
  v20 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = objc_opt_self();
  v22 = [v21 clearColor];
  [v20 setBackgroundColor_];

  [v20 setContentMode_];
  v23 = [v21 whiteColor];
  [v20 setTintColor_];

  *&v5[v19] = v20;
  v24 = OBJC_IVAR____TtC9SeymourUI17CompletedIconView_shadowView;
  v25 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [v21 clearColor];
  [v25 setBackgroundColor_];

  *&v5[v24] = v25;
  *&v5[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_widthConstraint] = 0;
  v92.receiver = v5;
  v92.super_class = type metadata accessor for CompletedIconView();
  v27 = objc_msgSendSuper2(&v92, sel_initWithFrame_, a2, a3, a4, a5);
  v28 = OBJC_IVAR____TtC9SeymourUI17CompletedIconView_shadowView;
  v29 = *&v27[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_shadowView];
  v30 = &v27[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_layout];
  v31 = *&v27[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_layout];
  v32 = v27;
  [v29 smu:v31 setContinuousCornerRadius:?];
  v33 = [*&v27[v28] layer];
  v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.435294118 alpha:1.0];
  v35 = [v34 CGColor];

  [v33 setShadowColor_];
  v36 = [*&v27[v28] layer];
  [v36 setShadowOffset_];

  v37 = [*&v27[v28] layer];
  LODWORD(v38) = *(v30 + 22);
  [v37 setShadowOpacity_];

  v39 = [*&v27[v28] layer];
  [v39 setShadowRadius_];

  v40 = v32;
  v41 = *&v27[v28];
  v42 = v40;
  v43 = &selRef_setDescriptionTextHighlightColor_;
  [v42 addSubview_];
  v44 = OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView;
  v45 = *&v42[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView];
  if (v90)
  {
    v46 = objc_opt_self();
    v47 = *MEMORY[0x277D76920];
    v48 = v45;

    v49 = v47;
    v43 = &selRef_setDescriptionTextHighlightColor_;
    v50 = [v46 preferredFontForTextStyle_];
    [v50 pointSize];
    v52 = v51;
  }

  else
  {
    v53 = v45;

    v52 = 16.0;
  }

  v54 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:v52];
  v55 = sub_20C13C914();

  v56 = [objc_opt_self() smm:v55 systemImageNamed:v54 withConfiguration:?];

  [v45 setImage_];
  [v42 v43[150]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_20C151DF0;
  v58 = [*&v27[v28] leadingAnchor];
  v59 = [*&v42[v44] leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:v30[6]];

  *(v57 + 32) = v60;
  v61 = [*&v27[v28] trailingAnchor];
  v62 = [*&v42[v44] trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:-v30[8]];

  *(v57 + 40) = v63;
  v64 = [*&v27[v28] topAnchor];
  v65 = [*&v42[v44] &selRef_setLineBreakMode_];
  v66 = [v64 constraintEqualToAnchor:v65 constant:v30[5]];

  *(v57 + 48) = v66;
  v67 = [*&v27[v28] bottomAnchor];
  v68 = [*&v42[v44] bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:-v30[7]];

  *(v57 + 56) = v69;
  v70 = [*&v42[v44] leadingAnchor];
  v71 = [v42 leadingAnchor];

  v72 = [v70 constraintEqualToAnchor_];
  *(v57 + 64) = v72;
  v73 = [*&v42[v44] trailingAnchor];
  v74 = [v42 trailingAnchor];

  v75 = [v73 constraintEqualToAnchor_];
  *(v57 + 72) = v75;
  v76 = [*&v42[v44] topAnchor];
  v77 = [v42 topAnchor];

  v78 = [v76 constraintEqualToAnchor_];
  *(v57 + 80) = v78;
  v79 = [*&v42[v44] bottomAnchor];
  v80 = [v42 bottomAnchor];

  v81 = [v79 constraintEqualToAnchor_];
  *(v57 + 88) = v81;
  v91 = v57;
  v82 = [v42 widthAnchor];

  v83 = [v82 constraintGreaterThanOrEqualToConstant_];
  v84 = *&v42[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_widthConstraint];
  *&v42[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_widthConstraint] = v83;
  v85 = v83;

  if (v85)
  {
    v86 = v85;
    MEMORY[0x20F2F43B0]();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
  }

  v87 = objc_opt_self();
  sub_20B5E29D0();
  v88 = sub_20C13CC54();

  [v87 activateConstraints_];

  return v42;
}

void sub_20B993B2C(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for CompletedIconView();
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_shadowView];
  v3 = [v2 layer];
  v4 = [v3 shadowPath];

  if (!v4 || (BoundingBox = CGPathGetBoundingBox(v4), x = BoundingBox.origin.x, y = BoundingBox.origin.y, width = BoundingBox.size.width, height = BoundingBox.size.height, v4, [v2 bounds], v26.origin.x = v9, v26.origin.y = v10, v26.size.width = v11, v26.size.height = v12, v25.origin.x = x, v25.origin.y = y, v25.size.width = width, v25.size.height = height, !CGRectEqualToRect(v25, v26)))
  {
    v13 = [v2 layer];
    [v2 bounds];
    v18 = [objc_opt_self() bezierPathWithRoundedRect:v14 cornerRadius:{v15, v16, v17, *&v1[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_layout]}];
    v19 = [v18 CGPath];

    [v13 setShadowPath_];
  }

  v20 = *&v1[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_widthConstraint];
  if (v20)
  {
    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView];
    v22 = v20;
    [v21 intrinsicContentSize];
    [v22 setConstant_];
  }
}

id sub_20B993D9C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompletedIconView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20B993E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B993EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20B993F14(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = 0xD000000000000018;
  if (v2)
  {
    v3 = 0xD000000000000016;
  }

  v4 = v1 + OBJC_IVAR____TtC9SeymourUI17CompletedIconView_layout;
  *v4 = 0x4004000000000000;
  *(v4 + 8) = v3;
  if (v2)
  {
    v5 = "checkmark.rectangle.fill";
  }

  else
  {
    v5 = "w";
  }

  *(v4 + 16) = v5 | 0x8000000000000000;
  *(v4 + 24) = xmmword_20C1661B0;
  *(v4 + 40) = xmmword_20C1661C0;
  __asm { FMOV            V0.2D, #2.0 }

  *(v4 + 56) = _Q0;
  *(v4 + 72) = xmmword_20C1661D0;
  *(v4 + 88) = 1056964608;
  *(v4 + 96) = 0x4010000000000000;
  v11 = OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView;
  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = objc_opt_self();
  v14 = [v13 clearColor];
  [v12 setBackgroundColor_];

  [v12 setContentMode_];
  v15 = [v13 whiteColor];
  [v12 setTintColor_];

  *(v1 + v11) = v12;
  v16 = OBJC_IVAR____TtC9SeymourUI17CompletedIconView_shadowView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v13 clearColor];
  [v17 setBackgroundColor_];

  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC9SeymourUI17CompletedIconView_widthConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B994140(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_currentConstraints] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_showSeparator] = 1;
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView];
  v14 = [v11 layer];
  [v14 setCornerRadius_];

  [v11 setClipsToBounds_];
  *v13 = v11;
  v13[1] = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_downloadButton;
  type metadata accessor for DownloadButton();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v16 &selRef_count + 2];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel;
  v18 = [objc_allocWithZone(type metadata accessor for IndexLabel()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v18 &selRef_count + 2];
  v19 = *MEMORY[0x277D76968];
  v20 = *&v18[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle];
  *&v18[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle] = *MEMORY[0x277D76968];

  *&v4[v17] = v18;
  v21 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hairline;
  v22 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v23 = v19;
  v24 = [v22 &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v24 &selRef_count + 2];
  v25 = objc_opt_self();
  v26 = [v25 separatorColor];
  [v24 setBackgroundColor_];

  *&v4[v21] = v24;
  v27 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide;
  *&v4[v27] = [objc_allocWithZone(MEMORY[0x277D756D0]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v28 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v29 &selRef_count + 2];
  [v29 setAdjustsFontForContentSizeCategory_];
  v30 = objc_opt_self();
  v31 = *MEMORY[0x277D76940];
  v32 = [v30 preferredFontForTextStyle_];
  [v29 setFont_];

  [v29 setAllowsDefaultTighteningForTruncation_];
  v33 = [v25 systemGrayColor];
  [v29 setTextColor_];

  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  LODWORD(v34) = 1148846080;
  [v29 setContentCompressionResistancePriority:1 forAxis:v34];
  LODWORD(v35) = 1148846080;
  [v29 setContentHuggingPriority:1 forAxis:v35];

  *&v4[v28] = v29;
  v36 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_titleLabel;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v37 setAdjustsFontForContentSizeCategory_];
  [v37 setAllowsDefaultTighteningForTruncation_];
  v38 = [v25 whiteColor];
  [v37 setTextColor_];

  [v37 setLineBreakMode_];
  [v37 setNumberOfLines_];
  v39 = [v30 preferredFontForTextStyle_];
  [v37 setFont_];

  LODWORD(v40) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v40];
  [v37 setTextAlignment_];
  LODWORD(v41) = 1148846080;
  [v37 setContentHuggingPriority:1 forAxis:v41];

  *&v4[v36] = v37;
  v4[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hasIndex] = 0;
  v42 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint;
  *&v4[v42] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v4[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_isCurrentTitleRTL] = 0;
  v43 = &v4[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout];
  *v43 = xmmword_20C166230;
  *(v43 + 1) = xmmword_20C166240;
  *(v43 + 2) = xmmword_20C166250;
  *(v43 + 3) = xmmword_20C166260;
  *(v43 + 8) = 0x4018000000000000;
  v44 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint;
  *&v4[v44] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v61.receiver = v4;
  v61.super_class = type metadata accessor for PhoneIndexedBrickItemCell(0);
  v45 = objc_msgSendSuper2(&v61, sel_initWithFrame_, a1, a2, a3, a4);
  v46 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_downloadButton;
  v47 = *&v45[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_downloadButton];
  v48 = v45;
  [v47 addTarget:v48 action:sel_handleDownloadButtonTapped forControlEvents:64];
  v49 = [v48 contentView];
  [v49 addLayoutGuide_];

  v50 = [v48 contentView];
  [v50 addSubview_];

  v51 = [v48 contentView];
  [v51 addSubview_];

  v52 = [v48 contentView];
  [v52 addSubview_];

  v53 = [v48 contentView];
  [v53 addSubview_];

  v54 = [v48 contentView];
  [v54 addSubview_];

  v55 = [v48 contentView];
  [v55 addSubview_];

  v56 = [v48 traitCollection];
  v57 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v58 = sub_20C13CC54();

  [v57 deactivateConstraints_];

  v59 = [v56 preferredContentSizeCategory];
  LOBYTE(v57) = sub_20C13D424();

  if (v57)
  {
    sub_20B995B54();
  }

  else
  {
    sub_20B996AA0();
  }

  [v48 setNeedsUpdateConstraints];

  return v48;
}

uint64_t sub_20B994BCC(void *a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for PhoneIndexedBrickItemCell(0);
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {

      Strong = v3;
    }

    else
    {
      v12 = sub_20C13DFF4();

      if (v12)
      {
        Strong = v3;
      }

      else
      {
        v18 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v19 = objc_opt_self();
        sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

        v20 = sub_20C13CC54();

        [v19 deactivateConstraints_];

        v21 = [v18 preferredContentSizeCategory];
        LOBYTE(v19) = sub_20C13D424();

        if (v19)
        {
          sub_20B995B54();
        }

        else
        {
          sub_20B996AA0();
        }

        [Strong setNeedsUpdateConstraints];
        sub_20B9957E8(v18);
        [Strong setNeedsLayout];
      }
    }
  }

  else
  {
    v14 = [v1 traitCollection];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

    v16 = sub_20C13CC54();

    [v15 deactivateConstraints_];

    v17 = [v14 preferredContentSizeCategory];
    LOBYTE(v15) = sub_20C13D424();

    if (v15)
    {
      sub_20B995B54();
    }

    else
    {
      sub_20B996AA0();
    }

    [Strong setNeedsUpdateConstraints];
    sub_20B9957E8(v14);
    [Strong setNeedsLayout];
  }

  return swift_unknownObjectUnownedDestroy();
}

uint64_t sub_20B994F88()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B60B124(v7, type metadata accessor for ShelfItemAction);
  }

  return result;
}

void sub_20B9951C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_titleLabel) attributedText];
  if (v1)
  {
    v2 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [v2 string];
      v6 = sub_20C13C954();
      v8 = v7;

      v9 = v4 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        v12 = (*(v10 + 184))(v4, v6, v8, ObjectType, v10);
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      swift_unknownObjectRelease();

      v14 = *(v12 + 16);

      v13 = v14 != 0;
    }

    else
    {

      v13 = 0;
    }

    *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_isCurrentTitleRTL) = v13;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_isCurrentTitleRTL) = 0;
  }
}

void sub_20B995330()
{
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1 && (v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v10 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel];
    v11 = [v10 leadingAnchor];
    v12 = [v0 contentView];
    v13 = [v12 leadingAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    v15 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
    *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint] = v14;

    v6 = [*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide] leadingAnchor];
    v8 = [v10 trailingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8 constant:*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout + 64]];
  }

  else
  {
    v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel] leadingAnchor];
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide];
    v3 = [v2 leadingAnchor];
    v4 = [v1 constraintEqualToAnchor_];

    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
    *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint] = v4;

    v6 = [v2 leadingAnchor];
    v7 = [v0 contentView];
    v8 = [v7 leadingAnchor];

    v9 = [v6 constraintEqualToAnchor_];
  }

  v16 = v9;

  v17 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint] = v16;
}

void sub_20B995598()
{
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1 && (v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v9 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel];
    v10 = [v9 leadingAnchor];
    v11 = [*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView] trailingAnchor];
    v12 = &v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout];
    v13 = [v10 constraintEqualToAnchor:v11 constant:*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout]];

    v14 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
    *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint] = v13;

    v6 = [*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide] leadingAnchor];
    v7 = [v9 trailingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:v12[8]];
  }

  else
  {
    v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel] leadingAnchor];
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide];
    v3 = [v2 leadingAnchor];
    v4 = [v1 constraintEqualToAnchor_];

    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
    *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint] = v4;

    v6 = [v2 leadingAnchor];
    v7 = [*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView] trailingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:*&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout]];
  }

  v15 = v8;

  v16 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint] = v15;
}

id sub_20B9957E8(id result)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hasIndex) == 1)
  {
    v2 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint;
    v3 = result;
    [*(v1 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint) setActive_];
    v4 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint;
    [*(v1 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint) setActive_];
    v5 = [v3 preferredContentSizeCategory];
    v6 = sub_20C13D424();

    if (v6)
    {
      sub_20B995330();
    }

    else
    {
      sub_20B995598();
    }

    [*(v1 + v2) setActive_];
    v7 = *(v1 + v4);

    return [v7 setActive_];
  }

  return result;
}

id sub_20B9958DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneIndexedBrickItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PhoneIndexedBrickItemCell(uint64_t a1)
{
  result = qword_27C7684E8;
  if (!qword_27C7684E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B995A64(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B995B54()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v140.origin.x = v4;
  v140.origin.y = v6;
  v140.size.width = v8;
  v140.size.height = v10;
  Width = CGRectGetWidth(v140);
  v12 = &v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout];
  v13 = 8;
  if (Width > 320.0)
  {
    v13 = 24;
  }

  v14 = 16;
  if (Width > 320.0)
  {
    v14 = 32;
  }

  v15 = *&v12[v14];
  v16 = *&v12[v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C14FE90;
  v18 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView];
  v19 = [v18 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v17 + 32) = v22;
  v23 = [v18 topAnchor];
  v24 = [v1 contentView];
  v25 = [v24 topAnchor];

  v137 = &v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout];
  v26 = [v23 constraintEqualToAnchor:v25 constant:*&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout + 48]];

  *(v17 + 40) = v26;
  v27 = [v18 widthAnchor];
  v28 = [v27 constraintEqualToConstant_];

  *(v17 + 48) = v28;
  v29 = [v18 heightAnchor];
  v30 = [v29 constraintEqualToConstant_];

  v136 = v17;
  *(v17 + 56) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20C150040;
  v32 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_downloadButton];
  v33 = [v32 trailingAnchor];
  v34 = [v1 contentView];
  v35 = [v34 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v36 = [v33 constraintEqualToAnchor:v35 constant:-*&qword_27C799F50];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v37) = v139;
  [v36 setPriority_];
  *(v31 + 32) = v36;
  v38 = [v32 centerYAnchor];
  v39 = [v18 centerYAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v31 + 40) = v40;
  v41 = [v32 leadingAnchor];
  v133 = v18;
  v42 = [v18 trailingAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor_];

  v135 = v31;
  *(v31 + 48) = v43;
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1 && (v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v53 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel];
    v54 = [v53 leadingAnchor];
    v55 = [v1 contentView];
    v56 = [v55 leadingAnchor];

    v57 = [v54 constraintEqualToAnchor_];
    v58 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint] = v57;

    v45 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide];
    v49 = [v45 leadingAnchor];
    v134 = v53;
    v51 = [v53 trailingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51 constant:v137[8]];
  }

  else
  {
    v134 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel];
    v44 = [v134 leadingAnchor];
    v45 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide];
    v46 = [v45 leadingAnchor];
    v47 = [v44 constraintEqualToAnchor_];

    v48 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint] = v47;

    v49 = [v45 leadingAnchor];
    v50 = [v1 contentView];
    v51 = [v50 leadingAnchor];

    v52 = [v49 constraintEqualToAnchor_];
  }

  v59 = v52;

  v60 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint] = v59;

  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_20C14FE90;
  v62 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint];
  *(v61 + 32) = v62;
  v63 = v62;
  v64 = [v45 trailingAnchor];
  v65 = [v1 contentView];
  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v68) = v139;
  [v67 setPriority_];
  *(v61 + 40) = v67;
  v69 = [v45 topAnchor];
  v131 = v45;
  v70 = [v133 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:v137[6]];

  *(v61 + 48) = v71;
  v132 = v61;
  v72 = [v45 bottomAnchor];
  v73 = [v1 contentView];
  v74 = [v73 bottomAnchor];

  v75 = [v72 constraintLessThanOrEqualToAnchor:v74 constant:-v137[6]];
  sub_20C13BBA4();
  LODWORD(v76) = v139;
  [v75 setPriority_];
  *(v61 + 56) = v75;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_20C150040;
  v78 = v77;
  v79 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_titleLabel];
  v80 = [v79 leadingAnchor];
  v81 = [v131 leadingAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  v78[4] = v82;
  v83 = [v79 trailingAnchor];
  v84 = [v131 trailingAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  v78[5] = v85;
  v138 = v78;
  v86 = [v79 topAnchor];
  v87 = [v131 topAnchor];
  v88 = [v86 constraintEqualToAnchor_];

  v78[6] = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_20C14FE90;
  v90 = v89;
  v91 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_subtitleLabel];
  v92 = [v91 leadingAnchor];
  v93 = [v131 leadingAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  v90[4] = v94;
  v95 = [v91 trailingAnchor];
  v96 = [v131 trailingAnchor];
  v97 = [v95 constraintEqualToAnchor_];

  v90[5] = v97;
  v98 = [v91 topAnchor];
  v99 = [v79 bottomAnchor];
  v100 = [v98 constraintEqualToAnchor_];

  v90[6] = v100;
  v101 = [v91 bottomAnchor];
  v102 = [v131 bottomAnchor];
  v103 = [v101 constraintEqualToAnchor_];

  v90[7] = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_20C151490;
  v105 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
  *(v104 + 32) = v105;
  v106 = v105;
  v107 = [v134 &selRef_secondaryLabel + 5];
  v108 = [v79 firstBaselineAnchor];
  v109 = [v107 constraintEqualToAnchor_];

  *(v104 + 40) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_20C14FE90;
  v111 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hairline];
  v112 = [v111 leadingAnchor];
  v113 = [v131 leadingAnchor];
  v114 = [v112 constraintEqualToAnchor_];

  *(v110 + 32) = v114;
  v115 = [v111 trailingAnchor];
  v116 = [v1 contentView];
  v117 = [v116 trailingAnchor];

  v118 = [v115 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v119) = v139;
  [v118 setPriority_];
  *(v110 + 40) = v118;
  v120 = [v111 bottomAnchor];
  v121 = [v1 contentView];
  v122 = [v121 bottomAnchor];

  v123 = [v120 constraintEqualToAnchor_];
  *(v110 + 48) = v123;
  v124 = [v111 heightAnchor];
  sub_20C1387F4();
  v125 = [v124 constraintEqualToConstant_];

  *(v110 + 56) = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F990;
  *(inited + 32) = v136;
  *(inited + 40) = v135;
  *(inited + 48) = v132;
  *(inited + 56) = v138;
  *(inited + 64) = v90;
  *(inited + 72) = v104;
  *(inited + 80) = v110;
  sub_20B853E04(inited);
  v128 = v127;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_currentConstraints] = v128;

  v129 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v130 = sub_20C13CC54();

  [v129 activateConstraints_];
}

void sub_20B996AA0()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v157.origin.x = v4;
  v157.origin.y = v6;
  v157.size.width = v8;
  v157.size.height = v10;
  Width = CGRectGetWidth(v157);
  v12 = &v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout];
  v13 = 8;
  if (Width > 320.0)
  {
    v13 = 24;
  }

  v14 = 16;
  if (Width > 320.0)
  {
    v14 = 32;
  }

  v15 = *&v12[v14];
  v16 = *&v12[v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C151850;
  v18 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView];
  v19 = [v18 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v17 + 32) = v22;
  v23 = [v18 topAnchor];
  v24 = [v1 contentView];
  v25 = [v24 topAnchor];

  v26 = &v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout];
  v27 = [v23 constraintEqualToAnchor:v25 constant:*&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout + 48]];

  *(v17 + 40) = v27;
  v28 = [v18 bottomAnchor];
  v29 = [v1 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintLessThanOrEqualToAnchor:v30 constant:-v26[6]];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v32) = v156;
  [v31 setPriority_];
  *(v17 + 48) = v31;
  v33 = [v18 bottomAnchor];
  v34 = [v1 contentView];
  v35 = [v34 bottomAnchor];

  v155 = v26;
  v36 = [v33 constraintEqualToAnchor:v35 constant:-v26[6]];

  sub_20C13BBA4();
  LODWORD(v37) = v156;
  v38 = v18;
  [v36 setPriority_];
  *(v17 + 56) = v36;
  v39 = [v18 widthAnchor];
  v40 = [v39 constraintEqualToConstant_];

  *(v17 + 64) = v40;
  v41 = [v18 heightAnchor];
  v42 = [v41 constraintEqualToConstant_];

  v154 = v17;
  *(v17 + 72) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20C151490;
  v44 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_downloadButton];
  v45 = [v44 trailingAnchor];
  v46 = [v1 contentView];
  v47 = [v46 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v48 = [v45 constraintEqualToAnchor:v47 constant:-*&qword_27C799F50];

  sub_20C13BBA4();
  LODWORD(v49) = v156;
  [v48 setPriority_];
  *(v43 + 32) = v48;
  v50 = [v44 centerYAnchor];
  v51 = [v1 contentView];
  v52 = [v51 centerYAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  v153 = v43;
  *(v43 + 40) = v53;
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1 && (v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v62 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel];
    v63 = [v62 leadingAnchor];
    v64 = [v38 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:*v26];

    v66 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint] = v65;

    v55 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide];
    v59 = [v55 leadingAnchor];
    v152 = v62;
    v60 = [v62 trailingAnchor];
    v61 = v26[8];
  }

  else
  {
    v152 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel];
    v54 = [v152 leadingAnchor];
    v55 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide];
    v56 = [v55 leadingAnchor];
    v57 = [v54 constraintEqualToAnchor_];

    v58 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint] = v57;

    v59 = [v55 leadingAnchor];
    v60 = [v38 trailingAnchor];
    v61 = *v26;
  }

  v67 = [v59 constraintEqualToAnchor:v60 constant:v61];

  v68 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint] = v67;

  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20C151850;
  v151 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint;
  v70 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint];
  *(v69 + 32) = v70;
  v71 = v69;
  v72 = v70;
  v73 = [v55 trailingAnchor];
  v74 = [v44 leadingAnchor];
  v75 = [v73 constraintLessThanOrEqualToAnchor:v74 constant:-v26[5]];

  v71[5] = v75;
  v76 = [v55 centerYAnchor];
  v77 = [v1 contentView];
  v78 = [v77 centerYAnchor];

  v79 = [v76 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v80) = v156;
  [v79 setPriority_];
  v71[6] = v79;
  v81 = [v55 topAnchor];
  v82 = [v1 &selRef_setMaximumFractionDigits_];
  v83 = [v82 &selRef_setLineBreakMode_];

  v84 = [v81 constraintGreaterThanOrEqualToAnchor:v83 constant:v26[6]];
  v71[7] = v84;
  v85 = [v55 bottomAnchor];
  v86 = [v1 &selRef_setMaximumFractionDigits_];
  v87 = [v86 &selRef_secondaryLabel + 5];

  v88 = [v85 constraintLessThanOrEqualToAnchor:v87 constant:-v26[6]];
  sub_20C13BBA4();
  LODWORD(v89) = v156;
  [v88 setPriority_];
  v150 = v71;
  v71[8] = v88;
  v90 = [v55 bottomAnchor];
  v91 = [v1 contentView];
  v92 = [v91 bottomAnchor];

  v93 = [v90 constraintEqualToAnchor:v92 constant:-v26[6]];
  sub_20C13BBA4();
  LODWORD(v94) = v156;
  [v93 setPriority_];
  v71[9] = v93;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_20C150040;
  v96 = v95;
  v97 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_titleLabel];
  v98 = [v97 leadingAnchor];
  v99 = [v55 leadingAnchor];
  v100 = [v98 constraintEqualToAnchor_];

  v96[4] = v100;
  v101 = [v97 trailingAnchor];
  v102 = [v55 trailingAnchor];
  v103 = [v101 constraintEqualToAnchor_];

  v96[5] = v103;
  v149 = v96;
  v104 = [v97 topAnchor];
  v105 = [v55 topAnchor];
  v106 = [v104 constraintEqualToAnchor_];

  v96[6] = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_20C14FE90;
  v108 = v107;
  v109 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_subtitleLabel];
  v110 = [v109 leadingAnchor];
  v111 = [v97 leadingAnchor];
  v112 = [v110 constraintEqualToAnchor_];

  v108[4] = v112;
  v113 = [v109 trailingAnchor];
  v114 = [v97 trailingAnchor];
  v115 = [v113 constraintEqualToAnchor_];

  v108[5] = v115;
  v116 = [v109 topAnchor];
  v117 = [v97 bottomAnchor];
  v118 = [v116 constraintEqualToAnchor_];

  v108[6] = v118;
  v119 = [v109 bottomAnchor];
  v120 = [v55 bottomAnchor];
  v121 = [v119 constraintEqualToAnchor_];

  v108[7] = v121;
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_20C151490;
  v123 = *&v1[v151];
  *(v122 + 32) = v123;
  v124 = v123;
  v125 = [v152 &selRef_secondaryLabel + 5];
  v126 = [v97 firstBaselineAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:v155[7]];

  *(v122 + 40) = v127;
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_20C14FE90;
  v129 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hairline];
  v130 = [v129 leadingAnchor];
  v131 = [v152 leadingAnchor];
  v132 = [v130 constraintEqualToAnchor_];

  *(v128 + 32) = v132;
  v133 = [v129 trailingAnchor];
  v134 = [v1 contentView];
  v135 = [v134 trailingAnchor];

  v136 = [v133 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v137) = v156;
  [v136 setPriority_];
  *(v128 + 40) = v136;
  v138 = [v129 bottomAnchor];
  v139 = [v1 contentView];
  v140 = [v139 bottomAnchor];

  v141 = [v138 constraintEqualToAnchor_];
  *(v128 + 48) = v141;
  v142 = [v129 heightAnchor];
  sub_20C1387F4();
  v143 = [v142 constraintEqualToConstant_];

  *(v128 + 56) = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F990;
  *(inited + 32) = v154;
  *(inited + 40) = v153;
  *(inited + 48) = v150;
  *(inited + 56) = v149;
  *(inited + 64) = v108;
  *(inited + 72) = v122;
  *(inited + 80) = v128;
  sub_20B853E04(inited);
  v146 = v145;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_currentConstraints] = v146;

  v147 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v148 = sub_20C13CC54();

  [v147 activateConstraints_];
}

void sub_20B997C2C(unint64_t a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v229 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v229 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v229 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v262 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v259 = &v229 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v260 = &v229 - v18;
  v258 = v19;
  MEMORY[0x28223BE20](v20);
  v261 = &v229 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v22 - 8);
  v269 = &v229 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v272 = *(v24 - 8);
  v273 = v24;
  MEMORY[0x28223BE20](v24);
  v257 = &v229 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = v25;
  MEMORY[0x28223BE20](v26);
  v270 = &v229 - v27;
  v267 = sub_20C1391C4();
  v266 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v268 = &v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_20C138A64();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v271 = &v229 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v265 = &v229 - v31;
  v32 = sub_20C13C554();
  ObjectType = *(v32 - 8);
  v282 = v32;
  MEMORY[0x28223BE20](v32);
  v280 = (&v229 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v287 = sub_20C137C24();
  v285 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v275 = v34;
  v276 = &v229 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v286 = &v229 - v36;
  v37 = sub_20C136CD4();
  v277 = *(v37 - 8);
  v278 = v37;
  MEMORY[0x28223BE20](v37);
  v284 = &v229 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C134E44();
  MEMORY[0x28223BE20](v39 - 8);
  v283 = &v229 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C134014();
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v229 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v47 == 33)
  {
    [*&v2[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel] setHidden_];
    sub_20BA1DAE8();
    [*&v2[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_titleLabel] setAttributedText_];
    [*&v2[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_subtitleLabel] setAttributedText_];
    sub_20B9951C8();
    sub_20C13B4A4();
    v75 = v2;
    v76 = sub_20C13BB74();
    v77 = sub_20C13D1F4();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v3;
      v3 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v289 = v80;
      *v78 = 138543618;
      *(v78 + 4) = v75;
      *v3 = v75;
      *(v78 + 12) = 2082;
      v81 = v75;
      *(v78 + 14) = sub_20B51E694(1701736270, 0xE400000000000000, &v289);
      _os_log_impl(&dword_20B517000, v76, v77, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v78, 0x16u);
      sub_20B520158(v3, &unk_27C762E30, &unk_20C150580);
      v82 = v3;
      LOBYTE(v3) = v79;
      MEMORY[0x20F2F6A40](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x20F2F6A40](v80, -1, -1);
      MEMORY[0x20F2F6A40](v78, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    v83 = *&v75[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_downloadButton];
    v84 = &v83[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    if (v83[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8] != 3 || *v84 != 3)
    {
      *v84 = 3;
      v84[8] = 3;
      v85 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      type metadata accessor for NoBackgroundConfiguration();
      v86 = swift_allocObject();
      *(v86 + 24) = 0;
      *(v86 + 32) = 0;
      *(v86 + 48) = 0;
      *(v86 + 56) = 0;
      *(v86 + 40) = v85;
      *(v86 + 64) = 0u;
      *(v86 + 80) = 0u;
      *(v86 + 96) = 0u;
      *(v86 + 112) = 0;
      *(v86 + 16) = 1;
      sub_20B8CF7CC(v86, v3 & 1, v83);
    }
  }

  else
  {
    v279 = v6;
    if (v47 == 32)
    {
      v237 = v15;
      v248 = v14;
      v246 = v5;
      v247 = v3;
      v48 = v43;
      v49 = v2;
      v50 = v42;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
      v52 = swift_projectBox();
      v53 = v52 + v51[16];
      v54 = v46;
      v56 = *v53;
      v55 = *(v53 + 8);
      v57 = *(v53 + 24);
      v250 = *(v53 + 16);
      v59 = *(v53 + 32);
      v58 = *(v53 + 40);
      v60 = v52 + v51[20];
      v61 = *(v60 + 8);
      v253 = *v60;
      v62 = *(v60 + 24);
      v252 = *(v60 + 16);
      v249 = v62;
      v251 = *(v60 + 32);
      v63 = *(v60 + 40);
      v64 = v52 + v51[24];
      v254 = *v64;
      v255 = *(v64 + 8);
      v244 = v48;
      v65 = v48;
      v66 = v63;
      v67 = *(v65 + 16);
      v274 = v54;
      v245 = v50;
      v67();
      v68 = *&v49[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_subtitleLabel];
      v69 = v56;
      v70 = v55;
      v243 = v250;
      v242 = v57;

      v241 = v59;
      v71 = v249;

      v240 = v58;
      v72 = v251;

      v73 = sub_20B6543CC(v253, v61, v252, v71);
      v250 = v70;
      [v68 setAttributedText_];
      v252 = v49;
      if (v61 == 1)
      {
        v49[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hasIndex] = 0;
        v74 = v286;
      }

      else
      {
        v49[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hasIndex] = (v66 & 1) == 0;

        v74 = v286;
        if ((v66 & 1) == 0)
        {
          v98 = *&v49[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel];
          *&v98[OBJC_IVAR____TtC9SeymourUI10IndexLabel_index] = v72;
          sub_20B952710();
          [v98 setHidden_];
          [v98 setNeedsLayout];
          [v98 layoutIfNeeded];
          v99 = *&v49[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_titleLabel];
          [v98 bounds];
          v100 = sub_20B85A20C();
          [v99 setAttributedText_];

          sub_20B9951C8();
          v101 = [v49 traitCollection];
          sub_20B9957E8(v101);

LABEL_16:
          v103 = v283;
          v102 = v284;
          sub_20C133F04();
          v239 = sub_20C138054();
          v253 = v104;
          sub_20C134E34();
          sub_20C136CB4();
          v238 = sub_20C136CC4();
          v251 = v105;
          sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
          v106 = sub_20C13D374();
          v108 = v280;
          v107 = ObjectType;
          *v280 = v106;
          v109 = v282;
          (*(v107 + 104))(v108, *MEMORY[0x277D85200], v282);
          v110 = sub_20C13C584();
          (*(v107 + 8))(v108, v109);
          v111 = v287;
          if ((v110 & 1) == 0)
          {
            __break(1u);
            return;
          }

          v280 = v69;
          v112 = v252;
          v113 = *&v252[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView];
          v114 = *&v252[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView + 8];
          ObjectType = swift_getObjectType();
          [v113 setContentMode_];
          v115 = sub_20BA66C54();
          v249 = v113;
          v282 = v114;
          if (v115)
          {
            v116 = swift_allocObject();
            v235 = v116;
            swift_unknownObjectWeakInit();
            v117 = v285;
            v118 = *(v285 + 16);
            v119 = v276;
            v233 = v285 + 16;
            v232 = v118;
            v118(v276, v74, v111);
            v120 = *(v117 + 80);
            v121 = (v120 + 24) & ~v120;
            v229 = v275 + 7;
            v122 = (v275 + 7 + v121) & 0xFFFFFFFFFFFFFFF8;
            v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF8;
            v124 = (v123 + 23) & 0xFFFFFFFFFFFFFFF8;
            v236 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
            v234 = v120;
            v125 = swift_allocObject();
            *(v125 + 16) = v116;
            v126 = v117;
            v127 = v119;
            v128 = *(v126 + 32);
            v129 = v125 + v121;
            v111 = v287;
            v231 = v126 + 32;
            v230 = v128;
            v128(v129, v119, v287);
            v130 = (v125 + v122);
            v131 = v251;
            *v130 = v238;
            v130[1] = v131;
            v132 = (v125 + v123);
            v133 = v253;
            *v132 = v239;
            v132[1] = v133;
            *(v125 + v124) = 2;
            v134 = v125 + v236;
            *v134 = MEMORY[0x277D84F90];
            *(v134 + 8) = 0;
            v135 = (v125 + ((v124 + 31) & 0xFFFFFFFFFFFFFFF8));
            *v135 = 0;
            v135[1] = 0;
            v136 = v282;
            v137 = *(v282 + 152);

            v138 = ObjectType;
            v137(sub_20B999BAC, v125, ObjectType, v136);

            [v113 bounds];
            if (v139 <= 0.0 || (v141 = v140, v140 <= 0.0))
            {

              v165 = v248;
              v112 = v252;
              v166 = v278;
              v167 = v286;
            }

            else
            {
              v142 = v139;
              v143 = v113;
              v144 = v136;
              v145 = v138;
              v236 = ~v234;
              (*(v136 + 120))(0, v138, v136);
              v146 = v265;
              v147 = v286;
              v232(v265, v286, v111);
              (*(v285 + 56))(v146, 0, 1, v111);
              (*(v136 + 16))(v146, v145, v136);
              sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
              v148 = v147;
              sub_20C137BC4();
              v149 = sub_20C13D5A4();
              [v143 setBackgroundColor_];

              (*(v144 + 176))(COERCE_DOUBLE(*&v142), COERCE_DOUBLE(*&v141), 0, v145, v144);
              v265 = swift_allocObject();
              v150 = v252;
              swift_unknownObjectWeakInit();
              v151 = v148;
              v152 = v148;
              v153 = v232;
              v232(v127, v152, v111);
              v154 = (v234 + 16) & v236;
              v155 = (v229 + v154) & 0xFFFFFFFFFFFFFFF8;
              v156 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
              v157 = swift_allocObject();
              v230(v157 + v154, v127, v287);
              *(v157 + v155) = v265;
              v112 = v150;
              v158 = v153;
              v159 = (v157 + v156);
              *v159 = v142;
              v159[1] = v141;
              v265 = v157;
              v160 = (v157 + ((v156 + 23) & 0xFFFFFFFFFFFFFFF8));
              v111 = v287;
              *v160 = 0;
              v160[1] = 0;
              v74 = v151;
              v153(v127, v151, v111);
              (*(v266 + 104))(v268, *MEMORY[0x277D542A8], v267);

              v161 = v271;
              sub_20C138A54();
              v162 = v269;
              sub_20B5F1CF8(v161, v269);
              v164 = v272;
              v163 = v273;
              if ((*(v272 + 48))(v162, 1, v273) == 1)
              {
                sub_20B520158(v162, &unk_27C766670, &unk_20C151580);
                sub_20BA1DAE8();

                (*(v263 + 8))(v161, v264);
                v165 = v248;
                v166 = v278;
                v103 = v283;
                v102 = v284;
LABEL_23:
                v167 = v74;
                goto LABEL_26;
              }

              v191 = v164;
              v268 = *(v164 + 32);
              (v268)(v270, v162, v163);
              v192 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v193 = v276;
              v158(v276, v286, v111);
              v194 = (v234 + 40) & v236;
              v195 = v194 + v275;
              v196 = (v194 + v275) & 0xFFFFFFFFFFFFFFF8;
              v197 = swift_allocObject();
              *(v197 + 2) = v192;
              v197[3] = v142;
              v197[4] = v141;
              v230(v197 + v194, v193, v287);
              *(v197 + v195) = 0;
              v198 = v197 + v196;
              *(v198 + 1) = 0;
              *(v198 + 2) = 0;
              v199 = swift_allocObject();
              *(v199 + 16) = sub_20B999D40;
              *(v199 + 24) = v197;
              v200 = v257;
              (*(v191 + 16))(v257, v270, v163);
              v201 = (*(v191 + 80) + 16) & ~*(v191 + 80);
              v202 = (v256 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
              v203 = swift_allocObject();
              (v268)(v203 + v201, v200, v163);
              v204 = (v203 + v202);
              *v204 = sub_20B5F67A4;
              v204[1] = v199;
              v205 = v260;
              sub_20C137C94();
              v206 = swift_allocObject();
              v207 = v265;
              *(v206 + 16) = sub_20B999C84;
              *(v206 + 24) = v207;
              v208 = swift_allocObject();
              *(v208 + 16) = sub_20B5F67D4;
              *(v208 + 24) = v206;
              v209 = v262;
              v210 = v259;
              v211 = v237;
              (*(v262 + 16))(v259, v205, v237);
              v212 = (*(v209 + 80) + 16) & ~*(v209 + 80);
              v213 = (v258 + v212 + 7) & 0xFFFFFFFFFFFFFFF8;
              v214 = swift_allocObject();
              (*(v209 + 32))(v214 + v212, v210, v211);
              v215 = (v214 + v213);
              *v215 = sub_20B5DF204;
              v215[1] = v208;

              v216 = v261;
              sub_20C137C94();
              v217 = *(v209 + 8);
              v217(v205, v211);
              v218 = sub_20C137CB4();
              v219 = swift_allocObject();
              *(v219 + 16) = 0;
              *(v219 + 24) = 0;
              v218(sub_20B52347C, v219);

              v112 = v252;

              v220 = v216;
              v111 = v287;
              v217(v220, v211);
              v221 = v286;
              (*(v272 + 8))(v270, v273);
              (*(v263 + 8))(v271, v264);
              v167 = v221;
              v165 = v248;
              v166 = v278;
            }

            v103 = v283;
            v102 = v284;
LABEL_26:
            (*(v285 + 8))(v167, v111);
            (*(v277 + 8))(v102, v166);

            sub_20B60B124(v103, MEMORY[0x277D51268]);
            v168 = sub_20C133EB4() > 0;
            v169 = v282;
            (*(v282 + 264))(v168, ObjectType, v282);
            v170 = sub_20C133E54();
            (*(v169 + 296))(v170);

            sub_20C13B4A4();
            v171 = v112;
            v172 = sub_20C13BB74();
            v173 = sub_20C13D1F4();

            if (os_log_type_enabled(v172, v173))
            {
              v174 = v165;
              v175 = swift_slowAlloc();
              v176 = swift_slowAlloc();
              v177 = swift_slowAlloc();
              v289 = v177;
              *v175 = 138543618;
              *(v175 + 4) = v171;
              *v176 = v171;
              *(v175 + 12) = 2082;
              v178 = v171;
              v179 = sub_20BCFF494(*&v254, v255);
              v181 = sub_20B51E694(v179, v180, &v289);

              *(v175 + 14) = v181;
              _os_log_impl(&dword_20B517000, v172, v173, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v175, 0x16u);
              sub_20B520158(v176, &unk_27C762E30, &unk_20C150580);
              MEMORY[0x20F2F6A40](v176, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v177);
              MEMORY[0x20F2F6A40](v177, -1, -1);
              MEMORY[0x20F2F6A40](v175, -1, -1);

              (*(v279 + 8))(v174, v246);
            }

            else
            {

              (*(v279 + 8))(v165, v246);
            }

            v182 = v247;
            v183 = v244;
            v184 = v280;
            v185 = v250;
            v186 = v243;
            v187 = *&v171[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_downloadButton];
            v188 = &v187[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
            v189 = *&v187[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
            v190 = v187[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
            if (v190 <= 1)
            {
              if (v187[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
              {
                if (v255 != 1 || ((v189 ^ LODWORD(v254)) & 1) != 0)
                {
                  goto LABEL_61;
                }
              }

              else if (v255 || v189 != LOBYTE(v254))
              {
                goto LABEL_61;
              }
            }

            else if (v190 == 2)
            {
              if (v255 != 2 || *&v187[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState] != v254)
              {
                goto LABEL_61;
              }
            }

            else
            {
              if (v190 == 255)
              {
LABEL_61:
                v222 = *&v254;
                *v188 = v254;
                v223 = v255;
                v188[8] = v255;
                sub_20C010054(v222, v223, 2.0);
                v225 = v224;
                v227 = v226;
                v228 = swift_getObjectType();
                sub_20C0DC2BC(v225, v182 & 1, v187, v228, v227);

                swift_unknownObjectRelease();
                goto LABEL_62;
              }

              if (v189 <= 1)
              {
                if (v189)
                {
                  if (v255 != 3 || *&v254 != 1)
                  {
                    goto LABEL_61;
                  }
                }

                else if (v255 != 3 || v254 != 0.0)
                {
                  goto LABEL_61;
                }
              }

              else if (v189 == 2)
              {
                if (v255 != 3 || *&v254 != 2)
                {
                  goto LABEL_61;
                }
              }

              else if (v189 == 3)
              {
                if (v255 != 3 || *&v254 != 3)
                {
                  goto LABEL_61;
                }
              }

              else if (v255 != 3 || *&v254 != 4)
              {
                goto LABEL_61;
              }
            }

LABEL_62:
            (*(v183 + 8))(v274, v245);
            return;
          }

          v165 = v248;
          v166 = v278;
          goto LABEL_23;
        }
      }

      [*&v49[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_titleLabel] setAttributedText_];
      [*&v49[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel] setHidden_];
      sub_20B9951C8();
      goto LABEL_16;
    }

    sub_20C13B534();

    v87 = v2;
    v88 = sub_20C13BB74();
    v89 = sub_20C13D1D4();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v288 = a1;
      v289 = v92;
      *v90 = 138412546;
      *(v90 + 4) = v87;
      *v91 = v87;
      *(v90 + 12) = 2082;
      v93 = sub_20B5F66D0();
      v94 = v87;
      v95 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v93);
      v97 = sub_20B51E694(v95, v96, &v289);

      *(v90 + 14) = v97;
      _os_log_impl(&dword_20B517000, v88, v89, "Attempted to configure %@ with item: %{public}s", v90, 0x16u);
      sub_20B520158(v91, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v91, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x20F2F6A40](v92, -1, -1);
      MEMORY[0x20F2F6A40](v90, -1, -1);
    }

    (*(v279 + 8))(v8, v5);
  }
}

double sub_20B999984(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B9999D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B999A28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20B999A8C(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();
  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v4 = *&qword_27C799F40;
  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  return v3 - v4 - *&qword_27C799F50;
}

id sub_20B999B5C(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hairline) setHidden_];
}

void sub_20B999BAC()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA532BC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B999C84(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA637F0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B999D40(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F304C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20B999DF4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_currentConstraints) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_showSeparator) = 1;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_downloadButton;
  type metadata accessor for DownloadButton();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 &selRef_count + 2];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLabel;
  v10 = [objc_allocWithZone(type metadata accessor for IndexLabel()) initWithFrame_];
  [v10 &selRef_count + 2];
  v11 = *MEMORY[0x277D76968];
  v12 = *&v10[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle];
  *&v10[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle] = *MEMORY[0x277D76968];

  *(v0 + v9) = v10;
  v13 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hairline;
  v14 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v15 = v11;
  v16 = [v14 &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v16 &selRef_count + 2];
  v17 = objc_opt_self();
  v18 = [v17 separatorColor];
  [v16 setBackgroundColor_];

  *(v0 + v13) = v16;
  v19 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuide;
  *(v0 + v19) = [objc_allocWithZone(MEMORY[0x277D756D0]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v20 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_subtitleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v21 &selRef_count + 2];
  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = objc_opt_self();
  v23 = *MEMORY[0x277D76940];
  v24 = [v22 preferredFontForTextStyle_];
  [v21 setFont_];

  [v21 setAllowsDefaultTighteningForTruncation_];
  v25 = [v17 systemGrayColor];
  [v21 setTextColor_];

  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  LODWORD(v26) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [v21 setContentHuggingPriority:1 forAxis:v27];

  *(v0 + v20) = v21;
  v28 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_titleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 setAdjustsFontForContentSizeCategory_];
  [v29 setAllowsDefaultTighteningForTruncation_];
  v30 = [v17 whiteColor];
  [v29 setTextColor_];

  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  v31 = [v22 preferredFontForTextStyle_];
  [v29 setFont_];

  LODWORD(v32) = 1148846080;
  [v29 setContentCompressionResistancePriority:1 forAxis:v32];
  [v29 setTextAlignment_];
  LODWORD(v33) = 1148846080;
  [v29 setContentHuggingPriority:1 forAxis:v33];

  *(v0 + v28) = v29;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_hasIndex) = 0;
  v34 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_indexLeadingConstraint;
  *(v0 + v34) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_isCurrentTitleRTL) = 0;
  v35 = v0 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layout;
  *v35 = xmmword_20C166230;
  *(v35 + 16) = xmmword_20C166240;
  *(v35 + 32) = xmmword_20C166250;
  *(v35 + 48) = xmmword_20C166260;
  *(v35 + 64) = 0x4018000000000000;
  v36 = OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_layoutGuideLeadingConstraint;
  *(v0 + v36) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

double sub_20B99A3F4()
{
  v23 = sub_20C13C4B4();
  v26 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_20C13C4F4();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13C514();
  v21[0] = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = sub_20C13C4C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  (*(v12 + 104))(v14, *MEMORY[0x277D851B8], v11);
  v15 = sub_20C13D3A4();
  (*(v12 + 8))(v14, v11);
  sub_20C13C504();
  sub_20C13C574();
  v16 = *(v5 + 8);
  v16(v7, v4);
  aBlock[4] = sub_20B99BDAC;
  aBlock[5] = v21[1];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_60;
  v17 = _Block_copy(aBlock);

  sub_20C13C4D4();
  v27 = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  v18 = v22;
  v19 = v23;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v10, v3, v18, v17);
  _Block_release(v17);

  (*(v26 + 8))(v18, v19);
  (*(v24 + 8))(v3, v25);
  v16(v10, v21[0]);

  return result;
}

uint64_t sub_20B99A808(char *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = sub_20C13BB84();
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20C13C4B4();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C4F4();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountSetting(0);
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13B5E4();
  v14 = v13;
  v15 = *&a1[OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_bag];
  v16 = sub_20C13C914();
  v17 = [v15 URLForKey_];

  aBlock[0] = 0;
  v18 = [v17 valueWithError_];

  v19 = aBlock[0];
  if (v18)
  {

    sub_20C132B94();
    type metadata accessor for AccountSettingLink(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v22 = sub_20C132964();
    v24 = v23;

    v11[*(v9 + 20)] = 0;
    v25 = &v11[*(v9 + 24)];
    *v25 = v22;
    v25[1] = v24;
    v26 = OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_settings;
    swift_beginAccess();
    v27 = *&a1[v26];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a1[v26] = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_20BC068C0(0, v27[2] + 1, 1, v27);
      *&a1[v26] = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_20BC068C0((v29 > 1), v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    sub_20B99BDB4(v11, v27 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v30, type metadata accessor for AccountSetting);
    *&a1[v26] = v27;
    swift_endAccess();
    sub_20B5E2E18();
    v31 = sub_20C13D374();
    aBlock[4] = sub_20B99BE1C;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_19;
    v32 = _Block_copy(aBlock);

    sub_20C13C4D4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
    sub_20B682EA8();
    v33 = v50;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v8, v5, v32);
    _Block_release(v32);

    (*(v53 + 8))(v5, v33);
    return (*(v51 + 8))(v8, v52);
  }

  else
  {
    v35 = v19;
    v36 = v48;
    v37 = v2;
    v38 = sub_20C132A44();

    swift_willThrow();
    sub_20C13B534();

    v39 = v38;
    v40 = sub_20C13BB74();
    v41 = sub_20C13D1D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 141558530;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2080;
      v44 = sub_20B51E694(v12, v14, aBlock);

      *(v42 + 14) = v44;
      *(v42 + 22) = 2082;
      swift_getErrorValue();
      v45 = MEMORY[0x20F2F5850](v55, v56);
      v47 = sub_20B51E694(v45, v46, aBlock);

      *(v42 + 24) = v47;
      _os_log_impl(&dword_20B517000, v40, v41, "Failed to fetch URL for key: %{mask.hash}s with error: %{public}s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v43, -1, -1);
      MEMORY[0x20F2F6A40](v42, -1, -1);
    }

    else
    {
    }

    return (*(v36 + 8))(v54, v37);
  }
}

uint64_t sub_20B99AF68()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountManagementShelf(uint64_t a1)
{
  result = qword_27C768518;
  if (!qword_27C768518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B99B0C0(uint64_t a1)
{
  result = sub_20C132EE4();
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

uint64_t sub_20B99B17C(unint64_t a1, unint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountSetting(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 1)
  {
    v13 = OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_settings;
    result = swift_beginAccess();
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v2 + v13);
      if (*(v15 + 16) > a2)
      {
        sub_20B64DC5C(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, v12);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_20B64E88C();
          swift_unknownObjectRelease();
        }

        return sub_20B64DEC0(v12);
      }
    }

    __break(1u);
    return result;
  }

  sub_20C13B534();

  v16 = sub_20C13BB74();
  v17 = sub_20C13D1D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136446210;
    v23[3] = a1;

    v20 = sub_20C13C9D4();
    v22 = sub_20B51E694(v20, v21, v23);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_20B517000, v16, v17, "Shelf lockup navigation triggered for item: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x20F2F6A40](v19, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20B99B468@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B99B4E0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20B99B58C()
{
  sub_20B99A3F4();

  sub_20B99B5B8();
}

void sub_20B99B5B8()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AccountSetting(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_settings;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = *(v4 + 24);
    v53 = *(v4 + 20);
    v13 = &v7[v12];
    v14 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    v51 = v1;
    v52 = v15;
    v50 = v9;

    v16 = MEMORY[0x277D84F90];
    do
    {
      sub_20B64DC5C(v14, v7);
      v17 = v7[v53] > 1u;
      v18 = swift_allocObject();
      v20 = *v13;
      v19 = *(v13 + 1);

      sub_20B64DEC0(v7);
      *(v18 + 16) = v20;
      *(v18 + 24) = v19;
      *(v18 + 32) = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_20BC05D3C(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_20BC05D3C((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      *&v16[8 * v22 + 32] = v18 | 1;
      v14 += v52;
      --v10;
    }

    while (v10);

    v1 = v51;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v54 = 0uLL;
  LOBYTE(v55) = 1;
  *(&v55 + 1) = 0;
  *&v56 = 0;
  WORD4(v56) = 128;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = v16;
  *&v61[0] = v11;
  *(v61 + 8) = 0u;
  *(&v61[1] + 8) = 0u;
  *(&v61[2] + 1) = 0;
  v62 = 2;
  nullsub_1();
  v23 = v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 144);
  v63[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 128);
  v63[9] = v24;
  v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 160);
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 80);
  v63[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 64);
  v63[5] = v25;
  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 112);
  v63[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 96);
  v63[7] = v26;
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 16);
  v63[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row);
  v63[1] = v27;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 48);
  v63[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row + 32);
  v63[3] = v28;
  v29 = v61[2];
  *(v23 + 128) = v61[1];
  *(v23 + 144) = v29;
  *(v23 + 160) = v62;
  v30 = v59;
  *(v23 + 64) = v58;
  *(v23 + 80) = v30;
  v31 = v61[0];
  *(v23 + 96) = v60;
  *(v23 + 112) = v31;
  v32 = v55;
  *v23 = v54;
  *(v23 + 16) = v32;
  v33 = v57;
  *(v23 + 32) = v56;
  *(v23 + 48) = v33;
  sub_20B634408(v63);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61CEC0(v1, Strong);
      if (v37)
      {
        v39 = v36;
        v40 = v37;
        v41 = v38;
        sub_20B5E2E18();
        v42 = sub_20C13D374();
        v44 = v47;
        v43 = v48;
        *v47 = v42;
        v45 = v49;
        (*(v43 + 104))(v44, *MEMORY[0x277D85200], v49);
        v46 = sub_20C13C584();
        (*(v43 + 8))(v44, v45);
        if ((v46 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B620430(v39, v40, v41, v1, 0, v35);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20B99BA08()
{
  v1 = v0;
  v31 = type metadata accessor for AccountSettingLink(0);
  MEMORY[0x28223BE20](v31);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_row;
  sub_20B5D8060(v34);
  v5 = v34[9];
  *(v4 + 128) = v34[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v35;
  v6 = v34[5];
  *(v4 + 64) = v34[4];
  *(v4 + 80) = v6;
  v7 = v34[7];
  *(v4 + 96) = v34[6];
  *(v4 + 112) = v7;
  v8 = v34[1];
  *v4 = v34[0];
  *(v4 + 16) = v8;
  v9 = v34[3];
  *(v4 + 32) = v34[2];
  *(v4 + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_bag) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768528, &unk_20C1893A0);
  v10 = (type metadata accessor for AccountSetting(0) - 8);
  v11 = *v10;
  v32 = *(*v10 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C14F320;
  v14 = v13 + v12;
  v15 = v3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  v19 = sub_20C132964();
  v21 = v20;

  sub_20B99BDB4(v15, v14, type metadata accessor for AccountSettingLink);
  *(v14 + v10[7]) = 0;
  v22 = (v14 + v10[8]);
  *v22 = v19;
  v22[1] = v21;
  v23 = v14 + v32;
  swift_storeEnumTagMultiPayload();
  v24 = [v17 bundleForClass_];
  v25 = sub_20C132964();
  v27 = v26;

  sub_20B99BDB4(v15, v23, type metadata accessor for AccountSettingLink);
  *(v23 + v10[7]) = 0;
  v28 = (v23 + v10[8]);
  *v28 = v25;
  v28[1] = v27;
  *(v1 + OBJC_IVAR____TtC9SeymourUI22AccountManagementShelf_settings) = v13;
  return v1;
}

uint64_t sub_20B99BDB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_20B99BE28()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v4];
  return v0;
}

id sub_20B99BF94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanCompletionSingleMetricStack();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20B99C038()
{
  v1 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanCompletionSingleMetricStack_titleLabel;
  *&v0[v1] = sub_20B99BE28();
  v2 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanCompletionSingleMetricStack_valueLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setNumberOfLines_];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  *&v0[v2] = v3;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for WorkoutPlanCompletionSingleMetricStack();
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setAxis_];
  [v6 addArrangedSubview_];
  [v6 addArrangedSubview_];

  return v6;
}

void sub_20B99C17C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanCompletionSingleMetricStack_titleLabel;
  *(v0 + v1) = sub_20B99BE28();
  v2 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanCompletionSingleMetricStack_valueLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setNumberOfLines_];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  *(v0 + v2) = v3;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B99C274(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x277D84F90];
  sub_20BB5DED4(0, v1, 0);
  v2 = v23;
  v22 = a1 + 56;
  result = sub_20C13DAA4();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_20C137F94();
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v20 = result;
      sub_20BB5DED4((v11 > 1), v12 + 1, 1);
      result = v20;
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 8 * v12 + 32) = result;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v21;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v21;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_20B526EA4(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_20B99C498(int a1)
{
  v2 = v1;
  v168 = a1;
  v3 = sub_20C13C554();
  v171 = *(v3 - 8);
  v172 = v3;
  MEMORY[0x28223BE20](v3);
  v170 = &v167[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20C132924();
  v178 = *(v5 - 8);
  v179 = v5;
  MEMORY[0x28223BE20](v5);
  v177 = &v167[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v7 - 8);
  v184 = &v167[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v187 = &v167[-v10];
  v191 = sub_20C133594();
  v193 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v186 = &v167[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v175 = &v167[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0, &unk_20C1664E0);
  MEMORY[0x28223BE20](v14 - 8);
  v190 = &v167[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v169 = &v167[-v17];
  MEMORY[0x28223BE20](v18);
  v180 = &v167[-v19];
  MEMORY[0x28223BE20](v20);
  v181 = &v167[-v21];
  MEMORY[0x28223BE20](v22);
  v189 = &v167[-v23];
  v188 = sub_20C133154();
  v24 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v26 = &v167[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_20C132E94();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v176 = &v167[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v32 = &v167[-v31];
  MEMORY[0x28223BE20](v33);
  v35 = &v167[-v34];
  sub_20C132E64();
  sub_20C133014();
  sub_20C132D64();
  v196[2] = v26;
  v196[3] = v32;
  v36 = sub_20B613BDC(sub_20B99E720, v196, 0, 7);
  v195[2] = v26;
  v195[3] = v2;
  sub_20B5F8564(sub_20B99E73C, v195, v36);
  v194[2] = v26;
  sub_20B5E6534(sub_20B99E75C, v194, v37);
  v192 = v38;
  v182 = 0;

  v183 = v28;
  v40 = v28 + 8;
  v39 = *(v28 + 8);
  v39(v35, v27);
  v185 = v27;
  v41 = v27;
  v42 = v191;
  v173 = v39;
  v174 = v40;
  v39(v32, v41);
  (*(v24 + 8))(v26, v188);
  v43 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_selectedDay;
  swift_beginAccess();
  v44 = v189;
  sub_20B52F9E8(v2 + v43, v189, &qword_27C76EAD0, &unk_20C1664E0);
  v45 = *(v193 + 48);
  LODWORD(v40) = v45(v44, 1, v42);
  sub_20B520158(v44, &qword_27C76EAD0, &unk_20C1664E0);
  if (v40 == 1)
  {
    v46 = v2;
    if (*(v192 + 16))
    {
      v47 = v193;
      v48 = v181;
      (*(v193 + 16))(v181, v192 + ((*(v193 + 80) + 32) & ~*(v193 + 80)), v42);
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v47 = v193;
      v48 = v181;
    }

    v51 = v45;
    (*(v47 + 56))(v48, v49, 1, v42);
    swift_beginAccess();
    v54 = v46 + v43;
    v55 = v48;
  }

  else
  {
    v50 = v180;
    sub_20B52F9E8(v2 + v43, v180, &qword_27C76EAD0, &unk_20C1664E0);
    v46 = v2;
    v51 = v45;
    if (v45(v50, 1, v42) == 1)
    {
      sub_20B520158(v50, &qword_27C76EAD0, &unk_20C1664E0);
      v47 = v193;
      goto LABEL_11;
    }

    v47 = v193;
    v52 = v175;
    (*(v193 + 32))(v175, v50, v42);
    v53 = v192;
    if (sub_20B88942C(v52, v192))
    {
      (*(v47 + 8))(v52, v42);
      goto LABEL_11;
    }

    if (*(v53 + 16))
    {
      v153 = v53 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v154 = v169;
      (*(v47 + 16))(v169, v153, v42);
      v155 = 0;
    }

    else
    {
      v155 = 1;
      v154 = v169;
    }

    (*(v47 + 8))(v52, v42);
    (*(v47 + 56))(v154, v155, 1, v42);
    swift_beginAccess();
    v54 = v46 + v43;
    v55 = v154;
  }

  sub_20B99E650(v55, v54);
  swift_endAccess();
LABEL_11:
  v56 = v46 + v43;
  v57 = v190;
  sub_20B52F9E8(v56, v190, &qword_27C76EAD0, &unk_20C1664E0);
  if (v51(v57, 1, v42) != 1)
  {
    v84 = *(v47 + 32);
    v85 = v186;
    v84(v186, v57, v42);
    v86 = v183;
    v87 = v187;
    v88 = v185;
    v89 = (*(v183 + 56))(v187, 1, 1, v185);
    MEMORY[0x28223BE20](v89);
    *&v167[-32] = v46;
    *&v167[-24] = v85;
    *&v167[-16] = v87;
    sub_20B5E6588(sub_20B99E77C, &v167[-48], v192);
    v91 = v90;

    v92 = v184;
    sub_20B52F9E8(v87, v184, &qword_27C762AC0, &qword_20C14FC90);
    if ((*(v86 + 48))(v92, 1, v88) == 1)
    {

      sub_20B520158(v92, &qword_27C762AC0, &qword_20C14FC90);
      v200 = 0uLL;
      LOBYTE(v201) = 1;
      *(&v201 + 1) = 0;
      *&v202 = 0;
      WORD4(v202) = 128;
      v203 = 0u;
      v204 = 0u;
      v205 = 0u;
      LOBYTE(v206) = 0;
      *(&v206 + 1) = MEMORY[0x277D84F90];
      *&v207[0] = MEMORY[0x277D84F90];
      *(v207 + 8) = 0u;
      *(&v207[1] + 8) = 0u;
      *(&v207[2] + 1) = 0;
      v208 = 2;
      nullsub_1();
      v93 = v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row;
      v94 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 144);
      v217 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 128);
      v218 = v94;
      v95 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 80);
      v213 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 64);
      v214 = v95;
      v96 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 112);
      v215 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 96);
      v216 = v96;
      v97 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 16);
      v209 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row);
      v210 = v97;
      v98 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 48);
      v211 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 32);
      v212 = v98;
      v99 = v207[0];
      v100 = v207[2];
      *(v93 + 128) = v207[1];
      *(v93 + 144) = v100;
      v101 = v203;
      v102 = v205;
      v103 = v206;
      *(v93 + 64) = v204;
      *(v93 + 80) = v102;
      *(v93 + 96) = v103;
      *(v93 + 112) = v99;
      v104 = v201;
      v105 = v202;
      *v93 = v200;
      *(v93 + 16) = v104;
      v219 = *(v93 + 160);
      *(v93 + 160) = v208;
      *(v93 + 32) = v105;
      *(v93 + 48) = v101;
      sub_20B520158(&v209, &qword_27C762340, &unk_20C150290);
      Strong = swift_unknownObjectWeakLoadStrong();
      v107 = v193;
      if (Strong)
      {
        v108 = Strong;
        if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
        {
          sub_20B61CFD8(v46, Strong);
          if (v110)
          {
            v112 = v109;
            v113 = v110;
            v114 = v111;
            sub_20B5E2E18();
            v115 = sub_20C13D374();
            v117 = v170;
            v116 = v171;
            *v170 = v115;
            v118 = v172;
            (*(v116 + 104))(v117, *MEMORY[0x277D85200], v172);
            v119 = sub_20C13C584();
            (*(v116 + 8))(v117, v118);
            if ((v119 & 1) == 0)
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            sub_20B62060C(v112, v113, v114, v46, 0, v108);
          }

          else
          {
            sub_20C0C2D50(0);
          }

          v42 = v191;
          v107 = v193;
        }

        swift_unknownObjectRelease();
      }

      sub_20B520158(v187, &qword_27C762AC0, &qword_20C14FC90);
      (*(v107 + 8))(v186, v42);
      return;
    }

    v120 = v176;
    (*(v86 + 32))(v176, v92, v88);
    v121 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_workoutPlanStringBuilder);
    v122 = v177;
    sub_20BAB3C98(v120, v177);
    v123 = v121[9];
    v124 = v121[10];
    __swift_project_boxed_opaque_existential_1(v121 + 6, v123);
    sub_20B5E107C(0xD000000000000013, 0x800000020C1A2650, v123, v124);
    v125 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v126 = sub_20C13C914();

    v127 = [v125 initWithString_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_20C14F980;
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F28, &unk_20C1664F0);
    v130 = swift_allocBox();
    v192 = v46;
    v132 = v131;
    v133 = *(v129 + 48);
    v134 = *(v129 + 64);
    (*(v178 + 16))(v131, v122, v179);
    *(v132 + v133) = v127;
    *(v132 + v134) = v91;
    v135 = v192;
    *(v128 + 32) = v130 | 0x9000000000000004;
    v200 = 0uLL;
    LOBYTE(v201) = 1;
    *(&v201 + 1) = *v199;
    DWORD1(v201) = *&v199[3];
    *(&v201 + 1) = 0;
    *&v202 = 0;
    WORD4(v202) = 128;
    *(&v202 + 10) = *&v197[7];
    HIWORD(v202) = v198;
    LOBYTE(v206) = 0;
    v204 = 0u;
    v205 = 0u;
    v203 = 0u;
    *(&v206 + 1) = *v197;
    DWORD1(v206) = *&v197[3];
    *(&v206 + 1) = v128;
    *&v207[0] = MEMORY[0x277D84F90];
    *(v207 + 8) = 0u;
    *(&v207[1] + 8) = 0u;
    *(&v207[2] + 1) = 0;
    v208 = 2;
    nullsub_1();
    v136 = v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row;
    v137 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 144);
    v217 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 128);
    v218 = v137;
    v138 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 80);
    v213 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 64);
    v214 = v138;
    v139 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 112);
    v215 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 96);
    v216 = v139;
    v140 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 16);
    v209 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row);
    v210 = v140;
    v141 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 48);
    v211 = *(v135 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 32);
    v212 = v141;
    v142 = v207[0];
    v143 = v207[2];
    *(v136 + 128) = v207[1];
    *(v136 + 144) = v143;
    v144 = v203;
    v145 = v205;
    v146 = v206;
    *(v136 + 64) = v204;
    *(v136 + 80) = v145;
    *(v136 + 96) = v146;
    *(v136 + 112) = v142;
    v147 = v201;
    v148 = v202;
    *v136 = v200;
    *(v136 + 16) = v147;
    v219 = *(v136 + 160);
    *(v136 + 160) = v208;
    *(v136 + 32) = v148;
    *(v136 + 48) = v144;
    v149 = v127;
    sub_20B520158(&v209, &qword_27C762340, &unk_20C150290);
    v150 = swift_unknownObjectWeakLoadStrong();
    if (v150)
    {
      v151 = v150;
      v152 = v185;
      if (!*(v150 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
      {
        sub_20B61CFD8(v135, v150);
        if (v157)
        {
          v159 = v156;
          v160 = v157;
          v161 = v158;
          sub_20B5E2E18();
          v162 = sub_20C13D374();
          v164 = v170;
          v163 = v171;
          *v170 = v162;
          v165 = v172;
          (*(v163 + 104))(v164, *MEMORY[0x277D85200], v172);
          v166 = sub_20C13C584();
          (*(v163 + 8))(v164, v165);
          if ((v166 & 1) == 0)
          {
LABEL_48:
            __break(1u);
            return;
          }

          v152 = v185;
          if ((v168 & 0x80) != 0)
          {
            sub_20C10A83C(v192, v159, v168 & 1, v151);
          }

          else
          {
            sub_20B62060C(v159, v160, v161, v192, v168 & 1, v151);
          }

          swift_unknownObjectRelease();

          goto LABEL_44;
        }

        sub_20C0C2D50(0);
      }

      swift_unknownObjectRelease();
    }

    else
    {

      v152 = v185;
    }

LABEL_44:
    (*(v178 + 8))(v177, v179);
    v173(v176, v152);
    sub_20B520158(v187, &qword_27C762AC0, &qword_20C14FC90);
    (*(v193 + 8))(v186, v191);
    return;
  }

  sub_20B520158(v57, &qword_27C76EAD0, &unk_20C1664E0);
  v200 = 0uLL;
  LOBYTE(v201) = 1;
  *(&v201 + 1) = 0;
  *&v202 = 0;
  WORD4(v202) = 128;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  LOBYTE(v206) = 0;
  *(&v206 + 1) = MEMORY[0x277D84F90];
  *&v207[0] = MEMORY[0x277D84F90];
  *(v207 + 8) = 0u;
  *(&v207[1] + 8) = 0u;
  *(&v207[2] + 1) = 0;
  v208 = 2;
  nullsub_1();
  v58 = v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row;
  v59 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 144);
  v217 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 128);
  v218 = v59;
  v60 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 80);
  v213 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 64);
  v214 = v60;
  v61 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 112);
  v215 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 96);
  v216 = v61;
  v62 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 16);
  v209 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row);
  v210 = v62;
  v63 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 48);
  v211 = *(v46 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 32);
  v212 = v63;
  v64 = v207[0];
  v65 = v207[2];
  *(v58 + 128) = v207[1];
  *(v58 + 144) = v65;
  v66 = v203;
  v67 = v205;
  v68 = v206;
  *(v58 + 64) = v204;
  *(v58 + 80) = v67;
  *(v58 + 96) = v68;
  *(v58 + 112) = v64;
  v69 = v201;
  v70 = v202;
  *v58 = v200;
  *(v58 + 16) = v69;
  v219 = *(v58 + 160);
  *(v58 + 160) = v208;
  *(v58 + 32) = v70;
  *(v58 + 48) = v66;
  sub_20B520158(&v209, &qword_27C762340, &unk_20C150290);
  v71 = swift_unknownObjectWeakLoadStrong();
  if (v71)
  {
    if (*(v71 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
LABEL_36:
      swift_unknownObjectRelease();
      return;
    }

    v72 = v71;
    sub_20B61CFD8(v46, v71);
    if (!v74)
    {
      sub_20C0C2D50(0);
      goto LABEL_36;
    }

    v76 = v73;
    v77 = v74;
    v78 = v75;
    sub_20B5E2E18();
    v79 = sub_20C13D374();
    v81 = v170;
    v80 = v171;
    *v170 = v79;
    v82 = v172;
    (*(v80 + 104))(v81, *MEMORY[0x277D85200], v172);
    v83 = sub_20C13C584();
    (*(v80 + 8))(v81, v82);
    if (v83)
    {
      sub_20B62060C(v76, v77, v78, v46, 0, v72);

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_47;
  }
}

uint64_t sub_20B99D618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a2;
  v31 = a3;
  v33 = a5;
  v32 = sub_20C133594();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C133154();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C132E94();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133014();
  sub_20C133564();
  (*(v10 + 8))(v12, v9);
  v17 = a1;
  v18 = sub_20BAB34C8(v16);
  v20 = v19;
  if (sub_20C133534())
  {
    v21 = v29;
    sub_20B520158(v29, &qword_27C762AC0, &qword_20C14FC90);
    (*(v14 + 32))(v21, v16, v13);
    (*(v14 + 56))(v21, 0, 1, v13);
    v22 = 2;
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    v22 = 1;
  }

  v23 = v17;
  v24 = v32;
  (*(v6 + 16))(v8, v23, v32);
  v25 = v33;
  (*(v6 + 32))(v33, v8, v24);
  result = type metadata accessor for DatePickerItem(0);
  v27 = (v25 + *(result + 20));
  *v27 = v18;
  v27[1] = v20;
  *(v25 + *(result + 24)) = v22;
  return result;
}

uint64_t sub_20B99D91C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20C133134();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CC9968], v3, v5);
  sub_20C1330F4();
  return (*(v4 + 8))(v7, v3);
}

BOOL sub_20B99DA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C133134();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC99B8], v4, v6);
  sub_20C133144();
  (*(v5 + 8))(v8, v4);
  v9 = sub_20C133024();
  v10 = sub_20B99C274(*(a3 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_availableWeekdays));
  v11 = *(v10 + 16);
  v12 = 32;
  do
  {
    v13 = v11;
    if (v11-- == 0)
    {
      break;
    }

    v15 = *(v10 + v12);
    v12 += 8;
  }

  while (v15 != v9);
  v16 = v13 != 0;

  return v16;
}

uint64_t sub_20B99DBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C133154();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C132E94();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  return sub_20C133554();
}

uint64_t sub_20B99DD30()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_selectedDay, &qword_27C76EAD0, &unk_20C1664E0);

  v8 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_currentDate;
  v9 = sub_20C132E94();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanReviewHeaderShelf(uint64_t a1)
{
  result = qword_27C768558;
  if (!qword_27C768558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B99DEF8(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B99E02C(319);
    if (v2 <= 0x3F)
    {
      sub_20C132E94();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B99E02C(uint64_t a1)
{
  if (!qword_27C768568)
  {
    sub_20C133594();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C768568);
    }
  }
}

uint64_t sub_20B99E084@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B99E0FC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B99E1C8(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_row;
  sub_20B5D8060(v13);
  v4 = v13[9];
  *(v3 + 128) = v13[8];
  *(v3 + 144) = v4;
  *(v3 + 160) = v14;
  v5 = v13[5];
  *(v3 + 64) = v13[4];
  *(v3 + 80) = v5;
  v6 = v13[7];
  *(v3 + 96) = v13[6];
  *(v3 + 112) = v6;
  v7 = v13[1];
  *v3 = v13[0];
  *(v3 + 16) = v7;
  v8 = v13[3];
  *(v3 + 32) = v13[2];
  *(v3 + 48) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_selectedDay;
  v10 = sub_20C133594();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  sub_20C132E64();
  *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_availableWeekdays) = a1;
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_workoutPlanStringBuilder) = v12;
  return v1;
}

uint64_t sub_20B99E314(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0, &unk_20C1664E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for DatePickerItem(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B78669C(v15, v12);
    v16 = sub_20C133594();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v9, v12, v16);
    (*(v17 + 56))(v9, 0, 1, v16);
    v18 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanReviewHeaderShelf_selectedDay;
    swift_beginAccess();
    sub_20B99E650(v9, v1 + v18);
    swift_endAccess();
    sub_20B99C498(128);
    v19 = type metadata accessor for DatePickerItem;
    v20 = v12;
  }

  else
  {
    sub_20C13B534();
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20B517000, v21, v22, "[WorkoutPlanSurveyLengthPickerShelf] Unexpected shelf item action", v23, 2u);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v19 = type metadata accessor for ShelfItemAction;
    v20 = v15;
  }

  return sub_20B99E6C0(v20, v19);
}

uint64_t sub_20B99E650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0, &unk_20C1664E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B99E6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20B99E7D8()
{
  v1 = v0;
  v2 = type metadata accessor for FilterOptionsViewController();
  v44.receiver = v0;
  v44.super_class = v2;
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v41 = objc_opt_self();
    v5 = [v41 systemBackgroundColor];
    [v4 setBackgroundColor_];

    v6 = [v1 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationBar];

      [v8 setBarStyle_];
    }

    v9 = [v1 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationBar];

      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      [v11 setTintColor_];
    }

    [v1 updateTitleView];
    v13 = &off_277D9A000;
    v14 = [v1 navigationItem];
    v15 = &v1[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_storefrontLocalizer];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_storefrontLocalizer], *&v1[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_storefrontLocalizer + 24]);
    sub_20C138D34();
    v43 = v2;
    v42[0] = v1;
    v16 = v1;
    v17 = sub_20C13C914();

    if (v2)
    {
      v18 = __swift_project_boxed_opaque_existential_1(v42, v43);
      v19 = *(v2 - 1);
      v20 = MEMORY[0x28223BE20](v18);
      v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v22, v20);
      v23 = sub_20C13DFD4();
      (*(v19 + 8))(v22, v2);
      v13 = &off_277D9A000;
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    else
    {
      v23 = 0;
    }

    v24 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v17 style:0 target:v23 action:sel_onCancel];

    swift_unknownObjectRelease();
    [v14 setLeftBarButtonItem_];

    v25 = [v16 v13[404]];
    __swift_project_boxed_opaque_existential_1(v15, *(v15 + 3));
    sub_20C138D34();
    v43 = v2;
    v42[0] = v16;
    v26 = v16;
    v27 = sub_20C13C914();

    v28 = v43;
    if (v43)
    {
      v29 = __swift_project_boxed_opaque_existential_1(v42, v43);
      v30 = *(v28 - 8);
      v31 = MEMORY[0x28223BE20](v29);
      v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v33, v31);
      v34 = sub_20C13DFD4();
      (*(v30 + 8))(v33, v28);
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    else
    {
      v34 = 0;
    }

    v35 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v27 style:2 target:v34 action:sel_onDone];

    swift_unknownObjectRelease();
    [v25 setRightBarButtonItem_];

    sub_20B795584(0);
    sub_20B7962C4();
    v36 = *&v26[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_dataProvider];
    [*(*(v36 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    v37 = *(*(v36 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v38 = [v41 systemBackgroundColor];
    [v37 setBackgroundColor_];

    v39 = [objc_opt_self() defaultCenter];
    [v39 addObserver:v26 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_20B99EFB0(char a1, double a2)
{
  v3 = v2;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for FilterOptionsViewController();
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  v5 = [v3 navigationController];
  if (v5)
  {
    v6 = v5;
    if ([v5 isBeingDismissed])
    {
      sub_20B526824(&qword_27C7685C8, v7, type metadata accessor for FilterOptionsViewController, &unk_20C166560);
      sub_20C138C64();
      sub_20C138C74();
    }
  }
}

void sub_20B99F150()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_titleLabel];

  v2 = sub_20C13C914();

  [v1 setText_];

  [v1 sizeToFit];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_subtitleLabel];

  v4 = sub_20C13C914();

  [v3 setText_];

  [v3 sizeToFit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C151490;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
  v6 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B5E5C28();
  v7 = v1;
  v8 = v3;
  v9 = sub_20C13CC54();

  v10 = [v6 initWithArrangedSubviews_];

  [v10 setAxis_];
  [v10 setSpacing_];
  [v10 setAlignment_];
  v11 = [v0 navigationItem];
  [v11 setTitleView_];
}

void sub_20B99F394()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v13 = v1;
  [v13 preferredContentSize];
  v3 = v2;
  v5 = v4;
  [*(*(*&v0[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_dataProvider] + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentSize];
  v7 = v6 + 20.0;
  v8 = v13;
  if (v7 > 20.0)
  {
    if (v3 != 540.0 || (v8 = v13, v7 != v5))
    {
      [v13 setPreferredContentSize_];
      v9 = [v13 view];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 superview];

        [v11 setNeedsLayout];
        v12 = [v13 view];

        if (v12)
        {
          v8 = [v12 superview];

          [v8 layoutIfNeeded];
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

LABEL_8:
}

uint64_t sub_20B99F554()
{
  v0 = sub_20C1391E4();
  v1 = *(v0 - 8);
  v82 = v0;
  v83 = v1;
  MEMORY[0x28223BE20](v0);
  v81 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C134C44();
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v64 - v14;
  v15 = sub_20C135D24();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x28223BE20](v15);
  v67 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C134F74();
  v75 = *(v17 - 8);
  v76 = v17;
  MEMORY[0x28223BE20](v17);
  v73 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v72 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v21 - 8);
  v65 = &v64 - v22;
  v64 = sub_20C1352E4();
  v23 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v64 - v30;
  v32 = sub_20C134F24();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v64 - v37;
  v39 = sub_20C133654();
  v66 = *(v39 - 8);
  v40 = v66;
  MEMORY[0x28223BE20](v39);
  v84 = &v64 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C136664();
  (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
  (*(v33 + 104))(v35, *MEMORY[0x277D51460], v32);
  v43 = sub_20C132C14();
  (*(*(v43 - 8) + 56))(v31, 1, 1, v43);
  v44 = sub_20C135ED4();
  (*(*(v44 - 8) + 56))(v28, 1, 1, v44);
  (*(v23 + 104))(v25, *MEMORY[0x277D51768], v64);
  v45 = sub_20C136E94();
  (*(*(v45 - 8) + 56))(v65, 1, 1, v45);
  v46 = v84;
  sub_20C133644();
  v47 = *(v40 + 16);
  v48 = v67;
  v47(v67, v46, v39);
  (*(v68 + 104))(v48, *MEMORY[0x277D52120], v69);
  v49 = v78;
  v50 = v70;
  sub_20B98019C(v70);
  v51 = sub_20C1333A4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = sub_20C135664();
  (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
  v53 = sub_20C135674();
  (*(*(v53 - 8) + 56))(v74, 1, 1, v53);
  v54 = v77;
  sub_20C134F94();
  v55 = sub_20C134FB4();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v56 - 8) + 56))(v79, 1, 1, v56);
  v57 = sub_20C135F14();
  (*(*(v57 - 8) + 56))(v80, 1, 1, v57);
  v58 = v72;
  sub_20C134F54();
  v60 = v75;
  v59 = v76;
  (*(v75 + 16))(v73, v58, v76);
  v61 = v81;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B526824(&qword_281103B30, 255, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v62 = v82;
  sub_20C13A764();
  [v49 dismissViewControllerAnimated:1 completion:0];
  (*(v83 + 8))(v61, v62);
  (*(v60 + 8))(v58, v59);
  return (*(v66 + 8))(v84, v39);
}

uint64_t sub_20B9A00F4()
{
  v0 = sub_20C1391E4();
  v1 = *(v0 - 8);
  v84 = v0;
  v85 = v1;
  MEMORY[0x28223BE20](v0);
  v83 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C134C44();
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v64 - v14;
  v15 = sub_20C135D24();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v69 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C134F74();
  v77 = *(v17 - 8);
  v78 = v17;
  MEMORY[0x28223BE20](v17);
  v75 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v74 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v21 - 8);
  v66 = &v64 - v22;
  v65 = sub_20C1352E4();
  v23 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v64 - v30;
  v32 = sub_20C134F24();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v64 - v37;
  v39 = sub_20C133654();
  v40 = *(v39 - 8);
  v67 = v39;
  v68 = v40;
  MEMORY[0x28223BE20](v39);
  v86 = &v64 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C136664();
  (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
  (*(v33 + 104))(v35, *MEMORY[0x277D51420], v32);
  v43 = sub_20C132C14();
  (*(*(v43 - 8) + 56))(v31, 1, 1, v43);
  v44 = sub_20C135ED4();
  (*(*(v44 - 8) + 56))(v28, 1, 1, v44);
  (*(v23 + 104))(v25, *MEMORY[0x277D51768], v65);
  v45 = sub_20C136E94();
  (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
  v46 = v86;
  sub_20C133644();
  v47 = *(v40 + 16);
  v48 = v69;
  v47(v69, v46, v39);
  (*(v70 + 104))(v48, *MEMORY[0x277D52120], v71);
  v49 = v80;
  v50 = v72;
  sub_20B98019C(v72);
  v51 = sub_20C1333A4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = sub_20C135664();
  (*(*(v52 - 8) + 56))(v73, 1, 1, v52);
  v53 = sub_20C135674();
  (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
  v54 = v79;
  sub_20C134F94();
  v55 = sub_20C134FB4();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v56 - 8) + 56))(v81, 1, 1, v56);
  v57 = sub_20C135F14();
  (*(*(v57 - 8) + 56))(v82, 1, 1, v57);
  v58 = v74;
  sub_20C134F54();
  v60 = v77;
  v59 = v78;
  (*(v77 + 16))(v75, v58, v78);
  v61 = v83;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B526824(&qword_281103B30, 255, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v62 = v84;
  sub_20C13A764();
  swift_getObjectType();
  sub_20B747B8C();
  sub_20C13A764();
  [v49 dismissViewControllerAnimated:1 completion:0];
  (*(v85 + 8))(v61, v62);
  (*(v60 + 8))(v58, v59);
  return (*(v68 + 8))(v86, v67);
}

id sub_20B9A0DDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilterOptionsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B9A1004()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_visibility) = 1;
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_layout;
  *v1 = xmmword_20C166500;
  *(v1 + 16) = 0x4034000000000000;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_titleLabel;
  v7 = objc_opt_self();
  v8 = [v7 fontWithDescriptor:v3 size:0.0];

  [v2 setFont_];
  *(v0 + v6) = v2;
  v9 = OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_subtitleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v11 = [v7 preferredFontForTextStyle_];
  [v10 setFont_];

  *(v0 + v9) = v10;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B9A123C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  MEMORY[0x28223BE20](v12);
  v39 = &v36 - v14;
  v36 = v0;
  sub_20B5A35FC(v7);
  sub_20B51CC64(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_configurationClient, v43);
  v15 = swift_allocObject();
  sub_20B51C710(v43, v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B9A9C2C;
  *(v16 + 24) = v15;
  (*(v2 + 16))(v4, v7, v1);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = (v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v2 + 32))(v19 + v17, v4, v1);
  v20 = (v19 + v18);
  *v20 = sub_20B64B960;
  v20[1] = v16;
  sub_20C134104();
  v21 = v37;
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B9A9CA0;
  *(v23 + 24) = v22;
  v24 = v38;
  v25 = v40;
  (*(v8 + 16))(v38, v21, v40);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = swift_allocObject();
  (*(v8 + 32))(v27 + v26, v24, v25);
  v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_20B9A9CBC;
  v28[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v29 = v39;
  sub_20C137C94();
  (*(v8 + 8))(v21, v25);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = v41;
  v32 = v29;
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B9A9DB4;
  *(v34 + 24) = v30;

  v33(sub_20B52347C, v34);

  return (*(v42 + 8))(v32, v31);
}

void sub_20B9A1794(BOOL *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B9A1A38();
  }

  *a3 = Strong == 0;
}

void sub_20B9A1818(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v7 = *a1;
    v8 = v7;
    sub_20C13B444();
    v9 = v7;
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1D4();
    sub_20B583FB8(v7, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_20B517000, v10, v11, "TVUpNextQueueHeaderShelf: Error when updating row: %@", v12, 0xCu);
      sub_20B520158(v13, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v13, -1, -1);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_20B9A27C4();
      sub_20B583FB8(v7, 1);
    }

    else
    {
      sub_20B583FB8(v7, 1);
    }
  }
}

uint64_t sub_20B9A1A38()
{
  v1 = sub_20C13C554();
  v106 = *(v1 - 8);
  v107 = v1;
  MEMORY[0x28223BE20](v1);
  v105 = (&v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = &v104 - v4;
  v117 = type metadata accessor for ButtonAction(0);
  v113 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v108 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v116 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v104 - v9;
  v11 = sub_20C136F94();
  v119 = *(v11 - 8);
  v120 = v11;
  MEMORY[0x28223BE20](v11);
  v110 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v104 - v14;
  MEMORY[0x28223BE20](v16);
  v109 = &v104 - v17;
  v18 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueItems;

  v20 = sub_20BEF6FA4(v19);

  sub_20B71D954(v20);

  v21 = (v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v115 = sub_20C138544();

  v23 = sub_20BEF6FA4(v22);

  sub_20B71D860(v23);

  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v114 = sub_20C138544();

  v112 = v18;
  v24 = *(*(v0 + v18) + 16);
  v118 = v0;
  if (v24 == 1)
  {
    v25 = &unk_28228D950;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_remoteBrowsingSource), *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_remoteBrowsingSource + 24));
    sub_20C13B174();
    v26 = sub_20C136C64();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_20B520158(v10, &qword_27C768690, &unk_20C14FD90);
      v25 = &unk_28228D9A0;
    }

    else
    {
      sub_20C1369E4();
      (*(v27 + 8))(v10, v26);
      v29 = v119;
      v28 = v120;
      v30 = v109;
      (v119[4])(v109, v15, v120);
      v31 = v110;
      sub_20C136F34();
      sub_20B9A9BE4(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
      v32 = sub_20C13DA74();
      v33 = v29[1];
      v33(v31, v28);
      v33(v30, v28);
      if (v32)
      {
        v25 = &unk_28228D978;
      }

      else
      {
        v25 = &unk_28228D9A0;
      }
    }
  }

  v34 = v25[2];
  if (v34)
  {
    *&v133[0] = MEMORY[0x277D84F90];
    sub_20BB5E478(0, v34, 0);
    v119 = (v118 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer);
    v120 = v25;
    v35 = 32;
    v36 = *&v133[0];
    do
    {
      v37 = v36;
      v38 = *(v25 + v35);
      __swift_project_boxed_opaque_existential_1(v119, v119[3]);
      v39 = sub_20C138D34();
      v41 = v40;

      v42 = sub_20C13C914();
      v43 = [objc_opt_self() smm:v42 systemImageNamed:?];

      v36 = v37;
      *&v133[0] = v37;
      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        sub_20BB5E478((v44 > 1), v45 + 1, 1);
        v36 = *&v133[0];
      }

      v36[2] = v45 + 1;
      v46 = &v36[4 * v45];
      v46[4] = v39;
      v46[5] = v41;
      v46[6] = v43;
      *(v46 + 56) = v38;
      ++v35;
      --v34;
      v25 = v120;
    }

    while (v34);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v47 = v118;
  v48 = *(v118 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState);
  v49 = v116;
  v50 = v114;
  v119 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState;
  v120 = v36;
  if (v48)
  {
    LODWORD(v112) = v48 == 1;
    __swift_project_boxed_opaque_existential_1((v118 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer), *(v118 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer + 24));
    v55 = sub_20C138D34();
    v57 = v56;
    type metadata accessor for ButtonAction.ActionType(0);
  }

  else
  {
    LODWORD(v112) = *(*(v118 + v112) + 16) != 0;
    v51 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_marketingOffer;
    swift_beginAccess();
    v52 = v111;
    sub_20B52F9E8(v47 + v51, v111, &unk_27C768660, &unk_20C152F60);
    v53 = sub_20C019B20(v52);
    sub_20B520158(v52, &unk_27C768660, &unk_20C152F60);
    if (*(v53 + 16))
    {
      v54 = v108;
      sub_20B9A9B7C(v53 + ((*(v113 + 80) + 32) & ~*(v113 + 80)), v108, type metadata accessor for ButtonAction);

      sub_20B9A99BC(v54, v49, type metadata accessor for ButtonAction);
      goto LABEL_20;
    }

    __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer), *(v47 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer + 24));
    v55 = sub_20C138D34();
    v57 = v103;
    type metadata accessor for ButtonAction.ActionType(0);
  }

  swift_storeEnumTagMultiPayload();
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = v55;
  *(v49 + 40) = v57;
LABEL_20:
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768198, &unk_20C166920);
  v59 = swift_allocBox();
  v61 = v60;
  v62 = v58[20];
  v63 = v58[24];
  v64 = *(v47 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_title + 8);
  *v60 = *(v47 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_title);
  *(v60 + 1) = v64;

  v65 = [v50 string];
  v66 = sub_20C13C954();
  v68 = v67;

  *(v61 + 2) = v66;
  *(v61 + 3) = v68;
  v69 = [v115 string];
  v70 = sub_20C13C954();
  v72 = v71;

  *(v61 + 4) = v70;
  *(v61 + 5) = v72;
  v73 = v118;
  v74 = v116;
  sub_20B9A9B7C(v116, &v61[v62], type metadata accessor for ButtonAction);
  (*(v113 + 56))(&v61[v62], 0, 1, v117);
  v75 = v119;
  *&v61[v63] = v120;
  v76 = v58[32];
  v61[v58[28]] = *(v75 + v73) == 0;
  v61[v76] = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_20C14F980;
  *(v77 + 32) = v59 | 0x7000000000000006;
  v124 = 0uLL;
  LOBYTE(v125) = 1;
  *(&v125 + 1) = *v123;
  DWORD1(v125) = *&v123[3];
  *(&v125 + 1) = 0;
  *&v126 = 0;
  WORD4(v126) = 128;
  *(&v126 + 10) = *&v121[7];
  HIWORD(v126) = v122;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  LOBYTE(v130) = 0;
  *(&v130 + 1) = *v121;
  DWORD1(v130) = *&v121[3];
  *(&v130 + 1) = v77;
  *&v131[0] = MEMORY[0x277D84F90];
  *(v131 + 8) = 0u;
  *(&v131[1] + 8) = 0u;
  *(&v131[2] + 1) = 0;
  v132 = 2;
  nullsub_1();
  v78 = v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row;
  v79 = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 144);
  v133[8] = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 128);
  v133[9] = v79;
  v134 = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 160);
  v80 = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 80);
  v133[4] = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 64);
  v133[5] = v80;
  v81 = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 112);
  v133[6] = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 96);
  v133[7] = v81;
  v82 = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 16);
  v133[0] = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row);
  v133[1] = v82;
  v83 = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 48);
  v133[2] = *(v73 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 32);
  v133[3] = v83;
  v84 = v131[2];
  *(v78 + 128) = v131[1];
  *(v78 + 144) = v84;
  *(v78 + 160) = v132;
  v85 = v129;
  *(v78 + 64) = v128;
  *(v78 + 80) = v85;
  v86 = v131[0];
  *(v78 + 96) = v130;
  *(v78 + 112) = v86;
  v87 = v125;
  *v78 = v124;
  *(v78 + 16) = v87;
  v88 = v127;
  *(v78 + 32) = v126;
  *(v78 + 48) = v88;

  sub_20B520158(v133, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_23:

    return sub_20B9A9AE4(v74, type metadata accessor for ButtonAction);
  }

  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v90 = Strong;
  sub_20B61DB08(v73, Strong);
  if (!v92)
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v94 = v91;
  v95 = v92;
  v96 = v93;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v97 = sub_20C13D374();
  v99 = v105;
  v98 = v106;
  *v105 = v97;
  v100 = v107;
  (*(v98 + 104))(v99, *MEMORY[0x277D85200], v107);
  v101 = sub_20C13C584();
  result = (*(v98 + 8))(v99, v100);
  if (v101)
  {
    sub_20B6210AC(v94, v95, v96, v118, 1, v90);

    swift_unknownObjectRelease();

LABEL_29:

    v74 = v116;
    return sub_20B9A9AE4(v74, type metadata accessor for ButtonAction);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B9A27C4()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ButtonAction(0);
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B71D860(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_mediaTagStringBuilder + 24));
  v8 = sub_20C138544();

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer + 24));
  v9 = sub_20C138D34();
  v11 = v10;
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = v9;
  *(v7 + 5) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768198, &unk_20C166920);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = v12[20];
  v17 = v12[24];
  v18 = v12[28];
  v58 = v12[32];
  v59 = v18;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_title + 8);
  *v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_title);
  *(v14 + 8) = v19;
  *(v14 + 16) = xmmword_20C166710;

  v62 = v8;
  v20 = [v8 string];
  v21 = sub_20C13C954();
  v23 = v22;

  *(v15 + 32) = v21;
  *(v15 + 40) = v23;
  v24 = v7;
  v25 = v13;
  sub_20B9A9B7C(v24, v15 + v16, type metadata accessor for ButtonAction);
  (*(v61 + 7))(v15 + v16, 0, 1, v60);
  v26 = MEMORY[0x277D84F90];
  *(v15 + v17) = MEMORY[0x277D84F90];
  v27 = v58;
  *(v15 + v59) = 1;
  *(v15 + v27) = 0;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C14F980;
  *(v29 + 32) = v25 | 0x7000000000000006;
  v66 = 0uLL;
  LOBYTE(v67) = 1;
  *(&v67 + 1) = *v65;
  DWORD1(v67) = *&v65[3];
  *(&v67 + 1) = 0;
  *&v68 = 0;
  WORD4(v68) = 128;
  *(&v68 + 10) = *&v63[7];
  HIWORD(v68) = v64;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  LOBYTE(v72) = 0;
  *(&v72 + 1) = *v63;
  DWORD1(v72) = *&v63[3];
  *(&v72 + 1) = v29;
  *&v73[0] = v26;
  *(v73 + 8) = 0u;
  *(&v73[1] + 8) = 0u;
  *(&v73[2] + 1) = 0;
  v74 = 2;
  nullsub_1();
  v30 = v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 144);
  v75[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 128);
  v75[9] = v31;
  v76 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 160);
  v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 80);
  v75[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 64);
  v75[5] = v32;
  v33 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 112);
  v75[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 96);
  v75[7] = v33;
  v34 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 16);
  v75[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row);
  v75[1] = v34;
  v35 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 48);
  v75[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 32);
  v75[3] = v35;
  v36 = v73[0];
  v37 = v73[2];
  *(v30 + 128) = v73[1];
  *(v30 + 144) = v37;
  *(v30 + 160) = v74;
  v38 = v71;
  *(v30 + 64) = v70;
  *(v30 + 80) = v38;
  *(v30 + 96) = v72;
  *(v30 + 112) = v36;
  v39 = v67;
  *v30 = v66;
  *(v30 + 16) = v39;
  v40 = v69;
  *(v30 + 32) = v68;
  *(v30 + 48) = v40;

  sub_20B520158(v75, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_5;
  }

  v42 = v62;
  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    swift_unknownObjectRelease();

LABEL_5:

    return sub_20B9A9AE4(v24, type metadata accessor for ButtonAction);
  }

  v61 = Strong;
  sub_20B61DB08(v1, Strong);
  if (!v45)
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();

    return sub_20B9A9AE4(v24, type metadata accessor for ButtonAction);
  }

  v47 = v45;
  v48 = v46;
  v49 = v44;
  v60 = v25;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v50 = sub_20C13D374();
  v51 = v55;
  v52 = v56;
  *v55 = v50;
  v53 = v57;
  (*(v52 + 104))(v51, *MEMORY[0x277D85200], v57);
  v54 = sub_20C13C584();
  result = (*(v52 + 8))(v51, v53);
  if (v54)
  {
    sub_20B6210AC(v49, v47, v48, v28, 1, v61);

    swift_unknownObjectRelease();

    return sub_20B9A9AE4(v24, type metadata accessor for ButtonAction);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B9A2D8C()
{
  v1 = type metadata accessor for PageAlertAction(0);
  v2 = (v1 - 8);
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = (v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer + 24));
  v10 = sub_20C138D34();
  v12 = v11;
  sub_20C132ED4();
  v13 = &v8[v2[8]];
  *v13 = v10;
  v13[1] = v12;
  v8[v2[7]] = 2;
  v14 = &v8[v2[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v15 = sub_20C138D34();
  v17 = v16;
  v18 = swift_allocObject();
  swift_weakInit();
  sub_20C132ED4();
  v19 = &v5[v2[8]];
  *v19 = v15;
  v19[1] = v17;
  v5[v2[7]] = 1;
  v20 = &v5[v2[9]];
  *v20 = sub_20B9A9ADC;
  v20[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
  v21 = *(v3 + 72);
  v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F320;
  v24 = v23 + v22;
  sub_20B9A9B7C(v8, v24, type metadata accessor for PageAlertAction);
  sub_20B9A9B7C(v5, v24 + v21, type metadata accessor for PageAlertAction);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v25 = sub_20C138D34();
  v27 = v26;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    type metadata accessor for DefaultPageAlertPresenter();
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    swift_unknownObjectWeakInit();
    v31 = MEMORY[0x277D84F90];
    *(v30 + 32) = v23;
    *(v30 + 40) = v31;
    *(v30 + 48) = v25;
    *(v30 + 56) = v27;
    *(v30 + 64) = 0;
    *(v30 + 72) = 0;
    *(v30 + 80) = 1;
    *(v30 + 88) = 0;
    v32 = v29 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      (*(v33 + 224))(v29, v30, &off_2822DD358, ObjectType, v33);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  sub_20B9A9AE4(v5, type metadata accessor for PageAlertAction);
  return sub_20B9A9AE4(v8, type metadata accessor for PageAlertAction);
}

uint64_t sub_20B9A3180(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = v10;
    sub_20B51CC64(result + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueClient, v25);

    v24 = v11;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_20C139724();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_20B9A9B44;
    *(v15 + 24) = a2;
    (*(v4 + 16))(v6, v9, v3);
    v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v4 + 32))(v18 + v16, v6, v3);
    v19 = (v18 + v17);
    *v19 = sub_20B87619C;
    v19[1] = v15;

    sub_20C137C94();
    (*(v4 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v20 = v23;
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v21(sub_20B5DF6DC, v22);

    return (*(v24 + 8))(v13, v20);
  }

  return result;
}

double sub_20B9A34E0()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer + 24));
  v2 = sub_20C138D34();
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = sub_20C138D34();
  v7 = v6;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v8 = sub_20C138D34();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v11 = sub_20C138D34();
  v25 = v12;
  v26 = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772010, &unk_20C166910);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20C1517D0;
  *(v14 + 56) = &type metadata for TrimLeadingWhitespaceFilter;
  *(v14 + 64) = &off_2822B8960;
  *(v14 + 96) = &type metadata for MaxLengthFilter;
  *(v14 + 104) = &off_2822B8BF0;
  *(v14 + 72) = 40;
  *(v14 + 136) = &type metadata for MaxBytesFilter;
  *(v14 + 144) = &off_2822E2930;
  *(v14 + 112) = 99;
  type metadata accessor for SanitizingTextInputPresenter();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *&v28 = v2;
  *(&v28 + 1) = v4;
  *&v29 = v5;
  *(&v29 + 1) = v7;
  v30 = 0uLL;
  *&v31 = v8;
  *(&v31 + 1) = v10;
  *&v32 = sub_20B9A9A24;
  *(&v32 + 1) = v13;
  v33[0] = v2;
  v33[1] = v4;
  v33[2] = v5;
  v33[3] = v7;
  v33[4] = 0;
  v33[5] = 0;
  v33[6] = v8;
  v33[7] = v10;
  v33[8] = sub_20B9A9A24;
  v33[9] = v13;

  sub_20B9A9A2C(&v28, v27);
  sub_20B9A9A88(v33);
  v16 = v31;
  *(v15 + 64) = v30;
  *(v15 + 80) = v16;
  *(v15 + 96) = v32;
  v17 = v29;
  *(v15 + 32) = v28;
  *(v15 + 48) = v17;
  *(v15 + 112) = v14;
  *(v15 + 120) = v26;
  *(v15 + 128) = v25;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 240);

      v23(v19, v15, &off_2822EEEA0, ObjectType, v21);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

double sub_20B9A3834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B9A38A8(a1, a2);
  }

  return result;
}

void sub_20B9A38A8(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v69 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766758, &unk_20C15D280);
  MEMORY[0x28223BE20](v98);
  v97 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = v67 - v5;
  v95 = sub_20C133B74();
  v99 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764690, &unk_20C1560A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v73 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v71 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = v67 - v17;
  v68 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = v67 - v20;
  v22 = sub_20C132E94();
  MEMORY[0x28223BE20](v22 - 8);
  v67[1] = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_20C138204();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v82 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(v2 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueItems);
  swift_bridgeObjectRetain_n();
  sub_20B9A766C(&v101);
  v76 = v21;
  v77 = v12;
  v83 = v2;
  v78 = v8;
  v79 = v7;
  v80 = v14;
  v84 = v13;

  v25 = v101;
  v26 = *(v101 + 16);
  if (v26)
  {
    v101 = MEMORY[0x277D84F90];
    sub_20BB5E4B0(0, v26, 0);
    v27 = v101;
    v93 = *(v25 + 16);
    v28 = sub_20C134B14();
    v29 = 0;
    v30 = *(v28 - 8);
    v88 = v25 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v89 = v30;
    v90 = v28;
    v86 = v30 + 32;
    v87 = v30 + 16;
    v85 = v99 + 32;
    v91 = v26;
    v92 = v25;
    v31 = v97;
    while (v93 != v29)
    {
      if (v29 >= *(v25 + 16))
      {
        goto LABEL_12;
      }

      v100 = v27;
      v32 = v98;
      v33 = *(v98 + 48);
      v34 = v89;
      v35 = v96;
      v36 = v90;
      (*(v89 + 16))(&v96[v33], v88 + *(v89 + 72) * v29, v90);
      *v31 = v29;
      (*(v34 + 32))(&v31[*(v32 + 48)], &v35[v33], v36);
      sub_20C134AB4();
      sub_20C134AC4();
      sub_20C134B04();
      sub_20C134AF4();
      v27 = v100;
      v37 = v94;
      sub_20C133B14();
      sub_20B520158(v31, &qword_27C766758, &unk_20C15D280);
      v101 = v27;
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_20BB5E4B0((v38 > 1), v39 + 1, 1);
        v27 = v101;
      }

      ++v29;
      *(v27 + 16) = v39 + 1;
      (*(v99 + 32))(v27 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v39, v37, v95);
      v26 = v91;
      v25 = v92;
      if (v91 == v29)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);

    __break(1u);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
LABEL_10:

    sub_20B717280(v27);

    sub_20C13CA04();
    sub_20C132E84();
    sub_20C138194();
    __swift_project_boxed_opaque_existential_1((v83 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_bookmarkClient), *(v83 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_bookmarkClient + 24));
    v40 = v81;
    sub_20C13A1A4();
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_20B9A9844;
    *(v42 + 24) = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_20B9A984C;
    *(v43 + 24) = v42;
    v44 = v80;
    v98 = *(v80 + 16);
    v45 = v71;
    (v98)(v71, v40, v84);
    v46 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v99 = v46 + v68;
    v97 = v46;
    v47 = (v46 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v96 = *(v44 + 32);
    v49 = v48 + v46;
    v50 = v84;
    (v96)(v49, v45, v84);
    v51 = (v48 + v47);
    *v51 = sub_20B9A987C;
    v51[1] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698, &unk_20C15F7C0);
    v52 = v77;
    sub_20C137C94();
    v100 = *(v44 + 8);
    v100(v40, v50);
    sub_20B9A4980();
    v53 = v50;
    (v98)(v45, v40, v50);
    v54 = swift_allocObject();
    v55 = v53;
    (v96)(&v97[v54], v45, v53);
    v56 = v78;
    v57 = v73;
    v58 = v79;
    (*(v78 + 16))(v73, v52, v79);
    v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v60 = (v72 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    (*(v56 + 32))(v61 + v59, v57, v58);
    v62 = (v61 + v60);
    *v62 = sub_20B9A98AC;
    v62[1] = v54;
    v63 = v76;
    sub_20C137C94();
    v64 = v100;
    v100(v81, v55);
    (*(v56 + 8))(v52, v58);
    v65 = sub_20C137CB4();
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    v65(sub_20B5DF6DC, v66);

    v64(v63, v55);
    (*(v74 + 8))(v82, v75);
  }
}

uint64_t sub_20B9A4358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueClient, v20);

    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_20C139724();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_20B9A995C;
    *(v12 + 24) = a1;
    (*(v5 + 16))(v7, v10, v4);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v13, v7, v4);
    v16 = (v15 + v14);
    *v16 = sub_20B875FF0;
    v16[1] = v12;

    sub_20C137C94();
    (*(v5 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  return (*(*(v18 - 8) + 56))(a2, v17, 1, v18);
}

void sub_20B9A460C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v29 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v28 = &v25 - v8;
  v32 = sub_20C1351C4();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v25 = a2;
    v26 = v7;
    v27 = v4;
    v35[0] = MEMORY[0x277D84F90];
    sub_20BB5E19C(0, v13, 0);
    v14 = v35[0];
    v36 = sub_20C134B14();
    v15 = *(v36 - 8);
    v16 = *(v15 + 16);
    v33 = v15 + 16;
    v34 = v16;
    v17 = v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = *(v15 + 72);
    do
    {
      v34(v11, v17, v36);
      swift_storeEnumTagMultiPayload();
      v35[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_20BB5E19C((v19 > 1), v20 + 1, 1);
        v14 = v35[0];
      }

      *(v14 + 16) = v20 + 1;
      sub_20B9A99BC(v11, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, MEMORY[0x277D51638]);
      v17 += v18;
      --v13;
    }

    while (v13);
    v7 = v26;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueClient, v35);

    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v22 = v28;
    sub_20C139734();

    v23 = sub_20C137CB4();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v23(v31, v24);

    (*(v30 + 8))(v22, v7);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
  }
}

uint64_t sub_20B9A4980()
{
  v1 = [objc_allocWithZone(SMUBulletinInfo) init];
  v2 = sub_20C13C914();
  [v1 setImageSymbolName_];

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer + 24));
  sub_20C138D34();
  v3 = sub_20C13C914();

  [v1 setTitle_];

  *(swift_allocObject() + 16) = v1;

  return sub_20C137C94();
}

double sub_20B9A4AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_opt_self();

  v8 = [v7 sharedBulletinService];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20B5D9B44;
  *(v9 + 24) = v6;
  v12[4] = sub_20B9A983C;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_20B9A4CA0;
  v12[3] = &block_descriptor_61;
  v10 = _Block_copy(v12);

  [v8 presentBulletinWithInfo:a3 withCompletion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
  return result;
}

void sub_20B9A4C0C(char a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    a3(v4, v5);
    sub_20B583FB8(v4, v5);
  }

  else
  {
    a3(a2, 1);
  }
}

void sub_20B9A4CA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_20B9A4D18(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_20C1352E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134F24();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v16 = *(v11 + 104);
  if (a1)
  {
    v17 = 0x6174537261656C63;
    v18 = MEMORY[0x277D51430];
    if (a1 != 1)
    {
      v18 = MEMORY[0x277D513D8];
      v17 = 0x6361745374696465;
    }

    v26 = v17;
  }

  else
  {
    v26 = 0x6361745365766173;
    v18 = MEMORY[0x277D51400];
  }

  v19 = *v18;
  v27 = v12;
  v16(v15, v19, v12, v13);
  (*(v7 + 104))(v9, *MEMORY[0x277D51768], v6);
  v20 = *MEMORY[0x277D523D8];
  v21 = sub_20C135ED4();
  v22 = *(v21 - 8);
  v25 = v6;
  v23 = v22;
  (*(v22 + 104))(v5, v20, v21);
  (*(v23 + 56))(v5, 0, 1, v21);
  type metadata accessor for TVUpNextQueueHeaderShelf(0);
  sub_20B9A9BE4(&qword_27C768678, type metadata accessor for TVUpNextQueueHeaderShelf, &unk_20C1668B8);
  sub_20C138D94();

  sub_20B520158(v5, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v7 + 8))(v9, v25);
  return (*(v11 + 8))(v15, v27);
}

uint64_t sub_20B9A50C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_20C1352E4();
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C134F24();
  v8 = *(v20 - 8);
  v9 = MEMORY[0x28223BE20](v20);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  v21 = v0;
  (*(v8 + 104))(v11, *MEMORY[0x277D51390], v9);
  (*(v5 + 104))(v7, *MEMORY[0x277D51768], v4);
  v18 = sub_20C133394();
  v12 = *MEMORY[0x277D523D8];
  v13 = sub_20C135ED4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v3, v12, v13);
  (*(v14 + 56))(v3, 0, 1, v13);
  type metadata accessor for TVUpNextQueueHeaderShelf(0);
  sub_20B9A9BE4(&qword_27C768678, type metadata accessor for TVUpNextQueueHeaderShelf, &unk_20C1668B8);
  sub_20C138D94();

  sub_20B520158(v3, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v5 + 8))(v7, v19);
  return (*(v8 + 8))(v11, v20);
}

void sub_20B9A5400()
{
  v1 = v0;
  v59 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v59);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20C134B14();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134DC4();
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v71 = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueItems);
  swift_bridgeObjectRetain_n();
  sub_20B9A766C(&v71);

  v13 = v71;
  v14 = *(v71 + 16);
  if (v14)
  {
    v56 = v3;
    v57 = v12;
    v58 = v0;
    v71 = MEMORY[0x277D84F90];
    sub_20BB5E4F4(0, v14, 0);
    v15 = v71;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v55 = v13;
    v19 = v13 + v18;
    v62 = *(v16 + 56);
    v63 = v17;
    v64 = v16;
    v60 = v68 + 32;
    v61 = (v16 - 8);
    do
    {
      v70 = v14;
      v20 = v65;
      v21 = v66;
      v63(v65, v19, v66);
      sub_20C134AB4();
      v69 = v22;
      sub_20C134AC4();
      sub_20C134B04();
      sub_20C134AF4();
      sub_20C134D64();
      (*v61)(v20, v21);
      v71 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_20BB5E4F4((v23 > 1), v24 + 1, 1);
        v15 = v71;
      }

      *(v15 + 16) = v24 + 1;
      (*(v68 + 32))(v15 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v24, v9, v67);
      v19 += v62;
      v14 = v70 - 1;
    }

    while (v70 != 1);

    v12 = v57;
    v1 = v58;
    v3 = v56;
    if (*(v15 + 16))
    {
      goto LABEL_7;
    }

LABEL_13:

    return;
  }

  v15 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_13;
  }

LABEL_7:
  v25 = *(v68 + 16);
  v26 = *(v68 + 80);
  v70 = v15;
  v25(v12, v15 + ((v26 + 32) & ~v26), v67);
  v27 = sub_20C136664();
  (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
  v28 = v59;
  v29 = *(v59 + 20);
  v30 = *MEMORY[0x277D513F8];
  v31 = sub_20C134F24();
  (*(*(v31 - 8) + 104))(&v3[v29], v30, v31);
  v32 = v28[6];
  v33 = sub_20C132C14();
  (*(*(v33 - 8) + 56))(&v3[v32], 1, 1, v33);
  v34 = sub_20C134D74();
  v36 = v35;
  v37 = v28[8];
  v38 = *MEMORY[0x277D52408];
  v39 = sub_20C135ED4();
  v40 = *(v39 - 8);
  (*(v40 + 104))(&v3[v37], v38, v39);
  (*(v40 + 56))(&v3[v37], 0, 1, v39);
  v41 = v28[10];
  v42 = *MEMORY[0x277D51768];
  v43 = sub_20C1352E4();
  (*(*(v43 - 8) + 104))(&v3[v41], v42, v43);
  v44 = v28[11];
  v45 = sub_20C136E94();
  (*(*(v45 - 8) + 56))(&v3[v44], 1, 1, v45);
  v46 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v47 = &v3[v28[7]];
  *v47 = v34;
  v47[1] = v36;
  v48 = &v3[v28[9]];
  *v48 = 0;
  *(v48 + 1) = 0;
  *&v3[v28[12]] = v46;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FDA8(v1, v3, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B9A9AE4(v3, type metadata accessor for ShelfMetricAction);
  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    v52 = v50 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v52 + 8);
      ObjectType = swift_getObjectType();
      (*(v53 + 120))(v51, v70, ObjectType, v53);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  (*(v68 + 8))(v12, v67);
}

uint64_t sub_20B9A5AD4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20C139594();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_20C138E94();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60, &unk_20C152F70);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B9A5CB4, 0, 0);
}

uint64_t sub_20B9A5CB4(uint64_t a1)
{
  v3 = v1[15];
  v2 = v1[16];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[4];
  sub_20C13B444();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v5);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_marketingItemProvider), *(v6 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_marketingItemProvider + 24));
  sub_20C1382F4();
  sub_20C138E74();

  v7 = swift_task_alloc();
  v1[17] = v7;
  *(v7 + 16) = "SeymourUI/TVUpNextQueueHeaderShelf.swift";
  *(v7 + 24) = 40;
  *(v7 + 32) = 2;
  *(v7 + 40) = 359;
  *(v7 + 48) = v4;
  v8 = swift_task_alloc();
  v1[18] = v8;
  v9 = sub_20B51C88C(0, &qword_27C768670, 0x277CEE528);
  *v8 = v1;
  v8[1] = sub_20B9A5E90;

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B8A95F0, v7, v9);
}

uint64_t sub_20B9A5E90()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {

    v3 = sub_20B9A60F8;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];
    v2[20] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B9A5FF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B9A5FF0()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D54190], v0[8]);
  (*(v3 + 104))(v1, *MEMORY[0x277D54408], v2);
  sub_20C138854();

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B9A60F8()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B9A61A0()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_configurationClient));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_marketingItemProvider));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_mediaTagStringBuilder));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_subscriptionCache));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueClient));
  v8 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_config, &qword_27C761800, &qword_20C14FDA0);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_serviceSubscription, &unk_27C762390, &unk_20C15EC90);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_marketingOffer, &unk_27C768660, &unk_20C152F60);
  return v0;
}

uint64_t sub_20B9A6448()
{
  sub_20B9A61A0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVUpNextQueueHeaderShelf(uint64_t a1)
{
  result = qword_27C768630;
  if (!qword_27C768630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9A64F4(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C1333A4();
    if (v2 <= 0x3F)
    {
      sub_20B9A674C(319, &qword_281103BF0, MEMORY[0x277D50560]);
      if (v3 <= 0x3F)
      {
        sub_20B9A674C(319, &qword_27C762130, MEMORY[0x277D51C40]);
        if (v4 <= 0x3F)
        {
          sub_20B9A674C(319, &qword_281103B50, MEMORY[0x277D540B0]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_20B9A674C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20B9A67B4()
{
  result = qword_27C768640;
  if (!qword_27C768640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768640);
  }

  return result;
}

uint64_t sub_20B9A6808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  v4[9] = swift_task_alloc();
  v5 = sub_20C132E94();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_20C135734();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_20C13CDA4();
  v4[18] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v4[19] = v8;
  v4[20] = v7;

  return MEMORY[0x2822009F8](sub_20B9A69D4, v8, v7);
}

uint64_t sub_20B9A69D4()
{
  v1 = (v0[8] + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_subscriptionCache);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_20B9A6A9C;
  v5 = v0[17];

  return MEMORY[0x2821B5668](v5, v2, v3);
}

uint64_t sub_20B9A6A9C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_20B9A70A8;
  }

  else
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_20B9A6BC0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20B9A6BC0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[8];
  (*(v4 + 56))(v2, 0, 1, v3);
  v6 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B5DF2D4(v2, v5 + v6, &unk_27C762390, &unk_20C15EC90);
  swift_endAccess();
  sub_20B52F9E8(v5 + v6, v1, &unk_27C762390, &unk_20C15EC90);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = v0[16];
  if (v7)
  {
    sub_20B520158(v0[16], &unk_27C762390, &unk_20C15EC90);
LABEL_7:
    v18 = swift_task_alloc();
    v0[22] = v18;
    *v18 = v0;
    v18[1] = sub_20B9A6E44;
    v19 = v0[9];

    return sub_20B9A5AD4(v19);
  }

  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  (*(v10 + 16))(v9, v0[16], v11);
  sub_20B520158(v8, &unk_27C762390, &unk_20C15EC90);
  sub_20C132E84();
  v15 = sub_20C135704();
  (*(v14 + 8))(v12, v13);
  (*(v10 + 8))(v9, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20B9A6E44()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_20B9A732C;
  }

  else
  {
    v5 = sub_20B9A6F80;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20B9A6F80()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = sub_20C138894();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_marketingOffer;
  swift_beginAccess();
  sub_20B5DF2D4(v1, v2 + v4, &unk_27C768660, &unk_20C152F60);
  swift_endAccess();
  sub_20B9A123C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20B9A70A8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[8];
  (*(v4 + 56))(v2, 1, 1, v3);
  v6 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B5DF2D4(v2, v5 + v6, &unk_27C762390, &unk_20C15EC90);
  swift_endAccess();
  sub_20B52F9E8(v5 + v6, v1, &unk_27C762390, &unk_20C15EC90);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = v0[16];
  if (v7)
  {
    sub_20B520158(v0[16], &unk_27C762390, &unk_20C15EC90);
LABEL_7:
    v18 = swift_task_alloc();
    v0[22] = v18;
    *v18 = v0;
    v18[1] = sub_20B9A6E44;
    v19 = v0[9];

    return sub_20B9A5AD4(v19);
  }

  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  (*(v10 + 16))(v9, v0[16], v11);
  sub_20B520158(v8, &unk_27C762390, &unk_20C15EC90);
  sub_20C132E84();
  v15 = sub_20C135704();
  (*(v14 + 8))(v12, v13);
  (*(v10 + 8))(v9, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_20B9A732C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B9A73D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B9A744C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

double sub_20B9A7508()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_20C13CDA4();

  v6 = sub_20C13CD94();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_20B614F94(0, 0, v4, &unk_20C166900, v7);

  return result;
}

void sub_20B9A766C(uint64_t *a1)
{
  v2 = *(sub_20C134B14() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DBC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B9A7714(v5);
  *a1 = v3;
}

void sub_20B9A7714(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C134B14();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C134B14() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20B9A7AE8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B9A7840(0, v2, 1, a1);
  }
}