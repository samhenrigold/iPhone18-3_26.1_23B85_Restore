void sub_1005705D8(uint64_t a1)
{
  v105 = a1;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v3 = &v87[-v2];
  v4 = sub_10010FC20(&qword_101195688, &unk_100ED3900);
  v103 = *(v4 - 8);
  __chkstk_darwin();
  v97 = &v87[-v5];
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v100 = &v87[-v6];
  sub_10010FC20(&qword_101195690, &unk_100ED3910);
  __chkstk_darwin();
  v102 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v104 = &v87[-v8];
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v101 = &v87[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v87[-v12];
  v99 = type metadata accessor for Locale();
  v98 = *(v99 - 8);
  __chkstk_darwin();
  v15 = &v87[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v17 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v19 = &v87[-v18];
  v119 = type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v121 = &v87[-v23];
  v24 = &v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
  v25 = v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 32];
  if (v25 != 255)
  {
    v106 = v17;
    v26 = v3;
    v107 = v15;
    v108 = v1;
    v95 = v4;
    v94 = v22;
    v110 = v21;
    v96 = v13;
    v112 = v10;
    v27 = *v24;
    v28 = v24[1];
    v29 = v24[2];
    v30 = v24[3];
    v116 = v20;
    v117 = v27;
    v114 = v9;
    v115 = v28;
    v118 = v29;
    v120 = v25;
    sub_1005753B0(v27, v28, v29, v30, v25);
    AttributeContainer.init()();
    v31 = objc_opt_self();
    v122[0] = [v31 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v32 = sub_10016D0B4();
    AttributeContainer.subscript.setter();
    v33 = objc_opt_self();
    v122[0] = [v33 secondaryLabelColor];
    v34 = sub_1001D29B8();
    AttributeContainer.subscript.setter();
    v113 = v26;
    v111 = v30;
    v109 = v33;
    if (v120)
    {
      v35 = v121;
      v36 = v19;
      if (v120 == 1)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v37._countAndFlagsBits = 0x2068746977;
        v37._object = 0xE500000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v37);
        v122[0] = v117;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v38._countAndFlagsBits = 0x656E657473694C20;
        v38._object = 0xEC00000029732872;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
        String.LocalizationValue.init(stringInterpolation:)();
      }

      else
      {
        String.LocalizationValue.init(stringLiteral:)();
      }

      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v39 = v116;
      v40 = v35;
      v41 = v119;
      (*(v116 + 16))(v110, v40, v119);
      AttributedString.init(_:attributes:)();
      (*(v112 + 56))(v36, 0, 1, v114);
      v44 = v108;
      swift_beginAccess();
      UIButton.Configuration.attributedTitle.setter();
      swift_endAccess();
      v42 = [v109 clearColor];
      swift_beginAccess();
      v43 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v43(v122, 0);
      UIButton.Configuration.titleLineBreakMode.setter();
      swift_endAccess();
      [*&v44[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] setEnabled:0];
      v49 = v113;
      v50 = v115;
    }

    else
    {
      v89 = v32;
      v90 = UIFontTextStyleFootnote;
      v91 = v31;
      v93 = v34;
      v44 = v108;
      v45 = [v108 traitCollection];
      sub_100050078();
      v46 = UITraitCollection.subscript.getter();

      v88 = v46;
      if (!v118 || (v46 & 1) != 0)
      {
        v51 = [v33 secondaryLabelColor];
        v47 = v51;
        v52 = 0.45;
        if (v105)
        {
          v52 = 0.25;
        }

        if ((v46 & 1) == 0)
        {
          v52 = 1.0;
        }

        v48 = [v51 colorWithAlphaComponent:v52];
      }

      else
      {
        v47 = [v33 tintColor];
        v48 = [v47 colorWithAlphaComponent:1.0];
      }

      v53 = v48;

      v122[0] = v53;
      AttributeContainer.subscript.setter();
      v54 = v115;
      v55 = HIBYTE(v115) & 0xF;
      v56 = v117;
      if ((v115 & 0x2000000000000000) == 0)
      {
        v55 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v57._countAndFlagsBits = 0x206D6F7246;
        v57._object = 0xE500000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
        v58._countAndFlagsBits = v56;
        v58._object = v54;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v58);
        v59._countAndFlagsBits = 0;
        v59._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v59);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
      }

      v60 = v110;
      v107 = *(v116 + 16);
      v107(v110, v121, v119);
      AttributedString.init(_:attributes:)();
      v92 = v19;
      if (v118)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v122[0] = String.init(localized:table:bundle:locale:comment:)();
        v122[1] = v61;
        v62 = v100;
        (*(v98 + 56))(v100, 1, 1, v99);
        v63 = sub_100575400();
        sub_100009838();
        v64 = v104;
        v106 = v63;
        AttributedStringProtocol.range<A>(of:options:locale:)();
        sub_1000095E8(v62, &unk_101182EA0, &unk_100EBE980);
        v65 = v94;
        AttributeContainer.init()();
        v122[0] = [v91 preferredFontForTextStyle:v90];
        AttributeContainer.subscript.setter();
        v66 = [v109 secondaryLabelColor];
        v67 = v66;
        v68 = 0.45;
        if (v105)
        {
          v68 = 0.25;
        }

        if ((v88 & 1) == 0)
        {
          v68 = 1.0;
        }

        v69 = [v66 colorWithAlphaComponent:v68];

        v122[0] = v69;
        AttributeContainer.subscript.setter();
        v107(v60, v65, v119);
        v70 = v101;
        AttributedString.init(_:attributes:)();
        v71 = v102;
        sub_100575458(v64, v102);
        if ((*(v103 + 48))(v71, 1, v95) == 1)
        {
          v72 = v112;
          v73 = v114;
          (*(v112 + 8))(v70, v114);
          (*(v116 + 8))(v65, v119);
          sub_1000095E8(v64, &qword_101195690, &unk_100ED3910);
          sub_1000095E8(v71, &qword_101195690, &unk_100ED3910);
          v49 = v113;
          v50 = v115;
          v74 = v73;
        }

        else
        {
          v77 = v97;
          sub_1005754C8(v71, v97);
          sub_100575538();
          v78 = v114;
          AttributedString.replaceSubrange<A, B>(_:with:)();
          sub_1000095E8(v77, &qword_101195688, &unk_100ED3900);
          v72 = v112;
          (*(v112 + 8))(v70, v78);
          (*(v116 + 8))(v65, v119);
          sub_1000095E8(v64, &qword_101195690, &unk_100ED3910);
          v49 = v113;
          v50 = v115;
          v74 = v78;
        }
      }

      else
      {
        v75 = [v109 clearColor];
        swift_beginAccess();
        v76 = UIButton.Configuration.background.modify();
        UIBackgroundConfiguration.backgroundColor.setter();
        v76(v122, 0);
        v74 = v114;
        swift_endAccess();
        v72 = v112;
        v49 = v113;
        v50 = v115;
      }

      v79 = v118 != 0;
      swift_beginAccess();
      UIButton.Configuration.titleLineBreakMode.setter();
      swift_endAccess();
      [*&v44[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] setEnabled:v79];
      v80 = v92;
      v81 = v96;
      (*(v72 + 16))(v92, v96, v74);
      (*(v72 + 56))(v80, 0, 1, v74);
      swift_beginAccess();
      UIButton.Configuration.attributedTitle.setter();
      swift_endAccess();
      (*(v72 + 8))(v81, v74);
      v39 = v116;
      v41 = v119;
    }

    v82 = *&v44[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton];
    v83 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConfiguration;
    swift_beginAccess();
    v84 = type metadata accessor for UIButton.Configuration();
    v85 = *(v84 - 8);
    (*(v85 + 16))(v49, &v44[v83], v84);
    (*(v85 + 56))(v49, 0, 1, v84);
    v86 = v82;
    UIButton.configuration.setter();

    sub_100309C54(v117, v50, v118, v111, v120);
    (*(v39 + 8))(v121, v41);
  }
}

void sub_100571754(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v216 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v224 = &v213 - v11;
  type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin();
  v12 = type metadata accessor for UIButton.Configuration();
  *&v221 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v213 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_backdropView;
  v16 = type metadata accessor for BackdropView();
  v17 = objc_allocWithZone(v16);
  *&v4[v15] = sub_100453A34();
  v18 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_gradientView;
  v19 = objc_allocWithZone(v16);
  *&v4[v18] = sub_100453A34();
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView] = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView] = 0;
  v4[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState] = 0;
  v20 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton;
  *&v5[v20] = [objc_allocWithZone(UIButton) init];
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton] = 0;
  v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState] = 0;
  v21 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle;
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter();

  *&v5[v21] = v23;
  v24 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton;
  *&v5[v24] = [objc_allocWithZone(UIButton) init];
  v25 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v26[32] = -1;
  v27 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction];
  *v29 = 0;
  v29[1] = 0;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint] = 0;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint] = 0;
  v30 = *&v5[v18];
  LOBYTE(v24) = v30[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
  v30[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 1;
  v31 = v30;
  sub_100453194(v24);

  v32 = [objc_allocWithZone(UILabel) init];
  v33._object = 0x8000000100E50070;
  v33._countAndFlagsBits = 0xD00000000000001DLL;
  v232 = AccessibilityIdentifier.init(name:)(v33);
  v34 = UIView.withAccessibilityIdentifier(_:)(v232.rawValue._countAndFlagsBits, v232.rawValue._object, v232.name._countAndFlagsBits, v232.name._object);

  v35 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel] = v34;
  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v37 setFont:v38];

  [*&v5[v35] setAdjustsFontForContentSizeCategory:1];
  v39 = *&v5[v35];
  v223 = UIContentSizeCategoryExtraExtraExtraLarge;
  [v39 setMaximumContentSizeCategory:?];
  [*&v5[v35] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v35] setNumberOfLines:0];
  LODWORD(v40) = 1132068864;
  [*&v5[v35] setContentCompressionResistancePriority:0 forAxis:v40];
  [*&v5[v35] setSizingRule:1];
  [*&v5[v35] _setWantsContentAwareTypesettingLanguage:1];
  static UIButton.Configuration.plain()();
  v41 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConfiguration;
  v42 = v221;
  (*(v221 + 32))(&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConfiguration], v14, v12);
  swift_beginAccess();
  UIButton.Configuration.contentInsets.setter();
  swift_endAccess();
  static UIBackgroundConfiguration.clear()();
  swift_beginAccess();
  UIButton.Configuration.background.setter();
  swift_endAccess();
  v43 = [objc_opt_self() buttonWithType:1];
  v44._countAndFlagsBits = 0xD000000000000020;
  v44._object = 0x8000000100E50090;
  v233 = AccessibilityIdentifier.init(name:)(v44);
  v45 = UIView.withAccessibilityIdentifier(_:)(v233.rawValue._countAndFlagsBits, v233.rawValue._object, v233.name._countAndFlagsBits, v233.name._object);

  v46 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] = v45;
  [v45 setClipsToBounds:1];
  v47 = *&v5[v46];
  v48 = &v5[v41];
  v49 = v224;
  (*(v42 + 16))(v224, v48, v12);
  v50 = *(v42 + 56);
  v215 = v12;
  v50(v49, 0, 1, v12);
  v51 = v47;
  UIButton.configuration.setter();

  [*&v5[v46] setTintAdjustmentMode:1];
  [*&v5[v46] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v46] setContentVerticalAlignment:3];
  [*&v5[v46] setContentHorizontalAlignment:4];
  v52 = [*&v5[v46] titleLabel];
  [v52 setAdjustsFontForContentSizeCategory:1];

  v53 = [*&v5[v46] titleLabel];
  if (v53)
  {
    v54 = v53;
    v55 = [v36 preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v54 setFont:v55];
  }

  v56 = [*&v5[v46] titleLabel];
  [v56 setSizingRule:1];

  v57 = [*&v5[v46] titleLabel];
  [v57 _setWantsContentAwareTypesettingLanguage:1];

  v58 = v223;
  [*&v5[v46] setMaximumContentSizeCategory:v223];
  LODWORD(v59) = 1132068864;
  [*&v5[v46] setContentCompressionResistancePriority:0 forAxis:v59];
  v60 = type metadata accessor for NowPlayingQueueHeaderView(0);
  v231.receiver = v5;
  v231.super_class = v60;
  v61 = objc_msgSendSuper2(&v231, "initWithFrame:", a1, a2, a3, a4);
  v62 = sub_10056FCA8();
  v63 = [v62 titleLabel];

  if (v63)
  {
    v64 = [*&v61[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel] font];
    if (!v64)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v65 = v64;
    [v64 pointSize];
    v67 = v66;

    v68 = [v36 systemFontOfSize:v67 weight:UIFontWeightRegular];
    [v63 setFont:v68];
  }

  v69 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton;
  [*&v61[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v61[v69] setContentVerticalAlignment:3];
  LODWORD(v70) = 1148846080;
  [*&v61[v69] setContentHuggingPriority:0 forAxis:v70];
  [*&v61[v69] setMaximumContentSizeCategory:v58];
  [*&v61[v69] setHidden:1];
  v71 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton;
  v72 = *&v61[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton];
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v229 = sub_1005757A0;
  v230 = v73;
  aBlock = _NSConcreteStackBlock;
  v226 = 1107296256;
  v227 = sub_10027D328;
  v228 = &unk_1010B2CD8;
  v74 = _Block_copy(&aBlock);
  v75 = v61;
  v76 = v72;

  v224 = v61;
  [v76 setConfigurationUpdateHandler:v74];
  _Block_release(v74);

  [*&v224[v71] setHidden:1];
  v77 = *&v224[v71];
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = sub_100009F78(0, &qword_101183A18, UIButton_ptr);
  v80 = v77;
  ControlEventHandling<>.on(_:handler:)(64, sub_1005757A8, v78, v79);

  [*&v224[v71] setNeedsUpdateConfiguration];
  v81 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton;
  v82 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton];
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v229 = sub_1005757CC;
  v230 = v83;
  aBlock = _NSConcreteStackBlock;
  v226 = 1107296256;
  v227 = sub_10027D328;
  v228 = &unk_1010B2D00;
  v84 = _Block_copy(&aBlock);
  v85 = v82;

  v86 = v224;
  [v85 setConfigurationUpdateHandler:v84];
  _Block_release(v84);

  [*&v75[v81] setHidden:1];
  v87 = *&v75[v81];
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = v87;
  v219 = v79;
  ControlEventHandling<>.on(_:handler:)(64, sub_1005757D4, v88, v79);

  [*&v75[v81] setNeedsUpdateConfiguration];
  v90 = [objc_allocWithZone(UIView) init];
  v91 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView;
  v92 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView];
  *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView] = v90;

  v223 = sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_100EBDC10;
  v220 = v69;
  v94 = *&v86[v69];
  *(v93 + 32) = v94;
  v95 = *&v75[v91];
  if (!v95)
  {
    __break(1u);
    goto LABEL_26;
  }

  *(v93 + 40) = v95;
  v96 = *&v86[v71];
  *(v93 + 48) = v96;
  v213 = v81;
  v97 = *&v75[v81];
  *(v93 + 56) = v97;
  v98 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v99 = v96;
  v100 = v97;
  v101 = v95;
  v102 = v94;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v104 = [v98 initWithArrangedSubviews:isa];

  v105 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView;
  v106 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView];
  *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView] = v104;
  v107 = v104;

  if (!v107)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v107 setAxis:0];

  v108 = *&v75[v105];
  if (!v108)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v108 setAlignment:3];
  v109 = *&v75[v105];
  if (!v109)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v109 setSpacing:12.0];
  v110 = *&v75[v105];
  if (!v110)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v110 setTranslatesAutoresizingMaskIntoConstraints:0];
  v111 = *&v75[v105];
  if (!v111)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v112 = [v111 layer];
  [v112 setAllowsGroupBlending:0];

  v113 = *&v224[v220];
  v114 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v115 = v75;
  v116 = v113;
  ControlEventHandling<>.on(_:handler:)(64, sub_1005757F8, v114, v219);

  v117 = [v115 layer];
  [v117 setAllowsGroupBlending:0];

  v118 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_backdropView;
  [*&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_backdropView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v115 addSubview:*&v115[v118]];
  [v115 addSubview:*&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_gradientView]];
  if (!*&v75[v105])
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v115 addSubview:?];
  v119 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel;
  [v115 addSubview:*&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel]];
  v222 = v119;
  v120 = [*&v115[v119] bottomAnchor];
  v121 = [v115 bottomAnchor];
  v122 = [v120 constraintEqualToAnchor:v121 constant:-15.0];

  v123 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint;
  v124 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint];
  *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint] = v122;

  v125 = *&v115[v123];
  if (v125)
  {
    [v125 setActive:1];
  }

  v126 = [*&v115[v222] topAnchor];
  v127 = [v115 topAnchor];
  v128 = [v126 constraintEqualToAnchor:v127 constant:16.0];

  v129 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint];
  v214 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint;
  *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint] = v128;

  v130 = *&v75[v105];
  if (!v130)
  {
    goto LABEL_32;
  }

  v218 = v105;
  v217 = v71;
  v131 = [v130 trailingAnchor];
  v132 = [v115 layoutMarginsGuide];
  v133 = [v132 trailingAnchor];

  v134 = *&v224[v220];
  v135 = v216;
  UIButton.configuration.getter();

  v136 = 0.0;
  if (!(*(v221 + 48))(v135, 1, v215))
  {
    UIButton.Configuration.contentInsets.getter();
    v136 = v137;
  }

  sub_1000095E8(v135, &unk_101183AB0, &qword_100EBF4D0);
  v138 = [v131 constraintEqualToAnchor:v133 constant:v136];

  v139 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint];
  *&v221 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint;
  *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint] = v138;

  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_100EBEEA0;
  v141 = [*&v115[v118] topAnchor];
  v142 = [v115 topAnchor];
  v143 = [v141 constraintEqualToAnchor:v142];

  *(v140 + 32) = v143;
  v144 = [*&v115[v118] leadingAnchor];
  v145 = [v115 leadingAnchor];
  v146 = [v144 constraintEqualToAnchor:v145];

  *(v140 + 40) = v146;
  v147 = [*&v115[v118] trailingAnchor];
  v148 = [v115 trailingAnchor];
  v149 = [v147 constraintEqualToAnchor:v148];

  *(v140 + 48) = v149;
  v150 = [*&v115[v118] bottomAnchor];
  v151 = [v115 bottomAnchor];
  v152 = [v150 constraintEqualToAnchor:v151];

  *(v140 + 56) = v152;
  v153 = *&v115[v214];
  if (!v153)
  {
    goto LABEL_33;
  }

  *(v140 + 64) = v153;
  v154 = v222;
  v155 = *&v115[v222];
  v156 = v153;
  v157 = [v155 leadingAnchor];
  v158 = [v115 layoutMarginsGuide];
  v159 = [v158 leadingAnchor];

  v160 = [v157 constraintEqualToAnchor:v159];
  *(v140 + 72) = v160;
  v161 = [*&v115[v154] trailingAnchor];
  v162 = *&v75[v218];
  if (!v162)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v163 = [v162 leadingAnchor];
  v164 = [v161 constraintEqualToAnchor:v163 constant:-10.0];

  *(v140 + 80) = v164;
  v165 = *&v115[v221];
  if (!v165)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v166 = objc_opt_self();
  *(v140 + 88) = v165;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  v167 = v165;
  v168 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v168];

  v169 = swift_allocObject();
  v221 = xmmword_100EBE270;
  *(v169 + 16) = xmmword_100EBE270;
  v170 = v217;
  v171 = v224;
  v172 = [*&v224[v217] widthAnchor];
  v173 = [v172 constraintGreaterThanOrEqualToConstant:72.0];

  *(v169 + 32) = v173;
  v174 = [*&v171[v170] heightAnchor];
  v175 = [v174 constraintEqualToConstant:38.0];

  *(v169 + 40) = v175;
  v176 = *&v75[v218];
  if (!v176)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v177 = [v176 centerYAnchor];
  v178 = [v115 centerYAnchor];
  v179 = [v177 constraintEqualToAnchor:v178];

  *(v169 + 48) = v179;
  v180 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v180];

  v181 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v181))
  {
    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_100EBC6D0;
    v183 = v213;
    v184 = [*&v75[v213] widthAnchor];
    v185 = [v184 constraintGreaterThanOrEqualToConstant:72.0];

    *(v182 + 32) = v185;
    v186 = [*&v75[v183] heightAnchor];
    v187 = [*&v224[v217] heightAnchor];
    v188 = [v186 constraintEqualToAnchor:v187];

    *(v182 + 40) = v188;
    v189 = Array._bridgeToObjectiveC()().super.isa;

    [v166 activateConstraints:v189];
  }

  v190 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton;
  v191 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton];
  v192 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v193 = v191;
  ControlEventHandling<>.on(_:handler:)(64, sub_10057581C, v192, v219);

  v194 = *&v115[v190];
  v195 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v196 = v194;

  v229 = sub_100575824;
  v230 = v195;
  aBlock = _NSConcreteStackBlock;
  v226 = 1107296256;
  v227 = sub_10027D328;
  v228 = &unk_1010B2D28;
  v197 = _Block_copy(&aBlock);

  [v196 setConfigurationUpdateHandler:v197];
  _Block_release(v197);

  v198 = swift_allocObject();
  *(v198 + 16) = v221;
  v199 = [*&v115[v190] topAnchor];
  v200 = v222;
  v201 = [*&v115[v222] bottomAnchor];
  v202 = [v199 constraintEqualToAnchor:v201 constant:1.0];

  *(v198 + 32) = v202;
  v203 = [*&v115[v190] leadingAnchor];
  v204 = [*&v115[v200] leadingAnchor];
  v205 = [v203 constraintEqualToAnchor:v204];

  *(v198 + 40) = v205;
  v206 = [*&v115[v190] trailingAnchor];
  v207 = [*&v115[v200] trailingAnchor];
  v208 = [v206 constraintEqualToAnchor:v207];

  *(v198 + 48) = v208;
  *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConstraints] = v198;

  v209 = [*&v115[v190] bottomAnchor];
  v210 = [v115 bottomAnchor];

  v211 = [v209 constraintEqualToAnchor:v210 constant:-11.0];
  v212 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint];
  *&v115[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint] = v211;

  sub_100574854();
}

uint64_t sub_1005730E0(void *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v4 = &v49 - v3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v54 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v53 = result;
  if (result)
  {
    v51 = v9;
    v52 = v4;
    sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    v13 = static UIFont.preferredFont(forTextStyle:weight:)();
    v14 = objc_opt_self();
    v15 = [v14 configurationWithFont:v13];

    v16 = [v14 configurationWithScale:2];
    v17 = [v15 configurationByApplyingConfiguration:v16];

    static UIButton.Configuration.plain()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() systemImageNamed:v18];

    UIButton.Configuration.image.setter();
    v50 = v17;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.Configuration.imagePadding.setter();
    (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
    UIButton.Configuration.cornerStyle.setter();
    v20 = [a1 imageView];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 superview];

      if (v22)
      {
        v23 = [v22 layer];

        [v23 setAllowsGroupBlending:0];
      }
    }

    v24 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState;
    v25 = v53;
    v26 = *(v53 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState);
    v27 = [a1 imageView];
    if (v26 == 1)
    {
      if (v27)
      {
        v28 = v27;
        v29 = [v27 layer];

        [v29 setCompositingFilter:kCAFilterDestOut];
      }

      if (qword_10117F4B8 != -1)
      {
        swift_once();
      }

      v30 = qword_101218938;
      v31 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v31(v55, 0);
      v32 = [objc_opt_self() blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
    }

    else
    {
      if (v27)
      {
        v33 = v27;
        v34 = [v27 layer];

        [v34 setCompositingFilter:0];
      }

      if (qword_10117F4B0 != -1)
      {
        swift_once();
      }

      v35 = qword_101218930;
      v36 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v36(v55, 0);
      if (v25[v24] == 2)
      {
        if (qword_10117F4C8 != -1)
        {
          swift_once();
        }

        v37 = &qword_101218948;
      }

      else
      {
        if (qword_10117F4C0 != -1)
        {
          swift_once();
        }

        v37 = &qword_101218940;
      }

      v38 = *v37;
      UIButton.Configuration.baseForegroundColor.setter();
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v39 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityValue:v39];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v40 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityLabel:v40];

    v41 = AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor();
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    sub_100009F78(0, &qword_101183A18, UIButton_ptr);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v42, v43, v44, v45);
    v46 = v54;
    v48 = v51;
    v47 = v52;
    (*(v54 + 16))(v52, v11, v51);
    (*(v46 + 56))(v47, 0, 1, v48);
    UIButton.configuration.setter();

    return (*(v46 + 8))(v11, v48);
  }

  return result;
}

_BYTE *sub_1005738F4(void *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v4 = &v48 - v3;
  v5 = type metadata accessor for AutomationSemantics();
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin();
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin();
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v50 = v4;
    v51 = a1;
    sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    v16 = static UIFont.preferredFont(forTextStyle:weight:)();
    v17 = objc_opt_self();
    v18 = [v17 configurationWithFont:v16];

    v19 = [v17 configurationWithScale:2];
    v20 = [v18 configurationByApplyingConfiguration:v19];

    static UIButton.Configuration.plain()();
    v48 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle;
    if (*&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle] <= 1uLL)
    {
      v21 = String._bridgeToObjectiveC()();
      v22 = [objc_opt_self() imageNamed:v21];
    }

    UIButton.Configuration.image.setter();
    v49 = v20;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.Configuration.imagePadding.setter();
    (*(v8 + 104))(v10, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v7);
    UIButton.Configuration.cornerStyle.setter();
    v23 = v51;
    v24 = [v51 imageView];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 superview];

      if (v26)
      {
        v27 = [v26 layer];

        [v27 setAllowsGroupBlending:0];
      }
    }

    v28 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState;
    v29 = v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState];
    v30 = [v23 imageView];
    if (v29 == 1)
    {
      if (v30)
      {
        v31 = v30;
        v32 = [v30 layer];

        [v32 setCompositingFilter:kCAFilterDestOut];
      }

      if (qword_10117F4B8 != -1)
      {
        swift_once();
      }

      v33 = qword_101218938;
      v34 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v34(v57, 0);
      v35 = [objc_opt_self() blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
    }

    else
    {
      if (v30)
      {
        v36 = v30;
        v37 = [v30 layer];

        [v37 setCompositingFilter:0];
      }

      if (qword_10117F4B0 != -1)
      {
        swift_once();
      }

      v38 = qword_101218930;
      v39 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v39(v57, 0);
      if (v15[v28] == 2)
      {
        if (qword_10117F4C8 != -1)
        {
          swift_once();
        }

        v40 = &qword_101218948;
      }

      else
      {
        if (qword_10117F4C0 != -1)
        {
          swift_once();
        }

        v40 = &qword_101218940;
      }

      v41 = *v40;
      UIButton.Configuration.baseForegroundColor.setter();
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v42 = String._bridgeToObjectiveC()();

    [v23 setAccessibilityValue:v42];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v43 = String._bridgeToObjectiveC()();

    [v23 setAccessibilityLabel:v43];

    memset(v57, 0, sizeof(v57));
    v44 = v54;
    static AutomationSemantics.nowPlaying(name:id:)();
    sub_1000095E8(v57, &unk_101183F30, qword_100EBF960);
    UIView.setAutomationSemantics(_:)();
    (*(v55 + 8))(v44, v56);
    v46 = v52;
    v45 = v53;
    v47 = v50;
    (*(v52 + 16))(v50, v13, v53);
    (*(v46 + 56))(v47, 0, 1, v45);
    UIButton.configuration.setter();

    return (*(v46 + 8))(v13, v45);
  }

  return result;
}

void sub_100574298(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
    v3 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
    v5 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
    v6 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
    v7 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 32);
    v8 = Strong;
    sub_10057582C(v4, v3, v5, v6, v7);

    if (v7 != 255)
    {
      if (v7)
      {
        sub_100309C54(v4, v3, v5, v6, v7);
      }

      else
      {

        if (v5)
        {

          v5(v9);
          sub_100020438(v5, v6);
          sub_100020438(v5, v6);
        }
      }
    }
  }
}

void sub_100574384(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1005705D8([a1 state]);
  }
}

void sub_100574588(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for NowPlayingQueueHeaderView(0);
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  if (a1)
  {
    sub_100050078();
    v4 = UITraitCollection.subscript.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  sub_100050078();
  v5 = UITraitCollection.subscript.getter();
  if (v4 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a1)
  {
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();
    v6 = v11;
  }

  else
  {
    v6 = 3;
  }

  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();
  if (v6 > 1)
  {
    if (v6 != 2)
    {
LABEL_25:
      sub_100574854();
      goto LABEL_26;
    }

    v8 = 0x4572616C75676572;
    v7 = 0xEF6465646E657478;
    if (!v11)
    {
LABEL_19:
      v9 = 0xE700000000000000;
      if (v8 != 0x746361706D6F63)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v6)
    {
      v8 = 0x72616C75676572;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0x746361706D6F63;
      if (!v11)
      {
        goto LABEL_19;
      }
    }
  }

  if (v11 == 1)
  {
    v9 = 0xE700000000000000;
    if (v8 != 0x72616C75676572)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0xEF6465646E657478;
    if (v8 != 0x4572616C75676572)
    {
      goto LABEL_24;
    }
  }

LABEL_22:
  if (v7 == v9)
  {

    return;
  }

LABEL_24:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_26:
}

void sub_100574854()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v34 = v3;
  if (v3)
  {
    if (qword_10117F900 != -1)
    {
      swift_once();
    }

    v4 = &qword_101219098;
  }

  else
  {
    v4 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  v5 = *v4;
  v6 = sub_10056FCA8();
  if (v3)
  {
    v7 = [objc_opt_self() whiteColor];
    v8 = [v7 colorWithAlphaComponent:0.45];
  }

  else
  {
    v8 = 0;
  }

  [v6 setTintColor:v8];

  v9 = [v1 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 != 6)
  {
    if (v3)
    {
      v11 = 0;
    }

    else
    {
      v11 = [objc_opt_self() systemBackgroundColor];
    }

    [v1 setBackgroundColor:v11];
  }

  v12 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton];
  [v12 setNeedsUpdateConfiguration];
  v13 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView];
  if (v13)
  {
    v14 = v13;
    v15 = [v1 traitCollection];
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();

    [v14 setHidden:(sub_1005C3564(v35) & 1) == 0];
    v16 = sub_1002931A8();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v16))
    {
      v17 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton];
      [v17 setNeedsUpdateConfiguration];
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100EBDC10;
      *(v18 + 32) = v17;
      *(v18 + 40) = v12;
      v19 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton];
      v20 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton];
      *(v18 + 48) = v19;
      *(v18 + 56) = v20;
      v21 = v17;
    }

    else
    {
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100EBE270;
      v19 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton];
      *(v18 + 32) = v12;
      *(v18 + 40) = v19;
      v20 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton];
      *(v18 + 48) = v20;
    }

    v22 = v19;
    v23 = v20;
    v24 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      v33 = v5;
      v25 = kCAFilterPlusL;
      v26 = v12;
      v27 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v29 = sub_100062D50(v27, v18);
        }

        else
        {
          v29 = *(v18 + 8 * v27 + 32);
        }

        v30 = v29;
        v31 = [v29 layer];
        if (v34)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0;
        }

        ++v27;
        [v31 setCompositingFilter:v28];

        swift_unknownObjectRelease();
      }

      while (v24 != v27);
    }

    else
    {
      v32 = v12;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100574C78(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1002931A8();
  v7 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v6);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v8 = swift_allocObject();
  if (v7)
  {
    *(v8 + 16) = xmmword_100EBE270;
    v9 = sub_10056FCA8();
    v10 = *&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton];
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    v11 = *&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton];
    *(v8 + 48) = v11;
    v12 = v10;
  }

  else
  {
    *(v8 + 16) = xmmword_100EBC6D0;
    v13 = sub_10056FCA8();
    v11 = *&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton];
    *(v8 + 32) = v13;
    *(v8 + 40) = v11;
  }

  v14 = v11;
  v15 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = sub_100062D50(v17, v8);
      }

      else
      {
        if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v18 = *(v8 + 8 * v17 + 32);
      }

      v19 = v18;
      if ([v18 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (v16 == ++v17)
      {
        v15 = v31;
        break;
      }
    }
  }

  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
LABEL_23:
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *(v15 + 16);
  }

  if (v20 <= 0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20 * 28.0 + (v20 + -1.0) * 12.0;
  }

  [v3 layoutMargins];
  v23 = v22 + 10.0 + v21;
  [v3 layoutMargins];
  v25 = a1 - (v24 + v23);
  v26 = [*&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] titleLabel];
  [v26 setPreferredMaxLayoutWidth:v25];

  [*&v3[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel] setPreferredMaxLayoutWidth:v25];
  v30.receiver = v3;
  v30.super_class = type metadata accessor for NowPlayingQueueHeaderView(0);
  LODWORD(v27) = 1148846080;
  LODWORD(v28) = 1112014848;
  return objc_msgSendSuper2(&v30, "systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:", a1, a2, v27, v28);
}

id sub_100574FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingQueueHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NowPlayingQueueHeaderView(uint64_t a1)
{
  result = qword_101195670;
  if (!qword_101195670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005751E4(uint64_t a1)
{
  result = type metadata accessor for UIButton.Configuration();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1005752F4()
{
  result = qword_101195680;
  if (!qword_101195680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195680);
  }

  return result;
}

void *sub_100575348()
{
  v1 = *v0;
  v2 = sub_1002931A8();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v2) & 1) == 0)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton;
  if ([*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) isHidden])
  {
    return 0;
  }

  v5 = *(v1 + v3);
  v6 = v5;
  return v5;
}

void sub_1005753B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {

    sub_100030444(a3, a4);
  }
}

unint64_t sub_100575400()
{
  result = qword_101195698;
  if (!qword_101195698)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195698);
  }

  return result;
}

uint64_t sub_100575458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101195690, &unk_100ED3910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005754C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101195688, &unk_100ED3900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100575538()
{
  result = qword_1011956A0;
  if (!qword_1011956A0)
  {
    sub_1001109D0(&qword_101195688, &unk_100ED3900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011956A0);
  }

  return result;
}

void sub_10057559C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_backdropView;
  v3 = type metadata accessor for BackdropView();
  v4 = objc_allocWithZone(v3);
  *(v0 + v2) = sub_100453A34();
  v5 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_gradientView;
  v6 = objc_allocWithZone(v3);
  *(v0 + v5) = sub_100453A34();
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState) = 0;
  v7 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton;
  *(v1 + v7) = [objc_allocWithZone(UIButton) init];
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = 0;
  v8 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle;
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter();

  *(v1 + v8) = v10;
  v11 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton;
  *(v1 + v11) = [objc_allocWithZone(UIButton) init];
  v12 = (v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title);
  *v12 = 0;
  v12[1] = 0;
  v13 = v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = -1;
  v14 = (v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10057582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_1005753B0(a1, a2, a3, a4, a5);
  }
}

void *sub_10057585C(uint64_t a1)
{
  v35 = type metadata accessor for Album();
  v3 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10066C9A0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = Album.id.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10066C9A0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000D8F7C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000D8F7C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100575B64(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100015C04(0, v2, 0);
    v26 = _swiftEmptyArrayStorage;
    v3 = v1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v27 = *(v1 + 36);
    v22 = v1 + 72;
    v23 = v2;
    v24 = v1 + 64;
    v25 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v27 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v28 = MusicItemID.description.getter();
      v29 = v8;
      v9._countAndFlagsBits = 8250;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11 = v26;
      v13 = v26[2];
      v12 = v26[3];
      if (v13 >= v12 >> 1)
      {
        sub_100015C04((v12 > 1), v13 + 1, 1);
        v11 = v26;
      }

      v11[2] = v13 + 1;
      v14 = &v11[2 * v13];
      v14[4] = v28;
      v14[5] = v29;
      v1 = v25;
      v6 = 1 << *(v25 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = v24;
      v15 = *(v24 + 8 * v7);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v26 = v11;
      if (v27 != *(v25 + 36))
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v6 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v7 << 6;
        v18 = v7 + 1;
        v19 = (v22 + 8 * v7);
        while (v18 < (v6 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1000D8F7C(v4, v27, 0);
            v6 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_1000D8F7C(v4, v27, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_100575E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10066CD54(0, v1, 0);
    v3 = a1 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_10066CD54((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[3 * v10];
      v12[4] = v22;
      v12[5] = v9;
      v12[6] = _swiftEmptyDictionarySingleton;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1000D8F7C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1000D8F7C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
  }
}

uint64_t (*sub_10057605C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for EditorialVideoArtworkFlavor();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10057CEDC(v3, v8);
  return sub_100576174;
}

void sub_100576174(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_1005761EC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10057D0B0(v6, a2, a3);
  return sub_10057F330;
}

uint64_t (*sub_100576274(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10057D15C(v6, a2, a3);
  return sub_1005762FC;
}

void sub_100576300(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10057634C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1005763C0(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static Album.== infix(_:_:)();
}

void sub_100576444(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v3 & ~(v3 >> 63);
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = a2 + 2;
  }

  if (v7 >= v9)
  {
    v7 = 0;
    v13 = *(sub_10010FC20(&qword_101191960, &qword_100ECEA50) - 8);
    v11 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v12 = 1;
    goto LABEL_11;
  }

  if (v3 > v8)
  {
    goto LABEL_16;
  }

  if (v5 < 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *(sub_10010FC20(&qword_101191960, &qword_100ECEA50) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = (2 * v9) | 1;
LABEL_11:
  *a3 = a1;
  a3[1] = a1 + v11;
  a3[2] = v7;
  a3[3] = v12;
}

uint64_t sub_100576570(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_10047BEF8(*a1, *a2);
  return v4 & (v2 == v3);
}

void sub_1005765AC(void *a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v5 = v87 - v4;
  v6 = type metadata accessor for Album();
  v88 = *(v6 - 8);
  __chkstk_darwin();
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
  v89 = *(v104 - 8);
  __chkstk_darwin();
  v10 = (v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(sub_10010FC20(&qword_101191960, &qword_100ECEA50) - 8);
  __chkstk_darwin();
  v99 = (v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v94 = v87 - v13;
  __chkstk_darwin();
  v91 = v87 - v14;
  __chkstk_darwin();
  v96 = v87 - v15;
  v95 = sub_10010FC20(&qword_1011959C0, &qword_100ED3AC8);
  __chkstk_darwin();
  v93 = (v87 - v16);
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  *&v19 = __chkstk_darwin().n128_u64[0];
  v21 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 tracklist];
  v92 = v2;
  v23 = sub_100577208(*&v2[OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_loadRange], *&v2[OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_loadRange + 8]);
  if (!v23)
  {

    return;
  }

  v98 = v8;
  v25 = *(v23 + 2);
  v100 = v11;
  v101 = v6;
  v90 = v24;
  v97 = v5;
  v105 = v22;
  if (!v25)
  {
    v40 = v24;

    v39 = v40;
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v102 = v10;
  v106 = _swiftEmptyArrayStorage;
  v26 = v23;
  specialized ContiguousArray.reserveCapacity(_:)();
  v103 = *(v18 + 16);
  v27 = *(v18 + 80);
  v87[1] = v26;
  v28 = &v26[(v27 + 32) & ~v27];
  v29 = (v18 + 8);
  v30 = *(v18 + 72);
  (v103)(v21, v28, v17);
  while (1)
  {
    v31 = [v105 items];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v33 = [v31 itemAtIndexPath:isa];

    v34 = [v33 metadataObject];
    if (!v34)
    {
      goto LABEL_5;
    }

    v35 = [v34 innermostModelObject];

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (!v36)
    {

LABEL_5:
      (*v29)(v21, v17);
      goto LABEL_6;
    }

    v37 = [v36 hasVideo];
    (*v29)(v21, v17);
    if (v37)
    {
    }

LABEL_6:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v28 += v30;
    if (!--v25)
    {
      break;
    }

    (v103)(v21, v28, v17);
  }

  v38 = v106;
  v11 = v100;
  v39 = v90;
  v10 = v102;
LABEL_15:
  v41 = *&v92[OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState];
  v42 = v94;
  v43 = v96;
  if (v41)
  {
    v44 = *(v41 + 16);
    if (v44 == v38[2] && *&v92[OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState + 8] == v39)
    {
      swift_bridgeObjectRetain_n();

      v46 = v93;
      if (!v44)
      {
LABEL_38:

        swift_bridgeObjectRelease_n();
        return;
      }

      v47 = 0;
      v48 = (v89 + 48);
      v103 = v44;
      v92 = (v89 + 48);
      while (1)
      {
        if (v47 >= *(v41 + 16))
        {
          goto LABEL_65;
        }

        sub_1000089F8(v41 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v47, v43, &qword_101191960, &qword_100ECEA50);
        v49 = v38[2];
        if (v47 == v49)
        {
          swift_bridgeObjectRelease_n();

          sub_1000095E8(v43, &qword_101191960, &qword_100ECEA50);
          return;
        }

        if (v47 >= v49)
        {
          goto LABEL_66;
        }

        v50 = v38[v47 + 4];
        v51 = *(v95 + 48);
        sub_10003D17C(v43, v46, &qword_101191960, &qword_100ECEA50);
        *(v46 + v51) = v50;
        v52 = *v48;
        if ((*v48)(v46, 1, v104) == 1 && !v50)
        {
          goto LABEL_24;
        }

        v53 = v91;
        sub_1000089F8(v46, v91, &qword_101191960, &qword_100ECEA50);
        if (v52(v53, 1, v104) == 1)
        {
          v65 = v50;
          sub_1000095E8(v53, &qword_101191960, &qword_100ECEA50);
LABEL_43:
          sub_1000095E8(v46, &qword_1011959C0, &qword_100ED3AC8);
LABEL_44:
          swift_bridgeObjectRelease_n();

          v42 = v94;
          goto LABEL_45;
        }

        sub_10057E118(v53, v10, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
        if (!v50)
        {
          sub_10057E180(v10, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
          goto LABEL_43;
        }

        v54 = v38;
        v55 = *v10;
        v56 = v10[1];
        v57 = v50;
        v58 = [v57 identifiers];
        v59 = [v58 contentItemID];

        if (!v59)
        {

          sub_10057E180(v10, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
          v11 = v100;
          v38 = v54;
          goto LABEL_43;
        }

        v60 = v10;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        if (v55 == v61 && v56 == v63)
        {
          break;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v10 = v60;
        sub_10057E180(v60, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
        v46 = v93;
        sub_1000095E8(v93, &qword_1011959C0, &qword_100ED3AC8);
        v11 = v100;
        v38 = v54;
        v43 = v96;
        v48 = v92;
        if ((v64 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_25:
        if (v103 == ++v47)
        {
          goto LABEL_38;
        }
      }

      v10 = v60;
      sub_10057E180(v60, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
      v11 = v100;
      v38 = v54;
      v48 = v92;
      v46 = v93;
      v43 = v96;
LABEL_24:
      sub_1000095E8(v46, &qword_1011959C0, &qword_100ED3AC8);
      goto LABEL_25;
    }
  }

LABEL_45:
  v66 = v38[2];
  if (v66)
  {
    v106 = _swiftEmptyArrayStorage;
    sub_10066CA44(0, v66, 0);
    v67 = 0;
    v68 = v106;
    v95 = v88 + 48;
    v96 = v66;
    v102 = v38;
    v103 = (v89 + 56);
    v92 = (v88 + 8);
    v93 = (v88 + 32);
    v69 = v99;
    while (v67 < v38[2])
    {
      v70 = v38[v67 + 4];
      if (v70)
      {
        v71 = v70;
        v72 = [v71 album];
        if (v72)
        {
          v73 = v72;
          v74 = v97;
          v75 = v101;
          dispatch thunk of LegacyModelObjectConvertible.init(_:)();
          if ((*v95)(v74, 1, v75) == 1)
          {

            sub_1000095E8(v74, &unk_101184730, &unk_100ECB920);
            v76 = 1;
            v69 = v99;
            v77 = v100;
          }

          else
          {
            v78 = *v93;
            (*v93)(v98, v74, v75);
            v79 = [v71 identifiers];
            v80 = [v79 contentItemID];

            if (v80)
            {
              v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v83 = v82;

              v69 = v99;
              v78(v99 + *(v104 + 20), v98, v101);
              v76 = 0;
              *v69 = v81;
              v69[1] = v83;
            }

            else
            {
              (*v92)(v98, v75);

              v76 = 1;
              v69 = v99;
            }

            v77 = v100;
            v42 = v94;
          }

          v66 = v96;
        }

        else
        {
          v77 = v11;
          v76 = 1;
        }
      }

      else
      {
        v77 = v11;
        v76 = 1;
      }

      (*v103)(v69, v76, 1, v104);
      sub_10003D17C(v69, v42, &qword_101191960, &qword_100ECEA50);

      v106 = v68;
      v84 = v42;
      v86 = v68[2];
      v85 = v68[3];
      if (v86 >= v85 >> 1)
      {
        sub_10066CA44((v85 > 1), v86 + 1, 1);
        v69 = v99;
        v68 = v106;
      }

      ++v67;
      v68[2] = v86 + 1;
      v11 = v77;
      sub_10003D17C(v84, v68 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v86, &qword_101191960, &qword_100ECEA50);
      v42 = v84;
      v38 = v102;
      if (v66 == v67)
      {

        return;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
  }
}

char *sub_100577208(char *a1, char *a2)
{
  v3 = v2;
  v63 = a2;
  v64 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v62 - v5);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v62 - v11;
  __chkstk_darwin();
  v70 = &v62 - v12;
  __chkstk_darwin();
  v14 = &v62 - v13;
  __chkstk_darwin();
  v16 = &v62 - v15;
  __chkstk_darwin();
  v18 = &v62 - v17;
  *&v19 = __chkstk_darwin().n128_u64[0];
  v21 = &v62 - v20;
  v22 = [v3 playingItemIndexPath];
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = v8[4];
  v75 = v8 + 4;
  v74(v21, v18, v7);
  v72 = v8[2];
  v73 = v8 + 2;
  result = v72(v16, v21, v7);
  if ((v64 & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v62 = v21;
  v68 = v8;
  if (!v64)
  {
    v26 = 0;
    v30 = v70;
    goto LABEL_20;
  }

  v25 = v64;
  v65 = v6;
  v66 = v3;
  v26 = 0;
  v27 = (v8 + 7);
  v28 = v8;
  v29 = (v8 + 1);
  v67 = (v28 + 6);
  v30 = v70;
  while (1)
  {
    v72(v14, v16, v7);
    result = IndexPath.item.modify();
    if (__OFSUB__(*v31, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    --*v31;
    (result)(v76, 0);
    if ((IndexPath.item.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    result = IndexPath.section.modify();
    if (__OFSUB__(*v32, 1))
    {
      goto LABEL_50;
    }

    --*v32;
    (result)(v76, 0);
    if ((IndexPath.section.getter() & 0x8000000000000000) == 0)
    {
      v33 = v26;
      v34 = v29;
      v35 = v27;
      v36 = v25;
      v37 = v10;
      v38 = v16;
      v39 = [v66 items];
      v40 = [v39 numberOfItemsInSection:IndexPath.section.getter()];

      result = v40 - 1;
      if (__OFSUB__(v40, 1))
      {
        goto LABEL_51;
      }

      IndexPath.item.setter();
      v30 = v70;
      v16 = v38;
      v10 = v37;
      v25 = v36;
      v27 = v35;
      v29 = v34;
      v26 = v33;
      v6 = v65;
LABEL_11:
      v74(v6, v14, v7);
      v41 = 0;
      goto LABEL_12;
    }

    (*v29)(v14, v7);
    v41 = 1;
LABEL_12:
    (*v27)(v6, v41, 1, v7);
    if ((*v67)(v6, 1, v7) == 1)
    {
      break;
    }

    ++v26;
    (*v29)(v16, v7);
    v74(v16, v6, v7);
    if (v25 == v26)
    {
      v26 = v25;
      goto LABEL_19;
    }
  }

  sub_1000095E8(v6, &unk_10118BCE0, &qword_100EC6450);
LABEL_19:
  v3 = v66;
  v8 = v68;
LABEL_20:
  result = v72(v30, v16, v7);
  v43 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v44 = &v63[v43];
  if (__OFADD__(v43, v63))
  {
    goto LABEL_54;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v63 = v16;
  if (v44)
  {
    v45 = v8;
    v46 = 0;
    v66 = (v45 + 7);
    v67 = (v45 + 1);
    v65 = (v45 + 6);
    v42 = _swiftEmptyArrayStorage;
    v64 = v44;
    while (1)
    {
      if (v46 >= v44)
      {
        goto LABEL_46;
      }

      v47 = (v46 + 1);
      if (__OFADD__(v46, 1))
      {
        goto LABEL_47;
      }

      v72(v71, v30, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_100499724(0, *(v42 + 2) + 1, 1, v42);
      }

      v49 = *(v42 + 2);
      v48 = *(v42 + 3);
      if (v49 >= v48 >> 1)
      {
        v42 = sub_100499724((v48 > 1), v49 + 1, 1, v42);
      }

      *(v42 + 2) = v49 + 1;
      v74(&v42[((*(v68 + 80) + 32) & ~*(v68 + 80)) + v68[9] * v49], v71, v7);
      v72(v10, v30, v7);
      result = IndexPath.item.modify();
      if (__OFADD__(*v50, 1))
      {
        goto LABEL_48;
      }

      ++*v50;
      (result)(v76, 0);
      v51 = IndexPath.item.getter();
      v52 = [v3 items];
      v53 = [v52 numberOfItemsInSection:IndexPath.section.getter()];

      v54 = v51 < v53;
      v55 = v69;
      v30 = v70;
      if (v54)
      {
        goto LABEL_36;
      }

      result = IndexPath.section.modify();
      if (__OFADD__(*v56, 1))
      {
        goto LABEL_49;
      }

      ++*v56;
      (result)(v76, 0);
      v57 = IndexPath.section.getter();
      v58 = [v3 items];
      v59 = [v58 numberOfSections];

      if (v57 < v59)
      {
        break;
      }

      v60 = *v67;
      (*v67)(v10, v7);
      v30 = v70;
      v60(v70, v7);
      v61 = 1;
      v55 = v69;
LABEL_38:
      (*v66)(v55, v61, 1, v7);
      if ((*v65)(v55, 1, v7) == 1)
      {
        v60(v63, v7);
        v60(v62, v7);
        sub_1000095E8(v55, &unk_10118BCE0, &qword_100EC6450);
        return v42;
      }

      result = (v74)(v30, v55, v7);
      ++v46;
      v44 = v64;
      if (v47 == v64)
      {
        v60(v30, v7);
        goto LABEL_43;
      }
    }

    IndexPath.item.setter();
    v55 = v69;
    v30 = v70;
LABEL_36:
    v60 = *v67;
    (*v67)(v30, v7);
    v74(v55, v10, v7);
    v61 = 0;
    goto LABEL_38;
  }

  v60 = v8[1];
  v42 = _swiftEmptyArrayStorage;
  v60(v30, v7);
LABEL_43:
  v60(v63, v7);
  v60(v62, v7);
  return v42;
}

void sub_100577AE8(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v66 = type metadata accessor for Album();
  v3 = *(v66 - 8);
  __chkstk_darwin();
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v53 - v5;
  __chkstk_darwin();
  v60 = &v53 - v6;
  __chkstk_darwin();
  v65 = (&v53 - v7);
  sub_10010FC20(&qword_101191960, &qword_100ECEA50);
  __chkstk_darwin();
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v53 - v9;
  __chkstk_darwin();
  v61 = &v53 - v11;
  __chkstk_darwin();
  v14 = &v53 - v13;
  v15 = *(a1 + 16);
  v63 = v3;
  v54 = v12;
  v55 = a1;
  if (v15)
  {
    v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    v59 = (v3 + 16);
    v64 = (v3 + 32);
    v18 = _swiftEmptyArrayStorage;
    v19 = &qword_101191960;
    do
    {
      sub_1000089F8(v16, v14, v19, &qword_100ECEA50);
      sub_10003D17C(v14, v10, v19, &qword_100ECEA50);
      v20 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
      if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
      {
        sub_1000095E8(v10, v19, &qword_100ECEA50);
      }

      else
      {
        v21 = v19;
        v22 = *(v20 + 20);
        v23 = v60;
        v24 = v66;
        (*v59)(v60, &v10[v22], v66);
        sub_10057E180(v10, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
        v25 = *v64;
        (*v64)(v65, v23, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10049935C(0, *(v18 + 2) + 1, 1, v18);
        }

        v27 = *(v18 + 2);
        v26 = *(v18 + 3);
        if (v27 >= v26 >> 1)
        {
          v18 = sub_10049935C((v26 > 1), v27 + 1, 1, v18);
        }

        *(v18 + 2) = v27 + 1;
        v25(&v18[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v27], v65, v66);
        v19 = v21;
      }

      v16 += v17;
      --v15;
    }

    while (v15);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v28 = sub_1006701EC(v18);

  sub_100576444(v55, v56, v68);
  v29 = (v70 >> 1) - v69;
  v64 = v28;
  v60 = v68[0];
  if (v70 >> 1 == v69)
  {
    v30 = _swiftEmptyArrayStorage;
  }

  else
  {
    if ((v70 >> 1) <= v69)
    {
      __break(1u);
      return;
    }

    v38 = *(v54 + 72);
    v65 = (v63 + 16);
    v39 = (v63 + 32);
    v40 = v68[1] + v69 * v38;
    v30 = _swiftEmptyArrayStorage;
    v41 = v58;
    do
    {
      v42 = v61;
      sub_1000089F8(v40, v61, &qword_101191960, &qword_100ECEA50);
      sub_10003D17C(v42, v41, &qword_101191960, &qword_100ECEA50);
      v43 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
      if ((*(*(v43 - 8) + 48))(v41, 1, v43) == 1)
      {
        sub_1000095E8(v41, &qword_101191960, &qword_100ECEA50);
      }

      else
      {
        v44 = v66;
        v45 = v41 + *(v43 + 20);
        v46 = v57;
        (*v65)(v57, v45, v66);
        sub_10057E180(v41, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
        v47 = *v39;
        (*v39)(v62, v46, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_10049935C(0, *(v30 + 2) + 1, 1, v30);
        }

        v49 = *(v30 + 2);
        v48 = *(v30 + 3);
        if (v49 >= v48 >> 1)
        {
          v30 = sub_10049935C((v48 > 1), v49 + 1, 1, v30);
        }

        *(v30 + 2) = v49 + 1;
        v47(&v30[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v49], v62, v66);
        v41 = v58;
      }

      v40 += v38;
      --v29;
    }

    while (v29);
  }

  swift_unknownObjectRelease();
  v31 = sub_1006701EC(v30);

  swift_beginAccess();

  sub_10066B9CC(v32);
  v34 = v33;
  v35 = sub_10057585C(v31);

  v36 = sub_100670388(v35);

  if (*(v34 + 16) <= v36[2] >> 3)
  {
    v67 = v36;
    sub_100700128(v34);
    v37 = v67;
  }

  else
  {
    v37 = sub_1007009C0(v34, v36);
  }

  v50 = v64;
  v51 = v37[2];

  if (v51)
  {
    v52 = sub_10057E4E8(v50, v34);

    sub_1005781F4(v52);
  }

  else
  {
  }
}

void sub_1005781F4(uint64_t a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v128[-v2];
  v4 = type metadata accessor for Album();
  v148 = *(v4 - 8);
  __chkstk_darwin();
  v138 = &v128[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v137 = &v128[-v6];
  __chkstk_darwin();
  v8 = &v128[-v7];
  __chkstk_darwin();
  v10 = &v128[-v9];
  __chkstk_darwin();
  v144 = &v128[-v11];

  v13 = sub_10057ECC0(v12, v1);
  v141 = v1;

  if (!*(v13 + 16))
  {

    return;
  }

  v14 = sub_10010CC68(_swiftEmptyArrayStorage);
  if (qword_10117F548 == -1)
  {
    goto LABEL_3;
  }

  while (2)
  {
    swift_once();
LABEL_3:
    v15 = type metadata accessor for Logger();
    v16 = sub_1000060E4(v15, static Logger.NowPlaying.motion);

    v140 = v16;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v147 = v4;
    v131 = v8;
    v139 = v10;
    v132 = v3;
    v135 = v14;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v151 = v21;
      *v20 = 136446210;
      sub_100042904(&unk_10118D190, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      v22 = Set.description.getter();
      v24 = sub_1000105AC(v22, v23, &v151);
      v10 = v139;

      *(v20 + 4) = v24;
      v4 = v147;
      _os_log_impl(&_mh_execute_header, v17, v18, "Checking catalogIDs for albums=%{public}s", v20, 0xCu);
      sub_10000959C(v21);
    }

    v25 = v13 + 56;
    v26 = 1 << *(v13 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v13 + 56);
    v29 = (v26 + 63) >> 6;
    v149 = v148 + 16;
    v143 = v148 + 32;
    v145 = (v148 + 8);

    v14 = 0;
    *&v30 = 136446466;
    v133 = v30;
    v3 = v137;
    v142 = v29;
    v146 = v13;
    v136 = v13 + 56;
LABEL_8:
    v31 = v14;
    if (!v28)
    {
      goto LABEL_11;
    }

    do
    {
      while (1)
      {
        v14 = v31;
LABEL_16:
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = v148;
        v34 = *(v148 + 16);
        v8 = v144;
        v34(v144, *(v13 + 48) + *(v148 + 72) * (v32 | (v14 << 6)), v4);
        (*(v33 + 32))(v10, v8, v4);
        v35 = Album.catalogID.getter();
        if (v36)
        {
          break;
        }

        (*v145)(v10, v4);
        v31 = v14;
        v13 = v146;
        v29 = v142;
        if (!v28)
        {
          goto LABEL_11;
        }
      }

      v37 = v35;
      v38 = v36;
      v39 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v39 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v55 = v131;
        v34(v131, v139, v4);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v130 = v56;
          v59 = v58;
          v134 = swift_slowAlloc();
          v151 = v134;
          *v59 = v133;

          v60 = MusicItemID.description.getter();
          v129 = v57;
          v61 = v60;
          v62 = v55;
          v64 = v63;

          v65 = sub_1000105AC(v61, v64, &v151);

          *(v59 + 4) = v65;
          *(v59 + 12) = 2082;
          sub_100042904(&unk_1011926D0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v67;
          v69 = v62;
          v8 = *v145;
          (*v145)(v69, v4);
          v70 = sub_1000105AC(v66, v68, &v151);

          *(v59 + 14) = v70;
          v71 = v130;
          _os_log_impl(&_mh_execute_header, v130, v129, "Found catalogID %{public}s for album=%{public}s", v59, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v8 = *v145;
          (*v145)(v55, v4);
        }

        v72 = Album.id.getter();
        v134 = v73;
        v74 = v135;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v74;
        v76 = sub_100019C10(v37, v38);
        v78 = *(v74 + 16);
        v79 = (v77 & 1) == 0;
        v80 = __OFADD__(v78, v79);
        v81 = v78 + v79;
        if (v80)
        {
          goto LABEL_67;
        }

        v82 = v77;
        if (*(v74 + 24) >= v81)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v92 = v76;
            sub_1006C85B8();
            v76 = v92;
          }
        }

        else
        {
          sub_1006C0D88(v81, isUniquelyReferenced_nonNull_native);
          v76 = sub_100019C10(v37, v38);
          if ((v82 & 1) != (v83 & 1))
          {
            goto LABEL_69;
          }
        }

        v3 = v137;
        v84 = v151;
        v135 = v151;
        if (v82)
        {
          v85 = (v151[7] + 16 * v76);
          v86 = v134;
          *v85 = v72;
          v85[1] = v86;
        }

        else
        {
          v151[(v76 >> 6) + 8] |= 1 << v76;
          v87 = (v84[6] + 16 * v76);
          *v87 = v37;
          v87[1] = v38;
          v88 = (v84[7] + 16 * v76);
          v89 = v134;
          *v88 = v72;
          v88[1] = v89;
          v90 = v84[2];
          v80 = __OFADD__(v90, 1);
          v91 = v90 + 1;
          if (v80)
          {
            goto LABEL_68;
          }

          v84[2] = v91;
        }

        v13 = v146;
        v4 = v147;
        v10 = v139;
        v29 = v142;
        (v8)(v139, v147);
        goto LABEL_8;
      }

      v8 = v139;
      v34(v3, v139, v4);
      v40 = Logger.logObject.getter();
      v41 = v3;
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v42))
      {
        v43 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v151 = v134;
        *v43 = v133;
        v44 = MusicItemID.description.getter();
        v46 = v45;

        v47 = sub_1000105AC(v44, v46, &v151);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        sub_100042904(&unk_1011926D0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v51 = v41;
        v52 = *v145;
        (*v145)(v51, v147);
        v53 = sub_1000105AC(v48, v50, &v151);

        *(v43 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v40, v42, "Empty catalogID %{public}s for album=%{public}s… skipping", v43, 0x16u);
        swift_arrayDestroy();

        v4 = v147;

        (v52)(v8, v4);
        v31 = v14;
        v13 = v146;
        v3 = v137;
      }

      else
      {

        v54 = *v145;
        (*v145)(v41, v4);
        (v54)(v8, v4);
        v31 = v14;
        v13 = v146;
        v3 = v41;
      }

      v25 = v136;
      v10 = v8;
      v29 = v142;
    }

    while (v28);
    while (1)
    {
LABEL_11:
      v14 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v14 >= v29)
      {
        break;
      }

      v28 = *(v25 + 8 * v14);
      ++v31;
      if (v28)
      {
        goto LABEL_16;
      }
    }

    v93 = v135;
    v94 = *(v135 + 16);
    if (!v94)
    {
      if (!_swiftEmptyArrayStorage[2])
      {
LABEL_60:

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&_mh_execute_header, v125, v126, "No catalogIDs found, bailing out!", v127, 2u);
        }

        return;
      }

LABEL_42:

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v151 = v101;
        *v100 = 136446210;
        v102 = Array.description.getter();
        v104 = sub_1000105AC(v102, v103, &v151);

        *(v100 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v98, v99, "Requesting editorial video artworks for catalogIDs=%{public}s", v100, 0xCu);
        sub_10000959C(v101);
      }

      sub_10010FC20(&unk_101192970, &qword_100EBD7C0);
      v144 = swift_allocBox();
      swift_getKeyPath();
      sub_100042904(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      MusicCatalogResourceRequest.init<A>(matching:memberOf:)();
      sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
      v105 = type metadata accessor for MusicCatalogResourceRequestOption();
      v106 = *(v105 - 8);
      v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_100EBC6B0;
      (*(v106 + 104))(v108 + v107, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v105);
      MusicCatalogResourceRequest.options.setter();
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100EBC6C0;
      sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
      *(v14 + 32) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
      MusicCatalogResourceRequest.properties.setter();
      v109 = 1 << *(v13 + 32);
      v110 = -1;
      if (v109 < 64)
      {
        v110 = ~(-1 << v109);
      }

      v111 = v110 & *(v13 + 56);
      v8 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_inProgressRequests;
      v10 = ((v109 + 63) >> 6);

      v4 = 0;
      v13 = v148;
      while (v111)
      {
        v112 = v4;
        v3 = v146;
LABEL_53:
        v113 = __clz(__rbit64(v111));
        v111 &= v111 - 1;
        v114 = *(v3 + 6) + *(v13 + 72) * (v113 | (v112 << 6));
        v115 = v138;
        v116 = v147;
        (*(v13 + 16))(v138, v114, v147);
        v117 = Album.id.getter();
        v14 = v118;
        (*(v13 + 8))(v115, v116);
        swift_beginAccess();
        sub_1003B3B90(&v150, v117, v14);
        swift_endAccess();
      }

      v3 = v146;
      while (1)
      {
        v112 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v112 >= v10)
        {

          v119 = type metadata accessor for TaskPriority();
          v120 = v132;
          (*(*(v119 - 8) + 56))(v132, 1, 1, v119);
          type metadata accessor for MainActor();
          v121 = v141;

          v122 = v144;

          v123 = static MainActor.shared.getter();
          v124 = swift_allocObject();
          v124[2] = v123;
          v124[3] = &protocol witness table for MainActor;
          v124[4] = v3;
          v124[5] = v122;
          v124[6] = v135;
          v124[7] = v121;
          sub_1001F4CB8(0, 0, v120, &unk_100ED3AB8, v124);

          return;
        }

        v111 = *(v25 + 8 * v112);
        ++v4;
        if (v111)
        {
          v4 = v112;
          goto LABEL_53;
        }
      }

LABEL_64:
      __break(1u);
      continue;
    }

    break;
  }

  v95 = sub_1003ADD34(*(v135 + 16), 0);
  v96 = sub_100197614(&v151, v95 + 4, v94, v93);
  v97 = v151;

  sub_10005C9F8(v97);
  if (v96 == v94)
  {
    if (!v95[2])
    {
      goto LABEL_60;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100579298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[15] = a4;
  v8 = type metadata accessor for Album();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v7[22] = v9;
  v7[23] = *(v9 - 8);
  v7[24] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_101192970, &qword_100EBD7C0);
  v7[25] = v10;
  v7[26] = *(v10 - 8);
  v7[27] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101181C50, &qword_100EBD7B8);
  v7[28] = v11;
  v7[29] = *(v11 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = sub_10010FC20(&qword_1011815C8, &qword_100ED3AC0);
  v7[32] = swift_task_alloc();
  v7[33] = swift_projectBox();
  type metadata accessor for MainActor();
  v7[34] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[35] = v13;
  v7[36] = v12;

  return _swift_task_switch(sub_100579520, v13, v12);
}

uint64_t sub_100579520()
{
  v16 = v0;
  v1 = sub_10057585C(v0[15]);
  v2 = sub_100670388(v1);

  sub_100575E24(v2);
  v4 = v3;

  if (*(v4 + 16))
  {
    sub_10010FC20(&qword_1011959B8, &unk_100EDDA30);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = _swiftEmptyDictionarySingleton;
  }

  v15 = v5;

  sub_10057DCCC(v6, 1, &v15);
  v7 = v0[33];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[25];

  v0[37] = v15;
  swift_beginAccess();
  (*(v9 + 16))(v8, v7, v10);
  v11 = swift_task_alloc();
  v0[38] = v11;
  *v11 = v0;
  v11[1] = sub_1005796E4;
  v12 = v0[30];
  v13 = v0[25];

  return MusicCatalogResourceRequest.response()(v12, v13);
}

uint64_t sub_1005796E4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  (*(v2[26] + 8))(v2[27], v2[25]);
  v3 = v2[36];
  v4 = v2[35];
  if (v0)
  {
    v5 = sub_100579E84;
  }

  else
  {
    v5 = sub_10057986C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10057986C()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];

  MusicCatalogResourceResponse.items.getter();
  (*(v4 + 8))(v3, v5);
  (*(v7 + 16))(v2, v6, v8);
  v9 = *(v1 + 36);
  sub_100020674(&unk_10118C140, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  (*(v7 + 8))(v6, v8);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v2 + v9) != v0[14])
  {
    v13 = v0[19];
    v56 = (v13 + 16);
    v54 = (v13 + 8);
    v55 = (v13 + 32);
    v51 = v0[37];
    v52 = v0[16];
    v53 = v9;
    v57 = v2;
    while (1)
    {
      v14 = v0[21];
      v15 = v0[20];
      v16 = v0[18];
      v17 = dispatch thunk of Collection.subscript.read();
      (*v56)(v14);
      v17(v0 + 2, 0);
      v18 = v57;
      dispatch thunk of Collection.formIndex(after:)();
      (*v55)(v15, v14, v16);
      v19 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
      if (v19)
      {
        v20 = v19;
        v21 = Album.catalogID.getter();
        if (!v22)
        {
          goto LABEL_19;
        }

        if (!*(v52 + 16))
        {

LABEL_19:

          if (qword_10117F548 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_1000060E4(v37, static Logger.NowPlaying.motion);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();
          v40 = os_log_type_enabled(v38, v39);
          v41 = v0[20];
          v42 = v0[18];
          v43 = v53;
          if (v40)
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "Editorial video artwork could not be stored. Could not find album ID for given catalogID.", v44, 2u);
          }

          (*v54)(v41, v42);
          goto LABEL_8;
        }

        v23 = sub_100019C10(v21, v22);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_19;
        }

        v26 = (*(v52 + 56) + 16 * v23);
        v27 = *v26;
        v28 = v26[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = sub_100019C10(v27, v28);
        v32 = v51[2];
        v33 = (v30 & 1) == 0;
        result = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        v34 = v30;
        if (v51[3] >= result)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1006CA094();
          }
        }

        else
        {
          sub_1006C3A4C(result, isUniquelyReferenced_nonNull_native);
          v35 = sub_100019C10(v27, v28);
          if ((v34 & 1) != (v36 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v31 = v35;
        }

        v45 = v0[20];
        v46 = v0[18];
        if (v34)
        {

          *(v51[7] + 8 * v31) = v20;

          (*v54)(v45, v46);
        }

        else
        {
          v51[(v31 >> 6) + 8] |= 1 << v31;
          v47 = (v51[6] + 16 * v31);
          *v47 = v27;
          v47[1] = v28;
          *(v51[7] + 8 * v31) = v20;
          result = (*v54)(v45, v46);
          v48 = v51[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_35;
          }

          v51[2] = v50;
        }

        v18 = v57;
      }

      else
      {
        (*v54)(v0[20], v0[18]);
      }

      v43 = v53;
LABEL_8:
      dispatch thunk of Collection.endIndex.getter();
      if (*(v18 + v43) == v0[14])
      {
        goto LABEL_3;
      }
    }
  }

  v51 = v0[37];
LABEL_3:
  sub_1000095E8(v0[32], &qword_1011815C8, &qword_100ED3AC0);
  sub_10057A308(v51);
  v10 = sub_10057585C(v0[15]);

  swift_beginAccess();
  sub_10057A28C(v10);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100579E84()
{
  v1 = v0[39];

  v0[12] = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  sub_10057F264();
  if (swift_dynamicCast())
  {
    v2 = v0[13];
    if ([v2 code] == -7101)
    {

      if (qword_10117F548 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000060E4(v3, static Logger.NowPlaying.motion);
      v4 = v2;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138543362;
        *(v7 + 4) = v4;
        *v8 = v4;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v5, v6, "Editorial video artworks request invalid, treating as 404: %{public}@", v7, 0xCu);
        sub_1000095E8(v8, &unk_101183D70, &unk_100EC6540);
      }

      v10 = v0[37];

      sub_10057A308(v10);
      goto LABEL_14;
    }
  }

  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, static Logger.NowPlaying.motion);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Editorial video artworks request failed: %{public}@", v14, 0xCu);
    sub_1000095E8(v15, &unk_101183D70, &unk_100EC6540);

    goto LABEL_15;
  }

LABEL_14:

LABEL_15:
  v17 = sub_10057585C(v0[15]);

  swift_beginAccess();
  sub_10057A28C(v17);
  swift_endAccess();

  v18 = v0[1];

  return v18();
}

void sub_10057A28C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = (a1 + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_100195A08(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }
}

void sub_10057A308(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100575B64(a1);
    if (qword_10117F548 != -1)
    {
LABEL_25:
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, static Logger.NowPlaying.motion);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v27 = v6;
      *v5 = 136446210;
      sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
      sub_100020674(&unk_101183BD0, &qword_101183BC8, &unk_100EBF620, &protocol conformance descriptor for [A]);
      v7 = BidirectionalCollection<>.joined(separator:)();
      v9 = v8;

      v10 = sub_1000105AC(v7, v9, &v27);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Updating cache with items:\n%{public}s", v5, 0xCu);
      sub_10000959C(v6);
    }

    else
    {
    }

    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    if (v16)
    {
      while (1)
      {
        v19 = v18;
LABEL_21:
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = v20 | (v19 << 6);
        v22 = (*(a1 + 48) + 16 * v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = *(*(a1 + 56) + 8 * v21);

        sub_10057A6C8(v24, v23, v25);

        if (!v16)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(a1 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_21;
      }
    }

    sub_100069DB0();
  }

  else
  {
    if (qword_10117F548 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, static Logger.NowPlaying.motion);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "No loaded artworks to update", v13, 2u);
    }
  }
}

void sub_10057A6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v76 = sub_10010FC20(&unk_10118D180, &qword_100EC8EC0);
  v8 = *(v76 - 8);
  __chkstk_darwin();
  v75 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v74 = (&v66 - v10);
  __chkstk_darwin();
  v73 = &v66 - v11;
  sub_10010FC20(&qword_10118EB40, &qword_100ECAFA0);
  __chkstk_darwin();
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v66 - v14;

  Date.init()();
  v16 = type metadata accessor for Cache.Entry(0);
  *&v15[*(v16 + 20)] = a3;
  v68 = *(v16 - 8);
  v17 = *(v68 + 56);
  v78 = v68 + 56;
  v79 = v16;
  v77 = v17;
  (v17)(v15, 0, 1);
  swift_beginAccess();

  sub_100407CB8(v15, a1, a2);
  swift_endAccess();
  v67 = v4;
  v18 = *(v4 + 16);
  v19 = *(v18 + 16);
  if (v19 < 0xC9)
  {
    return;
  }

  v71 = v13;
  v20 = sub_1003ADE48(v19, 0);
  sub_100197A9C(&v81, (v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80))), v19, v18);
  v22 = v21;
  v23 = v81;
  swift_bridgeObjectRetain_n();
  sub_10005C9F8(v23);
  if (v22 != v19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v81 = v20;
  sub_10057B2D8(&v81);

  v24 = sub_10053E394(v19 - 100, v81);
  v70 = v26;
  v72 = v27 >> 1;
  v28 = (v27 >> 1) - v25;
  if (!__OFSUB__(v27 >> 1, v25))
  {
    v29 = v24;
    if (!v28)
    {
      swift_unknownObjectRelease();
      v31 = _swiftEmptyArrayStorage;
LABEL_15:
      v43 = v31[2];
      v44 = v67;
      if (v43)
      {
        v45 = v31 + 5;
        do
        {
          v48 = *(v45 - 1);
          v49 = *v45;
          swift_beginAccess();

          v50 = sub_100019C10(v48, v49);
          v51 = v44;
          if (v52)
          {
            v53 = v50;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v55 = *(v51 + 16);
            v80 = v55;
            *(v51 + 16) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1006C9E3C();
              v55 = v80;
            }

            v47 = v71;
            sub_10057E118(*(v55 + 56) + *(v68 + 72) * v53, v71, type metadata accessor for Cache.Entry);
            sub_100409C14(v53, v55, v56);
            *(v51 + 16) = v55;

            v46 = 0;
            v44 = v51;
          }

          else
          {
            v46 = 1;
            v47 = v71;
          }

          v77(v47, v46, 1, v79);
          swift_endAccess();

          sub_1000095E8(v47, &qword_10118EB40, &qword_100ECAFA0);
          v45 += 2;
          --v43;
        }

        while (v43);
      }

      if (qword_10117F548 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    v30 = v25;
    v81 = _swiftEmptyArrayStorage;
    sub_10066C9A0(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v66 = v29;
    v31 = v81;
    v32 = v72;
    if (v30 > v72)
    {
      v32 = v30;
    }

    v69 = v32;
    while (v69 != v30)
    {
      v33 = v8;
      v34 = v73;
      sub_1000089F8(v70 + *(v8 + 72) * v30, v73, &unk_10118D180, &qword_100EC8EC0);
      v35 = v74;
      sub_1000089F8(v34, v74, &unk_10118D180, &qword_100EC8EC0);
      v37 = *v35;
      v36 = v35[1];
      v38 = v75;
      v39 = *(v76 + 48);
      *v75 = *v35;
      *(v38 + 8) = v36;
      sub_10057E118(v35 + v39, v38 + v39, type metadata accessor for Cache.Entry);

      sub_1000095E8(v38, &unk_10118D180, &qword_100EC8EC0);
      sub_1000095E8(v34, &unk_10118D180, &qword_100EC8EC0);
      v81 = v31;
      v41 = v31[2];
      v40 = v31[3];
      if (v41 >= v40 >> 1)
      {
        sub_10066C9A0((v40 > 1), v41 + 1, 1);
        v31 = v81;
      }

      v31[2] = v41 + 1;
      v42 = &v31[2 * v41];
      v42[4] = v37;
      v42[5] = v36;
      ++v30;
      v8 = v33;
      if (v72 == v30)
      {
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_24:
  v57 = type metadata accessor for Logger();
  sub_1000060E4(v57, static Logger.NowPlaying.motion);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v81 = v61;
    *v60 = 136446210;
    v62 = Array.description.getter();
    v64 = v63;

    v65 = sub_1000105AC(v62, v64, &v81);

    *(v60 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v58, v59, "Evicting ids: %{public}s", v60, 0xCu);
    sub_10000959C(v61);
  }

  else
  {
  }
}

uint64_t sub_10057ADE4()
{
  v1 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService__queueMetadata;
  v2 = sub_10010FC20(&qword_10118A878, &unk_100EC6120);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10057AECC(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v21 = &v20 - v6;
  v8 = sub_10010FC20(&unk_10118D180, &qword_100EC8EC0) - 8;
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v20 - v11;
  sub_1000089F8(a1, &v20 - v11, &unk_10118D180, &qword_100EC8EC0);

  v13 = *(v8 + 56);
  v14 = *(v4 + 16);
  v14(v7, &v12[v13], v3);
  sub_10057E180(&v12[v13], type metadata accessor for Cache.Entry);
  sub_1000089F8(v23, v10, &unk_10118D180, &qword_100EC8EC0);

  v15 = *(v8 + 56);
  v16 = v22;
  v14(v22, &v10[v15], v3);
  sub_10057E180(&v10[v15], type metadata accessor for Cache.Entry);
  v17 = v21;
  LOBYTE(v15) = static Date.< infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v17, v3);
  return v15 & 1;
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t *sub_10057B1A0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10057E934(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_10057B23C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10057E1E0(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_10057B2D8(uint64_t *a1)
{
  v2 = *(sub_10010FC20(&unk_10118D180, &qword_100EC8EC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10059F06C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10057B38C(v5);
  *a1 = v3;
}

void sub_10057B38C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10010FC20(&unk_10118D180, &qword_100EC8EC0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10010FC20(&unk_10118D180, &qword_100EC8EC0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10057B948(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_10057B4D0(0, v2, 1, a1);
  }
}

void sub_10057B4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = type metadata accessor for Date();
  v8 = *(v54 - 8);
  __chkstk_darwin();
  v53 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v38 - v10;
  v11 = sub_10010FC20(&unk_10118D180, &qword_100EC8EC0);
  __chkstk_darwin();
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v38 - v13;
  __chkstk_darwin();
  v50 = &v38 - v14;
  __chkstk_darwin();
  v59 = &v38 - v15;
  __chkstk_darwin();
  v58 = &v38 - v17;
  v40 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v16 + 72);
    v48 = (v8 + 8);
    v49 = (v8 + 16);
    v20 = v18 + v19 * (a3 - 1);
    v45 = -v19;
    v46 = v18;
    v21 = a1 - a3;
    v39 = v19;
    v22 = v18 + v19 * a3;
    v57 = v11;
    v23 = v49;
LABEL_5:
    v43 = v20;
    v44 = a3;
    v41 = v22;
    v42 = v21;
    v55 = v21;
    while (1)
    {
      v24 = v11;
      v25 = v58;
      sub_1000089F8(v22, v58, &unk_10118D180, &qword_100EC8EC0);
      v26 = v59;
      sub_1000089F8(v20, v59, &unk_10118D180, &qword_100EC8EC0);
      v27 = v50;
      sub_1000089F8(v25, v50, &unk_10118D180, &qword_100EC8EC0);

      v28 = *(v24 + 48);
      v56 = *v23;
      v29 = v52;
      v30 = v54;
      v56(v52, v27 + v28, v54);
      sub_10057E180(v27 + v28, type metadata accessor for Cache.Entry);
      v31 = v51;
      sub_1000089F8(v26, v51, &unk_10118D180, &qword_100EC8EC0);

      v32 = *(v57 + 48);
      v33 = v53;
      v56(v53, v31 + v32, v30);
      sub_10057E180(v31 + v32, type metadata accessor for Cache.Entry);
      LOBYTE(v24) = static Date.< infix(_:_:)();
      v34 = *v48;
      v35 = v33;
      v11 = v57;
      (*v48)(v35, v30);
      v34(v29, v30);
      sub_1000095E8(v59, &unk_10118D180, &qword_100EC8EC0);
      sub_1000095E8(v58, &unk_10118D180, &qword_100EC8EC0);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v44 + 1;
        v20 = v43 + v39;
        v21 = v42 - 1;
        v22 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v36 = v47;
      sub_10003D17C(v22, v47, &unk_10118D180, &qword_100EC8EC0);
      swift_arrayInitWithTakeFrontToBack();
      sub_10003D17C(v36, v20, &unk_10118D180, &qword_100EC8EC0);
      v20 += v45;
      v22 += v45;
      if (__CFADD__(v55++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10057B948(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v127 = a1;
  v148 = type metadata accessor for Date();
  v7 = *(v148 - 8);
  __chkstk_darwin();
  v147 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v123 - v9;
  sub_10010FC20(&unk_10118D180, &qword_100EC8EC0);
  __chkstk_darwin();
  v129 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v123 - v11;
  __chkstk_darwin();
  v145 = &v123 - v12;
  __chkstk_darwin();
  v144 = &v123 - v13;
  __chkstk_darwin();
  v151 = &v123 - v14;
  __chkstk_darwin();
  v152 = &v123 - v15;
  __chkstk_darwin();
  v125 = &v123 - v16;
  __chkstk_darwin();
  v124 = &v123 - v18;
  v19 = *(a3 + 1);
  v131 = a3;
  v136 = v20;
  if (v19 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_99:
    a4 = *v127;
    if (!*v127)
    {
      goto LABEL_141;
    }

    v7 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v136;
    if (isUniquelyReferenced_nonNull_native)
    {
      v116 = v7;
    }

    else
    {
LABEL_135:
      v116 = sub_10059F01C(v7);
    }

    v154 = v116;
    v7 = *(v116 + 2);
    if (v7 >= 2)
    {
      while (1)
      {
        v117 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        a3 = (v7 - 1);
        v118 = *&v116[16 * v7];
        v119 = v116;
        v120 = *&v116[16 * v7 + 24];
        v121 = v138;
        sub_10057C6AC((v117 + *(v4 + 9) * v118), (v117 + *(v4 + 9) * *&v116[16 * v7 + 16]), v117 + *(v4 + 9) * v120, a4);
        v138 = v121;
        if (v121)
        {
          goto LABEL_113;
        }

        if (v120 < v118)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_10059F01C(v119);
        }

        if (v7 - 2 >= *(v119 + 2))
        {
          goto LABEL_129;
        }

        v122 = &v119[16 * v7];
        *v122 = v118;
        *(v122 + 1) = v120;
        v154 = v119;
        sub_10059EF90(a3);
        v116 = v154;
        v7 = *(v154 + 2);
        a3 = v131;
        if (v7 <= 1)
        {
          goto LABEL_113;
        }
      }
    }

    goto LABEL_113;
  }

  v123 = a4;
  v21 = 0;
  v142 = (v7 + 8);
  v143 = (v7 + 16);
  v22 = _swiftEmptyArrayStorage;
  v23 = &qword_100EC8EC0;
  v153 = v17;
  while (1)
  {
    v24 = v21;
    v130 = v22;
    if (v21 + 1 < v19)
    {
      v25 = *a3;
      a4 = *(v136 + 9);
      v26 = &v25[a4 * (v21 + 1)];
      v7 = v23;
      v27 = v124;
      sub_1000089F8(v26, v124, &unk_10118D180, v7);
      v150 = v25;
      v28 = &v25[a4 * v21];
      v29 = v125;
      sub_1000089F8(v28, v125, &unk_10118D180, v7);
      v30 = v138;
      LODWORD(v135) = sub_10057AECC(v27, v29);
      v138 = v30;
      if (!v30)
      {
        sub_1000095E8(v29, &unk_10118D180, v7);
        sub_1000095E8(v27, &unk_10118D180, v7);
        v126 = v21;
        v31 = v21 + 2;
        v32 = v150 + a4 * (v21 + 2);
        v23 = v7;
        v33 = a4;
        v139 = a4;
        v137 = v19;
        while (v19 != v31)
        {
          v149 = v31;
          v150 = v32;
          v34 = v152;
          sub_1000089F8(v32, v152, &unk_10118D180, v23);
          v140 = v26;
          v35 = v151;
          sub_1000089F8(v26, v151, &unk_10118D180, v23);
          v36 = v144;
          sub_1000089F8(v34, v144, &unk_10118D180, &qword_100EC8EC0);

          v37 = *(v153 + 48);
          v38 = *v143;
          v4 = v146;
          v39 = v148;
          (*v143)(v146, v36 + v37, v148);
          sub_10057E180(v36 + v37, type metadata accessor for Cache.Entry);
          v40 = v145;
          sub_1000089F8(v35, v145, &unk_10118D180, &qword_100EC8EC0);

          v41 = *(v153 + 48);
          v42 = v147;
          (v38)(v147, v40 + v41, v39);
          v19 = v137;
          sub_10057E180(v40 + v41, type metadata accessor for Cache.Entry);
          a4 = static Date.< infix(_:_:)() & 1;
          v7 = *v142;
          (*v142)(v42, v39);
          (v7)(v4, v39);
          v23 = &qword_100EC8EC0;
          sub_1000095E8(v35, &unk_10118D180, &qword_100EC8EC0);
          sub_1000095E8(v152, &unk_10118D180, &qword_100EC8EC0);
          v33 = v139;
          v31 = v149 + 1;
          v32 = v150 + v139;
          v26 = v140 + v139;
          if ((v135 & 1) != a4)
          {
            v19 = v149;
            break;
          }
        }

        a3 = v131;
        v24 = v126;
        if (v135)
        {
          if (v19 < v126)
          {
            goto LABEL_134;
          }

          if (v126 < v19)
          {
            a4 = v33 * (v19 - 1);
            v43 = v19;
            v44 = v19 * v33;
            v137 = v43;
            v45 = v126;
            v7 = v126 * v33;
            do
            {
              if (v45 != --v43)
              {
                v46 = *v131;
                if (!*v131)
                {
                  goto LABEL_138;
                }

                v4 = (v46 + v7);
                sub_10003D17C(v46 + v7, v129, &unk_10118D180, v23);
                if (v7 < a4 || v4 >= v46 + v44)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v7 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_10003D17C(v129, v46 + a4, &unk_10118D180, v23);
                v33 = v139;
              }

              ++v45;
              a4 -= v33;
              v44 -= v33;
              v7 += v33;
            }

            while (v45 < v43);
            v24 = v126;
            v19 = v137;
            a3 = v131;
          }
        }

        goto LABEL_24;
      }

      sub_1000095E8(v29, &unk_10118D180, &qword_100EC8EC0);
      sub_1000095E8(v27, &unk_10118D180, &qword_100EC8EC0);
LABEL_113:

      return;
    }

    v19 = v21 + 1;
LABEL_24:
    v47 = *(a3 + 1);
    if (v19 >= v47)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v19, v24))
    {
      goto LABEL_131;
    }

    if (v19 - v24 >= v123)
    {
LABEL_33:
      a4 = v19;
      if (v19 < v24)
      {
        goto LABEL_130;
      }

      goto LABEL_34;
    }

    if (__OFADD__(v24, v123))
    {
      goto LABEL_132;
    }

    if (v24 + v123 >= v47)
    {
      a4 = *(a3 + 1);
    }

    else
    {
      a4 = v24 + v123;
    }

    if (a4 < v24)
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (v19 == a4)
    {
      goto LABEL_33;
    }

    v97 = *a3;
    v98 = *(v136 + 9);
    v99 = *a3 + v98 * (v19 - 1);
    v139 = -v98;
    v126 = v24;
    v100 = v24 - v19;
    v140 = v97;
    v128 = v98;
    v7 = v97 + v19 * v98;
    v101 = v153;
    v132 = a4;
LABEL_87:
    v137 = v19;
    v133 = v7;
    v134 = v100;
    v102 = v100;
    v135 = v99;
LABEL_88:
    v149 = v102;
    v103 = v152;
    sub_1000089F8(v7, v152, &unk_10118D180, v23);
    v104 = v151;
    sub_1000089F8(v99, v151, &unk_10118D180, v23);
    v105 = v144;
    sub_1000089F8(v103, v144, &unk_10118D180, v23);

    v106 = *(v101 + 48);
    v150 = *v143;
    v107 = v146;
    v108 = v148;
    v150(v146, v105 + v106, v148);
    sub_10057E180(v105 + v106, type metadata accessor for Cache.Entry);
    v109 = v145;
    sub_1000089F8(v104, v145, &unk_10118D180, &qword_100EC8EC0);

    v110 = *(v153 + 48);
    v4 = v147;
    v150(v147, v109 + v110, v108);
    sub_10057E180(v109 + v110, type metadata accessor for Cache.Entry);
    LOBYTE(v103) = static Date.< infix(_:_:)();
    v111 = *v142;
    (*v142)(v4, v108);
    v111(v107, v108);
    v23 = &qword_100EC8EC0;
    sub_1000095E8(v151, &unk_10118D180, &qword_100EC8EC0);
    sub_1000095E8(v152, &unk_10118D180, &qword_100EC8EC0);
    if (v103)
    {
      break;
    }

    v101 = v153;
LABEL_86:
    v19 = v137 + 1;
    v99 = v135 + v128;
    v100 = v134 - 1;
    v7 = v133 + v128;
    a4 = v132;
    if (v137 + 1 != v132)
    {
      goto LABEL_87;
    }

    a3 = v131;
    v24 = v126;
    if (v132 < v126)
    {
      goto LABEL_130;
    }

LABEL_34:
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v132 = a4;
    if (v48)
    {
      v22 = v130;
    }

    else
    {
      v22 = sub_100498FCC(0, *(v130 + 2) + 1, 1, v130);
    }

    a4 = *(v22 + 2);
    v49 = *(v22 + 3);
    v7 = a4 + 1;
    if (a4 >= v49 >> 1)
    {
      v22 = sub_100498FCC((v49 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v7;
    v50 = &v22[16 * a4];
    v51 = v132;
    *(v50 + 4) = v24;
    *(v50 + 5) = v51;
    v150 = *v127;
    if (!v150)
    {
      goto LABEL_140;
    }

    if (a4)
    {
      while (2)
      {
        v52 = v7 - 1;
        if (v7 >= 4)
        {
          v57 = &v22[16 * v7 + 32];
          v58 = *(v57 - 64);
          v59 = *(v57 - 56);
          v63 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          if (v63)
          {
            goto LABEL_117;
          }

          v62 = *(v57 - 48);
          v61 = *(v57 - 40);
          v63 = __OFSUB__(v61, v62);
          v55 = v61 - v62;
          v56 = v63;
          if (v63)
          {
            goto LABEL_118;
          }

          v64 = &v22[16 * v7];
          v66 = *v64;
          v65 = *(v64 + 1);
          v63 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v63)
          {
            goto LABEL_120;
          }

          v63 = __OFADD__(v55, v67);
          v68 = v55 + v67;
          if (v63)
          {
            goto LABEL_123;
          }

          if (v68 >= v60)
          {
            v86 = &v22[16 * v52 + 32];
            v88 = *v86;
            v87 = *(v86 + 1);
            v63 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v63)
            {
              goto LABEL_127;
            }

            if (v55 < v89)
            {
              v52 = v7 - 2;
            }
          }

          else
          {
LABEL_53:
            if (v56)
            {
              goto LABEL_119;
            }

            v69 = &v22[16 * v7];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_122;
            }

            v75 = &v22[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_126;
            }

            if (v73 + v78 < v55)
            {
              goto LABEL_67;
            }

            if (v55 < v78)
            {
              v52 = v7 - 2;
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            v53 = *(v22 + 4);
            v54 = *(v22 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
            goto LABEL_53;
          }

          v79 = &v22[16 * v7];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_67:
          if (v74)
          {
            goto LABEL_121;
          }

          v82 = &v22[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_124;
          }

          if (v85 < v73)
          {
            break;
          }
        }

        a4 = v52 - 1;
        if (v52 - 1 >= v7)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        v90 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v91 = a3;
        a3 = v22;
        v7 = *&v22[16 * a4 + 32];
        v92 = v52;
        v93 = *&v22[16 * v52 + 40];
        v94 = v138;
        sub_10057C6AC((v90 + *(v136 + 9) * v7), (v90 + *(v136 + 9) * *&v22[16 * v52 + 32]), v90 + *(v136 + 9) * v93, v150);
        v138 = v94;
        if (v94)
        {
          goto LABEL_113;
        }

        if (v93 < v7)
        {
          goto LABEL_115;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v95 = a3;
        }

        else
        {
          v95 = sub_10059F01C(a3);
        }

        if (a4 >= *(v95 + 2))
        {
          goto LABEL_116;
        }

        a3 = v91;
        v96 = &v95[16 * a4];
        *(v96 + 4) = v7;
        *(v96 + 5) = v93;
        v154 = v95;
        sub_10059EF90(v92);
        v22 = v154;
        v7 = *(v154 + 2);
        if (v7 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = *(a3 + 1);
    v21 = v132;
    if (v132 >= v19)
    {
      goto LABEL_99;
    }
  }

  v112 = v149;
  if (v140)
  {
    v113 = v141;
    sub_10003D17C(v7, v141, &unk_10118D180, &qword_100EC8EC0);
    v101 = v153;
    swift_arrayInitWithTakeFrontToBack();
    sub_10003D17C(v113, v99, &unk_10118D180, &qword_100EC8EC0);
    v99 += v139;
    v7 += v139;
    v114 = __CFADD__(v112, 1);
    v102 = v112 + 1;
    if (v114)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_10057C6AC(char *a1, void (**a2)(char *, uint64_t, uint64_t), unint64_t a3, char *a4)
{
  v71 = type metadata accessor for Date();
  v8 = *(v71 - 8);
  __chkstk_darwin();
  v70 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = v59 - v10;
  v77 = sub_10010FC20(&unk_10118D180, &qword_100EC8EC0);
  __chkstk_darwin();
  v68 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = v59 - v12;
  __chkstk_darwin();
  v76 = v59 - v13;
  __chkstk_darwin();
  v78 = v59 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v16;
  v81 = a1;
  v80 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = &a4[v20];
    if (v20 >= 1)
    {
      v40 = -v16;
      v61 = (v8 + 8);
      v62 = (v8 + 16);
      v41 = v39;
      v73 = a4;
      v74 = a1;
      v63 = v40;
      while (2)
      {
        while (1)
        {
          v59[0] = v39;
          v42 = a2 + v40;
          v75 = a2 + v40;
          v64 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v81 = a2;
              v79 = v59[0];
              goto LABEL_58;
            }

            v60 = v39;
            v72 = a3 + v40;
            v65 = v41 + v40;
            v66 = a3;
            v44 = v78;
            sub_1000089F8(v41 + v40, v78, &unk_10118D180, &qword_100EC8EC0);
            sub_1000089F8(v42, v76, &unk_10118D180, &qword_100EC8EC0);
            v45 = v67;
            sub_1000089F8(v44, v67, &unk_10118D180, &qword_100EC8EC0);

            v46 = v77;
            v47 = *(v77 + 48);
            v48 = *v62;
            v49 = v69;
            v50 = v71;
            (*v62)(v69, v45 + v47, v71);
            sub_10057E180(v45 + v47, type metadata accessor for Cache.Entry);
            v51 = v68;
            sub_1000089F8(v76, v68, &unk_10118D180, &qword_100EC8EC0);

            v52 = *(v46 + 48);
            v53 = v70;
            v48(v70, v51 + v52, v50);
            sub_10057E180(v51 + v52, type metadata accessor for Cache.Entry);
            v54 = static Date.< infix(_:_:)();
            v55 = *v61;
            (*v61)(v53, v50);
            v55(v49, v50);
            sub_1000095E8(v76, &unk_10118D180, &qword_100EC8EC0);
            sub_1000095E8(v78, &unk_10118D180, &qword_100EC8EC0);
            if (v54)
            {
              break;
            }

            v56 = v65;
            v39 = v65;
            a3 = v72;
            v57 = v73;
            if (v66 < v41 || v72 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v74;
              v42 = v75;
              v40 = v63;
            }

            else
            {
              a1 = v74;
              v42 = v75;
              v40 = v63;
              if (v66 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v41 = v39;
            v43 = v56 > v57;
            a2 = v64;
            if (!v43)
            {
              goto LABEL_56;
            }
          }

          a3 = v72;
          v58 = v73;
          if (v66 < v64 || v72 >= v64)
          {
            break;
          }

          a1 = v74;
          a2 = v75;
          v39 = v60;
          v40 = v63;
          if (v66 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v41 <= v58)
          {
            goto LABEL_56;
          }
        }

        a2 = v75;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v74;
        v39 = v60;
        v40 = v63;
        if (v41 > v58)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v81 = a2;
    v79 = v39;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || &a1[v19] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = &a4[v19];
    v79 = &a4[v19];
    if (v19 >= 1 && a2 < a3)
    {
      v63 = (v8 + 8);
      v64 = (v8 + 16);
      v72 = a3;
      v65 = v16;
      do
      {
        v73 = a4;
        v74 = a1;
        v75 = a2;
        v22 = v78;
        sub_1000089F8(a2, v78, &unk_10118D180, &qword_100EC8EC0);
        v23 = v76;
        sub_1000089F8(a4, v76, &unk_10118D180, &qword_100EC8EC0);
        v24 = v22;
        v25 = v67;
        sub_1000089F8(v24, v67, &unk_10118D180, &qword_100EC8EC0);

        v26 = v77;
        v27 = *(v77 + 48);
        v28 = *v64;
        v29 = v69;
        v30 = v71;
        (*v64)(v69, v25 + v27, v71);
        sub_10057E180(v25 + v27, type metadata accessor for Cache.Entry);
        v31 = v68;
        sub_1000089F8(v23, v68, &unk_10118D180, &qword_100EC8EC0);

        v32 = *(v26 + 48);
        v33 = v70;
        v28(v70, v31 + v32, v30);
        sub_10057E180(v31 + v32, type metadata accessor for Cache.Entry);
        v34 = static Date.< infix(_:_:)();
        v35 = *v63;
        (*v63)(v33, v30);
        v35(v29, v30);
        sub_1000095E8(v23, &unk_10118D180, &qword_100EC8EC0);
        sub_1000095E8(v78, &unk_10118D180, &qword_100EC8EC0);
        if (v34)
        {
          a4 = v73;
          v36 = v74;
          v37 = v65;
          a2 = (v75 + v65);
          if (v74 < v75 || v74 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v72;
          }

          else
          {
            v38 = v72;
            if (v74 != v75)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v36 = v74;
          a2 = v75;
          v37 = v65;
          a4 = (v73 + v65);
          if (v74 < v73 || v74 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v72;
          }

          else
          {
            v38 = v72;
            if (v74 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v80 = a4;
        }

        a1 = (v36 + v37);
        v81 = a1;
      }

      while (a4 < v66 && a2 < v38);
    }
  }

LABEL_58:
  sub_10085E1B4(&v81, &v80, &v79);
}

void (*sub_10057CEDC(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for EditorialVideoArtworkFlavor();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10057DC70(v5);
  v5[12] = sub_10057D26C(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10057D018;
}

void sub_10057D018(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t (*sub_10057D0B0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10057DCA4(v7);
  v7[9] = sub_10057D51C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10057F334;
}

uint64_t (*sub_10057D15C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10057DCA4(v7);
  v7[9] = sub_10057D73C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10057D208;
}

void sub_10057D20C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10057D26C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for EditorialVideoArtworkFlavor();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_1006BE63C(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1006C8730();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1006C1048(v19, a3 & 1);
    v14 = sub_1006BE63C(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_10057D41C;
}

void sub_10057D41C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_1006C782C(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_100408BAC(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

void (*sub_10057D51C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_100019C10(a2, a3);
  *(v11 + 9) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1006C9150();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1006C2194(v18, a4 & 1);
    v13 = sub_100019C10(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 16 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
  }

  else
  {
    v24 = 0;
    v25 = 2;
  }

  *v11 = v24;
  *(v11 + 8) = v25;
  return sub_10057D684;
}

void sub_10057D684(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 9);
  if (v5 == 2)
  {
    if (*(*a1 + 9))
    {
      v7 = v3[5];
      v8 = *v3[4];
      sub_10057E0C4(*(v8 + 48) + 16 * v7);
      sub_1004093C0(v7, v8, v9);
    }
  }

  else
  {
    v11 = v3[4];
    v10 = v3[5];
    if (v6)
    {
      v12 = (*v11)[7] + 16 * v10;
      *v12 = v4;
      *(v12 + 8) = v5 & 1;
    }

    else
    {
      sub_1006C79B8(v10, v3[2], v3[3], v4, v5 & 1, *v11);
    }
  }

  free(v3);
}

void (*sub_10057D73C(void *a1, uint64_t a2, uint64_t a3, char a4))(void **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for Cache.Entry(0);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_10010FC20(&qword_10118EB40, &qword_100ECAFA0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_100019C10(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_10057E118(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for Cache.Entry);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_10057DA18;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_1006C9E3C();
      goto LABEL_16;
    }

    sub_1006C36D4(v24, a4 & 1);
    v28 = sub_100019C10(a2, a3);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v10[11] = v28;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10057DA18(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  v4 = (*(*a1 + 4) + 48);
  v5 = *(*a1 + 10);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_1000089F8(v5, v6, &qword_10118EB40, &qword_100ECAFA0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_10057E118(v9, *(v2 + 6), type metadata accessor for Cache.Entry);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_10057E118(v13, v14, type metadata accessor for Cache.Entry);
        sub_1006C7C34(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_1000089F8(v5, v17, &qword_10118EB40, &qword_100ECAFA0);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v22 = *(v2 + 2);
      sub_10057E118(v9, *(v2 + 7), type metadata accessor for Cache.Entry);
      v11 = *v22;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_10057E118(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for Cache.Entry);
      goto LABEL_10;
    }
  }

  sub_1000095E8(v9, &qword_10118EB40, &qword_100ECAFA0);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_10057E0C4(*(v20 + 48) + 16 * v19);
    sub_100409C14(v19, v20, v21);
  }

LABEL_10:
  v23 = *(v2 + 9);
  v24 = *(v2 + 10);
  v26 = *(v2 + 7);
  v25 = *(v2 + 8);
  v28 = *(v2 + 5);
  v27 = *(v2 + 6);
  sub_1000095E8(v24, &qword_10118EB40, &qword_100ECAFA0);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);

  free(v2);
}

uint64_t (*sub_10057DC70(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10057DC98;
}

uint64_t (*sub_10057DCA4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10057F32C;
}

void sub_10057DCCC(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_100019C10(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1006C3A4C(v15, v5 & 1);
    v10 = sub_100019C10(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v10;
  sub_1006CA094();
  v10 = v18;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v20 = (v19[6] + 16 * v10);
  *v20 = v7;
  v20[1] = v6;
  *(v19[7] + 8 * v10) = v8;
  v21 = v19[2];
  v14 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v35._object = 0x8000000100E501D0;
    v35._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v35);
    _print_unlocked<A, B>(_:_:)();
    v36._countAndFlagsBits = 39;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v19[2] = v22;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v23 = 1;
    while (v23 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v24 = *a3;

      v25 = sub_100019C10(v7, v6);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v26;
      if (v24[3] < v29)
      {
        sub_1006C3A4C(v29, 1);
        v25 = sub_100019C10(v7, v6);
        if ((v16 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v31 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = (v31[6] + 16 * v25);
      *v32 = v7;
      v32[1] = v6;
      *(v31[7] + 8 * v25) = v8;
      v33 = v31[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v23;
      v31[2] = v34;
      v5 += 3;
      if (v37 == v23)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_10057E060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Cache.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057E118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10057E180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10057E1E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = type metadata accessor for Album();
  v9 = __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v44 = v8 + 16;
  v45 = v11;
  v20 = a4 + 56;
  v46 = v8;
  v47 = v7;
  v42 = 0;
  v43 = (v8 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v12 << 6);
    v25 = *(v49 + 48);
    v26 = *(v46 + 72);
    v48 = v24;
    (*(v46 + 16))(v11, v25 + v26 * v24, v6, v9);
    v27 = Album.id.getter();
    v29 = v28;
    if (*(a4 + 16) && (v30 = v27, Hasher.init(_seed:)(), String.hash(into:)(), v31 = Hasher._finalize()(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v30 && v35[1] == v29;
        if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      v18 = v50;
    }

    else
    {
LABEL_22:

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v37 = __OFADD__(v42++, 1);
      v18 = v50;
      if (v37)
      {
        __break(1u);
LABEL_25:
        v38 = v49;

        sub_1003B20F8(v41, v40, v42, v38);
        return;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v50 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10057E4E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v48 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v37 = v10;
    v38 = v3;
    v36 = &v36;
    __chkstk_darwin();
    v39 = &v36 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v11);
    v10 = 0;
    v12 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v42 = v7 + 16;
    v43 = v7;
    v11 = a2 + 56;
    v40 = 0;
    v41 = (v7 + 8);
    v44 = v6;
    v45 = a1;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v47 = (v15 - 1) & v15;
LABEL_14:
      v20 = v17 | (v10 << 6);
      v21 = *(a1 + 48);
      v22 = *(v7 + 72);
      v46 = v20;
      v3 = v48;
      (*(v7 + 16))(v48, v21 + v22 * v20, v6);
      v23 = Album.id.getter();
      v25 = v24;
      if (*(a2 + 16) && (v3 = v23, Hasher.init(_seed:)(), String.hash(into:)(), v26 = Hasher._finalize()(), v27 = -1 << *(a2 + 32), v28 = v26 & ~v27, ((*(v11 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a2 + 48) + 16 * v28);
          v31 = *v30 == v3 && v30[1] == v25;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v11 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v6 = v44;
        (*v41)(v48, v44);
        a1 = v45;
        v7 = v43;
        v15 = v47;
      }

      else
      {
LABEL_23:

        v6 = v44;
        (*v41)(v48, v44);
        a1 = v45;
        *&v39[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
        v32 = __OFADD__(v40++, 1);
        v7 = v43;
        v15 = v47;
        if (v32)
        {
          __break(1u);
LABEL_26:
          v33 = sub_1003B20F8(v39, v37, v40, a1);

          return v33;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_26;
      }

      v19 = *(v12 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v47 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();

  v33 = sub_10057B23C(v35, v10, a1, a2);

  return v33;
}

void sub_10057E934(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v38 = a1;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a3;
  v10 = *(a3 + 56);
  v37 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v45 = a4;
  v42 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_inProgressRequests;
  swift_beginAccess();
  v14 = 0;
  v15 = 0;
  v16 = (v11 + 63) >> 6;
  v43 = v7;
  v44 = v6;
  v40 = (v7 + 8);
  v41 = v7 + 16;
  while (2)
  {
    v39 = v14;
    while (1)
    {
      if (!v13)
      {
        v18 = v15;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v15 >= v16)
          {
            goto LABEL_26;
          }

          v19 = *(v37 + 8 * v15);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v48 = (v19 - 1) & v19;
            goto LABEL_14;
          }
        }

        __break(1u);
        return;
      }

      v17 = __clz(__rbit64(v13));
      v48 = (v13 - 1) & v13;
LABEL_14:
      v20 = v17 | (v15 << 6);
      v21 = *(v47 + 48);
      v22 = *(v43 + 72);
      v46 = v20;
      (*(v43 + 16))(v9, v21 + v22 * v20, v6);
      v23 = *(v45 + v42);

      v24 = v9;
      v25 = Album.id.getter();
      v27 = v26;
      if (!*(v23 + 16))
      {
        break;
      }

      v28 = v25;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v23 + 32);
      v31 = v29 & ~v30;
      if (((*(v23 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        break;
      }

      v32 = ~v30;
      while (1)
      {
        v33 = (*(v23 + 48) + 16 * v31);
        v34 = *v33 == v28 && v33[1] == v27;
        if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v23 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v9 = v24;
      v6 = v44;
      (*v40)(v24, v44);
      v13 = v48;
    }

LABEL_23:

    v9 = v24;
    v6 = v44;
    (*v40)(v24, v44);
    *(v38 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v14 = v39 + 1;
    v13 = v48;
    if (!__OFADD__(v39, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:
  v35 = v47;

  sub_1003B20F8(v38, v36, v39, v35);
}

uint64_t sub_10057ECC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v49 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v34 = swift_slowAlloc();

      v32 = sub_10057B1A0(v34, v10, a1, a2);

      return v32;
    }
  }

  v36 = v10;
  v37 = v3;
  v35[1] = v35;
  __chkstk_darwin();
  v38 = v35 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v38, v11);
  v12 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v13 = ~(-1 << v11);
  }

  else
  {
    v13 = -1;
  }

  v3 = v13 & *(a1 + 56);
  v42 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_inProgressRequests;
  swift_beginAccess();
  v14 = 0;
  v15 = 0;
  v10 = (v11 + 63) >> 6;
  v41 = v7 + 16;
  v40 = (v7 + 8);
  v45 = a1;
  v46 = a2;
  v43 = v7;
  v44 = v6;
  while (2)
  {
    v39 = v14;
    while (1)
    {
      if (!v3)
      {
        v17 = v15;
        while (1)
        {
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v15 >= v10)
          {
            goto LABEL_27;
          }

          v18 = *(v12 + 8 * v15);
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v48 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

      v16 = __clz(__rbit64(v3));
      v48 = (v3 - 1) & v3;
LABEL_15:
      v19 = v16 | (v15 << 6);
      v20 = *(a1 + 48);
      v21 = *(v7 + 72);
      v47 = v19;
      v11 = v49;
      (*(v7 + 16))(v49, v20 + v21 * v19, v6);
      v22 = *(a2 + v42);

      v23 = Album.id.getter();
      v25 = v24;
      if (!*(v22 + 16))
      {
        break;
      }

      v26 = v23;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v22 + 32);
      v11 = v27 & ~v28;
      if (((*(v22 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        break;
      }

      v29 = ~v28;
      while (1)
      {
        v30 = (*(v22 + 48) + 16 * v11);
        v31 = *v30 == v26 && v30[1] == v25;
        if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v11 = (v11 + 1) & v29;
        if (((*(v22 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v6 = v44;
      (*v40)(v49, v44);
      a1 = v45;
      a2 = v46;
      v7 = v43;
      v3 = v48;
    }

LABEL_24:

    v6 = v44;
    (*v40)(v49, v44);
    a2 = v46;
    *&v38[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
    v14 = v39 + 1;
    a1 = v45;
    v7 = v43;
    v3 = v48;
    if (!__OFADD__(v39, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_27:
  v32 = sub_1003B20F8(v38, v36, v39, a1);

  return v32;
}

uint64_t sub_10057F190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_100579298(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10057F264()
{
  result = qword_1011929C0;
  if (!qword_1011929C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011929C0);
  }

  return result;
}

uint64_t sub_10057F2D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10057F348(__int128 *a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10057F824(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 64));
  sub_10010B100(a1, *(v1 + 72));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 96));
}

void sub_10057F590()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  type metadata accessor for TitledSection();
  type metadata accessor for TVShow();
  sub_10057F824(&qword_101181C60, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CFC0, &qword_100EC8C68);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v3._countAndFlagsBits = v1;
  v3._object = v2;
  MusicLibrarySectionedRequest.filterItems(text:)(v3);
}

Swift::Int sub_10057F688()
{
  Hasher.init(_seed:)();
  sub_10057F348(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10057F6CC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10057F348(v2);
  return Hasher._finalize()();
}

unint64_t sub_10057F70C()
{
  result = qword_101195A58;
  if (!qword_101195A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195A58);
  }

  return result;
}

unint64_t sub_10057F7A8(uint64_t a1)
{
  result = sub_10057F7D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10057F7D0()
{
  result = qword_101195B38;
  if (!qword_101195B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B38);
  }

  return result;
}

uint64_t sub_10057F824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10057F86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v20 = a4;
  v23 = a5;
  sub_1001109D0(&qword_101195B40, &qword_100ED3C10);
  v9 = type metadata accessor for ModifiedContent();
  v21 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v22 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v19 - v13;
  sub_100008FE4(a2, v31);
  v24 = v31;
  v25 = a6;
  v26 = a1;
  static Alignment.center.getter();
  sub_10010FC20(&qword_101195B48, &qword_100ED3C18);
  sub_100020674(&qword_101195B50, &qword_101195B48, &qword_100ED3C18, &protocol conformance descriptor for _ShapeView<A, B>);
  v15 = v20;
  View.overlay<A>(alignment:content:)();
  v16 = sub_100020674(&qword_101195B58, &qword_101195B40, &qword_100ED3C10, &protocol conformance descriptor for _OverlayModifier<A>);
  v29 = v15;
  v30 = v16;
  WitnessTable = swift_getWitnessTable();
  View.compositingGroup()();
  (*(v21 + 8))(v11, v9);
  v27 = WitnessTable;
  v28 = &protocol witness table for _CompositingGroupEffect;
  swift_getWitnessTable();
  sub_10057FC90();
  View.clipShape<A>(_:style:)();
  (*(v22 + 8))(v14, v12);
  return sub_100267584(v31);
}

void sub_10057FB98(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000954C(a1, a1[3]);
  v6[3] = swift_getAssociatedTypeWitness();
  v6[4] = swift_getAssociatedConformanceWitness();
  sub_10001C8B8(v6);
  dispatch thunk of InsettableShape.inset(by:)();
  sub_100267528(v6, a3);
  *(a3 + 40) = 0;
  sub_100267584(v6);
  *(a3 + 48) = a2;
  *(a3 + 56) = 256;
}

unint64_t sub_10057FC90()
{
  result = qword_101195B60;
  if (!qword_101195B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B60);
  }

  return result;
}

uint64_t sub_10057FD38@<X0>(uint64_t *a1@<X8>)
{
  sub_10000954C(v2, v2[3]);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  sub_10001C8B8(a1);
  return dispatch thunk of InsettableShape.inset(by:)();
}

double sub_10057FDEC@<D0>(uint64_t a1@<X8>)
{
  sub_10000954C(v5, v5[3]);
  dispatch thunk of Shape.path(in:)();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_10057FEA4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

uint64_t sub_10057FF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10057FC90();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10057FF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10057FC90();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10057FFF8(uint64_t a1)
{
  v2 = sub_10057FC90();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_100580048()
{
  result = qword_101195B78;
  if (!qword_101195B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B78);
  }

  return result;
}

unint64_t sub_1005800A4()
{
  result = qword_101195B80;
  if (!qword_101195B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B80);
  }

  return result;
}

unint64_t sub_1005800FC()
{
  result = qword_101195B88;
  if (!qword_101195B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B88);
  }

  return result;
}

unint64_t sub_100580154()
{
  result = qword_101195B90;
  if (!qword_101195B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195B90);
  }

  return result;
}

uint64_t sub_1005801A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005801F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100580270@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4031000000000000;
  *(a2 + 16) = 0;
  v5 = sub_10010FC20(&qword_101195BA8, &qword_100ED3E28);
  sub_1005803FC(v2, a2 + *(v5 + 44));
  v6 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_10010FC20(&qword_101195BB0, &qword_100ED3E30) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = [objc_opt_self() defaultCenter];
  v17 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v18 = sub_10010FC20(&qword_101195BB8, &unk_100ED3E38);
  v19 = v17;
  NSNotificationCenter.publisher(for:object:)();

  v20 = swift_allocObject();
  v21 = *(v3 + 48);
  *(v20 + 48) = *(v3 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(v3 + 64);
  *(v20 + 96) = *(v3 + 80);
  v22 = *(v3 + 16);
  *(v20 + 16) = *v3;
  *(v20 + 32) = v22;
  v23 = (a2 + *(v18 + 56));
  *v23 = sub_10058128C;
  v23[1] = v20;
  return sub_100581294(v3, v25);
}

uint64_t sub_1005803FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v70 = sub_10010FC20(&qword_101195BC0, &qword_100ED3E48);
  v69 = *(v70 - 8);
  __chkstk_darwin();
  v4 = &v66 - v3;
  v68 = sub_10010FC20(&qword_101195BC8, &qword_100ED3E50);
  __chkstk_darwin();
  v6 = &v66 - v5;
  v7 = sub_10010FC20(&qword_101195BD0, &qword_100ED3E58);
  __chkstk_darwin();
  v9 = &v66 - v8;
  v71 = sub_10010FC20(&qword_101195BD8, &qword_100ED3E60);
  __chkstk_darwin();
  v11 = &v66 - v10;
  v12 = sub_10010FC20(&qword_101195BE0, &qword_100ED3E68);
  v74 = *(v12 - 8);
  __chkstk_darwin();
  v73 = &v66 - v13;
  v14 = sub_10010FC20(&qword_101195BE8, &qword_100ED3E70);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v18;
  sub_10010FC20(&qword_101195BF0, &qword_100ED3E78);
  __chkstk_darwin();
  v75 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = *(a1 + 16);
  v77 = &v66 - v20;
  if (v21)
  {
    v22 = swift_allocObject();
    v67 = v14;
    v23 = *(a1 + 48);
    *(v22 + 48) = *(a1 + 32);
    *(v22 + 64) = v23;
    *(v22 + 80) = *(a1 + 64);
    *(v22 + 96) = *(a1 + 80);
    v24 = *(a1 + 16);
    *(v22 + 16) = *a1;
    *(v22 + 32) = v24;
    sub_100581294(a1, v80);
    sub_10010FC20(&qword_101195C00, &qword_100ED3EB8);
    v66 = v12;
    sub_1005813DC();
    Button.init(action:label:)();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v69 + 32))(v6, v4, v70);
    v25 = &v6[*(v68 + 36)];
    v26 = v80[5];
    *(v25 + 4) = v80[4];
    *(v25 + 5) = v26;
    *(v25 + 6) = v80[6];
    v27 = v80[1];
    *v25 = v80[0];
    *(v25 + 1) = v27;
    v28 = v80[3];
    *(v25 + 2) = v80[2];
    *(v25 + 3) = v28;
    v29 = &v9[*(v7 + 36)];
    v30 = *(sub_10010FC20(&qword_101195C20, &qword_100ED3EC8) + 28);
    v31 = enum case for ControlSize.large(_:);
    v32 = type metadata accessor for ControlSize();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    sub_10003D17C(v6, v9, &qword_101195BC8, &qword_100ED3E50);
    v33 = [objc_opt_self() tertiarySystemFillColor];
    v34 = Color.init(_:)();
    LOBYTE(v29) = static Edge.Set.all.getter();
    sub_10003D17C(v9, v11, &qword_101195BD0, &qword_100ED3E58);
    v35 = v71;
    v36 = &v11[*(v71 + 36)];
    *v36 = v34;
    v36[8] = v29;
    v37 = sub_10058155C();
    v38 = v73;
    View.corner(_:)(0, 0, 2, v35, v37);
    sub_1000095E8(v11, &qword_101195BD8, &qword_100ED3E60);
    v79 = *(a1 + 72);
    sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
    State.wrappedValue.getter();
    LOBYTE(v29) = v78;
    KeyPath = swift_getKeyPath();
    v40 = swift_allocObject();
    v41 = (v29 & 1) == 0;
    v42 = v77;
    *(v40 + 16) = v41;
    (*(v74 + 32))(v17, v38, v66);
    v43 = v67;
    v44 = &v17[*(v67 + 36)];
    *v44 = KeyPath;
    v44[1] = sub_100239940;
    v44[2] = v40;
    v45 = v72;
    sub_10003D17C(v17, v72, &qword_101195BE8, &qword_100ED3E70);
    sub_10003D17C(v45, v42, &qword_101195BE8, &qword_100ED3E70);
    (*(v15 + 56))(v42, 0, 1, v43);
  }

  else
  {
    (*(v15 + 56))(&v66 - v20, 1, 1, v14);
  }

  v46 = *(a1 + 8);
  if (v46)
  {
    *&v79 = *a1;
    *(&v79 + 1) = v46;
    sub_100009838();

    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    LODWORD(v79) = static HierarchicalShapeStyle.secondary.getter();
    v46 = Text.foregroundStyle<A>(_:)();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_10011895C(v47, v49, v51 & 1);

    v58 = swift_getKeyPath();
    v59 = v55 & 1;
    sub_10021D0C0(v46, v53, v55 & 1);

    v60 = 1;
  }

  else
  {
    v53 = 0;
    v59 = 0;
    v57 = 0;
    v58 = 0;
    v60 = 0;
  }

  v61 = v77;
  v62 = v75;
  sub_100091A4C(v77, v75);
  v63 = v76;
  sub_100091A4C(v62, v76);
  v64 = v63 + *(sub_10010FC20(&qword_101195BF8, &qword_100ED3E80) + 48);
  sub_1005812CC(v46, v53, v59, v57, v58);
  sub_10058131C(v46, v53, v59, v57, v58);
  *v64 = v46;
  *(v64 + 8) = v53;
  *(v64 + 16) = v59;
  *(v64 + 24) = v57;
  *(v64 + 32) = v58;
  *(v64 + 40) = v60;
  sub_1000095E8(v61, &qword_101195BF0, &qword_100ED3E78);
  sub_10058131C(v46, v53, v59, v57, v58);
  return sub_1000095E8(v62, &qword_101195BF0, &qword_100ED3E78);
}

__n128 sub_100580D14@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_101195C18, &qword_100ED3EC0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v12 - v4;
  sub_10010FC20(&qword_10119A280, &qword_100EC11C0);
  v6 = sub_1001109D0(&unk_1011A1100, &unk_100ED3F40);
  v7 = sub_100238768();
  *&v12[0] = v6;
  *(&v12[0] + 1) = v7;
  swift_getOpaqueTypeConformance2();
  Label.init(title:icon:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v3 + 32))(a1, v5, v2);
  v8 = a1 + *(sub_10010FC20(&qword_101195C00, &qword_100ED3EB8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

void sub_100580F18(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  if (qword_10117F888 != -1)
  {
    swift_once();
  }

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  sub_10011895C(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10011895C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
}

double sub_100581084()
{
  Image.init(systemName:)();
  if (qword_10117F890 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  static Font.Weight.semibold.getter();
  sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  sub_100238768();
  View.fontWeight(_:)();

  return result;
}

uint64_t sub_100581194(uint64_t a1, uint64_t a2)
{
  static ApplicationCapabilities.shared.getter(&v3);
  sub_100014984(&v3);
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  return State.wrappedValue.setter();
}

uint64_t sub_100581200(uint64_t a1)
{
  result = static Font.body.getter();
  qword_101195B98 = result;
  return result;
}

uint64_t sub_100581220(uint64_t a1)
{
  result = static Font.subheadline.getter();
  qword_101195BA0 = result;
  return result;
}

double sub_1005812CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_10021D0C0(a1, a2, a3 & 1);
  }

  return result;
}

double sub_10058131C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_10011895C(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10058136C()
{

  return swift_deallocObject();
}

unint64_t sub_1005813DC()
{
  result = qword_101195C08;
  if (!qword_101195C08)
  {
    sub_1001109D0(&qword_101195C00, &qword_100ED3EB8);
    sub_100020674(&qword_101195C10, &qword_101195C18, &qword_100ED3EC0, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195C08);
  }

  return result;
}

uint64_t sub_100581494(uint64_t a1)
{
  type metadata accessor for ControlSize();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.controlSize.setter();
}

unint64_t sub_10058155C()
{
  result = qword_101195C28;
  if (!qword_101195C28)
  {
    sub_1001109D0(&qword_101195BD8, &qword_100ED3E60);
    sub_100581614();
    sub_100020674(&qword_101195C50, &qword_101195C58, &qword_100ED3F00, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195C28);
  }

  return result;
}

unint64_t sub_100581614()
{
  result = qword_101195C30;
  if (!qword_101195C30)
  {
    sub_1001109D0(&qword_101195BD0, &qword_100ED3E58);
    sub_1005816CC();
    sub_100020674(&qword_101195C48, &qword_101195C20, &qword_100ED3EC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195C30);
  }

  return result;
}

unint64_t sub_1005816CC()
{
  result = qword_101195C38;
  if (!qword_101195C38)
  {
    sub_1001109D0(&qword_101195BC8, &qword_100ED3E50);
    sub_100020674(&qword_101195C40, &qword_101195BC0, &qword_100ED3E48, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195C38);
  }

  return result;
}

uint64_t sub_100581784(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v91 = a6;
  v113 = a5;
  v109 = a4;
  v112 = a3;
  v121 = a2;
  v102 = a1;
  v90 = type metadata accessor for Song();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v88 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v110 = &v88 - v9;
  v120 = type metadata accessor for Track();
  v114 = *(v120 - 8);
  __chkstk_darwin();
  v111 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v88 - v11;
  v98 = sub_10010FC20(&qword_101187EB8, &qword_100EC35B8);
  v97 = *(v98 - 1);
  __chkstk_darwin();
  v96 = &v88 - v12;
  v13 = sub_10010FC20(&qword_101187EC8, &qword_100EC35C8);
  v118 = *(v13 - 8);
  v119 = v13;
  __chkstk_darwin();
  v95 = &v88 - v14;
  v15 = sub_10010FC20(&qword_101187ED0, &unk_100EC35D0);
  v116 = *(v15 - 8);
  v117 = v15;
  __chkstk_darwin();
  v106 = &v88 - v16;
  v17 = sub_10010FC20(&qword_101187ED8, &qword_100EC35E0);
  v115 = *(v17 - 8);
  __chkstk_darwin();
  v19 = &v88 - v18;
  v20 = sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v88 - v23;
  v25 = sub_10010FC20(&qword_101187EE0, &qword_100EC35E8);
  v92 = v25;
  v93 = *(v25 - 8);
  v26 = v93;
  __chkstk_darwin();
  v28 = &v88 - v27;
  v29 = OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
  v30 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v30 - 8) + 56))(v7 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtC5Music9TrackData__leadingNumberState;
  v124 = 0;
  LOBYTE(v125) = -2;
  v94 = sub_10010FC20(&qword_101187AF0, &qword_100EC31D8);
  Published.init(initialValue:)();
  v32 = v25;
  v33 = v24;
  (*(v26 + 32))(v7 + v31, v28, v32);
  v34 = v7 + OBJC_IVAR____TtC5Music9TrackData__artist;
  v35 = type metadata accessor for AttributedString();
  (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
  sub_1000089F8(v24, v22, &qword_101180C90, &unk_100EBC730);
  v105 = v22;
  v107 = v20;
  Published.init(initialValue:)();
  sub_1000095E8(v24, &qword_101180C90, &unk_100EBC730);
  v36 = *(v115 + 32);
  v101 = v34;
  v108 = v17;
  v36(v34, v19, v17);
  v37 = (v7 + OBJC_IVAR____TtC5Music9TrackData_album);
  *v37 = 0;
  v37[1] = 0;
  v38 = v7 + OBJC_IVAR____TtC5Music9TrackData__duration;
  v124 = 0;
  LOBYTE(v125) = 1;
  v39 = sub_10010FC20(&qword_101187648, "p\a\v");
  v40 = v106;
  v99 = v39;
  Published.init(initialValue:)();
  v41 = *(v116 + 32);
  v100 = v38;
  v41(v38, v40, v117);
  v42 = OBJC_IVAR____TtC5Music9TrackData__previewID;
  v124 = 0;
  v125 = 0;
  v43 = sub_10010FC20(&unk_1011A49A0, &qword_100ECF970);
  v44 = v95;
  v104 = v43;
  Published.init(initialValue:)();
  v45 = *(v118 + 32);
  v106 = v42;
  v45(v7 + v42, v44, v119);
  v46 = OBJC_IVAR____TtC5Music9TrackData__contextMenuProvider;
  v124 = 0;
  v125 = 0;
  sub_10010FC20(&qword_101187B38, &qword_100EC31E8);
  v47 = v96;
  Published.init(initialValue:)();
  (*(v97 + 32))(v7 + v46, v47, v98);
  v48 = OBJC_IVAR____TtC5Music9TrackData_socialContributor;
  v49 = type metadata accessor for SocialProfile();
  (*(*(v49 - 8) + 56))(v7 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtC5Music9TrackData_reactionsConfiguration;
  v51 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
  (*(*(v51 - 8) + 56))(v7 + v50, 1, 1, v51);
  v52 = v102;
  v53 = COERCE_DOUBLE(Album.popularity(for:)()) >= 0.7;
  LOBYTE(v50) = v53 & ~v54;
  swift_beginAccess();
  LOBYTE(v122) = v50;
  Published.init(initialValue:)();
  swift_endAccess();
  v55 = Track.trackNumber.getter();
  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55;
  }

  v58 = v56 & 1 | (v55 == 0);
  swift_beginAccess();
  (*(v93 + 8))(v7 + v31, v92);
  v122 = v57;
  LOBYTE(v123) = v58;
  Published.init(initialValue:)();
  swift_endAccess();
  v59 = v114;
  v60 = v103;
  v61 = v120;
  v98 = *(v114 + 16);
  v98(v103, v52, v120);
  v62 = v61;
  v97 = *(v59 + 88);
  LOBYTE(v61) = (v97)(v60, v61) == enum case for Track.musicVideo(_:);
  v103 = *(v59 + 8);
  (v103)(v60, v62);
  swift_beginAccess();
  LOBYTE(v122) = v61;
  Published.init(initialValue:)();
  swift_endAccess();
  v63 = sub_1005825B0();
  if (!v64)
  {
    v63 = Track.title.getter();
  }

  v65 = v63;
  v66 = v64;
  swift_beginAccess();
  v122 = v65;
  v123 = v66;
  Published.init(initialValue:)();
  swift_endAccess();
  sub_100582834(v109 & 1, v33);
  v67 = v101;
  swift_beginAccess();
  (*(v115 + 8))(v67, v108);
  sub_1000089F8(v33, v105, &qword_101180C90, &unk_100EBC730);
  Published.init(initialValue:)();
  sub_1000095E8(v33, &qword_101180C90, &unk_100EBC730);
  swift_endAccess();
  v68 = Track.duration.getter();
  LOBYTE(v66) = v69;
  v70 = v100;
  swift_beginAccess();
  (*(v116 + 8))(v70, v117);
  v122 = v68;
  LOBYTE(v123) = v66 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v71 = v110;
  Track.contentRating.getter();
  LOBYTE(v68) = TextBadge.init(for:isPlayable:)(v71, 1);
  swift_beginAccess();
  LOBYTE(v122) = v68;
  Published.init(initialValue:)();
  swift_endAccess();
  v72 = v111;
  v73 = v120;
  v98(v111, v52, v120);
  if ((v97)(v72, v73) == enum case for Track.song(_:))
  {
    (*(v114 + 96))(v72, v73);
    v74 = v89;
    v75 = v88;
    v76 = v90;
    (*(v89 + 32))(v88, v72, v90);
    v77 = Song.id.getter();
    v79 = v78;
    (*(v74 + 8))(v75, v76);
    v80 = v113;
    v81 = v103;
  }

  else
  {
    v81 = v103;
    (v103)(v72, v73);
    v77 = 0;
    v79 = 0;
    v80 = v113;
  }

  v82 = v106;
  swift_beginAccess();
  (*(v118 + 8))(&v82[v7], v119);
  v122 = v77;
  v123 = v79;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v122) = v112 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v80)
  {
    v83 = swift_allocObject();
    v84 = v91;
    *(v83 + 16) = v80;
    *(v83 + 24) = v84;
    v85 = sub_100584778;
  }

  else
  {
    v85 = 0;
    v83 = 0;
  }

  v124 = v85;
  v125 = v83;

  static Published.subscript.setter();
  v86 = type metadata accessor for Album();
  (*(*(v86 - 8) + 8))(v121, v86);
  v81(v52, v73);
  return v7;
}

uint64_t sub_1005825B0()
{
  v1 = v0;
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  if ((*(v7 + 88))(v10, v6) != enum case for Track.song(_:))
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  (*(v7 + 96))(v10, v6);
  (*(v3 + 32))(v5, v10, v2);
  v11 = Song.movementNumber.getter();
  if (v12)
  {
    goto LABEL_10;
  }

  v13 = Int.romanNumeral.getter(v11);
  v15 = v14;
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (v17 = v13, v18 = Song.movementName.getter(), !v19))
  {

LABEL_10:
    v24 = Song.movementName.getter();
    goto LABEL_11;
  }

  v20 = v18;
  v21 = v19;
  v26[0] = v17;
  v26[1] = v15;
  v22._countAndFlagsBits = 8238;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v20;
  v23._object = v21;
  String.append(_:)(v23);

  v24 = v26[0];
LABEL_11:
  (*(v3 + 8))(v5, v2);
  return v24;
}

double sub_100582834@<D0>(char a2@<W1>, void *x8_0@<X8>)
{
  if (a2)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v4 = sub_100498A88(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100498A88((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 0;
  }

  v7 = Album.artistName.getter();
  v9 = v8;
  if (v7 == Track.artistName.getter() && v9 == v10)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100498A88(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_100498A88((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      v4[v13 + 32] = 1;
    }
  }

  v14 = type metadata accessor for Track();
  BylineProviding.byline(with:)(v4, v14, &protocol witness table for Track, x8_0);

  return result;
}

uint64_t sub_1005829F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_100582A84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double sub_100582AF8@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t sub_100582B70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_100582BE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_100582C5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t (*sub_100582CD0())(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v0 = v4[0];
  if (!v4[0])
  {
    return 0;
  }

  v1 = v4[1];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10058477C;
}

void sub_100582DC4(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_100582E4C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100582ED0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

uint64_t sub_100582F50(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100582FD4@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_100583050(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &qword_101180C90, &unk_100EBC730);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &qword_101180C90, &unk_100EBC730);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &qword_101180C90, &unk_100EBC730);
}

void sub_100583180(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_100583208(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10058328C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10058330C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100583380(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100583404(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_10058477C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
  }

  sub_100030444(v2, v3);

  return static Published.subscript.setter();
}

uint64_t sub_100583538(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v59 = a4;
  v60 = a5;
  v55 = a3;
  v7 = type metadata accessor for Song();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin();
  v48 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v57 = v46 - v9;
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v54 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (v46 - v11);
  v13 = type metadata accessor for Track();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v58 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v46 - v16;
  v56 = a2;
  v18 = COERCE_DOUBLE(Album.popularity(for:)()) >= 0.7;
  v20 = v18 & ~v19;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v61) = v20;

  static Published.subscript.setter();
  v21 = Track.trackNumber.getter();
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v24 = v22 & 1 | (v21 == 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v23;
  LOBYTE(v62) = v24;

  static Published.subscript.setter();
  v52 = v14[2];
  v53 = v14 + 2;
  v52(v17, a1, v13);
  v51 = v14[11];
  v25 = v51(v17, v13) == enum case for Track.musicVideo(_:);
  v47 = v14;
  v46[0] = v14[1];
  v46[1] = v14 + 1;
  (v46[0])(v17, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v61) = v25;

  static Published.subscript.setter();
  v26 = sub_1005825B0();
  if (!v27)
  {
    v26 = Track.title.getter();
  }

  v28 = v26;
  v29 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v28;
  v62 = v29;

  static Published.subscript.setter();
  sub_100582834(v55 & 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v12, v54, &qword_101180C90, &unk_100EBC730);

  static Published.subscript.setter();
  sub_1000095E8(v12, &qword_101180C90, &unk_100EBC730);
  v30 = Track.duration.getter();
  v32 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v30;
  LOBYTE(v62) = v32 & 1;

  static Published.subscript.setter();
  v33 = v57;
  Track.contentRating.getter();
  LOBYTE(v30) = TextBadge.init(for:isPlayable:)(v33, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v61) = v30;

  static Published.subscript.setter();
  v34 = v58;
  v52(v58, a1, v13);
  if (v51(v34, v13) == enum case for Track.song(_:))
  {
    (v47[12])(v34, v13);
    v36 = v48;
    v35 = v49;
    v37 = v50;
    (*(v49 + 32))(v48, v34, v50);
    v38 = Song.id.getter();
    v40 = v39;
    (*(v35 + 8))(v36, v37);
  }

  else
  {
    (v46[0])(v34, v13);
    v38 = 0;
    v40 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v38;
  v62 = v40;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v59;
  if (v59)
  {
    v42 = swift_allocObject();
    v43 = v60;
    *(v42 + 16) = v41;
    *(v42 + 24) = v43;
    v44 = sub_100584778;
  }

  else
  {
    v44 = 0;
    v42 = 0;
    v43 = v60;
  }

  v61 = v44;
  v62 = v42;

  sub_100030444(v41, v43);
  return static Published.subscript.setter();
}

uint64_t sub_100583C38()
{
  v1 = OBJC_IVAR____TtC5Music9TrackData__isPopular;
  v2 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music9TrackData_artworkInfo, &unk_10119F000, &qword_100EC31D0);
  v4 = OBJC_IVAR____TtC5Music9TrackData__leadingNumberState;
  v5 = sub_10010FC20(&qword_101187EE0, &qword_100EC35E8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC5Music9TrackData__showVideoIcon, v2);
  v6 = OBJC_IVAR____TtC5Music9TrackData__title;
  v7 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC5Music9TrackData__artist;
  v9 = sub_10010FC20(&qword_101187ED8, &qword_100EC35E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = OBJC_IVAR____TtC5Music9TrackData__duration;
  v11 = sub_10010FC20(&qword_101187ED0, &unk_100EC35D0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC5Music9TrackData__explicitBadge;
  v13 = sub_10010FC20(&qword_101187F08, &qword_100EC3618);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC5Music9TrackData__previewID;
  v15 = sub_10010FC20(&qword_101187EC8, &qword_100EC35C8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC5Music9TrackData__contextMenuProvider;
  v17 = sub_10010FC20(&qword_101187EB8, &qword_100EC35B8);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music9TrackData_socialContributor, &qword_101186E00, &qword_100EC31E0);
  v3(v0 + OBJC_IVAR____TtC5Music9TrackData__isProminent, v2);
  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music9TrackData_reactionsConfiguration, &qword_1011A4740, &qword_100EC31F0);
  return v0;
}

uint64_t sub_100583F78()
{
  sub_100583C38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackData(uint64_t a1)
{
  result = qword_101195CE0;
  if (!qword_101195CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100584024(uint64_t a1)
{
  sub_100005390(319, &qword_10119ED80, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10058440C(319, &qword_101195CF0, type metadata accessor for ArtworkImage.Info);
    if (v2 <= 0x3F)
    {
      sub_1000054CC(319, &qword_101187AE8, &qword_101187AF0, &qword_100EC31D8);
      if (v3 <= 0x3F)
      {
        sub_100005390(319, &qword_101187AF8, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_1000054CC(319, &qword_101187B00, &qword_101180C90, &unk_100EBC730);
          if (v5 <= 0x3F)
          {
            sub_1000054CC(319, &qword_101187B10, &qword_101187648, "p\a\v");
            if (v6 <= 0x3F)
            {
              sub_100005390(319, &qword_101187B18, &type metadata for TextBadge);
              if (v7 <= 0x3F)
              {
                sub_1000054CC(319, &qword_101187B20, &unk_1011A49A0, &qword_100ECF970);
                if (v8 <= 0x3F)
                {
                  sub_1000054CC(319, &qword_101187B30, &qword_101187B38, &qword_100EC31E8);
                  if (v9 <= 0x3F)
                  {
                    sub_10058440C(319, &qword_101195CF8, &type metadata accessor for SocialProfile);
                    if (v10 <= 0x3F)
                    {
                      sub_10058440C(319, &unk_101195D00, type metadata accessor for Tracklist.ReactionsConfiguration);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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

void sub_10058440C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005844C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music9TrackData_album);

  return v1;
}

uint64_t (*sub_100584534())(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v0 = v4[0];
  if (!v4[0])
  {
    return 0;
  }

  v1 = v4[1];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_100584768;
}

uint64_t sub_100584638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  return v5;
}

uint64_t sub_1005846A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TrackData(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

unint64_t sub_1005846E8(uint64_t a1)
{
  result = sub_100584710();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100584710()
{
  result = qword_101192B30;
  if (!qword_101192B30)
  {
    type metadata accessor for TrackData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192B30);
  }

  return result;
}

uint64_t sub_100584780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_1005847F4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void sub_100584874(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1005848A4(v1);
}

void sub_1005848A4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;

  static Published.subscript.setter();
  if (*(v1 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) == 1)
  {
    sub_100585D2C();
    v4 = sub_100586A54();
    v5 = sub_100586FC8();
    WaveformPlayIndicator.mode.setter(v5);
  }
}

uint64_t sub_100584950()
{
  v1 = sub_10010FC20(&qword_101196140, &qword_100ED4358);
  v81 = *(v1 - 8);
  v82 = v1;
  __chkstk_darwin();
  v80 = &v64 - v2;
  v3 = sub_10010FC20(&qword_101196148, &qword_100ED4360);
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin();
  v83 = &v64 - v4;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin();
  v84 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v64 - v7;
  v76 = sub_10010FC20(&qword_101196150, &qword_100ED4368);
  v75 = *(v76 - 1);
  __chkstk_darwin();
  v74 = &v64 - v8;
  v9 = sub_10010FC20(&qword_101196158, &unk_100ED4370);
  v78 = *(v9 - 8);
  v79 = v9;
  __chkstk_darwin();
  v77 = &v64 - v10;
  v71 = sub_10010FC20(&unk_101189DD0, &unk_100EBF5C0);
  v69 = *(v71 - 8);
  __chkstk_darwin();
  v68 = &v64 - v11;
  v73 = sub_10010FC20(&qword_101183B30, &unk_100EC5820);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v70 = &v64 - v12;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v91 = &v64 - v13;
  v14 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v66 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v64 - v15;
  v67 = sub_10010FC20(&qword_101189DE0, &qword_100EBD2B0);
  v90 = *(v67 - 8);
  __chkstk_darwin();
  v18 = &v64 - v17;
  v19 = sub_10010FC20(&qword_101196160, &qword_100ED4380);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v64 - v21;
  v23 = OBJC_IVAR____TtC5Music17PlaybackIndicator__nowPlaying;
  v96 = 0;
  sub_10010FC20(&qword_10118DA00, &qword_100EC9738);
  Published.init(initialValue:)();
  (*(v20 + 32))(v0 + v23, v22, v19);
  *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask) = 0;
  *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) = 0;
  v95 = v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_subscriptions;
  *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_subscriptions) = &_swiftEmptySetSingleton;
  v24 = OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext;
  v25 = type metadata accessor for PreviewPlaybackController.Context(0);
  v26 = *(*(v25 - 8) + 56);
  v92 = v0;
  v26(v0 + v24, 1, 1, v25);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v27 = qword_101218AC8;
  (*(*qword_101218AC8 + 456))();
  v28 = sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v29 = static OS_dispatch_queue.main.getter();
  v96 = v29;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v31 = *(v30 - 8);
  v89 = *(v31 + 56);
  v32 = v31 + 56;
  v33 = v91;
  v89(v91, 1, 1, v30);
  v65 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
  v94 = sub_1000206BC();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v33, &qword_101182140, &unk_100EBD2A0);

  v66[1](v16, v14);
  swift_allocObject();
  swift_weakInit();
  v66 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&unk_10118ACC0, &qword_101189DE0, &qword_100EBD2B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v34 = v67;
  Publisher<>.sink(receiveValue:)();

  v35 = v34;
  v36 = v28;
  (*(v90 + 8))(v18, v35);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v38 = v68;
  (*(*v27 + 504))(v37);
  v39 = static OS_dispatch_queue.main.getter();
  v96 = v39;
  v67 = v30;
  v90 = v32;
  v89(v33, 1, 1, v30);
  sub_100020674(&unk_101189E00, &unk_101189DD0, &unk_100EBF5C0, v65);
  v40 = v70;
  v41 = v71;
  v42 = v36;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v33, &qword_101182140, &unk_100EBD2A0);

  (*(v69 + 8))(v38, v41);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_101183B70, &qword_101183B30, &unk_100EC5820, v66);
  v43 = v73;
  Publisher<>.sink(receiveValue:)();

  (*(v72 + 8))(v40, v43);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10010FC20(&qword_1011819B0, &unk_100EBD240);
  v44 = v74;
  Published.projectedValue.getter();
  swift_endAccess();
  v45 = static OS_dispatch_queue.main.getter();
  v96 = v45;
  v46 = v91;
  v47 = v67;
  v48 = v89;
  v89(v91, 1, 1, v67);
  sub_100020674(&qword_101196168, &qword_101196150, &qword_100ED4368, &protocol conformance descriptor for Published<A>.Publisher);
  v64 = v42;
  v49 = v77;
  v50 = v76;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v46, &qword_101182140, &unk_100EBD2A0);

  (*(v75 + 8))(v44, v50);
  swift_allocObject();
  swift_weakInit();
  v76 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_101196170, &qword_101196158, &unk_100ED4370, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v51 = v79;
  Publisher<>.sink(receiveValue:)();

  (*(v78 + 8))(v49, v51);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v52 = v47;
  v53 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();
  v54 = v84;
  NSNotificationCenter.publisher(for:object:)();
  sub_100587304();
  v55 = v80;
  v56 = v88;
  Publisher.merge(with:)();
  v57 = static OS_dispatch_queue.main.getter();
  v96 = v57;
  v48(v46, 1, 1, v52);
  sub_100020674(&qword_101196178, &qword_101196140, &qword_100ED4358, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v58 = v82;
  v59 = v83;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v46, &qword_101182140, &unk_100EBD2A0);

  (*(v81 + 8))(v55, v58);
  swift_allocObject();
  v60 = v92;
  swift_weakInit();

  sub_100020674(&qword_101196180, &qword_101196148, &qword_100ED4360, v76);
  v61 = v86;
  Publisher<>.sink(receiveValue:)();

  (*(v85 + 8))(v59, v61);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v62 = *(v87 + 8);
  v62(v54, v56);
  v62(v93, v56);
  return v60;
}

double sub_100585928(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v2;

    static Published.subscript.setter();
    if (*(v5 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) == 1)
    {
      sub_100585D2C();
      v7 = sub_100586A54();
      v8 = sub_100586FC8();
      WaveformPlayIndicator.mode.setter(v8);
    }
  }

  return result;
}

double sub_100585A00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) == 1)
    {
      sub_100585D2C();
      v4 = sub_100586A54();
      v5 = sub_100586FC8();
      WaveformPlayIndicator.mode.setter(v5);
    }
  }

  return result;
}

double sub_100585A94(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v4 = &v6 - v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100587460(a1, v4);
    sub_100585B58(v4);
  }

  return result;
}

uint64_t sub_100585B58(char *a1)
{
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext;
  swift_beginAccess();
  sub_1005874D0(a1, v1 + v5);
  swift_endAccess();
  sub_100587460(v1 + v5, v4);
  v6 = type metadata accessor for PreviewPlaybackController.Context(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1000095E8(a1, &unk_10119E440, &qword_100EDD2E0);
  }

  else
  {
    sub_1000095E8(v4, &unk_10119E440, &qword_100EDD2E0);
    if (*(v1 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView))
    {
      sub_100585D2C();
      v7 = sub_100586A54();
      v8 = sub_100586FC8();
      WaveformPlayIndicator.mode.setter(v8);
    }

    v4 = a1;
  }

  return sub_1000095E8(v4, &unk_10119E440, &qword_100EDD2E0);
}

double sub_100585CC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) == 1)
    {
      sub_100585D2C();
    }
  }

  return result;
}

void sub_100585D2C()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v24[-1] - v1;
  v3 = sub_100586A54();
  v4 = [v3 window];

  if (!v4)
  {
LABEL_9:
    v12 = OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask;
    if (*(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask))
    {

      Task.cancel()();

      *(v0 + v12) = 0;
LABEL_11:

      return;
    }

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v24);

  v5 = v24[0];
  if (v24[0] && (v6 = [v24[0] state], v5, v6 == 1) || (v7 = v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext, swift_beginAccess(), v8 = type metadata accessor for PreviewPlaybackController.Context(0), !(*(*(v8 - 8) + 48))(v7, 1, v8)) && *(v7 + *(v8 + 32)) == 2 || (v9 = objc_msgSend(v4, "windowScene")) != 0 && (v10 = v9, v11 = objc_msgSend(v9, "activationState"), v10, v11 == 2))
  {

    goto LABEL_9;
  }

  v13 = OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask;
  if (!*(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask))
  {
    v14 = qword_10117F898;
    v15 = *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView);
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_101219020;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v17 = qword_101218AC8;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = v16;
    v19[6] = v15;
    v20 = v15;

    v21 = v16;
    v22 = sub_1001F4CB8(0, 0, v2, &unk_100ED43D8, v19);

    *(v0 + v13) = v22;
    goto LABEL_11;
  }
}

uint64_t sub_10058609C()
{
  v1 = OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask;
  if (*(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_waveformTask))
  {

    Task.cancel()();
  }

  *(v0 + v1) = 0;

  v2 = OBJC_IVAR____TtC5Music17PlaybackIndicator__nowPlaying;
  v3 = sub_10010FC20(&qword_101196160, &qword_100ED4380);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext, &unk_10119E440, &qword_100EDD2E0);
  return v0;
}

uint64_t sub_1005861AC()
{
  sub_10058609C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackIndicator(uint64_t a1)
{
  result = qword_101196080;
  if (!qword_101196080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100586258(uint64_t a1)
{
  sub_100586348(319);
  if (v1 <= 0x3F)
  {
    sub_1005863AC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100586348(uint64_t a1)
{
  if (!qword_101196090)
  {
    sub_1001109D0(&qword_10118DA00, &qword_100EC9738);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101196090);
    }
  }
}

void sub_1005863AC(uint64_t a1)
{
  if (!qword_101196098)
  {
    type metadata accessor for PreviewPlaybackController.Context(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101196098);
    }
  }
}

id sub_100586404()
{
  result = sub_10027181C();
  qword_101219020 = result;
  return result;
}

uint64_t sub_100586424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_10010FC20(&qword_1011880F0, &unk_100ED43E0);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011880F8, &qword_100EC37A8);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10058655C, 0, 0);
}

uint64_t sub_10058655C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = (*(**(v0 + 24) + 296))();
  (*(*v4 + 104))(v4);

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1005866AC;
  v6 = *(v0 + 72);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v6);
}

uint64_t sub_1005866AC()
{

  return _swift_task_switch(sub_1005867A8, 0, 0);
}

uint64_t sub_1005867A8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  if (v4)
  {
    v5 = *(v4 + 2);
    if (v5 >> 31)
    {
      __break(1u);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1004994DC(0, v5, 0, v4);
      }

      v3[13] = v4;
      v6 = v3[4];
      v7 = objc_allocWithZone(MRUWaveformData);
      LODWORD(v8) = 1195081728;
      v3[14] = [v7 initWithFFTSamples:v4 + 32 count:v5 sampleRate:v6 settings:v8];
      type metadata accessor for MainActor();
      v3[15] = static MainActor.shared.getter();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v10;
      a1 = sub_10058691C;
      a2 = v9;
      a3 = v11;
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    (*(v3[10] + 8))(v3[11], v3[9], a3);

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_10058691C()
{
  v1 = *(v0 + 112);

  WaveformPlayIndicator.waveform.setter(v1);

  return _swift_task_switch(sub_1005869A4, 0, 0);
}

uint64_t sub_1005869A4()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1005866AC;
  v2 = *(v0 + 72);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

id sub_100586A54()
{
  v1 = OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator____lazy_storage___waveformView);
  }

  else
  {
    sub_100586AB4();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100586AB4()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v21 - v2;
  v4 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = sub_10010FC20(&unk_101183B20, &unk_100EBDF20);
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin();
  v9 = &v21 - v8;
  if (qword_10117F898 != -1)
  {
    swift_once();
  }

  v10 = qword_101219020;
  v11 = objc_allocWithZone(type metadata accessor for WaveformPlayIndicator(0));
  v12 = WaveformPlayIndicator.init(settings:)(v10);
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10058742C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100029B94;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010B33A8;
  v16 = _Block_copy(aBlock);
  v12;

  [v13 performWithoutAnimation:v16];
  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    WaveformPlayIndicator.$isVisible.getter();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    aBlock[0] = v17;
    v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    sub_100020674(&qword_101184280, &unk_101182130, &unk_100EBF5B0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000206BC();
    v19 = v22;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v3, &qword_101182140, &unk_100EBD2A0);

    (*(v21 + 8))(v6, v19);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&unk_101182180, &unk_101183B20, &unk_100EBDF20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v20 = v24;
    Publisher<>.sink(receiveValue:)();

    (*(v23 + 8))(v9, v20);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *(v1 + OBJC_IVAR____TtC5Music17PlaybackIndicator_hasCreatedWaveformView) = 1;
  }
}

uint64_t sub_100586FC8()
{
  v1 = v0 + OBJC_IVAR____TtC5Music17PlaybackIndicator_previewingContext;
  swift_beginAccess();
  v2 = type metadata accessor for PreviewPlaybackController.Context(0);
  if (!(*(*(v2 - 8) + 48))(v1, 1, v2) && *(v1 + *(v2 + 32)) == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  v3 = v13[0];
  if (v13[0] && (v4 = [v13[0] tracklist], v3, v5 = objc_msgSend(v4, "playingItem"), v4, v5))
  {
    [v5 duration];
    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  v7 = v13[0];
  if (v13[0])
  {
    v8 = [v13[0] state];
  }

  else
  {
    v8 = 0;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v9 = (*(*qword_101218AC8 + 360))();
  v10 = [v9 route];

  if (v10)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = MPAVEndpointRoute.canReceiveAudioSamples.getter();

      if ((v6 & 1) == 0)
      {
        if (!v7)
        {
          return 0;
        }

        goto LABEL_21;
      }

      return 4;
    }
  }

  if (v6)
  {
    return 4;
  }

  v11 = 1;
  if (!v7)
  {
    return 0;
  }

LABEL_21:
  if (v8 == 4)
  {
    return 1;
  }

  if (v8 != 2)
  {
    return 0;
  }

  if (v11)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

double sub_100587294(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100585D2C();
  }

  return result;
}

unint64_t sub_100587304()
{
  result = qword_101183B80;
  if (!qword_101183B80)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183B80);
  }

  return result;
}

uint64_t sub_100587364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100586424(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100587460(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005874D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100587540(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6[0] = *(i - 1);
      v6[1] = v5;

      sub_10058F1B4(v6);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

id sub_1005875D0(uint64_t a1)
{
  v1 = a1;
  if (qword_10117F8A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100587910(v1);
  v4 = v3;
  swift_beginAccess();
  v5 = off_101196190;
  if (!*(off_101196190 + 2))
  {

    goto LABEL_7;
  }

  v6 = sub_100019C10(v2, v4);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:
    swift_endAccess();
    v10 = [objc_opt_self() defaultStore];
    sub_100587910(v1);
    v11 = String._bridgeToObjectiveC()();

    v9 = [v10 BOOLForKey:v11];

    return v9;
  }

  v9 = *(v5[7] + v6);
  swift_endAccess();
  return v9;
}

uint64_t sub_100587718(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = 1 << *(a1 + 32);
  if (result == v6)
  {
    return 0;
  }

  else
  {
    v7 = result;
    v20 = a1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v6)
    {
      v9 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 36);
      sub_100198BF4(*(a1 + 48) + 96 * v7, v19);
      v11 = sub_1006B8F0C(v19[0], v2);
      result = sub_100198CAC(v19);
      if (v11)
      {
        return v7;
      }

      v8 = 1 << *(a1 + 32);
      if (v7 >= v8)
      {
        goto LABEL_24;
      }

      v12 = *(v4 + 8 * v9);
      if ((v12 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v13 = v12 & (-2 << (v7 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (v20 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_1000D8F7C(v7, v10, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_5;
          }
        }

        result = sub_1000D8F7C(v7, v10, 0);
      }

LABEL_5:
      v6 = 1 << *(a1 + 32);
      v7 = v8;
      if (v8 == v6)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t sub_100587910(unsigned __int8 a1)
{
  result = 0xD000000000000029;
  if (a1 - 3 >= 4)
  {
    if (a1 == 1)
    {
      return 0xD000000000000025;
    }

    else
    {
      _StringGuts.grow(_:)(17);
      if (a1)
      {
        if (a1 == 2)
        {
          v3 = 0xD000000000000029;
        }

        else
        {
          v3 = 0xD000000000000027;
        }

        if (a1 == 2)
        {
          v4 = "com.apple.Music.Tooltip.Sing";
        }

        else
        {
          v4 = "anslationAndTransliteration";
        }
      }

      else
      {
        v3 = 0xD00000000000002CLL;
        v4 = "llPlaylists";
      }

      v5 = v4 | 0x8000000000000000;
      String.append(_:)(*&v3);

      v6._countAndFlagsBits = 0x6F6E6B634173692ELL;
      v6._object = 0xEF64656764656C77;
      String.append(_:)(v6);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100587A3C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        if (qword_10117F5F8 != -1)
        {
          swift_once();
        }

        v39 = (*(*qword_101218AC8 + 432))();
        if (v39)
        {
          v40 = v39;
          v41 = [v39 tracklist];

          [v41 transitionsActive];
        }

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v42 = String.init(localized:table:bundle:locale:comment:)();
        v44 = v43;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v51 = String.init(localized:table:bundle:locale:comment:)();
        v53 = v45;
        v46 = type metadata accessor for Tooltip.Configuration(0);
        v47 = (a2 + *(v46 + 28));
        *v47 = 0x78696D6F747561;
        v47[1] = 0xE700000000000000;
        v47[2] = 0;
        v48 = enum case for BubbleImage.image(_:);
        v49 = type metadata accessor for BubbleImage();
        v50 = *(v49 - 8);
        (*(v50 + 104))(v47, v48, v49);
        result = (*(v50 + 56))(v47, 0, 1, v49);
        *a2 = 7;
        *(a2 + 8) = v42;
        *(a2 + 16) = v44;
        v20 = (v46 + 32);
        v60 = 2;
        goto LABEL_17;
      }

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v4 = String.init(localized:table:bundle:locale:comment:)();
      v6 = v21;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v51 = String.init(localized:table:bundle:locale:comment:)();
      v53 = v22;
      v54 = type metadata accessor for Tooltip.Configuration(0);
      v23 = *(v54 + 28);
      v24 = type metadata accessor for BubbleImage();
      v60 = 1;
      result = (*(*(v24 - 8) + 56))(a2 + v23, 1, 1, v24);
      v11 = 6;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      if (a1 == 4)
      {
        v4 = String.init(localized:table:bundle:locale:comment:)();
        v6 = v7;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v51 = String.init(localized:table:bundle:locale:comment:)();
        v53 = v8;
        v54 = type metadata accessor for Tooltip.Configuration(0);
        v9 = *(v54 + 28);
        v10 = type metadata accessor for BubbleImage();
        v60 = 1;
        result = (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
        v11 = 4;
      }

      else
      {
        v4 = String.init(localized:table:bundle:locale:comment:)();
        v6 = v31;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v51 = String.init(localized:table:bundle:locale:comment:)();
        v53 = v32;
        v54 = type metadata accessor for Tooltip.Configuration(0);
        v33 = *(v54 + 28);
        v34 = type metadata accessor for BubbleImage();
        v60 = 1;
        result = (*(*(v34 - 8) + 56))(a2 + v33, 1, 1, v34);
        v11 = 5;
      }
    }

    goto LABEL_15;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v4 = String.init(localized:table:bundle:locale:comment:)();
      v6 = v25;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v51 = String.init(localized:table:bundle:locale:comment:)();
      v53 = v26;
      v54 = type metadata accessor for Tooltip.Configuration(0);
      v27 = (a2 + *(v54 + 28));
      *v27 = 0x69732E656C707061;
      v27[1] = 0xEA0000000000676ELL;
      v28 = enum case for BubbleImage.symbol(_:);
      v29 = type metadata accessor for BubbleImage();
      v30 = *(v29 - 8);
      (*(v30 + 104))(v27, v28, v29);
      v60 = 1;
      result = (*(v30 + 56))(v27, 0, 1, v29);
      *a2 = 1;
    }

    else
    {
      static ApplicationCapabilities.shared.getter(v61);
      sub_100014984(v61);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v4 = String.init(localized:table:bundle:locale:comment:)();
      v6 = v5;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v51 = String.init(localized:table:bundle:locale:comment:)();
      v53 = v52;
      v54 = type metadata accessor for Tooltip.Configuration(0);
      v55 = (a2 + *(v54 + 28));
      *v55 = 0xD000000000000012;
      v55[1] = 0x8000000100E3E630;
      v56 = enum case for BubbleImage.symbol(_:);
      v57 = type metadata accessor for BubbleImage();
      v58 = *(v57 - 8);
      (*(v58 + 104))(v55, v56, v57);
      result = (*(v58 + 56))(v55, 0, 1, v57);
      v60 = 0;
      *a2 = 0;
    }

    goto LABEL_16;
  }

  if (a1 != 2)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v4 = String.init(localized:table:bundle:locale:comment:)();
    v6 = v35;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v51 = String.init(localized:table:bundle:locale:comment:)();
    v53 = v36;
    v54 = type metadata accessor for Tooltip.Configuration(0);
    v37 = *(v54 + 28);
    v38 = type metadata accessor for BubbleImage();
    v60 = 1;
    result = (*(*(v38 - 8) + 56))(a2 + v37, 1, 1, v38);
    v11 = 3;
LABEL_15:
    *a2 = v11;
LABEL_16:
    *(a2 + 8) = v4;
    *(a2 + 16) = v6;
    v20 = (v54 + 32);
LABEL_17:
    *(a2 + 24) = v51;
    *(a2 + 32) = v53;
    goto LABEL_18;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  v15 = type metadata accessor for Tooltip.Configuration(0);
  v16 = (a2 + *(v15 + 28));
  *v16 = 0x616C706572616873;
  v16[1] = 0xE900000000000079;
  v17 = enum case for BubbleImage.symbol(_:);
  v18 = type metadata accessor for BubbleImage();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  v60 = 1;
  result = (*(v19 + 56))(v16, 0, 1, v18);
  *a2 = 2;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  v20 = (v15 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
LABEL_18:
  *(a2 + *v20) = v60;
  return result;
}