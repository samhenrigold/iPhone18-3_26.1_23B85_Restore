id sub_10057F19C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupMediaView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupMediaView(uint64_t a1)
{
  result = qword_10095D888;
  if (!qword_10095D888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10057F370(uint64_t a1)
{
  sub_10057F4D4(319);
  if (v1 <= 0x3F)
  {
    sub_10076357C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScreenshotDisplayConfiguration(319);
      if (v3 <= 0x3F)
      {
        sub_1007673CC();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10057F4D4(uint64_t a1)
{
  if (!qword_10095CE48)
  {
    sub_10000CE78(&qword_10095CE50, &unk_1007AA9B8);
    sub_10057F544();
    v1 = sub_10076E19C();
    if (!v2)
    {
      atomic_store(v1, &qword_10095CE48);
    }
  }
}

unint64_t sub_10057F544()
{
  result = qword_10095CE58;
  if (!qword_10095CE58)
  {
    sub_10000CE78(&qword_10095CE50, &unk_1007AA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095CE58);
  }

  return result;
}

void sub_10057F5B8(void *a1)
{
  sub_1005809A4();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  sub_10057E5D8();
  [v1 setNeedsLayout];
}

uint64_t (*sub_10057F648(uint64_t **a1))()
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
  v2[4] = sub_10057D530(v2);
  return sub_100019A4C;
}

uint64_t sub_10057F6B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10057F70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10057F778(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

void *sub_10057F8EC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v9 = sub_10076C41C();
  if (v9 >> 62)
  {
    v24 = v9;
    v25 = sub_10077158C();
    v9 = v24;
    if (v25)
    {
      goto LABEL_4;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    sub_10076B84C();

    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v5 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10077021C();
    }

    sub_10077025C();

LABEL_10:
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1)
  {
LABEL_11:
    v10 = sub_1007601DC();
    sub_1000F93D0(v10);
  }

LABEL_12:
  v11 = _swiftEmptyArrayStorage;
  if (a4)
  {
    return v11;
  }

  a1 = _swiftEmptyArrayStorage >> 62;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_10077158C() <= a3)
    {
      return v11;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
    return v11;
  }

  if (a3 < 0)
  {
    goto LABEL_49;
  }

  if (a1)
  {
    if (_swiftEmptyArrayStorage < 0)
    {
      a4 = _swiftEmptyArrayStorage;
    }

    else
    {
      a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_10077158C() < 0)
    {
      goto LABEL_51;
    }

    v12 = sub_10077158C();
  }

  else
  {
    v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 < a3)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0 || !a3)
  {

    if (!a1)
    {
      goto LABEL_29;
    }

LABEL_32:

    a4 = sub_10077159C();
    a1 = v16;
    a3 = v17;
    if (v17)
    {
      goto LABEL_34;
    }

LABEL_33:
    sub_1002347C8(a4, v15, a1, a3);
    v19 = v18;

LABEL_40:
    swift_unknownObjectRelease();
    return v19;
  }

  sub_10076C02C();

  v13 = 0;
  do
  {
    v14 = v13 + 1;
    sub_10077147C(v13);
    v13 = v14;
  }

  while (a3 != v14);
  if (a1)
  {
    goto LABEL_32;
  }

LABEL_29:
  a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  v15 = (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 32;
  a3 = (2 * a3) | 1;
  if ((a3 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v5 = v15;
  sub_10077169C();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = v20[2];

  if (__OFSUB__(a3 >> 1, a1))
  {
    goto LABEL_52;
  }

  if (v21 != (a3 >> 1) - a1)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v15 = v5;
    goto LABEL_33;
  }

  v22 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v11 = v22;
  if (!v22)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  return v11;
}

uint64_t sub_10057FC34(uint64_t a1)
{
  v2 = sub_10075F21C();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10095D8B0, &qword_1007ABE38);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_10000A5D4(&qword_10095D8B8, qword_1007ABE40);
  __chkstk_darwin(v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = ASKDeviceTypeGetCurrent();
  v16 = sub_10076FF9C();
  v18 = v17;
  if (v16 == sub_10076FF9C() && v18 == v19)
  {

LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  v21 = sub_10077167C();

  v22 = 0;
  if ((v21 & 1) == 0)
  {
    if (a1)
    {
      sub_100760E3C();
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 0, 1, v2);
    }

    else
    {
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 1, 1, v2);
    }

    (*(v23 + 104))(v11, enum case for AppPlatform.watch(_:), v2);
    v24(v11, 0, 1, v2);
    v26 = *(v4 + 48);
    sub_100016E2C(v14, v6, &qword_10095D8B8, qword_1007ABE40);
    sub_100016E2C(v11, &v6[v26], &qword_10095D8B8, qword_1007ABE40);
    v27 = *(v23 + 48);
    if (v27(v6, 1, v2) == 1)
    {
      sub_10000CFBC(v11, &qword_10095D8B8, qword_1007ABE40);
      sub_10000CFBC(v14, &qword_10095D8B8, qword_1007ABE40);
      if (v27(&v6[v26], 1, v2) == 1)
      {
        sub_10000CFBC(v6, &qword_10095D8B8, qword_1007ABE40);
        goto LABEL_9;
      }
    }

    else
    {
      v28 = v35;
      sub_100016E2C(v6, v35, &qword_10095D8B8, qword_1007ABE40);
      if (v27(&v6[v26], 1, v2) != 1)
      {
        v29 = v34;
        (*(v23 + 32))(v34, &v6[v26], v2);
        sub_100580AE0(&qword_10095D8C0, &type metadata accessor for AppPlatform, &protocol conformance descriptor for AppPlatform);
        v30 = v28;
        v31 = sub_10076FF1C();
        v32 = *(v23 + 8);
        v32(v29, v2);
        sub_10000CFBC(v11, &qword_10095D8B8, qword_1007ABE40);
        sub_10000CFBC(v14, &qword_10095D8B8, qword_1007ABE40);
        v32(v30, v2);
        sub_10000CFBC(v6, &qword_10095D8B8, qword_1007ABE40);
        v22 = v31 ^ 1;
        return v22 & 1;
      }

      sub_10000CFBC(v11, &qword_10095D8B8, qword_1007ABE40);
      sub_10000CFBC(v14, &qword_10095D8B8, qword_1007ABE40);
      (*(v23 + 8))(v28, v2);
    }

    sub_10000CFBC(v6, &qword_10095D8B0, &qword_1007ABE38);
    v22 = 1;
  }

  return v22 & 1;
}

uint64_t sub_10058015C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1007673CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_10095D8A8, &qword_1007ABE30);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  if ((sub_10057FC34(a1) & 1) == 0)
  {
    v20 = 0;
    return v20 & 1;
  }

  (*(v6 + 104))(v17, enum case for ScreenshotsDisplayStyle.fourScreenshots(_:), v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v18 = *(v9 + 48);
  sub_100016E2C(a2, v11, &qword_10094E260, qword_100796150);
  sub_100016E2C(v17, &v11[v18], &qword_10094E260, qword_100796150);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    sub_100016E2C(v11, v14, &qword_10094E260, qword_100796150);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v11[v18], v5);
      sub_100580AE0(&qword_10094FC90, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
      v20 = sub_10076FF1C();
      v21 = *(v6 + 8);
      v21(v8, v5);
      sub_10000CFBC(v17, &qword_10094E260, qword_100796150);
      v21(v14, v5);
      sub_10000CFBC(v11, &qword_10094E260, qword_100796150);
      return v20 & 1;
    }

    sub_10000CFBC(v17, &qword_10094E260, qword_100796150);
    (*(v6 + 8))(v14, v5);
    goto LABEL_8;
  }

  sub_10000CFBC(v17, &qword_10094E260, qword_100796150);
  if (v19(&v11[v18], 1, v5) != 1)
  {
LABEL_8:
    sub_10000CFBC(v11, &qword_10095D8A8, &qword_1007ABE30);
    v20 = 0;
    return v20 & 1;
  }

  sub_10000CFBC(v11, &qword_10094E260, qword_100796150);
  v20 = 1;
  return v20 & 1;
}

void sub_100580554(objc_class *a1, uint64_t a2)
{
  v4 = sub_10057D820();
  if (v4 >> 62)
  {
    v16 = v4;
    v17 = sub_10077158C();
    v4 = v16;
    if (v17 > a2)
    {
LABEL_3:
      v5 = (v4 + 8 * a2);
      v6 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (a2 < 0)
        {
          __break(1u);
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          v7 = v5[4];
          goto LABEL_7;
        }

        __break(1u);
        return;
      }

      v7 = sub_10077149C();
LABEL_7:
      v18 = v7;
      type metadata accessor for VideoView(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;

        v10 = qword_1009602D0;
        v11 = [*(v9 + qword_1009602D0) layer];
        [v11 removeAllAnimations];

        [*(v9 + v10) setImage:a1];
      }

      else
      {

        if (v6)
        {
          v12 = sub_10077149C();
        }

        else
        {
          v12 = v5[4];
        }

        v18 = v12;

        type metadata accessor for BorderedScreenshotView(0);
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          goto LABEL_15;
        }

        v10 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
        v9 = v13;
        v14 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_10075FCEC(v20, v15);
      }

      [*(v9 + v10) setNeedsDisplay];
LABEL_15:

      return;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    goto LABEL_3;
  }
}

void sub_100580754()
{
  v1 = sub_10000A5D4(&qword_10095CE50, &unk_1007AA9B8);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView(0);
  sub_10076D4CC();
  sub_10057F544();
  sub_10076E18C();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  if (qword_1009408B8 != -1)
  {
    swift_once();
  }

  v3 = sub_10076357C();
  v4 = sub_10000A61C(v3, qword_10095D838);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_10093F5B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v7 = sub_10000A61C(v6, qword_10099CB78);
  sub_100125EEC(v7, v0 + v5);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform) = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_1007673CC();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  sub_10077156C();
  __break(1u);
}

void sub_1005809A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100580AE0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_1000ACA5C();
      v4 = v0;
      v5 = sub_100770EEC();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

double sub_100580AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100580AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100580B28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v57 = a7;
  v58 = a8;
  v55 = a6;
  v52 = a5;
  v50 = a2;
  v48[1] = a1;
  v10 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v56 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = v48 - v14;
  __chkstk_darwin(v15);
  v49 = v48 - v16;
  __chkstk_darwin(v17);
  v19 = v48 - v18;
  __chkstk_darwin(v20);
  v22 = v48 - v21;
  v23 = sub_10076CBFC();
  __chkstk_darwin(v23 - 8);
  v54 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10076CBBC();
  v26 = __chkstk_darwin(v25);
  v53 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v26);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1003AB714(a4, v22);
  sub_1003AB714(a3, v19);
  v30 = *(v11 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = (v12 + v30 + v31) & ~v30;
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_100582390(v22, v35 + v31);
  sub_100582390(v19, v35 + v32);
  *(v35 + v33) = v29;
  v36 = v50;
  *(v35 + v34) = v50;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v49;
  sub_1003AB714(v52, v49);
  v39 = (v30 + 32) & ~v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v36;
  sub_100582390(v38, v40 + v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v51;
  sub_1003AB714(v55, v51);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_100582390(v42, v43 + v39);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v56;
  sub_1003AB714(v57, v56);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v36;
  sub_100582390(v45, v46 + v39);
  swift_retain_n();
  sub_10076CBEC();
  return sub_10076CB7C();
}

void *sub_100581024(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_10000A5D4(&qword_100956728, &unk_1007A1D70);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = v29 - v4;
  v5 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  __chkstk_darwin(v17);
  v19 = v29 - v18;
  v20 = sub_10076CBBC();
  v32 = *(v20 - 8);
  v33 = v20;
  __chkstk_darwin(v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076887C();
  sub_1005832B4(&qword_10095D908, &type metadata accessor for GameCenterActivityFeedCard, &protocol conformance descriptor for GameCenterActivityFeedCard);
  result = sub_10076332C();
  if (v36[0])
  {
    sub_10076886C();
    sub_10076882C();
    v30 = v16;
    sub_10076885C();
    sub_10076884C();
    sub_10076883C();
    v24 = sub_10076881C();
    v29[2] = v29;
    __chkstk_darwin(v24);
    v29[1] = v29;
    v29[-8] = v22;
    v29[-7] = v2;
    v29[-6] = v31;
    v29[-5] = v19;
    v29[-4] = v16;
    v29[-3] = v13;
    v29[-2] = v10;
    v29[-1] = v7;
    __chkstk_darwin(v25);
    v29[-4] = sub_100409178;
    v29[-3] = v26;
    v29[-2] = v27;
    v29[-1] = v2;
    sub_10000A5D4(&qword_100956738, &qword_1007A1D80);
    v31 = v2;
    sub_100409198();
    v28 = v34;
    sub_10076EC9C();
    sub_10076ECFC();
    v36[3] = v3;
    v36[4] = sub_100071820(&unk_100956790, &qword_100956728, &unk_1007A1D70, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10000DB7C(v36);
    sub_10076EC8C();
    (*(v35 + 8))(v28, v3);
    sub_1007707FC();

    sub_10000CFBC(v7, &qword_100956730, &unk_1007ABEA0);
    sub_10000CFBC(v10, &qword_100956730, &unk_1007ABEA0);
    sub_10000CFBC(v13, &qword_100956730, &unk_1007ABEA0);
    sub_10000CFBC(v30, &qword_100956730, &unk_1007ABEA0);
    sub_10000CFBC(v19, &qword_100956730, &unk_1007ABEA0);
    return (*(v32 + 8))(v22, v33);
  }

  return result;
}

uint64_t sub_1005814C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a7;
  v11 = sub_10076F4FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  if (a3)
  {
    v21 = a4;
  }

  else
  {
    v21 = a5;
  }

  sub_1003AB714(v21, &v26 - v19);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_1003AB714(v20, v17);
    v24 = *(v12 + 48);
    if (v24(v17, 1, v11) == 1)
    {
      sub_10076F4DC();
      if (v24(v17, 1, v11) != 1)
      {
        sub_10000CFBC(v17, &qword_100956730, &unk_1007ABEA0);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
    }

    sub_100582884(a1, v27, v28, v14);

    (*(v12 + 8))(v14, v11);
  }

  return sub_10000CFBC(v20, &qword_100956730, &unk_1007ABEA0);
}

void *sub_100581714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[1] = a1;
  v30 = a8;
  v10 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  v13 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v13 - 8);
  v15 = v29 - v14;
  v16 = sub_10076F4FC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v29 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29[0] = a5;

    sub_1003AB714(a9, v15);
    v24 = *(v17 + 48);
    if (v24(v15, 1, v16) == 1)
    {
      sub_10076F4DC();
      if (v24(v15, 1, v16) != 1)
      {
        sub_10000CFBC(v15, &qword_100956730, &unk_1007ABEA0);
      }
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
    }

    (*(v17 + 16))(v19, v22, v16);
    sub_10076939C();
    swift_allocObject();

    v25 = sub_10076936C();
    v26 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    v27 = v30;
    sub_10076F5AC();
    v28 = *(v26 - 8);
    if ((*(v28 + 48))(v12, 1, v26) == 1)
    {
      (*(v17 + 8))(v22, v16);

      return sub_10000CFBC(v12, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_1002642D4(v25, 1, v27, v12);

      (*(v17 + 8))(v22, v16);
      return (*(v28 + 8))(v12, v26);
    }
  }

  return result;
}

void *sub_100581AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a4;
  v29 = a7;
  v9 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v15 = sub_10076F4FC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_1003AB714(a8, v14);
    v23 = *(v16 + 48);
    if (v23(v14, 1, v15) == 1)
    {
      sub_10076F4DC();
      if (v23(v14, 1, v15) != 1)
      {
        sub_10000CFBC(v14, &qword_100956730, &unk_1007ABEA0);
      }
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
    }

    (*(v16 + 16))(v18, v21, v15);
    sub_10076932C();
    swift_allocObject();

    v24 = sub_10076930C();
    v25 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    v26 = v29;
    sub_10076F5AC();
    v27 = *(v25 - 8);
    if ((*(v27 + 48))(v11, 1, v25) == 1)
    {
      (*(v16 + 8))(v21, v15);

      return sub_10000CFBC(v11, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100264308(v24, 1, v26, v11);

      (*(v16 + 8))(v21, v15);
      return (*(v27 + 8))(v11, v25);
    }
  }

  return result;
}

void *sub_100581E84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_10076F4FC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_1003AB714(a6, v12);
    v19 = *(v14 + 48);
    if (v19(v12, 1, v13) == 1)
    {
      sub_10076F4DC();
      if (v19(v12, 1, v13) != 1)
      {
        sub_10000CFBC(v12, &qword_100956730, &unk_1007ABEA0);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
    }

    sub_100582AB4(a1, a2, a5, v16);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t type metadata accessor for GameCenterActivityFeedCollectionViewCell(uint64_t a1)
{
  result = qword_10095D8F8;
  if (!qword_10095D8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005821C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100582200()
{
  v1 = *(sub_10000A5D4(&qword_100956730, &unk_1007ABEA0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = sub_10076F4FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100582390(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100582400(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_10000A5D4(&qword_100956730, &unk_1007ABEA0) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);
  v14 = *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005814C0(a1, a2, a3, v3 + v9, v3 + v11, v13, v14);
}

void *sub_1005825A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_10000A5D4(&qword_100956730, &unk_1007ABEA0) - 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_100581AD0(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_100582650()
{
  v1 = *(sub_10000A5D4(&qword_100956730, &unk_1007ABEA0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_10076F4FC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_100582778(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_10000A5D4(&qword_100956730, &unk_1007ABEA0) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100581E84(a1, a2, a3, v8, v9, v10);
}

double sub_100582810(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_10076CB6C();
  return a2;
}

uint64_t sub_100582884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_10076F4FC();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  sub_10076989C();
  swift_allocObject();

  v13 = sub_10076987C();
  v14 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {

    return sub_10000CFBC(v8, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_1002642A0(v13, 1, a3, v8);

    return (*(v15 + 8))(v8, v14);
  }
}

uint64_t sub_100582AB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v53 = a3;
  v55._countAndFlagsBits = a1;
  v55._object = a2;
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v54 = &v40 - v5;
  v51 = sub_10075F65C();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765F6C();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100766EDC();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10076F4FC();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_10076C15C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v40 - v23;
  v25 = sub_10075DB7C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v56 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  sub_10077145C(29);

  *&v59 = 0xD00000000000001BLL;
  *(&v59 + 1) = 0x80000001007CE990;
  sub_1007700CC(v55);
  sub_10075DB6C();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v28 = &unk_1009435D0;
    v29 = &qword_100785850;
    v30 = v24;
    return sub_10000CFBC(v30, v28, v29);
  }

  v31 = v56;
  (*(v26 + 32))(v56, v24, v25);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v32 = *(v16 + 104);
  v40 = v18;
  v32(v18, enum case for FlowPage.product(_:), v15);
  (*(v26 + 16))(v21, v31, v25);
  (*(v26 + 56))(v21, 0, 1, v25);
  v33 = sub_10076096C();
  (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  v57 = 0u;
  v58 = 0u;
  (*(v41 + 16))(v11, v50, v42);
  (*(v44 + 104))(v43, enum case for FlowPresentationContext.infer(_:), v45);
  (*(v46 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v47);
  (*(v48 + 104))(v52, enum case for FlowOrigin.inapp(_:), v51);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v34 = sub_10075F5EC();
  v35 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v36 = v53;
  v37 = v54;
  sub_10076F5AC();
  v38 = *(v35 - 8);
  if ((*(v38 + 48))(v37, 1, v35) == 1)
  {
    (*(v26 + 8))(v56, v25);

    v28 = &unk_100943200;
    v29 = &unk_100785840;
    v30 = v37;
    return sub_10000CFBC(v30, v28, v29);
  }

  sub_100263C24(v34, 1, v36, v37);

  (*(v26 + 8))(v56, v25);
  return (*(v38 + 8))(v37, v35);
}

uint64_t sub_1005832B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TodayCardLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:crossLinkTitleText:crossLinkSubtitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a7;
  v79 = a5;
  v83 = a6;
  v80 = a4;
  v81 = a3;
  v74 = a1;
  v75 = a9;
  sub_10015E5E0(a1, v90);
  v82 = a8;
  v14 = *(a8 + 24);
  BYTE8(v90[47]) = v14 != 0;
  v15 = a2[3];
  v16 = a2[4];
  v76 = a2;
  sub_10000CF78(a2, v15);
  v17 = sub_1007711AC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  sub_10076D21C();
  v21 = *(v15 - 8);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v15;
    v89 = v16;
    v22 = sub_10000DB7C(&v87);
    (*(v21 + 32))(v22, v20, v15);
  }

  *(&v90[22] + 8) = v87;
  *(&v90[23] + 8) = v88;
  *(&v90[24] + 1) = v89;
  sub_100016E2C(v81, v84, &qword_10094BB30, qword_100796E40);
  v23 = v85;
  if (v85)
  {
    v24 = v86;
    sub_10000CF78(v84, v85);
    v25 = sub_1007711AC();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v73 - v27;
    sub_10076D6BC();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v23;
      v89 = v24;
      v30 = sub_10000DB7C(&v87);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(v84, &qword_10094BB30, qword_100796E40);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[25] = v87;
  v90[26] = v88;
  *&v90[27] = v89;
  sub_100016E2C(v80, v84, &qword_10094BB30, qword_100796E40);
  v31 = v85;
  if (v85)
  {
    v32 = v86;
    sub_10000CF78(v84, v85);
    v33 = sub_1007711AC();
    v34 = *(v33 - 8);
    __chkstk_darwin(v33);
    v36 = &v73 - v35;
    sub_10076D6BC();
    v37 = *(v31 - 8);
    if ((*(v37 + 48))(v36, 1, v31) == 1)
    {
      (*(v34 + 8))(v36, v33);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v31;
      v89 = v32;
      v38 = sub_10000DB7C(&v87);
      (*(v37 + 32))(v38, v36, v31);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(v84, &qword_10094BB30, qword_100796E40);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v77 = a10;
  *(&v90[27] + 8) = v87;
  *(&v90[28] + 8) = v88;
  *(&v90[29] + 1) = v89;
  sub_10000A570(v79, &v90[30]);
  v39 = v83[3];
  v40 = v83[4];
  sub_10000CF78(v83, v39);
  v41 = sub_1007711AC();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v73 - v43;
  if (v14)
  {
    sub_10076D6AC();
  }

  else
  {
    sub_10076D6BC();
  }

  v45 = *(v39 - 8);
  if ((*(v45 + 48))(v44, 1, v39) == 1)
  {
    (*(v42 + 8))(v44, v41);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v39;
    v89 = v40;
    v46 = sub_10000DB7C(&v87);
    (*(v45 + 32))(v46, v44, v39);
  }

  *(&v90[32] + 8) = v87;
  *(&v90[33] + 8) = v88;
  *(&v90[34] + 1) = v89;
  sub_100016E2C(v78, v84, &qword_10094BB30, qword_100796E40);
  v47 = v85;
  if (v85)
  {
    v48 = v86;
    sub_10000CF78(v84, v85);
    v49 = sub_1007711AC();
    v50 = *(v49 - 8);
    __chkstk_darwin(v49);
    v52 = &v73 - v51;
    sub_10076D6BC();
    v53 = *(v47 - 8);
    if ((*(v53 + 48))(v52, 1, v47) == 1)
    {
      (*(v50 + 8))(v52, v49);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v47;
      v89 = v48;
      v54 = sub_10000DB7C(&v87);
      (*(v53 + 32))(v54, v52, v47);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(v84, &qword_10094BB30, qword_100796E40);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[35] = v87;
  v90[36] = v88;
  *&v90[37] = v89;
  sub_100016E2C(v82, &v90[37] + 8, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(v77, v84, &qword_10094BB30, qword_100796E40);
  v55 = v85;
  if (v85)
  {
    v56 = v86;
    sub_10000CF78(v84, v85);
    v57 = sub_1007711AC();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v73 - v59;
    sub_10076D6AC();
    v61 = *(v55 - 8);
    if ((*(v61 + 48))(v60, 1, v55) == 1)
    {
      (*(v58 + 8))(v60, v57);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v55;
      v89 = v56;
      v62 = sub_10000DB7C(&v87);
      (*(v61 + 32))(v62, v60, v55);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(v84, &qword_10094BB30, qword_100796E40);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[40] = v87;
  v90[41] = v88;
  *&v90[42] = v89;
  sub_100016E2C(a11, v84, &qword_10094BB30, qword_100796E40);
  v63 = v85;
  if (v85)
  {
    v64 = v86;
    sub_10000CF78(v84, v85);
    v65 = sub_1007711AC();
    v66 = *(v65 - 8);
    __chkstk_darwin(v65);
    v68 = &v73 - v67;
    sub_10076D6BC();
    v69 = *(v63 - 8);
    if ((*(v69 + 48))(v68, 1, v63) == 1)
    {
      sub_10000CFBC(a11, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v77, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v78, &qword_10094BB30, qword_100796E40);
      sub_10000CD74(v79);
      sub_10000CFBC(v80, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v81, &qword_10094BB30, qword_100796E40);
      sub_10015E58C(v74);
      sub_10000CFBC(v82, &qword_10094BB30, qword_100796E40);
      (*(v66 + 8))(v68, v65);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v63;
      v89 = v64;
      v70 = sub_10000DB7C(&v87);
      (*(v69 + 32))(v70, v68, v63);
      sub_10000CFBC(a11, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v77, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v78, &qword_10094BB30, qword_100796E40);
      sub_10000CD74(v79);
      sub_10000CFBC(v80, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v81, &qword_10094BB30, qword_100796E40);
      sub_10015E58C(v74);
      sub_10000CFBC(v82, &qword_10094BB30, qword_100796E40);
    }

    sub_10000CD74(v84);
  }

  else
  {
    sub_10000CFBC(a11, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v77, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v78, &qword_10094BB30, qword_100796E40);
    sub_10000CD74(v79);
    sub_10000CFBC(v80, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v81, &qword_10094BB30, qword_100796E40);
    sub_10015E58C(v74);
    sub_10000CFBC(v82, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v84, &qword_10094BB30, qword_100796E40);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  *(&v90[42] + 8) = v87;
  *(&v90[43] + 8) = v88;
  *(&v90[44] + 1) = v89;
  v71 = *(a12 + 16);
  v90[45] = *a12;
  v90[46] = v71;
  *&v90[47] = *(a12 + 32);
  memcpy(v75, v90, 0x2F9uLL);
  sub_10000CD74(v83);
  return sub_10000CD74(v76);
}

uint64_t TodayCardLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:offerButtonSize:offerButtonMargin:preferVerticallyStackedIcon:preferStackedLargeAXLayouts:singleLineTitleAndSubtitle:allowAccessibilityLayout:backgroundAssetHeight:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, __int128 *a15, char a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_100012498(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  sub_100012498(a4, a9 + 72);
  sub_100012498(a5, a9 + 112);
  sub_100012498(a8, a9 + 232);
  sub_100012498(a6, a9 + 152);
  sub_100012498(a7, a9 + 192);
  *(a9 + 272) = a12;
  *(a9 + 280) = a13;
  *(a9 + 288) = a14 & 1;
  result = sub_100012498(a15, a9 + 296);
  *(a9 + 336) = a16;
  *(a9 + 337) = a17;
  *(a9 + 338) = a18;
  *(a9 + 339) = a19;
  *(a9 + 344) = a20;
  *(a9 + 352) = a21 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void TodayCardLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t TodayCardLockupLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 112));

  return sub_100012498(a1, v1 + 112);
}

uint64_t TodayCardLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 152));

  return sub_100012498(a1, v1 + 152);
}

uint64_t TodayCardLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 192));

  return sub_100012498(a1, v1 + 192);
}

uint64_t TodayCardLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 232));

  return sub_100012498(a1, v1 + 232);
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 272) = result;
  *(v3 + 280) = a2;
  *(v3 + 288) = a3 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 296));

  return sub_100012498(a1, v1 + 296);
}

uint64_t TodayCardLockupLayout.Metrics.backgroundAssetHeight.setter(uint64_t result, char a2)
{
  *(v2 + 344) = result;
  *(v2 + 352) = a2 & 1;
  return result;
}

double TodayCardLockupLayout.measure(toFit:with:)(void *a1, double a2, double a3)
{
  if ((sub_10077071C() & 1) != 0 && *(v3 + 339) == 1)
  {
    sub_100584A38(0, a1, v10, a2, a3);
  }

  else
  {
    sub_100585674(0, a1, v10, a2, a3);
  }

  sub_100012498(v10, v11);
  sub_10000CF78(v11, v11[3]);
  sub_10076E0FC();
  v8 = v7;
  sub_10000CD74(v11);
  return v8;
}

uint64_t TodayCardLockupLayout.place(at:with:)(void *a1, double a2, double a3, double a4, double a5)
{
  if (*(v5 + 760) == 1)
  {
    if ((sub_10077071C() & 1) != 0 && *(v5 + 339) == 1)
    {
      sub_100584A38(1u, a1, v10, a4, a5);
    }

    else
    {
      sub_100585674(1, a1, v10, a4, a5);
    }

    sub_100012498(v10, v11);
    sub_10000CF78(v11, v12);
    sub_10076E0EC();
    sub_10000CD74(v11);
  }

  if ((sub_10077071C() & 1) != 0 && *(v5 + 339) == 1)
  {
    sub_100584A38(0, a1, v10, a4, a5);
  }

  else
  {
    sub_100585674(0, a1, v10, a4, a5);
  }

  sub_100012498(v10, v11);
  sub_10000CF78(v11, v12);
  sub_10076E0EC();
  return sub_10000CD74(v11);
}

uint64_t sub_100584A38@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v84 = a1;
  v87 = a3;
  v10 = sub_10076D8DC();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076DFEC();
  v14 = *(v13 - 8);
  v90 = v13;
  v91 = v14;
  __chkstk_darwin(v13);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = &v81 - v17;
  __chkstk_darwin(v18);
  v93 = &v81 - v19;
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v23 = sub_10076D65C();
  v85 = *(v23 - 8);
  v86 = v23;
  __chkstk_darwin(v23);
  v94 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D63C();
  sub_10000CF78((v5 + 112), *(v5 + 136));
  sub_10076D41C();
  v26 = v25 + v25;
  sub_10000CF78((v6 + 152), *(v6 + 176));
  sub_10076D41C();
  v28 = v26 + v27;
  sub_100016E2C(v5 + 360, v96, &unk_10094DA00, &qword_100783FA0);
  v88 = a2;
  if (*(&v96[1] + 1))
  {
    sub_100012498(v96, v100);
    if (*(v5 + 336) & 1) != 0 || (v43 = [a2 preferredContentSizeCategory], v44 = sub_10077087C(), v43, (v44) && *(v6 + 337) == 1)
    {
      sub_10000CF78(v100, v101);
      sub_10076D2DC();
      v29 = *v6;
      *(v22 + 3) = &type metadata for CGFloat;
      *(v22 + 4) = &protocol witness table for CGFloat;
      *v22 = v29;
      v30 = enum case for Resize.Rule.replaced(_:);
      v89 = enum case for Resize.Rule.replaced(_:);
      v31 = v90;
      v32 = *(v91 + 104);
      (v32)(v22, enum case for Resize.Rule.replaced(_:), v90);
      v33 = *(v6 + 8);
      v34 = v93;
      *(v93 + 3) = &type metadata for CGFloat;
      v34[4] = &protocol witness table for CGFloat;
      *v34 = v33;
      (v32)(v34, v30, v31);
      v35 = v22;
      v36 = enum case for Resize.Rule.unchanged(_:);
      (v32)(v92, enum case for Resize.Rule.unchanged(_:), v31);
      (v32)(v95, v36, v31);
      v83 = sub_10076DFFC();
      v98 = v83;
      v99 = &protocol witness table for Resize;
      sub_10000DB7C(v97);
      sub_10076E00C();
      sub_100588468(v6, v96);
      v37 = swift_allocObject();
      memcpy((v37 + 16), v96, 0x2F9uLL);
      v38 = v88;
      *(v37 + 784) = v88;
      v39 = v38;
      sub_10076D5FC();
      v40 = v92;

      sub_10000CD74(v97);
      sub_1005861C0(v84 & 1, v39, v96, a4, a5);
      sub_10076DF8C();
      v98 = sub_10076DFAC();
      v99 = &protocol witness table for Center;
      sub_10000DB7C(v97);
      sub_10076DFBC();
      v35[3] = &type metadata for CGFloat;
      v35[4] = &protocol witness table for CGFloat;
      *v35 = v28;
      (v32)(v35, v89, v31);
      (v32)(v93, v36, v31);
      (v32)(v40, v36, v31);
      v84 = v36;
      v41 = v36;
      v22 = v35;
      (v32)(v95, v41, v31);
      *(&v96[1] + 1) = v83;
      *&v96[2] = &protocol witness table for Resize;
      sub_10000DB7C(v96);
      sub_10076E00C();
      sub_10076D5FC();
      sub_10000CD74(v96);
      v42 = v100;
      goto LABEL_12;
    }

    sub_10000CD74(v100);
  }

  else
  {
    sub_10000CFBC(v96, &unk_10094DA00, &qword_100783FA0);
  }

  sub_10076D8AC();
  sub_100016E2C(v6 + 360, v96, &unk_10094DA00, &qword_100783FA0);
  if (*(&v96[1] + 1))
  {
    sub_100012498(v96, v100);
    v45 = v22;
    v46 = v90;
    v81 = v12;
    sub_10000CF78(v100, v101);
    sub_10076D2DC();
    v47 = *v6;
    *(v45 + 3) = &type metadata for CGFloat;
    *(v45 + 4) = &protocol witness table for CGFloat;
    *v45 = v47;
    v48 = enum case for Resize.Rule.replaced(_:);
    v49 = v93;
    v50 = *(v91 + 104);
    v89 = enum case for Resize.Rule.replaced(_:);
    v50(v45, enum case for Resize.Rule.replaced(_:), v46);
    v51 = *(v6 + 8);
    *(v49 + 3) = &type metadata for CGFloat;
    *(v49 + 4) = &protocol witness table for CGFloat;
    v52 = v95;
    v53 = v92;
    *v49 = v51;
    v50(v49, v48, v46);
    v54 = enum case for Resize.Rule.unchanged(_:);
    v50(v53, enum case for Resize.Rule.unchanged(_:), v46);
    v55 = v46;
    v22 = v45;
    v50(v52, v54, v55);
    a2 = v88;
    v98 = sub_10076DFFC();
    v99 = &protocol witness table for Resize;
    sub_10000DB7C(v97);
    v12 = v81;
    v56 = v54;
    v57 = v89;
    sub_10076E00C();
    sub_100588468(v6, v96);
    v58 = swift_allocObject();
    memcpy((v58 + 16), v96, 0x2F9uLL);
    *(v58 + 784) = a2;
    v59 = a2;
    sub_10076D89C();

    sub_10000CD74(v97);
    sub_10000CD74(v100);
  }

  else
  {
    sub_10000CFBC(v96, &unk_10094DA00, &qword_100783FA0);
    v57 = enum case for Resize.Rule.replaced(_:);
    v56 = enum case for Resize.Rule.unchanged(_:);
  }

  v60 = a4 - *v6;
  sub_10000CF78((v6 + 16), *(v6 + 40));
  sub_10076D41C();
  sub_1005861C0(v84 & 1, a2, v96, v60 - v61, a5);
  sub_10076DF9C();
  v101 = sub_10076DFAC();
  v102 = &protocol witness table for Center;
  sub_10000DB7C(v100);
  sub_10076DFBC();
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = v28;
  v32 = *(v91 + 104);
  v89 = v57;
  v62 = v57;
  v63 = v90;
  (v32)(v22, v62, v90);
  (v32)(v93, v56, v63);
  (v32)(v92, v56, v63);
  v84 = v56;
  v32(v95);
  *(&v96[1] + 1) = sub_10076DFFC();
  *&v96[2] = &protocol witness table for Resize;
  sub_10000DB7C(v96);
  sub_10076E00C();
  sub_10076D89C();
  sub_10000CD74(v96);
  v64 = v83;
  *(&v96[1] + 1) = v83;
  *&v96[2] = &protocol witness table for HorizontalStack;
  v65 = sub_10000DB7C(v96);
  v66 = v12;
  v67 = v82;
  (*(v82 + 16))(v65, v66, v64);
  sub_10076D5FC();
  (*(v67 + 8))(v66, v64);
  v42 = v96;
LABEL_12:
  sub_10000CD74(v42);
  sub_100016E2C(v6 + 720, v96, &unk_10094DA00, &qword_100783FA0);
  if (*(&v96[1] + 1))
  {
    sub_100012498(v96, v100);
    if ((*(v6 + 288) & 1) == 0)
    {
      v69 = *(v6 + 272);
      v68 = *(v6 + 280);
      v70 = v93;
      sub_10000CF78(v100, v101);
      sub_10076D2DC();
      *(v22 + 3) = &type metadata for CGFloat;
      *(v22 + 4) = &protocol witness table for CGFloat;
      *v22 = v69;
      v71 = v90;
      v72 = v89;
      (v32)(v22, v89, v90);
      v70[3] = &type metadata for CGFloat;
      v70[4] = &protocol witness table for CGFloat;
      *v70 = v68;
      (v32)(v70, v72, v71);
      v73 = v84;
      (v32)(v92, v84, v71);
      (v32)(v95, v73, v71);
      v98 = sub_10076DFFC();
      v99 = &protocol witness table for Resize;
      sub_10000DB7C(v97);
      sub_10076E00C();
      sub_100588468(v6, v96);
      v74 = swift_allocObject();
      memcpy((v74 + 16), v96, 0x2F9uLL);
      v75 = v88;
      *(v74 + 784) = v88;
      v76 = v75;
      sub_10076D5FC();

      sub_10000CD74(v97);
    }

    sub_10000CD74(v100);
  }

  else
  {
    sub_10000CFBC(v96, &unk_10094DA00, &qword_100783FA0);
  }

  v78 = v86;
  v77 = v87;
  v87[3] = v86;
  v77[4] = &protocol witness table for VerticalStack;
  v79 = sub_10000DB7C(v77);
  return (*(v85 + 32))(v79, v94, v78);
}

uint64_t sub_100585674@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v87 = a2;
  LODWORD(v7) = a1;
  v80 = a3;
  v84 = sub_10076DFEC();
  v10 = *(v84 - 8);
  __chkstk_darwin(v84);
  v86 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v85 = &v77 - v13;
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  __chkstk_darwin(v17);
  v19 = &v77 - v18;
  v20 = sub_10076D8DC();
  v81 = *(v20 - 8);
  v82 = v20;
  __chkstk_darwin(v20);
  v88 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D8AC();
  sub_100016E2C(v5 + 360, v90, &unk_10094DA00, &qword_100783FA0);
  if (*(&v90[1] + 1))
  {
    sub_100012498(v90, v97);
    if ((*(v5 + 336) & 1) == 0)
    {
      sub_10000CF78(v97, v98);
      sub_10076D2DC();
      v22 = *v5;
      *(v19 + 3) = &type metadata for CGFloat;
      *(v19 + 4) = &protocol witness table for CGFloat;
      *v19 = v22;
      v23 = enum case for Resize.Rule.replaced(_:);
      v24 = *(v10 + 104);
      v79 = v7;
      v7 = v84;
      v24(v19, enum case for Resize.Rule.replaced(_:), v84);
      v25 = *(v6 + 8);
      *(v16 + 3) = &type metadata for CGFloat;
      *(v16 + 4) = &protocol witness table for CGFloat;
      *v16 = v25;
      v24(v16, v23, v7);
      v26 = enum case for Resize.Rule.unchanged(_:);
      v83 = v10;
      v24(v85, enum case for Resize.Rule.unchanged(_:), v7);
      v27 = v7;
      LOBYTE(v7) = v79;
      v24(v86, v26, v27);
      v95 = sub_10076DFFC();
      v96 = &protocol witness table for Resize;
      sub_10000DB7C(v94);
      v10 = v83;
      sub_10076E00C();
      sub_100588468(v6, v90);
      v28 = swift_allocObject();
      memcpy((v28 + 16), v90, 0x2F9uLL);
      v29 = v87;
      *(v28 + 784) = v87;
      v30 = v29;
      sub_10076D89C();

      sub_10000CD74(v94);
      sub_10000CF78((v6 + 16), *(v6 + 40));
      sub_10076D41C();
      a4 = a4 - v22 - v31;
    }

    sub_10000CD74(v97);
  }

  else
  {
    sub_10000CFBC(v90, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(v6 + 720, v90, &unk_10094DA00, &qword_100783FA0);
  v32 = *(&v90[1] + 1);
  sub_10000CFBC(v90, &unk_10094DA00, &qword_100783FA0);
  if (v32 && (*(v6 + 288) & 1) == 0)
  {
    v33 = a4 - *(v6 + 272);
    sub_10000CF78((v6 + 296), *(v6 + 320));
    sub_10076D41C();
    a4 = v33 - v34;
  }

  sub_1005861C0(v7 & 1, v87, v97, a4, a5);
  sub_10000CF78(v97, v98);
  sub_10076E0FC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10000A570(v97, v94);
  *(v19 + 3) = &type metadata for CGFloat;
  *(v19 + 4) = &protocol witness table for CGFloat;
  *v19 = a4;
  v43 = enum case for Resize.Rule.replaced(_:);
  v44 = *(v10 + 104);
  v45 = v84;
  v44(v19, enum case for Resize.Rule.replaced(_:), v84);
  *(v16 + 3) = &type metadata for CGFloat;
  *(v16 + 4) = &protocol witness table for CGFloat;
  *v16 = v38;
  v79 = v43;
  v44(v16, v43, v45);
  v46 = enum case for Resize.Rule.unchanged(_:);
  v44(v85, enum case for Resize.Rule.unchanged(_:), v45);
  v78 = v46;
  v83 = v10 + 104;
  v44(v86, v46, v45);
  v47 = sub_10076DFFC();
  *(&v90[1] + 1) = v47;
  *&v90[2] = &protocol witness table for Resize;
  sub_10000DB7C(v90);
  sub_10076E00C();
  sub_10076D89C();
  sub_10000CD74(v90);
  sub_100016E2C(v6 + 720, v90, &unk_10094DA00, &qword_100783FA0);
  if (!*(&v90[1] + 1))
  {
    sub_10000CFBC(v90, &unk_10094DA00, &qword_100783FA0);
    goto LABEL_13;
  }

  sub_100012498(v90, v94);
  if ((*(v6 + 288) & 1) == 0)
  {
    v52 = *(v6 + 272);
    v51 = *(v6 + 280);
    sub_10000CF78(v94, v95);
    sub_10076D2DC();
    *(v19 + 3) = &type metadata for CGFloat;
    *(v19 + 4) = &protocol witness table for CGFloat;
    *v19 = v52;
    v53 = v79;
    v77 = v47;
    v54 = v84;
    v44(v19, v79, v84);
    *(v16 + 3) = &type metadata for CGFloat;
    *(v16 + 4) = &protocol witness table for CGFloat;
    *v16 = v51;
    v44(v16, v53, v54);
    v55 = v78;
    v44(v85, v78, v54);
    v56 = v54;
    v57 = v77;
    v44(v86, v55, v56);
    *(&v90[1] + 1) = v57;
    *&v90[2] = &protocol witness table for Resize;
    sub_10000DB7C(v90);
    sub_10076E00C();
    sub_10076DF9C();
    v92 = sub_10076DFAC();
    v93 = &protocol witness table for Center;
    sub_10000DB7C(v91);
    sub_10076DFBC();
    sub_100588468(v6, v90);
    v58 = swift_allocObject();
    memcpy((v58 + 16), v90, 0x2F9uLL);
    v59 = v87;
    *(v58 + 784) = v87;
    v60 = v59;
    sub_10076D89C();

    sub_10000CD74(v91);
    sub_100016E2C(v6 + 360, v90, &unk_10094DA00, &qword_100783FA0);
    if (*(&v90[1] + 1))
    {
      sub_100012498(v90, v91);
      v61 = v80;
      if (*(v6 + 336) == 1)
      {
        v61[3] = sub_10076D65C();
        v61[4] = &protocol witness table for VerticalStack;
        v87 = sub_10000DB7C(v61);
        sub_10076D63C();
        sub_10000CF78(v91, v92);
        sub_10076D2DC();
        v62 = *v6;
        *(v19 + 3) = &type metadata for CGFloat;
        *(v19 + 4) = &protocol witness table for CGFloat;
        *v19 = v62;
        v63 = v79;
        v64 = v84;
        v80 = v60;
        v44(v19, v79, v84);
        v65 = *(v6 + 8);
        *(v16 + 3) = &type metadata for CGFloat;
        *(v16 + 4) = &protocol witness table for CGFloat;
        *v16 = v65;
        v44(v16, v63, v64);
        v66 = v78;
        v44(v85, v78, v64);
        v44(v86, v66, v64);
        v89[3] = v77;
        v89[4] = &protocol witness table for Resize;
        sub_10000DB7C(v89);
        sub_10076E00C();
        sub_100588468(v6, v90);
        v67 = swift_allocObject();
        v67[2] = v52;
        v67[3] = v51;
        v67[4] = v36;
        v67[5] = v38;
        v67[6] = v40;
        v67[7] = v42;
        memcpy(v67 + 8, v90, 0x2F9uLL);
        v68 = v80;
        v67[104] = v80;
        v69 = v68;
        sub_10076D5FC();

        sub_10000CD74(v89);
        v70 = v82;
        *(&v90[1] + 1) = v82;
        *&v90[2] = &protocol witness table for HorizontalStack;
        v71 = sub_10000DB7C(v90);
        v72 = v81;
        v73 = v88;
        (*(v81 + 16))(v71, v88, v70);
        sub_10076D5FC();
        (*(v72 + 8))(v73, v70);
        sub_10000CD74(v90);
        sub_10000CD74(v91);
LABEL_20:
        sub_10000CD74(v94);
        return sub_10000CD74(v97);
      }

      sub_10000CD74(v91);
    }

    else
    {
      sub_10000CFBC(v90, &unk_10094DA00, &qword_100783FA0);
      v61 = v80;
    }

    v74 = v82;
    v61[3] = v82;
    v61[4] = &protocol witness table for HorizontalStack;
    v75 = sub_10000DB7C(v61);
    (*(v81 + 32))(v75, v88, v74);
    goto LABEL_20;
  }

  sub_10000CD74(v94);
LABEL_13:
  v48 = v82;
  v49 = v80;
  v80[3] = v82;
  v49[4] = &protocol witness table for HorizontalStack;
  v50 = sub_10000DB7C(v49);
  (*(v81 + 32))(v50, v88, v48);
  return sub_10000CD74(v97);
}

uint64_t sub_1005861C0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = sub_10076DFEC();
  v41 = *(v11 - 8);
  v42 = v11;
  __chkstk_darwin(v11);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v40 - v14;
  __chkstk_darwin(v15);
  v43 = &v40 - v16;
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v20 = sub_10076D65C();
  v46 = *(v20 - 8);
  v47 = v20;
  __chkstk_darwin(v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100588468(v5, v53);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v53, 0x2F9uLL);
  sub_10076D63C();
  sub_100016E2C(v5 + 440, v53, &qword_10094BB30, qword_100796E40);
  if (*(&v53[1] + 1))
  {
    sub_100012498(v53, &v51);
    sub_10000CF78(&v51, v52);
    sub_10076D6DC();
    sub_10000CF78(&v51, v52);
    sub_10076D6CC();
    sub_10000CF78(&v51, v52);
    sub_10076D2DC();
    sub_100588468(v5, v53);
    v24 = swift_allocObject();
    memcpy((v24 + 16), v53, 0x2F9uLL);
    sub_10076D5FC();

    sub_10000CD74(v48);
    sub_10000CD74(&v51);
  }

  else
  {
    sub_10000CFBC(v53, &qword_10094BB30, qword_100796E40);
  }

  v25.n128_f64[0] = a4;
  sub_100586D58(a1 & 1, a2, v53, v25, a5);
  sub_10076D5FC();
  sub_10000CD74(v53);
  sub_100016E2C(v5 + 560, v53, &qword_10094BB30, qword_100796E40);
  if (*(&v53[1] + 1))
  {
    sub_100012498(v53, &v51);
    sub_10000CF78(&v51, v52);
    sub_10076D6DC();
    sub_10000CF78(&v51, v52);
    sub_10076D6CC();
    sub_10000CF78(&v51, v52);
    sub_10076D2DC();
    sub_100588468(v5, v53);
    v26 = swift_allocObject();
    memcpy((v26 + 16), v53, 0x2F9uLL);
    sub_10076D5FC();

    sub_10000CD74(v48);
    sub_10000CD74(&v51);
  }

  else
  {
    sub_10000CFBC(v53, &qword_10094BB30, qword_100796E40);
  }

  sub_100016E2C(v5 + 680, v53, &qword_10094BB30, qword_100796E40);
  if (*(&v53[1] + 1))
  {
    sub_100012498(v53, &v51);
    sub_10000CF78(&v51, v52);
    sub_10076D2DC();
    sub_100588468(v5, v53);
    v27 = swift_allocObject();
    memcpy((v27 + 16), v53, 0x2F9uLL);
    sub_10076D5FC();

    sub_10000CD74(v48);
    sub_10000CD74(&v51);
  }

  else
  {
    sub_10000CFBC(v53, &qword_10094BB30, qword_100796E40);
  }

  sub_100016E2C(v5 + 400, &v51, &qword_10094BB30, qword_100796E40);
  if (v52)
  {
    sub_100012498(&v51, v53);
    v28 = *(v5 + 56);
    sub_10000CF78(v53, *(&v53[1] + 1));
    v29 = sub_10076D69C();
    v28(&v51, v29);
    a3[3] = sub_10076D8DC();
    a3[4] = &protocol witness table for HorizontalStack;
    sub_10000DB7C(a3);
    sub_10076D8AC();
    sub_10000CF78(v53, *(&v53[1] + 1));
    sub_10076D2DC();
    sub_10000A570(&v51, v19);
    v30 = *(v41 + 13);
    v41 = v22;
    v31 = v42;
    v30(v19, enum case for Resize.Rule.replaced(_:), v42);
    v32 = enum case for Resize.Rule.unchanged(_:);
    v30(v43, enum case for Resize.Rule.unchanged(_:), v31);
    v30(v44, v32, v31);
    v30(v45, v32, v31);
    v49 = sub_10076DFFC();
    v50 = &protocol witness table for Resize;
    sub_10000DB7C(v48);
    sub_10076E00C();
    sub_10076D89C();
    sub_10000CD74(v48);
    v33 = v47;
    v49 = v47;
    v50 = &protocol witness table for VerticalStack;
    v34 = sub_10000DB7C(v48);
    v35 = v46;
    v36 = v41;
    (*(v46 + 16))(v34, v41, v33);
    sub_10076D89C();
    sub_10000CD74(&v51);
    (*(v35 + 8))(v36, v33);
    sub_10000CD74(v48);
    return sub_10000CD74(v53);
  }

  else
  {
    sub_10000CFBC(&v51, &qword_10094BB30, qword_100796E40);
    v38 = v47;
    a3[3] = v47;
    a3[4] = &protocol witness table for VerticalStack;
    v39 = sub_10000DB7C(a3);
    return (*(v46 + 32))(v39, v22, v38);
  }
}

uint64_t sub_1005869E4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000CF78(a2 + 37, a2[40]);
  sub_10076D41C();
  return sub_10076D86C();
}

uint64_t sub_100586A64(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8, uint64_t a9)
{
  sub_10000CF78(a8 + 2, a8[5]);
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_100586B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000CF78((a2 + 16), *(a2 + 40));
  sub_10076D41C();
  result = sub_10076D5CC();
  if (*(a2 + 336) == 1)
  {
    return sub_10076D5EC();
  }

  return result;
}

uint64_t sub_100586BB0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000CF78(a2 + 2, a2[5]);
  sub_10076D41C();
  return sub_10076D87C();
}

uint64_t sub_100586C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000CF78((a2 + 296), *(a2 + 320));
  sub_10076D41C();
  result = sub_10076D5BC();
  if (*(a2 + 336) == 1)
  {
    sub_10000CF78((a2 + 296), *(a2 + 320));
    sub_10076D41C();
    return sub_10076D5CC();
  }

  return result;
}

uint64_t sub_100586D10(uint64_t a1, uint64_t a2)
{
  sub_10076D60C();
  sub_10076D5DC();
  sub_10000A570(a2 + 72, v4);
  return sub_10076D5BC();
}

uint64_t sub_100586D58@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, double a5@<D1>)
{
  v6 = v5;
  v32 = a2;
  v9 = a4.n128_f64[0];
  v34 = a3;
  v35 = sub_10076D65C();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D63C();
  sub_100016E2C(v5 + 440, v36, &qword_10094BB30, qword_100796E40);
  v12 = *(&v36[1] + 1);
  sub_10000CFBC(v36, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(v5 + 680, v36, &qword_10094BB30, qword_100796E40);
  v13 = *(&v36[1] + 1);
  sub_10000CFBC(v36, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(v5 + 560, v36, &qword_10094BB30, qword_100796E40);
  v14 = *(&v36[1] + 1);
  sub_10000CFBC(v36, &qword_10094BB30, qword_100796E40);
  sub_10000CF78((v6 + 480), *(v6 + 504));
  if (sub_10076D68C())
  {
    goto LABEL_4;
  }

  sub_100016E2C(v5 + 520, v36, &qword_10094BB30, qword_100796E40);
  if (*(&v36[1] + 1))
  {
    sub_10000CF78(v36, *(&v36[1] + 1));
    v15 = sub_10076D68C();
    sub_10000CD74(v36);
    if (v15)
    {
LABEL_4:
      v16 = 1;
      if (v12)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v18 = v14 | v13;
      v19 = v11;
      if (!v18)
      {
        v16 = v17;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_10000CFBC(v36, &qword_10094BB30, qword_100796E40);
  }

  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v20 = 2;
  if (!v12)
  {
    v20 = 3;
  }

  if (!(v14 | v13))
  {
    v16 = v20;
  }

  v19 = v11;
LABEL_18:
  sub_10058742C(v16, a1 & 1, v32, v9, a5);
  v22 = v21;
  v24 = v23;
  if (a1)
  {
    sub_100016E2C(v6 + 600, v42, &qword_10094BB30, qword_100796E40);
  }

  else
  {
    sub_10000A570(v6 + 480, v42);
  }

  sub_100016E2C(v42, &v40, &qword_10094BB30, qword_100796E40);
  if (v41)
  {
    sub_100012498(&v40, v36);
    if ((v22 & 1) == 0)
    {
      sub_10000CF78(v36, *(&v36[1] + 1));
      sub_10076D2DC();
      sub_10076D5FC();
      sub_10000CD74(&v40);
      sub_10000CF78(v36, *(&v36[1] + 1));
      sub_10076D6DC();
      sub_10000CF78(v36, *(&v36[1] + 1));
      sub_10076D6CC();
      goto LABEL_28;
    }

    sub_10000CD74(v36);
  }

  else
  {
    sub_10000CFBC(&v40, &qword_10094BB30, qword_100796E40);
  }

  sub_100016E2C(v42, v36, &qword_10094BB30, qword_100796E40);
  if (*(&v36[1] + 1))
  {
    sub_10000CF78(v36, *(&v36[1] + 1));
    sub_10076D6DC();
LABEL_28:
    sub_10000CD74(v36);
    goto LABEL_30;
  }

  sub_10000CFBC(v36, &qword_10094BB30, qword_100796E40);
LABEL_30:
  v25 = 520;
  if (a1)
  {
    v25 = 640;
  }

  sub_100016E2C(v6 + v25, &v40, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(&v40, v36, &qword_10094BB30, qword_100796E40);
  if (*(&v36[1] + 1))
  {
    sub_100012498(v36, v38);
    if ((v24 & 1) == 0)
    {
      sub_10000CF78(v38, v39);
      sub_10076D2DC();
      sub_100588468(v6, v36);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v36, 0x2F9uLL);
      sub_10076D5FC();

      sub_10000CD74(v37);
      sub_10000CF78(v38, v39);
      sub_10076D6DC();
      sub_10000CF78(v38, v39);
      sub_10076D6CC();
      sub_10000CD74(v38);
      goto LABEL_40;
    }

    sub_10000CD74(v38);
  }

  else
  {
    sub_10000CFBC(v36, &qword_10094BB30, qword_100796E40);
  }

  sub_100016E2C(&v40, v36, &qword_10094BB30, qword_100796E40);
  if (*(&v36[1] + 1))
  {
    sub_10000CF78(v36, *(&v36[1] + 1));
    sub_10076D6DC();
    sub_10000CD74(v36);
  }

  else
  {
    sub_10000CFBC(v36, &qword_10094BB30, qword_100796E40);
  }

LABEL_40:
  v27 = v34;
  v28 = v35;
  v34[3] = v35;
  v27[4] = &protocol witness table for VerticalStack;
  v29 = sub_10000DB7C(v27);
  (*(v33 + 32))(v29, v19, v28);
  sub_10000CFBC(&v40, &qword_10094BB30, qword_100796E40);
  return sub_10000CFBC(v42, &qword_10094BB30, qword_100796E40);
}

uint64_t sub_10058739C(uint64_t a1, uint64_t a2)
{
  sub_10076D60C();
  sub_10076D5DC();
  sub_10000A570(a2 + 192, v4);
  return sub_10076D5BC();
}

uint64_t sub_1005873E4(uint64_t a1, uint64_t a2)
{
  sub_10076D60C();
  sub_10076D5DC();
  sub_10000A570(a2 + 232, v4);
  return sub_10076D5BC();
}

uint64_t sub_10058742C(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    sub_100016E2C(v5 + 600, v27, &qword_10094BB30, qword_100796E40);
    v7 = 640;
  }

  else
  {
    sub_10000A570(v5 + 480, v27);
    v7 = 520;
  }

  sub_100016E2C(v5 + v7, v26, &qword_10094BB30, qword_100796E40);
  if (*(v5 + 338) == 1)
  {
    sub_100016E2C(v26, v24, &qword_10094BB30, qword_100796E40);
    if (v25)
    {
      sub_10000CF78(v24, v25);
      sub_10076D20C();
      sub_10000CFBC(v26, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v27, &qword_10094BB30, qword_100796E40);
      sub_10000CD74(v24);
    }

    else
    {
      sub_10000CFBC(v26, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v27, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v24, &qword_10094BB30, qword_100796E40);
    }

    v8 = 0;
    result = 1;
    goto LABEL_33;
  }

  sub_100016E2C(v27, &v22, &qword_10094BB30, qword_100796E40);
  if (v23)
  {
    sub_100012498(&v22, v24);
    sub_10000CF78(v24, v25);
    sub_10076D6DC();
    sub_10000CF78(v24, v25);
    sub_10076D2CC();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_10000CF78(v24, v25);
    v28.var0 = v11;
    v28.var1 = v13;
    v28.var2 = v15;
    v28.var3 = v17;
    v18 = sub_10076D71C(v28) > 1;
    sub_10000CD74(v24);
  }

  else
  {
    sub_10000CFBC(&v22, &qword_10094BB30, qword_100796E40);
    v18 = 0;
  }

  sub_100016E2C(v26, v24, &qword_10094BB30, qword_100796E40);
  if (v25)
  {
    sub_10000CF78(v24, v25);
    v19 = sub_10076D20C();
    sub_10000CFBC(v26, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v27, &qword_10094BB30, qword_100796E40);
    result = sub_10000CD74(v24);
    if (v18)
    {
      v20 = a1;
      if (v19)
      {
        v20 = a1 - 1;
        if (__OFSUB__(a1, 1))
        {
          goto LABEL_35;
        }
      }

      if (v20 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v20;
      }
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      if (v19)
      {
        v8 = a1 - result < 1;
LABEL_33:
        v27[0] = 0;
        v26[0] = v8;
        return result;
      }

LABEL_32:
      v8 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_10000CFBC(v26, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v27, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v24, &qword_10094BB30, qword_100796E40);
    if (a1 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = a1;
    }

    if (v18)
    {
      result = v21;
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1005877E4(uint64_t a1, uint64_t a2)
{
  sub_10076D60C();
  sub_10076D5DC();
  sub_10000A570(a2 + 152, v4);
  return sub_10076D5BC();
}

double _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, id a2, double a3)
{
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_10077087C();

  if ((v6 & 1) != 0 && *(a1 + 337) == 1)
  {
    sub_10000CF78((a1 + 112), *(a1 + 136));
    sub_10076D41C();
    sub_10000CF78((a1 + 152), *(a1 + 176));
    sub_10076D41C();
    sub_10000CF78((a1 + 16), *(a1 + 40));
    sub_10076D41C();
    sub_10000CF78((a1 + 296), *(a1 + 320));
    sub_10076D41C();
    return a3;
  }

  if ((sub_10077071C() & 1) != 0 && *(a1 + 339) == 1)
  {
    sub_10000CF78((a1 + 112), *(a1 + 136));
    sub_10076D41C();
    sub_10000CF78((a1 + 152), *(a1 + 176));
    sub_10076D41C();
    if (*(a1 + 336) == 1)
    {
      sub_10000CF78((a1 + 16), *(a1 + 40));
      sub_10076D41C();
    }

    v7 = *(a1 + 320);
    v8 = (a1 + 296);
    goto LABEL_12;
  }

  sub_10000CF78((a1 + 112), *(a1 + 136));
  sub_10076D41C();
  sub_10000CF78((a1 + 152), *(a1 + 176));
  sub_10076D41C();
  sub_10000CF78((a1 + 192), *(a1 + 216));
  sub_10076D41C();
  if (*(a1 + 336) == 1 || (*(a1 + 352) & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = (a1 + 16);
LABEL_12:
    sub_10000CF78(v8, v7);
    sub_10076D41C();
  }

  return a3;
}

uint64_t sub_100587B50(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100587B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100587BB8(uint64_t result, int a2, int a3)
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
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
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
      *(result + 761) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100587CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100587D20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100587DD0(void *a1, uint64_t a2, char a3)
{
  if (*(a2 + 336) == 1)
  {
    result = 160.0;
    if (*(a2 + 339))
    {
      return 293.0;
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_10076FF9C();
  v8 = v7;
  if (v6 == sub_10076FF9C() && v8 == v9)
  {
    goto LABEL_18;
  }

  v11 = sub_10077167C();

  if (v11)
  {
LABEL_10:

    return 52.0;
  }

  v12 = sub_10076FF9C();
  v14 = v13;
  if (v12 == sub_10076FF9C() && v14 == v15)
  {
    goto LABEL_18;
  }

  v17 = sub_10077167C();

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = sub_10076FF9C();
  v20 = v19;
  if (v18 == sub_10076FF9C() && v20 == v21)
  {
LABEL_18:

    return 52.0;
  }

  v23 = sub_10077167C();

  if (v23)
  {
    goto LABEL_10;
  }

  v24 = sub_10076FF9C();
  v26 = v25;
  if (v24 == sub_10076FF9C() && v26 == v27)
  {

    return 54.0;
  }

  v28 = sub_10077167C();

  if (v28)
  {

    return 54.0;
  }

  v29 = sub_10076FF9C();
  v31 = v30;
  if (v29 == sub_10076FF9C() && v31 == v32)
  {

    return 62.0;
  }

  v33 = sub_10077167C();

  if (v33)
  {

    return 62.0;
  }

  v34 = sub_10076FF9C();
  v36 = v35;
  if (v34 == sub_10076FF9C() && v36 == v37)
  {

    return 67.0;
  }

  v38 = sub_10077167C();

  if (v38)
  {

    return 67.0;
  }

  v39 = sub_10076FF9C();
  v41 = v40;
  if (v39 == sub_10076FF9C() && v41 == v42)
  {

    return 76.0;
  }

  v43 = sub_10077167C();

  if (v43)
  {

    return 76.0;
  }

  v44 = sub_10076FF9C();
  v46 = v45;
  if (v44 == sub_10076FF9C() && v46 == v47)
  {

    return 153.0;
  }

  v48 = sub_10077167C();

  if (v48)
  {

    return 153.0;
  }

  v49 = sub_10076FF9C();
  v51 = v50;
  if (v49 == sub_10076FF9C() && v51 == v52)
  {

    return 170.0;
  }

  v53 = sub_10077167C();

  if (v53)
  {

    return 170.0;
  }

  v54 = sub_10076FF9C();
  v56 = v55;
  if (v54 == sub_10076FF9C() && v56 == v57)
  {

    return 193.0;
  }

  v58 = sub_10077167C();

  if (v58)
  {

    return 193.0;
  }

  v59 = sub_10076FF9C();
  v61 = v60;
  if (v59 == sub_10076FF9C() && v61 == v62)
  {
    goto LABEL_66;
  }

  v63 = sub_10077167C();

  if (v63)
  {
  }

  else
  {
    v64 = sub_10076FF9C();
    v66 = v65;
    if (v64 == sub_10076FF9C() && v66 == v67)
    {
LABEL_66:

      goto LABEL_72;
    }

    v68 = sub_10077167C();

    if ((v68 & 1) == 0)
    {
      return 52.0;
    }
  }

LABEL_72:
  result = 216.0;
  if (a3)
  {
    return 293.0;
  }

  return result;
}

uint64_t sub_100588540()
{
  sub_10000CD74(v0 + 4);

  sub_10000CD74(v0 + 11);
  sub_10000CD74(v0 + 16);
  sub_10000CD74(v0 + 21);
  sub_10000CD74(v0 + 26);
  sub_10000CD74(v0 + 31);
  sub_10000CD74(v0 + 39);
  if (v0[50])
  {
    sub_10000CD74(v0 + 47);
  }

  if (v0[55])
  {
    sub_10000CD74(v0 + 52);
  }

  if (v0[60])
  {
    sub_10000CD74(v0 + 57);
  }

  sub_10000CD74(v0 + 62);
  if (v0[70])
  {
    sub_10000CD74(v0 + 67);
  }

  if (v0[75])
  {
    sub_10000CD74(v0 + 72);
  }

  if (v0[80])
  {
    sub_10000CD74(v0 + 77);
  }

  if (v0[85])
  {
    sub_10000CD74(v0 + 82);
  }

  if (v0[90])
  {
    sub_10000CD74(v0 + 87);
  }

  if (v0[95])
  {
    sub_10000CD74(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_10058865C()
{
  sub_10000CD74((v0 + 80));

  sub_10000CD74((v0 + 136));
  sub_10000CD74((v0 + 176));
  sub_10000CD74((v0 + 216));
  sub_10000CD74((v0 + 256));
  sub_10000CD74((v0 + 296));
  sub_10000CD74((v0 + 360));
  if (*(v0 + 448))
  {
    sub_10000CD74((v0 + 424));
  }

  if (*(v0 + 488))
  {
    sub_10000CD74((v0 + 464));
  }

  if (*(v0 + 528))
  {
    sub_10000CD74((v0 + 504));
  }

  sub_10000CD74((v0 + 544));
  if (*(v0 + 608))
  {
    sub_10000CD74((v0 + 584));
  }

  if (*(v0 + 648))
  {
    sub_10000CD74((v0 + 624));
  }

  if (*(v0 + 688))
  {
    sub_10000CD74((v0 + 664));
  }

  if (*(v0 + 728))
  {
    sub_10000CD74((v0 + 704));
  }

  if (*(v0 + 768))
  {
    sub_10000CD74((v0 + 744));
  }

  if (*(v0 + 808))
  {
    sub_10000CD74((v0 + 784));
  }

  return _swift_deallocObject(v0, 840, 7);
}

uint64_t sub_100588784()
{
  sub_10000CD74((v0 + 32));

  sub_10000CD74((v0 + 88));
  sub_10000CD74((v0 + 128));
  sub_10000CD74((v0 + 168));
  sub_10000CD74((v0 + 208));
  sub_10000CD74((v0 + 248));
  sub_10000CD74((v0 + 312));
  if (*(v0 + 400))
  {
    sub_10000CD74((v0 + 376));
  }

  if (*(v0 + 440))
  {
    sub_10000CD74((v0 + 416));
  }

  if (*(v0 + 480))
  {
    sub_10000CD74((v0 + 456));
  }

  sub_10000CD74((v0 + 496));
  if (*(v0 + 560))
  {
    sub_10000CD74((v0 + 536));
  }

  if (*(v0 + 600))
  {
    sub_10000CD74((v0 + 576));
  }

  if (*(v0 + 640))
  {
    sub_10000CD74((v0 + 616));
  }

  if (*(v0 + 680))
  {
    sub_10000CD74((v0 + 656));
  }

  if (*(v0 + 720))
  {
    sub_10000CD74((v0 + 696));
  }

  if (*(v0 + 760))
  {
    sub_10000CD74((v0 + 736));
  }

  return _swift_deallocObject(v0, 792, 7);
}

void sub_1005888C0()
{
  v1 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel] font];
  if (v1)
  {
    v2 = v1;
    [v1 descender];

    if (qword_1009408D0 != -1)
    {
      swift_once();
    }

    v3 = sub_10076220C();
    sub_10000A61C(v3, qword_10095D940);
    v4 = [v0 traitCollection];
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007841E0;
    *(v5 + 32) = v4;
    v6 = v4;
    v7 = sub_10076DEEC();
    sub_100219D24(v8);
    sub_10076D3EC();
  }

  else
  {
    __break(1u);
  }
}

id sub_100588A20(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5)
{
  v9 = sub_10076703C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v14], v13, v9);
  swift_endAccess();
  sub_10058926C();
  (*(v10 + 8))(v13, v9);
  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel];
  if (a3)
  {
    a3 = sub_10076FF6C();
  }

  [v15 setText:a3];

  v16 = *&v5[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel];
  if (a5)
  {
    a5 = sub_10076FF6C();
  }

  [v16 setText:a5];

  return [v5 setNeedsLayout];
}

uint64_t sub_100588C1C(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076220C();
  sub_10000DB18(v4, a3);
  sub_10000A61C(v4, a3);
  return sub_1007621FC();
}

char *sub_100588C74(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_100766FCC();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10076702C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100766F4C();
  v19 = __chkstk_darwin(v18);
  (*(v21 + 104))(&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v19);
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v14);
  sub_100766FBC();
  sub_100766F5C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v51.receiver = v4;
  v51.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v30 = [v29 layer];
  [v30 setAllowsGroupBlending:0];

  v31 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel;
  v32 = qword_100941130;
  v33 = *&v29[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_10076D3DC();
  v35 = sub_10000A61C(v34, qword_1009A2188);
  v36 = *(v34 - 8);
  v50 = *(v36 + 16);
  v50(v12, v35, v34);
  v49 = *(v36 + 56);
  v49(v12, 0, 1, v34);
  sub_1007625DC();

  [*&v29[v31] setNumberOfLines:1];
  v37 = *&v29[v31];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 secondaryLabelColor];
  [v39 setTextColor:v40];

  v41 = [*&v29[v31] layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  v42 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel;
  v43 = qword_100941138;
  v44 = *&v29[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_10000A61C(v34, qword_1009A21A0);
  v50(v12, v45, v34);
  v49(v12, 0, 1, v34);
  sub_1007625DC();

  [*&v29[v42] setNumberOfLines:3];
  v46 = *&v29[v42];
  v47 = [v38 labelColor];
  [v46 setTextColor:v47];

  [v29 addSubview:*&v29[v31]];
  [v29 addSubview:*&v29[v42]];
  sub_10058926C();

  return v29;
}

id sub_10058926C()
{
  v1 = v0;
  v54 = sub_10076702C();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100766FCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_10076703C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v39 - v13;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v42 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel];
  v17 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  v18 = *(v10 + 16);
  v53 = v17;
  v50 = v10 + 16;
  v51 = v1;
  v44 = v18;
  v18(v16, &v1[v17], v9);
  sub_100766FDC();
  v55 = *(v10 + 8);
  v52 = v10 + 8;
  v55(v16, v9);
  v19 = sub_100766F9C();
  v20 = *(v4 + 8);
  v48 = v3;
  v46 = v4 + 8;
  v41 = v20;
  v20(v8, v3);
  if (!v19)
  {
    v19 = [objc_opt_self() secondaryLabelColor];
  }

  v21 = v42;
  [v42 setTextColor:v19];

  v22 = v53;
  v23 = v51;
  v24 = v49;
  v25 = v44;
  v44(v49, &v51[v53], v9);
  v26 = v47;
  sub_100766FEC();
  v55(v24, v9);
  v27 = [v23 traitCollection];
  v28 = sub_100766FFC();

  v29 = *(v56 + 8);
  v56 += 8;
  v40 = v29;
  v29(v26, v54);
  [v21 setTextAlignment:v28];
  v30 = *&v23[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel];
  v31 = v43;
  v25(v43, &v23[v22], v9);
  v32 = v45;
  sub_100766FDC();
  v55(v31, v9);
  v33 = sub_100766FAC();
  v41(v32, v48);
  if (!v33)
  {
    v33 = [objc_opt_self() labelColor];
  }

  [v30 setTextColor:v33];

  v34 = v51;
  v35 = v49;
  v25(v49, &v51[v53], v9);
  sub_100766FEC();
  v55(v35, v9);
  v36 = [v34 traitCollection];
  v37 = sub_100766FFC();

  v40(v26, v54);
  [v30 setTextAlignment:v37];
  return [v34 setNeedsLayout];
}

uint64_t sub_1005897E8@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v3 = sub_10076D65C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_10076D58C();
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v2;
  v14 = v2;
  sub_10076D55C();
  *(swift_allocObject() + 16) = v14;
  v15 = v14;
  sub_10076D63C();
  v16 = *&v15[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel];
  v17 = sub_1007626BC();
  v31 = v17;
  v32 = &protocol witness table for UILabel;
  v30[0] = v16;
  v18 = v16;
  sub_10076D64C();
  v19 = *(v4 + 8);
  v19(v6, v3);
  sub_10000CD74(v30);
  v20 = *&v15[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel];
  v29[3] = v17;
  v29[4] = &protocol witness table for UILabel;
  v29[0] = v20;
  v31 = v3;
  v32 = &protocol witness table for VerticalStack;
  sub_10000DB7C(v30);
  v21 = v20;
  sub_10076D64C();
  v19(v9, v3);
  sub_10000CD74(v29);
  v22 = v28;
  v23 = v26;
  v28[3] = v26;
  v22[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v22);
  sub_10076D57C();
  (*(v27 + 8))(v13, v23);
  return sub_10000CD74(v30);
}

uint64_t sub_100589BFC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_10076702C();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076703C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D54C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10076D67C();
  v12[3] = v13;
  v12[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v12);
  sub_10076D66C();
  v14 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v15 = *(v10 + 104);
  v27 = v9;
  v15(v12, enum case for DisjointStack.EdgePosition.anchored(_:), v9);
  v29 = a1;
  sub_10076D4FC();
  v16 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_displayOptions;
  v17 = v26;
  swift_beginAccess();
  v18 = v17 + v16;
  v19 = v28;
  (*(v6 + 16))(v8, v18, v5);
  sub_100766FEC();
  v20 = v5;
  v21 = v30;
  (*(v6 + 8))(v8, v20);
  v22 = v31;
  result = (*(v21 + 88))(v19, v31);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v12[3] = v13;
    v12[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v12);
    sub_10076D66C();
    v15(v12, v14, v27);
    return sub_10076D50C();
  }

  else
  {
    v24 = v27;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v12[3] = v13;
        v12[4] = &protocol witness table for ZeroDimension;
        sub_10000DB7C(v12);
        sub_10076D66C();
        v15(v12, v14, v24);
        return sub_10076D51C();
      }

      else
      {
        return (*(v21 + 8))(v19, v22);
      }
    }
  }

  return result;
}

uint64_t sub_100589F84(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076703C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_100766FEC();
  (*(v8 + 8))(v10, v7);
  sub_10076700C();
  (*(v4 + 8))(v6, v3);
  return sub_10076D5EC();
}

uint64_t type metadata accessor for CarouselItemModuleHeaderView(uint64_t a1)
{
  result = qword_10095D998;
  if (!qword_10095D998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10058A30C(uint64_t a1)
{
  result = sub_10076703C();
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

double sub_10058A3AC(uint64_t a1, __n128 a2, double a3)
{
  sub_1005897E8(v6);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0FC();
  v4 = v3;
  sub_10000CD74(v6);
  return v4;
}

uint64_t sub_10058A454()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10058A49C(__n128 a1)
{
  if (qword_1009408C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10076220C();
  v2 = sub_10000A61C(v1, qword_10095D910);
  v6[3] = v1;
  v6[4] = sub_100219D24(v3);
  v4 = sub_10000DB7C(v6);
  (*(*(v1 - 8) + 16))(v4, v2, v1);
  return sub_10076D5BC();
}

uint64_t sub_10058A564(__n128 a1)
{
  if (qword_1009408C8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076220C();
  v2 = sub_10000A61C(v1, qword_10095D928);
  v11 = v1;
  v4 = sub_100219D24(v3);
  v12 = v4;
  v5 = sub_10000DB7C(v10);
  v6 = *(*(v1 - 8) + 16);
  v6(v5, v2, v1);
  sub_10076D5BC();
  if (qword_1009408D0 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v1, qword_10095D940);
  v11 = v1;
  v12 = v4;
  v8 = sub_10000DB7C(v10);
  v6(v8, v7, v1);
  return sub_10076D5CC();
}

void sub_10058A6A4(__n128 a1)
{
  v2 = sub_100766FCC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766F4C();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v8);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  sub_100766FBC();
  sub_100766F5C();
  v11 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleHeaderView_titleLabel;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_10077156C();
  __break(1u);
}

uint64_t type metadata accessor for CappedSizeRoundedTitledButton(uint64_t a1)
{
  result = qword_10095D9B8;
  if (!qword_10095D9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10058A9A0(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v11 = a1;
  objc_msgSendSuper2(&v16, "sizeThatFits:", a2, a3);
  v13 = v12;
  v14 = *&v11[qword_10095D9A8 + 24];
  sub_10000CF78(&v11[qword_10095D9A8], v14);
  sub_1000FF02C(v14);
  sub_10076D40C();

  (*(v8 + 8))(v10, v7);
  return v13;
}

void sub_10058AB08(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

double sub_10058AB84(char *a1)
{
  v1 = *&a1[qword_10095D9B0];
  if (v1)
  {
    v2 = *&a1[qword_10095D9B0 + 8];
    v3 = a1;
    v4 = sub_10001CE50(v1, v2);
    v1(v4);

    return sub_1000167E0(v1, v2);
  }

  return result;
}

id sub_10058AC08(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

double sub_10058ACA0()
{
  sub_10000CD74((v0 + qword_10095D9A8));
  v1 = *(v0 + qword_10095D9B0);
  v2 = *(v0 + qword_10095D9B0 + 8);

  return sub_1000167E0(v1, v2);
}

double sub_10058ACE4(uint64_t a1)
{
  sub_10000CD74((a1 + qword_10095D9A8));
  v2 = *(a1 + qword_10095D9B0);
  v3 = *(a1 + qword_10095D9B0 + 8);

  return sub_1000167E0(v2, v3);
}

uint64_t sub_10058AD50@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    *(a2 + 3) = &type metadata for Double;
    *(a2 + 4) = &protocol witness table for Double;
    *a2 = 32.0;
  }

  else
  {
    sub_100642F38(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_10058AF54(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_1007713EC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56) == v1[7] && *(v2 + 64) == v1[8];
  if (!v3 && (sub_10077167C() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_10076F52C();

  return v4 & 1;
}

uint64_t sub_10058B05C(uint64_t a1, __n128 a2)
{
  sub_1007713FC();

  return sub_10077008C();
}

double sub_10058B0A8()
{

  v1 = OBJC_IVAR____TtC20ProductPageExtension29StringPreferencesDebugSetting_key;
  v2 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_10058B134()
{
  sub_100016C74(v0 + 16);

  v1 = OBJC_IVAR____TtC20ProductPageExtension29StringPreferencesDebugSetting_key;
  v2 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StringPreferencesDebugSetting(uint64_t a1)
{
  result = qword_10095DA30;
  if (!qword_10095DA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10058B268(uint64_t a1)
{
  sub_10058B304();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10058B304()
{
  if (!qword_10095DA40)
  {
    v0 = sub_10076F53C();
    if (!v1)
    {
      atomic_store(v0, &qword_10095DA40);
    }
  }
}

id sub_10058B354()
{
  v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled] = 1;
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v4 = type metadata accessor for CollectionViewTableFlowLayout();
  *v3 = 0;
  v3[1] = 0;
  v11.receiver = v0;
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, "init");
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v9 = v5;
  [v9 setSectionInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v9 setMinimumInteritemSpacing:0.0];
  [v9 setMinimumLineSpacing:0.0];
  [v9 setScrollDirection:0];

  return v9;
}

double sub_10058B530()
{
  v1 = [v0 collectionView];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 delegate];

    if (v4)
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5 && (v6 = v5, (v7 = [v0 collectionView]) != 0))
      {
        v8 = v7;
        [v6 collectionView:v7 heightForGlobalHeaderViewInTableFlowLayout:v0];
        v2 = v9;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v2;
}

void sub_10058B628()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v25, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v26);
    v4 = sub_10058B530();

    v5 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
    *v5 = Width;
    v5[1] = v4;
  }

  else
  {
    v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
    *v6 = 0;
    *(v6 + 1) = 0;
  }

  v7 = 0.0;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    v8 = [v0 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 contentInset];
      v7 = v10;
      v12 = v11;
      [v9 bounds];
      v27.origin.x = sub_100102A30(v13, v14, v15, v16, v7, v12);
      MinY = CGRectGetMinY(v27);

      if (MinY < v7)
      {
        v7 = MinY;
      }
    }
  }

  v18 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  *v18 = 0.0;
  v18[1] = v7;
  *(v18 + 1) = v19;
  v20 = &v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  if (v21)
  {
    v22 = v20[1];

    v21(v0);
    sub_1000167E0(v21, v22);
    v23 = *v20;
  }

  else
  {
    v23 = 0;
  }

  v24 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  sub_1000167E0(v23, v24);
}

id sub_10058B8A0(__n128 a1)
{
  v2 = v1;
  isa = sub_10075E02C().super.isa;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v4 = objc_msgSendSuper2(&v8, "layoutAttributesForItemAtIndexPath:", isa);

  if (v4)
  {
    if (*&v2[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v2[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_1000DE4D0();
      v6 = sub_10077116C();
      [v6 frame];
      [v6 setFrame:?];

      return v6;
    }
  }

  return v4;
}

id sub_10058BA7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 0xD000000000000035 && 0x80000001007EE2B0 == a2 || (sub_10077167C() & 1) != 0)
  {
    v4 = sub_10076FF6C();
    isa = sub_10075E02C().super.isa;
    v6 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v4 withIndexPath:isa];

    [v6 setFrame:{*&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame], *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 8], *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 16], *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 24]}];
  }

  else
  {
    v8 = sub_10076FF6C();
    v9 = sub_10075E02C().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for CollectionViewTableFlowLayout();
    v6 = objc_msgSendSuper2(&v12, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v8, v9);

    if (v6)
    {
      if (*&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
      {
        sub_1000DE4D0();
        v11 = sub_10077116C();
        [v11 frame];
        [v11 setFrame:?];

        return v11;
      }
    }
  }

  return v6;
}

id sub_10058BC3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10076FF6C();
  isa = sub_10075E02C().super.isa;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v6 = objc_msgSendSuper2(&v10, "layoutAttributesForDecorationViewOfKind:atIndexPath:", v4, isa);

  if (v6)
  {
    if (*&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_1000DE4D0();
      v8 = sub_10077116C();
      [v8 frame];
      [v8 setFrame:?];

      return v8;
    }
  }

  return v6;
}

id sub_10058BD40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FF9C();
  v13 = v12;
  sub_10075E06C();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

unint64_t sub_10058BE74(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_10075E11C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v6[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  v16 = *&v6[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8];
  v48.origin.x = a1;
  v48.origin.y = a2;
  v48.size.width = a3;
  v48.size.height = a4;
  v18 = CGRectGetMinY(v48) - v16;
  if (v18 < 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  v20 = type metadata accessor for CollectionViewTableFlowLayout();
  v47.receiver = v6;
  v47.super_class = v20;
  v21 = objc_msgSendSuper2(&v47, "layoutAttributesForElementsInRect:", a1, v19, a3, a4);
  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  sub_1000DE4D0();
  v23 = sub_1007701BC();

  if (v17 < COERCE_DOUBLE(1) || v16 < COERCE_DOUBLE(1))
  {
    return v23;
  }

  if (v23 >> 62)
  {
    v25 = sub_10077158C();
    if (v25)
    {
      goto LABEL_11;
    }

LABEL_29:

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_29;
  }

LABEL_11:
  v42 = v15;
  v43 = v13;
  v44 = v12;
  v45 = v7;
  v46 = _swiftEmptyArrayStorage;

  sub_1007714EC();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = sub_10077149C();
      }

      else
      {
        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 representedElementKind];
      if (v30)
      {
        v31 = v30;
        v32 = sub_10076FF9C();
        v34 = v33;

        if (v32 == 0xD000000000000035 && 0x80000001007EE2B0 == v34)
        {

          goto LABEL_14;
        }

        v36 = sub_10077167C();

        if (v36)
        {
          goto LABEL_14;
        }
      }

      v27 = sub_10077116C();
      [v27 frame];
      [v27 setFrame:?];

LABEL_14:
      ++v26;
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      if (v25 == v26)
      {
        swift_bridgeObjectRelease_n();
        v7 = v45;
        v23 = v46;
        v13 = v43;
        v12 = v44;
        v15 = v42;
LABEL_30:
        v46 = v23;
        v49.origin.x = a1;
        v49.origin.y = a2;
        v49.size.width = a3;
        v49.size.height = a4;
        if (CGRectIntersectsRect(v49, *&v7[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame]))
        {
          v37 = sub_10076FF6C();
          sub_10075E0CC();
          isa = sub_10075E02C().super.isa;
          (*(v13 + 8))(v15, v12);
          v39 = [v7 layoutAttributesForSupplementaryViewOfKind:v37 atIndexPath:isa];

          if (v39)
          {
            v7 = v39;
            sub_10077019C();
            if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          }
        }

        return v23;
      }
    }
  }

  __break(1u);
LABEL_36:
  sub_10077021C();
LABEL_33:
  sub_10077025C();

  return v46;
}

id sub_10058C374(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v12 = 0;
  if (*(a1 + OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled) == 1)
  {
    v13 = a3;
    v14 = a1;
    isa = sub_10075E02C().super.isa;
    v16 = type metadata accessor for CollectionViewTableFlowLayout();
    v18.receiver = v14;
    v18.super_class = v16;
    v12 = objc_msgSendSuper2(&v18, *a5, v13, isa);
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_10058C4D4(id a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *&v6[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] < COERCE_DOUBLE(1) || *&v6[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] < COERCE_DOUBLE(1);
  if (!v11 && v6[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    if (CGRectGetMinY(*&a3) <= 0.0)
    {
      return 1;
    }

    MinY = CGRectGetMinY(*&v6[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame]);
    v13 = [v6 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 contentInset];
      v16 = v15;

      if (MinY < v16)
      {
        return 1;
      }
    }

    else if (MinY < 0.0)
    {
      return 1;
    }
  }

  v18.receiver = v6;
  v18.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v18, "shouldInvalidateLayoutForBoundsChange:", a3, a4, a5, a6);
}

void *sub_10058C66C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v23.receiver = v6;
  v23.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v11 = objc_msgSendSuper2(&v23, "invalidationContextForBoundsChange:", a3, a4, a5, a6);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  v13 = [v6 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;

    if (v16 != a5)
    {
      return v12;
    }
  }

  else
  {
    v18 = 0.0;
    if (a5 != 0.0)
    {
      return v12;
    }
  }

  if (v18 == a6 && *&v6[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v6[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
  {
    v20 = sub_10076FF6C();
    sub_10000A5D4(&qword_100944C48, &unk_10079AFF0);
    sub_10075E11C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10075E0CC();
    isa = sub_1007701AC().super.isa;

    [v12 invalidateSupplementaryElementsOfKind:v20 atIndexPaths:isa];
  }

  return v12;
}

void sub_10058C910(void *a1, uint64_t a2)
{
  v3 = v2;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v23, "invalidateLayoutWithContext:", a1);
  v5 = [a1 invalidatedSupplementaryIndexPaths];
  if (v5)
  {
    v6 = v5;
    sub_10000A5D4(&unk_10095DB50, &qword_1007AC430);
    v7 = sub_10076FE4C();

    if (*(v7 + 16))
    {
      sub_100561E0C(0xD000000000000035, 0x80000001007EE2B0);
      v9 = v8;

      if (v9)
      {
        v10 = 0.0;
        if (v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
        {
          v11 = [v3 collectionView];
          if (v11)
          {
            v12 = v11;
            [v11 contentInset];
            v10 = v13;
            v15 = v14;
            [v12 bounds];
            v24.origin.x = sub_100102A30(v16, v17, v18, v19, v10, v15);
            MinY = CGRectGetMinY(v24);

            if (MinY < v10)
            {
              v10 = MinY;
            }
          }
        }

        v21 = &v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
        v22 = *&v3[OBJC_IVAR____TtC20ProductPageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
        *v21 = 0.0;
        v21[1] = v10;
        *(v21 + 1) = v22;
      }
    }

    else
    {
    }
  }
}

id sub_10058CB38(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10058CBA4()
{
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  sub_10077145C(55);
  v8._object = 0x80000001007EE330;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_1007700CC(v8);
  v2 = [v0 description];
  v3 = sub_10076FF9C();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1007700CC(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1007713BC();

  return result;
}

double sub_10058CCC4()
{
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  sub_10077145C(55);
  v8._object = 0x80000001007EE2F0;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_1007700CC(v8);
  v2 = [v0 description];
  v3 = sub_10076FF9C();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1007700CC(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_1007713BC();

  return result;
}

double sub_10058CE2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10075FAEC();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076161C();
  sub_10058D108(&qword_10094D3F0, &type metadata accessor for ArcadeShowcase, &protocol conformance descriptor for ArcadeShowcase);
  sub_10076332C();
  if (!v26)
  {
    return 0.0;
  }

  v24[1] = v2;
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v10 = v26;
  sub_100767E6C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v12 = v11;
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  v15 = sub_100630CB4();
  if (sub_10075FABC())
  {
    v16 = sub_1007615EC();
  }

  else
  {
    v16 = sub_10076160C();
  }

  v19 = v16;
  v20 = v17;
  swift_getObjectType();
  v21.n128_u64[0] = v12;
  sub_10026C9FC(v19, v20, v15, v21, v14);
  v18 = v22;
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v25);
  return v18;
}

uint64_t sub_10058D108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10058D154@<D0>(uint64_t a1@<X8>)
{
  sub_10076B7BC();
  sub_10059129C(&unk_10095DD00, &type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v2 = sub_10076F34C();
  if (*(v2 + 16))
  {
    sub_10000A570(v2 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10058D210()
{
  v15 = v0;
  sub_10059129C(&unk_10095DD00, &type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v1 = sub_10076F34C();
  if (*(v1 + 16))
  {
    sub_10000A570(v1 + 32, v14);

    sub_10000CF78(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    v3 = sub_10076F34C();
    v4 = *(v3 + 16);
    v5 = v4 != 0;
    v6 = v4 - v5;
    if (v4 >= v5)
    {
      v7 = v4 - v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + 1;
    result = v3 + 40 * v5 + 32;
    while (1)
    {
      v10 = v6 == 0;
      if (!v6)
      {
LABEL_9:

        sub_10000CD74(v14);
        return v10;
      }

      if (!--v8)
      {
        break;
      }

      v11 = result + 40;
      --v6;
      sub_10000A570(result, v13);
      sub_10000CF78(v13, v13[3]);
      v12 = swift_getDynamicType();
      sub_10000CD74(v13);
      result = v11;
      if (v12 != DynamicType)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t sub_10058D3B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10058D210();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10058D3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_10076D1AC();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17 = *(v11 + 8);
  v17(v16, v10);
  if (!v43)
  {
    sub_10000CFBC(v42, &unk_10094F720, &unk_100785540);
    goto LABEL_8;
  }

  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007619CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v33 = 1;
    v32 = v41;
    goto LABEL_9;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17(v13, v10);
  if (v42[0] != 1 || (, v18 = sub_10076B8FC(), , !v18))
  {

    goto LABEL_8;
  }

  v19 = sub_10076461C();
  v20 = sub_10076469C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a1, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = v40;
  v23 = v19;
  sub_10058EEB0(v7, v40);
  sub_10000CFBC(v7, &unk_10095DCF0, &unk_10078C910);
  v24 = *(v8 + 24);
  v25 = sub_10076D3DC();
  v26 = v37;
  (*(*(v25 - 8) + 16))(v37, v22 + v24, v25);
  v28 = v38;
  v27 = v39;
  (*(v38 + 104))(v26, enum case for FontSource.useCase(_:), v39);
  v29.super.isa = v23;
  isa = sub_10076D19C(v29).super.isa;
  (*(v28 + 8))(v26, v27);
  v31 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10076BE4C();
  sub_10076BDBC();
  v32 = v41;
  sub_100766E2C();

  sub_10059123C(v22, type metadata accessor for SearchActionContentView.Layout.Metrics);
  v33 = 0;
LABEL_9:
  v34 = sub_100766E4C();
  return (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
}

char *sub_10058D960(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView;
  *&v4[v9] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel;
  sub_10076D4BC();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  if (qword_1009408D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v13 = sub_10000A61C(v12, qword_1009A08F8);
  sub_100590CA4(v13, &v4[v11]);
  v35.receiver = v4;
  v35.super_class = type metadata accessor for SearchActionContentView(0);
  v14 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = *&v18[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v20 = swift_allocObject();
  v34 = xmmword_1007841E0;
  *(v20 + 16) = xmmword_1007841E0;
  *(v20 + 32) = v19;
  v21 = *&v18[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007841E0;
  *(v22 + 32) = v21;
  sub_10000A5D4(&qword_1009453C8, &qword_1007B3350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = v19;
  v25 = v21;
  sub_1006CDE94(inited);
  v27 = v26;
  swift_setDeallocating();
  sub_10000A5D4(&unk_1009453D0, &unk_100787870);
  result = swift_arrayDestroy();
  if (!(v27 >> 62))
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_10058F13C();
    sub_10000A5D4(&unk_100945BF0, &qword_100786810);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100783DD0;
    *(v33 + 32) = sub_10076E3FC();
    *(v33 + 40) = &protocol witness table for UITraitLegibilityWeight;
    sub_100770C6C();

    swift_unknownObjectRelease();

    return v18;
  }

  result = sub_10077158C();
  v29 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v29 >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = sub_10077149C();
      }

      else
      {
        v31 = *(v27 + 8 * i + 32);
      }

      v32 = v31;
      [v18 addSubview:{v31, v34}];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_10058DD28(double *a1)
{
  v2 = v1;
  v45 = sub_10076DD3C();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v40 - v7;
  __chkstk_darwin(v8);
  v48 = &v40 - v9;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v44 = sub_10076D1AC();
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v40 - v20);
  v22 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_100590CA4(&v2[v22], v21);
  v23 = *a1 == *v21 && a1[1] == v21[1];
  if (v23 && a1[2] == v21[2] && (sub_10076D3CC() & 1) != 0 && *(a1 + v16[7]) == *(v21 + v16[7]) && *(a1 + v16[8]) == *(v21 + v16[8]))
  {
    v24 = v16[9];
    v25 = *(a1 + v24);
    v26 = *(v21 + v24);
    result = sub_10059123C(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
    if (v25 == v26)
    {
      return result;
    }
  }

  else
  {
    sub_10059123C(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  v42 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView];
  v28 = [v2 traitCollection];
  sub_100590CA4(&v2[v22], v18);
  v43 = v12;
  v29 = v45;
  v41 = v22;
  v30 = v16[6];
  v31 = sub_10076D3DC();
  (*(*(v31 - 8) + 16))(v15, &v18[v30], v31);
  v32 = v44;
  (*(v13 + 104))(v15, enum case for FontSource.useCase(_:), v44);
  v33.super.isa = v28;
  isa = sub_10076D19C(v33).super.isa;
  (*(v13 + 8))(v15, v32);
  v35 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10059123C(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_10075FC3C();
  [v2 setNeedsLayout];
  sub_100590CA4(&v2[v41], v18);
  v36 = v46;
  sub_10076DD2C();
  v37 = v47;
  sub_10076DCFC();
  v38 = *(v4 + 8);
  v38(v36, v29);
  v39 = v48;
  sub_10076DD1C();
  v38(v37, v29);
  sub_10076DD0C();
  v38(v39, v29);
  sub_10059123C(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_10076D49C();
  return [v2 setNeedsLayout];
}

uint64_t sub_10058E230()
{
  v1 = type metadata accessor for SearchActionContentView.Layout(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10076D1FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchActionContentView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel];
  v4[8] = sub_10076D4BC();
  v4[9] = &protocol witness table for UILabel;
  v4[5] = v10;
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView];
  v4[3] = sub_10075FD2C();
  v4[4] = &protocol witness table for UIView;
  *v4 = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_100590CA4(&v0[v12], v4 + *(v2 + 32));
  v13 = v10;
  v14 = v11;
  sub_10076422C();
  sub_10058E41C(v0, v15, v16, v17, v18);
  sub_10059123C(v4, type metadata accessor for SearchActionContentView.Layout);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10058E41C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  MinX = CGRectGetMinX(*&a2);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  MinY = CGRectGetMinY(v24);
  v13 = v5 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = *(v13 + *(v14 + 28));
  v16 = MinY + v15;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  Width = CGRectGetWidth(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v18 = CGRectGetHeight(v26) - v15 - *(v13 + *(v14 + 32));
  sub_100016E2C(v6, &v20, &unk_10094DA00, &qword_100783FA0);
  if (v21)
  {
    sub_100012498(&v20, v22);
    sub_10000CF78(v22, v23);
    sub_10076D2BC();
    sub_10000CF78(v22, v23);
    v27.origin.x = MinX;
    v27.origin.y = v16;
    v27.size.width = Width;
    v27.size.height = v18;
    CGRectGetMinX(v27);
    v28.origin.y = v16;
    v28.origin.x = MinX;
    v28.size.width = Width;
    v28.size.height = v18;
    CGRectGetMidY(v28);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v22);
  }

  else
  {
    sub_10000CFBC(&v20, &unk_10094DA00, &qword_100783FA0);
  }

  sub_10000CF78((v6 + 40), *(v6 + 64));
  sub_10076D2AC();
  sub_10000CF78((v6 + 40), *(v6 + 64));
  v29.origin.y = v16;
  v29.origin.x = MinX;
  v29.size.width = Width;
  v29.size.height = v18;
  CGRectGetMidY(v29);
  sub_100770A4C();
  sub_10076D23C();
  return sub_10076D1BC();
}

double sub_10058E774(void *a1, __n128 a2, double a3)
{
  v5 = a2.n128_f64[0];
  v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v6);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D1AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v13 = v5 + 0.0;
  sub_100016E2C(v3, &v23, &unk_10094DA00, &qword_100783FA0);
  if (v24)
  {
    sub_100012498(&v23, v25);
    sub_10000CF78(v25, v26);
    sub_10076D2BC();
    sub_10000CD74(v25);
  }

  else
  {
    sub_10000CFBC(&v23, &unk_10094DA00, &qword_100783FA0);
  }

  sub_10000CF78((v3 + 40), *(v3 + 64));
  v14 = a1;
  sub_10076D2AC();
  v15 = v22;
  sub_100590CA4(v12, v22);
  v16 = *(v6 + 24);
  v17 = sub_10076D3DC();
  (*(*(v17 - 8) + 32))(v11, v15 + v16, v17);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  v18 = [v14 traitCollection];
  v26 = v8;
  v27 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v25);
  (*(v9 + 16))(v19, v11, v8);
  sub_10076C8EC();

  (*(v9 + 8))(v11, v8);
  sub_10000CD74(v25);
  return v13;
}

void sub_10058EAE4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10076D1AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    v14 = [v2 traitCollection];
    v15 = &v2[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics];
    swift_beginAccess();
    sub_100590CA4(v15, v13);
    v16 = *(v10 + 24);
    v17 = sub_10076D3DC();
    (*(*(v17 - 8) + 16))(v9, &v13[v16], v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v18.super.isa = v14;
    v19 = v2;
    isa = sub_10076D19C(v18).super.isa;
    (*(v7 + 8))(v9, v6);
    v21 = [objc_opt_self() configurationWithFont:isa scale:1];

    sub_10059123C(v13, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_10076BE4C();

    v22 = *&v19[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView];
    [v22 contentMode];
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v22 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_10075FD2C();
    sub_10059129C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();
  }

  else
  {
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_10075FCEC(v24, v11);
  }
}

uint64_t sub_10058EEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  if ((sub_10077071C() & 1) == 0)
  {
    sub_100016E2C(a1, v10, &unk_10095DCF0, &unk_10078C910);
    v11 = sub_10076469C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000CFBC(v10, &unk_10095DCF0, &unk_10078C910);
LABEL_8:
      if (qword_1009408D8 != -1)
      {
        swift_once();
      }

      v15 = qword_1009A08F8;
      goto LABEL_11;
    }

    sub_10076460C();
    (*(v12 + 8))(v10, v11);
    sub_10076C21C();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 != 1.0)
    {
      goto LABEL_8;
    }
  }

  if (qword_1009408E0 != -1)
  {
    swift_once();
  }

  v15 = qword_1009A0910;
LABEL_11:
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v17 = sub_10000A61C(v16, v15);
  return sub_100590CA4(v17, a2);
}

uint64_t sub_10058F13C()
{
  v1 = v0;
  v2 = sub_10076DD3C();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v33 - v5;
  __chkstk_darwin(v6);
  v36 = &v33 - v7;
  __chkstk_darwin(v8);
  v37 = &v33 - v9;
  v10 = sub_10076D1AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = v14 - 8;
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView] setAccessibilityIgnoresInvertColors:{0, v16}];
  sub_10075FC0C();
  v19 = [v0 traitCollection];
  v20 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_100590CA4(&v0[v20], v18);
  v21 = *(v15 + 32);
  v22 = sub_10076D3DC();
  (*(*(v22 - 8) + 16))(v13, &v18[v21], v22);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v23.super.isa = v19;
  isa = sub_10076D19C(v23).super.isa;
  (*(v11 + 8))(v13, v10);
  v25 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10059123C(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_10075FC3C();
  [v1 setNeedsLayout];
  sub_100590CA4(v1 + v20, v18);
  v26 = v34;
  sub_10076DD2C();
  v27 = v35;
  sub_10076DCFC();
  v28 = *(v38 + 8);
  v29 = v26;
  v30 = v39;
  v28(v29, v39);
  v31 = v36;
  sub_10076DD1C();
  v28(v27, v30);
  sub_10076DD0C();
  v28(v31, v30);
  sub_10059123C(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  return sub_10076D49C();
}

id sub_10058F560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10058F624(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for SearchActionContentView.Layout.Metrics(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10058F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10058F7B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10058F87C(uint64_t a1)
{
  sub_100102D10(319);
  if (v1 <= 0x3F)
  {
    sub_10058F918();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SearchActionContentView.Layout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10058F918()
{
  result = qword_100953E00;
  if (!qword_100953E00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100953E00);
  }

  return result;
}

uint64_t sub_10058F990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_10076D3DC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10058FA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_10076D3DC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10058FA98(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_10076D3DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10058FB80(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  sub_10000DB18(v8, a2);
  v9 = sub_10000A61C(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, a4);
  (*(*(v10 - 8) + 16))(v9 + v8[6], v11, v10);
  __asm { FMOV            V0.2D, #21.0 }

  *v9 = result;
  v9[1].n128_u64[0] = 0x4024000000000000;
  *(v9->n128_u64 + v8[7]) = 0x401C000000000000;
  *(v9->n128_u64 + v8[8]) = 0x4018000000000000;
  *(v9->n128_u64 + v8[9]) = 0x404A800000000000;
  return result;
}

BOOL sub_10058FC9C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    if ((sub_10076D3CC() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]))
    {
      return *(a1 + v6[9]) == *(a2 + v6[9]);
    }
  }

  return 0;
}

double sub_10058FD5C(uint64_t a1)
{
  v2 = sub_10076C38C();
  v85 = *(v2 - 8);
  __chkstk_darwin(v2);
  v84 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SearchActionContentView.Layout(0);
  __chkstk_darwin(v83);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076DD3C();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v73 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = v66 - v9;
  __chkstk_darwin(v10);
  v76 = v66 - v11;
  __chkstk_darwin(v12);
  v77 = v66 - v13;
  v14 = sub_10076DA7C();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v75 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076D1AC();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v17 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v18 - 8);
  v20 = v66 - v19;
  v21 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v21 - 8);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v66 - v25;
  v27 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v27);
  v80 = v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007619CC();
  sub_10059129C(&unk_10094CD60, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_10076332C();
  if (!v87[0])
  {
    return 0.0;
  }

  v29 = sub_10076B8EC();
  if (v30)
  {
    v66[0] = v30;
    v66[1] = v29;
    v67 = v2;
    v68 = v5;
    v31 = sub_10076341C();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v26, a1, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
    swift_getKeyPath();
    v69 = a1;
    sub_10076338C();

    v33 = v87[0];
    sub_100016E2C(v26, v23, &unk_1009428D0, &unk_100783DC0);
    if ((*(v32 + 48))(v23, 1, v31) == 1)
    {
      sub_10000CFBC(v23, &unk_1009428D0, &unk_100783DC0);
      v34 = 1;
    }

    else
    {
      sub_1007632FC();
      (*(v32 + 8))(v23, v31);
      v34 = 0;
    }

    v36 = sub_10076469C();
    (*(*(v36 - 8) + 56))(v20, v34, 1, v36);
    v37 = v80;
    sub_10058EEB0(v20, v80);

    sub_10000CFBC(v20, &unk_10095DCF0, &unk_10078C910);
    sub_10000CFBC(v26, &unk_1009428D0, &unk_100783DC0);
    swift_getKeyPath();
    sub_10076338C();

    v38 = v87[0];
    v39 = *(v27 + 24);
    v40 = sub_10076D3DC();
    (*(*(v40 - 8) + 16))(v17, v37 + v39, v40);
    v41 = v70;
    v42 = v71;
    (*(v70 + 104))(v17, enum case for FontSource.useCase(_:), v71);
    v43.super.isa = v38;
    isa = sub_10076D19C(v43).super.isa;
    (*(v41 + 8))(v17, v42);
    v45 = [objc_opt_self() configurationWithFont:isa scale:1];

    v46 = sub_10076B8FC();

    v72 = v45;
    if (v46)
    {
      v47 = v45;
      sub_10076BE4C();
    }

    v48 = sub_10076DDDC();
    swift_allocObject();
    v49 = sub_10076DDBC();
    v50 = v73;
    sub_10076DD2C();
    v51 = v74;
    sub_10076DCFC();
    v52 = *(v81 + 8);
    v53 = v37;
    v54 = v82;
    v52(v50, v82);
    v55 = v76;
    sub_10076DD1C();
    v52(v51, v54);
    sub_10076DD0C();
    v52(v55, v54);
    sub_10076DA5C();
    v56 = v75;
    sub_10076DA9C();
    sub_10076DA4C();
    (*(v78 + 8))(v56, v79);
    v57 = v68;
    sub_10000A570(v87, (v68 + 5));
    v57[3] = v48;
    v57[4] = &protocol witness table for LayoutViewPlaceholder;
    *v57 = v49;
    sub_100590CA4(v53, v57 + *(v83 + 24));
    swift_getKeyPath();

    v58 = v84;
    sub_10076338C();

    sub_10076C2FC();
    v60 = v59;
    v62 = v61;
    (*(v85 + 8))(v58, v67);
    swift_getKeyPath();
    sub_10076338C();

    v63.n128_u64[0] = v60;
    sub_10058E774(v86, v63, v62);
    v35 = v64;

    swift_unknownObjectRelease();
    sub_10059123C(v57, type metadata accessor for SearchActionContentView.Layout);
    sub_10000CD74(v87);
    sub_10059123C(v53, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  else
  {

    return 0.0;
  }

  return v35;
}

double sub_1005907A4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  sub_1007619CC();
  sub_10059129C(&unk_10094CD60, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_10076332C();
  if (v37)
  {
    v34 = a1;
    v35 = ObjectType;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel];

    sub_10076B8EC();
    if (v22)
    {
      v23 = sub_10076FF6C();
    }

    else
    {
      v23 = 0;
    }

    [v21 setText:v23];

    v24 = sub_10076B8BC();

    v36 = v16;
    if ((v24 & 2) != 0)
    {
      [v21 _setTextColorFollowsTintColor:1];
    }

    else
    {
      [v21 _setTextColorFollowsTintColor:0];
      sub_1000325F0();
      v25 = sub_100770CFC();
      [v21 setTextColor:v25];
    }

    v26 = sub_10076341C();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v13, v34, v26);
    (*(v27 + 56))(v13, 0, 1, v26);
    v28 = [v2 traitCollection];
    sub_100016E2C(v13, v10, &unk_1009428D0, &unk_100783DC0);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_10000CFBC(v10, &unk_1009428D0, &unk_100783DC0);
      v29 = 1;
    }

    else
    {
      sub_1007632FC();
      (*(v27 + 8))(v10, v26);
      v29 = 0;
    }

    v30 = sub_10076469C();
    (*(*(v30 - 8) + 56))(v7, v29, 1, v30);
    sub_10058EEB0(v7, v19);

    sub_10000CFBC(v7, &unk_10095DCF0, &unk_10078C910);
    sub_10000CFBC(v13, &unk_1009428D0, &unk_100783DC0);
    v31 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
    swift_beginAccess();
    v32 = v36;
    sub_100590CA4(v2 + v31, v36);
    swift_beginAccess();
    sub_100590D08(v19, v2 + v31);
    swift_endAccess();
    sub_10058DD28(v32);
    sub_10059123C(v32, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_10059123C(v19, type metadata accessor for SearchActionContentView.Layout.Metrics);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100590CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100590D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100590D6C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v8 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007619CC();
  sub_10059129C(&unk_10094CD60, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_10076332C();
  if (v28)
  {

    v18 = sub_10076B8FC();

    if (v18)
    {
      v27[0] = v18;
      v27[1] = v2;
      v27[2] = a2;
      v19 = sub_10076341C();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v13, a1, v19);
      (*(v20 + 56))(v13, 0, 1, v19);
      swift_getKeyPath();
      sub_10076338C();

      v21 = v28;
      sub_100016E2C(v13, v10, &unk_1009428D0, &unk_100783DC0);
      if ((*(v20 + 48))(v10, 1, v19) == 1)
      {
        sub_10000CFBC(v10, &unk_1009428D0, &unk_100783DC0);
        v22 = 1;
      }

      else
      {
        sub_1007632FC();
        (*(v20 + 8))(v10, v19);
        v22 = 0;
      }

      v23 = sub_10076469C();
      (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
      sub_10058EEB0(v7, v16);

      sub_10000CFBC(v7, &unk_10095DCF0, &unk_10078C910);
      sub_10000CFBC(v13, &unk_1009428D0, &unk_100783DC0);
      v24 = sub_10076BFBC();
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1007841E0;
      *(v25 + 32) = v24;

      v26._rawValue = v25;
      sub_100760BAC(v26);

      sub_10059123C(v16, type metadata accessor for SearchActionContentView.Layout.Metrics);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100591204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10058D210();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10059123C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10059129C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005912E4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_iconView;
  *(v0 + v1) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_linkLabel;
  sub_10076D4BC();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension23SearchActionContentView_metrics;
  if (qword_1009408D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v5 = sub_10000A61C(v4, qword_1009A08F8);
  sub_100590CA4(v5, v0 + v3);
  sub_10077156C();
  __break(1u);
}

uint64_t type metadata accessor for SearchFocusLayoutSectionProvider(uint64_t a1)
{
  result = qword_10095DD18;
  if (!qword_10095DD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059148C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10077149C();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        __break(1u);
        return;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (!__OFADD__(v3, 1))
    {
      v0[1] = v3 + 1;
      v6 = v0[2];
      v8 = v4;
      v6(&v7, &v8);

      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_1005915C8(uint64_t a1, void *a2)
{
  v73 = a2;
  v3 = sub_10000A5D4(&qword_100949DF0, &qword_10078C950);
  __chkstk_darwin(v3 - 8);
  v75 = &v60 - v4;
  v5 = sub_10000A5D4(&qword_100954450, &qword_10079DC98);
  __chkstk_darwin(v5 - 8);
  v76 = &v60 - v6;
  v77 = sub_10000A5D4(&qword_100954458, &unk_10079DCA0);
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v60 - v7;
  v8 = sub_10075D9EC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100760A5C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100954460, &unk_100790FF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_10000A5D4(&qword_100942698, &qword_10079DCB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_10075D99C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v70 = &v60 - v24;
  __chkstk_darwin(v25);
  v71 = &v60 - v26;
  v27 = sub_1007609FC();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v68 = v27;
  v69 = v28;
  sub_100760A1C();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_100941350 != -1)
    {
      swift_once();
    }

    v60 = qword_1009A2700;
    if (qword_100941358 != -1)
    {
      swift_once();
    }

    v64 = qword_1009A2708;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v67 = a1;
    v66 = v20;
    v65 = v10;
    v62 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v63 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v63 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_10077156C();
            __break(1u);
            return result;
          }

          v63 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v61 = v33;
        goto LABEL_23;
      }

      v63 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v61 = v32;
LABEL_23:
    sub_10000A5D4(&unk_100954470, &qword_10079DCB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v69;
    *(inited + 48) = v68;
    *(inited + 56) = v35;

    v36 = sub_1000FD520(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &qword_100961DD0, &qword_10079DCC0);
    v80._object = (v63 | 0x8000000000000000);
    v80._countAndFlagsBits = v61;
    v37._rawValue = v36;
    sub_1007622DC(v80, v37);

    sub_10075D9DC();
    sub_10075D9AC();
    v38 = v73;
    v79[0] = v73;
    sub_100016BD0();
    v39 = v38;
    sub_10075D9BC();
    v40 = v64;
    v79[0] = v64;
    sub_10037C8FC();
    v41 = v40;
    sub_10075D9BC();
    v79[0] = v68;
    v79[1] = v35;
    v42 = sub_10075DE9C();
    v43 = v75;
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_100594EFC(&unk_100954490, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_10002564C();
    v44 = v76;
    sub_10075DA9C();
    sub_10000CFBC(v43, &qword_100949DF0, &qword_10078C950);
    if ((*(v74 + 48))(v44, 1, v77) == 1)
    {
      v45 = &qword_100954450;
      v46 = &qword_10079DC98;
    }

    else
    {
      v47 = v44;
      v44 = v72;
      sub_10037C950(v47, v72);
      v48 = v60;
      v49 = v60;
      sub_10037C9C0();
      v50 = sub_10075D9CC();
      v78 = v48;
      sub_10075DA2C();
      v50(v79, 0);
      v45 = &qword_100954458;
      v46 = &unk_10079DCA0;
    }

    sub_10000CFBC(v44, v45, v46);
    v51 = v65;
    v52 = v62;
    v53 = v66;
    v54 = *(v66 + 32);
    v54(v18, v22, v19);
    (*(v53 + 56))(v18, 0, 1, v19);
    (*(v51 + 8))(v15, v52);
    if ((*(v53 + 48))(v18, 1, v19) != 1)
    {

      v58 = v71;
      v54(v71, v18, v19);
      sub_100016F40(0, &qword_1009544A0, NSAttributedString_ptr);
      (*(v53 + 16))(v70, v58, v19);
      v59 = sub_10077076C();
      (*(v53 + 8))(v58, v19);
      return v59;
    }

    goto LABEL_27;
  }

  sub_10000CFBC(v15, &unk_100954460, &unk_100790FF0);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10000CFBC(v18, &qword_100942698, &qword_10079DCB0);
  v55 = sub_10076B8EC();
  if (!v56)
  {
    return v68;
  }

  v57 = v55;

  return v57;
}

uint64_t sub_100592098(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10000A570(a1, v11);
  type metadata accessor for SearchLandingLayoutSectionProvider(0);
  swift_allocObject();
  sub_10000A570(v11, v10);
  sub_10000A570(v10, v9);

  v6 = sub_1007697CC();
  sub_10000CD74(v10);
  sub_10000CD74(v11);
  *(v4 + qword_10095DD10) = v6;
  sub_10000A570(a1, v11);
  sub_10000A570(v11, v10);
  v7 = sub_1007697CC();
  sub_10000CD74(a1);
  sub_10000CD74(v11);
  return v7;
}

id sub_100592198(char **a1, uint64_t (*a2)(void), void (*a3)(char *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v237 = a8;
  v232 = a7;
  v228 = a6;
  v229 = a5;
  v230 = a4;
  v251 = a3;
  v252 = a2;
  v253 = a10;
  v236 = a9;
  v11 = sub_10076F2EC();
  __chkstk_darwin(v11 - 8);
  v239 = (&v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10076341C();
  v245 = *(v13 - 8);
  v246 = v13;
  __chkstk_darwin(v13);
  v240 = (&v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v224 - v16;
  v226 = sub_10076C38C();
  v227 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v19 - 8);
  v231 = &v224 - v20;
  v21 = sub_10076B5BC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v235 = &v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v249 = &v224 - v25;
  __chkstk_darwin(v26);
  v28 = &v224 - v27;
  v29 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  *&v234 = &v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v224 - v33;
  __chkstk_darwin(v35);
  v238 = &v224 - v36;
  __chkstk_darwin(v37);
  v39 = &v224 - v38;
  v233 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v40 = *(v30 + 8);
  v243 = v29;
  v242 = v30 + 8;
  v241 = v40;
  v40(v39, v29);
  v247 = v28;
  v248 = v22;
  v43 = *(v22 + 88);
  v42 = (v22 + 88);
  v41 = v43;
  v244 = v21;
  v44 = (v43)(v28, v21);
  if (v44 == enum case for Shelf.ContentType.singleColumnList(_:) || v44 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v64 = v252();
    v65 = *(v64 + 16);
    v66 = _swiftEmptyArrayStorage;
    if (v65)
    {
      v254 = _swiftEmptyArrayStorage;
      sub_1004BBAA4(0, v65, 0);
      v249 = *(v245 + 16);
      v67 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v224 = v64;
      v68 = v64 + v67;
      v235 = "outSectionProvider";
      v69 = *(v245 + 72);
      v247 = v245 + 8;
      v248 = v69;
      v234 = xmmword_100783DD0;
      v66 = v254;
      v70 = v246;
      v71 = v240;
      v245 += 16;
      do
      {
        (v249)(v71, v68, v70);
        sub_1007697DC();
        sub_10000CF78(&aBlock, v258);
        if (sub_10076A3CC() && swift_conformsToProtocol2())
        {
          sub_10000CD74(&aBlock);
          sub_10076571C();
          v73 = v72;
        }

        else
        {
          sub_10000CD74(&aBlock);
          if (qword_1009412D8 != -1)
          {
            swift_once();
          }

          v252 = sub_10076FD4C();
          v251 = sub_10000A61C(v252, qword_1009A25D0);
          sub_10000A5D4(&unk_100942A60, &unk_100784760);
          sub_10076F33C();
          *(swift_allocObject() + 16) = v234;
          sub_10076F2DC();
          v261._object = (v235 | 0x8000000000000000);
          v261._countAndFlagsBits = 0xD000000000000047;
          sub_10076F2CC(v261);
          swift_getKeyPath();
          v74 = v238;
          sub_10076338C();

          swift_getKeyPath();
          v258 = v244;
          sub_10000DB7C(&aBlock);
          v75 = v243;
          sub_10076F49C();

          v76 = v75;
          v71 = v240;
          v241(v74, v76);
          sub_10076F29C();
          sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
          v262._countAndFlagsBits = 0;
          v262._object = 0xE000000000000000;
          sub_10076F2CC(v262);
          sub_10076F2FC();
          sub_10076FBEC();

          v73 = 0;
          v70 = v246;
        }

        (*v247)(v71, v70);
        v254 = v66;
        v78 = v66[2];
        v77 = v66[3];
        if (v78 >= v77 >> 1)
        {
          sub_1004BBAA4((v77 > 1), v78 + 1, 1);
          v66 = v254;
        }

        v66[2] = v78 + 1;
        v66[v78 + 4] = v73;
        v68 += v248;
        --v65;
      }

      while (v65);
      v49 = v233;
      v79 = v231;
    }

    else
    {
      v49 = v233;
      v79 = v231;
    }

    v89 = COERCE_DOUBLE(sub_10023428C(v66));
    v90 = v229;
    if ((v91 & 1) != 0 || v89 <= 0.0)
    {

      goto LABEL_31;
    }

    v92 = sub_1007665AC();

    v93 = [objc_opt_self() sectionWithGroup:v92];
    swift_getObjectType();
    sub_100768A7C();
    sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_1007701AC().super.isa;

    [v93 setBoundarySupplementaryItems:isa];

    sub_100768A6C();
    sub_100016F40(0, &qword_100949DE8, NSCollectionLayoutDecorationItem_ptr);
    v95 = sub_1007701AC().super.isa;

    [v93 setDecorationItems:v95];

    v96 = v225;
    sub_10076460C();
    sub_10076C31C();
    v98 = v97;
    v100 = v99;
    (*(v227 + 8))(v96, v226);
    sub_10000CF78(v90, v90[3]);
    sub_100768A3C();
    v102 = v101;
    sub_10000CF78(v90, v90[3]);
    sub_100768A5C();
    [v93 setContentInsets:{v102, v98, v103, v100}];
    sub_1007697FC();
    v104 = sub_1007701DC();
    v106 = v105;

    if (v104)
    {
      v259 = v104;
      v260 = v106;
      aBlock = _NSConcreteStackBlock;
      v256 = 1107296256;
      v257 = sub_100751F08;
      v258 = &unk_10089A770;
      v104 = _Block_copy(&aBlock);
    }

    [v93 setVisibleItemsInvalidationHandler:{v104, v224}];
    _Block_release(v104);

    return v93;
  }

  if (v44 != enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v240 = &v224;
    v250 = *(v250 + qword_10095DD10);
    __chkstk_darwin(v44);
    v47 = v233;
    sub_10076468C();
    swift_getKeyPath();
    v80 = v249;
    v81 = v243;
    sub_10076F49C();

    v241(v34, v81);
    v239 = v41;
    v82 = (v41)(v80, v244);
    v83 = v230;
    if (v82 == enum case for Shelf.ContentType.action(_:))
    {
      v84 = ASKDeviceTypeGetCurrent();
      v85 = sub_10076FF9C();
      v87 = v86;
      if (v85 == sub_10076FF9C() && v87 == v88)
      {
        goto LABEL_23;
      }

      v145 = sub_10077167C();

      if (v145)
      {
        goto LABEL_46;
      }

      v84 = ASKDeviceTypeGetCurrent();
      v182 = sub_10076FF9C();
      v184 = v183;
      if (v182 == sub_10076FF9C() && v184 == v185)
      {
LABEL_23:

LABEL_46:
        v146 = (v252)(v82);
        v147 = *(v146 + 16);
        v42 = _swiftEmptyArrayStorage;
        v243 = v147;
        if (v147)
        {
          aBlock = _swiftEmptyArrayStorage;
          sub_1004BBAA4(0, v147, 0);
          v148 = type metadata accessor for SearchActionContentView(0);
          v42 = aBlock;
          v149 = v245 + 16;
          v251 = *(v245 + 16);
          v252 = v148;
          v150 = *(v245 + 80);
          v245 = v146;
          v151 = v146 + ((v150 + 32) & ~v150);
          v152 = *(v149 + 56);
          v153 = (v149 - 8);
          v154 = v147;
          do
          {
            v155 = v246;
            (v251)(v17, v151, v246);
            v156 = sub_10058FD5C(v17);
            (*v153)(v17, v155);
            aBlock = v42;
            v158 = v42[2];
            v157 = v42[3];
            if (v158 >= v157 >> 1)
            {
              sub_1004BBAA4((v157 > 1), v158 + 1, 1);
              v42 = aBlock;
            }

            v42[2] = (v158 + 1);
            *&v42[v158 + 4] = v156;
            v151 += v152;
            --v154;
          }

          while (v154);
          v47 = v233;
          v159 = v231;
        }

        else
        {
LABEL_64:
          v159 = v231;
        }

        v166 = COERCE_DOUBLE(sub_10023428C(v42));
        if ((v167 & 1) == 0 && v166 > 0.0)
        {
          v168 = *&v166;
          v169 = v225;
          sub_10076460C();
          sub_10076C21C();
          v171 = v170;
          v172 = v227 + 8;
          v173 = *(v227 + 8);
          v173(v169, v226);
          v227 = v172;
          v251 = v173;
          if (v171 < 2.0)
          {
            goto LABEL_89;
          }

          v174 = v243;
          if (!v243)
          {
            goto LABEL_89;
          }

          v175 = sub_10077023C();
          *(v175 + 16) = v174;
          v176 = (v175 + 32);
          if (v174 >= 4)
          {
            v177 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            v176 += v174 & 0x7FFFFFFFFFFFFFFCLL;
            v200 = vdupq_n_s64(v168);
            v201 = (v175 + 48);
            v202 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v201[-1] = v200;
              *v201 = v200;
              v201 += 2;
              v202 -= 4;
            }

            while (v202);
            if (v174 == v177)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v177 = 0;
          }

          v203 = v174 - v177;
          do
          {
            *v176++ = v168;
            --v203;
          }

          while (v203);
LABEL_89:
          v204 = sub_1007665AC();

          v205 = objc_opt_self();
          v252 = v204;
          v93 = [v205 sectionWithGroup:v204];
          swift_getObjectType();
          v206 = v229;
          sub_100768A7C();
          sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
          v207 = sub_1007701AC().super.isa;

          [v93 setBoundarySupplementaryItems:v207];

          sub_100768A6C();
          sub_100016F40(0, &qword_100949DE8, NSCollectionLayoutDecorationItem_ptr);
          v208 = sub_1007701AC().super.isa;

          [v93 setDecorationItems:v208];

          v209 = v225;
          sub_10076460C();
          sub_10076C31C();
          v211 = v210;
          v213 = v212;
          v251(v209, v226);
          sub_10000CF78(v206, v206[3]);
          sub_100768A3C();
          v215 = v214;
          sub_10000CF78(v206, v206[3]);
          sub_100768A5C();
          [v93 setContentInsets:{v215, v211, v216, v213}];
          sub_1007697FC();
          v217 = sub_1007701DC();
          v219 = v218;

          if (v217)
          {
            v259 = v217;
            v260 = v219;
            aBlock = _NSConcreteStackBlock;
            v256 = 1107296256;
            v257 = sub_100751F08;
            v258 = &unk_10089A748;
            v217 = _Block_copy(&aBlock);
          }

          v181 = v247;
          v180 = v248;
          [v93 setVisibleItemsInvalidationHandler:v217];
          _Block_release(v217);

          goto LABEL_92;
        }

        sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
        v178 = sub_10076469C();
        v179 = *(v178 - 8);
        (*(v179 + 16))(v159, v47, v178);
        (*(v179 + 56))(v159, 0, 1, v178);
        v93 = sub_10077096C();
        sub_10000CFBC(v159, &unk_10095DCF0, &unk_10078C910);
        v181 = v247;
        v180 = v248;
        goto LABEL_92;
      }

      v186 = sub_10077167C();

      if (v186)
      {
        goto LABEL_46;
      }
    }

    v246 = &v224;
    __chkstk_darwin(v82);
    __chkstk_darwin(v187);
    sub_10076980C();
    v188 = sub_10076981C();
    v189 = v83;
    v190 = v229;
    v191 = v237;
    v93 = v188(v47, sub_1000F79F4, &v224 - 4, v189, v229, v228, v232, v237, v236, v253);
    v192 = v234;
    sub_10076468C();
    swift_getKeyPath();
    v193 = v235;
    v194 = v243;
    sub_10076F49C();

    v241(v192, v194);
    v195 = v239(v193, v244);
    if (v195 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v196 = v252();
      v197 = sub_10075203C(v47, v196, v230, v190, v228, v232, v191, v236, v253);

      v93 = v197;
      v180 = v248;
    }

    else
    {
      v180 = v248;
      if (v195 != enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v181 = v247;
        if (v195 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          [v93 setOrthogonalScrollingBehavior:2];
        }

        else
        {
          (*(v248 + 8))(v235, v244);
        }

        goto LABEL_92;
      }

      v198 = v252();
      v199 = sub_100753380(v47, v198, v230, v190, v228, v232, v237, v236, v253);

      v93 = v199;
    }

    v181 = v247;
LABEL_92:
    v220 = *(v180 + 8);
    v221 = v244;
    v220(v249, v244);
    v220(v181, v221);
    return v93;
  }

  v45 = v252();
  v46 = *(v45 + 16);
  v47 = &off_100911000;
  v48 = &off_100911000;
  v49 = v233;
  if (v46)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v42 = objc_opt_self();
    v252 = objc_opt_self();
    v251 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v51 = v245 + 16;
    v248 = *(v245 + 16);
    v249 = ObjectType;
    v52 = *(v245 + 80);
    v245 = v45;
    v53 = v45 + ((v52 + 32) & ~v52);
    v247 = *(v51 + 56);
    v54 = v246;
    do
    {
      (v248)(v17, v53, v54);
      v55 = sub_1005942EC(v17, 0, 0, 1);
      v57 = v56;
      v58 = [v42 absoluteDimension:v55];
      v59 = [v42 absoluteDimension:v57];
      v60 = [v252 sizeWithWidthDimension:v58 heightDimension:v59];

      sub_10076815C();
      sub_100016F40(0, &unk_10095DD70, NSCollectionLayoutSupplementaryItem_ptr);
      v61 = sub_1007701AC().super.isa;

      v62 = [v251 itemWithLayoutSize:v60 supplementaryItems:v61];

      (*(v51 - 8))(v17, v54);
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v53 += v247;
      --v46;
    }

    while (v46);

    v63 = aBlock;
    v49 = v233;
    v48 = &off_100911000;
    v47 = &off_100911000;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  aBlock = v63;
  v256 = 0;
  v257 = sub_100594E60;
  v258 = KeyPath;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_10059148C();
  v252 = (v63 >> 62);
  if (v111)
  {

    swift_bridgeObjectRelease_n();
    v112 = 0.0;
    goto LABEL_39;
  }

  v251 = KeyPath;
  if (v63 >> 62)
  {
    v223 = v110;
    v113 = sub_10077158C();
    v110 = v223;
  }

  else
  {
    v113 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v110;
  v79 = v256;
  if (v256 == v113)
  {
LABEL_38:

    swift_bridgeObjectRelease_n();
    v49 = v233;
    v48 = &off_100911000;
    v47 = &off_100911000;
LABEL_39:
    v79 = v231;
    if (v252)
    {
      goto LABEL_96;
    }

    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v49 = v63 & 0xC000000000000001;
  v47 = (v63 & 0xFFFFFFFFFFFFFF8);
  v48 = &selRef__setPocketInsets_;
  while (1)
  {
    if (v49)
    {
      v160 = sub_10077149C();
      v161 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    if ((v79 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v79 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_95;
    }

    v160 = v63[v79 + 4];
    v161 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_57:
    v162 = v160;
    v42 = [v162 layoutSize];
    v163 = [v42 heightDimension];
    [v163 dimension];
    v165 = v164;

    if (v112 < v165)
    {
      v112 = v165;
    }

    ++v79;
    if (v161 == v113)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  if (!sub_10077158C())
  {
LABEL_31:

    sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
    v107 = sub_10076469C();
    v108 = *(v107 - 8);
    (*(v108 + 16))(v79, v49, v107);
    (*(v108 + 56))(v79, 0, 1, v107);
    v93 = sub_10077096C();
    sub_10000CFBC(v79, &unk_10095DCF0, &unk_10078C910);
    return v93;
  }

LABEL_41:
  if (v112 < 2.22507386e-308)
  {
    goto LABEL_31;
  }

  v114 = objc_opt_self();
  v115 = v225;
  sub_10076460C();
  sub_10076C24C();
  v117 = v116;
  v118 = v227 + 8;
  v119 = *(v227 + 8);
  v119(v115, v226);
  v120 = v119;
  v249 = v119;
  v227 = v118;
  v121 = [v114 estimatedDimension:v117];
  v122 = [v114 v47[246]];
  v123 = [objc_opt_self() v48[247]];

  v124 = objc_opt_self();
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v125 = sub_1007701AC().super.isa;

  v252 = v123;
  v126 = [v124 horizontalGroupWithLayoutSize:v123 subitems:v125];

  v127 = objc_opt_self();
  sub_10076460C();
  sub_10076C2BC();
  v129 = v128;
  v120(v115, v226);
  v130 = [v127 fixedSpacing:v129];
  [v126 setInterItemSpacing:v130];

  v131 = objc_opt_self();
  v251 = v126;
  v93 = [v131 sectionWithGroup:v126];
  swift_getObjectType();
  v132 = v229;
  sub_100768A7C();
  sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  v133 = sub_1007701AC().super.isa;

  [v93 setBoundarySupplementaryItems:v133];

  sub_100768A6C();
  sub_100016F40(0, &qword_100949DE8, NSCollectionLayoutDecorationItem_ptr);
  v134 = sub_1007701AC().super.isa;

  [v93 setDecorationItems:v134];

  sub_10076460C();
  sub_10076C31C();
  v136 = v135;
  v138 = v137;
  (v249)(v115, v226);
  sub_10000CF78(v132, v132[3]);
  sub_100768A3C();
  v140 = v139;
  sub_10000CF78(v132, v132[3]);
  sub_100768A5C();
  [v93 setContentInsets:{v140, v136, v141, v138}];
  [v93 setOrthogonalScrollingBehavior:1];
  sub_1007697FC();
  v142 = sub_1007701DC();
  v144 = v143;

  if (v142)
  {
    v259 = v142;
    v260 = v144;
    aBlock = _NSConcreteStackBlock;
    v256 = 1107296256;
    v257 = sub_100751F08;
    v258 = &unk_10089A798;
    v142 = _Block_copy(&aBlock);
  }

  [v93 setVisibleItemsInvalidationHandler:v142];
  _Block_release(v142);

  return v93;
}

void sub_10059420C(id *a1)
{
  v3 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_100594274()
{
  sub_10076982C();

  return swift_deallocClassInstance();
}

double sub_1005942D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1005942EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v80 = a4;
  v75 = a2;
  v76 = a3;
  v5 = sub_10076C38C();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076DA7C();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v66 - v10;
  v11 = sub_10076D7FC();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v87 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10076DD3C();
  v13 = *(v90 - 8);
  __chkstk_darwin(v90);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  sub_100760A4C();
  sub_100594EFC(&unk_100954440, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  sub_10076332C();
  v86 = v102[0];
  if (!v102[0])
  {
    return 0.0;
  }

  v85 = v24;
  v70 = v5;
  v74 = v7;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076DD2C();
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  v73 = qword_10099D3D8;
  sub_10076DC9C();
  v71 = v13;
  v26 = v13 + 8;
  v25 = *(v13 + 8);
  v27 = v15;
  v28 = v90;
  v25(v27, v90);
  sub_10076DD1C();
  v25(v18, v28);
  v29 = v21;
  v30 = v85;
  sub_10076DD0C();
  v72 = v29;
  v25(v29, v28);
  swift_getKeyPath();
  v82 = a1;
  sub_10076338C();

  v31 = v99;
  v32 = v87;
  sub_10076D7EC();
  sub_10076DCAC();
  sub_10000CF78(v102, v103);
  sub_10076D85C();
  sub_10076D7CC();
  sub_10000CD74(v102);
  sub_10076DCEC();
  sub_10076D77C();
  sub_10076DCCC();
  sub_10076D75C();
  sub_10076DCDC();
  sub_10076D76C();
  sub_10076DCBC();
  sub_10076D74C();

  v33 = sub_10076D7BC();
  v34 = sub_1005915C8(v86, v33);
  v81 = v35;
  v37 = v36;
  LODWORD(v31) = ~v36;

  if (!v31)
  {

    (*(v83 + 8))(v32, v84);
    v25(v30, v90);
    return 0.0;
  }

  v69 = v26;
  (*(v71 + 16))(v72, v30, v90);
  v68 = v37;
  v67 = v25;
  if (v37)
  {
    sub_10037CA28(v34, v81, 1);
    sub_10076DA5C();
    v38 = v79;
    v39 = v34;
    sub_10076DABC();
  }

  else
  {
    sub_10037CA28(v34, v81, 0);
    sub_10076DA5C();
    v38 = v79;
    v39 = v34;
    sub_10076DA9C();
  }

  v41 = v74;
  (*(v89 + 32))(v88, v38, v74);

  v42 = sub_10076B8FC();

  v43 = v73;
  if (v42 && (v44 = [objc_opt_self() configurationWithTextStyle:v73 scale:2], swift_getKeyPath(), sub_10076338C(), , v45 = v102[0], v46 = objc_msgSend(v44, "configurationWithTraitCollection:", v102[0]), v45, v44, v47 = sub_10076044C(), , v46, v47))
  {
    [v47 size];
    v49 = v48;
    v51 = v50;

    *(&v100 + 1) = &type metadata for FixedSizedPlaceholder;
    v101 = sub_100016DD8();
    *&v99 = v49;
    *(&v99 + 1) = v51;
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  v98[3] = v41;
  v98[4] = &protocol witness table for LabelPlaceholder;
  v52 = sub_10000DB7C(v98);
  (*(v89 + 16))(v52, v88, v41);
  swift_getKeyPath();
  sub_10076338C();

  sub_1007708CC();
  sub_10011E080(&v99, &v95);
  sub_10000A570(v98, v94);
  v94[8] = &type metadata for SearchLinkLayout;
  v94[9] = sub_10017FCFC();
  v53 = swift_allocObject();
  v94[5] = v53;
  v54 = sub_10017FDA0();
  v55 = swift_allocObject();
  sub_10000A570(v94, v55 + 16);
  sub_10011E080(&v95, &v92);
  if (v93)
  {
    sub_100012498(&v92, v91);
    v56 = swift_allocObject();
    sub_100012498(v91, v56 + 16);
    v57 = v43;
    sub_10000CD74(v94);
    sub_10000CFBC(&v95, &unk_10094B230, &qword_100791150);
    v58 = &type metadata for AutoAdjustingPlaceable;
    v59 = v54;
  }

  else
  {
    v60 = v43;
    sub_10000CD74(v94);
    sub_10000CFBC(&v95, &unk_10094B230, &qword_100791150);
    v56 = 0;
    v58 = 0;
    v59 = 0;
  }

  v53[2] = v56;
  v53[3] = 0;
  v53[4] = 0;
  v53[5] = v58;
  v53[6] = v59;
  v53[7] = v55;
  v53[10] = &type metadata for AutoAdjustingPlaceable;
  v53[11] = v54;
  v53[12] = v43;
  v53[13] = 0x4014000000000000;
  v96 = sub_10076E04C();
  v97 = &protocol witness table for Margins;
  sub_10000DB7C(&v95);
  sub_10076E03C();
  swift_unknownObjectRelease();
  sub_100012498(&v95, v102);
  sub_10000CD74(v98);
  sub_10000CFBC(&v99, &unk_10094B230, &qword_100791150);
  if (v80)
  {
    swift_getKeyPath();
    v61 = v77;
    sub_10076338C();

    sub_10076C2FC();
    (*(v78 + 8))(v61, v70);
  }

  swift_getKeyPath();
  sub_10076338C();

  v62 = v99;
  sub_10000CF78(v102, v103);
  sub_10076E0FC();
  v64 = v63;

  sub_10037C8D4(v39, v81, v68);

  v40 = ceil(v64);
  sub_100527790(v102);
  (*(v89 + 8))(v88, v41);
  (*(v83 + 8))(v87, v84);
  v67(v85, v90);
  return v40;
}

id sub_100594D9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layoutSize];
  *a2 = result;
  return result;
}

id sub_100594DE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heightDimension];
  *a2 = result;
  return result;
}

id sub_100594E2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dimension];
  *a2 = v4;
  return result;
}

uint64_t sub_100594E70()
{
  if (*(v0 + 40))
  {
    sub_10000CD74((v0 + 16));
  }

  sub_10000CD74((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100594EC0()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100594EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100594F54(uint64_t a1, double result)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media) = a1;
  if (a1)
  {
    v8 = a1;
    if (v4)
    {
      v7 = v4;
      sub_10076092C();
      sub_10059A958(&unk_10095DE98, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
      swift_retain_n();
      v5 = sub_10076FF1C();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    [*(v3 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView) reloadData];
LABEL_9:

    return v6;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  return v6;
}

void sub_100595060(uint64_t a1)
{
  if (a1)
  {
    sub_100767D5C();
    sub_10076F64C();

    sub_10076FC1C();
    sub_10076911C();
    swift_allocObject();
    v2 = v6;
    sub_10076912C();
    sub_10076667C();
  }

  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph])
  {
    sub_100767D5C();
    sub_10076F64C();

    sub_10076FC1C();
    v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_compoundScrollObserver];
    sub_10076911C();
    swift_allocObject();
    v4 = v6;
    sub_10076912C();
    sub_10076668C();

    v5 = [v1 window];
    if (v5)
    {

      [v3 scrollViewDidScroll:*&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView]];
    }
  }
}

uint64_t sub_100595228()
{
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2368);
  qword_10095DDB8 = v0;
  unk_10095DDC0 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10095DDA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100595320(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_compoundScrollObserver;
  v13 = objc_allocWithZone(sub_1007666AC());
  *&v4[v12] = sub_10076669C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView] = 0;
  v16 = &v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v5[v11] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView] = v17;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView;
  [*&v18[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v21 = *&v18[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  [*&v18[v20] setAllowsSelection:1];
  [*&v18[v20] setAlwaysBounceHorizontal:1];
  [*&v18[v20] setShowsHorizontalScrollIndicator:0];
  [*&v18[v20] setDataSource:v18];
  v25 = *&v18[v20];
  [v25 setDelegate:v18];

  v26 = *&v18[v20];
  type metadata accessor for VideoCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v26;
  sub_1007708FC();
  v29 = sub_10076FF6C();

  [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = *&v18[v20];
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v31 = swift_getObjCClassFromMetadata();
  v32 = v30;
  sub_1007708FC();
  v33 = sub_10076FF6C();

  [v32 registerClass:v31 forCellWithReuseIdentifier:v33];

  v34 = [v18 contentView];
  [v34 addSubview:*&v18[v20]];

  return v18;
}

id sub_100595798()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v96 = COERCE_DOUBLE(type metadata accessor for DividerView.Style(0));
  __chkstk_darwin(v96);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108.receiver = v1;
  v108.super_class = ObjectType;
  objc_msgSendSuper2(&v108, "layoutSubviews", v7);
  v10 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v104 = v17;

  v95 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView];
  v105 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v18)
  {
    v22 = v18;
    [v22 frame];
    v19 = v23;
    v20 = v24;
    if (qword_100940900 != -1)
    {
      swift_once();
    }

    v25 = qword_1009A0950;
    sub_10000CF78(qword_1009A0938, qword_1009A0950);
    sub_1000FF02C(v25);
    sub_10076D40C();
    v21 = v26;

    (*(v6 + 8))(v9, v5);
  }

  v98 = v20;
  v94 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView];
  v107 = 0.0;
  v28 = 0.0;
  if (v27)
  {
    v29 = v27;
    [v29 frame];
    v105 = v30;
    v107 = v31;
    if (qword_1009408F8 != -1)
    {
      swift_once();
    }

    v32 = qword_10095DE08;
    sub_10000CF78(qword_10095DDF0, qword_10095DE08);
    sub_1000FF02C(v32);
    sub_10076D40C();
    v28 = v33;

    (*(v6 + 8))(v9, v5);
  }

  v90 = v19;
  v99 = v28;
  v93 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView];
  v35 = 0.0;
  v103 = 0.0;
  v36 = 0.0;
  MinY = 0.0;
  v38 = 0.0;
  if (v34)
  {
    v39 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
    swift_beginAccess();
    sub_100206DD0(v34 + v39, v4);
    v40 = qword_100940940;
    v41 = v34;
    if (v40 != -1)
    {
      swift_once();
    }

    v42 = floor(*&qword_1009A0A00);
    sub_10076D17C();
    sub_10076D9AC();
    sub_10076D40C();
    v44 = v43;
    (*(v6 + 8))(v9, v5);
    v38 = v42 + v44;
    sub_10059945C(v4, type metadata accessor for DividerView.Style);
    v109.origin.x = v12;
    v109.origin.y = v14;
    v109.size.width = v16;
    v45 = v104;
    v109.size.height = v104;
    v36 = CGRectGetMaxX(v109) - v16;
    v110.origin.x = v12;
    v110.origin.y = v14;
    v110.size.width = v16;
    v110.size.height = v45;
    MinY = CGRectGetMinY(v110);

    v35 = v16;
  }

  v97 = v35;
  v106 = MinY;
  v46 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView;
  v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView];
  v101 = 0.0;
  v100 = 0.0;
  v102 = 0.0;
  if (v47)
  {
    v48 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
    swift_beginAccess();
    sub_100206DD0(v47 + v48, v4);
    v49 = qword_100940940;
    v50 = v47;
    if (v49 != -1)
    {
      swift_once();
    }

    v51 = floor(*&qword_1009A0A00);
    sub_10076D17C();
    sub_10076D9AC();
    sub_10076D40C();
    v53 = v52;
    (*(v6 + 8))(v9, v5);
    v54 = v51 + v53;
    sub_10059945C(v4, type metadata accessor for DividerView.Style);
    v111.origin.x = v12;
    v111.origin.y = v14;
    v111.size.width = v16;
    v55 = v104;
    v111.size.height = v104;
    v103 = CGRectGetMaxX(v111) - v16;
    v112.origin.x = v12;
    v112.origin.y = v14;
    v112.size.width = v16;
    v112.size.height = v55;
    MaxY = CGRectGetMaxY(v112);

    v102 = v54;
    v101 = MaxY - ceil(v54);
    v100 = v16;
  }

  *&v96 = v16;
  v57 = v14;
  v58 = v94;
  if (*&v1[v94])
  {
    v59 = v12;
    if (qword_1009408E8 != -1)
    {
      swift_once();
    }

    v60 = qword_10095DDB8;
    sub_10000CF78(qword_10095DDA0, qword_10095DDB8);
    sub_1000FF02C(v60);
    sub_10076D40C();
    v62 = v61;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v59 = v12;
    v62 = 0.0;
  }

  if (qword_1009408F0 != -1)
  {
    swift_once();
  }

  v63 = qword_10095DDE0;
  sub_10000CF78(qword_10095DDC8, qword_10095DDE0);
  sub_1000FF02C(v63);
  sub_10076D40C();
  v65 = v64;
  (*(v6 + 8))(v9, v5);
  v91 = v62;
  v89 = v21;
  v66 = v98 + v107 + v21 + v99 + v62 + v65;
  v67 = v36;
  v113.origin.x = v36;
  v113.origin.y = v106;
  v68 = v97;
  v113.size.width = v97;
  v69 = v38;
  v113.size.height = v38;
  v70 = CGRectGetHeight(v113) + v66;
  v114.origin.x = v103;
  v114.origin.y = v101;
  v114.size.width = v100;
  v114.size.height = v102;
  v92 = CGRectGetHeight(v114) + v70;
  v115.origin.x = v59;
  v115.origin.y = v57;
  v71 = *&v96;
  *&v115.size.width = v96;
  v72 = v104;
  v115.size.height = v104;
  MinX = CGRectGetMinX(v115);
  v87 = v67;
  v116.origin.x = v67;
  v116.origin.y = v106;
  v116.size.width = v68;
  v88 = v69;
  v116.size.height = v69;
  v74 = v91 + CGRectGetMaxY(v116);
  v117.origin.x = v59;
  v117.origin.y = v57;
  v117.size.width = v71;
  v117.size.height = v72;
  v75 = CGRectGetMinX(v117);
  v91 = MinX;
  v118.origin.x = MinX;
  v86 = v74;
  v118.origin.y = v74;
  v118.size.width = v105;
  v118.size.height = v107;
  v76 = v99 + CGRectGetMaxY(v118);
  v119.origin.x = v59;
  v119.origin.y = v57;
  v119.size.width = v71;
  v119.size.height = v72;
  Width = CGRectGetWidth(v119);
  v120.origin.x = v59;
  v120.origin.y = v57;
  v120.size.width = v71;
  v120.size.height = v72;
  v78 = CGRectGetHeight(v120) - v92;
  v121.origin.x = v59;
  v121.origin.y = v57;
  v121.size.width = v71;
  v121.size.height = v72;
  v79 = CGRectGetMinX(v121);
  v122.origin.x = v75;
  v122.origin.y = v76;
  v122.size.width = Width;
  v122.size.height = v78;
  v80 = CGRectGetMaxY(v122);
  v81 = *&v1[v93];
  if (v81)
  {
    [v81 setFrame:{v87, v106, v97, v88}];
  }

  v82 = *&v1[v58];
  if (v82)
  {
    [v82 setFrame:{v91, v86, v105, v107}];
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView] setFrame:{v75, v76, Width, v78}];
  v83 = *&v1[v95];
  if (v83)
  {
    [v83 setFrame:{v79, v89 + v80, v90, v98}];
  }

  result = *&v1[v46];
  if (result)
  {
    return [result setFrame:{v103, v101, v100, v102}];
  }

  return result;
}

void sub_1005961F4(void *a1, uint64_t *a2)
{
  if (*(v2 + *a1) == 1)
  {
    v4 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *a2;
    v6 = *(v2 + *a2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v2 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = v4;
    v11 = v4;

    sub_100596304(a2);
  }

  else
  {
    v8 = *a2;
    v9 = *(v2 + *a2);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v2 + v8) = 0;

    sub_100596304(a2);
  }
}

id sub_100596304(void *a1)
{
  v3 = type metadata accessor for DividerView.Style(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[*a1];
  if (!v7)
  {
    return [v1 setNeedsLayout];
  }

  v8 = qword_100940950;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v3, qword_1009A0A20);
  sub_100206DD0(v10, v6);
  v11 = &v9[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v6, v11);
  swift_endAccess();
  v12 = &v9[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v13 = *(v11 + 1);
  *v12 = *v11;
  *(v12 + 1) = v13;
  [v9 setNeedsLayout];
  [v9 setNeedsLayout];
  sub_10059945C(v6, type metadata accessor for DividerView.Style);
  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits];
  if (result)
  {
    [result pageMarginInsets];
    *v12 = v15;
    *(v12 + 1) = v16;
    *(v12 + 2) = v17;
    *(v12 + 3) = v18;
    [v9 setNeedsLayout];
    v19 = [v1 contentView];
    [v19 addSubview:v9];

    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

unint64_t sub_10059652C(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media))
  {
LABEL_9:
    type metadata accessor for VideoCollectionViewCell(0);
    sub_1007708FC();
    v10 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

    return v12;
  }

  v3 = sub_10076090C();
  result = sub_10075E09C();
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v5 = sub_100762A4C();

    if (v5)
    {

      type metadata accessor for ScreenshotCollectionViewCell(0);
      sub_1007708FC();
      v6 = sub_10076FF6C();

      v7 = sub_10075E02C().super.isa;
      v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

      v9 = swift_dynamicCastClassUnconditional();
      *(*(v9 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = sub_10076091C();

      sub_100124EE0();

      return v9;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005969A0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_100596ABC(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  v3 = sub_10076090C();

  v4 = sub_10075E09C();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  sub_10077149C();
LABEL_6:

  v5 = sub_100762A4C();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler + 8);

      v9 = sub_10075E09C();
      v7(v6, v9);
      sub_1000B9010(v7, v8);
    }

    isa = sub_10075E02C().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];
  }

  else
  {
  }
}

uint64_t type metadata accessor for ProductMediaCollectionViewCell(uint64_t a1)
{
  result = qword_10095DE80;
  if (!qword_10095DE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100596FAC(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100597094(uint64_t a1, int a2, int a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v164 = a9;
  v154 = a8;
  v150 = a3;
  v149 = a2;
  v148 = sub_10077164C();
  v151 = *(v148 - 8);
  __chkstk_darwin(v148);
  v15 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = COERCE_DOUBLE(sub_10075F21C());
  v146 = *(*&v147 - 8);
  __chkstk_darwin(*&v147);
  v155 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076D39C();
  v159 = *(v17 - 8);
  __chkstk_darwin(v17);
  ObjectType = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v156 = &v146 - v20;
  __chkstk_darwin(v21);
  v23 = &v146 - v22;
  __chkstk_darwin(v24);
  v26 = &v146 - v25;
  v27 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v27 - 8);
  v161 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v166 = &v146 - v30;
  __chkstk_darwin(v31);
  v167 = &v146 - v32;
  v33 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v33 - 8);
  v152 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_10076091C();
  v158 = a1;
  v35 = sub_10076090C();
  v36 = v35;
  if (v35 >> 62)
  {
LABEL_106:
    v37 = sub_10077158C();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v169 = v26;
  v153 = v15;
  v168 = v23;
  v162 = a4;
  if (v37)
  {
    v26 = 0;
    v163 = (v36 & 0xC000000000000001);
    a4 = (v36 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v163)
      {
        sub_10077149C();
        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_106;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      if (sub_100762A4C())
      {
        v38 = sub_10076BD4C();

        if (v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!sub_100762A5C())
        {

          v160 = 1;
          a4 = v162;
          v15 = v153;
          goto LABEL_21;
        }

        sub_10076B84C();
        v40 = sub_10076BD4C();

        v15 = v153;
        if (v40)
        {
LABEL_18:
          v160 = 1;
          a4 = v162;
LABEL_21:
          v23 = v168;
          goto LABEL_22;
        }
      }

      ++v26;
      v23 = v168;
      if (v39 == v37)
      {
        v160 = 0;
        a4 = v162;
        goto LABEL_22;
      }
    }
  }

  v160 = 0;
LABEL_22:

  sub_1007601EC();

  sub_10007AFB4(v41, v152);

  v42 = sub_10076090C();
  if (v42 >> 62)
  {
    v37 = v42;
    v43 = sub_10077158C();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v159;

  if (v43 >= 1)
  {
    v45 = sub_10076090C();
    v46 = v45;
    if (v45 >> 62)
    {
      v43 = v45;
      v109 = sub_10077158C();
      v46 = v43;
      v47 = v109;
      if (v109)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_27:
        if (v47 >= 1)
        {
          v146 = a5;
          v147 = a6;
          v48 = v46;
          ObjectType = swift_getObjectType();
          v49 = 0;
          v156 = (v48 & 0xC000000000000001);
          v50 = (v44 + 56);
          v51 = 0.0;
          v163 = (v44 + 32);
          v52 = (v44 + 48);
          v155 = (v44 + 16);
          v53 = (v44 + 8);
          v159 = v48;
          v158 = v47;
          do
          {
            if (v156)
            {
              sub_10077149C();
            }

            else
            {
            }

            if (sub_100762A4C())
            {
              sub_10076BEFC();
              v57 = v166;
              sub_10076D3AC();

              v58 = *v50;
              (*v50)(v57, 0, 1, v17);
              v59 = v167;
              (*v163)();
              v58(v59, 0, 1, v17);
            }

            else
            {
              v60 = *v50;
              v61 = 1;
              (*v50)(v166, 1, 1, v17);
              if (sub_100762A5C())
              {
                sub_10076B84C();

                sub_10076BEFC();
                v59 = v167;
                sub_10076D3AC();

                v61 = 0;
              }

              else
              {
                v59 = v167;
              }

              v60(v59, v61, 1, v17);
              v62 = (*v52)(v166, 1, v17);
              v23 = v168;
              if (v62 != 1)
              {
                sub_10000CFBC(v166, &unk_1009467E0, qword_10078CB50);
              }
            }

            v63 = sub_100760E4C();
            v64 = v59;
            v65 = v161;
            sub_1003911F0(v64, v161);
            v66 = *v52;
            if ((*v52)(v65, 1, v17) == 1)
            {
              sub_10076D3AC();
              if (v66(v65, 1, v17) != 1)
              {
                sub_10000CFBC(v65, &unk_1009467E0, qword_10078CB50);
              }
            }

            else
            {
              (*v163)(v169, v65, v17);
            }

            a4 = v162;
            if ((v160 & v63) != 0)
            {
              v67 = v169;
              if (sub_10076D2EC())
              {
                (*v155)(v23, v67, v17);
              }

              else
              {
                sub_10076D32C();
              }

              v68 = 1;
            }

            else
            {
              (*v155)(v23, v169, v17);
              v68 = sub_10076D2EC();
            }

            v69 = [a4 traitCollection];
            v70 = sub_1007706CC();

            if (v70)
            {
              if (v154 >= a7)
              {
                JUScreenClassGetPortraitWidth();
                v71 = 4.0;
                v72 = 2.0;
                v23 = v168;
                if (v84 < a7)
                {
                  JUScreenClassGetPortraitWidth();
                  if (v85 < a7)
                  {
                    v71 = 5.0;
                  }

                  else
                  {
                    v71 = 4.0;
                  }
                }
              }

              else
              {
                JUScreenClassGetLandscapeWidth();
                v71 = 5.0;
                v72 = 2.0;
                v23 = v168;
                if (v73 < a7)
                {
                  JUScreenClassGetLandscapeWidth();
                  if (v74 < a7)
                  {
                    v71 = 6.0;
                  }

                  else
                  {
                    v71 = 5.0;
                  }
                }
              }
            }

            else
            {
              if (v68)
              {
                v72 = 2.0;
              }

              else
              {
                v72 = 1.0;
              }

              if (v68)
              {
                v71 = 3.0;
              }

              else
              {
                v71 = 1.0;
              }

              v23 = v168;
            }

            [a4 pageMarginInsets];
            v76 = v75;
            [a4 pageMarginInsets];
            v78 = v76 + v77;
            PageTraitEnvironment.pageColumnMargin.getter();
            v80 = (v72 + -1.0) * v79 + v72 / v71 * (v164 - (v78 + (v71 + -1.0) * v79));
            v81 = [a4 traitCollection];
            v82 = sub_1007706CC();

            if ((v82 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_10076D35C(), v80 < v83))
            {
              sub_10076D36C();
            }

            ++v49;
            sub_10076D36C();
            v55 = v54;

            v56 = *v53;
            (*v53)(v23, v17);
            v56(v169, v17);
            sub_10000CFBC(v167, &unk_1009467E0, qword_10078CB50);
            if (v55 > v51)
            {
              v51 = v55;
            }
          }

          while (v158 != v49);

          v15 = v153;
          a6 = v147;
          a5 = v146;
          goto LABEL_110;
        }

        __break(1u);
        goto LABEL_141;
      }
    }

    v51 = 0.0;
    goto LABEL_110;
  }

  v86 = v155;
  sub_100760E3C();
  v87 = v146;
  v88 = v147;
  v89 = (*(*&v146 + 88))(v86, COERCE_DOUBLE(*&v147));
  v43 = ObjectType;
  v37 = v156;
  if (v89 == enum case for AppPlatform.phone(_:) || v89 == enum case for AppPlatform.pad(_:) || v89 == enum case for AppPlatform.messages(_:))
  {
    goto LABEL_77;
  }

  if (v89 == enum case for AppPlatform.watch(_:))
  {
    if (qword_10093F5A8 == -1)
    {
LABEL_86:
      v91 = sub_10000A61C(v17, qword_10099CB60);
      (*(v44 + 16))(v37, v91, v17);
      goto LABEL_78;
    }

LABEL_141:
    swift_once();
    goto LABEL_86;
  }

  if (v89 == enum case for AppPlatform.tv(_:) || v89 == enum case for AppPlatform.mac(_:))
  {
LABEL_77:
    sub_10076D3AC();
    goto LABEL_78;
  }

  sub_10076D3AC();
  (*(*&v87 + 8))(v155, COERCE_DOUBLE(*&v88));
LABEL_78:
  if (sub_100760E4C() & 1) != 0 && (sub_10076D2EC())
  {
    if (sub_10076D2EC())
    {
      (*(v44 + 16))(v43, v37, v17);
    }

    else
    {
      sub_10076D32C();
    }

    v90 = 1;
  }

  else
  {
    (*(v44 + 16))(v43, v37, v17);
    v90 = sub_10076D2EC();
  }

  swift_getObjectType();
  v92 = [a4 traitCollection];
  v93 = sub_1007706CC();

  if (v93)
  {
    v94 = sub_10069EFC8(a7, v154);
    v96 = v95;
  }

  else
  {
    if (v90)
    {
      v94 = 2.0;
    }

    else
    {
      v94 = 1.0;
    }

    if (v90)
    {
      v96 = 3.0;
    }

    else
    {
      v96 = 1.0;
    }
  }

  [a4 pageMarginInsets];
  v98 = v97;
  [a4 pageMarginInsets];
  v100 = v98 + v99;
  PageTraitEnvironment.pageColumnMargin.getter();
  v102 = (v94 + -1.0) * v101 + v94 / v96 * (v164 - (v100 + (v96 + -1.0) * v101));
  v103 = [a4 traitCollection];
  v104 = sub_1007706CC();

  v105 = ObjectType;
  if ((v104 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_10076D35C(), v102 < v106))
  {
    sub_10076D36C();
  }

  sub_10076D36C();
  v51 = v107;
  v108 = *(v44 + 8);
  v108(v105, v17);
  v108(v156, v17);
LABEL_110:
  sub_10000A5D4(&unk_100952260, &unk_1007A6250);
  inited = swift_initStackObject();
  v169 = xmmword_100783DD0;
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = v51;
  v170 = inited;
  v111 = v148;
  if (a5 >= COERCE_DOUBLE(1))
  {
    v112 = swift_initStackObject();
    *(v112 + 16) = xmmword_100783C60;
    if (qword_1009408E8 != -1)
    {
      swift_once();
    }

    v113 = qword_10095DDB8;
    sub_10000CF78(qword_10095DDA0, qword_10095DDB8);
    sub_1000FF02C(v113);
    sub_10076D40C();
    v115 = v114;
    v116 = *(v151 + 8);
    v116(v15, v111);
    *(v112 + 32) = v115;
    *(v112 + 40) = a5;
    if (qword_1009408F8 != -1)
    {
      swift_once();
    }

    v117 = qword_10095DE08;
    sub_10000CF78(qword_10095DDF0, qword_10095DE08);
    sub_1000FF02C(v117);
    sub_10076D40C();
    v119 = v118;
    v116(v15, v111);
    *(v112 + 48) = v119;
    sub_1000F92E4(v112);
  }

  if (a6 >= COERCE_DOUBLE(1))
  {
    v120 = swift_initStackObject();
    *(v120 + 16) = xmmword_100784500;
    *(v120 + 32) = a6;
    if (qword_100940900 != -1)
    {
      swift_once();
    }

    v121 = qword_1009A0950;
    sub_10000CF78(qword_1009A0938, qword_1009A0950);
    sub_1000FF02C(v121);
    sub_10076D40C();
    v123 = v122;
    (*(v151 + 8))(v15, v111);
    *(v120 + 40) = v123;
    sub_1000F92E4(v120);
  }

  v124 = swift_initStackObject();
  *(v124 + 16) = v169;
  if (qword_1009408F0 != -1)
  {
    swift_once();
  }

  v125 = qword_10095DDE0;
  sub_10000CF78(qword_10095DDC8, qword_10095DDE0);
  swift_getObjectType();
  v126 = v153;
  sub_1000FF02C(v125);
  sub_10076D40C();
  v128 = v127;
  (*(v151 + 8))(v126, v111);
  *(v124 + 32) = v128;
  sub_1000F92E4(v124);
  v129 = swift_initStackObject();
  *(v129 + 16) = xmmword_100784500;
  v130 = 0.0;
  v131 = 0.0;
  if (v149)
  {
    type metadata accessor for DividerView(0);
    if (qword_100940950 != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for DividerView.Style(0);
    v133 = sub_10000A61C(v132, qword_1009A0A20);
    v131 = sub_1005AA920(v133, a4);
  }

  *(v129 + 32) = v131;
  if (v150)
  {
    type metadata accessor for DividerView(0);
    if (qword_100940950 != -1)
    {
      swift_once();
    }

    v134 = type metadata accessor for DividerView.Style(0);
    v135 = sub_10000A61C(v134, qword_1009A0A20);
    v130 = sub_1005AA920(v135, a4);
  }

  *(v129 + 40) = v130;
  sub_1000F92E4(v129);
  v136 = *(v170 + 16);
  if (!v136)
  {
    v137 = v152;
    goto LABEL_139;
  }

  v137 = v152;
  if (v136 <= 3)
  {
    v138 = 0;
    v139 = 0.0;
LABEL_137:
    v142 = v136 - v138;
    v143 = (v170 + 8 * v138 + 32);
    do
    {
      v144 = *v143++;
      v139 = v139 + v144;
      --v142;
    }

    while (v142);
    goto LABEL_139;
  }

  v138 = v136 & 0x7FFFFFFFFFFFFFFCLL;
  v140 = (v170 + 48);
  v139 = 0.0;
  v141 = v136 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v139 = v139 + *(v140 - 2) + *(v140 - 1) + *v140 + v140[1];
    v140 += 4;
    v141 -= 4;
  }

  while (v141);
  if (v136 != v138)
  {
    goto LABEL_137;
  }

LABEL_139:
  sub_10059945C(v137, type metadata accessor for ScreenshotDisplayConfiguration);

  return v164;
}

unint64_t sub_100598540(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10076D39C();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v66 = a1;
  result = sub_10076090C();
  v15 = result;
  if (result >> 62)
  {
    result = sub_10077158C();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:

    return _swiftEmptyArrayStorage;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v67 = v15 & 0xC000000000000001;
    v59 = (v8 + 16);
    v60 = (v8 + 8);
    v18 = _swiftEmptyArrayStorage;
    v63 = v13;
    v64 = v10;
    v61 = v16;
    v62 = v15;
    while (1)
    {
      if (v67)
      {
        v19 = sub_10077149C();
        v20 = sub_100762A4C();
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);

        v20 = sub_100762A4C();
        if (v20)
        {
LABEL_9:
          v21 = v20;
          v69 = v19;
LABEL_13:
          sub_10076BEFC();
          sub_10076D3AC();
          v22 = sub_1007608AC();
          sub_1007601EC();
          v23 = sub_10076091C();
          v24 = v65;
          sub_10007AFB4(v23, v65);

          v25 = *(v24 + 64);
          v26 = *(v24 + 80);
          sub_10059945C(v24, type metadata accessor for ScreenshotDisplayConfiguration);
          swift_getObjectType();
          [a2 pageContainerSize];
          v28 = v27;
          v30 = v29;
          if (v22)
          {
            v31 = sub_10076D2EC();
            v32 = v64;
            if (v31)
            {
              (*v59)(v64, v13, v68);
            }

            else
            {
              sub_10076D32C();
            }

            v33 = 1;
          }

          else
          {
            v32 = v64;
            (*v59)(v64, v13, v68);
            v33 = sub_10076D2EC();
          }

          v34 = [a2 traitCollection];
          v35 = sub_1007706CC();

          if (v35)
          {
            if (v30 >= v28)
            {
              JUScreenClassGetPortraitWidth();
              v36 = 4.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v57)
              {
                JUScreenClassGetPortraitWidth();
                if (v28 > v58)
                {
                  v36 = 5.0;
                }

                else
                {
                  v36 = 4.0;
                }
              }
            }

            else
            {
              JUScreenClassGetLandscapeWidth();
              v36 = 5.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v38)
              {
                JUScreenClassGetLandscapeWidth();
                if (v28 > v39)
                {
                  v36 = 6.0;
                }

                else
                {
                  v36 = 5.0;
                }
              }
            }
          }

          else
          {
            if (v33)
            {
              v37 = 2.0;
            }

            else
            {
              v37 = 1.0;
            }

            if (v33)
            {
              v36 = 3.0;
            }

            else
            {
              v36 = 1.0;
            }

            v13 = v63;
          }

          [a2 pageMarginInsets];
          v41 = v40;
          [a2 pageMarginInsets];
          v43 = v41 + v42;
          PageTraitEnvironment.pageColumnMargin.getter();
          v45 = (v37 + -1.0) * v44 + v37 / v36 * (a3 - (v43 + (v36 + -1.0) * v44));
          v46 = [a2 traitCollection];
          v47 = sub_1007706CC();

          if ((v47 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_10076D35C(), v45 < v48))
          {
            sub_10076D36C();
            v48 = v45;
          }

          v49 = v48 - (v25 + v26);
          sub_10076D36C();
          v51 = v50;
          v52 = *v60;
          v53 = v68;
          (*v60)(v32, v68);
          v52(v13, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_10049D474(0, v18[2] + 1, 1, v18);
          }

          v16 = v61;
          v15 = v62;
          v55 = v18[2];
          v54 = v18[3];
          if (v55 >= v54 >> 1)
          {
            v18 = sub_10049D474((v54 > 1), v55 + 1, 1, v18);
          }

          v18[2] = v55 + 1;
          v56 = &v18[3 * v55];
          *(v56 + 4) = v21;
          v56[5] = v49;
          *(v56 + 6) = v51;
          goto LABEL_6;
        }
      }

      if (sub_100762A5C())
      {
        v69 = v19;
        v21 = sub_10076B84C();

        goto LABEL_13;
      }

LABEL_6:
      if (v16 == ++v17)
      {

        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100598AEC(uint64_t a1)
{
  v2 = v1;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10076092C();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_1000FCDDC(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_10089A810;
      swift_unknownObjectWeakAssign();
      *&v1[v3] = v4;
      swift_retain_n();

      v5 = *&v1[v3];
      if (v5)
      {
        *(v5 + 32) = &off_10089A810;
        swift_unknownObjectWeakAssign();
      }
    }

    swift_retain_n();
    v6 = [v1 traitCollection];
    sub_1007706CC();

    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      [v2 bounds];
      v10 = sub_100598540(v7, v8, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v24 = sub_1007608AC() & 1;
    v11 = sub_10060889C(v10, v24);
    v12 = v11;
    v23 = v10[2];
    if (v23)
    {
      v13 = 0;
      v14 = v10 + 6;
      v21 = v11 & 0xC000000000000001;
      v22 = v11 >> 62;
      while (v13 < v10[2])
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        if (v22)
        {
          v18 = sub_10077158C();
        }

        else
        {
          v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v13 == v18)
        {
          goto LABEL_22;
        }

        if (v21)
        {

          sub_10077149C();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }
        }

        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 24) = v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        *(v20 + 48) = v17;
        *(v20 + 56) = v13;

        sub_100760B7C();

        sub_10000CFBC(v25, &qword_100943310, &unk_100784150);

        v14 += 3;
        if (v23 == ++v13)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
  }
}

void sub_100598EB0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_compoundScrollObserver;
  v4 = objc_allocWithZone(sub_1007666AC());
  *(v1 + v3) = sub_10076669C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  v6 = sub_10076341C();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView) = 0;
  v7 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v7 = 0;
  v7[1] = 0;
  sub_10077156C();
  __break(1u);
}

void sub_100599044(objc_class *a1, uint64_t a2)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (v10)
  {

    if (*&v2[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media])
    {
      v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_collectionView];

      if ([v11 numberOfSections] >= 1 && objc_msgSend(v11, "numberOfItemsInSection:", 0) > a2)
      {
        v12 = sub_10076090C();
        v13 = v12 >> 62 ? sub_10077158C() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v13 > a2)
        {
          v14 = sub_10076090C();
          if ((v14 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
            {

              goto LABEL_12;
            }

            __break(1u);
            return;
          }

          sub_10077149C();
LABEL_12:

          sub_10000A5D4(&qword_100952110, qword_100790770);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_100784500;
          *(v15 + 32) = 0;
          *(v15 + 40) = a2;
          sub_10075E01C();
          isa = sub_10075E02C().super.isa;
          (*(v6 + 8))(v9, v5);
          v17 = [v11 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for ScreenshotCollectionViewCell(0);
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v18;
              v20 = v17;
              if (sub_100762A4C())
              {

                v21 = *(*(v19 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
                v27.value.super.isa = a1;
                v27.is_nil = 1;
                sub_10075FC5C(v27, v22);

                goto LABEL_26;
              }
            }

            type metadata accessor for VideoCollectionViewCell(0);
            if (swift_dynamicCastClass())
            {
              v17 = v17;
              if (sub_100762A5C())
              {

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = Strong;
                  [*(Strong + qword_1009602D0) setImage:a1];
                }
              }
            }
          }

LABEL_26:

          return;
        }
      }
    }
  }
}

uint64_t sub_1005993E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10059941C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10059945C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005994BC()
{
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) || !*(v0 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media))
  {
    return 0;
  }

  v1 = sub_10076090C();

  if (v1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_100599558(void *a1)
{
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = sub_10076D39C();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  [a1 frame];
  if (v18 <= 0.0 || v19 <= 0.0)
  {

    return;
  }

  v56 = v1;
  v20 = v18;
  v21 = sub_10076090C();
  v22 = sub_10075E09C();
  if ((v21 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v23 = sub_10077149C();
LABEL_8:

  v24 = sub_100762A4C();
  v57 = v23;
  if (v24)
  {
    sub_10076BEFC();
    sub_10076D3AC();

    v25 = v58;
    v26 = *(v58 + 56);
    v26(v8, 0, 1, v12);
    (*(v25 + 32))(v11, v8, v12);
    v26(v11, 0, 1, v12);
    v27 = (*(v25 + 48))(v11, 1, v12);
  }

  else
  {
    v55 = *(v58 + 56);
    v55(v8, 1, 1, v12);
    if (sub_100762A5C())
    {
      sub_10076B84C();

      sub_10076BEFC();
      sub_10076D3AC();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v55(v11, v28, 1, v12);
    v25 = v58;
    v29 = *(v58 + 48);
    if (v29(v8, 1, v12) != 1)
    {
      sub_10000CFBC(v8, &unk_1009467E0, qword_10078CB50);
    }

    v27 = v29(v11, 1, v12);
  }

  if (v27 == 1)
  {

    sub_10000CFBC(v11, &unk_1009467E0, qword_10078CB50);
    return;
  }

  (*(v25 + 32))(v17, v11, v12);
  sub_1007601EC();
  v30 = sub_10076091C();
  sub_10007AFB4(v30, v5);

  v31 = sub_1007608AC();
  v32 = *(v56 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits);
  if (!v32)
  {
    goto LABEL_42;
  }

  v33 = v31;
  [swift_unknownObjectRetain() pageContainerSize];
  v35 = v34;
  v37 = v36;
  if (v33)
  {
    if (sub_10076D2EC())
    {
      (*(v25 + 16))(v14, v17, v12);
    }

    else
    {
      sub_10076D32C();
    }

    v38 = 1;
  }

  else
  {
    (*(v25 + 16))(v14, v17, v12);
    v38 = sub_10076D2EC();
  }

  swift_getObjectType();
  v39 = [v32 traitCollection];
  v40 = sub_1007706CC();

  if (v40)
  {
    v41 = sub_10069EFC8(v35, v37);
    v43 = v42;
  }

  else
  {
    if (v38)
    {
      v41 = 2.0;
    }

    else
    {
      v41 = 1.0;
    }

    if (v38)
    {
      v43 = 3.0;
    }

    else
    {
      v43 = 1.0;
    }
  }

  v44 = v58;
  [v32 pageMarginInsets];
  v46 = v45;
  [v32 pageMarginInsets];
  v48 = v46 + v47;
  PageTraitEnvironment.pageColumnMargin.getter();
  v50 = (v41 + -1.0) * v49 + v41 / v43 * (v20 - (v48 + (v43 + -1.0) * v49));
  v51 = [v32 traitCollection];
  v52 = sub_1007706CC();

  if ((v52 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_10076D35C(), v50 < v53))
  {
    sub_10076D36C();
  }

  sub_10076D36C();
  swift_unknownObjectRelease();

  v54 = *(v44 + 8);
  v54(v14, v12);
  sub_10059945C(v5, type metadata accessor for ScreenshotDisplayConfiguration);
  v54(v17, v12);
}

void sub_100599C20(void *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v4 - 8);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = v70 - v8;
  v9 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v9 - 8);
  v79 = v70 - v10;
  v11 = sub_1007611EC();
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  v13 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v13 - 8);
  v15 = v70 - v14;
  v16 = sub_10076121C();
  v78 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076481C();
  __chkstk_darwin(v19);
  v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_media);
  if (!v23)
  {
    return;
  }

  v74 = v6;
  v75 = v22;
  v76 = v20;
  v77 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v81 = v23;
  v24 = sub_10076090C();
  v25 = sub_10075E09C();
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v24 + 8 * v25 + 32);

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v26 = sub_10077149C();
LABEL_6:

  type metadata accessor for ScreenshotCollectionViewCell(0);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v30 = sub_100762A4C();
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher);
      if (v32)
      {
        swift_beginAccess();
        v33 = *(v32 + 16);

        v35 = sub_100625CFC(v31, v33, v34);

        if (v35)
        {
          v36 = *(*(v28 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
          v37 = v35;
          v38 = v36;
          v39 = sub_10075FC9C();

          if (v39)
          {
            sub_100016F40(0, &qword_10094F610, UIImage_ptr);
            v41 = v37;
            v42 = sub_100770EEC();

            v43 = v42 ^ 1;
          }

          else
          {
            v43 = 1;
          }

          v84.is_nil = v43 & 1;
          v84.value.super.isa = v35;
          sub_10075FCEC(v84, v40);
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  type metadata accessor for VideoCollectionViewCell(0);
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
LABEL_24:

LABEL_25:

    return;
  }

  v73 = v44;
  v45 = a1;
  v46 = sub_100762A5C();
  if (!v46)
  {

    goto LABEL_24;
  }

  v47 = v46;
  v72 = v26;
  if (!*(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph))
  {

    goto LABEL_25;
  }

  v70[1] = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph);
  v71 = v45;
  v48 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_screenshotFetcher);
  if (v48)
  {

    v49 = sub_10076B84C();
    swift_beginAccess();
    v50 = *(v48 + 16);

    v52 = sub_100625CFC(v49, v50, v51);

    if (v52)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v54 = Strong;
        [*(Strong + qword_1009602D0) setImage:v52];
      }
    }
  }

  else
  {
  }

  (*(v78 + 104))(v18, enum case for VideoFillMode.scaleAspectFit(_:), v16);
  sub_10076B84C();
  sub_10076BEFC();
  sub_10076D3AC();

  v55 = sub_10076D39C();
  (*(*(v55 - 8) + 56))(v15, 0, 1, v55);
  sub_10076B7EC();
  sub_10076B82C();
  LODWORD(v78) = sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  sub_10076091C();
  sub_100760E8C();
  v56 = v47;

  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  sub_10076B7CC();
  v57 = v79;
  sub_10076B85C();
  v58 = sub_10075DB7C();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  v59 = v80;
  sub_10076B81C();
  v60 = v74;
  v78 = v56;
  sub_10076B80C();
  type metadata accessor for VideoView(0);
  sub_10059A958(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  v61 = sub_100762EEC();
  sub_10000CFBC(v60, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v59, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v57, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(&v82, &qword_100943310, &unk_100784150);
  v62 = v61;
  v63 = v73;
  sub_1005C7C50();
  swift_unknownObjectWeakAssign();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    v66 = [v63 contentView];
    [v66 addSubview:v65];

    [v63 setNeedsLayout];
  }

  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v67 = v82;
  v68 = swift_unknownObjectWeakLoadStrong();
  sub_10059A958(&qword_10095DEA8, type metadata accessor for VideoCollectionViewCell, &unk_1007ADF60);
  v69 = v71;
  sub_100767D3C();

  (*(v75 + 8))(v77, v76);
}