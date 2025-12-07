void sub_10030CD1C(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6[4] = sub_100097224;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100004AE4;
    v6[3] = &unk_1006367A8;
    v5 = _Block_copy(v6);

    [v3 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_10030CE08(uint64_t a1)
{
  v1 = sub_100417D54();
  if (!v1 || (v2 = v1, v3 = [v1 text], v2, !v3))
  {
LABEL_7:

    sub_100417EA8();
    return;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = sub_100122BFC(v4, v6);

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_10030A7D0();
}

void sub_10030CF1C()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100142308(1, 0, 0);
    }
  }
}

id sub_10030D054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
  v12 = type metadata accessor for FMIPDevice();
  (*(*(v12 - 8) + 56))(&v7[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
  v14 = type metadata accessor for FMIPItem();
  (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
  v15 = &v7[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
  *v15 = 0;
  v15[4] = 1;
  v16 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v17 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = String._bridgeToObjectiveC()();

LABEL_6:
  v21.receiver = v7;
  v21.super_class = type metadata accessor for FMDevicePhoneNumberViewController(0);
  v19 = objc_msgSendSuper2(&v21, "initWithTitle:detailText:symbolName:contentLayout:", v16, v17, v18, a7);

  return v19;
}

id sub_10030D2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
  v11 = type metadata accessor for FMIPDevice();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
  v13 = type metadata accessor for FMIPItem();
  (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
  v14 = &v6[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
  *v14 = 0;
  v14[4] = 1;
  v15 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v6;
  v19.super_class = type metadata accessor for FMDevicePhoneNumberViewController(0);
  v17 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:icon:contentLayout:", v15, v16, a5, a6);

  return v17;
}

id sub_10030D50C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDevicePhoneNumberViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDevicePhoneNumberViewController(uint64_t a1)
{
  result = qword_1006BB460;
  if (!qword_1006BB460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030D5F8(uint64_t a1)
{
  sub_100096CC0(319, &qword_1006AFC78, &type metadata accessor for FMIPDevice);
  if (v1 <= 0x3F)
  {
    sub_100096CC0(319, &qword_1006BA400, &type metadata accessor for FMIPItem);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10030D700(uint64_t a1, void **a2, char *a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 56);
  v9 = *(v4 + 72);
  v10[0] = *(v4 + 40);
  v10[1] = v8;
  v11 = v9;
  sub_10030BBAC(a1, a2, a3, a4, v5, v6, v7, v10);
}

uint64_t sub_10030D744(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10030D760()
{
  result = qword_1006AF730;
  if (!qword_1006AF730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AF730);
  }

  return result;
}

void sub_10030D7C4(void *a1, uint64_t a2)
{
  if ([a1 value])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  sub_10017EE08(v21, &v19);
  if (*(&v20 + 1))
  {
    sub_10000905C(0, &qword_1006BB4D8, CNPhoneNumber_ptr);
    if (swift_dynamicCast())
    {
      v4 = [v17 stringValue];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000D2C0(&v19);
  }

  sub_10017EE08(v21, &v19);
  if (!*(&v20 + 1))
  {
    sub_10000D2C0(&v19);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_10000D2C0(v21);
    return;
  }

  v8 = 0;
  v5 = v17;
  v7 = v18;
LABEL_11:
  type metadata accessor for FMContactsUtilities();
  if (sub_100476878(v5, v7))
  {

    [objc_opt_self() showOfferToSelfErrorInViewController:a2 completion:0];
    goto LABEL_17;
  }

  v9 = [a1 contact];
  v10 = objc_allocWithZone(MFComposeRecipient);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithContact:v9 address:v11 kind:v8];

  v13 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  v14 = *(a2 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (v14)
  {
    [v14 addRecipient:v12];
    sub_10019415C();
    v15 = *(a2 + v13);
    if (v15)
    {
      [v15 clearText];
      *(a2 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

      sub_100195F20();

      sub_10000D2C0(v21);
      v16 = (a2 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText);
      *v16 = 0;
      v16[1] = 0;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10030DAE0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v28 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v11 + 8);
  v27(v13, v10);
  v18 = swift_allocObject();
  v19 = v29;
  *(v18 + 16) = a1;
  *(v18 + 24) = v19;
  aBlock[4] = sub_10030DE6C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100636820;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  v22 = v19;

  v23 = static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918(v23, v24, v25);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v32 + 8))(v6, v4);
  (*(v30 + 8))(v9, v31);
  return (v27)(v16, v28);
}

void sub_10030DEB8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subDetailText);
  *v5 = a1;
  v5[1] = a2;

  v6 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  v7 = *(v2 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel);
  if (a1 || a2 != 0xE000000000000000)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v8 = 1;
  }

  v9 = v7;

  [v9 setHidden:v8 & 1];

  v10 = *(v2 + v6);

  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];
}

id sub_10030DFDC()
{
  if (v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable])
  {
    v1 = 1;
  }

  else
  {
    v1 = v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled];
  }

  [v0 setUserInteractionEnabled:v1];
  v2 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  v3 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled;
  result = [*&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel] setUserInteractionEnabled:v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled]];
  *(*&v0[v2] + OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled) = v0[v3];
  return result;
}

id sub_10030E068(char a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_identifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView;
  *&v2[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v2[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  *&v2[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron;
  v11 = sub_1003DE824();
  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];

  *&v2[v10] = v12;
  v13 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator;
  *&v2[v13] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabelTrailingConstraint] = 0;
  v14 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subDetailText];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor;
  *&v2[v17] = [objc_opt_self() secondaryLabelColor];
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleIsSingleLine] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated] = 1;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_enabled] = 1;
  v18 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable] = 1;
  *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundOffset] = a2;
  v2[v18] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for FMSettingSingleRowView();
  v19 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10030E434();
  sub_10030E8AC(a2);
  [v19 setClipsToBounds:0];

  return v19;
}

uint64_t sub_10030E378()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title);

    v3._countAndFlagsBits = v2;
    v3._object = v1;
    String.append(_:)(v3);
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle);
    String.append(_:)(*(&v4 - 1));
    v6._countAndFlagsBits = 44;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  return 0;
}

id sub_10030E434()
{
  v1 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 setFont:v5];

  [*&v0[v1] setNumberOfLines:0];
  [*&v0[v1] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v1] setTextAlignment:4];
  v6 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];
  v8 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 setFont:v8];

  v9 = *&v0[v6];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 secondaryLabelColor];
  [v11 setTextColor:v12];

  v13 = qword_1006AEC30;
  v14 = *&v0[v6];
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setTextAlignment:2 * (qword_1006D47A0 != 1)];

  [*&v0[v6] setNumberOfLines:0];
  [*&v0[v6] setAdjustsFontForContentSizeCategory:1];
  v15 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  v16 = *&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel];
  v17 = [v3 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v16 setFont:v17];

  v18 = *&v0[v15];
  v19 = [v10 secondaryLabelColor];
  [v18 setTextColor:v19];

  [*&v0[v15] setTextAlignment:2 * (qword_1006D47A0 != 1)];
  [*&v0[v15] setNumberOfLines:0];
  LODWORD(v20) = 1144750080;
  [*&v0[v15] setContentCompressionResistancePriority:0 forAxis:v20];
  [*&v0[v15] setAdjustsFontForContentSizeCategory:1];
  v21 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron;
  [*&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron] setHidden:(v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible] & 1) == 0];
  [*&v0[v21] setContentMode:1];
  v22 = *&v0[v21];
  v23 = [v10 tertiaryLabelColor];
  [v22 setTintColor:v23];

  v24 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator;
  v25 = *&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator];
  v26 = [v10 labelColor];
  v27 = [v26 colorWithAlphaComponent:0.1];

  [v25 setBackgroundColor:v27];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView]];
  [v0 addSubview:*&v0[v1]];
  [v0 addSubview:*&v0[v6]];
  [v0 addSubview:*&v0[v15]];
  [v0 addSubview:*&v0[v21]];
  v28 = *&v0[v24];

  return [v0 addSubview:v28];
}

void sub_10030E8AC(double a1)
{
  v3 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v115 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v113 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v114 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v110 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron] setTranslatesAutoresizingMaskIntoConstraints:0];
  v111 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator;
  [*&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v112 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [*&v1[v3] topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [*&v1[v3] bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [*&v1[v3] leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-a1];

  *(v4 + 48) = v13;
  v14 = [*&v1[v3] trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:a1];

  *(v4 + 56) = v16;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:isa];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100552EF0;
  v19 = [*&v1[v115] leadingAnchor];
  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v18 + 32) = v21;
  v22 = [*&v1[v115] topAnchor];
  v23 = [v1 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:16.0];

  *(v18 + 40) = v24;
  v25 = [*&v1[v115] widthAnchor];
  v26 = [v25 constraintGreaterThanOrEqualToConstant:105.0];

  *(v18 + 48) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v27];

  v28 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabelTrailingConstraint;
  v29 = *&v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabelTrailingConstraint];
  if (v1[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible] == 1)
  {
    if (v29)
    {
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1005528C0;
      *(v30 + 32) = v29;
      v31 = v29;
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v112 deactivateConstraints:v32];
    }

    v33 = [*&v1[v113] trailingAnchor];
    v34 = [*&v1[v110] leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-1.0];

    v36 = *&v1[v28];
    *&v1[v28] = v35;
    v37 = v35;

    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100552EF0;
    v39 = [*&v1[v113] leadingAnchor];
    v40 = [*&v1[v115] trailingAnchor];
    v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40 constant:20.0];

    *(v38 + 32) = v41;
    *(v38 + 40) = v37;
    v42 = *&v1[v113];
    v109 = v37;
    v43 = [v42 topAnchor];
    v44 = [*&v1[v115] topAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v38 + 48) = v45;
    v46 = Array._bridgeToObjectiveC()().super.isa;

    [v112 activateConstraints:v46];

    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1005521F0;
    v48 = [*&v1[v110] trailingAnchor];
    v49 = [v1 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:-1.0];

    *(v47 + 32) = v50;
    v51 = [*&v1[v110] centerYAnchor];
    v52 = [v1 centerYAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v47 + 40) = v53;
    v54 = [*&v1[v110] widthAnchor];
    v55 = [v54 constraintEqualToConstant:18.0];

    *(v47 + 48) = v55;
    v56 = [*&v1[v110] heightAnchor];
    v57 = [v56 constraintEqualToConstant:18.0];

    *(v47 + 56) = v57;
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  }

  else
  {
    if (v29)
    {
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1005528C0;
      *(v59 + 32) = v29;
      v60 = v29;
      v61 = Array._bridgeToObjectiveC()().super.isa;

      [v112 deactivateConstraints:v61];
    }

    v62 = [*&v1[v113] trailingAnchor];
    v63 = [v1 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    v65 = *&v1[v28];
    *&v1[v28] = v64;
    v66 = v64;

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100552EF0;
    v68 = [*&v1[v113] leadingAnchor];
    v69 = [*&v1[v115] trailingAnchor];
    v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69 constant:20.0];

    *(v67 + 32) = v70;
    *(v67 + 40) = v66;
    v71 = *&v1[v113];
    v109 = v66;
    v72 = [v71 topAnchor];
    v73 = [*&v1[v115] topAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v67 + 48) = v74;
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  v75 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v75];

  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_100552EF0;
  v77 = [*&v1[v114] leadingAnchor];
  v78 = [*&v1[v113] leadingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v76 + 32) = v79;
  v80 = [*&v1[v114] trailingAnchor];
  v81 = [*&v1[v113] trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v76 + 40) = v82;
  v83 = [*&v1[v114] topAnchor];
  v84 = [*&v1[v113] p_ivar_lyt[430]];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v76 + 48) = v85;
  v86 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v86];

  v117 = &type metadata for SolariumFeatureFlag;
  v87 = sub_10000BD04();
  v118 = v87;
  LOBYTE(v86) = isFeatureEnabled(_:)();
  sub_100006060(v116);
  v88 = 0.0;
  if ((v86 & 1) == 0)
  {
    v117 = &type metadata for SolariumFeatureFlag;
    v118 = v87;
    v89 = isFeatureEnabled(_:)();
    sub_100006060(v116);
    v88 = 16.0;
    if ((v89 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v88 = *&qword_1006D4798;
    }
  }

  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100555280;
  v91 = [*&v1[v111] topAnchor];
  v92 = [*&v1[v115] p_ivar_lyt[430]];
  v93 = [v91 constraintGreaterThanOrEqualToAnchor:v92 constant:16.0];

  *(v90 + 32) = v93;
  v94 = [*&v1[v111] topAnchor];
  v95 = [*&v1[v114] p_ivar_lyt[430]];
  v96 = [v94 constraintGreaterThanOrEqualToAnchor:v95 constant:16.0];

  *(v90 + 40) = v96;
  v97 = [*&v1[v111] leadingAnchor];
  v98 = [v1 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v90 + 48) = v99;
  v100 = [*&v1[v111] trailingAnchor];
  v101 = [v1 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:v88];

  *(v90 + 56) = v102;
  v103 = [*&v1[v111] p_ivar_lyt[430]];
  v104 = [v1 p_ivar_lyt[430]];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v90 + 64) = v105;
  v106 = [*&v1[v111] heightAnchor];
  v107 = [v106 constraintEqualToConstant:1.0];

  *(v90 + 72) = v107;
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:v108];
}

void sub_10030F74C(uint64_t a1, uint64_t a2)
{
  sub_10000905C(0, &qword_1006B0C30, UITouch_ptr);
  sub_1000D5BCC();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMSettingSingleRowView();
  objc_msgSendSuper2(&v9, "touchesBegan:withEvent:", isa, a2);

  if (v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable] == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 secondarySystemFillColor];
    [v7 setBackgroundColor:v8];
  }
}

void sub_10030F904(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_10000905C(0, &qword_1006B0C30, UITouch_ptr);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v15.receiver = v9;
  v15.super_class = type metadata accessor for FMSettingSingleRowView();
  objc_msgSendSuper2(&v15, *a5, isa, v8);

  v11 = *&v9[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];
}

id sub_10030FA68(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMSettingSingleRowView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10030FBBC()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryDetailLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron;
  v7 = sub_1003DE824();
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  v9 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator;
  *(v0 + v9) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabelTrailingConstraint) = 0;
  v10 = (v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subDetailText);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor;
  *(v0 + v13) = [objc_opt_self() secondaryLabelColor];
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleIsSingleLine) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_enabled) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10030FE88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMScrollView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10030FF84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBlurredView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100310014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoLocationBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003100E4()
{
  v1 = v0 + OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle;
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v3 CGColor];
  *v1 = xmmword_10055D670;
  *(v1 + 16) = xmmword_10055D680;
  *(v1 + 32) = xmmword_10055CCB0;
  *(v1 + 48) = xmmword_1005526C0;
  __asm
  {
    FMOV            V0.2D, #20.0
    FMOV            V1.2D, #15.0
  }

  *(v1 + 64) = _Q0;
  *(v1 + 80) = _Q1;
  *(v1 + 96) = xmmword_10055CCC0;
  *(v1 + 112) = vdupq_n_s64(0x3FD999999999999AuLL);
  __asm { FMOV            V0.2D, #30.0 }

  *(v1 + 128) = _Q0;
  *(v1 + 144) = xmmword_10055CCD0;
  *(v1 + 160) = v4;
  *(v1 + 168) = 1;
  v12 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerCircle;
  *(v0 + v12) = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerPlaceholder;
  *(v0 + v13) = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerImage;
  *(v0 + v14) = [objc_allocWithZone(CALayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for FMDeviceCellViewModel(uint64_t a1)
{
  result = qword_1006BB6B8;
  if (!qword_1006BB6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003102F8(uint64_t a1)
{
  sub_10000AF8C();
  if (v1 <= 0x3F)
  {
    sub_1001D6088(319);
    if (v2 <= 0x3F)
    {
      sub_100310478(319);
      if (v3 <= 0x3F)
      {
        sub_10002C124(319, &qword_1006B1398, &qword_1006BC2B0, UIImage_ptr);
        if (v4 <= 0x3F)
        {
          sub_10002C124(319, &unk_1006B13A0, &qword_1006C0000, UIColor_ptr);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Date();
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

void sub_100310478(uint64_t a1)
{
  if (!qword_1006BB6C8)
  {
    sub_10007EC08(&qword_1006B41A0, &qword_100555E40);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006BB6C8);
    }
  }
}

uint64_t sub_1003104DC@<X0>(NSString *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v378 = a8;
  v391 = a7;
  v381 = a6;
  v382 = a4;
  v395 = a1;
  v392 = a9;
  v394 = type metadata accessor for FMIPDevice();
  v393 = *(v394 - 8);
  __chkstk_darwin(v394);
  v350 = &v349 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v353 = &v349 - v16;
  __chkstk_darwin(v17);
  v352 = &v349 - v18;
  v19 = sub_10007EBC0(&qword_1006B3B10, &unk_100558780);
  __chkstk_darwin(v19 - 8);
  v354 = &v349 - v20;
  v356 = type metadata accessor for FMIPPerson();
  v355 = *(v356 - 8);
  __chkstk_darwin(v356);
  v351 = &v349 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = type metadata accessor for FMIPFeatures();
  v389 = *(v390 - 8);
  __chkstk_darwin(v390);
  v388 = &v349 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v387 = &v349 - v24;
  v25 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v25 - 8);
  v367 = &v349 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v368 = &v349 - v28;
  v386 = type metadata accessor for Date();
  v385 = *(v386 - 8);
  __chkstk_darwin(v386);
  v360 = &v349 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v384 = &v349 - v31;
  v32 = type metadata accessor for FMIPDeviceStatus();
  v411 = *(v32 - 8);
  v412 = v32;
  __chkstk_darwin(v32);
  v409 = &v349 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v410 = &v349 - v35;
  v36 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v36 - 8);
  v366 = &v349 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v359 = &v349 - v39;
  __chkstk_darwin(v40);
  v369 = &v349 - v41;
  __chkstk_darwin(v42);
  object = &v349 - v43;
  __chkstk_darwin(v44);
  v357 = &v349 - v45;
  v46 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v46 - 8);
  v380 = &v349 - v47;
  v407 = type metadata accessor for FMIPItemState();
  v413 = *(v407 - 8);
  __chkstk_darwin(v407);
  v406 = &v349 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v405 = &v349 - v50;
  v363 = type metadata accessor for FMIPBatteryStatus();
  v377 = *(v363 - 1);
  __chkstk_darwin(v363);
  v373 = &v349 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  countAndFlagsBits = &v349 - v53;
  v404 = type metadata accessor for FMIPItemBatteryStatus();
  v365 = *(v404 - 8);
  __chkstk_darwin(v404);
  v362 = &v349 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v55 - 8);
  v364 = &v349 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v375 = &v349 - v58;
  __chkstk_darwin(v59);
  v408 = &v349 - v60;
  __chkstk_darwin(v61);
  v358 = &v349 - v62;
  __chkstk_darwin(v63);
  v374 = (&v349 - v64);
  __chkstk_darwin(v65);
  v370 = &v349 - v66;
  __chkstk_darwin(v67);
  v379 = &v349 - v68;
  __chkstk_darwin(v69);
  v71 = &v349 - v70;
  v72 = type metadata accessor for FMIPItem();
  v418 = *(v72 - 8);
  v73 = v418;
  __chkstk_darwin(v72);
  v376 = &v349 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  v361 = &v349 - v76;
  v77 = type metadata accessor for FMIPDeviceState();
  v78 = *(v77 - 1);
  __chkstk_darwin(v77);
  v80 = &v349 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v83 = (&v349 - v82);
  v402 = type metadata accessor for FMDeviceCellViewModel(0);
  __chkstk_darwin(v402);
  v401 = &v349 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v414 = a5;
  sub_1004A43A0(a2, a5, 0);
  v383 = v85;
  v86 = v73 + 48;
  v87 = *(v73 + 48);
  LODWORD(v421) = v87(a3, 1, v72);
  v420 = a2;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isThisDevice.getter();
  v396 = sub_100316F8C(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v403 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v88 = *(v78 + 8);
  v399 = v80;
  (v88)(v80, v77);
  v398 = v83;
  v400 = v77;
  v397 = v88;
  (v88)(v83, v77);
  v419 = a3;
  sub_100007204(a3, v71, &qword_1006B07D0, qword_100552820);
  v416 = v87;
  v417 = v86;
  v89 = v87(v71, 1, v72);
  v90 = v418;
  v415 = v72;
  if (v89 == 1)
  {
    sub_100012DF0(v71, &qword_1006B07D0, qword_100552820);
LABEL_4:
    v96 = 0;
    goto LABEL_5;
  }

  v91 = v361;
  (*(v418 + 32))(v361, v71, v72);
  v92 = v362;
  FMIPItem.batteryStatus.getter();
  (*(v90 + 8))(v91, v72);
  v93 = v365;
  v94 = v404;
  v95 = (*(v365 + 88))(v92, v404);
  if (v95 == enum case for FMIPItemBatteryStatus.unknown(_:))
  {
    goto LABEL_4;
  }

  if (v95 == enum case for FMIPItemBatteryStatus.highPower(_:))
  {
    v96 = 2;
  }

  else if (v95 == enum case for FMIPItemBatteryStatus.fresh(_:))
  {
    v96 = 1;
  }

  else if (v95 == enum case for FMIPItemBatteryStatus.earlyLife(_:))
  {
    v96 = 3;
  }

  else if (v95 == enum case for FMIPItemBatteryStatus.lateLife(_:))
  {
    v96 = 4;
  }

  else if (v95 == enum case for FMIPItemBatteryStatus.replace(_:))
  {
    v96 = 5;
  }

  else
  {
    if (v95 != enum case for FMIPItemBatteryStatus.dead(_:))
    {
      (*(v93 + 8))(v92, v94);
      goto LABEL_4;
    }

    v96 = 6;
  }

LABEL_5:
  if (v421 != 1)
  {
    if (v96 == 5)
    {
    }

    else
    {
      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v116 & 1) == 0)
      {
        if (v96 <= 2)
        {
          v117 = v419;
        }

        else
        {
          if (v96 > 4)
          {
            v118 = v419;

            v110 = v118;
            v106 = 0;
            LODWORD(v404) = 0;
            LODWORD(v377) = 1;
            v102 = 1;
            goto LABEL_39;
          }

          v117 = v419;
        }

        v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v106 = 0;
        LODWORD(v404) = 0;
        LODWORD(v377) = v119;
        v102 = v119;
        v110 = v117;
        goto LABEL_39;
      }
    }

    v106 = 0;
    LODWORD(v404) = 0;
    LODWORD(v377) = 1;
    v102 = 1;
LABEL_30:
    v110 = v419;
LABEL_39:
    v111 = v379;
    goto LABEL_40;
  }

  FMIPDevice.batteryLevel.getter();
  v98 = v97;
  if (FMIPDevice.category.getter() == 0x6863746157 && v99 == 0xE500000000000000)
  {

    v100 = 0.1;
  }

  else
  {
    v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v101)
    {
      v100 = 0.1;
    }

    else
    {
      v100 = 0.2;
    }
  }

  v102 = v98 < v100;
  v103 = v398;
  FMIPDevice.state.getter();
  v104 = v399;
  static FMIPDeviceState.isLowPowerModeEnabled.getter();
  v105 = v400;
  v106 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v107 = v397;
  (v397)(v104, v105);
  (v107)(v103, v105);
  FMIPDevice.batteryStatus.getter();
  v108 = v363;
  (*(v377 + 104))(v373, enum case for FMIPBatteryStatus.charging(_:), v363);
  sub_100316F8C(&unk_1006C1DB0, &type metadata accessor for FMIPBatteryStatus, &protocol conformance descriptor for FMIPBatteryStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v422 == v426)
  {
    LODWORD(v404) = 1;
  }

  else
  {
    LODWORD(v404) = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v109 = *(v377 + 8);
  v109(v373, v108);
  v109(countAndFlagsBits, v108);

  if (!((v98 < v100) | v106 & 1))
  {
    LODWORD(v377) = 0;
    v106 = 0;
    v102 = 0;
    goto LABEL_30;
  }

  v110 = v419;
  v111 = v379;
  if (v404)
  {
    LODWORD(v377) = 0;
    v112 = 1;
    v113 = &v427;
  }

  else
  {
    v114 = v419;
    FMIPDevice.batteryLevel.getter();
    v110 = v114;
    LODWORD(v404) = 0;
    v112 = v115 != 0.0;
    v113 = &v409;
  }

  *(v113 - 64) = v112;
LABEL_40:
  sub_100007204(v110, v111, &qword_1006B07D0, qword_100552820);
  v120 = v415;
  if (v416(v111, 1, v415) == 1)
  {
    sub_100012DF0(v111, &qword_1006B07D0, qword_100552820);
    v121 = 0;
  }

  else
  {
    v122 = v405;
    FMIPItem.state.getter();
    (*(v418 + 8))(v111, v120);
    v123 = v406;
    static FMIPItemState.isBTConnected.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
    v124 = v407;
    v121 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v125 = *(v413 + 8);
    v125(v123, v124);
    v125(v122, v124);
  }

  v126 = v380;
  FMIPDevice.itemGroup.getter();
  v127 = type metadata accessor for FMIPItemGroup();
  v128 = *(v127 - 8);
  v129 = (*(v128 + 48))(v126, 1, v127);
  LODWORD(v365) = v96;
  if (v129 == 1)
  {
    sub_100012DF0(v126, &unk_1006BB1C0, &unk_1005534F0);
    v130 = 0;
  }

  else
  {
    v131 = v405;
    FMIPItemGroup.state.getter();
    (*(v128 + 8))(v126, v127);
    v132 = v406;
    static FMIPItemState.isBTConnected.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
    v133 = v407;
    v130 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v134 = *(v413 + 8);
    v134(v132, v133);
    v134(v131, v133);
  }

  v135 = v419;
  LODWORD(v380) = v106;
  v136 = v398;
  v137 = v420;
  FMIPDevice.state.getter();
  v138 = v399;
  static FMIPDeviceState.isDeviceWithYou.getter();
  v139 = v400;
  v140 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v141 = v138;
  v142 = v397;
  (v397)(v141, v139);
  (v142)(v136, v139);
  LODWORD(v379) = v102;
  LODWORD(v373) = v140;
  if (v421 == 1)
  {
    v148 = v403 | v130 | v140;
    v149 = object;
    FMIPDevice.bestLocation.getter();
    v150 = type metadata accessor for FMIPLocation();
    v151 = *(v150 - 8);
    v152 = (*(v151 + 48))(v149, 1, v150);
    v145 = v415;
    v147 = v418;
    if (v152 == 1)
    {
      sub_100012DF0(v149, &unk_1006C0220, qword_100553770);
      v143 = v419;
      v153 = v402;
      v154 = v401;
      if (v148)
      {
LABEL_71:

        v155 = 1.79769313e308;
        goto LABEL_72;
      }

LABEL_51:
      countAndFlagsBits = 0;
      object = 0;
      v155 = 1.79769313e308;
LABEL_73:
      v179 = v374;
      goto LABEL_74;
    }

    v159 = FMIPLocation.location.getter();
    (*(v151 + 8))(v149, v150);
    v153 = v402;
    v154 = v401;
    if (!v414)
    {

      v143 = v419;
      if (v148)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    }

    v160 = qword_1006AEC58;
    v161 = v414;
    v143 = v419;
    if (v160 != -1)
    {
      swift_once();
    }

    v162 = [qword_1006D48A8 localizedDistanceFromLocation:v159 toLocation:v161];
    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v165 = v164;

    if (v148)
    {

LABEL_64:
      v155 = 0.01;
      v147 = v418;
      v137 = v420;
LABEL_72:
      v175 = [objc_opt_self() mainBundle];
      v176._countAndFlagsBits = 0xD00000000000001DLL;
      v428._object = 0x8000000100590BA0;
      v176._object = 0x8000000100590B80;
      v428._countAndFlagsBits = 0xD00000000000002FLL;
      v177._countAndFlagsBits = 0;
      v177._object = 0xE000000000000000;
      v178 = NSLocalizedString(_:tableName:bundle:value:comment:)(v176, 0, v175, v177, v428);
      countAndFlagsBits = v178._countAndFlagsBits;
      object = v178._object;

      goto LABEL_73;
    }

    object = v165;
    countAndFlagsBits = v163;
    [v159 distanceFromLocation:v161];
    v174 = v173;
  }

  else
  {
    v143 = v135;
    v144 = v370;
    sub_100007204(v135, v370, &qword_1006B07D0, qword_100552820);
    v145 = v415;
    v146 = v416(v144, 1, v415);
    v147 = v418;
    if (v146 == 1)
    {
      sub_100012DF0(v144, &qword_1006B07D0, qword_100552820);
      goto LABEL_70;
    }

    v156 = v357;
    FMIPItem.location.getter();
    (*(v147 + 8))(v144, v145);
    v157 = type metadata accessor for FMIPLocation();
    v158 = *(v157 - 8);
    if ((*(v158 + 48))(v156, 1, v157) == 1)
    {
      sub_100012DF0(v156, &unk_1006C0220, qword_100553770);
LABEL_69:
      v143 = v419;
LABEL_70:
      v153 = v402;
      v154 = v401;
      if (v121)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    }

    v166 = FMIPLocation.location.getter();
    (*(v158 + 8))(v156, v157);
    if (!v414)
    {

      goto LABEL_69;
    }

    v167 = qword_1006AEC58;
    v168 = v414;
    v143 = v419;
    if (v167 != -1)
    {
      swift_once();
    }

    v169 = [qword_1006D48A8 localizedDistanceFromLocation:v166 toLocation:v168];
    v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v172 = v171;

    v153 = v402;
    v154 = v401;
    if (v121)
    {

      goto LABEL_64;
    }

    object = v172;
    countAndFlagsBits = v170;
    [v166 distanceFromLocation:v168];
    v174 = v348;
  }

  v155 = round(v174 / 10.0);
  v147 = v418;
  v179 = v374;
  v137 = v420;
LABEL_74:
  LODWORD(v370) = a11;
  v180 = sub_100314228(v137, v143);
  v182 = v181;
  v183 = sub_10031589C(v137);
  v400 = v184;
  v399 = v182;
  v185 = v143;
  if (v421 == 1)
  {
    v186 = v184;
  }

  else
  {
    v186 = v182;
  }

  v398 = v183;
  v397 = v180;
  if (v421 == 1)
  {
    v180 = v183;
  }

  v187 = v185;
  sub_100007204(v185, v179, &qword_1006B07D0, qword_100552820);
  v188 = v416(v179, 1, v145);
  v396 = v186;
  v189 = v186;
  v374 = v180;
  v190 = v180;
  if (v188 == 1)
  {
    sub_100012DF0(v179, &qword_1006B07D0, qword_100552820);
    v191 = 0;
    v192 = v187;
  }

  else
  {
    v193 = v405;
    FMIPItem.state.getter();
    v363 = *(v147 + 8);
    (v363)(v179, v145);
    v194 = v406;
    static FMIPItemState.isLocating.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
    v195 = v407;
    v196 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v197 = v145;
    v198 = v413 + 8;
    v199 = *(v413 + 8);
    v199(v194, v195);
    v413 = v198;
    v199(v193, v195);
    if (v196)
    {
      v192 = v187;
      v200 = v358;
      sub_100007204(v187, v358, &qword_1006B07D0, qword_100552820);
      v201 = v416(v200, 1, v197);
      v153 = v402;
      if (v201 == 1)
      {
        sub_100012DF0(v200, &qword_1006B07D0, qword_100552820);
        v191 = 0;
      }

      else
      {
        v202 = v405;
        FMIPItem.state.getter();
        (v363)(v200, v197);
        v203 = v406;
        static FMIPItemState.isBTConnected.getter();
        v204 = v407;
        v205 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v206 = v203;
        v192 = v187;
        v199(v206, v204);
        v199(v202, v204);
        v191 = v205 ^ 1;
      }

      v145 = v197;
      v147 = v418;
      v154 = v401;
    }

    else
    {
      v191 = 0;
      v145 = v197;
      v147 = v418;
      v153 = v402;
      v154 = v401;
      v192 = v187;
    }

    v137 = v420;
  }

  v207 = FMIPDevice.isLocating.getter();
  if (v421 == 1)
  {
    v208 = v207;
  }

  else
  {
    v208 = v191;
  }

  LODWORD(v406) = v208;
  v209 = v408;
  (*(v147 + 56))(v408, 1, 1, v145);
  sub_100260334(v137, v209, v414 != 0, 1, v378 & 1, v370 & 1, 0, 0, &v422, 0);
  v210 = v422;
  v212 = v423;
  v211 = v424;

  if (*(&v210 + 1))
  {
    v213 = [objc_opt_self() mainBundle];
    v429._object = 0x800000010057DBA0;
    v214._object = 0x800000010057DB70;
    v429._countAndFlagsBits = 0xD000000000000039;
    v214._countAndFlagsBits = 0xD000000000000027;
    v215._countAndFlagsBits = 0;
    v215._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v214, 0, v213, v215, v429);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v216 = swift_allocObject();
    *(v216 + 16) = xmmword_100552210;
    *(v216 + 56) = &type metadata for String;
    v217 = sub_10008EE84();
    *(v216 + 32) = v210;
    *(v216 + 96) = &type metadata for String;
    *(v216 + 104) = v217;
    v192 = v419;
    *(v216 + 64) = v217;
    *(v216 + 72) = v212;
    *(v216 + 80) = v211;
    v407 = String.init(format:_:)();
    v413 = v218;
    v145 = v415;
  }

  else
  {
    v407 = v212;
    v413 = v211;
  }

  v219 = v376;
  sub_100012DF0(v408, &qword_1006B07D0, qword_100552820);
  v220 = v375;
  sub_100007204(v192, v375, &qword_1006B07D0, qword_100552820);
  v221 = v416(v220, 1, v145);
  v222 = v420;
  v223 = v418;
  if (v221 == 1)
  {
    sub_100012DF0(v220, &qword_1006B07D0, qword_100552820);
LABEL_100:
    v236 = v373;
    goto LABEL_103;
  }

  (*(v418 + 32))(v219, v220, v145);
  if (v421 == 1)
  {
    (*(v223 + 8))(v219, v145);
    goto LABEL_100;
  }

  v224 = sub_10034C388(v219, _swiftEmptyArrayStorage, 1, 0, v395);
  v227 = v226;
  v413 = v228;
  if (v225)
  {
    v229 = v225;
    v408 = v224;
    v230 = [objc_opt_self() mainBundle];
    v430._object = 0x800000010057DBA0;
    v231._object = 0x800000010057DB70;
    v430._countAndFlagsBits = 0xD000000000000039;
    v231._countAndFlagsBits = 0xD000000000000027;
    v232._countAndFlagsBits = 0;
    v232._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v231, 0, v230, v232, v430);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v233 = swift_allocObject();
    *(v233 + 16) = xmmword_100552210;
    *(v233 + 56) = &type metadata for String;
    v234 = sub_10008EE84();
    *(v233 + 32) = v408;
    *(v233 + 40) = v229;
    *(v233 + 96) = &type metadata for String;
    *(v233 + 104) = v234;
    *(v233 + 64) = v234;
    *(v233 + 72) = v227;
    *(v233 + 80) = v413;
    v192 = v419;
    v222 = v420;
    v145 = v415;
    v407 = String.init(format:_:)();
    v413 = v235;
  }

  else
  {
    v407 = v226;
  }

  v236 = v373;
  (*(v223 + 8))(v219, v145);
LABEL_103:
  v237 = countAndFlagsBits;
  v238 = object;
  if ((v381 & 1) == 0)
  {

    v237 = 0;
    v238 = 0xE000000000000000;
  }

  v239 = v403 | v236;
  *v154 = v237;
  v154[1] = v238;
  v154[2] = FMIPDevice.identifier.getter();
  v154[3] = v240;
  sub_100007204(v192, v154 + v153[6], &qword_1006B07D0, qword_100552820);
  *(v154 + v153[7]) = a10;
  *(v154 + v153[8]) = v382;
  *(v154 + v153[11]) = 0x4040800000000000;
  *(v154 + v153[12]) = 1;

  FMIPDevice.status.getter();
  (*(v411 + 104))(v409, enum case for FMIPDeviceStatus.online(_:), v412);
  sub_100316F8C(&unk_1006C1D40, &type metadata accessor for FMIPDeviceStatus, &protocol conformance descriptor for FMIPDeviceStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v422 == v426)
  {
    v241 = v412;
    v242 = *(v411 + 8);
    v242(v409, v412);
    v242(v410, v241);
  }

  else
  {
    v243 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v244 = v412;
    v245 = *(v411 + 8);
    v245(v409, v412);
    v245(v410, v244);
    v222 = v420;

    v246 = 0;
    if ((v243 & 1) == 0)
    {
      goto LABEL_109;
    }
  }

  v247 = v369;
  FMIPDevice.location.getter();
  v248 = type metadata accessor for FMIPLocation();
  v246 = (*(*(v248 - 8) + 48))(v247, 1, v248) != 1;
  sub_100012DF0(v247, &unk_1006C0220, qword_100553770);
LABEL_109:
  v249 = v421;
  *(v154 + v153[13]) = v246;
  v250 = 0.0;
  if ((v239 & 1) == 0)
  {
    v250 = v155;
  }

  *(v154 + v153[14]) = v250;
  v251 = v419;
  *(v154 + v153[15]) = sub_1003168DC(v222, v419);
  v252 = (v154 + v153[16]);
  v253 = v413;
  *v252 = v407;
  v252[1] = v253;
  v254 = sub_1002642B0(v222, v251, a10, v249 != 1);
  v256 = v255;

  v257 = (v154 + v153[17]);
  *v257 = v254;
  v257[1] = v256;
  if (v249 == 1)
  {
    v266 = v366;
    FMIPDevice.bestLocation.getter();
    v267 = type metadata accessor for FMIPLocation();
    v268 = *(v267 - 8);
    v269 = (*(v268 + 48))(v266, 1, v267);
    v261 = v385;
    v262 = v384;
    if (v269 == 1)
    {
      sub_100012DF0(v266, &unk_1006C0220, qword_100553770);
      v270 = *(v261 + 56);
      v271 = &v399;
      goto LABEL_119;
    }

    v277 = FMIPLocation.location.getter();
    (*(v268 + 8))(v266, v267);
    v278 = [v277 timestamp];

    v279 = v360;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v280 = *(v261 + 32);
    v281 = &v399;
    goto LABEL_123;
  }

  v258 = v364;
  sub_100007204(v251, v364, &qword_1006B07D0, qword_100552820);
  v259 = v415;
  v260 = v416(v258, 1, v415);
  v261 = v385;
  v262 = v384;
  if (v260 != 1)
  {
    v272 = v359;
    FMIPItem.location.getter();
    (*(v418 + 8))(v258, v259);
    v273 = type metadata accessor for FMIPLocation();
    v274 = *(v273 - 8);
    if ((*(v274 + 48))(v272, 1, v273) == 1)
    {
      v263 = &unk_1006C0220;
      v264 = qword_100553770;
      v265 = v272;
      goto LABEL_118;
    }

    v282 = FMIPLocation.location.getter();
    (*(v274 + 8))(v272, v273);
    v283 = [v282 timestamp];

    v279 = v360;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v280 = *(v261 + 32);
    v281 = &v400;
LABEL_123:
    v284 = *(v281 - 32);
    v285 = v279;
    v276 = v386;
    v280(v284, v285, v386);
    (*(v261 + 56))(v284, 0, 1, v276);
    v280(v262, v284, v276);
    goto LABEL_124;
  }

  v263 = &qword_1006B07D0;
  v264 = qword_100552820;
  v265 = v258;
LABEL_118:
  sub_100012DF0(v265, v263, v264);
  v270 = *(v261 + 56);
  v271 = &v400;
LABEL_119:
  v275 = *(v271 - 32);
  v276 = v386;
  v270(v275, 1, 1, v386);
  static Date.distantFuture.getter();
  if ((*(v261 + 48))(v275, 1, v276) != 1)
  {
    sub_100012DF0(v275, &unk_1006B0000, &unk_100552AA0);
  }

LABEL_124:
  (*(v261 + 32))(v154 + v153[18], v262, v276);
  *(v154 + v153[9]) = v374;
  *(v154 + v153[10]) = v396;
  v286 = v383;
  *(v154 + v153[19]) = (v383 & 0x200) != 0;
  *(v154 + v153[20]) = (v286 & 0x100000) != 0;
  v287 = v387;
  FMIPDevice.features.getter();
  v288 = v388;
  static FMIPFeatures.isWipeEnabled.getter();
  sub_100316F8C(&qword_1006C1D50, &type metadata accessor for FMIPFeatures, &protocol conformance descriptor for FMIPFeatures);
  v289 = v390;
  v290 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v291 = *(v389 + 8);
  v291(v288, v289);
  v291(v287, v289);
  *(v154 + v153[21]) = v290 & 1;
  if (v421 == 1)
  {
    FMIPDevice.batteryLevel.getter();
  }

  else
  {
    v292 = dbl_10055D7A8[v365];
  }

  v293 = v380;
  v294 = v379;
  v295 = v393;
  *(v154 + v153[26]) = v292;
  *(v154 + v153[28]) = v293 & 1;
  if (v294)
  {
    v296 = 6;
  }

  else
  {
    v296 = 0;
  }

  *(v154 + v153[27]) = v296;
  *(v154 + v153[29]) = v377 & 1;
  *(v154 + v153[30]) = v404 & 1;
  *(v154 + v153[22]) = v406 & 1;
  *(v154 + v153[23]) = 0;
  *(v154 + v153[24]) = FMIPDevice.deviceIsPendingRemoval.getter() & 1;
  v297 = FMIPDevice.ownerIdentifier.getter();
  v299 = v298;
  if (v297 == FMIPDefaultOwnerIdentifier.getter() && v299 == v300)
  {

LABEL_134:

    v302 = FMIPDefaultOwnerIdentifier.getter();
    v304 = v303;

    v305 = (v154 + v153[25]);
    *v305 = v302;
    v305[1] = v304;
LABEL_135:
    v306 = v394;
    goto LABEL_136;
  }

  v301 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v301)
  {
    goto LABEL_134;
  }

  v308 = [objc_opt_self() mainBundle];
  v431._object = 0x8000000100590B30;
  v309._countAndFlagsBits = 0xD000000000000030;
  v309._object = 0x8000000100590AF0;
  v431._countAndFlagsBits = 0xD000000000000042;
  v310._countAndFlagsBits = 0;
  v310._object = 0xE000000000000000;
  v311 = NSLocalizedString(_:tableName:bundle:value:comment:)(v309, 0, v308, v310, v431);

  v313 = (v154 + v153[25]);
  *v313 = v311;
  v314 = v391;
  if (!v391)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v337 = type metadata accessor for Logger();
    sub_100005B14(v337, qword_1006D4630);
    v338 = Logger.logObject.getter();
    v339 = static os_log_type_t.fault.getter();
    v340 = os_log_type_enabled(v338, v339);
    v251 = v419;
    if (v340)
    {
      v341 = swift_slowAlloc();
      *v341 = 0;
      _os_log_impl(&_mh_execute_header, v338, v339, "FMDeviceCellViewModel: familyMembers cannot be nil", v341, 2u);
    }

    goto LABEL_135;
  }

  __chkstk_darwin(v312);
  v315 = v354;
  sub_1001108D8(sub_100316F6C, v314, v354);
  v316 = v315;

  v317 = v355;
  v318 = v356;
  if ((*(v355 + 48))(v315, 1, v356) == 1)
  {
    sub_100012DF0(v315, &qword_1006B3B10, &unk_100558780);
    v306 = v394;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v319 = type metadata accessor for Logger();
    sub_100005B14(v319, qword_1006D4630);
    v320 = *(v295 + 16);
    v321 = v352;
    v320(v352, v222, v306);
    v322 = v353;
    v320(v353, v222, v306);
    v323 = Logger.logObject.getter();
    v324 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v323, v324))
    {
      v325 = swift_slowAlloc();
      v421 = swift_slowAlloc();
      *&v422 = v421;
      *v325 = 136446466;
      LODWORD(v418) = v324;
      v326 = FMIPDevice.ownerIdentifier.getter();
      v327 = v321;
      v328 = v322;
      v330 = v329;
      v331 = *(v295 + 8);
      v331(v327, v394);
      v332 = sub_100005B4C(v326, v330, &v422);

      *(v325 + 4) = v332;
      *(v325 + 12) = 2082;
      v320(v350, v328, v394);
      v333 = String.init<A>(describing:)();
      v335 = v334;
      v331(v328, v394);
      v295 = v393;
      v222 = v420;
      v336 = sub_100005B4C(v333, v335, &v422);

      *(v325 + 14) = v336;
      _os_log_impl(&_mh_execute_header, v323, v418, "FMDeviceCellViewModel: Failed to look up owner using identifier %{public}s, for device %{public}s", v325, 0x16u);
      swift_arrayDestroy();

      v306 = v394;
    }

    else
    {

      v347 = *(v295 + 8);
      v347(v322, v306);
      v347(v321, v306);
    }
  }

  else
  {
    v342 = v351;
    (*(v317 + 32))(v351, v316, v318);
    v343 = v317;
    v344 = FMIPPerson.firstName.getter();
    v346 = v345;

    (*(v343 + 8))(v342, v318);

    v313->_countAndFlagsBits = v344;
    v313->_object = v346;
    v306 = v394;
  }

  v251 = v419;
LABEL_136:
  sub_100316EAC(v154, v392);
  sub_100012DF0(v251, &qword_1006B07D0, qword_100552820);
  (*(v295 + 8))(v222, v306);
  return sub_100316F10(v154);
}

uint64_t sub_100313614(uint64_t a1)
{
  v1 = FMIPPerson.identifier.getter();
  v3 = v2;
  if (v1 == FMIPDevice.ownerIdentifier.getter() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void sub_1003136B0(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v12 = type metadata accessor for FMDeviceCellViewModel(0);
  sub_100007204(v1 + *(v12 + 24), v11, &qword_1006B07D0, qword_100552820);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    Hasher._combine(_:)(1u);
    sub_100316F8C(&qword_1006B6918, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v8, v2);
  }

  v31 = v12;
  v32 = v1;
  v13 = *(v1 + *(v12 + 28));
  if (v13)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v13 + 16));
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v3 + 16);
      v16 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v17 = *(v3 + 72);
      v18 = (v3 + 8);
      do
      {
        v15(v5, v16, v2);
        sub_100316F8C(&qword_1006B6918, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
        dispatch thunk of Hashable.hash(into:)();
        (*v18)(v5, v2);
        v16 += v17;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v20 = v31;
  v19 = v32;
  v21 = *(v32 + v31[8]);
  if (v21)
  {
    Hasher._combine(_:)(1u);
    v22 = v21;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v23 = *(v19 + v20[9]);
  if (v23)
  {
    Hasher._combine(_:)(1u);
    v24 = v23;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v25 = *(v19 + v20[10]);
  if (v25)
  {
    Hasher._combine(_:)(1u);
    v26 = v25;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v27 = *(v19 + v20[11]);
  if (v27 == 0.0)
  {
    v27 = 0.0;
  }

  Hasher._combine(_:)(*&v27);
  Hasher._combine(_:)(*(v19 + v20[12]));
  Hasher._combine(_:)(*(v19 + v20[13]));
  v28 = *(v19 + v20[14]);
  if (v28 == 0.0)
  {
    v28 = 0.0;
  }

  Hasher._combine(_:)(*&v28);
  v29 = *(v19 + v20[15]);
  if (v29 == 0.0)
  {
    v29 = 0.0;
  }

  Hasher._combine(_:)(*&v29);
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_100316F8C(&qword_1006B1480, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v19 + v20[19]));
  Hasher._combine(_:)(*(v19 + v20[20]));
  Hasher._combine(_:)(*(v19 + v20[21]));
  Hasher._combine(_:)(*(v19 + v20[22]));
  Hasher._combine(_:)(*(v19 + v20[23]));
  Hasher._combine(_:)(*(v19 + v20[24]));
  String.hash(into:)();
  v30 = *(v19 + v20[26]);
  if (v30 == 0.0)
  {
    v30 = 0.0;
  }

  Hasher._combine(_:)(*&v30);
  String.hash(into:)();

  Hasher._combine(_:)(*(v19 + v20[28]));
  Hasher._combine(_:)(*(v19 + v20[29]));
  Hasher._combine(_:)(*(v19 + v20[30]));
}

void *sub_100313D34(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = v2;
  return v2;
}

void *sub_100313D60(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  v3 = v2;
  return v2;
}

uint64_t sub_100313D8C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_100313DC4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

uint64_t sub_100313E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_100313EAC()
{
  Hasher.init(_seed:)();
  sub_1003136B0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100313EF0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1003136B0(v2);
  return Hasher._finalize()();
}

uint64_t sub_100313F78(uint64_t a1)
{
  result = sub_100316F8C(&qword_1006BB790, type metadata accessor for FMDeviceCellViewModel, &unk_10055D718);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100313FD0(uint64_t a1)
{
  result = sub_100316F8C(&qword_1006BB798, type metadata accessor for FMDeviceCellViewModel, &unk_10055D768);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100314028(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FMDeviceCellViewModel(0);
  v6 = v5[8];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
    v9 = v8;
    v10 = v7;
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = v5[17];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = v5[16];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v22 = a1[1];
  v23 = a2[1];
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v23 || (*a1 != *a2 || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  if (*(a1 + v5[13]) != *(a2 + v5[13]) || *(a1 + v5[14]) != *(a2 + v5[14]) || *(a1 + v5[15]) != *(a2 + v5[15]) || *(a1 + v5[24]) != *(a2 + v5[24]))
  {
    return 0;
  }

  v25 = v5[25];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if (v26 == *v28 && v27 == v28[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

UIImage *sub_100314228(uint64_t a1, uint64_t a2)
{
  v169 = a1;
  v167 = type metadata accessor for FMIPItemState();
  v164 = *(v167 - 8);
  __chkstk_darwin(v167);
  v166 = &v139[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v165 = &v139[-v5];
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v161 = &v139[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v147 = &v139[-v10];
  v11 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v11 - 8);
  v159 = &v139[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v158 = &v139[-v14];
  v15 = type metadata accessor for FMIPItemGroup();
  v162 = *(v15 - 8);
  v163 = v15;
  __chkstk_darwin(v15);
  v148 = &v139[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v155 = &v139[-v18];
  v19 = sub_10007EBC0(&unk_1006C2470, &unk_1005642F0);
  __chkstk_darwin(v19 - 8);
  v142 = &v139[-v20];
  v21 = type metadata accessor for FMIPPartType();
  v171 = *(v21 - 8);
  __chkstk_darwin(v21);
  v144 = &v139[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = sub_10007EBC0(&qword_1006B41F0, &qword_100555E80);
  __chkstk_darwin(v170);
  v154 = &v139[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v139[-v25];
  v27 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v27 - 8);
  v160 = &v139[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v146 = &v139[-v30];
  __chkstk_darwin(v31);
  v149 = &v139[-v32];
  __chkstk_darwin(v33);
  v153 = &v139[-v34];
  __chkstk_darwin(v35);
  v37 = &v139[-v36];
  v38 = sub_10007EBC0(&unk_1006B41F8, &qword_100555E88);
  __chkstk_darwin(v38 - 8);
  v143 = &v139[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v156 = &v139[-v41];
  __chkstk_darwin(v42);
  v157 = &v139[-v43];
  __chkstk_darwin(v44);
  v145 = &v139[-v45];
  __chkstk_darwin(v46);
  v48 = &v139[-v47];
  __chkstk_darwin(v49);
  v51 = &v139[-v50];
  v168 = [objc_opt_self() configurationWithPointSize:9.0];
  v176 = a2;
  sub_100007204(a2, v37, &qword_1006B07D0, qword_100552820);
  v173 = *(v7 + 48);
  v174 = v7 + 48;
  v52 = v173(v37, 1, v6);
  v175 = v6;
  v172 = v7;
  if (v52 == 1)
  {
    sub_100012DF0(v37, &qword_1006B07D0, qword_100552820);
    v53 = 1;
  }

  else
  {
    FMIPItem.partType.getter();
    (*(v7 + 8))(v37, v6);
    v53 = 0;
  }

  v54 = v51;
  v55 = v171;
  isa = v171[7].super.isa;
  isa(v54, v53, 1, v21);
  v57 = v55[13].super.isa;
  v151 = v55 + 13;
  v150 = v57;
  v57(v48, enum case for FMIPPartType.rightBud(_:), v21);
  isa(v48, 0, 1, v21);
  v58 = *(v170 + 48);
  sub_100007204(v54, v26, &unk_1006B41F8, &qword_100555E88);
  sub_100007204(v48, &v26[v58], &unk_1006B41F8, &qword_100555E88);
  v59 = v55[6].super.isa;
  v60 = v59(v26, 1, v21);
  v152 = v59;
  if (v60 == 1)
  {
    sub_100012DF0(v48, &unk_1006B41F8, &qword_100555E88);
    sub_100012DF0(v54, &unk_1006B41F8, &qword_100555E88);
    if (v59(&v26[v58], 1, v21) == 1)
    {
      v62 = v175;
      v61 = v176;
LABEL_16:
      sub_100012DF0(v26, &unk_1006B41F8, &qword_100555E88);
      v64 = v61;
      goto LABEL_23;
    }
  }

  else
  {
    v141 = v54;
    v63 = v145;
    sub_100007204(v26, v145, &unk_1006B41F8, &qword_100555E88);
    if (v59(&v26[v58], 1, v21) != 1)
    {
      v76 = v144;
      (v171[4].super.isa)(v144, &v26[v58], v21);
      sub_100316F8C(&qword_1006B4208, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
      v140 = dispatch thunk of static Equatable.== infix(_:_:)();
      v77 = v171[1].super.isa;
      v77(v76, v21);
      sub_100012DF0(v48, &unk_1006B41F8, &qword_100555E88);
      sub_100012DF0(v141, &unk_1006B41F8, &qword_100555E88);
      v77(v63, v21);
      sub_100012DF0(v26, &unk_1006B41F8, &qword_100555E88);
      v62 = v175;
      v64 = v176;
      if (v140)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    sub_100012DF0(v48, &unk_1006B41F8, &qword_100555E88);
    sub_100012DF0(v141, &unk_1006B41F8, &qword_100555E88);
    (v171[1].super.isa)(v63, v21);
  }

  sub_100012DF0(v26, &qword_1006B41F0, &qword_100555E80);
  v62 = v175;
  v64 = v176;
LABEL_10:
  v65 = v153;
  sub_100007204(v64, v153, &qword_1006B07D0, qword_100552820);
  if (v173(v65, 1, v62) == 1)
  {
    sub_100012DF0(v65, &qword_1006B07D0, qword_100552820);
    v66 = 1;
    v67 = v154;
    v68 = v157;
  }

  else
  {
    v68 = v157;
    FMIPItem.partType.getter();
    (*(v172 + 8))(v65, v62);
    v66 = 0;
    v67 = v154;
  }

  v69 = v156;
  isa(v68, v66, 1, v21);
  v150(v69, enum case for FMIPPartType.leftBud(_:), v21);
  isa(v69, 0, 1, v21);
  v70 = *(v170 + 48);
  sub_100007204(v68, v67, &unk_1006B41F8, &qword_100555E88);
  sub_100007204(v69, v67 + v70, &unk_1006B41F8, &qword_100555E88);
  v71 = v152;
  if (v152(v67, 1, v21) == 1)
  {
    sub_100012DF0(v69, &unk_1006B41F8, &qword_100555E88);
    sub_100012DF0(v68, &unk_1006B41F8, &qword_100555E88);
    if (v71(v67 + v70, 1, v21) == 1)
    {
      v26 = v67;
      v61 = v176;
      goto LABEL_16;
    }

LABEL_19:
    v73 = &qword_1006B41F0;
    v74 = &qword_100555E80;
    v75 = v67;
LABEL_25:
    sub_100012DF0(v75, v73, v74);
    goto LABEL_26;
  }

  v72 = v143;
  sub_100007204(v67, v143, &unk_1006B41F8, &qword_100555E88);
  if (v71(v67 + v70, 1, v21) == 1)
  {
    sub_100012DF0(v156, &unk_1006B41F8, &qword_100555E88);
    sub_100012DF0(v157, &unk_1006B41F8, &qword_100555E88);
    (v171[1].super.isa)(v72, v21);
    goto LABEL_19;
  }

  v78 = v171;
  v79 = v67 + v70;
  v80 = v144;
  (v171[4].super.isa)(v144, v79, v21);
  sub_100316F8C(&qword_1006B4208, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = v78[1].super.isa;
  v82(v80, v21);
  sub_100012DF0(v156, &unk_1006B41F8, &qword_100555E88);
  sub_100012DF0(v157, &unk_1006B41F8, &qword_100555E88);
  v82(v72, v21);
  sub_100012DF0(v67, &unk_1006B41F8, &qword_100555E88);
  v64 = v176;
  if ((v81 & 1) == 0)
  {
LABEL_26:
    v171 = 0;
    v84 = v172;
    v86 = v162;
    v85 = v163;
LABEL_27:
    v87 = v158;
    goto LABEL_34;
  }

LABEL_23:
  v83 = v149;
  sub_100007204(v64, v149, &qword_1006B07D0, qword_100552820);
  if (v173(v83, 1, v62) == 1)
  {
    v73 = &qword_1006B07D0;
    v74 = qword_100552820;
    v75 = v83;
    goto LABEL_25;
  }

  v88 = v142;
  FMIPItem.partInfo.getter();
  v84 = v172;
  (*(v172 + 8))(v83, v62);
  v89 = type metadata accessor for FMIPPartInfo();
  v90 = *(v89 - 8);
  v91 = (*(v90 + 48))(v88, 1, v89);
  v86 = v162;
  v85 = v163;
  if (v91 == 1)
  {
    sub_100012DF0(v88, &unk_1006C2470, &unk_1005642F0);
  }

  else
  {
    FMIPPartInfo.symbol.getter();
    v92 = v88;
    v94 = v93;
    (*(v90 + 8))(v92, v89);
    if (v94)
    {
      v95 = String._bridgeToObjectiveC()();
      v96 = [objc_opt_self() systemImageNamed:v95];

      if (v96)
      {
        v97 = [objc_opt_self() systemGrayColor];
        v171 = sub_1003DE2DC(v97);
      }

      else
      {
        v171 = 0;
      }

      goto LABEL_27;
    }
  }

  v171 = 0;
  v87 = v158;
LABEL_34:
  FMIPDevice.itemGroup.getter();
  v98 = *(v86 + 48);
  if (v98(v87, 1, v85) == 1)
  {
    sub_100012DF0(v87, &unk_1006BB1C0, &unk_1005534F0);
    v99 = 0;
    goto LABEL_42;
  }

  v100 = v155;
  (*(v86 + 32))(v155, v87, v85);
  v101 = v146;
  sub_100007204(v176, v146, &qword_1006B07D0, qword_100552820);
  v102 = v175;
  if (v173(v101, 1, v175) == 1)
  {
    (*(v86 + 8))(v100, v85);
    sub_100012DF0(v101, &qword_1006B07D0, qword_100552820);
LABEL_38:
    v99 = 0;
    goto LABEL_42;
  }

  (*(v84 + 32))(v147, v101, v102);
  v103 = v165;
  FMIPItem.state.getter();
  v104 = v166;
  static FMIPItemState.markLostActive.getter();
  sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v105 = v167;
  v106 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v107 = *(v164 + 8);
  v107(v104, v105);
  v107(v103, v105);
  if ((v106 & 1) == 0)
  {
    v108 = v165;
    FMIPItemGroup.state.getter();
    v109 = v166;
    static FMIPItemState.markLostActive.getter();
    v110 = v167;
    v111 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v107(v109, v110);
    v107(v108, v110);
    if ((v111 & 1) == 0)
    {
      (*(v172 + 8))(v147, v175);
      v86 = v162;
      v85 = v163;
      (*(v162 + 8))(v155, v163);
      goto LABEL_38;
    }
  }

  v112 = v168;
  v113 = String._bridgeToObjectiveC()();
  v114 = [objc_opt_self() systemImageNamed:v113 withConfiguration:v112];

  v99 = [objc_opt_self() systemOrangeColor];
  (*(v172 + 8))(v147, v175);
  v86 = v162;
  v85 = v163;
  (*(v162 + 8))(v155, v163);
  v171 = v114;
LABEL_42:
  v115 = v159;
  FMIPDevice.itemGroup.getter();
  if (v98(v115, 1, v85) == 1)
  {
    sub_100012DF0(v115, &unk_1006BB1C0, &unk_1005534F0);
    v116 = v161;
  }

  else
  {
    v117 = v148;
    (*(v86 + 32))(v148, v115, v85);
    v118 = v165;
    FMIPItemGroup.state.getter();
    v119 = v166;
    static FMIPItemState.pairingIncomplete.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
    v120 = v167;
    v121 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v122 = *(v164 + 8);
    v122(v119, v120);
    v122(v118, v120);
    v116 = v161;
    if (v121)
    {
      v123 = v168;
      v124 = String._bridgeToObjectiveC()();
      v125 = [objc_opt_self() systemImageNamed:v124 withConfiguration:v123];

      v126 = [objc_opt_self() systemOrangeColor];
      (*(v86 + 8))(v117, v85);
      v99 = v126;
      v171 = v125;
    }

    else
    {
      (*(v86 + 8))(v117, v85);
    }
  }

  v127 = v160;
  sub_100007204(v176, v160, &qword_1006B07D0, qword_100552820);
  v128 = v175;
  if (v173(v127, 1, v175) == 1)
  {

    sub_100012DF0(v127, &qword_1006B07D0, qword_100552820);
  }

  else
  {
    v129 = v172;
    (*(v172 + 32))(v116, v127, v128);
    v130 = v165;
    FMIPItem.state.getter();
    v131 = v166;
    static FMIPItemState.isFirmwareUpdating.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
    v132 = v167;
    v133 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v134 = *(v164 + 8);
    v134(v131, v132);
    v134(v130, v132);
    if (v133)
    {
      v135 = v168;
      v136 = String._bridgeToObjectiveC()();
      v137 = [objc_opt_self() systemImageNamed:v136 withConfiguration:v135];

      [objc_opt_self() systemBlueColor];
      (*(v129 + 8))(v116, v128);
      return v137;
    }

    (*(v129 + 8))(v116, v128);
  }

  return v171;
}

id sub_10031589C(uint64_t a1)
{
  v112 = type metadata accessor for FMIPItemState();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v109 = &v107 - v4;
  v5 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v5 - 8);
  v124 = &v107 - v6;
  v7 = type metadata accessor for FMIPItemGroup();
  v125 = *(v7 - 8);
  v126 = v7;
  __chkstk_darwin(v7);
  v131 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B8678, &qword_100563EE0);
  __chkstk_darwin(v9 - 8);
  v118 = &v107 - v10;
  v11 = type metadata accessor for FMIPEraseMetadata();
  v120 = *(v11 - 8);
  v121 = v11;
  __chkstk_darwin(v11);
  v119 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v13 - 8);
  v122 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v107 - v16;
  v17 = type metadata accessor for FMIPActionStatus();
  v128 = *(v17 - 8);
  v129 = v17;
  __chkstk_darwin(v17);
  v115 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v114 = &v107 - v20;
  __chkstk_darwin(v21);
  v108 = &v107 - v22;
  v23 = sub_10007EBC0(&unk_1006C1D20, &qword_10055D7A0);
  __chkstk_darwin(v23 - 8);
  v25 = &v107 - v24;
  v116 = type metadata accessor for FMIPLockMetadata();
  v127 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FMIPDeviceState();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v107 - v32;
  v34 = objc_opt_self();
  v133 = [v34 systemRedColor];
  v35 = objc_opt_self();
  v132 = [v35 configurationWithPointSize:11.0];
  v123 = a1;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isInRepairMode.getter();
  sub_100316F8C(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  LOBYTE(a1) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v36 = *(v28 + 8);
  v36(v30, v27);
  v36(v33, v27);
  if (a1)
  {
    v37 = [v35 configurationWithPointSize:8.0];
    v38 = String._bridgeToObjectiveC()();
    v39 = [objc_opt_self() systemImageNamed:v38 withConfiguration:v37];

    v40 = [v34 systemMintColor];
    v133 = v40;
  }

  else
  {
    v39 = 0;
  }

  FMIPDevice.lockMetadata.getter();
  v41 = v127;
  v42 = v116;
  v43 = (*(v127 + 48))(v25, 1, v116);
  v44 = v132;
  v130 = v34;
  if (v43 == 1)
  {
    sub_100012DF0(v25, &unk_1006C1D20, &qword_10055D7A0);
    v45 = v131;
  }

  else
  {
    v117 = v39;
    v46 = v113;
    (*(v41 + 32))(v113, v25, v42);
    v47 = v108;
    FMIPLockMetadata.status.getter();
    v48 = FMIPActionStatus.isActionSuccessful.getter();
    v49 = *(v128 + 8);
    v49(v47, v129);
    if ((v48 & 1) != 0 && (v50 = v107, FMIPDevice.lockedTimestamp.getter(), v51 = type metadata accessor for Date(), v52 = (*(*(v51 - 8) + 48))(v50, 1, v51), sub_100012DF0(v50, &unk_1006B0000, &unk_100552AA0), v52 != 1) || (v53 = v114, FMIPLockMetadata.status.getter(), v54 = v129, v55 = v115, (*(v128 + 104))(v115, enum case for FMIPActionStatus.pending(_:), v129), sub_100316F8C(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v56 = v55, v46 = v113, v49(v56, v54), v57 = v54, v41 = v127, v49(v53, v57), v135 == v134))
    {
      v44 = v132;
      v58 = v132;
      v59 = String._bridgeToObjectiveC()();
      v39 = [objc_opt_self() systemImageNamed:v59 withConfiguration:v58];

      v60 = v46;
      v34 = v130;
      v61 = [v130 systemOrangeColor];

      (*(v41 + 8))(v60, v42);
      v133 = v61;
      v45 = v131;
    }

    else
    {
      (*(v41 + 8))(v46, v42);
      v34 = v130;
      v45 = v131;
      v39 = v117;
      v44 = v132;
    }
  }

  if (FMIPDevice.isLostModeActive.getter())
  {
    v62 = v44;
    v63 = String._bridgeToObjectiveC()();
    v64 = [objc_opt_self() systemImageNamed:v63 withConfiguration:v62];

    v65 = [v34 systemOrangeColor];
    v133 = v65;
    v39 = v64;
  }

  v66 = v120;
  v67 = v44;
  if (FMIPDevice.deviceIsPendingRemoval.getter())
  {
    v68 = v44;
    v69 = String._bridgeToObjectiveC()();
    v70 = v45;
    v71 = [objc_opt_self() systemImageNamed:v69 withConfiguration:v68];

    v72 = [v34 systemRedColor];
    v133 = v72;
    v39 = v71;
    v45 = v70;
  }

  v73 = v118;
  FMIPDevice.eraseMetadata.getter();
  v74 = v121;
  if ((*(v66 + 48))(v73, 1, v121) == 1)
  {
    sub_100012DF0(v73, &qword_1006B8678, &qword_100563EE0);
  }

  else
  {
    v117 = v39;
    (*(v66 + 32))(v119, v73, v74);
    v75 = v114;
    FMIPEraseMetadata.status.getter();
    v77 = v128;
    v76 = v129;
    v78 = v115;
    (*(v128 + 104))(v115, enum case for FMIPActionStatus.eraseCancelled(_:), v129);
    sub_100316F8C(&unk_1006C1DA0, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v80 = *(v77 + 8);
    v80(v78, v76);
    v80(v75, v76);
    if (v79)
    {
      (*(v66 + 8))(v119, v74);
      v39 = v117;
      v44 = v67;
    }

    else
    {
      v44 = v67;
      v81 = v67;
      v82 = String._bridgeToObjectiveC()();
      v83 = [objc_opt_self() systemImageNamed:v82 withConfiguration:v81];
      v84 = v119;
      v39 = v83;

      v85 = [v130 systemRedColor];
      (*(v66 + 8))(v84, v74);
      v133 = v85;
    }

    v45 = v131;
  }

  v86 = v122;
  FMIPDevice.wipedTimestamp.getter();
  v87 = type metadata accessor for Date();
  v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
  sub_100012DF0(v86, &unk_1006B0000, &unk_100552AA0);
  if (v88 != 1)
  {
    v89 = v44;
    v90 = String._bridgeToObjectiveC()();
    v91 = [objc_opt_self() systemImageNamed:v90 withConfiguration:v89];

    v92 = [v130 systemRedColor];
    v133 = v92;
    v39 = v91;
  }

  v93 = v124;
  FMIPDevice.itemGroup.getter();
  v94 = v125;
  v95 = v126;
  if ((*(v125 + 48))(v93, 1, v126) == 1)
  {

    sub_100012DF0(v93, &unk_1006BB1C0, &unk_1005534F0);
  }

  else
  {
    (*(v94 + 32))(v45, v93, v95);
    v96 = v109;
    v97 = v94;
    FMIPItemGroup.state.getter();
    v98 = v110;
    static FMIPItemState.pairingIncomplete.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
    v99 = v112;
    v100 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v101 = *(v111 + 8);
    v101(v98, v99);
    v101(v96, v99);
    if (v100)
    {
      v102 = v132;
      v103 = String._bridgeToObjectiveC()();
      v104 = [objc_opt_self() systemImageNamed:v103 withConfiguration:v102];

      v105 = [v130 systemOrangeColor];
      (*(v97 + 8))(v45, v95);
      v133 = v105;
      return v104;
    }

    else
    {
      (*(v97 + 8))(v45, v95);
    }
  }

  return v39;
}

double sub_1003168DC(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for FMIPDeviceStatus();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPItemState();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v41 - v8;
  v9 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for FMIPItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMIPDeviceState();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v41 - v21;
  v45 = FMIPDevice.hasLocation.getter();
  v49 = a1;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isThisDevice.getter();
  sub_100316F8C(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  LOBYTE(a1) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v23 = *(v17 + 8);
  v23(v19, v16);
  v23(v22, v16);
  v24 = -1.0;
  if (a1)
  {
    return v24;
  }

  sub_100007204(v50, v11, &qword_1006B07D0, qword_100552820);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &qword_1006B07D0, qword_100552820);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v25 = v41;
    FMIPItem.state.getter();
    v26 = v42;
    static FMIPItemState.isBTConnected.getter();
    sub_100316F8C(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
    v27 = v44;
    v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v29 = *(v43 + 8);
    v29(v26, v27);
    v29(v25, v27);
    (*(v13 + 8))(v15, v12);
    if (v28)
    {
      return v24;
    }
  }

  v30 = v46;
  FMIPDevice.status.getter();
  v32 = v47;
  v31 = v48;
  v33 = (*(v47 + 88))(v30, v48);
  if (v33 == enum case for FMIPDeviceStatus.online(_:))
  {
    v34 = 5.0;
    v24 = 1.0;
    if (v45)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v33 != enum case for FMIPDeviceStatus.offline(_:) && v33 != enum case for FMIPDeviceStatus.pending(_:))
  {
    (*(v32 + 8))(v30, v31);
    v34 = 4.0;
    v24 = 0.0;
    if (v45)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v34 = 13.0;
  v24 = 9.0;
  if ((v45 & 1) == 0)
  {
LABEL_13:
    v24 = v34;
  }

LABEL_14:
  v35 = FMIPDevice.ownerIdentifier.getter();
  v37 = v36;
  if (v35 == FMIPDefaultOwnerIdentifier.getter() && v37 == v38)
  {
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      return v24 + 5.0;
    }
  }

  return v24;
}

uint64_t sub_100316EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceCellViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100316F10(uint64_t a1)
{
  v2 = type metadata accessor for FMDeviceCellViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100316F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100317040(uint64_t a1, double a2, double a3)
{
  if (v3[OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled] == 1)
  {
    v7 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
    swift_beginAccess();
    v8 = *&v3[v7];
    if (v8 >> 62)
    {
LABEL_19:
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        return 0;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      [v3 convertPoint:v11 toCoordinateSpace:{a2, a3}];
      v14 = v13;
      v16 = v15;
      type metadata accessor for FMPassthroughView();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        break;
      }

      [v12 bounds];
      v24.x = v14;
      v24.y = v16;
      v18 = CGRectContainsPoint(v25, v24);

      if (v18)
      {

        return 1;
      }
    }

    v19 = v17;

    v20 = [v19 pointInside:a1 withEvent:{v14, v16}];

    return v20;
  }

  else
  {
    v23.receiver = v3;
    v23.super_class = type metadata accessor for FMPassthroughView();
    return objc_msgSendSuper2(&v23, "pointInside:withEvent:", a1, a2, a3);
  }
}

id sub_1003172D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100317318(uint64_t a1)
{
  v63 = a1;
  v65 = type metadata accessor for FMItemCapabilities();
  v1 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = &v55 - v4;
  v5 = sub_10007EBC0(&qword_1006BB7D8, &qword_10055D808);
  __chkstk_darwin(v5 - 8);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v55 - v8;
  sub_10007EBC0(&qword_1006BB7E0, &qword_10055D810);
  v9 = sub_10007EBC0(&qword_1006B39A8, &qword_100555820);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = 2 * v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1005528D0;
  v14 = v13 + v11;
  v15 = *(v9 + 48);
  static FMItemCapabilities.canBTFinding.getter();
  *(v14 + v15) = 2;
  v16 = v14 + v10;
  v17 = *(v9 + 48);
  static FMItemCapabilities.canR1.getter();
  *(v16 + v17) = 2;
  v18 = *(v9 + 48);
  static FMItemCapabilities.canPlaySound.getter();
  *(v14 + v12 + v18) = 1;
  v19 = sub_1001544BC(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v21 = 0;
  v22 = *(v19 + 64);
  v56 = v19 + 64;
  v58 = v1;
  v59 = v19;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v57 = v1 + 16;
  v66 = (v1 + 32);
  v60 = (v1 + 8);
  v68 = 0;
  if ((v24 & v22) != 0)
  {
    while (1)
    {
      v27 = v21;
LABEL_12:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v32 = v31 | (v27 << 6);
      v34 = v58;
      v33 = v59;
      (*(v58 + 16))(v67, *(v59 + 48) + *(v58 + 72) * v32, v65);
      v35 = *(*(v33 + 56) + 8 * v32);
      v36 = sub_10007EBC0(&qword_1006BB7E8, &qword_10055D818);
      v37 = *(v36 + 48);
      v30 = v64;
      (*(v34 + 32))();
      *&v30[v37] = v35;
      (*(*(v36 - 8) + 56))(v30, 0, 1, v36);
      v29 = v27;
LABEL_13:
      v38 = v30;
      v39 = v62;
      sub_10031791C(v38, v62);
      v40 = sub_10007EBC0(&qword_1006BB7E8, &qword_10055D818);
      v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
      v42 = v63;
      if (v41 == 1)
      {
        break;
      }

      v43 = *(v39 + *(v40 + 48));
      v44 = v65;
      v45 = v61;
      (*v66)(v61, v39, v65);
      v46 = v67;
      FMIPUnknownItem.capabilities.getter();
      sub_10031798C();
      v47 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v48 = *v60;
      (*v60)(v46, v44);
      result = v48(v45, v44);
      if ((v47 & ((v43 & ~v68) != 0)) != 0)
      {
        v49 = v43;
      }

      else
      {
        v49 = 0;
      }

      v50 = v49 | v68;
      v21 = v29;
      v68 = v50;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    FMIPUnknownItem.handle.getter();
    if (v52 && (, (FMIPUnknownItem.isRequestable.getter() & 1) != 0))
    {
      v53 = type metadata accessor for FMIPUnknownItem();
      (*(*(v53 - 8) + 8))(v42, v53);
      return v68 | 4;
    }

    else
    {
      v54 = type metadata accessor for FMIPUnknownItem();
      (*(*(v54 - 8) + 8))(v42, v54);
      return v68;
    }
  }

  else
  {
LABEL_5:
    if (v26 <= v21 + 1)
    {
      v28 = v21 + 1;
    }

    else
    {
      v28 = v26;
    }

    v29 = v28 - 1;
    v30 = v64;
    while (1)
    {
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v27 >= v26)
      {
        v51 = sub_10007EBC0(&qword_1006BB7E8, &qword_10055D818);
        (*(*(v51 - 8) + 56))(v30, 1, 1, v51);
        v25 = 0;
        goto LABEL_13;
      }

      v25 = *(v56 + 8 * v27);
      ++v21;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031791C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BB7D8, &qword_10055D808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10031798C()
{
  result = qword_1006B4180;
  if (!qword_1006B4180)
  {
    type metadata accessor for FMItemCapabilities();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4180);
  }

  return result;
}

id sub_100317B3C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OBTableView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void NSUserDefaults.set<A>(value:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v9;

  if (!v7)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = String._bridgeToObjectiveC()();
    [v6 setValue:isa forKey:v12];

    sub_10000A858(v8, v10);
  }
}

void NSUserDefaults.codable<A>(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v4 dataForKey:v11];

  if (v12)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000A858(v13, v15);

    if (!v5)
    {
      (*(v8 + 32))(a4, v10, a2);
      (*(v8 + 56))(a4, 0, 1, a2);
    }
  }

  else
  {
    (*(v8 + 56))(a4, 1, 1, a2);
  }
}

void sub_100317E3C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for FMLostModeUpdateViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLoad");
  sub_100317E98();
}

id sub_100317E98()
{
  *(*&v0[qword_1006B8E50] + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_delegate + 8) = &off_100636980;
  swift_unknownObjectWeakAssign();
  sub_100317F88();
  sub_100318394();
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"dismissKeyboardActionWithSender:"];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result addGestureRecognizer:v1];

    v4 = *&v0[qword_1006BB818];

    return [v4 setEnabled:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100317F88()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDevice();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  v11 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v11];

  v12 = *&v1[qword_1006B8E50];
  v13 = String._bridgeToObjectiveC()();
  [v12 setAccessibilityIdentifier:v13];

  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isEditable] = 1;
  sub_100143FE8();
  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowNotifyWhenFound] = 0;
  v14 = [*&v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView] setHidden:1];
  v15 = qword_1006D3E00;
  v16 = sub_100283FCC(v14);
  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowMessageView] = v16 & 1;
  [*&v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView] setHidden:(v16 & 1) == 0];
  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowDisableButton] = 1;
  [*&v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton] setHidden:0];
  sub_1000970F8(&v1[v15], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
    v28[1] = v5;
    v18 = v29;
    v19 = v30;
    (*(v29 + 32))(v4, v10, v30);
    v20 = FMIPDevice.isConsideredAccessory.getter();
    (*(v18 + 8))(v4, v19);
    v21 = v20 ^ 1;
    sub_100012DF0(&v10[v17], &qword_1006B07D0, qword_100552820);
    v22 = v19;
    v23 = v18;
  }

  else
  {
    sub_10009715C(v10);
    v21 = 0;
    v23 = v29;
    v22 = v30;
  }

  v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isMessageEditable] = v21 & 1;
  sub_100143FE8();
  sub_1000970F8(&v1[v15], v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
    (*(v23 + 32))(v4, v7, v22);
    v25 = FMIPDevice.maxMessageLength.getter();
    (*(v23 + 8))(v4, v22);
    sub_100012DF0(&v7[v26], &qword_1006B07D0, qword_100552820);
  }

  else
  {
    sub_10009715C(v7);
    v25 = 0;
  }

  v27 = &v12[OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_maxMessageLength];
  *v27 = v25;
  v27[8] = EnumCaseMultiPayload != 1;
  sub_100142AE4();
}

void sub_100318394()
{
  v1 = *&v0[qword_1006BB818];
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v2];

  [v1 setTarget:v0];
  [v1 setAction:"handleSaveButtonTapped"];
  v3 = [v0 navigationItem];
  [v3 setRightBarButtonItem:v1];
}

double sub_100318470()
{
  v1 = sub_10007EBC0(&qword_1006B64E0, &qword_100554B80);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v25 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007EBC0(&qword_1006B28E8, &unk_100554B90);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v21 - v7;
  v24 = sub_10007EBC0(&qword_1006B28F0, &qword_10055D880);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = &v21 - v9;
  sub_100319784(v28);
  v11 = *&v0[qword_1006D4360];
  sub_100437A74();

  v12 = sub_100269160(&v0[qword_1006D3E00], v28);
  sub_100319CD4(v28);
  v27 = v12;
  sub_10007EBC0(&qword_1006B28D8, &qword_100554B78);
  sub_100004098(&qword_1006B2900, &qword_1006B28D8, &qword_100554B78, &protocol conformance descriptor for Future<A, B>);
  v13 = Publisher.eraseToAnyPublisher()();

  v27 = v13;
  sub_10007EBC0(&qword_1006B28F8, &qword_100554BA0);
  sub_100004098(&qword_1006B2908, &qword_1006B28F8, &qword_100554BA0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.catch<A>(_:)();

  NSRunLoop.SchedulerTimeType.Stride.init(integerLiteral:)();
  v14 = [objc_opt_self() mainRunLoop];
  v27 = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_10011060C();
  sub_100004098(&qword_1006B2920, &qword_1006B28E8, &unk_100554B90, &protocol conformance descriptor for Publishers.Catch<A, B>);
  sub_100110658();
  v16 = v22;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_100012DF0(v3, &qword_1006B64E0, &qword_100554B80);

  (*(v23 + 8))(v5, v25);
  (*(v6 + 8))(v8, v16);
  *(swift_allocObject() + 16) = v0;
  sub_100004098(&qword_1006B2930, &qword_1006B28F0, &qword_10055D880, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v17 = v0;
  v18 = v24;
  v19 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v26 + 8))(v10, v18);
  *&v17[qword_1006B8820] = v19;

  return result;
}

void sub_1003189EC(void *a1)
{
  v1 = a1;
  sub_100318470();
}

void sub_100318A34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100318B10(v4);
}

void sub_100318A9C(void *a1)
{
  v3 = a1;
  v1 = [v3 view];
  if (v1)
  {
    v2 = v1;
    [v1 endEditing:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100318B10(void *a1)
{
  v35 = &type metadata for SolariumFeatureFlag;
  v33 = sub_10000BD04();
  v36 = v33;
  v2 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  v3 = ~v2;
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v38._object = 0x8000000100579A00;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v6._object = 0x8000000100590CE0;
  v7.value._object = 0x80000001005799E0;
  v38._countAndFlagsBits = 0xD000000000000018;
  v7.value._countAndFlagsBits = 0xD000000000000013;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v38);

  sub_10022FB78(v1 + qword_1006D3E00);
  sub_10022FEFC(0xD000000000000020, 0x8000000100590D00);

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:v3 & 1];

  v12 = [v4 mainBundle];
  v39._object = 0x800000010057B8F0;
  v13._object = 0x800000010057B8D0;
  v39._countAndFlagsBits = 0xD000000000000025;
  v13._countAndFlagsBits = 0xD000000000000013;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v39);

  v15 = String._bridgeToObjectiveC()();

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  v18 = [v4 mainBundle];
  v40._object = 0x8000000100579A00;
  v19._countAndFlagsBits = 0xD000000000000025;
  v19._object = 0x8000000100590D30;
  v20.value._object = 0x80000001005799E0;
  v40._countAndFlagsBits = 0xD000000000000018;
  v20.value._countAndFlagsBits = 0xD000000000000013;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v40);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v23 = String._bridgeToObjectiveC()();

  v36 = sub_100319D28;
  v37 = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  v35 = &unk_1006369D0;
  v24 = _Block_copy(aBlock);

  v25 = [v16 actionWithTitle:v23 style:2 handler:v24];
  _Block_release(v24);

  [v11 addAction:v25];
  [v11 addAction:v17];
  v35 = &type metadata for SolariumFeatureFlag;
  v36 = v33;
  v26 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (v26)
  {
    v27 = v11;
    v28 = [v27 popoverPresentationController];
    if (v28)
    {
      v29 = v28;
      [v28 setSourceView:a1];
    }

    v30 = [v27 popoverPresentationController];

    if (v30)
    {
      [a1 bounds];
      [v30 setSourceRect:?];
    }
  }

  [v32 presentViewController:v11 animated:1 completion:0];
}

double sub_100318FC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10007EBC0(&qword_1006B64E0, &qword_100554B80);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B28E8, &unk_100554B90);
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_10007EBC0(&qword_1006B28F0, &qword_10055D880);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(Strong + qword_1006D4360);
    v27 = v5;
    v19 = v18;
    sub_100437A74();

    v32 = sub_100269438(v17 + qword_1006D3E00);
    v29 = v12;
    sub_10007EBC0(&qword_1006B28D8, &qword_100554B78);
    v28 = v11;
    sub_100004098(&qword_1006B2900, &qword_1006B28D8, &qword_100554B78, &protocol conformance descriptor for Future<A, B>);
    v20 = Publisher.eraseToAnyPublisher()();

    v32 = v20;
    sub_10007EBC0(&qword_1006B28F8, &qword_100554BA0);
    sub_100004098(&qword_1006B2908, &qword_1006B28F8, &qword_100554BA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.catch<A>(_:)();

    NSRunLoop.SchedulerTimeType.Stride.init(integerLiteral:)();
    v21 = [objc_opt_self() mainRunLoop];
    v32 = v21;
    v22 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    sub_10011060C();
    sub_100004098(&qword_1006B2920, &qword_1006B28E8, &unk_100554B90, &protocol conformance descriptor for Publishers.Catch<A, B>);
    sub_100110658();
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_100012DF0(v4, &qword_1006B64E0, &qword_100554B80);

    (*(v31 + 8))(v7, v27);
    (*(v30 + 8))(v10, v8);
    *(swift_allocObject() + 16) = v17;
    sub_100004098(&qword_1006B2930, &qword_1006B28F0, &qword_10055D880, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v23 = v17;
    v24 = v28;
    v25 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v29 + 8))(v14, v24);
    *&v23[qword_1006B8820] = v25;
  }

  return result;
}

void sub_100319564()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v14._object = 0x8000000100579A00;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x8000000100590CC0;
  v4.value._object = 0x80000001005799E0;
  v14._countAndFlagsBits = 0xD000000000000018;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v14);

  v6 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v6 message:0 preferredStyle:1];

  v7 = [v1 mainBundle];
  v15._object = 0x8000000100579B60;
  v8._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v8._object = 0xEF454C5449545F4ELL;
  v15._countAndFlagsBits = 0xD000000000000021;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v15);

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() actionWithTitle:v10 style:0 handler:0];

  [v12 addAction:v11];
  [v0 presentViewController:v12 animated:1 completion:0];
}

id sub_100319784@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_1006B8E50);
  v4 = [*(*(v3 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) text];
  if (v4)
  {
    v5 = v4;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v22 = 0;
    v7 = 0;
  }

  v8 = [*(*(v3 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) text];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [*(*(v3 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) text];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v19 = *(v1 + qword_1006D4358 + 48);
  v18 = *(v1 + qword_1006D4358 + 56);
  v20 = *(*(v3 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle);

  result = [v20 isOn];
  *a1 = v22;
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v18;
  *(a1 + 64) = result;
  return result;
}

id sub_10031992C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeUpdateViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMLostModeUpdateViewController(uint64_t a1)
{
  result = qword_1006BB848;
  if (!qword_1006BB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100319A10(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100319784(v23);
  if (a1 >> 61 != 2)
  {
    if (a1 >> 61 == 3)
    {

      v11 = static String.emailPredicate.getter();
      v12 = String._bridgeToObjectiveC()();

      v13 = [v11 evaluateWithObject:v12];

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_1000970F8(v1 + qword_1006D3E00, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10009715C(v10);
    goto LABEL_14;
  }

  v14 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
  (*(v5 + 32))(v7, v10, v4);
  v15 = FMIPDevice.isConsideredAccessory.getter();
  (*(v5 + 8))(v7, v4);
  sub_100012DF0(&v10[v14], &qword_1006B07D0, qword_100552820);
  if ((v15 & 1) == 0)
  {
LABEL_14:
    v13 = 1;
    goto LABEL_15;
  }

  if (v25)
  {
    v16 = v24;
  }

  else
  {
    v16 = 0;
  }

  if (v25)
  {
    v17 = v25;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v13 = sub_100122BFC(v16, v17);

LABEL_15:
  v18 = *(v2 + qword_1006D4358 + 48);
  v26[2] = *(v2 + qword_1006D4358 + 32);
  v26[3] = v18;
  v27 = *(v2 + qword_1006D4358 + 64);
  v19 = *(v2 + qword_1006D4358 + 16);
  v26[0] = *(v2 + qword_1006D4358);
  v26[1] = v19;
  v20 = sub_10026B3B8(v23, v26);
  sub_100319CD4(v23);
  return [*(v2 + qword_1006BB818) setEnabled:v13 & ~v20 & 1];
}

void sub_100319D30(void *a1)
{
  type metadata accessor for FMLostModeSummaryTextView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView);
  v6 = a1;
  v52 = v5;
  v7 = [v52 selectedTextRange];
  if (!v7)
  {
    v7 = [objc_allocWithZone(UITextRange) init];
  }

  v8 = [v7 end];
  [v52 caretRectForPosition:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v14 == 0.0 && v16 == 0.0)
  {
    v17 = [v1 scrollView];
    if (!v17)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = [v17 coordinateSpace];

    v20 = v6;
    [v4 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v4 coordinateSpace];

    [v19 convertRect:v29 fromCoordinateSpace:{v22, v24, v26, v28}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v54.origin.x = v31;
    v54.origin.y = v33;
    v54.size.width = v35;
    v54.size.height = v37;
    MinX = CGRectGetMinX(v54);
    v55.origin.x = v31;
    v55.origin.y = v33;
    v55.size.width = v35;
    v55.size.height = v37;
    MaxY = CGRectGetMaxY(v55);
    v56.origin.x = v31;
    v56.origin.y = v33;
    v56.size.width = v35;
    v56.size.height = v37;
    Width = CGRectGetWidth(v56);
    v41 = 1.0;
  }

  else
  {
    v42 = [v52 coordinateSpace];
    v43 = [v1 scrollView];
    if (!v43)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v44 = v43;
    v45 = [v43 coordinateSpace];

    [v42 convertRect:v45 toCoordinateSpace:{v10, v12, v14, v16}];
    MinX = v46;
    MaxY = v47;
    Width = v48;
    v41 = v49;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v50 = [v1 scrollView];
  if (!v50)
  {
    __break(1u);
    goto LABEL_16;
  }

  v51 = v50;
  v57.origin.x = MinX;
  v57.origin.y = MaxY;
  v57.size.width = Width;
  v57.size.height = v41;
  v58 = CGRectOffset(v57, 0.0, 15.0);
  [v51 scrollRectToVisible:1 animated:{v58.origin.x, v58.origin.y, v58.size.width, v58.size.height}];
}

id sub_10031A09C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC6FindMy13FMCalloutView_path;
  *&v4[v9] = [objc_allocWithZone(UIBezierPath) init];
  *&v4[OBJC_IVAR____TtC6FindMy13FMCalloutView_triangleWidth] = 0x4028000000000000;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for FMCalloutView();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];
  return v12;
}

id sub_10031A2B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCalloutView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10031A31C()
{
  v1 = [objc_opt_self() clearColor];
  [v1 setFill];

  v2 = OBJC_IVAR____TtC6FindMy13FMCalloutView_path;
  [*(v0 + OBJC_IVAR____TtC6FindMy13FMCalloutView_path) fill];
  v3 = [objc_allocWithZone(UITableView) init];
  v10 = [v3 separatorColor];

  if (v10)
  {
    v4 = *(v0 + v2);
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 mainScreen];
    [v7 scale];
    v9 = v8;

    [v6 setLineWidth:1.0 / v9];
    [v10 setStroke];
    [*(v0 + v2) stroke];
  }
}

uint64_t FMIPDevice.locateDeviceClass.getter()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080, &unk_100552AF0);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - v3;
  FMIPDevice.category.getter();
  v5 = String.uppercased()();

  v32 = v5;
  v30 = 0x4B4F4F4243414DLL;
  v31 = 0xE700000000000000;
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_100035F3C();
  StringProtocol.range<A>(of:options:range:locale:)();
  v9 = v8;
  sub_10031AA18(v4);

  if ((v9 & 1) == 0)
  {
    return 4;
  }

  v29[1] = v1;
  FMIPDevice.category.getter();
  v10 = String.uppercased()();

  v32 = v10;
  v30 = 4407629;
  v31 = 0xE300000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v12 = v11;
  sub_10031AA18(v4);

  if ((v12 & 1) == 0)
  {
    return 4;
  }

  FMIPDevice.category.getter();
  v13 = String.uppercased()();

  v32 = v13;
  v30 = 0x454E4F485049;
  v31 = 0xE600000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v15 = v14;
  sub_10031AA18(v4);

  if ((v15 & 1) == 0)
  {
    return 2;
  }

  FMIPDevice.category.getter();
  v16 = String.uppercased()();

  v32 = v16;
  v30 = 1145131081;
  v31 = 0xE400000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v18 = v17;
  sub_10031AA18(v4);

  if ((v18 & 1) == 0)
  {
    return 3;
  }

  FMIPDevice.category.getter();
  v19 = String.uppercased()();

  v32 = v19;
  v30 = 1146048585;
  v31 = 0xE400000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v21 = v20;
  sub_10031AA18(v4);

  if ((v21 & 1) == 0)
  {
    return 6;
  }

  FMIPDevice.category.getter();
  v22 = String.uppercased()();

  v32 = v22;
  v30 = 0x4843544157;
  v31 = 0xE500000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v24 = v23;
  sub_10031AA18(v4);

  if ((v24 & 1) == 0)
  {
    return 1;
  }

  FMIPDevice.category.getter();
  v25 = String.uppercased()();

  v32 = v25;
  v30 = 0x524F535345434341;
  v31 = 0xE900000000000059;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v27 = v26;
  sub_10031AA18(v4);

  if (v27)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10031AA18(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B0080, &unk_100552AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPDevice.playSoundDeviceClass.getter()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080, &unk_100552AF0);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - v3;
  FMIPDevice.category.getter();
  v5 = String.uppercased()();

  v32 = v5;
  v30 = 0x4B4F4F4243414DLL;
  v31 = 0xE700000000000000;
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_100035F3C();
  StringProtocol.range<A>(of:options:range:locale:)();
  v9 = v8;
  sub_10031AA18(v4);

  if ((v9 & 1) == 0)
  {
    return 4;
  }

  v29[1] = v1;
  FMIPDevice.category.getter();
  v10 = String.uppercased()();

  v32 = v10;
  v30 = 4407629;
  v31 = 0xE300000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v12 = v11;
  sub_10031AA18(v4);

  if ((v12 & 1) == 0)
  {
    return 4;
  }

  FMIPDevice.category.getter();
  v13 = String.uppercased()();

  v32 = v13;
  v30 = 0x454E4F485049;
  v31 = 0xE600000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v15 = v14;
  sub_10031AA18(v4);

  if ((v15 & 1) == 0)
  {
    return 2;
  }

  FMIPDevice.category.getter();
  v16 = String.uppercased()();

  v32 = v16;
  v30 = 1145131081;
  v31 = 0xE400000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v18 = v17;
  sub_10031AA18(v4);

  if ((v18 & 1) == 0)
  {
    return 3;
  }

  FMIPDevice.category.getter();
  v19 = String.uppercased()();

  v32 = v19;
  v30 = 1146048585;
  v31 = 0xE400000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v21 = v20;
  sub_10031AA18(v4);

  if ((v21 & 1) == 0)
  {
    return 5;
  }

  FMIPDevice.category.getter();
  v22 = String.uppercased()();

  v32 = v22;
  v30 = 0x4843544157;
  v31 = 0xE500000000000000;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v24 = v23;
  sub_10031AA18(v4);

  if ((v24 & 1) == 0)
  {
    return 1;
  }

  FMIPDevice.category.getter();
  v25 = String.uppercased()();

  v32 = v25;
  v30 = 0x524F535345434341;
  v31 = 0xE900000000000059;
  v7(v4, 1, 1, v6);
  StringProtocol.range<A>(of:options:range:locale:)();
  v27 = v26;
  sub_10031AA18(v4);

  if (v27)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_10031B008()
{
  v1 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator) + 56);
  v5 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10032A93C(v4 + v5, v3, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = *(v3 + 1);
    v7 = *(v3 + 2);

    if (v7 >= 4)
    {
      sub_100091880(v6, v7);
      return 0;
    }

    else
    {
      return 1u >> (v7 & 0xF);
    }
  }

  else
  {
    sub_10032A9A4(v3, type metadata accessor for FMSelectedSection);
    return 1;
  }
}

void sub_10031B13C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v7 = 136315138;
    if (v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled])
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_100005B4C(v9, v10, v31);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesListDataSource: updatesEnabled: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled;
  if (v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled] == 1)
  {
    v13 = *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator];
    v14 = *(v13 + 24);
    type metadata accessor for FMDevicesSubscription(0);
    v15 = swift_allocObject();
    *(v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100636B48;
    swift_unknownObjectWeakAssign();
    v16 = *(v14 + 16);

    os_unfair_lock_lock((v16 + 24));
    sub_10000E7C0((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_deviceSubscription] = v15;

    v17 = *(v13 + 40);
    v18 = sub_1003CB7D0(v4, v17);

    *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_locationSubscription] = v18;

    LOBYTE(v14) = v4[v12] ^ a1;

    v19 = FMIPManager.devices.getter();

    v20 = *(*(v13 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v30 = v20;
    sub_10031D668(v19, v20, v14 & 1);

    return;
  }

  if (*&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_deviceSubscription])
  {
    v21 = *(*(*&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator] + 24) + 16);

    os_unfair_lock_lock((v21 + 24));
    sub_10008FB6C((v21 + 16));
    os_unfair_lock_unlock((v21 + 24));
  }

  v22 = *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_locationSubscription];
  if (v22)
  {
    v23 = *(*&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator] + 40);
    v24 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
    swift_beginAccess();

    v25 = v23;
    v26 = sub_1003CEA10(&v23[v24], v22);
    v27 = *&v23[v24];
    if (v27 >> 62)
    {
      v29 = v26;
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v26 = v29;
      if (v28 >= v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 >= v26)
      {
LABEL_20:
        sub_1003CEA44(v26, v28);
        swift_endAccess();

        return;
      }
    }

    __break(1u);
  }
}

char *sub_10031B5A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_deviceSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_locationSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_itemAger;
  type metadata accessor for FMItemAger();
  swift_allocObject();
  *&v2[v9] = sub_10002BE70();
  v25 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updateQueue;
  v24[1] = sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000A348(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0, &unk_100550420);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0, &unk_100550420);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *&v2[v25] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delayedUpdateWorkItem] = 0;
  v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_isRemovingCell] = 0;
  v10 = &v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource__listTitle];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled] = 0;
  v11 = &v2[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_listSubtitle];
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = v28;
  v12 = v29;
  *&v3[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator] = v28;
  *&v3[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_tableView] = v12;
  v14 = type metadata accessor for FMDevicesListDataSource();
  v30.receiver = v3;
  v30.super_class = v14;

  v15 = v12;
  v16 = objc_msgSendSuper2(&v30, "init");
  sub_10007EBC0(&unk_1006BBCD0, &qword_10055D928);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = v16;
  v19 = String._bridgeToObjectiveC()();
  [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v19];

  *(*&v18[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_itemAger] + 24) = &off_100636B08;
  swift_unknownObjectWeakAssign();

  sub_10031E57C();
  v20 = FMIPManager.devices.getter();
  v21 = *(*(v13 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v22 = v21;
  sub_10031D668(v20, v21, 0);

  return v18;
}

void sub_10031BA04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100005B14(v12, qword_1006D4630);
  v14 = *(v6 + 16);
  v14(v11, a1, v5);
  v52 = a1;
  v14(v8, a1, v5);
  v15 = v2;
  v51 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = &OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  if (os_log_type_enabled(v16, v17))
  {
    v50 = a2;
    v19 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v19 = 136315650;
    v20 = IndexPath.debugDescription.getter();
    v22 = v21;
    v48 = *(v6 + 8);
    v48(v11, v5);
    v23 = sub_100005B4C(v20, v22, &v53);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    v24 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel;
    v25 = *(*&v15[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel] + 16);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2048;
    v26 = IndexPath.section.getter();
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v27 = *&v15[v24];
    if (v26 >= *(v27 + 16))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v28 = *(*(v27 + 8 * v26 + 32) + 16);

    v48(v8, v5);
    *(v19 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v16, v17, "FMDevicesListDataSource: device for index path: %s, section: %ld row: %ld", v19, 0x20u);
    sub_100006060(v49);

    a2 = v50;
    v18 = &OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v8, v5);

    v29(v11, v5);
  }

  v30 = IndexPath.section.getter();
  v31 = v18[393];
  if (v30 >= *(*&v15[v31] + 16))
  {
    goto LABEL_17;
  }

  v32 = IndexPath.row.getter();
  v33 = IndexPath.section.getter();
  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v34 = *&v15[v31];
  if (v33 >= *(v34 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v32 < *(*(v34 + 8 * v33 + 32) + 16))
  {
    v35 = IndexPath.section.getter();
    v36 = IndexPath.row.getter();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v37 = *&v15[v31];
      if (v35 < *(v37 + 16))
      {
        v38 = v36;
        if ((v36 & 0x8000000000000000) == 0)
        {
          v39 = *(v37 + 8 * v35 + 32);
          if (v36 < *(v39 + 16))
          {
            v40 = *(type metadata accessor for FMDeviceCellViewModel(0) - 8);
            v41 = v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v38;
            v42 = *(v41 + 16);
            v43 = *(v41 + 24);

            sub_1000E512C(v42, v43, a2);

            return;
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "FMDevicesListDataSource: Not returning any device... out of bound", v46, 2u);
  }

  v47 = type metadata accessor for FMIPDevice();
  (*(*(v47 - 8) + 56))(a2, 1, 1, v47);
}

unint64_t sub_10031BF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100005B14(v12, qword_1006D4630);
  v14 = *(v6 + 16);
  v14(v11, a1, v5);
  v47 = a1;
  v14(v8, a1, v5);
  v15 = v2;
  v46 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = &OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  if (os_log_type_enabled(v16, v17))
  {
    v45 = a2;
    v19 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v19 = 136315650;
    v20 = IndexPath.debugDescription.getter();
    v22 = v21;
    v43 = *(v6 + 8);
    v43(v11, v5);
    v23 = sub_100005B4C(v20, v22, &v48);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    v24 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel;
    v25 = *(*&v15[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel] + 16);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2048;
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v27 = *&v15[v24];
    if (result >= *(v27 + 16))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v28 = *(*(v27 + 8 * result + 32) + 16);

    v43(v8, v5);
    *(v19 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v16, v17, "FMDevicesListDataSource: device for index path: %s, section: %ld row: %ld", v19, 0x20u);
    sub_100006060(v44);

    a2 = v45;
    v18 = &OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v8, v5);

    v29(v11, v5);
  }

  v30 = IndexPath.section.getter();
  v31 = v18[393];
  if (v30 >= *(*&v15[v31] + 16))
  {
    goto LABEL_17;
  }

  v32 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v33 = *&v15[v31];
  if (result >= *(v33 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v32 < *(*(v33 + 8 * result + 32) + 16))
  {
    v34 = IndexPath.section.getter();
    result = IndexPath.row.getter();
    if ((v34 & 0x8000000000000000) == 0)
    {
      v35 = *&v15[v31];
      if (v34 < *(v35 + 16))
      {
        v36 = result;
        if ((result & 0x8000000000000000) == 0)
        {
          v37 = *(v35 + 8 * v34 + 32);
          if (result < *(v37 + 16))
          {
            v38 = type metadata accessor for FMDeviceCellViewModel(0);
            return sub_1001104A8(v37 + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)) + *(*(v38 - 8) + 72) * v36 + *(v38 + 24), a2);
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "FMDevicesListDataSource: Not returning any device... out of bound", v41, 2u);
  }

  v42 = type metadata accessor for FMIPItem();
  return (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
}

void sub_10031C438()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);

  v2 = FMIPManager.devices.getter();

  v3 = *(*(v1 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = v3;
  sub_10031D668(v2, v3, 0);
}

unint64_t sub_10031C530(void *a1)
{
  v3 = type metadata accessor for FMDeviceCellViewModel(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

  sub_10007EBC0(&unk_1006BBCD0, &qword_10055D928);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel;
  v15 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel);
  if (result >= *(v15 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 < *(*(v15 + 8 * result + 32) + 16))
  {
    v16 = IndexPath.section.getter();
    result = IndexPath.row.getter();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = *(v1 + v14);
      if (v16 < *(v17 + 16))
      {
        if ((result & 0x8000000000000000) == 0)
        {
          v18 = *(v17 + 8 * v16 + 32);
          if (result < *(v18 + 16))
          {
            sub_10032A93C(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v6, type metadata accessor for FMDeviceCellViewModel);
            result = IndexPath.section.getter();
            if ((result & 0x8000000000000000) == 0)
            {
              v19 = *(v1 + v14);
              if (result < *(v19 + 16))
              {
                v20 = *(*(v19 + 8 * result + 32) + 16);
                v21 = IndexPath.row.getter() == v20 - 1;
                *(v11 + qword_1006B72D0) = v21;
                v22 = qword_1006B72B8;
                [*(v11 + qword_1006B72B8) setHidden:?];
                v23 = [v11 containerView];
                [v23 bounds];
                v25 = v24;

                v26 = *(v11 + v22);
                v27 = sub_10052B310();
                sub_100046EA0();
                [v26 setFrame:{v27, v25 + -1.0, v28, 1.0}];
                (*((swift_isaMask & *v11) + 0x168))(v6);
                sub_10032A9A4(v6, type metadata accessor for FMDeviceCellViewModel);
                return v11;
              }

              goto LABEL_22;
            }

LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            return result;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:

  v29 = objc_allocWithZone(UITableViewCell);

  return [v29 init];
}

void sub_10031CA54(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = v3;
  sub_10031D668(a2, v3, 0);
}

uint64_t sub_10031CAD4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  (*(v10 + 16))(v12, a3, v9);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v6;
    v21 = v20;
    aBlock[0] = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v22 = v14;
    v23 = FMIPDevice.debugDescription.getter();
    v25 = v24;
    (*(v10 + 8))(v12, v9);
    v26 = sub_100005B4C(v23, v25, aBlock);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDevicesListDataSource: didUpdate image %@ device %s", v18, 0x16u);
    sub_100012DF0(v19, &unk_1006AF760, &qword_100552DB0);

    sub_100006060(v21);
    v6 = v36;

    a1 = v35;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  v29 = v37;
  *(v28 + 16) = v37;
  *(v28 + 24) = a1;
  aBlock[4] = sub_10032AAD0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100637048;
  v30 = _Block_copy(aBlock);
  v31 = v29;

  v32 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  v33 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v42 + 8))(v33, v6);
  return (*(v39 + 8))(v32, v41);
}

uint64_t sub_10031D034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWallTime();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v22 = &v20 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delayedUpdateWorkItem;
  if (*(a1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delayedUpdateWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_10032AAD8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006370C0;
  _Block_copy(aBlock);
  v25 = _swiftEmptyArrayStorage;
  sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v12 = DispatchWorkItem.init(flags:block:)();

  *(a1 + v9) = v12;

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = v21;
  static DispatchWallTime.now()();
  v15 = v22;
  + infix(_:_:)();
  v16 = *(v23 + 8);
  v17 = v14;
  v18 = v24;
  v16(v17, v24);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

  return (v16)(v15, v18);
}

void sub_10031D3B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = FMIPManager.devices.getter();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);
      v6 = v4;

      v7 = *(v5 + 40);

      v8 = *&v7[OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation];
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }

    sub_10031D668(v3, v8, 0);
  }
}

void sub_10031D4B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);

  v4 = FMIPManager.devices.getter();

  v5 = *(*(v3 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v6 = v5;
  sub_10031D668(v4, v5, a2);
}

void sub_10031D56C(uint64_t a1, unint64_t a2)
{

  v3 = FMIPManager.devices.getter();

  if (a2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(a2 + 32);
  }

  v5 = v4;
LABEL_9:
  v6 = v5;
  sub_10031D668(v3, v5, 0);
}

double sub_10031D668(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  *&result = __chkstk_darwin(v12).n128_u64[0];
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled] == 1)
  {
    v38 = v14;
    if ([*&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_tableView] isEditing])
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100005B14(v18, qword_1006D4630);
      v39 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v39, v19, "FMDevicesListDataSource: Ignoring data source update due to editing mode", v20, 2u);
      }

      v21 = v39;
    }

    else
    {
      v39 = a2;
      v36 = v13;
      v37 = v9;
      v22 = *&v4[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel];
      v23 = *(a1 + 16);

      v24 = 0;
      while (v23 != v24)
      {
        type metadata accessor for FMIPDevice();
        ++v24;
        if (FMIPDevice.isBrassStatusTrue.getter())
        {
          v25 = [objc_opt_self() sharedInstance];
          v45 = State.rawValue.getter;
          v46 = 0;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_1001A44B4;
          v44 = &unk_100636F08;
          v26 = _Block_copy(&aBlock);
          [v25 downloadWithReply:v26];
          _Block_release(v26);

          break;
        }
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v4;
      *(v27 + 24) = a1;
      *(v27 + 32) = v39;
      *(v27 + 40) = v22;
      *(v27 + 48) = v5 & 1;
      if (v23 < 0xB || (v5 & 1) != 0)
      {
        v32 = v39;
        v33 = v39;
        v34 = v4;

        sub_10031DC38(v34, a1, v32, v22, v5 & 1);
      }

      else
      {
        v28 = swift_allocObject();
        *(v28 + 16) = sub_10032AA68;
        *(v28 + 24) = v27;
        v45 = sub_100009624;
        v46 = v28;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_100004AE4;
        v44 = &unk_100636F80;
        v29 = _Block_copy(&aBlock);
        v30 = v39;
        v31 = v4;

        static DispatchQoS.unspecified.getter();
        v40 = _swiftEmptyArrayStorage;
        sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
        sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v11, v8);
        (*(v36 + 8))(v17, v38);
      }
    }
  }

  return result;
}

void sub_10031DC38(char *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v37 = *(v13 - 8);
  v38 = v13;
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031E990(a2, a3);
  v17 = v16;

  sub_10034A06C(v18);
  v20 = v19;

  v21 = sub_10052A81C(v20);

  sub_100036B80(v21, v22, v23);

  if (sub_100245174(v17, a4) & 1) == 0 || (a5)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = *(v17 + 16);

      *(v27 + 12) = 2048;
      *(v27 + 14) = *(a4 + 16);

      _os_log_impl(&_mh_execute_header, v25, v26, "FMDevicesListDataSource: reloading table view new: %ld, old: %ld", v27, 0x16u);
    }

    else
    {
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v17;
    *(v28 + 24) = a1;
    v29 = objc_opt_self();

    v30 = a1;
    v31 = [v29 currentThread];
    v32 = [v31 isMainThread];

    if (v32)
    {
      sub_10031E1C0(v17, v30);
    }

    else
    {

      sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
      v33 = static OS_dispatch_queue.main.getter();
      v34 = swift_allocObject();
      *(v34 + 16) = sub_10032AA78;
      *(v34 + 24) = v28;
      aBlock[4] = sub_1000CE0E8;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100636FF8;
      v35 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);

      (*(v39 + 8))(v12, v10);
      (*(v37 + 8))(v15, v38);
    }
  }

  else
  {
  }
}

double sub_10031E1C0(uint64_t a1, uint64_t a2)
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
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    sub_10007EBC0(&unk_1006C0340, &unk_1005524C0);
    v9 = Array.debugDescription.getter();
    v11 = sub_100005B4C(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesListDataSource: model update with %s", v7, 0xCu);
    sub_100006060(v8);
  }

  *(a2 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel) = a1;

  sub_10031E3E8();
  sub_100037FA8(v12, v13, v14);
  v15 = a2 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(a2, &off_100636A60, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_10031E3E8()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  while (v4)
  {
    v6 = *v5++;
    v7 = *(v6 + 16);
    --v4;
    v8 = __OFADD__(v2, v7);
    v2 += v7;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v9 = [objc_opt_self() mainBundle];
  v21._object = 0x8000000100590FE0;
  v10._object = 0x8000000100590FB0;
  v21._countAndFlagsBits = 0xD000000000000036;
  v10._countAndFlagsBits = 0xD000000000000024;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v21);

  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100552220;
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_10008EE84();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = String.init(format:_:)();
  v18 = v17;

  v19 = (v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_listSubtitle);
  *v19 = v16;
  v19[1] = v18;

  return result;
}

double sub_10031E57C()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDevicesListDataSource: updateListTitle", v8, 2u);
  }

  v9 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator) + 56);
  v10 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10032A93C(v9 + v10, v4, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v11 = *(v4 + 1);
    v12 = *(v4 + 2);

    if (v12 > 1)
    {
      if (v12 == 3)
      {
        return result;
      }

      if (v12 == 2)
      {
        v14 = [objc_opt_self() mainBundle];
        v15 = 0xD000000000000011;
        v29 = 0x8000000100590F80;
        v16 = 0x8000000100590F60;
        v17 = 0xD000000000000023;
        goto LABEL_15;
      }

LABEL_19:
      v14 = [objc_opt_self() mainBundle];
      v31._object = 0x8000000100590EF0;
      v26._countAndFlagsBits = 0x5F53454349564544;
      v26._object = 0xEC000000454D4F48;
      v31._countAndFlagsBits = 0xD00000000000001ELL;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v14, v27, v31);
      countAndFlagsBits = v28._countAndFlagsBits;
      object = v28._object;
      sub_100091880(v11, v12);
      goto LABEL_17;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v14 = [objc_opt_self() mainBundle];
        v15 = 0xD000000000000010;
        v29 = 0x8000000100590F30;
        v16 = 0x8000000100590F10;
        v17 = 0xD000000000000022;
LABEL_15:
        v19.super.isa = v14;
        v20 = 0;
        v21 = 0xE000000000000000;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    v18 = [objc_opt_self() mainBundle];
  }

  else
  {
    sub_10032A9A4(v4, type metadata accessor for FMSelectedSection);
    v18 = [objc_opt_self() mainBundle];
  }

  v14 = v18;
  v29 = 0x8000000100587660;
  v15 = 0x5F53454349564544;
  v16 = 0xEB00000000424154;
  v19.super.isa = v14;
  v20 = 0;
  v21 = 0xE000000000000000;
  v17 = 0xD00000000000001DLL;
LABEL_16:
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, 0, v19, *&v20, *&v17);
  countAndFlagsBits = v22._countAndFlagsBits;
  object = v22._object;
LABEL_17:

  v25 = (v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource__listTitle);
  *v25 = countAndFlagsBits;
  v25[1] = object;

  return result;
}

void sub_10031E990(uint64_t a1, void *a2)
{
  v394 = a2;
  v3 = type metadata accessor for FMDeviceCellViewModel(0);
  v391 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v413 = &v338 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v412 = &v338 - v6;
  __chkstk_darwin(v7);
  v354 = &v338 - v8;
  __chkstk_darwin(v9);
  v361 = &v338 - v10;
  v396 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v428 = *(v396 - 8);
  __chkstk_darwin(v396);
  v381 = &v338 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v373 = &v338 - v13;
  __chkstk_darwin(v14);
  v359 = &v338 - v15;
  v16 = type metadata accessor for FMIPDeviceImageSize();
  v426 = *(v16 - 8);
  __chkstk_darwin(v16);
  v368 = &v338 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v338 - v19;
  __chkstk_darwin(v21);
  v395 = &v338 - v22;
  __chkstk_darwin(v23);
  v360 = &v338 - v24;
  v25 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v25 - 8);
  v380 = &v338 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v358 = &v338 - v28;
  __chkstk_darwin(v29);
  v367 = &v338 - v30;
  __chkstk_darwin(v31);
  v33 = &v338 - v32;
  v410 = type metadata accessor for FMIPItem();
  v34 = *(v410 - 8);
  __chkstk_darwin(v410);
  v342 = &v338 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v350 = &v338 - v37;
  __chkstk_darwin(v38);
  v404 = &v338 - v39;
  __chkstk_darwin(v40);
  v403 = &v338 - v41;
  __chkstk_darwin(v42);
  v369 = &v338 - v43;
  v372 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v372);
  v351 = &v338 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v371 = &v338 - v46;
  v47 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v47 - 8);
  v379 = &v338 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v353 = &v338 - v50;
  __chkstk_darwin(v51);
  v400 = &v338 - v52;
  v427 = type metadata accessor for FMIPItemGroup();
  v53 = *(v427 - 8);
  __chkstk_darwin(v427);
  v378 = &v338 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v393 = &v338 - v56;
  v57 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v57 - 8);
  v377 = &v338 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v341 = &v338 - v60;
  __chkstk_darwin(v61);
  v349 = &v338 - v62;
  __chkstk_darwin(v63);
  v399 = &v338 - v64;
  v65 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v65 - 8);
  v376 = &v338 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v340 = &v338 - v68;
  __chkstk_darwin(v69);
  v348 = &v338 - v70;
  __chkstk_darwin(v71);
  v398 = &v338 - v72;
  v425 = type metadata accessor for FMIPSafeLocationType();
  v73 = *(v425 - 8);
  __chkstk_darwin(v425);
  v375 = &v338 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  v339 = &v338 - v76;
  __chkstk_darwin(v77);
  v347 = &v338 - v78;
  __chkstk_darwin(v79);
  v397 = &v338 - v80;
  v392 = 0;
  v81 = type metadata accessor for FMIPDevice();
  __chkstk_darwin(v81);
  v401 = &v338 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v355 = &v338 - v84;
  __chkstk_darwin(v85);
  v357 = &v338 - v86;
  __chkstk_darwin(v87);
  __chkstk_darwin(v88);
  v352 = &v338 - v89;
  v95 = __chkstk_darwin(v90);
  v96 = &v338 - v91;
  v97 = &_swiftEmptyDictionarySingleton;
  v436 = &_swiftEmptyDictionarySingleton;
  v98 = *(a1 + 16);
  if (v98)
  {
    v99 = a1;
    v418 = v92;
    v100 = 0;
    v102 = *(v93 + 16);
    v101 = (v93 + 16);
    v424 = v99 + ((*(v101 + 64) + 32) & ~*(v101 + 64));
    v429 = v101 - 1;
    v390 = OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator;
    v421 = (v73 + 104);
    v419 = (v73 + 8);
    v420 = enum case for FMIPSafeLocationType.home(_:);
    v423 = (v53 + 48);
    v382 = (v53 + 32);
    v384 = (v53 + 8);
    v407 = (v34 + 16);
    v408 = (v34 + 32);
    v409 = (v34 + 8);
    v402 = (v34 + 56);
    v362 = (v34 + 48);
    v389 = enum case for FMIPDeviceImageSize.list(_:);
    v388 = (v426 + 13);
    v386 = (v428 + 1);
    v385 = (v426 + 1);
    v422 = v101[7];
    v95.n128_u64[0] = 136315138;
    v370 = v95;
    v95.n128_u64[0] = 136315394;
    v338 = v95;
    v405 = v16;
    v374 = v20;
    v363 = v33;
    v414 = v34;
    v103 = v102;
    v104 = v427;
    v433 = v101;
    v105 = v401;
    v430 = &v338 - v91;
    v106 = v406;
    v107 = v94;
    v431 = v94;
    v383 = v98;
    v432 = v102;
    v387 = (v426 + 2);
    while (1)
    {
      v103(v96, v424 + v422 * v100, v107);
      if ((sub_100321DA8(v96) & 1) == 0)
      {
        (*v429)(v96, v107);
        goto LABEL_4;
      }

      v415 = v100;
      v428 = *(v106 + v390);
      v108 = v397;
      v109 = v425;
      v417 = *v421;
      v417(v397, v420, v425);

      v110 = v398;
      FMIPDevice.bestLocation.getter();
      v111 = v399;
      sub_1000E698C(v108, v110, v399);

      sub_100012DF0(v111, &unk_1006BB1B0, qword_10055C5C0);
      sub_100012DF0(v110, &unk_1006C0220, qword_100553770);
      v416 = *v419;
      v416(v108, v109);
      v112 = FMIPDevice.ownerIdentifier.getter();
      if (!v436[2])
      {
        break;
      }

      sub_10000726C(v112, v113);
      v115 = v114;

      if ((v115 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      v121 = v400;
      FMIPDevice.itemGroup.getter();
      v122 = *v423;
      v123 = (*v423)(v121, 1, v104);
      v124 = v431;
      v103 = v432;
      v426 = v122;
      if (v123 == 1)
      {
        sub_100012DF0(v121, &unk_1006BB1C0, &unk_1005534F0);
        goto LABEL_24;
      }

      (*v382)(v393, v121, v104);
      v125 = v428[7];
      v126 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      v127 = v125 + v126;
      v128 = v371;
      sub_10032A93C(v127, v371, type metadata accessor for FMSelectedSection);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_10032A9A4(v128, type metadata accessor for FMSelectedSection);
LABEL_23:
        (*v384)(v393, v104);
LABEL_24:
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v147 = type metadata accessor for Logger();
        sub_100005B14(v147, qword_1006D4630);
        v103(v105, v96, v124);
        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v434[0] = v151;
          *v150 = v370.n128_u32[0];
          v103(v418, v105, v124);
          v152 = String.init<A>(describing:)();
          v154 = v153;
          v411 = *v429;
          v411(v105, v124);
          v155 = sub_100005B4C(v152, v154, v434);

          *(v150 + 4) = v155;
          _os_log_impl(&_mh_execute_header, v148, v149, "FMDevicesListDataSource: Using non-primary part for: %s", v150, 0xCu);
          sub_100006060(v151);
          v104 = v427;
        }

        else
        {

          v411 = *v429;
          v411(v105, v124);
        }

        v156 = v379;
        v157 = v428;
        v158 = v375;
        v159 = v425;
        v417(v375, v420, v425);

        v160 = v376;
        v161 = v430;
        FMIPDevice.bestLocation.getter();
        v162 = v377;
        sub_1000E698C(v158, v160, v377);

        sub_100012DF0(v160, &unk_1006C0220, qword_100553770);
        v416(v158, v159);
        v163 = type metadata accessor for FMIPSafeLocation();
        LODWORD(v417) = (*(*(v163 - 8) + 48))(v162, 1, v163);
        sub_100012DF0(v162, &unk_1006BB1B0, qword_10055C5C0);
        FMIPDevice.itemGroup.getter();
        if ((v426)(v156, 1, v104) == 1)
        {
          sub_100012DF0(v156, &unk_1006BB1C0, &unk_1005534F0);
          v164 = v395;
          v165 = v405;
          (*v388)(v395, v389, v405);
          v166 = v161;
          v167 = v418;
          v168 = v431;
          v432(v418, v161, v431);
          (*v387)(v368, v164, v165);
          v169 = objc_opt_self();

          v170 = [v169 mainScreen];
          [v170 scale];

          v171 = v373;
          FMIPDeviceImageCacheRequest.init(device:size:scale:)();
          dispatch thunk of FMImageCache.cachedImage(for:completion:)();
          (*v386)(v171, v396);

          v172 = v434[0];
          (*v385)(v164, v165);
        }

        else
        {
          (*v382)(v378, v156, v104);
          v173 = *(v157[3] + 24);

          v174 = FMIPItemGroup.items.getter();
          v426 = sub_10053840C(v174);

          v175 = v374;
          v176 = v405;
          (*v388)(v374, v389, v405);
          v177 = v418;
          v179 = v431;
          v178 = v432;
          v432(v418, v161, v431);
          v180 = *v387;
          v181 = v395;
          (*v387)(v395, v175, v176);
          v182 = objc_opt_self();
          v183 = [v182 mainScreen];
          [v183 scale];

          FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
          v426 = v173;
          dispatch thunk of FMImageCache.cachedImage(for:completion:)();
          v172 = v434[0];
          if (v434[0])
          {

            v184 = v405;
            v185 = v374;
            (*v386)(v381, v396);
          }

          else
          {
            v178(v177, v430, v179);
            v185 = v374;
            v184 = v405;
            v180(v181, v374, v405);
            v186 = [v182 mainScreen];
            [v186 scale];

            v187 = v373;
            FMIPDeviceImageCacheRequest.init(device:size:scale:)();
            dispatch thunk of FMImageCache.cachedImage(for:completion:)();
            v188 = *v386;
            v189 = v396;
            (*v386)(v187, v396);

            v172 = v435;
            v188(v381, v189);
          }

          (*v385)(v185, v184);
          (*v384)(v378, v427);
          v167 = v418;
          v166 = v430;
          v168 = v431;
          v157 = v428;
        }

        v190 = v417 != 1;
        v428 = v172;

        v191 = FMIPManager.familyMembers.getter();

        v432(v167, v166, v168);
        v192 = v380;
        (*v402)(v380, 1, 1, v410);
        v193 = *(v157[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);

        v194 = v394;
        v195 = v394;

        v196 = v412;
        sub_1003104DC(v157, v167, v192, v172, v194, (v193 & 1) == 0, v191, v190, v412, 0, 0);
        v197 = FMIPDevice.ownerIdentifier.getter();
        v199 = v198;
        sub_10032A93C(v196, v413, type metadata accessor for FMDeviceCellViewModel);
        v200 = v436;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v434[0] = v200;
        v203 = sub_10000726C(v197, v199);
        v204 = v200[2];
        v205 = (v202 & 1) == 0;
        v206 = v204 + v205;
        if (__OFADD__(v204, v205))
        {
          goto LABEL_140;
        }

        v207 = v202;
        v96 = v166;
        if (v200[3] >= v206)
        {
          v98 = v383;
          v103 = v432;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v202 & 1) == 0)
            {
              goto LABEL_141;
            }
          }

          else
          {
            sub_1001BDC24();
            if ((v207 & 1) == 0)
            {
              goto LABEL_141;
            }
          }
        }

        else
        {
          sub_1001B5C98(v206, isUniquelyReferenced_nonNull_native);
          v208 = sub_10000726C(v197, v199);
          v98 = v383;
          if ((v207 & 1) != (v209 & 1))
          {
            goto LABEL_143;
          }

          v203 = v208;
          v103 = v432;
          if ((v207 & 1) == 0)
          {
            goto LABEL_141;
          }
        }

        v210 = *(v434[0][7] + 8 * v203);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v210 = sub_10008BBF0(0, v210[2] + 1, 1, v210);
        }

        v211 = v428;
        v213 = v210[2];
        v212 = v210[3];
        if (v213 >= v212 >> 1)
        {
          v210 = sub_10008BBF0((v212 > 1), v213 + 1, 1, v210);
        }

        v210[2] = v213 + 1;
        sub_10032AA04(v413, v210 + ((*(v391 + 80) + 32) & ~*(v391 + 80)) + *(v391 + 72) * v213);

        *(v434[0][7] + 8 * v203) = v210;

        sub_10032A9A4(v412, type metadata accessor for FMDeviceCellViewModel);
        v214 = v431;
        v411(v96, v431);
        v107 = v214;

        v436 = v434[0];
        v104 = v427;
        v105 = v401;
        v100 = v415;
        v106 = v406;
        goto LABEL_4;
      }

      v129 = *(v128 + 8);
      v130 = *(v128 + 16);

      if (v130 < 2)
      {
        goto LABEL_23;
      }

      if (v130 != 2)
      {
        if (v130 == 3)
        {
          goto LABEL_23;
        }

        sub_100091880(v129, v130);
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v131 = type metadata accessor for Logger();
      v132 = sub_100005B14(v131, qword_1006D4630);
      v133 = v352;
      v103(v352, v96, v124);
      v346 = v132;
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.default.getter();
      v136 = os_log_type_enabled(v134, v135);
      v137 = v124;
      v138 = v353;
      if (v136)
      {
        v139 = v133;
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v434[0] = v141;
        *v140 = v370.n128_u32[0];
        v103(v418, v139, v137);
        v142 = String.init<A>(describing:)();
        v144 = v143;
        v145 = v139;
        v96 = v430;
        v356 = *v429;
        v356(v145, v137);
        v146 = sub_100005B4C(v142, v144, v434);
        v103 = v432;

        *(v140 + 4) = v146;
        v122 = v426;
        _os_log_impl(&_mh_execute_header, v134, v135, "FMDevicesListDataSource: Using item group for: %s", v140, 0xCu);
        sub_100006060(v141);
        v104 = v427;
      }

      else
      {

        v356 = *v429;
        v356(v133, v137);
      }

      v106 = v406;
      FMIPDevice.itemGroup.getter();
      if ((v122)(v138, 1, v104) == 1)
      {
        sub_100012DF0(v138, &unk_1006BB1C0, &unk_1005534F0);
        v215 = _swiftEmptySetSingleton;
      }

      else
      {
        v215 = FMIPItemGroup.groupedItems.getter();
        (*v384)(v138, v104);
      }

      v216 = v410;
      v217 = 0;
      v411 = v215;
      v220 = v215[7];
      v219 = v215 + 7;
      v218 = v220;
      v221 = 1 << *(v219 - 24);
      if (v221 < 64)
      {
        v222 = ~(-1 << v221);
      }

      else
      {
        v222 = -1;
      }

      v223 = v222 & v218;
      v224 = (v221 + 63) >> 6;
      v366 = v219;
      v365 = v224;
      if ((v222 & v218) != 0)
      {
        while (1)
        {
LABEL_59:
          v226 = *(*(v411 + 6) + ((v217 << 9) | (8 * __clz(__rbit64(v223)))));
          v223 &= v223 - 1;
          v227 = (v226 + 7);
          v228 = 1 << *(v226 + 32);
          v229 = v228 < 64 ? ~(-1 << v228) : -1;
          v230 = v229 & v226[7];
          v231 = (v228 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v232 = 0;
          v233 = v414;
          v426 = v226;
          if (v230)
          {
            while (1)
            {
              v234 = v232;
LABEL_67:
              v235 = v226[6] + *(v233 + 72) * (__clz(__rbit64(v230)) | (v234 << 6));
              v236 = v233;
              v237 = v403;
              (*(v233 + 16))(v403, v235, v216);
              v238 = *(v236 + 32);
              v239 = v404;
              v238(v404, v237, v216);
              if (FMIPItem.primaryItemPart.getter())
              {
                break;
              }

              v230 &= v230 - 1;
              (*v409)(v239, v216);
              v232 = v234;
              v233 = v414;
              v96 = v430;
              v226 = v426;
              if (!v230)
              {
                goto LABEL_64;
              }
            }

            v243 = v367;
            v238(v367, v239, v216);
            v244 = *v402;
            (*v402)(v243, 0, 1, v216);
            v241 = v363;
            v238(v363, v243, v216);
            v364 = v244;
            v244(v241, 0, 1, v216);
            v242 = *v362;
            v96 = v430;
          }

          else
          {
            while (1)
            {
LABEL_64:
              v234 = v232 + 1;
              if (__OFADD__(v232, 1))
              {
                __break(1u);
                goto LABEL_138;
              }

              if (v234 >= v231)
              {
                break;
              }

              v230 = *&v227[8 * v234];
              ++v232;
              if (v230)
              {
                goto LABEL_67;
              }
            }

            v240 = v367;
            v364 = *v402;
            v364(v367, 1, 1, v216);
            v241 = v363;
            sub_1000F0690(v226, v363);
            v242 = *v362;
            if ((*v362)(v240, 1, v216) != 1)
            {
              sub_100012DF0(v240, &qword_1006B07D0, qword_100552820);
            }
          }

          v103 = v432;
          v216 = v410;
          v245 = v242(v241, 1, v410);
          v104 = v427;
          if (v245 == 1)
          {
            break;
          }

          v246 = v369;
          (*v408)(v369, v241, v216);
          v106 = v406;
          if (sub_100322BE0(v246))
          {
            v247 = v428[7];
            v248 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
            swift_beginAccess();
            v249 = v351;
            sub_10032A93C(v247 + v248, v351, type metadata accessor for FMSelectedSection);
            if (swift_getEnumCaseMultiPayload() == 6)
            {
              v250 = *(v249 + 8);
              v251 = *(v249 + 16);

              sub_100091880(v250, v251);
              if (v251 >= 4 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
              {
                v252 = v339;
                v253 = v425;
                v417(v339, v420, v425);

                v254 = v340;
                FMIPItem.location.getter();
                v255 = v341;
                sub_1000E698C(v252, v254, v341);
                LODWORD(v345) = 0;
                goto LABEL_83;
              }
            }

            else
            {
              sub_10032A9A4(v249, type metadata accessor for FMSelectedSection);
            }

            v252 = v347;
            v253 = v425;
            v417(v347, v420, v425);

            v254 = v348;
            FMIPDevice.bestLocation.getter();
            v255 = v349;
            sub_1000E698C(v252, v254, v349);
            LODWORD(v345) = 1;
LABEL_83:

            sub_100012DF0(v254, &unk_1006C0220, qword_100553770);
            v416(v252, v253);
            v256 = type metadata accessor for FMIPSafeLocation();
            LODWORD(v344) = (*(*(v256 - 8) + 48))(v255, 1, v256);
            sub_100012DF0(v255, &unk_1006BB1B0, qword_10055C5C0);
            v257 = v360;
            v258 = v405;
            (*v388)(v360, v389, v405);
            v259 = v418;
            v432(v418, v96, v431);
            v260 = v395;
            v343 = *v387;
            (v343)(v395, v257, v258);
            v261 = objc_opt_self();

            v262 = [v261 mainScreen];
            [v262 scale];

            FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
            dispatch thunk of FMImageCache.cachedImage(for:completion:)();
            v263 = v386;
            if (v434[0])
            {
              v343 = v434[0];

              v264 = *v263;
              v265 = v396;
            }

            else
            {
              v432(v259, v430, v431);
              (v343)(v260, v360, v405);
              v266 = [v261 mainScreen];
              [v266 scale];

              v267 = v373;
              FMIPDeviceImageCacheRequest.init(device:size:scale:)();
              dispatch thunk of FMImageCache.cachedImage(for:completion:)();
              v264 = *v263;
              v268 = v267;
              v269 = v396;
              (*v263)(v268, v396);

              v265 = v269;
              v343 = v435;
            }

            v270 = v358;
            v271 = v407;
            v272 = v364;
            v264(v359, v265);
            (*v385)(v360, v405);
            v273 = v428;

            v364 = FMIPManager.familyMembers.getter();

            v432(v357, v430, v431);
            if (v345)
            {
              v274 = *v271;
              v275 = v410;
              v274(v270, v369, v410);
              v272(v270, 0, 1, v275);
              v276 = *(v273[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
              v277 = v426;
              v278 = v426[2];
              if (v278)
              {
                v279 = sub_10008C8B4(v426[2], 0);
                sub_1004A2330(v434, &v279[(*(v414 + 80) + 32) & ~*(v414 + 80)], v278, v277);
                v281 = v280;
                v426 = v434[0];
                v345 = v434[4];

                sub_1002204D4(v426);
                if (v281 != v278)
                {
                  goto LABEL_142;
                }

                v282 = v369;
                v271 = v407;
                v273 = v428;
              }

              else
              {

                v279 = _swiftEmptyArrayStorage;
                v282 = v369;
                v271 = v407;
              }

              v283 = v276;
            }

            else
            {
              v272(v270, 1, 1, v410);
              v283 = *(v273[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);

              v279 = 0;
              v282 = v369;
            }

            v284 = v344 != 1;
            v285 = v343;
            v426 = v343;
            v286 = v394;
            v287 = v394;
            sub_1003104DC(v273, v357, v358, v285, v286, v283 ^ 1, v364, v284, v361, v279, 1u);
            v288 = *v271;
            v289 = v350;
            v290 = v410;
            (*v271)(v350, v282, v410);
            v291 = v355;
            v292 = v431;
            v432(v355, v430, v431);
            v293 = Logger.logObject.getter();
            LODWORD(v345) = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v293, v345))
            {
              v294 = swift_slowAlloc();
              v344 = swift_slowAlloc();
              v434[0] = v344;
              *v294 = v338.n128_u32[0];
              v288(v342, v289, v290);
              v295 = String.init<A>(describing:)();
              v297 = v296;
              v364 = *v409;
              (v364)(v289, v290);
              v298 = sub_100005B4C(v295, v297, v434);

              *(v294 + 4) = v298;
              *(v294 + 12) = 2080;
              v299 = v355;
              v432(v418, v355, v292);
              v300 = String.init<A>(describing:)();
              v302 = v301;
              v356(v299, v292);
              v303 = sub_100005B4C(v300, v302, v434);

              *(v294 + 14) = v303;
              _os_log_impl(&_mh_execute_header, v293, v345, "FMDevicesListDataSource: Using part %s for: %s", v294, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v356(v291, v292);
              v364 = *v409;
              (v364)(v289, v290);
            }

            v104 = v427;
            v96 = v430;
            v304 = FMIPDevice.ownerIdentifier.getter();
            v307 = sub_1004B1E10(v434, v304, v305);
            v308 = v369;
            if (*v306)
            {
              v309 = v306;
              sub_10032A93C(v361, v354, type metadata accessor for FMDeviceCellViewModel);
              v310 = *v309;
              v311 = swift_isUniquelyReferenced_nonNull_native();
              *v309 = v310;
              if ((v311 & 1) == 0)
              {
                v310 = sub_10008BBF0(0, v310[2] + 1, 1, v310);
                *v309 = v310;
              }

              v313 = v310[2];
              v312 = v310[3];
              if (v313 >= v312 >> 1)
              {
                v310 = sub_10008BBF0((v312 > 1), v313 + 1, 1, v310);
                *v309 = v310;
              }

              v310[2] = v313 + 1;
              sub_10032AA04(v354, v310 + ((*(v391 + 80) + 32) & ~*(v391 + 80)) + *(v391 + 72) * v313);
              (v307)(v434, 0);

              sub_10032A9A4(v361, type metadata accessor for FMDeviceCellViewModel);
              v314 = v308;
              v216 = v410;
              (v364)(v314, v410);
              v104 = v427;
            }

            else
            {
              (v307)(v434, 0);

              sub_10032A9A4(v361, type metadata accessor for FMDeviceCellViewModel);
              v315 = v308;
              v216 = v410;
              (v364)(v315, v410);
            }

            v103 = v432;
LABEL_104:
            v106 = v406;
            goto LABEL_105;
          }

          (*v409)(v246, v216);

LABEL_105:
          v219 = v366;
          v224 = v365;
          if (!v223)
          {
            goto LABEL_55;
          }
        }

        sub_100012DF0(v241, &qword_1006B07D0, qword_100552820);
        goto LABEL_104;
      }

      while (1)
      {
LABEL_55:
        v225 = v217 + 1;
        if (__OFADD__(v217, 1))
        {
          goto LABEL_139;
        }

        if (v225 >= v224)
        {
          break;
        }

        v223 = v219[v225];
        ++v217;
        if (v223)
        {
          v217 = v225;
          goto LABEL_59;
        }
      }

      (*v384)(v393, v104);
      v107 = v431;
      v356(v96, v431);

      v105 = v401;
      v98 = v383;
      v100 = v415;
LABEL_4:
      if (++v100 == v98)
      {
        v97 = v436;
        goto LABEL_111;
      }
    }

LABEL_10:
    v116 = FMIPDevice.ownerIdentifier.getter();
    v118 = v117;
    v119 = v436;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v434[0] = v119;
    sub_1001BB384(_swiftEmptyArrayStorage, v116, v118, v120);

    v436 = v434[0];
    goto LABEL_11;
  }

LABEL_111:
  v316 = 1 << *(v97 + 32);
  v317 = -1;
  if (v316 < 64)
  {
    v317 = ~(-1 << v316);
  }

  v318 = v317 & v97[8];
  v319 = (v316 + 63) >> 6;

  v320 = 0;
  v321 = _swiftEmptyArrayStorage;
  v433 = _swiftEmptyArrayStorage;
  while (v318)
  {
LABEL_119:
    v323 = __clz(__rbit64(v318)) | (v320 << 6);
    v324 = (v97[6] + 16 * v323);
    v326 = *v324;
    v325 = v324[1];
    v434[0] = *(v97[7] + 8 * v323);
    swift_bridgeObjectRetain_n();

    v327 = v392;
    sub_100325EBC(v434);
    v392 = v327;
    if (v327)
    {
      goto LABEL_144;
    }

    v318 &= v318 - 1;

    v328 = v434[0];
    if (v326 == FMIPDefaultOwnerIdentifier.getter() && v325 == v329)
    {

LABEL_131:

      v433 = v328;
    }

    else
    {
      v331 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v331)
      {
        goto LABEL_131;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v321 = sub_10008BBCC(0, v321[2] + 1, 1, v321);
      }

      v333 = v321[2];
      v332 = v321[3];
      if (v333 >= v332 >> 1)
      {
        v321 = sub_10008BBCC((v332 > 1), v333 + 1, 1, v321);
      }

      v321[2] = v333 + 1;
      v321[v333 + 4] = v328;
    }
  }

  while (1)
  {
    v322 = v320 + 1;
    if (__OFADD__(v320, 1))
    {
      break;
    }

    if (v322 >= v319)
    {

      v434[0] = v321;

      v334 = v392;
      sub_100325E50(v434);
      if (v334)
      {
        goto LABEL_144;
      }

      v335 = v434[0];
      v336 = v434[0][2];
      v337 = swift_isUniquelyReferenced_nonNull_native();
      v434[0] = v335;
      if (!v337 || v336 >= v335[3] >> 1)
      {
        v434[0] = sub_10008BBCC(v337, v336 + 1, 1, v335);
      }

      sub_1003CD648(0, 0, 1, v433);

      return;
    }

    v318 = v97[v322 + 8];
    ++v320;
    if (v318)
    {
      v320 = v322;
      goto LABEL_119;
    }
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_144:

  __break(1u);
}

BOOL sub_10032198C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceCellViewModel(0);
  v5 = *(v4 + 60);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != v7)
  {
    return v6 < v7;
  }

  v8 = *(v4 + 56);
  v9 = round(*(a1 + v8));
  v10 = v9 > -9.22337204e18;
  if (v9 >= 9.22337204e18)
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 30 * (v9 / 30);
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = round(*(a2 + v8));
  if (v13 > -9.22337204e18 && v13 < 9.22337204e18)
  {
    v15 = 30 * (v13 / 30);
    if (v11 != v15)
    {
      if (v10)
      {
        v16 = 30 * (v9 / 30);
        return v16 < v15;
      }

LABEL_19:
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      return v16 < v15;
    }

LABEL_16:
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    v20 = *(a2 + 16);
    v21 = *(a2 + 24);

    v22._countAndFlagsBits = v20;
    v22._object = v21;
    String.append(_:)(v22);
    sub_100035F3C();
    v23 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    return v23 == -1;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  v16 = 30 * (v9 / 30);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  return v16 < v15;
}

BOOL sub_100321BCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16))
  {
    v4 = type metadata accessor for FMDeviceCellViewModel(0);
    v5 = v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  if (*(v3 + 16))
  {
    v9 = type metadata accessor for FMDeviceCellViewModel(0);
    v10 = v3 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  sub_100035F3C();
  v14 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  return v14 == -1;
}

uint64_t sub_100321DA8(uint64_t a1)
{
  v119 = a1;
  v2 = type metadata accessor for FMIPDeviceState();
  v114 = *(v2 - 8);
  v115 = v2;
  __chkstk_darwin(v2);
  v113 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v112 = &v104 - v5;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  v117 = v6;
  v118 = v7;
  __chkstk_darwin(v6);
  v116 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v104 - v10;
  __chkstk_darwin(v11);
  v106 = &v104 - v12;
  __chkstk_darwin(v13);
  v107 = &v104 - v14;
  __chkstk_darwin(v15);
  v105 = &v104 - v16;
  v17 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v17 - 8);
  v110 = &v104 - v18;
  v19 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v19 - 8);
  v21 = &v104 - v20;
  v22 = type metadata accessor for FMIPSafeLocationType();
  v108 = *(v22 - 8);
  v109 = v22;
  __chkstk_darwin(v22);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v25 - 8);
  v27 = &v104 - v26;
  v28 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v28);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v104 - v32;
  v34 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);
  v35 = *(v34 + 56);
  v36 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10032A93C(v35 + v36, v33, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_10032A9A4(v33, type metadata accessor for FMSelectedSection);
    return 1;
  }

  v37 = *(v33 + 1);
  v38 = *(v33 + 2);

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      v81 = v119;
      v82 = FMIPDevice.baIdentifier.getter();
      v85 = v117;
      v84 = v118;
      if (v83)
      {
        v86 = v82;
        v87 = v83;
        v88 = *(v34 + 56);
        v89 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        sub_10032A93C(v88 + v89, v30, type metadata accessor for FMSelectedSection);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v90 = *v30;
          v91 = sub_100091880(*(v30 + 1), *(v30 + 2));
          v120[0] = v86;
          v120[1] = v87;
          __chkstk_darwin(v91);
          *(&v104 - 2) = v120;
          v92 = sub_10008A40C(sub_1001413D4, (&v104 - 4), v90);

          if (v92)
          {
            return 1;
          }
        }

        else
        {

          sub_10032A9A4(v30, type metadata accessor for FMSelectedSection);
        }

        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        sub_100005B14(v99, qword_1006D4630);
        v94 = v107;
        (*(v84 + 16))(v107, v81, v85);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v120[0] = v52;
          *v51 = 136446210;
          v100 = FMIPDevice.identifier.getter();
          v102 = v101;
          (*(v84 + 8))(v94, v85);
          v103 = sub_100005B4C(v100, v102, v120);

          *(v51 + 4) = v103;
          v57 = "FMDevicesListDataSource: Not including device: %{public}s because it is not marked as separated.";
          goto LABEL_39;
        }
      }

      else
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for Logger();
        sub_100005B14(v93, qword_1006D4630);
        v94 = v106;
        (*(v84 + 16))(v106, v81, v85);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v121[0] = v52;
          *v51 = 136446210;
          v95 = FMIPDevice.identifier.getter();
          v97 = v96;
          (*(v84 + 8))(v94, v85);
          v98 = sub_100005B4C(v95, v97, v121);

          *(v51 + 4) = v98;
          v57 = "FMDevicesListDataSource: Not including device: %{public}s because it does not have a BA identifier.";
          goto LABEL_39;
        }
      }

      (*(v84 + 8))(v94, v85);
      return 0;
    }

    if (v38 == 3)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100005B14(v59, qword_1006D4630);
      v46 = v118;
      v48 = v116;
      v47 = v117;
      (*(v118 + 16))(v116, v119, v117);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v121[0] = v52;
        *v51 = 136446210;
        v60 = FMIPDevice.identifier.getter();
        v62 = v61;
        (*(v46 + 8))(v48, v47);
        v63 = sub_100005B4C(v60, v62, v121);

        *(v51 + 4) = v63;
        v57 = "FMDevicesListDataSource: Not including device: %{public}s because we are in UT cluster.";
        goto LABEL_39;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (!v38)
    {
      return 1;
    }

    if (v38 == 1)
    {
      v39 = v112;
      v40 = v119;
      FMIPDevice.state.getter();
      v41 = v113;
      static FMIPDeviceState.isThisDevice.getter();
      sub_10000A348(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
      v42 = v115;
      v43 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v44 = *(v114 + 8);
      v44(v41, v42);
      v44(v39, v42);
      if ((v43 & 1) == 0)
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_100005B14(v45, qword_1006D4630);
        v47 = v117;
        v46 = v118;
        v48 = v111;
        (*(v118 + 16))(v111, v40, v117);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v121[0] = v52;
          *v51 = 136446210;
          v53 = FMIPDevice.identifier.getter();
          v55 = v54;
          (*(v46 + 8))(v48, v47);
          v56 = sub_100005B4C(v53, v55, v121);

          *(v51 + 4) = v56;
          v57 = "FMDevicesListDataSource: Not including device: %{public}s because it is not this device.";
LABEL_39:
          _os_log_impl(&_mh_execute_header, v49, v50, v57, v51, 0xCu);
          sub_100006060(v52);

          return 0;
        }

LABEL_27:

        goto LABEL_28;
      }

      return 1;
    }
  }

  v116 = v37;
  v64 = v119;
  FMIPDevice.itemGroup.getter();
  v65 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v65 - 8) + 48))(v27, 1, v65) != 1)
  {
    sub_100091880(v116, v38);
    sub_100012DF0(v27, &unk_1006BB1C0, &unk_1005534F0);
    return 1;
  }

  sub_100012DF0(v27, &unk_1006BB1C0, &unk_1005534F0);
  v67 = v108;
  v66 = v109;
  (*(v108 + 104))(v24, enum case for FMIPSafeLocationType.home(_:), v109);

  FMIPDevice.bestLocation.getter();
  v68 = v110;
  sub_1000E698C(v24, v21, v110);

  sub_100012DF0(v21, &unk_1006C0220, qword_100553770);
  (*(v67 + 8))(v24, v66);
  v69 = type metadata accessor for FMIPSafeLocation();
  v70 = (*(*(v69 - 8) + 48))(v68, 1, v69);
  sub_100012DF0(v68, &unk_1006BB1B0, qword_10055C5C0);
  if (v70 == 1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100005B14(v71, qword_1006D4630);
    v47 = v117;
    v46 = v118;
    v48 = v105;
    (*(v118 + 16))(v105, v64, v117);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v38;
      v76 = swift_slowAlloc();
      v121[0] = v76;
      *v74 = 136446210;
      v77 = FMIPDevice.name.getter();
      v79 = v78;
      (*(v46 + 8))(v48, v47);
      v80 = sub_100005B4C(v77, v79, v121);

      *(v74 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v72, v73, "FMDevicesListDataSource: Not including device: %{public}s because it is not at home.", v74, 0xCu);
      sub_100006060(v76);

      sub_100091880(v116, v75);
      return 0;
    }

    sub_100091880(v116, v38);
LABEL_28:
    (*(v46 + 8))(v48, v47);
    return 0;
  }

  sub_100091880(v116, v38);
  return 1;
}

BOOL sub_100322BE0(uint64_t a1)
{
  v55 = a1;
  v2 = type metadata accessor for FMIPItem();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v4 - 8);
  v54 = &v50 - v5;
  v6 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for FMIPSafeLocationType();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);
  v19 = *(v18 + 56);
  v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10032A93C(v19 + v20, v17, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_10032A9A4(v17, type metadata accessor for FMSelectedSection);
    return 0;
  }

  v21 = *(v17 + 1);
  v22 = *(v17 + 2);

  result = 0;
  if (v22 < 2)
  {
    return result;
  }

  if (v22 == 2)
  {
    v29 = *(v18 + 56);
    v30 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_10032A93C(v29 + v30, v14, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v31 = *(v14 + 1);
      v32 = *(v14 + 2);

      v34 = v51;
      v33 = v52;
      v35 = v50;
      v36 = v55;
      if (v32 >= 2)
      {
        if (v32 == 2)
        {
          v46 = *(v18 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
          swift_beginAccess();
          v47 = *(v46 + *(type metadata accessor for FMPendingActionInfo(0) + 32));
          if (v47)
          {

            v56[0] = FMIPItem.identifier.getter();
            v56[1] = v48;
            __chkstk_darwin(v56[0]);
            *(&v50 - 2) = v56;
            v49 = sub_10008A40C(sub_10011F7D4, (&v50 - 4), v47);

            if (v49)
            {
              return 1;
            }
          }
        }

        else if (v32 != 3)
        {
          sub_100091880(v31, v32);
        }
      }
    }

    else
    {
      sub_10032A9A4(v14, type metadata accessor for FMSelectedSection);
      v34 = v51;
      v33 = v52;
      v35 = v50;
      v36 = v55;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4630);
    (*(v34 + 16))(v35, v36, v33);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56[0] = v41;
      *v40 = 136446210;
      v42 = FMIPItem.identifier.getter();
      v44 = v43;
      (*(v34 + 8))(v35, v33);
      v45 = sub_100005B4C(v42, v44, v56);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "FMDevicesListDataSource: Not including itemPart: %{public}s because it is not this device.", v40, 0xCu);
      sub_100006060(v41);
    }

    else
    {

      (*(v34 + 8))(v35, v33);
    }

    return 0;
  }

  if (v22 != 3)
  {
    v24 = v53;
    (*(v53 + 104))(v11, enum case for FMIPSafeLocationType.home(_:), v9);

    FMIPItem.location.getter();
    v25 = v21;
    v26 = v54;
    sub_1000E698C(v11, v8, v54);

    sub_100091880(v25, v22);
    sub_100012DF0(v8, &unk_1006C0220, qword_100553770);
    (*(v24 + 8))(v11, v9);
    v27 = type metadata accessor for FMIPSafeLocation();
    v28 = (*(*(v27 - 8) + 48))(v26, 1, v27) != 1;
    sub_100012DF0(v26, &unk_1006BB1B0, qword_10055C5C0);
    return v28;
  }

  return result;
}

double sub_1003232BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v7 - 8);
  v64 = &v63 - v8;
  v9 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v9 - 8);
  v66 = &v63 - v10;
  v11 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v11);
  v68 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v63 - v14;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v18 - 8);
  v20 = &v63 - v19;
  v21 = type metadata accessor for FMIPDevice();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_10031BA04(a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v65 = v22;
    v36 = *(v22 + 32);
    v63 = v21;
    v36(v24, v20, v21);
    My = type metadata accessor for Feature.FindMy();
    v70[3] = My;
    v70[4] = sub_10000A348(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v38 = sub_100008FC0(v70);
    (*(*(My - 8) + 104))(v38, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
    v39 = isFeatureEnabled(_:)();
    sub_100006060(v70);
    v40 = *(v2 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);
    v41 = *(v40 + 56);
    v42 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_10032A93C(v41 + v42, v17, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_10032A9A4(v17, type metadata accessor for FMSelectedSection);
      v45 = v24;
      v46 = v66;
      if ((v39 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_13:
      FMIPDevice.itemGroup.getter();
      v47 = type metadata accessor for FMIPItemGroup();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v46, 1, v47) == 1)
      {
        sub_100012DF0(v46, &unk_1006BB1C0, &unk_1005534F0);
      }

      else
      {
        v49 = FMIPItemGroup.items.getter();
        (*(v48 + 8))(v46, v47);
        v50 = *(v49 + 16);

        if (v50 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0)
        {
          v51 = *(v40 + 56);
          v52 = v65;
          v53 = v67;
          v54 = v63;
          (*(v65 + 16))(v67, v45, v63);
          swift_storeEnumTagMultiPayload();
          v55 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          v56 = v68;
          sub_10032A93C(v51 + v55, v68, type metadata accessor for FMSelectedSection);
          swift_beginAccess();

          sub_100058530(v53, v51 + v55);
          swift_endAccess();
          sub_100058594(v56);

          sub_10032A9A4(v56, type metadata accessor for FMSelectedSection);
          sub_10032A9A4(v53, type metadata accessor for FMSelectedSection);
LABEL_22:

          FMIPManager.updateLastActiveTimestamp()();
          (*(v52 + 8))(v45, v54);

          return result;
        }
      }

LABEL_21:
      v57 = v64;
      sub_10031BF30(v69, v64);
      v58 = *(v40 + 56);
      v59 = *(sub_10007EBC0(&qword_1006BEEE0, qword_100552070) + 48);
      v52 = v65;
      v60 = v67;
      v54 = v63;
      (*(v65 + 16))(v67, v45, v63);
      sub_1001104A8(v57, v60 + v59);
      swift_storeEnumTagMultiPayload();
      v61 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      v62 = v68;
      sub_10032A93C(v58 + v61, v68, type metadata accessor for FMSelectedSection);
      swift_beginAccess();

      sub_100058530(v60, v58 + v61);
      swift_endAccess();
      sub_100058594(v62);

      sub_10032A9A4(v62, type metadata accessor for FMSelectedSection);
      sub_10032A9A4(v60, type metadata accessor for FMSelectedSection);
      sub_100012DF0(v57, &qword_1006B07D0, qword_100552820);
      goto LABEL_22;
    }

    v43 = *(v17 + 1);
    v44 = *(v17 + 2);

    v45 = v24;
    v46 = v66;
    if (v44 > 1)
    {
      if (v44 == 2)
      {
        goto LABEL_21;
      }

      if (v44 == 3)
      {
LABEL_9:
        if ((v39 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }
    }

    else if (v44 <= 1)
    {
      goto LABEL_9;
    }

    sub_100091880(v43, v44);
    goto LABEL_21;
  }

  sub_100012DF0(v20, &unk_1006BBCE0, &unk_1005534C0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100005B14(v25, qword_1006D4630);
  v26 = v65;
  (*(v65 + 16))(v6, v69, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v70[0] = v30;
    *v29 = 136315138;
    sub_10000A348(&qword_1006C01F0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v26 + 8))(v6, v4);
    v34 = sub_100005B4C(v31, v33, v70);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "FMDevicesListDataSource: cannot select device at indexPath: %s", v29, 0xCu);
    sub_100006060(v30);
  }

  else
  {

    (*(v26 + 8))(v6, v4);
  }

  return result;
}

void *sub_100323C38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = v5;
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for FMIPDevice();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for FMDeviceCellViewModel(0);
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = _swiftEmptyArrayStorage;
  v18 = IndexPath.section.getter();
  v19 = IndexPath.row.getter();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = *&v1[OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel];
  if (v18 >= *(v20 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = *(v20 + 8 * v18 + 32);
  if (v19 >= *(v21 + 16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_17;
  }

  sub_10032A93C(v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19, v17, type metadata accessor for FMDeviceCellViewModel);
  v22 = v17[v14[19]];
  v54 = v17;
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = v17[v14[20]];
  }

  v24 = v55;
  v25 = v56;
  sub_10031BA04(a1, v8);
  if ((*(v24 + 48))(v8, 1, v25) == 1)
  {
    sub_10032A9A4(v54, type metadata accessor for FMDeviceCellViewModel);
    sub_100012DF0(v8, &unk_1006BBCE0, &unk_1005534C0);
    return _swiftEmptyArrayStorage;
  }

  v48 = *(v24 + 32);
  v48(v13, v8, v25);
  if (!v23)
  {
    (*(v24 + 8))(v13, v25);
    sub_10032A9A4(v54, type metadata accessor for FMDeviceCellViewModel);
    return _swiftEmptyArrayStorage;
  }

  v26 = v54[v14[20]];
  v28 = v24 + 16;
  v27 = *(v24 + 16);
  v29 = v50;
  v47 = v13;
  v27(v50, v13, v25);
  v30 = v51 + 16;
  v31 = a1;
  v32 = v52;
  (*(v51 + 16))(v53, v31, v52);
  v33 = (*(v28 + 64) + 24) & ~*(v28 + 64);
  v34 = (v10 + *(v30 + 64) + v33) & ~*(v30 + 64);
  v35 = (v30 + 16);
  if (v26 == 1)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = v1;
    v48((v36 + v33), v29, v25);
    (*v35)(v36 + v34, v53, v32);
    v61 = sub_10032A3AC;
    v62 = v36;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10052BC74;
    v60 = &unk_100636EB8;
  }

  else
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v1;
    v48((v41 + v33), v29, v25);
    (*v35)(v41 + v34, v53, v32);
    v61 = sub_10032A16C;
    v62 = v41;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10052BC74;
    v60 = &unk_100636E68;
  }

  v37 = _Block_copy(&aBlock);
  v38 = objc_opt_self();
  v39 = v2;
  v42 = [v38 contextualActionWithStyle:1 title:0 handler:v37];
  _Block_release(v37);

  v14 = v42;
  v43 = String._bridgeToObjectiveC()();
  v44 = [objc_opt_self() systemImageNamed:v43];

  [v14 setImage:v44];
  v45 = [objc_opt_self() systemRedColor];
  [v14 setBackgroundColor:v45];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v8 = v54;
  v18 = v55;
  v13 = v47;
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

LABEL_17:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v18 + 8))(v13, v56);
  sub_10032A9A4(v8, type metadata accessor for FMDeviceCellViewModel);
  return v63;
}

double sub_1003243A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  sub_1003245E0(a6, v10, sub_10032A4AC, v9);

  return result;
}

uint64_t sub_100324434(char a1, uint64_t (*a2)(void))
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
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v14 = v8;
    if (a1)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = v10;
    String.append(_:)(*&v9);

    v12 = sub_100005B4C(0, 0xE000000000000000, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesListDataSource: handle repair succeeded %s", v7, 0xCu);
    sub_100006060(v8);
  }

  return a2(a1 & 1);
}

void sub_1003245E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v59 = a1;
  v5 = type metadata accessor for FMIPDevice();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v60 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMDevicesListDataSource: Remove button pressed, needs repair. Showing alert", v10, 2u);
  }

  v11 = *(&v64->isa + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_tableView);
  while (1)
  {
    v12 = v11;
    v11 = [v11 nextResponder];

    if (!v11)
    {
      break;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v58 = v13;
      v14 = objc_opt_self();
      v15 = [v14 mainBundle];
      v72._object = 0x8000000100586960;
      v16._countAndFlagsBits = 0xD000000000000019;
      v16._object = 0x8000000100586940;
      v72._countAndFlagsBits = 0xD00000000000002BLL;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v72);
      v56 = a3;

      v18 = [v14 mainBundle];
      v73._object = 0x80000001005869B0;
      v19._countAndFlagsBits = 0xD00000000000001CLL;
      v19._object = 0x8000000100586990;
      v73._countAndFlagsBits = 0xD00000000000002ELL;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v73);

      v21 = String._bridgeToObjectiveC()();

      v22 = String._bridgeToObjectiveC()();

      v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];
      v54 = v23;

      v24 = [v14 mainBundle];
      v74._object = 0x800000010057B8F0;
      v25._object = 0x800000010057B8D0;
      v74._countAndFlagsBits = 0xD000000000000025;
      v25._countAndFlagsBits = 0xD000000000000013;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v74);

      v27 = swift_allocObject();
      *(v27 + 16) = a3;
      *(v27 + 24) = v63;

      v28 = String._bridgeToObjectiveC()();

      v69 = sub_10032AB3C;
      v70 = v27;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v57 = &v67;
      v67 = sub_100017328;
      v68 = &unk_100636D50;
      v29 = _Block_copy(&aBlock);

      v55 = objc_opt_self();
      v30 = [v55 actionWithTitle:v28 style:1 handler:v29];
      _Block_release(v29);

      [v23 addAction:v30];
      v31 = [v14 mainBundle];
      v75._object = 0x800000010057B8A0;
      v32._countAndFlagsBits = 0xD000000000000015;
      v32._object = 0x800000010057B880;
      v75._countAndFlagsBits = 0xD000000000000027;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v53[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v75)._countAndFlagsBits;

      v35 = v60;
      v34 = v61;
      v36 = v62;
      (*(v61 + 16))(v60, v59, v62);
      v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
      v38 = (v6 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = v64;
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      (*(v34 + 32))(v40 + v37, v35, v36);
      v41 = v58;
      *(v40 + v38) = v58;
      v42 = (v40 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
      v43 = v63;
      *v42 = v56;
      v42[1] = v43;

      v44 = v39;
      v45 = v11;
      v46 = String._bridgeToObjectiveC()();

      v69 = sub_100329FF8;
      v70 = v40;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_100017328;
      v68 = &unk_100636DA0;
      v47 = _Block_copy(&aBlock);

      v48 = [v55 actionWithTitle:v46 style:0 handler:v47];
      _Block_release(v47);

      v49 = v54;
      [v54 addAction:v48];

      [v41 presentViewController:v49 animated:1 completion:0];
      return;
    }
  }

  v64 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v64, v50, "FMDevicesListDataSource: Cannot repair device without a view controller", v51, 2u);
  }

  v52 = v64;
}

double sub_100324D60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20 = a3;
  v21 = a5;
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a3, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  v17 = (v16 + v15);
  *v17 = v21;
  v17[1] = a6;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = a4;

  v18 = a4;
  sub_1000DE3B4(v20, v18, sub_10032A0A8, v16);

  return result;
}

void sub_100324F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v107 = type metadata accessor for FMIPDevice();
  v12 = *(v107 - 8);
  __chkstk_darwin(v107);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v104 = &v98 - v16;
  __chkstk_darwin(v17);
  v19 = &v98 - v18;
  __chkstk_darwin(v20);
  v22 = &v98 - v21;
  if (a2)
  {
    v105 = a5;
    v106 = v12;
    swift_getErrorValue();
    v23 = sub_100271E80(v108, v109);
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v25)
    {
      if (v23 == v26 && v25 == v27)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      swift_getErrorValue();
      if (sub_100271D20(v110, v111) == -7003)
      {
        v41 = v106;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100005B14(v42, qword_1006D4630);
        v43 = v107;
        (*(v41 + 16))(v14, a4, v107);
        v44 = v41;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          aBlock[0] = v48;
          *v47 = 136315138;
          v49 = FMIPDevice.name.getter();
          v51 = v50;
          (*(v44 + 8))(v14, v43);
          v52 = sub_100005B4C(v49, v51, aBlock);

          *(v47 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v45, v46, "FMDevicesListDataSource: Repair device %s, user cancelled auth.", v47, 0xCu);
          sub_100006060(v48);
        }

        else
        {

          (*(v44 + 8))(v14, v43);
        }

        v105(0);
        return;
      }
    }

    else
    {
    }

LABEL_20:
    v102 = a6;
    v103 = a4;
    v53 = v106;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    v55 = sub_100005B14(v54, qword_1006D4630);
    v56 = v107;
    v99 = *(v53 + 16);
    v99(v19, v103, v107);
    swift_errorRetain();
    v100 = v55;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    v59 = os_log_type_enabled(v57, v58);
    v101 = a7;
    if (v59)
    {
      v60 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v60 = 136315394;
      v61 = FMIPDevice.name.getter();
      v63 = v62;
      v64 = *(v53 + 8);
      v64(v19, v107);
      v65 = sub_100005B4C(v61, v63, aBlock);
      v56 = v107;

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      v112 = a2;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
      v66 = String.init<A>(describing:)();
      v68 = sub_100005B4C(v66, v67, aBlock);

      *(v60 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v57, v58, "FMDevicesListDataSource: Repair device %s failed with error: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v64 = *(v53 + 8);
      v64(v19, v56);
    }

    v69 = v104;
    v99(v104, v103, v56);
    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = v64;
      v73 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v73 = 136315394;
      v74 = FMIPDevice.name.getter();
      v76 = v75;
      v72(v69, v56);
      v77 = sub_100005B4C(v74, v76, aBlock);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      v112 = a2;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
      v78 = String.init<A>(describing:)();
      v80 = sub_100005B4C(v78, v79, aBlock);

      *(v73 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v70, v71, "FMDeviceDetailContentViewController: Repair device %s failed with error: %s", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v64(v69, v56);
    }

    v81 = objc_opt_self();
    v82 = [v81 mainBundle];
    v83._countAndFlagsBits = 0xD00000000000001FLL;
    v114._object = 0x8000000100586A00;
    v83._object = 0x80000001005869E0;
    v114._countAndFlagsBits = 0xD000000000000031;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v114);

    v85 = [v81 mainBundle];
    v115._object = 0x8000000100586A70;
    v86._object = 0x8000000100586A40;
    v115._countAndFlagsBits = 0xD000000000000033;
    v86._countAndFlagsBits = 0xD000000000000021;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v86, 0, v85, v87, v115);

    v88 = String._bridgeToObjectiveC()();

    v89 = String._bridgeToObjectiveC()();

    v90 = [objc_opt_self() alertControllerWithTitle:v88 message:v89 preferredStyle:1];

    v91 = [v81 mainBundle];
    v116._object = 0x8000000100579B60;
    v92._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v92._object = 0xEF454C5449545F4ELL;
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    v116._countAndFlagsBits = 0xD000000000000021;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v116);

    v94 = swift_allocObject();
    *(v94 + 16) = v105;
    *(v94 + 24) = v102;

    v95 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1000E218C;
    aBlock[5] = v94;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_100636E18;
    v96 = _Block_copy(aBlock);

    v97 = [objc_opt_self() actionWithTitle:v95 style:0 handler:v96];
    _Block_release(v96);

    [v90 addAction:v97];
    [v101 presentViewController:v90 animated:1 completion:0];

    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100005B14(v30, qword_1006D4630);
  v31 = v107;
  (*(v12 + 16))(v22, a4, v107);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v105 = a5;
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = FMIPDevice.name.getter();
    v39 = v38;
    (*(v12 + 8))(v22, v31);
    v40 = sub_100005B4C(v37, v39, aBlock);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "FMDevicesListDataSource: Repair device %s succeeded", v35, 0xCu);
    sub_100006060(v36);

    a5 = v105;
  }

  else
  {

    (*(v12 + 8))(v22, v31);
  }

  a5(1);
}

id sub_100325B4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDevicesListDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100325CB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource__listTitle);

  return v1;
}

uint64_t sub_100325CF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_listSubtitle);

  return v1;
}

void sub_100325D30(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled);
  *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_updatesEnabled) = a1;
  sub_10031B13C(v2);
}

uint64_t sub_100325D48()
{

  v0 = FMIPManager.isInitialized.getter();

  return v0 & 1;
}

double sub_100325D98(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void sub_100325E50(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10025F354(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_100325F64(v4);
  *a1 = v2;
}

void sub_100325EBC(void *a1)
{
  v2 = *(type metadata accessor for FMDeviceCellViewModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F368(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10032606C(v5);
  *a1 = v3;
}

void sub_100325F64(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10007EBC0(&unk_1006C0340, &unk_1005524C0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100326828(v7, v8, a1, v4);
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
    sub_100326198(0, v2, 1, a1);
  }
}

void sub_10032606C(uint64_t *a1)
{
  v2 = a1[1];
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
        type metadata accessor for FMDeviceCellViewModel(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMDeviceCellViewModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003271B4(v8, v9, a1, v4);
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
    sub_10032640C(0, v2, 1, a1);
  }
}

void sub_100326198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = a1 - a3;
LABEL_5:
    v24 = a3;
    v6 = *(v25 + 8 * a3);
    v22 = v5;
    v23 = v4;
    while (1)
    {
      v7 = *v4;
      if (*(v6 + 16))
      {
        v8 = type metadata accessor for FMDeviceCellViewModel(0);
        v9 = v6 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
        v10 = *(v9 + 16);
        v11 = *(v9 + 24);
      }

      else
      {
        v10 = 0;
        v11 = 0xE000000000000000;
      }

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      String.append(_:)(v12);

      if (*(v7 + 16))
      {
        v13 = type metadata accessor for FMDeviceCellViewModel(0);
        v14 = v7 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80));
        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
      }

      else
      {
        v16 = 0;
        v15 = 0xE000000000000000;
      }

      v17._countAndFlagsBits = v16;
      v17._object = v15;
      String.append(_:)(v17);

      sub_100035F3C();
      v18 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v18 != -1)
      {
LABEL_4:
        a3 = v24 + 1;
        v4 = v23 + 1;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v25)
      {
        break;
      }

      v19 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v19;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10032640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMDeviceCellViewModel(0);
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v52 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v59 = -v19;
    v21 = a1 - a3;
    v64 = v18;
    v51 = v19;
    v22 = v18 + v19 * a3;
    v57 = v10;
LABEL_5:
    v55 = v20;
    v56 = a3;
    v53 = v22;
    v54 = v21;
    while (1)
    {
      sub_10032A93C(v22, v17, type metadata accessor for FMDeviceCellViewModel);
      sub_10032A93C(v20, v13, type metadata accessor for FMDeviceCellViewModel);
      v23 = v8[15];
      v24 = *&v17[v23];
      v25 = *&v13[v23];
      if (v24 != v25)
      {
        v30 = v24 < v25;
        goto LABEL_26;
      }

      v26 = v8[14];
      v27 = round(*&v17[v26]);
      v28 = v27 > -9.22337204e18;
      if (v27 >= 9.22337204e18)
      {
        v28 = 0;
      }

      if (v28)
      {
        v29 = 30 * (v27 / 30);
      }

      else
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v31 = round(*&v13[v26]);
      if (v31 > -9.22337204e18 && v31 < 9.22337204e18)
      {
        v33 = 30 * (v31 / 30);
        if (v29 == v33)
        {
LABEL_21:
          v35 = &v17[v8[17]];
          v36 = *(v35 + 1);
          v37 = *(v17 + 2);
          v38 = *(v17 + 3);
          v62 = *v35;
          v63 = v36;

          v39._countAndFlagsBits = v37;
          v39._object = v38;
          String.append(_:)(v39);
          v40 = v63;
          v58 = v62;
          v41 = &v13[v8[17]];
          v42 = *(v41 + 1);
          v43 = *(v13 + 2);
          v44 = *(v13 + 3);
          v62 = *v41;
          v63 = v42;

          v45._countAndFlagsBits = v43;
          v45._object = v44;
          String.append(_:)(v45);
          v46 = v62;
          v47 = v63;
          v62 = v58;
          v63 = v40;
          v60 = v46;
          v61 = v47;
          sub_100035F3C();
          v48 = StringProtocol.caseInsensitiveCompare<A>(_:)();
          v10 = v57;

          v30 = v48 == -1;
          goto LABEL_26;
        }

        if (!v28)
        {
LABEL_24:
          v34 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_25;
        }

        v34 = 30 * (v27 / 30);
      }

      else
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_21;
        }

        if (!v28)
        {
          goto LABEL_24;
        }

        v34 = 30 * (v27 / 30);
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_25:
      v30 = v34 < v33;
LABEL_26:
      sub_10032A9A4(v13, type metadata accessor for FMDeviceCellViewModel);
      sub_10032A9A4(v17, type metadata accessor for FMDeviceCellViewModel);
      if (!v30)
      {
        goto LABEL_4;
      }

      if (!v64)
      {
        __break(1u);
        return;
      }

      sub_10032AA04(v22, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_10032AA04(v10, v20);
      v20 += v59;
      v22 += v59;
      if (__CFADD__(v21++, 1))
      {
LABEL_4:
        a3 = v56 + 1;
        v20 = v55 + v51;
        v21 = v54 - 1;
        v22 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

void sub_100326828(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_4:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_6;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v122 = v9;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v5 = v9;
      v15 = *v7;
      v135 = *(*v7 + 8 * (v9 + 1));
      v133 = *(v15 + 8 * v9);

      v127 = sub_100321BCC(&v135, &v133);
      if (v6)
      {

        goto LABEL_110;
      }

      v16 = v9 + 2;
      v129 = v8;
      v131 = 8 * v9;
      v17 = v15 + 8 * v9 + 16;
      v125 = v10;
      while (v8 != v16)
      {
        v30 = *(v17 - 8);
        v29 = *v17;
        if (*(*v17 + 16))
        {
          v31 = type metadata accessor for FMDeviceCellViewModel(0);
          v32 = v29 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80));
          v33 = (v32 + *(v31 + 100));
          v34 = *v33;
          v35 = v33[1];
          v36 = *(v32 + 16);
          v37 = *(v32 + 24);
        }

        else
        {
          v36 = 0;
          v34 = 0;
          v37 = 0xE000000000000000;
          v35 = 0xE000000000000000;
        }

        v135 = v34;
        v136 = v35;

        v38._countAndFlagsBits = v36;
        v38._object = v37;
        String.append(_:)(v38);

        v39 = v135;
        v5 = v136;
        if (*(v30 + 16))
        {
          v18 = type metadata accessor for FMDeviceCellViewModel(0);
          v19 = v30 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80));
          v20 = (v19 + *(v18 + 100));
          v21 = *v20;
          v22 = v20[1];
          v23 = *(v19 + 16);
          v24 = *(v19 + 24);
        }

        else
        {
          v23 = 0;
          v21 = 0;
          v24 = 0xE000000000000000;
          v22 = 0xE000000000000000;
        }

        v135 = v21;
        v136 = v22;

        v25._countAndFlagsBits = v23;
        v25._object = v24;
        String.append(_:)(v25);

        v26 = v135;
        v27 = v136;
        v135 = v39;
        v136 = v5;
        v133 = v26;
        v134 = v27;
        sub_100035F3C();
        v28 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        ++v16;
        v17 += 8;
        v10 = v125;
        v8 = v129;
        if (((v127 ^ (v28 != -1)) & 1) == 0)
        {
          v8 = v16 - 1;
          break;
        }
      }

      v7 = a3;
      v6 = 0;
      if (v127)
      {
        v40 = v122;
        if (v8 < v122)
        {
          goto LABEL_132;
        }

        if (v122 < v8)
        {
          v41 = 8 * v8 - 8;
          v42 = v8;
          do
          {
            if (v40 != --v42)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v44 = *(v43 + v131);
              *(v43 + v131) = *(v43 + v41);
              *(v43 + v41) = v44;
            }

            ++v40;
            v41 -= 8;
            v131 += 8;
          }

          while (v40 < v42);
        }
      }
    }

    v45 = v7[1];
    if (v8 < v45)
    {
      if (__OFSUB__(v8, v122))
      {
        goto LABEL_129;
      }

      if (v8 - v122 < a4)
      {
        if (__OFADD__(v122, a4))
        {
          goto LABEL_130;
        }

        if (v122 + a4 < v45)
        {
          v45 = v122 + a4;
        }

        if (v45 < v122)
        {
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          v10 = sub_10025EFD4(v10);
LABEL_6:
          v137 = v10;
          v11 = *(v10 + 16);
          if (v11 >= 2)
          {
            while (*v7)
            {
              v12 = *(v10 + 16 * v11);
              v13 = *(v10 + 16 * (v11 - 1) + 40);
              sub_100327FA8((*v7 + 8 * v12), (*v7 + 8 * *(v10 + 16 * (v11 - 1) + 32)), (*v7 + 8 * v13), v5);
              if (v6)
              {
                goto LABEL_110;
              }

              if (v13 < v12)
              {
                goto LABEL_126;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_10025EFD4(v10);
              }

              if (v11 - 2 >= *(v10 + 16))
              {
                goto LABEL_127;
              }

              v14 = (v10 + 16 * v11);
              *v14 = v12;
              v14[1] = v13;
              v137 = v10;
              sub_10025EF48(v11 - 1);
              v10 = v137;
              v11 = *(v137 + 16);
              if (v11 <= 1)
              {
                goto LABEL_110;
              }
            }

            goto LABEL_137;
          }

LABEL_110:

          return;
        }

        v123 = v45;
        if (v8 != v45)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v8 < v122)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10008B8B8(0, *(v10 + 16) + 1, 1, v10);
    }

    v73 = *(v10 + 16);
    v72 = *(v10 + 24);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v10 = sub_10008B8B8((v72 > 1), v73 + 1, 1, v10);
    }

    *(v10 + 16) = v74;
    v75 = v10 + 16 * v73;
    *(v75 + 32) = v122;
    *(v75 + 40) = v8;
    v9 = v8;
    v76 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if (v73)
    {
      while (1)
      {
        v5 = v10;
        v10 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v77 = *(v5 + 4);
          v78 = *(v5 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_80:
          if (v80)
          {
            goto LABEL_117;
          }

          v93 = &v5[16 * v74];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_120;
          }

          v99 = &v5[16 * v10 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_124;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v10 = v74 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v103 = &v5[16 * v74];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_94:
        if (v98)
        {
          goto LABEL_119;
        }

        v106 = &v5[16 * v10];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_122;
        }

        if (v109 < v97)
        {
          v10 = v5;
          goto LABEL_15;
        }

LABEL_101:
        v114 = v10 - 1;
        if (v10 - 1 >= v74)
        {
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
          goto LABEL_131;
        }

        if (!*v7)
        {
          goto LABEL_135;
        }

        v115 = *&v5[16 * v114 + 32];
        v116 = *&v5[16 * v10 + 40];
        sub_100327FA8((*v7 + 8 * v115), (*v7 + 8 * *&v5[16 * v10 + 32]), (*v7 + 8 * v116), v76);
        if (v6)
        {
          goto LABEL_110;
        }

        if (v116 < v115)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10025EFD4(v5);
        }

        if (v114 >= *(v5 + 2))
        {
          goto LABEL_114;
        }

        v117 = &v5[16 * v114];
        *(v117 + 4) = v115;
        *(v117 + 5) = v116;
        v137 = v5;
        sub_10025EF48(v10);
        v10 = v137;
        v74 = *(v137 + 16);
        if (v74 <= 1)
        {
          goto LABEL_15;
        }
      }

      v81 = &v5[16 * v74 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_115;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_116;
      }

      v88 = &v5[16 * v74];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_118;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_121;
      }

      if (v92 >= v84)
      {
        v110 = &v5[16 * v10 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_125;
        }

        if (v79 < v113)
        {
          v10 = v74 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_15:
    v8 = v7[1];
    if (v9 >= v8)
    {
      goto LABEL_4;
    }
  }

  v126 = v10;
  v120 = v6;
  v132 = *v7;
  v46 = (*v7 + 8 * v8 - 8);
  v47 = v122 - v8;
LABEL_47:
  v128 = v46;
  v130 = v8;
  v48 = *(v132 + 8 * v8);
  v124 = v47;
  while (1)
  {
    v49 = *v46;
    if (*(v48 + 16))
    {
      v50 = type metadata accessor for FMDeviceCellViewModel(0);
      v51 = v48 + ((*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80));
      v52 = (v51 + *(v50 + 100));
      v53 = *v52;
      v54 = v52[1];
      v55 = *(v51 + 16);
      v56 = *(v51 + 24);
    }

    else
    {
      v55 = 0;
      v53 = 0;
      v56 = 0xE000000000000000;
      v54 = 0xE000000000000000;
    }

    v135 = v53;
    v136 = v54;

    v57._countAndFlagsBits = v55;
    v57._object = v56;
    String.append(_:)(v57);

    v58 = v135;
    v5 = v136;
    if (*(v49 + 16))
    {
      v59 = type metadata accessor for FMDeviceCellViewModel(0);
      v60 = v49 + ((*(*(v59 - 8) + 80) + 32) & ~*(*(v59 - 8) + 80));
      v61 = (v60 + *(v59 + 100));
      v62 = *v61;
      v63 = v61[1];
      v64 = *(v60 + 16);
      v65 = *(v60 + 24);
    }

    else
    {
      v64 = 0;
      v62 = 0;
      v65 = 0xE000000000000000;
      v63 = 0xE000000000000000;
    }

    v135 = v62;
    v136 = v63;

    v66._countAndFlagsBits = v64;
    v66._object = v65;
    String.append(_:)(v66);

    v67 = v135;
    v68 = v136;
    v135 = v58;
    v136 = v5;
    v133 = v67;
    v134 = v68;
    sub_100035F3C();
    v69 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v69 != -1)
    {
LABEL_46:
      v8 = v130 + 1;
      v46 = v128 + 1;
      v47 = v124 - 1;
      if (v130 + 1 != v123)
      {
        goto LABEL_47;
      }

      v7 = a3;
      v6 = v120;
      v10 = v126;
      v8 = v123;
      goto LABEL_60;
    }

    if (!v132)
    {
      break;
    }

    v70 = *v46;
    v48 = v46[1];
    *v46 = v48;
    v46[1] = v70;
    --v46;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_1003271B4(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v171 = a1;
  v185 = type metadata accessor for FMDeviceCellViewModel(0);
  __chkstk_darwin(v185);
  v174 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v165 - v10;
  __chkstk_darwin(v12);
  v187 = &v165 - v13;
  __chkstk_darwin(v14);
  v16 = (&v165 - v15);
  __chkstk_darwin(v17);
  v183 = &v165 - v18;
  __chkstk_darwin(v19);
  v21 = &v165 - v20;
  __chkstk_darwin(v22);
  v167 = &v165 - v23;
  __chkstk_darwin(v24);
  v166 = &v165 - v25;
  v26 = a3[1];
  v180 = v27;
  if (v26 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_136:
    v28 = *v171;
    if (!*v171)
    {
      goto LABEL_176;
    }

    a4 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v180;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_170;
    }

    v160 = a4;
LABEL_139:
    v192 = v160;
    a4 = *(v160 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v161 = *&v160[16 * a4];
        v162 = v160;
        v163 = *&v160[16 * a4 + 24];
        sub_100328340(*a3 + v16[9] * v161, *a3 + v16[9] * *&v160[16 * a4 + 16], *a3 + v16[9] * v163, v28);
        if (v5)
        {
          goto LABEL_147;
        }

        if (v163 < v161)
        {
          goto LABEL_163;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_10025EFD4(v162);
        }

        if (a4 - 2 >= *(v162 + 2))
        {
          goto LABEL_164;
        }

        v164 = &v162[16 * a4];
        *v164 = v161;
        *(v164 + 1) = v163;
        v192 = v162;
        sub_10025EF48(a4 - 1);
        v160 = v192;
        a4 = *(v192 + 2);
        if (a4 <= 1)
        {
          goto LABEL_147;
        }
      }

      goto LABEL_174;
    }

LABEL_147:

    return;
  }

  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v172 = a3;
  v170 = a4;
  v184 = v11;
  v181 = v21;
  while (1)
  {
    v175 = v29;
    if (v28 + 1 >= v26)
    {
      v69 = v28 + 1;
      goto LABEL_46;
    }

    v182 = v26;
    v30 = *a3;
    v31 = v180[9];
    v32 = *a3 + v31 * (v28 + 1);
    v186 = type metadata accessor for FMDeviceCellViewModel;
    v33 = v166;
    sub_10032A93C(v32, v166, type metadata accessor for FMDeviceCellViewModel);
    v178 = v30;
    v34 = v30 + v31 * v28;
    v35 = v28;
    v36 = v167;
    sub_10032A93C(v34, v167, v186);
    LODWORD(v179) = sub_10032198C(v33, v36);
    if (v5)
    {
      sub_10032A9A4(v36, type metadata accessor for FMDeviceCellViewModel);
      sub_10032A9A4(v33, type metadata accessor for FMDeviceCellViewModel);
      goto LABEL_147;
    }

    v169 = 0;
    sub_10032A9A4(v36, type metadata accessor for FMDeviceCellViewModel);
    sub_10032A9A4(v33, type metadata accessor for FMDeviceCellViewModel);
    v168 = v35;
    v37 = v35 + 2;
    v38 = v178 + v31 * (v35 + 2);
    v39 = v185;
    v186 = v31;
    do
    {
      if (v182 == v37)
      {
        v69 = v182;
        goto LABEL_32;
      }

      sub_10032A93C(v38, v21, type metadata accessor for FMDeviceCellViewModel);
      v42 = v183;
      sub_10032A93C(v32, v183, type metadata accessor for FMDeviceCellViewModel);
      v43 = v39[15];
      v44 = *&v21[v43];
      v45 = *(v42 + v43);
      if (v44 != v45)
      {
        v40 = v44 < v45;
        goto LABEL_8;
      }

      v46 = v39[14];
      v47 = round(*&v21[v46]);
      v48 = v47 > -9.22337204e18;
      if (v47 >= 9.22337204e18)
      {
        v48 = 0;
      }

      if (v48)
      {
        v49 = 30 * (v47 / 30);
      }

      else
      {
        v49 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v50 = round(*(v183 + v46));
      if (v50 > -9.22337204e18 && v50 < 9.22337204e18)
      {
        v52 = 30 * (v50 / 30);
        if (v49 == v52)
        {
LABEL_24:
          v54 = &v21[v39[17]];
          v55 = *(v54 + 1);
          v57 = *(v21 + 2);
          v56 = *(v21 + 3);
          v190 = *v54;
          v191 = v55;

          v58._countAndFlagsBits = v57;
          v58._object = v56;
          String.append(_:)(v58);
          v60 = v190;
          v59 = v191;
          v61 = (v183 + v39[17]);
          v62 = v61[1];
          v63 = *(v183 + 16);
          v64 = *(v183 + 24);
          v190 = *v61;
          v191 = v62;

          v65._countAndFlagsBits = v63;
          v65._object = v64;
          String.append(_:)(v65);
          v66 = v190;
          v67 = v191;
          v190 = v60;
          v191 = v59;
          v21 = v181;
          v188 = v66;
          v189 = v67;
          sub_100035F3C();
          v68 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          v11 = v184;

          v40 = v68 == -1;
          goto LABEL_8;
        }

        if (!v48)
        {
LABEL_27:
          v53 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_28;
        }

        v53 = 30 * (v47 / 30);
      }

      else
      {
        v52 = 0x7FFFFFFFFFFFFFFFLL;
        if (v49 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_24;
        }

        if (!v48)
        {
          goto LABEL_27;
        }

        v53 = 30 * (v47 / 30);
        v52 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_28:
      v40 = v53 < v52;
LABEL_8:
      sub_10032A9A4(v183, type metadata accessor for FMDeviceCellViewModel);
      sub_10032A9A4(v21, type metadata accessor for FMDeviceCellViewModel);
      v41 = v179 ^ v40;
      ++v37;
      v31 = v186;
      v38 += v186;
      v32 += v186;
    }

    while ((v41 & 1) == 0);
    v69 = v37 - 1;
LABEL_32:
    v5 = v169;
    a3 = v172;
    a4 = v170;
    v28 = v168;
    if (v179)
    {
      if (v69 >= v168)
      {
        if (v168 < v69)
        {
          v70 = v31 * (v69 - 1);
          v71 = v69 * v31;
          v182 = v69;
          v72 = v168;
          v73 = v168 * v31;
          do
          {
            if (v72 != --v69)
            {
              v74 = *v172;
              if (!*v172)
              {
                goto LABEL_173;
              }

              sub_10032AA04(v74 + v73, v174);
              if (v73 < v70 || v74 + v73 >= (v74 + v71))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v73 != v70)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10032AA04(v174, v74 + v70);
              v21 = v181;
              v31 = v186;
            }

            ++v72;
            v70 -= v31;
            v71 -= v31;
            v73 += v31;
          }

          while (v72 < v69);
          v5 = v169;
          a3 = v172;
          a4 = v170;
          v11 = v184;
          v28 = v168;
          v69 = v182;
        }

        goto LABEL_46;
      }

LABEL_169:
      __break(1u);
LABEL_170:
      v160 = sub_10025EFD4(a4);
      goto LABEL_139;
    }

LABEL_46:
    v75 = a3[1];
    if (v69 < v75)
    {
      if (__OFSUB__(v69, v28))
      {
        goto LABEL_166;
      }

      if (v69 - v28 < a4)
      {
        if (__OFADD__(v28, a4))
        {
          goto LABEL_167;
        }

        if ((v28 + a4) < v75)
        {
          v75 = v28 + a4;
        }

        if (v75 < v28)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v176 = v75;
        if (v69 != v75)
        {
          break;
        }
      }
    }

LABEL_83:
    if (v69 < v28)
    {
      goto LABEL_165;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v175;
    }

    else
    {
      v29 = sub_10008B8B8(0, *(v175 + 2) + 1, 1, v175);
    }

    a4 = *(v29 + 2);
    v113 = *(v29 + 3);
    v114 = a4 + 1;
    if (a4 >= v113 >> 1)
    {
      v29 = sub_10008B8B8((v113 > 1), a4 + 1, 1, v29);
    }

    *(v29 + 2) = v114;
    v115 = &v29[16 * a4];
    *(v115 + 4) = v28;
    *(v115 + 5) = v69;
    v28 = *v171;
    if (!*v171)
    {
      goto LABEL_175;
    }

    v176 = v69;
    if (a4)
    {
      while (1)
      {
        v116 = v114 - 1;
        if (v114 >= 4)
        {
          break;
        }

        if (v114 == 3)
        {
          v117 = *(v29 + 4);
          v118 = *(v29 + 5);
          v127 = __OFSUB__(v118, v117);
          v119 = v118 - v117;
          v120 = v127;
LABEL_103:
          if (v120)
          {
            goto LABEL_154;
          }

          v133 = &v29[16 * v114];
          v135 = *v133;
          v134 = *(v133 + 1);
          v136 = __OFSUB__(v134, v135);
          v137 = v134 - v135;
          v138 = v136;
          if (v136)
          {
            goto LABEL_157;
          }

          v139 = &v29[16 * v116 + 32];
          v141 = *v139;
          v140 = *(v139 + 1);
          v127 = __OFSUB__(v140, v141);
          v142 = v140 - v141;
          if (v127)
          {
            goto LABEL_160;
          }

          if (__OFADD__(v137, v142))
          {
            goto LABEL_161;
          }

          if (v137 + v142 >= v119)
          {
            if (v119 < v142)
            {
              v116 = v114 - 2;
            }

            goto LABEL_124;
          }

          goto LABEL_117;
        }

        v143 = &v29[16 * v114];
        v145 = *v143;
        v144 = *(v143 + 1);
        v127 = __OFSUB__(v144, v145);
        v137 = v144 - v145;
        v138 = v127;
LABEL_117:
        if (v138)
        {
          goto LABEL_156;
        }

        v146 = &v29[16 * v116];
        v148 = *(v146 + 4);
        v147 = *(v146 + 5);
        v127 = __OFSUB__(v147, v148);
        v149 = v147 - v148;
        if (v127)
        {
          goto LABEL_159;
        }

        if (v149 < v137)
        {
          goto LABEL_3;
        }

LABEL_124:
        a4 = v116 - 1;
        if (v116 - 1 >= v114)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (!*a3)
        {
          goto LABEL_172;
        }

        v154 = v29;
        v155 = *&v29[16 * a4 + 32];
        v156 = *&v29[16 * v116 + 40];
        sub_100328340(*a3 + v180[9] * v155, *a3 + v180[9] * *&v29[16 * v116 + 32], *a3 + v180[9] * v156, v28);
        if (v5)
        {
          goto LABEL_147;
        }

        if (v156 < v155)
        {
          goto LABEL_150;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v157 = v154;
        }

        else
        {
          v157 = sub_10025EFD4(v154);
        }

        v21 = v181;
        if (a4 >= *(v157 + 2))
        {
          goto LABEL_151;
        }

        v158 = &v157[16 * a4];
        *(v158 + 4) = v155;
        *(v158 + 5) = v156;
        v192 = v157;
        sub_10025EF48(v116);
        v29 = v192;
        v114 = *(v192 + 2);
        v11 = v184;
        if (v114 <= 1)
        {
          goto LABEL_3;
        }
      }

      v121 = &v29[16 * v114 + 32];
      v122 = *(v121 - 64);
      v123 = *(v121 - 56);
      v127 = __OFSUB__(v123, v122);
      v124 = v123 - v122;
      if (v127)
      {
        goto LABEL_152;
      }

      v126 = *(v121 - 48);
      v125 = *(v121 - 40);
      v127 = __OFSUB__(v125, v126);
      v119 = v125 - v126;
      v120 = v127;
      if (v127)
      {
        goto LABEL_153;
      }

      v128 = &v29[16 * v114];
      v130 = *v128;
      v129 = *(v128 + 1);
      v127 = __OFSUB__(v129, v130);
      v131 = v129 - v130;
      if (v127)
      {
        goto LABEL_155;
      }

      v127 = __OFADD__(v119, v131);
      v132 = v119 + v131;
      if (v127)
      {
        goto LABEL_158;
      }

      if (v132 >= v124)
      {
        v150 = &v29[16 * v116 + 32];
        v152 = *v150;
        v151 = *(v150 + 1);
        v127 = __OFSUB__(v151, v152);
        v153 = v151 - v152;
        if (v127)
        {
          goto LABEL_162;
        }

        if (v119 < v153)
        {
          v116 = v114 - 2;
        }

        goto LABEL_124;
      }

      goto LABEL_103;
    }

LABEL_3:
    v26 = a3[1];
    v28 = v176;
    a4 = v170;
    if (v176 >= v26)
    {
      goto LABEL_136;
    }
  }

  v169 = v5;
  v76 = *a3;
  v77 = v180[9];
  v78 = *a3 + v77 * (v69 - 1);
  v79 = -v77;
  v168 = v28;
  v80 = v28 - v69;
  v186 = v76;
  v173 = v77;
  v81 = v76 + v69 * v77;
  v82 = v185;
  while (2)
  {
    v182 = v69;
    v177 = v81;
    v178 = v80;
    v179 = v78;
    v83 = v78;
LABEL_57:
    sub_10032A93C(v81, v16, type metadata accessor for FMDeviceCellViewModel);
    v84 = v187;
    sub_10032A93C(v83, v187, type metadata accessor for FMDeviceCellViewModel);
    v85 = v82[15];
    v86 = *(v16 + v85);
    v87 = *(v84 + v85);
    if (v86 == v87)
    {
      v88 = v82[14];
      v89 = round(*(v16 + v88));
      v90 = v89 > -9.22337204e18;
      if (v89 >= 9.22337204e18)
      {
        v90 = 0;
      }

      if (v90)
      {
        v91 = 30 * (v89 / 30);
      }

      else
      {
        v91 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v93 = round(*(v187 + v88));
      if (v93 > -9.22337204e18 && v93 < 9.22337204e18)
      {
        v95 = 30 * (v93 / 30);
        if (v91 == v95)
        {
          goto LABEL_72;
        }

        if (!v90)
        {
          goto LABEL_75;
        }

        v96 = 30 * (v89 / 30);
LABEL_76:
        v92 = v96 < v95;
      }

      else
      {
        v95 = 0x7FFFFFFFFFFFFFFFLL;
        if (v91 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v90)
          {
            v96 = 30 * (v89 / 30);
            v95 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_76;
          }

LABEL_75:
          v96 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }

LABEL_72:
        v97 = (v16 + v82[17]);
        v98 = v97[1];
        v100 = v16[2];
        v99 = v16[3];
        v190 = *v97;
        v191 = v98;

        v101._countAndFlagsBits = v100;
        v101._object = v99;
        String.append(_:)(v101);
        v103 = v190;
        v102 = v191;
        v104 = (v187 + *(v185 + 68));
        v105 = v104[1];
        v106 = *(v187 + 16);
        v107 = *(v187 + 24);
        v190 = *v104;
        v191 = v105;

        v108._countAndFlagsBits = v106;
        v108._object = v107;
        String.append(_:)(v108);
        v109 = v190;
        v110 = v191;
        v190 = v103;
        v191 = v102;
        v82 = v185;
        v188 = v109;
        v189 = v110;
        sub_100035F3C();
        v111 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        v11 = v184;

        v92 = v111 == -1;
      }
    }

    else
    {
      v92 = v86 < v87;
    }

    a4 = type metadata accessor for FMDeviceCellViewModel;
    sub_10032A9A4(v187, type metadata accessor for FMDeviceCellViewModel);
    sub_10032A9A4(v16, type metadata accessor for FMDeviceCellViewModel);
    if (!v92)
    {
      goto LABEL_55;
    }

    if (v186)
    {
      sub_10032AA04(v81, v11);
      swift_arrayInitWithTakeFrontToBack();
      sub_10032AA04(v11, v83);
      v83 += v79;
      v81 += v79;
      if (__CFADD__(v80++, 1))
      {
LABEL_55:
        v69 = v182 + 1;
        v78 = v179 + v173;
        v80 = v178 - 1;
        v81 = v177 + v173;
        if (v182 + 1 == v176)
        {
          v5 = v169;
          a3 = v172;
          v69 = v176;
          v21 = v181;
          v28 = v168;
          goto LABEL_83;
        }

        continue;
      }

      goto LABEL_57;
    }

    break;
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
}