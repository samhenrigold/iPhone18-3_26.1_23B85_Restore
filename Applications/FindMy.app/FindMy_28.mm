uint64_t sub_1002EDEAC()
{
  v1 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for _Glass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
  [v0 setContentEdgeInsets:{*&v0[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 40], *&v0[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 32], *&v0[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 40], *&v0[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 32]}];
  v7 = [v0 titleLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() preferredFontForTextStyle:*v6];
    [v8 setFont:v9];
  }

  v10 = [v0 layer];
  [v10 setCornerRadius:v6[6] * 0.5];

  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v13[3] = v2;
  v13[4] = &protocol witness table for _Glass;
  sub_100008FC0(v13);
  _Glass.flexible(_:)();
  (*(v3 + 8))(v5, v2);
  return UIView._background.setter();
}

id sub_1002EE204(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMModernButton();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1002EE2B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1002EE300(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1002EE35C()
{
  v1 = OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_activityIndicator;
  *&v0[v1] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v2 = OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailLabel;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = &v0[OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailText];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_showActivityIndicator] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FMActionAndInfoButton();
  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002EE484();
  [v4 updateConstraints];

  return v4;
}

void sub_1002EE484()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_activityIndicator];
  [v2 setHidden:1];
  [v0 addSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailLabel];
  [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailLabel]];
  v4 = objc_opt_self();
  v5 = [v4 systemBlueColor];
  [v1 setTitleColor:v5 forState:0];

  v6 = [v4 systemBlueColor];
  v7 = sub_10046D8E4(-12.0);

  [v1 setTitleColor:v7 forState:1];
  v8 = [v4 tertiaryLabelColor];
  [v3 setTextColor:v8];
}

void sub_1002EE5D4(uint64_t a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for FMActionAndInfoButton();
  objc_msgSendSuper2(&v21, "updateConstraints");
  v2 = *&v1[OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_activityIndicator];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v1[OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100552EE0;
  v5 = [v2 trailingAnchor];
  v6 = [v1 trailingAnchor];
  v7 = [v5 constraintLessThanOrEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 centerYAnchor];
  v9 = [v1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints:isa];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100552EE0;
  v13 = [v3 trailingAnchor];
  v14 = [v2 leadingAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:-6.0];

  *(v12 + 32) = v15;
  v16 = [v3 centerYAnchor];
  v17 = [v1 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints:v19];
}

id sub_1002EE938(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMActionAndInfoButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002EE9F0()
{
  v1 = OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_activityIndicator;
  *(v0 + v1) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v2 = OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = (v0 + OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailText);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_showActivityIndicator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002EEB9C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v2 - 8);
  v4 = v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = (v96 - v6);
  v7 = type metadata accessor for FMIPItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v102 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v10 - 8);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v96 - v14;
  v16 = type metadata accessor for FMIPDevice();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconUUIDs;
  v21 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconUUIDs];
  if (!v21[2])
  {
    __break(1u);
    goto LABEL_21;
  }

  v100 = v4;
  v101 = v12;
  v103 = v8;
  v104 = v7;
  v22 = v21[4];
  v23 = v21[5];

  sub_1000E5180(v22, v23, v15);

  v24 = (*(v17 + 48))(v15, 1, v16);
  v96[1] = v23;
  if (v24 != 1)
  {
    v28 = *(v17 + 32);
    v28(v19, v15, v16);
    if (*(*&v1[v20] + 16) >= 2uLL)
    {
      (*(v17 + 8))(v19, v16);
      v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = 0;
      goto LABEL_15;
    }

    if (*&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconCount] <= 1)
    {
      v35 = 2;
    }

    else
    {
      v35 = 3;
    }

    v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = v35;
    v31 = v101;
    v28(v101, v19, v16);
    (*(v17 + 56))(v31, 0, 1, v16);
    v32 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
    swift_beginAccess();
    v33 = &unk_1006BBCE0;
    v34 = &unk_1005534C0;
    goto LABEL_13;
  }

  sub_100012DF0(v15, &unk_1006BBCE0, &unk_1005534C0);

  v25 = v105;
  sub_1000E5FF8(v22, v23, v105);

  v27 = v103;
  v26 = v104;
  if ((*(v103 + 48))(v25, 1, v104) == 1)
  {
    sub_100012DF0(v25, &qword_1006B07D0, qword_100552820);
    goto LABEL_15;
  }

  v29 = *(v27 + 32);
  v30 = v102;
  v29(v102, v25, v26);
  if (*(*&v1[v20] + 16) == 1)
  {
    v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = 2;
    v31 = v100;
    v29(v100, v30, v26);
    (*(v27 + 56))(v31, 0, 1, v26);
    v32 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
    swift_beginAccess();
    v33 = &qword_1006B07D0;
    v34 = qword_100552820;
LABEL_13:
    sub_1000BBF40(v31, &v1[v32], v33, v34);
    swift_endAccess();
    goto LABEL_15;
  }

  (*(v27 + 8))(v30, v26);
  v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = 1;
LABEL_15:
  v36 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_titleLabel];
  sub_1002F1078();
  v37 = String._bridgeToObjectiveC()();

  [v36 setText:v37];

  v38 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_subtitleLabel];
  sub_1002F17FC();
  v39 = String._bridgeToObjectiveC()();

  [v38 setText:v39];

  v40 = [v1 view];
  if (!v40)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v42 systemBackgroundColor];
  [v41 setBackgroundColor:v43];

  v44 = [v1 navigationItem];
  v45 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelAction"];
  [v44 setLeftBarButtonItem:v45];

  v101 = objc_opt_self();
  v46 = [v101 mainBundle];
  v106._object = 0x800000010058FE00;
  v47._countAndFlagsBits = 0x41425F454C544954;
  v47._object = 0xE900000000000052;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v106._countAndFlagsBits = 0xD00000000000001BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v106);

  v49 = String._bridgeToObjectiveC()();

  [v1 setTitle:v49];

  [v36 setAdjustsFontForContentSizeCategory:1];
  v50 = objc_opt_self();
  v100 = v50;
  v51 = [v50 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v52 = sub_100039388(2);

  [v36 setFont:v52];
  [v36 setNumberOfLines:0];
  v104 = v36;
  v53 = [v42 labelColor];
  [v36 setTextColor:v53];

  [v36 setTextAlignment:1];
  [v38 setAdjustsFontForContentSizeCategory:1];
  v105 = UIFontTextStyleBody;
  v54 = [v50 preferredFontForTextStyle:?];
  [v38 setFont:v54];

  [v38 setNumberOfLines:0];
  v99 = v42;
  v55 = [v42 labelColor];
  [v38 setTextColor:v55];

  [v38 setTextAlignment:1];
  v103 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
  v56 = [*&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage] setContentMode:1];
  sub_1002F0B84(v56, v57, v58);
  v59 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton];
  v60 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v61 = *(v59 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v98 = "AIRPODS_DIRECTIONS_TITLE";
  v62 = v61;
  v63 = v101;
  v64 = [v101 mainBundle];
  v97 = 0x800000010057D660;
  v65.value._countAndFlagsBits = 0xD000000000000016;
  v107._object = 0x800000010057D660;
  v66._countAndFlagsBits = 0xD00000000000001FLL;
  v66._object = 0x800000010058FE20;
  v65.value._object = 0x800000010057D640;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  v107._countAndFlagsBits = 0xD00000000000001BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v66, v65, v64, v67, v107);
  v102 = v38;

  v68 = String._bridgeToObjectiveC()();

  [v62 setText:v68];

  v69 = *(v59 + v60);
  v70 = [v42 systemWhiteColor];
  [v69 setTextColor:v70];

  [*(v59 + v60) setTextAlignment:1];
  v96[0] = v59;
  v71 = *(v59 + v60);
  v72 = v100;
  v73 = [v100 preferredFontForTextStyle:v105];
  v74 = sub_100039388(2);

  [v71 setFont:v74];
  v75 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton];
  v76 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v77 = *(v75 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v78 = [v63 mainBundle];
  v108._object = v97;
  v79._countAndFlagsBits = 0xD000000000000020;
  v79._object = 0x800000010058FE40;
  v80.value._object = (v98 | 0x8000000000000000);
  v80.value._countAndFlagsBits = 0xD000000000000016;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v108._countAndFlagsBits = 0xD00000000000001BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v78, v81, v108);

  v82 = String._bridgeToObjectiveC()();

  [v77 setText:v82];

  v83 = *(v75 + v76);
  v84 = [v99 systemBlueColor];
  [v83 setTextColor:v84];

  [*(v75 + v76) setTextAlignment:1];
  v85 = *(v75 + v76);
  v86 = [v72 preferredFontForTextStyle:v105];
  v87 = sub_100039388(2);

  [v85 setFont:v87];
  v88 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollView];
  [v88 setDelegate:v1];
  [v88 setPreservesSuperviewLayoutMargins:1];
  v89 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollContentView];
  [v89 setPreservesSuperviewLayoutMargins:1];
  [v89 addSubview:v102];
  [v89 addSubview:v104];
  [v89 addSubview:*&v1[v103]];
  [v88 addSubview:v89];
  v90 = [v1 view];
  if (!v90)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v91 = v90;
  [v90 addSubview:v88];

  v92 = [v1 view];
  if (!v92)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v93 = v92;
  [v92 addSubview:v96[0]];

  v94 = [v1 view];
  if (v94)
  {
    v95 = v94;

    [v95 addSubview:v75];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1002EF8A8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_subtitleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollContentView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v8 = *&qword_1006D4798;
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = v9;
  v147 = v4;
  v148 = v5;
  v11 = [v9 heightAnchor];

  v12 = [v11 constraintGreaterThanOrEqualToConstant:480.0];
  v13 = *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint];
  *&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint] = v12;
  v142 = v12;

  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100552EF0;
  v15 = [v6 topAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v14 + 32) = v19;
  v20 = [v6 leadingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  v145 = v3;
  v146 = v2;
  v23 = [v21 safeAreaLayoutGuide];

  v24 = [v23 leadingAnchor];
  v25 = [v20 constraintEqualToAnchor:v24];

  *(v14 + 40) = v25;
  v26 = [v6 trailingAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  v149 = objc_opt_self();
  v29 = [v28 safeAreaLayoutGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v26 constraintEqualToAnchor:v30];

  *(v14 + 48) = v31;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v149 activateConstraints:isa];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100552F00;
  v34 = [v7 topAnchor];
  v35 = [v6 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v33 + 32) = v36;
  v37 = [v7 bottomAnchor];
  v38 = [v6 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v33 + 40) = v39;
  v40 = [v7 leadingAnchor];
  v41 = [v6 safeAreaLayoutGuide];
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42];
  *(v33 + 48) = v43;
  v44 = [v7 trailingAnchor];
  v45 = [v6 safeAreaLayoutGuide];
  v46 = [v45 trailingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46];
  *(v33 + 56) = v47;
  v48 = [v7 heightAnchor];
  v49 = [v48 constraintGreaterThanOrEqualToConstant:480.0];

  *(v33 + 64) = v49;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v149 activateConstraints:v50];

  v51 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
  [*&v1[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage] setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100552EE0;
  v144 = v51;
  v53 = [*&v1[v51] topAnchor];
  v54 = [v147 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:12.0];

  *(v52 + 32) = v55;
  v56 = [*&v1[v51] centerXAnchor];
  v57 = [v7 centerXAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v52 + 40) = v58;
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v149 activateConstraints:v59];

  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100552EF0;
  v61 = [v147 topAnchor];
  v62 = [v7 topAnchor];
  v143 = objc_opt_self();
  v63 = [v143 mainScreen];
  [v63 nativeBounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  v152.origin.x = v65;
  v152.origin.y = v67;
  v152.size.width = v69;
  v152.size.height = v71;
  v72 = CGRectGetHeight(v152) > 1136.0;
  v73 = 36.0;
  if (!v72)
  {
    v73 = 22.5;
  }

  v74 = [v61 constraintEqualToAnchor:v62 constant:v73];

  *(v60 + 32) = v74;
  v75 = [v147 leadingAnchor];
  v76 = [v7 leadingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:v8 + v8];

  *(v60 + 40) = v77;
  v78 = [v147 trailingAnchor];
  v79 = [v7 trailingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:v8 * -2.0];

  *(v60 + 48) = v80;
  v81 = Array._bridgeToObjectiveC()().super.isa;

  [v149 activateConstraints:v81];

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1005521F0;
  v83 = [v148 topAnchor];
  v84 = [*&v1[v144] bottomAnchor];
  v85 = [v143 mainScreen];
  [v85 nativeBounds];
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;

  v153.origin.x = v87;
  v153.origin.y = v89;
  v153.size.width = v91;
  v153.size.height = v93;
  v72 = CGRectGetHeight(v153) > 1136.0;
  v94 = 11.25;
  if (v72)
  {
    v94 = 18.0;
  }

  v95 = [v83 constraintEqualToAnchor:v84 constant:v94];

  *(v82 + 32) = v95;
  v96 = [v148 leadingAnchor];
  v97 = [v7 leadingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:v8 + v8];

  *(v82 + 40) = v98;
  v99 = [v148 trailingAnchor];
  v100 = [v7 trailingAnchor];
  v101 = [v99 constraintEqualToAnchor:v100 constant:v8 * -2.0];

  *(v82 + 48) = v101;
  v102 = [v148 bottomAnchor];
  v103 = [v7 layoutMarginsGuide];
  v104 = [v103 bottomAnchor];

  v105 = [v102 constraintLessThanOrEqualToAnchor:v104];
  *(v82 + 56) = v105;
  v106 = Array._bridgeToObjectiveC()().super.isa;

  [v149 activateConstraints:v106];

  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_100552EF0;
  v108 = [v146 leadingAnchor];
  v109 = [v1 view];
  if (!v109)
  {
    goto LABEL_24;
  }

  v110 = v109;
  v111 = [v109 leadingAnchor];

  v112 = [v108 constraintEqualToAnchor:v111 constant:v8 + v8];
  *(v107 + 32) = v112;
  v113 = [v146 trailingAnchor];
  v114 = [v1 view];
  if (!v114)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v115 = v114;
  v116 = [v114 trailingAnchor];

  v117 = [v113 constraintEqualToAnchor:v116 constant:v8 * -2.0];
  *(v107 + 40) = v117;
  v118 = [v146 topAnchor];
  v119 = [v6 bottomAnchor];
  v120 = [v118 constraintEqualToAnchor:v119 constant:v8];

  *(v107 + 48) = v120;
  v121 = Array._bridgeToObjectiveC()().super.isa;

  [v149 activateConstraints:v121];

  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1005521F0;
  v123 = [v145 leadingAnchor];
  v124 = [v1 view];
  if (!v124)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v125 = v124;
  v126 = [v124 leadingAnchor];

  v127 = [v123 constraintEqualToAnchor:v126 constant:v8 + v8];
  *(v122 + 32) = v127;
  v128 = [v145 trailingAnchor];
  v129 = [v1 view];
  if (!v129)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v130 = v129;
  v131 = [v129 trailingAnchor];

  v132 = [v128 constraintEqualToAnchor:v131 constant:v8 * -2.0];
  *(v122 + 40) = v132;
  v133 = [v145 bottomAnchor];
  v134 = [v1 view];
  if (!v134)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v135 = v134;
  v136 = [v134 safeAreaLayoutGuide];

  v137 = [v136 bottomAnchor];
  v138 = [v133 constraintEqualToAnchor:v137 constant:-v8];

  *(v122 + 48) = v138;
  v139 = [v145 topAnchor];
  v140 = [v146 bottomAnchor];
  v141 = [v139 constraintEqualToAnchor:v140];

  *(v122 + 56) = v141;
  v150 = Array._bridgeToObjectiveC()().super.isa;

  [v149 activateConstraints:v150];
}

id sub_1002F0938()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for FMSeparationNotificationWelcomeViewController(0);
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  [result frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  Height = CGRectGetHeight(v20);
  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  [result safeAreaInsets];
  v14 = v13;

  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = Height - v14;
    [result safeAreaInsets];
    v18 = v17;

    return [*&v0[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint] setConstant:v16 - v18];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1002F0B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1002F27D4();
  if (!v11)
  {
    v11 = [objc_allocWithZone(MKAnnotationView) init];
  }

  v12 = v11;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v3;
  aBlock[4] = sub_1002F5978;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100635770;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  v17 = v3;

  v18 = static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918(v18, v19, v20);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v23);
}

id sub_1002F0E48(void *a1, uint64_t a2)
{
  [a1 frame];
  [a1 setFrame:?];
  v4 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
  [*(a2 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage) bounds];
  v6 = v5 * 0.5 + -14.0;
  [*(a2 + v4) bounds];
  [a1 setCenter:{v6, v7 * 0.5}];
  v8 = *(a2 + v4);

  return [v8 addSubview:a1];
}

uint64_t sub_1002F1078()
{
  v1 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v1 - 8);
  v3 = &v49[-v2];
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v49[-v9];
  v11 = type metadata accessor for FMIPDevice();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_type))
  {
    v15 = [objc_opt_self() mainBundle];
    v50._object = 0x800000010057D660;
    v16._countAndFlagsBits = 0xD000000000000033;
    v16._object = 0x800000010058FD00;
    v17.value._object = 0x800000010057D640;
    v50._countAndFlagsBits = 0xD00000000000001BLL;
    v17.value._countAndFlagsBits = 0xD000000000000016;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v50)._countAndFlagsBits;
  }

  else if (*(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType) - 2 >= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType))
    {
      v22 = "G_DETAIL_SINGLE_DEVICE_TITLE";
      v23 = [objc_opt_self() mainBundle];
      v48 = 0x800000010057D660;
      v24 = 0xD000000000000027;
    }

    else
    {
      v22 = "DETAIL_MULTI_ITEM_TITLE";
      v23 = [objc_opt_self() mainBundle];
      v48 = 0x800000010057D660;
      v24 = 0xD00000000000002BLL;
    }

    v33 = v22 | 0x8000000000000000;
    v34.value._object = 0x800000010057D640;
    v35 = 0xD00000000000001BLL;
    v34.value._countAndFlagsBits = 0xD000000000000016;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v24, v34, v23, v36, *(&v48 - 1));

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v37 = swift_allocObject();
    v38 = *(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconCount);
    *(v37 + 16) = xmmword_100552220;
    *(v37 + 56) = &type metadata for Int;
    *(v37 + 64) = &protocol witness table for Int;
    *(v37 + 32) = v38;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v20 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
    swift_beginAccess();
    sub_100007204(v0 + v20, v10, &unk_1006BBCE0, &unk_1005534C0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100012DF0(v10, &unk_1006BBCE0, &unk_1005534C0);
      v21 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
      swift_beginAccess();
      sub_100007204(v0 + v21, v3, &qword_1006B07D0, qword_100552820);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_100012DF0(v3, &qword_1006B07D0, qword_100552820);
        return 0;
      }

      else
      {
        (*(v5 + 32))(v7, v3, v4);
        v40 = [objc_opt_self() mainBundle];
        v52._object = 0x800000010057D660;
        v41._countAndFlagsBits = 0xD000000000000028;
        v41._object = 0x800000010058FD40;
        v42.value._object = 0x800000010057D640;
        v52._countAndFlagsBits = 0xD00000000000001BLL;
        v42.value._countAndFlagsBits = 0xD000000000000016;
        v43._countAndFlagsBits = 0;
        v43._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v52);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_100552220;
        v45 = FMIPItem.name.getter();
        v47 = v46;
        *(v44 + 56) = &type metadata for String;
        *(v44 + 64) = sub_10008EE84();
        *(v44 + 32) = v45;
        *(v44 + 40) = v47;
        countAndFlagsBits = String.init(format:_:)();

        (*(v5 + 8))(v7, v4);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v25 = [objc_opt_self() mainBundle];
      v51._object = 0x800000010057D660;
      v26._countAndFlagsBits = 0xD00000000000002CLL;
      v26._object = 0x800000010058FD70;
      v27.value._object = 0x800000010057D640;
      v51._countAndFlagsBits = 0xD00000000000001BLL;
      v27.value._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v51);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100552220;
      v30 = FMIPDevice.name.getter();
      v32 = v31;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = sub_10008EE84();
      *(v29 + 32) = v30;
      *(v29 + 40) = v32;
      countAndFlagsBits = String.init(format:_:)();

      (*(v12 + 8))(v14, v11);
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_1002F17FC()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v2 - 8);
  v117 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v116 = &v115 - v5;
  v6 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v6 - 8);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v118 = &v115 - v9;
  v10 = type metadata accessor for FMIPSeparationLocation();
  v121 = *(v10 - 8);
  __chkstk_darwin(v10);
  v120 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006BC990, &unk_100558AC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v115 - v13;
  v15 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v115 - v16;
  v18 = sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50);
  __chkstk_darwin(v18 - 8);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v115 - v22;
  __chkstk_darwin(v24);
  v26 = &v115 - v25;
  __chkstk_darwin(v27);
  v122 = &v115 - v28;
  v29 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_safeLocationSuggestion;
  swift_beginAccess();
  sub_100007204(v1 + v29, v17, &unk_1006BB1B0, qword_10055C5C0);
  v30 = type metadata accessor for FMIPSafeLocation();
  v31 = (*(*(v30 - 8) + 48))(v17, 1, v30);
  v123 = v1;
  if (v31)
  {
    sub_100012DF0(v17, &unk_1006BB1B0, qword_10055C5C0);
    v32 = type metadata accessor for FMIPAddress();
    (*(*(v32 - 8) + 56))(v26, 1, 1, v32);
  }

  else
  {
    FMIPSafeLocation.address.getter();
    sub_100012DF0(v17, &unk_1006BB1B0, qword_10055C5C0);
    v33 = type metadata accessor for FMIPAddress();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v26, 1, v33) != 1)
    {
      v38 = v122;
      (*(v34 + 32))(v122, v26, v33);
      (*(v34 + 56))(v38, 0, 1, v33);
      goto LABEL_10;
    }
  }

  v35 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationLocation;
  swift_beginAccess();
  sub_100007204(v1 + v35, v14, &qword_1006BC990, &unk_100558AC0);
  v36 = v121;
  if ((*(v121 + 48))(v14, 1, v10))
  {
    sub_100012DF0(v14, &qword_1006BC990, &unk_100558AC0);
    v37 = type metadata accessor for FMIPAddress();
    v38 = v122;
    (*(*(v37 - 8) + 56))(v122, 1, 1, v37);
  }

  else
  {
    v39 = v120;
    (*(v36 + 16))(v120, v14, v10);
    sub_100012DF0(v14, &qword_1006BC990, &unk_100558AC0);
    v38 = v122;
    FMIPSeparationLocation.address.getter();
    (*(v36 + 8))(v39, v10);
  }

  v33 = type metadata accessor for FMIPAddress();
  if ((*(*(v33 - 8) + 48))(v26, 1, v33) != 1)
  {
    sub_100012DF0(v26, &qword_1006BB1E0, &unk_100558B50);
  }

LABEL_10:
  sub_100007204(v38, v23, &qword_1006BB1E0, &unk_100558B50);
  type metadata accessor for FMIPAddress();
  v40 = *(v33 - 8);
  v41 = *(v40 + 48);
  if (v41(v23, 1, v33) == 1)
  {
    sub_100012DF0(v23, &qword_1006BB1E0, &unk_100558B50);
  }

  else
  {
    v42 = FMIPAddress.label.getter();
    v44 = v43;
    (*(v40 + 8))(v23, v33);
    if (v44)
    {
      v45 = v123;
      goto LABEL_21;
    }
  }

  sub_100007204(v38, v20, &qword_1006BB1E0, &unk_100558B50);
  if (v41(v20, 1, v33) == 1)
  {
    sub_100012DF0(v20, &qword_1006BB1E0, &unk_100558B50);
    v45 = v123;
  }

  else
  {
    v46 = FMIPAddress.formattedAddressLines.getter();
    (*(v40 + 8))(v20, v33);
    v45 = v123;
    if (v46)
    {
      if (v46[2])
      {
        v42 = v46[4];
        v44 = v46[5];

        goto LABEL_21;
      }
    }
  }

  v42 = 0;
  v44 = 0xE000000000000000;
LABEL_21:
  v47 = *(v45 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationTime + 8);
  v121 = v42;
  if (v47)
  {
    v120 = *(v45 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationTime);
    v48 = v47;
  }

  else
  {
    v120 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = objc_opt_self();

  v50 = [v49 mainBundle];
  v125._object = 0x800000010057D660;
  v51._countAndFlagsBits = 0xD000000000000030;
  v51._object = 0x800000010058FAE0;
  v52.value._object = 0x800000010057D640;
  v125._countAndFlagsBits = 0xD00000000000001BLL;
  v52.value._countAndFlagsBits = 0xD000000000000016;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v125)._countAndFlagsBits;

  v55 = *(v123 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType);
  if (*(v123 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_type))
  {
    if (*(v123 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType) <= 1u)
    {
      if (*(v123 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType))
      {

        v56 = "SINGLE_DEVICE_DESCRIPTION";
        v57 = [v49 mainBundle];
        v112 = 0x800000010057D660;
        v58 = 0xD000000000000034;
LABEL_43:
        v97 = v56 | 0x8000000000000000;
        v98.value._object = 0x800000010057D640;
        v99 = 0xD00000000000001BLL;
        v98.value._countAndFlagsBits = 0xD000000000000016;
        v100._countAndFlagsBits = 0;
        v100._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v58, v98, v57, v100, *(&v112 - 1));

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_100552210;
        *(v101 + 56) = &type metadata for String;
        v102 = sub_10008EE84();
        v103 = v120;
        *(v101 + 32) = v121;
        *(v101 + 40) = v44;
        *(v101 + 96) = &type metadata for String;
        *(v101 + 104) = v102;
        *(v101 + 64) = v102;
        *(v101 + 72) = v103;
        *(v101 + 80) = v48;
LABEL_48:
        countAndFlagsBits = String.init(format:_:)();
LABEL_49:

        v82 = &qword_1006BB1E0;
        v83 = &unk_100558B50;
        v84 = v122;
        goto LABEL_50;
      }

LABEL_39:

      v56 = "LTI_ITEM_DESCRIPTION";
      v57 = [v49 mainBundle];
      v112 = 0x800000010057D660;
      v58 = 0xD000000000000038;
      goto LABEL_43;
    }

    if (v55 != 2)
    {
      goto LABEL_39;
    }

    v115 = v48;
    v62 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
    v63 = v123;
    swift_beginAccess();
    v64 = v63 + v62;
    v65 = v119;
    sub_100007204(v64, v119, &unk_1006BBCE0, &unk_1005534C0);
    v66 = type metadata accessor for FMIPDevice();
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) != 1)
    {

      sub_100012DF0(v65, &unk_1006BBCE0, &unk_1005534C0);
      v71 = "NGLE_ITEM_DESCRIPTION";
      v72 = [v49 mainBundle];
      v114 = 0x800000010057D660;
      v73 = 0xD000000000000039;
      goto LABEL_47;
    }

    sub_100012DF0(v65, &unk_1006BBCE0, &unk_1005534C0);
    v67 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
    swift_beginAccess();
    v68 = v63 + v67;
    v69 = v117;
    sub_100007204(v68, v117, &qword_1006B07D0, qword_100552820);
    v70 = type metadata accessor for FMIPItem();
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) != 1)
    {

      sub_100012DF0(v69, &qword_1006B07D0, qword_100552820);
      v71 = "EM_DEFAULT_TITLE";
      v72 = [v49 mainBundle];
      v114 = 0x800000010057D660;
      v73 = 0xD000000000000035;
LABEL_47:
      v104 = v71 | 0x8000000000000000;
      v105.value._object = 0x800000010057D640;
      v106 = 0xD00000000000001BLL;
      v105.value._countAndFlagsBits = 0xD000000000000016;
      v107._countAndFlagsBits = 0;
      v107._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v73, v105, v72, v107, *(&v114 - 1));

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_100552210;
      *(v108 + 56) = &type metadata for String;
      v109 = sub_10008EE84();
      v110 = v120;
      *(v108 + 32) = v121;
      *(v108 + 40) = v44;
      *(v108 + 96) = &type metadata for String;
      *(v108 + 104) = v109;
      *(v108 + 64) = v109;
      *(v108 + 72) = v110;
      *(v108 + 80) = v115;
      goto LABEL_48;
    }
  }

  else
  {
    if (*(v123 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType) <= 1u)
    {
      v115 = v48;
      if (v55)
      {

        v59 = "DEVICE_DESCRIPTION";
        v60 = [v49 mainBundle];
        v113 = 0x800000010057D660;
        v61 = 0xD00000000000002DLL;
      }

      else
      {

        v59 = "DETAIL_MULTI_ITEM_DESCRIPTION";
        v60 = [v49 mainBundle];
        v113 = 0x800000010057D660;
        v61 = 0xD000000000000031;
      }

      v85 = v59 | 0x8000000000000000;
      v86.value._object = 0x800000010057D640;
      v87 = 0xD00000000000001BLL;
      v86.value._countAndFlagsBits = 0xD000000000000016;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v61, v86, v60, v88, *(&v113 - 1));

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1005528D0;
      v124 = *(v123 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconCount);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      *(v89 + 56) = &type metadata for String;
      v93 = sub_10008EE84();
      *(v89 + 32) = v90;
      *(v89 + 40) = v92;
      *(v89 + 96) = &type metadata for String;
      *(v89 + 104) = v93;
      v95 = v120;
      v94 = v121;
      *(v89 + 64) = v93;
      *(v89 + 72) = v94;
      *(v89 + 80) = v44;
      *(v89 + 136) = &type metadata for String;
      *(v89 + 144) = v93;
      v96 = v115;
      *(v89 + 112) = v95;
      *(v89 + 120) = v96;
      countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_49;
    }

    if (v55 != 2)
    {

      v56 = "DETAIL_SINGLE_ITEM_DESCRIPTION";
      v57 = [v49 mainBundle];
      v112 = 0x800000010057D660;
      v58 = 0xD000000000000032;
      goto LABEL_43;
    }

    v115 = v48;
    v74 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
    v75 = v123;
    swift_beginAccess();
    v76 = v75 + v74;
    v77 = v118;
    sub_100007204(v76, v118, &unk_1006BBCE0, &unk_1005534C0);
    v78 = type metadata accessor for FMIPDevice();
    if ((*(*(v78 - 8) + 48))(v77, 1, v78) != 1)
    {

      sub_100012DF0(v77, &unk_1006BBCE0, &unk_1005534C0);
      v71 = "DETAIL_SINGLE_ITEM_DESCRIPTION";
      v72 = [v49 mainBundle];
      v114 = 0x800000010057D660;
      v73 = 0xD000000000000032;
      goto LABEL_47;
    }

    sub_100012DF0(v77, &unk_1006BBCE0, &unk_1005534C0);
    v79 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
    swift_beginAccess();
    v80 = v75 + v79;
    v69 = v116;
    sub_100007204(v80, v116, &qword_1006B07D0, qword_100552820);
    v81 = type metadata accessor for FMIPItem();
    if ((*(*(v81 - 8) + 48))(v69, 1, v81) != 1)
    {

      sub_100012DF0(v69, &qword_1006B07D0, qword_100552820);
      v71 = "MULTI_DEVICE_DESCRIPTION";
      v72 = [v49 mainBundle];
      v114 = 0x800000010057D660;
      v73 = 0xD00000000000002ELL;
      goto LABEL_47;
    }
  }

  sub_100012DF0(v122, &qword_1006BB1E0, &unk_100558B50);

  v82 = &qword_1006B07D0;
  v83 = qword_100552820;
  v84 = v69;
LABEL_50:
  sub_100012DF0(v84, v82, v83);
  return countAndFlagsBits;
}

void *sub_1002F27D4()
{
  v0 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v0 - 8);
  v170 = v143 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v153 = v143 - v3;
  v154 = type metadata accessor for FMIPItemGroup();
  v4 = *(v154 - 8);
  __chkstk_darwin(v154);
  v173 = v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v152 = v143 - v7;
  v8 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v8 - 8);
  v163 = v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v143 - v11;
  __chkstk_darwin(v13);
  v15 = v143 - v14;
  v16 = type metadata accessor for FMIPDevice();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v161 = v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v171 = v143 - v20;
  __chkstk_darwin(v21);
  v165 = v143 - v22;
  v23 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v23 - 8);
  v166 = (v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v162 = v143 - v26;
  __chkstk_darwin(v27);
  v172 = (v143 - v28);
  __chkstk_darwin(v29);
  v160 = v143 - v30;
  __chkstk_darwin(v31);
  v33 = v143 - v32;
  v169 = type metadata accessor for FMIPItem();
  v34 = *(v169 - 8);
  __chkstk_darwin(v169);
  v164 = v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = v143 - v37;
  __chkstk_darwin(v39);
  v41 = v143 - v40;
  __chkstk_darwin(v42);
  v158 = v143 - v43;
  v44 = [objc_allocWithZone(CLLocation) init];
  v45 = (*(v168 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType) & 0xFE) == 2;
  v167 = v44;
  v147 = v34;
  if (v45)
  {
    v165 = v4;
    v46 = v44;
    v47 = v168;
    v48 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
    swift_beginAccess();
    sub_100007204(v47 + v48, v12, &unk_1006BBCE0, &unk_1005534C0);
    v49 = *(v17 + 48);
    if (v49(v12, 1, v16) == 1)
    {
      v159 = v17;
      v146 = v16;
      sub_100012DF0(v12, &unk_1006BBCE0, &unk_1005534C0);
      v50 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
      swift_beginAccess();
      v51 = v47 + v50;
      v52 = v166;
      sub_100007204(v51, v166, &qword_1006B07D0, qword_100552820);
      v53 = v169;
      if ((*(v34 + 48))(v52, 1, v169) == 1)
      {
        sub_100012DF0(v52, &qword_1006B07D0, qword_100552820);
        v54 = 0;
LABEL_57:

        return v54;
      }

      v101 = v164;
      (*(v34 + 32))(v164, v52, v53);
      sub_1002F4B48(v101, v46);
      v103 = v102;

      v104 = FMIPItem.identifier.getter();
      v105 = v163;
      sub_1000E5794(v104, v106, v163);

      v107 = v146;
      if (v49(v105, 1, v146) == 1)
      {
        sub_100012DF0(v105, &unk_1006BBCE0, &unk_1005534C0);
      }

      else
      {
        v122 = v159;
        v123 = v161;
        (*(v159 + 32))(v161, v105, v107);
        v124 = v160;
        (*(v34 + 16))(v160, v101, v53);
        (*(v34 + 56))(v124, 0, 1, v53);
        v125 = sub_1002F3CCC(v123, v124, v167);

        sub_100012DF0(v124, &qword_1006B07D0, qword_100552820);
        (*(v122 + 8))(v123, v107);
        v103 = v125;
      }

      sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_1005528C0;
      *(v126 + 32) = v103;
      v127 = objc_allocWithZone(type metadata accessor for FMClusterAnnotation());
      v128 = v103;
      sub_1003F4230(v126);
      v130 = v129;
      v131 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
      v132 = String._bridgeToObjectiveC()();
      v54 = [v131 initWithAnnotation:v130 reuseIdentifier:v132];

      (*(v34 + 8))(v101, v53);
LABEL_54:
      if (v54)
      {
        v142 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden;
        v54[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden] = 1;
        [*&v54[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon] setHidden:1];
        [*&v54[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer] setHidden:v54[v142]];
      }

      v46 = v167;
      goto LABEL_57;
    }

    v96 = v171;
    (*(v17 + 32))(v171, v12, v16);
    v163 = *(v34 + 56);
    v164 = (v34 + 56);
    (v163)(v172, 1, 1, v169);
    v97 = v170;
    v98 = v17;
    FMIPDevice.itemGroup.getter();
    v99 = v165;
    v100 = v154;
    if ((*(v165 + 48))(v97, 1, v154) == 1)
    {
      sub_100012DF0(v97, &unk_1006BB1C0, &unk_1005534F0);
    }

    else
    {
      v108 = v97;
      v109 = v173;
      (*(v99 + 32))(v173, v108, v100);
      v110 = *(*(v168 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
      swift_beginAccess();
      v111 = *(v110 + *(type metadata accessor for FMPendingActionInfo(0) + 32));
      if (v111)
      {
        v159 = v98;
        v146 = v16;

        result = FMIPItemGroup.items.getter();
        v112 = result;
        v170 = result[2];
        if (v170)
        {
          v113 = 0;
          v166 = (v147 + 16);
          v114 = (v147 + 8);
          while (v113 < *(v112 + 16))
          {
            v115 = v169;
            (*(v147 + 16))(v38, v112 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v113, v169);
            v174[0] = FMIPItem.identifier.getter();
            v174[1] = v116;
            __chkstk_darwin(v174[0]);
            v143[-2] = v174;
            v117 = sub_10008A40C(sub_1001413D4, &v143[-4], v111);

            if (v117)
            {

              (*(v165 + 8))(v173, v154);
              v118 = v172;
              sub_100012DF0(v172, &qword_1006B07D0, qword_100552820);
              v121 = v162;
              (*(v147 + 32))(v162, v38, v115);
              v119 = 0;
              v120 = v115;
              goto LABEL_52;
            }

            ++v113;
            result = (*v114)(v38, v115);
            v109 = v173;
            if (v170 == v113)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_59;
        }

LABEL_46:

        (*(v165 + 8))(v109, v154);
        v118 = v172;
        sub_100012DF0(v172, &qword_1006B07D0, qword_100552820);
        v119 = 1;
        v120 = v169;
        v121 = v162;
LABEL_52:
        (v163)(v121, v119, 1, v120);
        sub_100110438(v121, v118);
        v133 = v167;
        v16 = v146;
        v98 = v159;
        v96 = v171;
        goto LABEL_53;
      }

      (*(v99 + 8))(v109, v100);
    }

    v133 = v46;
    v118 = v172;
LABEL_53:
    v134 = sub_1002F3CCC(v96, v118, v133);
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_1005528C0;
    *(v135 + 32) = v134;
    v136 = objc_allocWithZone(type metadata accessor for FMClusterAnnotation());
    v137 = v134;
    sub_1003F4230(v135);
    v139 = v138;
    v140 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
    v141 = String._bridgeToObjectiveC()();
    v54 = [v140 initWithAnnotation:v139 reuseIdentifier:v141];

    sub_100012DF0(v118, &qword_1006B07D0, qword_100552820);
    (*(v98 + 8))(v96, v16);
    goto LABEL_54;
  }

  v55 = v17;
  v56 = _swiftEmptyArrayStorage;
  v174[0] = _swiftEmptyArrayStorage;
  v57 = *(v168 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconUUIDs);
  v164 = *(v57 + 2);
  if (!v164)
  {
LABEL_35:
    v90 = objc_allocWithZone(type metadata accessor for FMClusterAnnotation());
    sub_1003F4230(v56);
    v92 = v91;
    v93 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
    v94 = v92;
    v95 = String._bridgeToObjectiveC()();
    v54 = [v93 initWithAnnotation:v94 reuseIdentifier:v95];

    goto LABEL_54;
  }

  v171 = *(v168 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);
  v162 = v57 + 32;
  v161 = (v34 + 48);
  v156 = (v34 + 32);
  v172 = (v34 + 8);
  v155 = (v55 + 48);
  v150 = (v55 + 32);
  v149 = (v4 + 48);
  v145 = (v4 + 32);
  v173 = (v34 + 16);
  v159 = v34 + 56;
  v144 = (v4 + 8);
  v148 = (v55 + 8);

  v59 = 0;
  v166 = _swiftEmptyArrayStorage;
  v60 = v169;
  v146 = v16;
  v157 = v15;
  v151 = v33;
  v163 = v57;
  while (v59 < *(v57 + 2))
  {
    v61 = &v162[16 * v59];
    v63 = *v61;
    v62 = v61[1];

    sub_1000E5FF8(v63, v62, v33);

    if ((*v161)(v33, 1, v60) == 1)
    {
      sub_100012DF0(v33, &qword_1006B07D0, qword_100552820);

      v64 = v63;
      v65 = v157;
      sub_1000E5180(v64, v62, v157);

      if ((*v155)(v65, 1, v16) == 1)
      {
        result = sub_100012DF0(v65, &unk_1006BBCE0, &unk_1005534C0);
      }

      else
      {
        v66 = v165;
        (*v150)(v165, v65, v16);
        v67 = v153;
        FMIPDevice.itemGroup.getter();
        v68 = v154;
        if ((*v149)(v67, 1, v154) == 1)
        {
          sub_100012DF0(v67, &unk_1006BB1C0, &unk_1005534F0);
          v69 = v160;
          (*v159)(v160, 1, 1, v60);
          v70 = sub_1002F3CCC(v66, v69, v167);
          sub_100012DF0(v69, &qword_1006B07D0, qword_100552820);
          v71 = v70;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          result = (*v148)(v66, v16);
          v166 = v174[0];
          v60 = v169;
        }

        else
        {
          (*v145)(v152, v67, v68);
          v76 = FMIPItemGroup.items.getter();
          v77 = *(v76 + 16);
          if (v77)
          {
            v78 = (*(v147 + 80) + 32) & ~*(v147 + 80);
            v143[1] = v76;
            v79 = v76 + v78;
            v170 = *(v147 + 72);
            v80 = *(v147 + 16);
            v81 = v171;
            v80(v41, v76 + v78, v60);
            while (1)
            {
              v82 = *(v81 + 7) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
              swift_beginAccess();
              v83 = *(v82 + *(type metadata accessor for FMPendingActionInfo(0) + 32));
              if (v83)
              {

                v175[0] = FMIPItem.identifier.getter();
                v175[1] = v84;
                __chkstk_darwin(v175[0]);
                v143[-2] = v175;
                v85 = sub_10008A40C(sub_10011F7D4, &v143[-4], v83);

                if (v85)
                {
                  v86 = v160;
                  v87 = v169;
                  v80(v160, v41, v169);
                  (*v159)(v86, 0, 1, v87);
                  v88 = sub_1002F3CCC(v165, v86, v167);
                  sub_100012DF0(v86, &qword_1006B07D0, qword_100552820);
                  v89 = v88;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  (*v172)(v41, v87);
                  v166 = v174[0];
                  v60 = v87;
                }

                else
                {
                  v60 = v169;
                  (*v172)(v41, v169);
                }

                v81 = v171;
              }

              else
              {
                (*v172)(v41, v60);
              }

              v79 += v170;
              if (!--v77)
              {
                break;
              }

              v80(v41, v79, v60);
            }
          }

          (*v144)(v152, v154);
          v16 = v146;
          result = (*v148)(v165, v146);
        }

        v33 = v151;
      }
    }

    else
    {

      v72 = v158;
      (*v156)(v158, v33, v60);
      sub_1002F4B48(v72, v167);
      v74 = v60;
      v75 = v73;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      result = (*v172)(v72, v74);
      v166 = v174[0];
      v60 = v74;
    }

    v57 = v163;
    if (++v59 == v164)
    {

      v56 = v166;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

char *sub_1002F3CCC(uint64_t a1, uint64_t a2, void *a3)
{
  v116 = a3;
  v114 = a2;
  v107 = a1;
  v3 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v3 - 8);
  v98 = &v98 - v4;
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  v117 = v5;
  v118 = v6;
  __chkstk_darwin(v5);
  v100 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for FMIPConfigValue();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10 - 8);
  v111 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v110 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v14 - 8);
  v105 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v104 = &v98 - v17;
  __chkstk_darwin(v18);
  v119 = &v98 - v19;
  v121 = type metadata accessor for FMIPDevice();
  v20 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v98 - v23;
  v106 = &v98 - v23;
  v109 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FMIPDeviceImageSize();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v98 - v33;
  (*(v28 + 104))(&v98 - v33, enum case for FMIPDeviceImageSize.list(_:), v27, v32);
  v99 = v20;
  v35 = *(v20 + 16);
  v36 = v24;
  v37 = v107;
  v35(v36, v107, v121);
  (*(v28 + 16))(v30, v34, v27);
  v38 = objc_opt_self();

  v39 = [v38 mainScreen];
  [v39 scale];

  FMIPDeviceImageCacheRequest.init(device:size:scale:)();
  dispatch thunk of FMImageCache.cachedImage(for:completion:)();
  (*(v108 + 8))(v26, v109);

  v108 = v122;
  (*(v28 + 8))(v34, v27);
  v40 = v114;
  v109 = sub_100314228(v37, v114);

  v42 = v116;
  [v116 coordinate];
  v44 = v43;
  v46 = v45;
  [v42 horizontalAccuracy];
  v48 = v47;
  v49 = v47;
  v116 = (v20 + 16);
  v35(v120, v37, v121);
  v50 = v35;
  sub_100007204(v40, v119, &qword_1006B07D0, qword_100552820);
  v51 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotation());
  v52 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage;
  *&v51[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage] = 0;
  v53 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v113 + 104))(v112, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v115);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v51[v53] = result;
  if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v48 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v48 < 9.22337204e18)
  {
    v55 = v102;
    v56 = v101;
    v57 = v103;
    (*(v102 + 104))(v101, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v103);
    v124 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v55 + 8))(v56, v57);
    v58 = v109;
    v59 = v122 < v48;
    sub_10007EBC0(&unk_1006C2480, qword_10055D360);
    v60 = swift_allocObject();
    *(v60 + ((*(*v60 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v50(v60 + *(*v60 + class metadata base offset for ManagedBuffer + 16), v120, v121);
    *&v51[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock] = v60;
    v61 = v119;
    v62 = v104;
    sub_100007204(v119, v104, &qword_1006B07D0, qword_100552820);
    sub_10007EBC0(&unk_1006BB1D0, qword_100564000);
    v63 = swift_allocObject();
    *(v63 + ((*(*v63 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_100007204(v62, v63 + *(*v63 + class metadata base offset for ManagedBuffer + 16), &qword_1006B07D0, qword_100552820);
    sub_100012DF0(v62, &qword_1006B07D0, qword_100552820);
    *&v51[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock] = v63;
    v64 = *&v51[v52];
    v65 = v108;
    *&v51[v52] = v108;
    v116 = v65;

    v66 = &v51[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_tempCoordinate];
    *v66 = v44;
    v66[1] = v46;
    v67 = &v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v67 = 0;
    v67[1] = 0;
    *&v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    *&v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_100554BC0;
    v68 = &v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v68 = v44;
    v68[1] = v46;
    *&v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v48;
    v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v59;
    v51[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v69 = type metadata accessor for FMAnnotation();
    v123.receiver = v51;
    v123.super_class = v69;
    v70 = objc_msgSendSuper2(&v123, "init");
    v71 = *&v70[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage];
    *&v70[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = v58;
    v72 = v70;
    v73 = v58;

    v74 = v105;
    sub_100007204(v61, v105, &qword_1006B07D0, qword_100552820);
    v76 = v117;
    v75 = v118;
    v77 = *(v118 + 48);
    if (v77(v74, 1, v117) == 1)
    {
      v78 = v120;
      sub_100012DF0(v74, &qword_1006B07D0, qword_100552820);
      v79 = 0;
LABEL_15:
      v92 = v119;
      v93 = v77(v119, 1, v76) != 1;
      v94 = sub_1002642B0(v78, v92, v79, v93);
      v96 = v95;

      (*(v99 + 8))(v78, v121);
      v97 = &v72[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      *v97 = v94;
      v97[1] = v96;

      sub_100012DF0(v92, &qword_1006B07D0, qword_100552820);
      return v72;
    }

    v80 = v100;
    (*(v75 + 32))(v100, v74, v76);
    v81 = v98;
    v78 = v120;
    FMIPDevice.itemGroup.getter();
    v82 = v81;
    v83 = type metadata accessor for FMIPItemGroup();
    v84 = *(v83 - 8);
    if ((*(v84 + 48))(v82, 1, v83) == 1)
    {
      sub_100012DF0(v82, &unk_1006BB1C0, &unk_1005534F0);
    }

    else
    {
      v85 = v82;
      v86 = FMIPItemGroup.groupedItems.getter();
      v87 = (*(v84 + 8))(v85, v83);
      __chkstk_darwin(v87);
      *(&v98 - 2) = v80;
      v88 = sub_100110710(sub_1002F5958, (&v98 - 4), v86);

      v76 = v117;
      if (v88)
      {
        v89 = *(v88 + 16);
        if (v89)
        {
          v79 = sub_10008C8B4(*(v88 + 16), 0);
          sub_1004A2330(&v122, &v79[(*(v118 + 80) + 32) & ~*(v118 + 80)], v89, v88);
          v91 = v90;
          sub_1002204D4(v122);
          if (v91 != v89)
          {
            __break(1u);
            goto LABEL_12;
          }
        }

        else
        {

          v79 = _swiftEmptyArrayStorage;
        }

        (*(v118 + 8))(v100, v76);
        goto LABEL_15;
      }
    }

LABEL_12:
    (*(v118 + 8))(v100, v76);
    v79 = 0;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1002F4B48(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMIPConfigValue();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7 - 8);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v13;
  v14 = type metadata accessor for FMIPItemImageSize();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for FMIPItemImageSize.list(_:), v14, v16);

  v55 = sub_1001C8A1C(a1, v18, 0);

  (*(v15 + 8))(v18, v14);
  [a2 coordinate];
  v20 = v19;
  v22 = v21;
  [a2 horizontalAccuracy];
  v24 = v23;
  v54 = v23;
  v49 = v11;
  v53 = *(v11 + 16);
  v53(v13, a1, v10);
  v25 = objc_allocWithZone(type metadata accessor for FMItemAnnotation());
  v26 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage;
  *&v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage] = 0;
  v27 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v57 + 104))(v58, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
  *&v25[v27] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = v10;
  v29 = v52;
  sub_10007EBC0(&unk_1006C2450, &qword_100554710);
  v30 = swift_allocObject();
  *(v30 + ((*(*v30 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v53((v30 + *(*v30 + class metadata base offset for ManagedBuffer + 16)), v29, v28);
  *&v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock] = v30;
  v31 = *&v25[v26];
  v32 = v55;
  *&v25[v26] = v55;
  v33 = v32;

  v34 = &v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_tempCoordinate];
  *v34 = v20;
  v34[1] = v22;
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v24 < 9.22337204e18)
  {
    v36 = v50;
    v35 = v51;
    v37 = v48;
    (*(v50 + 104))(v48, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v51);
    v61 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v36 + 8))(v37, v35);
    v38 = v62;
    v39 = &v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v39 = 0;
    v39[1] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_100554BC0;
    v40 = &v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v40 = v20;
    v40[1] = v22;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v24;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v38 < v24;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v41 = type metadata accessor for FMAnnotation();
    v60.receiver = v25;
    v60.super_class = v41;
    v42 = objc_msgSendSuper2(&v60, "init");
    v43 = FMIPItem.name.getter();
    v45 = v44;

    (*(v49 + 8))(v29, v28);
    v46 = &v42[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v46 = v43;
    v46[1] = v45;

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_1002F5264()
{
  sub_10001835C(*(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler), *(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler + 8));
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem, &qword_1006B07D0, qword_100552820);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice, &unk_1006BBCE0, &unk_1005534C0);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_safeLocationSuggestion, &unk_1006BB1B0, qword_10055C5C0);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationLocation, &qword_1006BC990, &unk_100558AC0);

  return result;
}

id sub_1002F53DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSeparationNotificationWelcomeViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMSeparationNotificationWelcomeViewController(uint64_t a1)
{
  result = qword_1006BB180;
  if (!qword_1006BB180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002F55EC(uint64_t a1)
{
  sub_1002F5810(319, &qword_1006BA400, &type metadata accessor for FMIPItem);
  if (v1 <= 0x3F)
  {
    sub_1002F5810(319, &qword_1006AFC78, &type metadata accessor for FMIPDevice);
    if (v2 <= 0x3F)
    {
      sub_1002F5810(319, &qword_1006BB190, &type metadata accessor for FMIPSafeLocation);
      if (v3 <= 0x3F)
      {
        sub_1002F5810(319, &qword_1006B7DC0, &type metadata accessor for FMIPSeparationLocation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002F5810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1002F5888()
{
  result = qword_1006BB1A0;
  if (!qword_1006BB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BB1A0);
  }

  return result;
}

unint64_t sub_1002F58E0()
{
  result = qword_1006BB1A8;
  if (!qword_1006BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BB1A8);
  }

  return result;
}

uint64_t sub_1002F5934(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_10001835C(v4, v5);
}

void sub_1002F5980()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_titleLabel;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_subtitleLabel;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollView;
  *(v1 + v5) = [objc_allocWithZone(UIScrollView) init];
  v6 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollContentView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton;
  v8 = objc_opt_self();
  v9 = [v8 systemBlueColor];
  v10 = type metadata accessor for FMSingleLinePlatterButton();
  v11 = objc_allocWithZone(v10);
  *(v1 + v7) = sub_100038758(v9, 1, 0, 1);
  v12 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton;
  v13 = [v8 clearColor];
  v14 = objc_allocWithZone(v10);
  *(v1 + v12) = sub_100038758(v13, 1, 0, 1);
  v15 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v20 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000, v16, v17, v18, v19, v32);
  v21 = [objc_allocWithZone(UIImageView) initWithImage:v20];

  *(v1 + v15) = v21;
  *(v1 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint) = 0;
  v22 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
  v23 = type metadata accessor for FMIPItem();
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
  v25 = type metadata accessor for FMIPDevice();
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  *(v1 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType) = 2;
  v26 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_safeLocationSuggestion;
  v27 = type metadata accessor for FMIPSafeLocation();
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = (v1 + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationTime);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationLocation;
  v30 = type metadata accessor for FMIPSeparationLocation();
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *(v1 + v31) = sub_10012114C();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1002F5E58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1002F5E90(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);

  v4 = sub_1000383D8(v3);
  v5 = *(v4 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton);
  [v5 setHidden:1];

  return v4;
}

id sub_1002F5F68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoUnknownItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id PlaySoundIntent.__allocating_init(identifier:class:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(v5) init];
  type metadata accessor for Device();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = v7;
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [v8 initWithIdentifier:v10 displayString:v11];

  [v9 setDevice:v12];
  [v9 setPlaySoundDeviceClass:a3];

  return v9;
}

uint64_t sub_1002F60C4()
{
  v1 = OBJC_IVAR____TtC6FindMy23FMConditionSubscription_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber);

  return swift_deallocClassInstance();
}

Swift::Int sub_1002F6178()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1002F63A0(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002F6218(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1002F63A0(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002F62A0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1002F63A0(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002F63A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002F63E8()
{
  v0 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100005AB0(v3, qword_1006BB320);
  v4 = sub_100005B14(v3, qword_1006BB320);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F6518()
{
  v0 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100005AB0(v3, qword_1006BB338);
  v4 = sub_100005B14(v3, qword_1006BB338);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F6648(char a1)
{
  v3 = sub_10007EBC0(&qword_1006B98B8, qword_10055B800);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_isPlaySoundConnecting) = a1;
  v9 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource;
  v10 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource);
  v11 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_100007204(v10 + v11, v8, &qword_1006B98B8, qword_10055B800);
  v12 = type metadata accessor for FMUTDetailViewModel(0);
  v13 = *(*(v12 - 8) + 48);
  result = v13(v8, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1002FD73C(v8);
    sub_1003093F0(v8, type metadata accessor for FMUTDetailViewModel);
    v15 = *(v1 + v9);
    v16 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_itemViewModel;
    swift_beginAccess();
    sub_100007204(v15 + v16, v5, &qword_1006B98B8, qword_10055B800);
    result = v13(v5, 1, v12);
    if (result != 1)
    {
      sub_1002FDF5C(v5);
      return sub_1003093F0(v5, type metadata accessor for FMUTDetailViewModel);
    }
  }

  __break(1u);
  return result;
}

char *sub_1002F6844(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v182) = a2;
  v203 = a1;
  v4 = type metadata accessor for FMIPUnknownItemObservationType();
  v187 = *(v4 - 8);
  v188 = v4;
  __chkstk_darwin(v4);
  v186 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v185 = &v171 - v7;
  v190 = type metadata accessor for FMIPProductType();
  v199 = *(v190 - 8);
  __chkstk_darwin(v190);
  v189 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for FMIPUnknownItem();
  v205 = *(v177 - 8);
  __chkstk_darwin(v177);
  v204 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for FMIPUTAlertObservationType();
  v202 = *(v197 - 8);
  __chkstk_darwin(v197);
  v184 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v181 = &v171 - v12;
  v196 = type metadata accessor for FMIPUTAlertProductType();
  v201 = *(v196 - 8);
  __chkstk_darwin(v196);
  v183 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v180 = &v171 - v15;
  v16 = type metadata accessor for FMIPUTAlertCompletionType();
  v178 = *(v16 - 8);
  v179 = v16;
  __chkstk_darwin(v16);
  v176 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPUTAlertSheetType();
  v174 = *(v18 - 8);
  v175 = v18;
  __chkstk_darwin(v18);
  v173 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for FMPlatterIcon(0);
  __chkstk_darwin(v200);
  v21 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_welcomeController) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_informationalController) = 0;
  v22 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention;
  v23 = type metadata accessor for FMFailablePlatterInfoView(0);
  v24 = objc_allocWithZone(v23);
  v25 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v24[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v24[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v24[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 0;
  v24[v25] = 0;
  v26 = sub_1002AEC90(0);
  sub_1003F0AB4();

  *(v3 + v22) = v26;
  v27 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_accessorySoundPendingAttention;
  v28 = objc_allocWithZone(v23);
  v29 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v28[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v28[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v28[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v28[v29] = 0;
  v30 = sub_1002AEC90(0);
  sub_1003F0AB4();

  *(v3 + v27) = v30;
  v172 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton;
  v195 = objc_opt_self();
  v31 = [v195 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v191 = type metadata accessor for FMIconPlatterButton(0);
  v32 = objc_allocWithZone(v191);
  v33 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v32[v33] = [objc_allocWithZone(UIImageView) init];
  v34 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v32[v34] = [objc_allocWithZone(UILabel) init];
  v35 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v32[v35] = [objc_allocWithZone(UILabel) init];
  v36 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v32[v36] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v37 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v38 = type metadata accessor for FMPlatterBackgroundView();
  v39 = objc_allocWithZone(v38);
  v39[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v214.receiver = v39;
  v214.super_class = v38;
  v40 = objc_msgSendSuper2(&v214, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v32[v37] = v40;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v41 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v31;
  v198 = type metadata accessor for FMPlatterIcon;
  sub_100307F10(v21, &v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v42 = &v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v42 = 0xD00000000000001DLL;
  *(v42 + 1) = 0x80000001005900D0;
  *(v42 + 3) = 0;
  *(v42 + 4) = 0;
  *(v42 + 2) = 0;
  v42[40] = 2;
  v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v32[v41] = 0;
  v43 = v191;
  v213.receiver = v32;
  v213.super_class = v191;
  v44 = v31;
  v45 = objc_msgSendSuper2(&v213, "init");
  sub_1000D3C9C();
  v46 = objc_opt_self();
  v193 = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = 0;
  *&v217 = sub_100140B98;
  *(&v217 + 1) = v47;
  *&v215 = _NSConcreteStackBlock;
  *(&v215 + 1) = 1107296256;
  v194 = &v216;
  *&v216 = sub_100004AE4;
  *(&v216 + 1) = &unk_100635918;
  v48 = _Block_copy(&v215);
  v49 = v45;

  [v46 animateWithDuration:v48 animations:0.35];
  _Block_release(v48);

  v192 = type metadata accessor for FMPlatterIcon;
  sub_1003093F0(v21, type metadata accessor for FMPlatterIcon);
  *(v3 + v172) = v49;
  v172 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_ignoreButton;
  v50 = [v195 systemPinkColor];
  swift_storeEnumTagMultiPayload();
  v51 = objc_allocWithZone(v43);
  v52 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v51[v52] = [objc_allocWithZone(UIImageView) init];
  v53 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v51[v53] = [objc_allocWithZone(UILabel) init];
  v54 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v51[v54] = [objc_allocWithZone(UILabel) init];
  v55 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v51[v55] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v56 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v171 = v38;
  v57 = objc_allocWithZone(v38);
  v57[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v212.receiver = v57;
  v212.super_class = v38;
  v58 = objc_msgSendSuper2(&v212, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v51[v56] = v58;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v59 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v50;
  sub_100307F10(v21, &v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v198);
  v60 = &v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v60 = 0xD00000000000001ALL;
  *(v60 + 1) = 0x80000001005900F0;
  *(v60 + 3) = 0;
  *(v60 + 4) = 0;
  *(v60 + 2) = 0;
  v60[40] = 2;
  v51[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v51[v59] = 0;
  v61 = v191;
  v211.receiver = v51;
  v211.super_class = v191;
  v62 = v50;
  v63 = objc_msgSendSuper2(&v211, "init");
  sub_1000D3C9C();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = 0;
  *&v217 = sub_100141408;
  *(&v217 + 1) = v64;
  *&v215 = _NSConcreteStackBlock;
  *(&v215 + 1) = 1107296256;
  *&v216 = sub_100004AE4;
  *(&v216 + 1) = &unk_100635968;
  v65 = _Block_copy(&v215);
  v66 = v63;

  [v193 animateWithDuration:v65 animations:0.35];
  _Block_release(v65);

  sub_1003093F0(v21, v192);
  *(v3 + v172) = v66;
  v172 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findButton;
  v67 = [v195 systemBlueColor];
  v68 = *(sub_10007EBC0(&qword_1006B68B0, &unk_100565040) + 48);
  v69 = enum case for FMFindingType.ut(_:);
  v70 = type metadata accessor for FMFindingType();
  (*(*(v70 - 8) + 104))(v21, v69, v70);
  v21[v68] = 0;
  v71 = enum case for FMFindingTechnology.proximity(_:);
  v72 = type metadata accessor for FMFindingTechnology();
  (*(*(v72 - 8) + 104))(v21, v71, v72);
  swift_storeEnumTagMultiPayload();
  v73 = v61;
  v74 = objc_allocWithZone(v61);
  v75 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v74[v75] = [objc_allocWithZone(UIImageView) init];
  v76 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v74[v76] = [objc_allocWithZone(UILabel) init];
  v77 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v74[v77] = [objc_allocWithZone(UILabel) init];
  v78 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v74[v78] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v79 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v80 = v171;
  v81 = objc_allocWithZone(v171);
  v81[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v210.receiver = v81;
  v210.super_class = v80;
  v82 = objc_msgSendSuper2(&v210, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v74[v79] = v82;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v83 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v67;
  sub_100307F10(v21, &v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v198);
  v84 = &v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v84 = 0xD000000000000019;
  *(v84 + 1) = 0x8000000100586460;
  v84[40] = 0;
  *(v84 + 3) = 0;
  *(v84 + 4) = 0;
  *(v84 + 2) = 0;
  v74[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v74[v83] = 0;
  v209.receiver = v74;
  v209.super_class = v73;
  v85 = v67;
  v86 = v204;
  v87 = v85;
  v88 = objc_msgSendSuper2(&v209, "init");
  sub_1000D3C9C();
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = 0;
  *&v217 = sub_100141408;
  *(&v217 + 1) = v89;
  *&v215 = _NSConcreteStackBlock;
  *(&v215 + 1) = 1107296256;
  *&v216 = sub_100004AE4;
  *(&v216 + 1) = &unk_1006359B8;
  v90 = _Block_copy(&v215);
  v91 = v88;

  [v193 animateWithDuration:v90 animations:0.35];
  v92 = v90;
  v93 = v177;
  _Block_release(v92);

  sub_1003093F0(v21, v192);
  *(v3 + v172) = v91;
  v94 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_firstRowStackView;
  *(v3 + v94) = [objc_allocWithZone(UIStackView) init];
  v95 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_actionButtonsStackView;
  *(v3 + v95) = [objc_allocWithZone(UIStackView) init];
  v96 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_verticalStackView;
  *(v3 + v96) = [objc_allocWithZone(UIStackView) init];
  v97 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_footerLabel;
  *(v3 + v97) = [objc_allocWithZone(UILabel) init];
  *(v3 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_imageFetchCancellable) = 0;
  (*(v174 + 104))(v173, enum case for FMIPUTAlertSheetType.user(_:), v175);
  (*(v178 + 104))(v176, enum case for FMIPUTAlertCompletionType.closedSheet(_:), v179);
  v98 = *(v201 + 104);
  LODWORD(v178) = enum case for FMIPUTAlertProductType.airTag(_:);
  v201 += 104;
  v179 = v98;
  (v98)(v180);
  v99 = *(v202 + 104);
  LODWORD(v191) = enum case for FMIPUTAlertObservationType.standard(_:);
  v202 += 104;
  v192 = v99;
  v99(v181);
  FMIPUTAlertEvent.init(sheetType:completionAction:disableItemTapped:didCloseSheet:playSoundCount:tracksCount:tracksElapsedTime:precisionFindingSessionCount:proximityFindingSessionCount:productType:observationType:isPosh:)();
  *(v3 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_isPlaySoundConnecting) = 0;
  type metadata accessor for FMUTDetailDataSource(0);
  swift_allocObject();

  v101 = sub_10028BA90(v100);
  v102 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource;
  *(v3 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource) = v101;
  v103 = objc_allocWithZone(type metadata accessor for FMFindingExperiencePresenter(0));

  *(v3 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findingExperiencePresenter) = sub_100160AB0(v104);
  v105 = objc_allocWithZone(type metadata accessor for FMErrorConditionsAttentionModule());

  *(v3 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findingExperienceAttentionModule) = sub_1004F28B0(v106);
  *(v3 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_bypassWelcomeScreen) = v182;
  v107 = *(v3 + v102);
  v108 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v109 = v107 + v108;
  v110 = v205;
  v194 = *(v205 + 16);
  v195 = (v205 + 16);
  (v194)(v86, v109, v93);

  v111 = v189;
  FMIPUnknownItem.productType.getter();
  v200 = *(v110 + 8);
  v205 = v110 + 8;
  v200(v86, v93);
  LOBYTE(v107) = FMIPProductType.isAccessory.getter();
  v112 = *(v199 + 8);
  v199 += 8;
  v182 = v112;
  v112(v111, v190);
  v113 = objc_allocWithZone(type metadata accessor for FMBeaconSharingRequestPlatterModule(0));
  *(v3 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_shareButton) = sub_1003DAC30(v100, v107 & 1);
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v118 = sub_1003DE3DC(0xD000000000000016, 0x8000000100584BE0, 6778480, 0xE300000000000000, v114, v115, v116, v117, v171);
  v119 = v93;
  if (!v118)
  {
    v118 = [objc_allocWithZone(UIImage) init];
  }

  *(v3 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utImage) = v118;
  v208 = 0;
  v215 = xmmword_100554AC0;
  v216 = xmmword_100554AD0;
  v217 = xmmword_100552170;
  v218 = xmmword_100552180;
  v219 = xmmword_100552190;
  v220 = xmmword_1005521A0;
  v221 = xmmword_1005521B0;
  v222 = xmmword_1005521C0;
  v223 = xmmword_1005521D0;
  v224 = xmmword_1005521E0;
  v225 = 0;
  v226 = 0x403A000000000000;
  v227 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  v228 = _Q0;
  v229 = 0x4046000000000000;
  v230 = 0;

  v126 = sub_100278C9C(v125, &v215);
  *(*&v126[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findingExperiencePresenter] + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate + 8) = &off_100635818;
  swift_unknownObjectWeakAssign();
  v127 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource;
  *(*&v126[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource] + 32) = &off_100635838;
  swift_unknownObjectWeakAssign();
  v198 = v127;
  v128 = *(v127 + v126);
  v129 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v130 = v204;
  v131 = v194;
  (v194)(v204, v128 + v129, v93);
  v193 = v126;
  LOBYTE(v128) = FMIPUnknownItem.isAppleAudioAccessory.getter();
  v132 = v130;
  v133 = v200;
  v200(v132, v93);
  if (v128)
  {
    v134 = enum case for FMIPUTAlertProductType.airPods(_:);
  }

  else
  {
    v135 = *(v198 + v126);
    v136 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
    swift_beginAccess();
    v137 = v135 + v136;
    v138 = v204;
    (v131)(v204, v137, v93);
    v139 = v189;
    FMIPUnknownItem.productType.getter();
    v133(v138, v119);
    LOBYTE(v138) = FMIPProductType.isAccessory.getter();
    v182(v139, v190);
    if (v138)
    {
      v134 = enum case for FMIPUTAlertProductType.accessory(_:);
    }

    else
    {
      v134 = v178;
    }
  }

  v179(v183, v134, v196);
  swift_beginAccess();
  FMIPUTAlertEvent.productType.setter();
  swift_endAccess();
  v140 = *(v198 + v126);
  v141 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v142 = v140 + v141;
  v143 = v204;
  (v131)(v204, v142, v119);
  v144 = v185;
  FMIPUnknownItem.observationType.getter();
  v200(v143, v119);
  v146 = v187;
  v145 = v188;
  v147 = v126;
  v148 = v186;
  (*(v187 + 104))(v186, enum case for FMIPUnknownItemObservationType.beepOnMove(_:), v188);
  sub_10000A300(&qword_1006BB418, &type metadata accessor for FMIPUnknownItemObservationType, &protocol conformance descriptor for FMIPUnknownItemObservationType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v149 = *(v146 + 8);
  v150 = v148;
  v151 = v147;
  v149(v150, v145);
  v149(v144, v145);
  if (v207 == v206)
  {
    v152 = enum case for FMIPUTAlertObservationType.beepOnMove(_:);
  }

  else
  {
    v152 = v191;
  }

  (v192)(v184, v152, v197);
  v153 = v193;
  swift_beginAccess();
  FMIPUTAlertEvent.observationType.setter();
  swift_endAccess();
  v154 = *(v198 + v151);
  v155 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v156 = v204;
  (v194)(v204, v154 + v155, v119);
  FMIPUnknownItem.isPosh.getter();
  v200(v156, v119);
  swift_beginAccess();
  FMIPUTAlertEvent.isPosh.setter();
  swift_endAccess();
  sub_1002FA80C();
  v157 = *&v153[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton];
  v158 = String._bridgeToObjectiveC()();
  [v157 setAccessibilityIdentifier:v158];

  v159 = *&v153[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_ignoreButton];
  v160 = String._bridgeToObjectiveC()();
  [v159 setAccessibilityIdentifier:v160];

  v161 = *&v153[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findButton];
  v162 = String._bridgeToObjectiveC()();
  [v161 setAccessibilityIdentifier:v162];

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v163 = type metadata accessor for Logger();
  sub_100005B14(v163, qword_1006D4630);
  v164 = v153;
  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *v167 = 138412290;
    *(v167 + 4) = v164;
    *v168 = v151;
    v169 = v164;
    _os_log_impl(&_mh_execute_header, v165, v166, "FMUTContentViewController%@: init", v167, 0xCu);
    sub_100012DF0(v168, &unk_1006AF760, &qword_100552DB0);
  }

  return v164;
}

uint64_t sub_1002F831C()
{

  v1 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utAnalytics;
  v2 = type metadata accessor for FMIPUTAlertEvent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1002F8494()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMUTContentViewController%@: deinit", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760, &qword_100552DB0);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMUTContentViewController(0);
  return objc_msgSendSuper2(&v9, "dealloc");
}

void sub_1002F88C0(char a1)
{
  v3 = sub_10007EBC0(&qword_1006B7D50, &unk_10055A110);
  __chkstk_darwin(v3 - 8);
  v71 = &v58 - v4;
  v5 = type metadata accessor for FMIPUTAlertEvent();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v58 - v8;
  v67 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMSelectionPendingAction(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006AF998, &qword_1005525B0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v18 = sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
  __chkstk_darwin(v18 - 8);
  v61 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  v26 = type metadata accessor for FMUTContentViewController(0);
  v76.receiver = v1;
  v76.super_class = v26;
  objc_msgSendSuper2(&v76, "viewDidAppear:", a1 & 1);
  v74 = v1;
  v70 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v27 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v28 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  swift_storeEnumTagMultiPayload();
  v60 = *(v12 + 56);
  v60(v25, 0, 1, v11);
  v29 = *(v15 + 56);
  sub_100007204(v27 + v28, v17, &unk_1006B8DD0, &unk_100555060);
  sub_100007204(v25, &v17[v29], &unk_1006B8DD0, &unk_100555060);
  v30 = *(v12 + 48);
  if (v30(v17, 1, v11) != 1)
  {
    sub_100007204(v17, v22, &unk_1006B8DD0, &unk_100555060);
    if (v30(&v17[v29], 1, v11) != 1)
    {
      v33 = v59;
      sub_100309450(&v17[v29], v59, type metadata accessor for FMSelectionPendingAction);
      v34 = sub_100247790(v22, v33);
      sub_1003093F0(v33, type metadata accessor for FMSelectionPendingAction);
      sub_100012DF0(v25, &unk_1006B8DD0, &unk_100555060);
      sub_1003093F0(v22, type metadata accessor for FMSelectionPendingAction);
      sub_100012DF0(v17, &unk_1006B8DD0, &unk_100555060);
      v31 = v74;
      v32 = v70;
      if ((v34 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    sub_100012DF0(v25, &unk_1006B8DD0, &unk_100555060);
    sub_1003093F0(v22, type metadata accessor for FMSelectionPendingAction);
LABEL_6:
    sub_100012DF0(v17, &qword_1006AF998, &qword_1005525B0);
    v31 = v74;
    v32 = v70;
    goto LABEL_13;
  }

  sub_100012DF0(v25, &unk_1006B8DD0, &unk_100555060);
  if (v30(&v17[v29], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_100012DF0(v17, &unk_1006B8DD0, &unk_100555060);
  v31 = v74;
  v32 = v70;
LABEL_8:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100005B14(v35, qword_1006D4630);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMUTContentViewController: viewDidAppear for play sound", v38, 2u);
  }

  v39 = *(*&v31[v32] + 56);
  v40 = v61;
  v60(v61, 1, 1, v11);
  v41 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_1000BBF40(v40, v39 + v41, &unk_1006B8DD0, &unk_100555060);
  swift_endAccess();

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v42 = static OS_dispatch_queue.main.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = v31;
  aBlock[4] = sub_1003093CC;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100636520;
  v44 = _Block_copy(aBlock);
  v45 = v31;

  v46 = v62;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A300(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v47 = v64;
  v48 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v66 + 8))(v47, v48);
  (*(v63 + 8))(v46, v65);
LABEL_13:
  v49 = *(*&v31[v32] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v50 = type metadata accessor for FMPendingActionInfo(0);
  v51 = v71;
  sub_100007204(v49 + *(v50 + 40), v71, &qword_1006B7D50, &unk_10055A110);
  v53 = v72;
  v52 = v73;
  if ((*(v72 + 48))(v51, 1, v73) == 1)
  {
    sub_100012DF0(v51, &qword_1006B7D50, &unk_10055A110);
  }

  else
  {
    v54 = *(v53 + 32);
    v55 = v68;
    v54(v68, v51, v52);
    v56 = v69;
    v54(v69, v55, v52);
    v57 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utAnalytics;
    swift_beginAccess();
    (*(v53 + 40))(&v31[v57], v56, v52);
    swift_endAccess();
  }

  sub_1002F9D74();
}

id sub_1002F9390()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMUTContentViewController(0);
  objc_msgSendSuper2(&v10, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_firstRowStackView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result layoutMargins];
    v5 = v4;

    [v1 setSpacing:v5];
    v6 = *&v0[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_verticalStackView];
    result = [v0 view];
    if (result)
    {
      v7 = result;
      [result layoutMargins];
      v9 = v8;

      return [v6 setSpacing:v9];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F94D4(char a1)
{
  v2 = v1;
  v59 = type metadata accessor for FMIPUTAlertEvent();
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FMIPUnknownItem();
  v5 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B7D50, &unk_10055A110);
  __chkstk_darwin(v7 - 8);
  v60 = &v55 - v8;
  v9 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  v15 = type metadata accessor for FMUTContentViewController(0);
  v63.receiver = v2;
  v63.super_class = v15;
  objc_msgSendSuper2(&v63, "viewWillDisappear:", a1 & 1);
  *(*&v2[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_updatesEnabled) = 0;

  sub_10028B38C(v16, v17, v18);

  if ((*(*&v2[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention] + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) & 1) == 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      _os_log_impl(&_mh_execute_header, v20, v21, "FMUTContentViewController: Sound Attention Visible: %{BOOL}d", v22, 8u);
    }

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    *(v24 + 24) = 0;
    aBlock[4] = sub_100309580;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_1006364D0;
    v25 = _Block_copy(aBlock);
    v26 = v2;

    [v23 animateWithDuration:4 delay:v25 options:0 animations:0.3 completion:0.0];
    _Block_release(v25);
  }

  if ((FMIPItemsTabEnabled.getter() & 1) == 0)
  {
    goto LABEL_12;
  }

  v27 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v28 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v29 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100307F10(v28 + v29, v14, type metadata accessor for FMSelectedSection);
  LODWORD(v28) = swift_getEnumCaseMultiPayload();
  sub_1003093F0(v14, type metadata accessor for FMSelectedSection);
  if (v28 == 19)
  {
    v30 = *(*&v2[v27] + 56);
    v31 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utAnalytics;
    swift_beginAccess();
    v32 = v61;
    v33 = &v2[v31];
    v34 = v60;
    v35 = v59;
    (*(v61 + 16))(v60, v33, v59);
    (*(v32 + 56))(v34, 0, 1, v35);
    v36 = v30 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v37 = *(type metadata accessor for FMPendingActionInfo(0) + 40);

    sub_1000BBF40(v34, v36 + v37, &qword_1006B7D50, &unk_10055A110);
    swift_endAccess();
  }

  v38 = *(*&v2[v27] + 56);
  v39 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100307F10(v38 + v39, v11, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v40 = v56;
    v41 = v58;
    (*(v5 + 32))(v56, v11, v58);
    v42 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utAnalytics;
    swift_beginAccess();
    v43 = v61;
    v44 = v57;
    v45 = v59;
    (*(v61 + 16))(v57, &v2[v42], v59);

    FMIPManager.enqueue(UTEvent:item:)();
    (*(v43 + 8))(v44, v45);
    (*(v5 + 8))(v40, v41);

    v46 = *(*&v2[v27] + 56);
    v47 = v60;
    (*(v43 + 56))(v60, 1, 1, v45);
    v48 = v46 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v49 = *(type metadata accessor for FMPendingActionInfo(0) + 40);

    sub_1000BBF40(v47, v48 + v49, &qword_1006B7D50, &unk_10055A110);
    swift_endAccess();

LABEL_12:
    v50 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
    v50[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
    v51 = v50;
    sub_10041E45C();
    goto LABEL_13;
  }

  sub_1003093F0(v11, type metadata accessor for FMSelectedSection);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100005B14(v52, qword_1006D4630);
  v51 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v51, v53, "FMUTContentViewController: cannot submit UT analytics without unknown item", v54, 2u);
  }

LABEL_13:
}

void sub_1002F9D74()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v79 = *(v2 - 8);
  __chkstk_darwin(v2);
  v80 = &v70[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for FMIPProductType();
  v78 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v7);
  v9 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v70[-v15];
  __chkstk_darwin(v17);
  if (v1[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_bypassWelcomeScreen])
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMUTContentViewController: Not showing UT welcome since it's bypassed", v23, 2u);
    }

    v24 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
    v24[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
    v80 = v24;
    sub_10041E45C();
    v25 = v80;
  }

  else
  {
    v74 = v2;
    v75 = &v70[-v19];
    v77 = v18;
    v76 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
    v26 = v1;
    v27 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
    v28 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100307F10(v27 + v28, v9, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v29 = v75;
      v30 = v9;
      v31 = v77;
      (*(v11 + 32))(v75, v30, v77);
      v32 = *(v11 + 16);
      v33 = v29;
      v34 = v31;
      v32(v16, v33, v31);
      v72 = *&v26[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utImage];
      FMIPUnknownItem.productType.getter();
      v71 = FMIPProductType.isAccessory.getter();
      v78[1](v6, v4);
      My = FMIPUnknownItem.isFindMyNetwork.getter();
      v36 = FMIPUnknownItem.name.getter();
      v38 = v37;
      v32(v13, v16, v34);
      v39 = sub_100317318(v13);
      v40 = *(v11 + 8);
      v73 = v11 + 8;
      v78 = v40;
      (v40)(v16, v34);
      type metadata accessor for FMUTWelcomeViewModel(0);
      v41 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v41 + 16) = v72;
      *(v41 + 24) = v71 & 1;
      *(v41 + 25) = My & 1;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      *(v41 + 48) = v39;
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v81 = v41;
      v82 = sub_10030930C;
      v83 = v42;
      v84 = sub_10030934C;
      v85 = v43;
      v86 = sub_10030938C;
      v87 = v44;
      v88 = xmmword_10055D4B0;
      v89 = xmmword_10055D4C0;
      __asm { FMOV            V0.2D, #12.0 }

      v90 = _Q0;
      v91 = 0x4065E00000000000;
      v50 = objc_allocWithZone(sub_10007EBC0(&qword_1006BB430, qword_10055D5A0));
      v51 = UIHostingController.init(rootView:)();
      sub_10007EBC0(&qword_1006B3280, &unk_100555040);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100552220;
      static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
      v81 = v52;
      sub_10000A300(&qword_1006C1310, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
      sub_10007EBC0(&qword_1006B3288, &unk_10055A8A0);
      sub_100004098(&qword_1006C1320, &qword_1006B3288, &unk_10055A8A0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      dispatch thunk of UIHostingController.sizingOptions.setter();
      v53 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v26 action:"dismissWelcomeController"];
      v54 = v51;
      v55 = [v54 navigationItem];
      [v55 setLeftBarButtonItem:v53];

      v56 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
      v57 = v54;
      v58 = sub_1000CC510(v57, -2);
      [v58 setDelegate:v58];

      v59 = *&v26[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_welcomeController];
      *&v26[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_welcomeController] = v58;
      v60 = v58;

      [v26 presentViewController:v60 animated:1 completion:0];
      v61 = *(*&v26[v76] + 16);
      v61[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
      v62 = v61;
      sub_10041E45C();

      (v78)(v75, v77);
    }

    else
    {
      v63 = v76;
      sub_1003093F0(v9, type metadata accessor for FMSelectedSection);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_100005B14(v64, qword_1006D4630);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "FMUTContentViewController: cannot present welcome screen without unknown item", v67, 2u);
      }

      v68 = *(*&v26[v63] + 16);
      v68[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
      v69 = v68;
      sub_10041E45C();
    }
  }
}

void sub_1002FA6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_welcomeController);
    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      aBlock[4] = a3;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = a4;
      v10 = _Block_copy(aBlock);
      v11 = v8;

      [v11 dismissViewControllerAnimated:1 completion:v10];

      _Block_release(v10);
      v7 = v11;
    }
  }
}

void sub_1002FA80C()
{
  v1 = sub_10007EBC0(&qword_1006BF780, &qword_100559B00);
  __chkstk_darwin(v1 - 8);
  v36 = &v36 - v2;
  v3 = sub_10007EBC0(&qword_1006BB420, &unk_10055D590);
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v36 - v4;
  v40 = type metadata accessor for FMIPProductType();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPUnknownItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource;
  v41 = v0;
  v13 = *&v0[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource];
  v14 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v15 = *(v9 + 16);
  v15(v11, v13 + v14, v8);
  FMIPUnknownItem.productType.getter();
  v16 = *(v9 + 8);
  v16(v11, v8);
  LOBYTE(v13) = FMIPProductType.isAccessory.getter();
  (*(v5 + 8))(v7, v40);
  if (v13)
  {
    v17 = v16;
    v18 = v41;
    v19 = *&v41[v12];
    v20 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
    swift_beginAccess();
    v15(v11, v19 + v20, v8);

    v21 = sub_1001AFD50(v11, 1u);

    v17(v11, v8);
    v43 = v21;
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v42 = v22;
    v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v24 = v36;
    (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
    sub_10007EBC0(&unk_1006B4D90, &unk_100555990);
    sub_100004098(&qword_1006B7800, &unk_1006B4D90, &unk_100555990, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10018B6D4();
    v25 = v37;
    Publisher.receive<A>(on:options:)();
    sub_100012DF0(v24, &qword_1006BF780, &qword_100559B00);

    *(swift_allocObject() + 16) = v18;
    sub_100004098(&qword_1006BB428, &qword_1006BB420, &unk_10055D590, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v26 = v18;
    v27 = v39;
    v28 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v38 + 8))(v25, v27);
    *&v26[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_imageFetchCancellable] = v28;
  }

  else
  {
    v29 = v41;
    sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
    v34 = sub_1003DE3FC(0x676154, 0xE300000000000000, 6778480, 0xE300000000000000, v30, v31, v32, v33, v36);
    if (!v34)
    {
      v34 = [objc_allocWithZone(UIImage) init];
    }

    v35 = *&v29[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utImage];
    *&v29[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utImage] = v34;
  }
}

uint64_t sub_1002FAD94()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPProductType();
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin(v2);
  v72 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  __chkstk_darwin(v4 - 8);
  v71 = &v67 - v5;
  v6 = type metadata accessor for FMIPUnknownItem();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v78 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002791F0();
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel) setNumberOfLines:3];
  v8 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel);
  v9 = objc_opt_self();
  v10 = [v9 secondaryLabelColor];
  [v8 setTextColor:v10];

  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle:UIFontTextStyleBody];
  [v8 setFont:v12];

  v13 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel);
  v14 = [v9 secondaryLabelColor];
  [v13 setTextColor:v14];

  v15 = [v11 preferredFontForTextStyle:UIFontTextStyleBody];
  [v13 setFont:v15];

  v16 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_actionButtonsStackView);
  v17 = [v16 layer];
  v18 = [v9 blackColor];
  v19 = [v18 CGColor];

  [v17 setShadowColor:v19];
  v20 = [v16 layer];
  LODWORD(v21) = 1031127695;
  [v20 setShadowOpacity:v21];

  v22 = [v16 layer];
  [v22 setShadowRadius:16.0];

  v23 = [v16 layer];
  [v23 setShadowOffset:{0.0, 0.0}];

  [v16 setAxis:1];
  v73 = v16;
  [v16 setSpacing:0.0];
  v24 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_firstRowStackView);
  [v24 setAxis:0];
  v70 = v24;
  [v24 setDistribution:1];
  v25 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource);
  v26 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  (*(v76 + 16))(v78, v25 + v26, v77);
  v27 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_footerLabel);
  v28 = [v9 secondaryLabelColor];
  [v27 setTextColor:v28];

  v29 = [v11 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v27 setFont:v29];

  v69 = v27;
  [v27 setNumberOfLines:0];
  v30 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_verticalStackView);
  [v30 setAxis:1];
  [v30 setAlignment:0];
  [v30 setDistribution:3];
  v82 = &type metadata for SolariumFeatureFlag;
  v83 = sub_10000BD04();
  LOBYTE(v29) = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  if ((v29 & 1) == 0)
  {
    [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionBackground) setHidden:1];
  }

  v31 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention);
  *(v31 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible) = 0;
  sub_1002B1E98();
  v32 = *(v31 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 mainBundle];
  v68 = v1;
  v85._object = 0x8000000100579A00;
  v36._countAndFlagsBits = 0xD00000000000001FLL;
  v36._object = 0x8000000100590110;
  v37.value._object = 0x80000001005799E0;
  v85._countAndFlagsBits = 0xD000000000000018;
  v37.value._countAndFlagsBits = 0xD000000000000013;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v85);

  v39 = String._bridgeToObjectiveC()();

  [v34 setText:v39];

  v40 = *(v31 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle);
  v41 = [v33 mainBundle];
  v86._object = 0x8000000100579A00;
  v42._countAndFlagsBits = 0xD000000000000022;
  v42._object = 0x8000000100590130;
  v43.value._object = 0x80000001005799E0;
  v86._countAndFlagsBits = 0xD000000000000018;
  v43.value._countAndFlagsBits = 0xD000000000000013;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v86);

  v45 = String._bridgeToObjectiveC()();

  [v40 setText:v45];

  v46 = type metadata accessor for FMPlatterIcon(0);
  v47 = v71;
  swift_storeEnumTagMultiPayload();
  v48 = *(*(v46 - 8) + 56);
  v48(v47, 0, 1, v46);
  v49 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v47, v31 + v49);
  swift_endAccess();
  sub_1002B23D8();
  sub_100012DF0(v47, &qword_1006B3298, &unk_100558AB0);
  *(v31 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = 1;
  sub_1002B20D8();
  v50 = v68;
  v51 = *(v68 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_accessorySoundPendingAttention);
  *(v51 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible) = 0;
  sub_1002B1E98();
  swift_storeEnumTagMultiPayload();
  v48(v47, 0, 1, v46);
  v52 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v47, v51 + v52);
  swift_endAccess();
  sub_1002B23D8();
  sub_100012DF0(v47, &qword_1006B3298, &unk_100558AB0);
  *(v51 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = 1;
  sub_1002B20D8();
  v53 = v72;
  FMIPUnknownItem.productType.getter();
  LOBYTE(v49) = FMIPProductType.isAccessory.getter();
  (*(v74 + 8))(v53, v75);
  if (v49)
  {
    v54 = v51;
  }

  else
  {
    v54 = v31;
  }

  [v30 addArrangedSubview:v54];
  v55 = *(v50 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton);
  v55[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 1;
  sub_1000D3C9C();
  v56 = objc_opt_self();
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = 0;
  v83 = sub_100141408;
  v84 = v57;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_100004AE4;
  v82 = &unk_100635A08;
  v58 = _Block_copy(&aBlock);
  v59 = v55;

  [v56 animateWithDuration:v58 animations:0.35];
  _Block_release(v58);
  v60 = v70;
  [v70 addArrangedSubview:v59];
  v61 = *(v50 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findButton);
  v61[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 1;
  sub_1000D3C9C();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = 0;
  v83 = sub_100141408;
  v84 = v62;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_100004AE4;
  v82 = &unk_100635A58;
  v63 = _Block_copy(&aBlock);
  v64 = v61;

  [v56 animateWithDuration:v63 animations:0.35];
  _Block_release(v63);
  [v60 addArrangedSubview:v64];
  [v30 addArrangedSubview:*(v50 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findingExperienceAttentionModule)];
  [v30 addArrangedSubview:v60];
  v65 = *(v50 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_shareButton);
  swift_unknownObjectWeakAssign();
  [v30 addArrangedSubview:v65];
  [v30 addArrangedSubview:*(v50 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_ignoreButton)];
  [v30 addArrangedSubview:v73];
  [v30 addArrangedSubview:v69];
  [*(v50 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView) addSubview:v30];
  return (*(v76 + 8))(v78, v77);
}

void sub_1002FB998()
{
  sub_10027A200();
  v1 = *&v0[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_verticalStackView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionBackground];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [v1 topAnchor];
  v5 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_headerBackground] bottomAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 leadingAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v8 layoutMarginsGuide];

  v11 = [v10 leadingAnchor];
  v12 = [v7 constraintEqualToAnchor:v11];

  *(v3 + 40) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v15 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v13 constraintEqualToAnchor:v18];

  *(v3 + 48) = v19;
  v20 = [v1 bottomAnchor];
  v21 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] bottomAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21];

  *(v3 + 56) = v22;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = v16;
  [v16 activateConstraints:isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1005521F0;
  v26 = [v2 widthAnchor];
  v27 = *&v0[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_actionButtonsStackView];
  v28 = [v27 widthAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  *(v25 + 32) = v29;
  v30 = [v2 heightAnchor];
  v31 = [v27 heightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v25 + 40) = v32;
  v33 = [v2 centerYAnchor];
  v34 = [v27 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v25 + 48) = v35;
  v36 = [v2 centerXAnchor];
  v37 = [v27 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v25 + 56) = v38;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:v39];
}

void sub_1002FBEB4()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"handlePlaySound"];
  [*&v2[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleFindButton"];
  [*&v2[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findButton] addGestureRecognizer:v4];
  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"ignoreTag"];

  [*&v2[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_ignoreButton] addGestureRecognizer:v5];
}

void sub_1002FBFE0(char *a1)
{
  sub_1002F6648(0);
  if ((*(*&a1[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention] + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) & 1) == 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100005B14(v2, qword_1006D4630);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMUTContentViewController: Sound Attention Visible: %{BOOL}d", v5, 8u);
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = 0;
    v10[4] = sub_100307EAC;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100004AE4;
    v10[3] = &unk_1006358C8;
    v8 = _Block_copy(v10);
    v9 = a1;

    [v6 animateWithDuration:4 delay:v8 options:0 animations:0.3 completion:0.0];
    _Block_release(v8);
  }
}

uint64_t sub_1002FC1D0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v2 - 8);
  v182 = &v177 - v3;
  v4 = type metadata accessor for FMPlatterIcon(0);
  __chkstk_darwin(v4);
  v178 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B98B8, qword_10055B800);
  __chkstk_darwin(v6 - 8);
  v8 = &v177 - v7;
  v9 = type metadata accessor for FMUTDetailViewModel(0);
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource;
  v13 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource);
  v14 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_100007204(v13 + v14, v8, &qword_1006B98B8, qword_10055B800);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100012DF0(v8, &qword_1006B98B8, qword_10055B800);
  }

  sub_100309450(v8, v12, type metadata accessor for FMUTDetailViewModel);
  v16 = &v12[v9[6]];
  v18 = *v16;
  v17 = *(v16 + 1);
  v19 = (v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText);
  *v19 = v18;
  v19[1] = v17;

  sub_10027D190(v20);
  v21 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel);
  v22 = String._bridgeToObjectiveC()();
  [v21 setText:v22];

  v23 = [objc_opt_self() labelColor];
  [v21 setTextColor:v23];

  [v21 setHidden:*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed)];
  v24 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel);
  v25 = String._bridgeToObjectiveC()();
  [v24 setText:v25];

  [v24 setTextColor:*&v12[v9[9]]];
  v26 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_footerLabel);
  v27 = String._bridgeToObjectiveC()();
  [v26 setText:v27];

  v28 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton);
  v29 = *&v12[v9[14]];
  if (*(v29 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(2uLL), v30 = Hasher._finalize()(), v31 = -1 << *(v29 + 32), v32 = v30 & ~v31, ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
  {
    v33 = ~v31;
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    do
    {
      v35 = *(*(v29 + 48) + v32);
      v36 = v35 == 4;
      v37 = v35 != 4;
      if (v36)
      {
        break;
      }

      v32 = (v32 + 1) & v33;
    }

    while (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
  }

  else
  {
    v37 = 1;
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  v38 = v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
  v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v37;
  sub_1000D1ACC(v38);
  v39 = *&v12[v9[15]];
  if (*(v39 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(2uLL), v40 = Hasher._finalize()(), v41 = -1 << *(v39 + 32), v42 = v40 & ~v41, ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
  {
    v43 = ~v41;
    do
    {
      v44 = *(*(v39 + 48) + v42);
      v45 = v44 != 4;
      if (v44 == 4)
      {
        break;
      }

      v42 = (v42 + 1) & v43;
    }

    while (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0);
  }

  else
  {
    v45 = 1;
  }

  v183 = v12;
  [v28 p:v45 ivar:?lyt[403]];
  v180 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findButton);
  if (!*(v39 + 16))
  {
    goto LABEL_28;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v46 = Hasher._finalize()();
  v47 = v39 + 56;
  v48 = -1 << *(v39 + 32);
  v49 = v46 & ~v48;
  if ((*(v39 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
  {
    v50 = ~v48;
    while (*(*(v39 + 48) + v49) != 2)
    {
      v49 = (v49 + 1) & v50;
      if (((*(v47 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v51 = 0;
    goto LABEL_30;
  }

LABEL_22:
  if (*(v39 + 16))
  {
    Hasher.init(_seed:)();
    v51 = 1;
    Hasher._combine(_:)(1uLL);
    v52 = Hasher._finalize()();
    v53 = -1 << *(v39 + 32);
    v54 = v52 & ~v53;
    if ((*(v47 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
    {
      v55 = ~v53;
      do
      {
        v56 = *(*(v39 + 48) + v54);
        v51 = v56 != 3;
        if (v56 == 3)
        {
          break;
        }

        v54 = (v54 + 1) & v55;
      }

      while (((*(v47 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0);
    }
  }

  else
  {
LABEL_28:
    v51 = 1;
  }

LABEL_30:
  [v180 p:v51 ivar:?lyt[403]];
  v57 = *(v29 + 16);
  v179 = v29;
  if (!v57)
  {
    goto LABEL_40;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v58 = Hasher._finalize()();
  v59 = v29 + 56;
  v60 = -1 << *(v29 + 32);
  v61 = v58 & ~v60;
  if ((*(v29 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
  {
    v62 = ~v60;
    while (*(*(v29 + 48) + v61) != 2)
    {
      v61 = (v61 + 1) & v62;
      if (((*(v59 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_41;
  }

LABEL_35:
  if (!*(v29 + 16) || (Hasher.init(_seed:)(), Hasher._combine(_:)(1uLL), v63 = Hasher._finalize()(), v64 = -1 << *(v29 + 32), v65 = v63 & ~v64, ((*(v59 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0))
  {
LABEL_40:
    [*(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findingExperienceAttentionModule) p:1 ivar:?lyt[403]];
    goto LABEL_42;
  }

  v66 = ~v64;
  while (*(*(v29 + 48) + v65) != 3)
  {
    v65 = (v65 + 1) & v66;
    if (((*(v59 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  *(*(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findingExperienceAttentionModule) + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention) = 0;
  sub_1004F37A4();
  sub_1004F37A4();
LABEL_42:
  v67 = v183;
  if (*(v39 + 16))
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(0);
    v68 = Hasher._finalize()();
    v69 = v39 + 56;
    v70 = -1 << *(v39 + 32);
    v71 = v68 & ~v70;
    if ((*(v39 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
    {
      v72 = ~v70;
      while (*(*(v39 + 48) + v71) != 2)
      {
        v71 = (v71 + 1) & v72;
        if (((*(v69 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v77 = *(sub_10007EBC0(&qword_1006C0020, &qword_100555030) + 48);
      v78 = 1;
      v79 = v178;
      *v178 = 1;
      v80 = enum case for FMFindingType.ut(_:);
      v81 = type metadata accessor for FMFindingType();
      (*(*(v81 - 8) + 104))(v79 + v77, v80, v81);
      v82 = enum case for FMFindingTechnology.precision(_:);
      v83 = type metadata accessor for FMFindingTechnology();
      (*(*(v83 - 8) + 104))(v79, v82, v83);
      swift_storeEnumTagMultiPayload();
      v84 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
      v85 = v180;
      swift_beginAccess();
      sub_10021FE54(v79, v85 + v84);
      swift_endAccess();
      sub_1000D3C9C();
      v86 = objc_opt_self();
      v87 = swift_allocObject();
      *(v87 + 16) = v85;
      *(v87 + 24) = 0;
      v188 = sub_100141408;
      v189 = v87;
      aBlock = _NSConcreteStackBlock;
      v185 = 1107296256;
      v186 = sub_100004AE4;
      v187 = &unk_100636340;
      v88 = _Block_copy(&aBlock);
      v89 = v85;

      [v86 animateWithDuration:v88 animations:0.35];
      _Block_release(v88);
      sub_1003093F0(v79, type metadata accessor for FMPlatterIcon);
      v90 = v179;
      if (*(v179 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(0);
        v91 = Hasher._finalize()();
        v92 = -1 << *(v90 + 32);
        v93 = v91 & ~v92;
        p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
        if ((*(v90 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
        {
          v94 = ~v92;
          do
          {
            v95 = *(*(v90 + 48) + v93);
            v78 = v95 != 2;
            if (v95 == 2)
            {
              break;
            }

            v93 = (v93 + 1) & v94;
          }

          while (((*(v90 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) != 0);
        }
      }

      else
      {
        p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
      }

      goto LABEL_61;
    }

LABEL_47:
    if (*(v39 + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      v73 = Hasher._finalize()();
      v74 = -1 << *(v39 + 32);
      v75 = v73 & ~v74;
      if ((*(v69 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
      {
        v76 = ~v74;
        while (*(*(v39 + 48) + v75) != 3)
        {
          v75 = (v75 + 1) & v76;
          if (((*(v69 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        v96 = *(sub_10007EBC0(&qword_1006B68B0, &unk_100565040) + 48);
        v97 = enum case for FMFindingType.ut(_:);
        v98 = type metadata accessor for FMFindingType();
        v99 = v178;
        (*(*(v98 - 8) + 104))(v178, v97, v98);
        *(v99 + v96) = 0;
        v100 = enum case for FMFindingTechnology.proximity(_:);
        v101 = type metadata accessor for FMFindingTechnology();
        (*(*(v101 - 8) + 104))(v99, v100, v101);
        swift_storeEnumTagMultiPayload();
        v102 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
        v103 = v180;
        swift_beginAccess();
        sub_10021FE54(v99, v103 + v102);
        swift_endAccess();
        sub_1000D3C9C();
        v104 = objc_opt_self();
        v105 = swift_allocObject();
        *(v105 + 16) = v103;
        *(v105 + 24) = 0;
        v188 = sub_100141408;
        v189 = v105;
        aBlock = _NSConcreteStackBlock;
        v185 = 1107296256;
        v186 = sub_100004AE4;
        v187 = &unk_1006362F0;
        v106 = _Block_copy(&aBlock);
        v107 = v103;

        [v104 animateWithDuration:v106 animations:0.35];
        _Block_release(v106);
        v108 = v99;
        p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
        sub_1003093F0(v108, type metadata accessor for FMPlatterIcon);
        v78 = sub_1001602D4(3, v179) ^ 1;
LABEL_61:
        v109 = *(v180 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled);
        *(v180 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled) = v78 & 1;
        sub_1000D1ACC(v109);
        v67 = v183;
      }
    }
  }

LABEL_62:
  v110 = &v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v111 = *&v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v112 = *&v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 8];
  v114 = &v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16];
  v113 = *v114;
  v115 = *&v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 24];
  v116 = *&v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 32];
  v117 = v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 40];
  LODWORD(v180) = *(v67 + v9[11]);
  if (v180)
  {
    *v110 = 0xD00000000000001DLL;
    *(v110 + 1) = 0x80000001005900D0;
    v114[1] = 0;
    v114[2] = 0;
    *v114 = 0;
    v110[40] = 2;
    sub_1000D5A54(v111, v112, v113, v115, v116, v117);
    sub_1000D3C9C();
    v118 = objc_opt_self();
    v119 = swift_allocObject();
    *(v119 + 16) = v28;
    *(v119 + 24) = 1;
    v188 = sub_100141408;
    v189 = v119;
    aBlock = _NSConcreteStackBlock;
    v185 = 1107296256;
    v186 = sub_100004AE4;
    v187 = &unk_100636250;
    v120 = _Block_copy(&aBlock);
    v121 = v28;

    [v118 animateWithDuration:v120 animations:0.35];
    _Block_release(v120);
    v122 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_ignoreButton);
    v123 = &v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
    v124 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
    v125 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 8];
    v126 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16];
    v127 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 24];
    v128 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 32];
    *v123 = 0xD00000000000001ALL;
    *(v123 + 1) = 0x80000001005900F0;
    *(v123 + 2) = 0;
    *(v123 + 3) = 0;
    *(v123 + 4) = 0;
    v129 = v123[40];
    v123[40] = 2;
    sub_1000D5A54(v124, v125, v126, v127, v128, v129);
    sub_1000D3C9C();
    v130 = swift_allocObject();
    *(v130 + 16) = v122;
    *(v130 + 24) = 1;
    v188 = sub_100141408;
    v189 = v130;
    aBlock = _NSConcreteStackBlock;
    v185 = 1107296256;
    v131 = &unk_1006362A0;
  }

  else
  {
    *v110 = 0xD000000000000018;
    *(v110 + 1) = 0x8000000100590640;
    v114[1] = 0;
    v114[2] = 0;
    *v114 = 0;
    v110[40] = 1;
    sub_1000D5A54(v111, v112, v113, v115, v116, v117);
    sub_1000D3C9C();
    v118 = objc_opt_self();
    v132 = swift_allocObject();
    *(v132 + 16) = v28;
    *(v132 + 24) = 1;
    v188 = sub_100141408;
    v189 = v132;
    aBlock = _NSConcreteStackBlock;
    v185 = 1107296256;
    v186 = sub_100004AE4;
    v187 = &unk_100636160;
    v133 = _Block_copy(&aBlock);
    v134 = v28;

    [v118 animateWithDuration:v133 animations:0.35];
    _Block_release(v133);
    v122 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_ignoreButton);
    v135 = &v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
    v136 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
    v137 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 8];
    v138 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16];
    v139 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 24];
    v140 = *&v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 32];
    *v135 = 0xD000000000000015;
    *(v135 + 1) = 0x8000000100590660;
    *(v135 + 2) = 0;
    *(v135 + 3) = 0;
    *(v135 + 4) = 0;
    v141 = v135[40];
    v135[40] = 1;
    sub_1000D5A54(v136, v137, v138, v139, v140, v141);
    sub_1000D3C9C();
    v142 = swift_allocObject();
    *(v142 + 16) = v122;
    *(v142 + 24) = 1;
    v188 = sub_100141408;
    v189 = v142;
    aBlock = _NSConcreteStackBlock;
    v185 = 1107296256;
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v131 = &unk_1006361B0;
  }

  v186 = sub_100004AE4;
  v187 = v131;
  v143 = _Block_copy(&aBlock);
  v144 = v122;

  [v118 animateWithDuration:v143 animations:0.35];
  _Block_release(v143);
  v145 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_shareButton);
  v146 = type metadata accessor for UUID();
  v147 = *(v146 - 8);
  v148 = v182;
  (*(v147 + 16))(v182, v183, v146);
  v149 = 1;
  (*(v147 + 56))(v148, 0, 1, v146);
  v150 = qword_1006D4938;
  swift_beginAccess();
  sub_1000BBF40(v148, &v145[v150], &unk_1006B20C0, &unk_100552E10);
  swift_endAccess();
  v151 = v180;
  v145[qword_1006D4940] = v180;
  if (*(v39 + 16))
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(6uLL);
    v152 = Hasher._finalize()();
    v153 = -1 << *(v39 + 32);
    v154 = v152 & ~v153;
    v155 = v179;
    if ((*(v39 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154))
    {
      v156 = ~v153;
      do
      {
        v157 = *(*(v39 + 48) + v154);
        v149 = v157 != 7;
        if (v157 == 7)
        {
          break;
        }

        v154 = (v154 + 1) & v156;
      }

      while (((*(v39 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154) & 1) != 0);
    }

    else
    {
      v149 = 1;
    }
  }

  else
  {
    v155 = v179;
  }

  [v145 p:v149 ivar:?lyt[403]];
  v158 = qword_1006D4950;
  if ((v145[qword_1006D4950] & 0xC0) == 0x40)
  {
    if (*(v155 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(6uLL), v159 = Hasher._finalize()(), v160 = -1 << *(v155 + 32), v161 = v159 & ~v160, ((*(v155 + 56 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) != 0))
    {
      v162 = ~v160;
      while (*(*(v155 + 48) + v161) != 7)
      {
        v161 = (v161 + 1) & v162;
        if (((*(v155 + 56 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
LABEL_79:
      v151 |= 0x80u;
    }

    v145[v158] = v151;
    v163 = objc_opt_self();
    v164 = swift_allocObject();
    *(v164 + 16) = v145;
    v188 = sub_1003092B4;
    v189 = v164;
    aBlock = _NSConcreteStackBlock;
    v185 = 1107296256;
    v186 = sub_100004AE4;
    v187 = &unk_100636200;
    v165 = _Block_copy(&aBlock);
    v166 = v145;

    [v163 animateWithDuration:v165 animations:0.3];
    _Block_release(v165);
  }

  v167 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_firstRowStackView);
  v168 = [v167 arrangedSubviews];
  sub_10000905C(0, &qword_1006BA410, UIView_ptr);
  v169 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v169 >> 62)
  {
LABEL_95:
    v170 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v170 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v171 = 0;
  do
  {
    v172 = v171;
    if (v170 == v171)
    {
      break;
    }

    if ((v169 & 0xC000000000000001) != 0)
    {
      v173 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v171 >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_94;
      }

      v173 = *(v169 + 8 * v171 + 32);
    }

    v174 = v173;
    if (__OFADD__(v172, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v175 = [v173 isHidden];

    v171 = v172 + 1;
  }

  while ((v175 & 1) != 0);

  [v167 setHidden:v170 == v172];
  v176 = v183;
  sub_1002FD73C(v183);
  sub_1002FDF5C(v176);
  sub_1002FE3A4(v176);
  sub_1002FE490(v176);

  sub_10028D0E0(v176);

  return sub_1003093F0(v176, type metadata accessor for FMUTDetailViewModel);
}

void sub_1002FD73C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + *(type metadata accessor for FMUTDetailViewModel(0) + 48));
  if ((v3 & 2) != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMUTContentViewController: updateSoundStatus Sound Playing", v18, 2u);
    }

    v12 = *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton);
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
    sub_1000D15EC();
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    sub_1000D17E8();
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
    v9 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = v12;
    v39 = sub_100141428;
    v40 = v19;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v14 = &unk_100636110;
  }

  else if ((v3 & 0x400) != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMUTContentViewController: updateSoundStatus Sound Queued", v23, 2u);
    }

    v12 = *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton);
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 1;
    sub_1000D15EC();
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
    v9 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v12;
    v39 = sub_100141428;
    v40 = v24;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v14 = &unk_1006360C0;
  }

  else if (*(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_isPlaySoundConnecting) == 1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "FMUTContentViewController: updateSoundStatus connecting", v7, 2u);
    }

    v8 = *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton);
    v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    sub_1000D3C9C();
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = 0;
    v39 = sub_100141408;
    v40 = v10;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_100004AE4;
    v38 = &unk_100636020;
    v11 = _Block_copy(&v35);
    v12 = v8;

    [v9 animateWithDuration:v11 animations:0.35];
    _Block_release(v11);
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
    sub_1000D17E8();
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
    sub_1000D15EC();
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v39 = sub_100141428;
    v40 = v13;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v14 = &unk_100636070;
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMUTContentViewController: updateSoundStatus default", v28, 2u);
    }

    v29 = *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton);
    v29[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    sub_1000D3C9C();
    v9 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    v39 = sub_100141408;
    v40 = v30;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_100004AE4;
    v38 = &unk_100635F80;
    v31 = _Block_copy(&v35);
    v12 = v29;

    [v9 animateWithDuration:v31 animations:0.35];
    _Block_release(v31);
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    sub_1000D17E8();
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
    sub_1000D15EC();
    v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = v12;
    v39 = sub_1001412AC;
    v40 = v32;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v14 = &unk_100635FD0;
  }

  v37 = sub_100004AE4;
  v38 = v14;
  v33 = _Block_copy(&v35);
  v34 = v12;

  [v9 animateWithDuration:4 delay:v33 options:0 animations:0.3 completion:{0.0, v35, v36}];
  _Block_release(v33);
}

void sub_1002FDF5C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMUTDetailViewModel(0);
  v5 = *(a1 + *(v4 + 60));
  if (*(v5 + 16))
  {
    v6 = v4;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(0);
    v7 = Hasher._finalize()();
    v8 = -1 << *(v5 + 32);
    v9 = v7 & ~v8;
    if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      while (*(*(v5 + 48) + v9) != 2)
      {
        v9 = (v9 + 1) & v10;
        if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return;
        }
      }

      v11 = *(a1 + *(v6 + 56));
      if (*(v11 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(0);
        v12 = Hasher._finalize()();
        v13 = v11 + 56;
        v14 = -1 << *(v11 + 32);
        v15 = v12 & ~v14;
        if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (*(*(v11 + 48) + v15) != 2)
          {
            v15 = (v15 + 1) & v16;
            if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              return;
            }
          }

          if ((*(a1 + *(v6 + 48)) & 2) != 0)
          {
            if (qword_1006AEBE0 != -1)
            {
              swift_once();
            }

            v22 = type metadata accessor for Logger();
            sub_100005B14(v22, qword_1006D4630);
            v18 = Logger.logObject.getter();
            v19 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v18, v19))
            {
              goto LABEL_24;
            }

            v20 = swift_slowAlloc();
            *v20 = 0;
            v21 = "FMUTContentViewController: updateFindButton Sound Playing, disabling R1 Find Button";
          }

          else
          {
            if (*(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_isPlaySoundConnecting) != 1)
            {
              if (qword_1006AEBE0 != -1)
              {
                swift_once();
              }

              v25 = type metadata accessor for Logger();
              sub_100005B14(v25, qword_1006D4630);
              v26 = Logger.logObject.getter();
              v27 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v26, v27))
              {
                v28 = swift_slowAlloc();
                *v28 = 0;
                _os_log_impl(&_mh_execute_header, v26, v27, "FMUTContentViewController: updateFindButton default, sound not playing or pending", v28, 2u);
              }

              v29 = *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findButton);
              if (*(v11 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(0), v30 = Hasher._finalize()(), v31 = -1 << *(v11 + 32), v32 = v30 & ~v31, ((*(v13 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
              {
                v33 = ~v31;
                do
                {
                  v34 = *(*(v11 + 48) + v32);
                  v35 = v34 == 2;
                  v36 = v34 != 2;
                  if (v35)
                  {
                    break;
                  }

                  v32 = (v32 + 1) & v33;
                }

                while (((*(v13 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
              }

              else
              {
                v36 = 1;
              }

              v24 = *(v29 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled);
              *(v29 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled) = v36;
              goto LABEL_37;
            }

            if (qword_1006AEBE0 != -1)
            {
              swift_once();
            }

            v17 = type metadata accessor for Logger();
            sub_100005B14(v17, qword_1006D4630);
            v18 = Logger.logObject.getter();
            v19 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v18, v19))
            {
LABEL_24:

              v23 = *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findButton);
              v24 = *(v23 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled);
              *(v23 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled) = 1;
LABEL_37:
              sub_1000D1ACC(v24);
              return;
            }

            v20 = swift_slowAlloc();
            *v20 = 0;
            v21 = "FMUTContentViewController: updateFindButton Sound Connecting, disabling R1 Find Button";
          }

          _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

          goto LABEL_24;
        }
      }
    }
  }
}

int *sub_1002FE3A4(uint64_t a1)
{
  result = type metadata accessor for FMUTDetailViewModel(0);
  v4 = 0;
  v5 = *(a1 + result[14]);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    if (*(*(v5 + 48) + (v11 | (v10 << 6))) - 2 >= 6)
    {
      v12 = 0;
LABEL_13:
      v13 = *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_ignoreButton);

      return [v13 setHidden:v12];
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      v12 = 1;
      goto LABEL_13;
    }

    v8 = *(v5 + 56 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002FE490(char *a1)
{
  v5 = v2;
  v75 = *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_actionButtonsStackView);
  v7 = [v75 arrangedSubviews];
  sub_10000905C(0, &qword_1006BA410, UIView_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    object = 0;
    p_ivar_lyt = (v8 & 0xC000000000000001);
    while (1)
    {
      if (p_ivar_lyt)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (object >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(v8 + 8 * object + 32);
      }

      countAndFlagsBits = v10;
      v11 = object + 1;
      if (__OFADD__(object, 1))
      {
        break;
      }

      [v10 removeFromSuperview];

      ++object;
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

  v12 = _swiftEmptyArrayStorage;
  result = type metadata accessor for FMUTDetailViewModel(0);
  v14 = *&a1[*(result + 56)];
  if (*(v14 + 16))
  {
    object = result;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(4uLL);
    result = Hasher._finalize()();
    v15 = v14 + 56;
    v16 = -1 << *(v14 + 32);
    v17 = result & ~v16;
    if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      do
      {
        if (*(*(v14 + 48) + v17) == 5)
        {
          v19 = [objc_opt_self() systemBlueColor];
          v20 = objc_allocWithZone(type metadata accessor for FMSingleLinePlatterButton());
          v21 = sub_100038758(v19, 0, 0, 1);
          p_ivar_lyt = *&v21[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
          v22 = a1[*(object + 44)];
          v23 = objc_opt_self();
          v24 = p_ivar_lyt;
          v25 = [v23 mainBundle];
          if (v22 == 1)
          {
            v73 = 0x8000000100579A00;
            v26 = 0xD000000000000026;
            v27 = 0x8000000100590610;
            v28 = 0xD000000000000013;
            v29 = 0x80000001005799E0;
            v30 = 0xD000000000000018;
          }

          else
          {
            v73 = 0x8000000100582000;
            v26 = 0xD000000000000021;
            v27 = 0x80000001005905E0;
            v29 = 0x8000000100581FE0;
            v30 = 0xD000000000000015;
            v28 = 0xD000000000000010;
          }

          v31._countAndFlagsBits = 0;
          v31._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(*&v26, *&v28, v25, v31, *&v30);

          v32 = String._bridgeToObjectiveC()();

          [v24 setText:v32];

          v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v5 action:"handleLearnMoreTap"];
          [v21 addGestureRecognizer:v12];
          v33 = v21;
          v34 = String._bridgeToObjectiveC()();
          [v33 setAccessibilityIdentifier:v34];

          countAndFlagsBits = v33;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          result = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_25;
          }

          goto LABEL_93;
        }

        v17 = (v17 + 1) & v18;
      }

      while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
    }

    if (*(v14 + 16))
    {
      goto LABEL_26;
    }
  }

  while (1)
  {
LABEL_37:
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      v56 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v56)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    while (1)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v56 = result;
      if (!result)
      {
        break;
      }

LABEL_39:
      a1 = 0;
      countAndFlagsBits = (_swiftEmptyArrayStorage & 0xC000000000000001);
      v5 = 1;
      p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
      object = &LocateDeviceIntentResponse__metaData.ivar_lyt;
      while (1)
      {
        if (countAndFlagsBits)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v57 = _swiftEmptyArrayStorage[a1 + 4];
        }

        v58 = v57;
        v14 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          break;
        }

        *(v57 + OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment) = 1;
        sub_1004F4288();
        [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v75 addArrangedSubview:v58];

        ++a1;
        if (v14 == v56)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
    }

LABEL_50:
    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 == 1)
    {
      goto LABEL_55;
    }

LABEL_59:
    if (!v15)
    {
      goto LABEL_71;
    }

    p_ivar_lyt = (_swiftEmptyArrayStorage & 0xC000000000000001);
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      goto LABEL_90;
    }

    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v62 = _swiftEmptyArrayStorage[4];
      goto LABEL_63;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    p_ivar_lyt = result;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_25:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v12 = _swiftEmptyArrayStorage;
    if (*(v14 + 16))
    {
LABEL_26:
      Hasher.init(_seed:)();
      Hasher._combine(_:)(5uLL);
      result = Hasher._finalize()();
      v35 = -1 << *(v14 + 32);
      v36 = result & ~v35;
      if ((*(v15 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(v14 + 48) + v36) != 6)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v15 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        v14 = 0xD000000000000010;
        v38 = [objc_opt_self() systemRedColor];
        v39 = objc_allocWithZone(type metadata accessor for FMSingleLinePlatterButton());
        v40 = sub_100038758(v38, 0, 0, 1);
        p_ivar_lyt = *&v40[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
        v41 = a1[*(object + 44)];
        v42 = objc_opt_self();
        v43 = p_ivar_lyt;
        v44 = [v42 mainBundle];
        if (v41 == 1)
        {
          v74 = 0x8000000100579A00;
          v45 = 0xD000000000000028;
          v46 = 0x80000001005905B0;
          v47 = 0xD000000000000013;
          v48 = 0x80000001005799E0;
          v49 = 0xD000000000000018;
        }

        else
        {
          v74 = 0x8000000100582000;
          v45 = 0xD000000000000023;
          v46 = 0x8000000100590580;
          v48 = 0x8000000100581FE0;
          v49 = 0xD000000000000015;
          v47 = 0xD000000000000010;
        }

        v50._countAndFlagsBits = 0;
        v50._object = 0xE000000000000000;
        v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v45, *&v47, v44, v50, *&v49);
        countAndFlagsBits = v51._countAndFlagsBits;
        object = v51._object;

        v52 = String._bridgeToObjectiveC()();

        [v43 setText:v52];

        v53 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v5 action:"handleDisableTap"];
        [v40 addGestureRecognizer:v53];
        v54 = v40;
        v55 = String._bridgeToObjectiveC()();
        [v54 setAccessibilityIdentifier:v55];

        a1 = v54;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          p_ivar_lyt = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v12 = _swiftEmptyArrayStorage;
      }
    }
  }

  a1 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result;
  if (a1 != 1)
  {
    goto LABEL_59;
  }

  if (!result)
  {
    goto LABEL_71;
  }

LABEL_55:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_58;
  }

  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v59 = _swiftEmptyArrayStorage[4];
LABEL_58:
    v60 = v59;
    v61 = 3;
    goto LABEL_70;
  }

  __break(1u);
LABEL_90:
  v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:
  v63 = v62;
  *(v62 + OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment) = 2;
  sub_1004F4288();

  result = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (p_ivar_lyt)
  {
    v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_69;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (result >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_95:
    __break(1u);
    return result;
  }

  v64 = _swiftEmptyArrayStorage[result + 4];
LABEL_69:
  v60 = v64;
  v61 = 0;
LABEL_70:
  v60[OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment] = v61;
  sub_1004F4288();

LABEL_71:
  v65 = [v75 arrangedSubviews];
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v66 >> 62)
  {
LABEL_87:
    v67 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = 0;
  do
  {
    v69 = v68;
    if (v67 == v68)
    {
      break;
    }

    if ((v66 & 0xC000000000000001) != 0)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_86;
      }

      v70 = *(v66 + 8 * v68 + 32);
    }

    v71 = v70;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v72 = [v70 isHidden];

    v68 = v69 + 1;
  }

  while ((v72 & 1) != 0);

  return [v75 setHidden:v67 == v69];
}

void sub_1002FEF00(char a1)
{
  sub_10027C53C(a1);
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel);
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 setFont:v4];

  v5 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel);
  v6 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 setFont:v6];
}

void sub_1002FEFF0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B4DB8, &unk_10055D580);
  __chkstk_darwin(v2 - 8);
  v117 = v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v112 - v5;
  v125 = type metadata accessor for FMIPProductType();
  v121 = *(v125 - 8);
  __chkstk_darwin(v125);
  v120 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v8);
  v10 = v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v127 - 8);
  __chkstk_darwin(v127);
  v116 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v124 = v112 - v14;
  __chkstk_darwin(v15);
  v119 = v112 - v16;
  __chkstk_darwin(v17);
  v19 = v112 - v18;
  __chkstk_darwin(v20);
  v22 = v112 - v21;
  __chkstk_darwin(v23);
  v25 = v112 - v24;
  v123 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v26 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100307F10(v26 + v27, v10, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    (*(v11 + 32))(v25, v10, v127);
    v28 = v25;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v112[0] = v6;
    v29 = type metadata accessor for Logger();
    v30 = sub_100005B14(v29, qword_1006D4630);
    v114 = *(v11 + 16);
    v115 = v11 + 16;
    v114(v22, v25, v127);
    v112[1] = v30;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v118 = v25;
    v126 = v11;
    v113 = v1;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v128 = v35;
      *v34 = 136315138;
      v36 = FMIPUnknownItem.debugDescription.getter();
      v38 = v37;
      v122 = *(v126 + 8);
      v122(v22, v127);
      v39 = sub_100005B4C(v36, v38, &v128);
      v28 = v118;

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "FMUTContentViewController: present learn more: %s", v34, 0xCu);
      sub_100006060(v35);
    }

    else
    {

      v122 = *(v11 + 8);
      v122(v22, v127);
    }

    v45 = v120;
    v44 = v121;
    v46 = v127;
    v47 = v114;
    v114(v19, v28, v127);
    v48 = v119;
    v47(v119, v28, v46);
    v49 = v124;
    v47(v124, v28, v46);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67109632;
      FMIPUnknownItem.productType.getter();
      v53 = FMIPProductType.isAccessory.getter();
      LODWORD(v121) = v51;
      v54 = v53;
      (*(v44 + 8))(v45, v125);
      v55 = v19;
      v56 = v127;
      v57 = v122;
      v122(v55, v127);
      *(v52 + 4) = v54 & 1;
      *(v52 + 8) = 1024;
      v58 = FMIPUnknownItem.isAppleAudioAccessory.getter() & 1;
      v57(v48, v56);
      *(v52 + 10) = v58;
      *(v52 + 14) = 1024;
      v59 = v112[0];
      v60 = v124;
      FMIPUnknownItem.utMetadata.getter();
      v61 = type metadata accessor for FMIPUnknownItemUTMetadata();
      v62 = v50;
      v63 = (*(*(v61 - 8) + 48))(v59, 1, v61) == 1;
      sub_100012DF0(v59, &qword_1006B4DB8, &unk_10055D580);
      v64 = v56;
      v65 = v125;
      v57(v60, v64);
      *(v52 + 16) = v63;
      v50 = v62;
      v28 = v118;
      _os_log_impl(&_mh_execute_header, v50, v121, "FMUTContentViewController: isAccessory: %{BOOL}d : %{BOOL}d isMetadataNil: %{BOOL}d", v52, 0x14u);
    }

    else
    {
      v66 = v127;
      v67 = v122;
      v122(v49, v127);
      v67(v48, v66);
      v67(v19, v66);
      v65 = v125;
    }

    v68 = objc_allocWithZone(UIBarButtonItem);
    v69 = v113;
    v70 = [v68 initWithBarButtonSystemItem:1 target:v113 action:"dismissInformationalControllerWithSender:"];
    FMIPUnknownItem.productType.getter();
    v71 = FMIPProductType.isAccessory.getter();
    (*(v44 + 8))(v45, v65);
    if ((v71 & 1) == 0)
    {
      v83 = objc_allocWithZone(type metadata accessor for FMAirTagEducationalVideoViewController());

      v85 = sub_1002BFEC8(v84, 128);
      v86 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
      v87 = v85;
      v88 = sub_1000CC510(v87, 2);
      [v88 setDelegate:v88];
      v87[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_shouldAnimate] = 0;
      [v69 presentViewController:v88 animated:1 completion:0];

      v82 = v28;
LABEL_23:
      v122(v82, v127);
      return;
    }

    v72 = v117;
    FMIPUnknownItem.utMetadata.getter();
    v73 = type metadata accessor for FMIPUnknownItemUTMetadata();
    v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
    sub_100012DF0(v72, &qword_1006B4DB8, &unk_10055D580);
    if (v74 == 1 && (FMIPUnknownItem.isAppleAudioAccessory.getter() & 1) != 0)
    {
      v75 = [objc_opt_self() defaultWorkspace];
      if (v75)
      {
        v76 = v75;
        if (qword_1006AEC00 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for URL();
        sub_100005B14(v77, qword_1006BB338);
        URL._bridgeToObjectiveC()(v78);
        v80 = v79;
        sub_1000070D4(_swiftEmptyArrayStorage);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v76 openSensitiveURL:v80 withOptions:isa];

        v82 = v118;
        goto LABEL_23;
      }

      v122(v118, v127);
    }

    else
    {
      type metadata accessor for FMUTDisclaimerViewController();
      v89 = sub_10027E1D4();
      v90 = *&v69[v123];
      v91 = v116;
      v114(v116, v28, v127);
      v92 = objc_opt_self();

      v93.super.isa = [v92 mainBundle];
      v129._object = 0x8000000100579A00;
      v94._countAndFlagsBits = 0xD000000000000022;
      v94._object = 0x8000000100590520;
      v95.value._object = 0x80000001005799E0;
      v129._countAndFlagsBits = 0xD000000000000018;
      v95.value._countAndFlagsBits = 0xD000000000000013;
      v96._countAndFlagsBits = 0;
      v96._object = 0xE000000000000000;
      v97 = NSLocalizedString(_:tableName:bundle:value:comment:)(v94, v95, v93, v96, v129);

      v98 = objc_allocWithZone(type metadata accessor for FMUTAccessoryInformationViewController(0));
      v99 = sub_10018A204(v90, v91, v97._countAndFlagsBits, v97._object, 0, 0);

      LOBYTE(v93.super.isa) = FMIPUnknownItem.isFindMyNetwork.getter();
      sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
      if (v93.super.isa)
      {
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1005528C0;
        *(v100 + 32) = v99;
      }

      else
      {
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_100552EE0;
        *(v100 + 32) = v89;
        *(v100 + 40) = v99;
        v101 = v89;
      }

      v102 = objc_allocWithZone(type metadata accessor for FMPageViewController());
      v103 = v99;

      v105 = sub_100141E10(v104, v100);
      v106 = [v105 navigationItem];
      [v106 setLeftBarButtonItem:v70 animated:1];

      v107 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
      v108 = v105;
      v109 = sub_1000CC510(v108, 2);
      v110 = v109;
      [v110 setDelegate:v110];

      [v69 presentViewController:v110 animated:1 completion:0];
      v122(v118, v127);
      v111 = *&v69[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_informationalController];
      *&v69[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_informationalController] = v109;
    }
  }

  else
  {
    sub_1003093F0(v10, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005B14(v40, qword_1006D4630);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "FMUTContentViewController: cannot learn more for unknown tag", v43, 2u);
    }
  }
}

void sub_1002FFD6C()
{
  v1 = sub_10007EBC0(&qword_1006B98B8, qword_10055B800);
  __chkstk_darwin(v1 - 8);
  v93 = v85 - v2;
  v91 = type metadata accessor for FMIPProductType();
  v3 = *(v91 - 8);
  __chkstk_darwin(v91);
  v5 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v6);
  v8 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPUnknownItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v0;
  v13 = *(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v14 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100307F10(v13 + v14, v8, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v87 = v10;
    v15 = *(v10 + 32);
    v88 = v9;
    v15(v12, v8, v9);
    FMIPUnknownItem.productType.getter();
    v16 = FMIPProductType.isAccessory.getter();
    (*(v3 + 8))(v5, v91);
    v17 = objc_opt_self();
    v18 = [v17 mainBundle];
    v86 = v12;
    if (v16)
    {
      v100._object = 0x8000000100579A00;
      v19._countAndFlagsBits = 0xD00000000000002ALL;
      v19._object = 0x8000000100590460;
      v20.value._countAndFlagsBits = 0xD000000000000013;
      v20.value._object = 0x80000001005799E0;
      v100._countAndFlagsBits = 0xD000000000000018;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      object = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v100)._object;

      v23 = [v17 mainBundle];
      v101._object = 0x8000000100579A00;
      v24._countAndFlagsBits = 0xD000000000000029;
      v24._object = 0x8000000100590490;
      v25.value._countAndFlagsBits = 0xD000000000000013;
      v25.value._object = 0x80000001005799E0;
      v101._countAndFlagsBits = 0xD000000000000018;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v101)._object;

      v27 = [v17 mainBundle];
      v102._object = 0x8000000100579A00;
      v28._countAndFlagsBits = 0xD000000000000028;
      v28._object = 0x80000001005904C0;
      v29.value._countAndFlagsBits = 0xD000000000000013;
      v29.value._object = 0x80000001005799E0;
      v102._countAndFlagsBits = 0xD000000000000018;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v102)._object;

      v31 = [v17 mainBundle];
      v84 = 0x8000000100579A00;
      v32 = 0xD00000000000002ALL;
      v33 = 0x80000001005904F0;
      v34 = 0xD000000000000013;
      v35 = 0x80000001005799E0;
      v36 = 0xD000000000000018;
    }

    else
    {
      v103._object = 0x8000000100582000;
      v41._countAndFlagsBits = 0xD000000000000025;
      v41._object = 0x80000001005903A0;
      v42.value._object = 0x8000000100581FE0;
      v103._countAndFlagsBits = 0xD000000000000015;
      v42.value._countAndFlagsBits = 0xD000000000000010;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      object = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v18, v43, v103)._object;

      v44 = [v17 mainBundle];
      v104._object = 0x8000000100582000;
      v45._countAndFlagsBits = 0xD000000000000024;
      v45._object = 0x80000001005903D0;
      v46.value._object = 0x8000000100581FE0;
      v104._countAndFlagsBits = 0xD000000000000015;
      v46.value._countAndFlagsBits = 0xD000000000000010;
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v104)._object;

      v48 = [v17 mainBundle];
      v105._object = 0x8000000100582000;
      v49._countAndFlagsBits = 0xD000000000000023;
      v49._object = 0x8000000100590400;
      v50.value._object = 0x8000000100581FE0;
      v105._countAndFlagsBits = 0xD000000000000015;
      v50.value._countAndFlagsBits = 0xD000000000000010;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v105)._object;

      v31 = [v17 mainBundle];
      v84 = 0x8000000100582000;
      v32 = 0xD000000000000025;
      v33 = 0x8000000100590430;
      v35 = 0x8000000100581FE0;
      v36 = 0xD000000000000015;
      v34 = 0xD000000000000010;
    }

    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, *&v34, v31, v52, *&v36)._object;

    v85[1] = object;
    v53 = String._bridgeToObjectiveC()();
    v54 = [objc_opt_self() alertControllerWithTitle:0 message:v53 preferredStyle:0];

    v55 = String._bridgeToObjectiveC()();
    v56 = objc_opt_self();
    v57 = [v56 actionWithTitle:v55 style:1 handler:0];

    v58 = swift_allocObject();
    v59 = v92;
    *(v58 + 16) = v92;
    v60 = v59;
    v61 = String._bridgeToObjectiveC()();
    v98 = sub_100309264;
    v99 = v58;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_100017328;
    v97 = &unk_100635EE0;
    v62 = _Block_copy(&aBlock);

    v63 = [v56 actionWithTitle:v61 style:0 handler:v62];
    _Block_release(v62);

    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    v65 = v60;
    v66 = String._bridgeToObjectiveC()();
    v98 = sub_10030928C;
    v99 = v64;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v67 = v57;
    v96 = sub_100017328;
    v97 = &unk_100635F30;
    v68 = _Block_copy(&aBlock);

    v69 = [v56 actionWithTitle:v66 style:0 handler:v68];
    _Block_release(v68);

    [v54 addAction:v57];
    [v54 addAction:v63];
    v70 = *&v65[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource];
    v71 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_itemViewModel;
    swift_beginAccess();
    v72 = v70 + v71;
    v73 = v93;
    sub_100007204(v72, v93, &qword_1006B98B8, qword_10055B800);
    v74 = type metadata accessor for FMUTDetailViewModel(0);
    if ((*(*(v74 - 8) + 48))(v73, 1, v74) == 1)
    {
      __break(1u);
    }

    else
    {

      v75 = *(v73 + *(v74 + 56));

      sub_1003093F0(v73, type metadata accessor for FMUTDetailViewModel);
      v76 = v88;
      if (*(v75 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(3uLL);
        Hasher._combine(_:)(1u);
        v77 = Hasher._finalize()();
        v78 = -1 << *(v75 + 32);
        v79 = v77 & ~v78;
        v80 = v87;
        v81 = v86;
        if ((*(v75 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
        {
          v82 = ~v78;
          while (1)
          {
            v83 = *(*(v75 + 48) + v79);
            if (v83 - 2) >= 6 && (v83)
            {
              break;
            }

            v79 = (v79 + 1) & v82;
            if (((*(v75 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          [v54 addAction:v69];
        }

        else
        {
LABEL_18:
        }
      }

      else
      {

        v80 = v87;
        v81 = v86;
      }

      [v65 presentViewController:v54 animated:1 completion:0];

      (*(v80 + 8))(v81, v76);
    }
  }

  else
  {
    sub_1003093F0(v8, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4630);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "FMUTContentViewController: cannot learn more for unknown tag", v40, 2u);
    }
  }
}

void sub_1003008B8()
{
  v1 = sub_10007EBC0(&qword_1006B4DB8, &unk_10055D580);
  __chkstk_darwin(v1 - 8);
  v116 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v112 = &v109 - v4;
  v119 = type metadata accessor for FMIPProductType();
  v121 = *(v119 - 8);
  __chkstk_darwin(v119);
  v120 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v6);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPUnknownItem();
  v123 = *(v9 - 8);
  v124 = v9;
  __chkstk_darwin(v9);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v117 = &v109 - v13;
  __chkstk_darwin(v14);
  v118 = &v109 - v15;
  __chkstk_darwin(v16);
  v115 = &v109 - v17;
  __chkstk_darwin(v18);
  v20 = &v109 - v19;
  __chkstk_darwin(v21);
  v125 = &v109 - v22;
  v23 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v122 = v0;
  v24 = *(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100307F10(v24 + v25, v8, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1003093F0(v8, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4630);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "FMUTContentViewController: cannot disable unknown tag", v40, 2u);
    }

    return;
  }

  v109 = v11;
  (*(v123 + 32))(v125, v8, v124);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v113 = v23;
  v26 = type metadata accessor for Logger();
  sub_100005B14(v26, qword_1006D4630);
  v27 = *(v123 + 16);
  v111 = v123 + 16;
  v110 = v27;
  v27(v20, v125, v124);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v126[0] = v31;
    *v30 = 136315138;
    v32 = FMIPUnknownItem.debugDescription.getter();
    v34 = v33;
    v35 = *(v123 + 8);
    (v35)(v20, v124);
    v36 = sub_100005B4C(v32, v34, v126);

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "FMUTContentViewController: present disable tag: %s", v30, 0xCu);
    sub_100006060(v31);
  }

  else
  {

    v35 = *(v123 + 8);
    (v35)(v20, v124);
  }

  v41 = v120;
  v42 = v121;
  v43 = objc_allocWithZone(UIBarButtonItem);
  v114 = [v43 initWithBarButtonSystemItem:1 target:v122 action:"dismissInformationalControllerWithSender:"];
  FMIPUnknownItem.productType.getter();
  v44 = FMIPProductType.isAccessory.getter();
  v47 = *(v42 + 1);
  v46 = v42 + 8;
  v45 = v47;
  v48 = v119;
  v47(v41, v119);
  if ((v44 & 1) == 0)
  {
    v67 = v122;
    v68 = *&v122[v113];

    FMIPUnknownItem.productType.getter();
    v69 = FMIPProductType.isZeus.getter();
    v45(v41, v48);
    v70 = objc_allocWithZone(type metadata accessor for FMAirTagEducationalVideoViewController());
    v71 = sub_1002BFEC8(v68, v69 & 1);
    v72 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v73 = v71;
    v74 = sub_1000CC510(v73, 2);
    [v74 setDelegate:v74];
    v73[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_shouldAnimate] = 0;
    [v67 presentViewController:v74 animated:1 completion:0];

LABEL_27:
    swift_beginAccess();
    FMIPUTAlertEvent.disableItemTapped.setter();
    swift_endAccess();

LABEL_28:
    (v35)(v125, v124);
    return;
  }

  v121 = v46;
  v49 = v115;
  v51 = v124;
  v50 = v125;
  v52 = v110;
  v110(v115, v125, v124);
  v52(v118, v50, v51);
  v53 = v117;
  v52(v117, v50, v51);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 67109632;
    v57 = v35;
    v58 = v120;
    FMIPUnknownItem.productType.getter();
    v59 = FMIPProductType.isAccessory.getter();
    v45(v58, v48);
    v60 = v124;
    (v57)(v49, v124);
    *(v56 + 4) = v59 & 1;
    v35 = v57;
    *(v56 + 8) = 1024;
    v61 = v118;
    v62 = FMIPUnknownItem.isAppleAudioAccessory.getter() & 1;
    (v35)(v61, v60);
    *(v56 + 10) = v62;
    *(v56 + 14) = 1024;
    v63 = v112;
    v64 = v117;
    FMIPUnknownItem.utMetadata.getter();
    v65 = type metadata accessor for FMIPUnknownItemUTMetadata();
    v66 = (*(*(v65 - 8) + 48))(v63, 1, v65) == 1;
    sub_100012DF0(v63, &qword_1006B4DB8, &unk_10055D580);
    (v35)(v64, v60);
    *(v56 + 16) = v66;
    _os_log_impl(&_mh_execute_header, v54, v55, "FMUTContentViewController: isAccessory: %{BOOL}d isAppleAudioAccessory: %{BOOL}d isMetadataNil: %{BOOL}d", v56, 0x14u);
  }

  else
  {
    v75 = v124;
    (v35)(v53, v124);
    (v35)(v118, v75);
    (v35)(v49, v75);
  }

  v76 = v116;
  FMIPUnknownItem.utMetadata.getter();
  v77 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v78 = (*(*(v77 - 8) + 48))(v76, 1, v77);
  sub_100012DF0(v76, &qword_1006B4DB8, &unk_10055D580);
  if (v78 != 1 || (FMIPUnknownItem.isAppleAudioAccessory.getter() & 1) == 0)
  {
    v121 = v35;
    type metadata accessor for FMUTDisclaimerViewController();
    v86 = sub_10027E1D4();
    v87 = *&v122[v113];
    v88 = v109;
    v110(v109, v125, v124);
    v89 = objc_opt_self();

    v90 = [v89 mainBundle];
    v127._object = 0x8000000100579A00;
    v91._countAndFlagsBits = 0xD00000000000001FLL;
    v91._object = 0x8000000100590350;
    v92.value._object = 0x80000001005799E0;
    v127._countAndFlagsBits = 0xD000000000000018;
    v92.value._countAndFlagsBits = 0xD000000000000013;
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    v94 = NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v92, v90, v93, v127);

    v95 = objc_allocWithZone(type metadata accessor for FMUTAccessoryInformationViewController(0));
    v96 = sub_10018A204(v87, v88, v94._countAndFlagsBits, v94._object, 1, 0);

    LOBYTE(v87) = FMIPUnknownItem.isFindMyNetwork.getter();
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    if (v87)
    {
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1005528C0;
      *(v97 + 32) = v96;
    }

    else
    {
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_100552EE0;
      *(v97 + 32) = v86;
      *(v97 + 40) = v96;
      v98 = v86;
    }

    v99 = v122;
    v100 = objc_allocWithZone(type metadata accessor for FMPageViewController());
    v101 = v96;

    v103 = sub_100141E10(v102, v97);
    v104 = [v103 navigationItem];
    [v104 setLeftBarButtonItem:v114 animated:1];

    v105 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v106 = v103;
    v107 = sub_1000CC510(v106, 2);
    v108 = v107;
    [v108 setDelegate:v108];

    [v99 presentViewController:v108 animated:1 completion:0];
    v74 = *&v99[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_informationalController];
    *&v99[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_informationalController] = v107;
    v35 = v121;
    goto LABEL_27;
  }

  v79 = [objc_opt_self() defaultWorkspace];
  if (v79)
  {
    v80 = v79;
    if (qword_1006AEBF8 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for URL();
    sub_100005B14(v81, qword_1006BB320);
    URL._bridgeToObjectiveC()(v82);
    v84 = v83;
    sub_1000070D4(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v80 openSensitiveURL:v84 withOptions:isa];

    goto LABEL_28;
  }

  (v35)(v125, v124);
}

void sub_100301668(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FMIPUnknownItem();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v31);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v30 = v1;
  v11 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v12 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100307F10(v11 + v12, v4, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v29 = *(v5 + 32);
    v13 = v31;
    v29(v10, v4, v31);
    v14 = *(v5 + 16);
    v28 = v10;
    v14(v7, v10, v13);
    type metadata accessor for FMIPIgnoreItemAction();
    swift_allocObject();
    v27 = FMIPIgnoreItemAction.init(unknownItem:until:)();
    v15 = v30;
    v16 = v10;
    v17 = v31;
    v14(v7, v16, v31);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    v29((v20 + v18), v7, v17);
    *(v20 + v19) = v15;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;

    v21 = v15;
    sub_1000D631C(v27, sub_1003091A4, v20);

    (*(v5 + 8))(v28, v17);
  }

  else
  {
    sub_1003093F0(v4, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005B14(v22, qword_1006D4630);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMUTContentViewController: cannot ignore on unknown tag", v25, 2u);
    }
  }
}

double sub_100301A38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, __n128 a6)
{
  v76 = a4;
  v77 = a5;
  v73 = a3;
  v8 = type metadata accessor for FMIPUTAlertCompletionType();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPProductType();
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin(v10);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItemActionStatus();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  (*(v13 + 16))(v15, a1, v12);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v78 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    aBlock._countAndFlagsBits = swift_slowAlloc();
    *v20 = 136315394;
    sub_10000A300(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v13 + 8))(v15, v12);
    v24 = sub_100005B4C(v21, v23, &aBlock._countAndFlagsBits);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v80 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v25 = String.init<A>(describing:)();
    v27 = sub_100005B4C(v25, v26, &aBlock._countAndFlagsBits);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "FMUTContentViewController: ignoreAction completed with status %s, and error %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v28 = objc_opt_self();
  v29.super.isa = [v28 mainBundle];
  v87._object = 0x8000000100579A00;
  v30._countAndFlagsBits = 0xD00000000000002ELL;
  v30._object = 0x80000001005902D0;
  v31.value._object = 0x80000001005799E0;
  v87._countAndFlagsBits = 0xD000000000000018;
  v31.value._countAndFlagsBits = 0xD000000000000013;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v87);
  countAndFlagsBits = v33._countAndFlagsBits;
  object = v33._object;

  v36 = v72;
  FMIPUnknownItem.productType.getter();
  LOBYTE(v29.super.isa) = FMIPProductType.isAccessory.getter();
  (*(v74 + 8))(v36, v75);
  if (v29.super.isa)
  {

    v37 = [v28 mainBundle];
    v38.value._countAndFlagsBits = 0xD000000000000010;
    v88._object = 0x8000000100582000;
    v39._countAndFlagsBits = 0xD000000000000029;
    v39._object = 0x8000000100590320;
    v38.value._object = 0x8000000100581FE0;
    v88._countAndFlagsBits = 0xD000000000000015;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v38, v37, v40, v88);
    countAndFlagsBits = v41._countAndFlagsBits;
    object = v41._object;
  }

  v42 = [v28 mainBundle];
  v89._object = 0x8000000100579A00;
  v43._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x8000000100590300;
  v44.value._object = 0x80000001005799E0;
  v89._countAndFlagsBits = 0xD000000000000018;
  v44.value._countAndFlagsBits = 0xD000000000000013;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v89);

  v46 = swift_allocObject();
  v47 = v76;
  v48 = v77;
  *(v46 + 16) = v77;
  *(v46 + 24) = v47;
  if (!v78)
  {
    v65 = v47;

    if (v48 == 2)
    {
      v66 = &enum case for FMIPUTAlertCompletionType.ignoreForever(_:);
    }

    else
    {
      if (v48 != 1)
      {
LABEL_17:
        v67 = swift_allocObject();
        *(v67 + 16) = 0;
        *(v67 + 24) = 0;
        v85 = sub_1000822F4;
        v86 = v67;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v83 = sub_100004AE4;
        v84 = &unk_100635DF0;
        v68 = _Block_copy(&aBlock);

        [v65 dismissViewControllerAnimated:1 completion:v68];
        _Block_release(v68);

        return result;
      }

      v66 = &enum case for FMIPUTAlertCompletionType.ignoreUntilEOD(_:);
    }

    (*(v69 + 104))(v71, *v66, v70);
    swift_beginAccess();
    FMIPUTAlertEvent.completionAction.setter();
    swift_endAccess();
    goto LABEL_17;
  }

  v49 = v47;
  v50 = objc_opt_self();
  swift_errorRetain();
  v77 = v49;
  v51 = [v50 sharedInstance];
  LOBYTE(v49) = [v51 isInternalBuild];

  v80 = countAndFlagsBits;
  v81 = object;
  if (v49)
  {
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    v52._countAndFlagsBits = 0x65746E492A2A200ALL;
    v52._object = 0xEF202A2A6C616E72;
    String.append(_:)(v52);
    v79 = v78;
    sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(aBlock);
  }

  v53 = String._bridgeToObjectiveC()();

  v54 = String._bridgeToObjectiveC()();

  v55 = [objc_opt_self() alertControllerWithTitle:v53 message:v54 preferredStyle:1];

  v56 = [v28 mainBundle];
  v90._object = 0x8000000100579A00;
  v57._countAndFlagsBits = 0x4B4F5F524F525245;
  v57._object = 0xEF4E4F545455425FLL;
  v58.value._object = 0x80000001005799E0;
  v90._countAndFlagsBits = 0xD000000000000018;
  v58.value._countAndFlagsBits = 0xD000000000000013;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v90);

  v60 = swift_allocObject();
  *(v60 + 16) = sub_10030925C;
  *(v60 + 24) = v46;

  v61 = String._bridgeToObjectiveC()();

  v85 = sub_1001D69A8;
  v86 = v60;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v83 = sub_100017328;
  v84 = &unk_100635E40;
  v62 = _Block_copy(&aBlock);

  v63 = [objc_opt_self() actionWithTitle:v61 style:0 handler:v62];
  _Block_release(v62);

  [v55 addAction:v63];
  [v77 presentViewController:v55 animated:1 completion:0];

  return result;
}

void sub_100302438(__n128 a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = type metadata accessor for FMIPUTAlertCompletionType();
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 2)
  {
    v11 = &enum case for FMIPUTAlertCompletionType.ignoreForever(_:);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v11 = &enum case for FMIPUTAlertCompletionType.ignoreUntilEOD(_:);
LABEL_5:
    (*(v7 + 104))(v10, *v11, v8);
    swift_beginAccess();
    FMIPUTAlertEvent.completionAction.setter();
    swift_endAccess();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  aBlock[4] = sub_100097224;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100635E90;
  v13 = _Block_copy(aBlock);

  [a4 dismissViewControllerAnimated:1 completion:v13];
  _Block_release(v13);
}

void sub_1003025F4(uint64_t a1, int a2)
{
  v86 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPProductType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPUnknownItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  __chkstk_darwin(v17);
  v87 = v2;
  if ((*(&v2->isa + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_isPlaySoundConnecting) & 1) == 0)
  {
    v78 = v4;
    v79 = v21;
    countAndFlagsBits = v7;
    v77 = v5;
    v83 = v20;
    v85 = a2;
    v26 = *(&v87->isa + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource);
    v27 = v18;
    v28 = &v74 - v19;
    v29 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
    swift_beginAccess();
    v84 = v13;
    v32 = *(v13 + 2);
    v31 = v13 + 16;
    v30 = v32;
    v33 = (v26 + v29);
    v34 = v28;
    v35 = v27;
    v32(v34, v33, v27);
    FMIPUnknownItem.productType.getter();
    v36 = FMIPProductType.isAccessory.getter();
    (*(v9 + 8))(v11, v8);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4630);
    v38 = v16;
    v30(v16, v34, v35);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v82 = v36;
    v80 = v30;
    v81 = v31;
    if (!v41)
    {

      v45 = v84;
      v46 = *(v84 + 1);
      v77 = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v78 = v46;
      v46(v38, v35);
LABEL_29:
      v57 = v87;
      v58 = (*(&v87->isa + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator))[2];
      v59 = objc_opt_self();
      v84 = v58;
      v60 = [v59 mainBundle];
      v90._object = 0x8000000100579A00;
      v61._countAndFlagsBits = 0xD000000000000023;
      v61._object = 0x80000001005902A0;
      v62.value._countAndFlagsBits = 0xD000000000000013;
      v62.value._object = 0x80000001005799E0;
      v90._countAndFlagsBits = 0xD000000000000018;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v90);
      countAndFlagsBits = v64._countAndFlagsBits;

      v65 = v83;
      v80(v83, v34, v35);
      v66 = (v45[80] + 16) & ~v45[80];
      v67 = v66 + v79;
      v81 = v34;
      v68 = (((v66 + v79) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      (*(v45 + 4))(v69 + v66, v65, v35);
      *(v69 + v67) = v85 & 1;
      *(v69 + (v67 & 0xFFFFFFFFFFFFFFF8) + 8) = v57;
      v70 = v69 + v68;
      *v70 = v86;
      *(v70 + 8) = v82 & 1;
      v71 = v57;
      v72 = v84;
      sub_1003DCB60(v73, v84, countAndFlagsBits, v64._object, v71, sub_100307F78, v69);

      v78(v81, v35);
      return;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v88 = v43;
    *v42 = 136446723;
    v75 = v40;
    v74 = v43;
    if (v86 > 2)
    {
      switch(v86)
      {
        case 3:
          v44 = 0x800000010058FF50;
          v47 = 0xD000000000000010;
          goto LABEL_28;
        case 4:
          v44 = 0xEF64656D7269666ELL;
          v47 = 0x6F4365756575712ELL;
          goto LABEL_28;
        case 5:
          v44 = 0xEE0074726F685367;
          goto LABEL_22;
      }
    }

    else
    {
      switch(v86)
      {
        case 0:
          v44 = 0xE800000000000000;
          v47 = 0x746C75616665642ELL;
          goto LABEL_28;
        case 1:
          v44 = 0xE800000000000000;
          v47 = 0x676E69676E61722ELL;
          goto LABEL_28;
        case 2:
          v44 = 0xE900000000000067;
LABEL_22:
          v47 = 0x6E696B636172742ELL;
LABEL_28:
          v48 = sub_100005B4C(v47, v44, &v88);

          *(v42 + 4) = v48;
          *(v42 + 12) = 2160;
          *(v42 + 14) = 1752392040;
          *(v42 + 22) = 2081;
          v49 = countAndFlagsBits;
          FMIPUnknownItem.identifier.getter();
          sub_10000A300(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v50 = v38;
          v51 = v78;
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          v54 = v53;
          (*(v77 + 8))(v49, v51);
          v45 = v84;
          v55 = *(v84 + 1);
          v77 = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v78 = v55;
          v55(v50, v35);
          v56 = sub_100005B4C(v52, v54, &v88);

          *(v42 + 24) = v56;
          _os_log_impl(&_mh_execute_header, v39, v75, "FMUTContentViewController: Play Sound button pressed - context: %{public}s, id: %{private,mask.hash}s.", v42, 0x20u);
          swift_arrayDestroy();

          goto LABEL_29;
      }
    }

    v44 = 0xE800000000000000;
    v47 = 0x6E776F6E6B6E752ELL;
    goto LABEL_28;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100005B14(v22, qword_1006D4630);
  v87 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v87, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v87, v23, "FMUTContentViewController: Play Sound button pressed but we are already connecting.", v24, 2u);
  }

  v25 = v87;
}

void sub_100302E7C(char a1, uint64_t a2, char a3, NSObject *a4, void *a5, int a6)
{
  v51 = a5;
  v52 = a4;
  v10 = type metadata accessor for UUID();
  v50 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for FMIPUnknownItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v48[-v18];
  if (a1)
  {
    v49 = a6;
    v20 = FMIPUnknownItem.unknownBeacon.getter();
    if (v20 && (v21 = v20, v22 = [v20 metadata], v21, v22) && (v23 = objc_msgSend(v22, "capabilities"), v22, (v23 & 0x1000) != 0) && (a3 & 1) == 0)
    {
      if (qword_1006AEB18 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100005B14(v24, qword_1006D4110);
      (*(v14 + 16))(v16, a2, v13);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v27 = 141558275;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2081;
        FMIPUnknownItem.identifier.getter();
        sub_10000A300(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v50 + 8))(v12, v10);
        (*(v14 + 8))(v16, v13);
        v31 = sub_100005B4C(v28, v30, aBlock);

        *(v27 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Safety warning mandatory for %{private,mask.hash}s.", v27, 0x16u);
        sub_100006060(v51);
      }

      else
      {

        (*(v14 + 8))(v16, v13);
      }

      sub_100306DC0();
    }

    else
    {
      (*(v14 + 16))(v19, a2, v13);
      type metadata accessor for FMIPPlayUTSoundAction();
      swift_allocObject();
      v36 = FMIPPlayUTSoundAction.init(unknownItem:context:)();
      v37 = v52;
      sub_1002F6648(1);
      if (((*(&v37->isa + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention))[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed] & 1) == 0)
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100005B14(v38, qword_1006D4630);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 67109120;
          _os_log_impl(&_mh_execute_header, v39, v40, "FMUTContentViewController: Sound Attention Visible: %{BOOL}d", v41, 8u);
        }

        v42 = objc_opt_self();
        v43 = swift_allocObject();
        *(v43 + 16) = v37;
        *(v43 + 24) = 0;
        aBlock[4] = sub_100309580;
        aBlock[5] = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_100635C88;
        v44 = _Block_copy(aBlock);
        v45 = v37;

        [v42 animateWithDuration:4 delay:v44 options:0 animations:0.3 completion:0.0];
        _Block_release(v44);
      }

      v46 = swift_allocObject();
      *(v46 + 16) = v37;
      *(v46 + 24) = v49 & 1;

      v47 = v37;
      sub_1000D631C(v36, sub_10030802C, v46);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100005B14(v32, qword_1006D4630);
    v52 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v52, v33, "FMUTContentViewController: <snd> Couldn't play sound, BT is off", v34, 2u);
    }

    v35 = v52;
  }
}

uint64_t sub_1003035A4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v23 = a4;
  v22 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItemActionStatus();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  (*(v13 + 16))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  (*(v13 + 32))(v16 + v15, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v17 = v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v22;
  *(v17 + 8) = v23;
  aBlock[4] = sub_100308038;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100635D00;
  v18 = _Block_copy(aBlock);
  v19 = a3;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A300(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v8, v6);
  return (*(v25 + 8))(v11, v26);
}

void sub_10030398C(char *a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a4;
  v7 = type metadata accessor for FMIPItemActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F6648(0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100005B14(v11, qword_1006D4630);
  (*(v8 + 16))(v10, a2, v7);
  swift_errorRetain();
  v39[1] = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39[0] = a1;
    v16 = v15;
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315394;
    sub_10000A300(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = sub_100005B4C(v17, v19, aBlock);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v45 = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v21 = String.init<A>(describing:)();
    v23 = sub_100005B4C(v21, v22, aBlock);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMUTContentViewController: Play sound command completed status: %s, error: %s", v16, 0x16u);
    swift_arrayDestroy();

    a1 = v39[0];
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  [*&a1[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton] setUserInteractionEnabled:1];
  if (a3)
  {
    aBlock[0] = a3;
    swift_errorRetain();
    swift_errorRetain();
    sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
    type metadata accessor for CommandError(0);
    if (swift_dynamicCast())
    {
      v24 = v45;
      aBlock[0] = v45;
      v41 = 10;
      sub_1000070D4(_swiftEmptyArrayStorage);
      sub_10000A300(&qword_1006AF310, type metadata accessor for CommandError, &unk_100551D88);
      _BridgedStoredNSError.init(_:userInfo:)();
      v25 = v45;
      v41 = v45;
      v26 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v26)
      {
        sub_1003067CC();

        return;
      }
    }

    if (v40)
    {
      v27 = *&a1[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_accessorySoundPendingAttention];
      v28 = &v42;
    }

    else
    {
      v27 = *&a1[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention];
      v28 = &v44;
    }

    swift_getErrorValue();
    v29 = sub_100271D20(*(v28 + 1), *(v28 + 2));
    v30 = sub_1003F19BC(v29);
    if (v30 == 4)
    {
      v31 = 3;
    }

    else
    {
      v31 = v30;
    }

    *(v27 + OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode) = v31;
    sub_1003F0AB4();
    if (*(*&a1[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention] + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) == 1)
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 67109120;
        *(v34 + 4) = 1;
        _os_log_impl(&_mh_execute_header, v32, v33, "FMUTContentViewController: Sound Attention Visible: %{BOOL}d", v34, 8u);
      }

      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      *(v36 + 24) = 1;
      aBlock[4] = sub_100309580;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100635D50;
      v37 = _Block_copy(aBlock);
      v38 = a1;

      [v35 animateWithDuration:4 delay:v37 options:0 animations:0.3 completion:0.0];
      _Block_release(v37);
    }
  }
}

void sub_100303FB0(uint64_t a1, void (*a2)(uint64_t *, char *, void *))
{
  v217 = a2;
  v222 = a1;
  v3 = type metadata accessor for FMIPAnalyticsProductType();
  __chkstk_darwin(v3 - 8);
  v197 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v196 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for FMIPActionEvent();
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for FMIPAnalyticsActionType();
  v201 = *(v211 - 8);
  __chkstk_darwin(v211);
  v195 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v210 = &v181 - v9;
  v221 = type metadata accessor for FMFindingTechnology();
  v220 = *(v221 - 1);
  __chkstk_darwin(v221);
  v189 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v190 = &v181 - v12;
  __chkstk_darwin(v13);
  v187 = &v181 - v14;
  __chkstk_darwin(v15);
  v188 = &v181 - v16;
  v17 = sub_10007EBC0(&qword_1006B32A8, &unk_100558B00);
  __chkstk_darwin(v17 - 8);
  v206 = &v181 - v18;
  v19 = type metadata accessor for FMFindingProductType();
  __chkstk_darwin(v19 - 8);
  v205 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for FMFindableObject();
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v207 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for UUID();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v215 = (&v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10007EBC0(&qword_1006B98B8, qword_10055B800);
  __chkstk_darwin(v23 - 8);
  v25 = &v181 - v24;
  v26 = type metadata accessor for FindingExperienceType();
  v27 = *(v26 - 8);
  v224 = v26;
  v225 = v27;
  __chkstk_darwin(v26);
  v204 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v203 = &v181 - v30;
  __chkstk_darwin(v31);
  v33 = &v181 - v32;
  __chkstk_darwin(v34);
  v223 = &v181 - v35;
  __chkstk_darwin(v36);
  v226 = &v181 - v37;
  v202 = type metadata accessor for FindingMode(0);
  __chkstk_darwin(v202);
  v216 = (&v181 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v39);
  v41 = &v181 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FMIPUnknownItem();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v192 = &v181 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v181 - v46;
  v191 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v48 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v49 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100307F10(v48 + v49, v41, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v212 = v43;
    v50 = *(v43 + 32);
    v219 = v42;
    v50(v47, v41, v42);
    v184 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource;
    v51 = *&v2[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource];
    v52 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_itemViewModel;
    swift_beginAccess();
    sub_100007204(v51 + v52, v25, &qword_1006B98B8, qword_10055B800);
    v53 = type metadata accessor for FMUTDetailViewModel(0);
    if ((*(*(v53 - 8) + 48))(v25, 1, v53) == 1)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v54 = v47;
    v55 = v2;
    v56 = *(v51 + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_isRangingServiceAvailable);
    v57 = v226;
    sub_1004F5FF0(v56, v226);
    sub_1003093F0(v25, type metadata accessor for FMUTDetailViewModel);
    v59 = v224;
    v58 = v225;
    v60 = v223;
    v222 = *(v225 + 16);
    v217 = (v225 + 16);
    (v222)(v223, v57, v224);
    v61 = *(v58 + 88);
    v62 = v61(v60, v59);
    v186 = enum case for FindingExperienceType.precision(_:);
    v185 = v55;
    v218 = v54;
    if (v62 != enum case for FindingExperienceType.precision(_:) && v62 != enum case for FindingExperienceType.proximity(_:))
    {
      v63 = v220;
      if (v62 != enum case for FindingExperienceType.legacy(_:))
      {
LABEL_47:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_48;
      }

      (*(v58 + 96))(v60, v59);
      v64 = v221;
      v65 = (*(v63 + 88))(v60, v221);
      v66 = v65;
      if (v65 != enum case for FMFindingTechnology.proximity(_:))
      {
        v109 = v219;
        if (v65 != enum case for FMFindingTechnology.precision(_:))
        {
LABEL_48:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

        (*(v63 + 96))(v60, v64);
        v110 = sub_10007EBC0(&qword_1006C0020, &qword_100555030);
        v222 = *(v110 + 48);
        v111 = [objc_allocWithZone(ARSession) init];
        v217 = type metadata accessor for FMFindingSession();
        v228 = v109;
        v229 = sub_10000A300(&qword_1006B8588, &type metadata accessor for FMIPUnknownItem, &protocol conformance descriptor for FMIPUnknownItem);
        v112 = sub_100008FC0(&v227);
        v113 = v212 + 16;
        v215 = *(v212 + 16);
        v215(v112, v218, v109);
        v114 = v64;
        v115 = *(v110 + 48);
        v116 = v190;
        *v190 = 1;
        v117 = enum case for FMFindingType.ut(_:);
        v118 = type metadata accessor for FMFindingType();
        v119 = *(v118 - 8);
        v120 = &v116[v115];
        v121 = v118;
        (v119[13])(v120, v117, v118);
        (*(v63 + 104))(v116, v66, v114);
        v122 = v111;
        v123 = FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)();
        v145 = v215;
        v220 = v113;
        v221 = v119;
        v146 = v222;
        v147 = *(*&v185[v184] + 80);
        if (!v147)
        {

          (*(v225 + 8))(v226, v224);
          (*(v212 + 8))(v218, v219);
          (v221[1])(&v223[v146], v121);
          return;
        }

        v214 = v121;
        v148 = v216;
        *v216 = v123;
        v148[1] = v147;
        v149 = v123;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v213 = v147;
        v217 = v149;

        v150 = FMIPUTAlertEvent.precisionFindingSessionCount.modify();
        if (!__OFADD__(*v151, 1))
        {
          ++*v151;
          v150(&v227, 0);
          swift_endAccess();
          v152 = v201;
          v153 = v210;
          v154 = v211;
          (*(v201 + 104))(v210, enum case for FMIPAnalyticsActionType.precisionFind(_:), v211);
          (*(v152 + 16))(v195, v153, v154);
          (*(v193 + 104))(v196, enum case for FMIPAnalyticsOwnerContext.ut(_:), v194);
          v155 = v218;
          v145(v192, v218, v219);

          FMIPAnalyticsProductType.init(unknownItem:)();
          v156 = v198;
          FMIPActionEvent.init(type:ownerContext:productType:)();
          FMIPManager.enqueue(actionEvent:)();

          (*(v199 + 8))(v156, v200);
          (*(v152 + 8))(v210, v154);

          (v221[1])(&v223[v222], v214);
          v136 = v155;
          v129 = v212;
          v138 = v185;
          goto LABEL_38;
        }

        goto LABEL_45;
      }

      (*(v63 + 96))(v60, v64);
      v222 = type metadata accessor for FMFindingSession();
      v67 = v219;
      v228 = v219;
      v229 = sub_10000A300(&qword_1006B8588, &type metadata accessor for FMIPUnknownItem, &protocol conformance descriptor for FMIPUnknownItem);
      v68 = sub_100008FC0(&v227);
      v69 = v212 + 16;
      v217 = *(v212 + 16);
      v217(v68, v54, v67);
      v70 = *(sub_10007EBC0(&qword_1006B68B0, &unk_100565040) + 48);
      v71 = enum case for FMFindingType.ut(_:);
      v72 = type metadata accessor for FMFindingType();
      v73 = *(v72 - 8);
      v74 = v189;
      v75 = v71;
      v76 = v72;
      (v73[13])(v189, v75, v72);
      v74[v70] = 0;
      (*(v63 + 104))(v74, v66, v64);
      v77 = FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)();
      v220 = v69;
      v221 = v73;
      v222 = v76;
      v136 = v218;
      v137 = v77;
      *v216 = v77;
      swift_storeEnumTagMultiPayload();
      v138 = v185;
      swift_beginAccess();
      v215 = v137;

      v139 = FMIPUTAlertEvent.proximityFindingSessionCount.modify();
      if (!__OFADD__(*v140, 1))
      {
        ++*v140;
        v139(&v227, 0);
        swift_endAccess();
        v141 = v201;
        v142 = v210;
        v143 = v211;
        (*(v201 + 104))(v210, enum case for FMIPAnalyticsActionType.proximityFind(_:), v211);
        (*(v141 + 16))(v195, v142, v143);
        (*(v193 + 104))(v196, enum case for FMIPAnalyticsOwnerContext.ut(_:), v194);
        v217(v192, v136, v219);

        FMIPAnalyticsProductType.init(unknownItem:)();
        v144 = v198;
        FMIPActionEvent.init(type:ownerContext:productType:)();
        FMIPManager.enqueue(actionEvent:)();

        (*(v199 + 8))(v144, v200);
        (*(v141 + 8))(v142, v143);

        (v221[1])(v223, v222);
        v129 = v212;
LABEL_38:
        v179 = v226;
        v180 = v216;
        sub_100161B04(v216, v138);
        (*(v225 + 8))(v179, v224);
        sub_1003093F0(v180, type metadata accessor for FindingMode);
        (*(v129 + 8))(v136, v219);
        return;
      }

      goto LABEL_43;
    }

    v190 = *(v58 + 96);
    (v190)(v60, v59);
    v82 = *(sub_10007EBC0(&unk_1006B4210, &unk_10055EBC0) + 48);
    v83 = type metadata accessor for FMFindingType();
    v182 = *(v83 - 8);
    v189 = *(v182 + 8);
    (v189)(&v60[v82], v83);
    v84 = type metadata accessor for FindingModel();
    v85 = v60;
    v86 = *(*(v84 - 8) + 8);
    v86(v85, v84);
    (v222)(v33, v226, v59);
    LODWORD(v223) = v61(v33, v59);
    v183 = v83;
    if (v223 == v186)
    {
      (v190)(v33, v59);
      v87 = sub_10007EBC0(&unk_1006B4210, &unk_10055EBC0);
      (v189)(&v33[*(v87 + 48)], v83);
      v86(v33, v84);
    }

    else
    {
      (*(v225 + 8))(v33, v59);
    }

    v88 = v59;
    v89 = v212;
    v90 = v214;
    v91 = v213;
    v92 = [objc_allocWithZone(ARSession) init];
    v93 = objc_opt_self();
    v94 = v215;
    v95 = v218;
    FMIPUnknownItem.identifier.getter();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v91)[1](v94, v90);
    v97 = [v93 generateDiscoveryTokenFromBeaconIdentifier:isa];

    v98 = v221;
    v99 = v220;
    if (v97)
    {
      v221 = FMIPUnknownItem.name.getter();
      FMIPUnknownItem.identifier.getter();
      v100 = v226;
      (v222)(v203, v226, v88);
      FMIPUnknownItem.findingProductType.getter(v205);
      v101 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
      (*(*(v101 - 8) + 56))(v206, 1, 1, v101);
      v102 = v97;
      v103 = v207;
      v104 = v100;
      FMFindableObject.init(name:findingIdentifier:findingType:findingProductType:videoInfo:discoveryToken:)();
      type metadata accessor for FMFindingSession();
      v105 = v209;
      v228 = v209;
      v229 = &protocol witness table for FMFindableObject;
      v106 = sub_100008FC0(&v227);
      v107 = v208;
      (*(v208 + 16))(v106, v103, v105);
      (v222)(v204, v104, v224);
      v108 = v92;
      v127 = FMFindingSession.__allocating_init(findable:findingType:arSession:)();
      v222 = v92;
      (*(v107 + 8))(v103, v105);

      v128 = v225;
      v129 = v212;
      v130 = v127;
    }

    else
    {
      if (v223 == v186)
      {
        v124 = *(sub_10007EBC0(&qword_1006C0020, &qword_100555030) + 48);
        v125 = v188;
        *v188 = 1;
        (*(v182 + 104))(&v125[v124], enum case for FMFindingType.ut(_:), v183);
        v126 = &enum case for FMFindingTechnology.precision(_:);
      }

      else
      {
        v131 = *(sub_10007EBC0(&qword_1006B68B0, &unk_100565040) + 48);
        v125 = v188;
        (*(v182 + 104))(v188, enum case for FMFindingType.ut(_:), v183);
        v125[v131] = 0;
        v126 = &enum case for FMFindingTechnology.proximity(_:);
      }

      v132 = v187;
      v129 = v89;
      (*(v99 + 104))(v125, *v126, v98);
      type metadata accessor for FMFindingSession();
      v133 = v219;
      v228 = v219;
      v229 = sub_10000A300(&qword_1006B8588, &type metadata accessor for FMIPUnknownItem, &protocol conformance descriptor for FMIPUnknownItem);
      v134 = sub_100008FC0(&v227);
      (*(v89 + 16))(v134, v95, v133);
      (*(v99 + 16))(v132, v125, v98);
      v135 = v92;
      v130 = FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)();
      (*(v99 + 8))(v125, v98);
      v128 = v225;
      v222 = v92;
    }

    v157 = v226;
    v158 = v218;
    if (v223 == v186)
    {
      v159 = *(*&v185[v184] + 80);
      if (!v159)
      {

        (*(v128 + 8))(v157, v224);
        (*(v129 + 8))(v158, v219);
        return;
      }

      v160 = v219;
      v161 = v216;
      *v216 = v130;
      v161[1] = v159;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      swift_retain_n();
      v221 = v159;
      v162 = FMIPUTAlertEvent.precisionFindingSessionCount.modify();
      v164 = __OFADD__(*v163, 1);
      v165 = *v163 + 1;
      v223 = v130;
      if (v164)
      {
        goto LABEL_44;
      }

      *v163 = v165;
      v162(&v227, 0);
      swift_endAccess();
      v166 = v201;
      v167 = v210;
      v168 = v211;
      (*(v201 + 104))(v210, enum case for FMIPAnalyticsActionType.precisionFind(_:), v211);
      (*(v166 + 16))(v195, v167, v168);
      (*(v193 + 104))(v196, enum case for FMIPAnalyticsOwnerContext.ut(_:), v194);
      (*(v129 + 16))(v192, v158, v160);

      v138 = v185;
      FMIPAnalyticsProductType.init(unknownItem:)();
      v169 = v158;
      v170 = v198;
      FMIPActionEvent.init(type:ownerContext:productType:)();
      FMIPManager.enqueue(actionEvent:)();

      (*(v199 + 8))(v170, v200);
      v171 = v167;
      v136 = v169;
      (*(v166 + 8))(v171, v211);
    }

    else
    {
      *v216 = v130;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      swift_retain_n();
      v172 = FMIPUTAlertEvent.proximityFindingSessionCount.modify();
      v164 = __OFADD__(*v173, 1);
      v174 = *v173 + 1;
      v223 = v130;
      if (v164)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      *v173 = v174;
      v172(&v227, 0);
      swift_endAccess();
      v175 = v201;
      v176 = v210;
      v177 = v211;
      (*(v201 + 104))(v210, enum case for FMIPAnalyticsActionType.proximityFind(_:), v211);
      (*(v175 + 16))(v195, v176, v177);
      (*(v193 + 104))(v196, enum case for FMIPAnalyticsOwnerContext.ut(_:), v194);
      v136 = v218;
      (*(v129 + 16))(v192, v218, v219);

      FMIPAnalyticsProductType.init(unknownItem:)();
      v178 = v198;
      v138 = v185;
      FMIPActionEvent.init(type:ownerContext:productType:)();
      FMIPManager.enqueue(actionEvent:)();

      (*(v199 + 8))(v178, v200);
      (*(v175 + 8))(v176, v177);
    }

    goto LABEL_38;
  }

  sub_1003093F0(v41, type metadata accessor for FMSelectedSection);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  sub_100005B14(v78, qword_1006D4630);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&_mh_execute_header, v79, v80, "FMUTContentViewController: cannot play sound on unknown item", v81, 2u);
  }

  if (v222)
  {
    (v222)(0);
  }
}

void sub_100305FE0()
{
  v1 = type metadata accessor for FMIPAnalyticsProductType();
  __chkstk_darwin(v1 - 8);
  v48 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPActionEvent();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPAnalyticsActionType();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v51 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v39 - v9;
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for FMIPItemState();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  v49 = v0;
  v39 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource;
  v23 = *&v0[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource];
  v24 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v50 = *(v11 + 16);
  v50(v15, v23 + v24, v10);
  FMIPUnknownItem.state.getter();
  v26 = *(v11 + 8);
  v25 = v11 + 8;
  v55 = v10;
  v40 = v26;
  v26(v15, v10);
  static FMIPItemState.soundPlaying.getter();
  sub_10000A300(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  LOBYTE(v23) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v27 = *(v17 + 8);
  v27(v19, v16);
  if (v23 & 1) != 0 || (static FMIPItemState.soundQueued.getter(), v28 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v27(v19, v16), (v28))
  {
    v27(v22, v16);
  }

  else
  {
    v29 = v49;
    sub_1003025F4(2, 0);
    swift_beginAccess();
    v30 = FMIPUTAlertEvent.playSoundCount.modify();
    if (__OFADD__(*v31, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v31;
      v30(v56, 0);
      swift_endAccess();
      v32 = *&v29[v39];
      v33 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
      swift_beginAccess();
      v50(v15, v32 + v33, v55);
      v34 = v52;
      v35 = v53;
      v36 = *(v53 + 104);
      v39 = v25;
      v37 = v54;
      v36(v52, enum case for FMIPAnalyticsActionType.playSound(_:));
      (*(v35 + 16))(v51, v34, v37);
      (*(v43 + 104))(v45, enum case for FMIPAnalyticsOwnerContext.ut(_:), v44);
      v49 = v27;
      v50(v41, v15, v55);

      FMIPAnalyticsProductType.init(unknownItem:)();
      v38 = v42;
      FMIPActionEvent.init(type:ownerContext:productType:)();
      FMIPManager.enqueue(actionEvent:)();
      (*(v46 + 8))(v38, v47);
      (*(v53 + 8))(v52, v54);
      v40(v15, v55);
      (v49)(v22, v16);
    }
  }
}

void sub_100306764(uint64_t a1, char a2)
{
  v3 = (a2 & 1) == 0;
  *(*(a1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention) + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = v3;
  sub_1002B20D8();
  *(*(a1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_accessorySoundPendingAttention) + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = v3;
  sub_1002B20D8();
}

void sub_1003067CC()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMUTContentViewController: Showing Queued Alert", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v36._object = 0x8000000100590180;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  v6._object = 0x8000000100590160;
  v36._countAndFlagsBits = 0xD00000000000002DLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v36);

  v8 = [v4 mainBundle];
  v37._object = 0x80000001005901D0;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v9._object = 0x80000001005901B0;
  v37._countAndFlagsBits = 0xD00000000000002FLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v37);

  v11 = [v4 mainBundle];
  v38._object = 0x8000000100590220;
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  v12._object = 0x8000000100590200;
  v38._countAndFlagsBits = 0xD00000000000002ELL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v38);

  v14 = [v4 mainBundle];
  v39._object = 0x8000000100590270;
  v15._object = 0x8000000100590250;
  v39._countAndFlagsBits = 0xD00000000000002ALL;
  v15._countAndFlagsBits = 0xD000000000000018;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v39);

  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();

  v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  v20 = String._bridgeToObjectiveC()();

  v34 = sub_100306CD8;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100017328;
  v33 = &unk_100635BC0;
  v21 = _Block_copy(&aBlock);

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v20 style:1 handler:v21];
  _Block_release(v21);

  [v19 addAction:v23];
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v25 = v29;
  v26 = String._bridgeToObjectiveC()();

  v34 = sub_100307EE8;
  v35 = v24;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100017328;
  v33 = &unk_100635C10;
  v27 = _Block_copy(&aBlock);

  v28 = [v22 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  [v19 addAction:v28];
  [v25 presentViewController:v19 animated:1 completion:0];
}

void sub_100306CD8()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMUTContentViewController: User canceled queuing sound", v2, 2u);
  }
}

void sub_100306DC0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B77D0, &unk_100559AB0);
  __chkstk_darwin(v2 - 8);
  v4 = v42 - v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMUTContentViewController: showSafetyWarning.", v8, 2u);
  }

  v9 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource;
  v10 = *&v1[OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource];
  v11 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v12 = type metadata accessor for FMIPUnknownItem();
  v13 = *(v12 - 8);
  v43 = v1;
  v14 = *(v13 + 16);
  v14(v4, v10 + v11, v12);
  v15 = *(v13 + 56);
  v15(v4, 0, 1, v12);
  v16 = sub_10022E3F4(0xD000000000000026, 0x80000001005822D0, v4);
  v42[1] = v17;
  v42[2] = v16;
  sub_100012DF0(v4, &unk_1006B77D0, &unk_100559AB0);
  v18 = *&v1[v9];
  v19 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v14(v4, v18 + v19, v12);
  v15(v4, 0, 1, v12);
  sub_10022E3F4(0xD000000000000028, 0x8000000100582300, v4);
  sub_100012DF0(v4, &unk_1006B77D0, &unk_100559AB0);
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v50._object = 0x8000000100582220;
  v22._object = 0x8000000100582200;
  v50._countAndFlagsBits = 0xD000000000000031;
  v22._countAndFlagsBits = 0xD00000000000001FLL;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v50);

  v24 = [v20 mainBundle];
  v51._object = 0x8000000100582290;
  v25._countAndFlagsBits = 0xD000000000000021;
  v25._object = 0x8000000100582260;
  v51._countAndFlagsBits = 0xD000000000000033;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v51);

  v27 = String._bridgeToObjectiveC()();

  v28 = String._bridgeToObjectiveC()();

  v29 = [objc_opt_self() alertControllerWithTitle:v27 message:v28 preferredStyle:1];

  v30 = swift_allocObject();
  v31 = v43;
  *(v30 + 16) = v43;
  v32 = v31;
  v33 = String._bridgeToObjectiveC()();

  v48 = sub_100307EB8;
  v49 = v30;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100017328;
  v47 = &unk_100635B48;
  v34 = _Block_copy(&aBlock);

  v35 = objc_opt_self();
  v36 = [v35 actionWithTitle:v33 style:0 handler:v34];
  _Block_release(v34);

  [v29 addAction:v36];
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  v38 = v32;
  v39 = String._bridgeToObjectiveC()();

  v48 = sub_100307EC0;
  v49 = v37;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100017328;
  v47 = &unk_100635B98;
  v40 = _Block_copy(&aBlock);

  v41 = [v35 actionWithTitle:v39 style:0 handler:v40];
  _Block_release(v40);

  [v29 addAction:v41];
  [v38 presentViewController:v29 animated:1 completion:0];
}

id sub_1003073F0(uint64_t a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMUTContentViewController: User canceled safety warning.", v6, 2u);
  }

  v7 = *(a2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton);

  return [v7 setUserInteractionEnabled:1];
}

void sub_1003074F4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 2u);
  }

  sub_1003025F4(a4, 1);
}

void sub_1003075EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_welcomeController);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    v5[4] = sub_100097224;
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100004AE4;
    v5[3] = &unk_100635AF8;
    v3 = _Block_copy(v5);
    v4 = v1;

    [v4 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

void sub_100307724()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_informationalController;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_informationalController);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    v7[4] = sub_1000822F4;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100004AE4;
    v7[3] = &unk_100635AA8;
    v4 = _Block_copy(v7);
    v5 = v2;

    [v5 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);

    v6 = *(v0 + v1);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + v1) = 0;
}

double sub_1003078A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(*(v6 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_updatesEnabled) = a6;

  sub_10028B38C(v7, v8, v9);

  return result;
}

void sub_1003078FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if ((a3 & 1) == 0)
  {
    sub_1003025F4(5, 1);
    if (a6)
    {
      a6(1);
    }
  }
}

uint64_t SPPlaySoundContext.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000010;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6E696B636172742ELL;
      }

      return 0x6E776F6E6B6E752ELL;
    }

    return 0x6F4365756575712ELL;
  }

  else
  {
    if (!a1)
    {
      return 0x746C75616665642ELL;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x6E696B636172742ELL;
      }

      return 0x6E776F6E6B6E752ELL;
    }

    return 0x676E69676E61722ELL;
  }
}

uint64_t type metadata accessor for FMUTContentViewController(uint64_t a1)
{
  result = qword_1006BB408;
  if (!qword_1006BB408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100307A94(uint64_t a1)
{
  result = type metadata accessor for FMIPUTAlertEvent();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100307BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A300(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

uint64_t sub_100307F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100307F78(char a1)
{
  v3 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_100302E7C(a1, v1 + v4, v6, v7, v9, v10);
}

void sub_100308038()
{
  v1 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  sub_10030398C(v3, v0 + v2, v5, v6);
}

void sub_1003080D0(__n128 a1)
{
  v2 = v1;
  v91 = type metadata accessor for FMIPUTAlertObservationType();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for FMIPUTAlertProductType();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for FMIPUTAlertCompletionType();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for FMIPUTAlertSheetType();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for FMPlatterIcon(0);
  __chkstk_darwin(v93);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_welcomeController) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_informationalController) = 0;
  v9 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_soundPendingAttention;
  v10 = type metadata accessor for FMFailablePlatterInfoView(0);
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v11[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v11[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v11[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 0;
  v11[v12] = 0;
  v13 = sub_1002AEC90(0);
  sub_1003F0AB4();

  *(v2 + v9) = v13;
  v14 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_accessorySoundPendingAttention;
  v15 = objc_allocWithZone(v10);
  v16 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v15[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v15[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v15[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v15[v16] = 0;
  v17 = sub_1002AEC90(0);
  sub_1003F0AB4();

  *(v2 + v14) = v17;
  v79 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_playSoundButton;
  v97 = objc_opt_self();
  v18 = [v97 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for FMIconPlatterButton(0);
  v20 = objc_allocWithZone(v19);
  v21 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v20[v21] = [objc_allocWithZone(UIImageView) init];
  v22 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v20[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v20[v23] = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v20[v24] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v25 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v26 = type metadata accessor for FMPlatterBackgroundView();
  v27 = objc_allocWithZone(v26);
  v27[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v109.receiver = v27;
  v109.super_class = v26;
  v28 = objc_msgSendSuper2(&v109, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v20[v25] = v28;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v29 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v18;
  v92 = type metadata accessor for FMPlatterIcon;
  sub_100307F10(v8, &v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v30 = &v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v30 = 0xD00000000000001DLL;
  *(v30 + 1) = 0x80000001005900D0;
  *(v30 + 3) = 0;
  *(v30 + 4) = 0;
  *(v30 + 2) = 0;
  v30[40] = 2;
  v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v20[v29] = 0;
  v108.receiver = v20;
  v108.super_class = v19;
  v31 = v19;
  v32 = v18;
  v33 = objc_msgSendSuper2(&v108, "init");
  sub_1000D3C9C();
  v34 = objc_opt_self();
  v95 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = 0;
  v106 = sub_100141408;
  v107 = v35;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v96 = &v104;
  v104 = sub_100004AE4;
  v105 = &unk_100636570;
  v36 = _Block_copy(&aBlock);
  v37 = v33;

  [v34 animateWithDuration:v36 animations:0.35];
  _Block_release(v36);

  v94 = type metadata accessor for FMPlatterIcon;
  sub_1003093F0(v8, type metadata accessor for FMPlatterIcon);
  *(v2 + v79) = v37;
  v79 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_ignoreButton;
  v38 = [v97 systemPinkColor];
  swift_storeEnumTagMultiPayload();
  v39 = objc_allocWithZone(v19);
  v40 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v39[v40] = [objc_allocWithZone(UIImageView) init];
  v41 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v39[v41] = [objc_allocWithZone(UILabel) init];
  v42 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v39[v42] = [objc_allocWithZone(UILabel) init];
  v43 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v39[v43] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v44 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v45 = objc_allocWithZone(v26);
  v45[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v101.receiver = v45;
  v101.super_class = v26;
  v46 = objc_msgSendSuper2(&v101, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v39[v44] = v46;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v47 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v38;
  sub_100307F10(v8, &v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v92);
  v48 = &v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v48 = 0xD00000000000001ALL;
  *(v48 + 1) = 0x80000001005900F0;
  *(v48 + 3) = 0;
  *(v48 + 4) = 0;
  *(v48 + 2) = 0;
  v48[40] = 2;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v39[v47] = 0;
  v100.receiver = v39;
  v100.super_class = v19;
  v49 = v38;
  v50 = objc_msgSendSuper2(&v100, "init");
  sub_1000D3C9C();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = 0;
  v106 = sub_100141408;
  v107 = v51;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100004AE4;
  v105 = &unk_1006365C0;
  v52 = _Block_copy(&aBlock);
  v53 = v50;

  [v95 animateWithDuration:v52 animations:0.35];
  _Block_release(v52);

  sub_1003093F0(v8, v94);
  *(v2 + v79) = v53;
  v79 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_findButton;
  v54 = [v97 systemBlueColor];
  v55 = *(sub_10007EBC0(&qword_1006B68B0, &unk_100565040) + 48);
  v56 = enum case for FMFindingType.ut(_:);
  v57 = type metadata accessor for FMFindingType();
  (*(*(v57 - 8) + 104))(v8, v56, v57);
  v8[v55] = 0;
  v58 = enum case for FMFindingTechnology.proximity(_:);
  v59 = type metadata accessor for FMFindingTechnology();
  (*(*(v59 - 8) + 104))(v8, v58, v59);
  swift_storeEnumTagMultiPayload();
  v60 = objc_allocWithZone(v31);
  v61 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v60[v61] = [objc_allocWithZone(UIImageView) init];
  v62 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v60[v62] = [objc_allocWithZone(UILabel) init];
  v63 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v60[v63] = [objc_allocWithZone(UILabel) init];
  v64 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v60[v64] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v65 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v66 = objc_allocWithZone(v26);
  v66[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v99.receiver = v66;
  v99.super_class = v26;
  v67 = objc_msgSendSuper2(&v99, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v60[v65] = v67;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v68 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v54;
  sub_100307F10(v8, &v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v92);
  v69 = &v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v69 = 0xD000000000000019;
  *(v69 + 1) = 0x8000000100586460;
  v69[40] = 0;
  *(v69 + 3) = 0;
  *(v69 + 4) = 0;
  *(v69 + 2) = 0;
  v60[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v60[v68] = 0;
  v98.receiver = v60;
  v98.super_class = v31;
  v70 = v54;
  v71 = objc_msgSendSuper2(&v98, "init");
  sub_1000D3C9C();
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = 0;
  v106 = sub_100141408;
  v107 = v72;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100004AE4;
  v105 = &unk_100636610;
  v73 = _Block_copy(&aBlock);
  v74 = v71;

  [v95 animateWithDuration:v73 animations:0.35];
  _Block_release(v73);

  sub_1003093F0(v8, v94);
  *(v2 + v79) = v74;
  v75 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_firstRowStackView;
  *(v2 + v75) = [objc_allocWithZone(UIStackView) init];
  v76 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_actionButtonsStackView;
  *(v2 + v76) = [objc_allocWithZone(UIStackView) init];
  v77 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_verticalStackView;
  *(v2 + v77) = [objc_allocWithZone(UIStackView) init];
  v78 = OBJC_IVAR____TtC6FindMy25FMUTContentViewController_footerLabel;
  *(v2 + v78) = [objc_allocWithZone(UILabel) init];
  *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_imageFetchCancellable) = 0;
  (*(v81 + 104))(v80, enum case for FMIPUTAlertSheetType.user(_:), v82);
  (*(v84 + 104))(v83, enum case for FMIPUTAlertCompletionType.closedSheet(_:), v85);
  (*(v87 + 104))(v86, enum case for FMIPUTAlertProductType.airTag(_:), v88);
  (*(v90 + 104))(v89, enum case for FMIPUTAlertObservationType.standard(_:), v91);
  FMIPUTAlertEvent.init(sheetType:completionAction:disableItemTapped:didCloseSheet:playSoundCount:tracksCount:tracksElapsedTime:precisionFindingSessionCount:proximityFindingSessionCount:productType:observationType:isPosh:)();
  *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_isPlaySoundConnecting) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1003091A4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100301A38(a1, a2, v2 + v7, v9, v10, v6);
}

void sub_1003092BC(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utImage);
  *(v2 + OBJC_IVAR____TtC6FindMy25FMUTContentViewController_utImage) = *a1;
  v4 = v3;
}

uint64_t sub_1003093F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100309450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10030962C(char a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FMDevicePhoneNumberViewController(0);
  v26.receiver = v2;
  v26.super_class = v7;
  objc_msgSendSuper2(&v26, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
  swift_beginAccess();
  sub_100007204(&v2[v8], v6, &unk_1006BBCE0, &unk_1005534C0);
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    __break(1u);
    return;
  }

  v11 = FMIPDevice.isConsideredAccessory.getter();
  (*(v10 + 8))(v6, v9);
  if (v11)
  {
    v12 = [v2 parentViewController];
    if (v12)
    {
      v13 = v12;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_100142550();
      }
    }

    v14 = sub_100417D54();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 text];

      if (v16)
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (sub_100122BFC(v17, v19) || (v21._countAndFlagsBits = 12331, v21._object = 0xE200000000000000, String.hasPrefix(_:)(v21)) && String.count.getter() >= 4)
        {
          swift_bridgeObjectRelease_n();
          v20 = 1;
LABEL_17:
          v24 = *&v2[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton];
          if (v24)
          {
            [v24 setEnabled:v20];
          }

          v2[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_shouldShowSecondaryLabel] = 1;
          sub_10041842C();
          return;
        }

        v22._countAndFlagsBits = 48;
        v22._object = 0xE100000000000000;
        if (String.hasPrefix(_:)(v22))
        {
          v23 = String.count.getter();
          swift_bridgeObjectRelease_n();
          v20 = v23 > 2;
          goto LABEL_17;
        }

        swift_bridgeObjectRelease_n();
      }
    }

    v20 = 0;
    goto LABEL_17;
  }
}

void sub_100309954()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v57 - v6;
  sub_100417188();
  v8 = &v0[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
  if ((v0[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode + 4] & 1) == 0)
  {
    if (*v8 == 4)
    {
      v9 = [v0 headerView];
      v21 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
      swift_beginAccess();
      sub_100007204(&v1[v21], v7, &unk_1006BBCE0, &unk_1005534C0);
      v11 = sub_10022F104(0xD000000000000025, 0x80000001005907A0, v7);
      v13 = v22;
      v14 = v7;
      v16 = v23;
      v18 = v24;
      v19 = "g DEVICE_ENTER_MESSAGE_TITLE";
      v20 = 0xD000000000000012;
    }

    else
    {
      if (*v8 != 2)
      {
        goto LABEL_7;
      }

      v9 = [v0 headerView];
      v10 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
      swift_beginAccess();
      sub_100007204(&v1[v10], v7, &unk_1006BBCE0, &unk_1005534C0);
      v11 = sub_10022F104(0xD000000000000029, 0x8000000100582880, v7);
      v13 = v12;
      v14 = v7;
      v16 = v15;
      v18 = v17;
      v19 = "FMLocalizedString ";
      v20 = 0xD000000000000011;
    }

    v57 = v20;

    sub_10022E0A8(v11, v13, v16, v18, 0, 0);

    swift_bridgeObjectRelease_n();
    v58 = v14;
    sub_100012DF0(v14, &unk_1006BBCE0, &unk_1005534C0);
    v25 = String._bridgeToObjectiveC()();

    [v9 setDetailText:v25];

    v26 = [v1 buttonTray];
    [v26 removeAllButtons];

    v27 = [objc_opt_self() boldButton];
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v59 = 0xD000000000000012;
    v60 = 0x800000010057A180;
    v28._object = (v19 | 0x8000000000000000);
    v29 = v57;
    v28._countAndFlagsBits = v57;
    String.append(_:)(v28);
    v30 = v59;
    v31 = v60;
    v32 = [objc_opt_self() mainBundle];
    v61._object = v31;
    v33._object = (v19 | 0x8000000000000000);
    v33._countAndFlagsBits = v29;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v61._countAndFlagsBits = v30;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v61);

    v35 = String._bridgeToObjectiveC()();

    [v27 setTitle:v35 forState:0];

    v36 = v27;
    v37 = String._bridgeToObjectiveC()();
    [v36 setAccessibilityIdentifier:v37];

    sub_10030D760();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v36 addAction:v38 forControlEvents:64];

    v39 = *&v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton];
    *&v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton] = v36;
    v40 = v36;

    v41 = [v1 buttonTray];
    [v41 addButton:v40];

    v7 = v58;
  }

LABEL_7:
  v42 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
  swift_beginAccess();
  sub_100007204(&v1[v42], v4, &unk_1006BBCE0, &unk_1005534C0);
  v43 = type metadata accessor for FMIPDevice();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v4, 1, v43) == 1)
  {
    __break(1u);
    return;
  }

  v45 = FMIPDevice.isConsideredAccessory.getter();
  (*(v44 + 8))(v4, v43);
  if ((v45 & 1) == 0 && (v8[4] & 1) == 0)
  {
    if (*v8 == 2)
    {
      v46 = "HONE_NUMBER_TITLE";
      v47 = 0xD000000000000029;
    }

    else
    {
      if (*v8 != 4)
      {
        return;
      }

      v46 = "_ENTER_PHONE_NUMBER_HINT";
      v47 = 0xD000000000000025;
    }

    v48 = [v1 headerView];
    sub_100007204(&v1[v42], v7, &unk_1006BBCE0, &unk_1005534C0);
    v49 = sub_10022F104(v47, v46 | 0x8000000000000000, v7);
    v51 = v50;
    v53 = v52;
    v55 = v54;

    sub_10022E0A8(v49, v51, v53, v55, 0, 0);

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v7, &unk_1006BBCE0, &unk_1005534C0);
    v56 = String._bridgeToObjectiveC()();

    [v48 setDetailText:v56];
  }
}

void sub_10030A05C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10030CE08(Strong);
  }
}

id sub_10030A0B0(void *a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_100417638(a1);
  v8 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
  swift_beginAccess();
  sub_100007204(v2 + v8, v6, &unk_1006BBCE0, &unk_1005534C0);
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = FMIPDevice.isConsideredAccessory.getter();
    (*(v10 + 8))(v6, v9);
    if (v12)
    {
      type metadata accessor for FMPhoneNumberTableViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        v15 = objc_opt_self();
        v16 = v7;
        v17 = [v15 mainBundle];
        v24._object = 0x8000000100590760;
        v18._object = 0x8000000100590730;
        v24._countAndFlagsBits = 0xD000000000000038;
        v18._countAndFlagsBits = 0xD000000000000026;
        v19._countAndFlagsBits = 0;
        v19._object = 0xE000000000000000;
        v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v24);

        *(v14 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderText) = v20;

        v21 = *(v14 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel);
        v22 = String._bridgeToObjectiveC()();

        [v21 setText:v22];

        sub_100092668();
      }
    }

    return v7;
  }

  return result;
}

id sub_10030A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v38 = a3;
  v11 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for CharacterSet();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();

  sub_100123328(a4, a5, v17);

  (*(v15 + 8))(v17, v14);
  v18 = objc_opt_self();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 updateTextField:a1 shouldChangeCharactersInRange:a2 replacementString:{v38, v19}];

  v21 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
  swift_beginAccess();
  sub_100007204(v6 + v21, v13, &unk_1006BBCE0, &unk_1005534C0);
  v22 = type metadata accessor for FMIPDevice();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v13, 1, v22);
  if (result != 1)
  {
    v25 = FMIPDevice.isConsideredAccessory.getter();
    (*(v23 + 8))(v13, v22);
    if ((v25 & 1) == 0)
    {
      return v20;
    }

    v26 = sub_100417D54();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 text];

      if (v28)
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if (sub_100122BFC(v29, v31) || (v33._countAndFlagsBits = 12331, v33._object = 0xE200000000000000, String.hasPrefix(_:)(v33)) && String.count.getter() >= 4)
        {
          swift_bridgeObjectRelease_n();
          v32 = 1;
          goto LABEL_13;
        }

        v34._countAndFlagsBits = 48;
        v34._object = 0xE100000000000000;
        if (String.hasPrefix(_:)(v34))
        {
          v35 = String.count.getter();
          swift_bridgeObjectRelease_n();
          v32 = v35 > 2;
          goto LABEL_13;
        }

        swift_bridgeObjectRelease_n();
      }
    }

    v32 = 0;
LABEL_13:
    v36 = *(v6 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton);
    if (v36)
    {
      [v36 setEnabled:v32];
    }

    return v20;
  }

  __break(1u);
  return result;
}

void sub_10030A7D0()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v175 = v1;
  v176 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v173 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v4 - 8);
  v172._object = &v160 - v5;
  v6 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v6);
  v170 = (&v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v160 - v9;
  __chkstk_darwin(v11);
  v13 = &v160 - v12;
  v14 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v14 - 8);
  v171 = (&v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v174 = (&v160 - v17);
  __chkstk_darwin(v18);
  v20 = &v160 - v19;
  __chkstk_darwin(v21);
  v169 = &v160 - v22;
  __chkstk_darwin(v23);
  v172._countAndFlagsBits = &v160 - v24;
  __chkstk_darwin(v25);
  v27 = &v160 - v26;
  __chkstk_darwin(v28);
  v30 = &v160 - v29;
  v31 = sub_100417D54();
  if (v31)
  {
    v177 = v0;
    v32 = v31;
    v33 = [v31 text];

    v34 = v177;
    if (v33)
    {
      v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v168 = v35;

      v36 = sub_100417D54();
      if (v36)
      {
        v37 = v36;
        [v36 resignFirstResponder];
      }

      v38 = &v34[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
      if ((v34[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode + 4] & 1) == 0)
      {
        if (*v38 == 4)
        {
          v13 = OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator;
          v61 = v177;
          if (*(v177 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator))
          {
            v62 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
            swift_beginAccess();
            sub_100007204(&v61[v62], v20, &unk_1006BBCE0, &unk_1005534C0);
            v63 = (v176 + 48);
            v64 = *(v176 + 48);
            if (v64(v20, 1, v175) != 1)
            {
              v163 = v64;
              v170 = v63;
              v164 = v62;
              v169 = v13;
              v13 = *&v61[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
              if (v13 != 1)
              {
                v65 = objc_opt_self();

                v66 = [v65 mainBundle];
                v184._object = 0x800000010057A290;
                v67._countAndFlagsBits = 0xD000000000000028;
                v67._object = 0x800000010057A260;
                v184._countAndFlagsBits = 0xD00000000000003ALL;
                v68._countAndFlagsBits = 0;
                v68._object = 0xE000000000000000;
                v165 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v184);

                v69 = [v65 mainBundle];
                v185._object = 0x800000010057A2F0;
                v70._object = 0x800000010057A2D0;
                v185._countAndFlagsBits = 0xD000000000000027;
                v70._countAndFlagsBits = 0xD000000000000015;
                v71._countAndFlagsBits = 0;
                v71._object = 0xE000000000000000;
                v172 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, 0, v69, v71, v185);

                v72 = v176;
                v166 = *(v176 + 16);
                v73 = v173;
                v74 = v175;
                (v166)(v173, v20, v175);
                type metadata accessor for FMIPEraseAction();
                swift_allocObject();

                v75 = FMIPEraseAction.init(device:message:phoneNumber:passcode:)();
                v76 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
                v77 = v177;
                [v76 setPresentingViewController:v177];
                v167 = v76;
                dispatch thunk of FMIPDeviceAction.authenticationContext.setter();
                (v166)(v73, v20, v74);
                v78 = (*(v72 + 80) + 16) & ~*(v72 + 80);
                v79 = v3 + v78;
                object = v172._object;
                v81 = (v79 + 7) & 0xFFFFFFFFFFFFFFF8;
                v82 = swift_allocObject();
                (*(v72 + 32))(v82 + v78, v73, v74);
                *(v82 + v81) = v77;
                v83 = v77;
                dispatch thunk of FMIPDeviceAction.trustedDeviceConfirmation.setter();

                v84 = *(v72 + 8);
                v176 = v72 + 8;
                v84(v20, v74);
                v85 = qword_1006AEBE0;

                v86 = v77;
                if (v85 != -1)
                {
                  swift_once();
                }

                v87 = type metadata accessor for Logger();
                sub_100005B14(v87, qword_1006D4630);
                v13 = v83;

                v88 = Logger.logObject.getter();
                v89 = static os_log_type_t.default.getter();

                v90 = os_log_type_enabled(v88, v89);
                v91 = v174;
                if (v90)
                {
                  v162 = v89;
                  v173 = v84;
                  v166 = v88;
                  v167 = v75;
                  v92 = v86;
                  v93 = swift_slowAlloc();
                  v161 = swift_slowAlloc();
                  v178[0] = v161;
                  *v93 = 136315650;
                  *(v93 + 4) = sub_100005B4C(v172._countAndFlagsBits, object, v178);
                  *(v93 + 12) = 2080;
                  v180 = 0;
                  v181 = 0xE000000000000000;
                  v94 = v164;
                  sub_100007204(v92 + v164, v91, &unk_1006BBCE0, &unk_1005534C0);
                  v95 = v175;
                  v96 = v163;
                  LODWORD(v92) = v163(v91, 1, v175);

                  if (v92 == 1)
                  {
LABEL_48:

                    __break(1u);
LABEL_49:
                    __break(1u);
                    goto LABEL_50;
                  }

                  v97 = FMIPDevice.name.getter();
                  v99 = v98;
                  v100 = v173;
                  (v173)(v91, v95);
                  v101._countAndFlagsBits = v97;
                  v101._object = v99;
                  String.append(_:)(v101);

                  v102 = sub_100005B4C(v180, v181, v178);

                  *(v93 + 14) = v102;
                  *(v93 + 22) = 2080;
                  v180 = 0;
                  v181 = 0xE000000000000000;
                  v103 = v177 + v94;
                  v104 = v171;
                  sub_100007204(v103, v171, &unk_1006BBCE0, &unk_1005534C0);
                  v105 = v96(v104, 1, v95);

                  if (v105 == 1)
                  {
LABEL_50:
                    __break(1u);
                    goto LABEL_51;
                  }

                  v106 = FMIPDevice.identifier.getter();
                  v108 = v107;
                  v100(v104, v95);
                  sub_10047BEA4(10, v106, v108);

                  v109 = static String._fromSubstring(_:)();
                  v111 = v110;

                  v112._countAndFlagsBits = v109;
                  v112._object = v111;
                  String.append(_:)(v112);

                  v113 = sub_100005B4C(v180, v181, v178);

                  *(v93 + 24) = v113;
                  v114 = v166;
                  _os_log_impl(&_mh_execute_header, v166, v162, "FMDeviceMessageViewController: %s %s %s...", v93, 0x20u);
                  swift_arrayDestroy();

                  v86 = v177;
                  object = v172._object;
                  v75 = v167;
                }

                else
                {
                }

                sub_100437A74();
                if (*&v169[v86])
                {

                  v156 = swift_allocObject();
                  countAndFlagsBits = v172._countAndFlagsBits;
                  v156[2] = v13;
                  v156[3] = countAndFlagsBits;
                  v156[4] = object;
                  v156[5] = v75;
                  v158 = v165._object;
                  v156[6] = v165._countAndFlagsBits;
                  v156[7] = v158;
                  v156[8] = countAndFlagsBits;
                  v156[9] = object;
                  v159 = v13;

                  sub_1000D7218(v75, sub_10030D700, v156);

                  return;
                }

                goto LABEL_43;
              }

LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (*v38 == 2)
        {
          v39 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
          v40 = v177;
          swift_beginAccess();
          v173 = v39;
          sub_100007204(v40 + v39, v30, &unk_1006BBCE0, &unk_1005534C0);
          v41 = v175;
          v42 = v176;
          v174 = *(v176 + 48);
          if (v174(v30, 1, v175) != 1)
          {
            v43 = FMIPDevice.isConsideredAccessory.getter();
            v45 = *(v42 + 8);
            v44 = (v42 + 8);
            v171 = v45;
            (v45)(v30, v41);
            if ((v43 & 1) == 0)
            {
              v115 = v177;
              v116 = *(v177 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator);
              if (v116)
              {
                v13 = v172._countAndFlagsBits;
                sub_100007204(&v173[v177], v172._countAndFlagsBits, &unk_1006BBCE0, &unk_1005534C0);
                v117 = v175;
                v118 = v174(v13, 1, v175);
                v119 = v176;
                if (v118 != 1)
                {
                  v120 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
                  swift_beginAccess();
                  sub_100007204(&v115[v120], v172._object, &qword_1006B07D0, qword_100552820);
                  if ((v38[4] & 1) == 0)
                  {
                    v174 = v44;
                    v121 = *&v115[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
                    if (v121 != 1)
                    {
                      LODWORD(v173) = *v38;
                      v122 = *&v115[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
                      v123 = objc_allocWithZone(type metadata accessor for FMDeviceEditableMessageViewController(0));
                      v170 = *(v119 + 56);
                      (v170)(&v123[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device], 1, 1, v117);
                      v124 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
                      v125 = type metadata accessor for FMIPItem();
                      (*(*(v125 - 8) + 56))(&v123[v124], 1, 1, v125);
                      v126 = &v123[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
                      *v126 = 0;
                      v126[4] = 1;
                      *&v123[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint] = 0;
                      *&v123[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_style] = xmmword_10055C050;
                      v127 = &v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
                      *v127 = 0;
                      v127[1] = 0;
                      v128 = &v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
                      *v128 = 0;
                      v128[1] = 0;
                      v129 = &v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_style];
                      swift_retain_n();
                      sub_10030D744(v122, v121);
                      if (qword_1006AEB88 != -1)
                      {
                        swift_once();
                      }

                      v130 = qword_1006D4348;
                      v131 = qword_1006D4350;
                      *v129 = qword_1006D4348;
                      v129[1] = v131;
                      v132 = OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView;
                      v133 = objc_allocWithZone(type metadata accessor for OBTableView());
                      v134 = v130;
                      *&v123[v132] = [v133 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
                      v135 = &v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message];
                      *v135 = 0;
                      v135[1] = 0;
                      *&v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_remainingCharsLabel] = 0;
                      v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
                      v136 = &v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_originalHeight];
                      *v136 = 0;
                      v136[8] = 1;
                      v137 = &v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
                      *v137 = 0;
                      v137[8] = 1;
                      *&v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardMinY] = 0;
                      v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_isKeyboardVisible] = 0;
                      *&v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillChangeFrameObserver] = 0;
                      *&v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillHideObserver] = 0;
                      *&v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_nextButton] = 0;
                      *&v123[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_mediator] = v116;

                      v138 = String._bridgeToObjectiveC()();
                      v139 = type metadata accessor for FMEditableMessageViewController();
                      v179.receiver = v123;
                      v179.super_class = v139;
                      v140 = objc_msgSendSuper2(&v179, "initWithTitle:detailText:icon:contentLayout:", v138, 0, 0, 2);

                      v141 = &v140[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
                      *v141 = v122;
                      v141[1] = v121;
                      v142 = v140;

                      v143 = &v142[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
                      v144 = v168;
                      *v143 = v167;
                      *(v143 + 1) = v144;

                      v145 = v169;
                      v146 = v172._countAndFlagsBits;
                      (*(v119 + 16))(v169, v172._countAndFlagsBits, v117);
                      (v170)(v145, 0, 1, v117);
                      v147 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
                      swift_beginAccess();
                      v60 = v142;
                      sub_1002B8AAC(v145, &v142[v147]);
                      swift_endAccess();
                      v148 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
                      swift_beginAccess();
                      v149 = v172._object;
                      sub_100179FC4(v172._object, &v60[v148]);
                      swift_endAccess();
                      v150 = &v60[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
                      *v150 = v173;
                      v150[4] = 0;
                      v151 = [*&v60[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView] heightAnchor];
                      v152 = [v151 constraintEqualToConstant:1024.0];

                      sub_100012DF0(v149, &qword_1006B07D0, qword_100552820);
                      (v171)(v146, v117);
                      v153 = *&v60[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint];
                      *&v60[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint] = v152;

                      v50 = v177;
                      goto LABEL_32;
                    }

LABEL_51:
                    __break(1u);
                    return;
                  }

                  goto LABEL_49;
                }

                goto LABEL_47;
              }

              goto LABEL_45;
            }

            v46 = [objc_opt_self() mainBundle];
            v183._object = 0x8000000100590700;
            v47._countAndFlagsBits = 0xD00000000000001ALL;
            v47._object = 0x80000001005906E0;
            v183._countAndFlagsBits = 0xD00000000000002CLL;
            v48._countAndFlagsBits = 0;
            v48._object = 0xE000000000000000;
            v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v183);

            v50 = v177;
            if (*(v177 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator))
            {
              v172._object = v49._object;
              sub_100007204(&v173[v177], v27, &unk_1006BBCE0, &unk_1005534C0);
              v51 = v175;
              if (v174(v27, 1, v175) != 1)
              {
                v52 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
                (*(v176 + 32))(v13, v27, v51);
                v53 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
                swift_beginAccess();
                sub_100007204(v50 + v53, &v13[v52], &qword_1006B07D0, qword_100552820);
                swift_storeEnumTagMultiPayload();
                v54 = objc_allocWithZone(type metadata accessor for FMLostModeConfirmationViewController(0));
                sub_1000970F8(v13, v10);
                *&v54[qword_1006B8820] = 0;
                *&v54[qword_1006D4360] = 0;
                v55 = &v54[qword_1006D4358];
                v56 = v172._object;
                *v55 = v49._countAndFlagsBits;
                *(v55 + 1) = v56;
                v57 = v168;
                *(v55 + 2) = v167;
                *(v55 + 3) = v57;
                v55[64] = 0;
                *(v55 + 2) = 0u;
                *(v55 + 3) = 0u;
                v58 = v170;
                sub_1000970F8(v10, v170);
                *&v54[qword_1006B3A80] = 0;
                sub_1000970F8(v58, &v54[qword_1006D3E00]);

                v60 = sub_1003C3E60(v59);
                sub_10009715C(v10);
                sub_10009715C(v58);
                sub_10009715C(v13);
LABEL_32:
                v154 = [v50 navigationController];
                if (v154)
                {
                  v155 = v154;
                  [v154 pushViewController:v60 animated:1];
                }

                else
                {
                }

                return;
              }

              goto LABEL_46;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          __break(1u);
          goto LABEL_40;
        }
      }
    }
  }
}

void sub_10030BBAC(uint64_t a1, void **a2, char *a3, uint64_t a4, void *a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v163 = a7;
  v164 = a3;
  v160 = a2;
  v161 = a6;
  v154 = a1;
  v9 = *(a8 + 8);
  v156 = *(a8 + 16);
  v157 = v9;
  v159 = type metadata accessor for FMIPActionStatus();
  v155 = *(v159 - 8);
  __chkstk_darwin(v159);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPDevice();
  v162 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v148 - v16;
  __chkstk_darwin(v18);
  v20 = &v148 - v19;
  __chkstk_darwin(v21);
  v23 = &v148 - v22;
  __chkstk_darwin(v24);
  v26 = &v148 - v25;
  __chkstk_darwin(v27);
  v29 = &v148 - v28;
  __chkstk_darwin(v30);
  v32 = &v148 - v31;
  v158 = a5;
  sub_1003EB538();
  if (!v164)
  {
    v148 = v29;
    v151 = v23;
    v152 = v17;
    v149 = v26;
    v153 = v20;
    v150 = v14;
    v156 = v11;
    v157 = v12;
    v49 = v159;
    v164 = v32;
    v50 = v162;
    if (!v160 || !v160[2])
    {
      return;
    }

    v51 = *(v162 + 16);
    v52 = v164;
    v53 = v157;
    v51(v164, v160 + ((*(v162 + 80) + 32) & ~*(v162 + 80)), v157);
    v54 = v155;
    v55 = v156;
    v56 = v49;
    (*(v155 + 16))(v156, v154, v49);
    v57 = (*(v54 + 88))(v55, v49);
    if (v57 == enum case for FMIPActionStatus.error(_:))
    {
      v58 = v163;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100005B14(v59, qword_1006D4630);
      v60 = v151;
      v51(v151, v52, v53);
      v61 = v153;
      v51(v153, v52, v53);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        aBlock = v160;
        *v64 = 136315650;
        *(v64 + 4) = sub_100005B4C(v161, v58, &aBlock);
        *(v64 + 12) = 2080;
        LODWORD(v163) = v63;
        v65 = FMIPDevice.name.getter();
        v66 = v60;
        v68 = v67;
        v69 = *(v50 + 8);
        v69(v66, v53);
        v70 = sub_100005B4C(v65, v68, &aBlock);

        *(v64 + 14) = v70;
        *(v64 + 22) = 2080;
        v71 = FMIPDevice.identifier.getter();
        sub_10047BEA4(10, v71, v72);
        v73 = v61;

        v74 = static String._fromSubstring(_:)();
        v76 = v75;
        v53 = v157;

        v69(v73, v53);
        v77 = sub_100005B4C(v74, v76, &aBlock);

        *(v64 + 24) = v77;
        _os_log_impl(&_mh_execute_header, v62, v163, "FMDeviceMessageViewController: Error %s %s %s", v64, 0x20u);
        swift_arrayDestroy();

        goto LABEL_29;
      }

      v69 = *(v50 + 8);
      v69(v61, v53);
      v121 = v60;
    }

    else
    {
      v102 = v163;
      if (v57 != enum case for FMIPActionStatus.pending(_:))
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v122 = type metadata accessor for Logger();
        sub_100005B14(v122, qword_1006D4630);
        v51(v152, v52, v53);
        v123 = v51;
        v124 = v150;
        v123(v150, v52, v53);

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          aBlock = v160;
          *v127 = 136315650;
          *(v127 + 4) = sub_100005B4C(v161, v102, &aBlock);
          *(v127 + 12) = 2080;
          LODWORD(v163) = v126;
          v128 = v152;
          v129 = FMIPDevice.name.getter();
          v131 = v130;
          v161 = v125;
          v132 = *(v50 + 8);
          v132(v128, v53);
          v133 = sub_100005B4C(v129, v131, &aBlock);

          *(v127 + 14) = v133;
          *(v127 + 22) = 2080;
          v134 = v150;
          v135 = FMIPDevice.identifier.getter();
          sub_10047BEA4(10, v135, v136);

          v55 = v156;
          v56 = v49;
          v137 = static String._fromSubstring(_:)();
          v139 = v138;
          v53 = v157;

          v132(v134, v53);
          v69 = v132;
          v140 = sub_100005B4C(v137, v139, &aBlock);

          *(v127 + 24) = v140;
          v141 = v161;
          _os_log_impl(&_mh_execute_header, v161, v163, "FMDeviceMessageViewController: Done %s %s %s", v127, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v69 = *(v50 + 8);
          v69(v124, v53);
          v69(v152, v53);
        }

        (*(v155 + 8))(v55, v56);
        v120 = sub_1003E1AD0();
        if (!v120)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v103 = v51;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_100005B14(v104, qword_1006D4630);
      v105 = v148;
      v103(v148, v52, v53);
      v106 = v149;
      v103(v149, v52, v53);

      v62 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v107))
      {
        v108 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        aBlock = v160;
        *v108 = 136315650;
        *(v108 + 4) = sub_100005B4C(v161, v102, &aBlock);
        *(v108 + 12) = 2080;
        LODWORD(v163) = v107;
        v109 = FMIPDevice.name.getter();
        v111 = v110;
        v112 = *(v50 + 8);
        v112(v105, v53);
        v113 = sub_100005B4C(v109, v111, &aBlock);

        *(v108 + 14) = v113;
        *(v108 + 22) = 2080;
        v114 = FMIPDevice.identifier.getter();
        sub_10047BEA4(10, v114, v115);

        v69 = v112;
        v116 = static String._fromSubstring(_:)();
        v118 = v117;
        v53 = v157;

        v112(v106, v53);
        v119 = sub_100005B4C(v116, v118, &aBlock);

        *(v108 + 24) = v119;
        _os_log_impl(&_mh_execute_header, v62, v163, "FMDeviceMessageViewController: %s pending on %s %s", v108, 0x20u);
        swift_arrayDestroy();

LABEL_29:

        v120 = sub_1003E1AD0();
        if (!v120)
        {
LABEL_44:
          v69(v164, v53);
          return;
        }

LABEL_41:
        v142 = v120;
        type metadata accessor for FMActivityIndicatingNavigationController();
        v143 = swift_dynamicCastClass();

        if (v143)
        {
          v144 = [v158 navigationController];
          if (v144)
          {
            v145 = v144;
            v146 = swift_allocObject();
            *(v146 + 16) = 0;
            *(v146 + 24) = 0;
            v169 = sub_1000822F4;
            v170 = v146;
            aBlock = _NSConcreteStackBlock;
            v166 = 1107296256;
            v167 = sub_100004AE4;
            v168 = &unk_100636708;
            v147 = _Block_copy(&aBlock);

            [v145 dismissViewControllerAnimated:1 completion:v147];
            _Block_release(v147);
          }
        }

        goto LABEL_44;
      }

      v69 = *(v50 + 8);
      v69(v106, v53);
      v121 = v105;
    }

    v69(v121, v53);
    v120 = sub_1003E1AD0();
    if (!v120)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v33 = _convertErrorToNSError(_:)();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100005B14(v34, qword_1006D4630);
  v35 = v163;

  v164 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_100005B4C(v161, v35, &aBlock);
    *(v38 + 12) = 2080;
    v39 = v164;
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_100005B4C(v41, v43, &aBlock);

    *(v38 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMDeviceMessageViewController: Error %s %s", v38, 0x16u);
    swift_arrayDestroy();
  }

  v45 = [v164 domain];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 == 0xD000000000000015 && 0x800000010057A320 == v48)
  {
  }

  else
  {
    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v78 & 1) == 0)
    {
LABEL_18:
      if (!sub_100271C38())
      {
        v81 = objc_opt_self();
        v82 = [v81 mainBundle];
        v172._object = 0x800000010057A360;
        v83._countAndFlagsBits = 0xD00000000000001DLL;
        v83._object = 0x800000010057A340;
        v172._countAndFlagsBits = 0xD00000000000002FLL;
        v84._countAndFlagsBits = 0;
        v84._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v172);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_100552220;
        v86 = [v164 localizedDescription];
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        *(v85 + 56) = &type metadata for String;
        *(v85 + 64) = sub_10008EE84();
        *(v85 + 32) = v87;
        *(v85 + 40) = v89;
        String.init(format:_:)();

        v90 = String._bridgeToObjectiveC()();
        v91 = String._bridgeToObjectiveC()();

        v92 = [objc_opt_self() alertControllerWithTitle:v90 message:v91 preferredStyle:1];

        v93 = [v81 mainBundle];
        v173._object = 0x8000000100579B60;
        v94._countAndFlagsBits = 0x4F545455425F4B4FLL;
        v94._object = 0xEF454C5449545F4ELL;
        v173._countAndFlagsBits = 0xD000000000000021;
        v95._countAndFlagsBits = 0;
        v95._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, v93, v95, v173);

        v96 = swift_allocObject();
        v97 = v158;
        *(v96 + 16) = v158;
        v98 = v97;
        v99 = String._bridgeToObjectiveC()();

        v169 = sub_10030D758;
        v170 = v96;
        aBlock = _NSConcreteStackBlock;
        v166 = 1107296256;
        v167 = sub_100017328;
        v168 = &unk_100636758;
        v100 = _Block_copy(&aBlock);

        v101 = [objc_opt_self() actionWithTitle:v99 style:1 handler:v100];
        _Block_release(v100);

        [v92 addAction:v101];
        [v98 presentViewController:v92 animated:1 completion:0];

        return;
      }

      v80 = v164;
      goto LABEL_20;
    }
  }

  v79 = [v164 code] == -7003;
  v80 = v164;
  if (!v79)
  {
    goto LABEL_18;
  }

LABEL_20:
}