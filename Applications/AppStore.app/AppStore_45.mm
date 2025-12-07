double sub_1004F88E0()
{

  return result;
}

double sub_1004F8920(uint64_t a1)
{

  return result;
}

id sub_1004F89D4(uint64_t a1, void *a2)
{
  v22 = a2;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for UITextItem.Content();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  UITextItem.content.getter();
  if ((*(v3 + 88))(v5, v2) == enum case for UITextItem.Content.link(_:))
  {
    (*(v3 + 96))(v5, v2);
    v21 = *(v7 + 32);
    v13 = v6;
    v21(v12, v5, v6);
    v22 = sub_100005744(0, &qword_10097CD40, UIAction_ptr);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v9, v12, v13);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v21((v17 + v15), v9, v13);
    *(v17 + v16) = v14;
    *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

    v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    (*(v7 + 8))(v12, v13);

    return v18;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v22;
  }
}

void sub_1004F8D14(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1004F7A7C(a1, v1 + v4, v5);
}

uint64_t sub_1004F8DBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004F8E24(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1004F8F18(CGFloat *a1, char a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = v94 - v7;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 1);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[qword_1009D23C8] != 1)
  {
    return;
  }

  v14 = [v2 traitCollection];
  v15 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v16 = 20.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 20.0;
  if (a2)
  {
    v17 = *&v3[qword_1009D23D0];
    v16 = *&v3[qword_1009D23D0 + 8];
    v18 = *&v3[qword_1009D23D0 + 16];
    v19 = *&v3[qword_1009D23D0 + 24];
  }

  if (v15)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v108 = v20;
  v22 = *a1;
  v21 = a1[1];
  v24 = a1[2];
  v23 = a1[3];
  v114.origin.x = *a1;
  v114.origin.y = v21;
  v114.size.width = v24;
  v114.size.height = v23;
  Width = CGRectGetWidth(v114);
  v106 = v23;
  v107 = Width - v16 - v19;
  v104 = v21;
  v105 = v22;
  v115.origin.x = v22;
  v115.origin.y = v21;
  v103 = v24;
  v115.size.width = v24;
  v115.size.height = v23;
  v26 = v17;
  v27 = CGRectGetHeight(v115) - v17 - v18;
  v28 = v15;
  v29 = *&v3[qword_100989270];
  v30 = [v29 text];
  v101 = v28;
  if (v30)
  {

    v31 = v107;
    [v29 sizeThatFits:{v107, v27}];
    v17 = v32;
    v102 = v33;
    if (v28)
    {
      v116.origin.x = v19;
      v34 = v26;
      v116.origin.y = v26;
      v116.size.width = v31;
      v116.size.height = v27;
      MinX = CGRectGetMaxX(v116) - v17;
      v35 = v17;
      v36 = v17 + 30.0;
      v37 = 0.0;
    }

    else
    {
      v117.origin.x = v16;
      v34 = v26;
      v117.origin.y = v26;
      v117.size.width = v31;
      v117.size.height = v27;
      MinX = CGRectGetMinX(v117);
      v35 = v17;
      v37 = v17 + 30.0;
      v36 = v17 + 30.0;
    }

    v39 = v108 + v37;
    v38 = v31 - v36;
  }

  else
  {
    v102 = 0.0;
    MinX = 0.0;
    v35 = 0.0;
    v34 = v17;
    v38 = v107;
    v39 = v108;
  }

  if (qword_10096E698 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for StaticDimension();
  sub_1000056A8(v40, qword_1009D2380);
  static Dimensions.defaultRoundingRule.getter();
  v99 = v40;
  AnyDimension.value(in:rounded:)();
  v42 = v41;
  v44 = *(v10 + 8);
  v43 = v10 + 8;
  v97 = v44;
  v44(v13, v9);
  v107 = *&v3[qword_100989278];
  v45 = [*&v107 attributedText];
  v100 = v35;
  if (v45)
  {
    v46 = v45;
    v94[0] = v29;
    v94[1] = v43;
    v95 = v9;
    v96 = a1;
    v47 = [v3 traitCollection];
    v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v46];
    v98 = COERCE_DOUBLE([v46 length]);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = v47;
    *(v48 + 32) = v9;
    *(v48 + 40) = 1;
    a1 = swift_allocObject();
    *(a1 + 2) = sub_10010279C;
    *(a1 + 3) = v48;
    v112 = sub_1001027AC;
    v113 = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v111 = &unk_1008C6858;
    v49 = _Block_copy(aBlock);
    v29 = v113;
    v50 = v47;
    v108 = COERCE_DOUBLE(v9);

    [v46 enumerateAttributesInRange:0 options:*&v98 usingBlock:{0x100000, v49}];

    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_28;
    }

    a1 = v96;
    v9 = v95;
    v29 = v94[0];
  }

  else
  {
    v108 = 0.0;
  }

  v98 = v42;
  if (qword_10096E220 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for FontUseCase();
  v53 = sub_1000056A8(v52, qword_1009D15E0);
  v54 = *(v52 - 8);
  (*(v54 + 16))(v8, v53, v52);
  (*(v54 + 56))(v8, 0, 1, v52);
  v55 = type metadata accessor for Feature();
  v111 = v55;
  v112 = sub_100085D7C();
  v56 = sub_1000056E0(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v17 = v57;
  v35 = v58;
  sub_10002B894(v8, &qword_100972ED0, &unk_1007B17B0);
  v59 = v39;
  v60 = v34;
  v61 = v38;
  v62 = v27;
  if (v101)
  {
    MaxX = CGRectGetMaxX(*&v59);
    v64 = v34;
    v34 = MaxX - v17;
  }

  else
  {
    v65 = CGRectGetMinX(*&v59);
    v64 = v34;
    v34 = v65;
  }

  v8 = *&v107;
  isEscapingClosureAtFileLocation = v99;
  v66 = v39;
  v67 = v38;
  v68 = v27;
  MinY = CGRectGetMinY(*(&v64 - 1));
  if (qword_10096E690 != -1)
  {
    swift_once();
  }

  sub_1000056A8(isEscapingClosureAtFileLocation, qword_1009D2368);
  AnyDimension.topMargin(from:in:)();
  v27 = MinY + v70;
  v50 = &selRef__setDefaultAttributes_;
  [v8 setFrame:{v34, v27, v17, v35}];
  v71 = 0.0;
  v118.origin.y = 0.0;
  v118.origin.x = MinX;
  v39 = v100;
  v118.size.width = v100;
  v38 = v102;
  v118.size.height = v102;
  if (CGRectIsEmpty(v118))
  {
    goto LABEL_29;
  }

  if (qword_10096E6A0 != -1)
  {
    goto LABEL_34;
  }

LABEL_28:
  sub_1000056A8(isEscapingClosureAtFileLocation, qword_1009D2398);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v73 = v72;
  v97(v13, v9);
  v119.origin.x = v34;
  v119.origin.y = v27;
  v119.size.width = v17;
  v119.size.height = v35;
  v74 = CGRectGetMinY(v119);
  [v8 firstBaselineFromTop];
  v76 = v74 + v75;
  [v29 firstBaselineFromTop];
  v71 = v73 + v76 - v77;
LABEL_29:
  v78 = MinX;
  [v29 v50[490]];
  v120.origin.x = v78;
  v120.origin.y = v71;
  v120.size.width = v39;
  v120.size.height = v38;
  MaxY = CGRectGetMaxY(v120);
  [v29 lastBaselineFromBottom];
  v81 = MaxY - v80;
  v121.origin.x = v34;
  v121.origin.y = v27;
  v121.size.width = v17;
  v121.size.height = v35;
  v82 = CGRectGetMaxY(v121);
  [v8 lastBaselineFromBottom];
  v84 = v82 - v83;
  if (v81 > v84)
  {
    v84 = v81;
  }

  v85 = v98 + v84;
  v87 = v104;
  v86 = v105;
  v122.origin.x = v105;
  v122.origin.y = v104;
  v88 = v103;
  v122.size.width = v103;
  v89 = v106;
  v122.size.height = v106;
  v90 = CGRectGetMinX(v122);
  v123.origin.x = v86;
  v123.origin.y = v87;
  v123.size.width = v88;
  v123.size.height = v89;
  v91 = CGRectGetMaxY(v123) - v85;
  v124.origin.x = v86;
  v124.origin.y = v87;
  v124.size.width = v88;
  v124.size.height = v89;
  v125.size.width = CGRectGetWidth(v124);
  v125.origin.x = v90;
  v125.origin.y = v91;
  v125.size.height = v85;
  v126 = CGRectIntegral(v125);
  v92 = *&v3[qword_100989268];
  [v92 v50[490]];
  [v92 frame];
  Height = CGRectGetHeight(v127);

  a1[3] = v89 - Height;
}

uint64_t sub_1004F9970(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  if (qword_10096E220 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D15E0);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v5 + 16))(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1004F9B4C()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result = static UIColor.secondaryText.getter();
  qword_1009D23B0 = result;
  return result;
}

void *sub_1004F9B90(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v57 = swift_isaMask & *v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = qword_100989260;
  type metadata accessor for RoundedCornerView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_1009D23B8;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[qword_1009D23C0] = 0;
  v5[qword_1009D23C8] = 0;
  v19 = &v5[qword_1009D23D0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v19 = UIEdgeInsetsZero.top;
  v19[1] = left;
  v19[2] = bottom;
  v19[3] = right;
  v5[qword_1009D23D8] = 0;
  v23 = [objc_allocWithZone(UIView) init];
  *&v5[qword_100989268] = v23;
  if (qword_10096E228 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v25 = sub_1000056A8(v24, qword_1009D15F8);
  v26 = *(v24 - 8);
  v56 = *(v26 + 16);
  v56(v15, v25, v24);
  v55 = *(v26 + 56);
  v55(v15, 0, 1, v24);
  v27 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v11 + 104);
  v54(v58, enum case for DirectionalTextAlignment.none(_:), v10);
  v28 = type metadata accessor for DynamicTypeLabel();
  v53 = v10;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[qword_100989270] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E220 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v24, qword_1009D15E0);
  v56(v15, v31, v24);
  v55(v15, 0, 1, v24);
  v54(v58, v27, v53);
  v32 = objc_allocWithZone(v29);
  *&v5[qword_100989278] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = type metadata accessor for FramedMediaCollectionViewCell(0, *(v57 + 80), v33, v34);
  v59.receiver = v5;
  v59.super_class = v35;
  v36 = objc_msgSendSuper2(&v59, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v38 = [v36 contentView];
  v39 = qword_100989260;
  [v38 addSubview:*(v36 + qword_100989260)];

  v40 = qword_100989268;
  v41 = *(v36 + qword_100989268);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v42 = v41;
  v43 = static UIColor.placeholderBackground.getter();
  [v42 setBackgroundColor:v43];

  [*(v36 + v40) setHidden:1];
  [*(v36 + v39) addSubview:*(v36 + v40)];
  v44 = qword_100989270;
  v45 = *(v36 + qword_100989270);
  v46 = static UIColor.primaryText.getter();
  [v45 setTextColor:v46];

  [*(v36 + v40) addSubview:*(v36 + v44)];
  v47 = qword_100989278;
  v48 = qword_10096E6A8;
  v49 = *(v36 + qword_100989278);
  if (v48 != -1)
  {
    swift_once();
  }

  [v49 setTextColor:qword_1009D23B0];

  [*(v36 + v47) setTextAlignment:4];
  [*(v36 + v40) addSubview:*(v36 + v47)];
  v50 = *((swift_isaMask & *v36) + 0x130);
  v51 = *(v36 + v39);
  v50();

  return v36;
}

uint64_t sub_1004FA288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for FramedMediaCollectionViewCell(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v21.receiver = v4;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v7 = *(v4 + qword_100989260);
  v8 = [v4 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v7 setFrame:{v10, v12, v14, v16}];
  [v7 frame];
  v20[0] = 0.0;
  v20[1] = 0.0;
  v20[2] = v17;
  v20[3] = v18;
  sub_1004F8F18(v20, *(v5 + qword_1009D23D8));
  return (*((swift_isaMask & *v5) + 0x128))(v20);
}

void sub_1004FA3F4(void *a1)
{
  v4 = a1;
  sub_1004FA288(v4, v1, v2, v3);
}

id sub_1004FA43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FramedMediaCollectionViewCell(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1004FA530()
{
  v1 = qword_100989260;
  type metadata accessor for RoundedCornerView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_1009D23B8;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + qword_1009D23C0) = 0;
  *(v0 + qword_1009D23C8) = 0;
  v4 = (v0 + qword_1009D23D0);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  *(v0 + qword_1009D23D8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004FA640()
{
  *(v0 + 16) = [objc_opt_self() standardUserDefaults];
  v1 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_navigationActionRegistration;
  v2 = sub_10002849C(&unk_100989340, &qword_1007D2460);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_actionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_promptActionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_infoSettingRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuItemRegistration, 1, 1, v2);
  sub_1004FB3D0();
  return v0;
}

uint64_t sub_1004FA834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a1;
  v75 = a3;
  v4 = sub_10002849C(&qword_100989510, &qword_1007D2468);
  __chkstk_darwin(v4 - 8);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  __chkstk_darwin(v15);
  v17 = (&v72 - v16);
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  __chkstk_darwin(v27);
  v29 = &v72 - v28;
  __chkstk_darwin(v30);
  v32 = &v72 - v31;
  type metadata accessor for NavigationActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v33 = a2;
    v34 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_navigationActionRegistration;
    v35 = v77;
    swift_beginAccess();
    sub_1004FEB8C(v35 + v34, v32);
    v36 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v32, 1, v36);
    if (result != 1)
    {
      v78 = v33;
      sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
      type metadata accessor for DebugSetting();

      v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      (*(v37 + 8))(v32, v36);
      return v39;
    }

    __break(1u);
    goto LABEL_37;
  }

  v73 = v29;
  v40 = v77;
  v41 = v74;
  type metadata accessor for ActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v42 = a2;
    v43 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_actionRegistration;
    swift_beginAccess();
    v44 = v73;
    sub_1004FEB8C(v40 + v43, v73);
    v45 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v46 = *(v45 - 8);
    result = (*(v46 + 48))(v44, 1, v45);
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v78 = v42;
    sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    (*(v46 + 8))(v44, v45);
    return v39;
  }

  type metadata accessor for StringUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v47 = a2;
    v48 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    sub_1004FEB8C(v40 + v48, v26);
    v49 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v50 = *(v49 - 8);
    result = (*(v50 + 48))(v26, 1, v49);
    if (result == 1)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v78 = v47;
    sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    v51 = *(v50 + 8);
    v52 = v26;
    goto LABEL_14;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v53 = a2;
    v54 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
    swift_beginAccess();
    v55 = v23;
    sub_1004FEB8C(v40 + v54, v23);
    v49 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v56 = *(v49 - 8);
    result = (*(v56 + 48))(v55, 1, v49);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v78 = v53;
    sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    v51 = *(v56 + 8);
    v52 = v55;
LABEL_14:
    v51(v52, v49);
    return v39;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v57 = swift_dynamicCastClass();
  if (v57)
  {
    v41 = a2;
    v58 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    v59 = v20;
    sub_1004FEB8C(v40 + v58, v20);
    a2 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v17 = *(a2 - 8);
    v57 = v17[6](v20, 1, a2);
    if (v57 != 1)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  type metadata accessor for BoolPreferencesDebugSetting(v57);
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v60 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
    swift_beginAccess();
    v59 = v17;
    sub_1004FEB8C(v40 + v60, v17);
    a2 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v17 = *(a2 - 8);
    result = v17[6](v59, 1, a2);
    if (result == 1)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  type metadata accessor for PromptActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v61 = a2;
    v62 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_promptActionRegistration;
    swift_beginAccess();
    sub_1004FEB8C(v40 + v62, v14);
    v63 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v64 = *(v63 - 8);
    result = (*(v64 + 48))(v14, 1, v63);
    if (result == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v78 = v61;
    sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    (*(v64 + 8))(v14, v63);
    return v39;
  }

  type metadata accessor for InfoDebugSetting();
  if (swift_dynamicCastClass())
  {
    v65 = a2;
    v66 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_infoSettingRegistration;
    swift_beginAccess();
    sub_1004FEB8C(v40 + v66, v11);
    v67 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v68 = *(v67 - 8);
    result = (*(v68 + 48))(v11, 1, v67);
    if (result == 1)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v78 = v65;
    sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    (*(v68 + 8))(v11, v67);
    return v39;
  }

  type metadata accessor for MenuDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v69 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuRegistration;
    swift_beginAccess();
    v59 = v8;
    sub_1004FEB8C(v40 + v69, v8);
    a2 = sub_10002849C(&unk_100989340, &qword_1007D2460);
    v17 = *(a2 - 8);
    if (v17[6](v8, 1, a2) == 1)
    {
      __break(1u);
      goto LABEL_32;
    }

LABEL_21:
    v78 = v41;
LABEL_22:
    sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    (v17[1])(v59, a2);
    return v39;
  }

LABEL_32:
  type metadata accessor for MenuItemDebugSetting();
  v70 = a2;
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v71 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  v59 = v41;
  sub_1004FEB8C(v40 + v71, v41);
  a2 = sub_10002849C(&unk_100989340, &qword_1007D2460);
  v17 = *(a2 - 8);
  result = v17[6](v41, 1, a2);
  if (result != 1)
  {
    v78 = v70;
    goto LABEL_22;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1004FB3D0()
{
  v1 = sub_10002849C(&qword_100989510, &qword_1007D2468);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
  type metadata accessor for DebugSetting();
  UICollectionView.CellRegistration.init(handler:)();
  v4 = sub_10002849C(&unk_100989340, &qword_1007D2460);
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_navigationActionRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v6);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_actionRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v7);
  swift_endAccess();
  v8 = *(v0 + 16);
  *(swift_allocObject() + 16) = v8;
  v9 = v8;
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v10 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringUserDefaultRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v10);
  swift_endAccess();
  *(swift_allocObject() + 16) = v9;
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v11 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v11);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v12 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v12);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v13 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v13);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v14 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_promptActionRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v14);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v15 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_infoSettingRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v15);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v16 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v16);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v17 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v17);
  return swift_endAccess();
}

uint64_t sub_1004FB988(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v5 - 8);
  v31 = v27 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIListContentConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for NavigationActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v28 = v7;
    v29 = a1;
    v27[1] = v17;

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();
    v20 = *(v19 + 72);
    if (v20)
    {
      v21 = *(v19 + 80);

      v20(v22);
      sub_10001F63C(v20, v21);
    }

    UIListContentConfiguration.secondaryText.setter();
    v33[3] = v13;
    v33[4] = &protocol witness table for UIListContentConfiguration;
    v27[0] = v13;
    v23 = sub_1000056E0(v33);
    (*(v14 + 16))(v23, v16, v13);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v24 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v25 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v26 = v30;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v32 + 8))(v26, v28);
    (*(v10 + 8))(v24, v9);
    UICollectionViewListCell.accessories.setter();

    return (*(v14 + 8))(v16, v27[0]);
  }

  return result;
}

uint64_t sub_1004FBDF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = result;

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();
    if (!*(v8 + 80))
    {
      v9 = *(v8 + 88);
      if (v9)
      {
        v9();
      }
    }

    UIListContentConfiguration.secondaryText.setter();
    v12[3] = v3;
    v12[4] = &protocol witness table for UIListContentConfiguration;
    v10 = sub_1000056E0(v12);
    (*(v4 + 16))(v10, v6, v3);
    UICollectionViewCell.contentConfiguration.setter();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1004FBFB0(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v26 = a4;
  v29 = a1;
  v5 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v5 - 8);
  v27 = &v24 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  type metadata accessor for StringUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v24 = v18;
    v25 = v7;

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();

    v20 = String._bridgeToObjectiveC()();

    v21 = [v26 valueForKey:v20];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v30 = v33;
    v31 = v34;
    if (*(&v34 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10002B894(&v30, &unk_1009711D0, &unk_1007B1A10);
    }

    UIListContentConfiguration.secondaryText.setter();
    *(&v31 + 1) = v14;
    v32 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_1000056E0(&v30);
    (*(v15 + 16))(v22, v17, v14);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
    v26 = v17;
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
    v23 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v28 + 8))(v9, v25);
    (*(v11 + 8))(v13, v10);
    UICollectionViewListCell.accessories.setter();

    return (*(v15 + 8))(v26, v14);
  }

  return result;
}

uint64_t sub_1004FC4A8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v45 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UIListContentConfiguration();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v40 = v13;
    v41 = v9;
    v37[1] = v19;

    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    *(&v51 + 1) = v15;
    v52 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_1000056E0(&v50);
    v38 = v16;
    (*(v16 + 16))(v22, v18, v15);
    v42 = a1;
    UICollectionViewCell.contentConfiguration.setter();
    v23 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

    v24 = String._bridgeToObjectiveC()();

    v25 = [a4 objectForKey:v24];

    if (v25)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v50 = v48;
    v51 = v49;
    v39 = v15;
    if (*(&v49 + 1))
    {
      sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v26 = v47;
        [v23 setOn:{objc_msgSend(v47, "BOOLValue")}];

LABEL_10:
        sub_100005744(0, &qword_10097CD40, UIAction_ptr);
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a4;
        v28[4] = v21;

        v29 = a4;
        v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v23 addAction:v30 forControlEvents:0x2000];
        sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
        type metadata accessor for UICellAccessory();
        *(swift_allocObject() + 16) = xmmword_1007B10D0;
        v31 = &v12[*(sub_10002849C(&qword_100972D18, &unk_1007B3E10) + 48)];
        v32 = enum case for UICellAccessory.DisplayedState.always(_:);
        v33 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v33 - 8) + 104))(v12, v32, v33);
        *v31 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v31[1] = 0;
        (*(v43 + 104))(v12, enum case for UICellAccessory.Placement.trailing(_:), v44);
        v34 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
        v35 = v23;
        v36 = v45;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        static UICellAccessory.customView(configuration:)();
        (*(v46 + 8))(v36, v40);
        UICollectionViewListCell.accessories.setter();

        return (*(v38 + 8))(v18, v39);
      }
    }

    else
    {
      sub_10002B894(&v50, &unk_1009711D0, &unk_1007B1A10);
    }

    [v23 setOn:0];
    goto LABEL_10;
  }

  return result;
}

void sub_1004FCB44(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong isOn];
    v7 = String._bridgeToObjectiveC()();
    [a3 setBool:v6 forKey:v7];
  }
}

uint64_t sub_1004FCBDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v5 - 8);
  v24 = v22 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIListContentConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for StringPreferencesDebugSetting(0);
  result = swift_dynamicCastClass();
  if (result)
  {

    static UIListContentConfiguration.valueCell()();
    v22[1] = a1;
    v22[2] = v17;

    UIListContentConfiguration.text.setter();
    swift_getObjectType();
    Preferences.subscript.getter();
    UIListContentConfiguration.secondaryText.setter();
    v27[3] = v13;
    v27[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_1000056E0(v27);
    (*(v14 + 16))(v19, v16, v13);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v20 = v23;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v23);
    v21 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v25 + 8))(v9, v26);
    (*(v10 + 8))(v12, v20);
    UICollectionViewListCell.accessories.setter();

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1004FD034(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v37 = a1;
  v3 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for UICellAccessory.Placement();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BoolPreferencesDebugSetting(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v17 = result;
    v33 = v5;

    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();

    UIListContentConfiguration.secondaryText.setter();
    v38[3] = v12;
    v38[4] = &protocol witness table for UIListContentConfiguration;
    v18 = sub_1000056E0(v38);
    v30 = v13;
    v31 = v12;
    (*(v13 + 16))(v18, v15, v12);
    UICollectionViewCell.contentConfiguration.setter();
    v19 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getObjectType();
    Preferences.subscript.getter();
    v20 = v38[0];
    v32 = v9;
    if (LOBYTE(v38[0]) == 2)
    {
      v20 = *(v17 + 88);
    }

    [v19 setOn:v20 & 1];
    sub_100005744(0, &qword_10097CD40, UIAction_ptr);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v17;

    v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v19 addAction:v23 forControlEvents:0x2000];
    sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v24 = &v8[*(sub_10002849C(&qword_100972D18, &unk_1007B3E10) + 48)];
    v25 = enum case for UICellAccessory.DisplayedState.always(_:);
    v26 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v26 - 8) + 104))(v8, v25, v26);
    *v24 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v24[1] = 0;
    (*(v34 + 104))(v8, enum case for UICellAccessory.Placement.trailing(_:), v35);
    v27 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
    v28 = v19;
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    static UICellAccessory.customView(configuration:)();
    (*(v36 + 8))(v11, v32);
    UICollectionViewListCell.accessories.setter();

    return (*(v30 + 8))(v15, v31);
  }

  return result;
}

void sub_1004FD620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    (*(v5 + 16))(v7, a3 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v4);
    v10[7] = [v9 isOn];
    Preferences.subscript.setter();
  }
}

uint64_t sub_1004FD788(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v5 - 8);
  v32 = v28 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIListContentConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v29 = v7;
    v30 = a1;
    v28[1] = v17;

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();
    v20 = *(v19 + 72);
    if (v20)
    {
      v21 = *(v19 + 80);

      v20(v22);
      sub_10001F63C(v20, v21);
    }

    UIListContentConfiguration.secondaryText.setter();
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    static UIColor.appTint.getter();
    v23 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v23(v34, 0);
    v34[3] = v13;
    v34[4] = &protocol witness table for UIListContentConfiguration;
    v28[0] = v13;
    v24 = sub_1000056E0(v34);
    (*(v14 + 16))(v24, v16, v13);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v25 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v26 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
    v27 = v31;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v33 + 8))(v27, v29);
    (*(v10 + 8))(v25, v9);
    UICollectionViewListCell.accessories.setter();

    return (*(v14 + 8))(v16, v28[0]);
  }

  return result;
}

uint64_t sub_1004FDC4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InfoDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();

    UIListContentConfiguration.secondaryText.setter();
    v10[3] = v3;
    v10[4] = &protocol witness table for UIListContentConfiguration;
    v8 = sub_1000056E0(v10);
    (*(v4 + 16))(v8, v6, v3);
    UICollectionViewCell.contentConfiguration.setter();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1004FDDCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for UICellAccessory.DisplayedState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = sub_10002849C(&qword_100989518, &qword_1007D2470);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v40 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UIListContentConfiguration();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for MenuDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v36 = v5;
    v34[1] = v19;

    static UIListContentConfiguration.valueCell()();

    v22 = UIListContentConfiguration.text.setter();
    v23 = (*(v21 + 80))(v41, v22);
    __chkstk_darwin(v23);
    v34[-2] = v41;
    v25 = sub_1004F664C(sub_1004FEB58, &v34[-4], v24);
    v35 = v6;
    if (v25)
    {
    }

    sub_10002B894(v41, &qword_10096FB90, &qword_1007B2A50);
    UIListContentConfiguration.secondaryText.setter();
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    static UIColor.appTint.getter();
    v26 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v26(v41, 0);
    v41[3] = v15;
    v41[4] = &protocol witness table for UIListContentConfiguration;
    v27 = sub_1000056E0(v41);
    (*(v16 + 16))(v27, v18, v15);
    v34[0] = a1;
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v28 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v29 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    static UIColor.tertiaryText.getter();
    v30 = v37;
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    v32 = v35;
    v31 = v36;
    v33 = v39;
    (*(v35 + 104))(v39, enum case for UICellAccessory.DisplayedState.always(_:), v36);
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v32 + 8))(v33, v31);
    (*(v38 + 8))(v30, v40);
    UICollectionViewListCell.accessories.setter();

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_1004FE3A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v3 - 8);
  v23 = v20 - v4;
  v5 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for UICellAccessory.DisplayedState();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MenuItemDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = result;
    v21 = v5;

    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v26[3] = v10;
    v26[4] = &protocol witness table for UIListContentConfiguration;
    v16 = sub_1000056E0(v26);
    (*(v11 + 16))(v16, v13, v10);
    UICollectionViewCell.contentConfiguration.setter();
    if (*(v15 + 72) == 1)
    {
      sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
      v17 = *(type metadata accessor for UICellAccessory() - 8);
      v20[1] = (*(v17 + 80) + 32) & ~*(v17 + 80);
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      v18 = v22;
      (*(v22 + 104))(v9, enum case for UICellAccessory.DisplayedState.always(_:), v25);
      v19 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
      UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.checkmark(displayed:options:)();
      (*(v24 + 8))(v7, v21);
      (*(v18 + 8))(v9, v25);
    }

    UICollectionViewListCell.accessories.setter();

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_1004FE7E8()
{
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_navigationActionRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_actionRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringUserDefaultRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLPreferenceRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_promptActionRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_infoSettingRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuRegistration, &qword_100989510, &qword_1007D2468);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuItemRegistration, &qword_100989510, &qword_1007D2468);
  return v0;
}

uint64_t sub_1004FE918()
{
  sub_1004FE7E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugSettingCellRegistrations(uint64_t a1)
{
  result = qword_100989328;
  if (!qword_100989328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004FE9C4(uint64_t a1)
{
  sub_1004FEA74(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004FEA74(uint64_t a1)
{
  if (!qword_100989338)
  {
    sub_10002D1A8(&unk_100989340, &qword_1007D2460);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100989338);
    }
  }
}

uint64_t sub_1004FEAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100989510, &qword_1007D2468);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FEB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100989510, &qword_1007D2468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FEC74()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for EdgeInsetsDimension();
  sub_100005644(v4, qword_1009D24D8);
  v24 = sub_1000056A8(v4, qword_1009D24D8);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for StaticDimension();
  v6 = sub_1000056A8(v5, qword_1009D2430);
  v31[3] = v5;
  v31[4] = &protocol witness table for StaticDimension;
  v7 = sub_1000056E0(v31);
  v21 = *(*(v5 - 8) + 16);
  v21(v7, v6, v5);
  *v3 = UIFontTextStyleBody;
  v8 = v1[13];
  v23 = enum case for FontSource.textStyle(_:);
  v22 = v8;
  v8(v3);
  v30[3] = v5;
  v30[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v30);
  v28 = v0;
  v29 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v27);
  v20 = v1[2];
  v20(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v19 = v1[1];
  v19(v3, v0);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v5, qword_1009D2460);
  v28 = v5;
  v29 = &protocol witness table for StaticDimension;
  v12 = sub_1000056E0(v27);
  v21(v12, v11, v5);
  *v3 = v10;
  v13 = v23;
  v14 = v22;
  v22(v3, v23, v0);
  v26[3] = v5;
  v26[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v26);
  v25[3] = v0;
  v25[4] = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v25);
  v20(v15, v3, v0);
  v16 = v10;
  StaticDimension.init(_:scaledLike:)();
  v19(v3, v0);
  *v3 = v16;
  v14(v3, v13, v0);
  v17 = v16;
  return EdgeInsetsDimension.init(top:left:bottom:right:source:)();
}

uint64_t sub_1004FF030(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v13[3] = v4;
  v13[4] = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v13);
  (*(v5 + 16))(v9, v7, v4);
  v10 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

id sub_1004FF1CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = &v4[*a3];
  *v7 = a1;
  *(v7 + 1) = a2;

  v8 = *&v4[*a4];
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText:v9];

  v10 = static String.isNilOrEmpty(_:)();

  [v8 setHidden:v10 & 1];

  return [v4 setNeedsLayout];
}

id sub_1004FF2BC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueText];
  v3 = OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (*&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueText + 8])
  {
    if (!v4)
    {
      type metadata accessor for FadeableDynamicTypeLabel(0);
      v5 = DynamicTypeLabel.__allocating_init(frame:)();
      sub_100503234(v5);

      v6 = *&v0[v3];
      if (v6)
      {
        [v6 setLineBreakMode:2];
      }
    }
  }

  else
  {
    if (v4)
    {
      [v4 removeFromSuperview];
      v7 = *&v0[v3];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v3] = 0;

    [v0 setNeedsLayout];
  }

  v8 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v8)
  {
    if (*(v2 + 1))
    {
      v9 = v8;

      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = v8;
      v10 = 0;
    }

    [v9 setText:v10];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1004FF418(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC8AppStore9BadgeView_action;
  swift_beginAccess();
  sub_10003715C(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer);
  sub_100031660(v1 + v6, v5, &qword_10097B3F0, &qword_1007B3120);
  v8 = sub_10002849C(&unk_10097B3D0, "α\b");
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  v10 = v7;
  sub_10002B894(v5, &qword_10097B3F0, &qword_1007B3120);
  [v10 setEnabled:v9];

  return sub_10002B894(a1, &qword_10097B3F0, &qword_1007B3120);
}

uint64_t sub_1004FF58C()
{
  v58 = type metadata accessor for BadgeValueViewAlignment();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v44[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = type metadata accessor for BadgeType();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin(v1);
  v57 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for BadgeCaptionCappingType();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v55 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for BadgeViewSpacing();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v52 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_100005644(v11, qword_1009D2508);
  v49 = sub_1000056A8(v11, qword_1009D2508);
  if (qword_10096DE78 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D0AE8);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v16 = v14 + 16;
  v15(v10, v13, v12);
  v17 = v8[13];
  v18 = enum case for FontSource.useCase(_:);
  v68 = v8 + 13;
  v65 = v17;
  v17(v10);
  v19 = type metadata accessor for StaticDimension();
  v86[3] = v19;
  v86[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v86);
  v84 = v7;
  v85 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v83);
  v21 = v8[2];
  v69 = v8 + 2;
  v67 = v21;
  v21(v20, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v22 = v8[1];
  v66 = v8 + 1;
  v63 = v22;
  v22(v10, v7);
  if (qword_10096DE70 != -1)
  {
    swift_once();
  }

  v60 = sub_1000056A8(v12, qword_1009D0AD0);
  v15(v10, v60, v12);
  v45 = v18;
  v65(v10, v18, v7);
  v84 = v19;
  v85 = &protocol witness table for StaticDimension;
  sub_1000056E0(v83);
  v23 = v16;
  v24 = v15;
  v81 = v7;
  v82 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v80);
  v26 = v67;
  v67(v25, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v27 = v63;
  v63(v10, v7);
  v64 = v12;
  v61 = v23;
  v62 = v24;
  v24(v10, v60, v12);
  v28 = v45;
  v29 = v65;
  v65(v10, v45, v7);
  v81 = v19;
  v82 = &protocol witness table for StaticDimension;
  sub_1000056E0(v80);
  v78 = v7;
  v79 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v77);
  v26(v30, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v27(v10, v7);
  v31 = v28;
  v32 = v19;
  v33 = v29;
  if (qword_10096DE58 != -1)
  {
    swift_once();
  }

  v34 = v64;
  v46 = sub_1000056A8(v64, qword_1009D0A88);
  v35 = v62;
  v62(v10, v46, v34);
  v33(v10, v28, v7);
  v78 = v32;
  v79 = &protocol witness table for StaticDimension;
  sub_1000056E0(v77);
  v36 = v33;
  v60 = v32;
  v75 = v7;
  v76 = &protocol witness table for FontSource;
  v37 = sub_1000056E0(v74);
  v67(v37, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v63(v10, v7);
  v38 = v46;
  v35(v10, v46, v64);
  v36(v10, v28, v7);
  v75 = v60;
  v76 = &protocol witness table for StaticDimension;
  sub_1000056E0(v74);
  v72 = v7;
  v73 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v71);
  v40 = v67;
  v67(v39, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v41 = v63;
  v63(v10, v7);
  v62(v10, v38, v64);
  v65(v10, v31, v7);
  v72 = v60;
  v73 = &protocol witness table for StaticDimension;
  sub_1000056E0(v71);
  v70[3] = v7;
  v70[4] = &protocol witness table for FontSource;
  v42 = sub_1000056E0(v70);
  v40(v42, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v41(v10, v7);
  (*(v47 + 104))(v52, enum case for BadgeViewSpacing.standard(_:), v48);
  (*(v50 + 104))(v55, enum case for BadgeCaptionCappingType.none(_:), v51);
  (*(v53 + 104))(v57, enum case for BadgeType.chartPosition(_:), v54);
  (*(v56 + 104))(v59, enum case for BadgeValueViewAlignment.baseline(_:), v58);
  return BadgeViewRibbonLayout.Metrics.init(headingSpace:captionSpace:captionBottomSpace:badgeValueEditorsChoiceSpace:badgeValueIconSpace:badgeValueTextSpace:badgeValueBaselineOffset:badgeIconSize:valueBufferSpace:spacingType:captionCappingType:badgeType:isLabelLeading:valueViewAlignment:alignment:regularBadgeInsets:accessibleBadgeInsets:)();
}

char *sub_1004FFED4(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  v13 = enum case for BadgeLeadingValue.infer(_:);
  v14 = type metadata accessor for BadgeLeadingValue();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC8AppStore9BadgeView_caption];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_captionView] = 0;
  v16 = &v4[OBJC_IVAR____TtC8AppStore9BadgeView_heading];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore9BadgeView_valueText];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_alignment] = 1;
  v4[OBJC_IVAR____TtC8AppStore9BadgeView_isTruncatable] = 1;
  v18 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  v19 = enum case for BadgeCaptionCappingType.none(_:);
  v20 = type metadata accessor for BadgeCaptionCappingType();
  (*(*(v20 - 8) + 104))(&v4[v18], v19, v20);
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_valueView] = 0;
  v4[OBJC_IVAR____TtC8AppStore9BadgeView_requiresRemainingWidth] = 0;
  v21 = OBJC_IVAR____TtC8AppStore9BadgeView_valueViewAlignment;
  v22 = enum case for BadgeValueViewAlignment.baseline(_:);
  v23 = type metadata accessor for BadgeValueViewAlignment();
  (*(*(v23 - 8) + 104))(&v4[v21], v22, v23);
  v24 = OBJC_IVAR____TtC8AppStore9BadgeView_spacing;
  v25 = enum case for BadgeViewSpacing.standard(_:);
  v26 = type metadata accessor for BadgeViewSpacing();
  (*(*(v26 - 8) + 104))(&v4[v24], v25, v26);
  v27 = OBJC_IVAR____TtC8AppStore9BadgeView_action;
  v28 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v28 - 8) + 56))(&v4[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
  v30 = enum case for BadgeType.custom(_:);
  v31 = type metadata accessor for BadgeType();
  (*(*(v31 - 8) + 104))(&v4[v29], v30, v31);
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView] = 0;
  v32 = &v4[OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon];
  *v32 = 0;
  v32[8] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_overallBadgeCount] = 0;
  v33 = OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer;
  *&v4[v33] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v34 = OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v34] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v36 = OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel;
  *&v4[v36] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v37 = type metadata accessor for BadgeView(0);
  v61.receiver = v4;
  v61.super_class = v37;
  v38 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 systemGrayColor];
  [v44 setTintColor:v45];

  v46 = OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer;
  [*&v44[OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer] setEnabled:0];
  v47 = *&v44[v46];
  [v47 addTarget:v44 action:"didTapBadgeView:"];

  [v44 addGestureRecognizer:*&v44[v46]];
  v48 = OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel;
  [*&v44[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel] setNumberOfLines:1];
  [*&v44[v48] setTextAlignment:1];
  [*&v44[v48] setLineBreakMode:2];
  v49 = qword_10096DE70;
  v50 = *&v44[v48];
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for FontUseCase();
  v52 = sub_1000056A8(v51, qword_1009D0AD0);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v54(v11, v52, v51);
  v55 = *(v53 + 56);
  v55(v11, 0, 1, v51);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [v44 addSubview:*&v44[v48]];
  v56 = OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel;
  [*&v44[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel] setNumberOfLines:1];
  [*&v44[v56] setTextAlignment:1];
  [*&v44[v56] setLineBreakMode:2];
  v57 = qword_10096DE78;
  v58 = *&v44[v56];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_1000056A8(v51, qword_1009D0AE8);
  v54(v11, v59, v51);
  v55(v11, 0, 1, v51);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [v44 addSubview:*&v44[v56]];
  sub_100500E50();
  sub_100501240();

  return v44;
}

id sub_1005005E8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BadgeView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10050094C()
{
  v1 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v1 - 8);
  v32 = &v30 - v2;
  v31 = type metadata accessor for BadgeCaptionCappingType();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeLeadingValue();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for BadgeLeadingValue.infer(_:), v6, v8);
  v11 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  swift_beginAccess();
  (*(v7 + 24))(&v0[v11], v10, v6);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v7 + 8))(v10, v6);
  v12 = &v0[OBJC_IVAR____TtC8AppStore9BadgeView_caption];
  *v12 = 0;
  *(v12 + 1) = 0;

  v13 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel];
  [v13 setText:0];

  LOBYTE(v10) = static String.isNilOrEmpty(_:)();

  [v13 setHidden:v10 & 1];
  [v0 setNeedsLayout];
  v14 = &v0[OBJC_IVAR____TtC8AppStore9BadgeView_heading];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel];
  [v15 setText:0];

  LOBYTE(v7) = static String.isNilOrEmpty(_:)();

  [v15 setHidden:v7 & 1];
  [v0 setNeedsLayout];
  v16 = &v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueText];
  *v16 = 0;
  *(v16 + 1) = 0;

  sub_1004FF2BC();
  v17 = OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel;
  v18 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v0[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v0[v17] = 0;

  [v0 setNeedsLayout];
  v20 = OBJC_IVAR____TtC8AppStore9BadgeView_valueView;
  v21 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueView];
  if (v21)
  {
    [v21 removeFromSuperview];
    v22 = *&v0[v20];
  }

  else
  {
    v22 = 0;
  }

  *&v0[v20] = 0;

  [v0 setNeedsLayout];
  v23 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView];
  *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView] = 0;

  v24 = OBJC_IVAR____TtC8AppStore9BadgeView_alignment;
  *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_alignment] = 4;
  [*&v0[v17] setTextAlignment:4];
  [v13 setTextAlignment:*&v0[v24]];
  [v15 setTextAlignment:*&v0[v24]];
  [v0 setNeedsLayout];
  v0[OBJC_IVAR____TtC8AppStore9BadgeView_isTruncatable] = 1;
  [v0 setNeedsLayout];
  v25 = v31;
  (*(v3 + 104))(v5, enum case for BadgeCaptionCappingType.none(_:), v31);
  v26 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v3 + 24))(&v0[v26], v5, v25);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v3 + 8))(v5, v25);
  v27 = sub_10002849C(&unk_10097B3D0, "α\b");
  v28 = v32;
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  return sub_1004FF418(v28);
}

void sub_100500E50()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_10096DE58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0A88);
  v7 = [v1 traitCollection];
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v7).super.isa;
  v9 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v9)
  {
    v17 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];

    if (v17)
    {
      v10 = *&v1[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
      if (v10)
      {
        v11 = v10;
        [v11 setFont:v17];
      }

      v12 = v17;

      return;
    }
  }

  else
  {
  }

  v13 = *&v1[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v13)
  {
    v14 = *(v5 - 8);
    (*(v14 + 16))(v4, v6, v5);
    (*(v14 + 56))(v4, 0, 1, v5);
    v15 = v13;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }
}

void sub_1005010B8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tintColor];
    [v2 setTintColor:v3];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 tintColor];
    [v5 setTextColor:v6];
  }
}

void sub_100501240()
{
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = [v1 systemGrayColor];
  [v0 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel];
  v5 = [v1 systemGrayColor];
  [v4 setTextColor:v5];

  v6 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  isa = UIColor.init(light:dark:)([objc_allocWithZone(UIColor) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.4], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.921568627, 0.921568627, 0.960784314, 0.5)).super.isa;
  [v6 setTextColor:isa];
}

void sub_1005013E0(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = type metadata accessor for BadgeType();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for BadgeViewSpacing();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeLeadingValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v43 - v10;
  v44 = type metadata accessor for BadgeValueViewAlignment();
  v11 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BadgeCaptionCappingType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  v19 = sub_1000056A8(v18, qword_1009D2508);
  (*(*(v18 - 8) + 16))(a1, v19, v18);
  v20 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v15 + 16))(v17, &v2[v20], v14);
  BadgeViewRibbonLayout.Metrics.captionCappingType.setter();
  v21 = OBJC_IVAR____TtC8AppStore9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v2[v21], v44);
  BadgeViewRibbonLayout.Metrics.valueViewAlignment.setter();
  BadgeViewRibbonLayout.Metrics.alignment.setter();
  v22 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  swift_beginAccess();
  v23 = v45;
  (*(v7 + 16))(v45, &v2[v22], v6);
  v24 = v46;
  (*(v7 + 104))(v46, enum case for BadgeLeadingValue.view(_:), v6);
  sub_1005039D8(&qword_100989608, &type metadata accessor for BadgeLeadingValue, &protocol conformance descriptor for BadgeLeadingValue);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v7 + 8);
  v25(v24, v6);
  v25(v23, v6);
  BadgeViewRibbonLayout.Metrics.isLabelLeading.setter();
  v26 = OBJC_IVAR____TtC8AppStore9BadgeView_spacing;
  swift_beginAccess();
  (*(v48 + 16))(v47, &v2[v26], v49);
  BadgeViewRibbonLayout.Metrics.spacingType.setter();
  v27 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
  swift_beginAccess();
  (*(v51 + 16))(v50, &v2[v27], v52);
  BadgeViewRibbonLayout.Metrics.badgeType.setter();
  v28 = *&v2[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView];
  if (v28)
  {
    v29 = v28;
    ArtworkView.imageBaselineOffsetFromBottom.getter();
  }

  BadgeViewRibbonLayout.Metrics.badgeValueBaselineOffset.setter();
  if ((v2[OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon + 8] & 1) == 0)
  {
    v30 = *&v2[OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon];
    v31 = *&v2[OBJC_IVAR____TtC8AppStore9BadgeView_overallBadgeCount];
    v32 = [v2 traitCollection];
    v33 = UITraitCollection.prefersRightToLeftLayouts.getter();
    v34 = v33;
    if (!v30 && (v33 & 1) == 0)
    {
      goto LABEL_10;
    }

    if (__OFSUB__(v31, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (((v30 == v31 - 1) & v33) == 1)
    {
LABEL_10:
      v35 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
      *(v36 + 8) = 0;
      v35(v53, 0);
      v37 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
      *(v38 + 8) = 0;
      v37(v53, 0);
    }

    if (!v30 && ((v34 ^ 1) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!__OFSUB__(v31, 1))
    {
      if ((v30 != v31 - 1) | v34 & 1)
      {
LABEL_16:

        return;
      }

LABEL_15:
      v39 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
      *(v40 + 24) = 0;
      v39(v53, 0);
      v41 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
      *(v42 + 24) = 0;
      v41(v53, 0);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_100501B24()
{
  v27 = type metadata accessor for LayoutRect();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for BadgeViewRibbonLayout();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeView(0);
  v44.receiver = v0;
  v44.super_class = v9;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  sub_1005013E0(v5);
  v10 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel];
  v11 = type metadata accessor for DynamicTypeLabel();
  v42 = v11;
  v43 = &protocol witness table for UILabel;
  v41 = v10;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_captionView];
  v13 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v39 = v13;
  v40 = &protocol witness table for UIView;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel];
  }

  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v15)
  {
    v16 = &protocol witness table for UILabel;
    v17 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  }

  else
  {
    v17 = 0;
    v11 = 0;
    v16 = 0;
    v34 = 0;
    v35 = 0;
  }

  v33 = v17;
  v36 = v11;
  v37 = v16;
  v18 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueView];
  if (v18)
  {
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v29 = 0;
    v30 = 0;
  }

  v28 = v18;
  v31 = v13;
  v32 = v19;
  v20 = v15;
  v21 = v18;
  v22 = v10;
  v23 = v12;
  BadgeViewRibbonLayout.init(metrics:headingLabel:captionView:valueLabel:valueView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  BadgeViewRibbonLayout.placeChildren(relativeTo:in:)();
  (*(v26 + 8))(v2, v27);
  return (*(v6 + 8))(v8, v25);
}

double sub_100501E84(double a1, double a2)
{
  v3 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeViewRibbonLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005013E0(v5);
  v10 = *(v2 + OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel);
  v11 = type metadata accessor for DynamicTypeLabel();
  v27[18] = v11;
  v27[19] = &protocol witness table for UILabel;
  v27[15] = v10;
  v12 = *(v2 + OBJC_IVAR____TtC8AppStore9BadgeView_captionView);
  v13 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v27[13] = v13;
  v27[14] = &protocol witness table for UIView;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *(v2 + OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel);
  }

  v27[10] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel);
  if (v15)
  {
    v16 = &protocol witness table for UILabel;
    v17 = *(v2 + OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel);
  }

  else
  {
    v17 = 0;
    v11 = 0;
    v16 = 0;
    v27[6] = 0;
    v27[7] = 0;
  }

  v27[5] = v17;
  v27[8] = v11;
  v27[9] = v16;
  v18 = *(v2 + OBJC_IVAR____TtC8AppStore9BadgeView_valueView);
  if (v18)
  {
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v27[1] = 0;
    v27[2] = 0;
  }

  v27[0] = v18;
  v27[3] = v13;
  v27[4] = v19;
  v20 = v15;
  v21 = v18;
  v22 = v10;
  v23 = v12;
  BadgeViewRibbonLayout.init(metrics:headingLabel:captionView:valueLabel:valueView:)();
  sub_1005039D8(&qword_100989610, &type metadata accessor for BadgeViewRibbonLayout, &protocol conformance descriptor for BadgeViewRibbonLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v25 = v24;
  (*(v7 + 8))(v9, v6);
  return v25;
}

void sub_100502178(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v6 = OBJC_IVAR____TtC8AppStore9BadgeView_alignment;
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  *&v2[OBJC_IVAR____TtC8AppStore9BadgeView_alignment] = v7;
  [*&v2[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel] setTextAlignment:?];
  [*&v2[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel] setTextAlignment:*&v2[v6]];
  [*&v2[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel] setTextAlignment:*&v2[v6]];
  [v2 setNeedsLayout];
  sub_100500E50();
}

void sub_100502378(uint64_t a1)
{
  type metadata accessor for BadgeLeadingValue();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BadgeCaptionCappingType();
    if (v2 <= 0x3F)
    {
      type metadata accessor for BadgeValueViewAlignment();
      if (v3 <= 0x3F)
      {
        type metadata accessor for BadgeViewSpacing();
        if (v4 <= 0x3F)
        {
          sub_1000798B8(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for BadgeType();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100502628()
{
  if (v0[qword_100989588] == 1)
  {
    if (*&v0[qword_100989590])
    {
      return;
    }

    v2 = *&v0[qword_100989598];
    v3 = *&v0[qword_100989568];
    if (v2 == -1)
    {
      v6 = v3;
      v7 = [v0 traitCollection];
      v4 = UITraitCollection.prefersRightToLeftLayouts.getter();
    }

    else
    {
      v4 = v2 == 1;
      v5 = v3;
    }

    v8 = sub_1005F2CF8(v3, v4 & 1);

    v1 = v8;
  }

  else
  {
    v1 = 0;
  }

  sub_100502718(v1);
}

void sub_100502718(void *a1)
{
  v3 = qword_100989590;
  v4 = *&v1[qword_100989590];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v10 = a1;

  v6 = [v1 layer];
  [v6 setMasksToBounds:0];

  v7 = *&v1[v3];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 layer];
    [v9 addSublayer:v8];
  }
}

id sub_100502804(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, "text");
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_1005028B8(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = a1;

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v10.receiver = a1;
  v10.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v10, "setText:", v5);

  type metadata accessor for LanguageAwareString();
  static LanguageAwareString.alwaysGenerateAttributedString.getter();
  static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
  v7 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)();
  if (v7)
  {
    v8 = v7;
    [a1 bounds];
    CGRectGetWidth(v11);
    [a1 lineBreakMode];
    v9 = dispatch thunk of LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:)();
  }

  else
  {
    v9 = -1;
  }

  *&a1[qword_100989598] = v9;
}

id sub_100502A00(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = objc_msgSendSuper2(&v3, "attributedText");

  return v1;
}

void sub_100502A5C(void *a1, uint64_t a2, void *a3)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v4 = v11.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v11, "setAttributedText:", v5);
  if (v5)
  {
    v6 = type metadata accessor for LanguageAwareString();
    v7 = v5;
    static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
    v8 = objc_allocWithZone(v6);
    v9 = LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)();
    [v4 bounds];
    CGRectGetWidth(v12);
    [v4 lineBreakMode];
    v10 = dispatch thunk of LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:)();
  }

  else
  {
    v10 = -1;
  }

  *&v4[qword_100989598] = v10;
}

void sub_100502B7C()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (v0[qword_100989580] == 1)
  {
    [v0 frame];
    [v0 sizeThatFits:{v1, v2}];
    v4 = v3;
    [v0 frame];
    v5 = floor(v4 - CGRectGetWidth(v12)) > COERCE_DOUBLE(1);
    v6 = qword_100989588;
    v0[qword_100989588] = v5;
    sub_100502628();
    v7 = *&v0[qword_100989590];
    if (v7)
    {
      if (v0[v6] == 1)
      {
        v8 = v7;
        [v0 frame];
        CGRectGetWidth(v13);
        [v0 bounds];
        CGRectGetMaxX(v14);
        [v0 bounds];
        CGRectGetMinY(v15);
        [v0 bounds];
        CGRectGetHeight(v16);
        v9 = *&v0[qword_100989598];
        v10 = v8;
        [v0 bounds];
        if (v9 == -1)
        {
          CGRect.withLayoutDirection(in:relativeTo:)();
        }

        else
        {
          CGRect.withLayoutDirection(_:relativeTo:)();
        }

        [v10 setFrame:?];
      }
    }
  }
}

void sub_100502D58(void *a1)
{
  v1 = a1;
  sub_100502B7C();
}

void sub_100502DA0()
{
  if (*&v0[qword_100989590])
  {
    v1 = *&v0[qword_100989598];
    v2 = *&v0[qword_100989568];
    if (v1 == -1)
    {
      v5 = v2;
      v6 = [v0 traitCollection];
      v3 = UITraitCollection.prefersRightToLeftLayouts.getter();
    }

    else
    {
      v3 = v1 == 1;
      v4 = v2;
    }

    v7 = sub_1005F2CF8(v2, v3 & 1);

    sub_100502718(v7);
  }
}

void sub_100502E74(void *a1)
{
  v1 = a1;
  sub_100502DA0();
}

uint64_t sub_100502EBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v22[1] = a4;
  v23 = a2;
  v24 = a3;
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = v22 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_100989568;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  *&v18[v19] = static UIColor.defaultBackground.getter();
  *&v18[qword_100989570] = 0x3FD0000000000000;
  *&v18[qword_100989578] = 0x4034000000000000;
  v18[qword_100989580] = 1;
  v18[qword_100989588] = 0;
  *&v18[qword_100989590] = 0;
  *&v18[qword_100989598] = -1;
  sub_100031660(a1, v17, &qword_100972ED0, &unk_1007B17B0);
  (*(v12 + 16))(v14, a6, v11);
  v20 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  (*(v12 + 8))(a6, v11);
  sub_10002B894(a1, &qword_100972ED0, &unk_1007B17B0);
  return v20;
}

void sub_100503100()
{
  v1 = *(v0 + qword_100989590);
}

id sub_100503140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100503178(uint64_t a1)
{
  v2 = *(a1 + qword_100989590);
}

unint64_t sub_1005031E0()
{
  result = qword_100989600;
  if (!qword_100989600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989600);
  }

  return result;
}

id sub_100503234(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v6;
    [v7 setNumberOfLines:1];
    [v7 setLineBreakMode:2];
    [v7 setTextAlignment:1];
    v8 = [v1 tintColor];
    [v7 setTextColor:v8];

    [v1 addSubview:v7];
    sub_100500E50();
  }

  return [v1 setNeedsLayout];
}

void sub_10050334C()
{
  v1 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  v2 = enum case for BadgeLeadingValue.infer(_:);
  v3 = type metadata accessor for BadgeLeadingValue();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = (v0 + OBJC_IVAR____TtC8AppStore9BadgeView_caption);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_captionView) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore9BadgeView_heading);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_alignment) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_isTruncatable) = 1;
  v7 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  v8 = enum case for BadgeCaptionCappingType.none(_:);
  v9 = type metadata accessor for BadgeCaptionCappingType();
  (*(*(v9 - 8) + 104))(v0 + v7, v8, v9);
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_requiresRemainingWidth) = 0;
  v10 = OBJC_IVAR____TtC8AppStore9BadgeView_valueViewAlignment;
  v11 = enum case for BadgeValueViewAlignment.baseline(_:);
  v12 = type metadata accessor for BadgeValueViewAlignment();
  (*(*(v12 - 8) + 104))(v0 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC8AppStore9BadgeView_spacing;
  v14 = enum case for BadgeViewSpacing.standard(_:);
  v15 = type metadata accessor for BadgeViewSpacing();
  (*(*(v15 - 8) + 104))(v0 + v13, v14, v15);
  v16 = OBJC_IVAR____TtC8AppStore9BadgeView_action;
  v17 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
  v19 = enum case for BadgeType.custom(_:);
  v20 = type metadata accessor for BadgeType();
  (*(*(v20 - 8) + 104))(v0 + v18, v19, v20);
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_artworkView) = 0;
  v21 = v0 + OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_overallBadgeCount) = 0;
  v22 = OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer;
  *(v0 + v22) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v23) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel;
  *(v0 + v25) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005036A4()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_10002849C(&unk_10097B3D0, "α\b");
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC8AppStore9BadgeView_action;
  swift_beginAccess();
  sub_100031660(v0 + v11, v6, &qword_10097B3F0, &qword_1007B3120);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_10097B3F0;
    v13 = &qword_1007B3120;
    v14 = v6;
    return sub_10002B894(v14, v12, v13);
  }

  (*(v8 + 32))(v10, v6, v7);
  ObjectGraphPair.objectGraph.getter();
  v15 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100972A00;
    v13 = &unk_1007B3130;
    v14 = v3;
    return sub_10002B894(v14, v12, v13);
  }

  ObjectGraphPair.value.getter();
  v18 = ObjectGraphPair.objectGraph.getter();
  sub_1005F9AF4(v19, 1, v18, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v16 + 8))(v3, v15);
}

uint64_t sub_1005039D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100503A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for ComponentSeparator.Position();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = enum case for ComponentSeparator.Position.top(_:);
  v11 = *(v6 + 104);
  (v11)(v9, enum case for ComponentSeparator.Position.top(_:), v5, v7);
  v12 = ComponentSeparator.Position.rawValue.getter();
  v14 = v13;
  v36 = v6;
  v33 = *(v6 + 8);
  v33(v9, v5);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  v34 = a1;
  v35 = a2;
  LOBYTE(v12) = String.hasPrefixCaseInsensitive(_:)(v15);

  if (v12 & 1) != 0 || (v10 = enum case for ComponentSeparator.Position.bottom(_:), v11(v9, enum case for ComponentSeparator.Position.bottom(_:), v5), v16 = ComponentSeparator.Position.rawValue.getter(), v18 = v17, v33(v9, v5), v19._countAndFlagsBits = v16, v19._object = v18, LOBYTE(v16) = String.hasPrefixCaseInsensitive(_:)(v19), , (v16) || (v10 = enum case for ComponentSeparator.Position.leading(_:), v11(v9, enum case for ComponentSeparator.Position.leading(_:), v5), v20 = ComponentSeparator.Position.rawValue.getter(), v22 = v21, v33(v9, v5), v23._countAndFlagsBits = v20, v23._object = v22, LOBYTE(v20) = String.hasPrefixCaseInsensitive(_:)(v23), , (v20) || (v10 = enum case for ComponentSeparator.Position.trailing(_:), v11(v9, enum case for ComponentSeparator.Position.trailing(_:), v5), v24 = ComponentSeparator.Position.rawValue.getter(), v26 = v25, v33(v9, v5), v27._countAndFlagsBits = v24, v27._object = v26, v28 = String.hasPrefixCaseInsensitive(_:)(v27), , v28))
  {
    v29 = v37;
    v11(v37, v10, v5);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    v29 = v37;
  }

  return (*(v36 + 56))(v29, v30, 1, v5);
}

char *sub_100503CEC(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ComponentSeparator.Position();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v10);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  v13 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor;
  *&v4[v14] = [objc_opt_self() separatorColor];
  v15 = type metadata accessor for SeparatorSupplementaryView(0);
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v16 setUserInteractionEnabled:0];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v16 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v17 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView;
  [*&v16[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView] setBackgroundColor:*&v16[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor]];
  [v16 addSubview:*&v16[v17]];

  return v16;
}

void sub_100503F40()
{
  v1 = v0;
  v2 = type metadata accessor for ComponentSeparator();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setNeedsLayout];
  v7 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  v8 = ComponentSeparator.color.getter();
  (*(v3 + 8))(v6, v2);
  if (!v8)
  {
    v8 = [objc_opt_self() separatorColor];
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor];
  *&v1[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor] = v8;
  v10 = v8;

  [*&v1[OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView] setBackgroundColor:v10];
}

double sub_1005040C0(double a1)
{
  v25 = type metadata accessor for ComponentSeparator.Position();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentSeparator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v26 = v1;
  v13(v11, v1 + v12, v5);
  ComponentSeparator.position.getter();
  v14 = *(v6 + 8);
  v15 = v11;
  v16 = v27;
  v17 = v25;
  v14(v15, v5);
  v18 = (*(v16 + 88))(v4, v17);
  if (v18 == enum case for ComponentSeparator.Position.top(_:) || v18 == enum case for ComponentSeparator.Position.bottom(_:))
  {
    v13(v8, v26 + v12, v5);
    ComponentSeparator.height(in:)();
    v14(v8, v5);
  }

  else
  {
    v24 = v14;
    if (v18 == enum case for ComponentSeparator.Position.leading(_:) || v18 == enum case for ComponentSeparator.Position.trailing(_:))
    {
      v13(v8, v26 + v12, v5);
      ComponentSeparator.height(in:)();
      a1 = v21;
      v24(v8, v5);
    }

    else
    {
      (*(v16 + 8))(v4, v17);
      return 0.0;
    }
  }

  return a1;
}

id sub_100504594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorSupplementaryView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeparatorSupplementaryView(uint64_t a1)
{
  result = qword_100989650;
  if (!qword_100989650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005046AC(uint64_t a1)
{
  result = type metadata accessor for ComponentSeparator();
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

void sub_10050474C()
{
  v1 = type metadata accessor for ComponentSeparator.Position();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v2);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  v5 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_lineColor;
  *(v0 + v6) = [objc_opt_self() separatorColor];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005048BC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for ComponentSeparator.Position();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PageGrid.Direction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v14 = v29;
  v15 = UITraitCollection.isSizeClassRegular.getter();

  if (v15 & 1) != 0 && (swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , v16 = v28, v17 = UITraitCollection.prefersAccessibilityLayouts.getter(), v16, (v17 & 1) == 0) && (swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , PageGrid.direction.getter(), (*(v11 + 8))(v13, v10), (*(v4 + 104))(v6, enum case for PageGrid.Direction.horizontal(_:), v3), v18 = static PageGrid.Direction.== infix(_:_:)(), v19 = *(v4 + 8), v19(v6, v3), v19(v9, v3), (v18))
  {
    (*(v25 + 104))(v24, enum case for ComponentSeparator.Position.top(_:), v26);
    v20 = v27;
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v27;
  }

  v22 = type metadata accessor for ComponentSeparator();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

double sub_100504C5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_100504CB0(void (*a1)(char *, uint64_t), uint64_t a2, double a3, double a4)
{
  v9 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v9 - 8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Artwork.Crop();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SmallLockupLayout.Metrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseLockup();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v72 = v4;
    v73 = v12;
    v77 = v11;
    v21 = *(v4 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
    v22 = *(v21 + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
    v74 = a1;
    if (v22)
    {
      v23 = v22;

      sub_1001BCDCC(a3, a4, v20, v22, a2);
    }

    else
    {
      v42 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;

      InAppPurchaseLockup.parent.getter();
      v43 = Lockup.icon.getter();

      if (v43)
      {
        v75 = a2;
        v44 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
        swift_beginAccess();
        (*(v16 + 16))(v18, v21 + v44, v15);
        SmallLockupLayout.Metrics.artworkSize.getter();
        (*(v16 + 8))(v18, v15);
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        v69 = *(v73 + 8);
        v70 = v73 + 8;
        v69(v14, v77);
        v71 = Artwork.config(_:mode:prefersLayeredImage:)();
        v68 = v42;
        v45 = *(v21 + v42);
        if (v45)
        {
          v46 = (v45 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
        }

        else
        {
          v46 = (v21 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
        }

        v47 = *v46;
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v47 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180, UIColor_ptr);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();

        v48 = *(v21 + v68);
        if (v48)
        {
          v49 = (v48 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
        }

        else
        {
          v49 = (v21 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
        }

        v50 = *v49;
        Artwork.crop.getter();
        v51 = Artwork.Crop.preferredContentMode.getter();
        v69(v14, v77);
        [v50 setContentMode:v51];

        v52 = *(v21 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
        type metadata accessor for ArtworkView();
        sub_1005080FC(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        v53 = v52;
        a2 = v75;
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }

    InAppPurchaseLockup.parent.getter();
    v54 = Lockup.icon.getter();

    if (v54)
    {
      v75 = a2;
      v55 = *(v72 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
      v56 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v16 + 16))(v18, v55 + v56, v15);
      SmallLockupLayout.Metrics.artworkSize.getter();
      (*(v16 + 8))(v18, v15);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v57 = v77;
      v73 = *(v73 + 8);
      (v73)(v14, v77);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v58 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
      v59 = *(v55 + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
      if (v59)
      {
        v60 = (v59 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
      }

      else
      {
        v60 = (v55 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      }

      v61 = *v60;
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v61 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v62 = *(v55 + v58);
      if (v62)
      {
        v63 = (v62 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
      }

      else
      {
        v63 = (v55 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      }

      v64 = *v63;
      Artwork.crop.getter();
      v65 = Artwork.Crop.preferredContentMode.getter();
      (v73)(v14, v57);
      [v64 setContentMode:v65];

      v66 = *(v55 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      type metadata accessor for ArtworkView();
      sub_1005080FC(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v67 = v66;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  else if (Lockup.icon.getter())
  {
    v75 = a2;
    v24 = v12;
    v25 = *(v4 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
    v26 = v24;
    v27 = v11;
    v28 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v16 + 16))(v18, v25 + v28, v15);
    SmallLockupLayout.Metrics.artworkSize.getter();
    (*(v16 + 8))(v18, v15);
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    v29 = *(v26 + 8);
    v77 = v27;
    v74 = v29;
    v29(v14, v27);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v30 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
    v31 = *(v25 + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
    if (v31)
    {
      v32 = (v31 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
    }

    else
    {
      v32 = (v25 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    }

    v33 = *v32;
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v33 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v34 = *(v25 + v30);
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
    }

    else
    {
      v35 = (v25 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    }

    v36 = *v35;
    Artwork.crop.getter();
    v37 = Artwork.Crop.preferredContentMode.getter();
    v74(v14, v77);
    [v36 setContentMode:v37];

    v38 = *(v25 + v30);
    if (v38)
    {
      v39 = (v38 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
    }

    else
    {
      v39 = (v25 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    }

    v40 = *v39;
    type metadata accessor for ArtworkView();
    sub_1005080FC(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v41 = v40;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

uint64_t sub_1005056F8()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D25C0);
  sub_1000056A8(v0, qword_1009D25C0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10050585C(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v46 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0860);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = type metadata accessor for StaticDimension();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v6, qword_1009D0878);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v54);
  v44(v17, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v54);
  v21 = v44;
  v44(v20, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v54);
  v21(v26, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v54);
  v21(v28, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_1000056A8(v45, qword_1009D08A8);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v54);
  v21(v32, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v29, qword_1009D0890);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v54);
  v37 = v44;
  v44(v36, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v54);
  v37(v39, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_1005061D8()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock);
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock + 8);
  v4 = (*(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock);
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_10000827C(v2, v3);
  sub_10000827C(v2, v3);
  sub_10001F63C(v5, v6);
  sub_10070B000();
  sub_10001F63C(v2, v3);
  v7 = *v1;
  v8 = v1[1];
  v9 = (*(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock);
  v10 = *v9;
  v11 = v9[1];
  *v9 = *v1;
  v9[1] = v8;
  sub_10000827C(v7, v8);
  sub_10000827C(v7, v8);
  sub_10001F63C(v10, v11);
  sub_10070B000();

  return sub_10001F63C(v7, v8);
}

char *sub_1005062D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = &v5[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter] = 0;
  type metadata accessor for SmallLockupView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView] = v16;
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView] = v17;
  v53.receiver = v5;
  v53.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  swift_unknownObjectWeakAssign();
  v20 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52.receiver = v18;
  v52.super_class = ObjectType;
  v24 = v18;
  objc_msgSendSuper2(&v52, "setLayoutMargins:", UIEdgeInsetsZero.top, left, bottom, right);
  v25 = *&v18[v19];
  v51.receiver = v24;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutMargins");
  [v25 setLayoutMargins:?];
  v26 = *&v18[v20];
  v50.receiver = v24;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutMargins");
  [v26 setLayoutMargins:?];
  [v24 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [*&v18[v19] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*(*&v18[v19] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView) setHidden:1];
  v27 = *&v18[v19];
  sub_100709C80(1);

  [v24 addSubview:*&v18[v20]];
  v49 = v19;
  [v24 addSubview:*&v18[v19]];
  [*&v18[v20] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = v24;
  sub_1005067F8();
  v28 = qword_10096DDA0;
  v29 = *(*&v18[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for FontUseCase();
  v31 = sub_1000056A8(v30, qword_1009D0878);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v47 = v31;
  v33(v13);
  v34 = *(v32 + 56);
  v34(v13, 0, 1, v30);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v35 = *(*&v18[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v36 = qword_10096DDA8;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v30, qword_1009D0890);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v39 = v49;
  v40 = *(*&v18[v49] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  (v33)(v13, v47, v30);
  v34(v13, 0, 1, v30);
  v41 = v40;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v42 = *(*&v18[v39] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  v43 = v42;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v44 = v48;

  return v44;
}

id sub_1005067F8()
{
  v1 = v0;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = static UIContentSizeCategory.>= infix(_:_:)();

  v10 = *&v1[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  if (v9)
  {
    if (qword_10096EB90 != -1)
    {
      swift_once();
    }

    v11 = sub_1000056A8(v2, qword_1009D3040);
    v24 = v3[2];
    v24(v6, v11, v2);
    v12 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v13 = v3[3];
    v13(&v10[v12], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v14 = v3[1];
    v14(v6, v2);
    [v10 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    v15 = *&v1[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v24(v6, v11, v2);
    v16 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v13(&v15[v16], v6, v2);
    swift_endAccess();
    [v15 setNeedsLayout];
    v14(v6, v2);
    return [v15 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
  }

  else
  {
    if (qword_10096EB88 != -1)
    {
      swift_once();
    }

    v18 = sub_1000056A8(v2, qword_1009D3028);
    v24 = v3[2];
    v24(v6, v18, v2);
    v19 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v20 = v3[3];
    v20(&v10[v19], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v21 = v3[1];
    v21(v6, v2);
    [v10 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
    v22 = *&v1[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v24(v6, v18, v2);
    v23 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v20(&v22[v23], v6, v2);
    swift_endAccess();
    [v22 setNeedsLayout];
    v21(v6, v2);
    return [v22 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
  }
}

void sub_100506E98(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = v2;
    LOBYTE(v4) = a2;
    v5 = *(v2 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = [v5 subviews];
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock = _swiftEmptyArrayStorage;
      if (v7 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v32 = v4;
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v4 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          type metadata accessor for OfferButton();
          if (swift_dynamicCastClass())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v9;
          if (v4 == i)
          {
            v12 = aBlock;
            LOBYTE(v4) = v32;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

      v12 = _swiftEmptyArrayStorage;
LABEL_20:

      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007B0B70;
      v14 = *(v3 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
      *(v13 + 32) = v14;
      if (v4)
      {
        v15 = v14;
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v16 = v15;
          goto LABEL_24;
        }

LABEL_52:
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
        v17 = v16;
        [v16 setHidden:0];

        v18 = objc_opt_self();
        v19 = swift_allocObject();
        *(v19 + 16) = v12;
        *(v19 + 24) = v13;
        v37 = sub_100140F44;
        v38 = v19;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_100007A08;
        v36 = &unk_1008C6A28;
        v20 = _Block_copy(&aBlock);

        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        v37 = sub_100140F4C;
        v38 = v21;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_100504C5C;
        v36 = &unk_1008C6A78;
        v22 = _Block_copy(&aBlock);

        [v18 animateWithDuration:4 delay:v20 options:v22 animations:0.33 completion:0.0];
        _Block_release(v22);
        _Block_release(v20);
        return;
      }

      if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = v12[2];
      }

      v24 = v14;
      if (v23)
      {
        v25 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= v12[2])
            {
              goto LABEL_50;
            }

            v26 = v12[v25 + 4];
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          [v26 setAlpha:0.0];
          [v27 setHidden:1];

          ++v25;
          if (v28 == v23)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_38:

      v29 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        v12 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v30 = *(v13 + 8 * v12 + 32);
          }

          v31 = v30;
          v12 = (v12 + 1);
          [v30 setAlpha:1.0];
          [v31 setHidden:0];
        }

        while (v29 != v12);
      }
    }
  }
}

double sub_100507398()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
  [v1 setHidden:0];
  v20 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
  [v2 setHidden:0];
  v3 = [v1 subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v2;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setHidden:0];
      [v8 setAlpha:1.0];

      ++v6;
      if (v9 == i)
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

  v10 = [v2 subviews];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setHidden:0];
      [v15 setAlpha:1.0];

      ++v13;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v17 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
  [*&v21[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setHidden:0];
  [*&v21[v17] setUserInteractionEnabled:1];
  v18 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v20 + v18) = 0;

  return result;
}

void sub_1005076FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaOverlayStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_1009896A8, &qword_1007D26F0);
  __chkstk_darwin(v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_10002849C(&qword_100974528, qword_1007E0520);
  __chkstk_darwin(v12 - 8);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v52 - v15;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v63 = a1;
  v23 = *(*(a1 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v24 = v5[13];
  v61 = enum case for MediaOverlayStyle.dark(_:);
  v60 = v24;
  v58 = v5 + 13;
  v24(&v52 - v21, v20);
  v59 = v5[7];
  v57 = v5 + 7;
  v59(v22, 0, 1, v4);
  v62 = v7;
  v25 = *(v7 + 48);
  v64 = a2;
  sub_10050808C(a2, v11);
  sub_10050808C(v22, &v11[v25]);
  v26 = v5[6];
  v27 = v26(v11, 1, v4);
  v56 = v5;
  if (v27 != 1)
  {
    sub_10050808C(v11, v18);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v32 = v5[4];
      v54 = v26;
      v33 = v55;
      v32(v55, &v11[v25], v4);
      v53 = sub_1005080FC(&qword_100978AF0, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
      v34 = v23;
      v35 = v23;
      LODWORD(v53) = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v5[1];
      v37 = v33;
      v26 = v54;
      v36(v37, v4);
      sub_10002B894(v22, &qword_100974528, qword_1007E0520);
      v36(v18, v4);
      v23 = v34;
      sub_10002B894(v11, &qword_100974528, qword_1007E0520);
      v29 = v65;
      if (v53)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v31 = static UIColor.appTint.getter();
      goto LABEL_10;
    }

    v30 = v23;
    sub_10002B894(v22, &qword_100974528, qword_1007E0520);
    (v5[1])(v18, v4);
LABEL_6:
    sub_10002B894(v11, &qword_1009896A8, &qword_1007D26F0);
    v29 = v65;
    goto LABEL_7;
  }

  v28 = v23;
  sub_10002B894(v22, &qword_100974528, qword_1007E0520);
  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10002B894(v11, &qword_100974528, qword_1007E0520);
  v29 = v65;
LABEL_9:
  v31 = [objc_opt_self() whiteColor];
LABEL_10:
  v38 = v31;
  [v23 setTintColor:v31];

  v39 = *(*(v63 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v60(v29, v61, v4);
  v59(v29, 0, 1, v4);
  v40 = *(v62 + 48);
  v41 = v67;
  sub_10050808C(v64, v67);
  sub_10050808C(v29, v41 + v40);
  if (v26(v41, 1, v4) == 1)
  {
    v42 = v39;
    sub_10002B894(v29, &qword_100974528, qword_1007E0520);
    if (v26((v41 + v40), 1, v4) == 1)
    {
      sub_10002B894(v41, &qword_100974528, qword_1007E0520);
LABEL_18:
      v44 = [objc_opt_self() whiteColor];
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_10050808C(v41, v66);
  if (v26((v41 + v40), 1, v4) == 1)
  {
    v43 = v39;
    sub_10002B894(v29, &qword_100974528, qword_1007E0520);
    (v56[1])(v66, v4);
LABEL_15:
    sub_10002B894(v41, &qword_1009896A8, &qword_1007D26F0);
    goto LABEL_16;
  }

  v45 = v66;
  v46 = v55;
  v47 = v56;
  (v56[4])(v55, v41 + v40, v4);
  sub_1005080FC(&qword_100978AF0, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v48 = v39;
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = v47[1];
  v50(v46, v4);
  sub_10002B894(v29, &qword_100974528, qword_1007E0520);
  v50(v45, v4);
  sub_10002B894(v41, &qword_100974528, qword_1007E0520);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_16:
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v44 = static UIColor.appTint.getter();
LABEL_19:
  v51 = v44;
  [v39 setTintColor:v44];
}

void sub_100507EBC(double a1, double a2, uint64_t a3, objc_class *a4)
{
  v8 = *v4;
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for SmallLockupLayout.Metrics();
  v10 = sub_1000056A8(v9, qword_1009D3798);
  v11.receiver = v8;
  v11.super_class = a4;
  objc_msgSendSuper2(&v11, "layoutMargins");
  sub_100508144(v10, v8, a1, a2);
}

double sub_100507F88()
{
  swift_beginAccess();

  return result;
}

double sub_100507FD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10050808C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100974528, qword_1007E0520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005080FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100508144(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SmallLockupLayout.Metrics();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 traitCollection];
  (*(v14 + 16))(v17, a1, v13);
  v19 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v21 & 1) == 0 && ((v19 | v20) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v22 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v22 = qword_100991028;
    }

    v23 = sub_1000056A8(v6, v22);
    (*(v7 + 16))(v9, v23, v6);
    (*(v7 + 32))(v12, v9, v6);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v7 + 8))(v12, v6);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v25 = v24;

  (*(v14 + 8))(v17, v13);
  return v25;
}

void sub_10050846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  sub_100059168(a1, a3, a4, a5, a6);
  InAppPurchaseLockup.parent.getter();
  v8 = Lockup.title.getter();
  v10 = v9;

  if (v10)
  {
    v11._countAndFlagsBits = 0x465F4E4F5F444441;
    v11._object = 0xEE005050415F524FLL;
    v12._object = 0x8000000100800630;
    v12._countAndFlagsBits = 0xD000000000000031;
    localizedString(_:comment:)(v11, v12);
    sub_10002849C(&unk_10097E350, &unk_1007DEA00);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007B10D0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000BFD1C();
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;

    String.init(format:_:)();

    v14 = objc_allocWithZone(NSMutableAttributedString);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithString:v15];

    v17 = objc_allocWithZone(NSString);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 initWithString:v18];

    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 rangeOfString:v20 options:4];
    v23 = v22;

    v27 = [v7 tintColor];
    sub_10002849C(&qword_100973268, &qword_1007B4680);
    v24 = Optional._bridgeToObjectiveC()();

    [v16 addAttribute:NSForegroundColorAttributeName value:v24 range:{v21, v23}];
    swift_unknownObjectRelease();
    v25 = *(*&v7[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel);
    if (v25)
    {
      v26 = v25;
      [v26 setAttributedText:v16];
    }
  }
}

double sub_100508740(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Separator();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ComponentLayoutOptions();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10037D488(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v19 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  sub_1000586D8(a5, v14);
  type metadata accessor for InAppPurchaseLockupView(0);
  v20 = sub_1004A1F00(a5, a1, a2);
  if (v19)
  {
    v21 = v20;
    Separator.verticalOutset.getter();
    sub_10002A400(v26, v26[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v24 + 8))(v10, v25);
    (*(v12 + 8))(v14, v11);
    sub_100007000(v26);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v21 = v22;
    (*(v12 + 8))(v14, v11);
  }

  return v21;
}

uint64_t sub_100508A8C(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v28[1] = a1;
  v8 = type metadata accessor for Separator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Shelf.PresentationHints();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v17 = v16;
  type metadata accessor for InAppPurchaseLockupView(0);
  sub_1004A1F00(a5, v17, a3);
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_10037D488(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v13 + 8))(v15, v12);
  sub_1000586D8(a5, v11);
  Separator.height(in:)();
  (*(v9 + 8))(v11, v8);
  [a5 pageMarginInsets];
  v18 = [a5 traitCollection];
  LOBYTE(v8) = UITraitCollection.isSizeClassRegular.getter();

  if ((v8 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v19 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v23 = v24;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v21 = v20;
    PageTraitEnvironment.pageColumnMargin.getter();
    v23 = v21 - (v22 + v22);
  }

  v25 = [objc_opt_self() absoluteDimension:v23];
  v26 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v26;
}

uint64_t type metadata accessor for ScrollablePillView(uint64_t a1)
{
  result = qword_100989710;
  if (!qword_100989710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100508E44()
{
  if (qword_10096ECA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1009D32B8;
  qword_1009D25D8 = qword_1009D32B8;

  return v1;
}

uint64_t sub_100508EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  sub_1000CB084(a1, &v22);
  sub_10002C0AC(a2, v21);
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  v7 = qword_1009D25D8;
  v21[8] = &type metadata for SearchLinkLayout;
  v21[9] = sub_1002679AC();
  v8 = swift_allocObject();
  v21[5] = v8;
  v9 = sub_100267A00();
  v10 = swift_allocObject();
  sub_10002C0AC(v21, v10 + 16);
  sub_1000CB084(&v22, &v19);
  if (v20)
  {
    sub_100005A38(&v19, v18);
    v11 = swift_allocObject();
    sub_100005A38(v18, v11 + 16);
    v12 = v7;
    sub_100007000(v21);
    sub_1000CC370(&v22);
    v13 = &type metadata for AutoAdjustingPlaceable;
    v14 = v9;
  }

  else
  {
    v15 = v7;
    sub_100007000(v21);
    sub_1000CC370(&v22);
    v13 = 0;
    v14 = 0;
    v11 = 0;
  }

  v8[2] = v11;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = v13;
  v8[6] = v14;
  v8[7] = v10;
  v8[10] = &type metadata for AutoAdjustingPlaceable;
  v8[11] = v9;
  v8[12] = v7;
  v8[13] = 0x4014000000000000;
  v23 = type metadata accessor for Margins();
  v24 = &protocol witness table for Margins;
  sub_1000056E0(&v22);
  Margins.init(insets:child:)();
  a4[3] = &type metadata for AutoAdjustingPlaceable;
  a4[4] = v9;
  v16 = swift_allocObject();
  *a4 = v16;
  return sub_100005A38(&v22, v16 + 16);
}

char *sub_1005090E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v54 = type metadata accessor for DynamicTextAppearance();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  __chkstk_darwin(v15);
  v17 = v53 - v16;
  __chkstk_darwin(v18);
  v53[1] = v53 - v19;
  v20 = qword_100989700;
  *&v4[v20] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_100989708;
  type metadata accessor for DynamicLabel();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = type metadata accessor for ScrollablePillView(0);
  v56.receiver = v4;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = [v27 layer];
  [v28 setCornerCurve:kCACornerCurveContinuous];

  v29 = [v27 layer];
  [v27 bounds];
  [v29 setCornerRadius:CGRectGetHeight(v57) * 0.5];

  v30 = [v27 layer];
  [v30 setBorderWidth:1.0];

  [v27 setNeedsDisplay];
  v31 = [v27 layer];
  if (qword_10096EC88 != -1)
  {
    swift_once();
  }

  v32 = [qword_1009D32A0 CGColor];
  [v31 setBorderColor:v32];

  [v27 setNeedsDisplay];
  v33 = qword_100989700;
  v34 = qword_10096EC90;
  v35 = *&v27[qword_100989700];
  if (v34 != -1)
  {
    swift_once();
  }

  [v35 setTintColor:qword_1009D32A8];

  v36 = *&v27[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  ArtworkView.backgroundColor.setter();

  v40 = *&v27[v33];
  ArtworkView.shouldSymbolImageSelfSize.setter();

  v41 = qword_10096E708;
  v42 = *&v27[v33];
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = [objc_opt_self() configurationWithTextStyle:qword_1009D25D8 scale:2];
  ArtworkView.preferredSymbolConfiguration.setter();

  [v27 addSubview:*&v27[v33]];
  v44 = qword_100989708;
  v45 = qword_10096EC78;
  v46 = *&v27[qword_100989708];
  if (v45 != -1)
  {
    swift_once();
  }

  [v46 setTextColor:qword_1009D3290];

  v47 = *&v27[v44];
  v48 = [v27 traitCollection];

  DynamicTextAppearance.init()();
  DynamicTextAppearance.withTextStyle(_:)();
  v49 = *(v9 + 8);
  v50 = v11;
  v51 = v54;
  v49(v50, v54);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v49(v14, v51);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v49(v17, v51);
  dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();

  [v27 addSubview:*&v27[v44]];
  sub_10025BAA4();
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v27;
}

void sub_10050971C(uint64_t a1)
{
  v2 = qword_100989700;
  *(a1 + v2) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_100989708;
  type metadata accessor for DynamicLabel();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005097DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = *(v2 + qword_100989700);
  v6 = ArtworkView.image.getter();
  if (v6)
  {

    v7 = type metadata accessor for ArtworkView();
    v8 = sub_10050A2A0(&qword_100989780, &type metadata accessor for ArtworkView, "]o\r");
    v6 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v30[1] = 0;
    v30[2] = 0;
  }

  v30[0] = v6;
  v30[3] = v7;
  v30[4] = v8;
  v9 = *(v3 + qword_100989708);
  v29[3] = type metadata accessor for DynamicLabel();
  v29[4] = &protocol witness table for UILabel;
  v29[0] = v9;
  v10 = v9;
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  sub_1000CB084(v30, &v26);
  sub_10002C0AC(v29, v25);
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  v11 = qword_1009D25D8;
  v25[8] = &type metadata for SearchLinkLayout;
  v25[9] = sub_1002679AC();
  v12 = swift_allocObject();
  v25[5] = v12;
  v13 = sub_100267A00();
  v14 = swift_allocObject();
  sub_10002C0AC(v25, v14 + 16);
  sub_1000CB084(&v26, &v23);
  if (v24)
  {
    sub_100005A38(&v23, v22);
    v15 = swift_allocObject();
    sub_100005A38(v22, v15 + 16);
    v16 = v11;
    sub_100007000(v25);
    sub_1000CC370(&v26);
    v17 = &type metadata for AutoAdjustingPlaceable;
    v18 = v13;
  }

  else
  {
    v19 = v11;
    sub_100007000(v25);
    sub_1000CC370(&v26);
    v17 = 0;
    v18 = 0;
    v15 = 0;
  }

  v12[2] = v15;
  v12[3] = 0;
  v12[4] = 0;
  v12[5] = v17;
  v12[6] = v18;
  v12[7] = v14;
  v12[10] = &type metadata for AutoAdjustingPlaceable;
  v12[11] = v13;
  v12[12] = v11;
  v12[13] = 0x4014000000000000;
  v27 = type metadata accessor for Margins();
  v28 = &protocol witness table for Margins;
  sub_1000056E0(&v26);
  Margins.init(insets:child:)();
  a1[3] = &type metadata for AutoAdjustingPlaceable;
  a1[4] = v13;
  v20 = swift_allocObject();
  *a1 = v20;
  sub_100005A38(&v26, v20 + 16);
  sub_100007000(v29);
  return sub_1000CC370(v30);
}

id sub_100509AC0()
{
  type metadata accessor for CustomLayoutView();
  v1 = method lookup function for CustomLayoutView();
  v1();
  v2 = [v0 layer];
  [v0 bounds];
  [v2 setCornerRadius:CGRectGetHeight(v6) * 0.5];

  v3 = [v0 layer];
  [v3 setBorderWidth:1.0];

  return [v0 setNeedsDisplay];
}

void sub_100509BA0()
{
  v1 = *(v0 + qword_100989708);
}

id sub_100509BE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollablePillView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100509C18(uint64_t a1)
{
  v2 = *(a1 + qword_100989708);
}

id sub_100509CA4()
{
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithTextStyle:qword_1009D25D8 scale:2];

  return v0;
}

uint64_t sub_100509D2C()
{
  v0 = type metadata accessor for DynamicTextAppearance();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  DynamicTextAppearance.init()();
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  DynamicTextAppearance.withTextStyle(_:)();
  v10 = *(v1 + 8);
  v10(v3, v0);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v10(v6, v0);
  DynamicTextAppearance.withLineBreakMode(_:)();
  return (v10)(v9, v0);
}

double sub_100509EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EB48C(a1, a3, WitnessTable);
}

void sub_100509F2C(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1003E9668(a1, a2, a3, WitnessTable);
}

void sub_100509F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1003EBB84(a1, a3, WitnessTable);
}

uint64_t sub_100509FFC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003E99E0(a1, WitnessTable, a2);
}

double sub_10050A078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EB4BC(a1, a2, a4, WitnessTable);
}

uint64_t sub_10050A12C(void *a1)
{
  a1[1] = sub_10050A2A0(&qword_100989768, type metadata accessor for ScrollablePillView, &unk_1007D2770);
  a1[2] = sub_10050A2A0(&qword_100989770, type metadata accessor for ScrollablePillView, &unk_1007D27A0);
  result = sub_10050A2A0(&qword_100989778, type metadata accessor for ScrollablePillView, &unk_1007D27D0);
  a1[3] = result;
  return result;
}

id sub_10050A1D8(void *a1)
{
  v2 = [a1 layer];
  if (qword_10096EC88 != -1)
  {
    swift_once();
  }

  v3 = [qword_1009D32A0 CGColor];
  [v2 setBorderColor:v3];

  return [a1 setNeedsDisplay];
}

uint64_t sub_10050A2A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10050A398()
{
  v0 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v0 - 8);
  v26[3] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26[2] = v26 - v3;
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  sub_100005644(v8, qword_1009D25F0);
  v26[1] = sub_1000056A8(v8, qword_1009D25F0);
  v68[8] = &type metadata for Double;
  v68[9] = &protocol witness table for Double;
  v68[5] = 0x4024000000000000;
  if (qword_10096E710 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_100989790);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v30 = v11 + 16;
  v31 = v12;
  v12(v7, v10, v9);
  v13 = v5[13];
  v29 = enum case for FontSource.useCase(_:);
  v28 = v13;
  v13(v7);
  v14 = type metadata accessor for StaticDimension();
  v68[3] = v14;
  v68[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v68);
  v66 = v4;
  v67 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v65);
  v27 = v5[2];
  v27(v15, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v16 = v5[1];
  v16(v7, v4);
  if (qword_10096E718 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v9, qword_1009897A8);
  v31(v7, v17, v9);
  v28(v7, v29, v4);
  v66 = v14;
  v67 = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v4;
  v64 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v62);
  v27(v18, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v16(v7, v4);
  if (qword_10096E720 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v9, qword_1009897C0);
  v31(v7, v19, v9);
  v28(v7, v29, v4);
  v63 = v14;
  v64 = &protocol witness table for StaticDimension;
  sub_1000056E0(v62);
  v60 = v4;
  v61 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v59);
  v27(v20, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v16(v7, v4);
  if (qword_10096E728 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v9, qword_1009897D8);
  v31(v7, v21, v9);
  v28(v7, v29, v4);
  v60 = v14;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v56);
  v27(v22, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v16(v7, v4);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v14, qword_1009D2430);
  v57 = v14;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_1000056E0(v56);
  (*(*(v14 - 8) + 16))(v24, v23, v14);
  v55 = &protocol witness table for Double;
  v54 = &type metadata for Double;
  v52 = &protocol witness table for Double;
  v53 = 0x4034000000000000;
  v51 = &type metadata for Double;
  v50 = 0x4057400000000000;
  AspectRatio.init(_:_:)();
  AspectRatio.init(_:_:)();
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v46 = &protocol witness table for Double;
  v47 = 0x3FAC9107B0E4883ELL;
  v45 = &type metadata for Double;
  v43 = &protocol witness table for Double;
  v44 = 0x3FAC9107B0E4883ELL;
  v42 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  v41 = 0x3FAC0E070381C0E0;
  v39 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v38 = 0x3FA6CB65B2D96CB6;
  v36 = &type metadata for Double;
  v34 = &protocol witness table for Double;
  v35 = 0x4034000000000000;
  v33 = &type metadata for Double;
  v32 = 0x4034000000000000;
  return InAppPurchaseSearchResultLayout.Metrics.init(offerButtonSize:offerButtonMargin:inAppPurchaseTextSpace:titleTextSpace:subtitleTextSpace:descriptionTextSpace:detailsBottomMargin:accessibilityDetailsBottomMargin:preferredMainArtworkWidth:regularLockupAreaAspectRatio:compactLockupAreaAspectRatio:regularBodySideEdgeInsetPercentage:regularBodyHorizontalComponentSpacingPercentage:compactBodySideEdgeInsetPercentage:compactBodyHorizontalComponentSpacingPercentage:inAppIconBottomMargin:bodyVerticalPadding:)();
}

uint64_t sub_10050AA90()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_1009897F0);
  sub_1000056A8(v0, qword_1009897F0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_10050AB2C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v69 - v18;
  v20 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v22 = sub_1000056A8(v21, qword_1009D25F0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  v69 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  *&v5[v23] = static UIColor.componentBackgroundStandout.getter();
  if (qword_10096E710 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v25 = sub_1000056A8(v24, qword_100989790);
  v26 = *(v24 - 8);
  v74 = *(v26 + 16);
  v74(v19, v25, v24);
  v73 = *(v26 + 56);
  v73(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v72 = enum case for DirectionalTextAlignment.none(_:);
  v71 = v27;
  v27(v16);
  v28 = type metadata accessor for DynamicTypeLabel();
  v70 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E718 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v24, qword_1009897A8);
  v74(v19, v31, v24);
  v73(v19, 0, 1, v24);
  v71(v16, v72, v70);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E720 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v24, qword_1009897C0);
  v74(v19, v33, v24);
  v73(v19, 0, 1, v24);
  v71(v16, v72, v70);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_offerButton] = sub_1000F5284(0, v37);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v38 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_iconView] = sub_1002EB7C0(v12, 1);
  if (qword_10096E728 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v24, qword_1009897D8);
  v74(v19, v39, v24);
  v73(v19, 0, 1, v24);
  v71(v16, v72, v70);
  v40 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v41 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  v76.receiver = v5;
  v76.super_class = v41;
  v42 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v46 = v42;
  [v46 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v47 = [v46 contentView];
  v48 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel;
  [v47 addSubview:*&v46[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel]];

  v49 = [v46 contentView];
  [v49 addSubview:*&v46[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_titleLabel]];

  v50 = [v46 contentView];
  v51 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel;
  [v50 addSubview:*&v46[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel]];

  v52 = [v46 contentView];
  [v52 addSubview:*&v46[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_offerButton]];

  v53 = [v46 contentView];
  v54 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_body;
  [v53 addSubview:*&v46[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_body]];

  v55 = [v46 contentView];
  [v55 addSubview:*&v46[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_iconView]];

  v56 = [v46 contentView];
  v57 = OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription;
  [v56 addSubview:*&v46[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription]];

  v58 = [*&v46[v54] layer];
  [v58 setCornerRadius:20.0];

  v59 = *&v46[v48];
  v60 = [v46 tintColor];
  [v59 setTextColor:v60];

  v61 = *&v46[v51];
  v62 = static UIColor.secondaryText.getter();
  [v61 setTextColor:v62];

  [*&v46[v54] setBackgroundColor:*&v46[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor]];
  v63 = qword_10096E738;
  v64 = *&v46[v57];
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v65, qword_1009897F0);
  v75 = v46;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  v66 = *&v46[v57];
  v67 = static UIColor.secondaryText.getter();
  [v66 setTextColor:v67];

  return v46;
}

uint64_t sub_10050B614()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseSearchResultLayout();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  v66.receiver = v0;
  v66.super_class = v10;
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v11 = [v0 contentView];
  v38 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();

  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_metrics], v4);
  v12 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_offerButton];
  LayoutMarginsAware<>.layoutFrame.getter();
  v13 = &v12[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v12[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v14 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v12[v14], v63);
    sub_10002A400(v63, v64);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v16 = v15;
    v18 = v17;
    sub_100007000(v63);
    *v13 = v16;
    *(v13 + 1) = v18;
    v13[16] = 0;
  }

  InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
  v19 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v64 = v20;
  v65 = &protocol witness table for UILabel;
  v63[0] = v19;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  v61 = v20;
  v62 = &protocol witness table for UILabel;
  v60 = v21;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
  v58 = v20;
  v59 = &protocol witness table for UILabel;
  v57 = v22;
  v23 = type metadata accessor for OfferButton();
  v37[1] = v7;
  v55 = v23;
  v56 = &protocol witness table for UIView;
  v54 = v12;
  v37[0] = v12;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v52 = type metadata accessor for InAppPurchaseView(0);
  v53 = &protocol witness table for UIView;
  v50 = &protocol witness table for UILabel;
  v51 = v24;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  v49 = v20;
  v47 = &protocol witness table for UIView;
  v48 = v25;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_body];
  v46 = v38;
  v45 = v26;
  v27 = v19;
  v28 = v21;
  v29 = v22;
  v30 = v37[0];
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v39;
  InAppPurchaseSearchResultLayout.init(metrics:inAppPurchaseText:titleText:subtitleText:offerButton:inAppPurchaseIcon:inAppPurchaseDescription:inAppPurchaseBackgroundView:)();
  v35 = v42;
  InAppPurchaseSearchResultLayout.placeChildren(relativeTo:in:)();
  (*(v43 + 8))(v35, v44);
  return (*(v40 + 8))(v34, v41);
}

id sub_10050BAB8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E738 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v6, qword_1009897F0);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

id sub_10050BC58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(uint64_t a1)
{
  result = qword_100989840;
  if (!qword_100989840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050BDD0(uint64_t a1)
{
  result = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
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

double sub_10050BEC8()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LabelPlaceholderCompatibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallGameCenterPlayer();
  sub_10050C4E4(&qword_10097B298, &type metadata accessor for SmallGameCenterPlayer, &protocol conformance descriptor for GameCenterPlayer);
  ItemLayoutContext.typedModel<A>(as:)();
  v8 = v43[0];
  if (!v43[0])
  {
    return 0.0;
  }

  v34 = v5;
  if (qword_10096E4D8 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v38 = v3;
  v39 = v1;
  v40 = v0;
  v36 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v35 = LayoutViewPlaceholder.init(representing:)();

  GameCenterPlayer.alias.getter();
  v9 = sub_1000367E8();
  v41 = v8;
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  sub_1000056A8(v10, qword_1009D10A0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v11 = v43[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v12 = type metadata accessor for Feature();
  v44 = v12;
  v33 = sub_10050C4E4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v45 = v33;
  v13 = sub_1000056E0(v43);
  v30[1] = v9;
  v14 = *(v12 - 8);
  v15 = *(v14 + 104);
  v32 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v30[2] = v14 + 104;
  v31 = v15;
  v15(v13);
  isFeatureEnabled(_:)();
  sub_100007000(v43);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v16 = *(v34 + 8);
  v17 = v37;
  v16(v7, v37);
  v34 = GameCenterPlayer.displayName.getter();
  v30[0] = v18;

  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v10, qword_1009D10B8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v19 = v43[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v44 = v12;
  v45 = v33;
  v20 = sub_1000056E0(v43);
  v31(v20, v32, v12);
  isFeatureEnabled(_:)();
  sub_100007000(v43);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v16(v7, v17);
  sub_1001A0C90(&xmmword_1009D1DD0, v43);
  v47 = v36;
  v48 = &protocol witness table for LayoutViewPlaceholder;
  v46 = v35;
  sub_10002C0AC(v52, &v50);
  sub_10002C0AC(v51, &v49);
  swift_getKeyPath();
  v21 = v38;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v23 = v22;
  v25 = v24;
  (*(v39 + 8))(v21, v40);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v26 = v42;
  swift_getObjectType();
  sub_1001A1A3C(v26, v43, v23, v25);
  v28 = v27;

  swift_unknownObjectRelease();
  sub_10025AB54(v43);
  sub_100007000(v51);
  sub_100007000(v52);
  return v28;
}

uint64_t sub_10050C4E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10050C5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v4 = type metadata accessor for SystemImage();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoundedButtonType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v41 = RoundedButton.action.getter();
  type metadata accessor for Action();
  type metadata accessor for BaseObjectGraph();
  sub_10050CC24(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  ComponentModel.pairedWith<A>(objectGraph:)();

  v16 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  v18 = v15;
  v19 = v3;
  sub_100079964(v18, &v3[v17]);
  swift_endAccess();
  v3[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_hasDivider] = RoundedButton.hasDivider.getter() & 1;
  sub_100747CFC();
  RoundedButton.type.getter();
  (*(v7 + 16))(v9, v12, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for RoundedButtonType.share(_:))
  {
    v30 = *(v7 + 8);
    v30(v9, v6);
    v30(v12, v6);
    goto LABEL_7;
  }

  v21 = v36;
  v20 = v37;
  v22 = v38;
  (*(v37 + 104))(v36, enum case for SystemImage.squareAndArrowUp(_:), v38);
  v23 = static SystemImage.load(_:with:)();
  (*(v20 + 8))(v21, v22);
  v24 = [v23 imageWithRenderingMode:2];

  (*(v7 + 8))(v12, v6);
  if (!v24)
  {
LABEL_7:
    v29 = *&v19[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button];
    [v29 setImage:0 forState:0];
    goto LABEL_8;
  }

  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E230 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for FontUseCase();
  sub_1000056A8(v25, qword_1009D1610);
  v26 = [v19 traitCollection];
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v28 = [objc_opt_self() configurationWithFont:v27];
  v29 = *&v19[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button];
  [v29 setPreferredSymbolConfiguration:v28 forImageInState:0];
  [v29 setContentVerticalAlignment:0];
  [v29 setImage:v24 forState:0];

LABEL_8:
  RoundedButton.title.getter();
  v31 = String._bridgeToObjectiveC()();

  [v29 setTitle:v31 forState:0];

  v32 = RoundedButton.textColor.getter();
  if (!v32)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v32 = static UIColor.defaultButtonTitleColor.getter();
  }

  v33 = v32;
  [v29 setTitleColor:v33 forState:0];
  [v29 setTintColor:v33];

  v34 = RoundedButton.buttonColor.getter();
  if (!v34)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v34 = static UIColor.defaultButtonBackgroundColor.getter();
  }

  v35 = v34;
  [v29 setBackgroundColor:v34];

  [v19 setNeedsLayout];
}

uint64_t sub_10050CC24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10050CC6C()
{
  v0 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfFooterView.Style(0);
  sub_100005644(v3, qword_1009D2640);
  v4 = sub_1000056A8(v3, qword_1009D2640);
  if (qword_10096E4E8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D1EB0);
  sub_10048EEB4(v5, v2);
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  result = sub_10048EF74(v2, v4);
  *(v4 + *(v3 + 20)) = v7;
  return result;
}

id sub_10050CDB8()
{
  type metadata accessor for ShelfFooterSeparator();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_1009898A0 = result;
  return result;
}

char *sub_10050CDF0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics];
  *(v14 + 3) = &type metadata for Double;
  *(v14 + 4) = &protocol witness table for Double;
  *v14 = 0x4038000000000000;
  v14[40] = 0;
  v15 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 layer];
  [v23 setAllowsGroupOpacity:0];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v24 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton;
  [*&v22[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton] addTarget:v22 action:"didTapWithTitleButton:" forControlEvents:64];
  v25 = *&v22[v24];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = v25;
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(v28, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v29, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v11 + 8))(v13, v10);
  [v22 addSubview:*&v22[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator]];
  [v22 addSubview:*&v22[v24]];

  return v22;
}

double sub_10050D148(double a1, double a2)
{
  v3 = type metadata accessor for VerticalStack();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_100072FE8(&v2[v7], &v25);
  v8 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton];
  v9 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator];
  v23 = type metadata accessor for ShelfFooterTitleButton(0);
  v24 = &protocol witness table for UIButton;
  *&v22 = v8;
  v20 = type metadata accessor for ShelfFooterSeparator();
  v21 = sub_10050E55C();
  *&v19 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v26[0];
  v10[1] = v25;
  v10[2] = v11;
  *(v10 + 41) = *(v26 + 9);
  sub_100005A38(&v22, (v10 + 4));
  sub_100005A38(&v19, v10 + 104);
  v12 = v8;
  v13 = v9;
  v14 = [v2 traitCollection];
  sub_100072A08();
  dispatch thunk of Placeable.measure(toFit:with:)();
  v16 = v15;

  (*(v4 + 8))(v6, v3);
  return v16;
}

uint64_t sub_10050D398()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "layoutSubviews", v4);
  v7 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_100072FE8(&v0[v7], &v23);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton];
  v9 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v8;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_10050E55C();
  *&v17 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v24[0];
  v10[1] = v23;
  v10[2] = v11;
  *(v10 + 41) = *(v24 + 9);
  sub_100005A38(&v20, (v10 + 4));
  sub_100005A38(&v17, v10 + 104);
  v12 = v8;
  v13 = v9;
  LayoutMarginsAware<>.layoutFrame.getter();
  v14 = [v0 traitCollection];
  sub_100072A08();
  dispatch thunk of Placeable.place(at:with:)();

  return (*(v3 + 8))(v6, v2);
}

void *sub_10050D6F4(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction + 8);
    v6[3] = sub_100005744(0, &unk_100984370, UIControl_ptr);
    v6[0] = v3;
    sub_1002BB3F4(v2, v4);
    v5 = v3;
    v2(v6);
    sub_10001F63C(v2, v4);
    return sub_10002B894(v6, &unk_1009711D0, &unk_1007B1A10);
  }

  return result;
}

double sub_10050D898(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  v105 = a3;
  v106 = 0x6C6F686563616C50;
  v94 = type metadata accessor for VerticalStack();
  v104 = *(v94 - 8);
  __chkstk_darwin(v94);
  v103 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Resize.Rule();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = v88 - v12;
  __chkstk_darwin(v13);
  v93 = v88 - v14;
  __chkstk_darwin(v15);
  v92 = v88 - v16;
  v17 = type metadata accessor for TextAppearance();
  __chkstk_darwin(v17 - 8);
  v88[1] = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Resize();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v91);
  v90 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&qword_10097BA20, &unk_1007C37E0);
  __chkstk_darwin(v21 - 8);
  v23 = (v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = v88 - v25;
  __chkstk_darwin(v27);
  v29 = v88 - v28;
  __chkstk_darwin(v30);
  v32 = v88 - v31;
  v88[0] = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v88[0]);
  v89 = v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v107 = v88 - v35;
  if (!a2)
  {
    goto LABEL_6;
  }

  v36 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v36 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    v106 = a1;
    v95 = a2;
  }

  else
  {
LABEL_6:
    v95 = 0xEB00000000726564;
  }

  sub_10050E488(a4, v32);
  v37 = type metadata accessor for ShelfFooterStyle();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v32, 1, v37) == 1)
  {
    v40 = 0;
    v41 = 24.0;
  }

  else
  {
    sub_10050E488(v32, v29);
    v42 = (*(v38 + 88))(v29, v37);
    v43 = v29;
    v44 = a4;
    v45 = v26;
    v46 = v42;
    v47 = enum case for ShelfFooterStyle.games(_:);
    (*(v38 + 8))(v43, v37);
    v48 = v46 == v47;
    v26 = v45;
    a4 = v44;
    v40 = v48;
    v41 = 24.0;
    if (v48)
    {
      v41 = 16.0;
    }
  }

  v116[3] = &type metadata for Double;
  v116[4] = &protocol witness table for Double;
  *v116 = v41;
  v117 = v40;
  sub_10002B894(v32, &qword_10097BA20, &unk_1007C37E0);
  sub_10050E488(a4, v26);
  v49 = v39(v26, 1, v37);
  v50 = v107;
  if (v49 != 1)
  {
    sub_10050E488(v26, v23);
    if ((*(v38 + 88))(v23, v37) == enum case for ShelfFooterStyle.games(_:))
    {
      (*(v38 + 96))(v23, v37);
      v51 = *v23;
      if (qword_10096E4F0 != -1)
      {
        swift_once();
      }

      v52 = sub_1000056A8(v88[0], qword_1009D1EC8);
      sub_10048EEB4(v52, v50);
      v53 = v105;
      if ([v105 horizontalSizeClass] == 1 && (v54 = objc_msgSend(v53, "preferredContentSizeCategory"), v55 = UIContentSizeCategory.isAccessibilityCategory.getter(), v54, (v55 & 1) != 0))
      {

        v56 = 0;
        v57 = 0;
      }

      else
      {
        [v51 size];
        v57 = v87;

        v56 = 1;
      }

      goto LABEL_25;
    }

    (*(v38 + 8))(v23, v37);
  }

  if (qword_10096E4E8 != -1)
  {
    swift_once();
  }

  v58 = sub_1000056A8(v88[0], qword_1009D1EB0);
  sub_10048EEB4(v58, v50);
  v56 = 0;
  v57 = 0;
  v53 = v105;
LABEL_25:
  v59 = v100;
  sub_10002B894(v26, &qword_10097BA20, &unk_1007C37E0);
  if (qword_10096E4F8 != -1)
  {
    swift_once();
  }

  v60 = qword_100986FD0;
  *(qword_100986FD0 + OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon) = v56;
  *&v60[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight] = v57;
  v61 = String._bridgeToObjectiveC()();
  [v60 setTitle:v61 forState:0];

  v62 = v89;
  sub_10048EEB4(v50, v89);
  v63 = OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_10050E4F8(v62, &v60[v63]);
  swift_endAccess();
  sub_10048DAD0();
  sub_10048EF18(v62);
  v64 = [v53 preferredContentSizeCategory];
  UIView.traitOverrides.getter();
  UIMutableTraits.preferredContentSizeCategory.setter();
  UIView.traitOverrides.setter();
  [v60 updateTraitsIfNeeded];
  UIButton.measure(toFit:with:)();
  v66 = v65;
  v68 = v67;
  TextAppearance.init()();
  LabelPlaceholder.Options.init(rawValue:)();
  *&v115[8] = type metadata accessor for LabelPlaceholder();
  *&v115[16] = &protocol witness table for LabelPlaceholder;
  sub_1000056E0(&v114);
  LabelPlaceholder.init(_:with:where:)();
  v69 = v92;
  *(v92 + 3) = &type metadata for CGFloat;
  *(v69 + 4) = &protocol witness table for CGFloat;
  *v69 = v66;
  v70 = enum case for Resize.Rule.replaced(_:);
  v71 = *(v98 + 104);
  v72 = v99;
  v71(v69, enum case for Resize.Rule.replaced(_:), v99);
  v73 = v93;
  *(v93 + 3) = &type metadata for CGFloat;
  *(v73 + 4) = &protocol witness table for CGFloat;
  *v73 = v68;
  v71(v73, v70, v72);
  v74 = enum case for Resize.Rule.unchanged(_:);
  v71(v96, enum case for Resize.Rule.unchanged(_:), v72);
  v71(v97, v74, v72);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  sub_100072FE8(v116, &v114);
  if (qword_10096E748 != -1)
  {
    swift_once();
  }

  v75 = qword_1009898A0;
  v76 = v102;
  v112 = v102;
  v113 = &protocol witness table for Resize;
  v77 = sub_1000056E0(&v111);
  v78 = v101;
  (*(v101 + 16))(v77, v59, v76);
  v109 = type metadata accessor for ShelfFooterSeparator();
  v110 = sub_10050E55C();
  *&v108 = v75;
  type metadata accessor for ShelfFooterViewLayout();
  v79 = swift_allocObject();
  v80 = *v115;
  v79[1] = v114;
  v79[2] = v80;
  *(v79 + 41) = *&v115[9];
  sub_100005A38(&v111, (v79 + 4));
  sub_100005A38(&v108, v79 + 104);
  v81 = v75;
  v82 = v103;
  sub_100072A08();
  v83 = v94;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v85 = v84;

  (*(v104 + 8))(v82, v83);
  (*(v78 + 8))(v59, v76);
  sub_100073054(v116);
  sub_10048EF18(v107);
  return v85;
}

uint64_t sub_10050E488(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097BA20, &unk_1007C37E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10050E4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10050E55C()
{
  result = qword_1009898F0;
  if (!qword_1009898F0)
  {
    type metadata accessor for ShelfFooterSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009898F0);
  }

  return result;
}

void sub_10050E5B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v56 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_10097BA20, &unk_1007C37E0);
  __chkstk_darwin(v10 - 8);
  v60 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v62 = a4;
  sub_10050E488(a4, &v56 - v18);
  v20 = type metadata accessor for ShelfFooterStyle();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  v58 = v21;
  if (v23 == 1)
  {
    v24 = 0;
    v25 = 24.0;
  }

  else
  {
    sub_10050E488(v19, v16);
    v26 = (*(v21 + 88))(v16, v20);
    v27 = enum case for ShelfFooterStyle.games(_:);
    (*(v21 + 8))(v16, v20);
    v24 = v26 == v27;
    v25 = 24.0;
    if (v26 == v27)
    {
      v25 = 16.0;
    }
  }

  v65[3] = &type metadata for Double;
  v65[4] = &protocol witness table for Double;
  *v65 = v25;
  v66 = v24;
  sub_10002B894(v19, &qword_10097BA20, &unk_1007C37E0);
  v28 = &v6[OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics];
  swift_beginAccess();
  sub_10050ED94(v65, v28);
  swift_endAccess();
  v29 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator];
  [v29 setHidden:*(v28 + 40)];
  [v29 setBackgroundColor:*(v63 + *(type metadata accessor for ShelfFooterView.Style(0) + 20))];
  v30 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton];
  v31 = v61;
  if (v61)
  {
    v32 = v59;
    v33 = String._bridgeToObjectiveC()();
    [v30 setTitle:v33 forState:{0, v56, v57}];

    v34 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton] setTitle:0 forState:{0, v56, v57}];
    v35 = 1;
  }

  [v30 setHidden:v35];
  v36 = v64;
  sub_10050E488(v62, v64);
  if (v22(v36, 1, v20) == 1)
  {
    goto LABEL_18;
  }

  v37 = v60;
  sub_10050E488(v64, v60);
  v38 = v58;
  if ((*(v58 + 88))(v37, v20) != enum case for ShelfFooterStyle.games(_:))
  {
    (*(v38 + 8))(v60, v20);
LABEL_18:
    sub_10048EEB4(v63, v9);
    v47 = OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style;
    swift_beginAccess();
    sub_10050E4F8(v9, &v30[v47]);
    swift_endAccess();
    sub_10048DAD0();
    sub_10048EF18(v9);
    goto LABEL_19;
  }

  v39 = v9;
  v40 = v60;
  (*(v38 + 96))(v60, v20);
  v41 = *v40;
  if (qword_10096E4F0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v56, qword_1009D1EC8);
  sub_10048EEB4(v42, v39);
  v43 = OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_10050E4F8(v39, &v30[v43]);
  swift_endAccess();
  sub_10048DAD0();
  sub_10048EF18(v39);
  v44 = ShelfLayoutContext.traitCollection.getter();
  if ([v44 horizontalSizeClass] != 1)
  {

    goto LABEL_22;
  }

  v45 = [v44 preferredContentSizeCategory];
  v46 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if ((v46 & 1) == 0)
  {
LABEL_22:
    v51 = v41;
    sub_10002B894(v64, &qword_10097BA20, &unk_1007C37E0);
    v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon] = 1;
    [v51 size];
    *&v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight] = v52;
    v53 = *&v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView];
    v54 = v51;
    v48 = v53;
    v55 = [v48 layer];
    [v55 removeAllAnimations];

    v50 = v54;
    [v48 setImage:v50];

    goto LABEL_20;
  }

LABEL_19:
  sub_10002B894(v64, &qword_10097BA20, &unk_1007C37E0);
  v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight] = 0;
  v48 = *&v30[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView];
  v49 = [v48 layer];
  [v49 removeAllAnimations];

  [v48 setImage:0];
  v50 = 0;
LABEL_20:

  [v6 setNeedsLayout];
}

void sub_10050EC9C()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore15ShelfFooterView_layoutMetrics;
  *(v1 + 24) = &type metadata for Double;
  *(v1 + 32) = &protocol witness table for Double;
  *v1 = 0x4038000000000000;
  *(v1 + 40) = 0;
  v2 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_separator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC8AppStore15ShelfFooterView_footerAction);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ShelfFooterView.Style(uint64_t a1)
{
  result = qword_100989950;
  if (!qword_100989950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050EE64(uint64_t a1)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v2 <= 0x3F)
  {
    result = sub_100005744(319, &qword_100970180, UIColor_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_10050EEF8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, double a7, double a8)
{
  v11 = [a6 traitCollection];
  if (UITraitCollection.isSizeClassRegular.getter())
  {
    UITraitCollection.prefersAccessibilityLayouts.getter();
  }

  v12 = sub_10069EE6C(a6, a7, a8);

  return v12;
}

uint64_t sub_10050F02C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10050F074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_separatorView];
  v8 = [v3 traitCollection];
  v9 = UITraitCollection.isSizeClassRegular.getter();

  if (v9)
  {
    v10 = [v4 traitCollection];
    v11 = UITraitCollection.prefersAccessibilityLayouts.getter();

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  [v7 setHidden:v12 & 1];
  sub_10069E558(a1, 0, a3);

  return [v4 setNeedsLayout];
}

void *sub_10050F1BC()
{
  v0 = type metadata accessor for HorizontalRule.Style();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HorizontalRule();
  sub_10050F358(&qword_1009742C8, &type metadata accessor for HorizontalRule, &protocol conformance descriptor for HorizontalRule);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v7)
  {
    HorizontalRule.style.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v5 = v7;
    HorizontalRule.Style.lineThickness(traitCollection:)();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_10050F358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10050F3B4()
{
  result = qword_1009899D8;
  if (!qword_1009899D8)
  {
    type metadata accessor for UserNotificationsAuthorizationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009899D8);
  }

  return result;
}

uint64_t sub_10050F40C(void *a1, uint64_t a2, uint64_t a3)
{
  v32[1] = a3;
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for OSLogger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_10096D120;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v11, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._object = 0x8000000100818820;
    v17._countAndFlagsBits = 0xD000000000000038;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(&v34 + 1) = sub_10050FE64();
    *&v33 = v16;
    v18 = v16;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v33);
    v19._countAndFlagsBits = 0x745368747561202CLL;
    v19._object = 0xEE00203A73757461;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v20 = [v18 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    *(&v34 + 1) = v21;
    *&v33 = v20;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v33);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
    Promise.resolve(_:)();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v24 = sub_1000056A8(v11, qword_1009CE218);
    (*(v12 + 16))(v14, v24, v11);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0xD00000000000003BLL;
    v25._object = 0x80000001008187E0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    v33 = 0u;
    v34 = 0u;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v33);
    v26._countAndFlagsBits = 0x3A726F727265202CLL;
    v26._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    if (a2)
    {
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = &type metadata for String;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      *&v34 = 0;
    }

    *&v33 = v27;
    *(&v33 + 1) = v28;
    *(&v34 + 1) = v29;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v33);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v12 + 8))(v14, v11);
    sub_10050FE08();
    swift_allocError();
    *v31 = 1;
    Promise.reject(_:)();
  }
}

uint64_t sub_10050F9FC()
{
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v0 = Promise.__allocating_init()();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for OSLogger();
    sub_1000056A8(v3, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
    [v4 setUserInitiated:1];
    v5 = [objc_allocWithZone(AMSUserNotificationAuthorizationTask) initWithBundleIdentifier:v2 options:v4];

    v6 = [v5 requestAuthorization];
    v11[4] = sub_10050FE5C;
    v11[5] = v0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100182E7C;
    v11[3] = &unk_1008C6CB0;
    v7 = _Block_copy(v11);

    [v6 addFinishBlock:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for OSLogger();
    sub_1000056A8(v8, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_10050FE08();
    swift_allocError();
    *v9 = 0;
    Promise.reject(_:)();
  }

  return v0;
}

unint64_t sub_10050FE08()
{
  result = qword_1009899E0;
  if (!qword_1009899E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009899E0);
  }

  return result;
}

unint64_t sub_10050FE64()
{
  result = qword_1009899E8;
  if (!qword_1009899E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009899E8);
  }

  return result;
}

unint64_t sub_10050FEC4()
{
  result = qword_1009899F0;
  if (!qword_1009899F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009899F0);
  }

  return result;
}

id sub_10050FF8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewCell(uint64_t a1)
{
  result = qword_100989A20;
  if (!qword_100989A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100510050()
{
  sub_10002849C(&qword_100977128, &qword_1007BC2F8);
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentPageFields.getter();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.preloaded.getter();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentSearchAdRotationDataProvider.getter();

  v0 = type metadata accessor for SearchGhostHintMetricsTracker();
  BaseObjectGraph.optional<A>(_:)();
  if (v3[0])
  {
    v1 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v0 = 0;
    v1 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  v3[3] = v0;
  v3[4] = v1;
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.contextualAction.getter();

  sub_10002849C(&qword_100977130, &unk_1007BC300);
  BaseObjectGraph.optional<A>(_:)();
  static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10002B894(v4, &qword_100977138, qword_1007D9800);
  return sub_10002B894(v3, &qword_100977140, &unk_1007BC310);
}

void sub_100510248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 < 0)
  {
    v4 = sub_100738948();
    v7 = OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView;
    [*&v4[OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView] setMetadata:a2];
    [*&v4[v7] setURL:0];
    [v4 setNeedsLayout];
    v5 = &OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell____lazy_storage___presentationLinkView;
  }

  else
  {
    v4 = sub_100738814();
    sub_100602E84();
    v5 = &OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell____lazy_storage___standardLinkView;
  }

  v8 = *(v3 + *v5);
  v9 = v8;

  sub_100738834(v8);
}

double sub_100510318(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_1005108A8(*a1, a5);
  v10 = v9;
  v12 = v11;
  v13 = sub_1005104B4(v9, v11, a7, a2);
  sub_1000C0220(v10, v12);
  return v13;
}

void sub_100510388(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1005108A8(*a1, a3);
  v4 = v3;
  v6 = v5;
  sub_100510248(v3, v5);

  sub_1000C0220(v4, v6);
}

uint64_t sub_10051046C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1005104B4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    dispatch thunk of EditorialLink.url.getter();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10022C934(v10);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if (qword_10096D528 != -1)
      {
        swift_once();
      }

      v29 = sub_10002849C(&qword_10097D4E8, qword_1007C4868);
      v21 = sub_1000056A8(v29, qword_10097D4C8);
      __chkstk_darwin(v21);
      *(&v28 - 2) = v14;
      swift_beginAccess();
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v22 = v30;
      v23 = [a3 traitCollection];
      v24 = [v23 preferredContentSizeCategory];

      [v22 setMinimumContentSizeCategory:v24];
      v25 = [a3 traitCollection];
      v26 = [v25 preferredContentSizeCategory];

      [v22 setMaximumContentSizeCategory:v26];
      [v22 setMetadata:a2];
      [v22 sizeThatFits:{a4, 1.79769313e308}];
      v30 = v22;
      swift_beginAccess();
      ReusePool.recycle(_:)();
      swift_endAccess();

      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    type metadata accessor for StandardLinkView();
    v15 = EditorialLink.descriptionText.getter();
    v17 = v16;
    v18 = EditorialLink.summaryText.getter();
    v20 = v19;
    swift_getObjectType();
    sub_1002BFE90(v15, v17, v18, v20, a3, a4, 16.0, 16.0);
  }

  return a4;
}

double sub_1005108A8(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&unk_100973270, &unk_1007B4688);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  dispatch thunk of LinkLoader.availablePresentation(for:)();

  if ((~v3 & 0xF000000000000007) == 0)
  {
  }

  return result;
}

void sub_100510964(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_100511C3C;
  v6[5] = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100007A08;
  v6[3] = &unk_1008C6EA8;
  v5 = _Block_copy(v6);

  [a1 presentViewController:a2 animated:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_100510A40()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100510B34(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for FlowPresentationContext();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v32 - v6;
  v7 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FlowDestination(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v38, v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v23(v15, 1, v16) != 1)
    {
      sub_10002B894(v15, &unk_1009796F0, &unk_1007BA400);
    }
  }

  else
  {
    sub_10013A05C(v15, v22);
  }

  if (swift_getEnumCaseMultiPayload() != 21)
  {
    sub_10013B6D8(v22, type metadata accessor for FlowDestination);
    return 0;
  }

  v24 = sub_10002849C(&qword_1009835C0, &unk_1007D2C60);
  sub_10002B894(&v22[*(v24 + 48)], &qword_100982460, &unk_1007B5C90);
  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v38, v12);
  if (v23(v12, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v25 = v23(v12, 1, v16);
    v26 = v37;
    if (v25 != 1)
    {
      sub_10002B894(v12, &unk_1009796F0, &unk_1007BA400);
    }
  }

  else
  {
    sub_10013A05C(v12, v19);
    v26 = v37;
  }

  v27 = v33;
  sub_10065DB50(v33);
  sub_10013B6D8(v19, type metadata accessor for FlowDestination);
  sub_10013B6D8(v9, type metadata accessor for FlowPresentationHints);
  v29 = v35;
  v28 = v36;
  (*(v36 + 32))(v35, v27, v26);
  v30 = (*(v28 + 88))(v29, v26);
  result = 1;
  if (v30 != enum case for FlowPresentationContext.presentModal(_:) && v30 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v28 + 8))(v29, v26);
    return 0;
  }

  return result;
}

uint64_t sub_10051102C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100118188(a2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v15 = *(sub_10002849C(&qword_100983590, &qword_1007CAEC8) + 64);
    v16 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
    (*(*(v16 - 8) + 8))(&v9[v15], v16);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_10013B6D8(v9, type metadata accessor for FlowDestination);
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_10013B6D8(v9, type metadata accessor for FlowDestination);
    v13 = 1;
    return v13 & 1;
  }

  sub_100118248(v9, v6);
  type metadata accessor for ArticleContainerViewController();
  v11 = swift_dynamicCastClass() == 0;
  v12 = static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)();
  sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
  v13 = v11 | v12 ^ 1;
  return v13 & 1;
}

uint64_t sub_100511258(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v6 - 8);
  v8 = &v67 - v7;
  v9 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v9 - 8);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  v14 = type metadata accessor for FlowDestination(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v70 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v67 - v18);
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v20 = Promise.__allocating_init()();
  v73 = a2;
  v21 = sub_100623FBC(a2);
  if (v21)
  {
    v72 = v20;
    v22 = v21;
    v23 = [v21 traitCollection];
    v79[4] = v22;
    sub_100005744(0, &qword_100975960, UINavigationController_ptr);
    v74 = v22;
    sub_10002849C(&qword_100975968, &unk_1007BA420);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v77 = 0;
      aBlock = 0u;
      v76 = 0u;
    }

    dispatch thunk of Action.clickSender.getter();
    sub_100462678(a1, v79, v13);
    v24 = *(v15 + 48);
    v25 = v24(v13, 1, v14);
    v67 = v24;
    if (v25 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v14) != 1)
      {
        sub_10002B894(v13, &unk_1009796F0, &unk_1007BA400);
      }
    }

    else
    {
      sub_10013A05C(v13, v19);
    }

    v27 = FlowAction.referrerUrl.getter();
    v29 = v28;
    FlowAction.referrerData.getter();
    sub_1003C1668(v19, v23, v27, v29, v8, &aBlock, a3, 1);
    v31 = v30;

    sub_10002B894(v8, &unk_1009767C0, &unk_1007B1880);
    sub_10013B6D8(v19, type metadata accessor for FlowDestination);
    sub_10002B894(&aBlock, &unk_100981880, &unk_1007BECD0);
    if (!v31)
    {
      sub_100511BDC();
      swift_allocError();
      *v46 = 0;
      v20 = v72;
      Promise.reject(_:)();

      return v20;
    }

    v68 = v31;
    type metadata accessor for ASKBagContract();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v69 = aBlock;
    v32 = [v74 viewControllers];
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v33 >> 62)
    {
      goto LABEL_48;
    }

    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v34)
    {
      while (__OFSUB__(v34--, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v34 = _CocoaArrayWrapper.endIndex.getter();
        if (!v34)
        {
          goto LABEL_49;
        }
      }

      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_19;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v36 = *(v33 + 32 + 8 * v34);
LABEL_19:
      v37 = v36;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v37)
      {

        goto LABEL_23;
      }
    }

LABEL_49:

    v37 = 0;
LABEL_23:
    v38 = [v74 topViewController];
    v20 = v72;
    if (v38)
    {
      v39 = v38;
      v40 = v37;
      if (v37)
      {
        v41 = v40;
        v42 = static NSObject.== infix(_:_:)();

        if (v42)
        {
          v77 = sub_100511CCC;
          v78 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v76 = sub_100007A08;
          *(&v76 + 1) = &unk_1008C6E80;
          v43 = _Block_copy(&aBlock);
          v44 = v41;

          v45 = v68;
          [v44 presentViewController:v68 animated:1 completion:v43];

          _Block_release(v43);

          return v20;
        }
      }

      else
      {
      }
    }

    else if (!v37)
    {
      v47 = 0;
    }

    v48 = v73;
    v49 = [v73 presentedViewController];
    if (v49)
    {
      v50 = v49;
      if (([v49 isBeingDismissed] & 1) == 0)
      {

        dispatch thunk of Action.clickSender.getter();
        v51 = v71;
        sub_100462678(a1, &aBlock, v71);
        v52 = v67;
        if (v67(v51, 1, v14) == 1)
        {
          v53 = v52;
          v54 = v70;
          swift_storeEnumTagMultiPayload();
          if (v53(v51, 1, v14) != 1)
          {
            sub_10002B894(v51, &unk_1009796F0, &unk_1007BA400);
          }
        }

        else
        {
          v54 = v70;
          sub_10013A05C(v51, v70);
        }

        v55 = sub_10051102C(v50, v54, v69);
        sub_10013B6D8(v54, type metadata accessor for FlowDestination);
        if (v55)
        {
          type metadata accessor for ArticleContainerViewController();
          v56 = swift_dynamicCastClass();
          if (v56)
          {
            v57 = *(v56 + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController);
            v58 = v50;
            v59 = [v57 popToRootViewControllerAnimated:0];
          }

          v60 = swift_allocObject();
          v61 = v68;
          v60[2] = v48;
          v60[3] = v61;
          v60[4] = v20;
          v77 = sub_100511C30;
          v78 = v60;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v76 = sub_100007A08;
          *(&v76 + 1) = &unk_1008C6E58;
          v62 = _Block_copy(&aBlock);

          v63 = v48;
          v64 = v61;

          [v50 dismissViewControllerAnimated:1 completion:v62];

          goto LABEL_43;
        }
      }
    }

    v77 = sub_100511CCC;
    v78 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v76 = sub_100007A08;
    *(&v76 + 1) = &unk_1008C6E08;
    v62 = _Block_copy(&aBlock);

    v65 = v68;
    [v48 presentViewController:v68 animated:1 completion:v62];

LABEL_43:
    _Block_release(v62);

    return v20;
  }

  sub_100511BDC();
  swift_allocError();
  *v26 = 1;
  Promise.reject(_:)();

  return v20;
}

unint64_t sub_100511BDC()
{
  result = qword_100989A78;
  if (!qword_100989A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989A78);
  }

  return result;
}

unint64_t sub_100511C6C()
{
  result = qword_100989A80;
  if (!qword_100989A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989A80);
  }

  return result;
}

unint64_t sub_100511CF0()
{
  result = qword_100989A88;
  if (!qword_100989A88)
  {
    type metadata accessor for ShelfBasedPageScrollAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989A88);
  }

  return result;
}

uint64_t sub_100511D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionOutcome();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_100624370(Strong);

  v17 = v9;
  sub_100065AF0();
  v10 = v9;
  sub_10002849C(&qword_100989A90, &qword_1007D2E00);
  if (swift_dynamicCast())
  {
    sub_100005A38(v15, v18);
    v11 = v19;
    v12 = v20;
    sub_10002A400(v18, v19);
    (*(v12 + 8))(a1, a2, v11, v12);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    (*(v5 + 104))(v7, enum case for ActionOutcome.performed(_:), v4);
    v13 = Promise.__allocating_init(value:)();

    sub_100007000(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_100511F68(v15);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_100511FD0();
    swift_allocError();
    v13 = Promise.__allocating_init(error:)();
  }

  return v13;
}

uint64_t sub_100511F68(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100989A98, &qword_1007D2E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100511FD0()
{
  result = qword_100989AA0;
  if (!qword_100989AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989AA0);
  }

  return result;
}

unint64_t sub_100512038()
{
  result = qword_100989AA8;
  if (!qword_100989AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989AA8);
  }

  return result;
}

uint64_t sub_10051208C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FontSource();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DC78 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v10, qword_1009D0500);
  v42 = v11;
  v16 = *(v11 + 16);
  v15 = v11 + 16;
  v17 = v16;
  v16(v13, v14, v10);
  v43 = v9;
  sub_10051284C(v9);
  v18 = UITraitCollection.isSizeClassCompact.getter();
  sub_100028BB8();
  if (v18)
  {
    v19 = static UIColor.primaryText.getter();
  }

  else
  {
    v19 = static UIColor.secondaryText.getter();
  }

  v41 = v19;
  v17(&a2[v7[6]], v13, v10);
  v38 = v17;
  sub_100518E88(a1);
  v17(v6, v13, v10);
  v37 = enum case for FontSource.useCase(_:);
  v20 = v40;
  v36 = *(v40 + 104);
  v36(v6);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v45);
  v44 = v10;
  v35[1] = v15;
  v22 = *(v20 + 16);
  v22(v21, v6, v4);
  StaticDimension.init(_:scaledLike:)();
  v39 = v13;
  v23 = *(v20 + 8);
  v23(v6, v4);
  v38(v6, v13, v44);
  (v36)(v6, v37, v4);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v45);
  v22(v24, v6, v4);
  StaticDimension.init(_:scaledLike:)();
  v23(v6, v4);
  v25 = v7[9];
  v26 = &a2[v7[12]];
  v27 = type metadata accessor for StaticDimension();
  v26[3] = v27;
  v26[4] = &protocol witness table for StaticDimension;
  v28 = sub_1000056E0(v26);
  v29 = *(*(v27 - 8) + 16);
  v30 = v43;
  v29(v28, &v43[v25], v27);
  v31 = v7[10];
  v32 = &a2[v7[13]];
  v32[3] = v27;
  v32[4] = &protocol witness table for StaticDimension;
  v33 = sub_1000056E0(v32);
  v29(v33, (v30 + v31), v27);
  sub_1001EFF9C(v30);
  result = (*(v42 + 8))(v39, v44);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = v41;
  *&a2[v7[7]] = 0;
  *&a2[v7[8]] = 1098907648;
  *&a2[v7[11]] = 0;
  return result;
}

void sub_100512518(void *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = a1;
  }

  else
  {
    sub_100028BB8();
    v29 = static UIColor.appTint.getter();
  }

  v9 = qword_10096DC50;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D0488);
  v28 = v12;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v14 = v13[6];
  v15 = *(v11 - 8);
  v16 = *(v15 + 16);
  v27 = v16;
  v24[1] = v15 + 16;
  v16(&a2[v14], v12, v11);
  v16(v8, v12, v11);
  v26 = enum case for FontSource.useCase(_:);
  v25 = v6[13];
  v25(v8);
  v31 = v5;
  v32 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v30);
  v18 = v6[2];
  v18(v17, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  v19 = v6[1];
  v19(v8, v5);
  v27(v8, v28, v11);
  (v25)(v8, v26, v5);
  v31 = v5;
  v32 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v30);
  v18(v20, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  v19(v8, v5);
  v21 = &a2[v13[12]];
  v22 = type metadata accessor for ZeroDimension();
  v21[3] = v22;
  v21[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v21);
  static ZeroDimension.zero.getter();
  v23 = &a2[v13[13]];
  v23[3] = v22;
  v23[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v23);
  static ZeroDimension.zero.getter();
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = v29;
  *&a2[v13[7]] = 0;
  *&a2[v13[8]] = 1077936128;
  *&a2[v13[11]] = 1098907648;
}

void sub_10051284C(char *a1@<X8>)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028BB8();
  v24 = static UIColor.secondaryText.getter();
  if (qword_10096DC70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D04E8);
  v23 = v7;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = v8[6];
  v10 = *(v6 - 8);
  v11 = *(v10 + 16);
  v22 = v11;
  v19[1] = v10 + 16;
  v11(&a1[v9], v7, v6);
  v11(v5, v7, v6);
  v21 = enum case for FontSource.useCase(_:);
  v20 = v3[13];
  v20(v5);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v25);
  v13 = v3[2];
  v13(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v14(v5, v2);
  v22(v5, v23, v6);
  (v20)(v5, v21, v2);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v25);
  v13(v15, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14(v5, v2);
  v16 = &a1[v8[12]];
  v17 = type metadata accessor for ZeroDimension();
  v16[3] = v17;
  v16[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v16);
  static ZeroDimension.zero.getter();
  v18 = &a1[v8[13]];
  v18[3] = v17;
  v18[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v18);
  static ZeroDimension.zero.getter();
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = v24;
  *&a1[v8[7]] = 0;
  *&a1[v8[8]] = 1098907648;
  *&a1[v8[11]] = 0;
}

void sub_100512B5C()
{
  v0 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v0, qword_1009D2658);
  v1 = sub_1000056A8(v0, qword_1009D2658);
  sub_100512518(0, v1);
}

uint64_t sub_100512BB0()
{
  v0 = type metadata accessor for FontSource();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v29 - v6;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2670);
  v38 = v11;
  v12 = sub_1000056A8(v11, qword_1009D2670);
  sub_100028BB8();
  v36 = static UIColor.primaryText.getter();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v14;
  v35 = v13;
  if (qword_10096DC50 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v7, qword_1009D0488);
  v43 = v7;
  v16 = *(v8 + 16);
  v33 = v10;
  v16(v10, v15, v7);
  v16(v2, v15, v7);
  v31 = enum case for FontSource.useCase(_:);
  v17 = v37;
  v30 = *(v37 + 104);
  v30(v2);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v47);
  v32 = v8;
  v29 = *(v17 + 16);
  v29(v18, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v19 = *(v17 + 8);
  v19(v2, v0);
  v16(v2, v15, v43);
  (v30)(v2, v31, v0);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v47);
  v29(v20, v2, v0);
  v21 = v39;
  StaticDimension.init(_:scaledLike:)();
  v19(v2, v0);
  v22 = type metadata accessor for ZeroDimension();
  v48 = v22;
  v49 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v47);
  static ZeroDimension.zero.getter();
  v45 = v22;
  v46 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v44);
  static ZeroDimension.zero.getter();
  v23 = v35;
  *v12 = v36;
  *(v12 + 1) = v23;
  v24 = v33;
  *(v12 + 2) = v34;
  v25 = v38;
  (*(v32 + 32))(&v12[v38[6]], v24, v43);
  *&v12[v25[7]] = 0;
  *&v12[v25[8]] = 1077936128;
  v26 = v41;
  v27 = *(v40 + 32);
  v27(&v12[v25[9]], v42, v41);
  v27(&v12[v25[10]], v21, v26);
  *&v12[v25[11]] = 1098907648;
  sub_100005A38(&v47, &v12[v25[12]]);
  return sub_100005A38(&v44, &v12[v25[13]]);
}

uint64_t sub_100513098()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2688);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2688);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D04A0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100513544()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D26A0);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D26A0);
  sub_100028BB8();
  v31 = static UIColor.secondaryText.getter();
  if (qword_10096DC60 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D04B8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_1005139F4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D26B8);
  v12 = sub_1000056A8(v11, qword_1009D26B8);
  sub_100028BB8();
  v23 = static UIColor.secondaryText.getter();
  if (qword_10096DC68 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D04D0);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D2430);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 0;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_100513E4C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D26D0);
  v12 = sub_1000056A8(v11, qword_1009D26D0);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6F0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D24F0);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_1005142A8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D26E8);
  v12 = sub_1000056A8(v11, qword_1009D26E8);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6F0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D24F0);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_100514704()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2700);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2700);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0518);
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v27 = enum case for FontSource.useCase(_:);
  v36 = v8;
  v28 = v1[13];
  v28(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v29 = v9;
  v17 = v1[2];
  v17(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v26 = v1[1];
  v26(v3, v0);
  v15(v3, v14, v36);
  (v28)(v3, v27, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v17(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v26(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100514BD4(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v40 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v16, a3);
  v17 = sub_1000056A8(v16, a3);
  sub_100028BB8();
  v39 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v13, qword_1009D0518);
  v38 = v14;
  v19 = *(v14 + 16);
  v19(v43, v18, v13);
  v19(v7, v18, v13);
  v20 = v5[13];
  v35 = enum case for FontSource.useCase(_:);
  v34 = v20;
  v20(v7);
  v48 = v4;
  v49 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v47);
  v37 = v13;
  v33 = v5[2];
  v33(v21, v7, v4);
  v36 = v12;
  StaticDimension.init(_:scaledLike:)();
  v32 = v5[1];
  v32(v7, v4);
  if (qword_10096DC60 != -1)
  {
    swift_once();
  }

  v22 = v37;
  v23 = sub_1000056A8(v37, qword_1009D04B8);
  v19(v7, v23, v22);
  v34(v7, v35, v4);
  v48 = v4;
  v49 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(&v47);
  v33(v24, v7, v4);
  v25 = v40;
  StaticDimension.init(_:scaledLike:)();
  v32(v7, v4);
  v26 = type metadata accessor for ZeroDimension();
  v48 = v26;
  v49 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v47);
  static ZeroDimension.zero.getter();
  v45 = v26;
  v46 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v44);
  static ZeroDimension.zero.getter();
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v27 = v38;
  *v17 = v39;
  (*(v27 + 32))(&v17[v16[6]], v43, v22);
  *&v17[v16[7]] = 0;
  *&v17[v16[8]] = 1090519040;
  v28 = v42;
  v29 = *(v41 + 32);
  v29(&v17[v16[9]], v36, v42);
  v29(&v17[v16[10]], v25, v28);
  *&v17[v16[11]] = 1102053376;
  sub_100005A38(&v47, &v17[v16[12]]);
  return sub_100005A38(&v44, &v17[v16[13]]);
}

uint64_t sub_1005150D8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2748);
  v12 = sub_1000056A8(v11, qword_1009D2748);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D2430);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_100515538()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2760);
  v12 = sub_1000056A8(v11, qword_1009D2760);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D2430);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_100515994()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2778);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2778);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0518);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100515E44()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2790);
  v12 = sub_1000056A8(v11, qword_1009D2790);
  sub_100028BB8();
  v23 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0518);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v32);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_1000056A8(v26, qword_1009D2430);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = type metadata accessor for ZeroDimension();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v32);
  static ZeroDimension.zero.getter();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v29);
  static ZeroDimension.zero.getter();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_100005A38(&v32, &v12[v11[12]]);
  return sub_100005A38(&v29, &v12[v11[13]]);
}

uint64_t sub_1005162A0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D27A8);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D27A8);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC80 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0518);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_10051674C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D27C0);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D27C0);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DC88 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0530);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100516C08()
{
  v0 = type metadata accessor for FontSource();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D27F0);
  v43 = v11;
  v37 = sub_1000056A8(v11, qword_1009D27F0);
  if (qword_10096D558 != -1)
  {
    swift_once();
  }

  v12 = qword_1009CEC98;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v14;
  v41 = v13;
  v15 = qword_10096DC98;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v7, qword_1009D0560);
  v36 = v8;
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v51);
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  StaticDimension.init(_:scaledLike:)();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  StaticDimension.init(_:scaledLike:)();
  v21(v18, v0);
  v24 = type metadata accessor for ZeroDimension();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v51);
  static ZeroDimension.zero.getter();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v48);
  static ZeroDimension.zero.getter();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_100005A38(&v51, &v26[v29[12]]);
  return sub_100005A38(&v48, &v26[v29[13]]);
}

uint64_t sub_100517130(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v49 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v38 - v10;
  v11 = type metadata accessor for FontUseCase();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v15, a3);
  v48 = v15;
  v16 = sub_1000056A8(v15, a3);
  if (qword_10096D558 != -1)
  {
    swift_once();
  }

  v17 = qword_1009CEC98;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v19;
  v46 = v18;
  v20 = qword_10096DC90;
  v44 = v17;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v11, qword_1009D0548);
  v42 = v12;
  v22 = *(v12 + 16);
  v43 = v14;
  v22(v14, v21, v11);
  v23 = v6;
  v22(v6, v21, v11);
  v41 = enum case for FontSource.useCase(_:);
  v24 = v47;
  v39 = v11;
  v40 = *(v47 + 104);
  v40(v23);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(&v56);
  v38 = *(v24 + 16);
  v38(v25, v23, v4);
  StaticDimension.init(_:scaledLike:)();
  v26 = *(v24 + 8);
  v26(v23, v4);
  v27 = v21;
  v28 = v39;
  v22(v23, v27, v39);
  (v40)(v23, v41, v4);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(&v56);
  v38(v29, v23, v4);
  v30 = v49;
  StaticDimension.init(_:scaledLike:)();
  v26(v23, v4);
  v31 = type metadata accessor for ZeroDimension();
  v57 = v31;
  v58 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v56);
  static ZeroDimension.zero.getter();
  v54 = v31;
  v55 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v53);
  static ZeroDimension.zero.getter();
  v32 = v45;
  v33 = v46;
  *v16 = v44;
  *(v16 + 1) = v33;
  *(v16 + 2) = v32;
  v34 = v48;
  (*(v42 + 32))(&v16[v48[6]], v43, v28);
  *&v16[v34[7]] = 0;
  *&v16[v34[8]] = 1090519040;
  v35 = v51;
  v36 = *(v50 + 32);
  v36(&v16[v34[9]], v52, v51);
  v36(&v16[v34[10]], v30, v35);
  *&v16[v34[11]] = 0;
  sub_100005A38(&v56, &v16[v34[12]]);
  return sub_100005A38(&v53, &v16[v34[13]]);
}

uint64_t sub_100517664()
{
  v0 = type metadata accessor for FontSource();
  v44 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v35 - v6;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2820);
  v45 = v11;
  v12 = sub_1000056A8(v11, qword_1009D2820);
  if (qword_10096D558 != -1)
  {
    swift_once();
  }

  v13 = qword_1009CEC98;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v15;
  v43 = v14;
  v16 = qword_10096DC98;
  v41 = v13;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v7, qword_1009D0560);
  v39 = v8;
  v40 = v10;
  v18 = *(v8 + 16);
  v18(v10, v17, v7);
  v19 = v2;
  v18(v2, v17, v7);
  v38 = enum case for FontSource.useCase(_:);
  v20 = v44;
  v36 = v7;
  v37 = *(v44 + 104);
  v37(v19);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v53);
  v35 = *(v20 + 16);
  v35(v21, v19, v0);
  StaticDimension.init(_:scaledLike:)();
  v22 = *(v20 + 8);
  v22(v19, v0);
  v23 = v17;
  v24 = v36;
  v18(v19, v23, v36);
  (v37)(v19, v38, v0);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(&v53);
  v35(v25, v19, v0);
  v26 = v46;
  StaticDimension.init(_:scaledLike:)();
  v22(v19, v0);
  v27 = type metadata accessor for ZeroDimension();
  v54 = v27;
  v55 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v53);
  static ZeroDimension.zero.getter();
  v51 = v27;
  v52 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v50);
  static ZeroDimension.zero.getter();
  v28 = v40;
  v29 = v42;
  v30 = v43;
  *v12 = v41;
  *(v12 + 1) = v30;
  *(v12 + 2) = v29;
  v31 = v45;
  (*(v39 + 32))(&v12[v45[6]], v28, v24);
  *&v12[v31[7]] = 0;
  *&v12[v31[8]] = 1090519040;
  v32 = v48;
  v33 = *(v47 + 32);
  v33(&v12[v31[9]], v49, v48);
  v33(&v12[v31[10]], v26, v32);
  *&v12[v31[11]] = 0;
  sub_100005A38(&v53, &v12[v31[12]]);
  return sub_100005A38(&v50, &v12[v31[13]]);
}

uint64_t sub_100517B78()
{
  v0 = type metadata accessor for FontSource();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v11, qword_1009D2838);
  v43 = v11;
  v37 = sub_1000056A8(v11, qword_1009D2838);
  if (qword_10096D560 != -1)
  {
    swift_once();
  }

  v12 = qword_1009CECA0;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v14;
  v41 = v13;
  v15 = qword_10096DCA0;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v7, qword_1009D0578);
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v51);
  v36 = v8;
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  StaticDimension.init(_:scaledLike:)();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  StaticDimension.init(_:scaledLike:)();
  v21(v18, v0);
  v24 = type metadata accessor for ZeroDimension();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v51);
  static ZeroDimension.zero.getter();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v48);
  static ZeroDimension.zero.getter();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_100005A38(&v51, &v26[v29[12]]);
  return sub_100005A38(&v48, &v26[v29[13]]);
}

uint64_t sub_10051808C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2850);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2850);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DCA8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D0590);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_100518534()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2868);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2868);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DCB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D05A8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

uint64_t sub_1005189E0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_100005644(v12, qword_1009D2880);
  v32 = v12;
  v13 = sub_1000056A8(v12, qword_1009D2880);
  sub_100028BB8();
  v31 = static UIColor.primaryText.getter();
  if (qword_10096DCB8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v8, qword_1009D05C0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v20 = type metadata accessor for ZeroDimension();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v41);
  static ZeroDimension.zero.getter();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v38);
  static ZeroDimension.zero.getter();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_100005A38(&v41, &v13[v21[12]]);
  return sub_100005A38(&v38, &v13[v21[13]]);
}

double sub_100518E88(void *a1)
{
  [a1 displayScale];
  v3 = v2;
  v4 = 1.0 / v2;
  if (v2 < 3.0)
  {
    v5 = 46.0;
  }

  else
  {
    v5 = 46.0 - v4;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

LABEL_11:
    v13 = 4.0;
    if (v3 > 2.0)
    {
      v13 = 5.0;
    }

    return v13 + v5;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

    goto LABEL_11;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    return v5 + 3.0;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {

    return v5 + 3.0;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    goto LABEL_28;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {

LABEL_28:
    v13 = 2.0;
    if (v3 <= 2.0)
    {
      v13 = 1.0;
    }

    return v13 + v5;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
    goto LABEL_33;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_36;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
      if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
      {
      }

      else
      {
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v41 & 1) == 0)
        {
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
          if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
          {
          }

          else
          {
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v46 & 1) == 0)
            {
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v48;
              if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
              {
                goto LABEL_33;
              }

              v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v51)
              {
                goto LABEL_36;
              }

              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v53;
              if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
              {
                goto LABEL_33;
              }

              v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v56)
              {
                goto LABEL_36;
              }

              v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v59 = v58;
              if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
              {
LABEL_33:

LABEL_34:

                return v5;
              }

              v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v61 & 1) == 0)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                goto LABEL_34;
              }

LABEL_36:

              return v5;
            }
          }

          return v5 + -5.0;
        }
      }

      v13 = v4 + -5.0;
      return v13 + v5;
    }
  }

  v36 = 2.0;
  if (v3 <= 2.0)
  {
    v36 = 3.0;
  }

  return v5 - v36;
}