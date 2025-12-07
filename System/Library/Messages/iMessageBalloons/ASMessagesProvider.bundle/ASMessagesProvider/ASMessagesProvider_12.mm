unint64_t sub_15F67C()
{
  result = qword_93E918;
  if (!qword_93E918)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93E918);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeaderCollectionViewHostingCell(uint64_t a1)
{
  result = qword_946D28;
  if (!qword_946D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_15F844()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Shelf.ContentType.mediaPageHeader(_:), v0, v2);
  v5 = COERCE_DOUBLE(sub_75F920());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

double sub_15FB04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_75B1E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_595214();
  sub_765B20();
  sub_75DAE0();
  if (swift_dynamicCastClass())
  {
    v8 = sub_75DAD0();
    if (v8 >> 62)
    {
      goto LABEL_29;
    }

    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));

    if (v9)
    {
      do
      {
        sub_75A110();
        sub_768880();
        v10 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider32GridTodayBrickCollectionViewCell_grid];
        v22[2] = v28;
        v23 = v10;
        sub_75DAC0();
        v11 = (*(v5 + 88))(v7, v4);
        if (v11 != enum case for ArtworkGridType.small(_:))
        {
          if (v11 == enum case for ArtworkGridType.large(_:))
          {
            v12 = 1;
            goto LABEL_12;
          }

          if (v11 == enum case for ArtworkGridType.extraLarge(_:))
          {
            v12 = 2;
            goto LABEL_12;
          }

          if (v11 == enum case for ArtworkGridType.mixed(_:))
          {
            v12 = 3;
            goto LABEL_12;
          }

LABEL_27:
          v19 = *(v5 + 8);
          v5 += 8;
          v19(v7, v4);
        }

        v12 = 0;
LABEL_12:
        v22[1] = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType;
        v13 = v23;
        v23[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType] = v12;
        sub_44CB80();
        [v13 setNeedsLayout];
        v14 = sub_75DAD0();
        if (v14 >> 62)
        {
          v3 = sub_76A860();
        }

        else
        {
          v3 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
        }

        *&v23[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = v3;
        sub_44CD50();
        v15 = sub_75DAD0();
        v16 = v15;
        if (v15 >> 62)
        {
          v4 = sub_76A860();
          if (!v4)
          {
LABEL_35:

            return result;
          }
        }

        else
        {
          v4 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
          if (!v4)
          {
            goto LABEL_35;
          }
        }

        v7 = 0;
        v24 = v16 & 0xFFFFFFFFFFFFFF8;
        v25 = v16 & 0xC000000000000001;
        v22[0] = v4;
        while (v25)
        {
          sub_76A770();
          v17 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_22:
          if (sub_764F20())
          {
            v3 = v23;
            sub_765330();
            v27 = 0;
            memset(v26, 0, sizeof(v26));
            v5 = swift_allocObject();
            *(v5 + 16) = v3;
            *(v5 + 24) = v7;
            v18 = v3;
            sub_75A040();

            v4 = v22[0];

            sub_160090(v26);
          }

          else
          {
          }

          ++v7;
          if (v17 == v4)
          {
            goto LABEL_35;
          }
        }

        if (v7 < *(v24 + 16))
        {

          v17 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        v20 = sub_76A860();
      }

      while (v20);
    }
  }

  return result;
}

uint64_t type metadata accessor for GridTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_946D68;
  if (!qword_946D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_160050()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_160090(uint64_t a1)
{
  v2 = sub_BD88(&unk_9443A0, &unk_77E240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1600F8(uint64_t a1, uint64_t a2, unint64_t a3, double *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, unint64_t), double a8, double a9)
{
  v10 = v9;
  v116 = a7;
  v125 = a6;
  v97 = a5;
  v124 = a4;
  v118 = a3;
  v13 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v13 - 8);
  v110 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_766690();
  v102 = *(v105 - 8);
  __chkstk_darwin(v105);
  v101 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v97 - v17;
  v19 = sub_75C930();
  v117 = *(v19 - 8);
  __chkstk_darwin(v19);
  v120 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v108 = &v97 - v22;
  __chkstk_darwin(v23);
  v114 = &v97 - v24;
  __chkstk_darwin(v25);
  v121 = &v97 - v26;
  v27 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v27 - 8);
  v100 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v97 - v30;
  v104 = sub_75C9A0();
  v115 = *(v104 - 8);
  __chkstk_darwin(v104);
  v109 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v113 = &v97 - v34;
  __chkstk_darwin(v35);
  v106 = &v97 - v36;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v123 = v37;
  v38 = *(v9 + v37);
  if (v38 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v111 = v10;
    v119 = v19;
    v103 = a1;
    v112 = v31;
    v40 = v128;
    v107 = v18;
    if (!i)
    {
      goto LABEL_11;
    }

    if (i >= 1)
    {
      v98 = a2;

      v41 = 0;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v42 = sub_76A770();
        }

        else
        {
          v42 = *&v38[v41 + 4];
        }

        v43 = v42;
        ++v41;
        v126[0] = v42;
        type metadata accessor for BorderedScreenshotView(0);
        sub_161CCC(&qword_946D80, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
        v44 = v43;
        sub_76A6E0();
        sub_75A0B0();
        sub_1EB60(v127);
        v45 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
        v129.value.super.isa = 0;
        v129.is_nil = 0;
        sub_7591D0(v129, v46);
      }

      while (i != v41);

      v10 = v111;
      a2 = v98;
      v19 = v119;
LABEL_11:
      v122 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_videoView;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v48 = Strong;
        [*(Strong + qword_940590) setImage:{0, v97}];
        v126[0] = v48;
        type metadata accessor for VideoView(0);
        sub_161CCC(&qword_952550, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
        v49 = v48;
        v10 = v111;
        v50 = v49;
        sub_76A6E0();
        sub_75A0B0();

        sub_1EB60(v127);
      }

      v51 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
      swift_beginAccess();
      v52 = v10;
      v53 = v115;
      v54 = *(v115 + 16);
      v55 = v106;
      i = v104;
      v54(v106, v52 + v51, v104);
      sub_75C990();
      v56 = *(v53 + 8);
      v56(v55, i);
      v57 = v113;
      v54(v113, v52 + v51, i);
      v58 = v114;
      sub_75C950();
      v115 = v53 + 8;
      v99 = v56;
      v56(v57, i);
      if (v118)
      {
        v59 = sub_759690();
      }

      else
      {
        v59 = 0;
      }

      a1 = a2;
      v31 = v103;
      v38 = v117;
      v60 = v121;
      v9 = v58;
      sub_558B9C(v59, v116, v121);

      v61 = *(v38 + 1);
      v117 = v38 + 1;
      v116 = v61;
      v61(v58, v19);
      v127[3] = &type metadata for CGFloat;
      v127[4] = &protocol witness table for CGFloat;
      v127[0] = 0x4021000000000000;
      sub_134D8(v127, v126);
      v62 = *(v38 + 2);
      v114 = (v38 + 2);
      v113 = v62;
      (v62)(v108, v60, v19);
      v10 = v111;
      if (a2 | v31)
      {
        sub_7666A0();
        goto LABEL_24;
      }

      v64 = sub_55BABC(v118, v124, 0, 1, v63);
      v37 = v120;
      if (v64 >> 62)
      {
        v94 = v64;
        v95 = sub_76A860();
        v64 = v94;
        v37 = v120;
        if (v95)
        {
          goto LABEL_19;
        }
      }

      else if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_19:
        if ((v64 & 0xC000000000000001) != 0)
        {
          goto LABEL_113;
        }

        v65 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
        if (v65)
        {

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_115;
      }

      sub_7666A0();
      goto LABEL_25;
    }

    __break(1u);
LABEL_105:
    v38 = sub_7B220((v40 > 1), v124, 1, v38);
LABEL_27:

    v19 = v119;
LABEL_31:
    v99(v109, i);
    v116(v121, v19);
    sub_10A2C(v112, &unk_948720, &unk_784970);
    *(v38 + 2) = v124;
    v67 = &v38[2 * v37];
    *(v67 + 4) = v9;
    *(v67 + 40) = 0;
    if (a1 | v31)
    {
      break;
    }

LABEL_76:
    v19 = 0;
    v31 = (v38 + 5);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    while (v19 < *(v38 + 2))
    {
      a2 = *(v31 - 8);
      a1 = *v31;
      v127[0] = _swiftEmptyArrayStorage;
      v82 = swift_unknownObjectWeakLoadStrong();

      if (v82)
      {
        v83 = v82;
        sub_769440();
        if (*(&dword_10 + (v127[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v127[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
      }

      v84 = *(v10 + v18);
      if (v84)
      {
        v85 = v84;
        sub_769440();
        if (*(&dword_10 + (v127[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v127[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
      }

      v86 = *(v10 + v123);
      if (v86 >> 62)
      {
        sub_BE70(0, &qword_93E550, UIView_ptr);

        v87 = sub_76A850();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_76A960();
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v87 = v86;
      }

      v9 = v127;
      sub_10A0A0(v87);
      if (v127[0] >> 62)
      {
        v9 = v127[0];
        v37 = sub_76A860();
      }

      else
      {
        v37 = *(&dword_10 + (v127[0] & 0xFFFFFFFFFFFFFF8));
      }

      if (v19 < v37)
      {
        v88 = sub_5599F0();
        v9 = v88;
        if ((v88 & 0xC000000000000001) != 0)
        {
          v89 = sub_76A770();
        }

        else
        {
          if (v19 >= *(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_101;
          }

          v89 = *(v88 + 8 * v19 + 32);
        }

        v90 = v89;

        v126[0] = v90;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        sub_161D70();
        sub_76A6E0();
        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v91 = swift_allocObject();
        *(v91 + 16) = v37;
        *(v91 + 24) = a1;
        *(v91 + 32) = v19;

        v9 = v125;
        sub_75A040();

        sub_10A2C(v127, &unk_9443A0, &unk_77E240);
      }

      ++v19;
      v31 += 16;
      if (v124 == v19)
      {
        goto LABEL_99;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  while (1)
  {
    a1 = *(v38 + 4);

    v68 = sub_5599F0();
    if (v68 >> 62)
    {
      v92 = v68;
      v93 = sub_76A860();
      v68 = v92;
      if (!v93)
      {
LABEL_107:

        v70 = 0;
        goto LABEL_108;
      }
    }

    else if (!*(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_107;
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      v69 = sub_76A770();
      goto LABEL_37;
    }

    if (*(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
    {
      v69 = v68[4];
LABEL_37:
      v70 = v69;

LABEL_108:
      v126[0] = v70;
      sub_BD88(&qword_943F70, &qword_787F60);
      sub_161E58();
      sub_76A6E0();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_75A040();

      sub_10A2C(v127, &unk_9443A0, &unk_77E240);

      return;
    }

    __break(1u);
LABEL_113:
    sub_76A770();
LABEL_22:

    sub_765260();
    sub_7666A0();

LABEL_24:
    v37 = v120;
LABEL_25:
    a2 = v100;
    sub_1ED18(v112, v100, &unk_948720, &unk_784970);
    sub_75C970();
    sub_BEB8(v127);
    v66 = v101;
    sub_75C980();
    sub_766660();
    (*(v102 + 8))(v66, v105);
    if (a1)
    {

      sub_764BC0();
      v9 = sub_765330();
      v38 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = *(v38 + 2);
      v40 = *(v38 + 3);
      v124 = (v37 + 1);
      if (v37 >= v40 >> 1)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    if (v31)
    {

      v9 = sub_765330();
      v38 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = *(v38 + 2);
      v65 = *(v38 + 3);
      v124 = (v37 + 1);
      if (v37 < v65 >> 1)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_115:
      v38 = sub_7B220((v65 > 1), v124, 1, v38);
      goto LABEL_30;
    }

    v71 = sub_75C920();
    v9 = sub_55BABC(v118, v124, v71, 0, v72);
    sub_75C9C0();
    v73 = v9;
    if (v9 >> 62)
    {
      v96 = sub_76A860();
      v73 = v9;
      i = v96;
    }

    else
    {
      i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    }

    v98 = 0;
    if (i)
    {
      break;
    }

    v38 = _swiftEmptyArrayStorage;
LABEL_74:

    v99(v109, v104);
    v116(v121, v19);
    sub_10A2C(v112, &unk_948720, &unk_784970);
    v124 = *(v38 + 2);
    if (!v124)
    {
LABEL_99:

      return;
    }

    a1 = v98;
    v31 = v103;
    if (!(v98 | v103))
    {
      goto LABEL_76;
    }
  }

  if (i >= 1)
  {
    a2 = 0;
    v108 = (v73 & 0xC000000000000001);
    v107 = (v38 + 11);
    LODWORD(v106) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    LODWORD(v102) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v38 = _swiftEmptyArrayStorage;
    v105 = v73;
    while (1)
    {
      if (v108)
      {
        v31 = sub_76A770();
      }

      else
      {
        v31 = *(v73 + 8 * a2 + 32);
      }

      (v113)(v37, v121, v19);
      v74 = (*v107)(v37, v19);
      if (v74 == v106)
      {
        break;
      }

      if (v74 == v102)
      {
        goto LABEL_49;
      }

      v18 = sub_765150();
      v116(v37, v19);
LABEL_51:
      if (!v124)
      {
        goto LABEL_62;
      }

      v9 = v124;
      v75 = sub_765750();
      if (v75 >> 62)
      {
        v37 = v75;
        v77 = sub_76A860();
        v75 = v37;
        if (!v77)
        {
LABEL_61:

          goto LABEL_62;
        }
      }

      else if (!*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_61;
      }

      if ((v75 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_102;
        }
      }

      sub_765390();
      a1 = sub_764BC0();
      v76 = sub_7651E0();

      if ((v76 & 1) == 0)
      {

LABEL_62:
        if (v118)
        {
          v78 = sub_759690();
        }

        else
        {
          v78 = 0;
        }

        sub_7596B0();
        a1 = v110;
        sub_6C14C(v78, v110);

        sub_769DA0();
        v9 = sub_765330();
        sub_161D14(a1);
        goto LABEL_66;
      }

      v9 = sub_765330();

LABEL_66:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_7B220(0, *(v38 + 2) + 1, 1, v38);
      }

      v80 = *(v38 + 2);
      v79 = *(v38 + 3);
      if (v80 >= v79 >> 1)
      {
        v38 = sub_7B220((v79 > 1), v80 + 1, 1, v38);
      }

      ++a2;

      *(v38 + 2) = v80 + 1;
      v81 = &v38[2 * v80];
      *(v81 + 4) = v9;
      *(v81 + 40) = v18 & 1;
      v19 = v119;
      v37 = v120;
      v73 = v105;
      if (i == a2)
      {
        goto LABEL_74;
      }
    }

    v116(v37, v19);
LABEL_49:
    v18 = 0;
    goto LABEL_51;
  }

  __break(1u);
}

void sub_1615C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (!a1)
    {
LABEL_16:

      return;
    }

    v8 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView);
    v9 = a1;
    if (v8)
    {
      v10 = v8;
      v21.value.super.isa = a1;
      v21.is_nil = 0;
      sub_7591D0(v21, v11);
    }

    v12 = sub_5599F0();
    if (v12 >> 62)
    {
      v19 = v12;
      v20 = sub_76A860();
      v12 = v19;
      if (v20)
      {
        goto LABEL_7;
      }
    }

    else if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_7:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v13 = v12[4];
      }

      v14 = v13;

      type metadata accessor for VideoView(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = qword_940590;
        v17 = v15;
        v18 = [*(v15 + qword_940590) layer];
        [v18 removeAllAnimations];

        [*(v17 + v16) setImage:a1];
      }

      goto LABEL_15;
    }

LABEL_15:
    [v7 setNeedsLayout];

    v7 = a1;
    goto LABEL_16;
  }
}

void sub_16177C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = a1;
      v13 = v12;
      if (a6)
      {
        v14 = [v12 CGImage];
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = v14;
        [v13 scale];
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:v16];
      }

      else
      {
        v17 = v12;
      }

      sub_55C724(v17, a7);

      v11 = v17;
    }
  }
}

unint64_t sub_161888(uint64_t a1, uint64_t a2, unint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v35 = a7;
  v36 = a6;
  v34 = a5;
  v31 = a4;
  *&v37 = a1;
  *(&v37 + 1) = a2;
  v12 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v12 - 8);
  v33 = &v30 - v13;
  v14 = sub_766690();
  __chkstk_darwin(v14 - 8);
  v15 = sub_75C930();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  v32 = sub_75C9A0();
  v22 = *(v32 - 8);
  __chkstk_darwin(v32);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = &type metadata for CGFloat;
  v39[4] = &protocol witness table for CGFloat;
  v39[0] = 0x4021000000000000;
  if (a3)
  {
    v25 = sub_759690();
  }

  else
  {
    v25 = 0;
  }

  sub_558B9C(v25, a8, v21);

  sub_134D8(v39, v38);
  (*(v16 + 16))(v18, v21, v15);
  if (v37 != 0)
  {
    goto LABEL_14;
  }

  result = sub_55BABC(a3, v31, 0, 1, v26);
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v28 = result;
  v29 = sub_76A860();
  result = v28;
  if (!v29)
  {
LABEL_13:

LABEL_14:
    sub_7666A0();
    goto LABEL_15;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_10;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_10:

    sub_765260();
    sub_7666A0();

LABEL_15:
    sub_1ED18(v34, v33, &unk_948720, &unk_784970);
    sub_75C970();
    (*(v16 + 8))(v21, v15);
    sub_BEB8(v39);
    sub_75C9D0();
    sub_161CCC(&qword_946D78, &type metadata accessor for LockupMediaLayout, &protocol conformance descriptor for LockupMediaLayout);
    sub_766ED0();
    return (*(v22 + 8))(v24, v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_161CCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_161D14(uint64_t a1)
{
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_161D70()
{
  result = qword_946D88;
  if (!qword_946D88)
  {
    sub_BE70(255, &qword_93E550, UIView_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946D88);
  }

  return result;
}

uint64_t sub_161DD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_161E10()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_161E58()
{
  result = qword_946D90;
  if (!qword_946D90)
  {
    sub_133D8(&qword_943F70, &qword_787F60);
    sub_161D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946D90);
  }

  return result;
}

unint64_t sub_161EE4(uint64_t a1, uint64_t a2, unint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18, char a19)
{
  v224 = a8;
  v231 = a7;
  v234 = a5;
  v235 = a6;
  v227 = a4;
  v232 = a3;
  v238 = a2;
  v20 = sub_BD88(&qword_946D98, &qword_787F68);
  __chkstk_darwin(v20 - 8);
  v203 = &v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v214 = &v191 - v23;
  v197 = sub_7593D0();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v194 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v195 = &v191 - v26;
  v27 = sub_7652D0();
  __chkstk_darwin(v27 - 8);
  v193 = &v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v29 - 8);
  v222 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v223 = &v191 - v32;
  v33 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v33 - 8);
  v221 = &v191 - v34;
  v35 = sub_75A6B0();
  __chkstk_darwin(v35 - 8);
  v202 = &v191 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v209 = &v191 - v38;
  __chkstk_darwin(v39);
  v218 = &v191 - v40;
  __chkstk_darwin(v41);
  v217 = &v191 - v42;
  v220 = sub_75A6E0();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v208 = &v191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v216 = &v191 - v45;
  v226 = sub_75DC30();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v210 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v236 = &v191 - v48;
  v230 = sub_760770();
  v49 = *(v230 - 8);
  __chkstk_darwin(v230);
  v51 = &v191 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v192 = &v191 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v191 - v54;
  v56 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v56 - 8);
  v207 = &v191 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v191 - v59;
  v229 = sub_766690();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v206 = &v191 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v63 = sub_75C930();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v198 = &v191 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v204 = &v191 - v67;
  __chkstk_darwin(v68);
  v70 = &v191 - v69;
  v233 = sub_75C9A0();
  v237 = *(v233 - 8);
  __chkstk_darwin(v233);
  v205 = &v191 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v74 = &v191 - v73;
  v242 = &type metadata for CGFloat;
  v243 = &protocol witness table for CGFloat;
  v241 = 0x4021000000000000;
  sub_134D8(&v241, v240);
  v199 = v64;
  v76 = *(v64 + 16);
  v75 = (v64 + 16);
  v213 = v63;
  v212 = v75;
  v211 = v76;
  v76(v70, v235, v63);
  v215 = a1;
  if (v238 | a1)
  {
    v78 = v232;
LABEL_11:
    sub_7666A0();
    goto LABEL_12;
  }

  v78 = v232;
  result = sub_55BABC(v232, v227, 0, 1, v77);
  if (result >> 62)
  {
    v80 = result;
    v81 = sub_76A860();
    result = v80;
    if (v81)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_78;
    }
  }

  sub_765260();
  sub_7666A0();

LABEL_12:
  sub_1ED18(v234, v60, &unk_948720, &unk_784970);
  sub_75C970();
  sub_BEB8(&v241);
  v82 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  v83 = v239;
  swift_beginAccess();
  v84 = v237;
  v85 = &v83[v82];
  v86 = v233;
  (*(v237 + 24))(v85, v74, v233);
  swift_endAccess();
  [v83 setNeedsLayout];
  v87 = *(v84 + 8);
  v87(v74, v86);
  v237 = v84 + 8;
  if (v78)
  {
    v88 = sub_759690();
  }

  else
  {
    v88 = 0;
  }

  sub_7596B0();
  sub_6C14C(v88, v55);

  v89 = &v239[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration];
  swift_beginAccess();
  sub_163BAC(v55, v89);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v55);
  if (v78)
  {
    v90 = sub_759690();
  }

  else
  {
    v90 = 0;
  }

  v91 = v230;
  v55 = v239;
  *&v239[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v90;

  sub_559DA4();

  (*(v49 + 16))(v51, v231, v91);
  v92 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v49 + 24))(&v55[v92], v51, v91);
  swift_endAccess();
  [v55 setNeedsLayout];
  (*(v49 + 8))(v51, v91);
  if (v238)
  {
    (*(v219 + 104))(v216, enum case for VideoFillMode.scaleAspectFill(_:), v220);

    sub_764BC0();
    sub_765260();
    sub_7666A0();

    (*(v228 + 56))(v60, 0, 1, v229);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v93 = v221;
    sub_764BD0();
    v94 = sub_7570A0();
    (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
    v95 = v223;
    sub_764B90();
    v96 = v222;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_161CCC(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v97 = sub_75C340();
    sub_10A2C(v96, &unk_948710, &qword_77FF90);
    sub_10A2C(v95, &unk_948710, &qword_77FF90);
    sub_10A2C(v93, &unk_93FD30, qword_77F240);
    sub_10A2C(&v241, &unk_9443A0, &unk_77E240);
    Strong = swift_unknownObjectWeakLoadStrong();
    v75 = &unk_90D000;
    if (Strong)
    {
      v99 = Strong;
      v100 = [Strong superview];
      if (v100)
      {
        v101 = v100;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v102 = v55;
        v103 = sub_76A1C0();

        if ((v103 & 1) == 0)
        {
          goto LABEL_25;
        }

        v104 = swift_unknownObjectWeakLoadStrong();
        if (!v104)
        {
          goto LABEL_25;
        }

        v99 = v104;
        [v104 removeFromSuperview];
      }
    }

LABEL_25:
    swift_unknownObjectWeakAssign();
    v105 = swift_unknownObjectWeakLoadStrong();
    if (v105)
    {
      v106 = v105;
      [v55 addSubview:v105];
    }

    sub_55A7A8();
    [v55 setNeedsLayout];

    v107 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v108 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v109 = v226;
    v110 = v225;
    if (v108)
    {
      [v108 removeFromSuperview];
      v111 = *&v55[v107];
    }

    else
    {
      v111 = 0;
    }

    *&v55[v107] = 0;

    [v55 setNeedsLayout];

    (*(v110 + 8))(v236, v109);
    return [v55 v75[463]];
  }

  if (v215 && (a19 & 1) == 0)
  {
    swift_retain_n();
    v119 = [v55 traitCollection];
    v243 = &protocol witness table for CGFloat;
    v242 = &type metadata for CGFloat;
    v241 = 0x4021000000000000;
    sub_134D8(&v241, v240);
    v211(v204, v235, v213);
    v120 = v206;
    sub_7666A0();
    sub_1ED18(v234, v60, &unk_948720, &unk_784970);
    v121 = v205;
    sub_75C970();
    sub_BEB8(&v241);
    sub_75C980();
    sub_766660();
    (*(v228 + 8))(v120, v229);

    v122 = sub_765330();
    v123 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
    v125 = *(v123 + 2);
    v124 = *(v123 + 3);
    if (v125 >= v124 >> 1)
    {
      v123 = sub_7B220((v124 > 1), v125 + 1, 1, v123);
    }

    v87(v121, v233);
    *(v123 + 2) = v125 + 1;
    v126 = &v123[2 * v125 + 4];
    *v126 = v122;
    *(v126 + 8) = 0;
    v127 = *(v123 + 4);

    v128 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v75 = &unk_90D000;
    if (v127)
    {

      sub_7652E0();
      sub_7591B0();
      [v128 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      [v128 setContentMode:2];
      v129 = v128;
      sub_75CD10();
      v130 = *(v89 + 48);
      sub_75CD00();

      v131 = v192;
      sub_163C10(v89, v192);
      v132 = *(v131 + 16);
      sub_161D14(v131);
      v133 = v196;
      v134 = &enum case for CornerStyle.arc(_:);
      if (!v132)
      {
        v134 = &enum case for CornerStyle.continuous(_:);
      }

      v135 = v194;
      v136 = v197;
      (*(v196 + 104))(v194, *v134, v197);
      v137 = v195;
      (*(v133 + 32))(v195, v135, v136);
      sub_759200();

      (*(v133 + 8))(v137, v136);
    }

    v138 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v139 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v140 = v128;
    if (v139)
    {
      [v139 removeFromSuperview];
      v139 = *&v55[v138];
    }

    *&v55[v138] = v128;
    v165 = v128;

    [v55 addSubview:v165];
    [v55 setNeedsLayout];

    v166 = swift_unknownObjectWeakLoadStrong();
    if (!v166)
    {
      goto LABEL_71;
    }

    v167 = v166;
    sub_161CCC(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v168 = [v167 superview];
    if (v168)
    {
      v169 = v168;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v170 = v55;
      v171 = sub_76A1C0();

      if ((v171 & 1) == 0)
      {
        goto LABEL_71;
      }

      v172 = swift_unknownObjectWeakLoadStrong();
      if (!v172)
      {
        goto LABEL_71;
      }

      v167 = v172;
      [v172 removeFromSuperview];
    }

LABEL_71:
    swift_unknownObjectWeakAssign();
    v173 = swift_unknownObjectWeakLoadStrong();
    if (v173)
    {
      v174 = v173;
      [v55 addSubview:v173];
    }

    sub_55A7A8();
    [v55 setNeedsLayout];

    return [v55 v75[463]];
  }

  v75 = &unk_90D000;
  if (!v227)
  {
    goto LABEL_80;
  }

  result = sub_765750();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v177 = result;
  v178 = sub_76A860();
  result = v177;
  if (!v178)
  {
LABEL_79:

LABEL_80:
    v179 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v180 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    if (v180)
    {
      [v180 removeFromSuperview];
      v181 = *&v55[v179];
    }

    else
    {
      v181 = 0;
    }

    *&v55[v179] = 0;

    [v55 v75[463]];
    v182 = swift_unknownObjectWeakLoadStrong();
    if (!v182)
    {
      goto LABEL_89;
    }

    v183 = v182;
    sub_161CCC(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v184 = [v183 superview];
    if (v184)
    {
      v185 = v184;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v186 = v55;
      v187 = sub_76A1C0();

      if ((v187 & 1) == 0)
      {
        goto LABEL_89;
      }

      v188 = swift_unknownObjectWeakLoadStrong();
      if (!v188)
      {
        goto LABEL_89;
      }

      v183 = v188;
      [v188 removeFromSuperview];
    }

LABEL_89:
    swift_unknownObjectWeakAssign();
    v189 = swift_unknownObjectWeakLoadStrong();
    if (v189)
    {
      v190 = v189;
      [v55 addSubview:v189];
    }

    sub_55A7A8();
    [v55 v75[463]];
    return [v55 v75[463]];
  }

LABEL_34:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_37:

    v112 = v198;
    v113 = v213;
    v211(v198, v235, v213);
    v114 = v199;
    v115 = (*(v199 + 88))(v112, v113);
    v116 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v114 + 8))(v112, v113);
    if (v115 == v116)
    {
      v117 = 1;
      v118 = v214;
    }

    else
    {
      v141 = sub_765740();
      v118 = v214;
      sub_6C14C(v141, v214);

      v117 = 0;
    }

    v142 = v200;
    v143 = v201;
    (*(v200 + 56))(v118, v117, 1, v201);
    (*(v219 + 104))(v208, enum case for VideoFillMode.scaleAspectFill(_:), v220);
    sub_764BC0();
    sub_765260();
    v144 = v207;
    sub_7666A0();

    (*(v228 + 56))(v144, 0, 1, v229);
    sub_764B60();
    sub_764BA0();
    LODWORD(v238) = sub_764B70();
    sub_764B50();
    sub_764BB0();
    v145 = v203;
    sub_1ED18(v118, v203, &qword_946D98, &qword_787F68);
    if ((*(v142 + 48))(v145, 1, v143) == 1)
    {
      sub_10A2C(v145, &qword_946D98, &qword_787F68);
    }

    else
    {
      sub_161D14(v145);
    }

    sub_75DC10();
    sub_75C360();
    sub_768880();
    v146 = v241;
    sub_764B40();
    v147 = v221;
    sub_764BD0();
    v148 = sub_7570A0();
    (*(*(v148 - 8) + 56))(v147, 0, 1, v148);
    v149 = v223;
    sub_764B90();
    v150 = v222;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_161CCC(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v238 = v146;
    v151 = sub_75C340();
    sub_10A2C(v150, &unk_948710, &qword_77FF90);
    sub_10A2C(v149, &unk_948710, &qword_77FF90);
    sub_10A2C(v147, &unk_93FD30, qword_77F240);
    sub_10A2C(&v241, &unk_9443A0, &unk_77E240);
    v152 = swift_unknownObjectWeakLoadStrong();
    v153 = v214;
    if (!v152)
    {
      goto LABEL_61;
    }

    v154 = v152;
    v155 = [v152 superview];
    if (v155)
    {
      v156 = v155;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v157 = v55;
      v158 = sub_76A1C0();

      v153 = v214;
      if ((v158 & 1) == 0)
      {
        goto LABEL_61;
      }

      v159 = swift_unknownObjectWeakLoadStrong();
      if (!v159)
      {
        goto LABEL_61;
      }

      v154 = v159;
      [v159 removeFromSuperview];
    }

LABEL_61:
    swift_unknownObjectWeakAssign();
    v160 = swift_unknownObjectWeakLoadStrong();
    if (v160)
    {
      v161 = v160;
      [v55 addSubview:v160];
    }

    sub_55A7A8();
    [v55 v75[463]];

    v162 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v163 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    if (v163)
    {
      [v163 removeFromSuperview];
      v164 = *&v55[v162];
    }

    else
    {
      v164 = 0;
    }

    v175 = v226;
    v176 = v225;
    *&v55[v162] = 0;

    [v55 v75[463]];

    (*(v176 + 8))(v210, v175);
    sub_10A2C(v153, &qword_946D98, &qword_787F68);
    return [v55 v75[463]];
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_163BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_163C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_163C74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_163CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_163D20()
{
  result = qword_946DA0;
  if (!qword_946DA0)
  {
    sub_761C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946DA0);
  }

  return result;
}

uint64_t sub_163D78()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_761C60();
  sub_BD88(&qword_94DDC0, qword_77DE00);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_768F30();
}

void *sub_163E70()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_163EA8(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_163F00;
}

void sub_163F00(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_278EE8(v2);
  }

  else
  {
    sub_278EE8(*a1);
  }
}

double sub_163FB8()
{
  swift_getObjectType();

  sub_75D650();
  return result;
}

uint64_t sub_163FEC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1641C0(&qword_946DB8, type metadata accessor for MediumLockupCollectionViewCell, &unk_788098);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1640A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1641C0(&qword_946DB8, type metadata accessor for MediumLockupCollectionViewCell, &unk_788098);

  return a3(ObjectType, v4);
}

uint64_t sub_1641C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_164208()
{
  v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled] = 1;
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_pendingPrepareObserver];
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

double sub_1643E4()
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

uint64_t sub_1644DC()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v26, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v27);
    v4 = sub_1643E4();

    v5 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
    *v5 = Width;
    v5[1] = v4;
  }

  else
  {
    v6 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
    *v6 = 0;
    *(v6 + 1) = 0;
  }

  v7 = 0.0;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    v8 = [v0 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 contentInset];
      v7 = v10;
      v12 = v11;
      [v9 bounds];
      v28.origin.x = sub_705B8(v13, v14, v15, v16, v7, v12);
      MinY = CGRectGetMinY(v28);

      if (MinY < v7)
      {
        v7 = MinY;
      }
    }
  }

  v18 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame];
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
  *v18 = 0.0;
  v18[1] = v7;
  *(v18 + 1) = v19;
  v20 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_pendingPrepareObserver];
  if (v21)
  {
    v22 = v20[1];

    v21(v0);
    sub_F704(v21, v22);
    v23 = *v20;
  }

  else
  {
    v23 = 0;
  }

  v24 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  return sub_F704(v23, v24);
}

id sub_164754(uint64_t a1)
{
  v2 = v1;
  isa = sub_757550().super.isa;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v4 = objc_msgSendSuper2(&v8, "layoutAttributesForItemAtIndexPath:", isa);

  if (v4)
  {
    if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v2[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_E59C4();
      v6 = sub_76A440();
      [v6 frame];
      [v6 setFrame:?];

      return v6;
    }
  }

  return v4;
}

id sub_164930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 0xD000000000000035 && 0x80000000007D1B30 == a2 || (sub_76A950() & 1) != 0)
  {
    v4 = sub_769210();
    isa = sub_757550().super.isa;
    v6 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v4 withIndexPath:isa];

    [v6 setFrame:{*&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame], *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame + 8], *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame + 16], *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame + 24]}];
  }

  else
  {
    v8 = sub_769210();
    v9 = sub_757550().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for CollectionViewTableFlowLayout();
    v6 = objc_msgSendSuper2(&v12, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v8, v9);

    if (v6)
    {
      if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
      {
        sub_E59C4();
        v11 = sub_76A440();
        [v11 frame];
        [v11 setFrame:?];

        return v11;
      }
    }
  }

  return v6;
}

id sub_164AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_769210();
  isa = sub_757550().super.isa;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v6 = objc_msgSendSuper2(&v10, "layoutAttributesForDecorationViewOfKind:atIndexPath:", v4, isa);

  if (v6)
  {
    if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_E59C4();
      v8 = sub_76A440();
      [v8 frame];
      [v8 setFrame:?];

      return v8;
    }
  }

  return v6;
}

id sub_164BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769240();
  v13 = v12;
  sub_757590();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

unint64_t sub_164D28(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_757640();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
  v16 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8];
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
  sub_E59C4();
  v23 = sub_769460();

  if (v17 < COERCE_DOUBLE(1) || v16 < COERCE_DOUBLE(1))
  {
    return v23;
  }

  if (v23 >> 62)
  {
    v25 = sub_76A860();
    if (v25)
    {
      goto LABEL_11;
    }

LABEL_29:

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v25 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
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

  sub_76A7C0();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = sub_76A770();
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
        v32 = sub_769240();
        v34 = v33;

        if (v32 == 0xD000000000000035 && 0x80000000007D1B30 == v34)
        {

          goto LABEL_14;
        }

        v36 = sub_76A950();

        if (v36)
        {
          goto LABEL_14;
        }
      }

      v27 = sub_76A440();
      [v27 frame];
      [v27 setFrame:?];

LABEL_14:
      ++v26;
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
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
        if (CGRectIntersectsRect(v49, *&v7[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame]))
        {
          v37 = sub_769210();
          sub_7575F0();
          isa = sub_757550().super.isa;
          (*(v13 + 8))(v15, v12);
          v39 = [v7 layoutAttributesForSupplementaryViewOfKind:v37 atIndexPath:isa];

          if (v39)
          {
            v7 = v39;
            sub_769440();
            if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
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
  sub_7694C0();
LABEL_33:
  sub_769500();

  return v46;
}

id sub_165228(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = 0;
  if (*(a1 + OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled) == 1)
  {
    v13 = a3;
    v14 = a1;
    isa = sub_757550().super.isa;
    v16 = type metadata accessor for CollectionViewTableFlowLayout();
    v18.receiver = v14;
    v18.super_class = v16;
    v12 = objc_msgSendSuper2(&v18, *a5, v13, isa);
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

id sub_165388(id a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] < COERCE_DOUBLE(1) || *&v6[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] < COERCE_DOUBLE(1);
  if (!v11 && v6[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    if (CGRectGetMinY(*&a3) <= 0.0)
    {
      return &dword_0 + 1;
    }

    MinY = CGRectGetMinY(*&v6[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame]);
    v13 = [v6 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 contentInset];
      v16 = v15;

      if (MinY < v16)
      {
        return &dword_0 + 1;
      }
    }

    else if (MinY < 0.0)
    {
      return &dword_0 + 1;
    }
  }

  v18.receiver = v6;
  v18.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v18, "shouldInvalidateLayoutForBoundsChange:", a3, a4, a5, a6);
}

void *sub_165520(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
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

  if (v18 == a6 && *&v6[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v6[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
  {
    v20 = sub_769210();
    sub_BD88(&unk_941A18, &qword_78A3D0);
    sub_757640();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_7575F0();
    isa = sub_769450().super.isa;

    [v12 invalidateSupplementaryElementsOfKind:v20 atIndexPaths:isa];
  }

  return v12;
}

void sub_1657C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v23, "invalidateLayoutWithContext:", a1);
  v5 = [a1 invalidatedSupplementaryIndexPaths];
  if (v5)
  {
    v6 = v5;
    sub_BD88(&unk_946E10, &qword_788160);
    v7 = sub_7690F0();

    if (*(v7 + 16))
    {
      sub_3DF2F8(0xD000000000000035, 0x80000000007D1B30);
      v9 = v8;

      if (v9)
      {
        v10 = 0.0;
        if (v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
        {
          v11 = [v3 collectionView];
          if (v11)
          {
            v12 = v11;
            [v11 contentInset];
            v10 = v13;
            v15 = v14;
            [v12 bounds];
            v24.origin.x = sub_705B8(v16, v17, v18, v19, v10, v15);
            MinY = CGRectGetMinY(v24);

            if (MinY < v10)
            {
              v10 = MinY;
            }
          }
        }

        v21 = &v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame];
        v22 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
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

id sub_1659EC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_165A58()
{
  sub_BD88(&qword_941C10, &qword_781230);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  sub_76A730(55);
  v8._object = 0x80000000007D1BB0;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_769370(v8);
  v2 = [v0 description];
  v3 = sub_769240();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_769370(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_76A690();

  return result;
}

double sub_165B78()
{
  sub_BD88(&qword_941C10, &qword_781230);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  sub_76A730(55);
  v8._object = 0x80000000007D1B70;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_769370(v8);
  v2 = [v0 description];
  v3 = sub_769240();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_769370(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_76A690();

  return result;
}

unint64_t sub_165C98()
{
  result = qword_941548;
  if (!qword_941548)
  {
    type metadata accessor for InformationRibbonCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941548);
  }

  return result;
}

double sub_165CF0()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75DAB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v8 = sub_75F070();
  sub_BE38(v8, qword_99DED8);
  v9 = sub_75DA30();
  sub_75EFB0();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

double sub_165EF0()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v4 = sub_75F070();
  sub_BE38(v4, qword_99DED8);
  v5 = sub_75DA30();
  sub_75EFB0();
  v7 = v6;

  return v7;
}

char *sub_166060(uint64_t a1, uint64_t a2)
{
  v5 = sub_75EF50();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  v10 = sub_759950();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_946E38) = 0;
  *(v2 + qword_946E40) = 0;
  *(v2 + qword_946E48) = 0;
  *(v2 + qword_946E50) = 0;
  *(v2 + qword_946E58) = 0;

  v14 = sub_4695E4(a1, a2);
  v14[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 0;
  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  v17 = sub_7653A0();
  v38[3] = v17;
  v38[4] = sub_168F28(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v18 = sub_B1B4(v38);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_765C30();
  sub_BEB8(v38);
  if (v17)
  {
    v19 = [v15 navigationItem];
    sub_763EF0();
    if (v20)
    {
      v21 = sub_769210();
    }

    else
    {
      v21 = 0;
    }

    [v19 setTitle:v21];

LABEL_12:
    goto LABEL_13;
  }

  (*(v11 + 104))(v13, enum case for SystemImage.listBullet(_:), v10);
  v22 = sub_759930();
  (*(v11 + 8))(v13, v10);
  v23 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v22 style:0 target:v15 action:"toggleDisplayStyleWithAction:"];

  v24 = qword_946E38;
  v25 = *&v15[qword_946E38];
  *&v15[qword_946E38] = v23;

  v26 = [v15 navigationItem];
  v27 = *&v15[v24];
  [v26 setRightBarButtonItem:v27];

  v28 = *&v15[v24];
  if (v28)
  {
    v33 = a2;
    v21 = v28;
    sub_763E70();
    (*(v35 + 104))(v7, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v5);
    sub_168F28(&qword_947420, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
    sub_769430();
    sub_769430();
    if (v38[0] == v36 && v38[1] == v37)
    {
      v29 = v7;
      v30 = 1;
    }

    else
    {
      v29 = v7;
      v30 = sub_76A950();
    }

    v31 = *(v35 + 8);
    v31(v29, v5);
    v31(v34, v5);

    [v21 setSelected:v30 & 1];
    goto LABEL_12;
  }

LABEL_13:

  return v15;
}

id sub_166590()
{
  v1 = qword_946E40;
  v2 = *(v0 + qword_946E40);
  if (v2)
  {
    v3 = *(v0 + qword_946E40);
  }

  else
  {
    v4 = sub_168C7C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1665F0()
{
  v0 = sub_76A3F0();
  sub_161DC(v0, qword_946E20);
  sub_BE38(v0, qword_946E20);
  sub_76A3A0();
  v1 = sub_769210();
  v2 = [objc_opt_self() systemImageNamed:v1];

  sub_76A390();
  v3 = [objc_opt_self() configurationWithScale:1];
  sub_76A220();
  sub_76A290();
  return sub_76A2D0();
}

void sub_1666D8(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_761930();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v11 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_761920();
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

void sub_166818(void *a1)
{
  v2 = *&v1[qword_946E48];
  *&v1[qword_946E48] = a1;
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

void sub_1668E0(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[qword_946E50];
    if (!v3 || (v4 = a1, type metadata accessor for PageFacetsViewController(0), v5 = v4, v6 = v3, LOBYTE(v4) = sub_76A1C0(), v5, v6, (v4 & 1) == 0))
    {
      v7 = *&v2[qword_946E48];
      *&v2[qword_946E48] = 0;
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

  v10 = *&v2[qword_946E50];
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_delegate + 8] = &off_885E08;
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
      v21 = sub_166590();
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
      v25 = sub_166590();
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
        [*&v2[qword_946E40] bounds];
      }

      MidX = CGRectGetMidX(*&v38);
      [*&v2[qword_946E40] bounds];
      [v24 setSourceRect:{MidX, CGRectGetMaxY(v46), 10.0, 10.0}];
    }

    v44 = *&v2[qword_946E48];
    *&v2[qword_946E48] = v13;
    v43 = v13;
    [v2 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v39 = *&v2[qword_946E48];
    *&v2[qword_946E48] = 0;
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

id sub_166D20()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 titleView];

  v4 = sub_166590();
  v5 = v4;
  if (v3)
  {
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v6 = sub_76A1C0();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = qword_946E40;
  [*&v1[qword_946E40] setAlpha:0.0];
  v8 = [v1 navigationItem];
  [v8 setTitleView:*&v1[v7]];

  v9 = [v1 navigationItem];
  v10 = [v9 navigationBar];

  if (v10)
  {
    [v10 layoutIfNeeded];
  }

LABEL_7:
  v11 = qword_946E40;
  v12 = qword_946E58;
  v13 = 0.0;
  if (v1[qword_946E58])
  {
    v13 = 1.0;
  }

  [*&v1[qword_946E40] setAlpha:v13];
  v14 = *&v1[v11];
  v15 = v1[v12];

  return [v14 setUserInteractionEnabled:v15];
}

void sub_166EC0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = sub_166590();
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_76A1F0();
  [v1 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_16945C, v2}];
}

void sub_166FB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_16700C();
  }
}

void sub_16700C()
{
  v1 = v0;
  sub_763ED0();
  v2 = sub_763E50();
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v4 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v5 = sub_6F3850(v2, 1, v3);

  v7 = *(v1 + qword_946E50);
  *(v1 + qword_946E50) = v5;
  v6 = v5;
  sub_1668E0(v7);
}

void sub_1670E4(void *a1)
{
  v1 = a1;
  sub_166EC0();
}

double sub_16712C(id a1)
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

  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {

    return result;
  }

  v10 = sub_76A950();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    v12 = sub_166590();
    [v12 sizeToFit];

    [*&v1[qword_946E40] setNeedsLayout];
  }

  return result;
}

void sub_167290(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_16712C(a3);
}

uint64_t sub_1672FC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_BD88(&unk_947440, &unk_7882A0);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - v2;
  v3 = sub_BD88(&unk_94DCB0, &unk_791B00);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v22 - v4;
  v25 = sub_BD88(&unk_947450, &qword_7882B0);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  sub_1BC07C();
  v8 = *(v0 + qword_99E1A8);
  sub_763EB0();
  v9 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v10 = sub_769970();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v10;
  sub_BD88(&qword_947460, &qword_7882B8);
  sub_16194(&qword_947468, &qword_947460, &qword_7882B8, &protocol conformance descriptor for SyncEvent<A>);
  v30 = v0;
  sub_768720();
  v11 = v8;

  (*(v5 + 8))(v7, v25);
  sub_BEB8(v31);
  sub_763E50();
  sub_75E2F0();

  v12 = sub_769970();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v12;
  v25 = sub_BD88(&unk_947470, &unk_7882C0);
  sub_16194(&unk_94DCC0, &unk_947470, &unk_7882C0, &protocol conformance descriptor for AsyncEvent<A>);
  v13 = v27;
  sub_768720();

  v14 = v29;
  v15 = *(v28 + 8);
  v15(v13, v29);
  sub_BEB8(v31);
  v28 = v11;
  sub_763E50();
  sub_75E300();

  v16 = sub_769970();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v16;
  sub_768720();

  v15(v13, v14);
  sub_BEB8(v31);
  v17 = sub_7653A0();
  v32 = v17;
  v33 = sub_168F28(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v18 = sub_B1B4(v31);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_765C30();
  result = sub_BEB8(v31);
  if (v17)
  {
    sub_763E50();
    sub_75E2A0();

    v20 = sub_769970();
    v32 = v9;
    v33 = &protocol witness table for OS_dispatch_queue;
    v31[0] = v20;
    sub_BD88(&qword_947480, &unk_791B10);
    sub_16194(&qword_94DCD0, &qword_947480, &unk_791B10, &protocol conformance descriptor for SyncEvent<A>);
    v21 = v22;
    sub_768720();

    (*(v23 + 8))(v21, v24);
    return sub_BEB8(v31);
  }

  return result;
}

void sub_1678E0(uint64_t a1)
{
  v2 = sub_763EA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_9474A0, qword_7882D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  sub_1ED18(a1, &v20 - v7, &unk_9474A0, qword_7882D0);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_763E80();
    v13 = v12;
    v14 = sub_763E90();
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for EmptyStateView(0));
    sub_6A4468(v11, v13, v14, v16);
    v18 = objc_allocWithZone(sub_75F540());
    v19 = sub_75F530();
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  sub_1666D8(v10);
}

void (*sub_167ADC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_16941C;
}

void (*sub_167B40(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_169400;
}

id (*sub_167BA4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_169474;
}

void sub_167C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_947400, &qword_788298);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_BD88(&qword_947488, &qword_7AEEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = sub_7653A0();
  v23[3] = v10;
  v23[4] = sub_168F28(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v11 = sub_B1B4(v23);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v10);
  LOBYTE(v10) = sub_765C30();
  sub_BEB8(v23);
  if (v10)
  {
    sub_16831C();
  }

  else
  {
    sub_75E2C0();
    v12 = sub_758DD0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_10A2C(v9, &qword_947488, &qword_7AEEC0);
      v14 = 0;
    }

    else
    {
      v15 = sub_758CB0();
      (*(v13 + 8))(v9, v12);
      v16 = *(v15 + 16);

      v14 = v16 != 0;
    }

    *(a2 + qword_946E58) = v14;
    sub_166D20();
    v17 = sub_166590();
    sub_75E340();
    v18 = sub_75E2D0();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v6, a1, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    sub_75E290();
    sub_10A2C(v6, &unk_947400, &qword_788298);
    v20 = sub_769210();

    [v17 setTitle:v20 forState:0];

    v21 = qword_946E40;
    [*(a2 + qword_946E40) sizeToFit];
    [*(a2 + v21) setNeedsLayout];
  }
}

uint64_t sub_167F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F630, &unk_77E230);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  sub_768900();
  sub_768ED0();
  sub_32A6C0(a1, 1, v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_16808C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_169050;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_169090;
}

unint64_t sub_16811C@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  a1[3] = &type metadata for ArcadeSeeAllGamesPageGridProvider;
  result = sub_168FC4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_168174@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArcadeSeeAllGamesPageShelfLayoutSectionProvider;
  result = sub_168F70();
  *(a1 + 32) = result;
  return result;
}

void sub_1681A8(uint64_t a1)
{
  v2 = sub_BD88(&qword_947428, &unk_7A9330);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  sub_5FFAA0(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    v6 = v7[1];
    sub_761090();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_16831C()
{
  v1 = v0;
  v2 = sub_75EF50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_763E50();
  sub_763E70();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  v9 = sub_4C7CF4(v6, v5, sub_169098, v7);

  (*(v3 + 8))(v5, v2);
  sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
  v10 = [(objc_class *)v9 image];
  v11 = v9;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v15.value.super.isa = v10;
  v15.is_nil = 0;
  v16.value.super.super.isa = v9;
  isa = sub_769840(v18, v15, v16, v17).super.super.isa;
  v13 = [v8 navigationItem];
  [v13 setRightBarButtonItem:isa];
}

void sub_1684F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1690BC();
}

void sub_168558(void *a1)
{
  v1 = a1;
  sub_763EE0();
  sub_166818(0);
}

uint64_t sub_1685B8(uint64_t a1)
{
  v2 = sub_7570A0();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A40, &unk_780300);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  sub_61B4C(a1, v9, v17);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_61BB0(v9, v20);
LABEL_9:
    v25 = 0;
    return v25 & 1;
  }

  v21 = sub_BD88(&qword_940A50, &qword_782590);
  sub_50774(&v9[*(v21 + 48)], v19);
  sub_75F250();
  v22 = *(v4 + 48);
  sub_1ED18(v15, v6, &unk_93FD30, qword_77F240);
  sub_1ED18(v19, &v6[v22], &unk_93FD30, qword_77F240);
  v23 = v31;
  v24 = *(v31 + 48);
  if (v24(v6, 1, v2) != 1)
  {
    sub_1ED18(v6, v12, &unk_93FD30, qword_77F240);
    if (v24(&v6[v22], 1, v2) != 1)
    {
      v27 = v30;
      (*(v23 + 32))(v30, &v6[v22], v2);
      sub_168F28(&qword_947410, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = v23;
      v25 = sub_7691C0();
      v29 = *(v28 + 8);
      v29(v27, v2);
      sub_10A2C(v15, &unk_93FD30, qword_77F240);
      sub_10A2C(v19, &unk_93FD30, qword_77F240);
      v29(v12, v2);
      sub_10A2C(v6, &unk_93FD30, qword_77F240);
      return v25 & 1;
    }

    sub_10A2C(v15, &unk_93FD30, qword_77F240);
    sub_10A2C(v19, &unk_93FD30, qword_77F240);
    (*(v23 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10A2C(v15, &unk_93FD30, qword_77F240);
  sub_10A2C(v19, &unk_93FD30, qword_77F240);
  if (v24(&v6[v22], 1, v2) != 1)
  {
LABEL_8:
    sub_10A2C(v6, &qword_940A40, &unk_780300);
    goto LABEL_9;
  }

  sub_10A2C(v6, &unk_93FD30, qword_77F240);
  v25 = 1;
  return v25 & 1;
}

void sub_168A74()
{
  v1 = *(v0 + qword_946E50);
}

void sub_168AD4(uint64_t a1)
{
  v2 = *(a1 + qword_946E50);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController(uint64_t a1)
{
  result = qword_946E88;
  if (!qword_946E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_168BE8()
{
  sub_763EE0();
  v1 = *(v0 + qword_946E50);
  *(v0 + qword_946E50) = 0;
  sub_1668E0(v1);
}

id sub_168C7C()
{
  v0 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_BD88(&unk_947400, &qword_788298);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() buttonWithType:1];
  sub_75E340();
  v7 = sub_75E2D0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_75E290();
  sub_10A2C(v5, &unk_947400, &qword_788298);
  v8 = sub_769210();

  [v6 setTitle:v8 forState:0];

  if (qword_93C4A8 != -1)
  {
    swift_once();
  }

  v9 = sub_76A3F0();
  v10 = sub_BE38(v9, qword_946E20);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v2, v10, v9);
  (*(v11 + 56))(v2, 0, 1, v9);
  sub_76A420();
  v12 = v6;
  [v12 setAlpha:0.0];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  [v12 setPointerInteractionEnabled:1];
  return v12;
}

uint64_t sub_168F28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_168F70()
{
  result = qword_947430;
  if (!qword_947430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947430);
  }

  return result;
}

unint64_t sub_168FC4()
{
  result = qword_947438;
  if (!qword_947438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947438);
  }

  return result;
}

uint64_t sub_169018()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_169058()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1690BC()
{
  v1 = v0;
  v2 = sub_75EF50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17[-1] - v7;
  sub_763EC0();
  sub_763E70();
  (*(v3 + 104))(v5, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v2);
  sub_168F28(&qword_947420, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_769430();
  sub_769430();
  if (v17[0] == v17[5] && v17[1] == v17[6])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_76A950();
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  v11 = sub_7653A0();
  v17[3] = v11;
  v17[4] = sub_168F28(&qword_947D00, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v12 = sub_B1B4(v17);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v11);
  LOBYTE(v11) = sub_765C30();
  sub_BEB8(v17);
  if (v11)
  {
    sub_16831C();
  }

  else
  {
    v13 = [v1 navigationItem];
    v14 = [v13 rightBarButtonItem];

    [v14 setSelected:v9 & 1];
  }

  sub_761120();
  sub_768900();
  sub_768ED0();
  v15 = v17[0];
  if (v9)
  {
    sub_761070();
  }

  else
  {
    sub_7610A0();
  }
}

uint64_t sub_169424()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_169478(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_75FA60());
  *&v4[v14] = sub_75FA50();
  v16 = &v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView] = v17;
  v19 = qword_93C4B0;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
  v22 = qword_9474B0;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_BE70(0, &qword_947630, UIImage_ptr), v25 = v22, v26 = sub_76A1C0(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_93C4B8;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_7666D0();
  v30 = sub_BE38(v29, qword_9474B8);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_2FA970(v12);

  v34 = qword_93C4C0;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_16D2A4(&qword_9474D0, v68);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_16D300(v68, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_16D35C(v68);
  [*(*&v5[v18] + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView] = v37;
  v39 = qword_93C4C8;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_BE38(v29, qword_9474F8);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_707B9C(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for SearchLockupListCollectionViewCell();
  v67.receiver = v5;
  v67.super_class = v42;
  v43 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v44 = sub_16ACE8();
  v45 = [objc_allocWithZone(UICollectionView) initWithFrame:v44 collectionViewLayout:{a1, a2, a3, a4}];

  v46 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView;
  v47 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView];
  *&v43[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView] = v45;
  v48 = v45;

  if (!v48)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_764280();
  swift_allocObject();
  *&v43[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator] = sub_764220();

  v49 = v43;
  v50 = [v49 contentView];
  [v50 addSubview:*&v49[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView]];

  v51 = [v49 contentView];
  [v51 addSubview:*&v49[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView]];

  v52 = *&v43[v46];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v52 setDelegate:v49];
  v53 = *&v43[v46];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 clearColor];
  [v55 setBackgroundColor:v56];

  v57 = *&v43[v46];
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = v57;
  sub_769BD0();
  v60 = sub_769210();

  [v59 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v60];

  v61 = *&v43[v46];
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v62 = swift_getObjCClassFromMetadata();
  v63 = v61;
  sub_769BD0();
  v64 = sub_769210();

  sub_769BD0();
  v65 = sub_769210();

  [v63 registerClass:v62 forSupplementaryViewOfKind:v64 withReuseIdentifier:v65];

  v66 = [v49 contentView];
  if (*&v43[v46])
  {
    [v66 addSubview:?];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_169C64()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    swift_beginAccess();
    swift_weakLoadStrong();

    sub_764240();

    if (swift_weakLoadStrong())
    {
      sub_7614F0();
      swift_allocObject();
      *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsScrollObserver) = sub_761500();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_169D34()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_9474B0 = v5;
  return result;
}

void sub_169E40()
{
  qword_9474E8 = &type metadata for CGFloat;
  unk_9474F0 = &protocol witness table for CGFloat;
  qword_9474D0 = 0x4008000000000000;
}

id sub_169E7C(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_7666D0();
  sub_161DC(v5, a2);
  v6 = sub_BE38(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  *(v6 + 8) = UIFontWeightSemibold;
  (*(*(v5 - 8) + 104))();

  return v8;
}

uint64_t sub_169F38()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_947510);
  v1 = sub_BE38(v0, qword_947510);
  if (qword_93D4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99E650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_16A000()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_93C4D0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_947510);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_766CA0();
  v12 = &protocol witness table for StaticDimension;
  sub_B1B4(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_B1B4(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  sub_34698(&v13, &unk_947528);
  return sub_34698(&v10, &unk_947550);
}

id sub_16A228(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration];
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

void sub_16A304()
{
  v1 = v0;
  v2 = sub_7664F0();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7664A0();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75FF90();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v47 - v9;
  v10 = sub_75D850();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v47 - v15;
  v16 = sub_75CF00();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchLockupListCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v20;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 bounds];
  v49 = v22;

  v23 = [v1 contentView];
  [v23 layoutMargins];

  v59 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration + 8];
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v16, qword_99B898);
  v25 = [v1 traitCollection];
  (*(v17 + 16))(v19, v24, v16);
  v26 = sub_75CE70();
  if ((v28 & 1) == 0 && ((v26 | v27) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v29 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v29 = qword_946938;
    }

    v30 = sub_BE38(v10, v29);
    v31 = v13;
    (*(v11 + 16))(v13, v30, v10);
    v32 = v47;
    (*(v11 + 32))(v47, v31, v10);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v11 + 8))(v32, v10);
  }

  sub_75CDB0();

  (*(v17 + 8))(v19, v16);
  if (__OFSUB__(v59, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView];
  v67[3] = type metadata accessor for ImageHeadingView();
  v67[4] = &protocol witness table for UIView;
  v67[0] = v33;
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView];
  v66[3] = type metadata accessor for SearchHeadingView();
  v66[4] = &protocol witness table for UIView;
  v66[0] = v34;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView])
  {
    v64[0] = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView];
    sub_BE70(0, &unk_94A790, UICollectionView_ptr);
    v35 = v33;
    v36 = v34;
    sub_766580();
    v64[3] = sub_766970();
    v64[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v64);
    sub_766960();
    if (qword_93C4C8 == -1)
    {
LABEL_16:
      v37 = sub_7666D0();
      v38 = sub_BE38(v37, qword_9474F8);
      v39 = v48;
      (*(*(v37 - 8) + 16))(v48, v38, v37);
      v41 = v50;
      v40 = v51;
      (*(v50 + 104))(v39, enum case for FontSource.useCase(_:), v51);
      v63[3] = sub_766CA0();
      v63[4] = &protocol witness table for StaticDimension;
      sub_B1B4(v63);
      v61 = v40;
      v62 = &protocol witness table for FontSource;
      v42 = sub_B1B4(v60);
      (*(v41 + 16))(v42, v39, v40);
      sub_766CB0();
      (*(v41 + 8))(v39, v40);
      v61 = &type metadata for CGFloat;
      v62 = &protocol witness table for CGFloat;
      v60[0] = 0x4030000000000000;
      v43 = v53;
      sub_75FF80();
      v45 = v54;
      v44 = v55;
      (*(v54 + 16))(v52, v43, v55);
      sub_134D8(v67, v64);
      sub_134D8(v66, v63);
      sub_134D8(v65, v60);
      sub_75FFB0();
      swift_allocObject();
      v64[0] = sub_75FFA0();
      (*(v45 + 8))(v43, v44);
      sub_BEB8(v65);
      sub_BEB8(v66);
      sub_BEB8(v67);
      sub_16D25C(&unk_947620, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
      v46 = v56;
      sub_7672C0();
      (*(v57 + 8))(v46, v58);

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
}

id sub_16ACE8()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_16C790;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_507AD4;
  v7[3] = &unk_8860A0;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

unsigned __int8 *sub_16AE14(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration];
    v6 = *&result[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration + 8];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = [result contentView];

      if (v8)
      {
        [v8 layoutMargins];
        v11 = sub_16C7B0(v5, v6, a2, v9, v10);
        if (v11)
        {
          v12 = v11;
          v13 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v15 = v12;
          v16 = v12;

          aBlock[4] = sub_16CC64;
          aBlock[5] = v13;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_4E4820;
          aBlock[3] = &unk_8860C8;
          v17 = _Block_copy(aBlock);

          [v16 setVisibleItemsInvalidationHandler:v17];

          _Block_release(v17);
          v8 = v16;
        }

        else
        {
          v15 = 0;
        }

        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_16AFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsScrollObserver);
    v5 = Strong;

    if (v4)
    {
      sub_7614F0();
      sub_75ADE0();
    }
  }
}

id sub_16B2C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for SearchLockupListCollectionViewCell.ListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchLockupListCollectionViewCell.ListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_16B4C8(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  sub_169C64();

  return result;
}

void (*sub_16B52C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_16B5C4;
}

void sub_16B5C4(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_169C64();
  }

  free(v3);
}

uint64_t sub_16B64C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_16B6A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

double sub_16B770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, void *a15, uint64_t a16)
{
  v85 = a8;
  v84 = a7;
  v81 = a5;
  v82 = a6;
  v79 = a3;
  v80 = a4;
  v78 = a1;
  v16 = sub_7664A0();
  v87 = *(v16 - 8);
  v88 = v16;
  __chkstk_darwin(v16);
  v86 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_75FF90();
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v89 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v90 = &v72 - v21;
  v94 = sub_762D10();
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ImageHeadingView();
  if (qword_93C4B0 != -1)
  {
    swift_once();
  }

  v24 = qword_9474B0;
  if (qword_93C4B8 != -1)
  {
    swift_once();
  }

  v83 = sub_7666D0();
  sub_BE38(v83, qword_9474B8);
  if (qword_93C4C0 != -1)
  {
    swift_once();
  }

  v25 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  v26 = [a15 traitCollection];
  v93 = v25;
  v27 = sub_769E10();

  v28 = objc_opt_self();
  v76 = v27;
  v29 = [v28 configurationWithFont:v27];
  v30 = [v24 imageByApplyingSymbolConfiguration:v29];
  v31 = v30;
  if (v30)
  {
    [v30 size];
  }

  v32 = sub_7670D0();
  swift_allocObject();
  v33 = sub_7670B0();

  v95 = a15;
  v34 = [a15 traitCollection];
  sub_769E10();

  v35 = sub_7653B0();
  *(&v104 + 1) = v35;
  v75 = sub_16D25C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  *&v105 = v75;
  v36 = sub_B1B4(&v103);
  v37 = *(v35 - 8);
  v38 = *(v37 + 104);
  v74 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72 = v37 + 104;
  v73 = v38;
  v38(v36);
  sub_765C30();
  sub_BEB8(&v103);
  sub_762D00();
  v39 = sub_762CF0();
  v41 = v40;
  v42 = *(v96 + 8);
  v96 += 8;
  v42(v23, v94);
  v43 = *(v41 + 8);

  swift_unknownObjectRetain();
  sub_2FB4BC(v33, &protocol witness table for LayoutViewPlaceholder, v39, v43, qword_9474D0, &v103);

  swift_unknownObjectRelease();
  sub_16C320(&v103, &v108);
  v44 = swift_allocObject();
  sub_16C3BC(&v108, (v44 + 16));
  swift_allocObject();
  v78 = sub_767090();

  swift_unknownObjectRelease();

  sub_BEB8(&v103);
  if (qword_93C4C8 != -1)
  {
    swift_once();
  }

  v45 = v83;
  v46 = sub_BE38(v83, qword_9474F8);
  if (qword_93C4D0 != -1)
  {
    swift_once();
  }

  sub_BE38(v45, qword_947510);
  if (qword_93C4D8 != -1)
  {
    swift_once();
  }

  v47 = [v95 traitCollection];
  v77 = v46;
  sub_769E10();

  *(&v104 + 1) = v35;
  *&v105 = v75;
  v48 = sub_B1B4(&v103);
  v73(v48, v74, v35);
  sub_765C30();
  sub_BEB8(&v103);
  sub_762D00();
  v49 = sub_762CF0();
  v51 = v50;
  v42(v23, v94);
  v52 = swift_allocObject();
  v53 = v82;
  *(v52 + 16) = v81;
  *(v52 + 24) = v53;
  swift_allocObject();

  v54 = sub_767090();
  sub_16C41C(&unk_947528, &v103);
  v55 = swift_allocObject();
  v56 = v106;
  *(v55 + 48) = v105;
  *(v55 + 64) = v56;
  *(v55 + 80) = v107;
  v57 = v104;
  *(v55 + 16) = v103;
  *(v55 + 32) = v57;
  *(v55 + 96) = v49;
  *(v55 + 104) = v51;
  *(v55 + 112) = v54;
  swift_allocObject();
  v58 = sub_767090();
  v59 = swift_allocObject();
  *(v59 + 16) = a16;
  *(v59 + 24) = v84 & 1;
  *(v59 + 32) = v85;
  swift_allocObject();
  v60 = sub_767090();
  *(&v104 + 1) = v32;
  *&v105 = &protocol witness table for LayoutViewPlaceholder;
  v102[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v103 = v78;
  v109 = v32;
  v110 = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v58;
  v102[3] = v32;
  v102[0] = v60;
  v101[3] = sub_766970();
  v101[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v101);

  sub_766960();
  v61 = v86;
  (*(*(v45 - 8) + 16))(v86, v77, v45);
  v63 = v87;
  v62 = v88;
  (*(v87 + 104))(v61, enum case for FontSource.useCase(_:), v88);
  v100[3] = sub_766CA0();
  v100[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v100);
  v98 = v62;
  v99 = &protocol witness table for FontSource;
  v64 = sub_B1B4(v97);
  (*(v63 + 16))(v64, v61, v62);
  sub_766CB0();
  (*(v63 + 8))(v61, v62);
  v98 = &type metadata for CGFloat;
  v99 = &protocol witness table for CGFloat;
  v97[0] = 0x4030000000000000;
  v65 = v90;
  sub_75FF80();
  v67 = v91;
  v66 = v92;
  (*(v91 + 16))(v89, v65, v92);
  sub_134D8(&v103, v101);
  sub_134D8(&v108, v100);
  sub_134D8(v102, v97);
  sub_75FFB0();
  swift_allocObject();
  v68 = sub_75FFA0();
  (*(v67 + 8))(v65, v66);
  sub_BEB8(v102);
  sub_BEB8(&v108);
  sub_BEB8(&v103);
  *&v103 = v68;
  sub_16D25C(&unk_94A750, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  sub_7665A0();
  v70 = v69;

  return v70;
}

uint64_t sub_16C320(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_16C384()
{
  sub_BEB8((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

_OWORD *sub_16C3BC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_16C3DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_16C478()
{
  sub_BEB8((v0 + 16));
  sub_BEB8((v0 + 56));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_16C4E8(void *a1, double a2, double a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  sub_16C640(v8, a1, a2, a3, v7, ObjectType);
}

void sub_16C550()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_75FA60());
  *(v0 + v2) = sub_75FA50();
  sub_76A840();
  __break(1u);
}

void sub_16C640(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v10 = sub_75CF00();
  v11 = sub_BE38(v10, qword_99B898);
  sub_1FE304(v11, a2, a3, a4);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

uint64_t sub_16C720()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_16C758()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_16C798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_16C7B0(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_769BD0();
  v15 = v8;
  v16 = sub_769210();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v42 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_BD88(&unk_93F5C0, &unk_77C600);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77D9F0;
  *(v21 + 32) = v17;
  sub_BE70(0, &unk_956250, NSCollectionLayoutSupplementaryItem_ptr);
  v22 = v17;
  isa = sub_769450().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
    v28 = a1;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v10 = v27;
    swift_unknownObjectRelease();
    v28 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = v10 - a4 - a5;
    }

    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v42];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (v28)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_16CC6C(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_BD88(&unk_947600, &qword_7883F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_BD88(&qword_944CE8, &qword_78BEE0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_objectGraph);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource);
    if (v14)
    {

      v15 = v14;
      sub_767A40();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        sub_768700();
        v19 = sub_764D80();

        if (!v19)
        {
          (*(v9 + 8))(v12, v8);

          return;
        }

        v20 = sub_BD88(&unk_93F630, &unk_77E230);
        sub_768860();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v4, 1, v20) != 1)
        {
          sub_32A6C0(v19, 1, v13, v4);

          (*(v9 + 8))(v12, v8);
          (*(v21 + 8))(v4, v20);
          return;
        }

        (*(v9 + 8))(v12, v8);

        v16 = &unk_93F980;
        v17 = &qword_77EDA0;
        v18 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8, v10);
    }

    v16 = &unk_947600;
    v17 = &qword_7883F0;
    v18 = v7;
LABEL_7:
    sub_10A2C(v18, v16, v17);
  }
}

uint64_t sub_16CFF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_947600, &qword_7883F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-1] - v4;
  v6 = sub_BD88(&qword_944CE8, &qword_78BEE0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15[-1] - v9;
  v11 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource);
  if (!v11)
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
    return sub_10A2C(v5, &unk_947600, &qword_7883F0);
  }

  v12 = v11;
  sub_767A40();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10A2C(v5, &unk_947600, &qword_7883F0);
  }

  result = (*(v7 + 32))(v10, v5, v6);
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    v15[3] = sub_764F90();
    v15[4] = sub_16D25C(&qword_947610, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

    sub_768700();
    sub_764270();

    (*(v7 + 8))(v10, v6);
    return sub_BEB8(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16D25C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_16D3C4()
{
  result = qword_947638;
  if (!qword_947638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947638);
  }

  return result;
}

id sub_16D420(uint64_t a1, uint64_t a2)
{
  result = [v2 collectionView];
  if (result)
  {
    v4 = result;
    v5 = [v2 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 delegate];

      if (v7)
      {
        v35 = &OBJC_PROTOCOL____TtP18ASMessagesProvider49UICollectionViewDelegateShelfDisplayingFlowLayout_;
        v8 = swift_dynamicCastObjCProtocolConditional();
        if (!v8)
        {
          goto LABEL_14;
        }

        v9 = [v8 collectionView:v4 layout:v2 shouldProvideBackgroundAtSection:sub_7575D0()];
        swift_unknownObjectRelease();
        if (v9)
        {
          v10 = [v2 collectionView];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 delegate];

            if (v12)
            {
              v34 = &OBJC_PROTOCOL____TtP18ASMessagesProvider49UICollectionViewDelegateShelfDisplayingFlowLayout_;
              v13 = swift_dynamicCastObjCProtocolConditional();
              if (v13)
              {
                [v13 collectionView:v4 layout:v2 insetForBackgroundAtSection:sub_7575D0()];
                v15 = v14;
                v17 = v16;
                swift_unknownObjectRelease();
                isa = sub_757550().super.isa;
                v33.receiver = v2;
                v33.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
                v19 = objc_msgSendSuper2(&v33, "layoutAttributesForItemAtIndexPath:", isa);

                if (v19)
                {
                  [v19 frame];
                  v21 = v20;
                  v23 = v22;
                  v25 = v24;
                  v27 = v26;
                  v28 = sub_769210();
                  v29 = sub_757550().super.isa;
                  v30 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v28 withIndexPath:v29];

                  v36.origin.x = v21;
                  v36.origin.y = v23;
                  v36.size.width = v25;
                  v36.size.height = v27;
                  v31 = CGRectGetMinY(v36) - v15;
                  [v4 bounds];
                  Width = CGRectGetWidth(v37);
                  v38.origin.x = v21;
                  v38.origin.y = v23;
                  v38.size.width = v25;
                  v38.size.height = v27;
                  [v30 setFrame:{0.0, v31, Width, v17 + v15 + CGRectGetHeight(v38)}];
                  [v30 setZIndex:-1];

                  return v30;
                }

                goto LABEL_11;
              }

LABEL_14:

              swift_unknownObjectRelease();
              return 0;
            }
          }
        }
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_16D714(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v7 = sub_664498(a1, v6);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 16 * v7);

      v10 = sub_7575D0();
      v11 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
      swift_beginAccess();
      if (*(*(v2 + v11) + 16))
      {
        sub_663D5C(v10);
        if (v12)
        {
          return v9;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_16D814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_757640();
  v95 = *(v4 - 8);
  __chkstk_darwin(v4);
  v108 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v91 - v7;
  v9 = sub_10E41C(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  swift_beginAccess();
  v94 = v10;
  *&v2[v10] = v9;

  v11 = sub_10E4FC(_swiftEmptyArrayStorage);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v106 = v12;
  *&v3[v12] = v11;

  v13 = [v3 collectionView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = [v3 collectionView];
  if (!v15 || (v16 = v15, v17 = [v15 delegate], v16, !v17))
  {
LABEL_55:

    return;
  }

  v111 = &OBJC_PROTOCOL____TtP18ASMessagesProvider49UICollectionViewDelegateShelfDisplayingFlowLayout_;
  v18 = swift_dynamicCastObjCProtocolConditional();
  if (!v18)
  {

    swift_unknownObjectRelease();
    return;
  }

  v19 = v18;
  v20 = [v14 numberOfSections];
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v21 = v20;
  if (!v20)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v22 = 0;
  left = UIEdgeInsetsZero.left;
  v105 = (v95 + 8);
  v101 = (v95 + 16);
  v23 = &selRef_setInterGroupSpacing_;
  v103 = xmmword_77E280;
  v24 = &selRef_setInterGroupSpacing_;
  v98 = v14;
  v96 = v19;
  v97 = v17;
  v92 = v20;
  while (1)
  {
    if ([v19 v23[6]])
    {
      v107 = [v19 collectionView:v14 layout:v3 multiColumnCountAtSection:v22];
      if (v107 >= 2)
      {
        break;
      }
    }

LABEL_10:
    if (++v22 == v21)
    {
      goto LABEL_54;
    }
  }

  v25 = [v19 respondsToSelector:"collectionView:layout:insetForSectionAtIndex:"];
  v26 = left;
  if (v25)
  {
    [v19 collectionView:v14 layout:v3 insetForSectionAtIndex:v22];
    v26 = v27;
  }

  [v19 collectionView:v14 layout:v3 multiColumnMarginAt:v22];
  v29 = v28;
  v30 = [v14 numberOfItemsInSection:v22];
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (!v30)
  {
    v33 = 1.79769313e308;
LABEL_45:
    v77 = v94;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = *&v3[v77];
    v79 = v110;
    *&v3[v77] = 0x8000000000000000;
    v80 = sub_663D5C(v22);
    v82 = v79[2];
    v83 = (v81 & 1) == 0;
    v74 = __OFADD__(v82, v83);
    v84 = v82 + v83;
    if (v74)
    {
      goto LABEL_61;
    }

    v85 = v81;
    if (v79[3] >= v84)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = v80;
        sub_45B924();
        v80 = v90;
      }
    }

    else
    {
      sub_455684(v84, isUniquelyReferenced_nonNull_native);
      v80 = sub_663D5C(v22);
      if ((v85 & 1) != (v86 & 1))
      {
        goto LABEL_65;
      }
    }

    v21 = v92;
    v23 = &selRef_setInterGroupSpacing_;
    v87 = v110;
    if (v85)
    {
      *(v110[7] + 8 * v80) = v33;
    }

    else
    {
      v110[(v80 >> 6) + 8] |= 1 << v80;
      *(v87[6] + 8 * v80) = v22;
      *(v87[7] + 8 * v80) = v33;
      v88 = v87[2];
      v74 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v74)
      {
        goto LABEL_62;
      }

      v87[2] = v89;
    }

    *&v3[v94] = v87;
    swift_endAccess();
    v24 = &selRef_setInterGroupSpacing_;
    goto LABEL_10;
  }

  v31 = 0;
  v99 = v107 - 1;
  v32 = 0.0;
  v33 = 1.79769313e308;
  v34 = 0.0;
  v100 = v22;
  v35 = v105;
  v104 = v30;
  while (1)
  {
    sub_BD88(&qword_95B250, "hq\b");
    v36 = swift_allocObject();
    *(v36 + 16) = v103;
    *(v36 + 32) = v22;
    *(v36 + 40) = v31;
    sub_757540();
    if (([v19 respondsToSelector:v24[11]] & 1) == 0)
    {
      (*v35)(v8, v4);
      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    isa = sub_757550().super.isa;
    [v19 v24[11]];
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();

    v42 = sub_7575C0();
    v43 = sub_7575C0();
    if (!(v42 / v107))
    {
      v44 = sub_757550().super.isa;
      v45 = type metadata accessor for ShelfDisplayingFlowLayout();
      v109.receiver = v3;
      v109.super_class = v45;
      v46 = objc_msgSendSuper2(&v109, "layoutAttributesForItemAtIndexPath:", v44);

      if (v46)
      {
        [v46 frame];
        MinY = CGRectGetMinY(v112);

        if (v33 >= MinY)
        {
          v33 = MinY;
        }
      }
    }

    v48 = *v101;
    v49 = v108;
    v50 = v4;
    (*v101)(v108, v8, v4);
    v51 = v106;
    swift_beginAccess();
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v110 = *&v3[v51];
    v53 = v110;
    *&v3[v51] = 0x8000000000000000;
    v56 = sub_664498(v49, v54);
    v57 = v53[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (v53[3] >= v59)
    {
      v35 = v105;
      if (v52)
      {
        goto LABEL_31;
      }

      sub_45BA70(v59, v55);
    }

    else
    {
      sub_4558E8(v59, v52);
      v62 = sub_664498(v108, v61);
      if ((v60 & 1) != (v63 & 1))
      {
        goto LABEL_64;
      }

      v56 = v62;
    }

    v35 = v105;
LABEL_31:
    v102 = v43 % v107;
    v64 = v26 + (v29 + v39) * (v43 % v107);
    v65 = v110;
    if (v60)
    {
      v66 = (v110[7] + 16 * v56);
      *v66 = v64;
      v66[1] = v34;
      v67 = *v35;
      v4 = v50;
      (*v35)(v108, v50);
    }

    else
    {
      v68 = v3;
      v69 = v8;
      v110[(v56 >> 6) + 8] |= 1 << v56;
      v70 = v95;
      v71 = v108;
      v48(v65[6] + *(v95 + 72) * v56, v108, v50);
      v72 = (v65[7] + 16 * v56);
      v4 = v50;
      *v72 = v64;
      v72[1] = v34;
      v67 = *(v70 + 8);
      v67(v71, v50);
      v73 = v65[2];
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_59;
      }

      v65[2] = v75;
      v8 = v69;
      v3 = v68;
      v35 = v105;
    }

    *&v3[v106] = v65;

    swift_endAccess();
    v67(v8, v4);
    v76 = v34 + v41;
    if (v32 > v34 + v41)
    {
      v76 = v32;
    }

    if (v102 == v99)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v76;
    }

    if (v102 == v99)
    {
      v34 = v76;
    }

    v14 = v98;
    v19 = v96;
    v22 = v100;
    v24 = &selRef_setInterGroupSpacing_;
LABEL_19:
    if (v104 == ++v31)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_76A9B0();
  __break(1u);
LABEL_65:
  sub_76A9B0();
  __break(1u);
}

id sub_16E100()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *&v0[v1] = sub_10E41C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *&v0[v2] = sub_10E4FC(_swiftEmptyArrayStorage);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v3 = objc_msgSendSuper2(&v8, "init");
  sub_BE70(0, &qword_947680, UICollectionReusableView_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_769210();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

void sub_16E2F8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v55 = sub_757640();
  v11 = *(v55 - 8);
  __chkstk_darwin(v55);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v47 - v15;
  v16 = type metadata accessor for ShelfDisplayingFlowLayout();
  v49 = v6;
  v58.receiver = v6;
  v58.super_class = v16;
  v17 = objc_msgSendSuper2(&v58, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v17)
  {
    return;
  }

  v18 = v17;
  sub_BE70(0, &qword_944B40, UICollectionViewLayoutAttributes_ptr);
  v19 = sub_769460();

  v57 = _swiftEmptyArrayStorage;
  if (v19 >> 62)
  {
    v20 = sub_76A860();
    v21 = v49;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_25:
    v48 = _swiftEmptyArrayStorage;
LABEL_26:
    v56 = v19;
    sub_10A6C0(v48);
    return;
  }

  v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  v21 = v49;
  if (!v20)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v20 >= 1)
  {
    v22 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
    v23 = v19 & 0xC000000000000001;
    v52 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
    v53 = v13;
    swift_beginAccess();
    v47 = v22;
    swift_beginAccess();
    v24 = 0;
    v51 = "multiColumnOrigins";
    v25 = (v11 + 8);
    v48 = _swiftEmptyArrayStorage;
    v50 = v19 & 0xC000000000000001;
    while (1)
    {
      v26 = v23 ? sub_76A770() : *(v19 + 8 * v24 + 32);
      v27 = v26;
      if (![v26 representedElementCategory])
      {
        break;
      }

LABEL_7:
      if (v20 == ++v24)
      {
        goto LABEL_26;
      }
    }

    v28 = [v27 indexPath];
    v29 = v54;
    sub_757590();

    v30 = sub_16D420(0xD00000000000001FLL, v51 | 0x8000000000000000);
    v31 = *v25;
    (*v25)(v29, v55);
    if (v30)
    {
      v32 = v30;
      sub_769440();
      if (*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v57 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v48 = v57;
      v21 = v49;
    }

    v33 = [v27 indexPath];
    v34 = v53;
    sub_757590();

    v35 = *&v21[v52];
    if (*(v35 + 16))
    {

      v37 = sub_664498(v34, v36);
      if (v38)
      {
        v39 = *(v35 + 56) + 16 * v37;
        v40 = *v39;
        v41 = *(v39 + 8);

        v42 = sub_7575D0();
        v43 = *&v21[v47];
        if (*(v43 + 16))
        {
          v44 = sub_663D5C(v42);
          if (v45)
          {
            v46 = *(*(v43 + 56) + 8 * v44);

            v31(v34, v55);

            [v27 frame];
            [v27 setFrame:{v40, v41 + v46}];

LABEL_23:
            v23 = v50;
            goto LABEL_7;
          }
        }
      }

      else
      {
      }
    }

    v31(v34, v55);
    goto LABEL_23;
  }

  __break(1u);
}

id sub_16E814(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_757550().super.isa;
  v8 = type metadata accessor for ShelfDisplayingFlowLayout();
  v17.receiver = v2;
  v17.super_class = v8;
  v9 = objc_msgSendSuper2(&v17, "layoutAttributesForItemAtIndexPath:", isa);

  if (v9)
  {
    v10 = [v9 indexPath];
    sub_757590();

    v11 = sub_16D714(v6);
    v13 = v12;
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    if ((v15 & 1) == 0)
    {
      [v9 frame];
      [v9 setFrame:{*&v11, v13}];
    }
  }

  return v9;
}

void *sub_16ED6C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v20.receiver = v6;
  v20.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v11 = objc_msgSendSuper2(&v20, "invalidationContextForBoundsChange:", a3, a4, a5, a6);
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
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0.0;
    if (a5 != 0.0)
    {
LABEL_6:
      [v12 setInvalidateFlowLayoutAttributes:1];
      [v12 setInvalidateFlowLayoutDelegateMetrics:1];
      return v12;
    }
  }

  if (v18 != a6)
  {
    goto LABEL_6;
  }

  return v12;
}

id sub_16EF08(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_16EFE0(uint64_t a1, int a2, char a3, char a4)
{
  v5 = v4;
  v47 = a2;
  v9 = sub_BD88(&qword_947688, qword_7ABA10);
  __chkstk_darwin(v9 - 8);
  v49 = &v46 - v10;
  v11 = sub_756EB0();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel];
  v48 = a1;
  if (a3)
  {
    sub_75A470();
    if (a4)
    {
      v19 = [v5 traitCollection];
      v20 = sub_7699E0();

      goto LABEL_7;
    }
  }

  else
  {
    sub_75A4A0();
    v21 = [v5 traitCollection];
    v22 = sub_657738(v14, 0, v21);

    (*(v12 + 8))(v14, v11);
    v23 = [v5 traitCollection];
    v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
    v46 = [v22 length];
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = v23;
    *(v17 + 4) = v24;
    v17[40] = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_119AC;
    *(v25 + 24) = v17;
    v54 = sub_2636C;
    v55 = v25;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_10C1C;
    v53 = &unk_886250;
    v26 = _Block_copy(&aBlock);
    v12 = v55;
    v27 = v23;
    v11 = v24;

    [v22 enumerateAttributesInRange:0 options:v46 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v20 = 0;
LABEL_7:
  v28 = [v5 traitCollection];
  v29 = sub_657738(v17, v20 & 1, v28);

  (*(v12 + 8))(v17, v11);
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v46 = [v29 length];
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  *(v32 + 40) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_266A8;
  *(v33 + 24) = v32;
  v54 = sub_26694;
  v55 = v33;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_10C1C;
  v53 = &unk_8862C8;
  v34 = _Block_copy(&aBlock);
  v35 = v30;
  v11 = v31;

  [v29 enumerateAttributesInRange:0 options:v46 usingBlock:{0x100000, v34}];

  _Block_release(v34);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return;
  }

LABEL_8:
  sub_1A532C(v11);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v37 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed);
  v38 = v47;
  *(v18 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed) = v47 & 1;
  if (v38)
  {
    v39 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines);
  }

  else
  {
    v39 = 0;
  }

  [*(v18 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setNumberOfLines:v39];
  if (v37 != *(v18 + v36))
  {
    sub_1A5974();
  }

  v40 = sub_75A4B0();
  v41 = &v5[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle];
  *v41 = v40;
  v41[1] = v42;

  sub_656D08();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtwork] = sub_75A460();

  sub_656D08();

  v43 = v49;
  sub_75A490();
  v44 = sub_75A480();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  v45 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_16F6F8(v43, &v5[v45]);
  swift_endAccess();
  sub_656D08();
  sub_16F768(v43);
  [v5 setNeedsLayout];
}

double sub_16F6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_16F6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_947688, qword_7ABA10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_16F768(uint64_t a1)
{
  v2 = sub_BD88(&qword_947688, qword_7ABA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_16F7E0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D0F8 != -1)
  {
    swift_once();
  }

  v13 = sub_766CA0();
  sub_BE38(v13, qword_99DAE8);
  swift_getObjectType();
  sub_766470();
  sub_766700();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for SmallLockupView(0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v14 = sub_75CF00();
  v15 = sub_BE38(v14, qword_99B898);
  sub_1FE304(v15, a7, 0.0, 0.0);
  return a1;
}

uint64_t sub_16F9C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v2 = sub_75CF00();
  sub_BE38(v2, qword_99B898);
  sub_75CDD0();
  sub_7601D0();
  v3 = sub_7601F0();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_16FB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_16FB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_BD88(&unk_948730, &qword_788DD0);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v30 - v20;
  v22 = [v3 contentView];
  [v22 layoutMargins];
  [v22 setLayoutMargins:?];

  v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34SmallLockupCollectionViewTableCell_lockupView];
  v24 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_758C70();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_75BD30();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_BD88(&unk_9457F0, qword_783FD0);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = sub_765870();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_4A18A4(a1, v23, v21, a3, 0, 0, v17, v14, v8, v11);
  sub_10A2C(v8, &unk_9457D0, &unk_785630);
  v23[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v23 setNeedsLayout];
  sub_10A2C(v11, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v14, &unk_9457E0, &qword_785640);
  sub_10A2C(v17, &unk_94A780, &unk_788DC0);
  return sub_10A2C(v21, &unk_948730, &qword_788DD0);
}

id sub_170004(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SearchCollectionLayoutAttributes();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1700CC()
{
  result = qword_947720;
  if (!qword_947720)
  {
    sub_7613D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947720);
  }

  return result;
}

void sub_170124(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7687C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7687B0();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 proxyForPlayer:v12];
    v14 = [v13 utilityService];

    v15 = [objc_opt_self() currentGame];
    v16 = [v15 internal];

    v17 = getpid();
    sub_10E1F8(_swiftEmptyArrayStorage);
    isa = sub_7690E0().super.isa;

    [v14 openDashboardAsRemoteAlertForGame:v16 hostPID:v17 deeplink:isa];
    swift_unknownObjectRelease();

    (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
    sub_768F60();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v24 = a3;
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v19 = sub_768FF0();
    sub_BE38(v19, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    v20 = swift_allocObject();
    v23 = xmmword_77B6D0;
    *(v20 + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_768790();
    sub_75C5D0();
    swift_allocObject();
    v21 = sub_75C5C0();
    if (v21)
    {
      sub_72D7F0(v21, 1, a2);
      sub_768F00();
    }

    else
    {
      *(swift_allocObject() + 16) = v23;
      sub_768540();
      sub_768EA0();

      sub_17070C();
      swift_allocError();
      *v22 = 1;
      sub_768F50();
    }
  }
}

uint64_t sub_1705DC(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v3 = sub_768F90();
  sub_758BB0();
  v6[3] = sub_12EA98();
  v6[4] = &protocol witness table for OS_dispatch_queue;
  v6[0] = sub_769970();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  sub_758B60();

  sub_BEB8(v6);
  return v3;
}

uint64_t sub_1706C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_17070C()
{
  result = qword_947728;
  if (!qword_947728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947728);
  }

  return result;
}

unint64_t sub_170774()
{
  result = qword_947730;
  if (!qword_947730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947730);
  }

  return result;
}

id sub_1707C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_75A500();
  if (v5)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityLabel:v6];

  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel];
  sub_75A510();
  v8 = sub_769210();

  [v7 setText:v8];

  v9 = sub_75A520();
  if (v9)
  {
    sub_765260();
    v26 = v10;
    v27 = v11;

    *&v12 = v26;
    *(&v12 + 1) = v27;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = &v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize];
  *v13 = v12;
  v13[16] = v9 == 0;
  v14 = sub_75A520();
  if (v14)
  {
  }

  v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_hasArtwork] = v14 != 0;
  v15 = sub_75A520();
  if (v15)
  {
    sub_170A5C(v15, a2);
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
    sub_759190();
    [v16 setHidden:1];
  }

  v17 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
  v18 = sub_75A4E0();
  [v17 setTintColor:v18];

  v19 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction];
  if (v19)
  {
    v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction + 8];
    v21 = objc_allocWithZone(UITapGestureRecognizer);

    v22 = [v21 initWithTarget:v3 action:"handleTap"];
    v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer];
    *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer] = v22;
    v24 = v22;

    if (v24)
    {
      [v3 addGestureRecognizer:v24];
      sub_F704(v19, v20);
    }

    else
    {
      sub_F704(v19, v20);
    }
  }

  else if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer])
  {
    [v3 removeGestureRecognizer:?];
  }

  return [v3 setNeedsLayout];
}

void sub_170A5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760730();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = sub_765240();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = a2;

    sub_765250();
    v27 = sub_765210();
    (*(v16 + 8))(v18, v15);
    v19 = [v3 traitCollection];
    v28 = v3;
    v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize];
    v21 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize + 8];
    v22 = v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize + 16];
    if (sub_769A00())
    {
      sub_173BE4(v19, v11);
    }

    else if (v22)
    {
      sub_173F1C(v23, v24);
    }

    else
    {
      sub_173FBC(v20, v21, 0);
    }

    v25 = v27;

    (*(v9 + 32))(v14, v11, v8);
    sub_760710();
    (*(v9 + 8))(v14, v8);
    sub_765330();
    v26 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
    sub_7652E0();
    sub_7591B0();
    [v26 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    [v26 setContentMode:v25];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }
}

double sub_170E2C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_765240();
  v6 = *(v5 - 8);
  *&result = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v10 = sub_765210();
    (*(v6 + 8))(v9, v5);
    v11 = sub_175F58(&unk_9477D0, type metadata accessor for BrickCollectionViewCell, &unk_798AA8);
    (*(v11 + 24))(ObjectType, v11);
    sub_765330();
    v12 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v12 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    [v12 setContentMode:v10];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }

  return result;
}

void sub_1710E0(uint64_t a1)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    sub_765330();
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView);
    v10 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v11 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v13 = v12;
    sub_75A050();
  }
}

double sub_171378(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_765240();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v17 - v11;
  if (a1)
  {

    sub_765250();
    sub_765200();
    sub_175F58(&qword_950970, &type metadata accessor for Artwork.Crop, &protocol conformance descriptor for Artwork.Crop);
    v13 = sub_7691C0();
    v14 = *(v6 + 8);
    v14(v8, v5);
    if (v13)
    {
      v15 = 6;
    }

    else
    {
      v15 = sub_765210();
    }

    v14(v12, v5);
    sub_765330();
    v16 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v16 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    [v16 setContentMode:v15];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }

  return result;
}

void sub_171678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_75CF00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765240();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    sub_765250();
    v15 = sub_765210();
    (*(v12 + 8))(v14, v11);
    v16 = v15;
    v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v17 + v18, v7);
    sub_75CDD0();
    (*(v8 + 8))(v10, v7);
    sub_765330();
    v19 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v20 = *(v17 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v20 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();

    [*(v17 + v19) setContentMode:v16];
    v21 = *(v17 + v19);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v22 = v21;
    sub_75A050();
  }
}

double sub_1719F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_944E50, qword_78AFE0);
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_75D6B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_765240();
  v16 = *(v15 - 8);
  *&result = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = a2;

    sub_765250();
    v25 = sub_765210();
    (*(v16 + 8))(v19, v15);
    v20 = v30;
    v21 = [v30 traitCollection];
    sub_278FB0(v14);

    sub_75D680();
    (*(v12 + 8))(v14, v11);
    v22 = v25;
    v31 = v20;
    sub_7592B0();
    (*(v27 + 8))(v10, v8);
    sub_765330();
    v23 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_artworkView];
    sub_7652E0();
    sub_7591B0();
    [v23 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    [v23 setContentMode:v22];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }

  return result;
}

double sub_171DF4(uint64_t a1)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  *&result = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v9 = sub_765210();
    (*(v5 + 8))(v8, v4);
    sub_765330();
    v10 = *(v1 + qword_99D530);
    sub_7652E0();
    sub_7591B0();
    [v10 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    [v10 setContentMode:v9];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }

  return result;
}

void sub_17205C(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v9 = swift_unknownObjectRetain();
      sub_6456A8(v9);
      swift_unknownObjectRelease();
    }

    sub_765330();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView;
    v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView);
    sub_7652E0();
    sub_7591B0();
    [v11 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();

    [*(v1 + v10) setContentMode:v8];
    v12 = *(v1 + v10);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v13 = v12;
    sub_75A050();
  }
}

void sub_17233C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_75CF00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765240();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    sub_765250();
    v15 = v3;
    v16 = sub_765210();
    (*(v12 + 8))(v14, v11);
    v17 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
    v18 = v15;
    v19 = *(*(v15 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v19 + v20, v7);
    sub_75CDD0();
    (*(v8 + 8))(v10, v7);
    sub_765330();
    v21 = *(*(v18 + v17) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v21 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();

    [*(*(v18 + v17) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView) setContentMode:v16];
    v22 = *(*(v18 + v17) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v23 = v22;
    sub_75A050();
  }
}

void sub_1726E4(uint64_t a1)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView);
    swift_beginAccess();
    sub_765330();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v11 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v13 = v12;
    sub_75A050();
  }
}

void sub_172994(uint64_t a1)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    if (qword_93C620 != -1)
    {
      swift_once();
    }

    v9 = sub_757CA0();
    sub_BE38(v9, qword_99B7F8);
    sub_757C10();
    sub_765330();
    v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView);
    v11 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView;
    v12 = *(*(v10 + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v12 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();

    [*(*(v10 + v11) + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView) setContentMode:v8];
    v13 = *(*(v10 + v11) + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v14 = v13;
    sub_75A050();
  }
}

char *sub_172C88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v21 = sub_75C840();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99F7F0);
  v25 = *(v23 - 8);
  v63 = *(v25 + 16);
  v64 = v24;
  v63(v19);
  v62 = *(v25 + 56);
  v62(v19, 0, 1, v23);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v26 = objc_allocWithZone(sub_75BB20());
  *&v5[v22] = sub_75BB10();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView;
  sub_758E80();
  *&v5[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_75CD70();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_hasArtwork] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_clickAction] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer] = 0;
  v30 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView;
  sub_759210();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  ObjectType = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView;
  v33 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v34 = v32;
  v35 = v33;
  v36 = sub_76A090();
  [v35 setBackgroundColor:v36];

  v60 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView;
  v37 = qword_93C530;
  v38 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView];
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_765080();
  v40 = sub_BE38(v39, qword_99B4F0);
  v41 = *(v39 - 8);
  (*(v41 + 16))(v12, v40, v39);
  (*(v41 + 56))(v12, 0, 1, v39);
  sub_758E60();

  v42 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel] setNumberOfLines:1];
  v43 = *&v34[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  v47 = *&v34[v42];
  (v63)(v19, v64, v23);
  v62(v19, 0, 1, v23);
  v48 = v47;
  sub_75BA40();

  v49 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView;
  v50 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
  v51 = [v44 clearColor];
  sub_7590B0();

  v52 = [v34 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v34 contentView];
  [v53 addSubview:*&v34[v60]];

  v54 = [v34 contentView];
  [v54 addSubview:*(ObjectType + v32)];

  v55 = [v34 contentView];
  [v55 addSubview:*&v34[v49]];

  v56 = [v34 contentView];
  [v56 addSubview:*&v34[v42]];

  sub_BD88(&qword_9477F0, qword_780200);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_77DC20;
  *(v57 + 32) = sub_7676E0();
  *(v57 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v57 + 48) = sub_767B80();
  *(v57 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v57 + 64) = sub_7677C0();
  *(v57 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F20();

  swift_unknownObjectRelease();

  return v34;
}

double sub_173464(__n128 a1)
{
  v2 = v1;
  v3 = sub_760730();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v21 - v9;
  v11 = [v1 traitCollection];
  v12 = &v2[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize];
  v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize];
  v14 = *(v12 + 1);
  v15 = v12[16];
  if (sub_769A00())
  {
    sub_173BE4(v11, v6);
  }

  else if (v15)
  {
    sub_173F1C(v16, v17);
  }

  else
  {
    sub_173FBC(v13, v14, 0);
  }

  (*(v4 + 32))(v10, v6, v3);
  sub_760710();
  v19 = v18;
  (*(v4 + 8))(v10, v3);
  return v19;
}

uint64_t sub_173604()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7593D0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v5);
  sub_173868(v16);
  sub_B170(v16, v16[3]);
  [v1 bounds];
  v8 = [v1 traitCollection];
  sub_7673E0();

  sub_BEB8(v16);
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView];
  [v1 bounds];
  [v9 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView];
  [v1 bounds];
  [v10 setFrame:?];
  [v1 bounds];
  CGRectGetHeight(v18);
  v11 = enum case for CornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v7, enum case for CornerStyle.continuous(_:), v3);
  sub_75CCD0();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v12(v7, v11, v3);
  sub_758E70();
  return (v13)(v7, v3);
}

uint64_t sub_173868@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = sub_760730();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v28 - v11;
  v13 = [v2 traitCollection];
  v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize];
  v15 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize + 8];
  v16 = v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_769A00())
  {
    sub_173BE4(v13, v8);
  }

  else if (v16)
  {
    sub_173F1C(v17, v18);
  }

  else
  {
    sub_173FBC(v14, v15, 0);
  }

  (*(v6 + 32))(v12, v8, v5);
  if (v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_hasArtwork])
  {
    v19 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
    v20 = sub_759210();
    v21 = sub_175F58(&unk_93E520, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v22 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v28[6] = 0;
    v28[7] = 0;
  }

  v28[8] = v20;
  v28[9] = v21;
  v28[5] = v19;
  v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel];
  v28[3] = sub_75BB20();
  v28[4] = &protocol witness table for UILabel;
  v28[0] = v23;
  v24 = sub_760750();
  swift_allocObject();
  v25 = v23;
  v26 = sub_760740();
  a1[3] = v24;
  result = sub_175F58(&unk_9477E0, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  a1[4] = result;
  *a1 = v26;
  return result;
}

void sub_173BE4(objc_class *a1@<X3>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v14[0] = sub_766690();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7664A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99F7F0);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
  v12.super.isa = a1;
  isa = sub_766490(v12).super.isa;
  (*(v7 + 8))(v9, v6);
  [(objc_class *)isa lineHeight];
  sub_7666A0();
  sub_766650();
  (*(v3 + 8))(v5, v14[0]);
  v14[35] = &type metadata for Double;
  v14[36] = &protocol witness table for Double;
  v14[31] = &protocol witness table for Double;
  v14[32] = 0x4020000000000000;
  v14[30] = &type metadata for Double;
  v14[27] = 0x4024000000000000;
  v14[25] = &type metadata for Double;
  v14[26] = &protocol witness table for Double;
  v14[21] = &protocol witness table for Double;
  v14[22] = 0x402C000000000000;
  v14[20] = &type metadata for Double;
  v14[16] = &protocol witness table for Double;
  v14[17] = 0;
  v14[15] = &type metadata for Double;
  v14[11] = &protocol witness table for Double;
  v14[12] = 0;
  v14[10] = &type metadata for Double;
  v14[6] = &protocol witness table for Double;
  v14[7] = 0x4010000000000000;
  v14[5] = &type metadata for Double;
  v14[2] = 0x4010000000000000;
  sub_760700();
}

uint64_t sub_1741FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(a2, 1, v7, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for RibbonBarItemCollectionViewCell(uint64_t a1)
{
  result = qword_9477B0;
  if (!qword_9477B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1744A4(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_17458C(uint64_t a1, uint64_t a2)
{
  sub_759050();
  sub_759210();
  sub_175F58(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_174624(uint64_t a1)
{
  result = sub_175F58(&qword_9477C8, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_788800);
  *(a1 + 8) = result;
  return result;
}

double *sub_17467C(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = sub_7664A0();
  v117 = *(v10 - 8);
  v118 = v10;
  __chkstk_darwin(v10);
  v116 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766CA0();
  v120 = *(v12 - 8);
  v121 = v12;
  __chkstk_darwin(v12);
  v119 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_BD88(&qword_943D30, &unk_788850);
  v14 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v115 - v15;
  v142 = sub_766AF0();
  v16 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v140 = &v115 - v19;
  __chkstk_darwin(v20);
  v139 = &v115 - v21;
  __chkstk_darwin(v22);
  v138 = &v115 - v23;
  __chkstk_darwin(v24);
  v137 = &v115 - v25;
  __chkstk_darwin(v26);
  v136 = &v115 - v27;
  v135 = sub_766D70();
  v28 = *(v135 - 8);
  __chkstk_darwin(v135);
  *&v155 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_760730();
  v30 = *(v146 - 8);
  __chkstk_darwin(v146);
  v32 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = (&v115 - v34);
  __chkstk_darwin(v36);
  v123 = &v115 - v37;
  __chkstk_darwin(v38);
  v124 = &v115 - v39;
  if (a1 >> 62)
  {
LABEL_55:
    v40 = sub_76A860();
  }

  else
  {
    v40 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v147 = a2;
  if (v40)
  {
    v154 = v14;
    v177 = _swiftEmptyArrayStorage;
    v145 = v40;
    sub_143C5C(0, v40 & ~(v40 >> 63), 0);
    if (v145 < 0)
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_43;
    }

    v132 = v35;
    v133 = v32;
    v35 = v177;
    v4 = JUMeasuringSizeExpanded[0];
    v5 = JUMeasuringSizeExpanded[1];
    v41 = sub_BE70(0, &qword_93F900, UIFont_ptr);
    v42 = v30;
    v43 = 0;
    v44 = a1;
    v130 = a1 & 0xC000000000000001;
    v131 = v41;
    v122 = v42;
    v128 = (v42 + 32);
    v129 = v16 + 1;
    v126 = (v154 + 1);
    v127 = (v28 + 16);
    v125 = (v28 + 8);
    v134 = a1;
    ++v16;
    do
    {
      if (v130)
      {
        v45 = sub_76A770();
      }

      else
      {
        v45 = *(v44 + 8 * v43 + 32);
      }

      v154 = v35;
      v46 = sub_75A510();
      v150 = v47;
      v151 = v46;
      v48 = sub_75A520();
      if (v48)
      {
        sub_765260();
        v50 = v49;
        v52 = v51;

        v148 = v52;
        v149 = v50;
      }

      else
      {
        v148 = 0;
        v149 = 0;
      }

      v153 = v45;
      v53 = sub_75A520();
      if (v53)
      {
      }

      if (qword_93DAA8 != -1)
      {
        swift_once();
      }

      v54 = sub_7666D0();
      sub_BE38(v54, qword_99F7F0);
      v55 = sub_769E10();
      v56 = v141;
      sub_766AE0();
      v57 = v140;
      v152 = v55;
      sub_766AD0();
      v58 = *v16;
      v59 = v142;
      (*v16)(v56, v142);
      v60 = v139;
      sub_766A30();
      v58(v57, v59);
      v61 = v138;
      sub_766A90();
      v58(v60, v59);
      v62 = v137;
      sub_766A80();
      v58(v61, v59);
      sub_766AA0();
      v58(v62, v59);
      v63 = v147;
      sub_766D50();
      sub_766D80();
      if (sub_769A00())
      {
        v64 = v133;
        sub_173BE4(v63, v133);
        v65 = v132;
      }

      else
      {
        v65 = v132;
        v64 = v133;
        if (v48)
        {
          sub_769D70();
          v176 = &protocol witness table for Double;
          *(&v175 + 1) = &type metadata for Double;
          v173 = &protocol witness table for Double;
          *&v174 = 0x4020000000000000;
          v172 = &type metadata for Double;
          v171[0] = 0x4024000000000000;
          v170 = &protocol witness table for Double;
          v169 = &type metadata for Double;
          v167 = &protocol witness table for Double;
          v168[0] = 0x4028000000000000;
          v166 = &type metadata for Double;
          v164 = &protocol witness table for Double;
          v165[0] = 0x401C000000000000;
          v163 = &type metadata for Double;
          v161 = &protocol witness table for Double;
          v162[0] = 0x401C000000000000;
          v160 = &type metadata for Double;
          v158 = &protocol witness table for Double;
          v159[0] = 0;
          v157 = &type metadata for Double;
          v156[0] = 0;
        }

        else
        {
          v176 = &protocol witness table for Double;
          *(&v175 + 1) = &type metadata for Double;
          v173 = &protocol witness table for Double;
          *&v174 = 0x4020000000000000;
          v172 = &type metadata for Double;
          v171[0] = 0x4024000000000000;
          v170 = &protocol witness table for Double;
          v169 = &type metadata for Double;
          v167 = &protocol witness table for Double;
          v168[0] = 0x4024000000000000;
          v166 = &type metadata for Double;
          v164 = &protocol witness table for Double;
          v165[0] = 0x401C000000000000;
          v163 = &type metadata for Double;
          v161 = &protocol witness table for Double;
          v162[0] = 0x401C000000000000;
          v160 = &type metadata for Double;
          v158 = &protocol witness table for Double;
          v159[0] = 0x4024000000000000;
          v157 = &type metadata for Double;
          v156[0] = 0x4024000000000000;
        }

        sub_760700();
      }

      (*v128)(v65, v64, v146);
      if (v53)
      {
        v66 = sub_75AB90();
        swift_allocObject();
        v67 = sub_75AB80();
        *(&v175 + 1) = v66;
        v176 = sub_175F58(&qword_93F440, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
        *&v174 = v67;
      }

      else
      {
        v176 = 0;
        v174 = 0u;
        v175 = 0u;
      }

      v68 = v135;
      v172 = v135;
      v173 = &protocol witness table for LabelPlaceholder;
      v69 = sub_B1B4(v171);
      v70 = v155;
      (*v127)(v69, v155, v68);
      sub_760750();
      swift_allocObject();
      *&v174 = sub_760740();
      sub_175F58(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
      v71 = v143;
      sub_766730();
      swift_getOpaqueTypeConformance2();
      v72 = v144;
      sub_7673F0();
      v74 = v73;

      (*v126)(v71, v72);
      (*v125)(v70, v68);
      v35 = v154;
      v177 = v154;
      v76 = *(v154 + 2);
      v75 = *(v154 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_143C5C((v75 > 1), v76 + 1, 1);
        v35 = v177;
      }

      ++v43;
      *(v35 + 2) = v76 + 1;
      v35[v76 + 4] = v74;
      a2 = v63;
      v44 = v134;
    }

    while (v145 != v43);
    v30 = v122;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v77 = v123;
  if (sub_769A00())
  {
    sub_173BE4(a2, v77);
  }

  else
  {
    sub_173F1C(v78, v79);
  }

  a1 = v124;
  v80 = v77;
  v81 = v146;
  (*(v30 + 32))(v124, v80, v146);
  sub_760720();
  (*(v30 + 8))(a1, v81);
  v30 = *(v35 + 2);
  if (!v30)
  {
    goto LABEL_51;
  }

  v32 = 0;
  v82 = 0.0;
  v14 = &unk_93F5C0;
  v28 = &unk_77C600;
  v155 = xmmword_77D9F0;
  while (1)
  {
    if (v32 >= *(v35 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v83 = v35[v32 + 4];
    v5 = v82 + v83;
    if (v82 + v83 == a3)
    {
      goto LABEL_51;
    }

    if (v82 + v83 >= a3)
    {
      break;
    }

    ++v32;
    sub_760750();
    sub_7606D0();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    a2 = swift_allocObject();
    *(a2 + 16) = v155;
    v84 = v147;
    *(a2 + 32) = v147;
    v85 = v84;
    a1 = sub_7671E0();
    sub_769610();
    v4 = v86;

    v82 = v5 + v4;
    if (v30 == v32)
    {
      goto LABEL_51;
    }
  }

  sub_B170(&v174, *(&v175 + 1));
  a2 = v147;
  sub_766710();
  v88 = a3 + a4 + v87;
  if (v88 <= v5)
  {
LABEL_51:
    v109 = v35;
    goto LABEL_52;
  }

  v16 = v35;
  a3 = v88 - v5;
  v4 = (v32 + 1);
  v5 = (v88 - v5) / v4 * 0.5;
  if (qword_93DAA8 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v89 = sub_7666D0();
  v90 = sub_BE38(v89, qword_99F7F0);
  v91 = v116;
  (*(*(v89 - 8) + 16))(v116, v90, v89);
  v93 = v117;
  v92 = v118;
  (*(v117 + 104))(v91, enum case for FontSource.useCase(_:), v118);
  v172 = v92;
  v173 = &protocol witness table for FontSource;
  v94 = sub_B1B4(v171);
  (*(v93 + 16))(v94, v91, v92);
  v95 = v119;
  sub_766CB0();
  (*(v93 + 8))(v91, v92);
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v96 = swift_allocObject();
  *(v96 + 16) = v155;
  *(v96 + 32) = a2;
  v97 = a2;
  v98 = sub_7671E0();
  v99 = v121;
  sub_7666E0();
  v101 = v100;

  (*(v120 + 8))(v95, v99);
  v102 = (a3 + v5 + v101) / v4;
  v103 = swift_allocObject();
  *(v103 + 16) = v155;
  *(v103 + 32) = v97;
  v104 = v97;
  v105 = sub_7671E0();
  sub_769610();
  v107 = v106;

  if (v102 < v107)
  {
    v107 = v102;
  }

  v108 = *(v16 + 2);
  if (v108)
  {
    v171[0] = _swiftEmptyArrayStorage;
    sub_143C5C(0, v108, 0);
    v109 = v171[0];
    v110 = *(v171[0] + 16);
    v111 = 4;
    do
    {
      v112 = v16[v111];
      v171[0] = v109;
      v113 = *(v109 + 3);
      if (v110 >= v113 >> 1)
      {
        sub_143C5C((v113 > 1), v110 + 1, 1);
        v109 = v171[0];
      }

      *(v109 + 2) = v110 + 1;
      v109[v110 + 4] = v107 + v112;
      ++v111;
      ++v110;
      --v108;
    }

    while (v108);
  }

  else
  {

    v109 = _swiftEmptyArrayStorage;
  }

LABEL_52:
  sub_BEB8(&v174);
  return v109;
}

void sub_175584()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99F7F0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_75BB20());
  *(v1 + v11) = sub_75BB10();
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView;
  sub_758E80();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_75CD70();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_hasArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_clickAction) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer) = 0;
  v19 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView;
  sub_759210();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

double sub_1758E4(uint64_t a1, void *a2)
{
  v3 = sub_BD88(&qword_943D30, &unk_788850);
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = v46 - v4;
  v5 = sub_760730();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v50 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = v46 - v8;
  v9 = sub_766AF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v46 - v14;
  __chkstk_darwin(v16);
  v18 = v46 - v17;
  __chkstk_darwin(v19);
  v21 = v46 - v20;
  __chkstk_darwin(v22);
  v24 = v46 - v23;
  __chkstk_darwin(v25);
  v48 = v46 - v26;
  v55 = sub_766D70();
  v53 = *(v55 - 8);
  *&v27 = __chkstk_darwin(v55).n128_u64[0];
  v47 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 traitCollection];
  v46[2] = sub_75A510();
  v46[1] = v30;
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v31 = sub_7666D0();
  sub_BE38(v31, qword_99F7F0);
  v32 = sub_769E10();
  sub_766AE0();
  v49 = v32;
  sub_766AD0();
  v33 = *(v10 + 8);
  v33(v12, v9);
  sub_766A30();
  v33(v15, v9);
  sub_766A90();
  v33(v18, v9);
  sub_766A80();
  v33(v21, v9);
  sub_766AA0();
  v33(v24, v9);
  sub_766D50();
  v34 = v47;
  sub_766D80();
  if (sub_769A00())
  {
    v37 = v50;
    sub_173BE4(v29, v50);
  }

  else
  {
    v37 = v50;
    sub_173F1C(v35, v36);
  }

  (*(v51 + 32))(v54, v37, v52);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v38 = v55;
  v59[3] = v55;
  v59[4] = &protocol witness table for LabelPlaceholder;
  v39 = sub_B1B4(v59);
  v40 = v53;
  (*(v53 + 16))(v39, v34, v38);
  sub_760750();
  swift_allocObject();
  *&v60 = sub_760740();
  sub_175F58(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v41 = v56;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v42 = v58;
  sub_7673F0();
  v44 = v43;

  (*(v57 + 8))(v41, v42);
  (*(v40 + 8))(v34, v38);
  return v44;
}

uint64_t sub_175F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_175FB0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v81 = a6;
  v79 = a5;
  v93 = a4;
  v96 = a3;
  v97 = a2;
  v99 = a14;
  v100 = a15;
  v101 = a1;
  v98 = a7;
  v86 = sub_BD88(&qword_940A68, &qword_79AB60);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v83 = &v75 - v19;
  v82 = sub_763F50();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_7649E0();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_767D60();
  v95 = *(v91 - 8);
  __chkstk_darwin(v91);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_7656A0();
  v94 = *(v24 - 8);
  __chkstk_darwin(v24);
  v77 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v90 = &v75 - v27;
  __chkstk_darwin(v28);
  v92 = &v75 - v29;
  __chkstk_darwin(v30);
  v32 = &v75 - v31;
  v33 = sub_764930();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v37);
  v76 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v75 - v40;
  sub_1ED18(v97, &v75 - v40, &qword_963790, qword_77EBC0);
  v42 = *(v37 + 48);
  v97 = v41;
  sub_1ED18(v96, &v41[v42], &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v96 = v34;
  v43 = v34;
  v44 = v33;
  v45 = (*(v43 + 88))(v36, v33);
  if (v45 == enum case for Shelf.ContentType.singleColumnList(_:))
  {
    v46 = v94;
    (*(v94 + 104))(v32, enum case for PageGrid.Direction.vertical(_:), v24);
    sub_75B4A0();
    v47 = sub_767D40();
    (*(v95 + 8))(v23, v91);
    if (v47)
    {
      sub_75B4C0();
    }

    (*(v46 + 16))(v92, v32, v24);
    sub_65ABA0(1);
    sub_765670();
    (*(v46 + 8))(v32, v24);
    return sub_10A2C(v97, &qword_9438F8, &unk_787C30);
  }

  v75 = v23;
  v48 = v94;
  v49 = v95;
  if (v45 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v50 = v90;
    v51 = v24;
    (*(v94 + 104))(v90, enum case for PageGrid.Direction.vertical(_:), v24);
    swift_getKeyPath();
    v52 = v87;
    sub_768750();

    v53 = v88;
    v54 = v89;
    if ((*(v88 + 88))(v52, v89) == enum case for Shelf.ContentsMetadata.searchFocusTwoColumnList(_:))
    {
      (*(v53 + 96))(v52, v54);
      v55 = v80;
      v56 = v78;
      v57 = v52;
      v58 = v82;
      (*(v80 + 32))(v78, v57, v82);
      v59 = sub_763F40();
      (*(v55 + 8))(v56, v58);
    }

    else
    {
      (*(v53 + 8))(v52, v54);
      v59 = 1;
    }

    v67 = v91;
    v68 = v49;
    v69 = v75;
    sub_75B4A0();
    v70 = sub_767D40();
    (*(v68 + 8))(v69, v67);
    if (v70 & 1) != 0 && (sub_75B4C0())
    {
      v59 = 1;
    }

    (*(v48 + 16))(v92, v50, v51);
    sub_65ABA0(v59);
    sub_765670();
    (*(v48 + 8))(v50, v51);
    return sub_10A2C(v97, &qword_9438F8, &unk_787C30);
  }

  if (v45 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v60 = v94;
    v61 = v92;
    v62 = v24;
    (*(v94 + 104))(v92, enum case for PageGrid.Direction.horizontal(_:), v24);
    v102 = 0x4020000000000000;
    sub_62634();
    v63 = v83;
    sub_7655D0();
    v102 = 0x4020000000000000;
    v64 = v84;
    sub_7655D0();
    (*(v60 + 16))(v77, v61, v62);
    sub_620A70(v63, v64);
    sub_765670();
    v65 = *(v85 + 8);
    v66 = v86;
    v65(v64, v86);
    v65(v63, v66);
    (*(v60 + 8))(v61, v62);
    return sub_10A2C(v97, &qword_9438F8, &unk_787C30);
  }

  v102 = v79;
  v103 = v81;
  v72 = v97;
  v73 = v76;
  sub_1ED18(v97, v76, &qword_9438F8, &unk_787C30);
  v74 = *(v37 + 48);
  sub_176F34();
  sub_75B530();
  sub_10A2C(v72, &qword_9438F8, &unk_787C30);
  sub_10A2C(v73 + v74, &qword_963790, qword_77EBC0);
  sub_10A2C(v73, &qword_963790, qword_77EBC0);
  return (*(v96 + 8))(v36, v44);
}

uint64_t sub_176B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_176EDC();

  return sub_75B530();
}

uint64_t sub_176BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_176EDC();

  return sub_75B520();
}

uint64_t sub_176CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v29[4] = a5;
  v29[5] = a6;
  v29[3] = a4;
  *&v29[1] = a13;
  *&v29[2] = a14;
  v29[0] = a1;
  v19 = sub_BD88(&qword_9438F8, &unk_787C30);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v29 - v24;
  v26 = *(v16 + 2);
  sub_1ED18(a2, v29 - v24, &qword_963790, qword_77EBC0);
  sub_1ED18(a3, &v25[*(v20 + 56)], &qword_963790, qword_77EBC0);
  v30 = *v16;
  v31 = v26;
  sub_1ED18(v25, v22, &qword_9438F8, &unk_787C30);
  v27 = *(v20 + 56);
  sub_75B530();
  sub_10A2C(v25, &qword_9438F8, &unk_787C30);
  sub_10A2C(&v22[v27], &qword_963790, qword_77EBC0);
  return sub_10A2C(v22, &qword_963790, qword_77EBC0);
}

unint64_t sub_176EDC()
{
  result = qword_9477F8;
  if (!qword_9477F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9477F8);
  }

  return result;
}

unint64_t sub_176F34()
{
  result = qword_947800;
  if (!qword_947800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947800);
  }

  return result;
}

uint64_t sub_176F9C(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v128 = a3;
  v130 = a2;
  v123 = sub_75F340();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_760280();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v7 - 8);
  v116 = &v110 - v8;
  v126 = sub_7687C0();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v10 - 8);
  v111 = &v110 - v11;
  v12 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v12);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v15 - 8);
  v114 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v110 - v18;
  v20 = type metadata accessor for FlowDestination(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v115 = (&v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v25 = (&v110 - v24);
  __chkstk_darwin(v26);
  v28 = &v110 - v27;
  v112 = sub_BD88(&qword_94DDC0, qword_77DE00);
  v127 = sub_768F90();

  sub_764BF0();
  sub_146CF0(a1, &aBlock, v19);
  v29 = *(v21 + 48);
  v30 = v29(v19, 1, v20);
  v113 = v29;
  if (v30 == 1)
  {
    v32 = v28;
    swift_storeEnumTagMultiPayload();
    if (v29(v19, 1, v20) != 1)
    {
      sub_10A2C(v19, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    v32 = v28;
    sub_61AE8(v19, v28, v31);
  }

  sub_758AA0();
  v33 = *(v12 + 20);
  v129 = v14;
  v120 = v33;
  sub_758A90();
  v34 = v130;
  v35 = [v130 presentedViewController];
  if (!v35)
  {
    goto LABEL_8;
  }

  v36 = v35;
  if ([v35 isBeingDismissed])
  {

LABEL_8:
    v37 = v34;
    goto LABEL_9;
  }

  v131 = v36;
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v51 = v36;
  sub_BD88(&qword_93FD18, &qword_77F228);
  if (swift_dynamicCast())
  {
    v110 = v51;
    sub_34698(v132, &aBlock);
    v52 = v32;
    v53 = *(&v135 + 1);
    v54 = v136;
    sub_B170(&aBlock, *(&v135 + 1));
    if ((*(v54 + 8))(v52, v53, v54))
    {
      sub_61B4C(v52, v25, v55);
      v56 = v52;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v57 = v129;
        v58 = v127;
        v59 = v110;
        if (*v25)
        {
          v60 = sub_BD88(&unk_93F630, &unk_77E230);

          v61 = v111;
          v62 = v128;
          sub_768860();
          v63 = *(v60 - 8);
          if ((*(v63 + 48))(v61, 1, v60) == 1)
          {

            sub_68DF8(v57, type metadata accessor for FlowPresentationHints);
            sub_68DF8(v56, type metadata accessor for FlowDestination);
            sub_10A2C(v61, &unk_93F980, &qword_77EDA0);
LABEL_61:
            sub_BEB8(&aBlock);
            return v58;
          }

          sub_32AC7C(v109, 1, v62, v61);

          (*(v63 + 8))(v61, v60);
          sub_768F00();

LABEL_60:
          sub_68DF8(v57, type metadata accessor for FlowPresentationHints);
          sub_68DF8(v56, type metadata accessor for FlowDestination);
          goto LABEL_61;
        }
      }

      else
      {
        sub_68DF8(v25, type metadata accessor for FlowDestination);
        v57 = v129;
        v58 = v127;
        v59 = v110;
      }

      v106 = v125;
      v107 = v124;
      v108 = v126;
      (*(v125 + 104))(v124, enum case for ActionOutcome.performed(_:), v126);
      sub_768F60();

      (*(v106 + 8))(v107, v108);
      goto LABEL_60;
    }

    sub_BEB8(&aBlock);
    v32 = v52;
    v84 = v128;
    v51 = v110;
  }

  else
  {
    v133 = 0;
    memset(v132, 0, sizeof(v132));
    sub_10A2C(v132, &unk_93FD20, &unk_77F230);
    v84 = v128;
  }

  sub_75A920();
  sub_768900();
  sub_768ED0();
  if (sub_178254(v51, v32, aBlock))
  {
    v99 = swift_allocObject();
    v99[2] = a1;
    v99[3] = v34;
    v100 = v127;
    v99[4] = v84;
    v99[5] = v100;
    *&v136 = sub_1784D0;
    *(&v136 + 1) = v99;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v135 = sub_23F0CC;
    *(&v135 + 1) = &unk_886538;
    v101 = _Block_copy(&aBlock);
    v58 = v100;

    v102 = v34;

    [v51 dismissViewControllerAnimated:1 completion:v101];
    _Block_release(v101);

    v97 = v129;
    goto LABEL_48;
  }

  v103 = v51;
  v104 = v34;
  v105 = [v104 presentedViewController];
  if (v105)
  {
    do
    {
      v37 = v105;

      v105 = [v37 presentedViewController];
      v104 = v37;
    }

    while (v105);
  }

  else
  {
    v37 = v104;
  }

LABEL_9:
  v38 = [v34 traitCollection];
  v39 = sub_D0BF0();

  v40 = v129;
  if (v39)
  {
    v41 = [v34 traitCollection];
    v42 = sub_478964(a1, v41, v128);

    if (v42)
    {
      v43 = v42;
      goto LABEL_26;
    }
  }

  else
  {
    v44 = sub_32CB94(v34);
    if (!v44 || (*&v132[0] = v44, sub_BE70(0, &unk_94DCA0, UINavigationController_ptr), sub_BD88(&qword_940BF8, &qword_780670), (swift_dynamicCast() & 1) == 0))
    {
      *&v136 = 0;
      aBlock = 0u;
      v135 = 0u;
    }

    v45 = v32;
    v46 = [v34 traitCollection];

    sub_764BF0();
    v47 = v114;
    sub_146CF0(a1, v132, v114);
    v48 = v113;
    if (v113(v47, 1, v20) == 1)
    {
      v50 = v115;
      swift_storeEnumTagMultiPayload();
      if (v48(v47, 1, v20) != 1)
      {
        sub_10A2C(v47, &unk_9442D0, &unk_780660);
      }
    }

    else
    {
      v50 = v115;
      sub_61AE8(v47, v115, v49);
    }

    v64 = sub_758A60();
    v66 = v65;
    v67 = v116;
    sub_758A80();
    v42 = sub_471418(v50, v46, v64, v66, v67, &aBlock, v128, 1);

    sub_10A2C(v67, &unk_944FF0, &unk_783C00);
    sub_68DF8(v50, type metadata accessor for FlowDestination);
    v43 = v42;
    sub_10A2C(&aBlock, &unk_9442E0, &unk_783C10);
    v32 = v45;
    v40 = v129;
    if (v42)
    {
LABEL_26:
      v58 = v127;
      v68 = [v130 traitCollection];
      v69 = v117;
      sub_D2028(v117);

      v70 = sub_760270();
      v72 = v71;
      (*(v118 + 8))(v69, v119);
      if ((v72 & 1) == 0)
      {
        [v43 setModalPresentationStyle:v70];
      }

      aBlock = xmmword_94DCF8;
      v135 = xmmword_94DD08;
      v136 = xmmword_94DD18;
      v137 = xmmword_94DD28;
      v138 = xmmword_94DD38;
      v73 = qword_94DD48;
      v139 = qword_94DD48;
      v74 = BYTE8(xmmword_94DD18);
      if (BYTE8(xmmword_94DD18) != 255)
      {
        v75 = aBlock;
        v77 = v135;
        v76 = *&v136;
        v78 = v137;
        v79 = v138;
        v80 = aBlock;
        v81 = [v43 popoverPresentationController];
        if (v81)
        {
          v82 = v81;
          if (v74)
          {
            sub_1781E4(&aBlock, v132);
            v83 = v82;
            [v83 setSourceView:v75];
            [v83 setSourceRect:{*(&v75 + 1), v77, v76}];
            sub_10A2C(&aBlock, &unk_93FEF0, &unk_7834B0);
          }

          else
          {
            [v81 setBarButtonItem:v75];
          }

          [v82 setPopoverLayoutMargins:{v78, v79}];
          [v82 setPermittedArrowDirections:v73];
        }

        else
        {
          if (qword_93DF00 != -1)
          {
            swift_once();
          }

          v85 = sub_768FF0();
          sub_BE38(v85, qword_9A0430);
          sub_BD88(&qword_93FD00, &unk_77DF10);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77B6D0;
          sub_768540();
          sub_768EB0();
        }

        sub_10A2C(&aBlock, &unk_93FEF0, &unk_7834B0);
      }

      v86 = v122;
      v87 = v121;
      v88 = v123;
      (*(v122 + 16))(v121, v40 + v120, v123);
      v89 = (*(v86 + 88))(v87, v88);
      if (v89 == enum case for FlowAnimationBehavior.infer(_:))
      {
        goto LABEL_41;
      }

      if (v89 != enum case for FlowAnimationBehavior.never(_:))
      {
        if (v89 == enum case for FlowAnimationBehavior.always(_:))
        {
LABEL_41:
          v90 = 1;
LABEL_46:
          v91 = objc_allocWithZone(type metadata accessor for PresentationContextViewController());
          v92 = v43;
          v93 = sub_B4544(v92, v90);

          [v37 presentViewController:v93 animated:0 completion:0];
          v94 = v125;
          v95 = v124;
          v96 = v126;
          (*(v125 + 104))(v124, enum case for ActionOutcome.performed(_:), v126);
          sub_768F60();

          (*(v94 + 8))(v95, v96);
          goto LABEL_47;
        }

        (*(v86 + 8))(v87, v88);
      }

      v90 = 0;
      goto LABEL_46;
    }
  }

  (*(v125 + 104))(v124, enum case for ActionOutcome.unsupported(_:), v126);
  v58 = sub_768F30();

LABEL_47:
  v97 = v40;
LABEL_48:
  sub_68DF8(v97, type metadata accessor for FlowPresentationHints);
  sub_68DF8(v32, type metadata accessor for FlowDestination);
  return v58;
}

uint64_t sub_1781E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FEF0, &unk_7834B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_178254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B4C(a2, v10, v8);
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

    v16 = *(sub_BD88(&qword_955C60, &qword_780678) + 64);
    v17 = sub_75C190();
    (*(*(v17 - 8) + 8))(&v10[v16], v17);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_68DF8(v10, type metadata accessor for FlowDestination);
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_68DF8(v10, type metadata accessor for FlowDestination);
    v14 = 1;
    return v14 & 1;
  }

  sub_50774(v10, v6);
  type metadata accessor for ArticleContainerViewController();
  v12 = swift_dynamicCastClass() == 0;
  v13 = sub_7624A0();
  sub_10A2C(v6, &unk_93FD30, qword_77F240);
  v14 = v12 | v13 ^ 1;
  return v14 & 1;
}

uint64_t sub_178480()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_1784D0(__n128 a1)
{
  sub_176F9C(*(v1 + 16), *(v1 + 24), *(v1 + 32), a1);
  sub_768F00();

  return result;
}

double sub_178518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_178544(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_757640();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_178604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_757640();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ComponentOverflowData(uint64_t a1)
{
  result = qword_947860;
  if (!qword_947860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1786F4(uint64_t a1)
{
  result = sub_3C80C();
  if (v2 <= 0x3F)
  {
    result = sub_757640();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_178778()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99B3B8);
  sub_BE38(v0, qword_99B3B8);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1788DC(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v46 = a1;
  sub_75CE20();
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_766CA0();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_B1B4(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_766CB0();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_75CE00();
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v42 = sub_BE38(v6, qword_99E8C0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v54);
  v44(v17, v5, v2);
  sub_766CB0();
  v49(v5, v2);
  sub_75CED0();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_766CB0();
  v22 = v49;
  v49(v5, v2);
  sub_75CEA0();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_B1B4(v54);
  v21(v26, v5, v2);
  sub_766CB0();
  v22(v5, v2);
  sub_75CE90();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v54);
  v21(v28, v5, v2);
  sub_766CB0();
  v22(v5, v2);
  sub_75CEF0();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_BE38(v45, qword_99E8F0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v54);
  v21(v32, v5, v2);
  sub_766CB0();
  v49(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v29, qword_99E8D8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_B1B4(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_766CB0();
  v38 = v49;
  v49(v5, v2);
  sub_75CE60();
  sub_75CE40();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_B1B4(v54);
  v37(v39, v5, v2);
  sub_766CB0();
  v38(v5, v2);
  return sub_75CE50();
}

uint64_t sub_179130()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99B3D0);
  sub_BE38(v0, qword_99B3D0);
  if (qword_93C4E0 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B3B8);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1792C4()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_766690();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_161DC(v6, qword_99B3E8);
  v28 = v6;
  v31 = sub_BE38(v6, qword_99B3E8);
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  *&v55 = 0x4030000000000000;
  v29 = v5;
  sub_7666A0();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  *&v52 = 0x4024000000000000;
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99FAA8);
  v38 = *(*(v7 - 8) + 16);
  v38(v3, v8, v7);
  v9 = enum case for FontSource.useCase(_:);
  v35 = v1[13];
  v35(v3, enum case for FontSource.useCase(_:), v0);
  v34 = sub_766CA0();
  v50 = v34;
  v51 = &protocol witness table for StaticDimension;
  sub_B1B4(&v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v10 = sub_B1B4(&v46);
  v11 = v1[2];
  v37 = v1 + 2;
  v33 = v11;
  v11(v10, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v36 = v13;
  v13(v3, v0);
  if (qword_93DB98 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v7, qword_99FAC0);
  v38(v3, v14, v7);
  v35(v3, v9, v0);
  v47 = v34;
  v48 = &protocol witness table for StaticDimension;
  sub_B1B4(&v46);
  v44 = v0;
  v45 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v43);
  v33(v15, v3, v0);
  sub_766CB0();
  v36(v3, v0);
  v27 = v12;
  if (qword_93DBA0 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v7, qword_99FAD8);
  v38(v3, v26, v7);
  v25 = v9;
  v16 = v35;
  v35(v3, v9, v0);
  v17 = v34;
  v44 = v34;
  v45 = &protocol witness table for StaticDimension;
  sub_B1B4(&v43);
  v41 = v0;
  v42 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v40);
  v19 = v33;
  v33(v18, v3, v0);
  sub_766CB0();
  v36(v3, v0);
  v38(v3, v26, v7);
  v16(v3, v25, v0);
  v41 = v17;
  v42 = &protocol witness table for StaticDimension;
  sub_B1B4(&v40);
  v39[3] = v0;
  v39[4] = &protocol witness table for FontSource;
  v20 = sub_B1B4(v39);
  v19(v20, v3, v0);
  sub_766CB0();
  v36(v3, v0);
  v21 = v31;
  sub_10914(&v55, v31);
  v22 = v28;
  (*(v30 + 32))(v21 + v28[5], v29, v32);
  sub_10914(&v52, v21 + v22[6]);
  sub_10914(&v49, v21 + v22[7]);
  sub_10914(&v46, v21 + v22[8]);
  sub_10914(&v43, v21 + v22[9]);
  return sub_10914(&v40, v21 + v22[10]);
}

Class sub_1798BC()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result = sub_76A0C0(v3, v2).super.isa;
  qword_99B400 = result;
  return result;
}

id sub_179950()
{
  v1 = v0;
  v2 = sub_75CF00();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7674E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_767510();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = sub_769B50();

  v16 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView];
  if (v15)
  {
    v73 = v5;
    v74 = v12;
    v75 = v9;
    v76 = v8;
    if (v17)
    {
      [v17 setHidden:1];
    }

    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
    [v18 setNumberOfLines:{0, v73}];
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView];
    [v19 addSubview:v18];
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel];
    [v20 setNumberOfLines:0];
    v21 = [v20 layer];
    [v21 setCompositingFilter:0];

    [v19 addSubview:v20];
    v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel];
    if (v22)
    {
      v23 = v22;
      [v23 setNumberOfLines:0];
      v24 = [v23 layer];
      [v24 setCompositingFilter:0];

      [v19 addSubview:v23];
    }

    v25 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView;
    v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView];
    if (v26 || (((*(v73 + 104))(v7, enum case for Separator.Position.top(_:), v4), v80[3] = sub_766970(), v80[4] = &protocol witness table for ZeroDimension, sub_B1B4(v80), sub_766960(), v27 = v74, sub_7674F0(), v28 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v29 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator, swift_beginAccess(), v30 = *(v75 + 40), v31 = v28, v30(&v28[v29], v27, v76), swift_endAccess(), v31, (v32 = *&v1[v25]) == 0) ? (v33 = 0) : (objc_msgSend(v32, "removeFromSuperview"), v33 = *&v1[v25]), *&v1[v25] = v31, v54 = v31, v33, objc_msgSend(v19, "addSubview:", v54), v54, objc_msgSend(v1, "setNeedsLayout"), v54, (v26 = *&v1[v25]) != 0))
    {
      [v26 setHidden:0];
    }

    v55 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView;
    v56 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
    if (v56)
    {
      v57 = qword_93C4E8;
      v58 = v56;
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = v79;
      v60 = sub_BE38(v79, qword_99B3D0);
      v62 = v77;
      v61 = v78;
      (*(v78 + 16))(v77, v60, v59);
      v63 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v61 + 24))(&v58[v63], v62, v59);
      swift_endAccess();
      [v58 setNeedsLayout];

      (*(v61 + 8))(v62, v59);
      v64 = *&v1[v55];
      if (v64)
      {
        [v64 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
      }
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_10;
    }

    v50 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
    v51 = sub_4AA654(0);
    v52 = *&v1[v16];
    if (v52)
    {
      [v52 removeFromSuperview];
      v53 = *&v1[v16];
    }

    else
    {
      v53 = 0;
    }

    *&v1[v16] = v51;
    v66 = v51;

    v67 = *&v1[v16];
    if (v67)
    {
      v68 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
      v69 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton];
      if (v69)
      {
        v70 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton];
      }

      else
      {
        v70 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
        v69 = 0;
      }

      v71 = v69;
      [v68 insertSubview:v67 belowSubview:v70];
    }

    [v1 setNeedsLayout];

    v72 = *&v1[v16];
    if (v72)
    {
      [v72 setUserInteractionEnabled:0];
      v17 = *&v1[v16];
      if (v17)
      {
LABEL_10:
        [v17 setHidden:0];
      }
    }

    v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
    [v34 setNumberOfLines:1];
    v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    [v35 addSubview:v34];
    v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel];
    [v36 setNumberOfLines:1];
    [v35 addSubview:v36];
    v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel];
    if (v37)
    {
      v38 = v37;
      [v38 setNumberOfLines:2];
      [v35 addSubview:v38];
    }

    v39 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView];
    if (v39)
    {
      [v39 setHidden:1];
    }

    v40 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView;
    v41 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
    if (v41)
    {
      v42 = qword_93C4E0;
      v43 = v41;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = v79;
      v45 = sub_BE38(v79, qword_99B3B8);
      v47 = v77;
      v46 = v78;
      (*(v78 + 16))(v77, v45, v44);
      v48 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v46 + 24))(&v43[v48], v47, v44);
      swift_endAccess();
      [v43 setNeedsLayout];

      (*(v46 + 8))(v47, v44);
      v49 = *&v1[v40];
      if (v49)
      {
        [v49 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
      }
    }

    sub_17A1DC();
  }

  return [v1 setNeedsLayout];
}

id sub_17A1DC()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  [v1 setHidden:v3 == &dword_0 + 2];
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  LOBYTE(v3) = sub_769B50();

  if ((v3 & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] overrideUserInterfaceStyle];
    sub_769240();
    v6 = sub_769210();

    v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel];
    if (v7)
    {
      v8 = [v7 layer];
      [v8 setCompositingFilter:v6];
    }

    v9 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel] layer];
    [v9 setCompositingFilter:v6];
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != &dword_0 + 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView];

  return [v13 setHidden:v12];
}

double sub_17A3DC(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_769240();
  v8 = v7;
  if (v6 == sub_769240() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_76A950();

    if ((v11 & 1) == 0)
    {
      sub_179950();
    }
  }

  return result;
}

id sub_17A4F8(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  result = [a2 userInterfaceStyle];
  if (v5 != result)
  {
    sub_17A1DC();

    return [a1 setNeedsLayout];
  }

  return result;
}

id sub_17A5F8()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v5)
    {
      [v5 invalidate];
      v5 = *(v3 + v4);
    }

    *(v3 + v4) = 0;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_17A848(uint64_t a1, uint64_t a2)
{
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel;
  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v49 = v13;
  v16 = v6;
  v17 = a1;
  v18 = v15;
  v19 = sub_769240();
  v21 = v20;

  if (!a2)
  {

    v6 = v16;
    v13 = v49;
    v24 = *&v2[v49];
    if (v24)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = sub_76A950();

    v6 = v16;
    v13 = v49;
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_11:
    v24 = *&v2[v13];
    if (v24)
    {
      goto LABEL_31;
    }

LABEL_12:
    v25 = v2;
    if (qword_93DBA0 != -1)
    {
      swift_once();
    }

    v26 = sub_7666D0();
    v27 = sub_BE38(v26, qword_99FAD8);
    v28 = *(v26 - 8);
    (*(v28 + 16))(v12, v27, v26);
    (*(v28 + 56))(v12, 0, 1, v26);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v29 = objc_allocWithZone(sub_75BB20());
    v30 = sub_75BB10();
    v2 = v25;
    v31 = *&v25[v13];
    *&v25[v13] = v30;

    v32 = *&v25[v13];
    if (v32)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v33 = v32;
      v2 = v25;
      v34 = sub_769FF0();
      [v33 setTextColor:v34];
    }

    v35 = [v2 traitCollection];
    v36 = [v35 preferredContentSizeCategory];
    v37 = sub_769B50();

    v38 = *&v2[v13];
    if (v37)
    {
      if (v38)
      {
        [v38 setNumberOfLines:0];
        v39 = *&v2[v13];
        if (v39)
        {
          v40 = [v39 layer];
          [v40 setCompositingFilter:0];

          if (*&v2[v13])
          {
            v41 = &OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView;
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else if (v38)
    {
      [v38 setNumberOfLines:2];
      v42 = *&v2[v13];
      if (v42)
      {
        v43 = [v42 layer];
        v41 = &OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView;
        v44 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] traitCollection];
        [v44 userInterfaceStyle];

        sub_769240();
        v45 = sub_769210();

        [v43 setCompositingFilter:v45];

        if (*&v2[v13])
        {
LABEL_30:
          [*&v2[*v41] addSubview:?];
          v24 = *&v2[v13];
          if (!v24)
          {

LABEL_35:
            [v2 setNeedsLayout];
            return;
          }

LABEL_31:
          v46 = v24;
          if (a2)
          {
            v47 = sub_769210();
          }

          else
          {
            v47 = 0;
          }

          [v46 setText:v47];

          goto LABEL_35;
        }
      }
    }

    __break(1u);
    return;
  }

LABEL_24:
}

id sub_17ADCC()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView];
  if (v1)
  {
    v2 = qword_93C4F8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor:qword_99B400];
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView] addSubview:v3];
    v4 = [objc_allocWithZone(UITapGestureRecognizer) init];
    v5 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer;
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer] = v4;

    result = *&v0[v5];
    if (!result || ([result setDelegate:v0], (result = *&v0[v5]) == 0) || (result = objc_msgSend(result, "addTarget:action:", v0, "handleTapWithGestureRecognizer:"), !*&v0[v5]))
    {
      __break(1u);
      return result;
    }

    [v3 addGestureRecognizer:?];
    v8 = [v0 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_769B50();

    if (v10)
    {
      v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView];
      if (v11)
      {
        v12 = v11;
        [v12 setHidden:0];
      }
    }
  }

  return [v0 setNeedsLayout];
}

id sub_17AF94()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_75CF00();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = sub_769B50();

    if (v14)
    {
      if (qword_93C4E8 != -1)
      {
        swift_once();
      }

      v15 = sub_BE38(v5, qword_99B3D0);
      (*(v6 + 16))(v9, v15, v5);
      v16 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v16], v9, v5);
      swift_endAccess();
      v17 = 16.0;
    }

    else
    {
      if (qword_93C4E0 != -1)
      {
        swift_once();
      }

      v18 = sub_BE38(v5, qword_99B3B8);
      (*(v6 + 16))(v9, v18, v5);
      v19 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v19], v9, v5);
      swift_endAccess();
      v17 = 4.0;
    }

    v20 = v11;
    [v20 setNeedsLayout];
    (*(v6 + 8))(v9, v5);
    [v20 setLayoutMargins:{v17, 0.0, v17, 0.0}];

    v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
    v22 = qword_93D590;
    v23 = v20;
    v24 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = sub_7666D0();
    v26 = sub_BE38(v25, qword_99E8C0);
    v27 = *(v25 - 8);
    v28 = *(v27 + 16);
    v28(v4, v26, v25);
    v29 = *(v27 + 56);
    v29(v4, 0, 1, v25);
    sub_75BA40();

    v30 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    if (qword_93D598 != -1)
    {
      swift_once();
    }

    v31 = sub_BE38(v25, qword_99E8D8);
    v28(v4, v31, v25);
    v29(v4, 0, 1, v25);
    sub_75BA40();

    v32 = qword_93C4F8;
    v33 = v23;
    if (v32 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_99B400];

    v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView];
    if (v34)
    {
      v35 = v34;
      [v35 addSubview:v33];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_17B4D0(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_17D5D4(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_17B65C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_17B6B0;
}

void sub_17B6B0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_17B7C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_17BC9C(v10);
  AppEventCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_4A9908(v26);
      v42 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_2467C(v10);
  }

  else
  {
    sub_2467C(v10);
  }
}

id sub_17BC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C4F0 != -1)
  {
    v59 = v4;
    swift_once();
    v4 = v59;
  }

  v7 = sub_BE38(v4, qword_99B3E8);
  v76 = v6;
  sub_17D61C(v7, v6);
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView);
  v103 = sub_758E80();
  v104 = &protocol witness table for UIView;
  v82 = v8;
  *&v102 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView);
  v100 = sub_75CD70();
  v101 = &protocol witness table for UIView;
  v98 = &protocol witness table for UIView;
  *&v99 = v9;
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView);
  v97 = v100;
  v80 = v10;
  v81 = v9;
  *&v96 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  v12 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v94 = v12;
  v95 = &protocol witness table for UIView;
  v79 = v11;
  *&v93 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView);
  v91 = sub_759210();
  v92 = &protocol witness table for UIView;
  v78 = v13;
  *&v90 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = type metadata accessor for VideoView(0);
    v71 = &protocol witness table for UIView;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v77 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView);
  if (v77)
  {
    v70 = type metadata accessor for MediaOverlayGradientBlurView();
    v69 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v75 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton);
  if (v75)
  {
    v68 = type metadata accessor for NotifyMeButton();
    v67 = &protocol witness table for UIView;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel);
  v16 = sub_75BB20();
  v17 = &protocol witness table for UILabel;
  v88 = v16;
  v89 = &protocol witness table for UILabel;
  v73 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel);
  v74 = v15;
  v86 = &protocol witness table for UILabel;
  *&v87 = v15;
  v85 = v16;
  *&v84 = v73;
  v18 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel);
  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView);
  if (v19)
  {
    v65 = type metadata accessor for SeparatorView(0);
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v83 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView);
  v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (v20)
  {
    v63 = type metadata accessor for SmallLockupView(0);
    v64 = &protocol witness table for UIView;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  if (v83)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  if (v83)
  {
    v22 = &protocol witness table for UIView;
  }

  else
  {
    v22 = 0;
  }

  v61 = v22;
  v62 = v21;
  if (!v18)
  {
    v16 = 0;
    v17 = 0;
  }

  sub_17D680(v76, a1);
  v23 = type metadata accessor for AppEventCardLayout(0);
  sub_10914(&v102, a1 + v23[5]);
  sub_10914(&v99, a1 + v23[6]);
  sub_10914(&v96, a1 + v23[7]);
  sub_10914(&v93, a1 + v23[8]);
  sub_10914(&v90, a1 + v23[9]);
  v24 = (a1 + v23[10]);
  *v24 = Strong;
  v24[1] = 0;
  v25 = v71;
  v26 = v72;
  v24[2] = 0;
  v24[3] = v26;
  v24[4] = v25;
  v27 = (a1 + v23[11]);
  v28 = v77;
  *v27 = v77;
  v27[1] = 0;
  v29 = v69;
  v30 = v70;
  v27[2] = 0;
  v27[3] = v30;
  v27[4] = v29;
  v31 = (a1 + v23[12]);
  v32 = v75;
  *v31 = v75;
  v31[1] = 0;
  v33 = v67;
  v34 = v68;
  v31[2] = 0;
  v31[3] = v34;
  v31[4] = v33;
  sub_10914(&v87, a1 + v23[13]);
  sub_10914(&v84, a1 + v23[14]);
  v35 = (a1 + v23[15]);
  *v35 = v18;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = v16;
  v35[4] = v17;
  v36 = (a1 + v23[16]);
  *v36 = v19;
  v36[1] = 0;
  v38 = v65;
  v37 = v66;
  v36[2] = 0;
  v36[3] = v38;
  v36[4] = v37;
  v39 = (a1 + v23[17]);
  *v39 = v83;
  v39[1] = 0;
  v40 = v61;
  v41 = v62;
  v39[2] = 0;
  v39[3] = v41;
  v39[4] = v40;
  v42 = (a1 + v23[18]);
  *v42 = v20;
  v42[1] = 0;
  v44 = v63;
  v43 = v64;
  v42[2] = 0;
  v42[3] = v44;
  v42[4] = v43;
  v45 = v20;
  v46 = v82;
  v47 = v81;
  v48 = v80;
  v49 = v79;
  v50 = v78;
  v51 = v28;
  v52 = v32;
  v53 = v74;
  v54 = v73;
  v55 = v18;
  v56 = v19;
  v57 = v83;

  return v57;
}