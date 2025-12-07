uint64_t sub_100631D8C(uint64_t a1, __n128 a2)
{
  v3 = sub_1007428D4();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100942478, &qword_1007CEA88);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = sub_10000C518(&qword_100942480, &unk_1007CEA90);
  __chkstk_darwin(v8 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = ASKDeviceTypeGetCurrent();
  v17 = sub_100753094();
  v19 = v18;
  if (v17 == sub_100753094() && v19 == v20)
  {

LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v22 = sub_100754754();

  v23 = 0;
  if ((v22 & 1) == 0)
  {
    if (a1)
    {
      sub_1007444B4();
      v24 = v37;
      v25 = *(v37 + 56);
      v25(v15, 0, 1, v3);
    }

    else
    {
      v24 = v37;
      v25 = *(v37 + 56);
      v25(v15, 1, 1, v3);
    }

    (*(v24 + 104))(v12, enum case for AppPlatform.watch(_:), v3);
    v25(v12, 0, 1, v3);
    v27 = *(v5 + 48);
    sub_100016B4C(v15, v7, &qword_100942480, &unk_1007CEA90);
    sub_100016B4C(v12, &v7[v27], &qword_100942480, &unk_1007CEA90);
    v28 = *(v24 + 48);
    if (v28(v7, 1, v3) == 1)
    {
      sub_10000C8CC(v12, &qword_100942480, &unk_1007CEA90);
      sub_10000C8CC(v15, &qword_100942480, &unk_1007CEA90);
      if (v28(&v7[v27], 1, v3) == 1)
      {
        sub_10000C8CC(v7, &qword_100942480, &unk_1007CEA90);
        goto LABEL_9;
      }
    }

    else
    {
      v29 = v36;
      sub_100016B4C(v7, v36, &qword_100942480, &unk_1007CEA90);
      if (v28(&v7[v27], 1, v3) != 1)
      {
        v30 = v35;
        (*(v24 + 32))(v35, &v7[v27], v3);
        sub_100632C48(&qword_100942488, &type metadata accessor for AppPlatform, &protocol conformance descriptor for AppPlatform);
        v31 = v29;
        v32 = sub_100753014();
        v33 = *(v24 + 8);
        v33(v30, v3);
        sub_10000C8CC(v12, &qword_100942480, &unk_1007CEA90);
        sub_10000C8CC(v15, &qword_100942480, &unk_1007CEA90);
        v33(v31, v3);
        sub_10000C8CC(v7, &qword_100942480, &unk_1007CEA90);
        v23 = v32 ^ 1;
        return v23 & 1;
      }

      sub_10000C8CC(v12, &qword_100942480, &unk_1007CEA90);
      sub_10000C8CC(v15, &qword_100942480, &unk_1007CEA90);
      (*(v24 + 8))(v29, v3);
    }

    sub_10000C8CC(v7, &qword_100942478, &qword_1007CEA88);
    v23 = 1;
  }

  return v23 & 1;
}

uint64_t sub_1006322B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074A7F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100942470, &qword_1007CEA80);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v23 - v16;
  if ((sub_100631D8C(a1, v15) & 1) == 0)
  {
    v20 = 0;
    return v20 & 1;
  }

  (*(v5 + 104))(v17, enum case for ScreenshotsDisplayStyle.fourScreenshots(_:), v4);
  (*(v5 + 56))(v17, 0, 1, v4);
  v18 = *(v8 + 48);
  sub_100016B4C(a2, v10, &unk_100934D80, &qword_1007BC850);
  sub_100016B4C(v17, &v10[v18], &unk_100934D80, &qword_1007BC850);
  v19 = *(v5 + 48);
  if (v19(v10, 1, v4) != 1)
  {
    sub_100016B4C(v10, v13, &unk_100934D80, &qword_1007BC850);
    if (v19(&v10[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v10[v18], v4);
      sub_100632C48(&qword_10092E508, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
      v20 = sub_100753014();
      v21 = *(v5 + 8);
      v21(v7, v4);
      sub_10000C8CC(v17, &unk_100934D80, &qword_1007BC850);
      v21(v13, v4);
      sub_10000C8CC(v10, &unk_100934D80, &qword_1007BC850);
      return v20 & 1;
    }

    sub_10000C8CC(v17, &unk_100934D80, &qword_1007BC850);
    (*(v5 + 8))(v13, v4);
    goto LABEL_8;
  }

  sub_10000C8CC(v17, &unk_100934D80, &qword_1007BC850);
  if (v19(&v10[v18], 1, v4) != 1)
  {
LABEL_8:
    sub_10000C8CC(v10, &qword_100942470, &qword_1007CEA80);
    v20 = 0;
    return v20 & 1;
  }

  sub_10000C8CC(v10, &unk_100934D80, &qword_1007BC850);
  v20 = 1;
  return v20 & 1;
}

void sub_1006326AC()
{
  v1 = sub_10000C518(&qword_100942450, &unk_1007D7B70);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView(0);
  sub_100750624();
  sub_100630D78();
  sub_1007512E4();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  if (qword_100921AD8 != -1)
  {
    swift_once();
  }

  v3 = sub_100746B04();
  v4 = sub_10000D0FC(v3, qword_1009423E8);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_100920778 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v7 = sub_10000D0FC(v6, qword_10097ECF8);
  sub_100289598(v7, v0 + v5);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform) = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_10074A7F4();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  sub_100754644();
  __break(1u);
}

void sub_1006328FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100632C48(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v4 = v0;
      v5 = sub_100753FC4();

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

void sub_100632A30(objc_class *a1, uint64_t a2)
{
  v4 = sub_10062F024();
  if (v4 >> 62)
  {
    v16 = v4;
    v17 = sub_100754664();
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

      v7 = sub_100754574();
LABEL_7:
      v18 = v7;
      type metadata accessor for VideoView(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;

        v10 = qword_10093CB50;
        v11 = [*(v9 + qword_10093CB50) layer];
        [v11 removeAllAnimations];

        [*(v9 + v10) setImage:a1];
      }

      else
      {

        if (v6)
        {
          v12 = sub_100754574();
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

        v10 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
        v9 = v13;
        v14 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_100743384(v20, v15);
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

double sub_100632C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100632C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MediaPageHeaderCollectionViewHostingCell(uint64_t a1)
{
  result = qword_1009424C8;
  if (!qword_1009424C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100632DCC()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Shelf.ContentType.mediaPageHeader(_:), v0, v2);
  v5 = COERCE_DOUBLE(sub_1007499B4());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100632ED4(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v78 = a1;
  v3 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v3 - 8);
  v82 = &v67 - v4;
  v5 = sub_10074F654();
  v75 = v5;
  v86 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  v8 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v73 = &v67 - v11;
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v87 = &v67 - v14;
  __chkstk_darwin(v16);
  v83 = &v67 - v17;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v18 = *(sub_10074F584() - 8);
  v80 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v72 = v20;
  *(v20 + 16) = xmmword_1007A7250;
  v74 = v20 + v19;
  v89 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v21 = *(v8 + 16);
  v22 = a1;
  v23 = v88;
  v21(v15, v22, v88);
  v84 = v8 + 16;
  v24 = v81;
  v21(v12, v81, v23);
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v30 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31 = *(v86 + 104);
  v86 += 104;
  v79 = v31;
  v77 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31(v7, enum case for PageGrid.HorizontalMargins.absolute(_:), v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v33 = v87;
  v34 = v73;
  sub_10074F544();
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v35 = v78;
  v36 = v88;
  v76 = v21;
  v21(v33, v78, v88);
  v21(v34, v24, v36);
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v79(v7, v30, v75);
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v38 = v80;
  top = UIEdgeInsetsZero.top;
  v71 = left;
  v39 = v87;
  sub_10074F544();
  v68 = 2 * v38;
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v40 = v35;
  v41 = v88;
  v42 = v76;
  v76(v39, v40, v88);
  v43 = v34;
  v44 = v81;
  v42(v34, v81, v41);
  v69 = vdupq_n_s64(0x4041000000000000uLL);
  v67 = v7;
  *v7 = v69;
  v45 = v75;
  v46 = v79;
  v79(v7, v77, v75);
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v47 = v68;
  v48 = v87;
  v49 = v67;
  sub_10074F544();
  v68 = v47 + v80;
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v50 = v48;
  v51 = v88;
  v52 = v76;
  v76(v50, v78, v88);
  v52(v43, v44, v51);
  *v49 = v69;
  v53 = v49;
  v46(v49, v77, v45);
  sub_1007535A4();
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v54 = v87;
  v55 = v73;
  sub_10074F544();
  v68 = 4 * v80;
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v56 = v54;
  v57 = v88;
  v58 = v76;
  v76(v56, v78, v88);
  v58(v55, v81, v57);
  v69 = vdupq_n_s64(0x404A000000000000uLL);
  *v53 = v69;
  v59 = v75;
  v79(v53, v77, v75);
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  v60 = v68;
  v61 = v87;
  v62 = v73;
  sub_10074F544();
  v80 += v60;
  v89 = 0x3FF0000000000000;
  sub_10074F614();
  v63 = v61;
  v64 = v88;
  v65 = v76;
  v76(v63, v78, v88);
  v65(v62, v81, v64);
  *v53 = v69;
  v79(v53, v77, v59);
  LOBYTE(v89) = 0;
  sub_10074F614();
  v89 = 0;
  sub_10074F614();
  sub_10074F544();
  return v72;
}

void *sub_1006339C4()
{
  v0 = sub_100744E04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744E34();
  sub_100633B60(&qword_10092BB18, &type metadata accessor for HorizontalRule, &protocol conformance descriptor for HorizontalRule);
  result = sub_1007468B4();
  if (v7)
  {
    sub_100744E24();
    swift_getKeyPath();
    sub_100746914();

    v5 = v7;
    sub_100744DE4();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_100633B60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100633BB0()
{
  result = qword_1009424D8;
  if (!qword_1009424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424D8);
  }

  return result;
}

unint64_t sub_100633C08()
{
  result = qword_1009424E0;
  if (!qword_1009424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424E0);
  }

  return result;
}

uint64_t sub_100633C80()
{
  v0 = sub_10000C518(&qword_100936C98, &qword_1007CF020);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100741164();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100740E14();
  sub_100039C50(v5, qword_1009829E0);
  sub_10000D0FC(v5, qword_1009829E0);
  sub_100741144();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100740E04();
}

uint64_t sub_100633DE4()
{
  v0 = sub_10000C518(&qword_100942560, &qword_1007CEFF0);
  sub_100039C50(v0, qword_1009829F8);
  sub_10000D0FC(v0, qword_1009829F8);
  sub_10000C518(&qword_100942580, &unk_1007CF010);
  return sub_100750184();
}

uint64_t sub_100633E74()
{
  v0 = sub_10000C518(&qword_100936C90, &unk_1007C0000);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10000C518(&qword_100936C98, &qword_1007CF020);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_100741164();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_100753054();
  __chkstk_darwin(v8 - 8);
  sub_100753044();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100753034(v12);
  sub_100740CD4();
  sub_100753024(v11);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100753034(v13);
  sub_100741154();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_100740D14();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_100740D24();
}

uint64_t sub_1006340E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004100BC;

  return sub_100635270(a1);
}

unint64_t sub_100634190()
{
  result = qword_1009424E8;
  if (!qword_1009424E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424E8);
  }

  return result;
}

unint64_t sub_1006341E4()
{
  result = qword_1009424F0;
  if (!qword_1009424F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424F0);
  }

  return result;
}

unint64_t sub_10063423C()
{
  result = qword_1009424F8;
  if (!qword_1009424F8)
  {
    sub_10000C724(&qword_100942500, qword_1007CEC18);
    sub_1006341E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009424F8);
  }

  return result;
}

uint64_t sub_1006342C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100634538();
  *v5 = v2;
  v5[1] = sub_1000A4868;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100634374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000A4868;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100634430()
{
  result = qword_100942508;
  if (!qword_100942508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942508);
  }

  return result;
}

unint64_t sub_100634488()
{
  result = qword_100942510;
  if (!qword_100942510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942510);
  }

  return result;
}

unint64_t sub_1006344E0()
{
  result = qword_100942518;
  if (!qword_100942518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942518);
  }

  return result;
}

unint64_t sub_100634538()
{
  result = qword_100942520;
  if (!qword_100942520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942520);
  }

  return result;
}

unint64_t sub_100634594()
{
  result = qword_100942528;
  if (!qword_100942528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942528);
  }

  return result;
}

uint64_t sub_1006345E8(uint64_t a1)
{
  v1 = sub_10000C518(&qword_100942590, &qword_1007CF028);
  __chkstk_darwin(v1);
  sub_100362AD0();
  sub_100740D84();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_100740D74(v3);
  swift_getKeyPath();
  sub_10000C518(&qword_100942598, &qword_1007CF058);
  sub_100740D64();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_100740D74(v4);
  return sub_100740D94();
}

unint64_t sub_100634708()
{
  result = qword_100942530;
  if (!qword_100942530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942530);
  }

  return result;
}

unint64_t sub_100634760()
{
  result = qword_100942538;
  if (!qword_100942538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942538);
  }

  return result;
}

unint64_t sub_1006347BC()
{
  result = qword_100942540;
  if (!qword_100942540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942540);
  }

  return result;
}

uint64_t sub_100634810(uint64_t a1)
{
  sub_1006351F0();
  v2 = sub_100740D54();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100634880@<X0>(uint64_t a1@<X8>)
{
  if (qword_100921AE0 != -1)
  {
    swift_once();
  }

  v3 = sub_100740E14();
  v4 = sub_10000D0FC(v3, qword_1009829E0);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_10063496C(uint64_t a1)
{
  v2 = sub_100362AD0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1006349BC()
{
  result = qword_100942558;
  if (!qword_100942558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942558);
  }

  return result;
}

uint64_t sub_100634A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000A27FC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100634AD8(uint64_t a1)
{
  v2 = sub_1006347BC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100634B44(char a1, uint64_t a2, void *a3, __n128 a4)
{
  if (a1)
  {
    sub_100754534(38);

    v7 = 0xD000000000000024;
  }

  else
  {
    sub_100754534(31);

    v7 = 0xD00000000000001DLL;
  }

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  sub_1007531B4(v8);
  return v7;
}

void sub_100634C00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v47 = a3;
  v9 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_10000C518(&qword_100942560, &qword_1007CEFF0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = sub_10000C518(&qword_100942568, &qword_1007CEFF8);
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - v17;
  v19 = sub_100741164();
  __chkstk_darwin(v19 - 8);
  sub_10000C518(&qword_100936C88, &qword_1007CF000);
  sub_100741144();
  v46 = sub_100740D04();

  sub_100741144();
  v20 = sub_100740D04();
  v21 = qword_100921AE8;
  v42 = v20;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v12, qword_1009829F8);
  sub_10002DDC8(&qword_100942570, &qword_100942560, &qword_1007CEFF0, &protocol conformance descriptor for Regex<A>);
  sub_100750174();
  v45 = a1;
  sub_100753244();
  sub_100750194();
  (*(v13 + 8))(v15, v12);

  v22 = sub_10000C518(&qword_100942578, &qword_1007CF008);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) == 1)
  {
    sub_10000C8CC(v18, &qword_100942568, &qword_1007CEFF8);

    v24 = 0;
    v25 = a2;
    v26 = v45;
    v27 = v45;
  }

  else
  {
    sub_1007501A4();

    (*(v23 + 8))(v18, v22);
    v27 = sub_100753154();
    v25 = v40;

    v24 = 1;
    v26 = v45;
  }

  v28 = v43;
  if (!v44)
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v44)
  {
    v29 = v44;
  }

  v48 = v28;
  v49 = v29;

  sub_100740CE4();
  v30 = v11;
  sub_1000497C4(v47, v11);
  v31 = sub_100741264();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_10000C8CC(v11, &unk_100923970, &qword_1007A6B90);
    v34 = sub_100634B44(v24, v27, v25, v33);
    v36 = v35;
  }

  else
  {
    v34 = sub_1007411E4();
    v36 = v37;
    (*(v32 + 8))(v30, v31);
  }

  v48 = v34;
  v49 = v36;
  v38 = v42;
  sub_100740CE4();
  sub_10000C8CC(v47, &unk_100923970, &qword_1007A6B90);

  v39 = v46;

  *a6 = v26;
  a6[1] = a2;
  a6[2] = v27;
  a6[3] = v25;
  a6[4] = v39;
  a6[5] = v38;
}

unint64_t sub_1006351F0()
{
  result = qword_100942588;
  if (!qword_100942588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942588);
  }

  return result;
}

uint64_t sub_100635244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100740CF4();
  *a1 = result;
  return result;
}

uint64_t sub_100635270(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_10000C518(&unk_100923970, &qword_1007A6B90);
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10063530C, 0, 0);
}

uint64_t sub_10063530C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10001E7DC(0, v2, 0);
    v3 = sub_100741264();
    v4 = *(*(v3 - 8) + 56);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 72);
      v7 = *(v5 - 1);
      v8 = *v5;
      v4(v6, 1, 1, v3);

      sub_100634C00(v7, v8, v6, 0, 0, (v0 + 16));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10001E7DC((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * v10];
      v12 = *(v0 + 16);
      v13 = *(v0 + 48);
      v11[3] = *(v0 + 32);
      v11[4] = v13;
      v11[2] = v12;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1006354A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_100750304();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v11 + 8);
  v17(v16, v10);
  if (!v43)
  {
    sub_10000C8CC(v42, &unk_1009297F0, &unk_1007AD7A0);
    goto LABEL_8;
  }

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744FD4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v33 = 1;
    v32 = v41;
    goto LABEL_9;
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17(v13, v10);
  if (v42[0] != 1 || (, v18 = sub_10074ECC4(), , !v18))
  {

    goto LABEL_8;
  }

  v19 = sub_100747B94();
  v20 = sub_100747C14();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a1, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = v40;
  v23 = v19;
  sub_100636FA4(v7, v40);
  sub_10000C8CC(v7, &qword_100942730, &unk_1007B3460);
  v24 = *(v8 + 24);
  v25 = sub_100750534();
  v26 = v37;
  (*(*(v25 - 8) + 16))(v37, v22 + v24, v25);
  v28 = v38;
  v27 = v39;
  (*(v38 + 104))(v26, enum case for FontSource.useCase(_:), v39);
  v29.super.isa = v23;
  isa = sub_1007502F4(v29).super.isa;
  (*(v28 + 8))(v26, v27);
  v31 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10074F214();
  sub_10074F184();
  v32 = v41;
  sub_10074A254();

  sub_100638930(v22, type metadata accessor for SearchActionContentView.Layout.Metrics);
  v33 = 0;
LABEL_9:
  v34 = sub_10074A274();
  return (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
}

uint64_t sub_100635A28@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100747BA4();
  *a2 = result;
  return result;
}

char *sub_100635A54(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView;
  *&v4[v9] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_linkLabel;
  sub_100750614();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
  if (qword_100921AF0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v13 = sub_10000D0FC(v12, qword_100982A10);
  sub_10063889C(v13, &v4[v11]);
  v35.receiver = v4;
  v35.super_class = type metadata accessor for SearchActionContentView(0);
  v14 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView];
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v20 = swift_allocObject();
  v34 = xmmword_1007A5CF0;
  *(v20 + 16) = xmmword_1007A5CF0;
  *(v20 + 32) = v19;
  v21 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_linkLabel];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A5CF0;
  *(v22 + 32) = v21;
  sub_10000C518(&qword_10092E9D0, qword_1007B41A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = v19;
  v25 = v21;
  sub_100620BCC(inited);
  v27 = v26;
  swift_setDeallocating();
  sub_10000C518(&qword_1009423E0, &unk_1007CE740);
  result = swift_arrayDestroy();
  if (!(v27 >> 62))
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_100637230();
    sub_10000C518(&unk_1009249D0, qword_1007A7B10);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007A5A00;
    *(v33 + 32) = sub_100751554();
    *(v33 + 40) = &protocol witness table for UITraitLegibilityWeight;
    sub_100753D44();

    swift_unknownObjectRelease();

    return v18;
  }

  result = sub_100754664();
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
        v31 = sub_100754574();
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

id sub_100635E1C(double *a1)
{
  v2 = v1;
  v45 = sub_100750E94();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v40 - v7;
  __chkstk_darwin(v8);
  v48 = &v40 - v9;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v44 = sub_100750304();
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v40 - v20);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10063889C(&v2[v22], v21);
  v23 = *a1 == *v21 && a1[1] == v21[1];
  if (v23 && a1[2] == v21[2] && (sub_100750524() & 1) != 0 && *(a1 + v16[7]) == *(v21 + v16[7]) && *(a1 + v16[8]) == *(v21 + v16[8]))
  {
    v24 = v16[9];
    v25 = *(a1 + v24);
    v26 = *(v21 + v24);
    result = sub_100638930(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
    if (v25 == v26)
    {
      return result;
    }
  }

  else
  {
    sub_100638930(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  v42 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView];
  v28 = [v2 traitCollection];
  sub_10063889C(&v2[v22], v18);
  v43 = v12;
  v29 = v45;
  v41 = v22;
  v30 = v16[6];
  v31 = sub_100750534();
  (*(*(v31 - 8) + 16))(v15, &v18[v30], v31);
  v32 = v44;
  (*(v13 + 104))(v15, enum case for FontSource.useCase(_:), v44);
  v33.super.isa = v28;
  isa = sub_1007502F4(v33).super.isa;
  (*(v13 + 8))(v15, v32);
  v35 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_100638930(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_1007432D4();
  [v2 setNeedsLayout];
  sub_10063889C(&v2[v41], v18);
  v36 = v46;
  sub_100750E84();
  v37 = v47;
  sub_100750E54();
  v38 = *(v4 + 8);
  v38(v36, v29);
  v39 = v48;
  sub_100750E74();
  v38(v37, v29);
  sub_100750E64();
  v38(v39, v29);
  sub_100638930(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_1007505F4();
  return [v2 setNeedsLayout];
}

uint64_t sub_100636324()
{
  v1 = type metadata accessor for SearchActionContentView.Layout(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100750354();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchActionContentView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_linkLabel];
  v4[8] = sub_100750614();
  v4[9] = &protocol witness table for UILabel;
  v4[5] = v10;
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView];
  v4[3] = sub_1007433C4();
  v4[4] = &protocol witness table for UIView;
  *v4 = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10063889C(&v0[v12], v4 + *(v2 + 32));
  v13 = v10;
  v14 = v11;
  sub_1007477B4();
  sub_100636510(v0, v15, v16, v17, v18);
  sub_100638930(v4, type metadata accessor for SearchActionContentView.Layout);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100636510(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
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
  sub_100016B4C(v6, &v20, &unk_100928A00, &qword_1007A5AB0);
  if (v21)
  {
    sub_100012160(&v20, v22);
    sub_10000C888(v22, v23);
    sub_100750414();
    sub_10000C888(v22, v23);
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
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v22);
  }

  else
  {
    sub_10000C8CC(&v20, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_10000C888((v6 + 40), *(v6 + 64));
  sub_100750404();
  sub_10000C888((v6 + 40), *(v6 + 64));
  v29.origin.y = v16;
  v29.origin.x = MinX;
  v29.size.width = Width;
  v29.size.height = v18;
  CGRectGetMidY(v29);
  sub_100753B24();
  sub_100750394();
  return sub_100750314();
}

double sub_100636868(void *a1, __n128 a2, double a3)
{
  v5 = a2.n128_f64[0];
  v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v6);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v13 = v5 + 0.0;
  sub_100016B4C(v3, &v23, &unk_100928A00, &qword_1007A5AB0);
  if (v24)
  {
    sub_100012160(&v23, v25);
    sub_10000C888(v25, v26);
    sub_100750414();
    sub_10000C620(v25);
  }

  else
  {
    sub_10000C8CC(&v23, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_10000C888((v3 + 40), *(v3 + 64));
  v14 = a1;
  sub_100750404();
  v15 = v22;
  sub_10063889C(v12, v22);
  v16 = *(v6 + 24);
  v17 = sub_100750534();
  (*(*(v17 - 8) + 32))(v11, v15 + v16, v17);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  v18 = [v14 traitCollection];
  v26 = v8;
  v27 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v25);
  (*(v9 + 16))(v19, v11, v8);
  sub_10074FC54();

  (*(v9 + 8))(v11, v8);
  sub_10000C620(v25);
  return v13;
}

void sub_100636BD8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100750304();
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
    v15 = &v2[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics];
    swift_beginAccess();
    sub_10063889C(v15, v13);
    v16 = *(v10 + 24);
    v17 = sub_100750534();
    (*(*(v17 - 8) + 16))(v9, &v13[v16], v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v18.super.isa = v14;
    v19 = v2;
    isa = sub_1007502F4(v18).super.isa;
    (*(v7 + 8))(v9, v6);
    v21 = [objc_opt_self() configurationWithFont:isa scale:1];

    sub_100638930(v13, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_10074F214();

    v22 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView];
    [v22 contentMode];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v22 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    sub_1007433C4();
    sub_10063938C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
  }

  else
  {
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_100743384(v24, v11);
  }
}

uint64_t sub_100636FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  if ((sub_100753804() & 1) == 0)
  {
    sub_100016B4C(a1, v10, &qword_100942730, &unk_1007B3460);
    v11 = sub_100747C14();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000C8CC(v10, &qword_100942730, &unk_1007B3460);
LABEL_8:
      if (qword_100921AF0 != -1)
      {
        swift_once();
      }

      v15 = qword_100982A10;
      goto LABEL_11;
    }

    sub_100747B84();
    (*(v12 + 8))(v10, v11);
    sub_10074F594();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 != 1.0)
    {
      goto LABEL_8;
    }
  }

  if (qword_100921AF8 != -1)
  {
    swift_once();
  }

  v15 = qword_100982A28;
LABEL_11:
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v17 = sub_10000D0FC(v16, v15);
  return sub_10063889C(v17, a2);
}

uint64_t sub_100637230()
{
  v1 = v0;
  v2 = sub_100750E94();
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
  v10 = sub_100750304();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = v14 - 8;
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView] setAccessibilityIgnoresInvertColors:{0, v16}];
  sub_1007432A4();
  v19 = [v0 traitCollection];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10063889C(&v0[v20], v18);
  v21 = *(v15 + 32);
  v22 = sub_100750534();
  (*(*(v22 - 8) + 16))(v13, &v18[v21], v22);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v23.super.isa = v19;
  isa = sub_1007502F4(v23).super.isa;
  (*(v11 + 8))(v13, v10);
  v25 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_100638930(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_1007432D4();
  [v1 setNeedsLayout];
  sub_10063889C(v1 + v20, v18);
  v26 = v34;
  sub_100750E84();
  v27 = v35;
  sub_100750E54();
  v28 = *(v38 + 8);
  v29 = v26;
  v30 = v39;
  v28(v29, v39);
  v31 = v36;
  sub_100750E74();
  v28(v27, v30);
  sub_100750E64();
  v28(v31, v30);
  sub_100638930(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  return sub_1007505F4();
}

id sub_100637654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100637718(uint64_t a1, __n128 a2)
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

uint64_t sub_1006377EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1006378AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_100637970(uint64_t a1)
{
  sub_1002CA274(319);
  if (v1 <= 0x3F)
  {
    sub_100637A0C();
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

unint64_t sub_100637A0C()
{
  result = qword_10092D510;
  if (!qword_10092D510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10092D510);
  }

  return result;
}

uint64_t sub_100637A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_100750534();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100637B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_100750534();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100637B8C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_100750534();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_100637C74(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  sub_100039C50(v8, a2);
  v9 = sub_10000D0FC(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, a4);
  (*(*(v10 - 8) + 16))(v9 + v8[6], v11, v10);
  __asm { FMOV            V0.2D, #21.0 }

  *v9 = result;
  v9[1].n128_u64[0] = 0x4024000000000000;
  *(v9->n128_u64 + v8[7]) = 0x401C000000000000;
  *(v9->n128_u64 + v8[8]) = 0x4018000000000000;
  *(v9->n128_u64 + v8[9]) = 0x404A800000000000;
  return result;
}

BOOL sub_100637D90(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    if ((sub_100750524() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]))
    {
      return *(a1 + v6[9]) == *(a2 + v6[9]);
    }
  }

  return 0;
}

double sub_100637E50(uint64_t a1)
{
  v2 = sub_10074F704();
  v85 = *(v2 - 8);
  __chkstk_darwin(v2);
  v84 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SearchActionContentView.Layout(0);
  __chkstk_darwin(v83);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750E94();
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
  v14 = sub_100750BD4();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v75 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100750304();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v17 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v18 - 8);
  v20 = v66 - v19;
  v21 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v21 - 8);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v66 - v25;
  v27 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v27);
  v80 = v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744FD4();
  sub_10063938C(&unk_100928560, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_1007468B4();
  if (!v87[0])
  {
    return 0.0;
  }

  v29 = sub_10074ECB4();
  if (v30)
  {
    v66[0] = v30;
    v66[1] = v29;
    v67 = v2;
    v68 = v5;
    v31 = sub_1007469A4();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v26, a1, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
    swift_getKeyPath();
    v69 = a1;
    sub_100746914();

    v33 = v87[0];
    sub_100016B4C(v26, v23, &unk_100923200, &unk_1007A5C50);
    if ((*(v32 + 48))(v23, 1, v31) == 1)
    {
      sub_10000C8CC(v23, &unk_100923200, &unk_1007A5C50);
      v34 = 1;
    }

    else
    {
      sub_100746884();
      (*(v32 + 8))(v23, v31);
      v34 = 0;
    }

    v36 = sub_100747C14();
    (*(*(v36 - 8) + 56))(v20, v34, 1, v36);
    v37 = v80;
    sub_100636FA4(v20, v80);

    sub_10000C8CC(v20, &qword_100942730, &unk_1007B3460);
    sub_10000C8CC(v26, &unk_100923200, &unk_1007A5C50);
    swift_getKeyPath();
    sub_100746914();

    v38 = v87[0];
    v39 = *(v27 + 24);
    v40 = sub_100750534();
    (*(*(v40 - 8) + 16))(v17, v37 + v39, v40);
    v41 = v70;
    v42 = v71;
    (*(v70 + 104))(v17, enum case for FontSource.useCase(_:), v71);
    v43.super.isa = v38;
    isa = sub_1007502F4(v43).super.isa;
    (*(v41 + 8))(v17, v42);
    v45 = [objc_opt_self() configurationWithFont:isa scale:1];

    v46 = sub_10074ECC4();

    v72 = v45;
    if (v46)
    {
      v47 = v45;
      sub_10074F214();
    }

    v48 = sub_100750F34();
    swift_allocObject();
    v49 = sub_100750F14();
    v50 = v73;
    sub_100750E84();
    v51 = v74;
    sub_100750E54();
    v52 = *(v81 + 8);
    v53 = v37;
    v54 = v82;
    v52(v50, v82);
    v55 = v76;
    sub_100750E74();
    v52(v51, v54);
    sub_100750E64();
    v52(v55, v54);
    sub_100750BB4();
    v56 = v75;
    sub_100750BF4();
    sub_100750BA4();
    (*(v78 + 8))(v56, v79);
    v57 = v68;
    sub_10000C824(v87, (v68 + 5));
    v57[3] = v48;
    v57[4] = &protocol witness table for LayoutViewPlaceholder;
    *v57 = v49;
    sub_10063889C(v53, v57 + *(v83 + 24));
    swift_getKeyPath();

    v58 = v84;
    sub_100746914();

    sub_10074F674();
    v60 = v59;
    v62 = v61;
    (*(v85 + 8))(v58, v67);
    swift_getKeyPath();
    sub_100746914();

    v63.n128_u64[0] = v60;
    sub_100636868(v86, v63, v62);
    v35 = v64;

    swift_unknownObjectRelease();
    sub_100638930(v57, type metadata accessor for SearchActionContentView.Layout);
    sub_10000C620(v87);
    sub_100638930(v53, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  else
  {

    return 0.0;
  }

  return v35;
}

uint64_t sub_10063889C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100638904@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100747BA4();
  *a2 = result;
  return result;
}

uint64_t sub_100638930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100638990(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744FD4();
  sub_10063938C(&unk_100928560, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_1007468B4();
  if (v27)
  {

    v17 = sub_10074ECC4();

    if (v17)
    {
      v26[0] = v17;
      v26[1] = v2;
      v26[2] = a2;
      v18 = sub_1007469A4();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v13, a1, v18);
      (*(v19 + 56))(v13, 0, 1, v18);
      swift_getKeyPath();
      sub_100746914();

      v20 = v27;
      sub_100016B4C(v13, v10, &unk_100923200, &unk_1007A5C50);
      if ((*(v19 + 48))(v10, 1, v18) == 1)
      {
        sub_10000C8CC(v10, &unk_100923200, &unk_1007A5C50);
        v21 = 1;
      }

      else
      {
        sub_100746884();
        (*(v19 + 8))(v10, v18);
        v21 = 0;
      }

      v22 = sub_100747C14();
      (*(*(v22 - 8) + 56))(v7, v21, 1, v22);
      sub_100636FA4(v7, v16);

      sub_10000C8CC(v7, &qword_100942730, &unk_1007B3460);
      sub_10000C8CC(v13, &unk_100923200, &unk_1007A5C50);
      v23 = sub_10074F364();
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1007A5CF0;
      *(v24 + 32) = v23;

      v25._rawValue = v24;
      sub_100744224(v25);

      sub_100638930(v16, type metadata accessor for SearchActionContentView.Layout.Metrics);
    }

    else
    {
    }
  }
}

double sub_100638DD8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  sub_100744FD4();
  sub_10063938C(&unk_100928560, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_1007468B4();
  if (v37)
  {
    v34 = a1;
    v35 = ObjectType;
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_linkLabel];

    sub_10074ECB4();
    if (v22)
    {
      v23 = sub_100753064();
    }

    else
    {
      v23 = 0;
    }

    [v21 setText:v23];

    v24 = sub_10074EC84();

    v36 = v16;
    if ((v24 & 2) != 0)
    {
      [v21 _setTextColorFollowsTintColor:1];
    }

    else
    {
      [v21 _setTextColorFollowsTintColor:0];
      sub_10000D198();
      v25 = sub_100753DD4();
      [v21 setTextColor:v25];
    }

    v26 = sub_1007469A4();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v13, v34, v26);
    (*(v27 + 56))(v13, 0, 1, v26);
    v28 = [v2 traitCollection];
    sub_100016B4C(v13, v10, &unk_100923200, &unk_1007A5C50);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_10000C8CC(v10, &unk_100923200, &unk_1007A5C50);
      v29 = 1;
    }

    else
    {
      sub_100746884();
      (*(v27 + 8))(v10, v26);
      v29 = 0;
    }

    v30 = sub_100747C14();
    (*(*(v30 - 8) + 56))(v7, v29, 1, v30);
    sub_100636FA4(v7, v19);

    sub_10000C8CC(v7, &qword_100942730, &unk_1007B3460);
    sub_10000C8CC(v13, &unk_100923200, &unk_1007A5C50);
    v31 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
    swift_beginAccess();
    v32 = v36;
    sub_10063889C(v2 + v31, v36);
    swift_beginAccess();
    sub_1006392D8(v19, v2 + v31);
    swift_endAccess();
    sub_100635E1C(v32);
    sub_100638930(v32, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_100638930(v19, type metadata accessor for SearchActionContentView.Layout.Metrics);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1006392D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10063938C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006393D4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_iconView;
  *(v0 + v1) = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_linkLabel;
  sub_100750614();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23SearchActionContentView_metrics;
  if (qword_100921AF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v5 = sub_10000D0FC(v4, qword_100982A10);
  sub_10063889C(v5, v0 + v3);
  sub_100754644();
  __break(1u);
}

uint64_t sub_1006394F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a12@<D4>, double a13@<D5>, double a16, double a17)
{
  v58 = a6;
  v53 = a5;
  v63 = a4;
  v55 = a13;
  v54 = a12;
  v64 = a1;
  v62 = a7;
  v49 = sub_100751BC4();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10074E984();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074F6E4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v52 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v47 - v26;
  v28 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v28);
  v51 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v47 - v31;
  sub_100016B4C(a2, &v47 - v31, &unk_10093D6E0, &unk_1007A6080);
  v50 = v28;
  sub_100016B4C(a3, &v32[*(v28 + 48)], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v60 = v23;
  v33 = *(v23 + 104);
  v34 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!LOBYTE(v65[0]))
  {
    v34 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v35 = *v34;
  v59 = v27;
  v61 = v22;
  v33(v27, v35, v22);
  sub_10074C9D4();
  v36 = v65[3];
  sub_10000C8CC(v65, &unk_1009276E0, &unk_1007A5C70);
  swift_getKeyPath();
  v37 = v57;
  v38 = v56;
  sub_1007525B4();

  if ((*(v38 + 88))(v21, v37) == enum case for Shelf.ContentType.productReview(_:))
  {
    v39 = v32;
    v40 = v59;
    v41 = v60;
    v42 = v61;
    if (v36)
    {
      (*(v60 + 16))(v52, v59, v61);
      sub_1004E97E0(0.0);
      sub_10074F6B4();
    }

    else
    {
      v46 = v47;
      sub_1007455F4();
      (*(v41 + 16))(v52, v40, v42);
      sub_1004504C8(v46);
      sub_10074F6B4();
      (*(v48 + 8))(v46, v49);
    }

    (*(v41 + 8))(v40, v42);
    return sub_10000C8CC(v39, &qword_100923228, &unk_1007AB120);
  }

  else
  {
    v65[0] = v53;
    v43 = v51;
    sub_100016B4C(v32, v51, &qword_100923228, &unk_1007AB120);
    v44 = *(v50 + 48);
    sub_1000E1F2C();
    sub_100745684();
    (*(v60 + 8))(v59, v61);
    sub_10000C8CC(v32, &qword_100923228, &unk_1007AB120);
    sub_10000C8CC(v43 + v44, &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v43, &unk_10093D6E0, &unk_1007A6080);
    return (*(v38 + 8))(v21, v37);
  }
}

uint64_t sub_100639BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10063A004();

  return sub_100745684();
}

uint64_t sub_100639CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10063A004();

  return sub_100745674();
}

uint64_t sub_100639DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10063A060();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_100639E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a12@<D6>, double a13@<D7>, double a14, double a15)
{
  v28[4] = a4;
  *&v28[2] = a12;
  *&v28[3] = a13;
  v28[0] = a5;
  v28[1] = a1;
  v18 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  v25 = *v15;
  sub_100016B4C(a2, v28 - v23, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(a3, &v24[*(v19 + 56)], &unk_10093D6E0, &unk_1007A6080);
  v28[5] = v25;
  sub_100016B4C(v24, v21, &qword_100923228, &unk_1007AB120);
  v26 = *(v19 + 56);
  sub_1000E1F2C();

  sub_100745674();
  sub_10000C8CC(v24, &qword_100923228, &unk_1007AB120);

  sub_10000C8CC(&v21[v26], &unk_10093D6E0, &unk_1007A6080);
  return sub_10000C8CC(v21, &unk_10093D6E0, &unk_1007A6080);
}

unint64_t sub_10063A004()
{
  result = qword_100942740;
  if (!qword_100942740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942740);
  }

  return result;
}

unint64_t sub_10063A060()
{
  result = qword_100942748;
  if (!qword_100942748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942748);
  }

  return result;
}

id sub_10063A158()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView];
  v2 = [v0 isHighlighted];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_isHighlighted;
  v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_isHighlighted] = v2;
  sub_10000D198();
  if (v2)
  {
    v4 = sub_100753EA4();
  }

  else
  {
    v4 = sub_100753E04();
  }

  v5 = v4;
  [v1 setBackgroundColor:v4];

  v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator] = v1[v3] ^ 1;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView];

  return [v6 setHidden:?];
}

char *sub_10063A224(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SearchHintView()) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView;
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView];
  v13 = v10;
  [v12 setUserInteractionEnabled:0];
  v14 = [v13 contentView];
  [v14 addSubview:*&v10[v11]];

  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v13;
}

id sub_10063A4C0(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SearchHintCollectionViewCell();
  objc_msgSendSuper2(&v8, "prepareForReuse");
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView];
  v2[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator] = 0;
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView] setHidden:1];
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel] setAttributedText:0];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage] = 0;

  sub_10064FB3C(v4, v5, v6);
  return [v2 setNeedsLayout];
}

id sub_10063A5D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10063A638(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  sub_100032C04(a1, v15);
  v5 = v16;
  if (v16)
  {
    v6 = sub_10000C888(v15, v16);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = v4;
    v12 = sub_100754734();
    (*(v7 + 8))(v10, v5);
    sub_10000C620(v15);
  }

  else
  {
    v13 = v4;
    v12 = 0;
  }

  [v4 addTarget:v12 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return result;
}

char *sub_10063A7AC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v94 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v94);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10074AB44();
  v91 = *(v104 - 8);
  __chkstk_darwin(v104);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v89 = &v83 - v12;
  v13 = sub_100741E54();
  __chkstk_darwin(v13 - 8);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  __chkstk_darwin(v15 - 8);
  v87 = &v83 - v16;
  v17 = sub_100750304();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v4;
  v85 = &v4[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_metrics];
  if (qword_1009212B0 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_100981548);
  v90 = *(v21 - 8);
  v23 = *(v90 + 16);
  v86 = v22;
  v24 = v90 + 16;
  v103 = v23;
  (v23)(v20);
  v25 = v18[13];
  LODWORD(v102) = enum case for FontSource.useCase(_:);
  v107 = v25;
  v26 = v18 + 13;
  v25(v20);
  v101 = sub_100750B04();
  v124[3] = v101;
  v124[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v124);
  v122 = v17;
  v123 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v121);
  v100 = v18[2];
  v100(v27, v20, v17);
  sub_100750B14();
  v28 = v18[1];
  v98 = v18 + 1;
  v99 = v28;
  v28(v20, v17);
  if (qword_1009212A0 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v21, qword_100981518);
  v106 = v24;
  v30 = v103;
  v103(v20, v29, v21);
  (v107)(v20, v102, v17);
  v122 = v101;
  v123 = &protocol witness table for StaticDimension;
  sub_10000D134(v121);
  v119 = v17;
  v120 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v118);
  v100(v31, v20, v17);
  sub_100750B14();
  v99(v20, v17);
  v97 = v21;
  v30(v20, v29, v21);
  v32 = v102;
  (v107)(v20, v102, v17);
  v96 = v26;
  v33 = v101;
  v119 = v101;
  v120 = &protocol witness table for StaticDimension;
  sub_10000D134(v118);
  v116 = v17;
  v117 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v115);
  v100(v34, v20, v17);
  sub_100750B14();
  v99(v20, v17);
  v84 = v29;
  v30(v20, v29, v21);
  (v107)(v20, v32, v17);
  v116 = v33;
  v117 = &protocol witness table for StaticDimension;
  sub_10000D134(v115);
  v113 = v17;
  v114 = &protocol witness table for FontSource;
  v35 = sub_10000D134(v112);
  v36 = v100;
  v100(v35, v20, v17);
  sub_100750B14();
  v37 = v99;
  v99(v20, v17);
  v113 = sub_1007507D4();
  v114 = &protocol witness table for ZeroDimension;
  sub_10000D134(v112);
  sub_1007507C4();
  v30(v20, v29, v97);
  (v107)(v20, v102, v17);
  v111[3] = v101;
  v111[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v111);
  v110[3] = v17;
  v110[4] = &protocol witness table for FontSource;
  v38 = sub_10000D134(v110);
  v36(v38, v20, v17);
  sub_100750B14();
  v37(v20, v17);
  v109 = 0x4034000000000000;
  v110[0] = 0x4052000000000000;
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  sub_100741944();
  v39 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_divider;
  v40 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v41 = v105;
  *&v105[v39] = v40;
  v42 = v41;
  v43 = v88;
  sub_100741DD4();
  v44 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView] = sub_10027562C(v43, 0);
  v45 = v42;
  v46 = v89;
  v47 = v97;
  v48 = v103;
  v103(v89, v86, v97);
  v101 = *(v90 + 56);
  v101(v46, 0, 1, v47);
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v49 = v92;
  v107 = *(v91 + 104);
  v107(v92);
  v102 = sub_100745C84();
  v50 = objc_allocWithZone(v102);
  *&v45[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel] = sub_100745C74();
  v51 = v84;
  v52 = v97;
  v48(v46, v84, v97);
  v53 = v101;
  v101(v46, 0, 1, v52);
  v54 = v100;
  (v107)(v49, v100, v104);
  v55 = objc_allocWithZone(v102);
  *&v105[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel] = sub_100745C74();
  v103(v46, v51, v52);
  v53(v46, 0, 1, v52);
  (v107)(v49, v54, v104);
  v56 = objc_allocWithZone(v102);
  v57 = sub_100745C74();
  v58 = v105;
  *&v105[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_messageLabel] = v57;
  *&v58[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v108.receiver = v58;
  v108.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v63 = v59;
  [v63 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v63 setScrollEnabled:1];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_divider;
  v65 = qword_100920D78;
  v66 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_divider];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_10000D0FC(v94, qword_100980640);
  v68 = v95;
  sub_1001154F8(v67, v95);
  v69 = &v66[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  sub_10011555C(v68, v69);
  swift_endAccess();
  v70 = &v66[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v71 = *(v69 + 1);
  *v70 = *v69;
  *(v70 + 1) = v71;
  [v66 setNeedsLayout];
  [v66 setNeedsLayout];

  sub_1002FE2B0(v68);
  v72 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel;
  [*&v63[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel] setTextAlignment:1];
  v73 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel;
  [*&v63[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel] setTextAlignment:1];
  v74 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_messageLabel;
  [*&v63[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_messageLabel] setTextAlignment:1];
  v75 = *&v63[v72];
  sub_10000D198();
  v76 = v75;
  v77 = sub_100753DD4();
  [v76 setTextColor:v77];

  v78 = *&v63[v73];
  v79 = sub_100753DD4();
  [v78 setTextColor:v79];

  v80 = *&v63[v74];
  v81 = sub_100753DF4();
  [v80 setTextColor:v81];

  [v63 addSubview:*&v63[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView]];
  [v63 addSubview:*&v63[v72]];
  [v63 addSubview:*&v63[v73]];
  [v63 addSubview:*&v63[v64]];
  [v63 addSubview:*&v63[v74]];
  [v63 addSubview:*&v63[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView]];

  return v63;
}

double sub_10063B51C(double a1, double a2)
{
  v3 = sub_100741954();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v6;
  v29 = sub_100741974();
  v28 = *(v29 - 8);
  v7 = __chkstk_darwin(v29);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_metrics, v3, v7);
  v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView);
  v30[28] = type metadata accessor for InAppPurchaseView(0);
  v30[29] = &protocol witness table for UIView;
  v30[25] = v10;
  v11 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel);
  v12 = sub_100745C84();
  v30[23] = v12;
  v30[24] = &protocol witness table for UILabel;
  v30[19] = &protocol witness table for UILabel;
  v30[20] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel);
  v30[18] = v12;
  v30[15] = v13;
  v14 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_divider);
  v30[13] = type metadata accessor for DividerView(0);
  v30[14] = &protocol witness table for UIView;
  v30[10] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_messageLabel);
  v30[9] = &protocol witness table for UILabel;
  v30[8] = v12;
  v30[5] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView);
  v17 = type metadata accessor for SmallLockupView(0);
  v30[4] = &protocol witness table for UIView;
  v30[3] = v17;
  v30[0] = v16;
  v18 = v10;
  v19 = v11;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  sub_100741964();
  sub_100741924();
  v25 = v24;
  (*(v28 + 8))(v9, v29);
  return v25;
}

uint64_t sub_10063B840()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = ObjectType;
  v3 = sub_100750354();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100741954();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v8;
  v9 = sub_100741974();
  v33 = *(v9 - 8);
  v34 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
  v53 = type metadata accessor for InAppPurchaseView(0);
  v54 = &protocol witness table for UIView;
  v52 = v12;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel];
  v14 = sub_100745C84();
  v50 = v14;
  v51 = &protocol witness table for UILabel;
  v49 = v13;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel];
  v47 = v14;
  v48 = &protocol witness table for UILabel;
  v46 = v15;
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_divider];
  v44 = type metadata accessor for DividerView(0);
  v45 = &protocol witness table for UIView;
  v42 = &protocol witness table for UILabel;
  v43 = v16;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_messageLabel];
  v41 = v14;
  v40 = v17;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView];
  v38 = type metadata accessor for SmallLockupView(0);
  v39 = &protocol witness table for UIView;
  v37 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v30;
  sub_100741964();
  sub_1007477B4();
  v26 = v32;
  sub_100741934();
  [v1 frame];
  Width = CGRectGetWidth(v56);
  sub_100750334();
  [v1 setContentSize:Width];
  (*(v35 + 8))(v26, v36);
  return (*(v33 + 8))(v25, v34);
}

uint64_t type metadata accessor for InstallPagePreInstallPaidOfferView(uint64_t a1)
{
  result = qword_1009427B0;
  if (!qword_1009427B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10063BD24(uint64_t a1)
{
  result = sub_100741954();
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

void sub_10063BDCC()
{
  v0 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  __chkstk_darwin(v0 - 8);
  v31 = v28 - v1;
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_metrics;
  if (qword_1009212B0 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100981548);
  v8 = (*(v6 - 8) + 16);
  v38 = *v8;
  v38(v5, v7, v6);
  v10 = v3 + 13;
  v9 = v3[13];
  v41 = enum case for FontSource.useCase(_:);
  v40 = v9;
  v9(v5);
  v36 = sub_100750B04();
  v57[3] = v36;
  v57[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v54);
  v35 = v3[2];
  v35(v11, v5, v2);
  sub_100750B14();
  v12 = v3[1];
  v37 = v3 + 1;
  v39 = v12;
  v12(v5, v2);
  if (qword_1009212A0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v6, qword_100981518);
  v14 = v38;
  v38(v5, v13, v6);
  v40(v5, v41, v2);
  v55 = v36;
  v56 = &protocol witness table for StaticDimension;
  sub_10000D134(v54);
  v34 = v6;
  v28[1] = v8;
  v52 = v2;
  v53 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v51);
  v16 = v35;
  v35(v15, v5, v2);
  sub_100750B14();
  v39(v5, v2);
  v33 = v10;
  v29 = v13;
  v17 = v34;
  v14(v5, v13, v34);
  v18 = v40;
  v40(v5, v41, v2);
  v19 = v36;
  v52 = v36;
  v53 = &protocol witness table for StaticDimension;
  sub_10000D134(v51);
  v49 = v2;
  v50 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v48);
  v16(v20, v5, v2);
  sub_100750B14();
  v39(v5, v2);
  v38(v5, v13, v17);
  v18(v5, v41, v2);
  v49 = v19;
  v21 = v19;
  v50 = &protocol witness table for StaticDimension;
  sub_10000D134(v48);
  v46 = v2;
  v47 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v45);
  v23 = v35;
  v35(v22, v5, v2);
  sub_100750B14();
  v24 = v39;
  v39(v5, v2);
  v46 = sub_1007507D4();
  v47 = &protocol witness table for ZeroDimension;
  sub_10000D134(v45);
  sub_1007507C4();
  v38(v5, v29, v34);
  v40(v5, v41, v2);
  v44[3] = v21;
  v44[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v44);
  v43[3] = v2;
  v43[4] = &protocol witness table for FontSource;
  v25 = sub_10000D134(v43);
  v23(v25, v5, v2);
  sub_100750B14();
  v24(v5, v2);
  v42 = 0x4034000000000000;
  v43[0] = 0x4052000000000000;
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  v26 = v32;
  sub_100741944();
  v27 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_divider;
  *(v26 + v27) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100754644();
  __break(1u);
}

double sub_10063C440(double a1, double a2)
{
  if (a2 >= a1)
  {
    JUScreenClassGetPortraitWidth();
    if (v4 < a1)
    {
      JUScreenClassGetPortraitWidth();
    }
  }

  else
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < a1)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }

  return 2.0;
}

uint64_t sub_10063C4D0@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_100750304();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v29 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v12 + 8))(v14, v11);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v15 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v17 = sub_100750B04();
    v18 = v17;
    v19 = qword_100982098;
    goto LABEL_9;
  }

  if (v15 == enum case for Shelf.ContentType.singleColumnList(_:) || v15 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    if (qword_100920A00 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v15 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    if (qword_100920A00 == -1)
    {
LABEL_19:
      v24 = qword_10097FC80;
      *v6 = qword_10097FC80;
      v26 = v30;
      v25 = v31;
      (*(v30 + 104))(v6, enum case for FontSource.textStyle(_:), v31);
      *(a2 + 3) = sub_100750B04();
      *(a2 + 4) = &protocol witness table for StaticDimension;
      sub_10000D134(a2);
      v32[3] = v25;
      v32[4] = &protocol witness table for FontSource;
      v27 = sub_10000D134(v32);
      (*(v26 + 16))(v27, v6, v25);
      v28 = v24;
      sub_100750B14();
      return (*(v26 + 8))(v6, v25);
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  if (v15 == enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    if (qword_100921728 != -1)
    {
      swift_once();
    }

    v17 = sub_100750B04();
    v18 = v17;
    v19 = qword_1009820F8;
LABEL_9:
    v20 = sub_10000D0FC(v17, v19);
    *(a2 + 3) = v18;
    *(a2 + 4) = &protocol witness table for StaticDimension;
    v21 = sub_10000D134(a2);
    return (*(*(v18 - 8) + 16))(v21, v20, v18);
  }

  sub_10031E808(v29, a2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10063CA0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v122 = a2;
  v116 = sub_100750304();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = (&v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v4 - 8);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v99 - v7;
  __chkstk_darwin(v8);
  v10 = &v99 - v9;
  __chkstk_darwin(v11);
  v109 = &v99 - v12;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v117 = sub_10074E984();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v105 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v106 = &v99 - v21;
  __chkstk_darwin(v22);
  v103 = &v99 - v23;
  __chkstk_darwin(v24);
  v104 = &v99 - v25;
  __chkstk_darwin(v26);
  v110 = &v99 - v27;
  __chkstk_darwin(v28);
  v111 = &v99 - v29;
  __chkstk_darwin(v30);
  v118 = &v99 - v31;
  v32 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v107 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v99 - v36;
  __chkstk_darwin(v38);
  v113 = &v99 - v39;
  __chkstk_darwin(v40);
  v42 = &v99 - v41;
  __chkstk_darwin(v43);
  v45 = &v99 - v44;
  v121 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v46 = *(v33 + 8);
  v120 = v32;
  v46(v45, v32);
  if (!*(v123 + 16))
  {

    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    goto LABEL_10;
  }

  v102 = v46;
  sub_10000C824(v123 + 32, &v124);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_10;
  }

  if (!*(&v128 + 1))
  {
LABEL_10:
    result = sub_10000C8CC(&v127, &qword_1009253C8, qword_1007B15B0);
LABEL_11:
    v55 = v122;
    v122[3] = &type metadata for Double;
    v55[4] = &protocol witness table for Double;
    *v55 = 0;
    return result;
  }

  sub_100012160(&v127, v130);
  sub_10000C888(v130, v130[3]);
  if ((sub_10074CA24() & 1) == 0)
  {
    result = sub_10000C620(v130);
    goto LABEL_11;
  }

  v100 = v37;
  sub_100747C04();
  swift_getKeyPath();
  v47 = v118;
  v48 = v120;
  sub_1007525B4();

  v49 = v42;
  v50 = v48;
  v101 = v33 + 8;
  v102(v49, v48);
  v51 = v119;
  v52 = v117;
  v53 = (*(v119 + 88))(v47, v117);
  if (v53 != enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
  {
    v56 = (v33 + 48);
    if (v53 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v57 = v109;
      sub_100747BB4();
      sub_10000C8CC(v10, &unk_10093D6E0, &unk_1007A6080);
      if ((*v56)(v57, 1, v50) == 1)
      {
        sub_10000C8CC(v57, &unk_10093D6E0, &unk_1007A6080);
        goto LABEL_31;
      }

      v58 = v100;
      (*(v33 + 32))(v100, v57, v50);
      swift_getKeyPath();
      v67 = v104;
      sub_1007525B4();

      v68 = v103;
      (*(v51 + 104))(v103, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
      sub_1000F1E3C();
      sub_100753274();
      sub_100753274();
      if (v127 == v124)
      {
        v69 = *(v51 + 8);
        v69(v68, v52);
        v69(v67, v52);
      }

      else
      {
        v74 = v51;
        v75 = sub_100754754();
        v76 = *(v74 + 8);
        v76(v68, v52);
        v76(v67, v52);
        v50 = v120;

        if ((v75 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      sub_1007525B4();

      if ((v127 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v102(v58, v50);
      goto LABEL_31;
    }

    v62 = v112;
    v63 = v108;
    sub_100747BB4();
    sub_10000C8CC(v63, &unk_10093D6E0, &unk_1007A6080);
    if ((*v56)(v62, 1, v50) == 1)
    {
      sub_10000C8CC(v62, &unk_10093D6E0, &unk_1007A6080);
LABEL_40:
      v94 = v114;
      *v114 = UIFontTextStyleBody;
      v95 = v115;
      v96 = v116;
      (*(v115 + 104))(v94, enum case for FontSource.textStyle(_:), v116);
      v125 = sub_100750B04();
      v126 = &protocol witness table for StaticDimension;
      sub_10000D134(&v124);
      *(&v128 + 1) = v96;
      v129 = &protocol witness table for FontSource;
      v97 = sub_10000D134(&v127);
      (*(v95 + 16))(v97, v94, v96);
      v98 = UIFontTextStyleBody;
      sub_100750B14();
      (*(v95 + 8))(v94, v96);
      goto LABEL_41;
    }

    v70 = v107;
    (*(v33 + 32))(v107, v62, v50);
    swift_getKeyPath();
    v71 = v106;
    sub_1007525B4();

    v72 = v105;
    (*(v51 + 104))(v105, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_1000F1E3C();
    sub_100753274();
    sub_100753274();
    if (v127 == v124)
    {
      v73 = *(v51 + 8);
      v73(v72, v52);
      v73(v71, v52);
    }

    else
    {
      v82 = v51;
      v83 = sub_100754754();
      v84 = *(v82 + 8);
      v84(v72, v52);
      v84(v71, v52);

      if ((v83 & 1) == 0)
      {
        v86 = v70;
        v87 = v120;
LABEL_39:
        v102(v86, v87);
        goto LABEL_40;
      }
    }

    swift_getKeyPath();
    v85 = v120;
    sub_1007525B4();

    if ((v127 & 1) == 0)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = 0x4020000000000000;
      v102(v70, v85);
LABEL_41:
      sub_100012160(&v124, &v127);
      (*(v119 + 8))(v118, v52);
      goto LABEL_42;
    }

    v86 = v70;
    v87 = v85;
    goto LABEL_39;
  }

  sub_100747BB4();
  sub_10000C8CC(v15, &unk_10093D6E0, &unk_1007A6080);
  if ((*(v33 + 48))(v18, 1, v50) != 1)
  {
    v58 = v113;
    (*(v33 + 32))(v113, v18, v50);
    swift_getKeyPath();
    v59 = v111;
    sub_1007525B4();

    v60 = v110;
    (*(v51 + 104))(v110, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_1000F1E3C();
    sub_100753274();
    sub_100753274();
    if (v127 == v124)
    {
      v61 = *(v51 + 8);
      v61(v60, v52);
      v61(v59, v52);

      goto LABEL_21;
    }

    v64 = v51;
    v65 = sub_100754754();
    v66 = *(v64 + 8);
    v66(v60, v52);
    v66(v59, v52);
    v50 = v120;

    if (v65)
    {
LABEL_21:
      swift_getKeyPath();
      sub_1007525B4();

      if (v127)
      {
        goto LABEL_30;
      }

LABEL_36:
      v88 = v114;
      *v114 = UIFontTextStyleBody;
      v89 = v50;
      v90 = v115;
      v91 = v116;
      (*(v115 + 104))(v88, enum case for FontSource.textStyle(_:), v116);
      v125 = sub_100750B04();
      v126 = &protocol witness table for StaticDimension;
      sub_10000D134(&v124);
      *(&v128 + 1) = v91;
      v129 = &protocol witness table for FontSource;
      v92 = sub_10000D134(&v127);
      (*(v90 + 16))(v92, v88, v91);
      v93 = UIFontTextStyleBody;
      sub_100750B14();
      (*(v90 + 8))(v88, v91);
      v102(v58, v89);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  sub_10000C8CC(v18, &unk_10093D6E0, &unk_1007A6080);
LABEL_31:
  v77 = v114;
  *v114 = UIFontTextStyleBody;
  v78 = v115;
  v79 = v116;
  (*(v115 + 104))(v77, enum case for FontSource.textStyle(_:), v116);
  v125 = sub_100750B04();
  v126 = &protocol witness table for StaticDimension;
  sub_10000D134(&v124);
  *(&v128 + 1) = v79;
  v129 = &protocol witness table for FontSource;
  v80 = sub_10000D134(&v127);
  (*(v78 + 16))(v80, v77, v79);
  v81 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v78 + 8))(v77, v79);
LABEL_32:
  sub_100012160(&v124, &v127);
LABEL_42:
  sub_100012160(&v127, v122);
  return sub_10000C620(v130);
}

void sub_10063DC2C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_10000C518(&qword_100939100, &qword_1007C2810);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-1] - v8;
  v10 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v10 - 8);
  v12 = &v17[-1] - v11;
  if (v4)
  {

    v4(v13);

    sub_1000164A8(v4, v5);
  }

  else if (v3)
  {
    v14 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

    sub_1007526C4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {

      sub_100052F00(v12);
    }

    else
    {
      v17[3] = sub_10074ECD4();
      v17[4] = sub_10063F194(&qword_10093D890, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      v17[0] = v3;
      (*(v7 + 104))(v9, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v6);

      sub_1007527E4();

      (*(v7 + 8))(v9, v6);
      sub_10000C620(v17);
      (*(v15 + 8))(v12, v14);
    }
  }
}

void sub_10063DF08(void *a1, char *a2)
{
  v117 = a2;
  v112 = sub_100743B04();
  v95 = *(v112 - 1);
  __chkstk_darwin(v112);
  v94 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100742CF4();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v110 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1007493D4();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v109 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10074A304();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v108 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752614();
  __chkstk_darwin(v7 - 8);
  v106 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v9 - 8);
  v104 = &v94 - v10;
  v11 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v11 - 8);
  v103 = &v94 - v12;
  v97 = sub_10074F4D4();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v101 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100745B04();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v114 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v115 = &v94 - v18;
  __chkstk_darwin(v19);
  v21 = &v94 - v20;
  __chkstk_darwin(v22);
  v24 = &v94 - v23;
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v111 = sub_100752DE4();
  v116 = a1;
  sub_100743104();
  v113 = *(v15 + 104);
  v113(v21, enum case for AlertActionStyle.normal(_:), v14);
  sub_10063F194(&qword_1009427C0, &type metadata accessor for AlertActionStyle, &protocol conformance descriptor for AlertActionStyle);
  sub_100753274();
  sub_100753274();
  if (aBlock == v123)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_100754754();
  }

  v26 = *(v15 + 8);
  v26(v21, v14);
  v26(v24, v14);

  if ((v25 & 1) == 0)
  {
    v34 = v115;
    sub_100743104();
    v35 = v114;
    v113(v114, enum case for AlertActionStyle.toast(_:), v14);
    sub_100753274();
    sub_100753274();
    if (aBlock == v123)
    {
      v26(v35, v14);
      v26(v34, v14);
    }

    else
    {
      v36 = sub_100754754();
      v26(v35, v14);
      v26(v34, v14);

      if ((v36 & 1) == 0)
      {
        return;
      }
    }

    v37 = sub_10074ECC4();
    if (v37)
    {
      v38 = v37;
      if (sub_10074F1A4())
      {
        if (sub_10074F1D4())
        {
          v39 = sub_100743AC4();
          goto LABEL_42;
        }

        if (sub_10074F1C4())
        {
          v39 = sub_10056028C(v74, v38, 0);
LABEL_42:
          v75 = v39;

          if (v75)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    v76 = v95;
    v77 = v94;
    v78 = v112;
    (*(v95 + 104))(v94, enum case for SystemImage.exclamationmarkCircle(_:), v112);
    v75 = sub_100743AE4();
    (*(v76 + 8))(v77, v78);
LABEL_46:
    v115 = v75;
    v79 = [v75 imageWithRenderingMode:2];
    sub_10074ECB4();
    v81 = v80;
    sub_100743124();
    v83 = v82;
    sub_1007430F4();
    v85 = v84;
    if (v81)
    {
      v86 = v79;
      v87 = sub_100753064();

      if (v83)
      {
LABEL_48:
        v88 = sub_100753064();

LABEL_51:
        v90 = [objc_allocWithZone(ASToastViewController) initWithTitle:v87 message:v88 duration:v79 image:v85];

        v121 = 0;
        aBlock = 0u;
        v120 = 0u;
        (*(v96 + 104))(v101, enum case for FlowPage.viewController(_:), v97);
        v91 = sub_100741264();
        (*(*(v91 - 8) + 56))(v103, 1, 1, v91);
        v92 = sub_100743FE4();
        (*(*(v92 - 8) + 56))(v104, 1, 1, v92);
        v124 = sub_100016C60(0, &qword_1009427C8, &off_100856698);
        *&v123 = v90;
        v116 = v90;
        sub_1007525F4();
        (*(v100 + 104))(v109, enum case for FlowAnimationBehavior.never(_:), v102);
        (*(v98 + 104))(v108, enum case for FlowPresentationContext.infer(_:), v99);
        (*(v105 + 104))(v110, enum case for FlowOrigin.inapp(_:), v107);
        sub_100752B44();
        sub_100742CD4();
        swift_allocObject();
        v93 = sub_100742C84();
        sub_10052AD94(v93, 1, v117);
        sub_100752D54();

        return;
      }
    }

    else
    {
      v89 = v79;
      v87 = 0;
      if (v83)
      {
        goto LABEL_48;
      }
    }

    v88 = 0;
    goto LABEL_51;
  }

  sub_10074ECB4();
  v28 = v27;
  sub_100743124();
  v30 = v29;
  if (v28)
  {
    v31 = sub_100753064();

    v32 = v117;
    if (v30)
    {
LABEL_7:
      v33 = sub_100753064();

      goto LABEL_17;
    }
  }

  else
  {
    v31 = 0;
    v32 = v117;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  v33 = 0;
LABEL_17:
  v40 = [objc_opt_self() alertControllerWithTitle:v31 message:v33 preferredStyle:1];

  v41 = sub_1007430E4();
  if ((sub_1007430D4() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(v41 + 16))
  {
    v43._countAndFlagsBits = 0x4F2E6E6F69746341;
    v43._object = 0xE90000000000004BLL;
    goto LABEL_22;
  }

  sub_1007430C4();
  if (!v42)
  {
    v43._countAndFlagsBits = 0x432E6E6F69746341;
    v43._object = 0xED00006C65636E61;
LABEL_22:
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    sub_1007458B4(v43, v125);
  }

  v44 = sub_100753064();

  v45 = [objc_opt_self() actionWithTitle:v44 style:1 handler:0];

  [v40 addAction:v45];
  [v40 setPreferredAction:v45];

LABEL_24:
  v115 = *(v41 + 16);
  if (v115)
  {
    v46 = 0;
    v112 = &v120;
    v47 = (v41 + 64);
    v113 = v41;
    v114 = v40;
    while (v46 < *(v41 + 16))
    {
      v51 = *(v47 - 4);
      v52 = *(v47 - 3);
      v54 = *(v47 - 2);
      v53 = *(v47 - 1);
      v55 = *v47;
      if (v53)
      {
        v56 = swift_allocObject();
        *(v56 + 16) = v53;
        *(v56 + 24) = v55;
        v57 = sub_100066280;
      }

      else
      {
        v57 = 0;
        v56 = 0;
      }

      sub_10001B5AC(v53, v55);
      v58 = v46 != sub_1007430B4();
      if ((v59 | v58))
      {
        v60 = 0;
      }

      else
      {
        v60 = 2;
      }

      v61 = swift_allocObject();
      v61[2] = v51;
      v61[3] = v52;
      v61[4] = v54;
      v61[5] = v57;
      v62 = v117;
      v61[6] = v56;
      v61[7] = v62;
      if (v52)
      {

        sub_10001B5AC(v57, v56);

        v48 = sub_100753064();
      }

      else
      {

        sub_10001B5AC(v57, v56);

        v48 = 0;
      }

      ++v46;
      v121 = sub_10063F110;
      v122 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v120 = sub_10073EFC4;
      *(&v120 + 1) = &unk_10087EB60;
      v49 = _Block_copy(&aBlock);

      v50 = [objc_opt_self() actionWithTitle:v48 style:v60 handler:v49];
      _Block_release(v49);

      v40 = v114;
      [v114 addAction:v50];

      sub_1000164A8(v57, v56);
      v47 += 5;
      v32 = v117;
      v41 = v113;
      if (v115 == v46)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v63 = sub_100743134();
    if (v64)
    {
      v65 = v63;
      v66 = v64;
      v67 = type metadata accessor for AlertActionHeaderViewController();
      v68 = objc_allocWithZone(v67);
      *&v68[OBJC_IVAR____TtC22SubscribePageExtension31AlertActionHeaderViewController_imageView] = 0;
      v69 = &v68[OBJC_IVAR____TtC22SubscribePageExtension31AlertActionHeaderViewController_imageName];
      *v69 = v65;
      *(v69 + 1) = v66;
      v118.receiver = v68;
      v118.super_class = v67;
      v70 = objc_msgSendSuper2(&v118, "initWithNibName:bundle:", 0, 0);
      [v40 _setHeaderContentViewController:v70];
    }

    v121 = 0;
    aBlock = 0u;
    v120 = 0u;
    (*(v96 + 104))(v101, enum case for FlowPage.viewController(_:), v97);
    v71 = sub_100741264();
    (*(*(v71 - 8) + 56))(v103, 1, 1, v71);
    v72 = sub_100743FE4();
    (*(*(v72 - 8) + 56))(v104, 1, 1, v72);
    v124 = sub_100016C60(0, &qword_100938540, UIAlertController_ptr);
    *&v123 = v40;
    v117 = v40;
    sub_1007525F4();
    (*(v98 + 104))(v108, enum case for FlowPresentationContext.infer(_:), v99);
    (*(v100 + 104))(v109, enum case for FlowAnimationBehavior.infer(_:), v102);
    (*(v105 + 104))(v110, enum case for FlowOrigin.inapp(_:), v107);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v73 = sub_100742C84();
    sub_10052AD94(v73, 1, v32);
    sub_100752D54();
  }
}

uint64_t sub_10063F0B8()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

void sub_10063F110(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4[0] = *(v1 + 16);
  v4[1] = v2;
  v3 = *(v1 + 56);
  v5 = *(v1 + 48);
  sub_10063DC2C(a1, v4, v3);
}

double sub_10063F144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10063F15C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10063F194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10063F1EC()
{
  v0 = sub_10074D014();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  sub_100039C50(v4, qword_1009427E8);
  sub_10000D0FC(v4, qword_1009427E8);
  sub_10074D004();
  sub_10074CFF4();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7[1] = v6;
  sub_10001CC10();
  sub_10074F614();
}

void sub_10063F334(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  sub_100039C50(v4, a3);
  sub_10000D0FC(v4, a3);
  sub_10001CC10();
  sub_10074F614();
}

uint64_t sub_10063F3B8()
{
  v0 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v0 - 8);
  v56 = &v44 - v1;
  v64 = sub_10074F654();
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v3 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v44 - v8;
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v54.i64[0] = sub_10074F584();
  v13 = *(v54.i64[0] - 8);
  __chkstk_darwin(v54.i64[0]);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v47 = &v44 - v16;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v17 = *(v13 + 72);
  v49 = v13;
  v18 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1007AB1A0;
  v51 = v19;
  v57 = v19 + v18;
  if (qword_100921B00 != -1)
  {
    swift_once();
  }

  v58 = v17;
  v20 = sub_10000D0FC(v4, qword_1009427D0);
  v23 = *(v5 + 16);
  v22 = v5 + 16;
  v21 = v23;
  v46 = v20;
  (v23)(v12);
  v65 = 0x4030000000000000;
  v66 = 0x4020000000000000;
  v63 = sub_10001CC10();
  sub_10074F5F4();
  if (qword_100921B10 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v4, qword_100942800);
  v25 = v4;
  v53 = v4;
  v62 = v24;
  v26 = v55;
  v21(v55, v24, v25);
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v61 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v45 = v21;
  v32 = v59 + 104;
  v60 = *(v59 + 104);
  v60(v3);
  LOBYTE(v66) = 0;
  v52 = v22;
  sub_10074F614();
  v66 = 0;
  sub_10074F614();
  v33 = v47;
  v34 = v26;
  sub_10074F544();
  sub_10074F574();
  v44 = v12;
  v49 = *(v49 + 8);
  (v49)(v33, v54.i64[0]);
  v35 = v53;
  v36 = v45;
  v45(v12, v46, v53);
  v65 = 0x4034000000000000;
  v66 = 0x4024000000000000;
  sub_10074F5F4();
  v36(v34, v62, v35);
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v59 = v32;
  (v60)(v3, v61, v64);
  LOBYTE(v66) = 0;
  sub_10074F614();
  v66 = 0;
  sub_10074F614();
  v38 = v48;
  v39 = v44;
  v40 = v55;
  sub_10074F544();
  sub_10074F574();
  (v49)(v38, v54.i64[0]);
  v41 = v36;
  v42 = v53;
  if (qword_100921B08 != -1)
  {
    swift_once();
  }

  v56 = sub_10000D0FC(v42, qword_1009427E8);
  v41(v39, v56, v42);
  v66 = 0x4034000000000000;
  sub_10074F614();
  v41(v40, v62, v42);
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v54;
  (v60)(v3, v61, v64);
  sub_10074F564();
  v41(v39, v56, v42);
  v66 = 0x4034000000000000;
  sub_10074F614();
  v41(v40, v62, v42);
  *v3 = v54;
  (v60)(v3, v61, v64);
  sub_1007535A4();
  sub_10074F564();
  v41(v39, v56, v42);
  v66 = 0x4038000000000000;
  sub_10074F614();
  v41(v40, v62, v42);
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (v60)(v3, v61, v64);
  sub_10074F564();
  return v51;
}

uint64_t sub_10063FD58()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_1009428B0);
  sub_10000D0FC(v4, qword_1009428B0);
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981968);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10063FF2C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension39InAppPurchaseShowcaseCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for InAppPurchaseShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC22SubscribePageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView]];

  return v12;
}

id sub_10064026C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_1009428F0;
  if (!qword_1009428F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100640348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_iconView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_100743384(v8, v4);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_100743384(v9, v5);
  sub_1007433C4();
  sub_10004D658();
  sub_100744274();
  sub_100744274();
}

void sub_100640440(uint64_t a1, uint64_t a2)
{
  v5 = sub_100741C54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_10000C824(a1, v22);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100741D94();
  if (swift_dynamicCast())
  {
    v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39InAppPurchaseShowcaseCollectionViewCell_lockupView];
    v19 = v21;
    v13 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension31InAppPurchaseShowcaseLockupView_iconView);
    v17 = sub_100741D74();
    v20 = [v2 backgroundColor];
    sub_100741D34();
    v18 = a2;
    v14 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v6 + 24))(&v13[v14], v11, v5);
    swift_endAccess();
    v15 = *(v6 + 16);
    v15(v8, &v13[v14], v5);
    sub_100275D50(v8);
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
    [v13 setBackgroundColor:v20];
    sub_1006C2A3C(95.0, 95.0, v17, v13, v18);
    v15(v11, &v13[v14], v5);
    sub_100275D50(v11);
    v16(v11, v5);
    [v13 setNeedsLayout];
  }
}

double sub_100640708(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel;
  v7 = [*(v5 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v9 = v7;
    v10 = sub_100753094();
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

      v14 = sub_100754754();

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
  v16 = sub_100753064();

LABEL_14:
  [v15 setText:v16];

  [v2 invalidateIntrinsicContentSize];
  v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver];
  if (v17)
  {
    v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver + 8];

    v17(v19);

    return sub_1000164A8(v17, v18);
  }

  return result;
}

id sub_1006408D0(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_10074E5E4();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = [a1 tabBarController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 tabBar];

      [v12 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v32.origin.x = v14;
      v32.origin.y = v16;
      v32.size.width = v18;
      v32.size.height = v20;
      Height = CGRectGetHeight(v32);
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

    v25 = result;
    [result bounds];
    v27 = v26;
    v23 = v28;

    v22 = v27;
  }

  else
  {
    v22 = 0;
    v23 = 0.0;
    Height = 0.0;
  }

  if (v23 - *&v3[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset] - Height < 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v23 - *&v3[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset] - Height;
  }

  v30 = [v3 traitCollection];
  sub_10074E604();
  sub_1006439D4(v30, v9, v3[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_wantsBackgroundExtension], v22, *&v29, 0);

  return (*(v6 + 8))(v9, v5);
}

void sub_100640B0C(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_10074E5E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E604();
  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset];
  v10 = v2[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_wantsBackgroundExtension];
  v11 = [v3 traitCollection];
  if (a1)
  {
    v12 = [a1 tabBarController];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 tabBar];

      [v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v48.origin.x = v16;
      v48.origin.y = v18;
      v48.size.width = v20;
      v48.size.height = v22;
      Height = CGRectGetHeight(v48);
    }

    else
    {
      Height = 0.0;
    }

    v25 = [a1 view];
    if (v25)
    {
      v26 = v25;
      [v25 bounds];
      v28 = v27;
      v30 = v29;

      v31 = [a1 view];
      if (v31)
      {
        v32 = v31;
        if (v30 - v9 - Height < 0.0)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = v30 - v9 - Height;
        }

        a1 = v28;
        [v31 bounds];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v49.origin.x = v34;
        v49.origin.y = v36;
        v49.size.width = v38;
        v49.size.height = v40;
        CGRectGetWidth(v49);
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

  if (0.0 - v9 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 0.0 - v9;
  }

LABEL_14:
  sub_1006439D4(v11, v8, v10, a1, *&v24, 0);

  (*(v6 + 8))(v8, v5);
  v41 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView];
  v42 = [*&v41[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel] text];
  if (v42)
  {
    v43 = v42;
    sub_100753094();
  }

  v44 = sub_100753114();

  if ((v44 & 1) == 0 || *&v41[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView])
  {
    [v3 frame];
    [v41 sizeThatFits:{v45, v46}];
  }
}

uint64_t sub_100640E64()
{
  v0 = sub_10000C518(&unk_1009429C0, &qword_1007CF868);
  sub_100039C50(v0, qword_100942910);
  sub_10000D0FC(v0, qword_100942910);
  return sub_100743524();
}

char *sub_100640EE8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v57 = a2;
  ObjectType = swift_getObjectType();
  v58 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v58);
  v59 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074E5E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &ObjectType - v12;
  v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_isRubberbanding] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentBottomInset] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem] = 0;
  v14 = &v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver];
  *v14 = 0;
  v14[1] = 0;
  sub_10074E604();
  (*(v8 + 104))(v10, enum case for Uber.Style.above(_:), v7);
  sub_100643DBC(&qword_10092EED0, 255, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  sub_100753274();
  sub_100753274();
  if (v64 != v63)
  {
    v17 = sub_100754754();
    v18 = *(v8 + 8);
    v18(v10, v7);
    v18(v13, v7);

    v16 = v57;
    if ((v17 & 1) == 0 || (v57 & 1) == 0)
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

  v16 = v57;
  if (v57)
  {
    goto LABEL_6;
  }

LABEL_7:
  v20 = 0;
  v19 = 1;
LABEL_8:
  v21 = v60;
  v64 = v20;
  v65 = 0;
  v66 = 0;
  v67 = v19;
  v22 = type metadata accessor for MediaView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v23[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x4008000000000000;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0x4049000000000000;
  v24 = objc_allocWithZone(type metadata accessor for UberContentContainer());
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = sub_10057A0E4(&v64);
  v62.receiver = v23;
  v62.super_class = v22;
  v25 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 setClipsToBounds:1];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] = v25;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_legibilityGradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] = [objc_allocWithZone(type metadata accessor for TitleHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_uber] = a1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_wantsBackgroundExtension] = v16 & 1;
  v61.receiver = v4;
  v61.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v26 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView]];
  v28 = *&v26[v27];
  v29 = sub_1002EE680(v21);
  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer];
  v31 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  *(v30 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = v29;
  v32 = v29;
  sub_10057A514(v31);

  sub_1005791C8();
  v33 = objc_opt_self();
  v34 = [v33 clearColor];
  [v26 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_legibilityGradientView;
  v36 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_legibilityGradientView];
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1007A7210;
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v38 = v36;
  *(v37 + 32) = sub_100753F24(0.0, 0.0, 0.0, 0.4);
  *(v37 + 40) = sub_100753F24(0.0, 0.0, 0.0, 0.0);
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v37;

  sub_100037ED0();

  v39 = *&v26[v35];
  v40 = [v39 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

  v41 = *&v26[v35];
  v42 = [v41 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  [v26 addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView;
  v44 = qword_100921E88;
  v45 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10000D0FC(v58, qword_100983130);
  v47 = v59;
  sub_100643D58(v46, v59);
  (*((swift_isaMask & *v45) + 0x1C8))(v47);

  v48 = *&v26[v43];
  v49 = &v48[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines];
  *v49 = sub_100184128;
  v49[1] = 0;
  v50 = v48;

  [*&v50[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel] setNumberOfLines:2];

  [*(*&v26[v43] + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel) setAllowsDefaultTighteningForTruncation:1];
  v51 = *&v26[v43];
  v52 = [v33 clearColor];
  [v51 setBackgroundColor:v52];

  v53 = *&v26[v43];
  [v26 addSubview:v53];

  if (*(*(*&v26[v27] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      *(v54 + qword_10093CB48 + 8) = &off_10087EBB0;
      swift_unknownObjectWeakAssign();
    }
  }

  return v26;
}

id sub_100641824()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100753064();
    [v3 removeObserver:v0 forKeyPath:v4 context:&unk_100942900];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void (*sub_100641990(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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
  return sub_100641A30;
}

void sub_100641A30(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_100643DBC(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v8 = v4;
        v9 = sub_100753FC4();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v16 = v3;
    sub_10057A514(v15);

    if (v3)
    {
      *&v16[qword_10093CB48 + 8] = &off_10087EBB0;
      swift_unknownObjectWeakAssign();
    }

    v17 = *a1;
    goto LABEL_17;
  }

  if (v3)
  {
    sub_100643DBC(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v10 = v3;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v13 = v4;
      v14 = sub_100753FC4();

      if (v14)
      {
        [v10 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v18 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
  v19 = v3;
  sub_10057A514(v18);

  if (v3)
  {
    *&v19[qword_10093CB48 + 8] = &off_10087EBB0;
    swift_unknownObjectWeakAssign();
    v17 = v19;
LABEL_17:
  }
}

void sub_100641D04()
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

  sub_100641D8C();
}

void sub_100641D8C()
{
  v1 = sub_100743B04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100747D94();
  v53 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100744864();
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
  v16 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v18 = *(*(v16 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v18)
  {
    v52 = Strong;
    v48 = v1;
    type metadata accessor for VideoView(0);
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = *(v19 + qword_10093CB70);
      if (v20)
      {
        v47 = [v20 isMuted];
        v18 = *(*(v16 + v17) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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
        v25 = sub_10074C5C4();
        v26 = qword_100982288;
        v27 = (v53 + 16);
        v28 = (v53 + 8);
        if (v25)
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          sub_100747D44();
        }

        else
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          sub_100747D14();
        }

        (*v28)(v7, v5);
        sub_100744834();
        sub_100643DBC(&qword_1009295E8, 255, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
        v30 = v49;
        v31 = sub_100754324();
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
        v37 = "on.Mute.LargeContentTitle";
      }

      v39 = v50;
      v38 = v51;
      if (v29)
      {
        v40 = "upCollectionElementsObserver";
      }

      else
      {
        v40 = "sizeChangeObserver";
      }

      (*(v51 + 104))(v50, *v34, v48);
      v41 = v52;
      v42 = sub_100743AE4();
      (*(v38 + 8))(v39, v33);
      [v41 setImage:v42];

      v55._object = (v40 | 0x8000000000000000);
      v55._countAndFlagsBits = v36;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      sub_1007458B4(v55, v57);
      v43 = sub_100753064();

      [v41 setTitle:v43];

      v44 = v41;
      v56._object = (v37 | 0x8000000000000000);
      v56._countAndFlagsBits = v35;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      sub_1007458B4(v56, v58);
      v45 = sub_100753064();

      [v44 setAccessibilityLabel:v45];

      return;
    }

    Strong = v52;
  }
}

void sub_10064235C()
{
  v1 = sub_100749CD4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749D14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v9)
  {
    type metadata accessor for VideoView(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + qword_10093CB70);
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
        sub_10051D504(v8, v4);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

double sub_100642624(uint64_t a1, NSString a2, uint64_t a3, Class a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (!a2)
  {
LABEL_10:
    sub_100032C04(a3, v27);
    v18 = v28;
    if (v28)
    {
      v19 = sub_10000C888(v27, v28);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = sub_100754734();
      (*(v20 + 8))(v23, v18);
      sub_10000C620(v27);
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
    sub_100643DBC(&qword_1009224E8, 255, type metadata accessor for NSKeyValueChangeKey, &unk_1007A53B4);
    a4 = sub_100752F34().super.isa;
    goto LABEL_13;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_100754754() & 1) == 0 || a5 != &unk_100942900)
  {
    a2 = sub_100753064();
    goto LABEL_10;
  }

  v12 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem];
  if (v12 && (v12 = [v12 title]) != 0)
  {
    v13 = v12;
    v14 = sub_100753094();
    v16 = v15;

    v17 = v16;
    v12 = v14;
  }

  else
  {
    v17 = 0;
  }

  return sub_100640708(v12, v17);
}

uint64_t sub_100642A44(void *a1, id a2)
{
  if ([a2 userInterfaceIdiom] == 1 && (v5 = objc_msgSend(a2, "horizontalSizeClass"), v5 != objc_msgSend(a1, "horizontalSizeClass")))
  {
    v9 = 1;
  }

  else
  {
    v6 = [*(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView) + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel) text];
    if (v6)
    {
      v7 = v6;
      sub_100753094();
    }

    v8 = sub_100753114();

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [a2 preferredContentSizeCategory];
      v11 = [a1 preferredContentSizeCategory];
      v12 = sub_100753094();
      v14 = v13;
      if (v12 == sub_100753094() && v14 == v15)
      {

        v9 = 0;
      }

      else
      {
        v16 = sub_100754754();

        v9 = v16 ^ 1;
      }
    }
  }

  return v9 & 1;
}

void sub_100642BEC(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v1 traitCollection];
    if ((sub_100642A44(v3, v4) & 1) != 0 && ([v1 invalidateIntrinsicContentSize], (v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver]) != 0))
    {
      v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver + 8];

      v5(v7);

      sub_1000164A8(v5, v6);
    }

    else
    {
    }
  }
}

id sub_100642D38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10074E5E4();
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
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView];
  v20 = [*&v19[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel] text];
  if (v20)
  {
    v21 = v20;
    sub_100753094();
  }

  v22 = sub_100753114();

  if ((v22 & 1) != 0 && !*&v19[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView])
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
  v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView];
  [v33 setFrame:{v29, MinY, Width, Height - v26}];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10074E604();
  (*(v4 + 104))(v6, enum case for Uber.Style.above(_:), v3);
  sub_100643DBC(&qword_10092EED0, 255, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  sub_100753274();
  sub_100753274();
  if (*&v52 == v51[0] && v53 == v51[1])
  {
    v42 = *(v4 + 8);
    v42(v6, v3);
    v42(v10, v3);
  }

  else
  {
    v43 = sub_100754754();
    v44 = *(v4 + 8);
    v44(v6, v3);
    v44(v10, v3);

    if ((v43 & 1) == 0)
    {
      return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_legibilityGradientView] setHidden:1];
    }
  }

  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_legibilityGradientView];
  [v45 setHidden:0];
  if (qword_100921B20 != -1)
  {
    swift_once();
  }

  v46 = sub_10000C518(&unk_1009429C0, &qword_1007CF868);
  sub_10000D0FC(v46, qword_100942910);
  sub_100743534();
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

id sub_1006432F8(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v11, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *(*(*&v3[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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

uint64_t sub_1006434FC()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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

void sub_10064356C(void *a1)
{
  v2 = a1;
  sub_10057AF88(a1);

  if (a1)
  {
    *&v2[qword_10093CB48 + 8] = &off_10087EBB0;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t (*sub_100643624(uint64_t **a1))()
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
  v2[4] = sub_100641990(v2);
  return sub_1000181A8;
}

uint64_t sub_100643698()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100643DBC(&qword_1009429B8, v1, type metadata accessor for UberHeaderView, &unk_1007CF808);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10064370C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100643DBC(&qword_1009429B8, v5, type metadata accessor for UberHeaderView, &unk_1007CF808);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_100643798(uint64_t *a1))()
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
  sub_100643DBC(&qword_1009429B8, v3, type metadata accessor for UberHeaderView, &unk_1007CF808);
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_100643854(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

void sub_1006439D4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v27[1] = a4;
  v32 = a3;
  v10 = sub_1007504F4();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_1009429B0, &unk_1007CF858);
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
  v18 = sub_100753804();
  v19 = [a1 userInterfaceIdiom];
  v20 = [a1 horizontalSizeClass];
  v21 = *(v14 + 88);
  *v16 = v18 & 1;
  *(v16 + 1) = v19;
  *(v16 + 2) = v20;
  v22 = sub_10074E5E4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v16[v21], a2, v22);
  v24 = (*(v23 + 88))(&v16[v21], v22);
  if (v24 != enum case for Uber.Style.above(_:))
  {
    if (v24 == enum case for Uber.Style.inline(_:))
    {
      if (v20 == 2 && v19 == 1 && (v18 & 1) == 0 && (v31 & 1) == 0)
      {
        sub_100750504();
        v25 = sub_100750454();
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
      sub_10000C8CC(v16, &qword_1009429B0, &unk_1007CF858);
    }
  }
}

uint64_t sub_100643D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100643DBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_100643E04(void *a1, char a2)
{
  v4 = sub_10000C518(&qword_1009429B0, &unk_1007CF858);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10074E5E4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = enum case for Uber.Style.above(_:);
  (*(v9 + 104))(v12, enum case for Uber.Style.above(_:), v8, v10);
  v14 = sub_100753804();
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
    sub_10000C8CC(v7, &qword_1009429B0, &unk_1007CF858);
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

void sub_100644100()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentBottomInset) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem) = 0;
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver);
  *v1 = 0;
  v1[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_1006441B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F6E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = sub_10074F704();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v79 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v69 - v14;
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  sub_100744484();
  sub_100644B68();
  sub_1007468B4();
  if (!aBlock[0])
  {
    return;
  }

  v74 = v9;
  v75 = v5;
  v76 = v4;

  v18 = sub_100743604();
  v19 = [v18 length];

  v80 = v10;
  if (v19 < 1)
  {
    [*&v2[qword_1009485E0] setText:0];
    v2[qword_100983438] = 0;
    v29 = *&v2[qword_1009485D0];
    [v29 setHidden:1];
    goto LABEL_7;
  }

  v70 = v17;
  v72 = v11;
  v20 = sub_100743604();
  swift_getKeyPath();
  v71 = a1;
  sub_100746914();

  v21 = aBlock[6];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v23 = [v20 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100047814;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1000B18A8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  aBlock[3] = &unk_10087EC18;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v20 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_24;
  }

  v24 = *&v2[qword_1009485E0];
  [v24 setAttributedText:v28];
  if (qword_100921F20 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v24 setTextColor:qword_100983420];
  v2[qword_100983438] = 1;
  v29 = *&v2[qword_1009485D0];
  [v29 setHidden:0];

  v10 = v80;
  v11 = v72;
  v17 = v70;
LABEL_7:
  v30 = *&v2[qword_1009485D8];
  sub_100743614();
  if (v31)
  {
    v32 = sub_100753064();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v2[qword_100983430] = (sub_1007435E4() & 1) == 0;
  sub_1000B18C8(v33);
  if ((sub_1007435E4() & 1) == 0 && v2[qword_100983438] != 1)
  {
    sub_1007433C4();
    sub_100743244();
  }

  sub_100746E74();
  v2[qword_100983448] = sub_1007435E4() & 1;
  [v2 setNeedsLayout];
  v34 = sub_1007435E4();
  v73 = v2;
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v35 = sub_100753E34();
  }

  [v29 setBackgroundColor:v35];

  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v72 = v36;
  v37 = *(v11 + 8);
  v37(v17, v10);
  swift_getKeyPath();
  v38 = v77;
  sub_100746914();

  sub_10074F5E4();
  v71 = v39;
  v37(v38, v10);
  v41 = v75;
  v40 = v76;
  v42 = v74;
  (*(v75 + 104))(v74, enum case for PageGrid.Direction.vertical(_:), v76);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5D4();
  v37(v17, v10);
  v43 = v37;
  (*(v41 + 16))(v78, v42, v40);
  sub_1004E97E0(0.0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v48 = v79;
  sub_10074F6B4();
  (*(v41 + 8))(v42, v40);
  sub_10074F664();
  v49 = v73;
  v50 = &v73[qword_100983440];
  *v50 = v51;
  *(v50 + 1) = v52;
  *(v50 + 2) = v53;
  *(v50 + 3) = v54;
  [v49 setNeedsLayout];
  v55 = [v49 contentView];
  v56 = sub_1007435E4();

  if ((v56 & 1) == 0)
  {
    sub_10074F664();
    top = v57;
    left = v58;
    bottom = v59;
    right = v60;
  }

  [v55 setLayoutMargins:{top, left, bottom, right}];

  if (sub_100744474())
  {
    v61 = [v49 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();
    v63 = v62;

    sub_10074F2A4();
    v65 = v64;
    sub_10074F2A4();
    v67 = v66;

    v43(v48, v80);
    v68 = &v49[qword_1009805D8];
    *v68 = v63;
    v68[1] = v63 * (v65 / v67);
  }

  else
  {
    v43(v48, v80);
  }
}

unint64_t sub_100644B68()
{
  result = qword_1009358E0;
  if (!qword_1009358E0)
  {
    sub_100744484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009358E0);
  }

  return result;
}

uint64_t sub_100644BC8()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100644C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100644C38(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v7 - 8);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_10000C518(&unk_100928A60, &qword_1007CBC90);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessory;
  swift_beginAccess();
  v17 = *(v13 + 56);
  v28 = a1;
  sub_100016B4C(a1, v15, &qword_10093FDB0, &unk_1007AC460);
  sub_100016B4C(v2 + v16, &v15[v17], &qword_10093FDB0, &unk_1007AC460);
  v18 = *(v5 + 48);
  if (v18(v15, 1, v4) == 1)
  {
    if (v18(&v15[v17], 1, v4) == 1)
    {
      sub_10000C8CC(v15, &qword_10093FDB0, &unk_1007AC460);
      return;
    }
  }

  else
  {
    sub_100016B4C(v15, v11, &qword_10093FDB0, &unk_1007AC460);
    if (v18(&v15[v17], 1, v4) != 1)
    {
      v23 = v25;
      sub_100372EAC(&v15[v17], v25);
      v24 = sub_10050D4C8(v11, v23);
      sub_10007A554(v23);
      sub_10007A554(v11);
      sub_10000C8CC(v15, &qword_10093FDB0, &unk_1007AC460);
      if (v24)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10007A554(v11);
  }

  sub_10000C8CC(v15, &unk_100928A60, &qword_1007CBC90);
LABEL_7:
  swift_beginAccess();
  v19 = v28;
  sub_100647C84(v28, v2 + v16);
  swift_endAccess();
  v20 = v27;
  sub_100016B4C(v19, v27, &qword_10093FDB0, &unk_1007AC460);
  if (v18(v20, 1, v4) == 1)
  {
    sub_10000C8CC(v20, &qword_10093FDB0, &unk_1007AC460);
    sub_1006458F8(0);
  }

  else
  {
    sub_10050A2DC(v26);
    v22 = v21;
    sub_10007A554(v20);
    sub_1006458F8(v22);
  }
}

void sub_100644FDC(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
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
    [v1 addSubview:v6];
  }
}

void sub_100645084()
{
  v1 = v0;
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1006459BC();
  swift_beginAccess();
  sub_100743CA4();
  swift_endAccess();
  v7.super.isa = [v0 traitCollection];
  isa = v7.super.isa;
  v9 = sub_1007502F4(v7).super.isa;

  (*(v3 + 8))(v5, v2);
  v10 = [objc_opt_self() configurationWithFont:v9 scale:1];

  sub_1007432D4();
  v11 = sub_1006459BC();
  LOBYTE(v6) = sub_100743294();

  if (v6)
  {
    v12 = sub_1006459BC();
    v13 = sub_1007432C4();

    if (v13)
    {
      v14 = sub_1006459BC();
      v15 = sub_100743334();

      if (v15)
      {
        v16 = [v15 imageWithConfiguration:v13];

        [v16 size];
        v18 = v17;
        v20 = v19;

        v21 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_artworkSize];
        *v21 = v18;
        *(v21 + 1) = v20;
        v21[16] = 0;
        [v1 setNeedsLayout];
      }
    }
  }
}

uint64_t sub_1006452C0()
{
  v0 = sub_100743CB4();
  sub_100039C50(v0, qword_100982A80);
  v1 = sub_10000D0FC(v0, qword_100982A80);
  return sub_10064530C(v1);
}

uint64_t sub_10064530C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v42 = sub_100750304();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v49 = &v37 - v3;
  v4 = sub_10000C518(&qword_100940108, &unk_1007CC528);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v58 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v55 = _Q0;
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for CGSize(0);
  sub_100743494();
  v58 = xmmword_1007CC460;
  v55 = xmmword_1007CC470;
  sub_100743494();
  v22 = *(v8 + 16);
  v43 = v10;
  v39 = v16;
  v22(v10, v16, v7);
  v41 = v13;
  v22(v6, v13, v7);
  v45 = v8;
  v46 = v6;
  v23 = *(v8 + 56);
  v47 = v7;
  v23(v6, 0, 1, v7);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v58.i64[0] = 0x4034000000000000;
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v54[14] = &protocol witness table for Double;
  *&v55 = 0x4048000000000000;
  v54[13] = &type metadata for Double;
  v54[10] = 0x4028000000000000;
  if (qword_100920E98 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  v38 = sub_10000D0FC(v24, qword_100980918);
  v25 = *(*(v24 - 8) + 16);
  v26 = v49;
  v25(v49, v38, v24);
  v27 = enum case for FontSource.useCase(_:);
  v28 = v40;
  v29 = v26;
  v30 = *(v40 + 104);
  v31 = v42;
  v30(v29, enum case for FontSource.useCase(_:), v42);
  v54[8] = &type metadata for Double;
  v54[9] = &protocol witness table for Double;
  v54[5] = 0x4022000000000000;
  v32 = v44;
  v25(v44, v38, v24);
  v30(v32, v27, v31);
  v54[3] = sub_100750B04();
  v54[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v54);
  v52 = v31;
  v53 = &protocol witness table for FontSource;
  v33 = sub_10000D134(v51);
  (*(v28 + 16))(v33, v32, v31);
  sub_100750B14();
  (*(v28 + 8))(v32, v31);
  v53 = &protocol witness table for Double;
  v52 = &type metadata for Double;
  v51[0] = 0x4020000000000000;
  v50[3] = sub_1007507D4();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v50);
  sub_1007507C4();
  sub_100743C64();
  v34 = *(v45 + 8);
  v35 = v47;
  v34(v41, v47);
  return (v34)(v39, v35);
}

uint64_t sub_10064585C()
{
  v0 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v0, qword_1009429D0);
  sub_10000D0FC(v0, qword_1009429D0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_1006458F8(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryView];
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
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_1006459BC()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  }

  else
  {
    swift_beginAccess();
    sub_100743C74();
    swift_endAccess();
    v9 = [v0 traitCollection];
    sub_100743454();

    (*(v3 + 8))(v5, v2);
    v10 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, v17[1], v17[2]}];
    v11 = [objc_opt_self() clearColor];
    sub_100743224();
    [v10 setHidden:1];
    v12 = *&v1[v6];
    v13 = v10;
    if (v12)
    {
      [v12 removeFromSuperview];
      v12 = *&v1[v6];
    }

    *&v1[v6] = v10;
    v8 = v10;

    v14 = [v1 contentView];
    [v14 addSubview:v8];

    v7 = 0;
  }

  v15 = v7;
  return v8;
}

char *sub_100645BF4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory(0);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = 0;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_layoutMetrics;
  if (qword_100921B28 != -1)
  {
    swift_once();
  }

  v21 = sub_100743CB4();
  v22 = sub_10000D0FC(v21, qword_100982A80);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_artworkSize];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_itemLayoutContext;
  v25 = sub_1007469A4();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isVertical] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView] = 0;
  v26 = &v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryAction];
  *v26 = 0;
  v26[1] = 0;
  if (qword_100920E98 != -1)
  {
    swift_once();
  }

  v27 = sub_100750534();
  v28 = sub_10000D0FC(v27, qword_100980918);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v17, v28, v27);
  (*(v29 + 56))(v17, 0, 1, v27);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v30 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel] = sub_100745C74();
  v31 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView] = v31;
  v49.receiver = v5;
  v49.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 layer];
  [v33 setAllowsGroupOpacity:0];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v37 = [v32 contentView];
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v38 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v39 = sub_100753EA4();
  [v38 setBackgroundColor:v39];

  [v38 setOpaque:0];
  [v38 setUserInteractionEnabled:0];
  [v32 setSelectedBackgroundView:v38];
  v40 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView;
  v41 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView];
  v42 = sub_100753DB4();
  [v41 setBackgroundColor:v42];

  [*&v32[v40] setHidden:0];
  v43 = [v32 contentView];
  [v43 addSubview:*&v32[v40]];

  v44 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel;
  [*&v32[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel] setLineBreakMode:0];
  v45 = *&v32[v44];
  sub_100745C34();

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v44]];

  sub_100645084();
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007A5A00;
  *(v47 + 32) = sub_100751554();
  *(v47 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v32;
}

uint64_t sub_100646314()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = sub_100750354();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100743CD4();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v70 - v7;
  v9 = sub_100743CB4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v13);
  v16 = [v1 contentView];
  v17 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 traitCollection];
  sub_100751364();
  v28 = v27;

  v29 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_layoutMetrics;
  swift_beginAccess();
  v74 = v10;
  v30 = *(v10 + 16);
  v80 = v15;
  v30(v15, &v1[v29], v9);
  v31 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  v78 = v9;
  if (v32)
  {
    v33 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_artworkSize];
    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (v35 = *v33, v34 = v33[1], *v33 == 0.0) && v34 == 0.0)
    {
      v70 = v6;
      v36 = qword_100921B28;
      v37 = v32;
      if (v36 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v9, qword_100982A80);
      sub_100743C74();
      v38 = [v1 traitCollection];
      sub_100743454();

      v9 = v78;
      (*(v70 + 8))(v8, v5);
      v35 = v83;
      v34 = v84;
    }

    else
    {
      v37 = v32;
    }

    v39 = sub_100743304();
    *(v40 + 16) = v35;
    *(v40 + 24) = v34;
    v39(&v83, 0);
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_hasArtworkToDisplay] == 1)
  {
    v41 = *&v1[v31];
    if (v41)
    {
      v42 = sub_1007433C4();
      v43 = v41;
      v44 = &protocol witness table for UIView;
      goto LABEL_15;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = 0;
  v44 = 0;
LABEL_15:
  v83 = *&v41;
  v84 = 0.0;
  v85 = 0;
  v86 = v42;
  v87 = v44;
  v30(v79, v80, v9);
  sub_100016B4C(&v83, v82, &unk_100928A00, &qword_1007A5AB0);
  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel];
  v46 = sub_100745C84();
  v81[14] = &protocol witness table for UILabel;
  v81[13] = v46;
  v81[10] = v45;
  v47 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryView];
  if (v47)
  {
    v48 = &protocol witness table for UIView;
    v49 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryView];
  }

  else
  {
    v49 = 0;
    v17 = 0;
    v48 = 0;
    v81[7] = 0;
    v81[6] = 0;
  }

  v81[5] = v49;
  v81[8] = v17;
  v81[9] = v48;
  v50 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
  if (v50)
  {
    v51 = type metadata accessor for SearchAdTransparencyButton(0);
    v52 = &protocol witness table for UIView;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v81[2] = 0;
    v81[1] = 0;
  }

  v53 = v21 + v28;
  v54 = v25 - v28;
  v81[0] = v50;
  v81[3] = v51;
  v81[4] = v52;
  v55 = *&v1[v31];
  v56 = v55;
  v57 = v50;
  v58 = v45;
  v59 = v47;

  if (v55)
  {
    sub_1007432E4();
  }

  swift_unknownObjectRetain();
  v60 = v75;
  sub_100743CC4();
  v61 = v71;
  sub_100743C44();
  (*(v72 + 8))(v61, v73);
  v62 = [v1 traitCollection];
  LOBYTE(v61) = sub_1007537F4();

  if (v61)
  {
    v63 = v19;
    v64 = v53;
    v65 = v23;
    v66 = v25 - v28;
  }

  else
  {
    [v58 frame];
  }

  MinX = CGRectGetMinX(*&v63);
  [v1 bounds];
  MaxY = CGRectGetMaxY(v89);
  v90.origin.x = v19;
  v90.origin.y = v53;
  v90.size.width = v23;
  v90.size.height = v54;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView] setFrame:{MinX, MaxY - v28, CGRectGetWidth(v90), v28}];
  (*(v76 + 8))(v60, v77);
  sub_10000C8CC(&v83, &unk_100928A00, &qword_1007A5AB0);
  return (*(v74 + 8))(v80, v78);
}

double sub_100646B40()
{
  v1 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = &v0[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_artworkSize];
  if ((v0[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (result = *v5, *v5 == 0.0) && v5[1] == 0.0)
  {
    if (qword_100921B28 != -1)
    {
      swift_once();
    }

    v7 = sub_100743CB4();
    sub_10000D0FC(v7, qword_100982A80);
    sub_100743C74();
    v8 = [v0 traitCollection];
    sub_100743454();

    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return result;
}

void sub_100646D04(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100750304();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "traitCollectionDidChange:", a1, v7);
  v10 = [v2 traitCollection];
  v11 = [v10 layoutDirection];

  if (!a1 || v11 != [a1 layoutDirection])
  {
    if (qword_100921B30 != -1)
    {
      swift_once();
    }

    v12 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v12, qword_1009429D0);
    v13 = [v2 traitCollection];
    sub_100743454();

    sub_100753F54();
  }

  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_100645084();
    v22 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel];
    swift_beginAccess();
    sub_100743CA4();
    swift_endAccess();
    v23.super.isa = [v2 traitCollection];
    isa = v23.super.isa;
    v25 = sub_1007502F4(v23).super.isa;

    (*(v6 + 8))(v9, v5);
    [v22 setFont:v25];

    [v2 setNeedsLayout];
    return;
  }

  v16 = [a1 preferredContentSizeCategory];
  v17 = sub_100753094();
  v19 = v18;
  if (v17 == sub_100753094() && v19 == v20)
  {

    return;
  }

  v21 = sub_100754754();

  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_1006470C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100743CB4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074F284();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a2;
    v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = 1;

    sub_10074F294();
    v32 = sub_10074F254();
    (*(v16 + 8))(v18, v15);
    v19 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_layoutMetrics;
    swift_beginAccess();
    (*(v12 + 16))(v14, &v3[v19], v11);
    v20 = sub_100648654(a1, v14, v3);
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v23 = &v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_artworkSize];
    *v23 = v20;
    v23[1] = v22;
    *(v23 + 16) = 0;
    if (v20 == 0.0 && v22 == 0.0)
    {
      if (qword_100921B28 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v11, qword_100982A80);
      sub_100743C74();
      v24 = [v3 traitCollection];
      v25 = v35;
      sub_100743454();

      (*(v34 + 8))(v10, v25);
    }

    sub_10074F364();
    v26 = sub_1006459BC();
    sub_10074F324();
    sub_100743364();
    [v26 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    v27 = sub_1006459BC();
    [v27 setContentMode:v32];

    v38 = v3;
    sub_1006488F4(&qword_100942A60, type metadata accessor for ActionCollectionViewCell, &protocol conformance descriptor for NSObject);
    v28 = v3;
    sub_1007544E4();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_10000C8CC(&v39, &unk_1009276E0, &unk_1007A5C70);
  }

  else
  {
    v29 = sub_1006459BC();
    v40.value.super.isa = 0;
    v40.is_nil = 0;
    sub_100743384(v40, v30);

    v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  }
}

void sub_100647624(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1006459BC();

    v15.is_nil = (a2 & 1) == 0;
    v15.value.super.isa = a1;
    sub_1007432F4(v15, v10);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_100645084();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsLayout];
  }
}

uint64_t type metadata accessor for ActionCollectionViewCell(uint64_t a1)
{
  result = qword_100942A40;
  if (!qword_100942A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100647984(uint64_t a1)
{
  sub_100647B08(319, &qword_100928850, type metadata accessor for Accessory);
  if (v1 <= 0x3F)
  {
    sub_100743CB4();
    if (v2 <= 0x3F)
    {
      sub_100647B08(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100647B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100647B68(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006459BC();
  sub_100743204();

  v3 = sub_1006459BC();
  sub_1007433C4();
  sub_1006488F4(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100744274();
}

uint64_t sub_100647C2C(uint64_t a1)
{
  result = sub_1006488F4(&qword_100942A50, type metadata accessor for ActionCollectionViewCell, &unk_1007CF9C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100647C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100647CF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15)
{
  v64 = a7;
  v59 = a6;
  v63 = a4;
  v62 = a3;
  v73 = a2;
  v71 = a1;
  v66 = sub_100743CB4();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v67 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_100743CD4();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v58[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_10074CD14();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100750304();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v58[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v24);
  v26 = &v58[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v58[-v29];
  v72 = 0;
  if (a5)
  {
    sub_100743C74();
    v76 = *&v73;
    sub_100743464();
    (*(v28 + 8))(v30, v27);
    sub_100750F34();
    swift_allocObject();
    v72 = sub_100750F14();
  }

  if (v59)
  {
    swift_storeEnumTagMultiPayload();
    v31 = v73;
    v32 = [v73 traitCollection];
    sub_10050BF0C(v32);

    sub_100750F34();
    swift_allocObject();
    v33 = sub_100750F14();
    sub_10007A554(v26);
  }

  else
  {
    v33 = 0;
    v31 = v73;
  }

  v34 = v71;
  sub_100743CA4();
  v35.super.isa = [v31 traitCollection];
  isa = v35.super.isa;
  v37 = sub_1007502F4(v35).super.isa;

  (*(v21 + 8))(v23, v20);
  v38 = sub_10074F3F4();
  v81[3] = v38;
  v81[4] = sub_1006488F4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v39 = sub_10000D134(v81);
  (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);

  v40 = v37;
  sub_10074FC74();
  sub_10000C620(v81);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v60 + 8))(v19, v61);
  v41 = 0;
  if (v64)
  {
    v42 = [v31 traitCollection];
    sub_100399FE4(v42, 0, 0);

    sub_100750F34();
    swift_allocObject();
    v41 = sub_100750F14();
  }

  (*(v65 + 16))(v67, v34, v66);
  v43 = v72;
  if (v72)
  {
    v44 = sub_100750F34();
    v45 = &protocol witness table for LayoutViewPlaceholder;
    v46 = *&v43;
  }

  else
  {
    v46 = 0.0;
    v44 = 0;
    v45 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v46;
  v79 = v44;
  v80 = v45;
  sub_10000C824(v81, v75);
  if (v33)
  {
    v47 = sub_100750F34();
    v48 = &protocol witness table for LayoutViewPlaceholder;
    v49 = v33;
  }

  else
  {
    v49 = 0;
    v47 = 0;
    v48 = 0;
    v74[7] = 0;
    v74[6] = 0;
  }

  v74[5] = v49;
  v74[8] = v47;
  v74[9] = v48;
  v50 = 0;
  if (v41)
  {
    v50 = sub_100750F34();
    v51 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v51 = 0;
    v74[2] = 0;
    v74[1] = 0;
  }

  v74[0] = v41;
  v74[3] = v50;
  v74[4] = v51;
  swift_unknownObjectRetain();
  v52 = v68;
  sub_100743CC4();
  sub_100753BA4();
  sub_1006488F4(&qword_100942A58, &type metadata accessor for ActionLayout, &protocol conformance descriptor for ActionLayout);
  v53 = v70;
  sub_100750404();
  v76 = v54;
  v77 = v55;
  sub_100753BB4();
  v56 = [v31 traitCollection];
  sub_100751364();

  (*(v69 + 8))(v52, v53);
  sub_10000C620(v81);
  return v76;
}

double sub_1006485E8(uint64_t a1, void *a2, double a3, double a4)
{
  sub_100743C54();
  v6 = v5;
  v7 = [a2 traitCollection];
  sub_100751364();

  return v6;
}

double sub_100648654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10000C518(&qword_100940108, &unk_1007CC528);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1007504F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F2A4();
  sub_100750504();
  sub_100743C94();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10000C8CC(v10, &qword_100940108, &unk_1007CC528);
    sub_100743C74();
    v19 = a3;
    sub_100743464();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v19 = a3;
    sub_100743464();
    (*(v5 + 8))(v10, v4);
  }

  sub_100750474();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_1006488F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10064893C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10064897C()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryView) = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessory;
  v2 = type metadata accessor for Accessory(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchTrendingAction) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_layoutMetrics;
  if (qword_100921B28 != -1)
  {
    swift_once();
  }

  v4 = sub_100743CB4();
  v5 = sub_10000D0FC(v4, qword_100982A80);
  (*(*(v4 - 8) + 16))(v0 + v3, v5, v4);
  v6 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_artworkSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_itemLayoutContext;
  v8 = sub_1007469A4();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isVertical) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView) = 0;
  v9 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  sub_100754644();
  __break(1u);
}

char *sub_100648B6C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100747424();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100750534();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v15, qword_100980A68);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_100921B38 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v11, qword_100942A68);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v5[v19] = sub_1004AE6A0(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_100921B40 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100942A80];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_100648F58()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747424();
  sub_100039C50(v4, qword_100942A68);
  v18 = sub_10000D0FC(v4, qword_100942A68);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v16 = sub_10000D0FC(v5, qword_100980A68);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_100750B04();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000D134(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000D134(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v19);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100747404();
}

id sub_1006492BC()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_100942A80 = result;
  return result;
}

void sub_100649434()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  [v1 _setEffect:v2];

  v3 = OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  sub_1007477B4();
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = *&v0[v3];
  sub_1007477B4();
  MinX = CGRectGetMinX(v18);
  sub_1007477B4();
  [v11 setFrame:{MinX, CGRectGetMidY(v19) + v10 * -0.5, v8, v10}];

  v13 = &v0[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 1);

    v14(v16);
    sub_1000164A8(v14, v15);
  }
}

void sub_10064962C()
{
  [v0 overrideUserInterfaceStyle];
  sub_100753094();
  v1 = sub_100753064();

  v2 = OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView] + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = [*(*(*&v0[v2] + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel) layer];
  [v5 setCompositingFilter:v1];
}

void sub_100649780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v24);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10074FBB4();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10074FBA4(), , v13))
      {
        sub_10074CA84();
        if (swift_dynamicCastClass())
        {
          sub_10074CA74();
          sub_100743D74();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10045862C(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_100749544();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

double sub_100649BD4(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_100649C34(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_100649CCC()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_100649D28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_100649DE8(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_10064A36C;
}

void sub_100649EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = a5;
  v11 = sub_10074FB54();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v5[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (v10 == 7)
  {
    if (v16 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v16 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v16 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v16 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v16 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v16 - 7) > 0xFFFFFFFC || v16 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v17 = [v5 traitCollection];
  if (v10 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v17 layoutDirection];
  sub_1007539B4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v5 setLayoutMargins:{v19, v21, v23, v25}];
  v26 = sub_10056AD50(a4);
  [v6 setBackgroundColor:v26];

  (*(v12 + 104))(v15, enum case for TodayCard.Style.white(_:), v11);
  sub_10064A26C(&qword_1009239F0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  sub_100753274();
  sub_100753274();
  if (v31[2] == v31[0] && v31[3] == v31[1])
  {
    v27 = 1;
  }

  else if (sub_100754754())
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  (*(v12 + 8))(v15, v11);

  [v6 setOverrideUserInterfaceStyle:v27];
  v28 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v29 = sub_10074CA74();
  sub_100117C00(v29, a2);

  sub_10064962C();
}

uint64_t sub_10064A26C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10064A2B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10064A2EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10064A324()
{

  sub_10000C620((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10064A378()
{
  v1 = v0;
  v2 = sub_100747424();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v6, qword_100980A68);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_100921B38 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v2, qword_100942A68);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *(v1 + v10) = sub_1004AE6A0(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_100921B40 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100942A80];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  sub_100754644();
  __break(1u);
}

void sub_10064A668()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for SeparatorSupplementaryView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_100753064();
    sub_1007539D4();
    v5 = sub_100753064();

    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_10064A74C(void *a1)
{
  v1 = a1;
  sub_10064A668();
}

double sub_10064A794()
{
  v1 = [v0 traitCollection];
  sub_100751364();
  v3 = v2;

  return v3;
}

void sub_10064A7E4(uint64_t a1)
{
  v3 = sub_10000C518(&qword_1009431A8, qword_1007CFC00);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10074E5E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10074AB14())
  {
    (*(v7 + 104))(v9, enum case for Uber.Style.above(_:), v6);
    v10 = sub_10074E644();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_10074E664();
    swift_allocObject();
    swift_retain_n();
    v11 = sub_10074E5F4();
    v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber] = v11;

    sub_100599860(v12);
  }

  v13 = [v1 collectionView];
  sub_10064B69C(a1, v13);

  sub_1001791D4();
}

double sub_10064AA2C(void *a1)
{
  v1 = a1;
  sub_100178080();
  v3 = v2;

  return v3;
}

id sub_10064AA88(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x800000010076E360 == a3 || (sub_100754754() & 1) != 0)
  {
    v9 = sub_100753064();
    type metadata accessor for SeparatorSupplementaryView(0);
    sub_1007539D4();
    v10 = sub_100753064();

    v11.super.isa = sub_100741704().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v13 = sub_100753064();
    v11.super.isa = sub_100741704().super.isa;
    v15.receiver = v4;
    v15.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v15, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v13, v11.super.isa);
  }

  return v12;
}

id sub_10064ABF0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100753094();
  v13 = v12;
  sub_100741744();
  v14 = a3;
  v15 = a1;
  v16 = sub_10064AA88(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_10064AD30(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34[1] = a5;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v10 = sub_100747524();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100747564();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34[0] = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v34 - v17;
  if (a3 == 0xD000000000000039 && 0x800000010076E360 == a4 || (sub_100754754()) && (type metadata accessor for SeparatorSupplementaryView(0), (v19 = swift_dynamicCastClass()) != 0))
  {
    v20 = v19;
    (*(v11 + 104))(v36, enum case for ComponentSeparator.Position.top(_:), v10);
    v35 = a2;
    [v6 pageContainerSize];
    v22 = v21;
    v23 = [v6 traitCollection];
    v24 = sub_1007537B4();

    if ((v24 & 1) != 0 && v22 > 672.0)
    {
      sub_1004C4774();
    }

    else
    {
      v39.receiver = v6;
      v39.super_class = ObjectType;
      objc_msgSendSuper2(&v39, "pageMarginInsets");
    }

    [v6 pageContainerSize];
    v28 = v27;
    v29 = [v6 traitCollection];
    v30 = sub_1007537B4();

    if ((v30 & 1) != 0 && v28 > 672.0)
    {
      sub_1004C4774();
    }

    else
    {
      v38.receiver = v6;
      v38.super_class = ObjectType;
      objc_msgSendSuper2(&v38, "pageMarginInsets");
    }

    sub_100747534();
    v31 = v34[0];
    (*(v14 + 16))(v34[0], v18, v13);
    v32 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
    swift_beginAccess();
    (*(v14 + 24))(v20 + v32, v31, v13);
    swift_endAccess();
    sub_10050F87C();

    v33 = *(v14 + 8);
    v33(v31, v13);
    v33(v18, v13);
  }

  else
  {
    v25 = sub_100753064();
    isa = sub_100741704().super.isa;
    v40.receiver = v6;
    v40.super_class = ObjectType;
    objc_msgSendSuper2(&v40, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", v35, a2, v25, isa);
  }
}

uint64_t sub_10064B174(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100753094();
  v15 = v14;
  sub_100741744();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_10064AD30(v16, v17, v13, v15, v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for VersionHistoryViewController(uint64_t a1)
{
  result = qword_100942BB0;
  if (!qword_100942BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064B3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100752AC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100943198, &unk_1007CFBF0);
  swift_allocObject();
  swift_retain_n();
  v8 = sub_100478468();

  v9 = sub_10046EA4C(a1, v8, a2);
  sub_10064B654(&qword_1009431A0, &unk_1007CFBA8);
  v10 = v9;

  v11 = v10;
  sub_10074AB24();
  sub_10074AB34();
  v13 = v12;

  if (v13)
  {
    v14 = sub_100753064();
  }

  else
  {
    v14 = 0;
  }

  [v11 setTitle:v14];

  v11[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
  v15 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber];
  v16 = [v11 navigationItem];
  v17 = v16;
  if (v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  [v16 setLargeTitleDisplayMode:v18];

  v19 = [v11 view];
  if (v19)
  {
    memset(v20, 0, sizeof(v20));
    sub_100752A84();
    sub_1000277BC(v20);
    sub_100753C74();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10064B654(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VersionHistoryViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10064B69C(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  __chkstk_darwin(v9);
  v39 = &v32[-v10];
  v11 = sub_1007521F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000A7FA0();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_1007537A4();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_10016993C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v37 = v4 + 32;
  v38 = v4 + 16;
  v36 = v4 + 88;
  v35 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v33 = enum case for Shelf.ContentType.informationRibbon(_:);
  v40 = a1;
  v41 = (v4 + 8);

  v23 = 0;
  v34 = v4;
  while (v21)
  {
LABEL_10:
    v25 = v39;
    v26 = *(v4 + 16);
    v26(v39, *(v40 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v3);
    (*(v4 + 32))(v17, v25, v3);
    v27 = v42;
    v26(v42, v17, v3);
    v28 = (*(v4 + 88))(v27, v3);
    if (v28 == v35)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v28 == v33)
    {
      type metadata accessor for InformationRibbonCollectionViewCell(0);
    }

    else
    {
      (*v41)(v42, v3);
      if (!sub_10034E47C())
      {
        goto LABEL_4;
      }
    }

    if (v43)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_10074E964();
      v30 = v17;
      v31 = sub_100753064();

      [v43 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v31];

      v17 = v30;
      v4 = v34;
    }

LABEL_4:
    v21 &= v21 - 1;
    (*v41)(v17, v3);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10064BA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_100752914();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_10064F390(a3, &v4[v14]);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionCalculator;
  swift_beginAccess();
  *&v4[v15] = a1;

  sub_100016B4C(a3, v9, &unk_100925380, qword_1007A8E40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_10000C8CC(v9, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    [v4 bounds];
    sub_100749544();
    (*(v11 + 8))(v13, v10);
  }

  v16 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView;
  v17 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_10074E264();
  swift_allocObject();
  v18 = v17;
  v19 = sub_10074E204();
  v20 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = v19;

  if (*&v4[v20])
  {

    sub_10074E234();

    if (*&v4[v20])
    {

      sub_10074E224();
    }
  }

  sub_10074B544();
  swift_allocObject();

  v21 = sub_10074B554();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = v21;

  if (*&v4[v22])
  {
    v23 = *&v4[v16];
    if (v23)
    {

      v24.super.super.super.isa = v23;
      isa = v24.super.super.super.isa;
      sub_10074B524(v24);

      return;
    }

LABEL_13:
    __break(1u);
  }
}

void sub_10064BDD8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_onSelect];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView] = 0;
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionCalculator] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v17 = sub_100752914();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_tokens] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout] = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout()) init];
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout;
  *(*&v22[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate + 8) = &off_10087EE28;
  swift_unknownObjectWeakAssign();
  v24 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v22[v23] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView;
  v26 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView];
  *&v22[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor:v28];

  v29 = *&v22[v25];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v29 setDataSource:v22];
  v30 = *&v22[v25];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v30 setDelegate:v22];
  v31 = *&v22[v25];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v31 setShowsHorizontalScrollIndicator:0];
  v32 = *&v22[v25];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v32 setShowsVerticalScrollIndicator:0];
  v33 = *&v22[v25];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v33 setBouncesHorizontally:1];
  v34 = *&v22[v25];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v34 setClipsToBounds:0];
  if (!*&v22[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 addSubview:?];
  v35 = *&v22[v25];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v10;
  v45[1] = ObjectType;
  [v35 setPreservesSuperviewLayoutMargins:1];
  v37 = *&v22[v25];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for GuidedSearchTokenCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = v37;
  sub_1007539D4();
  v40 = sub_100753064();

  [v39 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

  v41 = *&v22[v25];
  if (v41)
  {
    memset(v46, 0, sizeof(v46));
    v42 = v41;
    sub_100752A84();
    sub_10000C8CC(v46, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    (*(v11 + 8))(v13, v36);
    v43 = [v22 traitCollection];

    [*&v22[v23] invalidateLayout];
    sub_10000C518(&unk_1009249D0, qword_1007A7B10);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007A6580;
    *(v44 + 32) = sub_1007516F4();
    *(v44 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v44 + 48) = sub_1007519E4();
    *(v44 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_100753D44();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_10064C3A4()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    Width = CGRectGetWidth(v11);

    [v3 setFrame:{0.0, 0.0, Width, 60.0}];
    v5 = [v1 traitCollection];
    v6 = sub_1007537E4();

    if ((v6 & 1) != 0 && (v1[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth + 8] & 1) == 0)
    {
      v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
      [v1 bounds];
      if (v7 <= 834.0 == CGRectGetWidth(v12) > 834.0)
      {

        [*&v1[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout] invalidateLayout];
      }
    }

    [v1 bounds];
    v8 = CGRectGetWidth(v13);
    v9 = &v1[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_10064C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_tokens) = a2;

  if (*(a3 + 16))
  {
    v8 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView);
    if (!v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_1007417F4();
    v9 = v8;
    isa = sub_100753294().super.isa;
    [v9 deleteItemsAtIndexPaths:isa];
  }

  if (!*(a5 + 16))
  {
    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1007417F4();
  v12 = v11;
  v13 = sub_100753294().super.isa;
  [v12 insertItemsAtIndexPaths:v13];
}

void sub_10064C71C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10064C778();
    }
  }
}

void sub_10064C778()
{
  if (*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout) + OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_opt_self();
    v10 = sub_10064F50C;
    v11 = v1;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_1000CF7B0;
    v9 = &unk_10087EF28;
    v4 = _Block_copy(&v6);

    v10 = sub_10064F514;
    v11 = v2;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_100144DD8;
    v9 = &unk_10087EF50;
    v5 = _Block_copy(&v6);

    [v3 animateWithDuration:0 delay:v4 usingSpringWithDamping:v5 initialSpringVelocity:0.3 options:0.0 animations:27.0 completion:0.0];
    _Block_release(v5);
    _Block_release(v4);
  }
}

void sub_10064C970(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      [v4 setContentOffset:{0.0, 0.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10064CA00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout);

    v4[OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout);

    [v7 invalidateLayout];
  }
}

uint64_t type metadata accessor for GuidedSearchTokenPaletteView(uint64_t a1)
{
  result = qword_100943220;
  if (!qword_100943220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064CBD4(uint64_t a1)
{
  sub_100400C0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10064CE14(void *a1, uint64_t a2)
{
  type metadata accessor for GuidedSearchTokenCell();
  sub_1007539D4();
  v3 = sub_100753064();

  isa = sub_100741704().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v5 = v5;
    sub_10064CF3C(v14);
    v8 = v15;
    if (v15)
    {
      v10 = v14[1];
      v9 = v14[2];
      v11 = v14[0];
      v12 = v16;

      sub_1006C33A8(v11, v10, v9, v8, v12 & 1);

      return v7;
    }

    else
    {
    }
  }

  return v5;
}

void sub_10064CF3C(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_tokens;
  v5 = *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_tokens) + 16);
  v6 = sub_100741754();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v6 < 0 || v6 >= v5)
  {
    goto LABEL_6;
  }

  v12 = sub_100741754();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v2 + v4);
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 40 * v12;
      v8 = *(v14 + 32);
      v9 = *(v14 + 40);
      v10 = *(v14 + 48);
      v11 = *(v14 + 56);
      v7 = *(v14 + 64);

LABEL_6:
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      *(a1 + 32) = v7;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10064D51C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10064D564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10064D5B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_tokens);
  v2 = *(v1 + 16);

  v3 = 0;
LABEL_2:
  v4 = 40 * v3;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    ++v3;
    v5 = v4 + 40;
    v6 = *(v1 + v4 + 64);
    v4 += 40;
    if (v6)
    {
      v8 = *(v1 + v5 - 8);
      v7 = *(v1 + v5);
      v10 = *(v1 + v5 + 8);
      v9 = *(v1 + v5 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001E574(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_10001E574((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[5 * v12];
      v13[4] = v8;
      v13[5] = v7;
      v13[6] = v10;
      v13[7] = v9;
      *(v13 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_10064D708(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_100754754() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (sub_100754754() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

id sub_10064D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  sub_100038D38();
  if (qword_100921D28 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  sub_10000D0FC(v5, qword_100982E80);
  v6 = sub_100753C04();
  v7 = [objc_opt_self() configurationWithFont:v6 scale:2];

  v8 = sub_100753064();
  v9 = [objc_opt_self() _systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {
    v10 = objc_allocWithZone(NSMutableAttributedString);
    v11 = sub_100753064();
    v12 = [v10 initWithString:v11];

    v13 = [objc_opt_self() textAttachmentWithImage:v9];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    [v12 appendAttributedString:v14];
    v15 = objc_allocWithZone(NSAttributedString);
    v16 = sub_100753064();
    v17 = [v15 initWithString:v16];

    [v12 appendAttributedString:v17];
    v18 = objc_allocWithZone(NSAttributedString);
    v19 = sub_100753064();
    v20 = [v18 initWithString:v19];

    [v12 appendAttributedString:v20];
    v21 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v12];
  }

  else
  {
LABEL_6:
    v22 = objc_allocWithZone(NSAttributedString);
    v12 = sub_100753064();
    v21 = [v22 initWithString:v12];
  }

  return v21;
}

double sub_10064DA84(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074CD14();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10064D7BC(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  v33 = *(a1 + 32);
  sub_100038D38();
  v15 = qword_100921D28;
  v29 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_100750534();
  sub_10000D0FC(v16, qword_100982E80);
  sub_100753C04();
  v17 = sub_10074F3F4();
  v31 = v17;
  v32 = sub_1001FC0C4();
  v18 = sub_10000D134(v30);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.measurement_with_labelplaceholder(_:), v17);
  sub_10074FC74();
  sub_10000C620(v30);
  sub_10074CCD4();
  sub_10074CCE4();
  (*(v11 + 8))(v13, v10);
  sub_10000C888(v30, v31);
  sub_100750414();
  sub_100753BC4();
  (*(v7 + 104))(v9, enum case for FloatingPointRoundingRule.up(_:), v6);
  sub_100753B84();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  v21 = [a2 traitCollection];
  v22 = sub_1006C48E0();

  if (v33 == 1)
  {
    [v22 size];
    v24 = v23;

    v25 = v24 + 5.0;
  }

  else
  {

    v25 = 0.0;
  }

  v26 = v20 + v25;
  sub_10000C620(v30);
  return v26;
}

id sub_10064DE50(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout];

  return [v2 invalidateLayout];
}

uint64_t sub_10064DEAC(uint64_t a1, unsigned __int8 *a2)
{
  v83 = sub_10000C518(&qword_100943240, &qword_1007B5048);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v86 = &v79 - v4;
  v89 = sub_1007417F4();
  v97 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v79 - v7;
  __chkstk_darwin(v8);
  v93 = &v79 - v9;
  v10 = sub_10000C518(&qword_100943248, &qword_1007CFD10);
  __chkstk_darwin(v10);
  v96 = &v79 - v11;
  v90 = sub_10000C518(&qword_100943250, qword_1007CFD18);
  v85 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v79 - v12;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  v95 = v13;
  v91 = a1;
  v92 = a2;
  if (v13)
  {
    v101[0] = _swiftEmptyArrayStorage;
    sub_10001E1E8(0, v13, 0);
    v14 = v101[0];
    v15 = (a1 + 56);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v101[0] = v14;
      v19 = v14[2];
      v18 = v14[3];

      if (v19 >= v18 >> 1)
      {
        sub_10001E1E8((v18 > 1), v19 + 1, 1);
        v14 = v101[0];
      }

      v14[2] = v19 + 1;
      v20 = &v14[2 * v19];
      v20[4] = v17;
      v20[5] = v16;
      v15 += 5;
      --v13;
    }

    while (v13);
    a2 = v92;
  }

  v21 = *(a2 + 2);
  v22 = _swiftEmptyArrayStorage;
  v79 = v21;
  if (v21)
  {
    v101[0] = _swiftEmptyArrayStorage;
    sub_10001E1E8(0, v21, 0);
    v22 = v101[0];
    v23 = a2 + 56;
    v24 = v21;
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      v101[0] = v22;
      v28 = v22[2];
      v27 = v22[3];

      if (v28 >= v27 >> 1)
      {
        sub_10001E1E8((v27 > 1), v28 + 1, 1);
        v22 = v101[0];
      }

      v22[2] = v28 + 1;
      v29 = &v22[2 * v28];
      v29[4] = v26;
      v29[5] = v25;
      v23 += 40;
      --v24;
    }

    while (v24);
  }

  v101[0] = v22;
  v101[4] = v14;
  sub_10000C518(&unk_100928A70, &unk_1007AC470);
  sub_10002DDC8(&qword_10092FA00, &unk_100928A70, &unk_1007AC470, &protocol conformance descriptor for [A]);
  v30 = v84;
  sub_100752FE4();

  v31 = v96;
  (*(v85 + 16))(v96, v30, v90);
  v32 = *(v10 + 36);
  sub_10002DDC8(&qword_100943258, &qword_100943250, qword_1007CFD18, &protocol conformance descriptor for CollectionDifference<A>);
  sub_1007534C4();
  sub_1007534F4();
  if (*(v31 + v32) == v101[0])
  {
    v87 = _swiftEmptyArrayStorage;
    v100 = _swiftEmptyArrayStorage;
  }

  else
  {
    v94 = (v97 + 32);
    v100 = _swiftEmptyArrayStorage;
    v87 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        v54 = sub_100753514();
        v56 = *v55;
        v57 = *(v55 + 33);
        v58 = *v55;
        v59 = *(v55 + 8);
        v98 = *(v55 + 16);
        v60 = DebugMenuPage.debugSettingsProviders.getter(v58, v59, v98);
        v54(v101, 0, v60);
        sub_100753504();
        if (v57 == 1)
        {
          break;
        }

        sub_100741764();
        v61 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1002558B8(0, v100[2] + 1, 1, v100);
        }

        v62 = v98;
        v64 = v100[2];
        v63 = v100[3];
        if (v64 >= v63 >> 1)
        {
          v75 = v98;
          v76 = sub_1002558B8((v63 > 1), v64 + 1, 1, v100);
          v62 = v75;
          v100 = v76;
        }

        v65 = sub_10064F51C(v61, v59, v62);
        v66 = v99;
        v67 = v100;
        v100[2] = v64 + 1;
        (*(v97 + 32))(v67 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v64, v66, v89, v65);
        v31 = v96;
        sub_1007534F4();
        if (*(v31 + v32) == v101[0])
        {
          goto LABEL_14;
        }
      }

      sub_100741764();
      v68 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_1002558B8(0, v87[2] + 1, 1, v87);
      }

      v69 = v59;
      v70 = v98;
      v72 = v87[2];
      v71 = v87[3];
      if (v72 >= v71 >> 1)
      {
        v77 = v98;
        v78 = sub_1002558B8((v71 > 1), v72 + 1, 1, v87);
        v70 = v77;
        v69 = v59;
        v87 = v78;
      }

      v73 = sub_10064F51C(v68, v69, v70);
      v74 = v87;
      v87[2] = v72 + 1;
      (*(v97 + 32))(v74 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v72, v93, v89, v73);
      v31 = v96;
      sub_1007534F4();
    }

    while (*(v31 + v32) != v101[0]);
  }

LABEL_14:
  result = sub_10000C8CC(v31, &qword_100943248, &qword_1007CFD10);
  v34 = v95;
  if (!v95)
  {
    v88 = _swiftEmptyArrayStorage;
LABEL_62:
    (*(v85 + 8))(v84, v90);
    return v87;
  }

  v35 = 0;
  v93 = (v91 + 32);
  v80 = (v97 + 32);
  v92 += 64;
  v88 = _swiftEmptyArrayStorage;
  v91 = v79 + 1;
  while (2)
  {
    if (v35 >= v34)
    {
      __break(1u);
    }

    else if (!__OFADD__(v35, 1))
    {
      v99 = v35 + 1;
      v36 = v92;
      v94 = v35;
      v37 = &v93[40 * v35];
      v38 = *(v37 + 1);
      v96 = *v37;
      v98 = v38;
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      LODWORD(v97) = v37[32];
      v41 = v91;
      while (1)
      {
        if (!--v41)
        {
          goto LABEL_17;
        }

        v42 = *(v36 - 4);
        v43 = *(v36 - 3);
        v45 = *(v36 - 2);
        v44 = *(v36 - 1);
        v46 = *v36;
        v47 = v45 == v40 && v44 == v39;
        v48 = v47;
        if (v47)
        {
          break;
        }

        v36 += 40;
        result = sub_100754754();
        if (result)
        {
          v49 = v98;
          if (v98)
          {
            goto LABEL_31;
          }

LABEL_37:
          if (v43)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      v45 = v40;
      v49 = v98;
      if (!v98)
      {
        goto LABEL_37;
      }

LABEL_31:
      if (!v43)
      {
        goto LABEL_41;
      }

      result = v96;
      if (v96 == v42 && v49 == v43 || (result = sub_100754754(), (result & 1) != 0))
      {
LABEL_38:
        if (v48 || (result = sub_100754754(), (result & 1) != 0))
        {
          if (v97 == v46)
          {
LABEL_17:
            v35 = v99;
            v34 = v95;
            if (v99 == v95)
            {
              goto LABEL_62;
            }

            continue;
          }
        }
      }

LABEL_40:

LABEL_41:

      sub_100741764();
      v50 = v86 + *(v83 + 48);
      (*v80)();
      *v50 = v42;
      *(v50 + 8) = v43;
      *(v50 + 16) = v45;
      *(v50 + 24) = v44;
      *(v50 + 32) = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_1002558F4(0, v88[2] + 1, 1, v88);
      }

      v34 = v95;
      v35 = v99;
      v52 = v88[2];
      v51 = v88[3];
      if (v52 >= v51 >> 1)
      {
        v88 = sub_1002558F4((v51 > 1), v52 + 1, 1, v88);
      }

      v53 = v88;
      v88[2] = v52 + 1;
      result = sub_100066578(v86, v53 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v52, &qword_100943240, &qword_1007B5048);
      if (v35 != v34)
      {
        continue;
      }

      goto LABEL_62;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_10064E930(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100943238, &unk_1007CFD00);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v54 - v12;
  v65 = v2;

  v13 = sub_10064DEAC(v55, a1);
  v56 = v14;
  v57 = v13;
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v54 = a1;
    v62 = (v5 + 32);
    v63 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView;
    v58 = (v5 + 8);

    v18 = 0;
    v60 = v10;
    v61 = v16;
    v59 = v17;
    while (1)
    {
      v19 = v64;
      if (v18 == v17)
      {
        v20 = sub_10000C518(&qword_100943240, &qword_1007B5048);
        (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
        v66 = v17;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (v18 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v21 = v4;
        v22 = v16;
        v23 = v18;
        v24 = sub_10000C518(&qword_100943240, &qword_1007B5048);
        v25 = *(v24 - 8);
        sub_100016B4C(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v10, &qword_100943240, &qword_1007B5048);
        v66 = v23 + 1;
        v16 = v22;
        v4 = v21;
        (*(v25 + 56))(v10, 0, 1, v24);
      }

      sub_100066578(v10, v19, &qword_100943238, &unk_1007CFD00);
      v26 = sub_10000C518(&qword_100943240, &qword_1007B5048);
      if ((*(*(v26 - 8) + 48))(v19, 1, v26) == 1)
      {

        a1 = v54;
        break;
      }

      v27 = v19 + *(v26 + 48);
      v28 = *v27;
      v29 = *(v27 + 8);
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v32 = *(v27 + 32);
      v33 = v19;
      v34 = v4;
      (*v62)(v7, v33, v4);
      v35 = *&v65[v63];
      if (!v35)
      {
        goto LABEL_24;
      }

      v36 = v35;
      isa = sub_100741704().super.isa;
      v38 = [v36 cellForItemAtIndexPath:isa];

      if (v38)
      {
        type metadata accessor for GuidedSearchTokenCell();
        if (swift_dynamicCastClass())
        {
          sub_1006C33A8(v28, v29, v31, v30, v32);
        }

        v4 = v34;
        (*v58)(v7, v34);
      }

      else
      {
        v4 = v34;
        (*v58)(v7, v34);
      }

      v10 = v60;
      v16 = v61;
      v17 = v59;
      v18 = v66;
    }
  }

  v39 = *(v57 + 16);
  if (v39)
  {
    v40 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView];
    if (!v40)
    {
      goto LABEL_26;
    }

    v41 = v40;
    [v41 contentOffset];
    [v41 setContentOffset:0 animated:?];

    *(*&v65[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 1;
  }

  v42 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (!v42)
  {
    goto LABEL_25;
  }

  v43 = v39 != 0;
  v44 = v42;

  v45 = swift_allocObject();
  v46 = v65;
  v45[2] = v65;
  v45[3] = a1;
  v47 = v56;
  v45[4] = v57;
  v45[5] = v16;
  v45[6] = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_10064F458;
  *(v48 + 24) = v45;
  v71 = sub_100045E0C;
  v72 = v48;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10011B528;
  v70 = &unk_10087EE88;
  v49 = _Block_copy(&aBlock);
  v50 = v46;

  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v43;
  *(v52 + 24) = v51;
  v71 = sub_10064F500;
  v72 = v52;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_100144DD8;
  v70 = &unk_10087EF00;
  v53 = _Block_copy(&aBlock);

  [v44 performBatchUpdates:v49 completion:v53];
  _Block_release(v53);
  _Block_release(v49);
}

void sub_10064F018()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_onSelect);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_collectionView) = 0;
  v2 = v0 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v4 = sub_100752914();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  sub_100754644();
  __break(1u);
}

double sub_10064F118(void *a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_100016B4C(v2 + v11, v6, &unk_100925380, qword_1007A8E40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionCalculator;
    swift_beginAccess();
    if (*(v2 + v13))
    {
      swift_endAccess();

      [a1 frame];
      sub_100749594();

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      swift_endAccess();
    }
  }

  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator))
  {

    sub_10074E244();
  }

  return result;
}

uint64_t sub_10064F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10064F400()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_10064F478(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10064F490()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10064F4C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10064F53C()
{
  if (qword_100920A00 != -1)
  {
    swift_once();
  }

  v1 = qword_10097FC80;
  qword_100982AD8 = qword_10097FC80;

  return v1;
}

char *sub_10064F5A0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_isHighlighted] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator] = 0;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage] = 0;
  sub_100745C84();
  v7 = sub_100750304();
  v33[3] = v7;
  v33[4] = &protocol witness table for FontSource;
  v8 = sub_10000D134(v33);
  if (qword_100921B48 != -1)
  {
    v31 = v8;
    swift_once();
    v8 = v31;
  }

  v9 = qword_100982AD8;
  *v8 = qword_100982AD8;
  (*(*(v7 - 8) + 104))();
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v2);
  v10 = v9;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel] = sub_100745BB4();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = type metadata accessor for SearchHintView();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel;
  v18 = qword_1009209E8;
  v19 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setTextColor:qword_10097FC68];

  v20 = *&v16[v17];
  v21 = [v16 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_100753924();

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  [v20 setNumberOfLines:v24];

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A5A00;
  *(v25 + 32) = sub_1007519E4();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  [v16 addSubview:*&v16[v17]];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconView;
  v27 = qword_1009209F8;
  v28 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconView];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTintColor:qword_10097FC78];

  [v16 addSubview:*&v16[v26]];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView] setHidden:v16[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator]];
  [v16 addSubview:*&v16[v29]];

  return v16;
}

void sub_10064FB3C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 traitCollection];
    if (qword_100920A00 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() configurationWithTextStyle:qword_10097FC80 scale:2];
    v8 = [v7 configurationWithTraitCollection:v6];

    v9 = [v5 imageWithConfiguration:v8];
  }

  else
  {
    v9 = 0;
  }

  v11.value.super.isa = v9;
  v11.is_nil = 0;
  sub_100743384(v11, a3);
}

uint64_t sub_10064FC90()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100750354();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007462D4();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007462B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SearchHintView();
  v42.receiver = v0;
  v42.super_class = v14;
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage];
  v16 = v15;
  [v0 layoutMargins];
  sub_10064FFD4(v15, v0, v13, v17, v18);

  (*(v8 + 16))(v10, v13, v7);
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconView];
  v40 = sub_1007433C4();
  v41 = &protocol witness table for UIView;
  v39 = v19;
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel];
  v37 = sub_100745C84();
  v38 = &protocol witness table for UILabel;
  v36 = v20;
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView];
  v34 = type metadata accessor for SeparatorView(0);
  v35 = &protocol witness table for UIView;
  v33 = v21;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  sub_1007462C4();
  [v1 bounds];
  v25 = v28;
  sub_100746284();
  (*(v31 + 8))(v25, v32);
  (*(v29 + 8))(v6, v30);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_10064FFD4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, uint64_t a5@<D3>)
{
  v41 = a3;
  v9 = sub_100754724();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750304();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100750B04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [a2 traitCollection];
    if (qword_100920A00 != -1)
    {
      swift_once();
    }

    v22 = [objc_opt_self() configurationWithTextStyle:qword_10097FC80 scale:2];
    v23 = [v22 configurationWithTraitCollection:v21];

    v24 = [v20 imageWithConfiguration:v23];
    [v24 size];
  }

  else
  {
    v39 = v9;
    v25 = v16;
    if (qword_100921B48 != -1)
    {
      swift_once();
    }

    v26 = qword_100982AD8;
    *v15 = qword_100982AD8;
    (*(v13 + 104))(v15, enum case for FontSource.textStyle(_:), v12);
    v48 = v12;
    v49 = &protocol witness table for FontSource;
    v27 = sub_10000D134(v47);
    (*(v13 + 16))(v27, v15, v12);
    v28 = v26;
    sub_100750B14();
    (*(v13 + 8))(v15, v12);
    sub_1007502D4();
    v16 = v25;
    sub_100750564();
    (*(v40 + 8))(v11, v39);
    (*(v17 + 8))(v19, v25);
  }

  v48 = &type metadata for CGFloat;
  v49 = &protocol witness table for CGFloat;
  v47[0] = a4;
  v46[8] = &type metadata for CGFloat;
  v46[9] = &protocol witness table for CGFloat;
  v46[5] = a5;
  if (qword_100921B48 != -1)
  {
    swift_once();
  }

  v29 = qword_100982AD8;
  *v15 = qword_100982AD8;
  v30 = enum case for FontSource.textStyle(_:);
  v31 = *(v13 + 104);
  v31(v15, enum case for FontSource.textStyle(_:), v12);
  v46[3] = v16;
  v46[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v46);
  v44 = v12;
  v45 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v43);
  v40 = v16;
  v33 = *(v13 + 16);
  v33(v32, v15, v12);
  v34 = v29;
  sub_100750B14();
  v35 = *(v13 + 8);
  v35(v15, v12);
  *v15 = v34;
  v31(v15, v30, v12);
  v44 = v40;
  v45 = &protocol witness table for StaticDimension;
  sub_10000D134(v43);
  v42[3] = v12;
  v42[4] = &protocol witness table for FontSource;
  v36 = sub_10000D134(v42);
  v33(v36, v15, v12);
  sub_100750B14();
  v35(v15, v12);
  return sub_100746294();
}

double sub_100650604(void *a1, double a2, double a3)
{
  v4 = v3;
  v29[1] = a1;
  v29[2] = swift_getObjectType();
  v30 = sub_1007462D4();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007462B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v29 - v14;
  v16 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage];
  v17 = v16;
  [v4 layoutMargins];
  sub_10064FFD4(v16, a1, v15, v18, v19);

  (*(v10 + 16))(v12, v15, v9);
  v20 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconView];
  v38 = sub_1007433C4();
  v39 = &protocol witness table for UIView;
  v37 = v20;
  v21 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel];
  v35 = sub_100745C84();
  v36 = &protocol witness table for UILabel;
  v34 = v21;
  v22 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView];
  v32 = type metadata accessor for SeparatorView(0);
  v33 = &protocol witness table for UIView;
  v31 = v22;
  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_1007462C4();
  sub_100746274();
  v27 = v26;
  (*(v6 + 8))(v8, v30);
  (*(v10 + 8))(v15, v9);
  return v27;
}

id sub_100650990(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100650A54(char *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = sub_100753924() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = sub_100753924() & 1;
  if (v4 != v5)
  {
    v7 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel];
    v8 = [a1 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_100753924();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [v7 setNumberOfLines:v11];

    [a1 setNeedsLayout];
  }
}