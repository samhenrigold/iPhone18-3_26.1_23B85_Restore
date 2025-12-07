uint64_t sub_100454304()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0560);
  v1 = sub_1000056A8(v0, qword_1009D0560);
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x8000000100814370;
  *(v1 + 16) = sub_1004543CC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100454794()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_100986078);
  v1 = sub_1000056A8(v0, qword_100986078);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4045000000000000;
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x8000000100814400;
  *(v1 + 16) = sub_100459C74;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightBold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004548FC()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0980);
  v1 = sub_1000056A8(v0, qword_1009D0980);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000001008141C0;
  *(v1 + 16) = sub_1004549B8;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_1004549B8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.prefersSmallerText.getter();
  (*(v1 + 8))(v3, v0);
  v5 = &UIFontTextStyleTitle2;
  if (v4)
  {
    v5 = &UIFontTextStyleTitle3;
  }

  v6 = *v5;

  return v6;
}

uint64_t sub_100454ADC()
{
  v0 = type metadata accessor for Paragraph.Style();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, qword_1009D09C8);
  v8 = sub_1000056A8(v7, qword_1009D09C8);
  (*(v1 + 104))(v6, enum case for Paragraph.Style.standard(_:), v0);
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  *v8 = 0x7061726761726170;
  *(v8 + 8) = 0xE900000000000068;
  *(v8 + 16) = sub_100459A24;
  *(v8 + 24) = v11;
  *(v8 + 32) = 0;
  return (*(*(v7 - 8) + 104))(v8, enum case for FontUseCase.dynamicPreferredFont(_:), v7);
}

uint64_t sub_100454CF8()
{
  v0 = type metadata accessor for Paragraph.Style();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, qword_1009D0A10);
  v8 = sub_1000056A8(v7, qword_1009D0A10);
  (*(v1 + 104))(v6, enum case for Paragraph.Style.article(_:), v0);
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  *v8 = 0xD000000000000010;
  *(v8 + 8) = 0x80000001008142B0;
  *(v8 + 16) = sub_100459C70;
  *(v8 + 24) = v11;
  *(v8 + 32) = 0;
  return (*(*(v7 - 8) + 104))(v8, enum case for FontUseCase.dynamicPreferredFont(_:), v7);
}

uint64_t sub_100454F70()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0AA0);
  v1 = sub_1000056A8(v0, qword_1009D0AA0);
  *v1 = 0xD00000000000001BLL;
  *(v1 + 8) = 0x8000000100814180;
  *(v1 + 16) = sub_100455038;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100455040()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0AB8);
  v1 = sub_1000056A8(v0, qword_1009D0AB8);
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x80000001008142F0;
  *(v1 + 16) = sub_100455108;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100455318()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0CB0);
  v1 = sub_1000056A8(v0, qword_1009D0CB0);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x8000000100813FA0;
  *(v1 + 16) = sub_1004553E0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004553EC()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0CC8);
  v1 = sub_1000056A8(v0, qword_1009D0CC8);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x8000000100813F70;
  *(v1 + 16) = sub_1004554B4;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_1004556BC()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0ED8);
  v1 = sub_1000056A8(v0, qword_1009D0ED8);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x8000000100813FD0;
  *(v1 + 16) = sub_100459A30;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1004557D4()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0EF0);
  v1 = sub_1000056A8(v0, qword_1009D0EF0);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4024000000000000;
  *v1 = 0xD000000000000017;
  *(v1 + 8) = 0x8000000100814010;
  *(v1 + 16) = sub_100459C7C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1004558EC()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F08);
  v1 = sub_1000056A8(v0, qword_1009D0F08);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002CLL;
  *(v1 + 8) = 0x8000000100814030;
  *(v1 + 16) = sub_100459C7C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_100455A04()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F20);
  v1 = sub_1000056A8(v0, qword_1009D0F20);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD00000000000002DLL;
  *(v1 + 8) = 0x8000000100814060;
  *(v1 + 16) = sub_100459C7C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_100455B1C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F38);
  v1 = sub_1000056A8(v0, qword_1009D0F38);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002BLL;
  *(v1 + 8) = 0x8000000100814090;
  *(v1 + 16) = sub_100459C7C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

uint64_t sub_100455C34()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F50);
  v1 = sub_1000056A8(v0, qword_1009D0F50);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x8000000100813FF0;
  *(v1 + 16) = sub_100459A3C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

UIFontTextStyle sub_100455D28()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F68);
  v1 = sub_1000056A8(v0, qword_1009D0F68);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD00000000000001DLL;
  *(v1 + 8) = 0x8000000100814200;
  *(v1 + 16) = sub_100459A44;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

UIFontTextStyle sub_100455E40()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F80);
  v1 = sub_1000056A8(v0, qword_1009D0F80);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4026000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x8000000100814440;
  *(v1 + 16) = sub_100459C80;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

uint64_t sub_100455F58()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0F98);
  v1 = sub_1000056A8(v0, qword_1009D0F98);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000031;
  *(v1 + 8) = 0x80000001008140C0;
  *(v1 + 16) = sub_100459C74;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_10045604C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0FB0);
  v1 = sub_1000056A8(v0, qword_1009D0FB0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4020000000000000;
  *v1 = 0xD000000000000032;
  *(v1 + 8) = 0x8000000100814100;
  *(v1 + 16) = sub_100459C74;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_100456140()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D0FC8);
  v1 = sub_1000056A8(v0, qword_1009D0FC8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000030;
  *(v1 + 8) = 0x8000000100814140;
  *(v1 + 16) = sub_100459C74;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004564B0()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1250);
  v1 = sub_1000056A8(v0, qword_1009D1250);
  v2 = sub_10045658C(13.0, 16.0, 18.0, 32.0);
  *v1 = 0x747542726566666FLL;
  *(v1 + 8) = 0xEB000000006E6F74;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_10045658C(double a1, double a2, double a3, double a4))()
{
  v8 = type metadata accessor for TimingCurve();
  v42 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  sub_10002849C(&qword_100986090, &qword_1007CDB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007CC5F0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v40[1] = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v45 = a1;
  v44 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v40[0] = *(v9 + 104);
  (v40[0])(v11, enum case for TimingCurve.linear(_:), v8);
  v17 = UIContentSizeCategoryExtraSmall;
  v18 = UIContentSizeCategorySmall;
  Interpolator.init(fromValue:toValue:curve:)();
  v41 = v12;
  Interpolator.value(forInput:)();
  v20 = v43 + 8;
  v19 = *(v43 + 8);
  v19(v14, v12);
  v43 = v20;
  *(inited + 56) = round(v45);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v45 = a1;
  v44 = a2;
  v21 = v16;
  v22 = v16;
  v23 = v42;
  v24 = v40[0];
  (v40[0])(v11, v21, v42);
  v25 = UIContentSizeCategoryMedium;
  Interpolator.init(fromValue:toValue:curve:)();
  v26 = v41;
  Interpolator.value(forInput:)();
  v19(v14, v26);
  *(inited + 72) = round(v45);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v23);
  v27 = UIContentSizeCategoryLarge;
  v28 = UIContentSizeCategoryExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  v29 = v41;
  Interpolator.value(forInput:)();
  v19(v14, v29);
  *(inited + 104) = round(v45);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v42);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v19(v14, v29);
  *(inited + 120) = round(v45);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  *(inited + 152) = a4;
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  *(inited + 168) = a4;
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  *(inited + 184) = a4;
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  *(inited + 200) = a4;
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  v33 = UIContentSizeCategoryAccessibilityLarge;
  v34 = UIContentSizeCategoryAccessibilityExtraLarge;
  v35 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v36 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v37 = sub_100396F60(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100986098, &qword_1007CDB78);
  swift_arrayDestroy();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = a2;
  return sub_100459C78;
}

uint64_t sub_100456B34()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1268);
  v1 = sub_1000056A8(v0, qword_1009D1268);
  v2 = sub_10045658C(12.0, 13.0, 16.0, 26.0);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x8000000100814330;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_100456C10()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1280);
  v1 = sub_1000056A8(v0, qword_1009D1280);
  v2 = sub_10045658C(14.0, 17.0, 19.0, 33.0);
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x8000000100814310;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_100456CF4()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1298);
  v1 = sub_1000056A8(v0, qword_1009D1298);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007CDB60;
  strcpy(v1, "inAppPurchase");
  *(v1 + 14) = -4864;
  *(v1 + 16) = sub_100459A28;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightRegular;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_100456E04()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D12C8);
  v1 = sub_1000056A8(v0, qword_1009D12C8);
  v2 = sub_100456EE0(14.0, 17.0, 23.0, 23.0);
  *v1 = 0xD000000000000011;
  *(v1 + 8) = 0x8000000100814250;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_100456EE0(double a1, double a2, double a3, double a4))()
{
  v8 = type metadata accessor for TimingCurve();
  v48 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  sub_10002849C(&qword_100986090, &qword_1007CDB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007CC5F0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v46 = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v54 = a1;
  v53 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v17 = *(v9 + 104);
  v51 = enum case for TimingCurve.linear(_:);
  v17(v11, enum case for TimingCurve.linear(_:), v8);
  v18 = UIContentSizeCategoryExtraSmall;
  v19 = UIContentSizeCategorySmall;
  Interpolator.init(fromValue:toValue:curve:)();
  v47 = v12;
  Interpolator.value(forInput:)();
  v21 = v49 + 8;
  v20 = *(v49 + 8);
  v20(v14, v12);
  *(inited + 56) = round(v54);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v54 = a1;
  v53 = a2;
  v22 = v16;
  v23 = v48;
  v50 = v9 + 104;
  v17(v11, v22, v48);
  v52 = v17;
  v24 = UIContentSizeCategoryMedium;
  Interpolator.init(fromValue:toValue:curve:)();
  v25 = v47;
  Interpolator.value(forInput:)();
  v20(v14, v25);
  *(inited + 72) = round(v54);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v54 = a2;
  v53 = a3;
  v17(v11, v51, v23);
  v26 = UIContentSizeCategoryLarge;
  v27 = UIContentSizeCategoryExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  v28 = v47;
  Interpolator.value(forInput:)();
  v49 = v21;
  v45 = v20;
  v20(v14, v28);
  *(inited + 104) = round(v54);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v54 = a2;
  v53 = a3;
  v29 = v51;
  v52(v11, v51, v23);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v20(v14, v28);
  *(inited + 120) = round(v54);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  v54 = a3;
  v53 = a4;
  v52(v11, v29, v23);
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v33 = v45;
  v45(v14, v28);
  *(inited + 152) = round(v54);
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  v54 = a3;
  v53 = a4;
  v34 = v48;
  v52(v11, v29, v48);
  v35 = UIContentSizeCategoryAccessibilityLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v36 = v33;
  v33(v14, v28);
  *(inited + 168) = round(v54);
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  v54 = a3;
  v53 = a4;
  v37 = v52;
  v52(v11, v29, v34);
  v38 = UIContentSizeCategoryAccessibilityExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v36(v14, v28);
  *(inited + 184) = round(v54);
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v54 = a3;
  v53 = a4;
  v37(v11, v51, v34);
  v39 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v36(v14, v28);
  *(inited + 200) = round(v54);
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v40 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v41 = sub_100396F60(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100986098, &qword_1007CDB78);
  swift_arrayDestroy();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a2;
  return sub_100459A50;
}

uint64_t sub_100457710()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D12F8);
  v1 = sub_1000056A8(v0, qword_1009D12F8);
  v2 = sub_100456EE0(13.0, 15.0, 18.0, 18.0);
  *v1 = 0xD000000000000029;
  *(v1 + 8) = 0x8000000100814220;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_100457894()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D13B8);
  v1 = sub_1000056A8(v0, qword_1009D13B8);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x8000000100814270;
  *(v1 + 16) = sub_10045795C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_10045795C(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    return 13.0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 13.0;
    if ((v6 & 1) == 0)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
      {

        return 15.0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 15.0;
        if ((v13 & 1) == 0)
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;
          if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
          {

            return 18.0;
          }

          else
          {
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = 10.0;
            if (v18)
            {
              return 18.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100457B94()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1460);
  v1 = sub_1000056A8(v0, qword_1009D1460);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000001008142D0;
  *(v1 + 16) = sub_100457C5C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightMedium;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_100457C5C(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    return 16.0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 16.0;
    if ((v6 & 1) == 0)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
      {

        return 18.0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 18.0;
        if ((v13 & 1) == 0)
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;
          if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
          {

            return 20.0;
          }

          else
          {
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = 14.0;
            if (v18)
            {
              return 20.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100457E04()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1478);
  v1 = sub_1000056A8(v0, qword_1009D1478);
  *v1 = 0xD00000000000001ALL;
  *(v1 + 8) = 0x8000000100814390;
  *(v1 + 16) = sub_100457ECC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_100457ECC(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    return 11.0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 11.0;
    if ((v6 & 1) == 0)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
      {

        return 13.0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 13.0;
        if ((v13 & 1) == 0)
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;
          if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
          {

            return 15.0;
          }

          else
          {
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = 9.0;
            if (v18)
            {
              return 15.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100458074()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1490);
  v1 = sub_1000056A8(v0, qword_1009D1490);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x8000000100814350;
  *(v1 + 16) = sub_100455038;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_10045813C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D14A8);
  v1 = sub_1000056A8(v0, qword_1009D14A8);
  strcpy(v1, "todayCardTitle");
  *(v1 + 15) = -18;
  *(v1 + 16) = sub_10045820C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_10045820C(uint64_t a1)
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if (Main == 1)
  {
    return 26.0;
  }

  return result;
}

uint64_t sub_100458234()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D14C0);
  v1 = sub_1000056A8(v0, qword_1009D14C0);
  *v1 = 0xD000000000000013;
  *(v1 + 8) = 0x8000000100814420;
  *(v1 + 16) = sub_1004582FC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1004582FC(uint64_t a1)
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if ((Main - 1) <= 3)
  {
    return dbl_1007CDB80[Main - 1];
  }

  return result;
}

uint64_t sub_10045834C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D14F0);
  v1 = sub_1000056A8(v0, qword_1009D14F0);
  *v1 = 0xD000000000000021;
  *(v1 + 8) = 0x80000001008143B0;
  *(v1 + 16) = sub_100458414;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_10045844C(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v7 = type metadata accessor for Paragraph.Style();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FontUseCase();
  sub_100005644(v11, a2);
  v12 = sub_1000056A8(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13 = Paragraph.Style.textStyle.getter();
  (*(v8 + 8))(v10, v7);
  *v12 = v13;
  *(v12 + 8) = a4;
  return (*(*(v11 - 8) + 104))(v12, enum case for FontUseCase.preferredFont(_:), v11);
}

uint64_t sub_100458674()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D15F8);
  v1 = sub_1000056A8(v0, qword_1009D15F8);
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x80000001008141A0;
  *(v1 + 16) = sub_10045873C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightHeavy;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100458858()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1718);
  v1 = sub_1000056A8(v0, qword_1009D1718);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x8000000100814290;
  *(v1 + 16) = sub_1001B37E8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100458A38()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D1838);
  v1 = sub_1000056A8(v0, qword_1009D1838);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000001008143E0;
  *(v1 + 16) = sub_1004543CC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100458CB4()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D19D0);
  v1 = sub_1000056A8(v0, qword_1009D19D0);
  *v1 = 0x756F436C6C616D73;
  *(v1 + 8) = 0xEF6567646142746ELL;
  *(v1 + 16) = sub_100458D84;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100458D8C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D19E8);
  v1 = sub_1000056A8(v0, qword_1009D19E8);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000001008141E0;
  *(v1 + 16) = sub_100458414;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id sub_100459130(uint64_t a1, uint64_t *a2, id *a3, int a4)
{
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, a2);
  v8 = sub_1000056A8(v7, a2);
  v10 = *a3;
  *v8 = *a3;
  *(v8 + 8) = a4;
  (*(*(v7 - 8) + 104))();

  return v10;
}

id sub_100459200(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, a2);
  v8 = sub_1000056A8(v7, a2);
  v11 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  (*(*(v7 - 8) + 104))();

  return v11;
}

uint64_t sub_1004592B8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.prefersSmallerText.getter();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return Paragraph.Style.smallerTextStyle.getter();
  }

  else
  {
    return Paragraph.Style.textStyle.getter();
  }
}

double sub_1004593A0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
  [v5 scaledValueForValue:v6 compatibleWithTraitCollection:a3];
  v8 = v7;

  return v8;
}

double sub_100459440(uint64_t a1, uint64_t a2, double a3)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    goto LABEL_13;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return a3;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return a3;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    return a3;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
    goto LABEL_13;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    return a3;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
    goto LABEL_13;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    return a3;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {
    goto LABEL_13;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    return a3;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
LABEL_13:

    return a3;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v43 & 1) == 0)
  {
    v44 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
    v45 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
    v48.is_nil = UIContentSizeCategoryAccessibilityExtraLarge;
    v48.value._rawValue = 0;
    isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v48, v49).super.isa;

    [v44 scaledValueForValue:isa compatibleWithTraitCollection:a3];
    a3 = v47;
  }

  return a3;
}

double sub_1004597D4(uint64_t a1, double a2, double a3)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    goto LABEL_13;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    return a2;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
    goto LABEL_13;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    return a2;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
    goto LABEL_13;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    return a2;
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
    goto LABEL_13;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    return a2;
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {
LABEL_13:

    return a2;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v32 & 1) == 0)
  {
    return a3;
  }

  return a2;
}

double sub_100459A54()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = sub_1003D8ACC();
    if (v5)
    {
      return *(*(v2 + 56) + 8 * v4);
    }
  }

  return v3;
}

uint64_t sub_100459AA0()
{
  type metadata accessor for Paragraph.Style();

  return sub_1004592B8();
}

UIContentSizeCategory sub_100459B00(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {
LABEL_13:

        return a1;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        return UIContentSizeCategoryMedium;
      }
    }
  }

  return a1;
}

unint64_t sub_100459C88()
{
  result = qword_100974BB0;
  if (!qword_100974BB0)
  {
    type metadata accessor for InformationRibbonCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BB0);
  }

  return result;
}

double sub_100459CF0(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  ReadOnlyLens.value.getter();
  (*(v4 + 8))(v6, v3);
  ItemLayoutContext.sectionIndex.getter();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v7 = v12;
  v8 = sub_100079F24();
  v10 = sub_10060906C(v9);
  if (v10)
  {
    sub_100607A08(v10, v7, a2, v8);
  }

  swift_unknownObjectRelease();
  return result;
}

void sub_100459F1C(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2[2])
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
LABEL_3:
    v10 = 0;
LABEL_10:
    v9 = 0;
LABEL_11:
    v7 = 0;
LABEL_12:
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  if (!a3)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  if (!a5)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    goto LABEL_3;
  }

  if (!a6)
  {

    v12 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = *a2;
  v15 = a2[1];
  v12 = a1;
LABEL_13:
  *a7 = v12;
  *(a7 + 8) = v8;
  *(a7 + 16) = v14;
  *(a7 + 32) = v15;
  *(a7 + 48) = v10;
  *(a7 + 56) = v9;
  *(a7 + 64) = v7;
}

__n128 sub_10045A0B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_1009860C8 + 32);
  result = *(v1 + qword_1009860C8);
  v4 = *(v1 + qword_1009860C8 + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

double sub_10045A0D0(uint64_t a1)
{
  *(v1 + qword_1009860D8) = a1;
  swift_unknownObjectRelease();
  return result;
}

__n128 sub_10045A0E8@<Q0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v1 + qword_1009860C8 + 32);
  v5 = *(v1 + qword_1009860C8 + 16);
  v12[0] = *(v1 + qword_1009860C8);
  v12[1] = v5;
  v13 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + qword_1009860D8);
  swift_unknownObjectRetain();
  sub_100459F1C(Strong, v12, v6, v7, v8, v9, v14);
  v10 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v15;
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

void *sub_10045A1E0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_10045AE10(v8, v9);

  return v12;
}

id sub_10045A26C()
{
  sub_10045AEB8();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_10045A2CC(uint64_t a1)
{
  v2 = swift_isaMask & *v1;
  *(v1 + qword_1009860D8) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v1 + qword_1009860E8))
  {
    sub_10045A0E8(v10);
    type metadata accessor for FullScreenTransitionContext(255, *(v2 + 80), *(v2 + 88), v3);
  }

  else
  {
    *&v5 = sub_10045A0E8(v10).n128_u64[0];
    v6 = *(v2 + 80);
    v7 = *(v2 + 88);
    if (v10[0])
    {
      [v10[8] completeTransition:{0, v5}];
    }

    type metadata accessor for FullScreenTransitionContext(255, v6, v7, v4);
  }

  v8 = type metadata accessor for Optional();
  return (*(*(v8 - 8) + 8))(v10, v8);
}

void sub_10045A404(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_10045A2CC(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_10045A4A4(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + qword_1009860F0;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void sub_10045A4C0(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 view];
  [a1 translationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([a1 state] == 1)
  {
    v9 = (v1 + qword_1009860F0);
    *v9 = v6;
    v9[1] = v8;
    *(v9 + 16) = 0;
    *(v1 + qword_1009860E8) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  v12 = (v1 + qword_1009860F0);
  if ((*(v1 + qword_1009860F0 + 16) & 1) == 0 && *(v1 + qword_1009860D8))
  {
    v13 = *v12;
    v63 = v12[1];
    v14 = [swift_unknownObjectRetain() containerView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v71.origin.x = v16;
    v71.origin.y = v18;
    v71.size.width = v20;
    v71.size.height = v22;
    MidX = CGRectGetMidX(v71);
    v72.origin.x = v16;
    v72.origin.y = v18;
    v72.size.width = v20;
    v72.size.height = v22;
    MidY = CGRectGetMidY(v72);
    v25 = v8 - v63;
    v26 = v6 - v13 + MidX;
    v27 = v25 + MidY;
    v28 = [a1 state];
    if (v28 != 3)
    {
      if (v28 == 2)
      {
        hypot(MidX - v26, MidY - v27);
        v30 = swift_unknownObjectUnownedLoadStrong();
        [v30 setCenter:{v26, v27}];

        sub_10002849C(&qword_1009701B0, qword_1007B1800);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1007B10D0;
        aBlock = Double.description.getter();
        v65 = v32;
        v33._countAndFlagsBits = 0x656C706D6F632025;
        v33._object = 0xEA00000000006574;
        String.append(_:)(v33);
        v34 = aBlock;
        v35 = v65;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 32) = v34;
        *(v31 + 40) = v35;
        print(_:separator:terminator:)();
      }

      type metadata accessor for FullScreenTransitionContext(255, *(v3 + 80), *(v3 + 88), v29);
      v36 = type metadata accessor for Optional();
      (*(*(v36 - 8) + 8))(v70, v36);
      swift_unknownObjectRelease();
      return;
    }

    v37 = [a1 view];
    [a1 velocityInView:v37];
    v39 = v38;
    v41 = v40;

    v42 = hypot(v39, v41) / 500.0;
    v43 = fabs(v39);
    v44 = fabs(v41);
    v45 = v43 * v42;
    v46 = v44 * v42;
    if (v45 > v46)
    {
      v46 = v45;
    }

    if (v46 > 50.0)
    {
      v46 = 50.0;
    }

    if (v39 == 0.0 && v41 == 0.0)
    {
      v47 = 0.0;
      if (v44 >= v43)
      {
LABEL_17:
        v48 = v46;
        v46 = v46 * v47;
LABEL_26:
        if (v46 > v48)
        {
          v51 = v46;
        }

        else
        {
          v51 = v48;
        }

        v52 = v51 / 50.0 * 0.2;
        v53 = v26 + v46;
        v54 = v27 + v48;
        v55 = objc_opt_self();
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v57 = swift_allocObject();
        v58 = *(v3 + 80);
        *(v57 + 16) = v58;
        v59 = *(v3 + 88);
        *(v57 + 24) = v59;
        *(v57 + 32) = v56;
        *(v57 + 40) = v53;
        *(v57 + 48) = v54;
        v68 = sub_10045AE00;
        v69 = v57;
        aBlock = _NSConcreteStackBlock;
        v65 = 1107296256;
        v66 = sub_100007A08;
        v67 = &unk_1008C3BE8;
        v60 = _Block_copy(&aBlock);

        [v55 animateWithDuration:0x20000 delay:v60 options:0 animations:v52 completion:0.0];
        swift_unknownObjectRelease();
        _Block_release(v60);
        type metadata accessor for FullScreenTransitionContext(255, v58, v59, v61);
        v62 = type metadata accessor for Optional();
        (*(*(v62 - 8) + 8))(v70, v62);
        return;
      }
    }

    else
    {
      if (v43 > v44)
      {
        v49 = v43;
      }

      else
      {
        v49 = v44;
      }

      v50 = v44 < v43;
      if (v44 < v43)
      {
        v43 = v44;
      }

      v47 = v43 / v49;
      if (!v50)
      {
        goto LABEL_17;
      }
    }

    v48 = v46 * v47;
    goto LABEL_26;
  }
}

void sub_10045AA30(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectUnownedLoadStrong();

    [v7 setCenter:{a2, a3}];
  }
}

void sub_10045AAC0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10045A4C0(v4);
}

id sub_10045AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FullScreenTransitionManager(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_10045ABD8(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectUnownedDestroy();

  swift_unknownObjectRelease();
  return result;
}

unint64_t sub_10045AC90()
{
  result = qword_1009861D8[0];
  if (!qword_1009861D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1009861D8);
  }

  return result;
}

void sub_10045ACE4(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + qword_1009860D0))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 *a1];
}

void sub_10045AD9C(uint64_t a1)
{
  sub_10045ACE4(&selRef_removeGestureRecognizer_);
  swift_unknownObjectWeakAssign();
  sub_10045ACE4(&selRef_addGestureRecognizer_);
}

void *sub_10045AE10(void *a1, uint64_t a2)
{
  v4 = swift_dynamicCastUnknownClass();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  swift_unknownObjectWeakAssign();
  v6 = a1;
  sub_10045AD9C(v5);

  *(v2 + qword_1009860B8) = 1;
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_10045AEB8()
{
  result = v0;
  *(v0 + qword_1009860B8) = 0;
  return result;
}

uint64_t sub_10045AF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10045AF48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10045AF90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10045B064(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  sub_1000056A8(v7, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100814630;
  v8._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v14 = &type metadata for String;
  v12 = a1;
  v13 = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&v12);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v10 = [a3 _launchTestName];
  v11 = String._bridgeToObjectiveC()();
  [a3 failedTest:v10 withFailure:v11];
}

id sub_10045B2A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = type metadata accessor for PageGrid.Direction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for PageGrid();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    PageGrid.horizontalDirectionalMargins.getter();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    PageGrid.horizontalDirectionalMargins.getter();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10045B608()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10045B668(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.indexPath.getter();
  v9 = IndexPath.section.getter();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = a1;
        v15 = v13(ObjectType, v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = [Strong view];

          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = [v18 safeAreaLayoutGuide];

          [v19 layoutFrame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v39.origin.x = v21;
          v39.origin.y = v23;
          v39.size.width = v25;
          v39.size.height = v27;
          MinY = CGRectGetMinY(v39);
        }

        else
        {
          MinY = 0.0;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *&v29[qword_1009D01D8];
          if (v31)
          {
            v32 = v15 - MinY;

            if (v32 == *(v31 + 32))
            {

              return;
            }

            *(v31 + 32) = v32;
            [a3 _systemContentInset];
            v34 = v33;
            [a3 contentOffset];
            v36 = v35;
            [a3 contentInset];
            (*(v31 + 16))(v34 + v36 + v37 > *(v31 + 32));
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_10045B96C()
{
  v0 = sub_10002849C(&qword_100986438, &unk_1007CE040);
  sub_100005644(v0, qword_1009863A8);
  sub_1000056A8(v0, qword_1009863A8);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_10045BA20()
{
  ObjectType = swift_getObjectType();
  v26 = type metadata accessor for AutomationSemantics();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  *&v0[OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews] = _swiftEmptyArrayStorage;
  *&v31 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v8 = type metadata accessor for ProductRatingsHistogramProgressBar();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(v8) init];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *&v0[OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews] = v31;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v24 = ObjectType;
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews];
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v28 = v9;
    v25 = v10;

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v26;
    v29 = v25 & 0xC000000000000001;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    v14 = v25 + 32;
    v15 = (v2 + 8);
    while (!__OFSUB__(v11--, 1))
    {
      if (v29)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v11 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v9 = *&v14[8 * v11];
      }

      v2 = v9;
      v10 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v31 = 0u;
      v32 = 0u;
      memset(v30, 0, sizeof(v30));
      static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
      sub_10003D444(v30);
      sub_10003D444(&v31);
      *&v31 = v12 + 1;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v32 + 1) = &type metadata for String;
      *&v31 = v17;
      *(&v31 + 1) = v18;
      AutomationSemantics.attribute(key:value:)();
      v19 = *v15;
      (*v15)(v4, v13);
      sub_10003D444(&v31);
      v10 = v2;
      UIView.setAutomationSemantics(_:)();
      v19(v7, v13);
      [v28 addSubview:v2];

      ++v12;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = v9;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v23;
  }

LABEL_14:

  v20 = v28;
  sub_10045BF00();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B10D0;
  *(v21 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v21 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(swift_allocObject() + 16) = v24;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v20;
}

id sub_10045BF00()
{
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  if (qword_10096E480 != -1)
  {
    swift_once();
  }

  v0 = 0;
  do
  {
    v69 = v0;
    v3 = *(&off_1008B00B0 + v0 + 32);
    v4 = sub_10002849C(&qword_100986438, &unk_1007CE040);
    sub_1000056A8(v4, qword_1009863A8);
    v71 = v67;
    v5 = v67;
    Conditional.evaluate(with:)();
    v65 = v5;

    v6 = v72;
    v7 = type metadata accessor for RatingView();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
    v9 = &v8[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
    *v9 = 0;
    v9[8] = 1;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = v3;
    if (qword_10096DAE8 != -1)
    {
      swift_once();
    }

    v10 = qword_100982C88;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
    v8[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = v6;
    *v9 = 0;
    v9[8] = 1;
    v8[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
    objc_allocWithZone(type metadata accessor for StarRow());
    v11 = v10;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(v3, 1, v6, 0, 1, 0, 1);
    v8[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
    *&v8[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = 0;
    v70.receiver = v8;
    v70.super_class = v7;
    v12 = objc_msgSendSuper2(&v70, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView];
    v68 = OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView;
    if (!v14)
    {
      v17 = v12;
      goto LABEL_19;
    }

    v15 = *&v12[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
    if (v15)
    {
      v16 = *&v12[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
    }

    else
    {
      v16 = *&v12[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
    }

    v18 = *(v14 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
    *(v14 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v16;
    if (!v18)
    {
      v24 = v15;
      v25 = v16;
      v26 = v13;
      v21 = 0;
LABEL_17:
      sub_1003A450C();

      goto LABEL_18;
    }

    v19 = v15;
    v20 = v16;
    v21 = v18;
    v22 = v13;
    v23 = static NSObject.== infix(_:_:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_18:
LABEL_19:
    v27 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
    v28 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
    v29 = OBJC_IVAR____TtC8AppStore10RatingView_starColor;
    v30 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
    v31 = *(v28 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
    *(v28 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v30;
    if (!v31)
    {
      v35 = v30;
      v33 = 0;
LABEL_23:
      sub_1003A450C();
      v32 = v30;
      goto LABEL_24;
    }

    v32 = v30;
    v33 = v31;
    v34 = static NSObject.== infix(_:_:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_24:

    v36 = *&v13[v27];
    v37 = OBJC_IVAR____TtC8AppStore10RatingView_rating;
    v38 = *&v36[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
    *&v36[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_rating];
    v39 = v36;
    sub_1003A3A64(v38);

    if (*&v13[v68])
    {
      [v13 addSubview:?];
    }

    [v13 addSubview:{*&v13[v27], v65}];

    v40 = v3;
    v41 = *&v13[v37];
    *&v13[v37] = v3;
    if (v41 != v3)
    {
      if (v3 < 0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars];
        if (v42 >= v40)
        {
          goto LABEL_32;
        }
      }

      *&v13[v37] = v42;
      v40 = v42;
LABEL_32:
      v43 = *&v13[v27];
      v44 = *(v43 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating);
      *(v43 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating) = v40;
      sub_1003A3A64(v44);
    }

    v45 = static UIColor.primaryText.getter();
    v46 = *&v13[v29];
    *&v13[v29] = v45;
    v2 = v45;
    if (static NSObject.== infix(_:_:)())
    {
      v1 = v2;
      v2 = v46;
      goto LABEL_5;
    }

    v47 = *&v13[v68];
    if (v47)
    {
      v48 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
      if (v48)
      {
        v49 = *&v13[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
      }

      else
      {
        v49 = *&v13[v29];
      }

      v50 = *(v47 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
      *(v47 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v49;
      if (v50)
      {
        v51 = v48;
        v52 = v49;
        v50 = v50;
        v53 = static NSObject.== infix(_:_:)();

        if (v53)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v54 = v48;
        v55 = v49;
      }

      sub_1003A450C();
      v52 = v49;
LABEL_43:
    }

    v56 = *&v13[v27];
    v57 = *&v13[v29];
    v58 = *(v56 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
    *(v56 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v57;
    if (v58)
    {
      v59 = v57;
      v1 = v58;
      v60 = static NSObject.== infix(_:_:)();

      if (v60)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v61 = v57;
      v1 = 0;
    }

    sub_1003A450C();
    v59 = v57;
LABEL_49:

LABEL_5:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v0 = v69 + 8;
  }

  while (v69 != 32);
  v62 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v63 = *&v66[v62];
  *&v66[v62] = _swiftEmptyArrayStorage;
  sub_10045C630(v63);

  return [v66 setNeedsLayout];
}

void sub_10045C544(void *a1)
{
  v2 = UITraitCollection.isSizeClassCompact.getter() & 1;
  v3 = [a1 traitCollection];
  v4 = UITraitCollection.isSizeClassCompact.getter() & 1;

  if (v2 != v4)
  {
    sub_10045BF00();
  }
}

void sub_10045C630(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v7 = *&v13[v6];
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    if (qword_10096E488 != -1)
    {
      swift_once();
    }

    ++v9;
    v12 = qword_1009863C0;
    [v11 setMinimumContentSizeCategory:qword_1009863C0];
    [v11 setMaximumContentSizeCategory:v12];
    [v13 addSubview:v11];
  }

  while (v8 != v9);
}

void *sub_10045C824(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B0B70;
  *(v11 + 32) = a1;
  v12 = a1;
  v13 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  [v10 measurementsWithFitting:v13 in:{a2, a3}];

  if (qword_10096E468 != -1)
  {
    swift_once();
  }

  v14 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_1000056A8(v14, qword_100986360);
  Conditional.evaluate<>(in:)();
  if (qword_10096E470 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v14, qword_100986378);
  return Conditional.evaluate<>(in:)();
}

void sub_10045CA70(id a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v11 = *&v6[v10];
  if (v11 >> 62)
  {
LABEL_24:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v12 = *(v11 + 32);
      }

      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007B0B70;
      *(v13 + 32) = a1;
      v14 = a1;
      v15 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      [v12 measurementsWithFitting:v15 in:{a4, a5}];
      v17 = v16;

      [v6 setFrame:{a2, a3, a4, a5}];
      if (qword_10096E468 != -1)
      {
        swift_once();
      }

      v18 = sub_10002849C(&qword_100979010, qword_1007BE140);
      sub_1000056A8(v18, qword_100986360);
      Conditional.evaluate<>(in:)();
      if (qword_10096E470 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v18, qword_100986378);
      Conditional.evaluate<>(in:)();
      if (qword_10096E478 != -1)
      {
        swift_once();
      }

      a1 = sub_1000056A8(v18, qword_100986390);
      Conditional.evaluate<>(in:)();
      v19 = *&v6[OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews];
      if ((v19 & 0xC000000000000001) != 0 || *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
      {
        v20 = v17 - v33;
        v21 = v33 + v33;
        v11 = 4;
        v22 = 0.0;
        while (1)
        {
          swift_beginAccess();
          v25 = *&v6[v10];
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 - 4 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_24;
            }

            v26 = *(v25 + 8 * v11);
          }

          v27 = v26;
          swift_endAccess();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1007B0B70;
          *(v28 + 32) = v14;
          v29 = v14;
          v30 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
          [v27 measurementsWithFitting:v30 in:{a4, a5}];

          a1 = v27;
          [v6 bounds];
          CGRect.withLayoutDirection(using:relativeTo:)();
          [a1 setFrame:?];

          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v19 + 8 * v11);
          }

          v22 = v21 + v22;
          v24 = v23;
          v34.origin.x = a2;
          v34.origin.y = a3;
          v34.size.width = a4;
          v34.size.height = a5;
          CGRectGetWidth(v34);
          [v6 bounds];
          CGRect.withLayoutDirection(using:relativeTo:)();
          [v24 setFrame:?];

          v20 = v21 + v20;
          if (++v11 == 9)
          {
            return;
          }
        }
      }

      goto LABEL_28;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

char *sub_10045D124()
{
  *&v0[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progress] = 0;
  v1 = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progressView] = v1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  v2 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setClipsToBounds:1];
  v3 = [objc_opt_self() systemGray5Color];
  [v2 setBackgroundColor:v3];

  v4 = OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progressView;
  v5 = *&v2[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progressView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v6 = v5;
  v7 = static UIColor.primaryText.getter();
  [v6 setBackgroundColor:v7];

  [v2 addSubview:*&v2[v4]];
  return v2;
}

void sub_10045D308()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progressView];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  v2 = [v0 traitCollection];
  [v0 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  v11 = [v0 layer];
  [v0 bounds];
  [v11 setCornerRadius:CGRectGetHeight(v14) * 0.5];

  v12 = [v1 layer];
  [v0 bounds];
  [v12 setCornerRadius:CGRectGetHeight(v15) * 0.5];
}

id sub_10045D538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10045D5A4(uint64_t a1)
{
  if (qword_10096E488 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1009863C0;
  sub_100047650(a1, *(a1 + 24));
  v2 = v1;
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

double sub_10045D630(uint64_t a1, double a2)
{
  v4 = type metadata accessor for SystemImage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E480 != -1)
  {
    swift_once();
  }

  v8 = sub_10002849C(&qword_100986438, &unk_1007CE040);
  sub_1000056A8(v8, qword_1009863A8);
  Conditional.evaluate<>(in:)();
  v9 = v28;
  v10 = UITraitCollection.modifyingTraits(_:)();
  v26[1] = a1;
  if (v9 <= 1)
  {
    if (v9)
    {
      v12 = &UIFontTextStyleCaption2;
    }

    else
    {
      v12 = &UIFontTextStyleHeadline;
    }

    v11 = [objc_opt_self() configurationWithTextStyle:*v12 scale:2];
  }

  else if (v9 == 2)
  {
    v11 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v13 = v11;
  v27 = *(v5 + 104);
  v27(v7, enum case for SystemImage.star(_:), v4);
  v26[0] = v10;
  v14 = [v13 configurationWithTraitCollection:v10];
  v15 = static SystemImage.load(_:with:)();

  v16 = *(v5 + 8);
  v16(v7, v4);
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];

  if (v9 <= 1)
  {
    if (v9)
    {
      v18 = &UIFontTextStyleCaption2;
    }

    else
    {
      v18 = &UIFontTextStyleHeadline;
    }

    v17 = [objc_opt_self() configurationWithTextStyle:*v18 scale:2];
  }

  else if (v9 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v19 = v27;
  v20 = v17;
  v19(v7, enum case for SystemImage.starFill(_:), v4);
  v21 = v26[0];
  v22 = [v20 configurationWithTraitCollection:v26[0]];
  v23 = static SystemImage.load(_:with:)();

  v16(v7, v4);
  UIImage.baselineOffsetFromBottom.getter();
  [v23 contentInsets];

  if (qword_10096E468 != -1)
  {
    swift_once();
  }

  v24 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_1000056A8(v24, qword_100986360);
  Conditional.evaluate<>(in:)();
  if (qword_10096E470 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v24, qword_100986378);
  Conditional.evaluate<>(in:)();
  return a2;
}

unint64_t sub_10045DBE8(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_100005744(0, a3, a4);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10045DCF0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_18:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    type metadata accessor for Artwork();
    sub_1004616A4(&unk_1009811F0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }
}

uint64_t sub_10045DE34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v9 = type metadata accessor for FlowOrigin();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowAnimationBehavior();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FlowPresentationContext();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v18 - 8);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v20 - 8);
  v63 = &v55 - v21;
  v22 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v22 - 8);
  v70 = &v55 - v23;
  v62 = type metadata accessor for FlowPage();
  v61 = *(v62 - 1);
  __chkstk_darwin(v62);
  v69 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v25 - 8);
  v72 = &v55 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v55 = v17;
    v56 = v10;
    v57 = v15;
    v58 = v9;
    v59 = v12;
    v60 = *(result + 32);

    v28 = sub_10045DCF0(a1, a4);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    v31 = sub_100397BF0(_swiftEmptyArrayStorage);
    v32 = sub_10054A47C(a6, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100814880);
    v33 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v34 = OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_100397BF0(_swiftEmptyArrayStorage);
    *(v35 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v35 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v33[v34] = v35;
    v36 = OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_galleryLayout;
    *&v33[v36] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0)) init];
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks] = a4;
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_platform] = v71;
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_placeholderImages] = v31;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworkLoader] = v75;
    *&v33[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex] = v30;
    v37 = *&v33[v36];

    v38 = sub_1000659FC(v37, v32);

    v39 = v38;
    v40 = [v39 navigationItem];
    v41 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v39 action:"dismissFrom:"];
    [v40 setRightBarButtonItem:v41];

    *(*&v39[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_1008C0DA0;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v42 = type metadata accessor for StoreNavigationController();
    v43 = objc_allocWithZone(v42);
    *&v43[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = a6;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v78.receiver = v43;
    v78.super_class = v42;

    v45 = objc_msgSendSuper2(&v78, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v45 setDelegate:v45];
    [v45 setModalPresentationStyle:0];
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007B0B70;
    *(v46 + 32) = v39;
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 setViewControllers:isa];

    v48 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    v49 = v72;
    v71 = a6;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) == 1)
    {

      return sub_10002B894(v72, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      (*(v61 + 104))(v69, enum case for FlowPage.viewController(_:), v62);
      v51 = type metadata accessor for URL();
      (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
      v52 = type metadata accessor for ReferrerData();
      (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
      v74 = v42;
      v73 = v45;
      v62 = v45;
      static ActionMetrics.notInstrumented.getter();
      (*(v64 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v65);
      (*(v67 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v68);
      (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v53 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      v54 = v72;
      sub_1005F9C8C(v53, 1, v71, v72);

      return (*(v50 + 8))(v54, v48);
    }
  }

  return result;
}

void sub_10045E858(char a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v7 - v5;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      memset(v7, 0, sizeof(v7));
      ProductDiffablePagePresenter.didSelectExpandMedia(on:sender:)();

      sub_10002B894(v7, &unk_1009711D0, &unk_1007B1A10);
      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_10045E9B0(char a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v7 - v5;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      ShelfLayoutContext.shelf.getter();
      memset(v7, 0, sizeof(v7));
      ProductDiffablePagePresenter.didSelectExpandMedia(on:sender:)();

      sub_10002B894(v7, &unk_1009711D0, &unk_1007B1A10);
      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_10045EAF0()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10045EB74(void *a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v5 = type metadata accessor for ItemLayoutContext();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v104 = v7;
  v105 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Shelf.ContentType();
  v110 = *(v8 - 8);
  __chkstk_darwin(v8);
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v109);
  v111 = &v93 - v10;
  v11 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v108 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  v14 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v17 - 8);
  v19 = &v93 - v18;
  v20 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v20 - 8);
  v103 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v112 = &v93 - v23;
  __chkstk_darwin(v24);
  v113 = &v93 - v25;
  type metadata accessor for ProductMediaCollectionViewCell(0);
  v114 = swift_dynamicCastClass();
  if (!v114)
  {
    return;
  }

  v106 = v8;
  v99 = v6;
  v100 = v5;
  type metadata accessor for ProductMedia();
  sub_1004616A4(&qword_1009717E8, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v26 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  v27 = v116;
  if (!v116)
  {

    return;
  }

  v102 = v26;
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v96 = ProductMedia.platform.getter();
  v98 = v27;
  v94 = ProductMedia.allPlatforms.getter();
  swift_getKeyPath();
  v97 = a2;
  ItemLayoutContext.subscript.getter();

  sub_100094E74(&v16[*(v14 + 48)], v19);
  v28 = v108;
  if ((*(v108 + 48))(v19, 1, v11) == 1)
  {
    sub_10002B894(v16, &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v19, &unk_10098FFB0, qword_1007B3890);
    v29 = v110;
    v30 = v113;
    v93 = *(v110 + 56);
    v93(v113, 1, 1, v106);
  }

  else
  {
    swift_getKeyPath();
    v30 = v113;
    ReadOnlyLens.subscript.getter();

    (*(v28 + 8))(v19, v11);
    v29 = v110;
    v93 = *(v110 + 56);
    v93(v30, 0, 1, v106);
    sub_10002B894(v16, &unk_10098FFB0, qword_1007B3890);
  }

  v31 = v111;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  v32 = v112;
  ReadOnlyLens.subscript.getter();

  v33 = v13;
  v34 = v32;
  (*(v28 + 8))(v33, v11);
  v35 = v106;
  v93(v32, 0, 1, v106);
  v36 = *(v109 + 48);
  sub_100094EE4(v30, v31);
  sub_100094EE4(v34, v31 + v36);
  v37 = *(v29 + 48);
  if (v37(v31, 1, v35) == 1)
  {
    sub_10002B894(v34, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v30, &unk_100992460, &qword_1007B6BF0);
    v38 = v37(v31 + v36, 1, v35);
    v39 = v102;
    v40 = v94;
    if (v38 == 1)
    {
      sub_10002B894(v31, &unk_100992460, &qword_1007B6BF0);
      v41 = v100;
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  v42 = v103;
  sub_100094EE4(v31, v103);
  v43 = v37(v31 + v36, 1, v35);
  v39 = v102;
  if (v43 == 1)
  {
    sub_10002B894(v112, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v113, &unk_100992460, &qword_1007B6BF0);
    (*(v29 + 8))(v42, v106);
    v40 = v94;
LABEL_14:
    sub_10002B894(v31, &qword_100975F10, &unk_1007CE130);
    v41 = v100;
    goto LABEL_15;
  }

  v52 = v31 + v36;
  v53 = v101;
  v54 = v106;
  (*(v29 + 32))(v101, v52, v106);
  sub_1004616A4(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v29 + 8);
  v56(v53, v54);
  sub_10002B894(v112, &unk_100992460, &qword_1007B6BF0);
  sub_10002B894(v113, &unk_100992460, &qword_1007B6BF0);
  v56(v42, v54);
  sub_10002B894(v31, &unk_100992460, &qword_1007B6BF0);
  v41 = v100;
  v40 = v94;
  if (v55)
  {
    goto LABEL_27;
  }

LABEL_15:
  v44 = v40 >> 62;
  if (v40 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v96;
  if (!v45)
  {

    v116 = v46;
    goto LABEL_29;
  }

  v47 = v45 - 1;
  if (__OFSUB__(v45, 1))
  {
    goto LABEL_78;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  if (v47 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  v48 = *(v40 + 8 * v47 + 32);

  v116 = v46;
  if (!v48)
  {
    goto LABEL_29;
  }

LABEL_23:
  v115 = v48;
  type metadata accessor for MediaPlatform();
  sub_1004616A4(&qword_100975F18, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v49)
  {
LABEL_27:

    LODWORD(v113) = 0;
  }

  else
  {
    v50 = v40 & 0xFFFFFFFFFFFFFF8;
    if (v44)
    {
LABEL_30:
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
LABEL_25:
      v51 = *(v50 + 16);
    }

    LODWORD(v113) = v51 > 1;
  }

  v57 = ProductMedia.items.getter();
  v44 = v57;
  v116 = _swiftEmptyArrayStorage;
  if (!(v57 >> 62))
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

  while (1)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
LABEL_34:
    if (v58)
    {
      v40 = 0;
      v39 = (v44 & 0xC000000000000001);
      v41 = v44 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v39)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            v60 = v116;
            v41 = v100;
            v39 = v102;
            goto LABEL_48;
          }
        }

        else
        {
          if (v40 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_62;
          }

          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_45;
          }
        }

        if (ProductMediaItem.screenshot.getter())
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v40;
        if (v59 == v58)
        {
          goto LABEL_46;
        }
      }
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_48:

    v44 = *(v60 + 16);
    if (!v44)
    {
      goto LABEL_66;
    }

LABEL_51:
    v116 = _swiftEmptyArrayStorage;
    v46 = &v116;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:

      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v116 = v46;
      if (v48)
      {
        goto LABEL_23;
      }

LABEL_29:

      v50 = v40 & 0xFFFFFFFFFFFFFF8;
      if (!v44)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    v40 = 0;
    while (1)
    {
      v39 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!ProductMediaItem.screenshot.getter())
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v40 >= *(v60 + 16))
        {
          goto LABEL_63;
        }

        if (!ProductMediaItem.screenshot.getter())
        {
          goto LABEL_83;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v40;
      if (v39 == v44)
      {

        v61 = v116;
        v39 = v102;
        goto LABEL_67;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v44 = _CocoaArrayWrapper.endIndex.getter();
  if (v44)
  {
    goto LABEL_51;
  }

LABEL_66:

  v61 = _swiftEmptyArrayStorage;
LABEL_67:
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 2) = v62;
  *(v63 + 3) = v61;
  v64 = v107;
  *(v63 + 4) = v96;
  *(v63 + 5) = v64;
  v65 = v114;
  v66 = (v114 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v67 = *(v114 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v68 = *(v114 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler + 8);
  *v66 = sub_1004616EC;
  v66[1] = v63;

  sub_10001F63C(v67, v68);

  v69 = *(v65 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView);
  if (v69)
  {
    type metadata accessor for PlatformSelectorView();
    v70 = swift_dynamicCastClass();
    if (v70)
    {
      v71 = v70;
      v72 = swift_allocObject();
      swift_weakInit();
      v73 = v99;
      v74 = v105;
      (*(v99 + 16))(v105, v97, v41);
      v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v113;
      *(v76 + 24) = v72;
      (*(v73 + 32))(v76 + v75, v74, v41);
      v77 = (v71 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
      v78 = *(v71 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
      v79 = v77[1];
      *v77 = sub_1004617C4;
      v77[1] = v76;
      v80 = v69;

      sub_10001F63C(v78, v79);
    }
  }

  v81 = *(v114 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView);
  v82 = v81;

  if (v81)
  {
    type metadata accessor for PlatformSelectorView();
    v83 = swift_dynamicCastClass();
    if (v83)
    {
      v84 = v83;
      v85 = swift_allocObject();
      swift_weakInit();

      v86 = v99;
      v87 = v105;
      (*(v99 + 16))(v105, v97, v41);
      v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = v113;
      *(v89 + 24) = v85;
      (*(v86 + 32))(v89 + v88, v87, v41);
      v90 = (v84 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
      v91 = *(v84 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
      v92 = v90[1];
      *v90 = sub_100461824;
      v90[1] = v89;

      sub_10001F63C(v91, v92);
    }
  }

  else
  {
  }
}

void sub_10045FA9C(void *a1, uint64_t a2)
{
  v83 = a2;
  v77 = type metadata accessor for FlowOrigin();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for FlowAnimationBehavior();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v76 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for FlowPresentationContext();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v74 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v81 = &v65 - v9;
  v10 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v10 - 8);
  v80 = &v65 - v11;
  v68 = type metadata accessor for FlowPage();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v79 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v13 - 8);
  v82 = &v65 - v14;
  v15 = type metadata accessor for Shelf.ContentsMetadata();
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductMediaMetadata();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v85 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  swift_getKeyPath();
  v92 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v84 = *(v22 + 8);
  v84(v26, v21);
  v97 = _swiftEmptyArrayStorage;
  v27 = *(v98 + 16);
  if (!v27)
  {

    v29 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_11;
    }

LABEL_21:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_12;
    }

LABEL_22:

    return;
  }

  v89 = v20;
  v90 = v18;
  v91 = v17;
  v28 = v98 + 32;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    sub_10002C0AC(v28, v95);
    sub_10002C0AC(v95, v94);
    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    type metadata accessor for ProductMediaItem();
    if (swift_dynamicCast())
    {
      v30 = ProductMediaItem.screenshot.getter();

      sub_100007000(v95);
      if (v30)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = v97;
      }
    }

    else
    {
      sub_100007000(v95);
    }

    v28 += 40;
    --v27;
  }

  while (v27);

  v18 = v90;
  v17 = v91;
  v20 = v89;
  if (v29 >> 62)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_12:
  type metadata accessor for ProductMediaItem();
  sub_1004616A4(&qword_100972AC0, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!*&v95[0])
  {
    goto LABEL_22;
  }

  v31 = ProductMediaItem.screenshot.getter();

  if (!v31)
  {
    goto LABEL_22;
  }

  v66 = v31;
  swift_getKeyPath();
  v32 = v85;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  v33 = v86;
  ReadOnlyLens.subscript.getter();

  v84(v32, v21);
  v35 = v87;
  v34 = v88;
  if ((*(v87 + 88))(v33, v88) == enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v35 + 96))(v33, v34);
    (*(v18 + 32))(v20, v33, v17);
    v36 = sub_10045DCF0(v66, v29);
    v38 = v20;
    if (v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = v36;
    }

    v89 = v38;
    v40 = ProductMediaMetadata.platform.getter();
    v91 = v17;
    v41 = sub_100397BF0(_swiftEmptyArrayStorage);
    v42 = v83;
    v43 = sub_10054A47C(v83, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100814880);
    v44 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v90 = v18;
    v45 = OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_100397BF0(_swiftEmptyArrayStorage);
    *(v46 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v46 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v44[v45] = v46;
    v47 = OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_galleryLayout;
    *&v44[v47] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0)) init];
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks] = v29;
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_platform] = v40;
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_placeholderImages] = v41;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworkLoader] = *&v95[0];
    *&v44[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex] = v39;
    v48 = *&v44[v47];

    v49 = sub_1000659FC(v48, v43);

    v50 = v49;
    v51 = [v50 navigationItem];
    v52 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v50 action:"dismissFrom:"];
    [v51 setRightBarButtonItem:v52];

    *(*&v50[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_1008C0DA0;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v53 = type metadata accessor for StoreNavigationController();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v42;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v93.receiver = v54;
    v93.super_class = v53;

    v56 = objc_msgSendSuper2(&v93, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v56 setDelegate:v56];
    [v56 setModalPresentationStyle:0];
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1007B0B70;
    *(v57 + 32) = v50;
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v56 setViewControllers:isa];

    v59 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    v60 = v82;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v61 = *(v59 - 8);
    if ((*(v61 + 48))(v60, 1, v59) == 1)
    {
      (*(v90 + 8))(v89, v91);

      sub_10002B894(v60, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      v96 = 0;
      memset(v95, 0, sizeof(v95));
      (*(v67 + 104))(v79, enum case for FlowPage.viewController(_:), v68);
      v62 = type metadata accessor for URL();
      (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
      v63 = type metadata accessor for ReferrerData();
      (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
      v94[3] = v53;
      v94[0] = v56;
      v92 = v56;
      static ActionMetrics.notInstrumented.getter();
      (*(v69 + 104))(v74, enum case for FlowPresentationContext.infer(_:), v70);
      (*(v72 + 104))(v76, enum case for FlowAnimationBehavior.infer(_:), v73);
      (*(v75 + 104))(v78, enum case for FlowOrigin.inapp(_:), v77);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v64 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      sub_1005F9C8C(v64, 1, v83, v60);

      (*(v90 + 8))(v89, v91);
      (*(v61 + 8))(v60, v59);
    }
  }

  else
  {

    (*(v35 + 8))(v33, v34);
  }
}

void sub_100460A00(void *a1, uint64_t a2)
{
  v109 = a2;
  v3 = type metadata accessor for ShelfLayoutContext();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v95 = v5;
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Shelf.ContentType();
  v108 = *(v103 - 8);
  __chkstk_darwin(v103);
  v92 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v101);
  v105 = &v84 - v7;
  v8 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v8 - 8);
  v99 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v84 - v11;
  __chkstk_darwin(v12);
  v100 = &v84 - v13;
  v14 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v14 - 8);
  v93 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v104 = &v84 - v17;
  __chkstk_darwin(v18);
  v102 = &v84 - v19;
  v20 = type metadata accessor for Shelf.ContentsMetadata();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v98 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v84 - v28;
  v107 = type metadata accessor for ProductMediaMetadata();
  v30 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformSelectorView();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v94 = v30;
    v89 = v32;
    v91 = v4;
    v90 = v3;
    v33 = a1;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v34 = *(v25 + 8);
    v34(v29, v24);
    if ((*(v21 + 88))(v23, v20) != enum case for Shelf.ContentsMetadata.productMedia(_:))
    {

      (*(v21 + 8))(v23, v20);
      return;
    }

    v35 = v34;
    (*(v21 + 96))(v23, v20);
    (*(v94 + 32))(v106, v23, v107);
    v36 = ProductMediaMetadata.platform.getter();
    v88 = ProductMediaMetadata.allPlatforms.getter();
    v37 = v97;
    v38 = v99;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v37, &unk_10098FFB0, qword_1007B3890);
    v39 = v100;
    sub_100094E74(v38, v100);
    v40 = (*(v25 + 48))(v39, 1, v24);
    v85 = v33;
    v87 = v36;
    v86 = v35;
    if (v40 == 1)
    {
      sub_10002B894(v39, &unk_10098FFB0, qword_1007B3890);
      v41 = 1;
      v42 = v102;
    }

    else
    {
      swift_getKeyPath();
      v42 = v102;
      ReadOnlyLens.subscript.getter();

      v35(v39, v24);
      v41 = 0;
    }

    v43 = *(v108 + 56);
    v44 = v103;
    v43(v42, v41, 1, v103);
    v45 = v98;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v46 = v104;
    ReadOnlyLens.subscript.getter();

    v47 = v45;
    v48 = v42;
    v86(v47, v24);
    v43(v46, 0, 1, v44);
    v49 = *(v101 + 48);
    v50 = v105;
    sub_100094EE4(v42, v105);
    sub_100094EE4(v46, v50 + v49);
    v51 = *(v108 + 48);
    if (v51(v50, 1, v44) == 1)
    {
      sub_10002B894(v46, &unk_100992460, &qword_1007B6BF0);
      v52 = v105;
      sub_10002B894(v42, &unk_100992460, &qword_1007B6BF0);
      v53 = v51(v52 + v49, 1, v44);
      v54 = v91;
      v55 = v94;
      v56 = v87;
      if (v53 == 1)
      {
        sub_10002B894(v52, &unk_100992460, &qword_1007B6BF0);
LABEL_24:

        v75 = 0;
LABEL_30:
        v76 = swift_allocObject();
        swift_weakLoadStrong();

        (*(v55 + 8))(v106, v107);
        swift_weakInit();

        v77 = v96;
        v78 = v90;
        (*(v54 + 16))(v96, v109, v90);
        v79 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v75;
        *(v80 + 24) = v76;
        (*(v54 + 32))(v80 + v79, v77, v78);
        v81 = (v89 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
        v82 = *(v89 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler);
        v83 = *(v89 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler + 8);
        *v81 = sub_10046163C;
        v81[1] = v80;

        sub_10001F63C(v82, v83);

        return;
      }
    }

    else
    {
      v57 = v93;
      sub_100094EE4(v50, v93);
      v58 = v51(v50 + v49, 1, v44);
      v54 = v91;
      if (v58 != 1)
      {
        v67 = v48;
        v68 = v57;
        v69 = v108;
        v70 = v50 + v49;
        v71 = v92;
        (*(v108 + 32))(v92, v70, v44);
        sub_1004616A4(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
        v72 = v50;
        v73 = dispatch thunk of static Equatable.== infix(_:_:)();
        v74 = *(v69 + 8);
        v74(v71, v44);
        sub_10002B894(v104, &unk_100992460, &qword_1007B6BF0);
        sub_10002B894(v67, &unk_100992460, &qword_1007B6BF0);
        v74(v68, v44);
        sub_10002B894(v72, &unk_100992460, &qword_1007B6BF0);
        v55 = v94;
        v56 = v87;
        v59 = v88;
        if (v73)
        {
          goto LABEL_24;
        }

LABEL_13:
        v60 = v59 >> 62;
        if (v59 >> 62)
        {
          v61 = _CocoaArrayWrapper.endIndex.getter();
          if (v61)
          {
LABEL_15:
            v62 = v61 - 1;
            if (__OFSUB__(v61, 1))
            {
              __break(1u);
            }

            else if ((v59 & 0xC000000000000001) == 0)
            {
              if ((v62 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v62 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v63 = *(v59 + 8 * v62 + 32);

                v111 = v56;
                if (v63)
                {
                  goto LABEL_20;
                }

                goto LABEL_27;
              }

              __break(1u);
              return;
            }

            v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v111 = v56;
            if (v63)
            {
LABEL_20:
              v110 = v63;
              type metadata accessor for MediaPlatform();
              sub_1004616A4(&qword_100975F18, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
              v64 = dispatch thunk of static Equatable.== infix(_:_:)();

              if (v64)
              {
                goto LABEL_24;
              }

              v65 = v59 & 0xFFFFFFFFFFFFFF8;
              if (!v60)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

LABEL_27:

            v65 = v59 & 0xFFFFFFFFFFFFFF8;
            if (!v60)
            {
LABEL_22:
              v66 = *(v65 + 16);
LABEL_29:

              v75 = v66 > 1;
              goto LABEL_30;
            }

LABEL_28:
            v66 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_29;
          }
        }

        else
        {
          v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_27;
      }

      sub_10002B894(v104, &unk_100992460, &qword_1007B6BF0);
      v52 = v105;
      sub_10002B894(v48, &unk_100992460, &qword_1007B6BF0);
      (*(v108 + 8))(v57, v44);
      v55 = v94;
      v56 = v87;
    }

    sub_10002B894(v52, &qword_100975F10, &unk_1007CE130);
    v59 = v88;
    goto LABEL_13;
  }
}

void sub_10046163C()
{
  type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_10045E9B0(v1, v2);
}

uint64_t sub_1004616A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004616F8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100461828(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *v5;
  Width = CGRectGetWidth(*&a2);
  v13 = Width;
  if (v11 == 1)
  {
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    CGRectGetWidth(v53);
    v14 = *(v5 + 9);
  }

  else
  {
    v13 = Width * 0.5;
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    v15 = CGRectGetWidth(v54);
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    Height = CGRectGetHeight(v55);
    if (Height >= v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = Height;
    }
  }

  sub_10002A400(v5 + 10, *(v5 + 13));
  v43 = v14;
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  v17 = *(v5 + 2);
  v18 = *(v5 + 6);
  if (v11)
  {
    v19 = *(v5 + 2);
  }

  else
  {
    v19 = *(v5 + 6);
  }

  v38 = v19;
  v44 = v13;
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  CGRectGetHeight(v56);
  sub_10002A400(v5 + 15, *(v5 + 18));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v21 = v20;
  v40 = v22;
  v41 = v17;
  if (v11)
  {
    v23 = *(v5 + 1);
    v37 = v23;
  }

  else
  {
    v37 = *(v5 + 1);
    v23 = *(v5 + 5);
    v17 = v18;
  }

  sub_10002A400(v5 + 15, *(v5 + 18));
  v39 = v23;
  v36 = v21;
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  CGRectGetWidth(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v44;
  v58.size.height = v43;
  CGRectGetHeight(v58);
  v35 = v17;
  if (v11)
  {
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    v24 = v41;
    CGRectGetWidth(v59);
  }

  else
  {
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = v44;
    v60.size.height = v43;
    CGRectGetMaxX(v60);
    v24 = v41;
  }

  v25 = v5[2] | v11 ^ 1;
  sub_10002A400(v5 + 25, *(v5 + 28));
  Measurable.placeable.getter();
  sub_10002A400(v51, v52);
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_100007000(v51);
  v61.origin.x = a2;
  v61.origin.y = a3;
  v42 = a4;
  v61.size.width = a4;
  v61.size.height = a5;
  CGRectGetHeight(v61);
  sub_10002A400(v5 + 20, *(v5 + 23));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v27 = v26;
  v29 = v28;
  v30 = v24;
  v31 = v37;
  if (v25 == 1)
  {
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.height = v43;
    v62.size.width = v44;
    MaxY = CGRectGetMaxY(v62);
    v33 = 56;
    if (v11)
    {
      v33 = 24;
    }

    v31 = MaxY - *&v5[v33] - v29;
    v30 = v38;
  }

  sub_10002A400(v5 + 20, *(v5 + 23));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  if (v11)
  {
    type metadata accessor for TodayListCardLockupContainer();
    sub_1003692D0(*(v5 + 35), a1);
  }

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.height = v43;
  v63.size.width = v44;
  CGRectGetMaxY(v63);
  v64.origin.x = v30;
  v64.origin.y = v31;
  v64.size.width = v27;
  v64.size.height = v29;
  CGRectGetMaxY(v64);
  v65.origin.x = a2;
  v65.origin.y = a3;
  v65.size.width = v42;
  v65.size.height = a5;
  CGRectGetWidth(v65);
  sub_10002A400(v5 + 30, *(v5 + 33));
  Measurable.placeable.getter();
  sub_10002A400(v51, v52);
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_100007000(v51);
  sub_1000CB084((v5 + 328), &v49);
  if (v50)
  {
    sub_100005A38(&v49, v51);
    sub_1000CB084((v5 + 288), &v47);
    if (v48)
    {
      sub_100005A38(&v47, &v49);
      sub_1000CB084((v5 + 368), &v45);
      if (v46)
      {
        sub_100005A38(&v45, &v47);
        sub_10002A400(v51, v52);
        dispatch thunk of Placeable.measure(toFit:with:)();
        v66.origin.y = a3;
        v66.origin.x = a2;
        v66.size.width = v42;
        v66.size.height = a5;
        CGRectGetHeight(v66);
        v67.origin.x = v35;
        v67.origin.y = v39;
        v67.size.width = v36;
        v67.size.height = v40;
        CGRectGetMaxY(v67);
        v68.origin.x = v35;
        v68.origin.y = v39;
        v68.size.width = v36;
        v68.size.height = v40;
        CGRectGetMaxY(v68);
        sub_10002A400(&v49, v50);
        CGRect.withLayoutDirection(using:relativeTo:)();
        dispatch thunk of Placeable.place(at:with:)();
        sub_10002A400(v51, v52);
        dispatch thunk of Placeable.place(at:with:)();
        sub_10002A400(&v47, v48);
        CGRect.withLayoutDirection(using:relativeTo:)();
        dispatch thunk of Placeable.place(at:with:)();
        sub_100007000(&v47);
        sub_100007000(&v49);
        return sub_100007000(v51);
      }

      sub_1000CC370(&v45);
      sub_100007000(&v49);
    }

    else
    {
      sub_1000CC370(&v47);
    }

    sub_100007000(v51);
  }

  else
  {
    sub_1000CC370(&v49);
  }

  sub_1000CB084((v5 + 288), v51);
  if (v52)
  {
    sub_10002A400(v51, v52);
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v51);
  }

  else
  {
    sub_1000CC370(v51);
  }

  sub_1000CB084((v5 + 328), v51);
  if (v52)
  {
    sub_10002A400(v51, v52);
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v51);
  }

  else
  {
    sub_1000CC370(v51);
  }

  sub_1000CB084((v5 + 288), v51);
  if (v52)
  {
    sub_10002A400(v51, v52);
    dispatch thunk of Placeable.place(at:with:)();
    return sub_100007000(v51);
  }

  return sub_1000CC370(v51);
}

uint64_t sub_10046209C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004620E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1004621A0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004621BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[80])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100462210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100462278()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for PageGrid.HorizontalMargins();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  type metadata accessor for PageGrid.Breakpoint();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B1890;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  static PageGrid.HorizontalMargins.zero.getter();
  static UIEdgeInsets.horizontal(left:right:)();
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_1009D1CB8 = v6;
  return result;
}

uint64_t sub_100462678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v301 = a3;
  v302 = a2;
  v4 = sub_10002849C(&qword_100986538, qword_1007CE3A8);
  __chkstk_darwin(v4 - 8);
  v271 = &v256 - v5;
  v273 = type metadata accessor for ComponentOverflowData(0);
  v270 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = (&v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100983518, &qword_1007CAEA8);
  __chkstk_darwin(v7 - 8);
  v276 = &v256 - v8;
  v9 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v9 - 8);
  v283 = &v256 - v10;
  v280 = type metadata accessor for AdamId();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v269 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v268 = &v256 - v15;
  __chkstk_darwin(v16);
  v267 = &v256 - v17;
  __chkstk_darwin(v18);
  v264 = &v256 - v19;
  __chkstk_darwin(v20);
  v266 = &v256 - v21;
  __chkstk_darwin(v22);
  v263 = &v256 - v23;
  __chkstk_darwin(v24);
  v277 = &v256 - v25;
  __chkstk_darwin(v26);
  v295 = &v256 - v27;
  __chkstk_darwin(v28);
  v284 = &v256 - v29;
  __chkstk_darwin(v30);
  v285 = &v256 - v31;
  __chkstk_darwin(v32);
  v288 = &v256 - v33;
  __chkstk_darwin(v34);
  v287 = &v256 - v35;
  __chkstk_darwin(v36);
  v290 = &v256 - v37;
  __chkstk_darwin(v38);
  v291 = &v256 - v39;
  __chkstk_darwin(v40);
  v293 = &v256 - v41;
  __chkstk_darwin(v42);
  v292 = &v256 - v43;
  __chkstk_darwin(v44);
  v46 = &v256 - v45;
  v47 = type metadata accessor for URL();
  v298 = *(v47 - 8);
  v299 = v47;
  __chkstk_darwin(v47);
  v265 = &v256 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v262 = &v256 - v50;
  __chkstk_darwin(v51);
  v260 = &v256 - v52;
  __chkstk_darwin(v53);
  v257 = &v256 - v54;
  __chkstk_darwin(v55);
  v275 = &v256 - v56;
  __chkstk_darwin(v57);
  v294 = &v256 - v58;
  __chkstk_darwin(v59);
  v282 = &v256 - v60;
  __chkstk_darwin(v61);
  v281 = &v256 - v62;
  __chkstk_darwin(v63);
  v286 = &v256 - v64;
  __chkstk_darwin(v65);
  v289 = &v256 - v66;
  __chkstk_darwin(v67);
  v69 = &v256 - v68;
  __chkstk_darwin(v70);
  v72 = &v256 - v71;
  __chkstk_darwin(v73);
  v75 = &v256 - v74;
  v76 = type metadata accessor for FlowPage();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v256 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowDestination(0);
  v300 = *(v80 - 8);
  __chkstk_darwin(v80);
  v261 = (&v256 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82);
  v259 = (&v256 - v83);
  __chkstk_darwin(v84);
  v258 = (&v256 - v85);
  __chkstk_darwin(v86);
  v88 = (&v256 - v87);
  FlowAction.page.getter();
  v256 = v77;
  v89 = *(v77 + 88);
  v297 = v76;
  v90 = v89(v79, v76);
  if (v90 != enum case for FlowPage.search(_:))
  {
    v95 = v88;
    v296 = a1;
    v274 = v80;
    if (v90 == enum case for FlowPage.product(_:))
    {
      FlowAction.pageUrl.getter();
      v97 = v298;
      v96 = v299;
      if ((*(v298 + 48))(v46, 1, v299) == 1)
      {
LABEL_5:
        v98 = v46;
        goto LABEL_14;
      }

      (*(v97 + 32))(v75, v46, v96);
      v102 = type metadata accessor for ShelfBasedProductPage();
      __chkstk_darwin(v102);
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      v103 = v304;
      if (v304)
      {

        v104 = ShelfBasedProductPage.fullProductFetchedAction.getter();
      }

      else
      {
        v104 = 0;
      }

      v116 = sub_10002849C(&qword_100983698, &qword_1007CAF38);
      v117 = v116[12];
      v118 = v116[16];
      v119 = v116[20];
      v120 = v116[24];
      v121 = v299;
      (*(v97 + 16))(v95, v75, v299);
      *(v95 + v117) = 0;
      *(v95 + v118) = v103;
      *(v95 + v119) = v104;
      v122 = FlowAction.pageDataPageRenderMetrics.getter();

      (*(v97 + 8))(v75, v121);
      *(v95 + v120) = v122;
      v93 = v274;
      goto LABEL_25;
    }

    v99 = v299;
    if (v90 == enum case for FlowPage.dynamicUI(_:))
    {
      v100 = v295;
      FlowAction.pageUrl.getter();
      v101 = v298;
      if ((*(v298 + 48))(v100, 1, v99) == 1)
      {
        v98 = v100;
        goto LABEL_14;
      }

      v109 = *(v101 + 32);
      v110 = v294;
      v109(v294, v100, v99);
      type metadata accessor for DynamicUIRequestInfo();
      FlowAction.pageData<A>(as:or:)();
      v111 = v304;
      v92 = v302;
      if (!v304)
      {
        if (qword_10096D120 != -1)
        {
          swift_once();
        }

        v128 = type metadata accessor for OSLogger();
        sub_1000056A8(v128, qword_1009CE218);
        sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B1890;
        LogMessage.init(stringLiteral:)();
        v306 = v297;
        sub_1000056E0(&v304);
        FlowAction.page.getter();
        static LogMessage.sensitive(_:)();
        sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
        Logger.debug(_:)();

        (*(v101 + 8))(v294, v299);
        goto LABEL_16;
      }

      v112 = sub_10002849C(&qword_100983680, &qword_1007CAF28);
      v113 = v110;
      v114 = *(v112 + 48);
      v109(v95, v113, v99);
      *(v95 + v114) = v111;
      v93 = v274;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v94 = v95;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.webView(_:))
    {
      v105 = v293;
      FlowAction.pageUrl.getter();
      v106 = v298;
      if ((*(v298 + 48))(v105, 1, v99) == 1)
      {
        v98 = v105;
LABEL_14:
        sub_10002B894(v98, &qword_100982460, &unk_1007B5C90);
        v92 = v302;
        if (qword_10096D120 == -1)
        {
LABEL_15:
          v107 = type metadata accessor for OSLogger();
          sub_1000056A8(v107, qword_1009CE218);
          sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B1890;
          LogMessage.init(stringLiteral:)();
          v306 = v297;
          sub_1000056E0(&v304);
          FlowAction.page.getter();
          static LogMessage.sensitive(_:)();
          sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
          Logger.debug(_:)();

LABEL_16:
          sub_10002B894(v92, &unk_1009711D0, &unk_1007B1A10);
          return (*(v300 + 56))(v301, 1, 1, v274);
        }

LABEL_91:
        swift_once();
        goto LABEL_15;
      }

      v124 = *(v106 + 32);
      v124(v69, v105, v99);
      v124(v95, v69, v99);
      v93 = v274;
LABEL_25:
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v94 = v95;
      v92 = v302;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.unknown(_:))
    {
      v46 = v292;
      FlowAction.pageUrl.getter();
      v115 = v298;
      if ((*(v298 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      (*(v115 + 32))(v72, v46, v99);
      sub_10002849C(&qword_100983688, &qword_1007CAF30);
      (*(v115 + 16))(v95, v72, v99);
      FlowAction.origin.getter();

      (*(v115 + 8))(v72, v99);
      v93 = v274;
      goto LABEL_25;
    }

    v125 = v298;
    if (v90 == enum case for FlowPage.viewController(_:))
    {
      v126 = sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
      __chkstk_darwin(v126);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      v127 = v304;
      if (!v304)
      {
        if (qword_10096D120 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

LABEL_31:

      *v95 = v127;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.gallery(_:))
    {
      v129 = sub_10002849C(&qword_100982820, &qword_1007CA1E0);
      __chkstk_darwin(v129);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      v127 = v304;
      if (!v304)
      {
        if (qword_10096D120 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

      goto LABEL_31;
    }

    if (v90 == enum case for FlowPage.video(_:))
    {
      v46 = v291;
      FlowAction.pageUrl.getter();
      if ((*(v125 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      v130 = *(v125 + 32);
      v131 = v289;
      v130(v289, v46, v99);
      v132 = type metadata accessor for Video();
      __chkstk_darwin(v132);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      if (v304)
      {
        v133 = Video.preview.getter();
      }

      else
      {

        v133 = 0;
      }

      v146 = *(sub_10002849C(&qword_100983668, &qword_1007CAF18) + 48);
      v130(v95, v131, v99);
      *(v95 + v146) = v133;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.page(_:))
    {
LABEL_45:
      v134 = v290;
      FlowAction.pageUrl.getter();
      v135 = type metadata accessor for GenericPage();
      __chkstk_darwin(v135);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();

      v136 = v304;
      v137 = *(sub_10002849C(&unk_10097CCB0, &qword_1007B7100) + 48);
      *v95 = v136;
      sub_1000476A0(v134, v95 + v137, &qword_100982460, &unk_1007B5C90);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.searchChartsAndCategories(_:))
    {
      v138 = v290;
      FlowAction.pageUrl.getter();
      v139 = type metadata accessor for SearchChartsAndCategoriesPage();
      __chkstk_darwin(v139);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();

      v140 = v304;
      v141 = *(sub_10002849C(&qword_100983670, &qword_1007CAF20) + 48);
      *v95 = v140;
      sub_1000476A0(v138, v95 + v141, &qword_100982460, &unk_1007B5C90);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.topCharts(_:))
    {
      v142 = v290;
      FlowAction.pageUrl.getter();
      v143 = type metadata accessor for TopChartsPage();
      __chkstk_darwin(v143);
      v92 = v302;
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();

      v144 = v304;
      v145 = *(sub_10002849C(&qword_100983608, &unk_1007CAEF0) + 48);
      *v95 = v144;
      sub_1000476A0(v142, v95 + v145, &qword_100982460, &unk_1007B5C90);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.updates(_:))
    {
LABEL_229:

      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.today(_:))
    {
      v147 = v287;
      FlowAction.pageUrl.getter();
      if ((*(v125 + 48))(v147, 1, v99) != 1)
      {

        v150 = *(v125 + 32);
        v151 = v286;
        v150(v286, v147, v99);
        v150(v95, v151, v99);
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v147;
LABEL_59:
      sub_10002B894(v148, &qword_100982460, &unk_1007B5C90);
      if (qword_10096D120 == -1)
      {
LABEL_60:
        v149 = type metadata accessor for OSLogger();
        sub_1000056A8(v149, qword_1009CE218);
        sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B1890;
        LogMessage.init(stringLiteral:)();
        v306 = v297;
        sub_1000056E0(&v304);
        FlowAction.page.getter();
        static LogMessage.sensitive(_:)();
        sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
        Logger.debug(_:)();

        goto LABEL_61;
      }

LABEL_155:
      swift_once();
      goto LABEL_60;
    }

    if (v90 == enum case for FlowPage.article(_:))
    {
      FlowAction.pageUrl.getter();
      type metadata accessor for ArticlePage();
      FlowAction.pageData<A>(as:or:)();
      sub_100031660(v302, &v304, &unk_1009711D0, &unk_1007B1A10);
      if (v306)
      {
        type metadata accessor for TodayCard();
        swift_dynamicCast();
      }

      else
      {
        sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
      }

      v154 = ArticlePage.__allocating_init(copying:replacingCard:)();

      v155 = *(sub_10002849C(&qword_1009835C0, &unk_1007D2C60) + 48);
      *v95 = v154;
      sub_1000476A0(v288, v95 + v155, &qword_100982460, &unk_1007B5C90);
      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.purchases(_:))
    {
      sub_100005744(0, &qword_100984880, AMSFamilyMember_ptr);
      FlowAction.pageData<A>(as:or:)();

      *v95 = v304;
      v93 = v274;
      goto LABEL_25;
    }

    v152 = v90;
    if (v90 == enum case for FlowPage.inAppPurchaseInstall(_:))
    {
      v153 = v285;
      FlowAction.pageUrl.getter();
      if ((*(v298 + 48))(v153, 1, v299) != 1)
      {
        v157 = v299;
        v158 = *(v298 + 32);
        v159 = v281;
        v158(v281, v285, v299);
        type metadata accessor for InAppPurchaseInstallPage();
        FlowAction.pageData<A>(as:or:)();

        v160 = v304;
        v161 = *(sub_10002849C(&qword_1009835B0, &qword_1007CAED0) + 48);
        v158(v95, v159, v157);
        *(v95 + v161) = v160;
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v285;
      goto LABEL_59;
    }

    if (v90 == enum case for FlowPage.writeReview(_:))
    {
      v156 = v284;
      FlowAction.pageUrl.getter();
      if ((*(v298 + 48))(v156, 1, v299) == 1)
      {
        v148 = v284;
        goto LABEL_59;
      }

      v164 = *(v298 + 32);
      v164(v282, v284, v299);
      v165 = v283;
      v166 = v280;
      FlowAction.pageData<A>(as:or:)();
      if ((*(v279 + 48))(v165, 1, v166) != 1)
      {

        v168 = *(v279 + 32);
        v169 = v278;
        v170 = v280;
        v168(v278, v283, v280);
        v171 = *(sub_10002849C(&unk_1009835A0, &unk_1007C9170) + 48);
        v164(v95, v282, v299);
        v168(v95 + v171, v169, v170);
        v93 = v274;
        goto LABEL_25;
      }

      sub_10002B894(v283, &qword_100972A80, &qword_1007C9840);
      if (qword_10096D120 != -1)
      {
        swift_once();
      }

      v167 = type metadata accessor for OSLogger();
      sub_1000056A8(v167, qword_1009CE218);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      LogMessage.init(stringLiteral:)();
      v306 = v297;
      sub_1000056E0(&v304);
      FlowAction.page.getter();
      static LogMessage.sensitive(_:)();
      sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
      Logger.debug(_:)();

      (*(v298 + 8))(v282, v299);
LABEL_61:
      v92 = v302;
      goto LABEL_16;
    }

    if (v90 == enum case for FlowPage.reviews(_:))
    {
      v162 = type metadata accessor for ReviewsPage();
      __chkstk_darwin(v162);
      *(&v256 - 2) = v302;
      FlowAction.pageData<A>(as:or:)();
      v163 = v304;
      if (!v304)
      {
        if (qword_10096D120 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_155;
      }
    }

    else
    {
      if (v90 == enum case for FlowPage.account(_:) || v90 == enum case for FlowPage.finance(_:))
      {
        FlowAction.pageUrl.getter();

        v93 = v274;
        goto LABEL_25;
      }

      if (v90 == enum case for FlowPage.hiddenPurchases(_:))
      {
        goto LABEL_229;
      }

      if (v90 == enum case for FlowPage.mso(_:))
      {
        v172 = v277;
        FlowAction.pageUrl.getter();
        if ((*(v298 + 48))(v172, 1, v299) != 1)
        {
          v174 = v299;
          v175 = *(v298 + 32);
          v176 = v275;
          v175(v275, v277, v299);
          type metadata accessor for MSOContext();
          v177 = v276;
          FlowAction.pageData<A>(as:or:)();

          v178 = *(sub_10002849C(&qword_100983578, &qword_1007CAEC0) + 48);
          v175(v95, v176, v174);
          sub_1000476A0(v177, v95 + v178, &qword_100983518, &qword_1007CAEA8);
          v93 = v274;
          goto LABEL_25;
        }

        v148 = v277;
        goto LABEL_59;
      }

      if (v90 == enum case for FlowPage.versionHistory(_:))
      {
        v173 = type metadata accessor for GenericPage();
        __chkstk_darwin(v173);
        *(&v256 - 2) = v302;
        FlowAction.pageData<A>(as:or:)();
        v163 = v304;
        if (!v304)
        {
          if (qword_10096D120 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v90 == enum case for FlowPage.onboarding(_:))
        {
          __chkstk_darwin(v90);
          *(&v256 - 2) = v302;
          FlowAction.pageData<A>(as:or:)();
          v179 = v304;
          if (v304 != 4)
          {

            *v95 = v179;
            v93 = v274;
            goto LABEL_25;
          }

          if (qword_10096D120 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }

        if (v90 == enum case for FlowPage.reviewDetail(_:))
        {
          v180 = type metadata accessor for Review();
          __chkstk_darwin(v180);
          *(&v256 - 2) = v302;
          FlowAction.pageData<A>(as:or:)();
          v163 = v304;
          if (!v304)
          {
            if (qword_10096D120 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else if (v90 == enum case for FlowPage.editorsChoiceDetail(_:))
        {
          v181 = type metadata accessor for EditorsChoice();
          __chkstk_darwin(v181);
          *(&v256 - 2) = v302;
          FlowAction.pageData<A>(as:or:)();
          v163 = v304;
          if (!v304)
          {
            if (qword_10096D120 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else
        {
          if (v90 == enum case for FlowPage.arcade(_:))
          {
            v182 = v290;
            FlowAction.pageUrl.getter();
            type metadata accessor for ArcadePage();
            FlowAction.pageData<A>(as:or:)();
            v183 = v304;
            sub_10002849C(&qword_1009703B8, &qword_1007CAF10);
            *v95 = v183;
            sub_100031660(v182, v263, &qword_100982460, &unk_1007B5C90);
            sub_100031660(v182, v266, &qword_100982460, &unk_1007B5C90);
            ArcadePageUrls.init(subscriberUrl:nonSubscriberUrl:)();

            sub_10002B894(v182, &qword_100982460, &unk_1007B5C90);
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 == enum case for FlowPage.arcadeSubscribe(_:))
          {
            type metadata accessor for ArcadeSubscribePage();
            FlowAction.pageData<A>(as:or:)();
            v184 = v304;
            v185 = sub_10002849C(&qword_100983638, &qword_1007CAF00);
            v186 = *(v185 + 48);
            v187 = *(v185 + 64);
            FlowAction.pageUrl.getter();

            *(v95 + v186) = v184;
            *(v95 + v187) = 0;
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 != enum case for FlowPage.upsellMarketingItem(_:))
          {
            if (v90 == enum case for FlowPage.arcadeSeeAllGames(_:))
            {
              v188 = v264;
              FlowAction.pageUrl.getter();
              if ((*(v298 + 48))(v188, 1, v299) != 1)
              {
                v190 = v299;
                v191 = *(v298 + 32);
                v192 = v257;
                v191(v257, v264, v299);
                type metadata accessor for ArcadeSeeAllGamesPage();
                FlowAction.pageData<A>(as:or:)();

                v193 = v304;
                v194 = *(sub_10002849C(&qword_100983648, &qword_1007CAF08) + 48);
                *v95 = v193;
                v191(v95 + v194, v192, v190);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v264;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeWelcome(_:))
            {
              v189 = v267;
              FlowAction.pageUrl.getter();
              if ((*(v298 + 48))(v189, 1, v299) != 1)
              {
                v197 = v299;
                v198 = *(v298 + 32);
                v199 = v260;
                v198(v260, v267, v299);
                v200 = sub_10002849C(&qword_100975958, &unk_1007BA410);
                v201 = *(v200 + 48);
                v202 = *(v200 + 64);
                type metadata accessor for ArcadeWelcomePage();
                FlowAction.pageData<A>(as:or:)();

                v203 = enum case for ArcadeWelcomePage.ContentType.none(_:);
                v204 = type metadata accessor for ArcadeWelcomePage.ContentType();
                (*(*(v204 - 8) + 104))(v95 + v201, v203, v204);
                v198(v95 + v202, v199, v197);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v267;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeDownloadPackCategories(_:))
            {
              FlowAction.pageData<A>(as:or:)();
              v195 = *(&v304 + 1);
              if (*(&v304 + 1))
              {
                v196 = v304;

                *v95 = v196;
                v95[1] = v195;
                v93 = v274;
                goto LABEL_25;
              }

              if (qword_10096D120 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.componentOverflow(_:))
            {
              v205 = v271;
              v206 = v273;
              FlowAction.pageData<A>(as:or:)();
              if ((*(v270 + 48))(v205, 1, v206) != 1)
              {

                v207 = v272;
                sub_100466FD8(v271, v272, type metadata accessor for ComponentOverflowData);
                v208 = *(sub_10002849C(&qword_100983570, &qword_1007CAEB8) + 48);
                *v95 = *v207;
                v209 = *(v273 + 20);
                v210 = type metadata accessor for IndexPath();
                (*(*(v210 - 8) + 32))(v95 + v208, v207 + v209, v210);
                v93 = v274;
                goto LABEL_25;
              }

              sub_10002B894(v271, &qword_100986538, qword_1007CE3A8);
              if (qword_10096D120 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.notificationSettings(_:))
            {
              goto LABEL_229;
            }

            if (v90 == enum case for FlowPage.gameAchievements(_:))
            {
              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              FlowAction.pageData<A>(as:or:)();
              v211 = v304;
              if (!v304)
              {
                if (qword_10096D120 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v90 == enum case for FlowPage.gameCenterDashboard(_:))
              {
                goto LABEL_229;
              }

              if (v90 != enum case for FlowPage.gameCenterLeaderboards(_:))
              {
                if (v90 == enum case for FlowPage.gameCenterPlayerProfile(_:))
                {
                  FlowAction.pageData<A>(as:or:)();

                  *v95 = v304;
                  v93 = v274;
                  goto LABEL_25;
                }

                if (v90 == enum case for FlowPage.reportAConcern(_:))
                {
                  v213 = type metadata accessor for ReportConcernAction();
                  __chkstk_darwin(v213);
                  *(&v256 - 2) = v302;
                  FlowAction.pageData<A>(as:or:)();
                  if (v304)
                  {
                    v214 = ReportConcernAction.reasons.getter();
                    v215 = ReportConcernAction.explanation.getter();
                    v217 = v216;
                    v218 = ReportConcernAction.sendAction.getter();

                    *v95 = v214;
                    v95[1] = v215;
                    v95[2] = v217;
                    v95[3] = v218;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v90 != enum case for FlowPage.reviewSummaryReportConcern(_:))
                  {
                    if (v90 == enum case for FlowPage.shareSheet(_:))
                    {
                      v226 = type metadata accessor for ShareSheetAction();
                      __chkstk_darwin(v226);
                      *(&v256 - 2) = v302;
                      FlowAction.pageData<A>(as:or:)();
                      if (v304)
                      {
                        sub_10002849C(&qword_100983590, &qword_1007CAEC8);
                        *v95 = ShareSheetAction.data.getter();
                        v95[1] = ShareSheetAction.activities.getter();
                        ShareSheetAction.shareSheetStyle.getter();

                        v93 = v274;
                        goto LABEL_25;
                      }

                      if (qword_10096D120 == -1)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_155;
                    }

                    if (v90 == enum case for FlowPage.privacyDetail(_:))
                    {
                      v227 = v268;
                      FlowAction.pageUrl.getter();
                      if ((*(v298 + 48))(v227, 1, v299) != 1)
                      {
                        v230 = v298;
                        v229 = v299;
                        v231 = *(v298 + 32);
                        v232 = v262;
                        v231(v262, v268, v299);
                        type metadata accessor for GenericPage();
                        FlowAction.pageData<A>(as:or:)();

                        v233 = v304;
                        v234 = *(sub_10002849C(&unk_10097CCB0, &qword_1007B7100) + 48);
                        *v95 = v233;
                        v231(v95 + v234, v232, v229);
                        (*(v230 + 56))(v95 + v234, 0, 1, v229);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v268;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.privacyDefinitions(_:))
                    {
                      v228 = v269;
                      FlowAction.pageUrl.getter();
                      if ((*(v298 + 48))(v228, 1, v299) != 1)
                      {
                        v236 = v298;
                        v235 = v299;
                        v237 = *(v298 + 32);
                        v238 = v265;
                        v237(v265, v269, v299);
                        type metadata accessor for GenericPage();
                        FlowAction.pageData<A>(as:or:)();

                        v239 = v304;
                        v240 = *(sub_10002849C(&unk_10097CCB0, &qword_1007B7100) + 48);
                        *v95 = v239;
                        v237(v95 + v240, v238, v235);
                        (*(v236 + 56))(v95 + v240, 0, 1, v235);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v269;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.accessibilityDetails(_:))
                    {
                      goto LABEL_45;
                    }

                    if (v90 == enum case for FlowPage.appEventDetail(_:))
                    {
                      v241 = type metadata accessor for AppEventDetailPage();
                      __chkstk_darwin(v241);
                      *(&v256 - 2) = v302;
                      FlowAction.pageData<A>(as:or:)();
                      v242 = v304;
                      if (!v304)
                      {
                        if (qword_10096D120 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100031660(v302, &v304, &unk_1009711D0, &unk_1007B1A10);
                      if (v306)
                      {
                        sub_100005744(0, &qword_100972EB0, UIView_ptr);
                        v243 = swift_dynamicCast();
                        v244 = v303;
                        if (!v243)
                        {
                          v244 = 0;
                        }
                      }

                      else
                      {
                        sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
                        v244 = 0;
                      }

                      v254 = v258;
                      *v258 = v242;
                      *(v254 + 8) = v244;
                      v93 = v274;
                    }

                    else if (v90 == enum case for FlowPage.contingentOfferDetail(_:))
                    {
                      v245 = type metadata accessor for ContingentOfferDetailPage();
                      __chkstk_darwin(v245);
                      *(&v256 - 2) = v302;
                      FlowAction.pageData<A>(as:or:)();
                      v246 = v304;
                      if (!v304)
                      {
                        if (qword_10096D120 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100031660(v302, &v304, &unk_1009711D0, &unk_1007B1A10);
                      if (v306)
                      {
                        sub_100005744(0, &qword_100972EB0, UIView_ptr);
                        v247 = swift_dynamicCast();
                        v248 = v303;
                        if (!v247)
                        {
                          v248 = 0;
                        }
                      }

                      else
                      {
                        sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
                        v248 = 0;
                      }

                      v254 = v259;
                      *v259 = v246;
                      *(v254 + 8) = v248;
                      v93 = v274;
                    }

                    else
                    {
                      if (v90 != enum case for FlowPage.offerItemDetail(_:))
                      {
                        if (v90 == enum case for FlowPage.debugSettings(_:))
                        {
                          FlowAction.pageData<A>(as:or:)();

                          v253 = v305;
                          *v95 = v304;
                          v95[2] = v253;
                          v93 = v274;
                          goto LABEL_25;
                        }

                        if (v90 == enum case for FlowPage.debugStorefrontPicker(_:) || v90 == enum case for FlowPage.debugTodayCardTriggers(_:))
                        {
                          goto LABEL_229;
                        }

                        v255 = enum case for FlowPage.personalizationTransparency(_:);

                        if (v152 == v255)
                        {
                          v93 = v274;
                          goto LABEL_25;
                        }

                        (*(v256 + 8))(v79, v297);
                        goto LABEL_61;
                      }

                      v249 = type metadata accessor for OfferItemDetailPage();
                      __chkstk_darwin(v249);
                      *(&v256 - 2) = v302;
                      FlowAction.pageData<A>(as:or:)();
                      v250 = v304;
                      if (!v304)
                      {
                        if (qword_10096D120 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100031660(v302, &v304, &unk_1009711D0, &unk_1007B1A10);
                      if (v306)
                      {
                        sub_100005744(0, &qword_100972EB0, UIView_ptr);
                        v251 = swift_dynamicCast();
                        v252 = v303;
                        if (!v251)
                        {
                          v252 = 0;
                        }
                      }

                      else
                      {
                        sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
                        v252 = 0;
                      }

                      v254 = v261;
                      *v261 = v250;
                      *(v254 + 8) = v252;
                      v93 = v274;
                    }

                    swift_storeEnumTagMultiPayload();
                    sub_100466FD8(v254, v95, type metadata accessor for FlowDestination);
                    goto LABEL_26;
                  }

                  v220 = type metadata accessor for ReviewSummaryReportConcernAction();
                  __chkstk_darwin(v220);
                  *(&v256 - 2) = v302;
                  FlowAction.pageData<A>(as:or:)();
                  if (v304)
                  {
                    v221 = ReviewSummaryReportConcernAction.concerns.getter();
                    v222 = ReviewSummaryReportConcernAction.comment.getter();
                    v224 = v223;
                    v225 = ReviewSummaryReportConcernAction.sendAction.getter();

                    *v95 = v221;
                    v95[1] = v222;
                    v95[2] = v224;
                    v95[3] = v225;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                if (qword_10096D120 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }

              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              FlowAction.pageData<A>(as:or:)();
              v211 = v304;
              if (!v304)
              {
                if (qword_10096D120 != -1)
                {
                  swift_once();
                }

                v219 = type metadata accessor for OSLogger();
                sub_1000056A8(v219, qword_1009CE218);
                sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
                type metadata accessor for LogMessage();
                *(swift_allocObject() + 16) = xmmword_1007B1890;
                LogMessage.init(stringLiteral:)();
                v306 = v297;
                sub_1000056E0(&v304);
                FlowAction.page.getter();
                static LogMessage.sensitive(_:)();
                sub_10002B894(&v304, &unk_1009711D0, &unk_1007B1A10);
                Logger.debug(_:)();

                goto LABEL_61;
              }
            }

            v212 = *(&v304 + 1);

            *v95 = v211;
            v95[1] = v212;
            v93 = v274;
            goto LABEL_25;
          }

          type metadata accessor for MarketingItemRequestInfo();
          FlowAction.pageData<A>(as:or:)();
          v163 = v304;
          if (!v304)
          {
            if (qword_10096D120 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }
      }
    }

    *v95 = v163;
    v93 = v274;
    goto LABEL_25;
  }

  v91 = type metadata accessor for SearchAction();
  __chkstk_darwin(v91);
  v92 = v302;
  *(&v256 - 2) = v302;
  FlowAction.pageData<A>(as:or:)();

  *v88 = v304;
  swift_storeEnumTagMultiPayload();
  v93 = v80;
  v94 = v88;
LABEL_27:
  v123 = v301;
  sub_100466FD8(v94, v301, type metadata accessor for FlowDestination);
  (*(v300 + 56))(v123, 0, 1, v93);
  return sub_10002B894(v92, &unk_1009711D0, &unk_1007B1A10);
}

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(v1, v9, v5);
  v6 = type metadata accessor for FlowDestination(0);
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6) != 1)
  {
    return sub_100466FD8(v5, a1, type metadata accessor for FlowDestination);
  }

  swift_storeEnumTagMultiPayload();
  result = (v7)(v5, 1, v6);
  if (result != 1)
  {
    return sub_10002B894(v5, &unk_1009796F0, &unk_1007BA400);
  }

  return result;
}

uint64_t sub_100466FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004670DC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D1D08);
  sub_1000056A8(v4, qword_1009D1D08);
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1490);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004672BC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D1D38);
  sub_1000056A8(v4, qword_1009D1D38);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D14A8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_1004674A4(unsigned __int8 a1, uint64_t a2, UIContentSizeCategory a3)
{
  v4 = a1;
  v5 = type metadata accessor for AspectRatio();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PageGrid.Breakpoint();
  base_props = v9[-1].base_props;
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 4)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      goto LABEL_8;
    }

    PageGrid.activeBreakPoint.getter();
    if (qword_10096E990 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_1000056A8(v9, qword_1009D2A80);
      sub_100467DA0();
      v14 = dispatch thunk of static Comparable.< infix(_:_:)();
      v15 = base_props[1];
      ++base_props;
      v15(v12, v9);
      if (v14)
      {
        break;
      }

LABEL_8:
      v9 = &StringUserDefaultsDebugSetting;
      v16 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v17 = static UIContentSizeCategory.<= infix(_:_:)();

        if (v17)
        {
          return;
        }
      }

      else
      {
      }

      v19 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      a3 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (static UIContentSizeCategory.<= infix(_:_:)())
      {
        if (static UIContentSizeCategory.>= infix(_:_:)())
        {
          static UIContentSizeCategory.<= infix(_:_:)();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  PageGrid.containerWidth.getter();
  PageGrid.containerWidth.getter();
  if (v4 == 4)
  {
    if (qword_10096E4A0 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_1000056A8(v5, qword_1009D1CD8);
    AspectRatio.height(fromWidth:)();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_10096E498 != -1)
      {
        swift_once();
      }

      v18 = qword_1009D1CC0;
    }

    else
    {
      if (qword_10096E4A8 != -1)
      {
        swift_once();
      }

      v18 = qword_1009D1CF0;
    }

    v20 = sub_1000056A8(v5, v18);
    (*(v6 + 16))(v8, v20, v5);
    AspectRatio.height(fromWidth:)();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_100467918(__objc2_class_ro *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1;
  v6 = type metadata accessor for AspectRatio();
  v22 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PageGrid.Breakpoint();
  v10 = *(v9 - 1);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != 4)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      goto LABEL_8;
    }

    v21 = a3;
    PageGrid.activeBreakPoint.getter();
    if (qword_10096E990 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_1000056A8(v9, qword_1009D2A80);
      sub_100467DA0();
      v15 = dispatch thunk of static Comparable.< infix(_:_:)();
      (v10[1])(v13, v9);
      a3 = v21;
      if (v15)
      {
        break;
      }

LABEL_8:
      v4 = &StringUserDefaultsDebugSetting;
      v9 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v16 = static UIContentSizeCategory.<= infix(_:_:)();

        if (v16)
        {
          return;
        }
      }

      else
      {
      }

      v18 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v10 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (static UIContentSizeCategory.<= infix(_:_:)())
      {
        if (static UIContentSizeCategory.>= infix(_:_:)())
        {
          static UIContentSizeCategory.<= infix(_:_:)();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_100699534(v4, v11);
  PageGrid.containerWidth.getter();
  if (v5 == 4)
  {
    if (qword_10096E4A0 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D1CD8);
    AspectRatio.height(fromWidth:)();
  }

  else
  {
    if (v14 >= 300.0)
    {
      if (qword_10096E498 != -1)
      {
        swift_once();
      }

      v17 = qword_1009D1CC0;
    }

    else
    {
      if (qword_10096E4A8 != -1)
      {
        swift_once();
      }

      v17 = qword_1009D1CF0;
    }

    v19 = sub_1000056A8(v6, v17);
    v20 = v22;
    (*(v22 + 16))(v8, v19, v6);
    AspectRatio.height(fromWidth:)();
    (*(v20 + 8))(v8, v6);
  }
}

unint64_t sub_100467DA0()
{
  result = qword_100986540;
  if (!qword_100986540)
  {
    type metadata accessor for PageGrid.Breakpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986540);
  }

  return result;
}

double sub_100467DF8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26[-1] - v8;
  v10 = type metadata accessor for FontSource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((UITraitCollection.isRegularPad.getter() & 1) == 0)
  {
    if (JUScreenClassHasRoundedCorners())
    {
      if (a2)
      {
        v14 = [a2 window];
        if (v14)
        {
          v15 = v14;
          [v14 safeAreaInsets];
        }
      }
    }
  }

  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v16, qword_1009D1490);
  (*(*(v16 - 8) + 16))(v13, v17, v16);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v26[3] = v10;
  v26[4] = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v26);
  (*(v11 + 16))(v18, v13, v10);
  CGFloat.scalingLike(_:with:)();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  sub_100007000(v26);
  static Dimensions.defaultRoundingRule.getter();
  *v26 = v20;
  (*(v4 + 16))(v6, v9, v3);
  v21 = (*(v4 + 88))(v6, v3);
  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v22 = round(v20);
LABEL_19:
    (*(v4 + 8))(v9, v3);
    return v22;
  }

  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v22 = rint(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v22 = ceil(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v22 = floor(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v22 = trunc(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v4 + 8))(v9, v3);
    if ((*&v20 & 0x8000000000000000) != 0)
    {
      return floor(v20);
    }

    else
    {
      return ceil(v20);
    }
  }

  else
  {
    Double._roundSlowPath(_:)();
    v24 = *(v4 + 8);
    v24(v9, v3);
    v24(v6, v3);
    return *v26;
  }
}

unint64_t sub_100468270()
{
  result = qword_100986548;
  if (!qword_100986548)
  {
    type metadata accessor for AdTransparencyAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986548);
  }

  return result;
}

uint64_t sub_1004682D0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v2 = type metadata accessor for FlowOrigin();
  v44 = *(v2 - 1);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowAnimationBehavior();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowPresentationContext();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v36 = &v31 - v9;
  v10 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v33 = &v31 - v11;
  v13 = type metadata accessor for FlowPage();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v16;
  v34 = type metadata accessor for ActionMetrics();
  v17 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v31 - v20;
  AdTransparencyAction.adTransparencyData.getter();
  v22 = objc_allocWithZone(ADTransparencyViewController);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 initWithTransparencyDetails:v23];

  static ActionMetrics.notInstrumented.getter();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.viewController(_:), v13);
  v25 = type metadata accessor for URL();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = type metadata accessor for ReferrerData();
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v48 = sub_100065AF0();
  v47 = v24;
  v27 = v34;
  (*(v17 + 16))(v32, v21, v34);
  (*(v38 + 104))(v37, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v41 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v42);
  (*(v44 + 104))(v43, enum case for FlowOrigin.inapp(_:), v45);
  v45 = v24;
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  (*(v17 + 8))(v21, v27);
  v29 = sub_1005D01FC(v28, 1, v46);

  return v29;
}

char *sub_1004688C8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews] = _swiftEmptyArrayStorage;
  v12 = &v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex];
  *v12 = 0;
  v12[8] = 1;
  AutoScrollConfiguration.init(isAutoScrollEnabled:autoScrollInterval:autoScrollRestartDelay:autoScrollMaxInterval:)();
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_parallaxY] = 0;
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding] = 0;
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress] = 0;
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isVoiceOverRunning] = UIAccessibilityIsVoiceOverRunning();
  v4[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isReducedMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for HeroCarouselView(0);
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView;
  *(*&v17[OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView] + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pagingDelegate + 8) = &off_1008C3EE0;
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl;
  [*&v17[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl] setAllowsContinuousInteraction:0];
  [*&v17[v19] setBackgroundStyle:2];
  *(*&v17[v19] + OBJC_IVAR____TtC8AppStoreP33_34C2CD3B1DD055F5A56FA333DB4C2D6511PageControl_delegate + 8) = &off_1008C3ED0;
  swift_unknownObjectWeakAssign();
  [*&v17[v19] setOverrideUserInterfaceStyle:2];
  v20 = *&v17[v19];
  [v20 addTarget:v17 action:"pageControlDidChange" forControlEvents:4096];

  v21 = type metadata accessor for Feature.iOS();
  v32[3] = v21;
  v32[4] = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v22 = sub_1000056E0(v32);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v21);
  LOBYTE(v21) = isFeatureEnabled(_:)();
  sub_100007000(v32);
  if (v21)
  {
    v23 = [objc_allocWithZone(UIPageControlTimerProgress) initWithPreferredDuration:COERCE_DOUBLE(1)];
    v24 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress;
    v25 = *&v17[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress];
    *&v17[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress] = v23;

    v26 = *&v17[v24];
    if (v26)
    {
      [v26 setDelegate:v17];
      v27 = *&v17[v24];
    }

    else
    {
      v27 = 0;
    }

    [*&v17[v19] setProgress:v27];
    sub_10046A704();
  }

  [v17 addSubview:*&v17[v18]];
  [v17 addSubview:*&v17[v19]];
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  [v29 addObserver:v17 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v30 = [v28 defaultCenter];
  [v30 addObserver:v17 selector:"voiceOverStatusDidChange:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  return v17;
}

void sub_100468D78(char a1)
{
  v2 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled;
  *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled) = a1;
  v3 = type metadata accessor for Feature.iOS();
  v12 = v3;
  v4 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v13 = v4;
  v5 = sub_1000056E0(v11);
  v6 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v7 = *(*(v3 - 8) + 104);
  v7(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v3);
  v8 = isFeatureEnabled(_:)();
  sub_100007000(v11);
  if ((v8 & 1) == 0)
  {
    if (*(v1 + v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer))
      {
        sub_100469E30(0.0);
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v9 = sub_1000056E0(v11);
      v7(v9, v6, v3);
      v10 = isFeatureEnabled(_:)();
      sub_100007000(v11);
      if ((v10 & 1) == 0)
      {
        sub_10046BD0C(0);
      }
    }
  }
}

void sub_100468ECC()
{
  v1 = type metadata accessor for Feature.iOS();
  v10 = v1;
  v2 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v11 = v2;
  v3 = sub_1000056E0(v9);
  v4 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v5 = *(*(v1 - 8) + 104);
  v5(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  v6 = isFeatureEnabled(_:)();
  sub_100007000(v9);
  if ((v6 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer))
      {
        v10 = v1;
        v11 = v2;
        v7 = sub_1000056E0(v9);
        v5(v7, v4, v1);
        v8 = isFeatureEnabled(_:)();
        sub_100007000(v9);
        if ((v8 & 1) == 0)
        {
          sub_10046BD0C(0);
        }
      }
    }

    else if (*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled) == 1 && !*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer))
    {
      sub_100469E30(0.0);
    }
  }
}

id sub_100469048()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HeroCarouselView(0);
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v1 setFrame:?];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.subtracting(insets:)();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v14 = v13;
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  v15 = CGRectGetMidX(v18) + v12 * -0.5;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  return [v10 setFrame:{v15, CGRectGetMaxY(v19) - v14, v12, v14}];
}

id sub_1004691D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);
  v2 = [*(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl) currentPage];
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v6 + 24) == v2)
      {

        v9 = *(v6 + 32);

        return v9;
      }

      ++v5;
    }

    while (v7 != v4);
  }

  return 0;
}

id sub_10046931C(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  v5 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews;
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_12:

  *&v26[v5] = a1;

  v11 = a1 >> 62;
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_bridgeObjectRetain_n();
  if (v4)
  {
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v13 = *(a1 + 8 * v12 + 32);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      v15 = *&v26[v5];
      if (v15 >> 62)
      {
        v24 = v11;
        v18 = v13;
        v16 = _CocoaArrayWrapper.endIndex.getter();
        v13 = v18;
        v11 = v24;
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = 32.0;
      if (v16 <= 1)
      {
        v17 = 20.0;
      }

      *&v13[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayBottomInset] = v17;

      ++v12;
    }

    while (v14 != v4);
  }

  v19 = *&v26[OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl];
  if (v11)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setNumberOfPages:v20];
  v21 = *&v26[v5];
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setHidden:v22 < 2];
  sub_1005C4C74(a1, a2);

  return [v26 setNeedsLayout];
}

double sub_100469604(int a1, int a2)
{
  v48 = type metadata accessor for HeroCarouselItemOverlay.OverlayType();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v8)
  {
    v9 = 0;
    v54 = v7 & 0xFFFFFFFFFFFFFF8;
    v55 = v7 & 0xC000000000000001;
    v52 = a1 & 1;
    v46 = v5 + 1;
    v49 = a2;
    v50 = a1;
    v51 = v7;
    v53 = v8;
    do
    {
      if (v55)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v54 + 16))
        {
          goto LABEL_32;
        }

        v20 = *(v7 + 8 * v9 + 32);
      }

      v5 = v20;
      v21 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v8 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v22 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_gradientView;
      v23 = *(v20 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_gradientView);
      v24 = v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient];
      v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient] = v52;
      if (v24 != (a1 & 1))
      {
        if ((a1 & 1) != 0 || v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] == 1)
        {
          v25 = OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient;
          [*&v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setHidden:0];
          [v23 bounds];
          sub_10051C094(v26, v27);
          v29 = v28;
          v30 = *&v23[v25];
          sub_100005744(0, &qword_10097FB80, NSNumber_ptr);

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v30 setLocations:isa];

          v32 = *&v23[v25];

          sub_1002A4E98(v29);

          v33 = Array._bridgeToObjectiveC()().super.isa;
          a1 = v50;

          v34 = v32;
          v7 = v51;
          [v34 setColors:v33];

          v35 = *&v23[v25];
          a2 = v49;
          [v35 setNeedsDisplay];
        }

        else
        {
          [*&v23[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setHidden:1];
        }

        [v23 setNeedsLayout];
      }

      v36 = *(v5 + v22);
      if (a2)
      {
        if (!*(v5 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem) || (, v37 = HeroCarouselItem.overlay.getter(), , !v37))
        {
          v43 = v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient];
          v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] = 1;
          if (v43)
          {
            goto LABEL_7;
          }

          goto LABEL_5;
        }

        v38 = v47;
        HeroCarouselItemOverlay.overlayType.getter();

        v39 = HeroCarouselItemOverlay.OverlayType.displaysModuleGradient.getter();
        (*v46)(v38, v48);
        v40 = v39 ^ 1;
        v7 = v51;
        v41 = v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] = v40 & 1;
        if (v41 == (v40 & 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v40 = 0;
        v42 = v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((v40 & 1) == 0 && !v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient])
      {
        [*&v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setHidden:1];
        goto LABEL_6;
      }

LABEL_5:
      v10 = OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient;
      [*&v36[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setHidden:0];
      [v36 bounds];
      sub_10051C094(v11, v12);
      v14 = v13;
      v15 = *&v36[v10];
      sub_100005744(0, &qword_10097FB80, NSNumber_ptr);

      v16 = Array._bridgeToObjectiveC()().super.isa;

      [v15 setLocations:v16];

      v17 = *&v36[v10];

      sub_1002A4E98(v14);

      v18 = Array._bridgeToObjectiveC()().super.isa;
      v7 = v51;

      v19 = v17;
      a1 = v50;
      [v19 setColors:v18];

      [*&v36[v10] setNeedsDisplay];
LABEL_6:
      [v36 setNeedsLayout];
LABEL_7:

      ++v9;
    }

    while (v21 != v53);
  }

  return result;
}

void sub_100469B54()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);
  v3 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex);
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl);
  if (v4 >= [v5 currentPage])
  {
    v13 = *(v2 + v3);
    if ([v5 currentPage] >= v13)
    {
      return;
    }

    v14 = type metadata accessor for Feature.iOS();
    v26 = v14;
    v15 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
    v27 = v15;
    v16 = sub_1000056E0(v25);
    v17 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
    v19 = isFeatureEnabled(_:)();
    sub_100007000(v25);
    if (v19)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v26 = v14;
    v27 = v15;
    v23 = sub_1000056E0(v25);
    v18(v23, v17, v14);
    v24 = isFeatureEnabled(_:)();
    sub_100007000(v25);
    v12 = 0;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_8:
    v22 = v12;
    sub_10046BD0C(0);
    v12 = v22;
    goto LABEL_9;
  }

  v6 = type metadata accessor for Feature.iOS();
  v26 = v6;
  v7 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v27 = v7;
  v8 = sub_1000056E0(v25);
  v9 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v10 = *(*(v6 - 8) + 104);
  v10(v8, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v6);
  v11 = isFeatureEnabled(_:)();
  sub_100007000(v25);
  if ((v11 & 1) == 0)
  {
    v26 = v6;
    v27 = v7;
    v20 = sub_1000056E0(v25);
    v10(v20, v9, v6);
    v21 = isFeatureEnabled(_:)();
    sub_100007000(v25);
    v12 = 1;
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:
  sub_1005C519C(v12);
}

void sub_100469E30(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v39 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v37 - v9;
  v10 = type metadata accessor for AutoScrollConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Feature.iOS();
  v50 = v14;
  v51 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v15 = sub_1000056E0(&aBlock);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100007000(&aBlock);
  if ((v14 & 1) == 0 && *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled) == 1)
  {
    v16 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollConfiguration;
    swift_beginAccess();
    v17 = *(v11 + 16);
    v17(v13, v1 + v16, v10);
    v18 = AutoScrollConfiguration.isAutoScrollEnabled.getter();
    v19 = *(v11 + 8);
    v19(v13, v10);
    if (v18)
    {
      v20 = *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
      if (v20 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 2)
        {
          return;
        }
      }

      else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
        return;
      }

      if ((*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isVoiceOverRunning) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isReducedMotionEnabled) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer))
      {
        v17(v13, v1 + v16, v10);
        AutoScrollConfiguration.autoScrollInterval.getter();
        v22 = v21;
        v19(v13, v10);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_10046BEE4;
        v52 = v23;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_100080D48;
        v50 = &unk_1008C3F98;
        v24 = _Block_copy(&aBlock);
        v25 = objc_opt_self();

        v26 = [v25 timerWithTimeInterval:0 repeats:v24 block:v22];
        _Block_release(v24);

        v27 = v26;
        sub_10046BD0C(v26);

        if (a1 <= 0.0)
        {
          v36 = [objc_opt_self() currentRunLoop];
          [v36 addTimer:v27 forMode:NSRunLoopCommonModes];
        }

        else
        {
          sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
          v28 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          v29 = v38;
          + infix(_:_:)();
          v39 = *(v39 + 8);
          (v39)(v7, v46);
          v30 = swift_allocObject();
          *(v30 + 16) = v27;
          v51 = sub_10046BEEC;
          v52 = v30;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_100007A08;
          v50 = &unk_1008C3FE8;
          v31 = _Block_copy(&aBlock);
          v32 = v27;

          v33 = v40;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          sub_10046BEF4(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
          sub_1000079A4();
          v34 = v42;
          v35 = v45;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v31);

          (*(v44 + 8))(v34, v35);
          (*(v41 + 8))(v33, v43);
          (v39)(v29, v46);
        }
      }
    }
  }
}

void sub_10046A5B0(void *a1, uint64_t a2)
{
  if ([a1 isValid])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);

      sub_1005C519C(1u);
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_10046BD0C(0);
    }
  }
}

void sub_10046A668(void *a1)
{
  if ([a1 isValid])
  {
    v2 = [objc_opt_self() currentRunLoop];
    [v2 addTimer:a1 forMode:NSRunLoopCommonModes];
  }
}

void sub_10046A704()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Feature.iOS();
  v10 = v1;
  v11 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v2 = sub_1000056E0(v9);
  (*(*(v1 - 8) + 104))(v2, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100007000(v9);
  if (v1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v11 = sub_10046BEDC;
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100080D48;
    v10 = &unk_1008C3F70;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:0.5];
    _Block_release(v5);

    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

void sub_10046A924(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AutoScrollConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [*(Strong + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl) currentPage];

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = *(v12 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
      v14 = v12;

      if ((v13 & 0xC000000000000001) == 0)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v13 + v11 + 4);
LABEL_7:
          v17 = v16;

          v13 = *&v17[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView];

          v18 = *(*(*(v13 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
          if (!v18)
          {
            goto LABEL_35;
          }

          type metadata accessor for VideoView(0);
          v19 = swift_dynamicCastClass();
          if (!v19)
          {
            goto LABEL_35;
          }

          v20 = v19;
          v14 = v18;

          v21 = *(v20 + qword_100988CE0);
          if (!v21)
          {
            v13 = v14;
            goto LABEL_35;
          }

          v13 = v21;
          v22 = dispatch thunk of VideoPlayer.playerItem.getter();
          if (!v22)
          {
LABEL_33:

LABEL_35:
            return;
          }

          v2 = v22;
          [v22 duration];
          Seconds = CMTimeGetSeconds(&time);
          [v2 currentTime];
          v4 = CMTimeGetSeconds(&time);
          if (vabdd_f64(v4, Seconds) > 0.5 || (swift_beginAccess(), (v23 = swift_unknownObjectWeakLoadStrong()) == 0) || (v24 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollConfiguration, v25 = v23, swift_beginAccess(), (*(v6 + 16))(v8, &v25[v24], v5), LOBYTE(v24) = AutoScrollConfiguration.isAutoScrollEnabled.getter(), v25, (*(v6 + 8))(v8, v5), (v24 & 1) == 0) || (swift_beginAccess(), (v15 = swift_unknownObjectWeakLoadStrong()) == 0))
          {
LABEL_26:
            if (v4 / Seconds > 0.0)
            {
              v37 = v4 / Seconds;
            }

            else
            {
              v37 = 0.0;
            }

            swift_beginAccess();
            v38 = swift_unknownObjectWeakLoadStrong();
            if (v38)
            {
              v39 = *(v38 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress);
              v40 = v38;
              v41 = v39;

              if (v39)
              {
                *&v42 = v37;
                [v41 setCurrentProgress:v42];
              }
            }

            v14 = v2;
            goto LABEL_33;
          }

          v26 = *&v15[OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews];
          if (!(v26 >> 62))
          {
            v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_17;
          }

LABEL_40:
          v43 = v15;
          v27 = _CocoaArrayWrapper.endIndex.getter();
          v15 = v43;
LABEL_17:

          if (v27 >= 2)
          {
            swift_beginAccess();
            v28 = swift_unknownObjectWeakLoadStrong();
            if (!v28 || (v29 = v28[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isVoiceOverRunning], v28, (v29 & 1) == 0))
            {
              swift_beginAccess();
              v30 = swift_unknownObjectWeakLoadStrong();
              if (!v30 || (v31 = v30[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isReducedMotionEnabled], v30, (v31 & 1) == 0))
              {
                swift_beginAccess();
                v32 = swift_unknownObjectWeakLoadStrong();
                if (!v32 || (v33 = v32[OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively], v32, (v33 & 1) == 0))
                {
                  swift_beginAccess();
                  v34 = swift_unknownObjectWeakLoadStrong();
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *(v34 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);

                    sub_1005C519C(1u);
                  }
                }
              }
            }
          }

          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_40;
      }

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }
  }
}

void sub_10046AE64(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TitleEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100986660, qword_1007CE528);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v18[-1] - v11;
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl);
  v14 = [v13 currentPage];
  v15 = v2 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex;
  *v15 = v14;
  *(v15 + 8) = 0;
  [v13 setCurrentPage:a2];
  [v13 setNeedsLayout];
  v16 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_10046BE04(v2 + v16, v19);
  if (v20)
  {
    sub_10002C0AC(v19, v18);
    sub_10046BE74(v19);
    sub_10002A400(v18, v18[3]);
    if (*(a1 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem))
    {

      dispatch thunk of HeroCarouselItem.titleEffect.getter();

      (*(v6 + 32))(v12, v8, v5);
    }

    else
    {
      (*(v6 + 104))(v12, enum case for TitleEffect.none(_:), v5);
    }

    (*(v6 + 56))(v12, 0, 1, v5);
    sub_10066AD50(v12);
    sub_100007000(v18);
  }

  else
  {
    sub_10046BE74(v19);
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

uint64_t sub_10046B0E0(uint64_t a1, uint64_t a2, id a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl);
  v8 = [v7 currentPage];
  v9 = v3 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex;
  *v9 = v8;
  *(v9 + 8) = 0;
  [v7 setCurrentPage:a3];
  [v7 setNeedsLayout];
  v10 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_10046BE04(v3 + v10, v25);
  if (!v26)
  {
    return sub_10046BE74(v25);
  }

  sub_10002C0AC(v25, v24);
  sub_10046BE74(v25);
  sub_10002A400(v24, v24[3]);
  v11 = *(a1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  v22 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;
  v23 = a1;
  if (v11 >> 62)
  {
    goto LABEL_37;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      if (*(v14 + 24) == a3)
      {

        a3 = *(v14 + 32);

        goto LABEL_18;
      }

      ++v13;
    }

    while (v15 != v12);
  }

  a3 = 0;
LABEL_18:
  v17 = *(v23 + v22);
  if (v17 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v18 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v19 = *(v17 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (*(v19 + 24) == a2)
      {
        break;
      }

      ++v18;
      if (v20 == v11)
      {
        goto LABEL_31;
      }
    }

    v21 = *(v19 + 32);
  }

  else
  {
LABEL_31:

    v21 = 0;
  }

  sub_10066CE24(v3, v21);

  return sub_100007000(v24);
}

void sub_10046B4C4(uint64_t a1, uint64_t *a2, unsigned int (*a3)(uint64_t))
{
  v5 = *a2;
  v6 = *(v3 + *a2);
  if (v6 != a3(a1))
  {
    *(v3 + v5) = (a3)();
    v7 = type metadata accessor for Feature.iOS();
    v16 = v7;
    v8 = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
    v17 = v8;
    v9 = sub_1000056E0(v15);
    v10 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v11 = *(*(v7 - 8) + 104);
    v11(v9, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v7);
    v12 = isFeatureEnabled(_:)();
    sub_100007000(v15);
    if ((v12 & 1) == 0)
    {
      if (*(v3 + v5) == 1)
      {
        v16 = v7;
        v17 = v8;
        v13 = sub_1000056E0(v15);
        v11(v13, v10, v7);
        v14 = isFeatureEnabled(_:)();
        sub_100007000(v15);
        if ((v14 & 1) == 0)
        {
          sub_10046BD0C(0);
        }
      }

      else
      {
        sub_100469E30(0.0);
      }
    }
  }
}

uint64_t sub_10046B640(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for HeroCarouselView(uint64_t a1)
{
  result = qword_100986620;
  if (!qword_100986620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046B864(uint64_t a1)
{
  result = type metadata accessor for AutoScrollConfiguration();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10046B960(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_1005C519C(v3);
    swift_unknownObjectRelease();
  }
}

id sub_10046BB30(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10046BBA4()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex;
  *v4 = 0;
  *(v4 + 8) = 1;
  AutoScrollConfiguration.init(isAutoScrollEnabled:autoScrollInterval:autoScrollRestartDelay:autoScrollMaxInterval:)();
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isAutoScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_parallaxY) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControlProgress) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10046BD0C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollTimer) = a1;
  v4 = type metadata accessor for Feature.iOS();
  v7[3] = v4;
  v7[4] = sub_10046BEF4(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v5 = sub_1000056E0(v7);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  v6 = a1;
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100007000(v7);
  if ((v4 & 1) == 0)
  {
    [v3 invalidate];
  }
}

uint64_t sub_10046BE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100990DC0, &qword_1007CE520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046BE74(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100990DC0, &qword_1007CE520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10046BEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10046BF4C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for CornerStyle();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v56.receiver = v4;
  v56.super_class = ObjectType;
  v53 = ObjectType;
  v13 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView;
  *(*&v13[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008C4010;
  swift_unknownObjectWeakAssign();
  v15 = *&v13[v14];
  v16 = v13;
  v50 = v15;
  v17 = [v16 traitCollection];
  v18 = [(NSString *)v17 preferredContentSizeCategory];
  v19 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v20 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v22 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v22)
    {
      v23 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v24 = [(NSString *)v17 preferredContentSizeCategory];
  v25 = UIContentSizeCategoryAccessibilityMedium;
  v26 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v27 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v27)
    {
      v23 = v25;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {

    v23 = 0;
    v17 = v25;
  }

LABEL_12:

  v28 = v50;
  [v50 setMaximumContentSizeCategory:v23];

  v29 = [v16 contentView];
  [v29 addSubview:*&v13[v14]];

  v30 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer;
  v31 = *&v16[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v32 = type metadata accessor for TodayCardInfoLayerView(0);
  v55.receiver = v31;
  v55.super_class = v32;
  v33 = v16;
  v34 = objc_msgSendSuper2(&v55, "_setContinuousCornerRadius:", 20.0);
  sub_1000A3894(v34, v35);
  *&v33[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = 0x402E000000000000;
  v37 = v51;
  v36 = v52;
  (*(v51 + 104))(v12, enum case for CornerStyle.continuous(_:), v52);
  if (v33[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v38 = 3;
  }

  else
  {
    v38 = -1;
  }

  sub_10070C5EC(v12, v38, 15.0);
  (*(v37 + 8))(v12, v36);
  v39 = *&v33[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v39)
  {
    v40 = v39;
    [v40 _setContinuousCornerRadius:15.0];
    v41 = [v40 layer];
    [v41 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  v42 = [v33 contentView];
  [v42 _setContinuousCornerRadius:20.0];

  v43 = [v33 contentView];
  v44 = [v43 layer];

  [v44 setMaskedCorners:3];
  v45 = *&v16[v30];
  v46 = *&v45[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType];
  *&v45[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType] = kCAGradientLayerAxial;
  v47 = v45;
  v48 = kCAGradientLayerAxial;

  sub_10046C4F0();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007B10D0;
  *(v49 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v54[3] = v53;
  v54[0] = v33;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v54);
  return v33;
}

uint64_t sub_10046C4F0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  v2 = [v0 traitCollection];
  v3 = [(NSString *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v5 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v7 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v7)
    {
      v8 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [(NSString *)v2 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryAccessibilityMedium;
  v11 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v12 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v12)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {

    v8 = 0;
    v2 = v10;
  }

LABEL_12:

  [v1 setMaximumContentSizeCategory:v8];

  return [v0 setNeedsLayout];
}

double sub_10046C6FC()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v6 = 0.0;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v7 = &v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
    if ((v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v6 = *v7, *v7 <= 0.0) || (v8 = [v0 traitCollection], v9 = UITraitCollection.isSizeClassCompact.getter(), v8, (v9 & 1) == 0))
    {
      v10 = [v1 traitCollection];
      v11 = UITraitCollection.prefersRightToLeftLayouts.getter();

      v12 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_1000A833C(v1 + v12, v5);
      v13 = [v1 traitCollection];
      sub_1004EDF34(v5, v13);
      if (v11)
      {
        v6 = v15;
      }

      else
      {
        v6 = v14;
      }

      sub_10046DF7C(v5);
    }
  }

  return v6;
}

id sub_10046C904()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 bounds];

  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView] bounds];
    CGRectGetHeight(v31);
  }

  else
  {
    v4 = [v1 contentView];
    [v4 bounds];
  }

  v5 = *&v1[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_1002C65CC(v30);
  sub_1002C97E0();
  sub_1001A927C(v30);

  if (v1[v3] == 1 && ((v6 = [v1 traitCollection], v7 = v6, !v1[v3]) ? (v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory), sub_1000A805C(v6, v1[*v8], v30), v7, v1[v3] == 1))
  {
    v9 = [v1 contentView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v32.origin.x = v11;
    v32.origin.y = v13;
    v32.size.width = v15;
    v32.size.height = v17;
    CGRectGetMinY(v32);
    MinY = sub_10046C6FC();
  }

  else
  {
    v19 = [v1 contentView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v25;
    v33.size.height = v27;
    MinY = CGRectGetMinY(v33);
  }

  v28 = [v1 contentView];
  [v28 bounds];

  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v5 setFrame:?];
}

void sub_10046CBD0()
{
  if ((*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
    [v1 frame];
    CGRect.subtracting(insets:)();
    [v1 setFrame:?];
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
    if (v2)
    {
      v3 = v2;
      [v3 frame];
      CGRect.subtracting(insets:)();
      [v3 setFrame:?];
    }
  }
}

double sub_10046CD88(uint64_t a1, __objc2_class_ro *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for TodayCard.Style();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v45 = &v42 - v15;
  sub_1002108CC(a1, a2, a3, a4);
  v16 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaAppEvent();
  if (swift_dynamicCastClass())
  {
    v42 = a4;
    v44 = v16;
    v17 = TodayCardMediaAppEvent.formattedDates.getter();
    v18 = *&v5[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
    type metadata accessor for AppEventFormattedDatePresenter(0);
    swift_allocObject();
    v19 = v18;
    v20 = sub_1006E6CE8(v17, v18, &off_1008BC738);

    v21 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    *&v19[v21] = v20;

    [v5 setNeedsLayout];
    v22 = [v5 backgroundView];
    if (v22)
    {
      v23 = v22;
      v24 = TodayCardMediaAppEvent.tintColor.getter();
      [v23 setBackgroundColor:v24];
    }

    v43 = v13;
    v25 = *&v5[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
    v26 = TodayCardMediaAppEvent.tintColor.getter();
    [v25 setBackgroundColor:v26];

    v27 = TodayCardMediaAppEvent.tintColor.getter();
    v28 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v29 = *&v19[v28];
    if (v29)
    {
      v30 = v29;
      [v30 setBackgroundColor:v27];
    }

    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    BaseObjectGraph.optional<A>(_:)();
    v31 = v48;
    v32 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v33 = *&v19[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v34 = v33;
    sub_1002C55E4(v31);
    v35 = *&v19[v32];
    *&v19[v32] = v31;
    v36 = v31;

    sub_1002C5748(v33);
    v37 = v45;
    TodayCard.style.getter();
    v38 = v43;
    (*(v11 + 104))(v43, enum case for TodayCard.Style.white(_:), v10);
    sub_1001DDE20();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v48 == v46 && v49 == v47)
    {
      v39 = 1;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }

    v41 = *(v11 + 8);
    v41(v38, v10);
    v41(v37, v10);

    [v19 setOverrideUserInterfaceStyle:v39];
    sub_10046D1D4();
    [v5 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

void sub_10046D1D4()
{
  v1 = v0;
  sub_1004EB9C0();
  v2 = [v0 contentView];
  sub_1005504B4();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setAccessibilityLabel:v4];

  v5 = [v1 contentView];
  v6 = [*(*&v1[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel) text];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v21[0] = v9;
  v10 = 0;
  v21[1] = sub_1005504B4();
  v21[2] = v11;
  v12 = _swiftEmptyArrayStorage;
LABEL_8:
  v13 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100033E38(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_100033E38((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  sub_10002849C(&unk_100984350, &unk_1007B47A0);
  swift_arrayDestroy();
  sub_10002849C(&unk_100977380, &qword_1007BB880);
  sub_10015872C();
  BidirectionalCollection<>.joined(separator:)();

  v20 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityLabel:v20];
}

void sub_10046D458(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_100214D80(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8 && (a3 & 1) == 0)
  {
    v9 = v8;
    v36 = a1;
    v10 = [v4 backgroundView];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 backgroundView];
      v13 = [v12 backgroundColor];

      [v11 setBackgroundColor:v13];
    }

    v14 = *&v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
    v15 = [*&v9[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView] backgroundColor];
    [v14 setBackgroundColor:v15];

    v16 = OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView;
    v17 = *&v9[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
    v18 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    v19 = *(v17 + v18);
    if (v19)
    {
      v20 = *(v19 + 16);
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

    v21 = *&v4[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
    type metadata accessor for AppEventFormattedDatePresenter(0);
    swift_allocObject();
    v22 = v21;
    v23 = sub_1006E6CE8(v20, v21, &off_1008BC738);

    v24 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    *&v22[v24] = v23;

    [v4 setNeedsLayout];
    v25 = *&v9[v16];
    v26 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v27 = *(v25 + v26);
    if (v27)
    {
      v28 = [v27 backgroundColor];
    }

    else
    {
      v28 = 0;
    }

    v29 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v30 = *&v22[v29];
    if (v30)
    {
      v31 = v30;
      [v31 setBackgroundColor:v28];
    }

    [v22 setOverrideUserInterfaceStyle:{objc_msgSend(*&v9[v16], "overrideUserInterfaceStyle")}];
    v32 = [*&v9[v16] maximumContentSizeCategory];
    [v22 setMaximumContentSizeCategory:v32];

    v33 = [v4 contentView];
    v34 = [v9 contentView];
    v35 = [v34 overrideUserInterfaceStyle];

    [v33 setOverrideUserInterfaceStyle:v35];
  }
}

void sub_10046D7A0()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  type metadata accessor for AppEventFormattedDatePresenter(0);
  swift_allocObject();
  v3 = v2;
  v4 = sub_1006E6CE8(_swiftEmptyArrayStorage, v2, &off_1008BC738);

  v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *&v3[v5] = v4;

  [v1 setNeedsLayout];
  v6 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7)
  {
    [v7 setBackgroundColor:0];
  }

  v8 = [v1 contentView];
  [v8 setOverrideUserInterfaceStyle:0];
}

id sub_10046D928()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100217E70();
  v6 = *&v0[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  v7 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(v6 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style);
  *(v6 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) = v8;
  sub_1002C3F30(v9);
  if (v1[v7])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 20.0;
  }

  v11 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v12 = type metadata accessor for TodayCardInfoLayerView(0);
  v25.receiver = v11;
  v25.super_class = v12;
  v13 = objc_msgSendSuper2(&v25, "_setContinuousCornerRadius:", v10);
  sub_1000A3894(v13, v14);
  if (v1[v7])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = v15;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  if (v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v16 = 3;
  }

  else
  {
    v16 = -1;
  }

  sub_10070C5EC(v5, v16, v15);
  (*(v3 + 8))(v5, v2);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v17)
  {
    v18 = v17;
    [v18 _setContinuousCornerRadius:v15];
    v19 = [v18 layer];
    [v19 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  if (v1[v7])
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 20.0;
  }

  v21 = [v1 contentView];
  [v21 _setContinuousCornerRadius:v20];

  v22 = [v1 contentView];
  v23 = [v22 layer];

  [v23 setMaskedCorners:3];
  return [v1 setNeedsLayout];
}

id sub_10046DC04()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100217D2C();
  v6 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v7 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v9 = v0[*v8];
  if (v9 == 4)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 15.0;
  }

  if (v9 == 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = *&v0[OBJC_IVAR____TtC8AppStore35AppEventTodayCardCollectionViewCell_formattedDateView];
  if (v7)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v12 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style);
  *(v12 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) = v13;
  sub_1002C3F30(v14);
  if (v1[v6])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 20.0;
  }

  v16 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v17 = type metadata accessor for TodayCardInfoLayerView(0);
  v26.receiver = v16;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "_setContinuousCornerRadius:", v15);
  sub_1000A3894(v18, v19);
  if (v1[v6])
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v10;
  }

  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = v20;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  if (v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v21 = 3;
  }

  else
  {
    v21 = -1;
  }

  sub_10070C5EC(v5, v21, v20);
  (*(v3 + 8))(v5, v2);
  v22 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v22)
  {
    v23 = v22;
    [v23 _setContinuousCornerRadius:v20];
    v24 = [v23 layer];
    [v24 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for AppEventTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100986700;
  if (!qword_100986700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046DF7C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10046DFE4()
{
  type metadata accessor for DebugMetricsViewModel(0);
  swift_allocObject();
  return sub_10046F6F8();
}

uint64_t sub_10046E01C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_10002849C(&qword_100986800, &qword_1007CE708);
  __chkstk_darwin(v2 - 8);
  v57 = &v37 - v3;
  v4 = type metadata accessor for SearchFieldPlacement();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PlainListStyle();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10002849C(&qword_100986808, &qword_1007CE710);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v37 - v8;
  v45 = sub_10002849C(&qword_100986810, &qword_1007CE718);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v37 - v10;
  v47 = sub_10002849C(&qword_100986818, &qword_1007CE720);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v38 = &v37 - v12;
  v50 = sub_10002849C(&qword_100986820, &qword_1007CE728);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v37 - v13;
  v14 = *(v1 + 16);
  v54 = *(v1 + 8);
  v53 = v14;
  v52 = *(v1 + 24);
  type metadata accessor for DebugMetricsViewModel(0);
  sub_10046FDDC(&qword_100986828, type metadata accessor for DebugMetricsViewModel, &unk_1007CE5D8);
  StateObject.wrappedValue.getter();
  v44 = v1;
  v67 = *(v1 + 32);
  v15 = *(v1 + 48);
  v62 = *(v1 + 32);
  v63 = v15;
  v37 = v15;
  sub_10002849C(&qword_100986830, &qword_1007CE730);
  State.wrappedValue.getter();
  v16 = sub_10046E8F4(v65, *(&v65 + 1));

  *&v62 = v16;
  v59 = &v62;
  v60 = sub_10046ED48;
  v61 = 0;
  sub_10002849C(&qword_100986838, &qword_1007CE738);
  sub_10046FC08();
  List<>.init(content:)();

  PlainListStyle.init()();
  v17 = sub_100097060(&qword_100986858, &qword_100986808, &qword_1007CE710, &protocol conformance descriptor for List<A, B>);
  v18 = v11;
  v19 = v39;
  v20 = v42;
  View.listStyle<A>(_:)();
  (*(v43 + 8))(v7, v20);
  (*(v40 + 8))(v9, v19);
  v65 = v67;
  v66 = v15;
  State.projectedValue.getter();
  v21 = v49;
  static SearchFieldPlacement.automatic.getter();
  *&v62 = v19;
  *(&v62 + 1) = v20;
  v63 = v17;
  v64 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v38;
  View.searchable(text:placement:prompt:)();

  (*(v55 + 8))(v21, v56);
  (*(v46 + 8))(v18, v22);
  v62 = __PAIR128__(OpaqueTypeConformance2, v22);
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v41;
  v26 = v47;
  View.keyboardType(_:)();
  (*(v48 + 8))(v23, v26);
  v27 = v57;
  static TextInputAutocapitalization.never.getter();
  v28 = type metadata accessor for TextInputAutocapitalization();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  *&v62 = v26;
  *(&v62 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v58;
  v30 = v50;
  View.textInputAutocapitalization(_:)();
  sub_10002B894(v27, &qword_100986800, &qword_1007CE708);
  (*(v51 + 8))(v25, v30);
  v31 = v44;
  v62 = v67;
  v68 = v37;
  v32 = swift_allocObject();
  v33 = *(v31 + 16);
  *(v32 + 16) = *v31;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v31 + 32);
  *(v32 + 64) = *(v31 + 48);
  v34 = (v29 + *(sub_10002849C(&qword_100986860, &qword_1007CE748) + 36));
  *v34 = sub_10046FCC0;
  v34[1] = v32;
  v34[2] = 0;
  v34[3] = 0;

  sub_10046FCC8(v54, v53);
  sub_10019D860(&v62, &v65);
  return sub_10046FCD0(&v68, &v65);
}

char *sub_10046E8F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002849C(&qword_100972620, &unk_1007C4AF0);
  __chkstk_darwin(v4 - 8);
  v38 = &v29 - v5;
  v29 = type metadata accessor for DebugMetricsEvent();
  v39 = *(v29 - 8);
  __chkstk_darwin(v29);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  if (!a2)
  {
    goto LABEL_17;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v42;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v42;
  v36 = *(v42 + 2);
  if (!v36)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_19:

    return v13;
  }

  v34 = a1;
  v35 = a2;
  v12 = 0;
  v31 = (v39 + 32);
  v32 = v39 + 16;
  v30 = (v39 + 8);
  v13 = _swiftEmptyArrayStorage;
  v14 = v29;
  v33 = v42;
  while (v12 < *(result + 2))
  {
    v15 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v16 = *(v39 + 72);
    (*(v39 + 16))(v9, &result[v15 + v16 * v12], v14);
    v17 = v14;
    DebugMetricsEvent.fields.getter();
    v18 = Dictionary.description.getter();
    v20 = v19;

    v42 = v18;
    v43 = v20;
    v40 = v34;
    v41 = v35;
    v21 = type metadata accessor for Locale();
    v22 = v38;
    (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
    sub_10007FED4();
    StringProtocol.range<A>(of:options:range:locale:)();
    v24 = v23;
    sub_10002B894(v22, &qword_100972620, &unk_1007C4AF0);

    if (v24)
    {
      (*v30)(v9, v17);
      v14 = v17;
    }

    else
    {
      v25 = *v31;
      (*v31)(v37, v9, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v17;
      }

      else
      {
        sub_1001444D0(0, v13[2] + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v28 = v13[2];
      v27 = v13[3];
      if (v28 >= v27 >> 1)
      {
        sub_1001444D0((v27 > 1), v28 + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v13[2] = v28 + 1;
      v25(v13 + v15 + v28 * v16, v37, v14);
    }

    ++v12;
    result = v33;
    if (v36 == v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10046ED48(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1;
  v5 = type metadata accessor for DebugMetricsEvent();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  sub_10046FDDC(&qword_100976BC0, type metadata accessor for DebugMetricsEventDetailView.Summary, &unk_1007BB6B4);
  sub_10046FDDC(&qword_1009868B0, type metadata accessor for DebugMetricsEventDetailView, &unk_1007BB664);
  return NavigationLink.init(destination:label:)();
}

double sub_10046EEBC(uint64_t *a1)
{
  type metadata accessor for DebugMetricsViewModel(0);
  sub_10046FDDC(&qword_100986828, type metadata accessor for DebugMetricsViewModel, &unk_1007CE5D8);
  *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_recorder) = *a1;
  swift_retain_n();

  sub_10046F010();

  return result;
}

uint64_t sub_10046EF98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_10046F010()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100986870, &qword_1007CE758);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10002849C(&qword_100986878, &qword_1007CE760);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10002849C(&qword_100986880, &qword_1007CE768);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100084270(_swiftEmptyArrayStorage);
    v13 = v21;
  }

  else
  {
    v13 = _swiftEmptySetSingleton;
  }

  v14 = OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v14) = v13;

  if (*(v1 + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_recorder))
  {
    v25 = *(v1 + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_recorder);

    DebugMetricsEventRecorder.$events.getter();
    sub_1000076C0();
    v16 = static OS_dispatch_queue.main.getter();
    v23 = v8;
    v24 = v9;
    v17 = v16;
    v26 = v16;
    v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    sub_100097060(&qword_100986888, &qword_100986878, &qword_1007CE760, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10046FDDC(&qword_100986890, sub_1000076C0, &protocol conformance descriptor for OS_dispatch_queue);
    v19 = v23;
    Publisher.receive<A>(on:options:)();
    sub_10002B894(v4, &qword_100986870, &qword_1007CE758);

    (*(v6 + 8))(v19, v5);
    swift_allocObject();
    swift_weakInit();
    sub_100097060(&qword_100986898, &qword_100986880, &qword_1007CE768, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v20 = v24;
    Publisher<>.sink(receiveValue:)();

    (*(v10 + 8))(v12, v20);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10046F428(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1005C3454(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10046F4C4()
{
  v1 = OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel__eventsSnapshot;
  v2 = sub_10002849C(&qword_1009867F8, &qword_1007CE610);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugMetricsViewModel(uint64_t a1)
{
  result = qword_100986750;
  if (!qword_100986750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10046F5E0(uint64_t a1)
{
  sub_10046F688(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10046F688(uint64_t a1)
{
  if (!qword_100986760)
  {
    sub_10002D1A8(&unk_100986768, &qword_1007CE5B8);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100986760);
    }
  }
}

uint64_t sub_10046F6F8()
{
  v1 = sub_10002849C(&qword_1009867F8, &qword_1007CE610);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel__eventsSnapshot;
  v8[1] = _swiftEmptyArrayStorage;
  sub_10002849C(&unk_100986768, &qword_1007CE5B8);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100084270(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = _swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_cancellables) = v6;
  *(v0 + OBJC_IVAR____TtC8AppStoreP33_1B97E46B41FDC2D4B9C05C66B0FE8A6A21DebugMetricsViewModel_recorder) = 0;
  return v0;
}

uint64_t sub_10046F84C@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_10046F89C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10046F91C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10046F998(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10002849C(&unk_100986768, &qword_1007CE5B8);
  type metadata accessor for UUID();
  sub_10002849C(&qword_100986850, &qword_1007CE740);
  sub_100097060(&qword_1009868A0, &unk_100986768, &qword_1007CE5B8, &protocol conformance descriptor for [A]);
  sub_100097060(&qword_100986848, &qword_100986850, &qword_1007CE740, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_10046FDDC(&qword_1009868A8, &type metadata accessor for DebugMetricsEvent, &protocol conformance descriptor for DebugMetricsEvent);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10046FB3C(uint64_t *a1, int a2)
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

uint64_t sub_10046FB84(uint64_t result, int a2, int a3)
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

unint64_t sub_10046FC08()
{
  result = qword_100986840;
  if (!qword_100986840)
  {
    sub_10002D1A8(&qword_100986838, &qword_1007CE738);
    sub_100097060(&qword_100986848, &qword_100986850, &qword_1007CE740, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986840);
  }

  return result;
}

uint64_t sub_10046FCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100986868, &qword_1007CE750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046FD70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for DebugMetricsEvent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_10046FDDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10046FE24()
{
  result = qword_1009868B8;
  if (!qword_1009868B8)
  {
    sub_10002D1A8(&qword_100986860, &qword_1007CE748);
    sub_10002D1A8(&qword_100986820, &qword_1007CE728);
    sub_10002D1A8(&qword_100986818, &qword_1007CE720);
    sub_10002D1A8(&qword_100986810, &qword_1007CE718);
    sub_10002D1A8(&qword_100986808, &qword_1007CE710);
    type metadata accessor for PlainListStyle();
    sub_100097060(&qword_100986858, &qword_100986808, &qword_1007CE710, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868B8);
  }

  return result;
}

unint64_t sub_100470010()
{
  result = qword_1009868C0;
  if (!qword_1009868C0)
  {
    type metadata accessor for InAppPurchaseAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868C0);
  }

  return result;
}

uint64_t sub_100470068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
  __chkstk_darwin(v4 - 8);
  v72 = &v68 - v5;
  v70 = type metadata accessor for ActionMetrics();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OpenableDestination();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LegacyAppState();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin(v9);
  v85 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AdamId();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v78 = sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v89 = Promise.__allocating_init()();
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  swift_getObjectType();
  InAppPurchaseAction.appAdamId.getter();
  v88 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v86 = v20;
  swift_unknownObjectRelease();
  v21 = *(v12 + 8);
  v21(v19, v11);
  if (!InAppPurchaseAction.streamlineBuyAction.getter())
  {
LABEL_6:
    v68 = a2;
    v80 = InAppPurchaseAction.appBundleId.getter();
    v29 = v28;
    v79 = InAppPurchaseAction.productIdentifier.getter();
    v77 = v30;
    v87 = a1;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for OSLogger();
    v75 = sub_1000056A8(v76, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B5360;
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v94 = &type metadata for String;
    aBlock = v80;
    v92 = v29;

    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
    LogMessage.init(stringLiteral:)();
    v94 = &type metadata for String;
    v31 = v77;
    aBlock = v79;
    v92 = v77;

    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
    Logger.debug(_:)();

    InAppPurchaseAction.appTitle.getter();
    v33 = v32;
    InAppPurchaseAction.productTitle.getter();
    v35 = v34;
    v76 = v29;
    v36 = String._bridgeToObjectiveC()();
    v37 = String._bridgeToObjectiveC()();
    if (v33)
    {
      v38 = String._bridgeToObjectiveC()();

      v39 = v31;
      if (v35)
      {
LABEL_10:
        v40 = String._bridgeToObjectiveC()();

        goto LABEL_13;
      }
    }

    else
    {
      v38 = 0;
      v39 = v31;
      if (v35)
      {
        goto LABEL_10;
      }
    }

    v40 = 0;
LABEL_13:
    v41 = v85;
    v42 = [objc_allocWithZone(SKPurchaseIntent) initWithBundleId:v36 productIdentifier:v37 appName:v38 productName:v40];

    InAppPurchaseAction.additionalBuyParams.getter();
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    v45 = v76;
    [v42 setAdditionalBuyParams:v44];

    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    v47 = v83;
    v46 = v84;
    if ((*(v83 + 88))(v41, v84) != enum case for LegacyAppState.openable(_:))
    {

      (*(v47 + 8))(v41, v46);
      goto LABEL_30;
    }

    (*(v47 + 96))(v41, v46);

    (*(v81 + 8))(v41, v82);
    InAppPurchaseAction.minimumShortVersionSupportingInAppPurchaseFlow.getter();
    if (v48)
    {
      v49 = InAppPurchaseAction.appBundleId.getter();
      v51 = v50;
      v52 = objc_allocWithZone(LSApplicationRecord);
      v53 = sub_10047148C(v49, v51, 1);
      if (!v53)
      {

LABEL_29:

        goto LABEL_30;
      }

      v88 = v53;
      v54 = [v53 shortVersionString];
      if (v54)
      {
        v55 = v54;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v55) = static VersionStringUtil.isShortVersionString(_:atLeast:)();

        if (v55)
        {
          v56 = swift_allocObject();
          v56[2] = v80;
          v56[3] = v45;
          v56[4] = v79;
          v56[5] = v39;
          v95 = sub_100471568;
          v96 = v56;
          aBlock = _NSConcreteStackBlock;
          v92 = 1107296256;
          v93 = sub_100007A08;
          v94 = &unk_1008C4178;
          v57 = _Block_copy(&aBlock);

          [v42 send:v57];
          _Block_release(v57);
          InAppPurchaseAction.appAdamId.getter();
          (*(v81 + 104))(v71, enum case for OpenableDestination.app(_:), v82);
          if (InAppPurchaseAction.installRequiredAction.getter())
          {
            v58 = v72;
            Action.actionMetrics.getter();

            v59 = v69;
            v60 = v70;
            (*(v69 + 56))(v58, 0, 1, v70);
            (*(v59 + 32))(v73, v58, v60);
            v27 = v89;
          }

          else
          {
            v63 = v69;
            v64 = v72;
            v65 = v70;
            (*(v69 + 56))(v72, 1, 1, v70);
            static ActionMetrics.notInstrumented.getter();
            v66 = (*(v63 + 48))(v64, 1, v65);
            v27 = v89;
            if (v66 != 1)
            {
              sub_10002B894(v64, &unk_100993040, &qword_1007BC2F0);
            }
          }

          type metadata accessor for OpenAppAction();
          swift_allocObject();
          v67 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
          sub_1005D0478(v67, 1, v68);
          Promise.pipe(to:)();

          goto LABEL_34;
        }

LABEL_30:
        v61 = InAppPurchaseAction.installRequiredAction.getter();
        if (v61)
        {
          sub_1005D0214(v61, 1, v68);
        }

        else
        {
          sub_100471438();
          swift_allocError();
          Promise.__allocating_init(error:)();
        }

        v27 = v89;
        Promise.pipe(to:)();
LABEL_34:

        swift_unknownObjectRelease();

        return v27;
      }
    }

    goto LABEL_29;
  }

  type metadata accessor for OfferAction();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_6;
  }

  v23 = v22;
  OfferAction.adamId.getter();
  InAppPurchaseAction.appAdamId.getter();
  v24 = sub_100471574(v19, v16, a1, a2);
  v25 = a2;
  v26 = v24;
  v21(v16, v11);
  v21(v19, v11);
  if (v26)
  {

    swift_unknownObjectRelease();

    return v26;
  }

  else
  {
    OfferAction.purchaseToken.getter();
    sub_100470D58(v90, &aBlock);
    sub_100007000(v90);
    OfferAction.purchaseToken.setter();

    sub_1005D04A8(v23, 1, v25);

    v27 = v89;
    Promise.pipe(to:)();
    swift_unknownObjectRelease();
  }

  return v27;
}