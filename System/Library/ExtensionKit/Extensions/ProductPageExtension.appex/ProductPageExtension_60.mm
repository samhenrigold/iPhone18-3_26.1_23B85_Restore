uint64_t sub_1006C4580(double a1)
{
  v2 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v2 - 8);
  v45 = &v37 - v3;
  v48 = sub_10076C2DC();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v37 - v10;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v17 = *(sub_10076C20C() - 8);
  v53 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v43 = v19;
  *(v19 + 16) = xmmword_1007844F0;
  v20 = v19 + v18;
  v56 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v55 = 16.0;
  v56 = 0x4020000000000000;
  sub_10076C27C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v52 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v54 + 104);
  v54 += 104;
  v27 = v48;
  v26(v5);
  v47 = v26;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  v44 = v8;
  sub_10076C29C();
  v46 = v20;
  v50 = v16;
  v51 = v13;
  sub_10076C1CC();
  v56 = 0x3FF0000000000000;
  sub_10076C29C();
  v55 = 20.0;
  v56 = 0x4024000000000000;
  sub_10076C27C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v26)(v5, v52, v27);
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  v31 = v53;
  top = UIEdgeInsetsZero.top;
  v40 = left;
  v42 = bottom;
  sub_10076C1CC();
  v56 = 0x4000000000000000;
  sub_10076C29C();
  v56 = 0x4034000000000000;
  sub_10076C29C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  v39 = vdupq_n_s64(0x4041000000000000uLL);
  *v5 = v39;
  v33 = v47;
  v32 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v38 = 2 * v31 + v53;
  v56 = 0x4000000000000000;
  sub_10076C29C();
  v56 = 0x4034000000000000;
  sub_10076C29C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  *v5 = v39;
  (v33)(v5, v52, v32);
  sub_1007704BC();
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v38 = 4 * v53;
  v56 = 0x4008000000000000;
  sub_10076C29C();
  v56 = 0x4038000000000000;
  sub_10076C29C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  v39 = vdupq_n_s64(0x404A000000000000uLL);
  *v5 = v39;
  v34 = v52;
  v35 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v56 = 0x4008000000000000;
  sub_10076C29C();
  v56 = 0x4038000000000000;
  sub_10076C29C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  *v5 = v39;
  (v47)(v5, v34, v35);
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v43;
}

char *sub_1006C4F8C(char *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isExpanded] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_videoMirrorView;
  if (qword_10093F788 != -1)
  {
    swift_once();
  }

  v14[4] = *&byte_10099D030[64];
  v14[5] = *&byte_10099D030[80];
  v14[6] = *&byte_10099D030[96];
  v14[7] = *&byte_10099D030[112];
  v14[0] = *byte_10099D030;
  v14[1] = *&byte_10099D030[16];
  v14[2] = *&byte_10099D030[32];
  v14[3] = *&byte_10099D030[48];
  v5 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *&v1[v4] = sub_1002831F8(0, v14, 1.0, 0.0);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
  v8 = sub_10076C38C();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_sizeCategory] = 7;
  v2[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for RevealingVideoMirrorView(0);
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = &a1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v10 + 1) = &off_10089FF28;
  swift_unknownObjectWeakAssign();
  sub_10056990C(Strong);

  [v9 addSubview:*&v9[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_videoMirrorView]];
  return v9;
}

double sub_1006C51FC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics) = a1;

  return result;
}

uint64_t sub_1006C5214(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1006C5230(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_10003BD64(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1006C52FC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics] = a5;

  sub_10003BDD4(a6, v18);
  v19 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v18, &v8[v19]);
  swift_endAccess();
  v8[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_sizeCategory] = a7;
  if ((v8[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring] & 1) != 0 || !a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1002837C8(a1);
    swift_unknownObjectWeakAssign();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      if (Strong)
      {
        type metadata accessor for VideoView(0);
        v23 = Strong;
        v24 = sub_100770EEC();

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else if (!Strong)
    {
      goto LABEL_12;
    }

    sub_100283DF4();
    v23 = Strong;
LABEL_11:
  }

LABEL_12:
  v25 = &v8[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize];
  *v25 = a2;
  *(v25 + 1) = a3;
  v25[16] = a4 & 1;
  return [v8 setNeedsLayout];
}

void sub_1006C5500(__n128 a1)
{
  v2 = sub_10076A75C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  v9 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics])
  {
    v16 = &v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize];
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize + 16] & 1) == 0)
    {
      v45 = v3;
      v18 = *v16;
      v17 = v16[1];
      v19 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v1[v19], v11);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_10005AEAC(v11);
        return;
      }

      (*(v13 + 32))(v15, v11, v12);
      v20 = v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_sizeCategory];
      if (v20 != 7)
      {

        [v1 bounds];
        v47.origin.x = 0.0;
        v47.origin.y = 0.0;
        v47.size.width = 0.0;
        v47.size.height = 0.0;
        if (CGRectEqualToRect(v46, v47))
        {
          (*(v13 + 8))(v15, v12);

          return;
        }

        v21 = v1;
        v22.n128_f64[0] = sub_1005B1CD8(v20);
        v23 = v45;
        v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v20 != 6)
        {
          v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v20 != 4)
        {
          v24 = v25;
        }

        (*(v45 + 104))(v5, *v24, v2, v22);
        (*(v23 + 32))(v8, v5, v2);
        v26 = sub_1007701CC();

        (*(v23 + 8))(v8, v2);
        v27 = v21[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isExpanded];
        v28 = *&v21[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_videoMirrorView];
        [v21 bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v37 = [v21 traitCollection];
        v38 = sub_1006C37A4(v37, v30, v32, v34, v36, v18, v17, v26, v27);
        v40 = v39;
        v42 = v41;
        v44 = v43;

        [v28 setFrame:{v38, v40, v42, v44}];
      }

      (*(v13 + 8))(v15, v12);
    }
  }
}

id sub_1006C5978()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoMirrorView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoMirrorView(uint64_t a1)
{
  result = qword_100963AE8;
  if (!qword_100963AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C5A70(uint64_t a1)
{
  sub_100276FE0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006C5B44()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isExpanded) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_videoMirrorView;
  if (qword_10093F788 != -1)
  {
    swift_once();
  }

  v7[4] = *&byte_10099D030[64];
  v7[5] = *&byte_10099D030[80];
  v7[6] = *&byte_10099D030[96];
  v7[7] = *&byte_10099D030[112];
  v7[0] = *byte_10099D030;
  v7[1] = *&byte_10099D030[16];
  v7[2] = *&byte_10099D030[32];
  v7[3] = *&byte_10099D030[48];
  v3 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *(v0 + v2) = sub_1002831F8(0, v7, 1.0, 0.0);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics) = 0;
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
  v6 = sub_10076C38C();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006C5CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  sub_10000A61C(v7, qword_1009A2368);
  sub_10076D17C();
  sub_10076D40C();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

unint64_t sub_1006C5ED0(uint64_t a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52 = sub_10076502C();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10076504C();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10076997C();
  v11 = *(v62 - 8);
  __chkstk_darwin(v62);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940DB0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v14, qword_1009A1708);
  v58 = a7;
  v19 = [a7 traitCollection];
  v63 = sub_100770B3C();

  (*(v15 + 16))(v17, v18, v14);
  v20 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v21 = objc_allocWithZone(v20);
  v22 = sub_10050BDFC(v17, 0, 0, 1);
  sub_100760F6C();
  v23 = sub_10076082C();
  sub_100107BF4(v23, sub_1000368B8);
  v25 = v24;

  v26 = sub_10076081C();
  sub_10050C274(v26, 0, v25);

  result = sub_100760F5C();
  v28 = result;
  if (result >> 62)
  {
    v48 = result;
    result = sub_10077158C();
    v28 = v48;
    v29 = result;
  }

  else
  {
    v29 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = a1;
  v50 = v20;
  v49 = v22;
  if (v29)
  {
    if (v29 < 1)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v60 = v28 & 0xC000000000000001;
    v59 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v31 = _swiftEmptyArrayStorage;
    v61 = v28;
    do
    {
      if (v60)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_100769C3C();
      sub_10076081C();

      v32 = v63;
      v33 = sub_10075F9DC();

      v34 = sub_10076C04C();
      v71 = v34;
      v72 = sub_1006C7038(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v35 = sub_10000DB7C(v70);
      (*(*(v34 - 8) + 104))(v35, v59, v34);
      v36 = v33;
      v37 = v32;
      sub_10076C90C();
      sub_10000CD74(v70);
      sub_10076993C();
      sub_10076994C();
      (*(v11 + 8))(v13, v62);
      sub_10000A570(v70, &v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_10049D428(0, v31[2] + 1, 1, v31);
      }

      v39 = v31[2];
      v38 = v31[3];
      if (v39 >= v38 >> 1)
      {
        v31 = sub_10049D428((v38 > 1), v39 + 1, 1, v31);
      }

      ++v30;

      sub_10000CD74(v70);
      v31[2] = v39 + 1;
      sub_10003F19C(&v67, &v31[5 * v39 + 4]);
    }

    while (v29 != v30);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v40 = [v58 traitCollection];
  sub_10076E20C();

  v41 = sub_10076DDDC();
  swift_allocObject();
  v42 = sub_10076DDBC();
  if (qword_10093F7A8 != -1)
  {
    swift_once();
  }

  v43 = v52;
  v44 = sub_10000A61C(v52, qword_10099D0C8);
  (*(v51 + 16))(v54, v44, v43);
  sub_100760F4C();
  v71 = v50;
  v72 = &protocol witness table for UIView;
  v70[0] = v49;
  v45 = v49;
  sub_10016D554(v31);

  v68 = v41;
  v69 = &protocol witness table for LayoutViewPlaceholder;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  *&v67 = v42;
  v65 = v41;
  v64 = v42;
  swift_retain_n();
  v46 = v55;
  sub_10076503C();
  sub_1006C7038(&unk_100956E70, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
  v47 = v57;
  sub_10076D2AC();

  return (*(v56 + 8))(v46, v47);
}

void *sub_1006C674C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v7 = sub_10076E1EC();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  v68 = sub_10000A5D4(&unk_1009567A0, &unk_1007A6E20);
  v14 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - v15;
  v16 = sub_10000A5D4(&qword_1009459C0, &unk_1007A1DA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v70[0] = sub_100760F6C();
  sub_10076083C();
  v19 = sub_10076F64C();
  sub_1006C7038(&qword_1009467D0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v69 = a3;
  v66 = v19;
  sub_10076F56C();

  v20 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1000A912C(v18, v4 + v21, &qword_1009459C0, &unk_1007A1DA0);
  swift_endAccess();
  sub_1001063C8();
  sub_10000CFBC(v18, &qword_1009459C0, &unk_1007A1DA0);
  LOBYTE(v19) = sub_100760F4C();
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v19 & 1;
  v22 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  if (v19)
  {
    v23 = sub_100770CFC();
  }

  else
  {
    v23 = sub_100770D1C();
  }

  v24 = *(v22 + qword_10095B640);
  *(v22 + qword_10095B640) = v23;
  v25 = v23;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_10050C644();
  }

  v26 = sub_100760F5C();
  if (v26 >> 62)
  {
    v57 = v26;
    v27 = sub_10077158C();
    v26 = v57;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v4;
  v60 = a1;
  if (v27)
  {
    v28 = v26;
    v70[0] = _swiftEmptyArrayStorage;
    result = sub_1004BB920(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v31 = v70[0];
    v32 = v28;
    v65 = v28 & 0xC000000000000001;
    v33 = v28;
    v34 = v27;
    do
    {
      if (v65)
      {
        v35 = sub_10077149C();
      }

      else
      {
        v35 = *(v32 + 8 * v30 + 32);
      }

      v73 = v35;
      sub_100769C4C();
      sub_1006C7038(&qword_1009567B0, &type metadata accessor for PrivacyHeaderSupplementaryItem, &protocol conformance descriptor for PrivacyHeaderSupplementaryItem);
      v36 = v67;
      sub_10076F56C();

      v70[0] = v31;
      v38 = v31[2];
      v37 = v31[3];
      if (v38 >= v37 >> 1)
      {
        sub_1004BB920((v37 > 1), v38 + 1, 1);
        v31 = v70[0];
      }

      ++v30;
      v31[2] = v38 + 1;
      (*(v14 + 32))(v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, v36, v68);
      v32 = v33;
    }

    while (v34 != v30);

    v4 = v64;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  sub_100107E88();
  v39 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v31;

  sub_10010666C();
  if (sub_100760F4C())
  {
    v40 = *(v63 + 104);
    v63 += 104;
    v41 = v58;
    LODWORD(v68) = enum case for Separator.Position.top(_:);
    v67 = v40;
    (v40)(v58);
    v42 = sub_10076D67C();
    v71 = v42;
    v72 = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v70);
    sub_10076D66C();
    v43 = v61;
    sub_10076E1FC();
    v44 = sub_10076E21C();
    v45 = 1;
    v69 = *(*(v44 - 8) + 56);
    v69(v43, 0, 1, v44);
    v46 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_1000A912C(v43, v64 + v46, &unk_1009467C0, &unk_100787A10);
    swift_endAccess();
    sub_100106E28();
    v47 = v64;
    sub_10000CFBC(v43, &unk_1009467C0, &unk_100787A10);
    if (*(*(v47 + v39) + 16))
    {
      (v67)(v41, v68, v62);
      v71 = v42;
      v72 = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v70);
      sub_10076D66C();
      v48 = v59;
      sub_10076E1FC();
      v45 = 0;
    }

    else
    {
      v48 = v59;
    }

    v69(v48, v45, 1, v44);
    v56 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v47 + v56;
    v55 = v48;
  }

  else
  {
    v49 = sub_10076E21C();
    v50 = *(*(v49 - 8) + 56);
    v48 = v61;
    v50(v61, 1, 1, v49);
    v51 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_1000A912C(v48, v64 + v51, &unk_1009467C0, &unk_100787A10);
    swift_endAccess();
    sub_100106E28();
    sub_10000CFBC(v48, &unk_1009467C0, &unk_100787A10);
    v50(v48, 1, 1, v49);
    v52 = v64;
    v53 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v48;
  }

  sub_1000A912C(v55, v54, &unk_1009467C0, &unk_100787A10);
  swift_endAccess();
  sub_100106E3C();
  return sub_10000CFBC(v48, &unk_1009467C0, &unk_100787A10);
}

uint64_t sub_1006C7038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006C7080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v9 = sub_10000A5D4(&qword_100963B40, qword_1007B3938);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v64 = sub_10076F1BC();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v50 - v14;
  v15 = sub_10076F68C();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v50 - v18;
  sub_100760C4C();
  sub_10076F63C();
  v19 = v70;
  if (!v70)
  {
    result = sub_10076F5DC();
    __break(1u);
    return result;
  }

  swift_allocObject();

  v58 = v19;
  v20 = sub_100760C2C();
  v21 = sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
  v22 = *(v11 + 72);
  v63 = v11;
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v53 = 2 * v22;
  v52 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100784500;
  v67 = v23;
  *&v70 = v20;
  v56 = v20;

  sub_10076F19C();
  sub_10000A5D4(&unk_1009467A0, &qword_1007890C8);
  type metadata accessor for LinkPresentationProvider();
  *&v70 = swift_allocObject();
  swift_allocObject();
  *&v70 = sub_10075F75C();
  sub_10076F19C();
  v73 = v24;
  v61 = a4;
  v62 = a1;
  if (a2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      swift_unknownObjectRetain();
      sub_1007657AC();
      v25 = sub_1007657BC();
      v51 = v26;
      v66 = v25;
      swift_unknownObjectRetain();
      v27 = sub_1007657CC();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_10076139C();
  sub_10076FC1C();
  sub_10076FA4C();
  sub_10076131C();
  v28 = sub_10076FA3C();
  sub_10076615C();
  swift_allocObject();
  swift_retain_n();
  v66 = v28;
  v27 = sub_10076612C();

  if (a2)
  {
    v51 = &protocol witness table for BasicImpressionsTracker;
LABEL_7:
    swift_getObjectType();
    v29 = swift_conformsToProtocol2();
    v65 = v27;
    if (v29)
    {
      sub_1007698FC();
      swift_getObjectType();
      swift_unknownObjectRetain();

      *&v70 = sub_10076AB8C();
      v30 = v50;
      sub_10076F19C();
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        v24 = sub_10049DC98((v31 > 1), v32 + 1, 1, v24);
      }

      v33 = v67;
      swift_unknownObjectRelease();
      *(v24 + 16) = v32 + 1;
      (*(v63 + 32))(v24 + v33 + v32 * v22, v30, v64);
      v73 = v24;
    }

    else
    {
    }

    goto LABEL_13;
  }

  v51 = &protocol witness table for BasicImpressionsTracker;
  v65 = v27;
LABEL_13:
  v50 = (8 * v22);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10078B310;
  sub_100762F0C();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v34 = v68;
  v35 = v69;
  v36 = *(v68 + 16);
  v37 = v54;
  v36(v54, v69, v15);
  (*(v34 + 56))(v37, 0, 1, v15);
  swift_allocObject();
  *&v70 = sub_100762EFC();
  sub_10076F19C();
  v38 = sub_100767D5C();
  sub_10076925C();
  v39 = sub_10076924C();
  sub_10076922C();

  v40 = v55;
  v36(v55, v35, v15);
  v41 = objc_allocWithZone(v38);
  *&v70 = sub_100767D1C();
  sub_10076F19C();
  *&v70 = [objc_allocWithZone(sub_100764FAC()) init];
  sub_10076F19C();
  v36(v40, v35, v15);
  sub_10076F19C();
  sub_10000A5D4(&qword_1009552D8, &qword_10079FCC8);
  *&v70 = v66;
  *(&v70 + 1) = v51;
  sub_10076F19C();
  sub_10076615C();
  *&v70 = v65;
  sub_10076F19C();
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  *&v70 = sub_1006BCE40(25);
  sub_10076F19C();
  type metadata accessor for TodayCardGridTracker();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1000FC9A4(_swiftEmptyArrayStorage);
  *&v70 = v42;
  sub_10076F19C();
  sub_1000F9700(v52);
  sub_10075E33C();
  swift_allocObject();

  *&v70 = sub_10075E34C();
  v43 = v57;
  sub_10076F19C();
  v44 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_10049DC98(0, *(v44 + 2) + 1, 1, v44);
  }

  v45 = v61;
  v47 = *(v44 + 2);
  v46 = *(v44 + 3);
  if (v47 >= v46 >> 1)
  {
    v44 = sub_10049DC98((v46 > 1), v47 + 1, 1, v44);
  }

  *(v44 + 2) = v47 + 1;
  (*(v63 + 32))(&v44[v67 + v47 * v22], v43, v64);
  sub_10076F64C();

  sub_10076F5FC();
  *&v70 = v44;
  sub_10000A5D4(&qword_100943F98, &unk_1007B75A0);
  sub_1006C7ADC();
  sub_10076F61C();

  *&v70 = v45;
  sub_10076F61C();

  v48 = sub_10076F62C();

  swift_unknownObjectRelease();

  (*(v68 + 8))(v69, v15);
  return v48;
}

unint64_t sub_1006C7ADC()
{
  result = qword_100943FA0;
  if (!qword_100943FA0)
  {
    sub_10000CE78(&qword_100943F98, &unk_1007B75A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943FA0);
  }

  return result;
}

uint64_t sub_1006C7B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  (*(a2 + 80))(0, 0, v5, v6, a1, a2);
  swift_unknownObjectRelease();
  if ((*(a2 + 56))(a1, a2))
  {
    v7 = (v4)(a1, a2);
    v9 = v8;
    v10 = (*(a2 + 8))(a1, a2);
    sub_1006BD2F4(v7, v9, v10, v11 & 1);

    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(0, 1, a1, a2);
  (*(a2 + 40))(0, 0, a1, a2);
  v12 = *(a2 + 64);

  return v12(0, a1, a2);
}

double sub_1006C7CCC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a4;
  v45 = a3;
  v44 = a2;
  v10 = sub_10076C7EC();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100766EBC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C77C();
  v17 = sub_100766E7C();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    v19 = sub_10076C83C();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_10076F63C();
      v43 = v49[0];
      if (v49[0])
      {
        v41 = v10;
        (*(a6 + 8))(a5, a6);
        v22 = v21;
        sub_100762DEC();
        if ((v22 & 1) != 0 || (v23 = sub_100762DDC(), v23 != sub_100762DDC()))
        {
          v24 = sub_100762DEC();
          sub_1006BD024(v24);
          v26 = v25;
          ObjectType = v20;
          v27 = a5;
          v29 = v28;
          v30 = *(a6 + 32);
          swift_unknownObjectRetain();
          v31 = v30(v27, a6);
          (*(a6 + 80))(v26, v29, v31, v32, v27, a6);
          swift_unknownObjectRelease();
          v33 = sub_100762DEC();
          (*(a6 + 16))(v33, 0, v27, a6);
          v34 = v29;
          a5 = v27;
          v20 = ObjectType;
          (*(a6 + 40))(v26, v34, a5, a6);
          swift_unknownObjectRelease();
        }

        v35 = *(a6 + 64);

        v35(v36, a5, a6);
        if ((*(a6 + 32))(a5, a6))
        {
          v38 = v37;
          ObjectType = swift_getObjectType();
          v49[3] = sub_100762DFC();
          v49[4] = sub_10003BD0C();
          v49[0] = v20;

          sub_10076C80C();
          sub_100760C4C();
          sub_10076F64C();
          v39 = v47;
          sub_10076FC1C();
          (*(v38 + 112))(v49, v39, v44, v12, v45, v48, ObjectType, v38);
          swift_unknownObjectRelease();

          (*(v46 + 8))(v12, v41);
          sub_10000CD74(v49);
        }

        (*(a6 + 88))(a5, a6);
        [v7 setNeedsLayout];
      }
    }
  }

  return result;
}

double sub_1006C8124()
{
  qword_100963B50 = 0;
  swift_unknownObjectWeakInit();
  return result;
}

char *sub_1006C8164(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = sub_100765B7C();
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35 = &v34 - v10;
  v11 = sub_10076048C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_100963B78) = 0;
  *(v3 + qword_100963B80) = 0;
  *(v3 + qword_100963B88) = 0;
  *(v3 + qword_100963B90) = 0;
  *(v3 + qword_100963B98) = 0;

  v15 = sub_100483244(a1, a2);
  v15[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v16 = v15;
  v17 = [v16 navigationItem];
  [v17 setLargeTitleDisplayMode:2];

  v18 = sub_10076C03C();
  v39[3] = v18;
  v39[4] = sub_1006CB02C(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v19 = sub_10000DB7C(v39);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v18);
  LOBYTE(v18) = sub_10076C90C();
  sub_10000CD74(v39);
  if (v18)
  {
    v20 = [v16 navigationItem];
    sub_10076AB4C();
    if (v21)
    {
      v22 = sub_10076FF6C();
    }

    else
    {
      v22 = 0;
    }

    [v20 setTitle:v22];

LABEL_12:
    goto LABEL_13;
  }

  (*(v12 + 104))(v14, enum case for SystemImage.listBullet(_:), v11);
  v23 = sub_10076046C();
  (*(v12 + 8))(v14, v11);
  v24 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v23 style:0 target:v16 action:"toggleDisplayStyleWithAction:"];

  v25 = qword_100963B78;
  v26 = *&v16[qword_100963B78];
  *&v16[qword_100963B78] = v24;

  v27 = [v16 navigationItem];
  v28 = *&v16[v25];
  [v27 setRightBarButtonItem:v28];

  v29 = *&v16[v25];
  if (v29)
  {
    v34 = a2;
    v22 = v29;
    sub_10076AACC();
    (*(v36 + 104))(v8, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v6);
    sub_1006CB02C(&qword_100946810, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
    sub_10077018C();
    sub_10077018C();
    if (v39[0] == v37 && v39[1] == v38)
    {
      v30 = v8;
      v31 = 1;
    }

    else
    {
      v30 = v8;
      v31 = sub_10077167C();
    }

    v32 = *(v36 + 8);
    v32(v30, v6);
    v32(v35, v6);

    [v22 setSelected:v31 & 1];
    goto LABEL_12;
  }

LABEL_13:

  return v16;
}

id sub_1006C8694()
{
  v1 = qword_100963B80;
  v2 = *(v0 + qword_100963B80);
  if (v2)
  {
    v3 = *(v0 + qword_100963B80);
  }

  else
  {
    v4 = sub_1006CAD80();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_1006C86F4()
{
  v0 = sub_10077111C();
  sub_10000DB18(v0, qword_100963B60);
  sub_10000A61C(v0, qword_100963B60);
  sub_1007710CC();
  v1 = sub_10076FF6C();
  v2 = [objc_opt_self() systemImageNamed:v1];

  sub_1007710BC();
  v3 = [objc_opt_self() configurationWithScale:1];
  sub_100770F4C();
  sub_100770FBC();
  sub_100770FFC();
  return result;
}

void sub_1006C87DC(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10076857C();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v11 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10076856C();
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setHidden:*&v1[v3] != 0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1006C891C(void *a1)
{
  v2 = *&v1[qword_100963B88];
  *&v1[qword_100963B88] = a1;
  if (a1)
  {
    v5 = v2;
    v3 = a1;
    [v1 presentViewController:v3 animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  if (!v2)
  {
    return;
  }

  v5 = v2;
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v3 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_3;
  }

LABEL_4:
}

void sub_1006C89E4(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[qword_100963B90];
    if (!v3 || (v4 = a1, type metadata accessor for PageFacetsViewController(0), v5 = v4, v6 = v3, LOBYTE(v4) = sub_100770EEC(), v5, v6, (v4 & 1) == 0))
    {
      v7 = *&v2[qword_100963B88];
      *&v2[qword_100963B88] = 0;
      if (v7)
      {
        v8 = [v7 presentingViewController];
        if (v8)
        {
          v9 = v8;
          [v8 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }

  v10 = *&v2[qword_100963B90];
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate + 8] = &off_10089FFB0;
    swift_unknownObjectWeakAssign();
    v11 = objc_allocWithZone(UINavigationController);
    v12 = v10;
    v13 = [v11 initWithRootViewController:v12];
    v14 = [v13 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    [v13 setModalPresentationStyle:7];
    v17 = [v13 presentationController];
    if (v17)
    {
      v18 = v17;
      [v17 setDelegate:v2];
    }

    [v13 setPreferredContentSize:{450.0, 450.0}];
    v19 = [v13 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1006C8694();
      [v20 setSourceView:v21];
    }

    v22 = [v13 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setPermittedArrowDirections:1];
    }

    v24 = [v13 popoverPresentationController];

    if (v24)
    {
      v25 = sub_1006C8694();
      v26 = [v25 titleLabel];

      if (v26)
      {
        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v34;
        v36 = v32;
        v37 = v30;
        v38 = v28;
      }

      else
      {
        [*&v2[qword_100963B80] bounds];
      }

      MidX = CGRectGetMidX(*&v38);
      [*&v2[qword_100963B80] bounds];
      [v24 setSourceRect:{MidX, CGRectGetMaxY(v46), 10.0, 10.0}];
    }

    v44 = *&v2[qword_100963B88];
    *&v2[qword_100963B88] = v13;
    v43 = v13;
    [v2 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v39 = *&v2[qword_100963B88];
    *&v2[qword_100963B88] = 0;
    if (!v39)
    {
      return;
    }

    v44 = v39;
    v40 = [v39 presentingViewController];
    if (v40)
    {
      v41 = v40;
      [v40 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_1006C8E24()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 titleView];

  v4 = sub_1006C8694();
  v5 = v4;
  if (v3)
  {
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v6 = sub_100770EEC();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = qword_100963B80;
  [*&v1[qword_100963B80] setAlpha:0.0];
  v8 = [v1 navigationItem];
  [v8 setTitleView:*&v1[v7]];

  v9 = [v1 navigationItem];
  v10 = [v9 navigationBar];

  if (v10)
  {
    [v10 layoutIfNeeded];
  }

LABEL_7:
  v11 = qword_100963B80;
  v12 = qword_100963B98;
  v13 = 0.0;
  if (v1[qword_100963B98])
  {
    v13 = 1.0;
  }

  [*&v1[qword_100963B80] setAlpha:v13];
  v14 = *&v1[v11];
  v15 = v1[v12];

  return [v14 setUserInteractionEnabled:v15];
}

void sub_1006C8FC4()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = sub_1006C8694();
  sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_100770F1C();
  [v1 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_1006CB558, v2}];
}

void sub_1006C90BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006C9110();
  }
}

void sub_1006C9110()
{
  v1 = v0;
  sub_10076AB2C();
  v2 = sub_10076AAAC();
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v4 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v5 = sub_10067A804(v2, 1, v3);

  v7 = *(v1 + qword_100963B90);
  *(v1 + qword_100963B90) = v5;
  v6 = v5;
  sub_1006C89E4(v7);
}

void sub_1006C91E8(void *a1)
{
  v1 = a1;
  sub_1006C8FC4();
}

double sub_1006C9230(id a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {

    return result;
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    v12 = sub_1006C8694();
    [v12 sizeToFit];

    [*&v1[qword_100963B80] setNeedsLayout];
  }

  return result;
}

void sub_1006C9394(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1006C9230(a3);
}

uint64_t sub_1006C9400()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000A5D4(&unk_10094F490, &unk_100798300);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - v2;
  v3 = sub_10000A5D4(&qword_100964180, &unk_1007B2520);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v22 - v4;
  v25 = sub_10000A5D4(&unk_100964188, &qword_1007B3A80);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  sub_1006E0C94();
  v8 = *(v0 + qword_10099E360);
  sub_10076AB0C();
  v9 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v10 = sub_10077068C();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v10;
  sub_10000A5D4(&qword_100964198, &qword_1007B3A88);
  sub_100071820(&unk_1009641A0, &qword_100964198, &qword_1007B3A88, &protocol conformance descriptor for SyncEvent<A>);
  v30 = v0;
  sub_10076F46C();
  v11 = v8;

  (*(v5 + 8))(v7, v25);
  sub_10000CD74(v31);
  sub_10076AAAC();
  sub_100764EDC();

  v12 = sub_10077068C();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v12;
  v25 = sub_10000A5D4(&unk_10094F4A0, &qword_1007972C0);
  sub_100071820(&unk_1009641B0, &unk_10094F4A0, &qword_1007972C0, &protocol conformance descriptor for AsyncEvent<A>);
  v13 = v27;
  sub_10076F46C();

  v14 = v29;
  v15 = *(v28 + 8);
  v15(v13, v29);
  sub_10000CD74(v31);
  v28 = v11;
  sub_10076AAAC();
  sub_100764EEC();

  v16 = sub_10077068C();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v16;
  sub_10076F46C();

  v15(v13, v14);
  sub_10000CD74(v31);
  v17 = sub_10076C03C();
  v32 = v17;
  v33 = sub_1006CB02C(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v18 = sub_10000DB7C(v31);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_10076C90C();
  result = sub_10000CD74(v31);
  if (v17)
  {
    sub_10076AAAC();
    sub_100764E8C();

    v20 = sub_10077068C();
    v32 = v9;
    v33 = &protocol witness table for OS_dispatch_queue;
    v31[0] = v20;
    sub_10000A5D4(&unk_10094F4B0, &qword_1007B2530);
    sub_100071820(&qword_1009641C0, &unk_10094F4B0, &qword_1007B2530, &protocol conformance descriptor for SyncEvent<A>);
    v21 = v22;
    sub_10076F46C();

    (*(v23 + 8))(v21, v24);
    return sub_10000CD74(v31);
  }

  return result;
}

void sub_1006C99E4(uint64_t a1)
{
  v2 = sub_10076AAFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_1009641C8, qword_1007B3A90);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  sub_100016E2C(a1, &v20 - v7, &qword_1009641C8, qword_1007B3A90);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_10076AADC();
    v13 = v12;
    v14 = sub_10076AAEC();
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for EmptyStateView(0));
    sub_10070982C(v11, v13, v14, v16);
    v18 = objc_allocWithZone(sub_10076617C());
    v19 = sub_10076616C();
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  sub_1006C87DC(v10);
}

void (*sub_1006C9BE0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006CB518;
}

void (*sub_1006C9C44(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006CB4FC;
}

id (*sub_1006C9CA8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006CB570;
}

void sub_1006C9D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100964138, &unk_1007B3A68);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-1] - v5;
  v7 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-1] - v8;
  v10 = sub_10076C03C();
  v24[3] = v10;
  v24[4] = sub_1006CB02C(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v11 = sub_10000DB7C(v24);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v10);
  LOBYTE(v10) = sub_10076C90C();
  sub_10000CD74(v24);
  if (v10)
  {
    sub_1006CA420(v12);
  }

  else
  {
    sub_100764EAC();
    v13 = sub_10075F8EC();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      sub_10000CFBC(v9, &unk_10094F4C0, &qword_100798310);
      v15 = 0;
    }

    else
    {
      v16 = sub_10075F7CC();
      (*(v14 + 8))(v9, v13);
      v17 = *(v16 + 16);

      v15 = v17 != 0;
    }

    *(a2 + qword_100963B98) = v15;
    sub_1006C8E24();
    v18 = sub_1006C8694();
    sub_100764F2C();
    v19 = sub_100764EBC();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v6, a1, v19);
    (*(v20 + 56))(v6, 0, 1, v19);
    sub_100764E7C();
    sub_10000CFBC(v6, &qword_100964138, &unk_1007B3A68);
    v21 = sub_10076FF6C();

    [v18 setTitle:v21 forState:0];

    v22 = qword_100963B80;
    [*(a2 + qword_100963B80) sizeToFit];
    [*(a2 + v22) setNeedsLayout];
  }
}

uint64_t sub_1006CA078(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  sub_10076F64C();
  sub_10076FC1C();
  sub_100263BF0(a1, 1, v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_1006CA190(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006CB154;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8F0C;
}

unint64_t sub_1006CA220@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  a1[3] = &type metadata for ArcadeSeeAllGamesPageGridProvider;
  result = sub_1006CB0C8();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1006CA278@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArcadeSeeAllGamesPageShelfLayoutSectionProvider;
  result = sub_1006CB074();
  *(a1 + 32) = result;
  return result;
}

void sub_1006CA2AC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100964160, &qword_1007B3A78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  sub_1007371C4(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v6 = v7[1];
    sub_100767CCC();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_1006CA420(__n128 a1)
{
  v2 = v1;
  v3 = sub_100765B7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076AAAC();
  sub_10076AACC();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v9 = v2;
  v10 = sub_1000AA550(v7, v6, sub_1006CB194, v8);

  (*(v4 + 8))(v6, v3);
  sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
  v11 = [(objc_class *)v10 image];
  v12 = v10;
  v19.value._countAndFlagsBits = 0;
  v19.value._object = 0;
  v16.value.super.isa = v11;
  v16.is_nil = 0;
  v17.value.super.super.isa = v10;
  isa = sub_10077055C(v19, v16, v17, v18).super.super.isa;
  v14 = [v9 navigationItem];
  [v14 setRightBarButtonItem:isa];
}

void sub_1006CA5FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  sub_1006CB1B8(v5);
}

void sub_1006CA65C(void *a1)
{
  v1 = a1;
  sub_10076AB3C();
  sub_1006C891C(0);
}

uint64_t sub_1006CA6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10075DB7C();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100964140, &unk_1007869B0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v32 - v20;
  sub_10005C684(a1, v11, v19);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_10005C6E8(v11, v22);
LABEL_9:
    v27 = 0;
    return v27 & 1;
  }

  v23 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
  sub_100050DA4(&v11[*(v23 + 48)], v21);
  sub_100765E7C();
  v24 = *(v6 + 48);
  sub_100016E2C(v17, v8, &unk_1009435D0, &qword_100785850);
  sub_100016E2C(v21, &v8[v24], &unk_1009435D0, &qword_100785850);
  v25 = v33;
  v26 = *(v33 + 48);
  if (v26(v8, 1, v4) != 1)
  {
    sub_100016E2C(v8, v14, &unk_1009435D0, &qword_100785850);
    if (v26(&v8[v24], 1, v4) != 1)
    {
      v29 = v32;
      (*(v25 + 32))(v32, &v8[v24], v4);
      sub_1006CB02C(&qword_100944C38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v30 = v25;
      v27 = sub_10076FF1C();
      v31 = *(v30 + 8);
      v31(v29, v4);
      sub_10000CFBC(v17, &unk_1009435D0, &qword_100785850);
      sub_10000CFBC(v21, &unk_1009435D0, &qword_100785850);
      v31(v14, v4);
      sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
      return v27 & 1;
    }

    sub_10000CFBC(v17, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v21, &unk_1009435D0, &qword_100785850);
    (*(v25 + 8))(v14, v4);
    goto LABEL_8;
  }

  sub_10000CFBC(v17, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(v21, &unk_1009435D0, &qword_100785850);
  if (v26(&v8[v24], 1, v4) != 1)
  {
LABEL_8:
    sub_10000CFBC(v8, &unk_100964140, &unk_1007869B0);
    goto LABEL_9;
  }

  sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
  v27 = 1;
  return v27 & 1;
}

void sub_1006CAB78()
{
  v1 = *(v0 + qword_100963B90);
}

void sub_1006CABD8(uint64_t a1)
{
  v2 = *(a1 + qword_100963B90);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController(uint64_t a1)
{
  result = qword_100963BC8;
  if (!qword_100963BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006CACEC()
{
  sub_10076AB3C();
  v1 = *(v0 + qword_100963B90);
  *(v0 + qword_100963B90) = 0;
  sub_1006C89E4(v1);
}

id sub_1006CAD80()
{
  v0 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10000A5D4(&qword_100964138, &unk_1007B3A68);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() buttonWithType:1];
  sub_100764F2C();
  v7 = sub_100764EBC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_100764E7C();
  sub_10000CFBC(v5, &qword_100964138, &unk_1007B3A68);
  v8 = sub_10076FF6C();

  [v6 setTitle:v8 forState:0];

  if (qword_1009414E0 != -1)
  {
    swift_once();
  }

  v9 = sub_10077111C();
  v10 = sub_10000A61C(v9, qword_100963B60);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v2, v10, v9);
  (*(v11 + 56))(v2, 0, 1, v9);
  sub_10077114C();
  v12 = v6;
  [v12 setAlpha:0.0];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  [v12 setPointerInteractionEnabled:1];
  return v12;
}

uint64_t sub_1006CB02C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006CB074()
{
  result = qword_100964168;
  if (!qword_100964168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100964168);
  }

  return result;
}

unint64_t sub_1006CB0C8()
{
  result = qword_100964170;
  if (!qword_100964170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100964170);
  }

  return result;
}

uint64_t sub_1006CB11C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006CB15C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1006CB1B8(__n128 a1)
{
  v2 = v1;
  v3 = sub_100765B7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19[-1] - v8;
  sub_10076AB1C();
  sub_10076AACC();
  (*(v4 + 104))(v6, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v3);
  sub_1006CB02C(&qword_100946810, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_10077018C();
  sub_10077018C();
  if (v19[0] == v19[5] && v19[1] == v19[6])
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10077167C();
  }

  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);

  v12 = sub_10076C03C();
  v19[3] = v12;
  v19[4] = sub_1006CB02C(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v13 = sub_10000DB7C(v19);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v12);
  LOBYTE(v12) = sub_10076C90C();
  sub_10000CD74(v19);
  if (v12)
  {
    sub_1006CA420(v14);
  }

  else
  {
    v15 = [v2 navigationItem];
    v16 = [v15 rightBarButtonItem];

    [v16 setSelected:v10 & 1];
  }

  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v17 = v19[0];
  if (v10)
  {
    sub_100767CAC();
  }

  else
  {
    sub_100767CDC();
  }
}

uint64_t sub_1006CB520()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1006CB578()
{
  result = qword_100950DA8;
  if (!qword_100950DA8)
  {
    type metadata accessor for GameCenterActivityFeedCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DA8);
  }

  return result;
}

double sub_1006CB5D0()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  v6 = sub_100630CB4();
  swift_getObjectType();
  sub_100582810(v6, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1006CB714()
{
  v1 = qword_100944BA0;
  if (*(v0 + qword_100944BA0))
  {
    v2 = *(v0 + qword_100944BA0);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_100885A30;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    *(v2 + 72) = sub_1006CC33C;
    *(v2 + 80) = v3;

    sub_1000167E0(v4, v5);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1006CB828()
{
  v1 = qword_100944BB0;
  if (*(v0 + qword_100944BB0))
  {
    v2 = *(v0 + qword_100944BB0);
  }

  else
  {
    sub_1006CB714();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1006CB8CC(double a1)
{
  v3 = sub_10075D9EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_10000A5D4(&qword_100942698, &qword_10079DCB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_10075D99C();
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = qword_10099CA58;
  if (*&v1[qword_10099CA58] != a1)
  {
    v44 = v4;
    v45 = v3;
    v21 = v1;
    v22 = v17;
    v23 = [v1 navigationItem];
    sub_1007705CC();

    if ((*(v22 + 48))(v15, 1, v16) == 1)
    {
      sub_10000CFBC(v15, &qword_100942698, &qword_10079DCB0);
    }

    else
    {
      v43 = v22;
      (*(v22 + 32))(v19, v15, v16);
      v41 = v21;
      v42 = [v21 navigationItem];
      v40 = sub_10000A5D4(&unk_10094E7E0, qword_100785360);
      inited = swift_initStackObject();
      v39 = xmmword_100783DD0;
      *(inited + 16) = xmmword_100783DD0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v25 = objc_opt_self();
      v37 = v25;
      v38 = NSForegroundColorAttributeName;
      v26 = [v25 labelColor];
      v27 = [v26 colorWithAlphaComponent:a1];

      v36 = sub_1000325F0();
      *(inited + 64) = v36;
      *(inited + 40) = v27;
      sub_1000FC5F4(inited);
      swift_setDeallocating();
      sub_10000CFBC(inited + 32, &unk_100948B10, &unk_10078B4F0);
      sub_10075DA0C();
      v28 = swift_initStackObject();
      *(v28 + 16) = v39;
      *(v28 + 32) = v38;
      v29 = [v37 labelColor];
      v30 = [v29 colorWithAlphaComponent:*&v41[v20]];

      *(v28 + 64) = v36;
      *(v28 + 40) = v30;
      sub_1000FC5F4(v28);
      swift_setDeallocating();
      sub_10000CFBC(v28 + 32, &unk_100948B10, &unk_10078B4F0);
      sub_10075DA0C();
      sub_1006CC2F4(&unk_100954490, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_10075DA8C();
      v31 = *(v44 + 8);
      v32 = v45;
      v31(v6, v45);
      v31(v9, v32);
      v33 = v43;
      (*(v43 + 56))(v12, 0, 1, v16);
      v34 = v42;
      sub_1007705DC();

      (*(v33 + 8))(v19, v16);
    }
  }
}

char *sub_1006CBE2C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_1009A3270) = 0;
  *(v2 + qword_10099CA58) = 0x3FF0000000000000;
  *(v2 + qword_100944BA0) = 0;
  *(v2 + qword_100944BA8) = 0x4034000000000000;
  *(v2 + qword_10099CA60) = 0;
  *(v2 + qword_100944BB0) = 0;

  v5 = sub_100483C38(a1, a2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NavigationBarVisibilityScrollObserver();
  v7 = swift_allocObject();
  *(v7 + 32) = xmmword_100788B30;
  *(v7 + 16) = sub_1006CC2EC;
  *(v7 + 24) = v6;
  v8 = qword_1009A3270;
  *&v5[qword_1009A3270] = v7;
  v9 = v5;

  v10 = *&v9[qword_10099E390];

  if (*&v5[v8])
  {
    sub_1006CC2F4(&qword_100946578, type metadata accessor for NavigationBarVisibilityScrollObserver, &unk_10079A978);
  }

  sub_10076668C();

  return v9;
}

void sub_1006CBFE8(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + qword_10099CA58);
    *(Strong + qword_10099CA58) = a2;
    sub_1006CB8CC(v5);
  }
}

uint64_t sub_1006CC05C()
{
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784500;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = &off_1008A00D8;
  swift_unknownObjectWeakAssign();
  v2 = sub_1006CC2F4(&qword_100946580, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver, &unk_1007A115C);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100784500;
  *(v3 + 32) = sub_1006DE6C0();
  *(v3 + 40) = v4;
  v5 = sub_1006CB828();
  v6 = sub_1006CC2F4(&qword_100944C58, type metadata accessor for UberedCollectionElementsObserver, &unk_1007B0994);
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  sub_10076A43C();
  swift_allocObject();
  *(v0 + 48) = sub_10076A42C();
  *(v0 + 56) = &protocol witness table for CompoundCollectionElementsObserver;
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t type metadata accessor for GenericDiffablePageViewController(uint64_t a1)
{
  result = qword_100964208;
  if (!qword_100964208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006CC2B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006CC2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006CC354(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    return v3 ^ a2[1] ^ 1u;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    return v3 ^ a2[1] ^ 1u;
  }

  return result;
}

double sub_1006CC39C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_10076664C();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&qword_100957BC8, &qword_1007A46C0);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = sub_100760F8C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100760FAC();
  sub_1006CDB58(&qword_10094FAE8, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  sub_10076332C();
  if (v46)
  {
    sub_100760F9C();
    v20 = (*(v16 + 88))(v18, v15);
    if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
    {

      (*(v16 + 8))(v18, v15);
    }

    else
    {
      if (v20 == enum case for ProductReview.ReviewSource.user(_:))
      {
        (*(v16 + 96))(v18, v15);
        v41 = *v18;
        v21 = v45;
        v22 = sub_1001671EC();
        sub_1007633DC();
        sub_10076FDBC();
        swift_getKeyPath();
        sub_10076338C();

        v23 = v46;
        v24 = [v46 horizontalSizeClass];

        v25 = (v24 == 1) & !sub_1006CD948();
        v26 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shouldHandleTextSelection;
        v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shouldHandleTextSelection] = v25;
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer] setEnabled:?];
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer] setEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel] setUserInteractionEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel] setUserInteractionEnabled:v22[v26]];
        sub_10013E624();
        v27 = v44;
        sub_10076FD8C();
        v28 = sub_1006CD6D4(a1, v46);
        swift_getKeyPath();
        sub_10076FD9C();

        v29 = v46;
        v30 = sub_100630CB4();
        if (v28)
        {
          v31 = 256;
        }

        else
        {
          v31 = 0;
        }

        sub_1003720DC(v41, v31 | v28 & 1, v29, v30, v42);
        swift_unknownObjectRelease();
        [v22 setHidden:0];

        (*(v43 + 8))(v14, v27);
      }

      else
      {
        if (v20 == enum case for ProductReview.ReviewSource.reviewSummary(_:))
        {
          (*(v16 + 96))(v18, v15);
          v42 = *v18;
          v32 = sub_10016720C();
          sub_1007633DC();
          sub_10076FDBC();
          swift_getKeyPath();
          sub_10013E624();
          v33 = v44;
          sub_10076FD9C();

          v34 = v46;
          if (v46 == 2)
          {
            sub_10076331C();
            v35 = v39;
            sub_1007665CC();
            sub_1006CDB58(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
            v36 = v41;
            v37 = sub_10077124C();
            v38 = *(v40 + 8);
            v38(v35, v36);
            v38(v7, v36);
            v34 = v37 ^ 1;
          }

          sub_1007554A4(v42, v34 & 1, 0, 0);
          [v32 setHidden:0];

          (*(v43 + 8))(v11, v33);
        }

        else
        {
          (*(v16 + 8))(v18, v15);
        }

        v21 = v45;
      }

      [v21 setNeedsLayout];
    }
  }

  return result;
}

void sub_1006CCA88(uint64_t a2@<X8>)
{
  v3 = sub_10076B6EC();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v9 - 8);
  v42 = sub_10000A5D4(&qword_10094A330, qword_10078D568);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v36 - v12;
  v13 = sub_10000A5D4(&qword_1009647F8, &qword_1007B3D20);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  sub_100760FAC();
  sub_1006CDB58(&qword_10094FAE8, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  sub_10076332C();
  if (!v43)
  {
    v22 = sub_100760F8C();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    sub_10000CFBC(v18, &qword_1009647F8, &qword_1007B3D20);
    goto LABEL_15;
  }

  v40 = a2;

  sub_100760F9C();

  v19 = sub_100760F8C();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_1006CDAE4(v18, v15);
  v21 = (*(v20 + 88))(v15, v19);
  if (v21 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    (*(v20 + 8))(v15, v19);
LABEL_15:
    sub_10000A5D4(&qword_10094AA58, &qword_100790530);
    sub_10076A92C();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100784500;
    sub_10076A91C();
    sub_10076A90C();
    v43 = v32;
    sub_1006CDB58(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68, &qword_10079F190);
    sub_100166BA8();
    sub_1007712CC();

    return;
  }

  if (v21 != enum case for ProductReview.ReviewSource.user(_:))
  {
    v27 = enum case for ProductReview.ReviewSource.reviewSummary(_:);
    v28 = v21;
    (*(v20 + 8))(v15, v19);
    if (v28 == v27)
    {
      swift_getKeyPath();
      sub_10076338C();

      v29 = v43;
      v30 = sub_1007706EC();

      if (v30)
      {
        v31 = sub_10016720C();
        if (([*(*&v31[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton) isHidden] & 1) == 0)
        {
          sub_10076336C();
          v33 = v37;
          sub_10076F87C();
          sub_10013E624();
          v34 = v42;
          sub_10076F83C();
          sub_10000A5D4(&qword_10094AA58, &qword_100790530);
          sub_10076A92C();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_100783C60;
          sub_10076A91C();
          sub_10076A90C();
          sub_10076A8FC();
          v43 = v35;
          sub_1006CDB58(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
          sub_10000A5D4(&qword_10094AA68, &qword_10079F190);
          sub_100166BA8();
          sub_1007712CC();

          (*(v39 + 8))(v33, v34);
          return;
        }
      }
    }

    goto LABEL_15;
  }

  (*(v20 + 8))(v15, v19);
  sub_10076336C();
  sub_10076F87C();
  swift_getKeyPath();
  sub_10013E624();
  sub_10076F85C();

  v23 = v43;
  if (!sub_1006CD948())
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076B68C();
    sub_1006CDB58(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v24 = sub_10077124C();
    v25 = *(v38 + 8);
    v25(v5, v3);
    v25(v8, v3);
    if (v24)
    {
      if ((v23 == 2) | v23 & 1)
      {
        sub_10076F83C();
      }
    }
  }

  sub_10000A5D4(&qword_10094AA58, &qword_100790530);
  sub_10076A92C();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100783C60;
  sub_10076A91C();
  sub_10076A90C();
  sub_10076A8FC();
  v43 = v26;
  sub_1006CDB58(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10000A5D4(&qword_10094AA68, &qword_10079F190);
  sub_100166BA8();
  sub_1007712CC();

  (*(v39 + 8))(v41, v42);
}

uint64_t sub_1006CD4AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006CD508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006CD5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006CD67C(uint64_t a1)
{
  result = sub_1006CDB58(&qword_1009647F0, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007B3BC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006CD6D4(uint64_t a1, int a2)
{
  v21 = a2;
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10076664C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  sub_10076331C();
  sub_1007665CC();
  sub_1006CDB58(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v13 = sub_10077124C();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C21C();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    if (v17 > 1.0 || v21 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v21 ^ 1;
    }
  }

  return v15 & 1;
}

BOOL sub_1006CD948()
{
  v0 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v1 + 8))(v3, v0);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_10095CFB0, &qword_1007AAB58);
  if (swift_dynamicCast())
  {
    sub_100012498(v7, v9);
    sub_10000CF78(v9, v9[3]);
    v4 = sub_10076163C();
    v5 = v4 != 0;
    if (v4)
    {
    }

    sub_10000CD74(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_10000CFBC(v7, &qword_10095CFB8, &qword_1007AAB60);
    return 0;
  }

  return v5;
}

uint64_t sub_1006CDAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009647F8, &qword_1007B3D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006CDB58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s5StateVwet_1(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StateVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1006CDD14()
{
  result = qword_100964800;
  if (!qword_100964800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100964800);
  }

  return result;
}

unint64_t sub_1006CDD6C()
{
  result = qword_100964808;
  if (!qword_100964808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100964808);
  }

  return result;
}

void sub_1006CDDC0(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

void sub_1006CDE94(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v28 = a1 + 32;
  v3 = &unk_1009453D0;
  while (1)
  {
    v4 = *(v28 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_10077158C();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_10077158C();
      v9 = v26 + v6;
      if (__OFADD__(v26, v6))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v6;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v7)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_10077158C();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_1007714AC();
    v11 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v33)
    {
      goto LABEL_35;
    }

    v30 = v1;
    v31 = v2;
    v17 = v11 + 8 * v12 + 32;
    v27 = v11;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      sub_1006D21A8();
      for (i = 0; i != v14; ++i)
      {
        sub_10000A5D4(v3, &unk_100787870);
        v19 = v3;
        v20 = sub_1000FBD70(v32, i, v4);
        v22 = *v21;
        (v20)(v32, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v30;
    v2 = v31;
    if (v33 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v33);
      v25 = v23 + v33;
      if (v24)
      {
        goto LABEL_36;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return;
    }
  }

  v15 = v11;
  v16 = sub_10077158C();
  v11 = v15;
  v14 = v16;
  if (v16)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

double sub_1006CE168()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_1009A3278);
  sub_10000A61C(v0, qword_1009A3278);
  sub_10076D3AC();
  return result;
}

uint64_t sub_1006CE1BC()
{
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100783C60;
  *(v0 + 32) = sub_10076E4CC();
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = sub_10076E88C();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  result = sub_10076E59C();
  *(v0 + 64) = result;
  *(v0 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_100964810 = v0;
  return result;
}

double sub_1006CE24C()
{
  qword_100964858 = &type metadata for Double;
  unk_100964860 = &protocol witness table for Double;
  qword_100964880 = &type metadata for Double;
  unk_100964888 = &protocol witness table for Double;
  qword_100964868 = 0;
  qword_1009648A8 = &type metadata for Double;
  unk_1009648B0 = &protocol witness table for Double;
  qword_100964890 = 0;
  qword_1009648D0 = &type metadata for Double;
  unk_1009648D8 = &protocol witness table for Double;
  qword_1009648B8 = 0x4000000000000000;
  qword_1009648F8 = &type metadata for Double;
  unk_100964900 = &protocol witness table for Double;
  qword_1009648E0 = 0;
  qword_100964920 = &type metadata for Double;
  unk_100964928 = &protocol witness table for Double;
  qword_100964908 = 0x4026000000000000;
  qword_100964948 = &type metadata for Double;
  unk_100964950 = &protocol witness table for Double;
  qword_100964930 = 0x4026000000000000;
  qword_100964970 = &type metadata for Double;
  unk_100964978 = &protocol witness table for Double;
  qword_100964958 = 0x4026000000000000;
  qword_100964998 = &type metadata for Double;
  unk_1009649A0 = &protocol witness table for Double;
  qword_100964980 = 0x4026000000000000;
  qword_1009649C0 = &type metadata for Double;
  unk_1009649C8 = &protocol witness table for Double;
  qword_1009649A8 = 0x4042000000000000;
  qword_1009649E8 = &type metadata for Double;
  unk_1009649F0 = &protocol witness table for Double;
  qword_1009649D0 = 0x4044000000000000;
  qword_100964A10 = &type metadata for Double;
  unk_100964A18 = &protocol witness table for Double;
  qword_1009649F8 = 0x4032000000000000;
  result = 0.0;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_100964818 = xmmword_1007B3E00;
  unk_100964828 = _Q1;
  xmmword_100964838 = _Q1;
  return result;
}

double sub_1006CE2EC()
{
  qword_100964A60 = &type metadata for Double;
  unk_100964A68 = &protocol witness table for Double;
  qword_100964A88 = &type metadata for Double;
  unk_100964A90 = &protocol witness table for Double;
  qword_100964A70 = 0;
  qword_100964AB0 = &type metadata for Double;
  unk_100964AB8 = &protocol witness table for Double;
  qword_100964A98 = 0;
  qword_100964AD8 = &type metadata for Double;
  unk_100964AE0 = &protocol witness table for Double;
  qword_100964AC0 = 0x4018000000000000;
  qword_100964B00 = &type metadata for Double;
  unk_100964B08 = &protocol witness table for Double;
  qword_100964AE8 = 0;
  qword_100964B28 = &type metadata for Double;
  unk_100964B30 = &protocol witness table for Double;
  qword_100964B10 = 0x4026000000000000;
  qword_100964B50 = &type metadata for Double;
  unk_100964B58 = &protocol witness table for Double;
  qword_100964B38 = 0x4026000000000000;
  qword_100964B78 = &type metadata for Double;
  unk_100964B80 = &protocol witness table for Double;
  qword_100964B60 = 0x4026000000000000;
  qword_100964BA0 = &type metadata for Double;
  unk_100964BA8 = &protocol witness table for Double;
  qword_100964B88 = 0x4026000000000000;
  qword_100964BC8 = &type metadata for Double;
  unk_100964BD0 = &protocol witness table for Double;
  qword_100964BB0 = 0x4042000000000000;
  qword_100964BF0 = &type metadata for Double;
  unk_100964BF8 = &protocol witness table for Double;
  qword_100964BD8 = 0x4044000000000000;
  qword_100964C18 = &type metadata for Double;
  unk_100964C20 = &protocol witness table for Double;
  qword_100964C00 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_100964A20 = xmmword_1007B3E00;
  *algn_100964A30 = _Q1;
  result = 16.0;
  xmmword_100964A40 = xmmword_1007B3E10;
  return result;
}

double sub_1006CE394()
{
  qword_100964C68 = &type metadata for Double;
  unk_100964C70 = &protocol witness table for Double;
  qword_100964C90 = &type metadata for Double;
  unk_100964C98 = &protocol witness table for Double;
  qword_100964C78 = 0;
  qword_100964CB8 = &type metadata for Double;
  unk_100964CC0 = &protocol witness table for Double;
  qword_100964CA0 = 0;
  qword_100964CE0 = &type metadata for Double;
  unk_100964CE8 = &protocol witness table for Double;
  qword_100964CC8 = 0x4010000000000000;
  qword_100964D08 = &type metadata for Double;
  unk_100964D10 = &protocol witness table for Double;
  qword_100964CF0 = 0;
  qword_100964D30 = &type metadata for Double;
  unk_100964D38 = &protocol witness table for Double;
  qword_100964D18 = 0x4030000000000000;
  qword_100964D58 = &type metadata for Double;
  unk_100964D60 = &protocol witness table for Double;
  qword_100964D40 = 0x4030000000000000;
  qword_100964D80 = &type metadata for Double;
  unk_100964D88 = &protocol witness table for Double;
  qword_100964D68 = 0x4030000000000000;
  qword_100964DA8 = &type metadata for Double;
  unk_100964DB0 = &protocol witness table for Double;
  qword_100964D90 = 0x4030000000000000;
  qword_100964DD0 = &type metadata for Double;
  unk_100964DD8 = &protocol witness table for Double;
  qword_100964DB8 = 0x4042000000000000;
  qword_100964DF8 = &type metadata for Double;
  unk_100964E00 = &protocol witness table for Double;
  qword_100964DE0 = 0x4044000000000000;
  qword_100964E20 = &type metadata for Double;
  unk_100964E28 = &protocol witness table for Double;
  qword_100964E08 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #20.0 }

  xmmword_100964C28 = xmmword_1007B3E20;
  unk_100964C38 = _Q1;
  result = 20.0;
  xmmword_100964C48 = xmmword_1007B3E30;
  return result;
}

double sub_1006CE43C()
{
  qword_100964E70 = &type metadata for Double;
  unk_100964E78 = &protocol witness table for Double;
  qword_100964E98 = &type metadata for Double;
  unk_100964EA0 = &protocol witness table for Double;
  qword_100964E80 = 0;
  qword_100964EC0 = &type metadata for Double;
  unk_100964EC8 = &protocol witness table for Double;
  qword_100964EA8 = 0;
  qword_100964EE8 = &type metadata for Double;
  unk_100964EF0 = &protocol witness table for Double;
  qword_100964ED0 = 0x4018000000000000;
  qword_100964F10 = &type metadata for Double;
  unk_100964F18 = &protocol witness table for Double;
  qword_100964EF8 = 0;
  qword_100964F38 = &type metadata for Double;
  unk_100964F40 = &protocol witness table for Double;
  qword_100964F20 = 0x4026000000000000;
  qword_100964F60 = &type metadata for Double;
  unk_100964F68 = &protocol witness table for Double;
  qword_100964F48 = 0x4026000000000000;
  qword_100964F88 = &type metadata for Double;
  unk_100964F90 = &protocol witness table for Double;
  qword_100964F70 = 0x4026000000000000;
  qword_100964FB0 = &type metadata for Double;
  unk_100964FB8 = &protocol witness table for Double;
  qword_100964F98 = 0x4026000000000000;
  qword_100964FD8 = &type metadata for Double;
  unk_100964FE0 = &protocol witness table for Double;
  qword_100964FC0 = 0x4042000000000000;
  qword_100965000 = &type metadata for Double;
  unk_100965008 = &protocol witness table for Double;
  qword_100964FE8 = 0x4044000000000000;
  qword_100965028 = &type metadata for Double;
  unk_100965030 = &protocol witness table for Double;
  qword_100965010 = 0x4032000000000000;
  xmmword_100964E30 = xmmword_1007B3E20;
  unk_100964E40 = xmmword_1007B3E40;
  result = 20.0;
  xmmword_100964E50 = xmmword_1007B3E50;
  return result;
}

uint64_t sub_1006CE4E8()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_100965038);
  sub_10000A61C(v0, qword_100965038);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006CE64C(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v36 = a1;
  sub_1007639FC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0EE0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_10076D9AC();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v14(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v6, qword_1009A0EC8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v38);
  v34(v15, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  sub_100763A3C();
  v32 = v14;
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_1009A0E98);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v38);
  v34(v18, v5, v2);
  sub_10076D9BC();
  v32(v5, v2);
  sub_1007639DC();
  v19 = v11;
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v6, qword_1009A0EB0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_10076D9BC();
  v24 = v32;
  v32(v5, v2);
  sub_100763ACC();
  sub_100763A1C();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v38);
  v23(v25, v5, v2);
  sub_10076D9BC();
  v24(v5, v2);
  return sub_100763A2C();
}

uint64_t sub_1006CEC34()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_100965050);
  sub_10000A61C(v0, qword_100965050);
  if (qword_100941518 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_100965038);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

void sub_1006CED98()
{
  v0 = sub_10077111C();
  sub_10000DB18(v0, qword_100965068);
  sub_10000A61C(v0, qword_100965068);
  sub_1006CEDE4();
}

void sub_1006CEDE4()
{
  v0 = sub_10000A5D4(&unk_10095E850, &qword_10078B130);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_1007710CC();
  v3 = sub_10076FF6C();
  v4 = [objc_opt_self() systemImageNamed:v3];

  sub_1007710BC();
  sub_100770FBC();
  sub_100770FFC();
  sub_100770FEC();
  v5 = [objc_opt_self() labelColor];
  sub_10077104C();
  v6 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightBold];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() configurationWithFont:v6 scale:1];
    sub_100770F4C();
    sub_10076E8AC();
    v9 = sub_10076E89C();
    (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
    sub_10077106C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006CEFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10075D9EC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = objc_opt_self();
  if (v6)
  {
    [v7 fontWithDescriptor:v6 size:0.0];

    v5 = v6;
  }

  else
  {
    [v7 fontWithDescriptor:v5 size:0.0];
  }

  sub_100016BD0();
  return sub_10075D9FC();
}

char *sub_1006CF118(int a1)
{
  v2 = v1;
  v80 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v3 - 8);
  v81 = v73 - v4;
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = v73 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView(0)) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent;
  *(v2 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v2 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v78 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  v84 = sub_10076D3DC();
  v15 = *(v84 - 8);
  v83 = *(v15 + 56);
  v16 = v15 + 56;
  v83(v11, 1, 1, v84);
  v77 = v16;
  v17 = enum case for DirectionalTextAlignment.none(_:);
  v18 = v6 + 104;
  v82 = *(v6 + 104);
  v74 = enum case for DirectionalTextAlignment.none(_:);
  v75 = v5;
  v82(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = sub_1007626BC();
  v76 = v19;
  v20 = objc_allocWithZone(v19);
  *(v2 + v78) = sub_1007626AC();
  v78 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel;
  v21 = v83;
  v83(v11, 1, 1, v84);
  v22 = v17;
  v23 = v82;
  v73[1] = v18;
  v82(v8, v22, v5);
  v24 = objc_allocWithZone(v19);
  v25 = sub_1007626AC();
  v73[0] = v2;
  *(v2 + v78) = v25;
  v26 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView(0));
  *(v2 + v26) = sub_1004760F8(1);
  v78 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel;
  v28 = v84;
  v21(v11, 1, 1, v84);
  v29 = v74;
  v30 = v75;
  v23(v8, v74, v75);
  v31 = v76;
  v32 = objc_allocWithZone(v76);
  v33 = sub_1007626AC();
  v34 = v73[0];
  *(v73[0] + v78) = v33;
  v35 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v36 = v28;
  v37 = ObjectType;
  v83(v11, 1, 1, v36);
  v82(v8, v29, v30);
  v38 = objc_allocWithZone(v31);
  v39 = v34;
  *&v34[v35] = sub_1007626AC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  *&v39[v40] = [objc_allocWithZone(UIButton) init];
  v41 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView(0);
  *&v39[v41] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v42 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v39[v42] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  *&v39[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction] = 0;
  v43 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v44 = enum case for MediaOverlayStyle.matchSystem(_:);
  v45 = sub_10076361C();
  (*(*(v45 - 8) + 104))(&v39[v43], v44, v45);
  v39[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_displayMode] = v80 & 1;
  v85.receiver = v39;
  v85.super_class = v37;
  v46 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v50 setClipsToBounds:1];
  v51 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent;
  v52 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent];
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 systemBackgroundColor];
  [v54 setBackgroundColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent]];
  [v50 addSubview:*&v50[v51]];
  v56 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView];
  LOBYTE(v54) = v56[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  v56[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 1;
  v57 = v56;
  sub_1004B413C(v54);

  v58 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  v59 = [v53 secondaryLabelColor];
  [v58 setTextColor:v59];

  v60 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView];
  v61 = [v53 labelColor];
  v62 = [v61 colorWithAlphaComponent:0.5];

  v63 = *&v60[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor];
  *&v60[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor] = v62;
  v64 = v62;

  [*&v60[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:v64];
  v65 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  v66 = qword_100941528;
  v67 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_10077111C();
  v69 = sub_10000A61C(v68, qword_100965068);
  v70 = *(v68 - 8);
  v71 = v81;
  (*(v70 + 16))(v81, v69, v68);
  (*(v70 + 56))(v71, 0, 1, v68);
  sub_10077114C();

  if (qword_1009414F0 != -1)
  {
    swift_once();
  }

  sub_100770C6C();
  swift_unknownObjectRelease();
  [*&v50[v65] setNeedsUpdateConfiguration];
  sub_1006D0D60();
  sub_1006CFA1C();
  sub_1006D12B4();
  sub_1006D14A8();
  [v50 setNeedsLayout];

  return v50;
}

void sub_1006CFA1C()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v48 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView];
  v8 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v7, &v1[v8], v2);
  v10 = v9;
  v49 = v9;
  v11 = sub_10076360C();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v48 setOverrideUserInterfaceStyle:v11];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
  v10(v7, &v1[v8], v2);
  v14 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v14, v7, v2);
  swift_endAccess();
  sub_100422A60();
  v12(v7, v2);
  v15 = v50;
  v49(v50, &v1[v8], v2);
  sub_1007635FC();
  v12(v15, v2);
  sub_10076FF9C();
  v16 = sub_10076FF6C();

  v17 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel] layer];
  [v17 setCompositingFilter:v16];

  v18 = v1;
  v19 = [v1 traitCollection];
  v48 = v16;
  if (v19)
  {
    v20 = v19;
    if (sub_1007706EC())
    {
      v21 = sub_10077071C();

      if (v21)
      {
        v22 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v23 = v16;
  v22 = v16;
LABEL_7:
  v50 = *&v18[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel];
  v24 = [v50 layer];
  v25 = v22;
  [v24 setCompositingFilter:v25];

  v49 = *&v18[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v26 = [v49 layer];
  [v26 setCompositingFilter:v25];

  if (v22)
  {
    v27 = sub_100016F40(0, &unk_10095B410, NSString_ptr);
    v28 = v25;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v28;
  v54 = v27;
  v29 = v25;
  sub_100475758(&v51);
  if (v22)
  {
    v30 = sub_100016F40(0, &unk_10095B410, NSString_ptr);
    v31 = v29;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v31;
  v54 = v30;
  v32 = v29;
  sub_100620A88(&v51);
  v33 = *&v18[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  v34 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v35 = [*(v33 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) isHidden];
  v36 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v35)
  {
    v36 = v34;
  }

  v37 = [*(*(v33 + v36) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v37 setCompositingFilter:v32];

  v38 = [*(v33 + v34) isHidden];
  v39 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v38)
  {
    v39 = v34;
  }

  v40 = [*(*(*(v33 + v39) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v40 setCompositingFilter:v32];

  v41 = [v18 traitCollection];
  if (!v41)
  {
    goto LABEL_22;
  }

  v42 = v41;
  if ((sub_1007706EC() & 1) == 0)
  {

    goto LABEL_22;
  }

  v43 = sub_10077071C();

  if ((v43 & 1) == 0)
  {
LABEL_22:
    v44 = &selRef_secondaryLabelColor;
    goto LABEL_23;
  }

  v44 = &selRef_labelColor;
LABEL_23:
  v45 = objc_opt_self();
  v46 = [v45 *v44];
  [v50 setTextColor:v46];

  v47 = [v45 *v44];
  [v49 setTextColor:v47];

  sub_1006D1708();
}

void sub_1006CFFDC(double *a1@<X8>, double a3@<D1>)
{
  v4 = v3;
  v7 = [v3 traitCollection];
  v8 = sub_1007706EC();

  v9 = [v4 traitCollection];
  v10 = sub_10077071C();

  if (v8)
  {
    if (v10)
    {
      if (qword_1009414F8 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_100964818;
    }

    else
    {
      if (qword_100941500 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_100964A20;
    }

    sub_1001C0E70(v11, __src);
    memcpy(a1, __src, 0x208uLL);
    *&__src[24] = &type metadata for Double;
    *&__src[32] = &protocol witness table for Double;
    *__src = 0x404E000000000000;
    sub_10000CD74(a1 + 10);
    sub_10003F19C(__src, (a1 + 10));
    if (qword_1009414E8 != -1)
    {
      swift_once();
    }

    v13 = sub_10076D39C();
    sub_10000A61C(v13, qword_1009A3278);
    sub_10076D36C();
    a3 = trunc(v14);
  }

  else
  {
    if (v10)
    {
      if (qword_100941508 != -1)
      {
        swift_once();
      }

      v12 = &xmmword_100964C28;
    }

    else
    {
      if (qword_100941510 != -1)
      {
        swift_once();
      }

      v12 = &xmmword_100964E30;
    }

    sub_1001C0E70(v12, __src);
    memcpy(a1, __src, 0x208uLL);
  }

  *a1 = a3;
}

uint64_t sub_1006D0228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if ((sub_1007706EC() & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = sub_10077071C();

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_displayMode];
LABEL_7:
  sub_1001C0E70(a1, a2);
  v22[6] = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
  type metadata accessor for AppPromotionScrollableContentContainerView(0);
  sub_10076D2DC();
  v22[5] = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076D2DC();
  v10 = sub_10076558C();
  *(a2 + 624) = v10;
  v11 = sub_1006D4DBC(&qword_100965120, &type metadata accessor for BoundsBasedPlaceable, &protocol conformance descriptor for BoundsBasedPlaceable);
  *(a2 + 632) = v11;
  sub_10000DB7C((a2 + 600));
  sub_100770B6C();
  *(a2 + 664) = v10;
  *(a2 + 672) = v11;
  sub_10000DB7C((a2 + 640));
  sub_100770B6C();
  *(a2 + 704) = v10;
  *(a2 + 712) = v11;
  sub_10000DB7C((a2 + 680));
  sub_100770B6C();
  v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView];
  *(a2 + 744) = v10;
  *(a2 + 752) = v11;
  sub_10000DB7C((a2 + 720));
  sub_100770B6C();
  v22[3] = v10;
  v22[4] = v11;
  sub_10000DB7C(v22);
  sub_100770B6C();
  *(a2 + 784) = v10;
  *(a2 + 792) = v11;
  sub_10000DB7C((a2 + 760));
  sub_100770B6C();
  v13 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v21[3] = sub_1007626BC();
  v21[4] = &protocol witness table for UILabel;
  v21[0] = v13;
  v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView];
  *(a2 + 904) = type metadata accessor for SeparatorView(0);
  *(a2 + 912) = sub_1006D4DBC(&qword_100965128, type metadata accessor for SeparatorView, &unk_1007B0460);
  *(a2 + 880) = v14;
  v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  *(a2 + 944) = type metadata accessor for SubscriptionLockupView();
  *(a2 + 952) = sub_1006D4DBC(&qword_100965130, type metadata accessor for SubscriptionLockupView, &unk_100798E78);
  *(a2 + 920) = v15;
  v16 = *(v12 + qword_1009588E8);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  LOBYTE(v16) = [v16 hasContent];
  *(a2 + 800) = 0u;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0u;
  *(a2 + 864) = 0u;
  sub_1001C0F9C(v22, a2 + 840);
  result = sub_1001C0F9C(v21, a2 + 800);
  *(a2 + 960) = v9;
  *(a2 + 961) = v16;
  return result;
}

uint64_t sub_1006D0644()
{
  v1 = v0;
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, "layoutSubviews");
  [v0 bounds];
  sub_1006CFFDC(v45, v2);
  sub_1006D0228(v45, v41);
  [v0 bounds];
  Width = v3;
  v6 = v5;
  v7 = [v0 traitCollection];
  if (sub_1007706EC())
  {
    v8 = sub_10077071C();

    if (v8)
    {
      v9 = *v41;
      sub_1001C3264(v7, v44, v39);
      sub_10000CF78(v39, v40);
      sub_10076E0FC();
      v11 = v9 + v10;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (sub_1007706EC())
  {
    sub_1001C1348(v7, v39, 0.0, 0.0, Width, v6);
  }

  else
  {
    sub_1001C1D50(v7, v39, 0.0, 0.0, Width, v6);
  }

  sub_10000CF78(v39, v40);
  sub_10076E0FC();
  Width = v12;
  v11 = v13;
LABEL_9:
  sub_10000CD74(v39);

  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  if (sub_1007706EC())
  {
    v23 = sub_10077071C();

    if (v23)
    {
      sub_1001C2EF8(v22, v15, v17, v19, v21);
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = sub_1007706EC();
  sub_10000CF78(v42, v43);
  sub_10076E0EC();
  if (v24)
  {
    sub_1001C1348(v22, v39, v15, v17, v19, v21);
  }

  else
  {
    sub_1001C1D50(v22, v39, v15, v17, v19, v21);
    v47.origin.x = v15;
    v47.origin.y = v17;
    v47.size.width = v19;
    v47.size.height = v21;
    CGRectGetMinX(v47);
    v48.origin.x = v15;
    v48.origin.y = v17;
    v48.size.width = v19;
    v48.size.height = v21;
    CGRectGetMinY(v48);
    v49.origin.x = v15;
    v49.origin.y = v17;
    v49.size.width = v19;
    v49.size.height = v21;
    CGRectGetWidth(v49);
  }

  sub_10000CF78(v39, v40);
  sub_10076E0EC();
  sub_10000CD74(v39);
LABEL_17:

  v25 = [v1 traitCollection];
  if (v25)
  {
    v26 = v25;
    if (sub_1007706EC())
    {
      v27 = sub_10077071C();

      if (v27)
      {
        v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
        [v1 bounds];
        Width = CGRectGetWidth(v50);
        v11 = v45[0];
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  [v1 bounds];
  Height = CGRectGetHeight(v51);
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
  if (vabdd_f64(Height, v11) <= 1.0)
  {
    [v1 bounds];
    Width = v30;
    v11 = v31;
  }

LABEL_24:
  [v28 setContentSize:{Width, v11}];
  sub_1006D0B64();
  v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  [v28 contentSize];
  v33 = v32;
  [v28 bounds];
  v34 = 0;
  if (CGRectGetHeight(v52) >= v33)
  {
    v35 = [v1 traitCollection];
    if (v35)
    {
      v36 = v35;
      if (sub_1007706EC())
      {
        v37 = sub_10077071C();

        v34 = v37 ^ 1;
        goto LABEL_30;
      }
    }

    v34 = 1;
  }

LABEL_30:
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView] setHidden:v34 & 1];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView] setHidden:v34 & 1];
  sub_10050770C(v41);
  return sub_100507760(v45);
}

void sub_1006D0B64()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077071C();

  v4 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  if ((v3 & 1) == 0)
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  }

  v14 = *&v1[*v4];
  v5 = [v1 traitCollection];
  v6 = sub_1007706EC();

  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
  if (v6)
  {
    v8 = *(v7 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode);
    *(v7 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode) = v14;
    if ((v8 - 1) > 1)
    {
      if (v8)
      {
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v11 = v14;
        sub_100423854(v8);
        v12 = sub_100770EEC();
        sub_100423840(v8);
        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = v14;
        sub_100423854(0);
      }
    }

    else
    {
      v9 = v14;
    }

    sub_1004228CC();
LABEL_14:
    sub_100422D68();
    sub_100423840(v8);

    goto LABEL_15;
  }

  v10 = *(v7 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode);
  *(v7 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode) = 2;
  if (v10 != 2)
  {
    sub_1004228CC();
  }

  sub_100422D68();
  sub_100423840(v10);
LABEL_15:
}

double sub_1006D0D60()
{
  v1 = v0;
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100785D70;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v46 = v2;
  v5 = v3;
  v6 = v4;
  v7 = [v1 traitCollection];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if ((sub_1007706EC() & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = sub_10077071C();

  if ((v9 & 1) == 0)
  {
LABEL_10:
    v14 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel;
    v15 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView;
    v16 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel;
    goto LABEL_11;
  }

  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  if (qword_10093F9B0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v12 = sub_10077087C();

    v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel);
    if (v12)
    {
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }
    }

    else
    {
      sub_10077019C();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }
    }

    sub_10077025C();
    v14 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
    v15 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel;
    v16 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView;
LABEL_11:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B3E60;
    v18 = *(v1 + *v16);
    *(inited + 32) = v18;
    v19 = *(v1 + *v15);
    *(inited + 40) = v19;
    v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    *(inited + 48) = v20;
    v21 = *(v1 + *v14);
    *(inited + 56) = v21;
    v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView);
    *(inited + 64) = v22;
    v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView);
    *(inited + 72) = v23;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    sub_1000F9270(inited);
    v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent);
    v10 = v46;
    sub_10000A5D4(&qword_1009453C8, &qword_1007B3350);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_100783DD0;
    *(v30 + 32) = v46;

    sub_1006CDE94(v30);
    v32 = v31;
    swift_setDeallocating();
    sub_10000CFBC(v30 + 32, &unk_1009453D0, &unk_100787870);
    if (v32 >> 62)
    {
      v33 = sub_10077158C();
      if (!v33)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_23;
      }
    }

    if (v33 < 1)
    {
      __break(1u);
      goto LABEL_37;
    }

    v34 = 0;
    v10 = (v32 & 0xC000000000000001);
    do
    {
      if (v10)
      {
        v35 = sub_10077149C();
      }

      else
      {
        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      ++v34;
      [v11 addSubview:v35];
    }

    while (v33 != v34);
LABEL_23:

    v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent);
    v1 = _swiftEmptyArrayStorage;
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_100783DD0;
    *(v37 + 32) = _swiftEmptyArrayStorage;

    sub_1006CDE94(v37);
    v39 = v38;
    swift_setDeallocating();
    sub_10000CFBC(v37 + 32, &unk_1009453D0, &unk_100787870);
    if (v39 >> 62)
    {
      v40 = sub_10077158C();
      if (!v40)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_32;
      }
    }

    if (v40 >= 1)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  for (i = 0; i != v40; ++i)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v42 = sub_10077149C();
    }

    else
    {
      v42 = *(v39 + 8 * i + 32);
    }

    v43 = v42;
    [v11 addSubview:v42];
  }

LABEL_32:

  if (_swiftEmptyArrayStorage >> 62)
  {
    v44 = sub_10077158C();
  }

  else
  {
    v44 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v11 setHidden:v44 == 0];

  return result;
}

id sub_1006D12B4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  if (qword_100940610 != -1)
  {
    swift_once();
  }

  v3 = qword_10099FCF8;
  v4 = unk_10099FD00;
  v5 = qword_10099FD08;
  v6 = [v0 traitCollection];
  if (sub_10077071C())
  {
  }

  else
  {
    v7 = sub_1007706EC();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel];
  if (qword_100940628 != -1)
  {
    swift_once();
  }

  v9 = qword_10099FD40;
  v10 = *algn_10099FD48;
  v11 = qword_10099FD50;
  v12 = [v1 traitCollection];
  if (sub_10077071C())
  {

    v13 = v11;
  }

  else
  {
    v14 = sub_1007706EC();

    if (v14)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }
  }

  [v8 setFont:v13];
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v16 = [v1 traitCollection];
  if (sub_10077071C())
  {
  }

  else
  {
    v17 = sub_1007706EC();

    if (v17)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  [v15 setFont:v11];
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton];

  return [v18 setNeedsUpdateConfiguration];
}

uint64_t sub_1006D14A8()
{
  v1 = v0;
  v2 = sub_100763ADC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v20 - v8;
  v10 = [v0 traitCollection];
  v11 = sub_10077071C();

  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  if (v11)
  {
    if (qword_100941520 != -1)
    {
      swift_once();
    }

    v13 = qword_100965050;
  }

  else
  {
    if (qword_100941518 != -1)
    {
      swift_once();
    }

    v13 = qword_100965038;
  }

  v14 = sub_10000A61C(v2, v13);
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v16 = *&v12[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v15(v5, v9, v2);
  v17 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v16[v17], v5, v2);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v3 + 8);
  v18(v5, v2);
  [v12 setNeedsLayout];
  return (v18)(v9, v2);
}

void sub_1006D1708()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  v7 = sub_1007635FC();
  (*(v3 + 8))(v5, v2);
  if (v7 != 2)
  {
    goto LABEL_5;
  }

  v8 = [v1 traitCollection];
  if (v8)
  {
    v9 = v8;
    if (sub_1007706EC())
    {
      v10 = sub_10077071C();

      if (v10)
      {
LABEL_5:
        v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
        v12 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
        v13 = [*(v11 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) isHidden];
        v14 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
        if (!v13)
        {
          v14 = v12;
        }

        v15 = *(*(v11 + v14) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v16 = v15;
        v17 = sub_100770E1C();
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  v19 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v20 = [*(v18 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) isHidden];
  v21 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v20)
  {
    v21 = v19;
  }

  v22 = *(*(v18 + v21) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v23 = objc_opt_self();
  v16 = v22;
  v17 = [v23 whiteColor];
LABEL_12:
  v24 = v17;
  [v16 setTintColor:v17];
}

uint64_t sub_1006D1970()
{
  sub_10000A5D4(&unk_100952248, &unk_10079B320);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 16) = xmmword_100783DE0;
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 80) = v8;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  return v1;
}

uint64_t sub_1006D1A58()
{
  sub_10000A5D4(&unk_100952248, &unk_10079B320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007844F0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView);
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v1;
}

uint64_t sub_1006D1B24()
{
  sub_10000A5D4(&unk_100952248, &unk_10079B320);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent);
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_100784500;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

void sub_1006D1BAC(uint64_t a1, uint64_t a2)
{
  sub_10075FD2C();
  sub_1006D4DBC(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView);
  v4 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v5 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_100760BFC();

  v6 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_100760BFC();

  v7 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView];
    v9 = v7;
    v10 = v8;
    sub_100760BFC();

    v11 = *&v9[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView];
    sub_100760BFC();
  }
}

uint64_t type metadata accessor for AppPromotionDetailPageContentView(uint64_t a1)
{
  result = qword_100965110;
  if (!qword_100965110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006D201C(uint64_t a1)
{
  result = sub_10076361C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_1006D20E0(id result)
{
  v2 = v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_displayMode];
  v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_displayMode] = result & 1;
  if (v2 != (result & 1))
  {
    v3 = sub_1006D0D60();

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1006D2144(char *a1)
{
  [*&a1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton] setNeedsUpdateConfiguration];
  sub_1006D0D60();
  sub_1006CFA1C();
  sub_1006D12B4();
  sub_1006D14A8();

  return [a1 setNeedsLayout];
}

unint64_t sub_1006D21A8()
{
  result = qword_100948B80;
  if (!qword_100948B80)
  {
    sub_10000CE78(&unk_1009453D0, &unk_100787870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948B80);
  }

  return result;
}

uint64_t sub_1006D220C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v150 = a2;
  v5 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v5 - 8);
  v136 = &v121 - v6;
  v135 = sub_100768FEC();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v145 = *(v148 - 8);
  __chkstk_darwin(v148);
  v134 = &v121 - v8;
  v9 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v9 - 8);
  v139 = &v121 - v10;
  v11 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v11 - 8);
  v141 = &v121 - v12;
  v13 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v13 - 8);
  v140 = &v121 - v14;
  v15 = sub_10000A5D4(&qword_10094FCE8, qword_100798EB8);
  __chkstk_darwin(v15 - 8);
  v146 = &v121 - v16;
  v17 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v17 - 8);
  v131 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v149 = &v121 - v20;
  v21 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v21 - 8);
  v151 = &v121 - v22;
  v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  sub_100761E9C();
  v24 = sub_10076FF6C();

  [v23 setText:v24];

  v25 = sub_100761EAC();
  sub_1004B1D04(v25, v26);
  if (qword_100940620 != -1)
  {
    swift_once();
  }

  v27 = qword_10099FD28;
  v28 = unk_10099FD30;
  v29 = qword_10099FD38;
  v30 = [v2 traitCollection];
  if (sub_10077071C())
  {
  }

  else
  {
    v31 = sub_1007706EC();

    if (v31)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }
  }

  v138 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel];
  v143 = v29;
  v147 = a1;
  sub_100761EBC();
  v32 = sub_10076C5AC();

  v33 = [objc_opt_self() secondaryLabelColor];
  v34 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v32];
  v35 = [v32 length];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1000BD348;
  *(v37 + 24) = v36;
  v156 = sub_10000A6AC;
  v157 = v37;
  aBlock = _NSConcreteStackBlock;
  v153 = 1107296256;
  v142 = &v154;
  v154 = sub_1002464A8;
  v155 = &unk_1008A0280;
  v38 = v3;
  v39 = _Block_copy(&aBlock);
  v40 = v34;
  v41 = v33;

  [v32 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v35 usingBlock:{0, v39}];

  _Block_release(v39);
  v42 = 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_33;
  }

  v144 = v38;
  v44 = [v38 traitCollection];
  v45 = objc_allocWithZone(NSMutableAttributedString);
  v46 = v143;
  v47 = v143;
  v48 = [v45 initWithAttributedString:v40];
  v49 = [v40 length];
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  *(v50 + 24) = v44;
  *(v50 + 32) = v48;
  *(v50 + 40) = 1;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1000275EC;
  *(v51 + 24) = v50;
  v156 = sub_1000ACB04;
  v157 = v51;
  aBlock = _NSConcreteStackBlock;
  v153 = 1107296256;
  v154 = sub_100026610;
  v155 = &unk_1008A02F8;
  v42 = _Block_copy(&aBlock);
  v38 = v157;
  v52 = v47;
  isEscapingClosureAtFileLocation = v48;

  v53 = v44;

  [v40 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v42}];

  _Block_release(v42);
  v54 = swift_isEscapingClosureAtFileLocation();

  v55 = v144;
  if (v54)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  v137 = v52;
  [v138 setAttributedText:isEscapingClosureAtFileLocation];

  v56 = *&v55[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel];
  sub_100761E3C();
  if (v57)
  {
    v58 = sub_10076FF6C();
  }

  else
  {
    v58 = 0;
  }

  [v56 setText:v58];

  v59 = *&v55[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton];
  sub_100761E6C();
  v60 = sub_10076FF6C();

  [v59 setTitle:v60 forState:0];

  v61 = *&v55[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  if (sub_100761E5C())
  {
    v62 = sub_10076C5AC();
  }

  else
  {
    v62 = 0;
  }

  [v61 setAttributedText:v62];

  v63 = sub_100761ECC();
  v65 = v64;
  v66 = sub_100761E2C();
  sub_100475DC4(v63, v65, v66);

  v67 = [v55 traitCollection];
  v68 = v151;
  v69 = v149;
  if (v67)
  {
    v70 = v67;
    if (sub_1007706EC())
    {
      v71 = sub_10077071C();

      if (v71)
      {
        v72 = enum case for OfferStyle.infer(_:);
        v73 = sub_10075F78C();
        v74 = *(v73 - 8);
        (*(v74 + 104))(v68, v72, v73);
        (*(v74 + 56))(v68, 0, 1, v73);
        v69 = v149;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v75 = sub_10075F78C();
  (*(*(v75 - 8) + 56))(v68, 1, 1, v75);
LABEL_22:
  v76 = *&v55[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  v77 = sub_100761E4C();
  v78 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v79 = *(v78 - 8);
  v138 = *(v79 + 56);
  v130 = v79 + 56;
  (v138)(v69, 1, 1, v78);
  v80 = v146;
  sub_100761E8C();
  v81 = sub_10076361C();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  sub_10075E67C();
  v142 = v77;
  v82 = swift_dynamicCastClass();
  v83 = *&v76[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v143 = v76;
  if (v82)
  {
    v84 = v82;
    v129 = v78;
    v124 = sub_1007628DC();
    v85 = *(v124 - 8);
    v126 = *(v85 + 56);
    v127 = v85 + 56;
    v86 = v140;
    v126(v140, 1, 1, v124);
    v125 = *(v145 + 56);
    v87 = v141;
    v125(v141, 1, 1, v148);
    v88 = v69;
    v89 = sub_10076C54C();
    v90 = *(v89 - 8);
    v122 = *(v90 + 56);
    v123 = v90 + 56;
    v91 = v139;
    v122(v139, 1, 1, v89);
    swift_retain_n();
    sub_1004D0A60(v84, v83, v88, v150, 1, 0, v151, v86, v91, v87);
    sub_10000CFBC(v91, &unk_100949290, &unk_10078BBF0);
    v83[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v83 setNeedsLayout];
    sub_10000CFBC(v87, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v86, &unk_1009492A0, &unk_10078BC00);
    v92 = *&v143[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v128 = v84;
    v93 = sub_10075E66C();
    v94 = v150;
    v126(v86, 1, 1, v124);
    v125(v87, 1, 1, v148);
    v122(v91, 1, 1, v89);
    sub_1004D0A60(v93, v92, v149, v94, 0, 0, v151, v86, v91, v87);
    sub_10000CFBC(v91, &unk_100949290, &unk_10078BBF0);
    v92[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v92 setNeedsLayout];

    sub_10000CFBC(v87, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v86, &unk_1009492A0, &unk_10078BC00);
    v95 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v92[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v92[v95] setUserInteractionEnabled:0];
    [v92 setHidden:1];
    v96 = v142;
    v97 = sub_10076BB5C();
    if (v97)
    {
    }

    sub_100261178(v97 != 0);
    v98 = *&v92[v95];
    v99 = sub_10076BB3C();

    v100 = sub_10076BA2C();

    v101 = v131;
    (v138)(v131, 1, 1, v129);
    v102 = v132;
    v103 = v135;
    (*(v132 + 104))(v133, enum case for OfferButtonSubtitlePosition.below(_:), v135);
    (*(v102 + 56))(v136, 1, 1, v103);
    sub_1006D4DBC(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v104 = v134;
    sub_10076759C();
    sub_1001F12C8(v99, v100, 0, v101, v104, v94, 0, 0);

    (*(v145 + 8))(v104, v148);
    sub_10000CFBC(v101, &unk_100946760, &unk_100787A20);
    v105 = v143;
    sub_100345140(v96, v143, v94);

    v80 = v146;
    sub_10029E170(v105, v146);
    v69 = v149;
  }

  else
  {
    [v83 setHidden:1];
    v106 = *&v76[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v107 = sub_1007628DC();
    v108 = v140;
    (*(*(v107 - 8) + 56))(v140, 1, 1, v107);
    v109 = v141;
    (*(v145 + 56))(v141, 1, 1, v148);
    v110 = sub_10076C54C();
    v111 = v139;
    (*(*(v110 - 8) + 56))(v139, 1, 1, v110);
    sub_1004D0A60(v142, v106, v69, v150, 0, 0, v68, v108, v111, v109);
    sub_10000CFBC(v111, &unk_100949290, &unk_10078BBF0);
    v106[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v106 setNeedsLayout];
    sub_10000CFBC(v109, &qword_10094F730, qword_10078A050);
    v112 = v108;
    v113 = v143;
    sub_10000CFBC(v112, &unk_1009492A0, &unk_10078BC00);
    sub_10029E170(v113, v80);
  }

  sub_10000CFBC(v80, &qword_10094FCE8, qword_100798EB8);
  sub_10000CFBC(v69, &unk_100946760, &unk_100787A20);
  sub_100760C4C();
  sub_10076F5AC();
  isEscapingClosureAtFileLocation = aBlock;
  if (!aBlock)
  {
    v42 = v137;
    v38 = v151;
    goto LABEL_31;
  }

  v42 = v137;
  v38 = v151;
  if (qword_10093FD10 != -1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v114 = sub_100763ADC();
  sub_10000A61C(v114, qword_10099E208);
  sub_1007639AC();
  v116 = v115;
  v118 = v117;
  v119 = sub_100761E4C();
  sub_10029E930(v119, isEscapingClosureAtFileLocation, v116, v118);

LABEL_31:
  sub_1006D12B4();

  return sub_10000CFBC(v38, &unk_10094D210, &qword_10078DE20);
}

uint64_t sub_1006D3590()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1006D35D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1006D35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v127 = a3;
  v138 = a2;
  v6 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v6 - 8);
  v133 = v118 - v7;
  v132 = sub_100768FEC();
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v142 = *(v145 - 8);
  __chkstk_darwin(v145);
  v131 = v118 - v9;
  v10 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v10 - 8);
  v135 = v118 - v11;
  v12 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v12 - 8);
  v137 = v118 - v13;
  v14 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v14 - 8);
  v136 = v118 - v15;
  v16 = sub_10000A5D4(&qword_10094FCE8, qword_100798EB8);
  __chkstk_darwin(v16 - 8);
  v143 = v118 - v17;
  v18 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v18 - 8);
  v128 = v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v118 - v21;
  v23 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v23 - 8);
  v25 = v118 - v24;
  v26 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  sub_10076C4FC();
  v27 = sub_10076FF6C();

  [v26 setText:v27];

  v28 = sub_10076C4EC();
  sub_1004B1D04(v28, v29);
  if (qword_100940620 != -1)
  {
    swift_once();
  }

  v30 = qword_10099FD28;
  v31 = unk_10099FD30;
  v32 = qword_10099FD38;
  v33 = [v3 traitCollection];
  v34 = sub_10077071C();
  v146 = v25;
  v147 = v22;
  if (v34)
  {
  }

  else
  {
    v35 = sub_1007706EC();

    if (v35)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }
  }

  v134 = *&v4[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel];
  v140 = v32;
  v144 = a1;
  sub_10076C50C();
  v36 = sub_10076C5AC();

  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
  v39 = [v36 length];
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v37;
  v41 = swift_allocObject();
  v41[2] = sub_1006D4E10;
  v41[3] = v40;
  v152 = sub_1006D4E14;
  v153 = v41;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v139 = &v150;
  v150 = sub_1002464A8;
  v151 = &unk_1008A0370;
  v42 = v4;
  v43 = _Block_copy(&aBlock);
  v44 = v38;
  v45 = v37;

  [v36 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v39 usingBlock:{0, v43}];

  _Block_release(v43);
  v46 = 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_32;
  }

  v141 = v42;
  v48 = [v42 traitCollection];
  v49 = objc_allocWithZone(NSMutableAttributedString);
  v50 = v140;
  v51 = v140;
  v52 = [v49 initWithAttributedString:v44];
  v41 = [v44 length];
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = v48;
  *(v53 + 32) = v52;
  *(v53 + 40) = 1;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100027A88;
  *(v54 + 24) = v53;
  v152 = sub_1003BE1CC;
  v153 = v54;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_100026610;
  v151 = &unk_1008A03E8;
  v46 = _Block_copy(&aBlock);
  v55 = v51;
  isEscapingClosureAtFileLocation = v52;

  v56 = v48;

  [v44 enumerateAttributesInRange:0 options:v41 usingBlock:{0x100000, v46}];

  v139 = v55;
  _Block_release(v46);
  v57 = swift_isEscapingClosureAtFileLocation();

  v58 = v141;
  if (v57)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v134 setAttributedText:isEscapingClosureAtFileLocation];

  v59 = *&v58[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel];
  sub_10076C4AC();
  if (v60)
  {
    v61 = sub_10076FF6C();
  }

  else
  {
    v61 = 0;
  }

  v62 = v146;
  [v59 setText:v61];

  v63 = [v58 traitCollection];
  if (v63)
  {
    v64 = v63;
    if (sub_1007706EC())
    {
      v65 = sub_10077071C();

      if (v65)
      {
        v66 = enum case for OfferStyle.infer(_:);
        v67 = sub_10075F78C();
        v68 = *(v67 - 8);
        (*(v68 + 104))(v62, v66, v67);
        v69 = 1;
        (*(v68 + 56))(v62, 0, 1, v67);
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v70 = sub_10075F78C();
  (*(*(v70 - 8) + 56))(v62, 1, 1, v70);
  v69 = 0;
LABEL_19:
  v71 = *&v58[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  v72 = sub_10076C4BC();
  v73 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v74 = *(v73 - 8);
  v75 = *(v74 + 56);
  v134 = (v74 + 56);
  v75(v147, 1, 1, v73);
  if (v69)
  {
    v76 = sub_10076361C();
    v77 = v143;
    (*(*(v76 - 8) + 56))(v143, 1, 1, v76);
  }

  else
  {
    v77 = v143;
    sub_10029F418(v127, v143);
  }

  sub_10075E67C();
  v78 = swift_dynamicCastClass();
  v79 = *&v71[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v140 = v71;
  if (v78)
  {
    v126 = v75;
    v127 = v73;
    v80 = v78;
    v121 = sub_1007628DC();
    v81 = *(v121 - 8);
    v120 = *(v81 + 56);
    v122 = v81 + 56;
    v82 = v147;
    v83 = v136;
    v120(v136, 1, 1, v121);
    v119 = *(v142 + 56);
    v84 = v137;
    v119(v137, 1, 1, v145);
    v85 = sub_10076C54C();
    v86 = *(v85 - 8);
    v118[0] = *(v86 + 56);
    v118[1] = v86 + 56;
    v87 = v135;
    (v118[0])(v135, 1, 1, v85);
    swift_retain_n();
    v88 = v138;
    sub_1004D0A60(v80, v79, v82, v138, 1, 0, v146, v83, v87, v84);
    sub_10000CFBC(v87, &unk_100949290, &unk_10078BBF0);
    v79[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    v123 = v72;
    sub_10026202C();
    v124 = v79;
    [v79 setNeedsLayout];
    sub_10000CFBC(v84, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v83, &unk_1009492A0, &unk_10078BC00);
    v89 = *&v140[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v125 = v80;
    v90 = sub_10075E66C();
    v120(v83, 1, 1, v121);
    v119(v84, 1, 1, v145);
    v91 = v88;
    (v118[0])(v87, 1, 1, v85);
    sub_1004D0A60(v90, v89, v82, v88, 0, 0, v146, v83, v87, v84);
    sub_10000CFBC(v87, &unk_100949290, &unk_10078BBF0);
    v89[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v89 setNeedsLayout];

    sub_10000CFBC(v84, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v83, &unk_1009492A0, &unk_10078BC00);
    v92 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v89[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v89[v92] setUserInteractionEnabled:0];
    [v89 setHidden:1];
    v93 = v123;
    v94 = sub_10076BB5C();
    if (v94)
    {
    }

    sub_100261178(v94 != 0);
    v95 = *&v89[v92];
    v96 = sub_10076BB3C();

    v97 = sub_10076BA2C();

    v98 = v128;
    v126(v128, 1, 1, v127);
    v99 = v129;
    v100 = v132;
    (*(v129 + 104))(v130, enum case for OfferButtonSubtitlePosition.below(_:), v132);
    (*(v99 + 56))(v133, 1, 1, v100);
    sub_1006D4DBC(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v101 = v131;
    sub_10076759C();
    sub_1001F12C8(v96, v97, 0, v98, v101, v91, 0, 0);

    (*(v142 + 8))(v101, v145);
    sub_10000CFBC(v98, &unk_100946760, &unk_100787A20);
    v102 = v140;
    sub_100345140(v93, v140, v91);

    v77 = v143;
    sub_10029E170(v102, v143);
    v41 = v146;
  }

  else
  {
    [v79 setHidden:1];
    v103 = *&v71[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v104 = sub_1007628DC();
    v41 = v62;
    v105 = v136;
    (*(*(v104 - 8) + 56))(v136, 1, 1, v104);
    v106 = v137;
    (*(v142 + 56))(v137, 1, 1, v145);
    v107 = sub_10076C54C();
    v108 = v135;
    (*(*(v107 - 8) + 56))(v135, 1, 1, v107);
    sub_1004D0A60(v72, v103, v147, v138, 0, 0, v62, v105, v108, v106);
    sub_10000CFBC(v108, &unk_100949290, &unk_10078BBF0);
    v103[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v103 setNeedsLayout];
    sub_10000CFBC(v106, &qword_10094F730, qword_10078A050);
    v109 = v105;
    v110 = v140;
    sub_10000CFBC(v109, &unk_1009492A0, &unk_10078BC00);
    sub_10029E170(v110, v77);
  }

  sub_10000CFBC(v77, &qword_10094FCE8, qword_100798EB8);
  sub_10000CFBC(v147, &unk_100946760, &unk_100787A20);
  sub_100760C4C();
  sub_10076F5AC();
  isEscapingClosureAtFileLocation = aBlock;
  v46 = v139;
  if (aBlock)
  {
    if (qword_10093FD10 == -1)
    {
LABEL_29:
      v111 = sub_100763ADC();
      sub_10000A61C(v111, qword_10099E208);
      sub_1007639AC();
      v113 = v112;
      v115 = v114;
      v116 = sub_10076C4BC();
      sub_10029E930(v116, isEscapingClosureAtFileLocation, v113, v115);

      goto LABEL_30;
    }

LABEL_33:
    swift_once();
    goto LABEL_29;
  }

LABEL_30:
  sub_1006D12B4();

  return sub_10000CFBC(v41, &unk_10094D210, &qword_10078DE20);
}

void sub_1006D48B8()
{
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v5 - 8);
  v7 = v39 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent;
  v9 = v0;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView(0)) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent;
  *(v9 + v10) = [objc_allocWithZone(UIView) init];
  v11 = v9;
  v12 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v9 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v45 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  v46 = *(v14 + 56);
  v15 = v14 + 56;
  v44 = v13;
  v46(v7, 1, 1, v13);
  v43 = v15;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v2 + 104);
  v17 = v4;
  v41 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = sub_1007626BC();
  v42 = v18;
  v19 = objc_allocWithZone(v18);
  *(v11 + v45) = sub_1007626AC();
  v45 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel;
  v20 = v13;
  v21 = v46;
  v46(v7, 1, 1, v20);
  v22 = v16;
  v23 = v40;
  v39[1] = v2 + 104;
  v40(v17, v22, v1);
  v24 = objc_allocWithZone(v18);
  *(v11 + v45) = sub_1007626AC();
  v25 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView;
  v26 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView(0));
  *(v11 + v25) = sub_1004760F8(1);
  v45 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel;
  v27 = v44;
  v21(v7, 1, 1, v44);
  v28 = v41;
  v23(v17, v41, v47);
  v29 = v42;
  v30 = objc_allocWithZone(v42);
  *(v11 + v45) = sub_1007626AC();
  v31 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v46(v7, 1, 1, v27);
  v23(v17, v28, v47);
  v32 = objc_allocWithZone(v29);
  *(v11 + v31) = sub_1007626AC();
  v33 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  *(v11 + v33) = [objc_allocWithZone(UIButton) init];
  v34 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView(0);
  *(v11 + v34) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v11 + v35) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) = 0;
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction) = 0;
  v36 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v37 = enum case for MediaOverlayStyle.matchSystem(_:);
  v38 = sub_10076361C();
  (*(*(v38 - 8) + 104))(v11 + v36, v37, v38);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006D4DBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PageTraitEnvironment.defaultPageMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007706CC();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

void PageTraitEnvironment.pageColumnWidth.getter()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706CC();

  if (v3)
  {
    [v1 pageContainerSize];
    sub_1006D502C(v4, v5);
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  else
  {
    [v1 pageMarginInsets];
    [v1 pageContainerSize];
  }
}

void sub_1006D502C(double a1, double a2)
{
  if (a2 >= a1)
  {
    if (a1 != 744.0)
    {
      JUScreenClassGetPortraitWidth();
      if (v4 < a1)
      {
        JUScreenClassGetPortraitWidth();
      }
    }
  }

  else if (a1 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < a1)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }
}

double PageTraitEnvironment.pageContentSize.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  [v0 pageMarginInsets];
  return v2 - v3 - v4;
}

uint64_t sub_1006D5148@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v109 = a5;
  v110 = a4;
  v121 = a3;
  v122 = a2;
  v117 = a13;
  v118 = a14;
  v115 = a1;
  v116 = a6;
  v106 = sub_10075F21C();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10076B66C();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1007658FC();
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10076EA6C();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100760F8C();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = &v91 - v23;
  v24 = sub_10076B5BC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076C36C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v114 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v91 - v32;
  v34 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  __chkstk_darwin(v34);
  v108 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v91 - v37;
  sub_100016E2C(v122, &v91 - v37, &qword_1009499A0, &qword_1007848B0);
  v107 = v34;
  v39 = *(v34 + 48);
  v122 = v38;
  sub_100016E2C(v121, &v38[v39], &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();

  v121 = v29;
  v40 = *(v29 + 104);
  v41 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v124)
  {
    v41 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v42 = *v41;
  v119 = v33;
  v120 = v28;
  v40(v33, v42, v28);
  swift_getKeyPath();
  sub_10076F49C();

  v43 = v25;
  v44 = (*(v25 + 88))(v27, v24);
  if (v44 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if (v44 == enum case for Shelf.ContentType.productReview(_:))
    {
      swift_getKeyPath();
      sub_10076F49C();

      if (*(v123 + 16))
      {
        sub_10000A570(v123 + 32, &v124);

        sub_10000A5D4(&qword_1009575A0, &unk_100784980);
        sub_100760FAC();
        v57 = swift_dynamicCast();
        v53 = v119;
        if (v57)
        {
          v58 = v94;
          sub_100760F9C();
          v59 = v95;
          v60 = v96;
          v61 = (*(v95 + 88))(v58, v96);
          if (v61 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
          {
            (*(v59 + 8))(v58, v60);
            v56 = v120;
            v55 = v121;
            (*(v121 + 16))(v114, v53, v120);
            if (qword_100941288 != -1)
            {
              swift_once();
            }

            sub_10076C33C();
          }

          else
          {
            v56 = v120;
            v55 = v121;
            v85 = v114;
            if (v61 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
            {
              v87 = v91;
              sub_10076202C();
              (*(v55 + 16))(v85, v53, v56);
              sub_10052C890(v87, 0);
              sub_10076C33C();

              (*(v92 + 8))(v87, v93);
              (*(v55 + 8))(v53, v56);
              sub_10000CFBC(v122, &qword_100942C40, &unk_100786C80);
              return (*(v59 + 8))(v58, v60);
            }

            (*(v59 + 8))(v58, v60);
            v86 = v91;
            sub_10076202C();
            (*(v55 + 16))(v85, v53, v56);
            sub_10052C890(v86, 1);
            sub_10076C33C();

            (*(v92 + 8))(v86, v93);
          }

          goto LABEL_36;
        }
      }

      else
      {

        v53 = v119;
      }

      v124 = v109;
      v77 = v122;
      v78 = v108;
      sub_100016E2C(v122, v108, &qword_100942C40, &unk_100786C80);
      v79 = *(v107 + 48);
      sub_100061E6C();
      sub_1007620BC();
      (*(v121 + 8))(v53, v120);
      sub_10000CFBC(v77, &qword_100942C40, &unk_100786C80);
      sub_10000CFBC(v78 + v79, &qword_1009499A0, &qword_1007848B0);
      v80 = v78;
      v81 = &qword_1009499A0;
      v82 = &qword_1007848B0;
      return sub_10000CFBC(v80, v81, v82);
    }

    if (v44 != enum case for Shelf.ContentType.productBadge(_:))
    {
      v124 = v109;
      v73 = v122;
      v74 = v108;
      sub_100016E2C(v122, v108, &qword_100942C40, &unk_100786C80);
      v75 = *(v107 + 48);
      sub_100061E6C();
      sub_1007620BC();
      (*(v121 + 8))(v119, v120);
      sub_10000CFBC(v73, &qword_100942C40, &unk_100786C80);
      sub_10000CFBC(v74 + v75, &qword_1009499A0, &qword_1007848B0);
      sub_10000CFBC(v74, &qword_1009499A0, &qword_1007848B0);
      return (*(v43 + 8))(v27, v24);
    }

    v65 = v97;
    sub_10076C28C();
    v66 = v98;
    sub_10076C28C();
    v63 = v120;
    v62 = v121;
    v64 = v119;
    (*(v121 + 16))(v114, v119, v120);
    sub_1004C8060(v65, v66);
    sub_10076C33C();
    v67 = *(v99 + 8);
    v68 = v66;
    v69 = v100;
    v67(v68, v100);
    v67(v65, v69);
LABEL_22:
    (*(v62 + 8))(v64, v63);
LABEL_45:
    v81 = &qword_100942C40;
    v82 = &unk_100786C80;
    v80 = v122;
    return sub_10000CFBC(v80, v81, v82);
  }

  swift_getKeyPath();
  v45 = v111;
  sub_10076F49C();

  v46 = v112;
  v47 = v113;
  if ((*(v112 + 88))(v45, v113) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v46 + 8))(v45, v47);
    v63 = v120;
    v62 = v121;
    v64 = v119;
    (*(v121 + 16))(v114, v119, v120);
    if (qword_10093FCE8 != -1)
    {
      swift_once();
    }

    sub_10076C33C();
    goto LABEL_22;
  }

  (*(v46 + 96))(v45, v47);
  v48 = v103;
  v49 = v101;
  v50 = v102;
  (*(v103 + 32))(v101, v45, v102);
  sub_1007658EC();
  v51 = v104;
  sub_100760E3C();

  v52 = (*(v105 + 88))(v51, v106);
  v53 = v119;
  v54 = v114;
  if (v52 == enum case for AppPlatform.phone(_:))
  {
    goto LABEL_6;
  }

  if (v52 == enum case for AppPlatform.pad(_:))
  {
    v70 = sub_10076588C();
    v72 = v120;
    v71 = v121;
    (*(v121 + 16))(v54, v53, v120);
    if (v70)
    {
      if (qword_100940580 == -1)
      {
        goto LABEL_38;
      }
    }

    else if (qword_10093FCE8 == -1)
    {
LABEL_38:

      sub_10076C33C();
      (*(v48 + 8))(v49, v50);
      (*(v71 + 8))(v53, v72);
      goto LABEL_45;
    }

    swift_once();
    goto LABEL_38;
  }

  if (v52 == enum case for AppPlatform.messages(_:))
  {
LABEL_6:
    if (sub_10076588C())
    {
      v56 = v120;
      v55 = v121;
      (*(v121 + 16))(v54, v53, v120);
      if (qword_10093F598 != -1)
      {
        swift_once();
      }

      sub_10076C33C();
      (*(v48 + 8))(v49, v50);
LABEL_36:
      (*(v55 + 8))(v53, v56);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v52 == enum case for AppPlatform.watch(_:))
  {
    v84 = v120;
    v83 = v121;
    (*(v121 + 16))(v114, v119, v120);
    if (qword_10093F9F8 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v52 == enum case for AppPlatform.tv(_:) || v52 == enum case for AppPlatform.mac(_:) || v52 == enum case for AppPlatform.vision(_:))
  {
LABEL_43:
    v84 = v120;
    v83 = v121;
    (*(v121 + 16))(v54, v53, v120);
    if (qword_10093FCE8 == -1)
    {
LABEL_44:

      sub_10076C33C();
      (*(v48 + 8))(v49, v50);
      (*(v83 + 8))(v53, v84);
      goto LABEL_45;
    }

LABEL_48:
    swift_once();
    goto LABEL_44;
  }

  v124 = v109;
  v88 = v122;
  v89 = v108;
  sub_100016E2C(v122, v108, &qword_100942C40, &unk_100786C80);
  v90 = *(v107 + 48);
  sub_100061E6C();
  sub_1007620BC();
  (*(v48 + 8))(v49, v50);
  (*(v121 + 8))(v53, v120);
  sub_10000CFBC(v88, &qword_100942C40, &unk_100786C80);
  sub_10000CFBC(v89 + v90, &qword_1009499A0, &qword_1007848B0);
  sub_10000CFBC(v89, &qword_1009499A0, &qword_1007848B0);
  return (*(v105 + 8))(v104, v106);
}

uint64_t sub_1006D6750@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v32 = a6;
  v33 = a3;
  v34 = a5;
  v35 = a7;
  v38 = a4;
  v36 = a14;
  v37 = a15;
  v18 = sub_10076B5BC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  __chkstk_darwin(v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v31 - v26;
  sub_100016E2C(a2, &v31 - v26, &qword_1009499A0, &qword_1007848B0);
  sub_100016E2C(v33, &v27[*(v22 + 48)], &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();

  v33 = v19;
  if ((*(v19 + 88))(v21, v18) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v39 = v34;
    v40 = v32;
    sub_100016E2C(v27, v24, &qword_100942C40, &unk_100786C80);
    v28 = *(v22 + 48);
    sub_1006D6D60();
    sub_1007620BC();
    sub_10000CFBC(v27, &qword_100942C40, &unk_100786C80);
    sub_10000CFBC(&v24[v28], &qword_1009499A0, &qword_1007848B0);
    return sub_10000CFBC(v24, &qword_1009499A0, &qword_1007848B0);
  }

  else
  {
    v39 = v34;
    sub_100016E2C(v27, v24, &qword_100942C40, &unk_100786C80);
    v30 = *(v22 + 48);
    sub_100061E6C();
    sub_1007620AC();
    sub_10000CFBC(v27, &qword_100942C40, &unk_100786C80);
    sub_10000CFBC(&v24[v30], &qword_1009499A0, &qword_1007848B0);
    sub_10000CFBC(v24, &qword_1009499A0, &qword_1007848B0);
    return (*(v33 + 8))(v21, v18);
  }
}

uint64_t sub_1006D6B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1006D6D60();

  return sub_1007620BC();
}

uint64_t sub_1006D6C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1006D6D60();

  return sub_1007620AC();
}

uint64_t sub_1006D6CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D6DC4();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

unint64_t sub_1006D6D60()
{
  result = qword_100965138;
  if (!qword_100965138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100965138);
  }

  return result;
}

unint64_t sub_1006D6DC4()
{
  result = qword_100965140;
  if (!qword_100965140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100965140);
  }

  return result;
}

void sub_1006D6E18(uint64_t a1, char a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + qword_1009602D0);

    sub_10007E008();
    sub_1006D8F80(&qword_100952B10, sub_10007E008, &protocol conformance descriptor for UIImageView);
    sub_100760BFC();
  }

  sub_10007E008();
  sub_1006D8F80(&qword_100952B10, sub_10007E008, &protocol conformance descriptor for UIImageView);
  sub_100760BFC();
  sub_1006D1BAC(a1, a2 & 1);
  v9 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView);
  v10 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v11 = *(*(v9 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_1006D8F80(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  sub_100760BFC();

  v13 = *(*(v9 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_100760BFC();

  v14 = *(*(v9 + v10) + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView];
    v16 = v14;
    v17 = v15;
    sub_100760BFC();

    v18 = *&v16[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView];
    sub_100760BFC();
  }
}

uint64_t sub_1006D7100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v6 - 8);
  v94 = &v73 - v7;
  v93 = sub_100768FEC();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v73 - v11;
  v12 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v12 - 8);
  v96 = &v73 - v13;
  v14 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v14 - 8);
  v97 = &v73 - v15;
  v16 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - v17;
  v19 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v19 - 8);
  v99 = &v73 - v20;
  v21 = sub_10000A5D4(&qword_10094FCE8, qword_100798EB8);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v24 - 8);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v98 = &v73 - v27;
  sub_1006D220C(a1, a2);
  v28 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView);
  if (sub_100761E5C())
  {
    v29 = sub_10076C5AC();
  }

  else
  {
    v29 = 0;
  }

  [*(v28 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v29];

  v30 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView);
  v31 = sub_100761E4C();
  v32 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v98;
  v88 = v33 + 56;
  v34(v98, 1, 1, v32);
  v36 = sub_10076361C();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  v37 = sub_10075F78C();
  (*(*(v37 - 8) + 56))(v99, 1, 1, v37);
  sub_10075E67C();
  v38 = swift_dynamicCastClass();
  v39 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView);
  if (v38)
  {
    v82 = v34;
    v83 = v32;
    v86 = v23;
    v40 = v38;
    v41 = v39;
    v42 = sub_1007628DC();
    v95 = a2;
    v76 = v42;
    v43 = *(v42 - 8);
    v78 = *(v43 + 56);
    v87 = v43 + 56;
    v78(v18, 1, 1, v42);
    v85 = v10;
    v79 = v31;
    v77 = *(v10 + 56);
    v44 = v97;
    v77(v97, 1, 1, v9);
    v45 = v30;
    v46 = sub_10076C54C();
    v47 = *(v46 - 8);
    v74 = *(v47 + 56);
    v75 = v47 + 56;
    v48 = v96;
    v74(v96, 1, 1, v46);
    swift_retain_n();
    v49 = v98;
    sub_1004D0A60(v40, v41, v98, v95, 1, 0, v99, v18, v48, v44);
    sub_10000CFBC(v48, &unk_100949290, &unk_10078BBF0);
    v41[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    v80 = v41;
    [v41 setNeedsLayout];
    sub_10000CFBC(v44, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v18, &unk_1009492A0, &unk_10078BC00);
    v84 = v45;
    v50 = *&v45[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v81 = v40;
    v51 = v49;
    v52 = sub_10075E66C();
    v53 = v95;
    v78(v18, 1, 1, v76);
    v54 = v53;
    v87 = v9;
    (v77)(v44, 1, 1);
    v74(v48, 1, 1, v46);
    sub_1004D0A60(v52, v50, v51, v53, 0, 0, v99, v18, v48, v44);
    sub_10000CFBC(v48, &unk_100949290, &unk_10078BBF0);
    v50[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v50 setNeedsLayout];

    sub_10000CFBC(v44, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v18, &unk_1009492A0, &unk_10078BC00);
    v55 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v50[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v50[v55] setUserInteractionEnabled:0];
    [v50 setHidden:1];
    v56 = v79;
    v57 = sub_10076BB5C();
    if (v57)
    {
    }

    sub_100261178(v57 != 0);
    v58 = *&v50[v55];
    v59 = sub_10076BB3C();
    v60 = v56;

    v61 = sub_10076BA2C();

    v62 = v89;
    v82(v89, 1, 1, v83);
    v63 = v90;
    v64 = v93;
    (*(v90 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v93);
    (*(v63 + 56))(v94, 1, 1, v64);
    sub_1006D8F80(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v65 = v92;
    sub_10076759C();
    sub_1001F12C8(v59, v61, 0, v62, v65, v54, 0, 0);

    (*(v85 + 8))(v65, v87);
    sub_10000CFBC(v62, &unk_100946760, &unk_100787A20);
    v66 = v84;
    sub_100345140(v60, v84, v54);

    v23 = v86;
    sub_10029E170(v66, v86);
    v35 = v98;
  }

  else
  {
    [*(v30 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) setHidden:1];
    v67 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
    v68 = sub_1007628DC();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
    v69 = v97;
    (*(v10 + 56))(v97, 1, 1, v9);
    v70 = sub_10076C54C();
    v71 = v96;
    (*(*(v70 - 8) + 56))(v96, 1, 1, v70);
    sub_1004D0A60(v31, v67, v35, a2, 0, 0, v99, v18, v71, v69);
    sub_10000CFBC(v71, &unk_100949290, &unk_10078BBF0);
    v67[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v67 setNeedsLayout];
    sub_10000CFBC(v69, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v18, &unk_1009492A0, &unk_10078BC00);
    sub_10029E170(v30, v23);
  }

  sub_10000CFBC(v99, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v23, &qword_10094FCE8, qword_100798EB8);
  return sub_10000CFBC(v35, &unk_100946760, &unk_100787A20);
}

void sub_1006D7D00(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v154 = a3;
  v152 = a2;
  v8 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v8 - 8);
  v144 = v125 - v9;
  v143 = sub_100768FEC();
  v140 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v148 = *(v11 - 8);
  v149 = v11;
  __chkstk_darwin(v11);
  v142 = v125 - v12;
  v13 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v13 - 8);
  v145 = v125 - v14;
  v15 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v15 - 8);
  v147 = v125 - v16;
  v17 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v17 - 8);
  v146 = v125 - v18;
  v19 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v19 - 8);
  v21 = v125 - v20;
  v22 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v22 - 8);
  v24 = v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v125 - v26;
  v28 = sub_10000A5D4(&qword_10094FCE8, qword_100798EB8);
  __chkstk_darwin(v28 - 8);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = sub_10076361C();
  v35 = *(v34 - 1);
  __chkstk_darwin(v34);
  v151 = v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = v125 - v38;
  sub_100767F7C();
  v40 = a1;
  if (swift_dynamicCastClass())
  {
    v150 = a1;

    v41 = sub_100767EFC();
    v43 = v153;
    v42 = v154;
    sub_1006D7100(v41, v154);

    v44 = *(v43 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView);
    v45 = sub_100767F5C();
    v46 = sub_100767F6C();
    sub_100647128(v45, v46, v42);

    v47 = *(v43 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView);
    v48 = [v44 backgroundColor];
    [v47 setBackgroundColor:v48];

    sub_100767F0C();
    v49 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v50 = v151;
    (*(v35 + 16))(v151, v43 + v49, v34);
    swift_beginAccess();
    (*(v35 + 24))(v43 + v49, v39, v34);
    swift_endAccess();
    sub_100503948(v50);
    v51 = *(v35 + 8);
    v51(v50, v34);
    v51(v39, v34);
    *(v43 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_100767F3C() & 1;
    sub_100506394(0);
    sub_100767EFC();

    v52 = sub_100761E4C();
    v53 = a4;
    v54 = a5;
    v55 = v152;
  }

  else
  {
    v135 = v33;
    v56 = v39;
    v57 = v153;
    v137 = v34;
    v134 = v24;
    v136 = v30;
    v139 = v27;
    v138 = v21;
    sub_100764E1C();
    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      return;
    }

    v59 = v58;
    v60 = *(v57 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView);
    v150 = v40;

    v61 = sub_100647A70(v59, v154);
    v62 = *(v57 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView);
    v63 = [v60 backgroundColor];
    [v62 setBackgroundColor:v63];

    sub_100764DAC();
    v64 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v65 = v35;
    v66 = *(v35 + 16);
    v67 = v151;
    v68 = v137;
    v66(v151, v57 + v64, v137);
    swift_beginAccess();
    (*(v65 + 24))(v57 + v64, v56, v68);
    swift_endAccess();
    sub_100503948(v67);
    v69 = *(v65 + 8);
    v69(v67, v68);
    v69(v56, v68);
    *(v57 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_100764DDC() & 1;
    sub_100506394(0);
    v70 = *(v57 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView);
    if (sub_100764D8C())
    {
      v71 = sub_10076C5AC();
    }

    else
    {
      v71 = 0;
    }

    v72 = v135;
    [*(v70 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v71];

    v73 = *(v57 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView);
    v74 = sub_100764D7C();
    sub_100764DAC();
    v75 = *(v65 + 56);
    v75(v72, 0, 1, v68);
    sub_1006D35FC(v74, v154, v72);

    sub_10000CFBC(v72, &qword_10094FCE8, qword_100798EB8);
    v76 = *(v73 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    sub_100764D9C();
    v77 = sub_10076FF6C();

    [v76 setTitle:v77 forState:0];

    v78 = *(v73 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
    if (sub_100764D8C())
    {
      v79 = sub_10076C5AC();
    }

    else
    {
      v79 = 0;
    }

    v80 = v148;
    [v78 setAttributedText:v79];

    v81 = sub_100764D7C();
    v82 = v136;
    v151 = v59;
    sub_100764DAC();
    v75(v82, 0, 1, v137);
    v83 = v154;
    sub_1006D35FC(v81, v154, v82);
    v84 = *(v57 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView);
    v153 = v81;
    v85 = sub_10076C4BC();
    v86 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    v87 = *(v86 - 8);
    v88 = *(v87 + 56);
    v89 = v139;
    v135 = (v87 + 56);
    v88(v139, 1, 1, v86);
    v90 = sub_10075F78C();
    v91 = v138;
    (*(*(v90 - 8) + 56))(v138, 1, 1, v90);
    sub_10075E67C();
    v92 = swift_dynamicCastClass();
    v93 = *&v84[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
    if (v92)
    {
      v132 = v88;
      v133 = v86;
      v137 = v84;
      v94 = v92;
      v95 = v93;
      v128 = sub_1007628DC();
      v96 = *(v128 - 8);
      v127 = *(v96 + 56);
      v129 = v96 + 56;
      v97 = v146;
      v127(v146, 1, 1, v128);
      v126 = *(v80 + 56);
      v98 = v147;
      v126(v147, 1, 1, v149);
      v99 = sub_10076C54C();
      v100 = *(v99 - 8);
      v125[0] = *(v100 + 56);
      v125[1] = v100 + 56;
      v101 = v145;
      (v125[0])(v145, 1, 1, v99);
      swift_retain_n();
      sub_1004D0A60(v94, v95, v89, v154, 1, 0, v138, v97, v101, v98);
      sub_10000CFBC(v101, &unk_100949290, &unk_10078BBF0);
      v95[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10026202C();
      v130 = v95;
      [v95 setNeedsLayout];
      sub_10000CFBC(v98, &qword_10094F730, qword_10078A050);
      sub_10000CFBC(v97, &unk_1009492A0, &unk_10078BC00);
      v102 = *&v137[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
      v131 = v94;
      v103 = sub_10075E66C();
      v127(v97, 1, 1, v128);
      v126(v98, 1, 1, v149);
      v104 = v99;
      v91 = v138;
      (v125[0])(v101, 1, 1, v104);
      sub_1004D0A60(v103, v102, v89, v154, 0, 0, v91, v97, v101, v98);
      sub_10000CFBC(v101, &unk_100949290, &unk_10078BBF0);
      v102[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10026202C();
      [v102 setNeedsLayout];

      sub_10000CFBC(v98, &qword_10094F730, qword_10078A050);
      sub_10000CFBC(v97, &unk_1009492A0, &unk_10078BC00);
      v105 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
      [*&v102[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
      [*&v102[v105] setUserInteractionEnabled:0];
      [v102 setHidden:1];
      v106 = sub_10076BB5C();
      if (v106)
      {
      }

      sub_100261178(v106 != 0);
      v107 = *&v102[v105];
      v108 = sub_10076BB3C();

      v109 = sub_10076BA2C();

      v110 = v134;
      v132(v134, 1, 1, v133);
      v111 = v140;
      v112 = v143;
      (*(v140 + 104))(v141, enum case for OfferButtonSubtitlePosition.below(_:), v143);
      (*(v111 + 56))(v144, 1, 1, v112);
      sub_1006D8F80(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      v113 = v142;
      sub_10076759C();
      v114 = v154;
      sub_1001F12C8(v108, v109, 0, v110, v113, v154, 0, 0);

      (*(v148 + 8))(v113, v149);
      sub_10000CFBC(v110, &unk_100946760, &unk_100787A20);
      v115 = v137;
      sub_100345140(v85, v137, v114);

      v82 = v136;
      sub_10029E170(v115, v136);
      v116 = v152;
      v117 = v139;
    }

    else
    {
      [*&v84[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView] setHidden:1];
      v118 = *&v84[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
      v119 = sub_1007628DC();
      v120 = v146;
      (*(*(v119 - 8) + 56))(v146, 1, 1, v119);
      v121 = v147;
      (*(v80 + 56))(v147, 1, 1, v149);
      v122 = sub_10076C54C();
      v123 = v145;
      (*(*(v122 - 8) + 56))(v145, 1, 1, v122);
      sub_1004D0A60(v85, v118, v139, v83, 0, 0, v91, v120, v123, v121);
      v124 = v123;
      v117 = v139;
      sub_10000CFBC(v124, &unk_100949290, &unk_10078BBF0);
      v118[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10026202C();
      [v118 setNeedsLayout];
      sub_10000CFBC(v121, &qword_10094F730, qword_10078A050);
      sub_10000CFBC(v120, &unk_1009492A0, &unk_10078BC00);
      sub_10029E170(v84, v82);
      v116 = v152;
    }

    sub_10000CFBC(v91, &unk_10094D210, &qword_10078DE20);
    sub_10000CFBC(v117, &unk_100946760, &unk_100787A20);
    sub_10000CFBC(v82, &qword_10094FCE8, qword_100798EB8);
    sub_100764D7C();

    v52 = sub_10076C4BC();
    v53 = a4;
    v54 = a5;
    v55 = v116;
  }

  sub_10029E930(v52, v55, v53, v54);
}

uint64_t sub_1006D8F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006D8FCC()
{
  result = qword_100957FA0;
  if (!qword_100957FA0)
  {
    type metadata accessor for VideoView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957FA0);
  }

  return result;
}

void sub_1006D9024(uint64_t a1, char a2)
{
  v5 = *&v2[qword_1009602D0];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  if ((a2 & 1) != 0 && ([v5 alpha], v7 == 1.0))
  {
    [v5 setAlpha:0.0];
    [v5 setImage:a1];
    sub_10039B1D4();
    v8 = v2;
    v9 = sub_10077089C();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    v13[4] = sub_1006D9380;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10009AEDC;
    v13[3] = &unk_1008A04B8;
    v11 = _Block_copy(v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimation];
  }

  else
  {

    [v5 setImage:a1];
  }
}

id sub_1006D91F0()
{
  v1 = [*(v0 + qword_1009602D0) image];

  return v1;
}

void sub_1006D9234(void *a1)
{
  [*(v1 + qword_1009602D0) setImage:a1];
}

void (*sub_1006D9288(void *a1))(id *a1)
{
  v3 = *(v1 + qword_1009602D0);
  a1[1] = v3;
  *a1 = [v3 image];
  return sub_1006D92F0;
}

void sub_1006D92F0(id *a1)
{
  v1 = *a1;
  [a1[1] setImage:?];
}

uint64_t sub_1006D9348()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1006D93A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1006D93BC@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v8 = sub_10076341C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_10077090C())
  {

    v12 = sub_1007708FC();
    v20[1] = v13;
    v20[2] = v12;
    v14 = swift_allocObject();
    v20[0] = a4;
    v15 = v14;
    swift_weakInit();
    (*(v9 + 16))(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v8);
    v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v21 = a1;
    v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    (*(v9 + 32))(v18 + v16, v11, v8);
    *(v18 + v17) = v20[0];
    *(a5 + 24) = sub_10000A5D4(&qword_100942C18, &unk_10078C540);
    *(a5 + 32) = sub_100023880();
    sub_10000DB7C(a5);

    sub_10076A3BC();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

void *sub_1006D95F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10044B6E4(a1, a2);
  sub_1000F92CC(v2);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1006D9640()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006D9678()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1006D9750(void *a1)
{
  sub_1006D9F88();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&v1[qword_100965200];
    if (v4)
    {
      v5 = *&v1[qword_100965200];
    }

    else
    {
      v5 = [v1 contentView];
      v4 = 0;
    }

    v6 = v4;
    [v5 addSubview:v3];
    [v1 setNeedsLayout];
  }
}

uint64_t sub_1006D9824(void *a1)
{
  v3 = *&v1[qword_100965200];
  if (v3)
  {
    v4 = *&v1[qword_100965200];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = v3;
    goto LABEL_7;
  }

  v4 = [v1 contentView];
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v3;
  v6 = [a1 superview];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  sub_1000ACA5C();
  v8 = sub_100770EEC();

  v4 = v7;
LABEL_8:

  return v8 & 1;
}

void sub_1006D98E0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1006D9750(0);
}

void sub_1006D993C(double *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setFrame:{*a1, a1[1], a1[2], a1[3]}];
  }
}

void sub_1006D99B4(void *a1)
{
  v3 = *(v1 + qword_100965200);
  *(v1 + qword_100965200) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = a1;
  if (Strong)
  {
    [v4 addSubview:Strong];
  }
}

id sub_1006D9A44(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v11 = &a1[qword_1009A32A8];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a1[qword_100965200] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

void sub_1006D9AE8()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + qword_100965200);
}

void sub_1006D9B28(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = *(a1 + qword_100965200);
}

uint64_t type metadata accessor for FramedVideoCollectionViewCell(uint64_t a1)
{
  result = qword_100965230;
  if (!qword_100965230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1006D9C34(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1006D9C88;
}

void sub_1006D9C88(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1006D9750(v2);
  }

  else
  {
    sub_1006D9750(*a1);
  }
}

uint64_t sub_1006D9CF0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006DA0F0(qword_1009653D0, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007B42C8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1006D9D64(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006DA0F0(qword_1009653D0, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007B42C8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

void (*sub_1006D9DF0(uint64_t *a1))(void *a1)
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

  v3 = v2;
  *a1 = v2;
  sub_1006DA0F0(qword_1009653D0, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007B42C8);
  *(v3 + 32) = sub_10076483C();
  return sub_100019FCC;
}

void sub_1006D9F88()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *&v0[qword_100965200];
  if (v2)
  {
    v9 = *&v0[qword_100965200];
    if (Strong)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = v2;
    goto LABEL_11;
  }

  v9 = [v0 contentView];
  if (!Strong)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1006DA0F0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  v3 = v2;
  v4 = [Strong superview];
  if (v4)
  {
    v5 = v4;
    sub_1000ACA5C();
    v6 = sub_100770EEC();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v9 = v7;
    [v7 removeFromSuperview];
  }

  else
  {
  }

LABEL_11:
}

uint64_t sub_1006DA0F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006DA138(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1006DA1D0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009A32B0;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006DA228(uint64_t a1)
{
  v3 = qword_1009A32B0;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006DA2E8()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "prepareForReuse");
  return (*(*((v3 & v2) + 0x58) + 88))(*((v3 & v2) + 0x50));
}

uint64_t sub_1006DA404@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v3);
  sub_100763FAC();
  v6 = sub_100763FDC();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

char *sub_1006DA570(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *v4;
  v12 = swift_isaMask;
  v13 = qword_1009A32B0;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = qword_1009A32B8;
  *&v5[v15] = (*(*((v12 & v11) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v21 = [v20 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v22 = [v20 contentView];
  [v22 addSubview:*&v20[qword_1009A32B8]];

  return v20;
}

id sub_1006DA7AC()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[qword_1009A32B8];
  [v0 bounds];
  return [v1 setFrame:?];
}

void sub_1006DA818(void *a1)
{
  v1 = a1;
  sub_1006DA7AC();
}

void sub_1006DA860(double a1, double a2)
{
  type metadata accessor for ScrollablePillView(0);
  swift_dynamicCastClass();
  sub_10076D9CC();
}

double sub_1006DA8C4(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1006DA860(a2, a3);
  v7 = v6;

  return v7;
}

void sub_1006DA918(void *a1)
{
  v1 = a1;
  sub_1006DA2E8();
}

id sub_1006DA960(void *a1)
{
  v1 = a1;
  v2 = sub_1006DA9A4();

  return v2;
}

void sub_1006DAB20(uint64_t a1)
{
  sub_10000DBE0(a1 + qword_1009A32B0);
  v2 = *(a1 + qword_1009A32B8);
}

void sub_1006DABAC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_1009A32B0;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_1009A32B8;
  *(v1 + v6) = (*(*((v3 & v2) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  sub_10077156C();
  __break(1u);
}

void *sub_1006DAD14()
{
  v0 = sub_1007617CC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007617FC();
  sub_1006DAEB0(&qword_100945C00, &type metadata accessor for HorizontalRule, &protocol conformance descriptor for HorizontalRule);
  result = sub_10076332C();
  if (v7)
  {
    sub_1007617EC();
    swift_getKeyPath();
    sub_10076338C();

    v5 = v7;
    sub_1007617AC();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1006DAEB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006DAEFC()
{
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v5._countAndFlagsBits = 0x535F474E494D4F43;
    v5._object = 0xEB000000004E4F4FLL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    sub_1007622EC(v5, v6);
    v1 = objc_allocWithZone(_UIContentUnavailableView);
    v2 = sub_10076FF6C();

    v3 = [v1 initWithFrame:v2 title:0 style:{0.0, 0.0, 0.0, 0.0}];

    [v0 setView:v3];
  }
}

id sub_1006DB1CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ComingSoonViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1006DB224()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100764FDC();
  sub_10000DB18(v4, qword_1009A32C0);
  sub_10000A61C(v4, qword_1009A32C0);
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1720);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v16[3] = sub_10076D9AC();
  v16[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v16);
  v14 = v0;
  v15 = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v13);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  v14 = &type metadata for Double;
  v15 = &protocol witness table for Double;
  v13[0] = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9[4] = &type metadata for Double;
  v9[5] = &protocol witness table for Double;
  v9[1] = 0;
  return sub_100764FCC();
}

id sub_1006DB580()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009459C0, &unk_1007A1DA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1000843B0(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &qword_1009459C0, &unk_1007A1DA0);
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100761FEC();
    sub_100761FDC();
    v11 = sub_10076082C();
    sub_100107BF4(v11, sub_1000368B8);
    v13 = v12;

    v14 = sub_10076081C();
    sub_10050C274(v14, 0, v13);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1006DB814()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20[0] = sub_10076D1FC();
  v3 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100764FDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100764FFC();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();

  if (qword_100941530 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_1009A32C0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel];
  v20[4] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v20[5] = &protocol witness table for UIView;
  v20[1] = v17;
  v18 = v17;
  sub_100764FEC();
  sub_100764FBC();
  (*(v3 + 8))(v5, v20[0]);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyFooterCollectionViewCell(uint64_t a1)
{
  result = qword_1009654B0;
  if (!qword_1009654B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1006DBC48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_10076771C();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076F9AC();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyText;
  v16 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v9, qword_1009A1720);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel] = sub_10050BDFC(v12, 0, 0, 1);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_10076F95C();
  sub_10000CFBC(v36, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v37, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_10076262C();

  v27 = *&v19[v22];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v28 = v27;
  v29 = sub_100770D1C();
  v30 = *&v28[qword_10095B640];
  *&v28[qword_10095B640] = v29;
  v31 = v29;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_10050C644();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

uint64_t sub_1006DC140(uint64_t a1)
{
  v59 = a1;
  v58 = sub_10000A5D4(&qword_10095B618, qword_1007A9118);
  v66.i64[0] = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = v47 - v1;
  v2 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v2 - 8);
  v68 = v47 - v3;
  v64 = sub_10076C2DC();
  v69 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v6 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  __chkstk_darwin(v12);
  v57 = v47 - v13;
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v17 = *(sub_10076C20C() - 8);
  v67 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v54 = v19;
  *(v19 + 16) = xmmword_1007844F0;
  v20 = v19 + v18;
  v72 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v72 = 0x4020000000000000;
  v70 = 0x4030000000000000;
  sub_10076C27C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v62 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v65 = *(v69 + 104);
  v69 += 104;
  v26 = v64;
  v65(v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  v61 = v8;
  sub_10076C29C();
  sub_10076C1CC();
  v72 = 0x3FF0000000000000;
  sub_10076C29C();
  v72 = 0x4024000000000000;
  v70 = 0x4034000000000000;
  sub_10076C27C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  v56 = v5;
  *v5 = _Q0;
  v29 = v62;
  v30 = v65;
  (v65)(v5, v62, v26);
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  v31 = v67;
  v63 = v20;
  v60 = v16;
  top = UIEdgeInsetsZero.top;
  v52 = left;
  v32 = v56;
  sub_10076C1CC();
  v50 = 2 * v31;
  v72 = 0x3FF0000000000000;
  sub_10076C29C();
  v72 = 0x4034000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  v55 = v11;
  sub_10076C29C();
  v48 = vdupq_n_s64(0x4041000000000000uLL);
  *v32 = v48;
  v33 = v64;
  v30(v32, v29, v64);
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  v34 = v50;
  sub_10076C1CC();
  v74 = 0x4000000000000000;
  v47[1] = v34 + v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  v50 = sub_10050BAC4();
  v35 = v53;
  sub_10076757C();
  v36 = v58;
  sub_10076758C();
  v37 = *(v66.i64[0] + 8);
  v66.i64[0] += 8;
  v49 = v37;
  v37(v35, v36);
  v70 = v72;
  sub_10076C29C();
  v72 = 0x4034000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  v38 = v56;
  *v56 = v48;
  v39 = v62;
  (v65)(v38, v62, v33);
  sub_1007704BC();
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v74 = 0x4000000000000000;
  v48.i64[0] = 4 * v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  sub_10076757C();
  v40 = v58;
  sub_10076758C();
  v49(v35, v40);
  v70 = v72;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  v66 = vdupq_n_s64(0x404A000000000000uLL);
  *v38 = v66;
  v41 = v38;
  v42 = v38;
  v43 = v64;
  v44 = v65;
  (v65)(v41, v39, v64);
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  v45 = v48.i64[0];
  sub_10076C1CC();
  v67 += v45;
  v72 = 0x4000000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  *v42 = v66;
  (v44)(v42, v62, v43);
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v54;
}

uint64_t sub_1006DCD48()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965D58, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100942468, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965D60, &unk_1007B4708);
  sub_100071820(&qword_100965D68, &qword_100965D60, &unk_1007B4708, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965D70, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965D78, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DD260()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965D28, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100965D30, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965D38, &qword_1007B4700);
  sub_100071820(&qword_100965D40, &qword_100965D38, &qword_1007B4700, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965D48, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965D50, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DD778()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965CE0, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100965CE8, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965CF0, &qword_1007B46E8);
  sub_100071820(&qword_100965CF8, &qword_100965CF0, &qword_1007B46E8, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965D00, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965D08, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DDC90()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965C80, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100965C88, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100947D28, &unk_100789DC8);
  sub_100071820(&qword_100947D30, &qword_100947D28, &unk_100789DC8, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965C90, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965C98, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DE1A8()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965C68, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100951978, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_10094B630, &qword_1007916B0);
  sub_100071820(&qword_10094B638, &qword_10094B630, &qword_1007916B0, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965C70, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965C78, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DE6C0()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965BF8, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_10095F320, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965C00, &qword_1007B4698);
  sub_100071820(&qword_100965C08, &qword_100965C00, &qword_1007B4698, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965C10, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965C18, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DEBD8()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965C48, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_10095AB58, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965C50, &qword_1007B46B8);
  sub_100071820(&qword_100965C58, &qword_100965C50, &qword_1007B46B8, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_10095AB50, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965C60, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DF0F0()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965B60, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100965B48, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965B68, &unk_1007B45E8);
  sub_100071820(&qword_100965B70, &qword_100965B68, &unk_1007B45E8, &unk_100799ED0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965B40, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965B78, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DF608(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100950600, &qword_100788CC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10000A5D4(&qword_10094B618, &qword_100791698);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100016E2C(a1, &v16[-1] - v7, &qword_10094B618, &qword_100791698);
  v9 = sub_10000A5D4(&qword_100950560, &qword_10079A040);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &qword_10094B618, &qword_100791698);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_100761B9C();
    (*(v10 + 8))(v8, v9);
    v11 = sub_10076B09C();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10000A5D4(&qword_100950680, &unk_10079A0D0);
    v13 = sub_100071820(&qword_100950688, &qword_100950680, &unk_10079A0D0, &protocol conformance descriptor for Set<A>);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_10076560C();
  if (v17)
  {
    return sub_10000CD74(v16);
  }

  return result;
}

uint64_t sub_1006DF89C()
{
  v1 = sub_10000A5D4(&qword_100950608, &unk_1007B4660);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610, &unk_10079A060);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965D10, &qword_1007B46F0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568, &qword_10079A048);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598, &qword_100788C98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620, &qword_100788CA0);
  sub_100071820(&qword_1009465A0, &unk_100950620, &qword_100788CA0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  sub_10000A5D4(&qword_100965CF0, &qword_1007B46E8);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578, &qword_10079A050);
  v13 = sub_100071820(&qword_100950580, &qword_100950578, &qword_10079A050, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965D18, &qword_1007B46F8);
  sub_100071820(&qword_100965D20, &qword_100965D18, &qword_1007B46F8, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630, &unk_1007B4680);
  sub_100071820(&qword_100950638, &qword_100950630, &unk_1007B4680, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608, &unk_1007B4660);
}

uint64_t sub_1006DFF44()
{
  v1 = sub_10000A5D4(&qword_100950608, &unk_1007B4660);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610, &unk_10079A060);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965CB8, &qword_1007B46D0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568, &qword_10079A048);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598, &qword_100788C98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620, &qword_100788CA0);
  sub_100071820(&qword_1009465A0, &unk_100950620, &qword_100788CA0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  sub_10000A5D4(&qword_100965CC0, &qword_1007B46D8);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578, &qword_10079A050);
  v13 = sub_100071820(&qword_100950580, &qword_100950578, &qword_10079A050, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965CC8, &qword_1007B46E0);
  sub_100071820(&qword_100965CD0, &qword_100965CC8, &qword_1007B46E0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630, &unk_1007B4680);
  sub_100071820(&qword_100950638, &qword_100950630, &unk_1007B4680, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608, &unk_1007B4660);
}

uint64_t sub_1006E05EC()
{
  v1 = sub_10000A5D4(&qword_100950608, &unk_1007B4660);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610, &unk_10079A060);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965CA0, &qword_1007B46C0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568, &qword_10079A048);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598, &qword_100788C98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620, &qword_100788CA0);
  sub_100071820(&qword_1009465A0, &unk_100950620, &qword_100788CA0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  sub_10000A5D4(&qword_100947D28, &unk_100789DC8);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578, &qword_10079A050);
  v13 = sub_100071820(&qword_100950580, &qword_100950578, &qword_10079A050, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965CA8, &qword_1007B46C8);
  sub_100071820(&qword_100965CB0, &qword_100965CA8, &qword_1007B46C8, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630, &unk_1007B4680);
  sub_100071820(&qword_100950638, &qword_100950630, &unk_1007B4680, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608, &unk_1007B4660);
}

uint64_t sub_1006E0C94()
{
  v1 = sub_10000A5D4(&qword_100950608, &unk_1007B4660);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610, &unk_10079A060);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965C20, &qword_1007B46A0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568, &qword_10079A048);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598, &qword_100788C98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620, &qword_100788CA0);
  sub_100071820(&qword_1009465A0, &unk_100950620, &qword_100788CA0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  sub_10000A5D4(&qword_100965C28, &qword_1007B46A8);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578, &qword_10079A050);
  v13 = sub_100071820(&qword_100950580, &qword_100950578, &qword_10079A050, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965C30, &qword_1007B46B0);
  sub_100071820(&qword_100965C38, &qword_100965C30, &qword_1007B46B0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630, &unk_1007B4680);
  sub_100071820(&qword_100950638, &qword_100950630, &unk_1007B4680, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608, &unk_1007B4660);
}

uint64_t sub_1006E133C()
{
  v1 = sub_10000A5D4(&qword_100950608, &unk_1007B4660);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610, &unk_10079A060);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965BE0, &qword_1007B4670);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568, &qword_10079A048);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598, &qword_100788C98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620, &qword_100788CA0);
  sub_100071820(&qword_1009465A0, &unk_100950620, &qword_100788CA0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  sub_10000A5D4(&qword_100965B68, &unk_1007B45E8);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578, &qword_10079A050);
  v13 = sub_100071820(&qword_100950580, &qword_100950578, &qword_10079A050, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965BE8, &qword_1007B4678);
  sub_100071820(&qword_100965BF0, &qword_100965BE8, &qword_1007B4678, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630, &unk_1007B4680);
  sub_100071820(&qword_100950638, &qword_100950630, &unk_1007B4680, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608, &unk_1007B4660);
}

void sub_1006E19E4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v31 = a4;
  v32 = a3;
  v30 = a2;
  v5 = v4;
  v7 = sub_10000A5D4(&qword_100950600, &qword_100788CC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = sub_10000A5D4(&qword_10094B618, &qword_100791698);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_10000A5D4(&qword_100950560, &qword_10079A040);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_1006DF608(v13);
  sub_10000CFBC(v13, &qword_10094B618, &qword_100791698);
  v16 = sub_100761BAC();
  v17 = qword_1009503C8;
  if (v16)
  {
    swift_beginAccess();
    v18 = *&v5[v17];
    if (!v18)
    {
      goto LABEL_7;
    }

    v19 = v18;
    sub_100761B9C();
    sub_10076998C();
  }

  else
  {
    swift_beginAccess();
    v20 = *&v5[v17];
    if (!v20)
    {
      goto LABEL_7;
    }

    v19 = v20;
    sub_100761B9C();
    sub_100761BBC();
    sub_1007699FC();
  }

  (*(v8 + 8))(v10, v7);
LABEL_7:
  v21 = v30;
  v22 = v32;
  sub_10000A5D4(v30, v32);
  sub_100071820(v31, v21, v22, &unk_100799ED0);
  sub_10076B31C();
  v23 = [v5 collectionView];
  if (!v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [v23 window];

  if (v25)
  {

    v26 = [v5 collectionView];
    if (!v26)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v27 = v26;
    sub_10076666C();
  }

  v28 = [v5 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  [v28 bounds];

  sub_10076A6CC();
  if (sub_100761B8C())
  {
    sub_100760C1C();
  }
}

void sub_1006E1DF4(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_10076F13C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016E2C(a2, v97, &unk_1009434C0, &qword_100783F60);
  if (v98)
  {
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    if (swift_dynamicCast())
    {
      v18 = v66;
      [v18 bounds];
      LOBYTE(v91) = 1;
      *&v73 = v18;
      *(&v73 + 1) = v19;
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v22;
      BYTE8(v75) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v76 = _Q0;
      v77 = _Q0;
      v78 = 15;
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      *v17 = sub_10077068C();
      (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v28 = sub_10076F16C();
      (*(v15 + 8))(v17, v14);
      if (v28)
      {
        v81 = xmmword_10094FFF8;
        v82 = xmmword_100950008;
        v83 = xmmword_100950018;
        v79 = xmmword_10094FFD8;
        v80 = xmmword_10094FFE8;
        v87 = v75;
        v88 = v76;
        v89 = v77;
        v85 = v73;
        v86 = v74;
        v91 = xmmword_10094FFD8;
        v92 = xmmword_10094FFE8;
        v94 = xmmword_100950008;
        v95 = xmmword_100950018;
        v84 = qword_100950028;
        v90 = v78;
        v96 = qword_100950028;
        v93 = xmmword_10094FFF8;
        sub_100016E2C(&v79, &v67, &unk_1009505F0, &qword_1007A2110);
        xmmword_10094FFF8 = v87;
        xmmword_100950008 = v88;
        xmmword_100950018 = v89;
        qword_100950028 = v90;
        xmmword_10094FFD8 = v85;
        xmmword_10094FFE8 = v86;
        sub_10000CFBC(&v91, &unk_1009505F0, &qword_1007A2110);
        v29 = *&v65[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
        v30 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
        sub_1001F9960(&v73, &v67);
        sub_10076F5AC();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v13, 1, v30) == 1)
        {
          sub_10000CFBC(v13, &unk_100943200, &unk_100785840);
        }

        else
        {
          sub_100263BF0(v64, 1, v29, v13);
          (*(v31 + 8))(v13, v30);
        }

        v69 = xmmword_10094FFF8;
        v70 = xmmword_100950008;
        v71 = xmmword_100950018;
        v72 = qword_100950028;
        v67 = xmmword_10094FFD8;
        v68 = xmmword_10094FFE8;
        xmmword_10094FFD8 = v79;
        xmmword_10094FFE8 = v80;
        xmmword_10094FFF8 = v81;
        xmmword_100950008 = v82;
        xmmword_100950018 = v83;
        qword_100950028 = v84;
        sub_10000CFBC(&v67, &unk_1009505F0, &qword_1007A2110);
        sub_1001F99BC(&v73);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v62 = v4;
    v32 = v3;
  }

  else
  {
    v62 = v4;
    v32 = v3;
    sub_10000CFBC(v97, &unk_1009434C0, &qword_100783F60);
  }

  v33 = [v65 collectionView];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v33 indexPathsForSelectedItems];

  if (!v35)
  {
LABEL_20:
    v56 = *&v65[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
    v57 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v10, 1, v57) == 1)
    {
      sub_10000CFBC(v10, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v64, 1, v56, v10);

      (*(v58 + 8))(v10, v57);
    }

    return;
  }

  v36 = sub_1007701BC();

  if (!*(v36 + 16))
  {

    goto LABEL_20;
  }

  v37 = v63;
  v38 = *(v62 + 16);
  v39 = v36 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v60 = v32;
  v38(v63, v39, v32);

  v40 = [v65 collectionView];
  if (!v40)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v41 = v40;
  isa = sub_10075E02C().super.isa;
  v43 = [v41 cellForItemAtIndexPath:isa];

  if (!v43)
  {
    (*(v62 + 8))(v37, v60);
    goto LABEL_20;
  }

  v44 = v43;
  [v44 bounds];
  LOBYTE(v91) = 1;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  *&v74 = v46;
  *(&v74 + 1) = v47;
  *&v75 = v48;
  BYTE8(v75) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v76 = _Q0;
  v77 = _Q0;
  v78 = 15;
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  *v17 = sub_10077068C();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v50 = sub_10076F16C();
  (*(v15 + 8))(v17, v14);
  v51 = v62;
  if ((v50 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v81 = xmmword_10094FFF8;
  v82 = xmmword_100950008;
  v83 = xmmword_100950018;
  v79 = xmmword_10094FFD8;
  v80 = xmmword_10094FFE8;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v85 = v73;
  v86 = v74;
  v91 = xmmword_10094FFD8;
  v92 = xmmword_10094FFE8;
  v94 = xmmword_100950008;
  v95 = xmmword_100950018;
  v84 = qword_100950028;
  v90 = v78;
  v96 = qword_100950028;
  v93 = xmmword_10094FFF8;
  sub_100016E2C(&v79, &v67, &unk_1009505F0, &qword_1007A2110);
  xmmword_10094FFF8 = v87;
  xmmword_100950008 = v88;
  xmmword_100950018 = v89;
  qword_100950028 = v90;
  xmmword_10094FFD8 = v85;
  xmmword_10094FFE8 = v86;
  sub_10000CFBC(&v91, &unk_1009505F0, &qword_1007A2110);
  v52 = *&v65[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v53 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_1001F9960(&v73, &v67);
  v54 = v61;
  sub_10076F5AC();
  v55 = *(v53 - 8);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_10000CFBC(v54, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100263BF0(v64, 1, v52, v54);
    (*(v55 + 8))(v54, v53);
  }

  v69 = xmmword_10094FFF8;
  v70 = xmmword_100950008;
  v71 = xmmword_100950018;
  v72 = qword_100950028;
  v67 = xmmword_10094FFD8;
  v68 = xmmword_10094FFE8;
  xmmword_10094FFD8 = v79;
  xmmword_10094FFE8 = v80;
  xmmword_10094FFF8 = v81;
  xmmword_100950008 = v82;
  xmmword_100950018 = v83;
  qword_100950028 = v84;
  sub_10000CFBC(&v67, &unk_1009505F0, &qword_1007A2110);
  sub_1001F99BC(&v73);

  (*(v51 + 8))(v63, v60);
}

void sub_1006E2840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = sub_1007604DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &aBlock[-1] - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v19 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress], v20 = Strong[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v20 == 1))
  {
    if (a5 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a5)
  {
LABEL_4:
    sub_10076049C();
    sub_1007604BC();
    v22 = v21;
    v24 = v23;
    v25 = *(v12 + 8);
    v25(v17, v11);
    sub_10076049C();
    sub_1007604CC();
    v27 = v26;
    v29 = v28;
    v25(v14, v11);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a5;
    v31 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = a3;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = a4;
    v32 = _Block_copy(aBlock);

    v33 = [v31 initWithDuration:v32 controlPoint1:a6 controlPoint2:v22 animations:{v24, v27, v29}];
    _Block_release(v32);
    [v33 startAnimation];
  }
}

void sub_1006E2AD8(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress;
    *v5 = a2;
    *(v5 + 8) = 0;
    sub_1000739B4();
  }
}

void sub_1006E2B50()
{
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      if (v3)
      {

        *(sub_1006E48CC() + 88) = 1;

        v4 = [v0 transitionCoordinator];
        if (v4)
        {
          v5 = v4;
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_1006EAD7C;
          v17 = v6;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_1006F5994;
          v15 = &unk_1008A0980;
          v7 = _Block_copy(&aBlock);

          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_1006EAD98;
          v17 = v8;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_1006F5994;
          v15 = &unk_1008A09A8;
          v9 = _Block_copy(&aBlock);

          [v5 animateAlongsideTransition:v7 completion:v9];
          _Block_release(v9);
          _Block_release(v7);
          swift_unknownObjectRelease();
        }

        else
        {

          v10 = [v0 collectionView];
          if (v10)
          {
            v11 = v10;
            sub_1004F3468(v10);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_1006E2DD0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v5)
    {
      v6 = v5;
      sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      v7 = v4;
      v8 = sub_100770EEC();

      if (v8)
      {
        if ([a1 isCancelled])
        {
          sub_1006E48CC();
          sub_1004F3B94();
        }
      }
    }
  }
}

double sub_1006E2ECC()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    if (*(v0 + qword_1009A32E8) == 1)
    {
      sub_1006E48CC();
      sub_1004F3B94();
    }

    else
    {
      v3 = [v0 transitionCoordinator];
      v4 = sub_1006E48CC();
      if (v3)
      {
        v12 = sub_100045400;
        v13 = v4;
        v8 = _NSConcreteStackBlock;
        v9 = 1107296256;
        v10 = sub_1006F5994;
        v11 = &unk_1008A0930;
        v5 = _Block_copy(&v8);

        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = sub_1006EAD74;
        v13 = v6;
        v8 = _NSConcreteStackBlock;
        v9 = 1107296256;
        v10 = sub_1006F5994;
        v11 = &unk_1008A0958;
        v7 = _Block_copy(&v8);

        [v3 animateAlongsideTransition:v5 completion:v7];
        _Block_release(v7);
        _Block_release(v5);
        swift_unknownObjectRelease();
        return result;
      }

      sub_1004F3B94();
    }
  }

  return result;
}

void sub_1006E30F4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 isCancelled])
    {
      v5 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v5)
      {
        v6 = v5;
        sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
        v7 = v4;
        v8 = sub_100770EEC();

        if ((v8 & 1) != 0 && !*&v7[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
        {
          v9 = v7;
          v10 = [v9 navigationController];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 navigationBar];

            if (v12)
            {

              sub_1006E48CC();
              v13 = [v9 collectionView];

              if (!v13)
              {
                __break(1u);
                return;
              }

              sub_1004F3468(v13);

              v9 = v13;
            }
          }
        }
      }
    }
  }
}

void sub_1006E3278(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006E48CC();
    v4 = [v3 collectionView];
    if (v4)
    {
      v5 = v4;
      sub_1004F3468(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006E3310(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_1000733E0();
  if ((a1 & 1) == 0 && ((a1 & 2) == 0 || (sub_1000735EC() & 1) == 0))
  {
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
    goto LABEL_11;
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    return;
  }

  a1 = v6;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = *(v7 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    v9 = 2;
    goto LABEL_12;
  }

  v9 = 3;
LABEL_12:
  v10 = [v1 navigationItem];
  [v10 setLargeTitleDisplayMode:v9];
}