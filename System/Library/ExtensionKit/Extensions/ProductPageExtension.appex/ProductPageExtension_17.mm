Class sub_1001EF240(void *a1)
{
  v1 = a1;
  v2 = sub_1001EEEC8();
  sub_10016E304(v2);

  v3.super.isa = sub_1007701AC().super.isa;

  return v3.super.isa;
}

void sub_1001EF2C8(void *a1, uint64_t a2, Class a3, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_1007701BC();
    v8 = a1;
    a3 = sub_1007701AC().super.isa;
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, a3);
}

double sub_1001EF39C()
{

  return result;
}

double sub_1001EF464(uint64_t a1)
{

  return result;
}

__n128 sub_1001EF538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1001EF554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1001EF59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001EF628(uint64_t a1, __n128 a2)
{
  v3 = sub_10076637C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094D760, &qword_1007947F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  sub_1001F01D4(a1, &v36 - v11);
  v13 = *(v4 + 48);
  v14 = v13(v12, 1, v3);
  v37 = v4;
  if (v14 == 1)
  {
    sub_10000CFBC(v12, &qword_10094D760, &qword_1007947F0);
    v15 = 0;
  }

  else
  {
    sub_10076636C();
    sub_1001F0244(&qword_10094D768, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v15 = sub_10077124C();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v12, v3);
  }

  sub_1001F01D4(a1, v9);
  if (v13(v9, 1, v3) != 1)
  {
    sub_10076634C();
    sub_1001F0244(&qword_10094D768, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v18 = sub_10077124C();
    v19 = *(v37 + 8);
    v19(v6, v3);
    v19(v9, v3);
    if (v15)
    {
      v20 = 52.0;
    }

    else
    {
      v20 = 44.0;
    }

    if ((v15 | v18))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_10000CFBC(v9, &qword_10094D760, &qword_1007947F0);
  if ((v15 & 1) == 0)
  {
LABEL_11:
    v17 = 0x4042000000000000;
    goto LABEL_12;
  }

  v17 = 0x404A000000000000;
LABEL_12:
  v20 = *&v17;
LABEL_13:
  v21 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v21 setMaximumLineHeight:v20];
  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  *(inited + 32) = NSFontAttributeName;
  v23 = qword_10093FA70;
  v24 = NSFontAttributeName;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_10094D668;
  v26 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  *(inited + 40) = v25;
  *(inited + 64) = v26;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v27 = sub_100016F40(0, &unk_10095D790, NSMutableParagraphStyle_ptr);
  *(inited + 80) = v21;
  *(inited + 104) = v27;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v28 = objc_allocWithZone(NSNumber);
  v29 = v25;
  v30 = NSParagraphStyleAttributeName;
  v31 = v21;
  v32 = kCTBaselineOffsetAttributeName;
  v33 = [v28 initWithDouble:{fmin(v20 + -43.0, 0.0)}];
  *(inited + 144) = sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
  *(inited + 120) = v33;
  v34 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();

  return v34;
}

unint64_t sub_1001EFB40(uint64_t *a1, void **a2, uint64_t a3)
{
  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  *(inited + 32) = NSFontAttributeName;
  v6 = *a1;
  v7 = NSFontAttributeName;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  v9 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  *(inited + 40) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v10 = objc_allocWithZone(NSParagraphStyle);
  v11 = v8;
  v12 = NSParagraphStyleAttributeName;
  v13 = [v10 init];
  v14 = sub_100016F40(0, &qword_10094D748, NSParagraphStyle_ptr);
  *(inited + 80) = v13;
  *(inited + 104) = v14;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v15 = objc_allocWithZone(NSNumber);
  v16 = kCTBaselineOffsetAttributeName;
  v17 = [v15 initWithDouble:0.0];
  *(inited + 144) = sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
  *(inited + 120) = v17;
  v18 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  return v18;
}

id sub_1001EFCF0(char *a1)
{
  v3 = *&a1[qword_10094D6A0 + 32];
  v4 = a1[qword_10094D6A0 + 40];
  v5 = &v1[qword_10094D6A0];
  v6 = *&a1[qword_10094D6A0 + 16];
  *v5 = *&a1[qword_10094D6A0];
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  v5[40] = v4;
  [v1 setNeedsLayout];
  v1[qword_10094D6D8] = a1[qword_10094D6D8];
  v7 = *&v1[qword_10094D6C0];
  *(v7 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v8 = v7;
  v51 = *&v1[qword_10094D6B8];
  v9 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v50 = *&a1[qword_10094D6B8];
  v10 = *(v50 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v11 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v12 = [v10 text];
  [v11 setText:v12];

  v13 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v14 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v15 = v8;
  v16 = *&a1[qword_10094D6C0];
  v17 = *(v16 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v18 = v14;
  v19 = [v17 attributedText];
  [v18 setAttributedText:v19];

  v49 = v15;
  v20 = *(v16 + v13);
  v21 = *(v15 + v13);
  [v21 setAdjustsFontSizeToFitWidth:{objc_msgSend(v20, "adjustsFontSizeToFitWidth")}];

  v22 = *(v16 + v13);
  v23 = *(v15 + v13);
  [v22 minimumScaleFactor];
  [v23 setMinimumScaleFactor:?];

  v24 = *&v1[qword_10094D6C8];
  v46 = v24;
  v47 = *&a1[qword_10094D6C8];
  v25 = [v47 image];
  [v24 setImage:v25];

  v26 = *&v1[qword_10094D6D0];
  v27 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v28 = *&a1[qword_10094D6D0];
  v29 = *(v28 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v30 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v31 = [v29 text];
  [v30 setText:v31];

  v32 = *(v50 + v9);
  v33 = *(v51 + v9);
  [v33 setHidden:{objc_msgSend(v32, "isHidden")}];

  v34 = *(v16 + v13);
  v35 = *(v49 + v13);
  [v35 setHidden:{objc_msgSend(v34, "isHidden")}];

  [v46 setHidden:{objc_msgSend(v47, "isHidden")}];
  v36 = *(v26 + v27);
  v37 = *(v28 + v27);
  v38 = v36;
  [v38 setHidden:{objc_msgSend(v37, "isHidden")}];

  v39 = *&a1[qword_10094D6E0 + 88];
  v40 = &v1[qword_10094D6E0];
  v41 = *&a1[qword_10094D6E0 + 8];
  v42 = *&a1[qword_10094D6E0 + 24];
  v45 = *&a1[qword_10094D6E0 + 40];
  v43 = *&a1[qword_10094D6E0 + 56];
  *v48 = *&a1[qword_10094D6E0 + 72];
  *v40 = *&a1[qword_10094D6E0];
  *(v40 + 8) = v41;
  *(v40 + 24) = v42;
  *(v40 + 40) = v45;
  *(v40 + 56) = v43;
  *(v40 + 72) = *v48;
  *(v40 + 11) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1001EDE3C();

  [v1 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  sub_1001EE568();

  return [v1 setNeedsLayout];
}

uint64_t sub_1001F01D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094D760, &qword_1007947F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F0244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001F028C()
{
  *(v0 + qword_10094D6A8) = 7;
  *(v0 + qword_10094D6B0) = 7;
  v1 = qword_10094D6C8;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + qword_10094D6D8) = 0;
  *(v0 + qword_10094D6E8) = 0;
  *(v0 + qword_10094D6F0) = 0;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_1001F0350()
{
  result = qword_10094D770;
  if (!qword_10094D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D770);
  }

  return result;
}

uint64_t sub_1001F03A4()
{
  sub_10000CD74((v0 + 80));
  if (*(v0 + 144))
  {
    sub_10000CD74((v0 + 120));
  }

  return _swift_deallocObject(v0, 169, 7);
}

uint64_t sub_1001F040C()
{
  v7 = sub_10077067C();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10077063C();
  __chkstk_darwin(v3);
  v4 = sub_10076F0CC();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100085204();
  sub_10076F0BC();
  v8 = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_10094D780, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A5D4(&qword_10094D788, &qword_10079D930);
  sub_100048C98(&qword_10094D790, &qword_10094D788, &qword_10079D930);
  sub_1007712CC();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_1007706AC();
  qword_10094D778 = result;
  return result;
}

uint64_t sub_1001F065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedInstance];
  v17[0] = 0;
  LODWORD(a4) = [v10 setCategory:a3 mode:a4 options:a5 error:v17];

  if (a4)
  {
    v11 = v17[0];
  }

  else
  {
    v12 = v17[0];
    sub_10075DA4C();

    swift_willThrow();
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    swift_getErrorValue();
    v17[3] = v16;
    v14 = sub_10000DB7C(v17);
    (*(*(v16 - 1) + 16))(v14);
    sub_10076F32C();
    sub_1000258C0(v17);
    sub_10076FBEC();
  }

  return sub_1001F0C04(a1, a2, &unk_10088CB28, sub_1001F12BC, &unk_10088CB40);
}

uint64_t sub_1001F0914(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 categoryOptions];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 sharedInstance];
    v15[0] = 0;
    v8 = [v7 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:v15];

    if (v8)
    {
      v9 = v15[0];
    }

    else
    {
      v10 = v15[0];
      sub_10075DA4C();

      swift_willThrow();
      if (qword_1009412D8 != -1)
      {
        swift_once();
      }

      v11 = sub_10076FD4C();
      sub_10000A61C(v11, qword_1009A25D0);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F27C();
      swift_getErrorValue();
      v15[3] = v14;
      v12 = sub_10000DB7C(v15);
      (*(*(v14 - 1) + 16))(v12);
      sub_10076F32C();
      sub_1000258C0(v15);
      sub_10076FBEC();
    }
  }

  return sub_1001F0C04(a1, a2, &unk_10088CBC8, sub_1001F1278, &unk_10088CBE0);
}

uint64_t sub_1001F0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = sub_10076F08C();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076F0CC();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100085204();
  v14 = sub_10077068C();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  sub_10001CE50(a1, a2);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_100048C98(&qword_100945170, &unk_10094E1C0, &qword_100785D50);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

double sub_1001F0ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001F0EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001F0F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F08C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F0CC();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FAA8 != -1)
  {
    swift_once();
  }

  v14[1] = qword_10094D778;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1001F1230;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088CB90;
  v12 = _Block_copy(aBlock);
  sub_10001CE50(a1, a2);
  sub_10076F0AC();
  v16 = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_100048C98(&qword_100945170, &unk_10094E1C0, &qword_100785D50);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);

  return result;
}

uint64_t sub_1001F1238()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001F127C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_1001F12C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v91 = a8;
  v92 = a7;
  v97 = a5;
  v98 = a4;
  v89 = a3;
  v88 = sub_10000A5D4(&qword_10094D7B0, &qword_1007948F0);
  __chkstk_darwin(v88);
  v90 = v78 - v13;
  v14 = sub_10076C55C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v100 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10075FAEC();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = *(v101 + 64);
  __chkstk_darwin(v19);
  v99 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v96 = v78 - v22;
  v23 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  *&v29 = __chkstk_darwin(v26).n128_u64[0];
  if (a1 && a2)
  {
    v81 = v28;
    v85 = v78 - v27;
    v84 = a2;
    v83 = v15;
    v87 = v14;
    *&v9[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties] = a1;
    swift_retain_n();

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v30 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
    swift_beginAccess();
    v80 = v30;
    sub_1001F9A10(&v108, &v9[v30]);
    swift_endAccess();
    swift_weakAssign();
    sub_100767E8C();
    v78[3] = sub_10076F64C();
    sub_10076FC1C();
    v31 = v108;
    sub_100767E2C();
    v32 = sub_100766A6C();
    v93 = a1;
    v86 = v31;
    if (v32)
    {
      v33 = swift_allocObject();
      v82 = v9;
      v79 = v33;
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v78[1] = v34;
      swift_weakInit();
      v78[2] = a6;
      sub_100016E2C(v98, v85, &unk_100946760, &unk_100787A20);
      v35 = v101;
      v36 = v102;
      v37 = v96;
      (*(v101 + 16))(v96, v97, v102);
      v38 = (*(v24 + 80) + 56) & ~*(v24 + 80);
      v39 = (v25 + *(v35 + 80) + v38) & ~*(v35 + 80);
      v40 = swift_allocObject();
      v41 = v79;
      *(v40 + 2) = v34;
      *(v40 + 3) = v41;
      v42 = v84;
      *(v40 + 4) = v93;
      *(v40 + 5) = v42;
      *(v40 + 6) = v89;
      sub_1001F9D20(v85, &v40[v38]);
      (*(v35 + 32))(&v40[v39], v37, v36);
      v43 = &v40[v39 + v20];
      *v43 = v92 & 1;
      v43[1] = v91 & 1;

      sub_100767DFC();
      v9 = v82;
      a1 = v93;

      v31 = v86;
    }

    sub_100767E6C();
    v44 = v31;
    v45 = sub_10075FABC();
    (*(v94 + 8))(v18, v95);
    v46 = v100;
    sub_100766AEC();
    if (!sub_1001F26A4(v46, a1, v45 & 1))
    {

      return (*(v83 + 8))(v46, v87);
    }

    v47 = v101 + 16;
    v48 = *(v101 + 16);
    v48(v99, v97, v102);
    sub_100016E2C(v98, v81, &unk_100946760, &unk_100787A20);
    v49 = *(v88 + 48);
    v50 = v83;
    v51 = v90;
    v52 = v46;
    v53 = v87;
    (*(v83 + 16))(v90, v52, v87);
    *(v51 + v49) = v45 & 1;
    v54 = (*(v50 + 88))(v51, v53);
    if (v54 == enum case for OfferType.app(_:))
    {
LABEL_7:
      (*(v50 + 8))(v51, v53);
      sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
      sub_10076FC1C();
      v97 = v104;
      v98 = v103;
      sub_10000A5D4(&qword_10094D7B8, qword_1007948F8);
      sub_10076FC1C();
      v106 = sub_10076097C();
      v107 = &protocol witness table for Restrictions;
      sub_10076FC1C();
      v48(v96, v99, v102);
      v55 = v81;
      sub_100016E2C(v81, v85, &unk_100946760, &unk_100787A20);
      sub_10076148C();
      sub_10076FC1C();
      sub_10076130C();

      v56 = sub_10075EF7C();
      swift_allocObject();

      v57 = sub_10075EF6C();
      sub_10000CFBC(v55, &unk_100946760, &unk_100787A20);
      (*(v101 + 8))(v99, v102);
      *(&v109 + 1) = v56;
      v110 = &protocol witness table for AppOfferButtonPresenter;
      *&v108 = v57;
LABEL_20:
      v68 = objc_opt_self();
      v69 = [v68 areAnimationsEnabled];
      [v68 setAnimationsEnabled:0];
      v70 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled;
      v9[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] = 0;
      [v9 setHidden:0];
      sub_1001F9A80(&qword_10094D7C0, type metadata accessor for OfferButton, &unk_100794830);
      sub_10008B8A4(&v108, *(&v109 + 1));
      swift_unknownObjectRetain();
      sub_10076585C();
      [v68 setAnimationsEnabled:v69];

      (*(v50 + 8))(v100, v87);
      v9[v70] = 1;
      sub_10000A570(&v108, v105);
      v71 = v80;
      swift_beginAccess();
      sub_1001F9A10(v105, &v9[v71]);
      swift_endAccess();
      return sub_10000CD74(&v108);
    }

    v94 = v47;
    v95 = v48;
    if (v54 == enum case for OfferType.inAppPurchase(_:))
    {
      v82 = v9;
      sub_10000CFBC(v81, &unk_100946760, &unk_100787A20);
      v59 = v102;
      (*(v101 + 8))(v99, v102);
      if (sub_100766A9C())
      {
        sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
        sub_10076FC1C();
        sub_10076097C();
        sub_10076FC1C();
        v95(v96, v97, v59);
        sub_100016E2C(v98, v85, &unk_100946760, &unk_100787A20);
        v60 = sub_10075E1BC();
        swift_allocObject();

        v61 = sub_10075E18C();
        v62 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
      }

      else
      {
        sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
        sub_10076FC1C();
        sub_10076097C();
        sub_10076FC1C();
        v95(v96, v97, v59);
        sub_100016E2C(v98, v85, &unk_100946760, &unk_100787A20);
        v60 = sub_10075E9DC();
        swift_allocObject();

        v61 = sub_10075E9BC();
        v62 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
      }

      *(&v109 + 1) = v60;
      v110 = v62;
      *&v108 = v61;
      v50 = v83;
      (*(v83 + 8))(v90, v87);
      v9 = v82;
      goto LABEL_20;
    }

    v63 = v101;
    v64 = v102;
    v65 = v99;
    if (v54 == enum case for OfferType.arcade(_:))
    {
      sub_10000CFBC(v81, &unk_100946760, &unk_100787A20);
      (*(v63 + 8))(v65, v64);
      v95(v96, v97, v64);
      sub_100016E2C(v98, v85, &unk_100946760, &unk_100787A20);
      v66 = sub_10076AB7C();
      swift_allocObject();

      v67 = sub_10076AB6C();
      *(&v109 + 1) = v66;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
      *&v108 = v67;
    }

    else
    {
      if (v54 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
        sub_10076FC1C();
        v97 = v104;
        v98 = v103;
        sub_10000A5D4(&qword_10094D7B8, qword_1007948F8);
        sub_10076FC1C();
        v106 = sub_10076097C();
        v107 = &protocol witness table for Restrictions;
        sub_10076FC1C();
        v72 = v102;
        v95(v96, v65, v102);
        v73 = v81;
        sub_100016E2C(v81, v85, &unk_100946760, &unk_100787A20);
        sub_10076148C();
        sub_10076FC1C();
        sub_10076130C();

        v74 = sub_10075EF7C();
        swift_allocObject();

        v75 = sub_10075EF6C();
        sub_10000CFBC(v73, &unk_100946760, &unk_100787A20);
        (*(v101 + 8))(v99, v72);
        *(&v109 + 1) = v74;
        v110 = &protocol witness table for AppOfferButtonPresenter;
        *&v108 = v75;
        sub_10000CFBC(v90, &qword_10094D7B0, &qword_1007948F0);
        v50 = v83;
        goto LABEL_20;
      }

      v50 = v83;
      v48 = v95;
      if (v45)
      {
        goto LABEL_7;
      }

      sub_10000CFBC(v81, &unk_100946760, &unk_100787A20);
      (*(v101 + 8))(v99, v102);
      sub_10076295C();
      if (swift_dynamicCastClass())
      {
        sub_1007628EC();
      }

      v95(v96, v97, v102);
      sub_100016E2C(v98, v85, &unk_100946760, &unk_100787A20);
      v76 = sub_10076AB7C();
      swift_allocObject();

      v77 = sub_10076AB6C();
      *(&v109 + 1) = v76;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

      *&v108 = v77;
    }

    v50 = v83;
    (*(v83 + 8))(v51, v87);
    goto LABEL_20;
  }

  return [v9 setHidden:{1, v29}];
}

void (*sub_1001F2548(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  a1[2] = v1;
  v3 = [v1 accessibilityLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1001F25D0;
}

void sub_1001F25D0(uint64_t *a1, char a2, double a3)
{
  v4 = a1[1];
  if (a2)
  {
    if (v4)
    {

      v5 = sub_10076FF6C();
    }

    else
    {
      v5 = 0;
    }

    [a1[2] setAccessibilityLabel:v5];
  }

  else if (v4)
  {
    v5 = sub_10076FF6C();

    [a1[2] setAccessibilityLabel:v5];
  }

  else
  {
    v5 = 0;
    [a1[2] setAccessibilityLabel:0];
  }
}

BOOL sub_1001F26A4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10000A5D4(&qword_10094D7B0, &qword_1007948F0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
  swift_beginAccess();
  sub_100016E2C(v3 + v9, &v19, &qword_10094D5D8, qword_1007944C8);
  if (!v20)
  {
    sub_10000CFBC(&v19, &qword_10094D5D8, qword_1007944C8);
    return 1;
  }

  sub_100012498(&v19, v21);
  v10 = *(v6 + 48);
  v11 = sub_10076C55C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  v8[v10] = a3 & 1;
  v13 = (*(v12 + 88))(v8, v11);
  if (v13 == enum case for OfferType.app(_:))
  {
    goto LABEL_3;
  }

  if (v13 == enum case for OfferType.inAppPurchase(_:))
  {
    if (sub_100766A9C())
    {
      v16 = sub_10075E1BC();
    }

    else
    {
      v16 = sub_10075E9DC();
    }

    v14 = v16;
    (*(v12 + 8))(v8, v11);
    goto LABEL_12;
  }

  if (v13 == enum case for OfferType.arcade(_:))
  {
    goto LABEL_9;
  }

  if (v13 != enum case for OfferType.arcadeApp(_:))
  {
    v14 = sub_10075EF7C();
    sub_10000CFBC(v8, &qword_10094D7B0, &qword_1007948F0);
    goto LABEL_12;
  }

  if (a3)
  {
LABEL_3:
    (*(v12 + 8))(v8, v11);
    v14 = sub_10075EF7C();
  }

  else
  {
LABEL_9:
    (*(v12 + 8))(v8, v11);
    v14 = sub_10076AB7C();
  }

LABEL_12:
  sub_10000CF78(v21, v21[3]);
  DynamicType = swift_getDynamicType();
  sub_10000CD74(v21);
  return DynamicType != v14;
}

void sub_1001F2968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v77 = a8;
  v78 = a7;
  v71 = a6;
  v73 = a5;
  v83 = a4;
  v10 = sub_10000A5D4(&qword_10094D7B0, &qword_1007948F0);
  __chkstk_darwin(v10);
  v76 = v65 - v11;
  v12 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v12 - 8);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = v65 - v15;
  v79 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v65 - v18;
  v20 = sub_10076C55C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v84 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10075FAEC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v82 = Strong;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (!v28)
    {

      return;
    }

    v29 = v28;
    v72 = v20;
    sub_100762F4C();
    v30 = sub_10075FABC();
    (*(v24 + 8))(v26, v23);
    v31 = v84;
    v32 = v83;
    sub_100766AEC();
    if (!sub_1001F26A4(v31, v32, v30 & 1))
    {

      (*(v21 + 8))(v31, v72);
      return;
    }

    v68 = v29;
    v69 = a10;
    v67 = a9;
    v33 = v81 + 16;
    v34 = *(v81 + 16);
    v66 = v19;
    v35 = v79;
    v34(v19, v77, v79);
    sub_100016E2C(v78, v80, &unk_100946760, &unk_100787A20);
    v36 = *(v10 + 48);
    v37 = v76;
    v38 = v31;
    v39 = v72;
    (*(v21 + 16))(v76, v38, v72);
    *(v37 + v36) = v30 & 1;
    v70 = v21;
    v40 = (*(v21 + 88))(v37, v39);
    if (v40 != enum case for OfferType.app(_:))
    {
      v65[0] = v34;
      v65[1] = v33;
      if (v40 == enum case for OfferType.inAppPurchase(_:))
      {
        sub_10000CFBC(v80, &unk_100946760, &unk_100787A20);
        (*(v81 + 8))(v19, v35);
        if (sub_100766A9C())
        {
          sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
          sub_10076F64C();
          sub_10076FC1C();
          sub_10076097C();
          sub_10076FC1C();
          (v65[0])(v74, v77, v35);
          sub_100016E2C(v78, v75, &unk_100946760, &unk_100787A20);
          v46 = sub_10075E1BC();
          swift_allocObject();

          v47 = sub_10075E18C();
          v48 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
        }

        else
        {
          sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
          sub_10076F64C();
          sub_10076FC1C();
          sub_10076097C();
          sub_10076FC1C();
          (v65[0])(v74, v77, v35);
          sub_100016E2C(v78, v75, &unk_100946760, &unk_100787A20);
          v46 = sub_10075E9DC();
          swift_allocObject();

          v47 = sub_10075E9BC();
          v48 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
        }

        v91 = v46;
        v92 = v48;
        v90 = v47;
        v45 = v70;
        (*(v70 + 8))(v76, v72);
        goto LABEL_16;
      }

      v49 = v81;
      v50 = v80;
      if (v40 == enum case for OfferType.arcade(_:))
      {
        sub_10000CFBC(v80, &unk_100946760, &unk_100787A20);
        (*(v49 + 8))(v19, v35);
        (v65[0])(v74, v77, v35);
        sub_100016E2C(v78, v75, &unk_100946760, &unk_100787A20);
        v51 = sub_10076AB7C();
        swift_allocObject();

        v52 = sub_10076AB6C();
        v91 = v51;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
        v90 = v52;
        v45 = v70;
        (*(v70 + 8))(v37, v72);
        goto LABEL_16;
      }

      if (v40 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
        sub_10076F64C();
        sub_10076FC1C();
        v78 = v85;
        v77 = v86;
        sub_10000A5D4(&qword_10094D7B8, qword_1007948F8);
        sub_10076FC1C();
        v88 = sub_10076097C();
        v89 = &protocol witness table for Restrictions;
        sub_10076FC1C();
        (v65[0])(v74, v19, v35);
        sub_100016E2C(v50, v75, &unk_100946760, &unk_100787A20);
        sub_10076148C();
        sub_10076FC1C();
        sub_10076130C();

        v61 = sub_10075EF7C();
        swift_allocObject();

        v62 = sub_10075EF6C();
        sub_10000CFBC(v50, &unk_100946760, &unk_100787A20);
        (*(v81 + 8))(v19, v79);
        v91 = v61;
        v92 = &protocol witness table for AppOfferButtonPresenter;
        v90 = v62;
        sub_10000CFBC(v37, &qword_10094D7B0, &qword_1007948F0);
        goto LABEL_6;
      }

      v39 = v72;
      v34 = v65[0];
      if ((v30 & 1) == 0)
      {
        sub_10000CFBC(v80, &unk_100946760, &unk_100787A20);
        (*(v81 + 8))(v66, v35);
        if (v73)
        {
          sub_10076295C();
          v58 = swift_dynamicCastClass();
          v59 = v72;
          v60 = v65[0];
          if (v58)
          {
            sub_1007628EC();
            v35 = v79;
          }

          v60(v74, v77, v35);
        }

        else
        {
          v59 = v72;
          (v65[0])(v74, v77, v35);
        }

        sub_100016E2C(v78, v75, &unk_100946760, &unk_100787A20);
        v63 = sub_10076AB7C();
        swift_allocObject();

        v64 = sub_10076AB6C();
        v91 = v63;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

        v90 = v64;
        v45 = v70;
        (*(v70 + 8))(v76, v59);
        goto LABEL_16;
      }
    }

    (*(v70 + 8))(v37, v39);
    sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
    sub_10076F64C();
    sub_10076FC1C();
    v78 = v86;
    sub_10000A5D4(&qword_10094D7B8, qword_1007948F8);
    sub_10076FC1C();
    v88 = sub_10076097C();
    v89 = &protocol witness table for Restrictions;
    sub_10076FC1C();
    v41 = v66;
    v34(v74, v66, v35);
    v42 = v80;
    sub_100016E2C(v80, v75, &unk_100946760, &unk_100787A20);
    sub_10076148C();
    sub_10076FC1C();
    sub_10076130C();

    v43 = sub_10075EF7C();
    swift_allocObject();

    v44 = sub_10075EF6C();
    sub_10000CFBC(v42, &unk_100946760, &unk_100787A20);
    (*(v81 + 8))(v41, v79);
    v91 = v43;
    v92 = &protocol witness table for AppOfferButtonPresenter;
    v90 = v44;
LABEL_6:
    v45 = v70;
LABEL_16:
    v53 = objc_opt_self();
    v54 = [v53 areAnimationsEnabled];
    [v53 setAnimationsEnabled:0];
    v55 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled;
    v56 = v68;
    *(v68 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled) = 0;
    [v56 setHidden:0];
    sub_1001F9A80(&qword_10094D7C0, type metadata accessor for OfferButton, &unk_100794830);
    sub_10008B8A4(&v90, v91);
    swift_unknownObjectRetain();
    sub_10076585C();
    [v53 setAnimationsEnabled:v54];

    (*(v45 + 8))(v84, v72);
    *(v56 + v55) = 1;
    sub_10000A570(&v90, v87);
    v57 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
    swift_beginAccess();
    sub_1001F9A10(v87, v56 + v57);
    swift_endAccess();

    sub_10000CD74(&v90);
  }
}

uint64_t sub_1001F3A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v78 = a5;
  v83 = a3;
  v84 = a4;
  v81 = a1;
  v82 = a2;
  v79 = sub_100769A4C();
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100766CDC();
  __chkstk_darwin(v11 - 8);
  v75 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v13 - 8);
  v74 = &v64 - v14;
  v15 = sub_1007628DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = sub_10076443C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v65 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v64 = &v64 - v26;
  __chkstk_darwin(v27);
  v66 = &v64 - v28;
  __chkstk_darwin(v29);
  v69 = &v64 - v30;
  __chkstk_darwin(v31);
  v88 = &v64 - v32;
  __chkstk_darwin(v33);
  v70 = &v64 - v34;
  v35 = sub_100763B4C();
  v72 = *(v35 - 8);
  v73 = v35;
  __chkstk_darwin(v35);
  v71 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38 = __chkstk_darwin(v37).n128_u64[0];
  v67 = &v64 - v39;
  [v8 setSelected:{0, v38}];
  v80 = a6;
  sub_100769A1C();
  v87 = [v8 traitCollection];
  v85 = v8;
  v68 = v8[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding];
  v40 = *(v16 + 104);
  v40(v18, enum case for OfferEnvironment.arcadeProductPage(_:), v15);
  LOBYTE(a6) = sub_1007628BC();
  v41 = *(v16 + 8);
  v41(v18, v15);
  v86 = v41;
  if (a6)
  {
    if (qword_10093F550 != -1)
    {
      swift_once();
    }

    v42 = qword_10099CA98;
LABEL_13:
    v44 = sub_10000A61C(v22, v42);
    v45 = v69;
    (*(v23 + 16))(v69, v44, v22);
LABEL_14:
    v46 = v88;
    goto LABEL_15;
  }

  v40(v18, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v15);
  v43 = sub_1007628BC();
  v41(v18, v15);
  if (v43)
  {
    if (qword_10093F548 != -1)
    {
      swift_once();
    }

    v42 = qword_10099CA80;
    goto LABEL_13;
  }

  if (sub_1007628AC())
  {
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v42 = qword_10099CA68;
    goto LABEL_13;
  }

  v40(v18, enum case for OfferEnvironment.navigationBar(_:), v15);
  v53 = sub_1007628BC();
  v86(v18, v15);
  if (v53)
  {
    if (qword_10093F558 != -1)
    {
      swift_once();
    }

    v54 = sub_10000A61C(v22, qword_100944CE8);
    v45 = v69;
    (*(v23 + 16))(v69, v54, v22);
    goto LABEL_14;
  }

  v55 = sub_1007700AC();
  if ((sub_10077071C() & 1) == 0)
  {
    if (v55 < 7)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (sub_10077071C())
    {
      v57 = v69;
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v58 = qword_100944C88;
    }

    else
    {
      v57 = v69;
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v58 = qword_100944CA0;
    }

    v61 = sub_10000A61C(v22, v58);
    v62 = v64;
    (*(v23 + 16))(v64, v61, v22);
    v63 = v66;
    (*(v23 + 32))(v66, v62, v22);
    v45 = v57;
    sub_10076C13C();
    (*(v23 + 8))(v63, v22);
    goto LABEL_14;
  }

  if (v55 > 8)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (sub_10077071C())
  {
    v46 = v88;
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v56 = qword_100944C88;
  }

  else
  {
    v46 = v88;
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v56 = qword_100944CA0;
  }

  v59 = sub_10000A61C(v22, v56);
  v60 = v65;
  (*(v23 + 16))(v65, v59, v22);
  v45 = v69;
  (*(v23 + 32))(v69, v60, v22);
LABEL_15:
  v47 = *(v23 + 32);
  v47(v46, v45, v22);
  if (v68 != 2)
  {
    sub_10076442C();
    v46 = v88;
  }

  v86(v21, v15);
  v47(v70, v46, v22);
  sub_100016E2C(v78, v74, &qword_10094F730, qword_10078A050);
  (*(v76 + 16))(v77, v80, v79);

  sub_100766CBC();
  v48 = v67;
  sub_100763B3C();
  v50 = v71;
  v49 = v72;
  v51 = v73;
  (*(v72 + 16))(v71, v48, v73);
  sub_1001F5C94(v50, v85, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_10088CD60, sub_1001F9EE8, &unk_10088CD78);
  return (*(v49 + 8))(v48, v51);
}

uint64_t sub_1001F4464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v70 = a5;
  v75 = a3;
  v76 = a4;
  v73 = a1;
  v74 = a2;
  v71 = sub_100769A4C();
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100766CDC();
  __chkstk_darwin(v11 - 8);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v13 - 8);
  v66 = &v56 - v14;
  v15 = sub_1007628DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  v22 = sub_10076443C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v56 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v60 = &v56 - v26;
  __chkstk_darwin(v27);
  v61 = &v56 - v28;
  __chkstk_darwin(v29);
  v62 = &v56 - v30;
  v31 = sub_100763B4C();
  v64 = *(v31 - 8);
  v65 = v31;
  __chkstk_darwin(v31);
  v63 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = __chkstk_darwin(v33).n128_u64[0];
  v57 = &v56 - v35;
  [v8 setSelected:{0, v34}];
  v72 = a6;
  sub_100769A1C();
  v59 = [v8 traitCollection];
  v77 = v8;
  v58 = v8[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding];
  v36 = *(v16 + 104);
  v36(v18, enum case for OfferEnvironment.arcadeProductPage(_:), v15);
  LOBYTE(a6) = sub_1007628BC();
  v37 = *(v16 + 8);
  v37(v18, v15);
  v78 = v37;
  if (a6)
  {
    if (qword_10093F550 != -1)
    {
      swift_once();
    }

    v38 = qword_10099CA98;
LABEL_13:
    v40 = sub_10000A61C(v22, v38);
    v41 = v60;
    (*(v23 + 16))(v60, v40, v22);
    v42 = v61;
    v43 = v59;
    goto LABEL_14;
  }

  v36(v18, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v15);
  v39 = sub_1007628BC();
  v37(v18, v15);
  if (v39)
  {
    if (qword_10093F548 != -1)
    {
      swift_once();
    }

    v38 = qword_10099CA80;
    goto LABEL_13;
  }

  if (sub_1007628AC())
  {
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v38 = qword_10099CA68;
    goto LABEL_13;
  }

  v36(v18, enum case for OfferEnvironment.navigationBar(_:), v15);
  v50 = sub_1007628BC();
  v78(v18, v15);
  if (v50)
  {
    v41 = v60;
    v42 = v61;
    v43 = v59;
    if (qword_10093F558 != -1)
    {
      swift_once();
    }

    v51 = sub_10000A61C(v22, qword_100944CE8);
    (*(v23 + 16))(v41, v51, v22);
  }

  else
  {
    v43 = v59;
    v52 = sub_10077071C();
    v41 = v60;
    v42 = v61;
    if (v52)
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v53 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v53 = qword_100944CA0;
    }

    v54 = sub_10000A61C(v22, v53);
    v55 = v56;
    (*(v23 + 16))(v56, v54, v22);
    (*(v23 + 32))(v41, v55, v22);
  }

LABEL_14:
  v44 = *(v23 + 32);
  v44(v42, v41, v22);
  if (v58 != 2)
  {
    sub_10076442C();
  }

  v78(v21, v15);
  v44(v62, v42, v22);
  sub_100016E2C(v70, v66, &qword_10094F730, qword_10078A050);
  (*(v68 + 16))(v69, v72, v71);

  sub_100766CBC();
  v45 = v57;
  sub_100763B2C();
  v47 = v63;
  v46 = v64;
  v48 = v65;
  (*(v64 + 16))(v63, v45, v65);
  sub_1001F5C94(v47, v77, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_10088CD60, sub_1001F9EE8, &unk_10088CD78);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_1001F4CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = sub_10076F13C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10076B96C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  v37 = result;
  if (!result)
  {
    return result;
  }

  v35 = v8;
  sub_10076295C();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v33[0] = v12;
  sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
  sub_10076F5CC();
  v33[1] = v58;
  sub_100016E2C(a2, &v58, &unk_1009434C0, &qword_100783F60);
  v34 = v7;
  if (*(&v59 + 1))
  {
    sub_10000A5D4(&qword_10094D7A8, &qword_1007948E8);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000CFBC(&v58, &unk_1009434C0, &qword_100783F60);
  }

  swift_getObjectType();
  sub_10076294C();
  sub_10075EE2C();
  (*(v33[0] + 8))(v14, v11);
LABEL_9:
  sub_10076292C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v34;
LABEL_10:

  [v3 bounds];
  LOBYTE(v58) = 1;
  *&v40 = v3;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  *&v42 = v19;
  BYTE8(v42) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v43 = _Q0;
  v44 = _Q0;
  v45 = 15;
  sub_100085204();
  v25 = v3;
  *v10 = sub_10077068C();
  v26 = v35;
  (*(v35 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v27 = sub_10076F16C();
  result = (*(v26 + 8))(v10, v7);
  if (v27)
  {
    v48 = xmmword_10094FFF8;
    v49 = xmmword_100950008;
    v50 = xmmword_100950018;
    v46 = xmmword_10094FFD8;
    v47 = xmmword_10094FFE8;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v58 = xmmword_10094FFD8;
    v59 = xmmword_10094FFE8;
    v61 = xmmword_100950008;
    v62 = xmmword_100950018;
    v51 = qword_100950028;
    v57 = v45;
    v63 = qword_100950028;
    v60 = xmmword_10094FFF8;
    sub_100016E2C(&v46, v38, &unk_1009505F0, &qword_1007A2110);
    xmmword_10094FFF8 = v54;
    xmmword_100950008 = v55;
    xmmword_100950018 = v56;
    qword_100950028 = v57;
    xmmword_10094FFD8 = v52;
    xmmword_10094FFE8 = v53;
    sub_10000CFBC(&v58, &unk_1009505F0, &qword_1007A2110);
    v28 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_1001F9960(&v40, v38);
    v29 = v36;
    v30 = v37;
    sub_10076F5AC();
    v31 = *(v28 - 8);
    if ((*(v31 + 48))(v29, 1, v28) == 1)
    {

      sub_10000CFBC(v29, &unk_100943200, &unk_100785840);
    }

    else
    {

      sub_100263BF0(v32, 1, v30, v29);

      (*(v31 + 8))(v29, v28);
    }

    v38[2] = xmmword_10094FFF8;
    v38[3] = xmmword_100950008;
    v38[4] = xmmword_100950018;
    v39 = qword_100950028;
    v38[0] = xmmword_10094FFD8;
    v38[1] = xmmword_10094FFE8;
    xmmword_10094FFD8 = v46;
    xmmword_10094FFE8 = v47;
    xmmword_10094FFF8 = v48;
    xmmword_100950008 = v49;
    xmmword_100950018 = v50;
    qword_100950028 = v51;
    sub_10000CFBC(v38, &unk_1009505F0, &qword_1007A2110);

    return sub_1001F99BC(&v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F52D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F9AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_10076F90C();
  sub_10000CFBC(v13, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v14, &unk_1009434C0, &qword_100783F60);
  *(&v15 + 1) = &type metadata for String;
  *&v14 = a1;
  *(&v14 + 1) = a2;

  sub_10076F98C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10000CFBC(&v14, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  return (v11)(v10, v4);
}

id sub_1001F54A0(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isEnabled") != v2)
  {
    sub_1001EA5C8(v2);
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "setEnabled:", v2);
}

uint64_t sub_1001F5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a5, v17);
  v19.n128_f64[0] = (*(v18 + 56))(v16, 0, 1, v17);
  sub_1001F3A18(a1, a2, a3, a4, v16, a8, v19);
  return sub_10000CFBC(v16, &qword_10094F730, qword_10078A050);
}

void sub_1001F5670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v13.n128_f64[0] = (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1001F3A18(a1, a2, 0, 0, v11, a5, v13);
  sub_10000CFBC(v11, &qword_10094F730, qword_10078A050);
  v14 = sub_10076FF6C();
  [v5 accessibilityShowText:v14];
}

uint64_t sub_1001F57A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a5, v15);
  v17.n128_f64[0] = (*(v16 + 56))(v14, 0, 1, v15);
  sub_1001F4464(a1, a2, a3, a4, v14, a6, v17);
  return sub_10000CFBC(v14, &qword_10094F730, qword_10078A050);
}

uint64_t sub_1001F5900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v10.n128_f64[0] = (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1001F4464(a1, a2, 0, 0, v8, a3, v10);
  return sub_10000CFBC(v8, &qword_10094F730, qword_10078A050);
}

uint64_t sub_1001F5A78()
{
  v1 = [v0 accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10076FF9C();

  return v3;
}

void sub_1001F5AE0(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v3 setAccessibilityLabel:v4];
}

void (*sub_1001F5B4C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1001F2548(v2);
  return sub_100019FCC;
}

uint64_t sub_1001F5C94(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = a3(0);
  v55 = v13;
  v56 = a4;
  v14 = sub_10000DB7C(v54);
  (*(*(v13 - 8) + 32))(v14, a1, v13);
  v15 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&a2[v15], v52);
  sub_10000CF78(v52, v53);
  DynamicType = swift_getDynamicType();
  sub_10000CF78(v54, v55);
  v17 = swift_getDynamicType();
  sub_10000CF78(v54, v55);
  v18 = [a2 traitCollection];
  LOBYTE(a4) = sub_100767A5C();

  if (a4)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1001F96DC(&a2[v15], v54, v19);
  swift_endAccess();
  v51.receiver = a2;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "frame");
  if (CGRectIsEmpty(v57))
  {
    sub_10000A570(&a2[v15], aBlock);
    sub_10000CF78(aBlock, v46);
    v20 = sub_1007679FC();
    sub_10000CD74(aBlock);
    if (v20)
    {
      if (DynamicType != v17)
      {
        sub_1001E8324();
      }

      goto LABEL_28;
    }
  }

  v42 = a7;
  sub_10000A570(&a2[v15], aBlock);
  sub_10000CF78(aBlock, v46);
  if (sub_100767A1C())
  {
    v21 = a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled];
    sub_10000CD74(aBlock);
    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000CD74(aBlock);
  }

  sub_10000A570(&a2[v15], aBlock);
  sub_10000CF78(aBlock, v46);
  v22 = sub_100767A0C();
  sub_10000CD74(aBlock);
  if (v22)
  {
LABEL_11:
    v23 = objc_opt_self();
    [v23 begin];
    v43 = 1;
    [v23 setDisableActions:1];
    goto LABEL_13;
  }

  v43 = 0;
LABEL_13:
  sub_10000CF78(v52, v53);
  sub_1001F9A80(&qword_10094D5D0, type metadata accessor for OfferButton, &unk_1007943B8);
  sub_100767A7C();
  if (DynamicType != v17)
  {
    sub_1001E8324();
  }

  sub_10000CF78(v54, v55);
  sub_100767A3C();
  if (a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v50.receiver = a2;
    v50.super_class = ObjectType;
    objc_msgSendSuper2(&v50, "invalidateIntrinsicContentSize");
    v37 = &a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10000CF78(v52, v53);
  sub_100767A2C();
  v25 = v24;
  v27 = v26;
  sub_10000CF78(v54, v55);
  sub_100767A2C();
  v30 = v27 == v29 && v25 == v28;
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    v31 = [a2 superview];
  }

  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  v33 = objc_opt_self();
  v34 = a2;
  v35 = v31;
  if ([v33 areAnimationsEnabled])
  {
    v47 = a6;
    v48 = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    v46 = v42;
    v36 = _Block_copy(aBlock);

    [v33 animateWithDuration:v36 animations:0.3];

    _Block_release(v36);
    if (!v43)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v34 setNeedsLayout];
  if (v30)
  {
    [v34 layoutIfNeeded];
  }

  else
  {
    v49.receiver = v34;
    v49.super_class = ObjectType;
    objc_msgSendSuper2(&v49, "invalidateIntrinsicContentSize");
    v41 = &v34[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v41 = 0;
    *(v41 + 1) = 0;
    v41[16] = 1;
    [v35 setNeedsLayout];
    [v35 layoutIfNeeded];
  }

  if (v43)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_10000CD74(v52);
  return sub_10000CD74(v54);
}

uint64_t sub_1001F62E8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10076A48C();
  v44 = v5;
  v45 = &protocol witness table for IndeterminateProgressConfiguration;
  v43[0] = a1;
  v6 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&a2[v6], v41);
  sub_10000CF78(v41, v42);
  DynamicType = swift_getDynamicType();
  sub_10000CF78(v43, v5);
  v8 = swift_getDynamicType();
  sub_10000CF78(v43, v44);
  v9 = [a2 traitCollection];
  LOBYTE(a1) = sub_100767A5C();

  if (a1)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1001F96DC(&a2[v6], v43, v10);
  swift_endAccess();
  v40.receiver = a2;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, "frame");
  if (CGRectIsEmpty(v46))
  {
    sub_10000A570(&a2[v6], aBlock);
    sub_10000CF78(aBlock, v35);
    v11 = sub_1007679FC();
    sub_10000CD74(aBlock);
    if (v11)
    {
      if (DynamicType != v8)
      {
        sub_1001E8324();
      }

      goto LABEL_28;
    }
  }

  sub_10000A570(&a2[v6], aBlock);
  sub_10000CF78(aBlock, v35);
  if (sub_100767A1C())
  {
    v12 = a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled];
    sub_10000CD74(aBlock);
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000CD74(aBlock);
  }

  sub_10000A570(&a2[v6], aBlock);
  sub_10000CF78(aBlock, v35);
  v13 = sub_100767A0C();
  sub_10000CD74(aBlock);
  if (v13)
  {
LABEL_11:
    v14 = objc_opt_self();
    [v14 begin];
    v33 = 1;
    [v14 setDisableActions:1];
    goto LABEL_13;
  }

  v33 = 0;
LABEL_13:
  sub_10000CF78(v41, v42);
  sub_1001F9A80(&qword_10094D5D0, type metadata accessor for OfferButton, &unk_1007943B8);
  sub_100767A7C();
  if (DynamicType != v8)
  {
    sub_1001E8324();
  }

  sub_10000CF78(v43, v44);
  sub_100767A3C();
  if (a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v39.receiver = a2;
    v39.super_class = ObjectType;
    objc_msgSendSuper2(&v39, "invalidateIntrinsicContentSize");
    v28 = &a2[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v33)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10000CF78(v41, v42);
  sub_100767A2C();
  v16 = v15;
  v18 = v17;
  sub_10000CF78(v43, v44);
  sub_100767A2C();
  v21 = v18 == v20 && v16 == v19;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
    v22 = [a2 superview];
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  v24 = objc_opt_self();
  v25 = a2;
  v26 = v22;
  if ([v24 areAnimationsEnabled])
  {
    v36 = sub_1001F9EE8;
    v37 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    v35 = &unk_10088CCD8;
    v27 = _Block_copy(aBlock);

    [v24 animateWithDuration:v27 animations:0.3];

    _Block_release(v27);
    if (!v33)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v25 setNeedsLayout];
  if (v21)
  {
    [v25 layoutIfNeeded];
  }

  else
  {
    v38.receiver = v25;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, "invalidateIntrinsicContentSize");
    v32 = &v25[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v32 = 0;
    *(v32 + 1) = 0;
    v32[16] = 1;
    [v26 setNeedsLayout];
    [v26 layoutIfNeeded];
  }

  if (v33)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_10000CD74(v41);
  return sub_10000CD74(v43);
}

id sub_1001F6900(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v5 = v4;
  v58 = a3;
  v67 = a1;
  v68 = sub_100769A4C();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v69 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v65 = &v54 - v9;
  v10 = sub_1007628DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_10076443C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v55 = &v54 - v21;
  __chkstk_darwin(v22);
  v57 = &v54 - v23;
  __chkstk_darwin(v24);
  v60 = &v54 - v25;
  __chkstk_darwin(v26);
  v61 = &v54 - v27;
  __chkstk_darwin(v28);
  v62 = &v54 - v29;
  v70 = a2;
  sub_100769A1C();
  v71 = v5;
  v59 = [v5 traitCollection];
  v30 = *(v11 + 104);
  v30(v13, enum case for OfferEnvironment.arcadeProductPage(_:), v10);
  LOBYTE(a2) = sub_1007628BC();
  v31 = *(v11 + 8);
  v31(v13, v10);
  if (a2)
  {
    if (qword_10093F550 != -1)
    {
      swift_once();
    }

    v32 = sub_10000A61C(v17, qword_10099CA98);
    v33 = v60;
    (*(v18 + 16))(v60, v32, v17);

    goto LABEL_14;
  }

  v30(v13, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v10);
  v34 = sub_1007628BC();
  v54 = v31;
  v31(v13, v10);
  if (v34)
  {
    if (qword_10093F548 != -1)
    {
      swift_once();
    }

    v35 = qword_10099CA80;
LABEL_13:
    v36 = sub_10000A61C(v17, v35);
    v33 = v60;
    (*(v18 + 16))(v60, v36, v17);

    v31 = v54;
    goto LABEL_14;
  }

  if (sub_1007628AC())
  {
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v35 = qword_10099CA68;
    goto LABEL_13;
  }

  v30(v13, enum case for OfferEnvironment.navigationBar(_:), v10);
  v42 = sub_1007628BC();
  v31 = v54;
  v54(v13, v10);
  if (v42)
  {
    v43 = v59;
    v33 = v60;
    if (qword_10093F558 != -1)
    {
      swift_once();
    }

    v44 = sub_10000A61C(v17, qword_100944CE8);
    (*(v18 + 16))(v33, v44, v17);
  }

  else
  {
    v45 = v59;
    v46 = sub_10077071C();
    v33 = v60;
    if (v58)
    {
      if (v46)
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v47 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v47 = qword_100944CA0;
      }

      v49 = sub_10000A61C(v17, v47);
      v50 = v55;
      (*(v18 + 16))(v55, v49, v17);
      v51 = v57;
      (*(v18 + 32))(v57, v50, v17);
      sub_10076C13C();

      (*(v18 + 8))(v51, v17);
    }

    else
    {
      if (v46)
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v48 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v48 = qword_100944CA0;
      }

      v52 = sub_10000A61C(v17, v48);
      v53 = v56;
      (*(v18 + 16))(v56, v52, v17);

      (*(v18 + 32))(v33, v53, v17);
    }
  }

LABEL_14:
  v37 = *(v18 + 32);
  v38 = v61;
  v37(v61, v33, v17);
  v31(v16, v10);
  v37(v62, v38, v17);
  (*(v63 + 16))(v65, v67, v64);
  (*(v66 + 16))(v69, v70, v68);
  sub_10076A48C();
  swift_allocObject();
  sub_10076A47C();

  v40 = v71;
  sub_1001F62E8(v39, v71);

  return [v40 accessibilityShowLoading];
}

void sub_1001F71A4(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v85 = a3;
  v109 = a2;
  v6 = a4.n128_f64[0];
  v94 = sub_100769A4C();
  v107 = *(v94 - 8);
  __chkstk_darwin(v94);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v106 = &v81 - v10;
  v11 = sub_1007628DC();
  v103 = *(v11 - 8);
  v104 = v11;
  __chkstk_darwin(v11);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  v101 = sub_10076443C();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v83 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v81 - v18;
  __chkstk_darwin(v19);
  v84 = &v81 - v20;
  __chkstk_darwin(v21);
  v93 = &v81 - v22;
  __chkstk_darwin(v23);
  v95 = &v81 - v24;
  __chkstk_darwin(v25);
  v96 = &v81 - v26;
  v102 = sub_10076622C();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v98 = &v81 - v29;
  v30 = sub_10076B96C();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000A5D4(&qword_10094D7A0, &qword_1007948E0);
  __chkstk_darwin(v34 - 8);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v108 = &v81 - v38;
  v110 = v4;
  v39 = *&v4[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties];
  if (v39)
  {
    v87 = v9;
    v88 = v8;
    v89 = a1;
    Strong = swift_weakLoadStrong();
    v91 = v15;
    v90 = v39;
    if (Strong)
    {
      sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);

      sub_10076F5AC();

      if (v111)
      {
        swift_getObjectType();
        sub_100766ACC();
        sub_10075EE2C();
        swift_unknownObjectRelease();
        (*(v31 + 8))(v33, v30);
        swift_getObjectType();
        v41 = v108;
        sub_10075ED1C();
        swift_unknownObjectRelease();
        v42 = sub_10075EBAC();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v42 = sub_10075EBAC();
    v41 = v108;
    (*(*(v42 - 8) + 56))(v108, 1, 1, v42);
LABEL_7:
    v43 = v103;
    sub_100016E2C(v41, v36, &qword_10094D7A0, &qword_1007948E0);
    sub_10075EBAC();
    v44 = *(v42 - 8);
    v45 = (*(v44 + 48))(v36, 1, v42);
    v46 = v92;
    if (v45 == 1)
    {
      sub_10000CFBC(v36, &qword_10094D7A0, &qword_1007948E0);
    }

    else
    {
      if ((*(v44 + 88))(v36, v42) == enum case for LegacyAppState.installing(_:))
      {
        (*(v44 + 96))(v36, v42);
        v47 = sub_10075EB1C();
        (*(*(v47 - 8) + 8))(v36, v47);
        v48 = 1;
        goto LABEL_13;
      }

      (*(v44 + 8))(v36, v42);
    }

    v48 = 0;
LABEL_13:
    v86 = v48;
    v49 = v110;
    sub_1001E7ED0(v48);
    sub_100769A1C();
    v103 = [v49 traitCollection];
    v50 = v43[13];
    v51 = v104;
    v50(v46, enum case for OfferEnvironment.arcadeProductPage(_:), v104);
    v52 = sub_1007628BC();
    v53 = v43[1];
    v53(v46, v51);
    if (v52)
    {
      if (qword_10093F550 != -1)
      {
        swift_once();
      }

      v54 = qword_10099CA98;
      v55 = v101;
    }

    else
    {
      v50(v46, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v51);
      v56 = sub_1007628BC();
      v53(v46, v51);
      if (v56)
      {
        v55 = v101;
        if (qword_10093F548 != -1)
        {
          swift_once();
        }

        v54 = qword_10099CA80;
      }

      else
      {
        v57 = sub_1007628AC();
        v55 = v101;
        if ((v57 & 1) == 0)
        {
          v50(v46, enum case for OfferEnvironment.navigationBar(_:), v51);
          v69 = sub_1007628BC();
          v53(v46, v51);
          if (v69)
          {
            v61 = v107;
            v59 = v99;
            if (qword_10093F558 != -1)
            {
              swift_once();
            }

            v70 = sub_10000A61C(v55, qword_100944CE8);
            v60 = v93;
            (*(v59 + 16))(v93, v70, v55);
          }

          else
          {
            v71 = sub_10077071C();
            v61 = v107;
            v59 = v99;
            if (v85)
            {
              if (v71)
              {
                v72 = v93;
                if (qword_10093F520 != -1)
                {
                  swift_once();
                }

                v73 = qword_100944C88;
              }

              else
              {
                v72 = v93;
                if (qword_10093F528 != -1)
                {
                  swift_once();
                }

                v73 = qword_100944CA0;
              }

              v76 = sub_10000A61C(v55, v73);
              v77 = v82;
              (*(v59 + 16))(v82, v76, v55);
              v78 = v84;
              (*(v59 + 32))(v84, v77, v55);
              v60 = v72;
              sub_10076C13C();

              (*(v59 + 8))(v78, v55);
            }

            else
            {
              if (v71)
              {
                v74 = v93;
                if (qword_10093F520 != -1)
                {
                  swift_once();
                }

                v75 = qword_100944C88;
              }

              else
              {
                v74 = v93;
                if (qword_10093F528 != -1)
                {
                  swift_once();
                }

                v75 = qword_100944CA0;
              }

              v79 = sub_10000A61C(v55, v75);
              v80 = v83;
              (*(v59 + 16))(v83, v79, v55);

              (*(v59 + 32))(v74, v80, v55);
              v60 = v74;
            }
          }

          goto LABEL_26;
        }

        if (qword_10093F540 != -1)
        {
          swift_once();
        }

        v54 = qword_10099CA68;
      }
    }

    v58 = sub_10000A61C(v55, v54);
    v59 = v99;
    v60 = v93;
    (*(v99 + 16))(v93, v58, v55);

    v61 = v107;
LABEL_26:
    v62 = *(v59 + 32);
    v63 = v95;
    v62(v95, v60, v55);
    v53(v91, v51);
    v62(v96, v63, v55);
    (*(v105 + 16))(v106, v89, v87);
    (*(v61 + 16))(v88, v109, v94);
    v64 = v98;
    sub_10076621C();
    v65 = v100;
    v66 = v97;
    v67 = v102;
    (*(v100 + 16))(v97, v64, v102);
    v68 = v110;
    sub_1001F5C94(v66, v110, &type metadata accessor for ProgressConfiguration, &protocol witness table for ProgressConfiguration, &unk_10088CD10, sub_1001F9EE8, &unk_10088CD28);
    (*(v65 + 8))(v64, v67);
    [v68 setSelected:0];
    [v68 accessibilityShowProgress:v6];

    sub_10000CFBC(v108, &qword_10094D7A0, &qword_1007948E0);
  }
}

void sub_1001F7FE8(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v148 = a3;
  v183 = a1;
  v6 = sub_10076731C();
  v173 = *(v6 - 8);
  v174 = v6;
  __chkstk_darwin(v6);
  v171 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v172 = &v144 - v9;
  v10 = sub_100769A4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100766CDC();
  __chkstk_darwin(v14 - 8);
  v170 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10075F78C();
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v166 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v165 = &v144 - v18;
  v19 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v180 = *(v19 - 8);
  v181 = v19;
  __chkstk_darwin(v19);
  v182 = &v144 - v20;
  v186 = sub_1007628DC();
  v176 = *(v186 - 8);
  __chkstk_darwin(v186);
  v178 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v185 = &v144 - v23;
  __chkstk_darwin(v24);
  v177 = &v144 - v25;
  v179 = sub_10076443C();
  v184 = *(v179 - 8);
  __chkstk_darwin(v179);
  v146 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v145 = &v144 - v28;
  __chkstk_darwin(v29);
  v147 = &v144 - v30;
  __chkstk_darwin(v31);
  v163 = &v144 - v32;
  __chkstk_darwin(v33);
  v164 = &v144 - v34;
  __chkstk_darwin(v35);
  v167 = &v144 - v36;
  __chkstk_darwin(v37);
  v149 = &v144 - v38;
  __chkstk_darwin(v39);
  v156 = &v144 - v40;
  __chkstk_darwin(v41);
  v155 = &v144 - v42;
  __chkstk_darwin(v43);
  v157 = &v144 - v44;
  __chkstk_darwin(v45);
  v158 = &v144 - v46;
  v162 = sub_100764F4C();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v144 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v160 = &v144 - v49;
  v50 = sub_10076B96C();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = &v144 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000A5D4(&qword_10094D7A0, &qword_1007948E0);
  __chkstk_darwin(v54 - 8);
  v56 = &v144 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v187 = &v144 - v58;
  v59 = *&v4[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties];
  if (v59)
  {
    v152 = v13;
    v153 = v11;
    v154 = v10;
    v175 = a2;
    v60 = v4;
    if (swift_weakLoadStrong())
    {
      sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);

      sub_10076F5CC();

      swift_getObjectType();
      sub_100766ACC();
      sub_10075EE2C();
      swift_unknownObjectRelease();
      (*(v51 + 8))(v53, v50);
      swift_getObjectType();
      v61 = v187;
      sub_10075ED1C();
      swift_unknownObjectRelease();
      v62 = sub_10075EBAC();
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    }

    else
    {
      v62 = sub_10075EBAC();
      v61 = v187;
      (*(*(v62 - 8) + 56))(v187, 1, 1, v62);
    }

    sub_100016E2C(v61, v56, &qword_10094D7A0, &qword_1007948E0);
    sub_10075EBAC();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v56, 1, v62) == 1)
    {
      sub_10000CFBC(v56, &qword_10094D7A0, &qword_1007948E0);
      v64 = 0;
    }

    else
    {
      v64 = sub_10075EB8C();
      (*(v63 + 8))(v56, v62);
    }

    v65 = v60;
    v66 = v185;
    v151 = v59;
    v67 = objc_opt_self();
    [v67 begin];
    v150 = v67;
    [v67 setDisableActions:1];
    v68 = v175;
    v69 = (v176 + 104);
    v70 = (v176 + 8);
    v71 = v177;
    v176 += 8;
    if (v64)
    {
      sub_100769A1C();
      v185 = [v65 traitCollection];
      v72 = *v69;
      v73 = v186;
      (*v69)(v66, enum case for OfferEnvironment.arcadeProductPage(_:), v186);
      v74 = sub_1007628BC();
      v75 = *v70;
      v75(v66, v73);
      v144 = v65;
      if (v74)
      {
        v76 = v68;
        if (qword_10093F568 != -1)
        {
          swift_once();
        }

        v77 = v179;
        v78 = sub_10000A61C(v179, qword_10099CAB0);
        v79 = v184;
        v80 = v156;
        (*(v184 + 16))(v156, v78, v77);

        v81 = v79;
        v82 = v186;
      }

      else
      {
        v72(v66, enum case for OfferEnvironment.navigationBar(_:), v73);
        v96 = sub_1007628BC();
        v75(v66, v73);
        v82 = v73;
        if (v96 & 1) != 0 && (v97 = sub_10076C04C(), v188[3] = v97, v188[4] = sub_1001F9A80(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature), v98 = sub_10000DB7C(v188), (*(*(v97 - 8) + 104))(v98, enum case for Feature.glass_offer_button_2025A(_:), v97), LOBYTE(v97) = sub_10076C90C(), sub_10000CD74(v188), (v97))
        {
          v76 = v68;
          if (qword_10093F560 != -1)
          {
            swift_once();
          }

          v77 = v179;
          v99 = sub_10000A61C(v179, qword_100944D00);
          v100 = v184;
          v80 = v156;
          (*(v184 + 16))(v156, v99, v77);

          v81 = v100;
        }

        else
        {
          if (sub_10077071C())
          {
            v77 = v179;
            v76 = v68;
            if (qword_10093F538 != -1)
            {
              swift_once();
            }

            v103 = qword_100944CD0;
          }

          else
          {
            v77 = v179;
            v76 = v68;
            if (qword_10093F530 != -1)
            {
              swift_once();
            }

            v103 = qword_100944CB8;
          }

          v106 = sub_10000A61C(v77, v103);
          v107 = v184;
          v108 = v149;
          (*(v184 + 16))(v149, v106, v77);

          v81 = v107;
          v80 = v156;
          (*(v107 + 32))(v156, v108, v77);
        }
      }

      v109 = *(v81 + 32);
      v110 = v155;
      v109(v155, v80, v77);
      v111 = v157;
      v109(v157, v110, v77);
      v75(v71, v82);
      v109(v158, v111, v77);
      (*(v180 + 16))(v182, v183, v181);
      v112 = v165;
      v113 = v76;
      sub_100769A2C();
      v114 = v168;
      v115 = v166;
      v116 = v169;
      (*(v168 + 104))(v166, enum case for OfferStyle.disabled(_:), v169);
      sub_10075F77C();
      v117 = *(v114 + 8);
      v117(v115, v116);
      v117(v112, v116);
      (*(v153 + 16))(v152, v113, v154);
      sub_100766CBC();
      v118 = v160;
      sub_100764F3C();
      v119 = v161;
      v120 = v159;
      v121 = v162;
      (*(v161 + 16))(v159, v118, v162);
      v65 = v144;
      sub_1001F5C94(v120, v144, &type metadata accessor for PausedConfiguration, &protocol witness table for PausedConfiguration, &unk_10088CC20, sub_1001F9938, &unk_10088CC38);
      (*(v119 + 8))(v118, v121);
      v122 = &selRef_accessibilityShowPaused;
    }

    else
    {
      sub_100769A1C();
      v83 = [v65 traitCollection];
      v84 = *v69;
      v85 = v186;
      (*v69)(v66, enum case for OfferEnvironment.arcadeProductPage(_:), v186);
      v86 = sub_1007628BC();
      v87 = *v70;
      (*v70)(v66, v85);
      if (v86)
      {
        if (qword_10093F550 != -1)
        {
          swift_once();
        }

        v88 = v179;
        v89 = sub_10000A61C(v179, qword_10099CA98);
        v90 = v184;
        v91 = v163;
        (*(v184 + 16))(v163, v89, v88);

        v92 = v154;
        v93 = v186;
        v94 = v87;
        v95 = v175;
      }

      else
      {
        v84(v66, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v85);
        v101 = sub_1007628BC();
        (v87)(v66, v85);
        v94 = v87;
        if (v101)
        {
          v91 = v163;
          if (qword_10093F548 != -1)
          {
            swift_once();
          }

          v88 = v179;
          v102 = sub_10000A61C(v179, qword_10099CA80);
          v90 = v184;
          (*(v184 + 16))(v91, v102, v88);

          v92 = v154;
          v93 = v186;
          v95 = v175;
        }

        else
        {
          v104 = v83;
          if (sub_1007628AC())
          {
            v91 = v163;
            v95 = v175;
            if (qword_10093F540 != -1)
            {
              swift_once();
            }

            v88 = v179;
            v105 = sub_10000A61C(v179, qword_10099CA68);
            v90 = v184;
            (*(v184 + 16))(v91, v105, v88);

            v92 = v154;
            v93 = v186;
          }

          else
          {
            v177 = v94;
            v124 = v185;
            v123 = v186;
            v84(v185, enum case for OfferEnvironment.navigationBar(_:), v186);
            v125 = sub_1007628BC();
            v126 = v124;
            v94 = v177;
            v127 = v123;
            (v177)(v126, v123);
            v95 = v175;
            if (v125)
            {
              v93 = v127;
              v92 = v154;
              v88 = v179;
              if (qword_10093F558 != -1)
              {
                swift_once();
              }

              v128 = sub_10000A61C(v88, qword_100944CE8);
              v90 = v184;
              v91 = v163;
              (*(v184 + 16))(v163, v128, v88);
            }

            else
            {
              v129 = sub_10077071C();
              v92 = v154;
              v88 = v179;
              if (v148)
              {
                if (v129)
                {
                  v130 = v184;
                  v93 = v127;
                  if (qword_10093F520 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_100944C88;
                }

                else
                {
                  v130 = v184;
                  v93 = v127;
                  if (qword_10093F528 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_100944CA0;
                }

                v133 = sub_10000A61C(v88, v131);
                v134 = v145;
                (*(v130 + 16))(v145, v133, v88);
                v135 = v147;
                (*(v130 + 32))(v147, v134, v88);
                v91 = v163;
                sub_10076C13C();
                v90 = v184;

                (*(v90 + 8))(v135, v88);
              }

              else
              {
                if (v129)
                {
                  v90 = v184;
                  v93 = v127;
                  if (qword_10093F520 != -1)
                  {
                    swift_once();
                  }

                  v132 = qword_100944C88;
                }

                else
                {
                  v90 = v184;
                  v93 = v127;
                  if (qword_10093F528 != -1)
                  {
                    swift_once();
                  }

                  v132 = qword_100944CA0;
                }

                v136 = sub_10000A61C(v88, v132);
                v137 = v146;
                (*(v90 + 16))(v146, v136, v88);

                v91 = v163;
                (*(v90 + 32))(v163, v137, v88);
              }

              v94 = v177;
            }
          }
        }
      }

      v138 = *(v90 + 32);
      v139 = v164;
      v138(v164, v91, v88);
      (v94)(v178, v93);
      v138(v167, v139, v88);
      (*(v180 + 16))(v182, v183, v181);
      (*(v153 + 16))(v152, v95, v92);
      v140 = v172;
      sub_10076730C();
      v142 = v173;
      v141 = v174;
      v143 = v171;
      (*(v173 + 16))(v171, v140, v174);
      sub_1001F5C94(v143, v65, &type metadata accessor for RedownloadConfiguration, &protocol witness table for RedownloadConfiguration, &unk_10088CC70, sub_1001F9EE8, &unk_10088CC88);
      (*(v142 + 8))(v140, v141);
      v122 = &selRef_accessibilityShowRedownload;
    }

    [v65 *v122];
    [v150 commit];

    sub_10000CFBC(v187, &qword_10094D7A0, &qword_1007948E0);
  }
}

double sub_1001F96DC(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t sub_1001F98F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1001F9948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001F9A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094D5D8, qword_1007944C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F9A80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F9AC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001F9B00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001F9B38()
{
  v1 = *(sub_10000A5D4(&unk_100946760, &unk_100787A20) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = v8 + v11;
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v12 + 2, v2 | v7 | 7);
}

uint64_t sub_1001F9D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001F9D90(uint64_t a1)
{
  v3 = *(sub_10000A5D4(&unk_100946760, &unk_100787A20) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10000A5D4(&unk_100946750, qword_100787A30) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  sub_1001F2968(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1 + v4, v7, *(v7 + *(v6 + 64)), *(v7 + *(v6 + 64) + 1));
}

unint64_t sub_1001F9F00()
{
  result = qword_10094D7C8;
  if (!qword_10094D7C8)
  {
    sub_10076A94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7C8);
  }

  return result;
}

uint64_t sub_1001F9F58(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_10076F50C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F2EC();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = sub_10076FD4C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_1009412E8;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v11, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v29._object = 0x80000001007D9650;
    v29._countAndFlagsBits = 0xD000000000000038;
    sub_10076F2CC(v29);
    *(&v28 + 1) = sub_1001FAA54();
    *&v27 = v16;
    v17 = v16;
    sub_10076F29C();
    sub_1000258C0(&v27);
    v30._countAndFlagsBits = 0x745368747561202CLL;
    v30._object = 0xEE00203A73757461;
    sub_10076F2CC(v30);
    v18 = [v17 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    *(&v28 + 1) = v19;
    *&v27 = v18;
    sub_10076F29C();
    sub_1000258C0(&v27);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_10076F2CC(v31);
    sub_10076F2FC();
    sub_10076FBCC();

    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
    sub_10076FCBC();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v21 = sub_10000A61C(v11, qword_1009A2600);
    (*(v12 + 16))(v14, v21, v11);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v32._countAndFlagsBits = 0xD00000000000003BLL;
    v32._object = 0x80000001007D9610;
    sub_10076F2CC(v32);
    v27 = 0u;
    v28 = 0u;
    sub_10076F29C();
    sub_1000258C0(&v27);
    v33._countAndFlagsBits = 0x3A726F727265202CLL;
    v33._object = 0xE900000000000020;
    sub_10076F2CC(v33);
    if (a2)
    {
      swift_getErrorValue();
      v22 = sub_1007716EC();
      v24 = &type metadata for String;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *&v28 = 0;
    }

    *&v27 = v22;
    *(&v27 + 1) = v23;
    *(&v28 + 1) = v24;
    sub_10076F29C();
    sub_1000258C0(&v27);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_10076F2CC(v34);
    sub_10076F2FC();
    sub_10076FBCC();

    (*(v12 + 8))(v14, v11);
    sub_1001FA9E0();
    swift_allocError();
    *v25 = 1;
    sub_10076FCAC();
  }
}

void sub_1001FA544(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001FA5D4()
{
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v0 = sub_10076FCEC();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v3 = sub_10076FD4C();
    sub_10000A61C(v3, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
    [v4 setUserInitiated:1];
    v5 = [objc_allocWithZone(AMSUserNotificationAuthorizationTask) initWithBundleIdentifier:v2 options:v4];

    v6 = [v5 requestAuthorization];
    v11[4] = sub_1001FAA34;
    v11[5] = v0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1001FA544;
    v11[3] = &unk_10088CE38;
    v7 = _Block_copy(v11);

    [v6 addFinishBlock:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v8 = sub_10076FD4C();
    sub_10000A61C(v8, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    sub_1001FA9E0();
    swift_allocError();
    *v9 = 0;
    sub_10076FCAC();
  }

  return v0;
}

unint64_t sub_1001FA9E0()
{
  result = qword_10094D7D0;
  if (!qword_10094D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7D0);
  }

  return result;
}

double sub_1001FAA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1001FAA54()
{
  result = qword_10094D7D8;
  if (!qword_10094D7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094D7D8);
  }

  return result;
}

unint64_t sub_1001FAAB4()
{
  result = qword_10094D7E0;
  if (!qword_10094D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7E0);
  }

  return result;
}

unint64_t sub_1001FAB0C()
{
  result = qword_10094D7E8;
  if (!qword_10094D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7E8);
  }

  return result;
}

unint64_t sub_1001FAB64()
{
  result = qword_10094D7F0;
  if (!qword_10094D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7F0);
  }

  return result;
}

uint64_t sub_1001FABBC()
{
  v0 = sub_10000A5D4(&qword_10094D880, &qword_100794E90);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10075DA7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10075D72C();
  sub_10000DB18(v5, qword_10099D900);
  sub_10000A61C(v5, qword_10099D900);
  sub_10075DA5C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10075D71C();
}

uint64_t sub_1001FAD4C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_10000A5D4(&qword_10094D878, &qword_100794E88);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_10000A5D4(&qword_10094D880, &qword_100794E90);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  v7 = sub_10075DA7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_10076FF5C();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  sub_10076FF4C();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10076FF3C(v15);
  sub_10075D5EC();
  sub_10076FF2C(v14);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_10076FF3C(v16);
  sub_10075DA6C();
  sub_10076FF4C();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10076FF3C(v17);
  sub_10075D5EC();
  sub_10076FF2C(v14);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10076FF3C(v18);
  sub_10075DA6C();
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = sub_10075D62C();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_10075D63C();
}

uint64_t sub_1001FB038(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001FC3F4;

  return sub_1001FC094(a1, v4);
}

uint64_t sub_1001FB0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000257CC;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1001FB194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1001FB254;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1001FB254(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1001FB358()
{
  result = qword_10094D7F8;
  if (!qword_10094D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D7F8);
  }

  return result;
}

unint64_t sub_1001FB3B0()
{
  result = qword_10094D800;
  if (!qword_10094D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D800);
  }

  return result;
}

unint64_t sub_1001FB408()
{
  result = qword_10094D808;
  if (!qword_10094D808)
  {
    sub_10000CE78(&qword_10094D810, qword_100794AD8);
    sub_1001FB3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D808);
  }

  return result;
}

uint64_t sub_1001FB48C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001FB708();
  *v5 = v2;
  v5[1] = sub_100025A64;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1001FB540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000257CC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1001FB600()
{
  result = qword_10094D818;
  if (!qword_10094D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D818);
  }

  return result;
}

unint64_t sub_1001FB658()
{
  result = qword_10094D820;
  if (!qword_10094D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D820);
  }

  return result;
}

unint64_t sub_1001FB6B0()
{
  result = qword_10094D828;
  if (!qword_10094D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D828);
  }

  return result;
}

unint64_t sub_1001FB708()
{
  result = qword_10094D830;
  if (!qword_10094D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D830);
  }

  return result;
}

unint64_t sub_1001FB76C()
{
  result = qword_10094D838;
  if (!qword_10094D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D838);
  }

  return result;
}

uint64_t sub_1001FB7C0(uint64_t a1)
{
  v1 = sub_10000A5D4(&qword_10094D890, &qword_100794E98);
  __chkstk_darwin(v1);
  sub_1000B8AA8();
  sub_10075D6FC();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_10075D6EC(v3);
  swift_getKeyPath();
  sub_10000A5D4(&qword_10094D898, &qword_100794EC8);
  sub_10075D6DC();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_10075D6EC(v4);
  return sub_10075D70C();
}

unint64_t sub_1001FB8E0()
{
  result = qword_10094D840;
  if (!qword_10094D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D840);
  }

  return result;
}

unint64_t sub_1001FB938()
{
  result = qword_10094D848;
  if (!qword_10094D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D848);
  }

  return result;
}

unint64_t sub_1001FB990()
{
  result = qword_10094D850;
  if (!qword_10094D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D850);
  }

  return result;
}

uint64_t sub_1001FB9E4(uint64_t a1)
{
  sub_1001FC014();
  v2 = sub_10075D6BC();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1001FBA50@<X0>(uint64_t a1@<X8>)
{
  if (qword_10093FAB0 != -1)
  {
    swift_once();
  }

  v3 = sub_10075D72C();
  v4 = sub_10000A61C(v3, qword_10099D900);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_1001FBAFC()
{
  result = qword_10094D858;
  if (!qword_10094D858)
  {
    sub_10000CE78(&qword_10094D860, &qword_100794D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D858);
  }

  return result;
}

uint64_t sub_1001FBB60(uint64_t a1)
{
  v2 = sub_1000B8AA8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001FBBB0()
{
  result = qword_10094D868;
  if (!qword_10094D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D868);
  }

  return result;
}

uint64_t sub_1001FBC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100025A64;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1001FBCCC(uint64_t a1)
{
  v2 = sub_1001FB990();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1001FBD18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1001FBD60(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1001FBDC8(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v13 = sub_10075DA7C();
  __chkstk_darwin(v13 - 8);
  sub_10000A5D4(&qword_10094D870, &qword_100794E80);
  sub_10075DA5C();
  v14 = sub_10075D61C();

  sub_10075DA5C();
  v15 = sub_10075D61C();

  sub_10075DA5C();
  v16 = sub_10075D61C();

  sub_10075D5FC();
  sub_10075D5FC();
  if (a8)
  {
    v17 = a1;
  }

  else
  {
    sub_10077145C(33);

    v17 = a1;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    sub_1007700CC(v19);
  }

  sub_10075D5FC();

  *a9 = v17;
  a9[1] = a2;
  a9[2] = v14;
  a9[3] = v15;
  a9[4] = v16;
}

unint64_t sub_1001FC014()
{
  result = qword_10094D888;
  if (!qword_10094D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D888);
  }

  return result;
}

uint64_t sub_1001FC068@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10075D60C();
  *a1 = result;
  return result;
}

uint64_t sub_1001FC094(uint64_t a1, __n128 a2)
{
  *(v2 + 64) = a1;
  sub_10075DA7C();
  *(v2 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1001FC124, 0, 0);
}

uint64_t sub_1001FC124()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1004BBC48(0, v2, 0);
    sub_10000A5D4(&qword_10094D870, &qword_100794E80);
    v3 = (v1 + 40);
    do
    {
      v14 = v2;
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_10075DA5C();
      v6 = sub_10075D61C();

      sub_10075DA5C();
      v7 = sub_10075D61C();

      sub_10075DA5C();
      v8 = sub_10075D61C();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;

      sub_10075D5FC();
      v0[4] = 0xD000000000000016;
      v0[5] = 0x80000001007D96B0;
      sub_10075D5FC();
      sub_10077145C(33);

      v16._countAndFlagsBits = v4;
      v16._object = v5;
      sub_1007700CC(v16);
      v0[6] = 0xD00000000000001FLL;
      v0[7] = 0x80000001007D96D0;
      sub_10075D5FC();

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1004BBC48((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[5 * v10];
      v11[4] = v4;
      v11[5] = v5;
      v11[6] = v6;
      v11[7] = v7;
      v11[8] = v8;
      v3 += 2;
      v2 = v14 - 1;
    }

    while (v14 != 1);
  }

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

uint64_t type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10094D8C8;
  if (!qword_10094D8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001FC4F0()
{
  if (qword_10093F670 != -1)
  {
    swift_once();
  }

  v0 = sub_10075E77C();
  sub_10000A61C(v0, qword_10099CD70);
  sub_10075E6EC();
  return result;
}

void sub_1001FC560(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView;
  v5 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
  sub_10075FB6C();

  v6 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
  sub_10075FD2C();
  sub_1001FC6B8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100760BFC();
}

uint64_t sub_1001FC660(uint64_t a1)
{
  result = sub_1001FC6B8(&qword_10094D8D8, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_100794F30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FC6B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001FC8EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001FC9B0(uint64_t a1, void *a2)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10075E0AC();
  sub_10076830C();
  sub_1001FCBEC();
  sub_100761A7C();
  v8 = sub_10076B59C();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_100561E0C(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_10076B59C();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1001E17A0(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_10076B59C();
    v20 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

unint64_t sub_1001FCBEC()
{
  result = qword_10094D928;
  if (!qword_10094D928)
  {
    sub_10076830C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D928);
  }

  return result;
}

uint64_t sub_1001FCC44(uint64_t a1)
{
  sub_10076830C();
  sub_1001FCBEC();
  if (sub_100761A9C() <= a1 || (sub_100761A4C() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_100761A8C();
  if (sub_10062B9AC(a1))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001FCD20(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10000A5D4(&unk_100946740, &unk_1007890B0);
  sub_10000DB18(v4, a3);
  sub_10000A61C(v4, a3);
  __asm { FMOV            V0.2D, #16.0 }

  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for UIEdgeInsets(0);
  return sub_10075FDEC();
}

uint64_t sub_1001FCDCC()
{
  v0 = sub_10000A5D4(&unk_10094D980, qword_1007B1830);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&unk_100946740, &unk_1007890B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = sub_1007675FC();
  sub_10000DB18(v5, qword_10099D948);
  sub_10000A61C(v5, qword_10099D948);
  if (qword_10093FAB8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A61C(v1, qword_10099D918);
  (*(v2 + 16))(v4, v6, v1);
  v8[24] = &type metadata for Double;
  v8[25] = &protocol witness table for Double;
  v8[20] = &protocol witness table for Double;
  v8[21] = 0x4000000000000000;
  v8[19] = &type metadata for Double;
  v8[15] = &protocol witness table for Double;
  v8[16] = 0x4028000000000000;
  v8[14] = &type metadata for Double;
  v8[10] = &protocol witness table for Double;
  v8[11] = 0x4028000000000000;
  v8[9] = &type metadata for Double;
  v8[5] = &protocol witness table for Double;
  v8[6] = 0x406B800000000000;
  v8[4] = &type metadata for Double;
  v8[1] = 0x4066800000000000;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10000A5D4(&qword_100962590, &unk_100795060);
  sub_10075FDEC();
  return sub_1007675DC();
}

char *sub_1001FD010(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v10 - 8);
  v71 = &v68 - v11;
  v12 = sub_10076771C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v20 = sub_10076341C();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView;
  sub_10075F99C();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView;
  *&v4[v22] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView] = 0;
  v69 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_100940D80 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1678);
  v25 = *(v23 - 8);
  v75 = *(v25 + 16);
  v75(v18, v24, v23);
  v74 = *(v25 + 56);
  v74(v18, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.leading(_:);
  v73 = *(v13 + 104);
  v73(v15, enum case for DirectionalTextAlignment.leading(_:), v12);
  v27 = sub_1007626BC();
  v72 = v12;
  v28 = v27;
  v29 = objc_allocWithZone(v27);
  *&v4[v69] = sub_1007626AC();
  v69 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_100940D88 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v23, qword_1009A1690);
  v75(v18, v30, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v31 = objc_allocWithZone(v28);
  *&v4[v69] = sub_1007626AC();
  v69 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_100940D90 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v23, qword_1009A16A8);
  v75(v18, v32, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v33 = objc_allocWithZone(v28);
  *&v4[v69] = sub_1007626AC();
  if (qword_10093FAC8 != -1)
  {
    swift_once();
  }

  v34 = sub_1007675FC();
  v35 = sub_10000A61C(v34, qword_10099D948);
  (*(*(v34 - 8) + 16))(v5 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_metrics, v35, v34);
  v76.receiver = v5;
  v76.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 _setContinuousCornerRadius:20.0];

  v38 = [v36 contentView];
  [v38 setClipsToBounds:0];

  v39 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView;
  v40 = qword_10093F908;
  v41 = *&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_10076BCFC();
  v43 = sub_10000A61C(v42, qword_10099D5B8);
  v44 = *(v42 - 8);
  v45 = v71;
  (*(v44 + 16))(v71, v43, v42);
  (*(v44 + 56))(v45, 0, 1, v42);
  sub_10075F97C();

  [*&v36[v39] _setContinuousCornerRadius:20.0];
  v46 = [v36 contentView];
  [v46 addSubview:*&v36[v39]];

  v47 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView;
  [*&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView] setClipsToBounds:1];
  v48 = [v36 contentView];
  [v48 addSubview:*&v36[v47]];

  v49 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  v50 = *&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel];
  sub_1000325F0();
  v51 = v50;
  v52 = sub_100770CFC();
  [v51 setTextColor:v52];

  v53 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  v54 = *&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel];
  v55 = sub_100770CFC();
  [v54 setTextColor:v55];

  v56 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  v57 = *&v36[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel];
  v58 = sub_100770CFC();
  [v57 setTextColor:v58];

  [*&v36[v49] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v56] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v53] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v49] _setMinimumFontSize:20.0];
  [*&v36[v56] _setMinimumFontSize:11.0];
  [*&v36[v53] _setMinimumFontSize:11.0];
  v59 = [v36 contentView];
  [v59 addSubview:*&v36[v53]];

  v60 = [v36 contentView];
  [v60 addSubview:*&v36[v49]];

  v61 = [v36 contentView];
  [v61 addSubview:*&v36[v56]];

  v62 = [v36 traitCollection];
  v63 = [v62 userInterfaceStyle];

  if (v63 == 2)
  {
    v64 = sub_100770D5C();
  }

  else
  {
    v64 = sub_100770D2C();
  }

  v65 = v64;
  [*&v36[v39] setBackgroundColor:v64];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100783DD0;
  *(v66 + 32) = sub_10076E4CC();
  *(v66 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C4C();

  swift_unknownObjectRelease();

  return v36;
}

void sub_1001FD9F0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  sub_1000325F0();
  if (v3 == 2)
  {
    v4 = sub_100770D5C();
  }

  else
  {
    v4 = sub_100770D2C();
  }

  v5 = v4;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView] setBackgroundColor:?];
}

id sub_1001FDAF0()
{
  ObjectType = swift_getObjectType();
  v25 = sub_10076D1FC();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007675FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076761C();
  v26 = *(v27 - 8);
  *&v9 = __chkstk_darwin(v27).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v9);
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView];
  [v0 bounds];
  [v12 setFrame:?];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView];
  [v0 bounds];
  result = [v13 setFrame:?];
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_metrics;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v0[v16], v5);
    v41 = sub_10076546C();
    v42 = &protocol witness table for UIView;
    v40 = v15;
    v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel];
    v38 = sub_1007626BC();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v17;
    v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel];
    v35 = v38;
    v33 = &protocol witness table for UILabel;
    v34 = v18;
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel];
    v32 = v38;
    v31 = v19;
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v20 = v15;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    sub_10076760C();
    [v0 bounds];
    sub_1007675BC();

    (*(v2 + 8))(v4, v25);
    return (*(v26 + 8))(v11, v27);
  }

  return result;
}

uint64_t type metadata accessor for AchievementSummaryCollectionViewCell(uint64_t a1)
{
  result = qword_10094D968;
  if (!qword_10094D968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FE044(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_1007675FC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001FE130()
{
  v29 = sub_10076771C();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_shadowView;
  sub_10075F99C();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView;
  *(v0 + v10) = [objc_allocWithZone(UIView) init];
  v30 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView) = 0;
  v11 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_100940D80 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A1678);
  v14 = *(v12 - 8);
  v27 = *(v14 + 16);
  v27(v6, v13, v12);
  v26 = *(v14 + 56);
  v26(v6, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = *(v1 + 104);
  v28 = v1 + 104;
  v16(v3, enum case for DirectionalTextAlignment.leading(_:), v29);
  v17 = sub_1007626BC();
  v18 = objc_allocWithZone(v17);
  *(v30 + v11) = sub_1007626AC();
  v19 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_100940D88 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v12, qword_1009A1690);
  v27(v6, v20, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v21 = objc_allocWithZone(v17);
  *(v30 + v19) = sub_1007626AC();
  v22 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_100940D90 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v12, qword_1009A16A8);
  v27(v6, v23, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v24 = objc_allocWithZone(v17);
  *(v30 + v22) = sub_1007626AC();
  sub_10077156C();
  __break(1u);
}

void sub_1001FE5D4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 _usesMinimumSafeAreas];

  v4 = [v0 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = &selRef__minimumSafeAreaInsets;
LABEL_7:
      [v4 *v6];

      return;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v6 = &selRef_safeAreaInsets;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void *sub_1001FE6B0@<X0>(char a1@<W0>, char a2@<W2>, double *a3@<X8>)
{
  v6 = sub_10076443C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = sub_10076D1AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      *(a3 + 3) = &type metadata for Double;
      *(a3 + 4) = &protocol witness table for Double;
      *a3 = 166.0;
      *(a3 + 8) = &type metadata for Double;
      *(a3 + 9) = &protocol witness table for Double;
      a3[5] = 238.0;
      *(a3 + 13) = &type metadata for Double;
      *(a3 + 14) = &protocol witness table for Double;
      a3[10] = 24.0;
      *(a3 + 18) = &type metadata for Double;
      *(a3 + 19) = &protocol witness table for Double;
      a3[15] = 11.0;
      *(a3 + 23) = &type metadata for Double;
      *(a3 + 24) = &protocol witness table for Double;
      a3[20] = 24.0;
      *(a3 + 28) = &type metadata for Double;
      *(a3 + 29) = &protocol witness table for Double;
      a3[25] = 15.0;
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v16 = sub_10000A61C(v6, qword_10099CA68);
      v17 = v82;
      (*(v7 + 16))(v82, v16, v6);
      sub_10076441C();
      v19 = v18;
      result = (*(v7 + 8))(v17, v6);
      *(a3 + 33) = &type metadata for CGFloat;
      *(a3 + 34) = &protocol witness table for CGFloat;
      *(a3 + 30) = v19;
      *(a3 + 43) = &type metadata for CGFloat;
      *(a3 + 44) = &protocol witness table for CGFloat;
      a3[40] = 5.0;
      *(a3 + 48) = &type metadata for Double;
      *(a3 + 49) = &protocol witness table for Double;
      a3[45] = 12.0;
      a3[35] = 0.0;
      *(a3 + 18) = xmmword_100795070;
      a3[38] = 24.0;
      *(a3 + 312) = 1;
    }

    else
    {
      v72 = v11;
      v78 = v7;
      v79 = v6;
      *(a3 + 3) = &type metadata for Double;
      *(a3 + 4) = &protocol witness table for Double;
      *a3 = 200.0;
      *(a3 + 8) = &type metadata for Double;
      *(a3 + 9) = &protocol witness table for Double;
      a3[5] = 330.0;
      *(a3 + 13) = &type metadata for Double;
      *(a3 + 14) = &protocol witness table for Double;
      a3[10] = 21.0;
      if (qword_1009410A0 != -1)
      {
        swift_once();
      }

      v37 = sub_10076D3DC();
      v77 = sub_10000A61C(v37, qword_1009A1FD8);
      v38 = *(v37 - 8);
      v75 = *(v38 + 16);
      v76 = v38 + 16;
      v75(v15, v77, v37);
      LODWORD(v74) = enum case for FontSource.useCase(_:);
      v39 = v13;
      v73 = v13[13];
      v73(v15);
      v70 = sub_10076D9AC();
      *(a3 + 18) = v70;
      *(a3 + 19) = &protocol witness table for StaticDimension;
      sub_10000DB7C(a3 + 15);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v40 = sub_10000DB7C(v87);
      v69 = v13[2];
      v69(v40, v15, v12);
      sub_10076D9BC();
      v41 = v13[1];
      v41(v15, v12);
      v87[0] = 0x4056800000000000;
      v84[0] = 0x4038000000000000;
      sub_10000A5D4(&unk_100943120, &unk_100784C10);
      v42 = v72;
      sub_10075FDFC();
      sub_10075FE2C();
      (*(v80 + 1))(v42, v81);
      v81 = v37;
      v75(v15, v77, v37);
      v80 = (v13 + 13);
      (v73)(v15, v74, v12);
      v43 = v70;
      *(a3 + 28) = v70;
      *(a3 + 29) = &protocol witness table for StaticDimension;
      sub_10000DB7C(a3 + 25);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v44 = sub_10000DB7C(v87);
      v72 = (v39 + 2);
      v45 = v69;
      v69(v44, v15, v12);
      v46 = v45;
      sub_10076D9BC();
      v71 = v41;
      v41(v15, v12);
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v47 = v79;
      v48 = sub_10000A61C(v79, qword_10099CA68);
      v49 = v78;
      v50 = v82;
      (*(v78 + 16))(v82, v48, v47);
      sub_10076441C();
      v52 = v51;
      (*(v49 + 8))(v50, v47);
      *(a3 + 33) = &type metadata for CGFloat;
      *(a3 + 34) = &protocol witness table for CGFloat;
      *(a3 + 30) = v52;
      *(a3 + 43) = &type metadata for CGFloat;
      *(a3 + 44) = &protocol witness table for CGFloat;
      a3[40] = 5.0;
      v75(v15, v77, v81);
      (v73)(v15, v74, v12);
      *(a3 + 48) = v43;
      *(a3 + 49) = &protocol witness table for StaticDimension;
      sub_10000DB7C(a3 + 45);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v53 = sub_10000DB7C(v87);
      v46(v53, v15, v12);
      sub_10076D9BC();
      result = v71(v15, v12);
      a3[35] = 0.0;
      *(a3 + 18) = xmmword_100795070;
      a3[38] = 24.0;
      *(a3 + 312) = 0;
    }
  }

  else
  {
    v79 = v6;
    v87[3] = &type metadata for Double;
    v87[4] = &protocol witness table for Double;
    v87[0] = 0x4069000000000000;
    v87[8] = &type metadata for Double;
    v87[9] = &protocol witness table for Double;
    v78 = v7;
    if (a1)
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4074A00000000000;
      v87[10] = 0;
      if (qword_1009410A0 != -1)
      {
        swift_once();
      }

      v21 = sub_10076D3DC();
      v77 = sub_10000A61C(v21, qword_1009A1FD8);
      v22 = *(v21 - 8);
      v69 = *(v22 + 16);
      v75 = (v22 + 16);
      v69(v15, v77, v21);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v23 = v13[13];
      v71 = (v13 + 13);
      v73 = v23;
      v23(v15);
      v74 = sub_10076D9AC();
      v87[18] = v74;
      v87[19] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v24 = sub_10000DB7C(v84);
      v72 = v13[2];
      (v72)(v24, v15, v12);
      sub_10076D9BC();
      v25 = v13[1];
      v25(v15, v12);
      v84[0] = 0x4056800000000000;
      v83 = 0x4038000000000000;
      sub_10000A5D4(&unk_100943120, &unk_100784C10);
      sub_10075FDFC();
      sub_10075FE2C();
      (*(v80 + 1))(v11, v81);
      v81 = v21;
      v26 = v21;
      v27 = v69;
      v69(v15, v77, v26);
      (v73)(v15, v76, v12);
      v87[28] = v74;
      v87[29] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v28 = sub_10000DB7C(v84);
      v80 = (v13 + 2);
      (v72)(v28, v15, v12);
      sub_10076D9BC();
      v70 = v25;
      v25(v15, v12);
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v29 = v79;
      v30 = sub_10000A61C(v79, qword_10099CA68);
      v31 = v78;
      v32 = v82;
      (*(v78 + 16))(v82, v30, v29);
      sub_10076441C();
      v34 = v33;
      (*(v31 + 8))(v32, v29);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v34;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v27(v15, v77, v81);
      (v73)(v15, v76, v12);
      v87[48] = v74;
      v87[49] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v35 = sub_10000DB7C(v84);
      (v72)(v35, v15, v12);
      sub_10076D9BC();
      v70(v15, v12);
      v36 = 0;
    }

    else
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4071800000000000;
      v87[10] = 0x4035000000000000;
      if (qword_1009410A0 != -1)
      {
        swift_once();
      }

      v54 = sub_10076D3DC();
      v81 = sub_10000A61C(v54, qword_1009A1FD8);
      v55 = *(v54 - 8);
      v80 = *(v55 + 16);
      v74 = v55 + 16;
      v80(v15, v81, v54);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v77 = v13[13];
      v77(v15);
      v75 = sub_10076D9AC();
      v87[18] = v75;
      v87[19] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v56 = sub_10000DB7C(v84);
      v57 = v13[2];
      v57(v56, v15, v12);
      sub_10076D9BC();
      v70 = v13[1];
      v70(v15, v12);
      v87[24] = &protocol witness table for Double;
      v87[23] = &type metadata for Double;
      v87[20] = 0x4038000000000000;
      v73 = v54;
      v80(v15, v81, v54);
      v72 = (v13 + 13);
      (v77)(v15, v76, v12);
      v87[28] = v75;
      v87[29] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v58 = sub_10000DB7C(v84);
      v71 = (v13 + 2);
      v57(v58, v15, v12);
      v59 = v57;
      v60 = v70;
      sub_10076D9BC();
      v60(v15, v12);
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v61 = v79;
      v62 = sub_10000A61C(v79, qword_10099CA68);
      v63 = v78;
      v64 = v82;
      (*(v78 + 16))(v82, v62, v61);
      sub_10076441C();
      v66 = v65;
      (*(v63 + 8))(v64, v61);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v66;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v80(v15, v81, v73);
      (v77)(v15, v76, v12);
      v87[48] = v75;
      v87[49] = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v67 = sub_10000DB7C(v84);
      v59(v67, v15, v12);
      sub_10076D9BC();
      v60(v15, v12);
      v36 = 1;
    }

    *&v87[35] = xmmword_100795080;
    *&v87[37] = xmmword_100795080;
    LOBYTE(v87[39]) = v36;
    return memcpy(a3, v87, 0x190uLL);
  }

  return result;
}

uint64_t sub_1001FF5C8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_10076443C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      JUScreenClassGetPortraitWidth();
      _NF = v30 < a4;
      v31 = 0.0;
      if (_NF)
      {
        v31 = 21.0;
      }

      v37 = &type metadata for Double;
      v38 = &protocol witness table for Double;
      *&v36 = v31;
      *(a3 + 64) = &type metadata for Double;
      *(a3 + 72) = &protocol witness table for Double;
      *(a3 + 40) = 0x4069000000000000;
      if (qword_10093F540 != -1)
      {
        swift_once();
      }

      v32 = sub_10000A61C(v8, qword_10099CA68);
      (*(v9 + 16))(v11, v32, v8);
      sub_10076441C();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      *(a3 + 136) = &type metadata for CGFloat;
      *(a3 + 144) = &protocol witness table for CGFloat;
      *(a3 + 112) = v34;
      *(a3 + 208) = &type metadata for Double;
      *(a3 + 216) = &protocol witness table for Double;
      *(a3 + 184) = 0x4028000000000000;
      *(a3 + 248) = &type metadata for Double;
      *(a3 + 256) = &protocol witness table for Double;
      *(a3 + 224) = 0x402C000000000000;
      result = sub_100012498(&v36, a3);
      *(a3 + 80) = xmmword_1007950D0;
      *(a3 + 96) = xmmword_1007950E0;
      v21 = xmmword_100795080;
      goto LABEL_19;
    }

    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4069000000000000;
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v23 = sub_10000A61C(v8, qword_10099CA68);
    (*(v9 + 16))(v11, v23, v8);
    sub_10076441C();
    v25 = v24;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v25;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007950F0;
LABEL_13:
    *(a3 + 80) = v26;
    *(a3 + 96) = xmmword_1007950C0;
    *(a3 + 152) = 0;
    *(a3 + 160) = v22;
    *(a3 + 168) = 0;
    *(a3 + 176) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4046000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4064000000000000;
    if (qword_10093F540 != -1)
    {
      swift_once();
    }

    v27 = sub_10000A61C(v8, qword_10099CA68);
    (*(v9 + 16))(v11, v27, v8);
    sub_10076441C();
    v29 = v28;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v29;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007950B0;
    goto LABEL_13;
  }

  *(a3 + 24) = &type metadata for Double;
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = 0x4038000000000000;
  *(a3 + 64) = &type metadata for Double;
  *(a3 + 72) = &protocol witness table for Double;
  *(a3 + 40) = 0x4054000000000000;
  if (qword_10093F540 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v8, qword_10099CA68);
  (*(v9 + 16))(v11, v12, v8);
  sub_10076441C();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *(a3 + 136) = &type metadata for CGFloat;
  *(a3 + 144) = &protocol witness table for CGFloat;
  *(a3 + 112) = v14;
  *(a3 + 208) = &type metadata for Double;
  *(a3 + 216) = &protocol witness table for Double;
  *(a3 + 184) = 0x4014000000000000;
  *(a3 + 248) = &type metadata for Double;
  *(a3 + 256) = &protocol witness table for Double;
  *(a3 + 224) = 0x4020000000000000;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 80) = _Q0;
  *(a3 + 96) = xmmword_100795090;
  v21 = xmmword_1007950A0;
LABEL_19:
  *(a3 + 152) = v21;
  *(a3 + 168) = v21;
  return result;
}

char *sub_1001FFAC0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v20 = &v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissActionBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style] = a1;
  v21 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] = v21;
  if (v4 == 1)
  {
    if (qword_1009413E0 != -1)
    {
      swift_once();
    }

    v22 = qword_1009A2828;
  }

  else
  {
    if (qword_1009413D8 != -1)
    {
      swift_once();
    }

    v22 = qword_1009A2810;
  }

  v23 = a1;
  v24 = sub_10000A61C(v11, v22);
  sub_1000A9194(v24, v13, v25);
  sub_100201F18(v13, v16, v26);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FE0C();
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView] = sub_1006389FC(v19);
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton] = sub_1001E89B8(0);
  sub_10076313C();
  v29 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  if (v23 == 1)
  {
    if (qword_100940E68 != -1)
    {
      swift_once();
    }

    v30 = qword_1009A1930;
  }

  else
  {
    if (qword_100940E58 != -1)
    {
      swift_once();
    }

    v30 = qword_1009A1900;
  }

  v31 = sub_10000A61C(v5, v30);
  v32 = v40;
  (*(v6 + 16))(v40, v31, v5);
  (*(v6 + 32))(v10, v32, v5);
  (*(v6 + 56))(v10, 0, 1, v5);
  sub_10076311C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton] = v29;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 clearColor];
  [v36 setBackgroundColor:v37];

  v38 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView;
  [*&v36[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v36 addSubview:*&v36[v38]];
  [*&v36[v38] addSubview:*&v36[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView]];
  [*&v36[v38] addSubview:*&v36[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton]];
  [*&v36[v38] addSubview:v33];

  return v36;
}

uint64_t sub_1002000B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v5);
  [v1 bounds];
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  result = CGRectIsEmpty(v87);
  if ((result & 1) == 0)
  {
    v65 = v3;
    v62 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView];
    [v62 setFrame:{x, y, width, height}];
    v13 = [v1 traitCollection];
    v14 = sub_10077071C();

    v63 = v7;
    v64 = v4;
    if (v14)
    {
      v15 = v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
      v16 = [v1 traitCollection];
      v17 = sub_1007706EC();

      if (v17)
      {
        v18 = [v1 window];
        if (v18)
        {
          v19 = v18;
          [v18 frame];
          v20 = CGRectGetWidth(v88);
          [v1 bounds];
          v21 = CGRectGetWidth(v89);

          LOBYTE(v18) = v21 < v20;
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      sub_1001FE6B0(v18, v15, v66);
      v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
      if (v30)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
      if (v31)
      {
        v32 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v33 = &protocol witness table for UIView;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView];
      v35 = type metadata accessor for BreakoutDetailsView(0);
      v79 = &protocol witness table for UIView;
      v78 = v35;
      v77 = v34;
      v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton];
      v81 = type metadata accessor for OfferButton();
      v82 = &protocol witness table for UIView;
      v80 = v36;
      v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];
      v84 = sub_10076313C();
      v85 = &protocol witness table for UIView;
      v83 = v37;
      memcpy(v67, v66, 0x190uLL);
      v67[50] = v30;
      v68 = 0;
      v69 = 0;
      v70 = v61;
      v71 = v60;
      v72 = v31;
      v74 = 0;
      v73 = 0;
      v75 = v32;
      v76 = v33;
      v38 = v31;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v42 = v30;
      v43 = v63;
      AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_100201FD0(v67);
    }

    else
    {
      v22 = v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
      v23 = [v1 traitCollection];
      v24 = sub_1007706EC();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = CGRectGetWidth(v90);
          [v1 bounds];
          v28 = CGRectGetWidth(v91);

          v29 = v28 < v27;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }

      [v1 bounds];
      sub_1001FF5C8(v29, v22, v66, v44);
      v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
      if (v45)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
      if (v46)
      {
        v47 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v48 = &protocol witness table for UIView;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView];
      v50 = type metadata accessor for BreakoutDetailsView(0);
      v67[47] = &protocol witness table for UIView;
      v67[46] = v50;
      v67[43] = v49;
      v51 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton];
      v52 = type metadata accessor for OfferButton();
      v69 = &protocol witness table for UIView;
      v68 = v52;
      v67[48] = v51;
      v53 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];
      v54 = sub_10076313C();
      v74 = &protocol witness table for UIView;
      v73 = v54;
      v70 = v53;
      memcpy(v67, v66, 0x108uLL);
      v67[33] = v45;
      v67[34] = 0;
      v67[35] = 0;
      v67[36] = v61;
      v67[37] = v60;
      v67[38] = v46;
      v67[40] = 0;
      v67[39] = 0;
      v67[41] = v47;
      v67[42] = v48;
      v55 = v46;
      v56 = v49;
      v57 = v51;
      v58 = v53;
      v59 = v45;
      v43 = v63;
      ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_100201F7C(v67);
    }

    sub_10076D1DC();
    [v62 setContentSize:?];
    return (*(v64 + 8))(v43, v65);
  }

  return result;
}

void sub_1002006B0(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton);

    [v5 setAlpha:a2];
  }
}

id sub_100200738(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v152 = a8;
  v136 = a7;
  v151 = a6;
  v138 = a5;
  v137 = a4;
  v12 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v12 - 8);
  v131 = &v120 - v13;
  v132 = sub_10076F7FC();
  v133 = *(v132 - 8);
  __chkstk_darwin(v132);
  v123 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10076BEDC();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10076D39C();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076BF6C();
  __chkstk_darwin(v17 - 8);
  v150 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100764A1C();
  v154 = *(v19 - 8);
  v155 = v19;
  __chkstk_darwin(v19);
  v153 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_10076D3DC();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v135 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v22 - 8);
  v148 = &v120 - v23;
  v145 = sub_100768FEC();
  v141 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v146 = *(v25 - 8);
  v147 = v25;
  __chkstk_darwin(v25);
  v144 = &v120 - v26;
  v27 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v27 - 8);
  v142 = &v120 - v28;
  v29 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v29 - 8);
  v134 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v124 = &v120 - v32;
  v33 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v33 - 8);
  v35 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v120 - v37;
  v39 = sub_10075F9EC();
  v149 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000A5D4(&unk_10094C040, &qword_1007890D0);
  __chkstk_darwin(v42 - 8);
  v44 = &v120 - v43;
  v45 = sub_100764A7C();
  if (v45)
  {
    v46 = v45;
    v47 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
    v48.n128_f64[0] = (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    sub_1006098B0(v48, v46, v44, v152);

    sub_10000CFBC(v44, &unk_10094C040, &qword_1007890D0);
  }

  sub_100764A2C();
  if (!v49)
  {
    v149 = sub_100764A3C();
    v122 = sub_100764A6C();
    sub_100764A4C();
    v54 = sub_100764A5C();
    v55 = &v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissActionBlock];
    v56 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissActionBlock];
    v57 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissActionBlock + 8];
    v58 = v138;
    *v55 = v137;
    v55[1] = v58;
    sub_1000167E0(v56, v57);
    v59 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];

    v60 = sub_10076FF6C();

    [v59 setTitle:v60 forState:0];

    [v59 addTarget:v8 action:"didTapDismiss:" forControlEvents:64];
    v121 = v54;
    if (v54)
    {
      sub_100766A7C();
      v61 = sub_1007628DC();
      v62 = *(v61 - 8);
      (*(v62 + 56))(v38, 0, 1, v61);
      sub_1002025FC(v38, v35);
      if ((*(v62 + 88))(v35, v61) == enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:))
      {
        if (qword_100940E68 != -1)
        {
          swift_once();
        }

        v63 = v140;
        v64 = sub_10000A61C(v140, qword_1009A1930);
        v65 = v139;
        v66 = v124;
        (*(v139 + 16))(v124, v64, v63);
        (*(v65 + 56))(v66, 0, 1, v63);
        sub_10076311C();
        v68 = v152;
        v67 = v153;
LABEL_28:
        v83 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
        v84 = v142;
        (*(*(v83 - 8) + 56))(v142, 1, 1, v83);
        v85 = v141;
        v86 = v145;
        (*(v141 + 104))(v143, enum case for OfferButtonSubtitlePosition.below(_:), v145);
        (*(v85 + 56))(v148, 1, 1, v86);
        sub_1002025B4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v87 = v144;
        sub_10076759C();
        sub_1001F12C8(v121, v149, v122, v84, v87, v68, 0, 0);

        (*(v146 + 8))(v87, v147);
        sub_10000CFBC(v84, &unk_100946760, &unk_100787A20);
        v75 = v154;
        goto LABEL_29;
      }

      (*(v62 + 8))(v35, v61);
    }

    else
    {
      v76 = sub_1007628DC();
      (*(*(v76 - 8) + 56))(v38, 1, 1, v76);
      sub_10000CFBC(v38, &unk_1009492A0, &unk_10078BC00);
    }

    v67 = v153;
    if (v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style] == 1)
    {
      v68 = v152;
      if (qword_100940E68 != -1)
      {
        swift_once();
      }

      v77 = qword_1009A1930;
    }

    else
    {
      v68 = v152;
      if (qword_100940E58 != -1)
      {
        swift_once();
      }

      v77 = qword_1009A1900;
    }

    v78 = v140;
    v79 = sub_10000A61C(v140, v77);
    v80 = v139;
    v81 = v135;
    (*(v139 + 16))(v135, v79, v78);
    v82 = v134;
    (*(v80 + 32))(v134, v81, v78);
    (*(v80 + 56))(v82, 0, 1, v78);
    sub_10076311C();
    goto LABEL_28;
  }

  v50 = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v51 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView;
  v52 = *&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
  if (v52)
  {
    [v52 removeFromSuperview];
    v53 = *&v8[v51];
  }

  else
  {
    v53 = 0;
  }

  *&v8[v51] = v50;
  v69 = v50;

  if (v69)
  {
    [*&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] addSubview:v69];
  }

  v70 = *&v8[v51] != 0;
  [*&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton] setHidden:v70];
  [*&v8[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton] setHidden:v70];
  [v8 setNeedsLayout];

  v71 = *&v8[v51];
  if (v71)
  {
    v72 = *(v71 + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label);
    (*(v149 + 104))(v41, enum case for StyledText.MediaType.plainText(_:), v39);
    sub_10075F9FC();
    swift_allocObject();
    v73 = v72;
    v74 = sub_10075F9BC();
    sub_10050C274(v74, 0, _swiftEmptyArrayStorage);
  }

  else
  {
  }

  v67 = v153;
  v75 = v154;
LABEL_29:
  v88 = sub_100202024(v9, v9, a1, a2);
  v90 = v89;
  sub_100764A8C();
  v91 = v155;
  v92 = (*(v75 + 88))(v67, v155);
  if (v92 == enum case for ArcadeSubscribePage.PageType.generic(_:))
  {
    (*(v75 + 96))(v67, v91);
    v93 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v93 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_1002025B4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();
    v94 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView;
    v95 = *&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
    v96 = v93;
    if (v95)
    {
      [v95 removeFromSuperview];
      v97 = *&v9[v94];
    }

    else
    {
      v97 = 0;
    }

    *&v9[v94] = v93;
    v112 = v93;

    [*&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] addSubview:v112];
    [v9 setNeedsLayout];

LABEL_44:

LABEL_47:
    return [v9 setNeedsLayout];
  }

  if (v92 == enum case for ArcadeSubscribePage.PageType.grid(_:))
  {
    (*(v75 + 96))(v67, v91);
    v98 = *v67;
    v99 = v67[1];
    v100 = v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style] == 1;
    v101 = objc_allocWithZone(type metadata accessor for UpsellGridView());
    v102 = sub_100517380(v100);
    v103 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView;
    v104 = *&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
    v105 = v102;
    if (v104)
    {
      [v104 removeFromSuperview];
      v104 = *&v9[v103];
    }

    *&v9[v103] = v102;
    v112 = v102;

    [*&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] addSubview:v112];
    [v9 setNeedsLayout];

    *&v112[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_impressionsCalculator] = v136;

    *&v112[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon] = v98;

    v113 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *&v112[v113] = v99;

    *&v112[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader] = v151;

    sub_100517950(v88, v90);

    goto LABEL_47;
  }

  if (v92 == enum case for ArcadeSubscribePage.PageType.singleIcon(_:))
  {
    (*(v75 + 96))(v67, v91);
    sub_1007660AC();
    v106 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10076BEFC();
    v107 = v125;
    sub_10076D3AC();
    sub_10076D35C();
    (*(v126 + 8))(v107, v127);
    v108 = v128;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v129 + 8))(v108, v130);
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v106 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_1002025B4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();
    v109 = v131;
    sub_10076609C();
    v110 = v133;
    v111 = v132;
    if ((*(v133 + 48))(v109, 1, v132) == 1)
    {
      sub_10000CFBC(v109, &qword_1009492E0, &qword_1007893A0);
    }

    else
    {
      v115 = v123;
      (*(v110 + 32))();
      if (v136)
      {
        sub_1007660EC();
      }

      (*(v133 + 8))(v115, v111);
    }

    v116 = OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView;
    v117 = *&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
    v118 = v106;
    if (v117)
    {
      [v117 removeFromSuperview];
      v119 = *&v9[v116];
    }

    else
    {
      v119 = 0;
    }

    *&v9[v116] = v106;
    v112 = v106;

    [*&v9[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_scrollView] addSubview:v112];
    [v9 setNeedsLayout];

    goto LABEL_44;
  }

  (*(v75 + 8))(v67, v91);
  return [v9 setNeedsLayout];
}

unint64_t sub_100201EC4()
{
  result = qword_10094D9F8;
  if (!qword_10094D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D9F8);
  }

  return result;
}

uint64_t sub_100201F18(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_100202024(void *a1, _BYTE *a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_10077071C();

  if (v14)
  {
    v64 = v9;
    v15 = a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
    v16 = [a2 traitCollection];
    v17 = sub_1007706EC();

    if (v17)
    {
      v18 = [a2 window];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        Width = CGRectGetWidth(v88);
        [a2 bounds];
        v21 = CGRectGetWidth(v89);

        LOBYTE(v18) = v21 < Width;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    sub_1001FE6B0(v18, v15, v68);
    v29 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
    if (v29)
    {
      v67 = type metadata accessor for LinkableHeaderView();
      v63 = &protocol witness table for UIView;
    }

    else
    {
      v67 = 0;
      v63 = 0;
    }

    v33 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_contentView];
    v65 = v8;
    v66 = a1;
    if (v33)
    {
      v62 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v34 = &protocol witness table for UIView;
    }

    else
    {
      v62 = 0;
      v34 = 0;
    }

    v47 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView];
    v48 = type metadata accessor for BreakoutDetailsView(0);
    v81 = &protocol witness table for UIView;
    v80 = v48;
    v79 = v47;
    v49 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton];
    v83 = type metadata accessor for OfferButton();
    v84 = &protocol witness table for UIView;
    v82 = v49;
    v50 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];
    v86 = sub_10076313C();
    v87 = &protocol witness table for UIView;
    v85 = v50;
    memcpy(v69, v68, 0x190uLL);
    v69[50] = v29;
    v70 = 0;
    v71 = 0;
    v72 = v67;
    v73 = v63;
    v74 = v33;
    v76 = 0;
    v75 = 0;
    v77 = v62;
    v78 = v34;
    v51 = v69[3];
    sub_10000CF78(v69, v69[3]);
    v52 = v33;
    v53 = v47;
    v54 = v49;
    v55 = v50;
    v56 = v29;
    sub_1000FF02C(v51);
    v57 = v66;
    sub_10076D40C();
    v58 = v65;
    v59 = *(v64 + 8);
    v59(v12, v65);
    sub_10020266C(v57, v69, a3, a4);
    v60 = v69[8];
    sub_10000CF78(&v69[5], v69[8]);
    sub_1000FF02C(v60);
    sub_10076D40C();
    v59(v12, v58);
    sub_100201FD0(v69);
  }

  else
  {
    v22 = a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
    v23 = [a2 traitCollection];
    v24 = sub_1007706EC();

    if (v24)
    {
      v25 = [a2 window];
      if (v25)
      {
        v26 = v25;
        [v25 frame];
        v27 = CGRectGetWidth(v90);
        [a2 bounds];
        v28 = CGRectGetWidth(v91);

        LOBYTE(v25) = v28 < v27;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    sub_1001FF5C8(v25, v22, v68, a3);
    v30 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_headerView];
    if (v30)
    {
      v31 = type metadata accessor for LinkableHeaderView();
      v32 = &protocol witness table for UIView;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v35 = sub_10076DDDC();
    v36 = v30;
    v37 = sub_10076DDCC();
    v69[42] = &protocol witness table for LayoutViewPlaceholder;
    v69[41] = v35;
    v69[38] = v37;
    v38 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_detailsView];
    v39 = type metadata accessor for BreakoutDetailsView(0);
    v69[47] = &protocol witness table for UIView;
    v69[46] = v39;
    v69[43] = v38;
    v40 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_offerButton];
    v41 = type metadata accessor for OfferButton();
    v71 = &protocol witness table for UIView;
    v70 = v41;
    v69[48] = v40;
    v42 = *&a2[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_dismissButton];
    v43 = sub_10076313C();
    v76 = &protocol witness table for UIView;
    v75 = v43;
    v72 = v42;
    memcpy(v69, v68, 0x108uLL);
    v69[33] = v30;
    v69[34] = 0;
    v69[35] = 0;
    v69[36] = v31;
    v69[37] = v32;
    v44 = v38;
    v45 = v40;
    v46 = v42;
    a3 = sub_1002029F4(a1, v69, a3, a4);
    sub_100201F7C(v69);
  }

  return a3;
}

uint64_t sub_1002025B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002025FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10020266C(uint64_t a1, void *a2, double a3, double a4)
{
  *&v32 = a2 + 35;
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[23];
  sub_10000CF78(a2 + 20, v12);
  sub_1000FF02C(v12);
  sub_10076D40C();
  v14 = v13;
  v15 = *(v9 + 8);
  v15(v11, v8);
  v16 = a2[18];
  sub_10000CF78(a2 + 15, v16);
  sub_1000FF02C(v16);
  sub_10076D40C();
  v18 = v17;
  v15(v11, v8);
  v19 = a2[28];
  sub_10000CF78(a2 + 25, v19);
  sub_1000FF02C(v19);
  sub_10076D40C();
  v21 = v20;
  v15(v11, v8);
  sub_10000A570((a2 + 30), v41);
  LOBYTE(v19) = *(v32 + 32);
  v22 = *(v32 + 16);
  v31 = *v32;
  v32 = v22;
  sub_10000A570((a2 + 40), &v44);
  sub_10000A570((a2 + 45), &v45);
  v40[0] = v18;
  v40[1] = v14;
  v40[2] = v21;
  v40[3] = v14;
  v42 = v32;
  *&v41[40] = v31;
  v43 = v19;
  sub_100202CC0(v40, v36);
  sub_10000A570((a2 + 60), &v37);
  sub_10000A570((a2 + 65), &v38);
  sub_10000A570((a2 + 70), &v39);
  v23 = a2[13];
  sub_10000CF78(a2 + 10, v23);
  sub_1000FF02C(v23);
  sub_10076D40C();
  v25 = v24;
  v15(v11, v8);
  sub_100203024(a1, v36, a3, a4);
  v27 = a4 - v25 - v26;
  sub_100102958((a2 + 50), &v33);
  if (v34)
  {
    sub_100012498(&v33, v35);
    sub_10000CF78(v35, v35[3]);
    sub_10076D2BC();
    v29 = v28;
    sub_10020332C(v36);
    sub_100203380(v40);
    v27 = v27 - v29;
    sub_10000CD74(v35);
  }

  else
  {
    sub_10020332C(v36);
    sub_100203380(v40);
    sub_10000CFBC(&v33, &unk_10094DA00, &qword_100783FA0);
  }

  return v27;
}

double sub_1002029F4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 80);
  v20 = *(a2 + 96);
  v21 = v12;
  sub_10000A570(a2 + 112, v30);
  v13 = *(a2 + 152);
  v18 = *(a2 + 168);
  v19 = v13;
  sub_10000A570(a2 + 184, &v32);
  sub_10000A570(a2 + 224, &v33);
  v29[1] = v20;
  v29[0] = v21;
  v31 = v18;
  *&v30[40] = v19;
  sub_1002033D4(v29, v25);
  sub_10000A570(a2 + 344, &v26);
  sub_10000A570(a2 + 384, &v27);
  sub_10000A570(a2 + 424, &v28);
  v14 = *(a2 + 24);
  sub_10000CF78(a2, v14);
  sub_1000FF02C(v14);
  sub_10076D40C();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_100202D1C(a1, v25, a3, a4);
  sub_100102958(a2 + 264, &v22);
  if (v23)
  {
    sub_100012498(&v22, v24);
    sub_10000CF78(v24, v24[3]);
    sub_10076D2BC();
    sub_10000CD74(v24);
  }

  else
  {
    sub_10000CFBC(&v22, &unk_10094DA00, &qword_100783FA0);
  }

  v16 = *(a2 + 64);
  sub_10000CF78((a2 + 40), v16);
  sub_1000FF02C(v16);
  sub_10076D40C();
  v15(v11, v8);
  sub_100203430(v25);
  sub_100203484(v29);
  return a3;
}

double sub_100202D1C(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 23, a2[26]);
  sub_10076D2BC();
  v10 = a2[21];
  sub_10000CF78(a2 + 18, v10);
  sub_1000FF02C(v10);
  sub_10076D40C();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_10000CF78(a2 + 28, a2[31]);
  if ((sub_10076D24C() & 1) == 0)
  {
    v12 = a2[7];
    sub_10000CF78(a2 + 4, v12);
    sub_1000FF02C(v12);
    sub_10076D40C();
    v11(v9, v6);
  }

  sub_10000CF78(a2 + 33, a2[36]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a2 + 33, a2[36]);
    sub_10076D2BC();
  }

  sub_10000CF78(a2 + 28, a2[31]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a2 + 33, a2[36]);
    if ((sub_10076D24C() & 1) == 0)
    {
      v13 = a2[16];
      sub_10000CF78(a2 + 13, v13);
      sub_1000FF02C(v13);
      sub_10076D40C();
      v11(v9, v6);
    }
  }

  return a3;
}

double sub_100203024(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 24, a2[27]);
  sub_10076D2BC();
  v10 = a2[22];
  sub_10000CF78(a2 + 19, v10);
  sub_1000FF02C(v10);
  sub_10076D40C();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_10000CF78(a2 + 29, a2[32]);
  if ((sub_10076D24C() & 1) == 0)
  {
    v12 = a2[7];
    sub_10000CF78(a2 + 4, v12);
    sub_1000FF02C(v12);
    sub_10076D40C();
    v11(v9, v6);
  }

  sub_10000CF78(a2 + 34, a2[37]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a2 + 34, a2[37]);
    sub_10076D2BC();
  }

  sub_10000CF78(a2 + 29, a2[32]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a2 + 34, a2[37]);
    if ((sub_10076D24C() & 1) == 0)
    {
      v13 = a2[17];
      sub_10000CF78(a2 + 14, v13);
      sub_1000FF02C(v13);
      sub_10076D40C();
      v11(v9, v6);
    }
  }

  return a3;
}

uint64_t MetadataRibbonTagViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v0 = sub_100768FCC();

  return sub_10000A61C(v0, static MetadataRibbonTagViewLayout.Metrics.standard);
}

char *sub_10020353C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100768FCC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics;
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, static MetadataRibbonTagViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_itemType;
  v20 = sub_1007668DC();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel] = sub_10076269C();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel];
  sub_1000325F0();
  v30 = v29;
  v31 = sub_100770D1C();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics], v11);
  v33 = v32;
  v34 = sub_100768FBC();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v36 = sub_10076715C();
  v37 = sub_10000A61C(v36, qword_10099CE38);
  v41[3] = v36;
  v41[4] = sub_10018CD1C();
  v38 = sub_10000DB7C(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  sub_1007625FC();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_10020396C()
{
  ObjectType = swift_getObjectType();
  v18 = sub_10076D1FC();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100768FCC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100768FDC();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel];
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics], v5);
  v14 = v13;
  sub_100768F7C();
  sub_10076422C();
  sub_100768F9C();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

double sub_100203F00(uint64_t a1)
{
  sub_10076438C();
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_tagLabel];
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  [v1 setNeedsLayout];

  return result;
}

uint64_t sub_100203F94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318, &qword_100799480);
}

uint64_t sub_100203FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318, &qword_100799480);
  return swift_endAccess();
}

void sub_1002040D8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1002041A4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_100204264()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1002042A8(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100204358@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310, &unk_100784150);
}

uint64_t sub_1002043C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310, &unk_100784150);
  return swift_endAccess();
}

uint64_t sub_100204490()
{
  v0 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_100768FCC();
  sub_10000DB18(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10000A61C(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FECC();
  sub_100768FAC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonTagViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v2 = sub_100768FCC();
  v3 = sub_10000A61C(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonTagView(uint64_t a1)
{
  result = qword_10094DA48;
  if (!qword_10094DA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002046CC(uint64_t a1)
{
  sub_100768FCC();
  if (v1 <= 0x3F)
  {
    sub_100038324(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002047C0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_metrics;
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v2 = sub_100768FCC();
  v3 = sub_10000A61C(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_itemType;
  v6 = sub_1007668DC();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonTagView_allowsTruncation) = 2;
  sub_10077156C();
  __break(1u);
}

double sub_100204940(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = sub_100768FCC();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100768FDC();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076DA7C();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076DD3C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_10093FAD0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10076DD2C();
  sub_10076D84C();
  v30 = v4;
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v21 = sub_10076715C();
  v22 = sub_10000A61C(v21, qword_10099CE38);
  v41[3] = v21;
  v41[4] = sub_10018CD1C();
  v23 = sub_10000DB7C(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  sub_10076DC8C();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_10000CD74(v41);
  sub_100768FBC();
  sub_10076DD1C();
  v24(v16, v10);
  sub_10076438C();
  (*(v11 + 16))(v16, v19, v10);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v31 + 8))(v9, v32);
  sub_10000A570(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  sub_100768F7C();
  sub_100768F8C();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_10000CD74(v41);
  v24(v19, v10);
  return v27;
}

uint64_t sub_100204E34()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v5 = swift_allocObject();
  v28 = xmmword_1007841E0;
  *(v5 + 16) = xmmword_1007841E0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x80000001007D9A80;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_1002057F8;
  *(v7 + 112) = v6;
  v8 = v0;

  sub_10075DDAC();
  v9 = sub_10075DD8C();
  v11 = v10;
  v12 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v12;
  v12(v4, v1);
  v31 = v9;
  v32 = v11;
  sub_10077140C();

  *(v5 + 32) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13;
  v27 = v13;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  *(v14 + 32) = sub_1005BF804(0xD000000000000018, 0x80000001007D9AA0, 0, 0, sub_100205188, 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100785D70;
  type metadata accessor for DebugSection();
  v16 = swift_allocObject();
  sub_10075DDAC();
  v17 = sub_10075DD8C();
  v19 = v18;
  v20 = v30;
  v30(v4, v1);
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = 0x42206F54206B7341;
  v16[5] = 0xEA00000000007975;
  v16[6] = v5;
  *(v15 + 32) = v16;
  v21 = swift_allocObject();
  sub_10075DDAC();
  v22 = sub_10075DD8C();
  v24 = v23;
  v20(v4, v1);
  v21[2] = v22;
  v21[3] = v24;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x80000001007D9AC0;
  v21[6] = v27;
  *(v15 + 40) = v21;
  return v15;
}

void sub_100205188(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        sub_10039F52C(a2, a3, 10);
        v9 = v37;
        v39 = v38;

        if (v39)
        {
          return;
        }

        goto LABEL_64;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v40 = a2;
        v41 = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v19 = &v40 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v21 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  break;
                }

                ++v19;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v24 = &v40;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v24 = (v24 + 1);
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v13 = &v40 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_1007714BC();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v16 = v7 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_62;
                  }

                  v18 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v9 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_62;
                  }

                  ++v16;
                  if (!--v4)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v22 = *v7 - 48;
                if (v22 > 9)
                {
                  goto LABEL_62;
                }

                v23 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v9 = 0;
          LOBYTE(v4) = 1;
LABEL_63:
          v42 = v4;
          if (v4)
          {
            return;
          }

LABEL_64:
          v27 = objc_opt_self();
          v28 = [v27 treatmentOverrides];
          if (v28)
          {
            v29 = v28;
            v30 = sub_10076FE4C();
          }

          else
          {
            v30 = sub_1000FD520(_swiftEmptyArrayStorage);
          }

          v40 = 0x62734435625378;
          v41 = 0xE700000000000000;
          sub_10000A5D4(&qword_100966CF0, qword_100795350);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_100783DD0;
          *(v31 + 56) = &type metadata for Int;
          *(v31 + 64) = &protocol witness table for Int;
          *(v31 + 32) = v9;
          v43._countAndFlagsBits = sub_10076FFCC();
          sub_1007700CC(v43);

          v32 = v40;
          v33 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = v30;
          sub_10024A448(v32, v33, 0x6D4B3562504E66, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          isa = sub_10076FE3C().super.isa;

          [v27 setTreatmentOverrides:isa];

          return;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_62;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v4) = 0;
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

void sub_1002055E8(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_10076A3DC();
  sub_10000A5D4(&unk_100947120, &unk_100789380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  sub_10076A3EC();
  sub_10077140C();
  v5 = sub_10076B96C();
  *(inited + 96) = v5;
  v6 = sub_10000DB7C((inited + 72));
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  sub_1000FCED4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B20, &qword_10078B500);
  isa = sub_10076FE3C().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

id sub_100205768()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductPageSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002057C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10020581C()
{
  v0 = sub_10000A5D4(&qword_100942A80, &unk_1007B5CE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_10076B96C();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong presentingViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v12 selectedViewController];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        v11 = v13;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v30 = [v15 presentingViewController];

  if (!v30)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v30 = v14;
  v17 = [v14 topViewController];
  if (!v17)
  {
LABEL_14:
    v19 = v30;
LABEL_16:

    return;
  }

  v28 = v17;
  type metadata accessor for ProductDiffablePageViewController(0);
  if (!swift_dynamicCastClass())
  {

    v19 = v28;
    goto LABEL_16;
  }

  sub_1007695BC();

  v18 = v29;
  if ((*(v29 + 48))(v2, 1, v3) == 1)
  {

    sub_10000CFBC(v2, &qword_100942A80, &unk_1007B5CE0);
    return;
  }

  v27 = *(v18 + 32);
  v27(v8, v2, v3);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 presentingViewController];

    if (v22)
    {
      v23 = v29;
      (*(v29 + 16))(v5, v8, v3);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v27((v25 + v24), v5, v3);
      aBlock[4] = sub_100205D6C;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088D0A0;
      v26 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:1 completion:v26];
      _Block_release(v26);

      (*(v23 + 8))(v8, v3);
      return;
    }

    (*(v29 + 8))(v8, v3);
  }

  else
  {
    (*(v18 + 8))(v8, v3);
  }
}

uint64_t sub_100205CE4()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100205D6C()
{
  v1 = *(sub_10076B96C() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1002055E8(v2);
}

double sub_100205DCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100205DE4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  *&v38 = 0x4044000000000000;
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A1078);
  v6 = *(v4 - 8);
  v25 = *(v6 + 16);
  v26 = v6 + 16;
  v21 = v5;
  v22 = v4;
  v25(v3, v5, v4);
  v7 = enum case for FontSource.useCase(_:);
  v24 = v1[13];
  v20 = enum case for FontSource.useCase(_:);
  v24(v3, enum case for FontSource.useCase(_:), v0);
  v27 = sub_10076D9AC();
  v36 = v27;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v32);
  v23 = v1[2];
  v23(v8, v3, v0);
  sub_10076D9BC();
  v19 = v1[1];
  v19(v3, v0);
  v9 = v4;
  v10 = v25;
  v25(v3, v5, v9);
  v11 = v7;
  v12 = v24;
  v24(v3, v11, v0);
  v33 = v27;
  v34 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v32);
  v30 = v0;
  v31 = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v29);
  v14 = v23;
  v23(v13, v3, v0);
  sub_10076D9BC();
  v15 = v19;
  v19(v3, v0);
  v10(v3, v21, v22);
  v12(v3, v20, v0);
  v30 = v27;
  v31 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v29);
  v28[3] = v0;
  v28[4] = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v28);
  v14(v16, v3, v0);
  sub_10076D9BC();
  v15(v3, v0);
  unk_10094DB08 = 0u;
  qword_10094DB18 = 0;
  xmmword_10094DAF8 = 0u;
  sub_10003F19C(&v38, &unk_10094DA80);
  sub_10003F19C(&v35, &unk_10094DAA8);
  sub_10003F19C(&v32, &unk_10094DAD0);
  return sub_100206B8C(v29, &xmmword_10094DAF8);
}

char *sub_1002061F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label;
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v14, qword_1009A1078);
  (*(v15 + 16))(v17, v19, v14);
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v18] = sub_10050BDFC(v17, 0, 0, 1);
  v21 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider;
  v22 = type metadata accessor for DividerView(0);
  *&v5[v21] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider;
  v30 = qword_100940950;
  v31 = *&v28[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v11, qword_1009A0A20);
  sub_100206DD0(v32, v13);
  v33 = &v31[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v13, v33);
  swift_endAccess();
  v34 = &v31[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v35 = *(v33 + 1);
  *v34 = *v33;
  *(v34 + 1) = v35;
  [v31 setNeedsLayout];
  [v31 setNeedsLayout];

  sub_100206E98(v13);
  v36 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider;
  v37 = *&v28[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider];
  sub_100206DD0(v32, v13);
  v38 = &v37[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  v39 = v37;
  sub_100206E34(v13, v38);
  swift_endAccess();
  v40 = &v39[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v41 = *(v38 + 1);
  *v40 = *v38;
  *(v40 + 1) = v41;
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  sub_100206E98(v13);
  v42 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label;
  [*&v28[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label] setTextAlignment:1];
  [v28 addSubview:*&v28[v29]];
  [v28 addSubview:*&v28[v36]];
  [v28 addSubview:*&v28[v42]];

  return v28;
}

uint64_t sub_10020666C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = sub_10076D1FC();
  v3 = *(v20 - 8);
  *&v4 = __chkstk_darwin(v20).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v4);
  if (qword_10093FAD8 != -1)
  {
    swift_once();
  }

  sub_1000367B4(&unk_10094DA80, v21);
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider];
  v8 = type metadata accessor for DividerView(0);
  v21[23] = v8;
  v21[24] = &protocol witness table for UIView;
  v21[20] = v7;
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label];
  v21[28] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v21[29] = &protocol witness table for UILabel;
  v21[25] = v9;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider];
  v21[33] = v8;
  v21[34] = &protocol witness table for UIView;
  v21[30] = v10;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  sub_10076422C();
  LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(v1, v14, v15, v16, v17);
  (*(v3 + 8))(v6, v20);
  return sub_100036810(v21);
}

double sub_100206880(uint64_t a1, double a2, double a3)
{
  if (qword_10093FAD8 != -1)
  {
    swift_once();
  }

  sub_1000367B4(&unk_10094DA80, v16);
  v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider);
  v8 = type metadata accessor for DividerView(0);
  v16[23] = v8;
  v16[24] = &protocol witness table for UIView;
  v16[20] = v7;
  v9 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label);
  v16[28] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16[29] = &protocol witness table for UILabel;
  v16[25] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider);
  v16[33] = v8;
  v16[34] = &protocol witness table for UIView;
  v16[30] = v10;
  swift_getObjectType();
  v11 = v7;
  v12 = v9;
  v13 = v10;
  v14 = sub_1007561B8(a1, v16, a2, a3);
  sub_100036810(v16);
  return v14;
}

double sub_100206A58(uint64_t a1, double a2)
{
  type metadata accessor for DividerView(0);
  if (qword_100940950 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DividerView.Style(0);
  v5 = sub_10000A61C(v4, qword_1009A0A20);
  swift_getObjectType();
  sub_1005AA920(v5, a1);
  return a2;
}

uint64_t sub_100206B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943240, &qword_10078AFB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100206BFC()
{
  v1 = v0;
  v2 = sub_10076D3DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label;
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v2, qword_1009A1078);
  (*(v3 + 16))(v5, v7, v2);
  v8 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *(v1 + v6) = sub_10050BDFC(v5, 0, 0, 1);
  v9 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_topDivider;
  v10 = type metadata accessor for DividerView(0);
  *(v1 + v9) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_bottomDivider;
  *(v1 + v11) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100206DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206E98(uint64_t a1)
{
  v2 = type metadata accessor for DividerView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100206EF4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100206F0C(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100206F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100206F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100207000(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100207014(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100207034(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

void *sub_10020707C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>, double a4@<D1>)
{
  v5 = v4;
  v117 = a1;
  v7 = a3.n128_f64[0];
  v126 = a2;
  v8 = sub_10076D65C();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v122 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v113 - v11;
  __chkstk_darwin(v12);
  v120 = &v113 - v13;
  v130 = sub_10076DFEC();
  v14 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v132 = (&v113 - v17);
  __chkstk_darwin(v18);
  v131 = (&v113 - v19);
  __chkstk_darwin(v20);
  v22 = (&v113 - v21);
  __chkstk_darwin(v23);
  v25 = (&v113 - v24);
  v133 = sub_10076DFFC();
  v125 = *(v133 - 8);
  __chkstk_darwin(v133);
  v123 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v119 = &v113 - v29;
  v30 = *(v4 + 18);
  v31 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v32 = [*&v30[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] hasContent];
  v124 = v30;
  if (v32 && ([v30 isHidden] & 1) == 0)
  {
    v129 = [*&v30[v31] isHidden];
  }

  else
  {
    v129 = 1;
  }

  v33 = *(v5 + 6);
  v34 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  if ([*&v33[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] hasContent] && (objc_msgSend(*&v33[v34], "isHidden") & 1) == 0)
  {
    v35 = [v33 isHidden];
  }

  else
  {
    v35 = 1;
  }

  sub_100102958((v5 + 104), &v138);
  if (*(&v139 + 1))
  {
    sub_100012498(&v138, v147);
    sub_10000CF78(v147, v148);
    sub_10076D2DC();
    v36 = *(v5 + 1);
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v36;
    v37 = enum case for Resize.Rule.replaced(_:);
    v38 = *(v14 + 13);
    v39 = v130;
    v38(v25, enum case for Resize.Rule.replaced(_:), v130);
    v40 = *(v5 + 2);
    *(v22 + 3) = &type metadata for CGFloat;
    *(v22 + 4) = &protocol witness table for CGFloat;
    *v22 = v40;
    v38(v22, v37, v39);
    v41 = enum case for Resize.Rule.unchanged(_:);
    v38(v131, enum case for Resize.Rule.unchanged(_:), v39);
    v38(v132, v41, v39);
    v42 = v119;
    sub_10076E00C();
    v43 = v118;
    sub_10076D63C();
    v44 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v45 = sub_10000DB7C(&v138);
    v46 = v5;
    v47 = v125;
    (*(v125 + 16))(v45, v42, v44);
    v48 = v120;
    sub_10076D64C();
    v49 = v128;
    v50 = *(v127 + 8);
    v50(v43, v128);
    sub_10000CD74(&v138);
    v136[0] = v124;
    type metadata accessor for TodayTransitioningLabelView();
    sub_10076D2DC();
    sub_100208138(v46, &v138);
    v51 = swift_allocObject();
    v52 = v145;
    *(v51 + 112) = v144;
    *(v51 + 128) = v52;
    *(v51 + 144) = v146[0];
    *(v51 + 153) = *(v146 + 9);
    v53 = v141;
    *(v51 + 48) = v140;
    *(v51 + 64) = v53;
    v54 = v143;
    *(v51 + 80) = v142;
    *(v51 + 96) = v54;
    v55 = v139;
    *(v51 + 16) = v138;
    *(v51 + 32) = v55;
    *(v51 + 169) = v129;
    v56 = v126;
    v126[3] = v49;
    v56[4] = &protocol witness table for VerticalStack;
    sub_10000DB7C(v56);
    sub_10076D64C();

    sub_10000CD74(v137);
    v50(v48, v49);
    (*(v47 + 8))(v42, v44);
    return sub_10000CD74(v147);
  }

  sub_1001029C8(&v138);
  LODWORD(v114) = v35;
  sub_10076D63C();
  v137[0] = v33;
  v119 = type metadata accessor for TodayTransitioningLabelView();
  sub_10076D2DC();
  *(v25 + 3) = &type metadata for CGFloat;
  *(v25 + 4) = &protocol witness table for CGFloat;
  *v25 = v7;
  v58 = *(v14 + 13);
  v115 = enum case for Resize.Rule.replaced(_:);
  v59 = v130;
  v58(v25);
  v118 = v14;
  v120 = v5;
  v60 = v22;
  v61 = enum case for Resize.Rule.unchanged(_:);
  (v58)(v60, enum case for Resize.Rule.unchanged(_:), v59);
  (v58)(v131, v61, v59);
  v116 = v61;
  v62 = v61;
  v63 = v60;
  (v58)(v132, v62, v59);
  *(&v139 + 1) = v133;
  *&v140 = &protocol witness table for Resize;
  sub_10000DB7C(&v138);
  sub_10076E00C();
  v64 = swift_allocObject();
  v65 = v120;
  *(v64 + 16) = v114;
  sub_10076D5FC();

  sub_10000CD74(&v138);
  sub_100208138(v65, &v138);
  v66 = swift_allocObject();
  v67 = v145;
  v66[7] = v144;
  v66[8] = v67;
  v66[9] = v146[0];
  *(v66 + 153) = *(v146 + 9);
  v68 = v141;
  v66[3] = v140;
  v66[4] = v68;
  v69 = v143;
  v66[5] = v142;
  v66[6] = v69;
  v70 = v139;
  v66[1] = v138;
  v66[2] = v70;
  v71 = v121;
  *v121 = sub_100208170;
  v71[1] = v66;
  (v58)(v71, enum case for Resize.Rule.recalculated(_:), v59);
  v72 = v129 | ~*(v65 + 152);
  v114 = *(v65 + 56);
  v147[0] = v114;
  if (v72)
  {
    sub_10076D2DC();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v7;
    (v58)(v25, v115, v59);
    v73 = v116;
    (v58)(v63, v116, v59);
    (v58)(v131, v73, v59);
  }

  else
  {
    sub_10076D2DC();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v7;
    (v58)(v25, v115, v59);
    (*(v118 + 2))(v63, v71, v59);
    v73 = v116;
    (v58)(v131, v116, v59);
  }

  (v58)(v132, v73, v59);
  v74 = v123;
  sub_10076E00C();
  v75 = v120;
  v76 = v122;
  v77 = v133;
  if (v120[40])
  {
    v148 = v133;
    v149 = &protocol witness table for Resize;
    v78 = sub_10000DB7C(v147);
    v79 = v125;
    (*(v125 + 16))(v78, v74, v77);
    sub_100208138(v75, &v138);
    v80 = swift_allocObject();
    v81 = v145;
    v80[7] = v144;
    v80[8] = v81;
    v80[9] = v146[0];
    *(v80 + 153) = *(v146 + 9);
    v82 = v141;
    v80[3] = v140;
    v80[4] = v82;
    v83 = v143;
    v80[5] = v142;
    v80[6] = v83;
    v84 = v139;
    v80[1] = v138;
    v80[2] = v84;
    sub_10076D5FC();

    sub_10000CD74(v147);
    v85 = v130;
    v86 = v121;
LABEL_21:
    v137[0] = v124;
    sub_10076D2DC();
    sub_100208138(v75, &v138);
    v105 = swift_allocObject();
    v106 = v145;
    *(v105 + 112) = v144;
    *(v105 + 128) = v106;
    *(v105 + 144) = v146[0];
    *(v105 + 153) = *(v146 + 9);
    v107 = v141;
    *(v105 + 48) = v140;
    *(v105 + 64) = v107;
    v108 = v143;
    *(v105 + 80) = v142;
    *(v105 + 96) = v108;
    v109 = v139;
    *(v105 + 16) = v138;
    *(v105 + 32) = v109;
    *(v105 + 169) = v129;
    sub_10076D5FC();

    sub_10000CD74(v147);
    v110 = v128;
    v111 = v126;
    v126[3] = v128;
    v111[4] = &protocol witness table for VerticalStack;
    v112 = sub_10000DB7C(v111);
    (*(v127 + 32))(v112, v76, v110);
    (*(v79 + 8))(v123, v77);
    return (*(v118 + 1))(v86, v85);
  }

  v87 = *(v120 + 4);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1007841E0;
  v89 = v117;
  *(v88 + 32) = v117;
  v90 = v89;
  v91 = sub_10076DEEC();
  [v114 measurementsWithFitting:v91 in:{v7, a4}];
  v93 = v92;

  sub_10000CF78((v75 + 64), *(v75 + 88));
  result = sub_10076D6FC();
  v86 = v121;
  if (result)
  {
    v94 = result;
    [result lineHeight];
    v96 = v95;

    if (v96 * v87 - v93 < 0.0)
    {
      v97 = 0.0;
    }

    else
    {
      v97 = v96 * v87 - v93;
    }

    v77 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v98 = sub_10000DB7C(&v138);
    v79 = v125;
    (*(v125 + 16))(v98, v123, v77);
    v137[3] = &type metadata for CGFloat;
    v137[4] = &protocol witness table for CGFloat;
    *v137 = v97;
    v99 = sub_10076D67C();
    v136[3] = v99;
    v136[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v136);
    sub_10076D66C();
    v135[3] = v99;
    v135[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v135);
    sub_10076D66C();
    v134[3] = v99;
    v134[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v134);
    sub_10076D66C();
    v148 = sub_10076E04C();
    v149 = &protocol witness table for Margins;
    sub_10000DB7C(v147);
    sub_10076E05C();
    sub_100208138(v75, &v138);
    v100 = swift_allocObject();
    v101 = v145;
    v100[7] = v144;
    v100[8] = v101;
    v100[9] = v146[0];
    *(v100 + 153) = *(v146 + 9);
    v102 = v141;
    v100[3] = v140;
    v100[4] = v102;
    v103 = v143;
    v100[5] = v142;
    v100[6] = v103;
    v104 = v139;
    v100[1] = v138;
    v100[2] = v104;
    sub_10076D5FC();

    sub_10000CD74(v147);
    v85 = v130;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100207E9C(uint64_t a1, uint64_t *a2)
{
  sub_10076D5BC();
  sub_10000CF78(a2 + 8, a2[11]);
  if (sub_10076D20C())
  {
    [a2[7] isHidden];
  }

  return sub_10076D5AC();
}

double sub_100207FA0(void *a1, __n128 a2, double a3)
{
  sub_10020707C(a1, v6, a2, a3);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0FC();
  v4 = v3;
  sub_10000CD74(v6);
  return v4;
}

uint64_t sub_100208044(void *a1, __n128 a2, double a3, double a4, double a5)
{
  a2.n128_f64[0] = a4;
  sub_10020707C(a1, v6, a2, a5);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0EC();
  return sub_10000CD74(v6);
}

__n128 sub_1002080E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1002081B8(uint64_t a1)
{
  sub_10000CD74((v1 + 80));
  if (*(v1 + 144))
  {
    sub_10000CD74((v1 + 120));
  }

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100208298(void *a1)
{
  v2 = v1;
  v4 = sub_10076B21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B23C();
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset];
  v9 = v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_wantsBackgroundExtension];
  v10 = [v2 traitCollection];
  if (a1)
  {
    v11 = [a1 tabBarController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 tabBar];

      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v47.origin.x = v15;
      v47.origin.y = v17;
      v47.size.width = v19;
      v47.size.height = v21;
      Height = CGRectGetHeight(v47);
    }

    else
    {
      Height = 0.0;
    }

    v24 = [a1 view];
    if (v24)
    {
      v25 = v24;
      [v24 bounds];
      v27 = v26;
      v29 = v28;

      v30 = [a1 view];
      if (v30)
      {
        v31 = v30;
        if (v29 - v8 - Height < 0.0)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = v29 - v8 - Height;
        }

        a1 = v27;
        [v30 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v48.origin.x = v33;
        v48.origin.y = v35;
        v48.size.width = v37;
        v48.size.height = v39;
        CGRectGetWidth(v48);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (0.0 - v8 < 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.0 - v8;
  }

LABEL_14:
  sub_10020B56C(v10, v7, v9, a1, *&v23, 0);

  (*(v5 + 8))(v7, v4);
  v40 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView];
  v41 = [*&v40[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] text];
  if (v41)
  {
    v42 = v41;
    sub_10076FF9C();
  }

  v43 = sub_10077002C();

  if ((v43 & 1) == 0 || *&v40[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView])
  {
    [v2 frame];
    [v40 sizeThatFits:{v44, v45}];
  }
}

id sub_1002085F0(void *a1)
{
  v2 = v1;
  v4 = sub_10076B21C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 tabBarController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 tabBar];

      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      Height = CGRectGetHeight(v31);
    }

    else
    {
      Height = 0.0;
    }

    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    [result bounds];
    v26 = v25;
    v22 = v27;

    v21 = v26;
  }

  else
  {
    v21 = 0;
    v22 = 0.0;
    Height = 0.0;
  }

  if (v22 - *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] - Height < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v22 - *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] - Height;
  }

  v29 = [v2 traitCollection];
  sub_10076B23C();
  sub_10020B56C(v29, v8, v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_wantsBackgroundExtension], v21, *&v28, 0);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10020882C()
{
  v0 = sub_10000A5D4(&qword_10094DC30, &qword_1007955C8);
  sub_10000DB18(v0, qword_10094DB70);
  sub_10000A61C(v0, qword_10094DB70);
  return sub_10075FE8C();
}

char *sub_1002088B0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v59 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v59);
  v60 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076B21C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &ObjectType - v12;
  v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_isRubberbanding] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentBottomInset] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem] = 0;
  v14 = &v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
  *v14 = 0;
  v14[1] = 0;
  sub_10076B23C();
  (*(v8 + 104))(v10, enum case for Uber.Style.above(_:), v7);
  sub_10020B8F0(&qword_10094DC28, 255, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  sub_10077018C();
  sub_10077018C();
  if (v65 != v64)
  {
    v17 = sub_10077167C();
    v18 = *(v8 + 8);
    v18(v10, v7);
    v18(v13, v7);

    v16 = v58;
    if ((v17 & 1) == 0 || (v58 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v19 = 0;
    v20 = 0x404E000000000000;
    goto LABEL_8;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = v58;
  if (v58)
  {
    goto LABEL_6;
  }

LABEL_7:
  v20 = 0;
  v19 = 1;
LABEL_8:
  v21 = v61;
  v65 = v20;
  v66 = 0;
  v67 = 0;
  v68 = v19;
  v22 = type metadata accessor for MediaView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x4008000000000000;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0x4049000000000000;
  v24 = objc_allocWithZone(type metadata accessor for UberContentContainer());
  *&v23[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = sub_100453600(&v65);
  v63.receiver = v23;
  v63.super_class = v22;
  v25 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 setClipsToBounds:1];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] = v25;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] = [objc_allocWithZone(type metadata accessor for TitleHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_uber] = a1;
  v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_wantsBackgroundExtension] = v16 & 1;
  v62.receiver = v4;
  v62.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v26 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v27 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView]];
  v28 = *&v26[v27];
  v29 = sub_1003BBB08(v21);
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer];
  v31 = *(v30 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  *(v30 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = v29;
  v32 = v29;
  sub_100453A30(v31);

  sub_1004526E4();
  v33 = objc_opt_self();
  v34 = [v33 clearColor];
  [v26 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView;
  v36 = *&v26[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100785D70;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v38 = v36;
  *(v37 + 32) = sub_100770E4C(0.0, 0.0, 0.0, 0.4);
  *(v37 + 40) = sub_100770E4C(0.0, 0.0, 0.0, 0.0);
  *&v38[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v37;

  sub_1001C05B8();

  v39 = *&v26[v35];
  v40 = [v39 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

  v41 = *&v26[v35];
  v42 = [v41 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  [v26 addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
  v44 = qword_100940890;
  v45 = *&v26[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10000A61C(v59, qword_1009A0830);
  v47 = v60;
  sub_1001162A4(v46, v60, v48);
  (*((swift_isaMask & *v45) + 0x1C8))(v47);

  v49 = *&v26[v43];
  v50 = &v49[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines];
  *v50 = sub_1002091B8;
  v50[1] = 0;
  v51 = v49;

  [*&v51[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] setNumberOfLines:2];

  [*(*&v26[v43] + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) setAllowsDefaultTighteningForTruncation:1];
  v52 = *&v26[v43];
  v53 = [v33 clearColor];
  [v52 setBackgroundColor:v53];

  v54 = *&v26[v43];
  [v26 addSubview:v54];

  if (*(*(*&v26[v27] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v55 = swift_dynamicCastClass();
    if (v55)
    {
      *(v55 + qword_1009602C8 + 8) = &off_10088D2D8;
      swift_unknownObjectWeakAssign();
    }
  }

  return v26;
}

id sub_1002091F4()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10076FF6C();
    [v3 removeObserver:v0 forKeyPath:v4 context:&unk_10094DB60];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_100209360(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView];
  v6 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  v7 = [*(v5 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v9 = v7;
    v10 = sub_10076FF9C();
    v12 = v11;

    if (!a2)
    {
      if (!v12)
      {
        return result;
      }

      v15 = *(v5 + v6);
      v16 = 0;
      goto LABEL_14;
    }

    if (v12)
    {
      if (v10 == a1 && v12 == a2)
      {

LABEL_20:

        return result;
      }

      v14 = sub_10077167C();

      if (v14)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v15 = *(v5 + v6);
  v16 = sub_10076FF6C();

LABEL_14:
  [v15 setText:v16];

  [v2 invalidateIntrinsicContentSize];
  v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
  if (v17)
  {
    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver + 8];

    v17(v19);

    return sub_1000167E0(v17, v18);
  }

  return result;
}

void (*sub_100209528(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1002095C8;
}

void sub_1002095C8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_10020B8F0(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v8 = v4;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v16 = v3;
    sub_100453A30(v15);

    if (v3)
    {
      *&v16[qword_1009602C8 + 8] = &off_10088D2D8;
      swift_unknownObjectWeakAssign();
    }

    v17 = *a1;
    goto LABEL_17;
  }

  if (v3)
  {
    sub_10020B8F0(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v10 = v3;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v13 = v4;
      v14 = sub_100770EEC();

      if (v14)
      {
        [v10 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v18 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
  v19 = v3;
  sub_100453A30(v18);

  if (v3)
  {
    *&v19[qword_1009602C8 + 8] = &off_10088D2D8;
    swift_unknownObjectWeakAssign();
    v17 = v19;
LABEL_17:
  }
}

void sub_10020989C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setTarget:v0];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setAction:"mute"];
  }

  sub_100209924();
}

void sub_100209924()
{
  v1 = sub_10076048C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10076481C();
  v53 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1007611EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v46[-v13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v49 = v8;
  v50 = v4;
  v51 = v2;
  v16 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v17 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v18 = *(*(v16 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v18)
  {
    v52 = Strong;
    v48 = v1;
    type metadata accessor for VideoView(0);
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = *(v19 + qword_1009602F0);
      if (v20)
      {
        v47 = [v20 isMuted];
        v18 = *(*(v16 + v17) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
        v21 = v9;
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v47 = 1;
        v21 = v9;
      }

      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = v18;
        v25 = sub_10076922C();
        v26 = qword_1009A2558;
        v27 = (v53 + 16);
        v28 = (v53 + 8);
        if (v25)
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          sub_1007647CC();
        }

        else
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          sub_10076479C();
        }

        (*v28)(v7, v5);
        sub_1007611BC();
        sub_10020B8F0(&unk_1009603F0, 255, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
        v30 = v49;
        v31 = sub_10077124C();
        v32 = *(v21 + 8);
        v32(v11, v30);
        v32(v14, v30);
        v29 = 1;
        [v52 setHidden:(v31 & 1) == 0];
        goto LABEL_18;
      }

LABEL_15:
      v29 = 1;
      [v52 setHidden:1];
LABEL_18:
      v33 = v48;
      if (v47)
      {
        v34 = &enum case for SystemImage.speakerSlashFill(_:);
      }

      else
      {
        v29 = 0;
        v34 = &enum case for SystemImage.speakerWave3Fill(_:);
      }

      if (v29)
      {
        v35 = 0xD00000000000002CLL;
      }

      else
      {
        v35 = 0xD00000000000002ALL;
      }

      if (v29)
      {
        v36 = 0xD00000000000002BLL;
      }

      else
      {
        v36 = 0xD000000000000029;
      }

      if (v29)
      {
        v37 = "on.Unmute.LargeContentTitle";
      }

      else
      {
        v37 = "eExtension10MuteButton";
      }

      v39 = v50;
      v38 = v51;
      if (v29)
      {
        v40 = "on.Mute.LargeContentTitle";
      }

      else
      {
        v40 = "on.Mute.AccessibilityLabel";
      }

      (*(v51 + 104))(v50, *v34, v48);
      v41 = v52;
      v42 = sub_10076046C();
      (*(v38 + 8))(v39, v33);
      [v41 setImage:v42];

      v55._object = (v40 | 0x8000000000000000);
      v55._countAndFlagsBits = v36;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      sub_1007622EC(v55, v57);
      v43 = sub_10076FF6C();

      [v41 setTitle:v43];

      v44 = v41;
      v56._object = (v37 | 0x8000000000000000);
      v56._countAndFlagsBits = v35;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      sub_1007622EC(v56, v58);
      v45 = sub_10076FF6C();

      [v44 setAccessibilityLabel:v45];

      return;
    }

    Strong = v52;
  }
}

void sub_100209EF4()
{
  v1 = sub_10076688C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007668CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v9)
  {
    type metadata accessor for VideoView(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + qword_1009602F0);
      if (v12)
      {
        v13 = v9;
        v14 = v12;
        [v14 setMuted:{objc_msgSend(v14, "isMuted") ^ 1}];
        v15 = [v14 isMuted];
        [v11 updateAudioSessionCategoryWithIsAudioOn:v15 ^ 1];
        (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
        v16 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
        if (!v15)
        {
          v16 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
        }

        (*(v2 + 104))(v4, *v16, v1);
        sub_1005EFAB8(v8, v4);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

double sub_10020A1BC(uint64_t a1, NSString a2, uint64_t a3, Class a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (!a2)
  {
LABEL_10:
    sub_10003F0D4(a3, v27);
    v18 = v28;
    if (v28)
    {
      v19 = sub_10000CF78(v27, v28);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = sub_10077165C();
      (*(v20 + 8))(v23, v18);
      sub_10000CD74(v27);
      if (!a4)
      {
LABEL_13:
        v26.receiver = v5;
        v26.super_class = ObjectType;
        objc_msgSendSuper2(&v26, "observeValueForKeyPath:ofObject:change:context:", a2, v24, a4, a5);

        swift_unknownObjectRelease();
        return result;
      }
    }

    else
    {
      v24 = 0;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10020B8F0(&qword_100941C68, 255, type metadata accessor for NSKeyValueChangeKey, &unk_1007839F4);
    a4 = sub_10076FE3C().super.isa;
    goto LABEL_13;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_10077167C() & 1) == 0 || a5 != &unk_10094DB60)
  {
    a2 = sub_10076FF6C();
    goto LABEL_10;
  }

  v12 = *&v5[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem];
  if (v12 && (v12 = [v12 title]) != 0)
  {
    v13 = v12;
    v14 = sub_10076FF9C();
    v16 = v15;

    v17 = v16;
    v12 = v14;
  }

  else
  {
    v17 = 0;
  }

  return sub_100209360(v12, v17);
}

uint64_t sub_10020A5DC(void *a1, id a2)
{
  if ([a2 userInterfaceIdiom] == 1 && (v5 = objc_msgSend(a2, "horizontalSizeClass"), v5 != objc_msgSend(a1, "horizontalSizeClass")))
  {
    v9 = 1;
  }

  else
  {
    v6 = [*(*(v2 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView) + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) text];
    if (v6)
    {
      v7 = v6;
      sub_10076FF9C();
    }

    v8 = sub_10077002C();

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [a2 preferredContentSizeCategory];
      v11 = [a1 preferredContentSizeCategory];
      v12 = sub_10076FF9C();
      v14 = v13;
      if (v12 == sub_10076FF9C() && v14 == v15)
      {

        v9 = 0;
      }

      else
      {
        v16 = sub_10077167C();

        v9 = v16 ^ 1;
      }
    }
  }

  return v9 & 1;
}

void sub_10020A784(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v1 traitCollection];
    if ((sub_10020A5DC(v3, v4) & 1) != 0 && ([v1 invalidateIntrinsicContentSize], (v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver]) != 0))
    {
      v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver + 8];

      v5(v7);

      sub_1000167E0(v5, v6);
    }

    else
    {
    }
  }
}

id sub_10020A8D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076B21C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v51 - v9;
  v54.receiver = v1;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView];
  v20 = [*&v19[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] text];
  if (v20)
  {
    v21 = v20;
    sub_10076FF9C();
  }

  v22 = sub_10077002C();

  if ((v22 & 1) != 0 && !*&v19[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView])
  {
    v26 = 0.0;
    goto LABEL_8;
  }

  [v1 frame];
  [v19 sizeThatFits:{v23, v24}];
  v26 = v25;
  if (v25 <= 0.0)
  {
LABEL_8:
    [v19 setHidden:1];
    goto LABEL_9;
  }

  v55.origin.x = v12;
  v55.origin.y = v14;
  v55.size.width = v16;
  v55.size.height = v18;
  MinX = CGRectGetMinX(v55);
  v56.origin.x = v12;
  v56.origin.y = v14;
  v56.size.width = v16;
  v56.size.height = v18;
  v28 = CGRectGetMaxY(v56) - v26;
  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  [v19 setFrame:{MinX, v28, CGRectGetWidth(v57), v26}];
  [v19 setHidden:0];
LABEL_9:
  v58.origin.x = v12;
  v58.origin.y = v14;
  v58.size.width = v16;
  v58.size.height = v18;
  v29 = CGRectGetMinX(v58);
  v59.origin.x = v12;
  v59.origin.y = v14;
  v59.size.width = v16;
  v59.size.height = v18;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = v12;
  v60.origin.y = v14;
  v60.size.width = v16;
  v60.size.height = v18;
  Width = CGRectGetWidth(v60);
  v61.origin.x = v12;
  v61.origin.y = v14;
  v61.size.width = v16;
  v61.size.height = v18;
  Height = CGRectGetHeight(v61);
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView];
  [v33 setFrame:{v29, MinY, Width, Height - v26}];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10076B23C();
  (*(v4 + 104))(v6, enum case for Uber.Style.above(_:), v3);
  sub_10020B8F0(&qword_10094DC28, 255, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  sub_10077018C();
  sub_10077018C();
  if (*&v52 == v51[0] && v53 == v51[1])
  {
    v42 = *(v4 + 8);
    v42(v6, v3);
    v42(v10, v3);
  }

  else
  {
    v43 = sub_10077167C();
    v44 = *(v4 + 8);
    v44(v6, v3);
    v44(v10, v3);

    if ((v43 & 1) == 0)
    {
      return [*&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView] setHidden:1];
    }
  }

  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_legibilityGradientView];
  [v45 setHidden:0];
  if (qword_10093FAE0 != -1)
  {
    swift_once();
  }

  v46 = sub_10000A5D4(&qword_10094DC30, &qword_1007955C8);
  sub_10000A61C(v46, qword_10094DB70);
  sub_10075FE9C();
  v47 = v52;
  v62.origin.x = v35;
  v62.origin.y = v37;
  v62.size.width = v39;
  v62.size.height = v41;
  v48 = CGRectGetMinX(v62);
  v63.origin.x = v35;
  v63.origin.y = v37;
  v63.size.width = v39;
  v63.size.height = v41;
  v49 = CGRectGetMinY(v63);
  v64.origin.x = v35;
  v64.origin.y = v37;
  v64.size.width = v39;
  v64.size.height = v41;
  return [v45 setFrame:{v48, v49, CGRectGetWidth(v64), v47}];
}

id sub_10020AE90(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v11, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *(*(*&v3[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v8)
    {
      type metadata accessor for VideoView(0);
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        LOBYTE(v8) = [v7 isDescendantOfView:v9];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    [v3 bounds];
    v12.x = a2;
    v12.y = a3;
    if (!CGRectContainsPoint(v13, v12) || (swift_getObjectType(), !((swift_conformsToProtocol2() != 0) | v8 & 1)))
    {

      return 0;
    }
  }

  return v7;
}

uint64_t sub_10020B094()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_10020B104(void *a1)
{
  v2 = a1;
  sub_100454524(a1);

  if (a1)
  {
    *&v2[qword_1009602C8 + 8] = &off_10088D2D8;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t (*sub_10020B1BC(uint64_t **a1))()
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
  v2[4] = sub_100209528(v2);
  return sub_100019A4C;
}

uint64_t sub_10020B230()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10020B8F0(&qword_10094DC20, v1, type metadata accessor for UberHeaderView, &unk_100795564);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10020B2A4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10020B8F0(&qword_10094DC20, v5, type metadata accessor for UberHeaderView, &unk_100795564);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_10020B330(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v4 = v2;
  *a1 = v2;
  sub_10020B8F0(&qword_10094DC20, v3, type metadata accessor for UberHeaderView, &unk_100795564);
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10020B3EC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

void sub_10020B56C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v27[1] = a4;
  v32 = a3;
  v10 = sub_10076D39C();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_10094DC18, &unk_1007955B8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v27 - v15;
  v31 = a6;
  if (a6)
  {
    v17 = 0;
  }

  else
  {
    v17 = a5;
  }

  v30 = v17;
  v18 = sub_10077071C();
  v19 = [a1 userInterfaceIdiom];
  v20 = [a1 horizontalSizeClass];
  v21 = *(v14 + 88);
  *v16 = v18 & 1;
  *(v16 + 1) = v19;
  *(v16 + 2) = v20;
  v22 = sub_10076B21C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v16[v21], a2, v22);
  v24 = (*(v23 + 88))(&v16[v21], v22);
  if (v24 != enum case for Uber.Style.above(_:))
  {
    if (v24 == enum case for Uber.Style.inline(_:))
    {
      if (v20 == 2 && v19 == 1 && (v18 & 1) == 0 && (v31 & 1) == 0)
      {
        sub_10076D3AC();
        v25 = sub_10076D2FC();
        (*(v28 + 8))(v12, v29);
        if (v25)
        {
          v26 = [objc_opt_self() mainScreen];
          [v26 scale];
        }
      }
    }

    else
    {
      sub_10000CFBC(v16, &qword_10094DC18, &unk_1007955B8);
    }
  }
}

uint64_t sub_10020B8F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10020B938(void *a1, char a2)
{
  v4 = sub_10000A5D4(&qword_10094DC18, &unk_1007955B8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10076B21C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = enum case for Uber.Style.above(_:);
  (*(v9 + 104))(v12, enum case for Uber.Style.above(_:), v8, v10);
  v14 = sub_10077071C();
  v15 = [a1 userInterfaceIdiom];
  v16 = [a1 horizontalSizeClass];
  v17 = *(v5 + 88);
  *v7 = v14 & 1;
  *(v7 + 1) = v15;
  *(v7 + 2) = v16;
  (*(v9 + 16))(&v7[v17], v12, v8);
  v18 = (*(v9 + 88))(&v7[v17], v8);
  if (v18 == v13)
  {
    (*(v9 + 8))(v12, v8);
    if (v15 == 1 && v16 == 2)
    {
      v19 = (a2 & 1) == 0;
      result = 350.0;
      v21 = 410.0;
    }

    else
    {
      v19 = (a2 & 1) == 0;
      result = 200.0;
      v21 = 260.0;
    }

    if (!v19)
    {
      return v21;
    }

    return result;
  }

  if (v18 != enum case for Uber.Style.inline(_:))
  {
    (*(v9 + 8))(v12, v8);
    sub_10000CFBC(v7, &qword_10094DC18, &unk_1007955B8);
    return 0.0;
  }

  if (v16 == 1)
  {
    if (v14)
    {
      (*(v9 + 8))(v12, v8);
      return 480.0;
    }

    goto LABEL_19;
  }

  if (v16 != 2 || v15 != 1)
  {
LABEL_19:
    (*(v9 + 8))(v12, v8);
    return 0.0;
  }

  (*(v9 + 8))(v12, v8);
  result = 769.0;
  if ((v14 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_10020BC34()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentBottomInset) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver);
  *v1 = 0;
  v1[1] = 0;
  sub_10077156C();
  __break(1u);
}

double sub_10020BD30(__n128 a1)
{
  v55 = sub_10076172C();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10076174C();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10076997C();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v43 = &v42 - v4;
  v50 = sub_10076C38C();
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10076664C();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v16 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v17 + 8))(v19, v16);
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v20 = v43;
  (*(v13 + 8))(v15, v12);

  sub_1007633DC();
  v51 = v7;
  sub_10076331C();
  swift_getKeyPath();
  v21 = v44;
  sub_10076338C();

  sub_10076C2FC();
  (*(v46 + 8))(v21, v50);
  v22 = sub_100630CB4();
  sub_10000A570(&v70, v69);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C1AC();
  swift_dynamicCast();
  v23 = *(v62 + 16);
  v50 = v11;
  v23(v45, v11, v63);
  sub_10076FCFC();
  v24 = v20;
  sub_10076FDBC();
  sub_10076C19C();
  v25 = sub_10076C18C();
  sub_10005312C();
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D3DC();
  sub_10000A61C(v26, qword_1009A0FE8);
  v27 = [v22 traitCollection];
  v28 = sub_100770B3C();

  v29 = sub_10076C04C();
  v69[3] = v29;
  v69[4] = sub_10020C8A8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_10000DB7C(v69);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  v31 = v28;
  sub_10076C90C();
  sub_10000CD74(v69);
  v32 = v47;
  sub_10076996C();
  sub_10076994C();
  (*(v48 + 8))(v32, v49);
  if ((v25 & 2) != 0)
  {
    if (qword_10093F810 != -1)
    {
      swift_once();
    }

    [qword_10099D1C8 size];
    v33 = sub_10076DDDC();
    swift_allocObject();
    v34 = sub_10076DDBC();
    *(&v67 + 1) = v33;
    v68 = &protocol witness table for LayoutViewPlaceholder;
    *&v66 = v34;
  }

  else
  {
    v68 = 0;
    v67 = 0u;
    v66 = 0u;
  }

  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v35 = v55;
  v36 = sub_10000A61C(v55, qword_10099D1B0);
  (*(v54 + 16))(v56, v36, v35);
  sub_10000A570(v69, v65);
  sub_100102958(&v66, v64);
  v37 = v59;
  sub_10076173C();
  [v22 pageMarginInsets];
  sub_100770ACC();
  sub_10020C8A8(&qword_1009566E0, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v38 = v61;
  sub_10076D2AC();
  sub_100770AEC();
  v40 = v39;

  swift_unknownObjectRelease();
  (*(v60 + 8))(v37, v38);
  sub_10000CD74(v69);
  (*(v57 + 8))(v24, v58);
  (*(v52 + 8))(v51, v53);
  (*(v62 + 8))(v50, v63);
  sub_10000CD74(&v70);
  sub_1001029C8(&v66);

  return v40;
}