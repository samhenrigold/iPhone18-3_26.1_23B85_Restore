void sub_10005115C()
{
  v1 = String._bridgeToObjectiveC()();
  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5250;
  *(inited + 32) = NSFontAttributeName;
  v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeFont];
  *(inited + 64) = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
  *(inited + 40) = v3;
  v4 = NSFontAttributeName;
  v5 = v3;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_10000851C(inited + 32);
  type metadata accessor for Key(0);
  sub_10003CDAC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 sizeWithAttributes:isa];
  v8 = v7;
  v10 = v9;

  v11 = v10 + 0.0 + *&v0[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_hightDelta];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v8 + 6.0 + 6.0, v11}];
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v0;
  *(v13 + 40) = v8 + 6.0 + 6.0;
  *(v13 + 48) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100051CE8;
  *(v14 + 24) = v13;
  aBlock[4] = sub_100051D08;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031174;
  aBlock[3] = &unk_100105720;
  v15 = _Block_copy(aBlock);
  v16 = v0;

  [v12 imageWithActions:v15];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

void sub_100051424(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v9 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a1 + 6.0 + 6.0, a2 + 0.0, a4 * 0.5}];
  [*(a6 + OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_backgroundColor) setFill];
  [v9 fill];
  v10 = String._bridgeToObjectiveC()();
  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D66A0;
  *(inited + 32) = NSFontAttributeName;
  v12 = *(a6 + OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeFont);
  v13 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
  *(inited + 40) = v12;
  *(inited + 64) = v13;
  *(inited + 72) = NSForegroundColorAttributeName;
  v14 = *(a6 + OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeColor);
  *(inited + 104) = sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  *(inited + 80) = v14;
  v15 = NSFontAttributeName;
  v16 = v12;
  v17 = NSForegroundColorAttributeName;
  v18 = v14;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011C900, &unk_1000D6750);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_10003CDAC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 drawInRect:isa withAttributes:{6.0, 0.0, a1, a2}];
}

id sub_1000516C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PillBadgeTextAttachment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100051788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSMutableAttributedString) init];
  v9 = &swift_errorRelease_ptr;
  v10 = [objc_opt_self() attributedStringWithAttachment:a3];
  if (*(static Locale.preferredLanguages.getter() + 16))
  {

    v9 = &swift_errorRelease_ptr;
  }

  Locale.Language.init(identifier:)();
  v11 = Locale.Language.characterDirection.getter();
  (*(v5 + 8))(v7, v4);
  if (v11 == 2)
  {
    [v8 appendAttributedString:v10];
    v12 = objc_allocWithZone(v9[148]);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithString:v13];

    [v8 appendAttributedString:v14];
    v15 = objc_allocWithZone(v9[148]);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 initWithString:v16];

    [v8 appendAttributedString:v17];
  }

  else
  {
    v18 = objc_allocWithZone(v9[148]);
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 initWithString:v19];

    [v8 appendAttributedString:v20];
    v21 = objc_allocWithZone(v9[148]);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithString:v22];

    [v8 appendAttributedString:v23];
    [v8 appendAttributedString:v10];
  }

  return v8;
}

id sub_100051A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = [objc_opt_self() systemFontOfSize:11.0 weight:UIFontWeightSemibold];
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = [v9 blackColor];
  v12 = [objc_allocWithZone(UIColor) initWithRed:0.533333333 green:0.533333333 blue:0.549019608 alpha:1.0];
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.552941176 blue:0.576470588 alpha:1.0];
  v14 = type metadata accessor for PillBadgeTextAttachment();
  v15 = objc_allocWithZone(v14);
  v16 = v15;
  v17 = &v15[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeText];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v15[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeFont] = v8;
  if (a5)
  {
    v18 = v11;
  }

  else
  {
    v18 = v10;
  }

  if (a5)
  {
    v19 = v13;
  }

  else
  {
    v19 = v12;
  }

  *&v15[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeColor] = v18;
  v20 = v18;
  *&v16[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_backgroundColor] = v19;
  v21 = &v16[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_padding];
  *v21 = xmmword_1000D80E0;
  *(v21 + 1) = xmmword_1000D80E0;
  *&v16[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_hightDelta] = 0x4008000000000000;
  v31.receiver = v16;
  v31.super_class = v14;

  v22 = v8;
  v23 = v19;
  v24 = objc_msgSendSuper2(&v31, "initWithData:ofType:", 0, 0);
  sub_10005115C();
  v26 = v25;
  [v24 setImage:v25];

  v27 = sub_100051788(a1, a2, v24);
  return v27;
}

uint64_t sub_100051CB0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100051D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100051D28(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v4 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];

  v36 = [objc_opt_self() sharedStyle];
  [v36 setAudioProductID:*(a1 + *(type metadata accessor for HeadphoneViewModel(0) + 84))];
  v6 = [objc_allocWithZone(VTUIProximityEnrollTrainingViewController) init];
  [v6 setDelegate:v2];
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v2 view];
    if (v9)
    {
      v10 = v9;
      [v9 addSubview:v8];

      [v2 addChildViewController:v6];
      [v6 didMoveToParentViewController:v2];
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000D5240;
      v12 = [v8 topAnchor];
      v13 = [v2 view];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 topAnchor];

        v16 = [v12 constraintEqualToAnchor:v15];
        *(v11 + 32) = v16;
        v17 = [v8 bottomAnchor];
        v18 = [v2 view];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 bottomAnchor];

          v21 = [v17 constraintEqualToAnchor:v20];
          *(v11 + 40) = v21;
          v22 = [v8 leadingAnchor];
          v23 = [v2 view];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 leadingAnchor];

            v26 = [v22 constraintEqualToAnchor:v25 constant:-6.0];
            *(v11 + 48) = v26;
            v27 = [v8 trailingAnchor];
            v28 = [v2 view];
            if (v28)
            {
              v29 = v28;
              v30 = objc_opt_self();
              v31 = [v29 trailingAnchor];

              v32 = [v27 constraintEqualToAnchor:v31 constant:6.0];
              *(v11 + 56) = v32;
              v33 = [v8 heightAnchor];
              v34 = [v33 constraintEqualToConstant:390.0];

              *(v11 + 64) = v34;
              sub_10000F5A0();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v30 activateConstraints:isa];

              goto LABEL_9;
            }

LABEL_17:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
}

void sub_1000522AC(char *a1, uint64_t a2, void (*a3)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    a3();
    swift_unknownObjectRelease();
  }
}

id sub_100052378(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_10005245C()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [objc_opt_self() lightGrayColor];
    [v4 setBackgroundColor:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:450.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100052588()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v2 - 8);
  v4 = v25 - v3 + 40;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    sub_1000145EC(v6 + 16, v25);
    swift_unknownObjectRelease();
    v7 = v26;
    if (v26)
    {
      v8 = sub_10000E7E4(v25, v26);
      v9 = *(v7 - 8);
      __chkstk_darwin(v8);
      v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
      (*(v9 + 16))(v11);
      sub_10000E950(v25, &qword_10011FBC0, &unk_1000D5EF0);
      v12 = *v11;
      v13 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v12 + v13, v4);
      (*(v9 + 8))(v11, v7);
      v14 = type metadata accessor for HeadphoneModel(0);
      (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
      sub_10000E950(v4, &qword_10011EBD0, &unk_1000D5EE0);
      v15 = [v0 contentView];
      v16 = sub_10005245C();
      [v15 addSubview:v16];

      v17 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset];
      v18 = [v0 contentView];
      v19 = [v18 mainContentGuide];

      [v17 pinToOtherWithLayoutGuide:v19];
      goto LABEL_9;
    }

    sub_10000E950(v25, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v20 = type metadata accessor for HeadphoneModel(0);
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  sub_10000E950(v4, &qword_10011EBD0, &unk_1000D5EE0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000A570(v21, qword_100123040);
  v19 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v19, v22, "HeadhponeHeartRateTutorial2ViewController: Headphone Model is nil, exiting", v23, 2u);
  }

LABEL_9:
}

void sub_100052A94(uint64_t a1)
{
  sub_100033A5C(142);
  v3 = String._bridgeToObjectiveC()();

  v4 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_subtitleLabel];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100053210;
  *(v6 + 24) = v5;
  v10[4] = sub_100013784;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000B49D0;
  v10[3] = &unk_100105818;
  v7 = _Block_copy(v10);
  v8 = v4;
  v9 = v1;

  [v9 perormTapActionWithRecognizer:a1 targetString:v3 inLabel:v8 action:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

uint64_t sub_100052C38(void *a1)
{
  v2 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A570(v9, qword_100123040);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100078978(*&v10[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_learnMoreLink], *&v10[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_learnMoreLink + 8], &v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "HeadhponeHeartRateTutorial2ViewController: User tapped learn more, presenting support link %s", v13, 0xCu);
    sub_10000EA94(v14);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B7214();
    swift_unknownObjectRelease();
  }

  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000E950(v4, &qword_10011CF08, &unk_1000D7310);
  }

  (*(v6 + 32))(v8, v4, v5);
  v16 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  sub_1000A3860(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100053240();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 openURL:v19 options:isa completionHandler:0];

  return (*(v6 + 8))(v8, v5);
}

id sub_100053100(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_learnMoreLink];
  *v4 = 0xD000000000000025;
  v4[1] = 0x80000001000DC6F0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_subtitleLabel;
  *&v1[v5] = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_type] = 31;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithContentView:", a1);
}

uint64_t sub_1000531D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100053240()
{
  result = qword_10011C9A0;
  if (!qword_10011C9A0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011C9A0);
  }

  return result;
}

void sub_100053298(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v4 - 8);
  v6 = &v120 - v5;
  v7 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v120 - v8;
  v10 = type metadata accessor for HeadphoneViewModel(0);
  v11 = (a1 + *(v10 + 56));
  v12 = v11[11];
  v13 = v11[13];
  v147 = v11[12];
  v148 = v13;
  v14 = v11[7];
  v15 = v11[9];
  v143 = v11[8];
  v144 = v15;
  v16 = v11[9];
  v17 = v11[11];
  v145 = v11[10];
  v146 = v17;
  v18 = v11[3];
  v19 = v11[5];
  v139 = v11[4];
  v140 = v19;
  v20 = v11[5];
  v21 = v11[7];
  v141 = v11[6];
  v142 = v21;
  v22 = v11[1];
  v136[0] = *v11;
  v136[1] = v22;
  v23 = v11[3];
  v25 = *v11;
  v24 = v11[1];
  v137 = v11[2];
  v138 = v23;
  v161 = v12;
  v162 = v147;
  v26 = v11[14];
  v163 = v11[13];
  v164 = v26;
  v157 = v14;
  v158 = v143;
  v159 = v16;
  v160 = v145;
  v153 = v18;
  v154 = v139;
  v155 = v20;
  v156 = v141;
  v149 = v26;
  v150 = v25;
  v151 = v24;
  v152 = v137;
  if (sub_100026134(&v150) == 1)
  {
    if (qword_10011C6B0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_25;
  }

  v126 = v6;
  v135[12] = v162;
  v135[13] = v163;
  v135[14] = v164;
  v135[8] = v158;
  v135[9] = v159;
  v135[10] = v160;
  v135[11] = v161;
  v135[4] = v154;
  v135[5] = v155;
  v135[6] = v156;
  v135[7] = v157;
  v135[0] = v150;
  v135[1] = v151;
  v135[2] = v152;
  v135[3] = v153;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = String._bridgeToObjectiveC()();
  *&v134[32] = sub_100061020;
  *&v134[40] = v31;
  *v134 = _NSConcreteStackBlock;
  *&v134[8] = 1107296256;
  *&v134[16] = sub_10000C034;
  *&v134[24] = &unk_100105A58;
  v33 = _Block_copy(v134);
  v125 = objc_opt_self();
  v34 = [v125 actionWithTitle:v32 style:0 handler:v33];
  v128 = v10;
  v35 = v34;

  _Block_release(v33);

  v36 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction];
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction] = v35;
  v37 = v35;

  v38 = *(v128 + 44);
  v127 = a1;
  sub_10000E88C(a1 + v38, v9, &qword_10011CCF0, qword_1000D61B0);
  v39 = type metadata accessor for HeadphoneAssets(0);
  v40 = (*(*(v39 - 8) + 48))(v9, 1, v39);
  v41 = &unk_100116000;
  v122 = v37;
  if (v40 == 1)
  {
    sub_10000E950(v9, &qword_10011CCF0, qword_1000D61B0);
    goto LABEL_13;
  }

  v42 = &v9[*(v39 + 40)];
  v43 = *v42;
  v44 = *(v42 + 1);
  v45 = *v42;
  sub_100062878(v9, type metadata accessor for HeadphoneAssets);
  if (!v43)
  {
LABEL_13:
    v63 = [objc_allocWithZone(PRXLabel) initWithStyle:4];
    [v63 v41[75]];
    v64 = v41;
    v65 = v63;
    [v65 setTextAlignment:1];
    v66 = [v2 contentView];
    [v66 addSubview:v65];

    v67 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel];
    v121 = v65;
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel] = v65;

    v68 = [objc_allocWithZone(PRXLabel) initWithStyle:5];
    [v68 v64[75]];
    v69 = v68;
    [v69 setTextAlignment:1];
    v70 = [v2 contentView];
    [v70 addSubview:v69];

    v71 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody];
    v120 = v69;
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody] = v69;

    v72 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v73 = String._bridgeToObjectiveC()();
    v133[4] = sub_100061068;
    v133[5] = v72;
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 1107296256;
    v124 = &v133[2];
    v133[2] = sub_10000C034;
    v133[3] = &unk_100105A80;
    v74 = _Block_copy(v133);
    v75 = v125;
    v76 = [v125 actionWithTitle:v73 style:3 handler:v74];

    _Block_release(v74);

    v77 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction] = v76;

    sub_100033A5C(0);
    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v79 = String._bridgeToObjectiveC()();

    v133[4] = sub_100061098;
    v133[5] = v78;
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 1107296256;
    v133[2] = sub_10000C034;
    v133[3] = &unk_100105AA8;
    v80 = _Block_copy(v133);
    v81 = [v75 actionWithTitle:v79 style:0 handler:v80];

    _Block_release(v80);

    v82 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction] = v81;

    v83 = objc_opt_self();
    v84 = [v83 mainBundle];
    v165._object = 0xE000000000000000;
    v85._countAndFlagsBits = 0xD000000000000015;
    v85._object = 0x80000001000E0560;
    v86.value._object = 0x80000001000DBB60;
    v123 = "TUTORIAL_POSITION_TITLE";
    v86.value._countAndFlagsBits = 0xD000000000000010;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    v165._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v85, v86, v84, v87, v165);

    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v89 = String._bridgeToObjectiveC()();

    v133[4] = sub_1000610C4;
    v133[5] = v88;
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 1107296256;
    v133[2] = sub_10000C034;
    v133[3] = &unk_100105AD0;
    v90 = _Block_copy(v133);
    v91 = [v75 actionWithTitle:v89 style:0 handler:v90];

    _Block_release(v90);

    v92 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction] = v91;

    v93 = [v83 mainBundle];
    v166._object = 0xE000000000000000;
    v94._countAndFlagsBits = 0xD000000000000017;
    v94._object = 0x80000001000E0580;
    v95.value._object = 0x80000001000DBB60;
    v95.value._countAndFlagsBits = 0xD000000000000010;
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    v166._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v94, v95, v93, v96, v166);

    v97 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v98 = String._bridgeToObjectiveC()();

    v133[4] = sub_1000610F0;
    v133[5] = v97;
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 1107296256;
    v133[2] = sub_10000C034;
    v133[3] = &unk_100105AF8;
    v99 = _Block_copy(v133);
    v100 = [v75 actionWithTitle:v98 style:0 handler:v99];

    _Block_release(v99);

    v101 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction] = v100;

    v102 = [v83 mainBundle];
    v167._object = 0xE000000000000000;
    v103._countAndFlagsBits = 0xD000000000000017;
    v103._object = 0x80000001000E05A0;
    v104.value._object = (v123 | 0x8000000000000000);
    v104.value._countAndFlagsBits = 0xD000000000000010;
    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    v167._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v104, v102, v105, v167);

    v106 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v107 = String._bridgeToObjectiveC()();

    v133[4] = sub_10006111C;
    v133[5] = v106;
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 1107296256;
    v133[2] = sub_10000C034;
    v133[3] = &unk_100105B20;
    v108 = _Block_copy(v133);
    v109 = [v75 actionWithTitle:v107 style:1 handler:v108];

    _Block_release(v108);

    v110 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipVideoSegmentAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipVideoSegmentAction] = v109;

    v111 = v126;
    sub_100062810(v127, v126, type metadata accessor for HeadphoneViewModel);
    (*(*(v128 - 8) + 56))(v111, 0, 1);
    v112 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
    swift_beginAccess();
    sub_10004D3E8(v111, &v2[v112]);
    swift_endAccess();
    v113 = sub_1000543A8();
    v114 = v113;
    if (v113 >> 62)
    {
      v115 = _CocoaArrayWrapper.endIndex.getter();
      if (v115)
      {
LABEL_15:
        v116 = 0;
        while (1)
        {
          if ((v114 & 0xC000000000000001) != 0)
          {
            v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v116 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v117 = *(v114 + 8 * v116 + 32);
          }

          v118 = v117;
          v119 = v116 + 1;
          if (__OFADD__(v116, 1))
          {
            break;
          }

          [v117 setAlpha:0.0];

          ++v116;
          if (v119 == v115)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
LABEL_3:
        v27 = type metadata accessor for Logger();
        sub_10000A570(v27, qword_10011E560);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "HeadphoneConnectViewController: setUpMovieLayout without layoutMetrics, returning", v30, 2u);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v115 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v115)
      {
        goto LABEL_15;
      }
    }

LABEL_27:

    v28 = v120;
LABEL_28:

    return;
  }

  v46 = &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  swift_beginAccess();
  v47 = *v46;
  *v46 = v43;
  *(v46 + 1) = v44;
  v48 = v45;

  if (*(v127 + *(v128 + 92)) == 1)
  {
    v49 = [v48 layer];
    CATransform3DMakeScale(v134, 0.85, 0.85, 1.0);
    [v49 setTransform:v134];
  }

  v50 = v48;
  sub_10000E88C(v136, v134, &unk_10011FF80, &qword_1000D8590);
  sub_1000AC67C(v50, v135, 0, v134);
  memcpy(v133, v134, 0x130uLL);
  v51 = [v2 view];
  if (v51)
  {
    v52 = v51;
    v53 = *&v134[8];
    v54 = *v134;
    [*v134 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v52 addLayoutGuide:v53];
    [v52 addSubview:v54];
    [v52 sendSubviewToBack:v54];

    v55 = [v2 contentView];
    v56 = [objc_opt_self() clearColor];
    [v55 setBackgroundColor:v56];

    v57 = [v2 contentView];
    v58 = [v57 mainContentGuide];

    v59 = [v2 view];
    if (v59)
    {
      v60 = v59;
      v61 = objc_opt_self();
      sub_1000AB754(v58, v60);

      sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v61 activateConstraints:isa];

      memcpy(v129, v133, sizeof(v129));
      memcpy(v130, v133, sizeof(v130));
      nullsub_1();
      memcpy(v131, &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], sizeof(v131));
      memcpy(&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], v130, 0x130uLL);
      sub_10006207C(v129, v132);
      sub_10000E950(v131, &qword_10011E760, &qword_1000D8598);
      memcpy(v132, v133, sizeof(v132));
      sub_10000A3B4(v132);
      v41 = &unk_100116000;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1000543A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody);
  v9 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel);
  v10 = v1;
  v2 = v1;
  v3 = v9;
  for (i = 0; i != 2; ++i)
  {
    v5 = v8[i + 4];
    if (v5)
    {
      v6 = v5;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_100008438(&qword_10011D148, &qword_1000D6430);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000544B4(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for HeadphoneAssets(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeadphoneViewModel(0);
  sub_10000E88C(a1 + *(v13 + 44), v8, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000E950(v8, &qword_10011CCF0, qword_1000D61B0);
  }

  sub_100064E50(v8, v12, type metadata accessor for HeadphoneAssets);
  v15 = String._bridgeToObjectiveC()();
  [v1 setTitle:v15];

  v16 = *&v12[*(v9 + 32)];
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:
    (*((swift_isaMask & *v1) + 0x2D8))(a1);
    if (!*(a1 + 72))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_shouldFadeInElements) = 0;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;
  sub_100054CE4(v17);

  if (*(a1 + 72))
  {
LABEL_9:
    v19 = String._bridgeToObjectiveC()();
    [v1 showActivityIndicatorWithStatus:v19];
  }

LABEL_10:
  sub_100062810(a1, v5, type metadata accessor for HeadphoneViewModel);
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  v20 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v5, v1 + v20);
  swift_endAccess();
  sub_10005719C(v1, *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState));
  return sub_100062878(v12, type metadata accessor for HeadphoneAssets);
}

void sub_100054864(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_100062810(a1, &v9 - v4, type metadata accessor for HeadphoneViewModel);
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v5, v1 + v7);
  swift_endAccess();
  if (*(a1 + 72))
  {
    v8 = String._bridgeToObjectiveC()();
    [v1 showActivityIndicatorWithStatus:v8];
  }

  sub_10005719C(v1, *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState));
}

uint64_t sub_1000549B0()
{
  v1 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_100008438(&unk_100120000, &qword_1000D62D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for HeadphoneAssets.Feature(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(v0 + v11, v3, &qword_10011F2E0, &unk_1000D8580);
  v12 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v12 - 8) + 48))(v3, 1, v12) || (v13 = &v3[*(v12 + 44)], v14 = type metadata accessor for HeadphoneAssets(0), (*(*(v14 - 8) + 48))(v13, 1, v14)))
  {
    sub_10000E950(v3, &qword_10011F2E0, &unk_1000D8580);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  else
  {
    sub_10000E88C(&v13[*(v14 + 28)], v6, &unk_100120000, &qword_1000D62D0);
    sub_10000E950(v3, &qword_10011F2E0, &unk_1000D8580);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_100064E50(v6, v10, type metadata accessor for HeadphoneAssets.Feature);
      sub_100057A24(v10);
      return sub_100062878(v10, type metadata accessor for HeadphoneAssets.Feature);
    }
  }

  sub_10000E950(v6, &unk_100120000, &qword_1000D62D0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000B9ADC();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100054CE4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() systemGray2Color];
  [v2 setTintColor:v3];

  v4 = [v1 contentView];
  [v4 addSubview:v2];

  v5 = [v1 contentView];
  v6 = [v5 mainContentGuide];

  v7 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D6000;
  v9 = [v2 topAnchor];
  v10 = [v6 topAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];

  *(v8 + 32) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v6 bottomAnchor];
  v14 = [v12 constraintLessThanOrEqualToAnchor:v13];

  *(v8 + 40) = v14;
  v15 = [v2 centerYAnchor];
  v16 = [v6 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v8 + 48) = v17;
  v18 = [v2 centerXAnchor];

  v19 = [v6 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v8 + 56) = v20;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];
}

void sub_100055024()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
  memcpy(__dst, (v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer), sizeof(__dst));
  v4 = __dst[0];
  memcpy(__src, (v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer + 8), 0x128uLL);
  memcpy(v40, (v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer + 8), sizeof(v40));
  v39 = __dst[0];
  if (sub_1000627F8(&v39) == 1)
  {
    v36 = v4;
    memcpy(v37, __src, sizeof(v37));
    v5 = v2;
    sub_10000E88C(__dst, v35, &qword_10011E760, &qword_1000D8598);
    sub_10000E950(&v36, &qword_10011E760, &qword_1000D8598);
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v36 = v4;
    memcpy(v37, __src, sizeof(v37));
    v10 = v2;
    sub_10000E88C(__dst, v35, &qword_10011E760, &qword_1000D8598);
    v11 = v4;
    sub_10000E950(&v36, &qword_10011E760, &qword_1000D8598);
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v9 = v19;
    v8 = v17;
    v7 = v15;
    v6 = v13;
  }

  [v2 setFrame:{v6, v7, v8, v9}];
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000D6000;
  sub_1000084D4(0, &qword_10011DC20, NSNumber_ptr);
  *(v20 + 32) = NSNumber.init(floatLiteral:)(0.16825);
  *(v20 + 40) = NSNumber.init(floatLiteral:)(0.31596);
  *(v20 + 48) = NSNumber.init(floatLiteral:)(0.67362);
  *(v20 + 56) = NSNumber.init(floatLiteral:)(0.8865);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations:isa];

  v22 = [objc_opt_self() whiteColor];
  v23 = [v22 CGColor];

  type metadata accessor for CGColor(0);
  v37[2] = v24;
  v36 = v23;
  v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v25 + 16) = 4;
  sub_10003CE5C(&v36, v25 + 32);
  sub_10003CE5C(&v36, v25 + 64);
  sub_10003CE5C(&v36, v25 + 96);
  sub_10004D3D8(&v36, (v25 + 128));
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:v26];

  v27 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureGradient);
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureGradient) = v2;
  v28 = v2;

  memcpy(v35, v3, sizeof(v35));
  v29 = v35[0];
  memcpy(v34, (v3 + 8), sizeof(v34));
  memcpy(v37, (v3 + 8), sizeof(v37));
  v36 = v35[0];
  if (sub_1000627F8(&v36) == 1)
  {
    sub_10000E88C(v35, __src, &qword_10011E760, &qword_1000D8598);

    __src[0] = v29;
    memcpy(&__src[1], v34, 0x128uLL);
    sub_10000E950(__src, &qword_10011E760, &qword_1000D8598);
  }

  else
  {
    __src[0] = v29;
    memcpy(&__src[1], v34, 0x128uLL);
    sub_10000E88C(v35, v32, &qword_10011E760, &qword_1000D8598);
    v30 = v29;
    sub_10000E950(__src, &qword_10011E760, &qword_1000D8598);
    v31 = [v30 layer];

    [v31 setMask:v28];
  }
}

void sub_1000554C8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneAssets.Feature(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel);
  if (!v10)
  {
    return;
  }

  v11 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody);
  if (!v11)
  {
    return;
  }

  v79 = v3;
  v12 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(v1 + v12, v9, &qword_10011F2E0, &unk_1000D8580);
  v13 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v13 - 8) + 48))(v9, 1, v13))
  {
    sub_10000E950(v9, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  v78 = a1;
  v14 = &v9[*(v13 + 56)];
  v15 = *(v14 + 13);
  v98 = *(v14 + 12);
  v99 = v15;
  v100 = *(v14 + 14);
  v16 = *(v14 + 9);
  v94 = *(v14 + 8);
  v95 = v16;
  v17 = *(v14 + 11);
  v96 = *(v14 + 10);
  v97 = v17;
  v18 = *(v14 + 5);
  v90 = *(v14 + 4);
  v91 = v18;
  v19 = *(v14 + 7);
  v92 = *(v14 + 6);
  v93 = v19;
  v20 = *(v14 + 1);
  v86 = *v14;
  v87 = v20;
  v21 = *(v14 + 3);
  v88 = *(v14 + 2);
  v89 = v21;
  v22 = v11;
  v23 = v10;
  sub_10000E88C(&v86, &v83, &unk_10011FF80, &qword_1000D8590);
  sub_10000E950(v9, &qword_10011F2E0, &unk_1000D8580);
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v102 = v94;
  v103 = v95;
  v104 = v96;
  v105 = v97;
  v101[4] = v90;
  v101[5] = v91;
  v101[6] = v92;
  v101[7] = v93;
  v101[0] = v86;
  v101[1] = v87;
  v101[2] = v88;
  v101[3] = v89;
  if (sub_100026134(v101) == 1)
  {

    return;
  }

  v76 = v22;
  v77 = v23;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState) = 1;
  sub_10000E950(&v86, &unk_10011FF80, &qword_1000D8590);
  v80 = v1;
  if (v102 == 1)
  {
    sub_100055024();
  }

  v74 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v75 = type metadata accessor for HeadphoneAssets.Feature;
  sub_100062810(v78, &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadphoneAssets.Feature);
  v24 = *(v4 + 80);
  v25 = (v24 + 24) & ~v24;
  v26 = v5 + 7;
  v27 = (v26 + v25) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v74;
  v74 = type metadata accessor for HeadphoneAssets.Feature;
  sub_100064E50(v6, v29 + v25, type metadata accessor for HeadphoneAssets.Feature);
  *(v29 + v27) = v77;
  v30 = v76;
  *(v29 + v28) = v76;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100062810(v78, v6, v75);
  v32 = (v24 + 16) & ~v24;
  v33 = swift_allocObject();
  sub_100064E50(v6, v33 + v32, v74);
  ObjectType = v33;
  *(v33 + ((v26 + v32) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v76 = v30;
  v77 = v77;
  v35 = sub_100054344(&v83);
  v36 = *v34;
  v73 = v29;
  if (v36)
  {
    v37 = v34;
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = sub_10006244C;
    v39[4] = v29;
    v40 = *v37;
    v41 = v37[1];
    swift_getObjectType();
    v82 = v40;

    v42 = v40;
    dispatch thunk of VideoPlaybackControllable.startedHandler.setter();
    v43 = *v37;
    *v37 = v82;
    v37[1] = v41;
  }

  (v35)(&v83, 0);
  v45 = sub_100054344(&v83);
  if (*v44)
  {
    v46 = v44;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = *v46;
    v48 = v46[1];
    swift_getObjectType();
    v82 = v47;

    v49 = v47;
    dispatch thunk of VideoPlaybackControllable.completedHandler.setter();
    v50 = *v46;
    *v46 = v82;
    v46[1] = v48;
  }

  (v45)(&v83, 0);
  v51 = *(v78 + *(v79 + 20));
  if (v51 >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
    if (v52)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
LABEL_15:
      if (v52 < 1)
      {
        __break(1u);
        return;
      }

      v53 = 0;
      v54 = _swiftEmptyArrayStorage;
      do
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v55 = *(v51 + 8 * v53 + 32);
        }

        v56 = v55;
        [v55 CMTimeRangeValue];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1000CCB2C(0, *(v54 + 2) + 1, 1, v54);
        }

        v58 = *(v54 + 2);
        v57 = *(v54 + 3);
        if (v58 >= v57 >> 1)
        {
          v54 = sub_1000CCB2C((v57 > 1), v58 + 1, 1, v54);
        }

        ++v53;

        *(v54 + 2) = v58 + 1;
        v59 = &v54[48 * v58];
        v60 = v83;
        v61 = v85;
        *(v59 + 3) = v84;
        *(v59 + 4) = v61;
        *(v59 + 2) = v60;
      }

      while (v52 != v53);
    }
  }

  v62 = (v80 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView);
  swift_beginAccess();
  v63 = *v62;
  if (*v62)
  {
    swift_getObjectType();
    *&v83 = v63;
    v64 = swift_allocObject();
    v65 = ObjectType;
    *(v64 + 16) = sub_1000625FC;
    *(v64 + 24) = v65;
    v66 = v63;

    dispatch thunk of VideoPlaybackControllable.setPlaybackNotificationTimeRanges(_:handler:)();
  }

  else
  {
  }

  v67 = v76;
  v68 = v77;
  v69 = *v62;
  if (*v62)
  {
    swift_getObjectType();
    *&v83 = v69;
    dispatch thunk of VideoPlaybackControllable.transitionToFeatures()();
  }

  v70 = objc_opt_self();
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v85 = sub_10006276C;
  *(&v85 + 1) = v71;
  *&v83 = _NSConcreteStackBlock;
  *(&v83 + 1) = 1107296256;
  *&v84 = sub_100019340;
  *(&v84 + 1) = &unk_100105C38;
  v72 = _Block_copy(&v83);

  [v70 animateWithDuration:0 delay:v72 options:0 animations:0.5 completion:0.0];

  _Block_release(v72);
}

void sub_100055DDC(char a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureGradient);
  if (v3)
  {
    v6 = v3;
    v7 = String._bridgeToObjectiveC()();
    [v6 removeAnimationForKey:v7];

    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() animationWithKeyPath:v8];

    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
    v11 = [v10 CGColor];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.949];
    v13 = [v12 CGColor];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v14 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.3188];
    v15 = [v14 CGColor];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v16 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
    v17 = [v16 CGColor];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v18 = [objc_opt_self() whiteColor];
    v19 = [v18 CGColor];

    type metadata accessor for CGColor(0);
    v20 = (static Array._allocateBufferUninitialized(minimumCapacity:)() & 0xFFFFFFFFFFFFFF8);
    v20[2] = 4;
    v20[4] = v19;
    v20[5] = v19;
    v20[6] = v19;
    v20[7] = v19;
    v21 = v19;
    if (a1)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 setFromValue:isa];

      v23.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v9 setFromValue:v24];

      v23.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v9 setToValue:v23.super.isa];

    v25 = v9;
    [v25 setDuration:a2];
    v26 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v25 setTimingFunction:v26];

    [v25 setRemovedOnCompletion:0];
    [v25 setFillMode:kCAFillModeForwards];

    v27 = String._bridgeToObjectiveC()();
    [v6 addAnimation:v25 forKey:v27];
  }
}

uint64_t sub_1000562E0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011E560);
  v1 = sub_10000A570(v0, qword_10011E560);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000563A8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_1001230A0);
  sub_10000A570(v0, qword_1001230A0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100056428()
{

  sub_1000622D4(v0[10], v0[11]);
  sub_1000622D4(v0[12], v0[13]);

  return swift_deallocClassInstance();
}

void sub_100056480(void **a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(v5 + v6, v4, &qword_10011F2E0, &unk_1000D8580);
  v7 = type metadata accessor for HeadphoneViewModel(0);
  if (!(*(*(v7 - 8) + 48))(v4, 1, v7))
  {
  }

  sub_10000E950(v4, &qword_10011F2E0, &unk_1000D8580);
  v8 = String._bridgeToObjectiveC()();

  [v5 setTitle:v8];
}

void sub_1000565E0(void **a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(v5 + v6, v4, &qword_10011F2E0, &unk_1000D8580);
  v7 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7))
  {
    sub_10000E950(v4, &qword_10011F2E0, &unk_1000D8580);
  }

  else
  {
    v8 = *(v4 + 11);

    sub_10000E950(v4, &qword_10011F2E0, &unk_1000D8580);
    if (v8)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v9 = String._bridgeToObjectiveC()();

  [v5 setBottomTrayTitle:v9];
}

void sub_100056764(id *a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = *a1;
  v6 = [*a1 actions];
  sub_1000084D4(0, &qword_10011E780, PRXAction_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[0] = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v35 = v4;
    v36 = v5;
    v5 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v7 + 8 * v5 + 32);
      }

      v10 = v9;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v11 = [v9 title];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == sub_100033A5C(43) && v14 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v5 = v5 + 1;
      if (v4 == i)
      {
        v5 = v36;
        v18 = aBlock[0];
        v4 = v35;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *(v18 + 16);
  }

  if (v19 <= 0)
  {
    v20 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
    swift_beginAccess();
    sub_10000E88C(v5 + v20, v4, &qword_10011F2E0, &unk_1000D8580);
    v21 = type metadata accessor for HeadphoneViewModel(0);
    if ((*(*(v21 - 8) + 48))(v4, 1, v21))
    {
      sub_10000E950(v4, &qword_10011F2E0, &unk_1000D8580);
    }

    else
    {
      v22 = v4[*(v21 + 96)];
      sub_10000E950(v4, &qword_10011F2E0, &unk_1000D8580);
      if (v22)
      {
        sub_100033A5C(43);
        v23 = swift_allocObject();
        *(v23 + 16) = v5;
        v24 = v5;
        v25 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_100064EB8;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000C034;
        aBlock[3] = &unk_1001062F0;
        v26 = _Block_copy(aBlock);
        v27 = [objc_opt_self() actionWithTitle:v25 style:1 handler:v26];

        _Block_release(v26);

        v28 = String._bridgeToObjectiveC()();
        swift_beginAccess();
        objc_setAssociatedObject(v27, &unk_1001230B8, v28, 1);
        swift_endAccess();

        if (qword_10011C720 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_10000A570(v29, qword_1001231C0);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Device Disambiguation: Add launchBTSettingsAction", v32, 2u);
        }

        v33 = [v24 addAction:v27];
      }
    }
  }
}

uint64_t sub_100056CC0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000C0B58();

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_100056D2C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 actions];
  sub_1000084D4(0, &qword_10011E780, PRXAction_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v3;
  if (v3 >> 62)
  {
    goto LABEL_56;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_3:
    v5 = 0;
    v35 = v1;
    v6 = &unk_100116000;
    v7 = &unk_1001230B8;
    v34 = v4;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = __OFADD__(v5, 1);
        v10 = v5 + 1;
        if (v9)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v5 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v8 = *(v33 + 32 + 8 * v5);
        v9 = __OFADD__(v5, 1);
        v10 = v5 + 1;
        if (v9)
        {
          goto LABEL_54;
        }
      }

      v36 = v8;
      v37 = v10;
      v11 = [v1 actions];
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = _swiftEmptyArrayStorage;
      if (v12 >> 62)
      {
        break;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_10;
      }

LABEL_36:
      v26 = _swiftEmptyArrayStorage;
LABEL_37:

      if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        if (v27)
        {
LABEL_40:
          v28 = 0;
          do
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v28 >= *(v26 + 16))
              {
                goto LABEL_53;
              }

              v29 = *(v26 + 8 * v28 + 32);
            }

            v30 = v29;
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_52;
            }

            [v1 v6[294]];

            ++v28;
          }

          while (v31 != v27);
        }
      }

      else
      {
        v27 = *(v26 + 16);
        if (v27)
        {
          goto LABEL_40;
        }
      }

      v5 = v37;
      if (v37 == v4)
      {
        goto LABEL_57;
      }
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_36;
    }

LABEL_10:
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    v1 = (v12 & 0xFFFFFFFFFFFFFF8);
    v38 = v12;
    while (1)
    {
      if (v15)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= v1[2])
        {
          goto LABEL_51;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
          break;
        }

        goto LABEL_3;
      }

      swift_beginAccess();
      v19 = objc_getAssociatedObject(v17, v7);
      swift_endAccess();
      if (v19)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v43[0] = v41;
      v43[1] = v42;
      if (*(&v42 + 1))
      {
        if (swift_dynamicCast())
        {
          v20 = v13;
          v21 = v1;
          v22 = v15;
          v23 = v7;
          v24 = v6;
          if (v39 == 0xD000000000000016 && 0x80000001000E06A0 == v40)
          {

            goto LABEL_27;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
LABEL_27:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v6 = v24;
          v7 = v23;
          v15 = v22;
          v1 = v21;
          v13 = v20;
          v12 = v38;
          goto LABEL_13;
        }
      }

      else
      {
        sub_10000E950(v43, &qword_10011DC40, &qword_1000D7C40);
      }

LABEL_13:
      ++v14;
      if (v18 == v13)
      {
        v26 = v44;
        v4 = v34;
        v1 = v35;
        goto LABEL_37;
      }
    }
  }

LABEL_57:

  return result;
}

void sub_10005719C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = off_10011E580;
    v4 = off_10011E580[2];

    if (v4)
    {
      v5 = 0;
      v6 = v3 + 5;
      while (v5 < v3[2])
      {
        ++v5;
        v7 = *(v6 - 1);
        v14 = a1;
        v13 = 1;

        v7(&v14, &v13);

        v6 += 2;
        if (v4 == v5)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }

  else
  {
    v8 = off_10011E578;
    v9 = off_10011E578[2];

    if (v9)
    {
      v10 = 0;
      v11 = v8 + 5;
      while (v10 < v8[2])
      {
        ++v10;
        v12 = *(v11 - 1);
        v14 = a1;
        v13 = 0;

        v12(&v14, &v13);

        v11 += 2;
        if (v9 == v10)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_11:
}

void sub_10005733C(char a1)
{
  v2 = v1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for HeadphoneConnectViewController(0);
  objc_msgSendSuper2(&v24, "viewWillAppear:", a1 & 1);
  if (v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_shouldFadeInElements] == 1)
  {
    v4 = [v2 contentView];
    v5 = [v4 titleView];

    if (v5)
    {
      [v5 setAlpha:0.0];
    }

    v6 = [v2 contentView];
    v7 = [v6 auxiliaryViews];

    if (!v7)
    {
      __break(1u);
      return;
    }

    sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v11 setAlpha:0.0];

        ++v10;
        if (v13 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000622B4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100105B48;
    v16 = _Block_copy(aBlock);

    [v14 animateWithDuration:65538 delay:v16 options:0 animations:1.5 completion:0.8];
    _Block_release(v16);
  }

  if (qword_10011C6B0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A570(v17, qword_10011E560);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Playing movie", v20, 2u);
  }

  v21 = &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  swift_beginAccess();
  v22 = *v21;
  if (*v21)
  {
    swift_getObjectType();
    aBlock[6] = v22;
    dispatch thunk of VideoPlaybackControllable.play()();
  }
}

uint64_t sub_10005773C(char a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for HeadphoneConnectViewController(0);
  v21.receiver = v2;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, "viewDidDisappear:", a1 & 1);
  if (qword_10011C6B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A570(v8, qword_10011E560);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Stopping movie", v11, 2u);
  }

  v12 = &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  swift_beginAccess();
  v13 = *v12;
  if (*v12 && (swift_getObjectType(), v20[0] = v13, dispatch thunk of VideoPlaybackControllable.stop()(), *v12))
  {
    [*v12 removeFromSuperview];
    v14 = *v12;
  }

  else
  {
    v14 = 0;
  }

  *v12 = 0;
  *(v12 + 1) = 0;

  v15 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v6, &v2[v16]);
  swift_endAccess();
  sub_100062284(v19);
  memcpy(v20, &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], sizeof(v20));
  memcpy(&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], v19, 0x130uLL);
  return sub_10000E950(v20, &qword_10011E760, &qword_1000D8598);
}

void sub_100057A24(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    sub_10000E88C(v13 + 16, v55, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v14 = v56;
    if (v56)
    {
      v47 = v5;
      v48 = a1;
      v15 = sub_10000E7E4(v55, v56);
      v16 = *(v14 - 8);
      __chkstk_darwin(v15);
      v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v18);
      sub_10000E950(v55, &qword_10011FBC0, &unk_1000D5EF0);
      v19 = *v18;
      v20 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_100062810(v19 + v20, v9, type metadata accessor for HeadphoneModel);
      (*(v16 + 8))(v18, v14);
      sub_100064E50(v9, v11, type metadata accessor for HeadphoneModel);
      sub_10009BBB4(v51, *&v11[*(v6 + 136)]);
      if (v51[3])
      {
        sub_100008438(&qword_10011CB58, &qword_1000D85C0);
        sub_100008438(&qword_10011E770, &qword_1000D85C8);
        v21 = swift_dynamicCast();
        v22 = v48;
        if (v21)
        {
          if (*(&v53 + 1))
          {
            sub_10000E9B0(&v52, v55);
            v23 = [v1 contentView];
            v24 = [v23 dismissButton];

            if (v24)
            {
              [v24 setAlpha:0.0];
            }

            v25 = v1;
            v26 = &v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
            v27 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 16];
            v28 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 24];
            *v26 = 0;
            v26[8] = 0;
            v26[32] = 0;
            *(v26 + 2) = 0;
            *(v26 + 3) = 0;
            sub_1000622D4(v27, v28);
            v29 = *(v11 + 19);
            if (v29)
            {
              *&v52 = *(v11 + 18);
              *(&v52 + 1) = v29;
              v51[0] = 45;
              v51[1] = 0xE100000000000000;
              v49 = 58;
              v50 = 0xE100000000000000;
              sub_100008480();
              v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v32 = v31;
            }

            else
            {
              v30 = 0;
              v32 = 0xE000000000000000;
            }

            type metadata accessor for HeadphoneProxFeatureManager();
            static HeadphoneProxFeatureManager.shared.getter();
            type metadata accessor for HeadphoneIEDObserver();
            swift_allocObject();

            HeadphoneIEDObserver.init(bluetoothAddress:)();
            dispatch thunk of HeadphoneProxFeatureManager.headphoneIEDObserver.setter();

            static HeadphoneProxFeatureManager.shared.getter();
            v39 = dispatch thunk of HeadphoneProxFeatureManager.headphoneIEDObserver.getter();

            if (v39)
            {
              __chkstk_darwin(v40);
              withObservationTracking<A>(_:onChange:)();
              v41 = type metadata accessor for TaskPriority();
              v42 = v47;
              (*(*(v41 - 8) + 56))(v47, 1, 1, v41);
              v43 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v44 = swift_allocObject();
              v44[2] = 0;
              v44[3] = 0;
              v44[4] = v43;
              v44[5] = v30;
              v44[6] = v32;
              sub_100065B00(0, 0, v42, &unk_1000D85D8, v44);

              sub_10000E950(v42, &qword_10011CAA8, &unk_1000D85A0);
              v45 = sub_10000E7E4(v55, v56);
              sub_100061124(v22, *v45, v25);

              sub_10000EA94(v55);
              goto LABEL_20;
            }

            goto LABEL_25;
          }
        }

        else
        {
          v54 = 0;
          v52 = 0u;
          v53 = 0u;
        }
      }

      else
      {
        sub_10000E950(v51, &qword_10011CB48, &qword_1000D85B0);
        v52 = 0u;
        v53 = 0u;
        v54 = 0;
        v22 = v48;
      }

      sub_10000E950(&v52, &qword_10011E768, &qword_1000D85B8);
      sub_1000554C8(v22);
LABEL_20:
      sub_100062878(v11, type metadata accessor for HeadphoneModel);
      return;
    }

    sub_10000E950(v55, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v33 = MobileGestalt_get_current_device();
  if (!v33)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v34 = v33;
  MobileGestalt_get_appleInternalInstallCapability();

  if (qword_10011C6B0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000A570(v35, qword_10011E560);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "_transitionToFeatures no model!", v38, 2u);
  }
}

void sub_100058190(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100058214(void *a1, uint64_t a2, const char *a3, const char *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView);
    swift_beginAccess();
    if (!*v9)
    {
LABEL_16:

      return;
    }

    v10 = *v9;
    [a1 setEnabled:0];
    swift_getObjectType();
    if (dispatch thunk of VideoPlaybackControllable.isPaused.getter())
    {
      if (qword_10011C6B8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000A570(v11, qword_1001230A0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_13;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = v13;
      v16 = v12;
      v17 = a3;
    }

    else
    {
      if (qword_10011C6B8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000A570(v18, qword_1001230A0);
      v12 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v19))
      {
        goto LABEL_13;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = v19;
      v16 = v12;
      v17 = a4;
    }

    _os_log_impl(&_mh_execute_header, v16, v15, v17, v14, 2u);

LABEL_13:

    v20 = *&v8[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 16];
    if (v20)
    {
      v21 = *&v8[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 24];

      v20(0);
      sub_1000622D4(v20, v21);
    }

    v8 = v10;
    goto LABEL_16;
  }
}

void sub_10005845C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a1 setEnabled:0];
    if (qword_10011C6B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A570(v5, qword_1001230A0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Video Continue: skipping forward, marking current video skipped", v8, 2u);
    }

    v9 = &v4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
    v9[8] = 1;
    v10 = *(v9 + 2);
    if (v10)
    {
      v11 = *(v9 + 3);

      v10(1);
      sub_1000622D4(v10, v11);
    }
  }
}

void sub_1000585C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  memcpy(__dst, &Strong[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], sizeof(__dst));
  sub_10000E88C(__dst, v72, &qword_10011E760, &qword_1000D8598);

  memcpy(v72, __dst, 0x130uLL);
  if (sub_1000627F8(v72) == 1)
  {
    return;
  }

  v8 = swift_unknownObjectUnownedLoadStrong();
  [v8 setTitle:0];

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = *&v9[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction];
  v11 = v10;

  if (v10)
  {
    v12 = swift_unknownObjectUnownedLoadStrong();
    v13 = [v12 addAction:v11];
  }

  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = *&v14[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction];
  v16 = v15;

  if (v15)
  {
    v17 = swift_unknownObjectUnownedLoadStrong();
    [v17 removeAction:v16];
  }

  v18 = swift_unknownObjectUnownedLoadStrong();
  [v18 hideActivityIndicator];

  v19 = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(v18) = v19[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState];

  v20 = swift_unknownObjectUnownedLoadStrong();
  sub_10005719C(v20, v18);

  if (!*(*(a2 + *(type metadata accessor for HeadphoneAssets.Feature(0) + 24)) + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = String._bridgeToObjectiveC()();
  [a3 setText:v21];

  v22 = String._bridgeToObjectiveC()();

  [a4 setText:v22];

  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v25 = objc_opt_self();
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v25 deactivateConstraints:isa];

  v27 = Array._bridgeToObjectiveC()().super.isa;
  v70 = v25;
  [v25 activateConstraints:v27];

  sub_10002B2D0();
  if ((v72[18] & 1) == 0)
  {
    [v72[33] setConstant:?];
  }

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000D5D20;
  v29 = [a3 topAnchor];
  v30 = [v72[1] bottomAnchor];
  v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30 constant:10.0];

  *(v28 + 32) = v31;
  v32 = [a3 leadingAnchor];
  v33 = swift_unknownObjectUnownedLoadStrong();
  v34 = [v33 contentView];

  v35 = [v34 mainContentGuide];
  v36 = [v35 leadingAnchor];

  v37 = [v32 constraintEqualToAnchor:v36];
  *(v28 + 40) = v37;
  v38 = [a3 trailingAnchor];
  v39 = swift_unknownObjectUnownedLoadStrong();
  v40 = [v39 contentView];

  v41 = [v40 mainContentGuide];
  v42 = [v41 trailingAnchor];

  v43 = [v38 constraintEqualToAnchor:v42];
  *(v28 + 48) = v43;
  v44 = [a4 topAnchor];
  v45 = [a3 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:PRXMinimumInterItemMargin];

  *(v28 + 56) = v46;
  v47 = [a4 leadingAnchor];
  v48 = swift_unknownObjectUnownedLoadStrong();
  v49 = [v48 contentView];

  v50 = [v49 mainContentGuide];
  v51 = [v50 leadingAnchor];

  v52 = [v47 constraintEqualToAnchor:v51];
  *(v28 + 64) = v52;
  v53 = [a4 trailingAnchor];
  v54 = swift_unknownObjectUnownedLoadStrong();
  v55 = [v54 contentView];

  v56 = [v55 mainContentGuide];
  v57 = [v56 trailingAnchor];

  v58 = [v53 constraintEqualToAnchor:v57];
  *(v28 + 72) = v58;
  v59 = [a4 bottomAnchor];
  v60 = swift_unknownObjectUnownedLoadStrong();
  v61 = [v60 contentView];

  v62 = [v61 mainContentGuide];
  v63 = [v62 bottomAnchor];

  v64 = [v59 constraintEqualToAnchor:v63];
  *(v28 + 80) = v64;
  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v70 activateConstraints:v65];

  v66 = swift_unknownObjectUnownedLoadStrong();
  v67 = [v66 navigationController];

  if (v67)
  {
    v68 = [v67 parentViewController];

    if (v68)
    {
      v69 = [v68 view];

      if (v69)
      {

        [v69 layoutIfNeeded];
        sub_10000E950(__dst, &qword_10011E760, &qword_1000D8598);

        return;
      }

      goto LABEL_18;
    }
  }

  sub_10000E950(__dst, &qword_10011E760, &qword_1000D8598);
}

void sub_100058F10(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v8 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v8 - 8);
  v10 = &v73 - v9;
  v11 = type metadata accessor for HeadphoneViewModel(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = 0.1667;
  }

  v16 = type metadata accessor for HeadphoneAssets.Feature(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v17 = *(a3 + *(v16 + 24));
  if (*(v17 + 16) <= a1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    v72 = _CocoaArrayWrapper.endIndex.getter();
    v51 = v72 - 1;
    if (!__OFSUB__(v72, 1))
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

  v80 = v16;
  v18 = 0.0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_27;
  }

  v75 = v14;
  v78 = a3;
  v77 = v6;
  v76 = a1;
  v19 = (v17 + 32 * a1);
  v21 = v19[4];
  v20 = v19[5];
  v22 = v19[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v79 = v20;
  if (Strong)
  {
    v24 = Strong;
    v74 = v21;
    v25 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel);
    v26 = v25;

    if (v25)
    {

      v27 = String._bridgeToObjectiveC()();

      [v26 setText:v27];
    }
  }

  else
  {
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = *(v28 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody);
    v30 = v28;
    v31 = v29;

    if (v29)
    {

      v32 = String._bridgeToObjectiveC()();

      [v31 setText:v32];
    }
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  a3 = v78;
  a1 = v76;
  if (v33)
  {
    v6 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
    v34 = v33;
    swift_beginAccess();
    sub_10000E88C(v34 + v6, v10, &qword_10011F2E0, &unk_1000D8580);

    v35 = (*(v12 + 48))(v10, 1, v11);
    LOBYTE(v6) = v77;
    if (v35 != 1)
    {
      v74 = v22;
      v36 = v75;
      sub_100064E50(v10, v75, type metadata accessor for HeadphoneViewModel);
      v37 = *(v36 + *(v11 + 84));
      v38 = objc_opt_self();
      v39 = [v38 b768e];
      v40 = [v39 productID];

      if ((v37 == v40 || (v41 = [v38 b768e], v42 = objc_msgSend(v41, "altProductID"), v41, v37 == v42)) && !a1)
      {
        swift_beginAccess();
        v54 = swift_unknownObjectWeakLoadStrong();
        a3 = v78;
        if (v54)
        {
          v55 = *(v54 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel);
          v56 = v54;
          v57 = v55;

          if (v55)
          {
            v58 = [objc_opt_self() mainBundle];
            v82._object = 0xE000000000000000;
            v59._countAndFlagsBits = 0xD000000000000018;
            v59._object = 0x80000001000E05C0;
            v60.value._object = 0x80000001000E05E0;
            v60.value._countAndFlagsBits = 0xD000000000000011;
            v61._countAndFlagsBits = 0;
            v61._object = 0xE000000000000000;
            v82._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v60, v58, v61, v82);

            v62 = String._bridgeToObjectiveC()();
            a3 = v78;

            [v57 setText:v62];
          }
        }

        swift_beginAccess();
        v63 = swift_unknownObjectWeakLoadStrong();
        if (v63)
        {
          v64 = *(v63 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody);
          v65 = v63;
          v66 = v64;

          if (v64)
          {
            v67 = [objc_opt_self() mainBundle];
            v83._object = 0xE000000000000000;
            v68._countAndFlagsBits = 0xD00000000000001ELL;
            v68._object = 0x80000001000E0600;
            v69.value._object = 0x80000001000E05E0;
            v69.value._countAndFlagsBits = 0xD000000000000011;
            v70._countAndFlagsBits = 0;
            v70._object = 0xE000000000000000;
            v83._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v67, v70, v83);

            v71 = String._bridgeToObjectiveC()();
            a3 = v78;

            [v66 setText:v71];
          }
        }

        sub_100062878(v75, type metadata accessor for HeadphoneViewModel);
        LOBYTE(v6) = v77;
      }

      else
      {
        sub_100062878(v75, type metadata accessor for HeadphoneViewModel);
        a3 = v78;
      }

      goto LABEL_22;
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    LOBYTE(v6) = v77;
  }

  sub_10000E950(v10, &qword_10011F2E0, &unk_1000D8580);
LABEL_22:
  swift_beginAccess();
  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    v45 = [v43 view];

    if (!v45)
    {
LABEL_47:
      __break(1u);
      return;
    }

    [v45 setNeedsLayout];
  }

  else
  {
  }

  v18 = 1.0;
LABEL_27:
  v46 = objc_opt_self();
  v47 = swift_allocObject();
  *(v47 + 16) = a4;
  *(v47 + 24) = v18;
  aBlock[4] = sub_1000627EC;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100105CD8;
  v48 = _Block_copy(aBlock);

  [v46 animateWithDuration:0 delay:v48 options:0 animations:v15 completion:0.0];
  _Block_release(v48);
  v49 = *(a3 + *(v80 + 20));
  if (v49 >> 62)
  {
    goto LABEL_44;
  }

  v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v51 = v50 - 1;
  if (__OFSUB__(v50, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_29:
  if (v51 == a1 && (v6 & 1) == 0)
  {
    swift_beginAccess();
    v52 = swift_unknownObjectWeakLoadStrong();
    if (v52)
    {
      v53 = v52;
      sub_100055DDC(0, 2.0);
    }
  }
}

void sub_100059810(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1000543A8();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setAlpha:a2];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 contentView];

    v14 = [v13 auxiliaryViews];
    if (v14)
    {
      sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v15 >> 62)
      {
        goto LABEL_30;
      }

      for (j = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
      {
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          [v18 setAlpha:1.0];

          ++v17;
          if (v20 == j)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_31:
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100059A7C(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong contentView];

    v6 = [v5 titleView];
    if (v6)
    {
      [v6 setAlpha:a2];
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 contentView];

    v10 = [v9 auxiliaryViews];
    if (v10)
    {
      sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
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
              goto LABEL_17;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          [v14 setAlpha:a2];

          ++v13;
          if (v16 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100059CC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneConnectViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeadphoneConnectViewController(uint64_t a1)
{
  result = qword_10011E738;
  if (!qword_10011E738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100059E9C(uint64_t a1)
{
  sub_100025E40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for HeadphoneDigitalEngravingManager.Record.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphoneDigitalEngravingManager.Record.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005A108()
{
  result = qword_10011E748;
  if (!qword_10011E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E748);
  }

  return result;
}

unint64_t sub_10005A160()
{
  result = qword_10011E750;
  if (!qword_10011E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E750);
  }

  return result;
}

unint64_t sub_10005A1B8()
{
  result = qword_10011E758;
  if (!qword_10011E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E758);
  }

  return result;
}

uint64_t sub_10005A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10005A2C4, 0, 0);
}

uint64_t sub_10005A2C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_10005A3CC;
    v4 = v0[6];
    v3 = v0[7];

    return sub_100063094(v4, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10005A3CC(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_10005A4CC, 0, 0);
}

uint64_t sub_10005A4CC()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    if (qword_10011C6B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E560);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "video: Device received!", v5, 2u);
    }

    v6 = *(v0 + 64);
    v7 = *(v0 + 72);

    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v7;
    v10 = v1;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v9;
    v12[5] = v10;
    sub_100064FAC(0, 0, v6, &unk_1000D8648, v12);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10005A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005A754, v7, v6);
}

uint64_t sub_10005A754()
{
  v1 = *(v0 + 24);

  v2 = [v1 primaryPlacement] == 1 && objc_msgSend(*(v0 + 24), "secondaryPlacement") == 1;
  *(*(v0 + 16) + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar) = v2;
  v3 = *(v0 + 8);

  return v3();
}

void (*sub_10005A7FC(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_100064D54;
}

void sub_10005A88C(uint64_t a1, char *a2)
{
  v3 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  if (qword_10011C6B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A570(v8, qword_10011E560);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v30 = v5;
    v12 = v11;
    v32[0] = swift_slowAlloc();
    *v12 = 136315394;
    LODWORD(v31) = dispatch thunk of HeadphoneIEDObserver.primaryInEarStatus.getter();
    type metadata accessor for AAPlacement(0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100078978(v13, v14, v32);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    LODWORD(v31) = dispatch thunk of HeadphoneIEDObserver.secondaryInEarStatus.getter();
    v16 = String.init<A>(describing:)();
    v18 = sub_100078978(v16, v17, v32);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "video: IED  Primary: %s Secondary: %s", v12, 0x16u);
    swift_arrayDestroy();

    v5 = v30;
  }

  __chkstk_darwin(v19);
  *(&v30 - 2) = v7;
  *(&v30 - 1) = a2;
  withObservationTracking<A>(_:onChange:)();
  if (*&v7[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex])
  {
LABEL_15:

    return;
  }

  if (dispatch thunk of HeadphoneIEDObserver.primaryInEarStatus.getter() != 1)
  {
    v7[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar] = 0;
    goto LABEL_15;
  }

  v20 = dispatch thunk of HeadphoneIEDObserver.secondaryInEarStatus.getter();
  v7[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar] = v20 == 1;
  if (v20 != 1)
  {
    goto LABEL_15;
  }

  v21 = &v7[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  swift_beginAccess();
  v22 = *v21;
  if (!*v21)
  {
    goto LABEL_15;
  }

  swift_getObjectType();
  v31 = v22;
  if ((dispatch thunk of VideoPlaybackControllable.isPaused.getter() & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "video: IED Setting continueAction enabled from observer", v25, 2u);
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  type metadata accessor for MainActor();
  v27 = v7;
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v27;
  sub_1000652AC(0, 0, v5, &unk_1000D8668, v29);
}

uint64_t sub_10005AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005ADA4, v6, v5);
}

uint64_t sub_10005ADA4()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction);
  if (v2)
  {
    [v2 setEnabled:1];
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_10005AE38(uint64_t a1, uint64_t a2, SEL *a3, void *a4, void *a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  memcpy(__dst, &Strong[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], sizeof(__dst));
  sub_10000E88C(__dst, v141, &qword_10011E760, &qword_1000D8598);

  memcpy(v141, __dst, 0x130uLL);
  if (sub_1000627F8(v141) != 1)
  {
    v119 = a4;
    v120 = a3;
    v10 = swift_unknownObjectUnownedLoadStrong();
    v11 = String._bridgeToObjectiveC()();
    [v10 setTitle:v11];

    v12 = swift_unknownObjectUnownedLoadStrong();
    v122 = *&v12[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction];
    v123 = *&v12[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction];
    v124 = *&v12[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction];
    v13 = v124;
    v14 = v122;
    v15 = v123;

    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    *&v125 = _swiftEmptyArrayStorage;
LABEL_3:
    if (v16 <= 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = v16;
    }

    while (1)
    {
      if (v16 == 3)
      {
        v118 = a2;
        sub_100008438(&qword_10011E788, &qword_1000D8630);
        swift_arrayDestroy();
        if (v17 >> 62)
        {
          goto LABEL_25;
        }

        v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }

      if (v18 == v16)
      {
        break;
      }

      v19 = v121[v16++ + 4];
      if (v19)
      {
        v20 = v19;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v125;
        goto LABEL_3;
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
        break;
      }

LABEL_14:
      v22 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v23 = *(v17 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v26 = swift_unknownObjectUnownedLoadStrong();
        [v26 removeAction:v24];

        ++v22;
        if (v25 == v21)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_26:

    v27 = swift_unknownObjectUnownedLoadStrong();
    [v27 hideActivityIndicator];

    v28 = swift_unknownObjectUnownedLoadStrong();
    v29 = v28[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState];

    v30 = swift_unknownObjectUnownedLoadStrong();
    sub_10005719C(v30, v29);

    if ((v118 & 0xC000000000000001) != 0)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v120;
      v33 = *(v45 + 48);
      if (*(v45 + 48))
      {
LABEL_29:
        if (v33 != 1)
        {
          v40 = swift_unknownObjectUnownedLoadStrong();

          v41 = String._bridgeToObjectiveC()();

          [v40 setTitle:v41];

          v42 = swift_unknownObjectUnownedLoadStrong();
          v43 = String._bridgeToObjectiveC()();
          [v42 setSubtitle:v43];

          v44 = String._bridgeToObjectiveC()();
          [(SEL *)v31 setText:v44];

          v39 = String._bridgeToObjectiveC()();

          [a4 setText:v39];
          goto LABEL_35;
        }

        v34 = String._bridgeToObjectiveC()();

        [(SEL *)v31 setText:v34];

        v35 = String._bridgeToObjectiveC()();

        [a4 setText:v35];

        v36 = swift_unknownObjectUnownedLoadStrong();
        v37 = String._bridgeToObjectiveC()();
        [v36 setTitle:v37];

        v38 = swift_unknownObjectUnownedLoadStrong();
        v39 = String._bridgeToObjectiveC()();
LABEL_34:
        [v38 setSubtitle:v39];

LABEL_35:
        v50 = swift_unknownObjectUnownedLoadStrong();
        v51 = [v50 contentView];

        v52 = [v51 titleView];
        v31 = &unk_100116000;
        if (v52)
        {
          [v52 setAlpha:0.0];
        }

        v53 = swift_unknownObjectUnownedLoadStrong();
        v54 = [v53 contentView];

        v55 = [v54 subtitleLabel];
        if (v55)
        {
          [v55 setAlpha:0.0];
        }

        v56 = swift_unknownObjectUnownedLoadStrong();
        v57 = [v56 contentView];

        v58 = [v57 auxiliaryViews];
        if (v58)
        {
          sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v29 >> 62)
          {
            goto LABEL_53;
          }

          for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
          {
            v60 = 0;
            while (1)
            {
              if ((v29 & 0xC000000000000001) != 0)
              {
                v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v60 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_51;
                }

                v61 = *(v29 + 8 * v60 + 32);
              }

              v62 = v61;
              v63 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                break;
              }

              [v61 v31[120]];

              ++v60;
              if (v63 == i)
              {
                goto LABEL_54;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            ;
          }

LABEL_54:

          v64 = swift_unknownObjectUnownedLoadStrong();
          v65 = [v64 view];

          if (v65)
          {
            [v65 setNeedsLayout];

            v66 = swift_unknownObjectUnownedLoadStrong();
            v67 = [v66 view];

            if (v67)
            {
              [v67 layoutIfNeeded];

              v68 = swift_unknownObjectUnownedLoadStrong();
              v69 = sub_10000E7E4(a5, a5[3]);
              sub_100061A90(0, *v69, 0, v68);

              v70 = swift_unknownObjectUnownedLoadStrong();
              v71 = [v70 view];

              if (v71)
              {

                v72 = objc_opt_self();
                sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;
                [v72 deactivateConstraints:isa];

                v74 = Array._bridgeToObjectiveC()().super.isa;
                v117 = v72;
                [v72 activateConstraints:v74];

                v136 = v141[12];
                v137 = v141[13];
                v138 = v141[14];
                v139 = v141[15];
                v132 = v141[8];
                v133 = v141[9];
                v134 = v141[10];
                v135 = v141[11];
                v130 = v141[6];
                v131 = v141[7];
                v125 = v141[1];
                v126 = v141[2];
                v128 = v141[4];
                v129 = v141[5];
                v127 = v141[3];
                sub_10002B2D0();
                if ((v141[9] & 1) == 0)
                {
                  [*(&v141[16] + 1) setConstant:?];
                }

                sub_100008438(&unk_10011D960, &qword_1000D5CF0);
                v75 = swift_allocObject();
                *(v75 + 16) = xmmword_1000D5D20;
                v76 = [(SEL *)v120 topAnchor];
                v77 = [*(&v141[0] + 1) bottomAnchor];
                v78 = [v76 constraintGreaterThanOrEqualToAnchor:v77 constant:10.0];

                *(v75 + 32) = v78;
                v79 = [(SEL *)v120 leadingAnchor];
                v80 = swift_unknownObjectUnownedLoadStrong();
                v81 = [v80 contentView];

                v82 = [v81 mainContentGuide];
                v83 = [v82 leadingAnchor];

                v84 = [v79 constraintEqualToAnchor:v83];
                *(v75 + 40) = v84;
                v85 = [(SEL *)v120 trailingAnchor];
                v86 = swift_unknownObjectUnownedLoadStrong();
                v87 = [v86 contentView];

                v88 = [v87 mainContentGuide];
                v89 = [v88 trailingAnchor];

                v90 = [v85 constraintEqualToAnchor:v89];
                *(v75 + 48) = v90;
                v91 = [v119 topAnchor];
                v92 = [(SEL *)v120 bottomAnchor];
                v93 = [v91 constraintEqualToAnchor:v92 constant:PRXMinimumInterItemMargin];

                *(v75 + 56) = v93;
                v94 = [v119 leadingAnchor];
                v95 = swift_unknownObjectUnownedLoadStrong();
                v96 = [v95 contentView];

                v97 = [v96 mainContentGuide];
                v98 = [v97 leadingAnchor];

                v99 = [v94 constraintEqualToAnchor:v98];
                *(v75 + 64) = v99;
                v100 = [v119 trailingAnchor];
                v101 = swift_unknownObjectUnownedLoadStrong();
                v102 = [v101 contentView];

                v103 = [v102 mainContentGuide];
                v104 = [v103 trailingAnchor];

                v105 = [v100 constraintEqualToAnchor:v104];
                *(v75 + 72) = v105;
                v106 = [v119 bottomAnchor];
                v107 = swift_unknownObjectUnownedLoadStrong();
                v108 = [v107 contentView];

                v109 = [v108 mainContentGuide];
                v110 = [v109 bottomAnchor];

                v111 = [v106 constraintEqualToAnchor:v110];
                *(v75 + 80) = v111;
                v112 = Array._bridgeToObjectiveC()().super.isa;

                [v117 activateConstraints:v112];

                v113 = swift_unknownObjectUnownedLoadStrong();
                v114 = [v113 navigationController];

                if (!v114 || (v115 = [v114 parentViewController], v114, !v115))
                {
                  sub_10000E950(__dst, &qword_10011E760, &qword_1000D8598);
                  goto LABEL_64;
                }

                v116 = [v115 view];

                if (v116)
                {
                  [v116 layoutIfNeeded];
                  sub_10000E950(__dst, &qword_10011E760, &qword_1000D8598);

LABEL_64:

                  return;
                }

LABEL_70:
                __break(1u);
                return;
              }

LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_68;
      }
    }

    else
    {
      v31 = v120;
      if (!*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v32 = *(v118 + 32);

      v33 = *(v32 + 48);
      if (*(v32 + 48))
      {
        goto LABEL_29;
      }
    }

    v46 = String._bridgeToObjectiveC()();
    [(SEL *)v31 setText:v46];

    v47 = String._bridgeToObjectiveC()();
    [a4 setText:v47];

    v48 = swift_unknownObjectUnownedLoadStrong();

    v49 = String._bridgeToObjectiveC()();

    [v48 setTitle:v49];

    v38 = swift_unknownObjectUnownedLoadStrong();

    v39 = String._bridgeToObjectiveC()();

    goto LABEL_34;
  }
}

void sub_10005BD4C(char a1, char *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = sub_10000E7E4(a4, a4[3]);
    sub_100061A90(a3, *v6, 1, a2);
    v7 = [a2 view];
    if (v7)
    {
      v8 = v7;
      [v7 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10005BDF0(void *a1, char a2, uint64_t a3, double a4)
{
  LOBYTE(v6) = a2;
  v7 = [a1 auxiliaryViews];
  if (v7)
  {
    v8 = v7;
    sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      v12 = 1.0;
      if (a3 >= 4)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = a4;
      }

      if (a3 <= 3)
      {
        v12 = a4;
      }

      if (v6)
      {
        a4 = v13;
      }

      else
      {
        a4 = v12;
      }

      a3 = &unk_100116000;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(v9 + 8 * v11 + 32);
        }

        v6 = v14;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        [v14 setAlpha:a4];

        ++v11;
        if (v15 == i)
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
  }

  else
  {
    __break(1u);
  }
}

void sub_10005BF54(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v31 = a1;
  v32 = a8;
  v30 = a6;
  v18 = sub_100008438(&qword_10011E778, &qword_1000D85F8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v30 - v20;
  v33 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a10;
  *(v22 + 40) = a4;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  v38 = sub_1000640D8;
  v39 = v22;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100019340;
  v37 = &unk_100105FA8;
  v23 = _Block_copy(&aBlock);

  v24 = a3;

  (*(v19 + 16))(v21, v31, v18);
  v25 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v30;
  *(v26 + 3) = a7;
  v27 = v32;
  *(v26 + 4) = v24;
  *(v26 + 5) = v27;
  (*(v19 + 32))(&v26[v25], v21, v18);
  v38 = sub_1000641D0;
  v39 = v26;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1000194C0;
  v37 = &unk_100105FF8;
  v28 = _Block_copy(&aBlock);
  v29 = v24;

  [v33 animateWithDuration:0 delay:v23 options:v28 animations:a9 completion:0.0];
  _Block_release(v28);
  _Block_release(v23);
}

void sub_10005C228(uint64_t a1, char *a2, char a3, uint64_t a4, void (*a5)(void), double a6)
{
  swift_beginAccess();
  v10 = *(a1 + 16);

  v10(v11);

  v12 = [a2 contentView];
  v13 = [v12 titleView];

  if (v13)
  {
    [v13 setAlpha:a6];
  }

  v14 = [a2 contentView];
  v15 = [v14 titleView];

  if (v15)
  {
    [v15 setNeedsLayout];
  }

  v16 = [a2 contentView];
  v17 = [v16 titleView];

  if (v17)
  {
    [v17 layoutIfNeeded];
  }

  v18 = [a2 contentView];
  v19 = [v18 subtitleLabel];

  if (v19)
  {
    [v19 setAlpha:a6];
  }

  v20 = [a2 contentView];
  v21 = [v20 subtitleLabel];

  if (v21)
  {
    [v21 setNeedsLayout];
  }

  v22 = [a2 contentView];
  v23 = [v22 subtitleLabel];

  if (v23)
  {
    [v23 layoutIfNeeded];
  }

  v24 = sub_1000543A8();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v27 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      [v28 setAlpha:a6];

      ++v27;
      if (v30 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  if (a3)
  {
    v31 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
    swift_beginAccess();
    v32 = *&a2[v31];
    if (v32)
    {
      [v32 setAlpha:a6];
    }

    v33 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint];
    if (v33)
    {
      [v33 setActive:0];
    }

LABEL_46:
    v52 = [a2 contentView];
    a5();

    return;
  }

  if (v53 != 1)
  {
    v48 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint];
    if (v48)
    {
      [v48 setActive:0];
    }

    v49 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
    swift_beginAccess();
    v50 = *&a2[v49];
    if (v50)
    {
      v51 = 1.0;
      if (v53 <= 4)
      {
        v51 = a6;
      }

      [v50 setAlpha:v51];
    }

    goto LABEL_46;
  }

  v34 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
  swift_beginAccess();
  v35 = *&a2[v34];
  if (v35)
  {
    [v35 setAlpha:0.0];
  }

  v36 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint;
  v37 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint];
  if (v37)
  {
    [v37 setActive:0];
  }

  v38 = [a2 view];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 heightAnchor];

    v41 = [a2 view];
    if (v41)
    {
      v42 = v41;
      [v41 bounds];
      v44 = v43;

      v45 = [v40 constraintEqualToConstant:v44];
      v46 = *&a2[v36];
      *&a2[v36] = v45;
      v47 = v45;

      if (v47)
      {
        [v47 setActive:1];
      }

      goto LABEL_46;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10005C72C(int a1, void (*a2)(void), int a3, id a4, uint64_t a5)
{
  v8 = [a4 contentView];
  a2();

  v9 = *(a5 + 96);
  if (v9)
  {
    v10 = *(a5 + 104);

    v9(a4);
    sub_1000622D4(v9, v10);
  }

  sub_100008438(&qword_10011E778, &qword_1000D85F8);
  return CheckedContinuation.resume(returning:)();
}

void sub_10005C7E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v99 = a8;
  v101 = a7;
  v102 = a4;
  v97 = a6;
  v12 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v12 - 8);
  v96 = &v88 - v13;
  v14 = type metadata accessor for HeadphoneAssets.Feature(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v98 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000A570(v17, qword_1001230A0);

  v100 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v15;
    v22 = a5;
    v23 = swift_slowAlloc();
    *v23 = 134218496;
    *(v23 + 4) = a1;
    *(v23 + 12) = 1024;
    v24 = a2;
    *(v23 + 14) = a2 & 1;
    *(v23 + 18) = 2048;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_54:

      __break(1u);
      return;
    }

    v26 = *&Strong[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];

    *(v23 + 20) = v26;

    _os_log_impl(&_mh_execute_header, v19, v20, "Time range handler called %ld %{BOOL}d %ld", v23, 0x1Cu);

    a2 = v24;
    a5 = v22;
    v15 = v21;
  }

  else
  {
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
    return;
  }

  v28 = v27;
  if (a1 >= 1)
  {
    v29 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if ((v102 & 0xC000000000000001) != 0)
    {
      goto LABEL_51;
    }

    if ((v29 & 0x8000000000000000) == 0)
    {
LABEL_14:
      if (v29 < *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v102 + 8 * v29 + 32);

        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_53;
    }

    __break(1u);
  }

  v29 = 0;
  if ((v102 & 0xC000000000000001) == 0)
  {
    goto LABEL_14;
  }

LABEL_51:
  v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v31 = a9;
  v32 = swift_allocObject();
  v33 = v32;
  *(v32 + 16) = v30;
  v34 = *(v30 + 49);
  v95 = a2;
  if ((a2 & 1) == 0)
  {
    if (v34)
    {

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Video: end of range continue button", v50, 2u);
      }

      if (v28[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 8])
      {
      }

      else
      {
        v67 = &v28[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
        swift_beginAccess();
        v68 = *v67;
        if (*v67)
        {
          swift_getObjectType();
          v104 = v68;
          dispatch thunk of VideoPlaybackControllable.pause()();
        }

        v69 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction;
        v70 = *&v28[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction];
        v71 = &unk_100116000;
        if (v70)
        {
          v72 = *(v30 + 80);
          if (v72)
          {
            v73 = *(v30 + 88);
            v74 = swift_allocObject();
            *(v74 + 16) = v28;
            v75 = swift_allocObject();
            *(v75 + 16) = v28;
            v76 = v70;
            v77 = v28;
            sub_100062D70(v72, v73);
            v78 = v72(sub_100062D2C, v74, sub_100062D5C, v75);

            v71 = &unk_100116000;

            v79 = sub_1000622D4(v72, v73);
          }

          else
          {
            v76 = v70;
            v78 = 1;
          }

          [v76 v71[407]];
        }

        v80 = v28;
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 67109120;
          v84 = *&v28[v69];
          v85 = v84 && ([v84 isEnabled] & 1) != 0;
          *(v83 + 4) = v85;

          _os_log_impl(&_mh_execute_header, v81, v82, "Video: paused button enabled %{BOOL}d", v83, 8u);
        }

        else
        {

          v81 = v80;
        }

        v86 = *(&v80->isa + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction);
        if (v86)
        {
          v87 = v86;
          [v87 v71[407]];
        }

        else
        {
        }
      }

      goto LABEL_31;
    }

    goto LABEL_24;
  }

  if (!v34)
  {
LABEL_24:
    v91 = v15;
    v93 = v32;

    goto LABEL_25;
  }

  sub_10000E9C8(a5, v103);
  v92 = a5;
  v35 = v98;
  sub_100062810(a9, v98, type metadata accessor for HeadphoneAssets.Feature);
  v91 = v15;
  v36 = (*(v15 + 80) + 104) & ~*(v15 + 80);
  v37 = swift_allocObject();
  v37[2] = v28;
  v37[3] = v33;
  v90 = a9;
  v38 = v101;
  v39 = v97;
  v37[4] = v102;
  v37[5] = v39;
  v94 = v16;
  v40 = v99;
  v37[6] = v38;
  v37[7] = v40;
  sub_10000E9B0(v103, (v37 + 8));
  v41 = v35;
  a5 = v92;
  sub_100064E50(v41, v37 + v36, type metadata accessor for HeadphoneAssets.Feature);
  v42 = &v28[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  v43 = *&v28[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 24];
  v89 = *&v28[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 16];
  *(v42 + 2) = sub_100062EAC;
  *(v42 + 3) = v37;

  v44 = v28;
  v93 = v33;

  v31 = v90;

  v45 = v39;
  v46 = v101;
  v47 = v40;
  v16 = v94;
  sub_1000622D4(v89, v43);
LABEL_25:
  v51 = v16;
  v92 = v28;
  v94 = v30;
  if (a1 > 0)
  {
    v52 = a1 + 1;
  }

  else
  {
    v52 = 0;
  }

  v90 = v52;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v53, v54, "Video: animateViewForIndexAction called %ld", v55, 0xCu);
  }

  v56 = type metadata accessor for TaskPriority();
  v57 = v96;
  (*(*(v56 - 8) + 56))(v96, 1, 1, v56);
  sub_10000E9C8(a5, v103);
  v58 = v98;
  sub_100062810(v31, v98, type metadata accessor for HeadphoneAssets.Feature);
  type metadata accessor for MainActor();
  v59 = v102;

  v60 = v97;
  v61 = v101;
  v62 = v99;
  v63 = static MainActor.shared.getter();
  v64 = (*(v91 + 80) + 104) & ~*(v91 + 80);
  v65 = swift_allocObject();
  v65[2] = v63;
  v65[3] = &protocol witness table for MainActor;
  v65[4] = v59;
  v65[5] = v60;
  v65[6] = v61;
  v65[7] = v62;
  sub_10000E9B0(v103, (v65 + 8));
  sub_100064E50(v58, v65 + v64, type metadata accessor for HeadphoneAssets.Feature);
  v66 = v65 + ((v51 + v64 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v66 = v90;
  v66[8] = v95 & 1;
  sub_100064FAC(0, 0, v57, &unk_1000D85E8, v65);

LABEL_31:
}

void sub_10005D194(char a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v84 = a8;
  v85 = a5;
  v86 = a6;
  v14 = type metadata accessor for HeadphoneAssets.Feature(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v17 - 8);
  v87 = a7;
  v88 = &v81 - v18;
  v19 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  v20 = a4 & 0xC000000000000001;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(a4 + 8 * v19 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_31;
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v83 = a9;
  swift_beginAccess();
  *(a3 + 16) = v21;

  if (a1)
  {
    if (qword_10011C6B8 == -1)
    {
LABEL_7:
      v22 = type metadata accessor for Logger();
      sub_10000A570(v22, qword_1001230A0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v23, v24, "Video: user did skip current video index:%ld", v25, 0xCu);
      }

      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v88, 1, 1, v26);
      sub_10000E9C8(v84, v89);
      sub_100062810(v83, &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadphoneAssets.Feature);
      type metadata accessor for MainActor();

      v85 = v85;
      v86 = v86;
      v27 = v87;
      v87 = a2;
      v28 = static MainActor.shared.getter();
      v29 = a4;
      v30 = (*(v15 + 80) + 104) & ~*(v15 + 80);
      v31 = v19;
      v32 = (v30 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = (v30 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      v35[2] = v28;
      v35[3] = &protocol witness table for MainActor;
      v37 = v85;
      v36 = v86;
      v35[4] = v29;
      v35[5] = v37;
      v35[6] = v36;
      v35[7] = v27;
      sub_10000E9B0(v89, (v35 + 8));
      sub_100064E50(v33, v35 + v30, type metadata accessor for HeadphoneAssets.Feature);
      v38 = v35 + v32;
      *v38 = v31;
      v38[8] = 1;
      v39 = v88;
      *(v35 + v34) = v87;
      *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = 3;
      sub_100064FAC(0, 0, v39, &unk_1000D8628, v35);
LABEL_27:

      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_7;
  }

  v82 = v15;
  v40 = a4;
  swift_beginAccess();
  v41 = *(a3 + 16);
  v42 = *(v41 + 64);
  v43 = *(v41 + 56);

  v44 = v42(v43);

  if (v20)
  {
    v45 = v40;
    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
    v47 = *(v46 + 49);
    v81 = v46;
    if (v47 == 2)
    {
      if (qword_10011C6B8 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000A570(v48, qword_1001230A0);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v49, v50, "Video: showed empty dual button video view index:%ld", v51, 0xCu);
      }

      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v88, 1, 1, v52);
      sub_10000E9C8(v84, v89);
      v53 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_100062810(v83, v53, type metadata accessor for HeadphoneAssets.Feature);
      type metadata accessor for MainActor();

      v54 = v85;
      v55 = v86;
      v56 = v87;
      v57 = static MainActor.shared.getter();
      v58 = v45;
      v59 = (*(v82 + 80) + 104) & ~*(v82 + 80);
      v60 = v19;
      v61 = (v16 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      v62[2] = v57;
      v62[3] = &protocol witness table for MainActor;
      v62[4] = v58;
      v62[5] = v54;
      v62[6] = v55;
      v62[7] = v56;
      sub_10000E9B0(v89, (v62 + 8));
      sub_100064E50(v53, v62 + v59, type metadata accessor for HeadphoneAssets.Feature);
      v63 = v62 + v61;
      *v63 = v60;
      v63[8] = 0;
      v64 = &unk_1000D8618;
    }

    else
    {
      if (qword_10011C6B8 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_10000A570(v65, qword_1001230A0);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        *(v68 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v66, v67, "Video: user did not skip current video index:%ld", v68, 0xCu);
      }

      v69 = type metadata accessor for TaskPriority();
      (*(*(v69 - 8) + 56))(v88, 1, 1, v69);
      sub_10000E9C8(v84, v89);
      sub_100062810(v83, &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadphoneAssets.Feature);
      type metadata accessor for MainActor();

      v85 = v85;
      v70 = v86;
      v71 = v87;
      v87 = a2;
      v72 = static MainActor.shared.getter();
      v73 = v45;
      v74 = (*(v82 + 80) + 104) & ~*(v82 + 80);
      v75 = v19;
      v76 = (v74 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v77 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v78 = (v74 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      v62[2] = v72;
      v62[3] = &protocol witness table for MainActor;
      v79 = v85;
      v62[4] = v73;
      v62[5] = v79;
      v62[6] = v70;
      v62[7] = v71;
      sub_10000E9B0(v89, (v62 + 8));
      sub_100064E50(v77, v62 + v74, type metadata accessor for HeadphoneAssets.Feature);
      v80 = v62 + v76;
      *v80 = v75;
      v80[8] = 0;
      *(v62 + v78) = v87;
      v64 = &unk_1000D8608;
    }

    sub_100064FAC(0, 0, v88, v64, v62);

    goto LABEL_27;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v45 = v40;
    if (v44 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_10005DA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1432) = v16;
  *(v8 + 1424) = v15;
  *(v8 + 1656) = v14;
  *(v8 + 1408) = v13;
  *(v8 + 1400) = a8;
  *(v8 + 1392) = a7;
  *(v8 + 1384) = a6;
  *(v8 + 1376) = a5;
  *(v8 + 1368) = a4;
  *(v8 + 1440) = type metadata accessor for MainActor();
  *(v8 + 1448) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 1456) = v10;
  *(v8 + 1464) = v9;

  return _swift_task_switch(sub_10005DB44, v10, v9);
}

uint64_t sub_10005DB44()
{
  v1 = *sub_10000E7E4(*(v0 + 1400), *(*(v0 + 1400) + 24));
  v2 = type metadata accessor for B788FeatureContent();
  *(v0 + 1472) = v2;
  *(v0 + 1192) = v2;
  *(v0 + 1200) = &off_100103248;
  *(v0 + 1168) = v1;

  *(v0 + 1480) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1488) = v4;
  *(v0 + 1496) = v3;

  return _swift_task_switch(sub_10005DC0C, v4, v3);
}

uint64_t sub_10005DC0C()
{
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1504) = sub_10000A570(v1, qword_1001230A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1656);
    v5 = *(v0 + 1416);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 0;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v0 + 1368);

  v16 = *(v0 + 1416);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > v16)
    {
      v17 = *(*(v0 + 1368) + 8 * v16 + 32);

      goto LABEL_9;
    }

    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v16 = *(v0 + 1416);
LABEL_9:
  *(v0 + 1512) = v17;
  v18 = *(v0 + 1656);
  v19 = *(v0 + 1392);
  v20 = swift_allocObject();
  *(v0 + 1520) = v20;
  sub_10000E9C8(v0 + 1168, v0 + 1208);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = v19;
  *(v21 + 32) = v16;
  sub_10000E9B0((v0 + 1208), v21 + 40);
  *(v20 + 16) = sub_100064F58;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  *(v0 + 1528) = v22;
  *(v22 + 16) = 0;
  *(v22 + 24) = v16;
  *(v22 + 32) = 0;
  v23 = v19;
  v24 = static MainActor.shared.getter();
  *(v0 + 1536) = v24;
  v25 = swift_task_alloc();
  *(v0 + 1544) = v25;
  *(v25 + 16) = 0x3FD0000000000000;
  *(v25 + 24) = v20;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  *(v25 + 48) = v18;
  *(v25 + 56) = v16;
  *(v25 + 64) = sub_100064F64;
  *(v25 + 72) = v22;
  *(v25 + 80) = v17;
  v8 = swift_task_alloc();
  *(v0 + 1552) = v8;
  *v8 = v0;
  v8[1] = sub_10005DF24;
  v10 = &protocol witness table for MainActor;
  v13 = sub_100064FA4;
  v12 = 0x80000001000E0620;
  v15 = &type metadata for () + 8;
  v9 = v24;
  v11 = 0xD00000000000003BLL;
  v14 = v25;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10005DF24()
{
  v1 = *v0;

  v2 = *(v1 + 1496);
  v3 = *(v1 + 1488);

  return _swift_task_switch(sub_10005E084, v3, v2);
}

uint64_t sub_10005E084()
{
  v1 = v0[176];

  v4 = *(v1 + *(type metadata accessor for HeadphoneAssets.Feature(0) + 20));
  v0[195] = v4;
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v5 - 1;
    if (!__OFSUB__(v5, 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    return _swift_task_switch(v5, v2, v3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 == v0[177])
  {
    sub_100055DDC(0, 2.0);
  }

  sub_10000EA94(v0 + 146);
  v3 = v0[183];
  v2 = v0[182];
  v5 = sub_10005E17C;

  return _swift_task_switch(v5, v2, v3);
}

uint64_t sub_10005E17C()
{
  v1 = (v0[178] + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView);
  v2 = swift_beginAccess();
  v5 = *v1;
  if (*v1 && (swift_getObjectType(), v0[169] = v5, v2 = dispatch thunk of VideoPlaybackControllable.play()(), (v6 = *v1) != 0))
  {
    v7 = v1[1];
    ObjectType = swift_getObjectType();
    v0[170] = v6;
    v9 = swift_task_alloc();
    v0[196] = v9;
    *v9 = v0;
    v9[1] = sub_10005E290;
    v2 = v0[179];
    v3 = ObjectType;
    v4 = v7;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of VideoPlaybackControllable.fastForward(to:)(v2, v3, v4);
}

uint64_t sub_10005E290(char a1)
{
  v2 = *v1;
  *(*v1 + 1657) = a1;

  v3 = *(v2 + 1464);
  v4 = *(v2 + 1456);

  return _swift_task_switch(sub_10005E3B8, v4, v3);
}

uint64_t sub_10005E3B8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 1657);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Video: PK did skip %{BOOL}d", v5, 8u);
  }

  v6 = *(v1 + 1657);

  v10 = *(v1 + 1432);
  if (v6 == 1 && (v11 = __OFADD__(v10, 1), ++v10, v11))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 1576) = v10;
    v12 = *(v1 + 1472);
    v13 = *sub_10000E7E4(*(v1 + 1400), *(*(v1 + 1400) + 24));
    *(v1 + 1272) = v12;
    *(v1 + 1280) = &off_100103248;
    *(v1 + 1248) = v13;

    *(v1 + 1584) = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v15;
    *(v1 + 1592) = v14;
    *(v1 + 1600) = v15;
    v7 = sub_10005E51C;
    v8 = v14;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005E51C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 1576);
    v5 = *(v1 + 1656);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v4;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 1;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v1 + 1368);

  v15 = *(v1 + 1576);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v17 = *(v1 + 1368);
  if (v15 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = *(v17 + 8 * v15 + 32);

LABEL_8:
  *(v1 + 1608) = v16;
  v18 = *(v1 + 1392);
  v19 = *(v1 + 1384);
  v20 = *(v1 + 1376);
  if (!*(v16 + 48))
  {
    v25 = String._bridgeToObjectiveC()();
    [v20 setText:v25];

    v26 = String._bridgeToObjectiveC()();
    [v19 setText:v26];

    v27 = String._bridgeToObjectiveC()();

    [v18 setTitle:v27];

    v24 = String._bridgeToObjectiveC()();

    goto LABEL_12;
  }

  if (*(v16 + 48) == 1)
  {

    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    v22 = String._bridgeToObjectiveC()();

    [v19 setText:v22];

    v23 = String._bridgeToObjectiveC()();
    [v18 setTitle:v23];

    v24 = String._bridgeToObjectiveC()();
LABEL_12:
    [v18 setSubtitle:v24];
    goto LABEL_14;
  }

  v28 = String._bridgeToObjectiveC()();

  [v18 setTitle:v28];

  v29 = String._bridgeToObjectiveC()();
  [v18 setSubtitle:v29];

  v30 = String._bridgeToObjectiveC()();
  [v20 setText:v30];

  v24 = String._bridgeToObjectiveC()();

  [v19 setText:v24];
LABEL_14:
  v31 = *(v1 + 1392);

  v32 = [v31 contentView];
  v33 = [v32 titleView];

  if (v33)
  {
    [v33 setAlpha:0.0];
  }

  v34 = [*(v1 + 1392) contentView];
  v35 = [v34 subtitleLabel];

  if (v35)
  {
    [v35 setAlpha:0.0];
  }

  v15 = [*(v1 + 1392) view];
  if (!v15)
  {
    goto LABEL_34;
  }

  v36 = v15;
  v37 = *(v1 + 1392);
  [v15 setNeedsLayout];

  v15 = [v37 view];
  if (!v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = v15;
  v39 = *(v1 + 1576);
  v40 = *(v1 + 1392);
  [v15 layoutIfNeeded];

  v41 = swift_allocObject();
  *(v1 + 1616) = v41;
  sub_10000E9C8(v1 + 1248, v1 + 1288);
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  *(v42 + 24) = v40;
  *(v42 + 32) = v39;
  sub_10000E9B0((v1 + 1288), v42 + 40);
  *(v41 + 16) = sub_100064F58;
  *(v41 + 24) = v42;
  v43 = *(v1 + 1392);
  if (v39 != 4)
  {
    v48 = v43;
    goto LABEL_29;
  }

  v44 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
  memcpy((v1 + 320), &v43[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], 0x130uLL);
  memcpy((v1 + 16), &v43[v44], 0x130uLL);
  v45 = sub_1000627F8((v1 + 16));
  v46 = *(v1 + 1392);
  if (v45 == 1)
  {
    v47 = v46;
  }

  else
  {
    v49 = *(v1 + 584);
    v50 = *(v1 + 544);
    *(v1 + 1120) = *(v1 + 528);
    *(v1 + 1136) = v50;
    *(v1 + 1152) = *(v1 + 560);
    v51 = *(v1 + 480);
    *(v1 + 1056) = *(v1 + 464);
    *(v1 + 1072) = v51;
    v52 = *(v1 + 512);
    *(v1 + 1088) = *(v1 + 496);
    *(v1 + 1104) = v52;
    v53 = *(v1 + 416);
    *(v1 + 992) = *(v1 + 400);
    *(v1 + 1008) = v53;
    v54 = *(v1 + 448);
    *(v1 + 1024) = *(v1 + 432);
    *(v1 + 1040) = v54;
    v55 = *(v1 + 352);
    *(v1 + 928) = *(v1 + 336);
    *(v1 + 944) = v55;
    v56 = *(v1 + 384);
    *(v1 + 960) = *(v1 + 368);
    *(v1 + 976) = v56;
    v57 = v46;
    sub_10000E88C(v1 + 320, v1 + 624, &qword_10011E760, &qword_1000D8598);
    sub_10002B2D0();
    [v49 setConstant:?];
    sub_10000E950(v1 + 320, &qword_10011E760, &qword_1000D8598);
    v47 = *(v1 + 1392);
  }

  v58 = [v47 navigationController];
  if (!v58)
  {
    goto LABEL_29;
  }

  v59 = v58;
  v60 = [v58 parentViewController];

  if (!v60)
  {
    goto LABEL_29;
  }

  v61 = [v60 view];

  if (!v61)
  {
LABEL_36:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v15, v8, v9, v10, v11, v12, v13, v14);
  }

  [v61 layoutIfNeeded];

LABEL_29:
  v62 = *(v1 + 1576);
  v63 = *(v1 + 1656);
  v64 = *(v1 + 1392);
  v65 = swift_allocObject();
  *(v1 + 1624) = v65;
  *(v65 + 16) = 1;
  *(v65 + 24) = v62;
  *(v65 + 32) = 0x3FF0000000000000;
  v66 = static MainActor.shared.getter();
  *(v1 + 1632) = v66;
  v67 = swift_task_alloc();
  *(v1 + 1640) = v67;
  *(v67 + 16) = 0x3FE0000000000000;
  *(v67 + 24) = v41;
  *(v67 + 32) = v64;
  *(v67 + 40) = 0x3FF0000000000000;
  *(v67 + 48) = v63;
  *(v67 + 56) = v62;
  *(v67 + 64) = sub_100064F64;
  *(v67 + 72) = v65;
  *(v67 + 80) = v16;
  v15 = swift_task_alloc();
  *(v1 + 1648) = v15;
  *v15 = v1;
  *(v15 + 8) = sub_10005ECB4;
  v9 = &protocol witness table for MainActor;
  v12 = sub_100064FA4;
  v11 = 0x80000001000E0620;
  v14 = &type metadata for () + 8;
  v8 = v66;
  v10 = 0xD00000000000003BLL;
  v13 = v67;

  return withCheckedContinuation<A>(isolation:function:_:)(v15, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10005ECB4()
{
  v1 = *v0;

  v2 = *(v1 + 1600);
  v3 = *(v1 + 1592);

  return _swift_task_switch(sub_10005EE14, v3, v2);
}

uint64_t sub_10005EE14()
{
  v1 = v0[195];

  if (v1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  sub_10000EA94(v0 + 156);
  v2 = v0[183];
  v3 = v0[182];

  return _swift_task_switch(sub_10005EEC4, v3, v2);
}

uint64_t sub_10005EEC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1592) = v15;
  *(v8 + 1376) = v14;
  *(v8 + 1368) = v13;
  *(v8 + 1360) = a8;
  *(v8 + 1352) = a7;
  *(v8 + 1344) = a6;
  *(v8 + 1336) = a5;
  *(v8 + 1328) = a4;
  *(v8 + 1384) = type metadata accessor for MainActor();
  *(v8 + 1392) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 1400) = v10;
  *(v8 + 1408) = v9;

  return _swift_task_switch(sub_10005EFEC, v10, v9);
}

uint64_t sub_10005EFEC()
{
  v1 = *sub_10000E7E4(*(v0 + 1360), *(*(v0 + 1360) + 24));
  v2 = type metadata accessor for B788FeatureContent();
  *(v0 + 1416) = v2;
  *(v0 + 1192) = v2;
  *(v0 + 1200) = &off_100103248;
  *(v0 + 1168) = v1;

  *(v0 + 1424) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1432) = v4;
  *(v0 + 1440) = v3;

  return _swift_task_switch(sub_10005F0B4, v4, v3);
}

uint64_t sub_10005F0B4()
{
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1448) = sub_10000A570(v1, qword_1001230A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1592);
    v5 = *(v0 + 1376);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 0;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v0 + 1328);

  v16 = *(v0 + 1376);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > v16)
    {
      v17 = *(*(v0 + 1328) + 8 * v16 + 32);

      goto LABEL_9;
    }

    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v16 = *(v0 + 1376);
LABEL_9:
  *(v0 + 1456) = v17;
  v18 = *(v0 + 1592);
  v19 = *(v0 + 1352);
  v20 = swift_allocObject();
  *(v0 + 1464) = v20;
  sub_10000E9C8(v0 + 1168, v0 + 1208);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = v19;
  *(v21 + 32) = v16;
  sub_10000E9B0((v0 + 1208), v21 + 40);
  *(v20 + 16) = sub_100064F58;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  *(v0 + 1472) = v22;
  *(v22 + 16) = 0;
  *(v22 + 24) = v16;
  *(v22 + 32) = 0;
  v23 = v19;
  v24 = static MainActor.shared.getter();
  *(v0 + 1480) = v24;
  v25 = swift_task_alloc();
  *(v0 + 1488) = v25;
  *(v25 + 16) = 0x3FD0000000000000;
  *(v25 + 24) = v20;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  *(v25 + 48) = v18;
  *(v25 + 56) = v16;
  *(v25 + 64) = sub_100064F64;
  *(v25 + 72) = v22;
  *(v25 + 80) = v17;
  v8 = swift_task_alloc();
  *(v0 + 1496) = v8;
  *v8 = v0;
  v8[1] = sub_10005F3CC;
  v10 = &protocol witness table for MainActor;
  v13 = sub_100064FA4;
  v12 = 0x80000001000E0620;
  v15 = &type metadata for () + 8;
  v9 = v24;
  v11 = 0xD00000000000003BLL;
  v14 = v25;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10005F3CC()
{
  v1 = *v0;

  v2 = *(v1 + 1440);
  v3 = *(v1 + 1432);

  return _swift_task_switch(sub_10005F52C, v3, v2);
}

uint64_t sub_10005F52C()
{
  v1 = v0[171];

  v4 = *(v1 + *(type metadata accessor for HeadphoneAssets.Feature(0) + 20));
  v0[188] = v4;
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v5 - 1;
    if (!__OFSUB__(v5, 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    return _swift_task_switch(v5, v2, v3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 == v0[172])
  {
    sub_100055DDC(0, 2.0);
  }

  sub_10000EA94(v0 + 146);
  v3 = v0[176];
  v2 = v0[175];
  v5 = sub_10005F624;

  return _swift_task_switch(v5, v2, v3);
}

uint64_t sub_10005F624(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 1376);
  *(v3 + 1512) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 1416);
    v7 = *sub_10000E7E4(*(v3 + 1360), *(*(v3 + 1360) + 24));
    *(v3 + 1272) = v6;
    *(v3 + 1280) = &off_100103248;
    *(v3 + 1248) = v7;

    *(v3 + 1520) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    a3 = v9;
    *(v3 + 1528) = v8;
    *(v3 + 1536) = v9;
    a1 = sub_10005F6F4;
    a2 = v8;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005F6F4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 1512);
    v5 = *(v1 + 1592);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v4;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 1;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v1 + 1328);

  v15 = *(v1 + 1512);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v17 = *(v1 + 1328);
  if (v15 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = *(v17 + 8 * v15 + 32);

LABEL_8:
  *(v1 + 1544) = v16;
  v18 = *(v1 + 1352);
  v19 = *(v1 + 1344);
  v20 = *(v1 + 1336);
  if (!*(v16 + 48))
  {
    v25 = String._bridgeToObjectiveC()();
    [v20 setText:v25];

    v26 = String._bridgeToObjectiveC()();
    [v19 setText:v26];

    v27 = String._bridgeToObjectiveC()();

    [v18 setTitle:v27];

    v24 = String._bridgeToObjectiveC()();

    goto LABEL_12;
  }

  if (*(v16 + 48) == 1)
  {

    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    v22 = String._bridgeToObjectiveC()();

    [v19 setText:v22];

    v23 = String._bridgeToObjectiveC()();
    [v18 setTitle:v23];

    v24 = String._bridgeToObjectiveC()();
LABEL_12:
    [v18 setSubtitle:v24];
    goto LABEL_14;
  }

  v28 = String._bridgeToObjectiveC()();

  [v18 setTitle:v28];

  v29 = String._bridgeToObjectiveC()();
  [v18 setSubtitle:v29];

  v30 = String._bridgeToObjectiveC()();
  [v20 setText:v30];

  v24 = String._bridgeToObjectiveC()();

  [v19 setText:v24];
LABEL_14:
  v31 = *(v1 + 1352);

  v32 = [v31 contentView];
  v33 = [v32 titleView];

  if (v33)
  {
    [v33 setAlpha:0.0];
  }

  v34 = [*(v1 + 1352) contentView];
  v35 = [v34 subtitleLabel];

  if (v35)
  {
    [v35 setAlpha:0.0];
  }

  v15 = [*(v1 + 1352) view];
  if (!v15)
  {
    goto LABEL_34;
  }

  v36 = v15;
  v37 = *(v1 + 1352);
  [v15 setNeedsLayout];

  v15 = [v37 view];
  if (!v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = v15;
  v39 = *(v1 + 1512);
  v40 = *(v1 + 1352);
  [v15 layoutIfNeeded];

  v41 = swift_allocObject();
  *(v1 + 1552) = v41;
  sub_10000E9C8(v1 + 1248, v1 + 1288);
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  *(v42 + 24) = v40;
  *(v42 + 32) = v39;
  sub_10000E9B0((v1 + 1288), v42 + 40);
  *(v41 + 16) = sub_100064F58;
  *(v41 + 24) = v42;
  v43 = *(v1 + 1352);
  if (v39 != 4)
  {
    v48 = v43;
    goto LABEL_29;
  }

  v44 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
  memcpy((v1 + 320), &v43[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], 0x130uLL);
  memcpy((v1 + 16), &v43[v44], 0x130uLL);
  v45 = sub_1000627F8((v1 + 16));
  v46 = *(v1 + 1352);
  if (v45 == 1)
  {
    v47 = v46;
  }

  else
  {
    v49 = *(v1 + 584);
    v50 = *(v1 + 544);
    *(v1 + 1120) = *(v1 + 528);
    *(v1 + 1136) = v50;
    *(v1 + 1152) = *(v1 + 560);
    v51 = *(v1 + 480);
    *(v1 + 1056) = *(v1 + 464);
    *(v1 + 1072) = v51;
    v52 = *(v1 + 512);
    *(v1 + 1088) = *(v1 + 496);
    *(v1 + 1104) = v52;
    v53 = *(v1 + 416);
    *(v1 + 992) = *(v1 + 400);
    *(v1 + 1008) = v53;
    v54 = *(v1 + 448);
    *(v1 + 1024) = *(v1 + 432);
    *(v1 + 1040) = v54;
    v55 = *(v1 + 352);
    *(v1 + 928) = *(v1 + 336);
    *(v1 + 944) = v55;
    v56 = *(v1 + 384);
    *(v1 + 960) = *(v1 + 368);
    *(v1 + 976) = v56;
    v57 = v46;
    sub_10000E88C(v1 + 320, v1 + 624, &qword_10011E760, &qword_1000D8598);
    sub_10002B2D0();
    [v49 setConstant:?];
    sub_10000E950(v1 + 320, &qword_10011E760, &qword_1000D8598);
    v47 = *(v1 + 1352);
  }

  v58 = [v47 navigationController];
  if (!v58)
  {
    goto LABEL_29;
  }

  v59 = v58;
  v60 = [v58 parentViewController];

  if (!v60)
  {
    goto LABEL_29;
  }

  v61 = [v60 view];

  if (!v61)
  {
LABEL_36:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v15, v8, v9, v10, v11, v12, v13, v14);
  }

  [v61 layoutIfNeeded];

LABEL_29:
  v62 = *(v1 + 1512);
  v63 = *(v1 + 1592);
  v64 = *(v1 + 1352);
  v65 = swift_allocObject();
  *(v1 + 1560) = v65;
  *(v65 + 16) = 1;
  *(v65 + 24) = v62;
  *(v65 + 32) = 0x3FF0000000000000;
  v66 = static MainActor.shared.getter();
  *(v1 + 1568) = v66;
  v67 = swift_task_alloc();
  *(v1 + 1576) = v67;
  *(v67 + 16) = 0x3FE0000000000000;
  *(v67 + 24) = v41;
  *(v67 + 32) = v64;
  *(v67 + 40) = 0x3FF0000000000000;
  *(v67 + 48) = v63;
  *(v67 + 56) = v62;
  *(v67 + 64) = sub_100064F64;
  *(v67 + 72) = v65;
  *(v67 + 80) = v16;
  v15 = swift_task_alloc();
  *(v1 + 1584) = v15;
  *v15 = v1;
  *(v15 + 8) = sub_10005FE8C;
  v9 = &protocol witness table for MainActor;
  v12 = sub_100064FA4;
  v11 = 0x80000001000E0620;
  v14 = &type metadata for () + 8;
  v8 = v66;
  v10 = 0xD00000000000003BLL;
  v13 = v67;

  return withCheckedContinuation<A>(isolation:function:_:)(v15, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10005FE8C()
{
  v1 = *v0;

  v2 = *(v1 + 1536);
  v3 = *(v1 + 1528);

  return _swift_task_switch(sub_10005FFEC, v3, v2);
}

uint64_t sub_10005FFEC()
{
  v1 = v0[188];

  if (v1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  sub_10000EA94(v0 + 156);
  v2 = v0[176];
  v3 = v0[175];

  return _swift_task_switch(sub_10006009C, v3, v2);
}

uint64_t sub_10006009C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000600FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 280) = v14;
  *(v8 + 152) = v13;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 128) = a4;
  *(v8 + 176) = type metadata accessor for MainActor();
  *(v8 + 184) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 192) = v10;
  *(v8 + 200) = v9;

  return _swift_task_switch(sub_1000601B8, v10, v9);
}

uint64_t sub_1000601B8()
{
  v1 = *sub_10000E7E4(*(v0 + 144), *(*(v0 + 144) + 24));
  *(v0 + 40) = type metadata accessor for B788FeatureContent();
  *(v0 + 48) = &off_100103248;
  *(v0 + 16) = v1;

  *(v0 + 208) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 216) = v3;
  *(v0 + 224) = v2;

  return _swift_task_switch(sub_100060274, v3, v2);
}

uint64_t sub_100060274()
{
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A570(v1, qword_1001230A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 0;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v0 + 128);

  v16 = *(v0 + 160);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > v16)
    {
      v17 = *(*(v0 + 128) + 8 * v16 + 32);

      goto LABEL_9;
    }

    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v16 = *(v0 + 160);
LABEL_9:
  *(v0 + 232) = v17;
  v18 = *(v0 + 280);
  v19 = *(v0 + 136);
  v20 = swift_allocObject();
  *(v0 + 240) = v20;
  sub_10000E9C8(v0 + 16, v0 + 56);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = v19;
  *(v21 + 32) = v16;
  sub_10000E9B0((v0 + 56), v21 + 40);
  *(v20 + 16) = sub_100064F58;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  *(v0 + 248) = v22;
  *(v22 + 16) = 0;
  *(v22 + 24) = v16;
  *(v22 + 32) = 0;
  v23 = v19;
  v24 = static MainActor.shared.getter();
  *(v0 + 256) = v24;
  v25 = swift_task_alloc();
  *(v0 + 264) = v25;
  *(v25 + 16) = 0x3FD0000000000000;
  *(v25 + 24) = v20;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  *(v25 + 48) = v18;
  *(v25 + 56) = v16;
  *(v25 + 64) = sub_100064F64;
  *(v25 + 72) = v22;
  *(v25 + 80) = v17;
  v8 = swift_task_alloc();
  *(v0 + 272) = v8;
  *v8 = v0;
  v8[1] = sub_100060588;
  v10 = &protocol witness table for MainActor;
  v13 = sub_100064FA4;
  v12 = 0x80000001000E0620;
  v15 = &type metadata for () + 8;
  v9 = v24;
  v11 = 0xD00000000000003BLL;
  v14 = v25;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100060588()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_1000606E8, v3, v2);
}

uint64_t sub_1000606E8()
{
  v1 = v0[19];

  v4 = *(v1 + *(type metadata accessor for HeadphoneAssets.Feature(0) + 20));
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v5 - 1;
    if (!__OFSUB__(v5, 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    return _swift_task_switch(v5, v2, v3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 == v0[20])
  {
    sub_100055DDC(0, 2.0);
  }

  sub_10000EA94(v0 + 2);
  v2 = v0[24];
  v3 = v0[25];
  v5 = sub_1000607D4;

  return _swift_task_switch(v5, v2, v3);
}

uint64_t sub_1000607D4()
{
  v1 = v0[21];

  v2 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView);
  swift_beginAccess();
  v3 = *v2;
  if (*v2)
  {
    swift_getObjectType();
    v0[15] = v3;
    dispatch thunk of VideoPlaybackControllable.play()();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100060884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v15;
  *(v8 + 56) = v13;
  *(v8 + 64) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  type metadata accessor for MainActor();
  *(v8 + 72) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 80) = v10;
  *(v8 + 88) = v9;

  return _swift_task_switch(sub_100060938, v10, v9);
}

uint64_t sub_100060938()
{
  v1 = *sub_10000E7E4(*(v0 + 48), *(*(v0 + 48) + 24));
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1000609F8;
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_1000634E8(v4, v3, 0, v7, v8, v5, v6, v1);
}

uint64_t sub_1000609F8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100060B18, v3, v2);
}

uint64_t sub_100060B18()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100060B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_100055DDC(1, 0.5);
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = a5;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = a6;
  v14 = _Block_copy(aBlock);

  [v12 animateWithDuration:0 delay:v14 options:0 animations:0.5 completion:0.0];
  _Block_release(v14);
}

void sub_100060CA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      sub_1000B6830();
      swift_unknownObjectRelease();
    }
  }
}

double sub_100060D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100008438(&qword_10011E798, &qword_1000D8658);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);

  dispatch thunk of HeadphoneProxFeatureManager.audioAccessoryDeviceHandler.setter();

  return result;
}

double sub_100060E90(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 bluetoothAddress];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_100008480();
  v9 = StringProtocol.capitalized.getter();
  if (!v8)
  {

    return result;
  }

  if (v6 == v9 && v8 == v10)
  {

    goto LABEL_13;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_13:
    v14 = a1;
    sub_100008438(&qword_10011E798, &qword_1000D8658);
    CheckedContinuation.resume(returning:)();
    type metadata accessor for HeadphoneProxFeatureManager();
    static HeadphoneProxFeatureManager.shared.getter();
    dispatch thunk of HeadphoneProxFeatureManager.audioAccessoryDeviceHandler.setter();
  }

  return result;
}

uint64_t sub_100060FE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100061124(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for HeadphoneAssets.Feature(0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v10 - 8);
  v12 = &v77 - v11;
  v111[3] = type metadata accessor for B788FeatureContent();
  v111[4] = &off_100103248;
  v111[0] = a2;
  v13 = *&a3[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel];
  if (!v13 || (v82 = v7, (v14 = *&a3[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody]) == 0))
  {

    return sub_10000EA94(v111);
  }

  v81 = v6;
  v15 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(&a3[v15], v12, &qword_10011F2E0, &unk_1000D8580);
  v16 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v16 - 8) + 48))(v12, 1, v16))
  {

    sub_10000E950(v12, &qword_10011F2E0, &unk_1000D8580);
    return sub_10000EA94(v111);
  }

  v80 = a1;
  v18 = &v12[*(v16 + 56)];
  v19 = *(v18 + 13);
  v100 = *(v18 + 12);
  v101 = v19;
  v102 = *(v18 + 14);
  v20 = *(v18 + 9);
  v96 = *(v18 + 8);
  v97 = v20;
  v21 = *(v18 + 11);
  v98 = *(v18 + 10);
  v99 = v21;
  v22 = *(v18 + 5);
  v92 = *(v18 + 4);
  v93 = v22;
  v23 = *(v18 + 7);
  v94 = *(v18 + 6);
  v95 = v23;
  v24 = *(v18 + 1);
  v88 = *v18;
  v89 = v24;
  v25 = *(v18 + 3);
  v90 = *(v18 + 2);
  v91 = v25;

  v26 = v14;
  v27 = v13;
  sub_10000E88C(&v88, &v85, &unk_10011FF80, &qword_1000D8590);
  sub_10000E950(v12, &qword_10011F2E0, &unk_1000D8580);
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v104 = v96;
  v105 = v97;
  v106 = v98;
  v107 = v99;
  v103[4] = v92;
  v103[5] = v93;
  v103[6] = v94;
  v103[7] = v95;
  v103[0] = v88;
  v103[1] = v89;
  v103[2] = v90;
  v103[3] = v91;
  if (sub_100026134(v103) == 1)
  {

    return sub_10000EA94(v111);
  }

  v28 = sub_10000B398();
  a3[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState] = 1;
  sub_10000E950(&v88, &unk_10011FF80, &qword_1000D8590);
  if (v104)
  {
    sub_100055024();
  }

  v29 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_10000E9C8(v111, &v85);
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v28;
  v30[4] = v27;
  v30[5] = v26;
  sub_10000E9B0(&v85, (v30 + 6));
  v30[11] = ObjectType;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E9C8(v111, &v85);
  sub_100062810(v80, &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadphoneAssets.Feature);
  v32 = v26;
  v33 = (*(v82 + 80) + 96) & ~*(v82 + 80);
  v34 = swift_allocObject();
  v34[2] = v31;
  v34[3] = v28;
  sub_10000E9B0(&v85, (v34 + 4));
  v34[9] = v27;
  v34[10] = v32;
  v34[11] = a3;
  v82 = v34;
  sub_100064E50(v9, v34 + v33, type metadata accessor for HeadphoneAssets.Feature);
  v35 = v32;
  v36 = v27;
  v78 = v35;
  v77 = v36;

  v37 = a3;
  v39 = sub_100054344(&v85);
  v40 = *v38;
  v79 = v30;
  if (v40)
  {
    v41 = v38;
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = sub_100062A70;
    v43[4] = v30;
    v44 = *v41;
    v45 = v41[1];
    swift_getObjectType();
    v84 = v44;

    v46 = v44;
    dispatch thunk of VideoPlaybackControllable.startedHandler.setter();
    v47 = *v41;
    *v41 = v84;
    v41[1] = v45;
  }

  (v39)(&v85, 0);
  v49 = sub_100054344(&v85);
  if (*v48)
  {
    v50 = v48;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = *v50;
    v52 = v50[1];
    swift_getObjectType();
    v84 = v51;

    v53 = v51;
    dispatch thunk of VideoPlaybackControllable.completedHandler.setter();
    v54 = *v50;
    *v50 = v84;
    v50[1] = v52;
  }

  result = (v49)(&v85, 0);
  v55 = *(v80 + *(v81 + 20));
  if (!(v55 >> 62))
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    ObjectType = v37;
    if (v56)
    {
      goto LABEL_17;
    }

LABEL_29:
    v66 = (ObjectType + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView);
    swift_beginAccess();
    v67 = *v66;
    if (*v66)
    {
      swift_getObjectType();
      *&v85 = v67;
      v68 = swift_allocObject();
      v69 = v82;
      *(v68 + 16) = sub_100062BA8;
      *(v68 + 24) = v69;
      v70 = v67;

      dispatch thunk of VideoPlaybackControllable.setPlaybackNotificationTimeRanges(_:handler:)();
    }

    else
    {
    }

    v72 = v77;
    v71 = v78;
    v73 = *v66;
    if (*v66)
    {
      swift_getObjectType();
      *&v85 = v73;
      dispatch thunk of VideoPlaybackControllable.transitionToFeatures()();
    }

    v74 = objc_opt_self();
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v87 = sub_100064F20;
    *(&v87 + 1) = v75;
    *&v85 = _NSConcreteStackBlock;
    *(&v85 + 1) = 1107296256;
    *&v86 = sub_100019340;
    *(&v86 + 1) = &unk_100105DC8;
    v76 = _Block_copy(&v85);

    [v74 animateWithDuration:0 delay:v76 options:0 animations:0.5 completion:0.0];

    _Block_release(v76);
    return sub_10000EA94(v111);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v56 = result;
  ObjectType = v37;
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (v56 >= 1)
  {
    v57 = 0;
    v58 = _swiftEmptyArrayStorage;
    do
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v59 = *(v55 + 8 * v57 + 32);
      }

      v60 = v59;
      [v59 CMTimeRangeValue];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1000CCB2C(0, *(v58 + 2) + 1, 1, v58);
      }

      v62 = *(v58 + 2);
      v61 = *(v58 + 3);
      if (v62 >= v61 >> 1)
      {
        v58 = sub_1000CCB2C((v61 > 1), v62 + 1, 1, v58);
      }

      ++v57;

      *(v58 + 2) = v62 + 1;
      v63 = &v58[48 * v62];
      v64 = v85;
      v65 = v87;
      *(v63 + 3) = v86;
      *(v63 + 4) = v65;
      *(v63 + 2) = v64;
    }

    while (v56 != v57);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void sub_100061A90(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v5 = a1;
  v6 = &a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex] = a1;
  v7 = qword_10011C6B8;

  if (v7 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_1001230A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v9, v10, "Video: setting currentIndex index:%ld", v11, 0xCu);
    }

    v6[8] = 0;
    v12 = [a4 actions];
    sub_1000084D4(0, &qword_10011E780, PRXAction_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      break;
    }

    v6 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = v5;
    if (!v6)
    {
      goto LABEL_20;
    }

LABEL_6:
    v14 = 0;
    v5 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v14;
      if (v16 == v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  v44 = v5;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_20:

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v19 = _swiftEmptyArrayStorage[v18 + 4];
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [a4 removeAction:v19];

      ++v18;
      if (v21 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  v22 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction];
  if (!v22 || (v23 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction]) == 0 || (v24 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipVideoSegmentAction]) == 0)
  {
    v45 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v45, v32, "Video: Missing Buttons!", v33, 2u);
    }

    goto LABEL_56;
  }

  v45 = v22;
  v25 = v23;
  v26 = v24;
  v27 = sub_10000B398();
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = v44;
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v30 = *(v41 + 49);
    swift_unknownObjectRelease();
    if (!v30)
    {
      goto LABEL_53;
    }

LABEL_40:
    if (v30 == 1)
    {
      if (v28 < 3)
      {
        [v45 setEnabled:(a3 & 1) == 0];
        v31 = [a4 addAction:v45];
        goto LABEL_54;
      }

      v36 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction;
      v37 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction];
      if (v37)
      {
        [v37 setEnabled:0];
        v38 = *&a4[v36];
        if (v38)
        {
          v39 = v38;
          v40 = [a4 addAction:v39];

          goto LABEL_55;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v34 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction;
    v35 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction];
    if (v35)
    {
      [v35 setEnabled:1];
      if (*&a4[v34])
      {

        [v26 setEnabled:1];
        v31 = [a4 addAction:v26];
        goto LABEL_54;
      }

      goto LABEL_62;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v28 = v44;
  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v44)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v29 = *(v27 + 8 * v44 + 32);

  v30 = *(v29 + 49);

  if (v30)
  {
    goto LABEL_40;
  }

LABEL_53:
  [v25 setEnabled:1];
  v31 = [a4 addAction:v25];
LABEL_54:
  v42 = v31;

LABEL_55:
LABEL_56:
}

id sub_1000620D8(uint64_t a1)
{
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState] = 0;
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_shouldFadeInElements] = 1;
  v3 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
  sub_100062284(__src);
  memcpy(&v1[v3], __src, 0x130uLL);
  v4 = &v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipVideoSegmentAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureGradient] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_type] = 3;
  v7 = &v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  *v7 = 0;
  v7[8] = 0;
  v8 = type metadata accessor for HeadphoneConnectViewController(0);
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v7[32] = 0;
  v10.receiver = v1;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, "initWithContentView:", a1);
}

double sub_100062284(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1000622D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000622E4()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006231C()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_10006244C()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);

  sub_1000585C0(v6, v0 + v2, v4, v5);
}

uint64_t sub_1000624F4()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v5, v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_1000625FC(unint64_t a1, int a2)
{
  v5 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100058F10(a1, a2, v2 + v6, v7);
}

uint64_t sub_10006270C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000627B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000627F8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100062810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100062878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000628D8(uint64_t a1)
{
  dispatch thunk of HeadphoneIEDObserver.primaryInEarStatus.getter();

  return dispatch thunk of HeadphoneIEDObserver.secondaryInEarStatus.getter();
}

uint64_t sub_100062908()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BD1C;

  return sub_10005A224(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100062A18()
{

  sub_10000EA94((v0 + 48));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100062A84()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(v1 + 64);

  sub_10000EA94((v0 + 32));

  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100062C38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062CBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062CF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100062D2C()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar) = 1;
  return [*(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction) setEnabled:1];
}

uint64_t sub_100062D70(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100062D80()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(v1 + 64);

  sub_10000EA94((v0 + 64));
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100062F30(uint64_t a1)
{
  type metadata accessor for HeadphoneAssets.Feature(0);
  v3 = v1[3];
  v10 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100064F50;

  return sub_100060884(a1, v10, v3, v4, v5, v6, v7, (v1 + 8));
}

uint64_t sub_100063094(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_100063130, v4, v3);
}

uint64_t sub_100063130()
{
  v1 = v0[4];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

    v8 = 0;
    goto LABEL_12;
  }

  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v3 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

  if (*(v3 + 16))
  {
    v4 = sub_1000CD118(v0[3], v0[4]);
    if (v5)
    {
      v6 = v4;

      v7 = *(*(v3 + 56) + 8 * v6);

      v8 = v7;
LABEL_12:
      v15 = v0[1];

      return v15(v8);
    }
  }

  v9 = v0[4];
  v10 = v0[3];

  v11 = static MainActor.shared.getter();
  v0[9] = v11;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  v13 = swift_task_alloc();
  v0[11] = v13;
  v14 = sub_100008438(&qword_10011E790, &qword_1000D8650);
  *v13 = v0;
  v13[1] = sub_100063324;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v11, &protocol witness table for MainActor, 0xD000000000000020, 0x80000001000E0670, sub_100064BBC, v12, v14);
}

uint64_t sub_100063324()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100063484, v3, v2);
}

uint64_t sub_100063484()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000634E8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1288) = v14;
  *(v8 + 1280) = a7;
  *(v8 + 1272) = a6;
  *(v8 + 1264) = a5;
  *(v8 + 1256) = a4;
  *(v8 + 1377) = a3;
  *(v8 + 1376) = a2;
  *(v8 + 1248) = a1;
  *(v8 + 1192) = type metadata accessor for B788FeatureContent();
  *(v8 + 1200) = &off_100103248;
  *(v8 + 1168) = a8;
  *(v8 + 1296) = type metadata accessor for MainActor();

  *(v8 + 1304) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 1312) = v11;
  *(v8 + 1320) = v10;

  return _swift_task_switch(sub_1000635D4, v11, v10);
}

uint64_t sub_1000635D4()
{
  v1 = *(v0 + 1376);
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_1001230A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1377);
    v6 = *(v0 + 1376);
    v7 = *(v0 + 1248);
    v8 = swift_slowAlloc();
    *v8 = 134218496;
    *(v8 + 4) = v7;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v6;
    *(v8 + 18) = 1024;
    *(v8 + 20) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v8, 0x18u);
  }

  v9 = *(v0 + 1256);

  if ((v9 & 0xC000000000000001) == 0)
  {
    v18 = *(v0 + 1248);
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > v18)
    {
      v19 = *(*(v0 + 1256) + 8 * v18 + 32);

      goto LABEL_9;
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  *(v0 + 1328) = v19;
  if (*(v0 + 1376) != 1)
  {
    v27 = 0;
    goto LABEL_24;
  }

  v20 = *(v0 + 1280);
  v21 = *(v0 + 1272);
  v22 = *(v0 + 1264);
  if (!*(v19 + 48))
  {
    v28 = String._bridgeToObjectiveC()();
    [v22 setText:v28];

    v29 = String._bridgeToObjectiveC()();
    [v21 setText:v29];

    v30 = String._bridgeToObjectiveC()();

    [v20 setTitle:v30];

    v26 = String._bridgeToObjectiveC()();

    goto LABEL_15;
  }

  if (*(v19 + 48) == 1)
  {

    v23 = String._bridgeToObjectiveC()();

    [v22 setText:v23];

    v24 = String._bridgeToObjectiveC()();

    [v21 setText:v24];

    v25 = String._bridgeToObjectiveC()();
    [v20 setTitle:v25];

    v26 = String._bridgeToObjectiveC()();
LABEL_15:
    [v20 setSubtitle:v26];
    goto LABEL_17;
  }

  v31 = String._bridgeToObjectiveC()();

  [v20 setTitle:v31];

  v32 = String._bridgeToObjectiveC()();
  [v20 setSubtitle:v32];

  v33 = String._bridgeToObjectiveC()();
  [v22 setText:v33];

  v26 = String._bridgeToObjectiveC()();

  [v21 setText:v26];
LABEL_17:
  v34 = *(v0 + 1280);

  v35 = [v34 contentView];
  v36 = [v35 titleView];

  if (v36)
  {
    [v36 setAlpha:0.0];
  }

  v37 = [*(v0 + 1280) contentView];
  v38 = [v37 subtitleLabel];

  if (v38)
  {
    [v38 setAlpha:0.0];
  }

  v10 = [*(v0 + 1280) view];
  if (!v10)
  {
    goto LABEL_45;
  }

  v39 = v10;
  v40 = *(v0 + 1280);
  [v10 setNeedsLayout];

  v10 = [v40 view];
  if (!v10)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v41 = v10;
  [v10 layoutIfNeeded];

  v27 = *(v0 + 1376);
LABEL_24:
  v42 = *(v0 + 1280);
  v43 = *(v0 + 1248);
  v44 = swift_allocObject();
  *(v0 + 1336) = v44;
  sub_10000E9C8(v0 + 1168, v0 + 1208);
  v45 = swift_allocObject();
  *(v45 + 16) = v27;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  sub_10000E9B0((v0 + 1208), v45 + 40);
  *(v44 + 16) = sub_10006405C;
  *(v44 + 24) = v45;
  if (v27)
  {
    v46 = *(v0 + 1280);
    if (*(v0 + 1248) != 4)
    {
      v53 = v46;
LABEL_35:
      v52 = 1.0;
      goto LABEL_36;
    }

    v47 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
    memcpy((v0 + 320), &v46[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], 0x130uLL);
    memcpy((v0 + 16), &v46[v47], 0x130uLL);
    v48 = sub_1000627F8((v0 + 16));
    v49 = *(v0 + 1280);
    if (v48 == 1)
    {
      v50 = v49;
    }

    else
    {
      v54 = *(v0 + 584);
      v55 = *(v0 + 544);
      *(v0 + 1120) = *(v0 + 528);
      *(v0 + 1136) = v55;
      *(v0 + 1152) = *(v0 + 560);
      v56 = *(v0 + 480);
      *(v0 + 1056) = *(v0 + 464);
      *(v0 + 1072) = v56;
      v57 = *(v0 + 512);
      *(v0 + 1088) = *(v0 + 496);
      *(v0 + 1104) = v57;
      v58 = *(v0 + 416);
      *(v0 + 992) = *(v0 + 400);
      *(v0 + 1008) = v58;
      v59 = *(v0 + 448);
      *(v0 + 1024) = *(v0 + 432);
      *(v0 + 1040) = v59;
      v60 = *(v0 + 352);
      *(v0 + 928) = *(v0 + 336);
      *(v0 + 944) = v60;
      v61 = *(v0 + 384);
      *(v0 + 960) = *(v0 + 368);
      *(v0 + 976) = v61;
      v62 = v49;
      sub_10000E88C(v0 + 320, v0 + 624, &qword_10011E760, &qword_1000D8598);
      sub_10002B2D0();
      [v54 setConstant:?];
      sub_10000E950(v0 + 320, &qword_10011E760, &qword_1000D8598);
      v50 = *(v0 + 1280);
    }

    v63 = [v50 navigationController];
    if (!v63)
    {
      goto LABEL_35;
    }

    v64 = v63;
    v65 = [v63 parentViewController];

    if (!v65)
    {
      goto LABEL_35;
    }

    v66 = [v65 view];

    if (v66)
    {
      [v66 layoutIfNeeded];

      goto LABEL_35;
    }

LABEL_47:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  v51 = *(v0 + 1280);
  v52 = 0.0;
LABEL_36:
  if (v1)
  {
    v67 = 0.5;
  }

  else
  {
    v67 = 0.25;
  }

  v68 = *(v0 + 1280);
  v69 = *(v0 + 1377);
  v70 = *(v0 + 1248);
  v71 = swift_allocObject();
  *(v0 + 1344) = v71;
  *(v71 + 16) = v27;
  *(v71 + 24) = v70;
  *(v71 + 32) = v52;
  v72 = static MainActor.shared.getter();
  *(v0 + 1352) = v72;
  v73 = swift_task_alloc();
  *(v0 + 1360) = v73;
  *(v73 + 16) = v67;
  *(v73 + 24) = v44;
  *(v73 + 32) = v68;
  *(v73 + 40) = v52;
  *(v73 + 48) = v69;
  *(v73 + 56) = v70;
  *(v73 + 64) = sub_10006407C;
  *(v73 + 72) = v71;
  *(v73 + 80) = v19;
  v10 = swift_task_alloc();
  *(v0 + 1368) = v10;
  *v10 = v0;
  v10[1] = sub_100063E04;
  v12 = &protocol witness table for MainActor;
  v15 = sub_10006408C;
  v14 = 0x80000001000E0620;
  v17 = &type metadata for () + 8;
  v11 = v72;
  v13 = 0xD00000000000003BLL;
  v16 = v73;

  return withCheckedContinuation<A>(isolation:function:_:)(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100063E04()
{
  v1 = *v0;

  v2 = *(v1 + 1320);
  v3 = *(v1 + 1312);

  return _swift_task_switch(sub_100063F64, v3, v2);
}

uint64_t sub_100063F64()
{
  v1 = *(v0 + 1288);

  v2 = *(v1 + *(type metadata accessor for HeadphoneAssets.Feature(0) + 20));
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 == *(v0 + 1248) && (*(v0 + 1376) & 1) == 0)
  {
    sub_100055DDC(0, 2.0);
  }

  sub_10000EA94((v0 + 1168));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100064090()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000640F0()
{
  v1 = sub_100008438(&qword_10011E778, &qword_1000D85F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000641D0(int a1)
{
  sub_100008438(&qword_10011E778, &qword_1000D85F8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  return sub_10005C72C(a1, v3, v4, v5, v6);
}

uint64_t sub_100064254()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = (*(v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_10000EA94((v0 + 64));
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10006438C(uint64_t a1)
{
  type metadata accessor for HeadphoneAssets.Feature(0);
  v10 = v1[2];
  v3 = v1[4];
  v9 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100064F50;

  return sub_1000600FC(a1, v10, v9, v3, v4, v5, v6, (v1 + 8));
}

uint64_t sub_100064504()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_10000EA94((v0 + 64));
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 9, v2 | 7);
}

uint64_t sub_100064634(uint64_t a1)
{
  type metadata accessor for HeadphoneAssets.Feature(0);
  v3 = v1[3];
  v10 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100064F50;

  return sub_10005EF24(a1, v10, v3, v4, v5, v6, v7, (v1 + 8));
}

uint64_t sub_100064798()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = (*(v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_10000EA94((v0 + 64));
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000648D8(uint64_t a1)
{
  type metadata accessor for HeadphoneAssets.Feature(0);
  v9 = v1[3];
  v10 = v1[2];
  v3 = v1[5];
  v8 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100064F50;

  return sub_10005DA74(a1, v10, v9, v8, v3, v4, v5, (v1 + 8));
}

uint64_t sub_100064A58()
{
  sub_10000EA94((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100064AB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100064AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100064F50;

  return sub_10005A6BC(a1, v4, v5, v7, v6);
}

uint64_t sub_100064BC4()
{
  v1 = sub_100008438(&qword_10011E798, &qword_1000D8658);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_100064C94(void *a1)
{
  sub_100008438(&qword_10011E798, &qword_1000D8658);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_100060E90(a1, v3, v4);
}

uint64_t sub_100064D14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064D5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064D9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100064F50;

  return sub_10005AD0C(a1, v4, v5, v6);
}

uint64_t sub_100064E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100064FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E88C(a3, v25 - v10, &qword_10011CAA8, &unk_1000D85A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000E950(v11, &qword_10011CAA8, &unk_1000D85A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000E950(a3, &qword_10011CAA8, &unk_1000D85A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000E950(a3, &qword_10011CAA8, &unk_1000D85A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000652AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E88C(a3, v25 - v10, &qword_10011CAA8, &unk_1000D85A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000E950(v11, &qword_10011CAA8, &unk_1000D85A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100008438(&qword_10011EB20, &qword_1000D8980);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000E950(a3, &qword_10011CAA8, &unk_1000D85A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000E950(a3, &qword_10011CAA8, &unk_1000D85A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100008438(&qword_10011EB20, &qword_1000D8980);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

double sub_1000655C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0x100000000) != 0)
  {
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
  }

  if (a2)
  {
    v10 = 0xD000000000000016;
  }

  else
  {
    v10 = 0xD000000000000018;
  }

  if (a2)
  {
    v11 = "ptiveControlsStatus()";
  }

  else
  {
    v11 = "musicBeatsProxFlowCard";
  }

  v12 = v11 | 0x8000000000000000;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = v7;
  v14[6] = v9;
  v14[7] = 0x636973756DLL;
  v14[8] = 0xE500000000000000;
  v14[9] = v10;
  v14[10] = v12;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_10007BEC8;
  v16[4] = v14;

  sub_10001ABCC(sub_10007BF20, v16);

  return result;
}

void *sub_100065790(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1000CD624(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
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
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_100008438(&qword_10011EA80, &unk_1000DA490);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000D5250;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1000CD624((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_100065B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E88C(a3, v25 - v10, &qword_10011CAA8, &unk_1000D85A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000E950(v11, &qword_10011CAA8, &unk_1000D85A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

const char *sub_100065DD4()
{
  if (*v0)
  {
    return "ProxCardMultiDeviceDetection";
  }

  else
  {
    return "AirPodsInEducation";
  }
}

uint64_t sub_100065E04()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011E7A0);
  v1 = sub_10000A570(v0, qword_10011E7A0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100065ECC()
{
  result = sub_10007C488(&off_100102B80);
  qword_10011E7B8 = result;
  unk_10011E7C0 = v1;
  return result;
}

uint64_t sub_100065EF8(_BYTE *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10007BF98(a1, v1 + v6);
  swift_endAccess();
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    sub_10007C964(v1 + v6, v5, type metadata accessor for HeadphoneModel);
    (*(v8 + 24))(v5, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_10007C9CC(a1, type metadata accessor for HeadphoneModel);
    a1 = v5;
  }

  return sub_10007C9CC(a1, type metadata accessor for HeadphoneModel);
}

uint64_t sub_100066050()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager;
  if (*(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager))
  {
    v4 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager);
  }

  else
  {
    sub_1000084D4(0, &qword_10011EAB0, CKContainer_ptr);
    static CKContainer.AirTagsContainer.getter();
    static CKContainer.PersonalizationManateeContainer.getter();
    type metadata accessor for PersonalizationAssetManager();
    static PersonalizationAssetManager.defaultCacheDirectory.getter();
    v4 = PersonalizationAssetManager.__allocating_init(container:manateeContainer:cacheDirectory:)();
    *(v1 + v3) = v4;
  }

  return v4;
}

uint64_t sub_100066150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1000661DC(void *a1)
{
  v146 = type metadata accessor for HeadphoneModel(0);
  v2 = __chkstk_darwin(v146);
  v4 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v140 = &v126 - v5;
  v147 = type metadata accessor for HeadphoneBatteryInfo(0);
  v6 = *(v147 - 8);
  v7 = __chkstk_darwin(v147);
  v149 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v126 - v9;
  v141 = sub_100008438(&qword_10011EAC8, &qword_1000D88F0);
  __chkstk_darwin(v141);
  v12 = &v126 - v11;
  v13 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  v14 = __chkstk_darwin(v13 - 8);
  v139 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v142 = &v126 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v126 - v19;
  __chkstk_darwin(v18);
  v143 = &v126 - v21;
  v145 = type metadata accessor for UUID();
  v22 = *(v145 - 8);
  v23 = __chkstk_darwin(v145);
  v138 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v126 - v26;
  __chkstk_darwin(v25);
  v29 = &v126 - v28;
  v148 = a1;
  v30 = [a1 bleDevice];
  if (!v30)
  {
    return;
  }

  v31 = v30;
  v32 = [v30 advertisementFields];

  if (!v32)
  {
    return;
  }

  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = [v148 identifier];
  if (!v34)
  {

    return;
  }

  v137 = v6;
  v35 = v34;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v144;
  v37 = (v144 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model);
  swift_beginAccess();
  if (((*(v37 + 136) | 4) == 0xE || *(v37 + v146[34]) == 8223 && *(v37 + v146[47]) == 1) && (*(v36 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_hasAutoConnected) & 1) == 0)
  {

    sub_100071360(v148);
    (*(v22 + 8))(v29, v145);
    return;
  }

  v133 = v33;
  v135 = v29;
  v38 = v146[12];
  v130 = v37;
  v39 = v143;
  sub_10000E88C(v37 + v38, v143, &qword_10011DE28, &unk_1000D98B0);
  sub_10000E88C(v39, v20, &qword_10011DE28, &unk_1000D98B0);
  v136 = v22;
  v40 = v22 + 48;
  v41 = *(v22 + 48);
  v42 = v145;
  v132 = v40;
  v131 = v41;
  v43 = v41(v20, 1, v145);
  v134 = v12;
  v44 = v43;
  sub_10000E950(v20, &qword_10011DE28, &unk_1000D98B0);
  v45 = v44 == 1;
  v46 = v134;
  v129 = v4;
  v47 = v142;
  if (!v45 || ([v148 needsSetup] & 1) != 0)
  {
    goto LABEL_28;
  }

  v48 = [v148 bleDevice];
  if (v48 && (v49 = v48, v50 = [v48 bluetoothAddress], v49, v50))
  {
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = sub_10006BB90(v51, v53);
    v56 = v55;
    sub_100022640(v51, v53);
    v57 = v130[19];
    if (v56)
    {
      v46 = v134;
      v47 = v142;
      if (!v57)
      {

        v42 = v145;
        goto LABEL_28;
      }

      if (v54 == v130[18] && v57 == v56)
      {

        v42 = v145;
      }

      else
      {
        v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v42 = v145;
        if ((v112 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v42 = v145;
      v46 = v134;
      v47 = v142;
      if (v57)
      {
        goto LABEL_28;
      }
    }
  }

  else if (v130[19])
  {
    goto LABEL_28;
  }

  if (qword_10011C6C0 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v58 = type metadata accessor for Logger();
    sub_10000A570(v58, qword_10011E7A0);
    v59 = v136;
    v60 = *(v136 + 16);
    v60(v27, v135, v42);
    v61 = v148;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v151[0] = v128;
      *v64 = 136315394;
      v127 = v61;
      v60(v138, v27, v145);
      v65 = String.init<A>(reflecting:)();
      v67 = v66;
      (*(v59 + 8))(v27, v145);
      v68 = sub_100078978(v65, v67, v151);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v152 = [v127 bleDevice];
      sub_100008438(&qword_10011EAE8, &unk_1000D88F8);
      v69 = String.init<A>(reflecting:)();
      v71 = sub_100078978(v69, v70, v151);

      *(v64 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v62, v63, "Updating identifier to %s from %s", v64, 0x16u);
      swift_arrayDestroy();

      v42 = v145;
    }

    else
    {

      (*(v59 + 8))(v27, v42);
    }

    v72 = v143;
    sub_10000E950(v143, &qword_10011DE28, &unk_1000D98B0);
    v60(v72, v135, v42);
    (*(v59 + 56))(v72, 0, 1, v42);
    v39 = v72;
    v46 = v134;
    v47 = v142;
LABEL_28:
    v73 = v136;
    (*(v136 + 16))(v47, v135, v42);
    (*(v73 + 56))(v47, 0, 1, v42);
    v74 = *(v141 + 48);
    sub_10000E88C(v39, v46, &qword_10011DE28, &unk_1000D98B0);
    sub_10000E88C(v47, v46 + v74, &qword_10011DE28, &unk_1000D98B0);
    v75 = v131;
    if (v131(v46, 1, v42) != 1)
    {
      v78 = v139;
      sub_10000E88C(v46, v139, &qword_10011DE28, &unk_1000D98B0);
      if (v75(v46 + v74, 1, v42) != 1)
      {
        v79 = v136;
        v80 = v138;
        (*(v136 + 32))(v138, v46 + v74, v42);
        sub_10007CA2C(&qword_10011EAE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v81 = v78;
        v82 = dispatch thunk of static Equatable.== infix(_:_:)();
        v83 = *(v79 + 8);
        v83(v80, v42);
        sub_10000E950(v47, &qword_10011DE28, &unk_1000D98B0);
        v83(v81, v42);
        v39 = v143;
        sub_10000E950(v46, &qword_10011DE28, &unk_1000D98B0);
        v77 = v133;
        if (v82)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_10000E950(v39, &qword_10011DE28, &unk_1000D98B0);
        (*(v136 + 8))(v135, v42);
        return;
      }

      sub_10000E950(v47, &qword_10011DE28, &unk_1000D98B0);
      (*(v136 + 8))(v78, v42);
LABEL_34:
      sub_10000E950(v46, &qword_10011EAC8, &qword_1000D88F0);
      goto LABEL_35;
    }

    sub_10000E950(v47, &qword_10011DE28, &unk_1000D98B0);
    v76 = v75(v46 + v74, 1, v42);
    v77 = v133;
    if (v76 != 1)
    {

      goto LABEL_34;
    }

    sub_10000E950(v46, &qword_10011DE28, &unk_1000D98B0);
LABEL_37:
    v152 = 25452;
    v153 = 0xE200000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v77 + 16) && (v84 = sub_1000CD1FC(v151), (v85 & 1) != 0))
    {
      sub_10003CE5C(*(v77 + 56) + 32 * v84, &v152);
      sub_100047824(v151);
      v86 = swift_dynamicCast();
      v87 = v140;
      v27 = v86 ? v150 : 0;
    }

    else
    {
      sub_100047824(v151);
      v27 = 0;
      v87 = v140;
    }

    v152 = 0x7375746174537368;
    v153 = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v77 + 16) && (v88 = sub_1000CD1FC(v151), (v89 & 1) != 0))
    {
      sub_10003CE5C(*(v77 + 56) + 32 * v88, &v152);
      sub_100047824(v151);

      if (swift_dynamicCast())
      {
        v90 = v150;
        goto LABEL_48;
      }
    }

    else
    {

      sub_100047824(v151);
    }

    v90 = 0;
LABEL_48:
    v91 = [v148 batteryInfo];
    if (!v91)
    {
      v97 = _swiftEmptyArrayStorage;
      goto LABEL_76;
    }

    v92 = v91;
    sub_1000084D4(0, &qword_10011EAD8, SFBatteryInfo_ptr);
    v93 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = v93;
    LODWORD(v139) = v27;
    LODWORD(v138) = v90;
    if (v93 >> 62)
    {
      v113 = _CocoaArrayWrapper.endIndex.getter();
      v94 = v93;
      v95 = v113;
      if (!v113)
      {
LABEL_74:
        v97 = _swiftEmptyArrayStorage;
        goto LABEL_75;
      }
    }

    else
    {
      v95 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v95)
      {
        goto LABEL_74;
      }
    }

    if (v95 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_86:
    swift_once();
  }

  v96 = 0;
  v142 = (v94 & 0xC000000000000001);
  v97 = _swiftEmptyArrayStorage;
  LODWORD(v141) = enum case for BatteryIconStyle.unknown(_:);
  v98 = v94;
  do
  {
    if (v142)
    {
      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v99 = *(v94 + 8 * v96 + 32);
    }

    v100 = v99;
    v101 = [v99 batteryState] == 2;
    v102 = [v100 batteryType];
    if (v102 >= 5)
    {
      v103 = 3;
    }

    else
    {
      v103 = 0x201000203uLL >> (8 * v102);
    }

    [v100 batteryLevel];
    v105 = v104;
    v106 = v147;
    v107 = *(v147 + 28);
    v108 = type metadata accessor for BatteryIconStyle();
    (*(*(v108 - 8) + 104))(&v10[v107], v141, v108);
    v109 = [objc_allocWithZone(AABattery) init];
    *v10 = v105;
    v10[8] = v101;
    v10[9] = v103;
    *&v10[*(v106 + 32)] = v109;
    sub_10007C964(v10, v149, type metadata accessor for HeadphoneBatteryInfo);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v97 = sub_1000CCD4C(0, v97[2] + 1, 1, v97);
    }

    v111 = v97[2];
    v110 = v97[3];
    if (v111 >= v110 >> 1)
    {
      v97 = sub_1000CCD4C((v110 > 1), v111 + 1, 1, v97);
    }

    ++v96;

    sub_10007C9CC(v10, type metadata accessor for HeadphoneBatteryInfo);
    v97[2] = v111 + 1;
    sub_10000A4B8(v149, v97 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v111);
    v94 = v98;
  }

  while (v95 != v96);
LABEL_75:

  v87 = v140;
  v42 = v145;
  v39 = v143;
  LOBYTE(v27) = v139;
  v90 = v138;
LABEL_76:
  sub_10007C964(v130, v87, type metadata accessor for HeadphoneModel);
  v114 = v146;
  *(v87 + v146[25]) = v27;
  *(v87 + v114[31]) = v90;
  v115 = [v148 bleDevice];
  if (v115 && (v116 = v115, v117 = [v115 name], v116, v117))
  {
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v119;
  }

  else
  {
    v118 = 0;
    v120 = 0xE000000000000000;
  }

  v121 = (v87 + v146[14]);

  *v121 = v118;
  v121[1] = v120;
  v122 = type metadata accessor for AAFeatures();
  v151[3] = v122;
  v151[4] = sub_10007CA2C(&qword_10011EAD0, &type metadata accessor for AAFeatures, &protocol conformance descriptor for AAFeatures);
  v123 = sub_10007C900(v151);
  (*(*(v122 - 8) + 104))(v123, enum case for AAFeatures.chargingReminders(_:), v122);
  LOBYTE(v122) = isFeatureEnabled(_:)();
  sub_10000EA94(v151);

  if (v122)
  {
    v124 = v130[16];

    *(v87 + 128) = v124;
  }

  else
  {
    *(v87 + 128) = v97;
  }

  v125 = v129;
  sub_10007CAA0(v39, v87 + v146[12], &qword_10011DE28, &unk_1000D98B0);
  sub_10007C964(v87, v125, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v125);
  sub_10000E950(v39, &qword_10011DE28, &unk_1000D98B0);
  (*(v136 + 8))(v135, v42);
  sub_10007C9CC(v87, type metadata accessor for HeadphoneModel);
}

id sub_1000674EC(void *a1)
{
  v3 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v35[-v11];
  result = [a1 identifier];
  if (result)
  {
    v14 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v16 = type metadata accessor for HeadphoneModel(0);
    sub_10000E88C(v15 + *(v16 + 48), v5, &qword_10011DE28, &unk_1000D98B0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v7 + 8))(v12, v6);
      return sub_10000E950(v5, &qword_10011DE28, &unk_1000D98B0);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      if (static UUID.== infix(_:_:)())
      {
        v17 = *(v15 + 136);
        if (v17 <= 0xE && ((1 << v17) & 0x6700) != 0)
        {
          v38 = v1;
          if (qword_10011C6C0 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_10000A570(v18, qword_10011E7A0);
          v19 = a1;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v39 = v37;
            *v22 = 136315138;
            v23 = v19;
            v24 = [v23 description];
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v21;
            v26 = v25;
            v28 = v27;

            v29 = sub_100078978(v26, v28, &v39);

            *(v22 + 4) = v29;
            _os_log_impl(&_mh_execute_header, v20, v36, "Auto dismiss on lost device %s", v22, 0xCu);
            sub_10000EA94(v37);
          }

          v30 = v38;
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_100047C68();
            v30 = v38;
            swift_unknownObjectRelease();
          }

          v31 = v30 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = *(v31 + 8);
            ObjectType = swift_getObjectType();
            (*(v32 + 8))(0, ObjectType, v32);
            swift_unknownObjectRelease();
          }
        }
      }

      v34 = *(v7 + 8);
      v34(v10, v6);
      return (v34)(v12, v6);
    }
  }

  return result;
}

double sub_10006792C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000661DC(a1);
  }

  return result;
}

double sub_1000679A4(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if ((*(v6 + *(v3 + 176)) & 1) == 0)
  {
    v8 = [a1 btAddressData];
    if (v8)
    {
      v62 = v1;
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v63[0] = sub_100065790(v10, v12);
      sub_100008438(&qword_10011EA70, &unk_1000D8810);
      sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810, &protocol conformance descriptor for [A]);
      BidirectionalCollection<>.joined(separator:)();

      v13 = String.lowercased()();

      if (!*(v6 + 152))
      {
        sub_100022640(v10, v12);

        return result;
      }

      v14 = String.lowercased()();
      if (v13._countAndFlagsBits == v14._countAndFlagsBits && v13._object == v14._object)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v61 = v10;
      if (([a1 gapaFlags] & 1) == 0)
      {
        if (([a1 gapaFlags] & 2) != 0)
        {
          if (qword_10011C6C0 != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          sub_10000A570(v39, qword_10011E7A0);
          v40 = a1;
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();

          v43 = os_log_type_enabled(v41, v42);
          v59 = v12;
          if (v43)
          {
            v44 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v63[0] = v60;
            *v44 = 136315138;
            v45 = v40;
            v46 = [v45 description];
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;

            v50 = sub_100078978(v47, v49, v63);

            *(v44 + 4) = v50;
            _os_log_impl(&_mh_execute_header, v41, v42, "CB Device, device is not genuine  %s", v44, 0xCu);
            sub_10000EA94(v60);
          }

          v51 = v62;
          *(v6 + *(v3 + 176)) = 1;
          v52 = v51 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v53 = *(v52 + 8);
            ObjectType = swift_getObjectType();
            sub_10007C964(v6, v5, type metadata accessor for HeadphoneModel);
            (*(v53 + 24))(v5, ObjectType, v53);
            v51 = v62;
            swift_unknownObjectRelease();
            sub_10007C9CC(v5, type metadata accessor for HeadphoneModel);
          }

          v55 = *(v51 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
          v56 = swift_getObjectType();
          v57 = *(v55 + 192);
          swift_unknownObjectRetain();
          v57(v56, v55);
          swift_unknownObjectRelease();
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_10004ABCC();
            swift_unknownObjectRelease();
          }

          v16 = v61;
          v38 = v59;
          return sub_100022640(v16, v38);
        }

        v16 = v61;
LABEL_20:
        v38 = v12;
        return sub_100022640(v16, v38);
      }

      if (qword_10011C6C0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000A570(v17, qword_10011E7A0);
      v18 = a1;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      LODWORD(v60) = v20;
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v63[0] = v58;
        *v21 = 136315138;
        v22 = v18;
        v23 = [v22 description];
        v24 = v12;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = v25;
        v12 = v24;
        v29 = sub_100078978(v28, v27, v63);

        *(v21 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v19, v60, "CB Device, device is genuine %s", v21, 0xCu);
        sub_10000EA94(v58);
      }

      v10 = v61;
      v30 = v62;
      *(v6 + *(v3 + 176)) = 1;
      v31 = v30 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v31 + 8);
        v33 = v12;
        v34 = swift_getObjectType();
        sub_10007C964(v6, v5, type metadata accessor for HeadphoneModel);
        v35 = *(v32 + 24);
        v36 = v34;
        v12 = v33;
        v37 = v32;
        v10 = v61;
        v35(v5, v36, v37);
        swift_unknownObjectRelease();
        sub_10007C9CC(v5, type metadata accessor for HeadphoneModel);
      }

      sub_10006FC54();
LABEL_19:
      v16 = v10;
      goto LABEL_20;
    }
  }

  return result;
}

double sub_100068068(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(a1);
  }

  return result;
}

void sub_1000680DC(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v9 + *(v3 + 176)))
  {
    return;
  }

  v10 = [a1 btAddressData];
  if (!v10)
  {
    return;
  }

  v42 = v6;
  v45 = v1;
  v11 = v10;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v46 = sub_100065790(v12, v14);
  sub_100008438(&qword_10011EA70, &unk_1000D8810);
  sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();

  v15 = String.lowercased()();

  if (!*(v9 + 152))
  {
    sub_100022640(v12, v14);

    return;
  }

  v43 = v12;
  v44 = v14;
  v16 = String.lowercased()();
  if (v15._countAndFlagsBits == v16._countAndFlagsBits && v15._object == v16._object)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_22:
      sub_100022640(v43, v44);
      return;
    }
  }

  v18 = [a1 name];
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || v20 == 0xD000000000000010 && 0x80000001000E0BF0 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (sub_100071C24() & 1) == 0)
  {

    goto LABEL_22;
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000A570(v24, qword_10011E7A0);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v41 = v26;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46 = v40;
    *v28 = 136315138;
    v29 = v25;
    v30 = [v29 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_100078978(v39, v32, &v46);

    *(v28 + 4) = v33;
    v34 = v41;
    _os_log_impl(&_mh_execute_header, v41, v27, "Friendly Name: Found Device with Details %s", v28, 0xCu);
    sub_10000EA94(v40);
  }

  else
  {
  }

  v35 = v44;
  v36 = v43;
  [*(v45 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery) setDiscoveryFlags:0];
  sub_10007C964(v9, v8, type metadata accessor for HeadphoneModel);
  v37 = &v8[*(v3 + 60)];

  *v37 = v20;
  v37[1] = v22;
  v38 = v42;
  sub_10007C964(v8, v42, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v38);
  sub_100022640(v36, v35);
  sub_10007C9CC(v8, type metadata accessor for HeadphoneModel);
}