uint64_t sub_10003D2E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003D328(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008030;

  return sub_10003912C(a1, v4, v5, v7, v6);
}

uint64_t sub_10003D3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008030;

  return sub_100036B94(a1, v4, v5, v6);
}

uint64_t sub_10003D4B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008124;

  return sub_10003616C(a1, v4, v5, v6);
}

uint64_t sub_10003D5EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003D634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008124;

  return sub_100038790(a1, v4, v5, v7, v6);
}

uint64_t sub_10003D6FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003D74C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008124;

  return sub_100038D74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003D840(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10003D8A4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008124;

  return sub_1000857EC(a1, a2, v7, v6);
}

unint64_t sub_10003D958()
{
  result = qword_10014EED0;
  if (!qword_10014EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014EED0);
  }

  return result;
}

uint64_t sub_10003D9B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003D9F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008124;

  return sub_10003499C();
}

char *sub_10003DAE4(uint64_t a1, __int16 a2, uint64_t a3, int a4, void *a5, void *a6, double a7)
{
  v14 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_basePOICircleView;
  v43 = a2 & 0x100;
  v44 = a4 & 0x10000;
  *&v7[v14] = [objc_allocWithZone(UIImageView) init];
  v15 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_downArrowView;
  *&v7[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *&v7[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  v18 = &v7[OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration];
  *v18 = a2;
  v18[1] = HIBYTE(a2) & 1;
  *(v18 + 1) = a3;
  v18[16] = a4 & 1;
  v18[17] = BYTE1(a4) & 1;
  v18[18] = BYTE2(a4) & 1;
  *(v18 + 3) = a7;
  v46.receiver = v7;
  v46.super_class = _s19MOPOIAnnotationViewCMa();
  v19 = objc_msgSendSuper2(&v46, "initWithAnnotation:reuseIdentifier:", a1, 0);
  sub_100091AE8(a2 & 0x1FF, a3, a4 & 1);
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  if ((v25 & 1) == 0)
  {
    nullsub_1();
  }

  [v19 setFrame:{v21, v22, v23, v24}];
  v26 = &v19[OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_basePOICircleView];
  v27 = *&v19[OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_basePOICircleView];
  sub_100091AE8(a2 & 0x1FF, a3, a4 & 1);
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if ((v31 & 1) == 0)
  {
    nullsub_1();
    v20 = v32;
  }

  [v27 setFrame:{v20, v28, v29, v30}];

  sub_10003E38C(a5, a6);
  if (a3 <= 1)
  {
    if (a4)
    {
      sub_10003E7D0(v33);
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    }

    else if (!v44 || v43)
    {
      sub_10003DF20();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_downArrowView]];
    }
  }

  else
  {
    sub_10003E7D0(v33);
    sub_10003E0C0();
    [v19 addSubview:*&v19[OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    v26 = &v19[OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_clusterCountLabel];
  }

  [v19 addSubview:*v26];
  v34 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_borderBackgroundView;
  v35 = [*&v19[OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_borderBackgroundView] layer];
  v36 = [objc_opt_self() secondarySystemBackgroundColor];
  v37 = [v36 CGColor];

  [v35 setShadowColor:v37];
  v38 = [*&v19[v34] layer];
  LODWORD(v39) = 0.5;
  [v38 setShadowOpacity:v39];

  v40 = [*&v19[v34] layer];
  [v40 setShadowRadius:5.0];

  v41 = [*&v19[v34] layer];
  [v41 setShadowPathIsBounds:1];

  sub_10003E790(a5, a6);
  swift_unknownObjectRelease();
  return v19;
}

void sub_10003DF20()
{
  v1 = (v0 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration + 8);
  v3 = *(v0 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration + 16);
  if (v2 <= 1 && v3 == 0)
  {
    v5 = v1[1];
    if ((v1[18] ^ 1 | v5))
    {
      v6 = *(v0 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_downArrowView);
      if (v5)
      {
        v7 = 256;
      }

      else
      {
        v7 = 0;
      }

      sub_100091AE8(v7 | *v1, v2, v3);
      v8 = 0.0;
      v9 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      if ((v12 & 1) == 0)
      {
        nullsub_1();
      }

      [v6 setFrame:{v8, v9, v10, v11}];
      v13 = sub_100100F94();
      v14 = [objc_opt_self() systemImageNamed:v13];

      [v6 setImage:v14];

      [v6 setContentMode:2];
    }
  }
}

void sub_10003E0C0()
{
  v1 = (v0 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration + 8);
  if (v2 >= 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_clusterCountLabel);
    if (v1[1])
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    sub_100091AE8(v4 | *v1, v2, v1[16]);
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ((v9 & 1) == 0)
    {
      nullsub_1();
    }

    [v3 setFrame:{v5, v6, v7, v8}];
    sub_100101E44();
    v10 = sub_100100F94();

    [v3 setText:v10];

    [v3 setTextAlignment:1];
    v11 = [objc_opt_self() whiteColor];
    [v3 setTextColor:v11];

    if (v1[1])
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    v13 = COERCE_DOUBLE(sub_100091AE8(v12 | *v1, *(v1 + 1), v1[16]));
    v14 = 15.0;
    if ((v15 & 1) == 0)
    {
      v14 = v13 / 6.0;
    }

    v16 = [objc_opt_self() boldSystemFontOfSize:v14];
    [v3 setFont:v16];

    [v3 setAdjustsFontSizeToFitWidth:1];
    [v3 setClipsToBounds:1];
    v17 = [v3 layer];
    [v3 frame];
    [v17 setCornerRadius:CGRectGetWidth(v18) * 0.5];
  }
}

void sub_10003E38C(void *a1, void *a2)
{
  if (a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_basePOICircleView);
    v15 = a1;
    v5 = a2;
    [v4 setImage:v5];
    [*(v2 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v15];
    [*(v2 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v15];
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_basePOICircleView);
    [v6 frame];
    CGRectGetWidth(v17);
    [v6 frame];
    CGRectGetHeight(v18);
    [v6 frame];
    CGRectGetWidth(v19);
    [v6 frame];
    CGRectGetHeight(v20);
    nullsub_1();
    v11 = [objc_allocWithZone(UIImageView) initWithFrame:{v7, v8, v9, v10}];
    v15 = v11;
    if (qword_10014B6B0 != -1)
    {
      swift_once();
      v11 = v15;
    }

    [v11 setImage:qword_100158618];
    v12 = [objc_opt_self() systemWhiteColor];
    [v15 setTintColor:v12];

    if (qword_10014B608 != -1)
    {
      swift_once();
    }

    v13 = qword_1001584F8;
    [v6 setBackgroundColor:qword_1001584F8];
    [*(v2 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v13];
    [*(v2 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v13];
    v14 = [v6 layer];
    [v6 frame];
    [v14 setCornerRadius:CGRectGetHeight(v21) * 0.5];

    [v6 addSubview:v15];
  }
}

id sub_10003E6CC()
{
  v2.receiver = v0;
  v2.super_class = _s19MOPOIAnnotationViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003E790(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_10003E7D0(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_borderBackgroundView);
  if (*(v1 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration + 1))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_100091884(v3 | *(v1 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration), *(v1 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration + 8), *(v1 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration + 16), *(v1 + OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_configuration + 24));
  [v2 setFrame:?];
  v4 = [v2 layer];
  v5 = [objc_opt_self() whiteColor];
  v6 = [v5 CGColor];

  [v4 setBackgroundColor:v6];
  [v2 setClipsToBounds:1];
  v7 = [v2 layer];
  [v2 frame];
  [v7 setCornerRadius:CGRectGetWidth(v9) * 0.5];
}

void sub_10003E95C()
{
  v1 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtCC21JournalShareExtension10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  sub_100101D94();
  __break(1u);
}

void *sub_10003EA40()
{
  v1 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension5Asset_context);
  v2 = v1;
  return v1;
}

void *sub_10003EA70()
{
  v1 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  v2 = v1;
  return v1;
}

uint64_t sub_10003EAA0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_context);
  if (v2)
  {
    __chkstk_darwin(a1);
    v4 = v3;
    sub_100007210(&qword_10014D288, &qword_10010CE20);
    sub_100101814();

    LOBYTE(v2) = v6;
  }

  return v2 & 1;
}

uint64_t sub_10003EBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_1000FF874();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FF204();
  if (!v23)
  {
    sub_10000FFB4(aBlock, &qword_10014CA68, &qword_10010D130);
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10000FFB4(v10, &qword_10014CD08, &unk_10010C860);
  }

  v15 = swift_dynamicCast();
  (*(v12 + 56))(v10, v15 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000FFB4(v10, &qword_10014CD08, &unk_10010C860);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (sub_1000FF844())
  {
    v16 = *&v4[OBJC_IVAR____TtC21JournalShareExtension5Asset_context];
    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v4;
      v24 = a3;
      v25 = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D2F3C;
      v23 = a4;
      v18 = _Block_copy(aBlock);
      v19 = v16;
      v20 = v7;

      [v19 performBlock:v18];
      _Block_release(v18);
    }
  }

  return (*(v12 + 8))(v14, v11);
}

id sub_10003EE8C(void *a1)
{
  v2 = v1;
  v70 = sub_1001007D4();
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014D280, &qword_10010CE18);
  __chkstk_darwin(v6 - 8);
  v65 = &v56 - v7;
  v63 = sub_1000FFAF4();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v9 - 8);
  v68 = &v56 - v10;
  v11 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  __chkstk_darwin(v11 - 8);
  v64 = &v56 - v12;
  v62 = sub_1000FFC54();
  v13 = *(v62 - 8);
  __chkstk_darwin(v62);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000FF804();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_context);
  *(v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_context) = a1;
  v21 = a1;

  sub_1000FFB14();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v21];
  isa = sub_1000FF824().super.isa;
  [v22 setId:isa];

  sub_1000FF7F4();
  v24 = sub_1000FF754().super.isa;
  v66 = v17;
  v67 = v16;
  v58 = *(v17 + 8);
  v59 = v17 + 8;
  v58(v19, v16);
  [v22 setCreatedDate:v24];

  v25 = OBJC_IVAR____TtC21JournalShareExtension5Asset_type;
  sub_1001007C4();
  v26 = sub_100100F94();

  [v22 setAssetType:v26];

  v27 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_title);
  if (v27)
  {
    v56 = v25;
    v57 = v4;
    v28 = v27;
    v29 = sub_100101744();
    v31 = v30;

    if (v31 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1000FF554().super.isa;
      sub_1000064AC(v29, v31);
    }

    v25 = v56;
    v4 = v57;
  }

  else
  {
    v32 = 0;
  }

  v33 = v64;
  [v22 setTitle:v32];

  v34 = v62;
  (*(v13 + 16))(v15, v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_source, v62);
  sub_1000FFC44();
  (*(v13 + 8))(v15, v34);
  v35 = sub_100100F94();

  [v22 setSource:v35];

  v36 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionId;
  swift_beginAccess();
  sub_100010014(v2 + v36, v33, &qword_10014CD08, &unk_10010C860);
  v37 = sub_1000FF874();
  v38 = *(v37 - 8);
  v39 = 0;
  if ((*(v38 + 48))(v33, 1, v37) != 1)
  {
    v39 = sub_1000FF824().super.isa;
    (*(v38 + 8))(v33, v37);
  }

  [v22 setSuggestionId:v39];

  v40 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionDate;
  swift_beginAccess();
  v41 = v68;
  sub_100010014(v2 + v40, v68, &unk_10014D640, &unk_10010C480);
  v42 = v67;
  v43 = 0;
  if ((*(v66 + 48))(v41, 1, v67) != 1)
  {
    v43 = sub_1000FF754().super.isa;
    v58(v41, v42);
  }

  [v22 setSuggestionDate:v43];

  [v22 setIsHidden:*(v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_isHidden)];
  v45 = v69;
  v44 = v70;
  (*(v4 + 16))(v69, v2 + v25, v70);
  v46 = (*(v4 + 88))(v45, v44);
  v47 = &enum case for JournalAppVersion.none(_:);
  if (v46 == enum case for AssetType.photo(_:) || v46 == enum case for AssetType.livePhoto(_:) || v46 == enum case for AssetType.video(_:) || v46 == enum case for AssetType.music(_:) || v46 == enum case for AssetType.podcast(_:) || v46 == enum case for AssetType.book(_:) || v46 == enum case for AssetType.audio(_:) || v46 == enum case for AssetType.visit(_:) || v46 == enum case for AssetType.multiPinMap(_:) || v46 == enum case for AssetType.genericMap(_:) || v46 == enum case for AssetType.link(_:) || v46 == enum case for AssetType.contact(_:) || v46 == enum case for AssetType.workoutIcon(_:) || v46 == enum case for AssetType.workoutRoute(_:) || v46 == enum case for AssetType.reflection(_:) || v46 == enum case for AssetType.stateOfMind(_:) || v46 == enum case for AssetType.motionActivity(_:) || v46 == enum case for AssetType.thirdPartyMedia(_:) || v46 == enum case for AssetType.placeholder(_:) || v46 == enum case for AssetType.streakEvent(_:) || (v47 = &enum case for JournalAppVersion.fall2025(_:), v46 == enum case for AssetType.drawing(_:)) || v46 == enum case for AssetType.confetti(_:))
  {
    v49 = v61;
    v50 = v65;
    v51 = v63;
    (*(v61 + 104))(v65, *v47, v63);
    (*(v49 + 56))(v50, 0, 1, v51);
    v52 = v60;
    (*(v49 + 32))(v60, v50, v51);
    [v22 setMinimumSupportedAppVersion:sub_1000FFAE4()];
    (*(v49 + 8))(v52, v51);
    goto LABEL_36;
  }

  if (v46 == enum case for AssetType.unknown(_:))
  {
    v48 = v65;
    (*(v61 + 56))(v65, 1, 1, v63);
    sub_10000FFB4(v48, &qword_10014D280, &qword_10010CE18);
LABEL_36:
    v53 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    *(v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO) = v22;
    v54 = v22;

    return v54;
  }

  result = sub_100101E74();
  __break(1u);
  return result;
}

NSObject *sub_10003F870(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for ThumbnailCacheOperation(0));

  return sub_1000F1AEC(v6, v12, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_10003F904(uint64_t a1, unsigned __int8 a2)
{
  sub_1000FF874();
  sub_10004AD8C(&qword_10014C018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_1001010B4(v15);
  v16._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_1001010B4(v17);
  if (a2 > 3u)
  {
    v9 = 0xE500000000000000;
    v10 = 0x6C6C616D73;
    if (a2 != 6)
    {
      v10 = 0x657263536C6C7566;
      v9 = 0xEA00000000006E65;
    }

    v11 = 0xE600000000000000;
    v12 = 0x6D756964656DLL;
    if (a2 != 4)
    {
      v12 = 0x61546D756964656DLL;
      v11 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 5u)
    {
      v7._countAndFlagsBits = v12;
    }

    else
    {
      v7._countAndFlagsBits = v10;
    }

    if (a2 <= 5u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x656772614C78;
    v4 = 0xEA00000000006564;
    v5 = 0x69576D756964656DLL;
    if (a2 != 2)
    {
      v5 = 0x656772616CLL;
      v4 = 0xE500000000000000;
    }

    if (a2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v3 = 0x6154656772614C78;
      v6 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 1u)
    {
      v7._countAndFlagsBits = v3;
    }

    else
    {
      v7._countAndFlagsBits = v5;
    }

    if (a2 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  v7._object = v8;
  sub_1001010B4(v7);

  return 0x2D626D756874;
}

double sub_10003FB24(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v47 = a6;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v12 = sub_100100C44();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100100CB4();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000FF874();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3 & 1;
  if (a3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  v20 = (*((swift_isaMask & *v7) + 0x2F8))(v19, a1, a5);
  v22 = v21;
  v44 = (*((swift_isaMask & *v7) + 0x2F0))(a1, a2, v18, v20, v21, a5);
  v23 = swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v43 = sub_1000058B8(v23, v24);
  }

  else
  {
    v43 = 0;
  }

  v25 = (v7 + OBJC_IVAR____TtC21JournalShareExtension5Asset_thumbnailCacheKey);
  *v25 = v20;
  v25[1] = v22;

  v42 = *(v7 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentIdsMissingFile);
  v26 = *(v7 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachments);
  if (v26 >> 62)
  {
    v41 = sub_100101DA4();
  }

  else
  {
    v41 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v45;
  v27 = v46;
  (*(v45 + 16))(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + OBJC_IVAR____TtC21JournalShareExtension5Asset_id, v46);
  v29 = (*(v28 + 80) + 72) & ~*(v28 + 80);
  v30 = v29 + v16;
  v31 = swift_allocObject();
  *(v31 + 2) = v20;
  *(v31 + 3) = v22;
  v32 = v49;
  *(v31 + 4) = v47;
  *(v31 + 5) = v32;
  v33 = v44;
  v34 = v56;
  *(v31 + 6) = v44;
  *(v31 + 7) = v34;
  *(v31 + 8) = v41;
  (*(v28 + 32))(&v31[v29], v17, v27);
  v31[v30] = v43;
  *&v31[(v30 & 0xFFFFFFFFFFFFFFF8) + 8] = v42;
  *&v31[((v30 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  aBlock[4] = sub_10004ABE8;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_100135F00;
  v35 = _Block_copy(aBlock);

  v36 = v33;
  v56;
  v37 = v50;
  sub_100100C64();
  v57 = _swiftEmptyArrayStorage;
  sub_10004AD8C(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007210(&qword_10014E310, &unk_10010C8E0);
  sub_10002FCF8();
  v38 = v52;
  v39 = v55;
  sub_100101B64();
  sub_100101714();
  _Block_release(v35);

  (*(v54 + 8))(v38, v39);
  (*(v51 + 8))(v37, v53);

  return result;
}

uint64_t sub_1000400B8()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014D160);
  v1 = sub_100003D38(v0, qword_10014D160);
  if (qword_10014B888 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100040180()
{
  v0 = sub_1001016E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100101694();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100CB4();
  __chkstk_darwin(v5 - 8);
  sub_100010F50(0, &qword_10014E300, OS_dispatch_queue_ptr);
  sub_100100C54();
  sub_100101684();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100101724();
  qword_100158468 = result;
  return result;
}

uint64_t sub_100040340()
{
  v0 = sub_1001016E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100101694();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100CB4();
  __chkstk_darwin(v5 - 8);
  sub_100010F50(0, &qword_10014E300, OS_dispatch_queue_ptr);
  sub_100100C74();
  sub_100101684();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100101724();
  qword_100158470 = result;
  return result;
}

uint64_t sub_100040500()
{
  v0 = sub_1001016E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100101694();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100CB4();
  __chkstk_darwin(v5 - 8);
  sub_100010F50(0, &qword_10014E300, OS_dispatch_queue_ptr);
  sub_100100C84();
  sub_100101684();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100101724();
  qword_100158478 = result;
  return result;
}

uint64_t sub_1000406E4(uint64_t a1)
{
  v3 = sub_1000FF804();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  __chkstk_darwin(v3);
  v6 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100007210(&qword_10014D268, &unk_10010CE00);
  __chkstk_darwin(v7);
  v65 = &v58[-v8];
  v9 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v58[-v13];
  v15 = sub_1000FFC54();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v58[-v20];
  sub_100010014(a1, &v70, &qword_10014CA68, &qword_10010D130);
  if (v72)
  {
    type metadata accessor for Asset(0);
    if (swift_dynamicCast())
    {
      v64 = v6;
      v22 = v68;
      ObjectType = swift_getObjectType();
      if (ObjectType == swift_getObjectType() && (sub_1000FF844() & 1) != 0)
      {
        v60 = v14;
        v61 = v12;
        sub_1001007D4();
        sub_10004AD8C(&qword_10014CA80, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
        v62 = v1;
        sub_100101174();
        v63 = v22;
        sub_100101174();
        if (v70 == v68 && v71 == v69)
        {
        }

        else
        {
          v26 = sub_100101E84();

          if ((v26 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v27 = *(v16 + 16);
        v27(v21, &v62[OBJC_IVAR____TtC21JournalShareExtension5Asset_source], v15);
        v27(v19, &v63[OBJC_IVAR____TtC21JournalShareExtension5Asset_source], v15);
        sub_10004AD8C(&qword_10014D270, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
        sub_100101174();
        sub_100101174();
        if (v70 == v68 && v71 == v69)
        {
          v28 = *(v16 + 8);
          v28(v19, v15);
          v28(v21, v15);

          v30 = v60;
          v29 = v61;
        }

        else
        {
          v59 = sub_100101E84();
          v31 = *(v16 + 8);
          v31(v19, v15);
          v31(v21, v15);

          v30 = v60;
          v29 = v61;
          if ((v59 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v32 = v62;
        v33 = *&v62[OBJC_IVAR____TtC21JournalShareExtension5Asset_title];
        v34 = *&v63[OBJC_IVAR____TtC21JournalShareExtension5Asset_title];
        if (v33)
        {
          if (!v34)
          {
            goto LABEL_28;
          }

          sub_100010F50(0, &qword_10014D0C0, NSAttributedString_ptr);
          v35 = v34;
          v36 = v33;
          v37 = sub_100101A34();
          v32 = v62;
          v38 = v37;

          if ((v38 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (v34)
        {
          goto LABEL_28;
        }

        v39 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionDate;
        swift_beginAccess();
        sub_100010014(&v32[v39], v30, &unk_10014D640, &unk_10010C480);
        v40 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionDate;
        v41 = v63;
        swift_beginAccess();
        v42 = *(v7 + 48);
        v43 = v65;
        sub_100010014(v30, v65, &unk_10014D640, &unk_10010C480);
        v44 = &v41[v40];
        v45 = v43;
        sub_100010014(v44, &v43[v42], &unk_10014D640, &unk_10010C480);
        v46 = *(v67 + 48);
        v47 = v43;
        v48 = v66;
        if (v46(v47, 1, v66) == 1)
        {
          sub_10000FFB4(v30, &unk_10014D640, &unk_10010C480);
          if (v46(v45 + v42, 1, v48) == 1)
          {
            v49 = sub_10000FFB4(v45, &unk_10014D640, &unk_10010C480);
LABEL_30:
            v55 = (*((swift_isaMask & *v32) + 0x200))(v49);
            v56 = v63;
            v57 = (*((swift_isaMask & *v63) + 0x200))();

            v24 = v55 ^ v57 ^ 1;
            return v24 & 1;
          }

          goto LABEL_27;
        }

        sub_100010014(v45, v29, &unk_10014D640, &unk_10010C480);
        if (v46(v45 + v42, 1, v48) == 1)
        {
          sub_10000FFB4(v30, &unk_10014D640, &unk_10010C480);
          (*(v67 + 8))(v29, v48);
LABEL_27:
          sub_10000FFB4(v45, &qword_10014D268, &unk_10010CE00);
          goto LABEL_28;
        }

        v50 = v67;
        v51 = v64;
        (*(v67 + 32))(v64, v45 + v42, v48);
        sub_10004AD8C(&qword_10014D278, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v52 = sub_100100F04();
        v32 = v62;
        v53 = v52;
        v54 = *(v50 + 8);
        v54(v51, v48);
        sub_10000FFB4(v30, &unk_10014D640, &unk_10010C480);
        v54(v29, v48);
        v49 = sub_10000FFB4(v45, &unk_10014D640, &unk_10010C480);
        if (v53)
        {
          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_10000FFB4(&v70, &qword_10014CA68, &qword_10010D130);
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

Swift::Int sub_10004102C()
{
  v1 = v0;
  v2 = sub_1000FF804();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_1000FFC54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100101FF4();
  sub_1000FF874();
  sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100100E94();
  sub_1001007D4();
  sub_10004AD8C(&qword_10014CED8, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  sub_100100E94();
  (*(v10 + 16))(v12, v0 + OBJC_IVAR____TtC21JournalShareExtension5Asset_source, v9);
  sub_10004AD8C(&qword_10014D258, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
  sub_100100E94();
  (*(v10 + 8))(v12, v9);
  v13 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension5Asset_title);
  if (v13)
  {
    sub_100101FA4(1u);
    v14 = v13;
    sub_100101A44();
  }

  else
  {
    sub_100101FA4(0);
  }

  v15 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionDate;
  swift_beginAccess();
  sub_100010014(v1 + v15, v8, &unk_10014D640, &unk_10010C480);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_100101FA4(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_100101FA4(1u);
    sub_10004AD8C(&qword_10014D260, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100100E94();
    (*(v3 + 8))(v5, v2);
  }

  return sub_100101FD4();
}

uint64_t sub_10004143C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = 2;
  }

  *a2 = result;
  return result;
}

char *sub_10004148C@<X0>(char *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *&result[OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO];
  if (v3)
  {
    result = [*&result[OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO] setIsHidden:result[OBJC_IVAR____TtC21JournalShareExtension5Asset_isHidden]];
  }

  *a2 = v3 == 0;
  return result;
}

id sub_1000414F4(void *a1)
{
  v2 = v1;
  v4 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v4 - 8);
  v115 = &v95 - v5;
  v6 = sub_100007210(&qword_10014D210, &unk_10010CDB8);
  __chkstk_darwin(v6 - 8);
  v112 = &v95 - v7;
  v8 = sub_1000FFC54();
  v113 = *(v8 - 8);
  v114 = v8;
  __chkstk_darwin(v8);
  v110 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007210(&qword_10014D208, &unk_10010CDA8);
  __chkstk_darwin(v10 - 8);
  v101 = &v95 - v11;
  v102 = sub_1001007D4();
  v98 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  v14 = __chkstk_darwin(v13 - 8);
  v111 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v96 = &v95 - v17;
  __chkstk_darwin(v16);
  v19 = &v95 - v18;
  v20 = sub_1000FF874();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v97 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentIdsMissingFile] = _swiftEmptySetSingleton;
  v23 = OBJC_IVAR____TtC21JournalShareExtension5Asset_context;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension5Asset_context] = 0;
  v24 = OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO] = 0;
  v99 = OBJC_IVAR____TtC21JournalShareExtension5Asset_title;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension5Asset_title] = 0;
  v25 = *(v21 + 56);
  v104 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionId;
  v25(&v1[OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionId], 1, 1, v20);
  v26 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionDate;
  v27 = sub_1000FF804();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v108 = v27;
  v109 = v26;
  v106 = v28 + 56;
  v107 = v29;
  (v29)(&v2[v26], 1, 1);
  v30 = &v2[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryPath];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryURL;
  v32 = sub_1000FF514();
  (*(*(v32 - 8) + 56))(&v2[v31], 1, 1, v32);
  v33 = &v2[OBJC_IVAR____TtC21JournalShareExtension5Asset_thumbnailCacheKey];
  *v33 = 0;
  v33[1] = 0;
  v105 = OBJC_IVAR____TtC21JournalShareExtension5Asset_isHidden;
  v2[OBJC_IVAR____TtC21JournalShareExtension5Asset_isHidden] = 0;
  v34 = OBJC_IVAR____TtC21JournalShareExtension5Asset_delegates;
  *&v2[v34] = [objc_opt_self() weakObjectsHashTable];
  v35 = &v2[OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdate];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v2[OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdateMediaFile];
  *v36 = 0;
  v36[1] = 0;
  v37 = [a1 managedObjectContext];
  v38 = *&v2[v23];
  *&v2[v23] = v37;

  v39 = *&v2[v24];
  *&v2[v24] = a1;
  v40 = a1;

  v41 = *&v2[v24];
  v116 = v21 + 56;
  if (v41)
  {
    v95 = v19;
    v42 = [v41 id];
    v43 = v40;
    if (v42)
    {
      v44 = v96;
      v45 = v42;
      sub_1000FF854();

      v46 = 0;
      v47 = v98;
      v48 = v97;
    }

    else
    {
      v46 = 1;
      v47 = v98;
      v48 = v97;
      v44 = v96;
    }

    v49 = v25;
    v25(v44, v46, 1, v20);
    v50 = v95;
    sub_100045508(v44, v95);
    v40 = v43;
    v19 = v50;
    if ((*(v21 + 48))(v50, 1, v20) != 1)
    {
      (*(v21 + 32))(v48, v50, v20);
      v52 = v113;
      goto LABEL_10;
    }
  }

  else
  {
    v25(v19, 1, 1, v20);
    v49 = v25;
    v47 = v98;
    v48 = v97;
  }

  sub_1000FF864();
  v51 = (*(v21 + 48))(v19, 1, v20);
  v52 = v113;
  if (v51 != 1)
  {
    sub_10000FFB4(v19, &qword_10014CD08, &unk_10010C860);
  }

LABEL_10:
  v103 = v49;
  v53 = *(v21 + 32);
  v113 = v20;
  v53(&v2[OBJC_IVAR____TtC21JournalShareExtension5Asset_id], v48, v20);
  v54 = *&v2[v24];
  if (v54)
  {
    v55 = v54;
    v56 = v101;
    sub_1000FFB04();

    v57 = v102;
    v58 = (*(v47 + 48))(v56, 1, v102);
    v59 = v112;
    v60 = v110;
    v61 = v100;
    if (v58 != 1)
    {
      (*(v47 + 32))(v100, v56, v57);
      goto LABEL_16;
    }
  }

  else
  {
    v56 = v101;
    v57 = v102;
    (*(v47 + 56))(v101, 1, 1, v102);
    v59 = v112;
    v60 = v110;
    v61 = v100;
  }

  (*(v47 + 104))(v61, enum case for AssetType.unknown(_:), v57);
  if ((*(v47 + 48))(v56, 1, v57) != 1)
  {
    sub_10000FFB4(v56, &qword_10014D208, &unk_10010CDA8);
  }

LABEL_16:
  (*(v47 + 32))(&v2[OBJC_IVAR____TtC21JournalShareExtension5Asset_type], v61, v57);
  v62 = *&v2[v24];
  if (v62 && (v63 = [v62 title]) != 0)
  {
    v64 = v63;
    v65 = sub_1000FF564();
    v67 = v66;

    v68 = sub_1000FF534();
    sub_1000064C0(v65, v67);
  }

  else
  {
    v68 = 0;
  }

  v69 = *&v2[v99];
  *&v2[v99] = v68;

  v70 = *&v2[v24];
  if (v70)
  {
    v71 = [v70 source];
    v72 = v114;
    if (v71)
    {
      v73 = v71;
      sub_100100FD4();
    }
  }

  else
  {
    v72 = v114;
  }

  sub_1000FFC34();
  v74 = *(v52 + 48);
  if (v74(v59, 1, v72) == 1)
  {
    (*(v52 + 104))(v60, enum case for AssetSource.unknown(_:), v72);
    v75 = v74(v59, 1, v72);
    v76 = v115;
    if (v75 != 1)
    {
      sub_10000FFB4(v59, &qword_10014D210, &unk_10010CDB8);
    }
  }

  else
  {
    (*(v52 + 32))(v60, v59, v72);
    v76 = v115;
  }

  (*(v52 + 32))(&v2[OBJC_IVAR____TtC21JournalShareExtension5Asset_source], v60, v72);
  v77 = [v40 suggestionId];
  if (v77)
  {
    v78 = v111;
    v79 = v77;
    sub_1000FF854();

    v80 = 0;
  }

  else
  {
    v80 = 1;
    v78 = v111;
  }

  v81 = 1;
  v103(v78, v80, 1, v113);
  v82 = v104;
  swift_beginAccess();
  sub_10001007C(v78, &v2[v82], &qword_10014CD08, &unk_10010C860);
  swift_endAccess();
  v83 = [v40 suggestionDate];
  if (v83)
  {
    v84 = v83;
    sub_1000FF7B4();

    v81 = 0;
  }

  v107(v76, v81, 1, v108);
  v85 = v109;
  swift_beginAccess();
  sub_10001007C(v76, &v2[v85], &unk_10014D640, &unk_10010C480);
  swift_endAccess();
  v86 = [v40 isHidden];
  v2[v105] = v86;
  v87 = type metadata accessor for Asset(0);
  v117.receiver = v2;
  v117.super_class = v87;
  v88 = objc_msgSendSuper2(&v117, "init");
  sub_100042144();
  v89 = objc_opt_self();
  v90 = [v89 defaultCenter];
  if (qword_10014B778 != -1)
  {
    swift_once();
  }

  [v90 addObserver:v88 selector:? name:? object:?];

  v91 = [v89 defaultCenter];
  v92 = qword_10014B780;
  v93 = v88;
  if (v92 != -1)
  {
    swift_once();
  }

  [v91 addObserver:v93 selector:"mediaFileUpdatedNotificationWithNotification:" name:qword_100158710 object:0];

  return v93;
}

void sub_100042144()
{
  v1 = v0;
  v2 = sub_1000FF874();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v70 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v70 - v11;
  __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v87 = sub_1001001E4();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000FF514();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _swiftEmptyArrayStorage;
  v92 = _swiftEmptySetSingleton;
  v93 = _swiftEmptyArrayStorage;
  v22 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (!v22)
  {
    goto LABEL_35;
  }

  v84 = v18;
  v85 = v20;
  v83 = v14;
  v23 = v22;
  v24 = [v23 fileAttachments];
  if (!v24 || (v25 = v24, v79 = v12, v80 = v9, v94 = 0, v26 = sub_1000FFB54(), sub_10004AD8C(&qword_10014D218, &type metadata accessor for JournalEntryAssetFileAttachmentMO, &protocol conformance descriptor for NSObject), v88 = v26, sub_100101404(), v25, (v27 = v94) == 0))
  {

    v21 = _swiftEmptyArrayStorage;
LABEL_35:
    *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentIdsMissingFile) = v92;

    *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachments) = v21;

    (*((swift_isaMask & *v1) + 0x2D8))(v56);
    ObjectType = swift_getObjectType();
    v58 = swift_conformsToProtocol2();
    if (v58)
    {
      v59 = v58;
      v60 = v1;
      sub_100006BF8(ObjectType, v59);
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      return;
    }

    v61 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    if (v61)
    {
      v62 = v1;
      v63 = [v61 contentType];
      if (v63)
      {
        v64 = v63;
        v65 = sub_100100FD4();
        v67 = v66;

        v68 = v67;
        v63 = v65;
LABEL_43:
        *(v1 + OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_contentType) = sub_1000755A4(v63, v68);

        return;
      }
    }

    else
    {
      v69 = v1;
      v63 = 0;
    }

    v68 = 0xE000000000000000;
    goto LABEL_43;
  }

  v76 = v6;
  v77 = v2;
  v82 = v23;
  if ((v94 & 0xC000000000000001) != 0)
  {
    sub_100101B94();
    sub_100101444();
    v27 = v94;
    v28 = v95;
    v29 = v96;
    v30 = v97;
    v31 = v98;
  }

  else
  {
    v30 = 0;
    v32 = -1 << *(v94 + 32);
    v28 = v94 + 56;
    v29 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v94 + 56);
  }

  v81 = v29;
  v35 = (v29 + 64) >> 6;
  ++v89;
  v75 = (v3 + 32);
  v74 = (v3 + 16);
  v73 = (v3 + 8);
  v78 = (v17 + 8);
  v21 = _swiftEmptyArrayStorage;
  while (v27 < 0)
  {
    v39 = sub_100101BB4();
    if (!v39 || (v90 = v39, swift_dynamicCast(), (v38 = v91) == 0))
    {
LABEL_34:
      sub_10004A9A0(v27);

      goto LABEL_35;
    }

LABEL_21:
    v40 = [v38 filePath];
    if (v40)
    {

      v41 = v38;
      if (sub_1000C3298(v41))
      {

        sub_1001011B4();
        if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100101204();
        }

        sub_100101234();

        v21 = v93;
      }

      v42 = [v41 filePath];
      if (v42)
      {
        v72 = v41;
        v43 = v42;
        v71 = sub_100100FD4();

        v44 = v86;
        sub_1001001D4();
        sub_100100184();

        (*v89)(v44, v87);
        v71 = [objc_opt_self() defaultManager];
        sub_1000FF4D4();
        v45 = sub_100100F94();

        v46 = v71;
        LOBYTE(v44) = [v71 fileExistsAtPath:v45];

        if (v44)
        {
          (*v78)(v85, v84);
        }

        else
        {
          v47 = v72;
          v48 = [v72 id];
          if (v48)
          {
            v49 = v79;
            v50 = v48;
            sub_1000FF854();

            v51 = v83;
            v52 = v49;
            v53 = v77;
            (*v75)(v83, v52, v77);
            v54 = v76;
            (*v74)(v76, v51, v53);
            sub_1000456DC(v80, v54);

            v55 = *v73;
            (*v73)(v80, v53);
            v55(v83, v53);
            (*v78)(v85, v84);
          }

          else
          {
            (*v78)(v85, v84);
          }
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

  v36 = v30;
  v37 = v31;
  if (v31)
  {
LABEL_17:
    v31 = (v37 - 1) & v37;
    v38 = *(*(v27 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v37)))));
    if (!v38)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      goto LABEL_34;
    }

    v37 = *(v28 + 8 * v30);
    ++v36;
    if (v37)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

id sub_1000429EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentIdsMissingFile] = _swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_context] = 0;
  *&v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO] = 0;
  *&v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_title] = 0;
  v6 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionId;
  v7 = sub_1000FF874();
  v8 = *(v7 - 8);
  (*(v8 + 56))(&v3[v6], 1, 1, v7);
  v9 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionDate;
  v10 = sub_1000FF804();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = &v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryPath];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryURL;
  v13 = sub_1000FF514();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  v14 = &v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_thumbnailCacheKey];
  *v14 = 0;
  v14[1] = 0;
  v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_isHidden] = 0;
  v15 = OBJC_IVAR____TtC21JournalShareExtension5Asset_delegates;
  *&v3[v15] = [objc_opt_self() weakObjectsHashTable];
  v16 = &v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdate];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdateMediaFile];
  *v17 = 0;
  v17[1] = 0;
  (*(v8 + 16))(&v3[OBJC_IVAR____TtC21JournalShareExtension5Asset_id], a1, v7);
  v18 = OBJC_IVAR____TtC21JournalShareExtension5Asset_type;
  v19 = sub_1001007D4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v3[v18], a2, v19);
  v21 = OBJC_IVAR____TtC21JournalShareExtension5Asset_source;
  v22 = sub_1000FFC54();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v3[v21], a3, v22);
  v27.receiver = v3;
  v27.super_class = type metadata accessor for Asset(0);
  v24 = objc_msgSendSuper2(&v27, "init");
  (*(v23 + 8))(a3, v22);
  (*(v20 + 8))(a2, v19);
  (*(v8 + 8))(a1, v7);
  return v24;
}

id sub_100042D4C()
{
  v1 = sub_1000FF874();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC21JournalShareExtension5Asset_thumbnailCacheKey + 8];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC21JournalShareExtension5Asset_thumbnailCacheKey];

    sub_1000823A8(v6, v5, 0);
  }

  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC21JournalShareExtension5Asset_id], v1);
  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = sub_1000058B8(ObjectType, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v0[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentIdsMissingFile];

  sub_10009DF48(1, v4, v9, v10);

  (*(v2 + 8))(v4, v1);
  v11 = [objc_opt_self() defaultCenter];
  [v11 removeObserver:v0];

  v12 = type metadata accessor for Asset(0);
  v14.receiver = v0;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t type metadata accessor for Asset(uint64_t a1)
{
  result = qword_10014D1D0;
  if (!qword_10014D1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000431BC(uint64_t a1)
{
  sub_100042144();
  v2 = [*(a1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_delegates) allObjects];
  v3 = sub_1001011D4();

  if (v3 >> 62)
  {
    v4 = sub_100101DA4();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_100101CA4();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7 && v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_13:

  v10 = a1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdate;
  v11 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdate);
  if (v11)
  {
    v12 = *(v10 + 8);

    v11(v13);

    sub_10002FB80(v11, v12);
  }
}

double sub_100043380(uint64_t a1)
{
  sub_100042144();
  v3 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdateMediaFile);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdateMediaFile + 8);

    v3(v5);

    return sub_10002FB80(v3, v4);
  }

  return result;
}

uint64_t sub_100043408(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000FF224();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FF1F4();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_1000434F8(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, char *a5, uint64_t a6, void *a7, char *a8, char a9, uint64_t a10)
{
  v49 = a8;
  v50 = a5;
  v51 = a7;
  v52 = a3;
  v53 = a4;
  v48 = a10;
  v13 = sub_100100CB4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  if (qword_10014B840 != -1)
  {
    swift_once();
  }

  v20 = sub_1000F5A74(a1, a2);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 imageByPreparingForDisplay];

    if (v22)
    {
      v51 = v22;
      v52(v22);

      v23 = v51;
LABEL_18:

      return;
    }
  }

  v24 = sub_1000826C4(a1, a2, a6);
  if (v24)
  {
    v49 = v24;
    v25 = *&v24[qword_100158A60];
    if (v25 >> 62)
    {
      v26 = sub_100101DA4();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26 == v51)
    {
      v27 = swift_allocObject();
      v28 = v53;
      *(v27 + 16) = v52;
      *(v27 + 24) = v28;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_10004B068;
      *(v29 + 24) = v27;
      v30 = *&v49[qword_10014D680];
      __chkstk_darwin(v49);
      *(&v47 - 2) = sub_10004B04C;
      *(&v47 - 1) = v29;

      os_unfair_lock_lock(v30 + 10);
      sub_10004B050(&v30[4]);
      os_unfair_lock_unlock(v30 + 10);

      return;
    }

    sub_100043A00(v50, v52, v53, a6);
    v23 = v49;
    goto LABEL_18;
  }

  sub_100082964(a1, a2);
  if (v31)
  {
    v33 = v31;
    v34 = v32;
    sub_1001016F4();
    v35 = sub_100100C94();
    v36 = *(v14 + 8);
    v36(v19, v13);
    sub_1001016F4();
    v37 = sub_100100C94();
    v36(v17, v13);
    if (v35 >= v37 && ((v38 = *&v33[qword_100158A60], v38 >> 62) ? (v39 = sub_100101DA4()) : (v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10)), v39 == v51))
    {
      v40 = swift_allocObject();
      v41 = v53;
      *(v40 + 16) = v52;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_10004ACE8;
      *(v42 + 24) = v40;
      v43 = *&v33[qword_10014D680];
      v44 = __chkstk_darwin(v42);
      *(&v47 - 2) = sub_10004AD14;
      *(&v47 - 1) = v44;

      os_unfair_lock_lock(v43 + 10);
      sub_10004AD18(&v43[4]);
      os_unfair_lock_unlock(v43 + 10);
    }

    else
    {
      sub_100043A00(v50, v52, v53, a6);
    }
  }

  else
  {
    sub_100043A00(v50, v52, v53, a6);
    v46 = v48;
    v45 = v49;

    sub_10009DF48(0, v45, a9 & 1, v46);
  }
}

id sub_100043A00(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10004B068;
  *(v9 + 24) = v8;
  v10 = *&a1[qword_10014D680];

  os_unfair_lock_lock(v10 + 10);
  sub_10004B050(&v10[4]);
  os_unfair_lock_unlock(v10 + 10);

  sub_100010F50(0, &qword_10014E140, NSObject_ptr);
  if (qword_10014B5D8 != -1)
  {
    swift_once();
  }

  if (sub_100101A34())
  {
    [a1 setQualityOfService:9];
  }

  else
  {
    if (qword_10014B5E0 != -1)
    {
      swift_once();
    }

    if (sub_100101A34())
    {
      v11 = a1;
      v12 = -1;
    }

    else
    {
      v11 = a1;
      v12 = 25;
    }

    [v11 setQualityOfService:v12];
  }

  return sub_100082BB8(a1, a4);
}

void sub_100043C08(uint64_t a1)
{
  sub_1000FF874();
  if (v1 <= 0x3F)
  {
    sub_1001007D4();
    if (v2 <= 0x3F)
    {
      sub_1000FFC54();
      if (v3 <= 0x3F)
      {
        sub_100043E58(319, &qword_10014CCD0, &type metadata accessor for UUID);
        if (v4 <= 0x3F)
        {
          sub_100043E58(319, &qword_10014D1E0, &type metadata accessor for Date);
          if (v5 <= 0x3F)
          {
            sub_100043E58(319, &qword_10014D1E8, &type metadata accessor for URL);
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

void sub_100043E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100101A94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100043F1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21JournalShareExtension5Asset_id;
  v5 = sub_1000FF874();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100043FE0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1001007D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  __chkstk_darwin(v10 - 8);
  v12 = v33 - v11;
  v13 = sub_1000FF514();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031D14(a1, a2 & 1);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000FFB4(v12, &qword_10014EBD0, &qword_10010BE50);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1000FF474(v17);
    v19 = v18;
    v20 = CGImageSourceCreateWithURL(v18, 0);

    if (v20)
    {
      v21 = CGImageSourceCopyPropertiesAtIndex(v20, 0, 0);
      (*(v14 + 8))(v16, v13);
      if (v21)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v34 = 0;
          type metadata accessor for CFString(0);
          sub_10004AD8C(&qword_10014BCE0, type metadata accessor for CFString, &unk_10010B754);
          sub_100100E54();

          result = v34;
          if (v34)
          {
            return result;
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
      (*(v14 + 8))(v16, v13);
    }
  }

  (*(v7 + 104))(v9, enum case for AssetType.photo(_:), v6);
  sub_10004AD8C(&qword_10014CA80, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  sub_100101174();
  sub_100101174();
  if (v34 == v33[2] && v35 == v33[3])
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v24 = sub_100101E84();
    (*(v7 + 8))(v9, v6);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v3 + OBJC_IVAR____TtC21JournalShareExtension5Asset_context))
  {
    __chkstk_darwin(v23);
    v33[-2] = v3;
    v26 = v25;
    sub_100007210(&qword_10014C040, &qword_10010CDE0);
    sub_100101814();

    v27 = v35;
    if (v35 >> 60 != 15)
    {
      v28 = v34;
      isa = sub_1000FF554().super.isa;
      v30 = CGImageSourceCreateWithData(isa, 0);

      if (v30)
      {
        v31 = CGImageSourceCopyPropertiesAtIndex(v30, 0, 0);
        if (v31)
        {
          v32 = v31;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v34 = 0;
            type metadata accessor for CFString(0);
            sub_10004AD8C(&qword_10014BCE0, type metadata accessor for CFString, &unk_10010B754);
            sub_100100E54();
            sub_1000064AC(v28, v27);

            result = v34;
            if (v34)
            {
              return result;
            }

            return 0;
          }
        }

        sub_1000064AC(v28, v27);
      }

      else
      {
        sub_1000064AC(v28, v27);
      }
    }
  }

  return 0;
}

void sub_1000445B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100045350(0);
    if (v5 && (v6 = v5, v7 = [v5 data], v6, v7))
    {
      v8 = sub_1000FF564();
      v10 = v9;
    }

    else
    {

      v8 = 0;
      v10 = 0xF000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v8;
  a2[1] = v10;
}

uint64_t sub_100044668(uint64_t a1, char a2)
{
  v2 = sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_1000FF514();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C8CD0();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100010F50(0, &qword_10014D238, AVMutableMovie_ptr);
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_1000FF474(v10);
    v12 = v11;
    v13 = [v9 initWithURL:v11 options:0];

    v14 = [v13 tracks];
    sub_100010F50(0, &qword_10014D240, AVMutableMovieTrack_ptr);
    v15 = sub_1001011D4();

    v36 = v6;
    v37 = v5;
    v34 = v13;
    v35 = v8;
    if (v15 >> 62)
    {
      goto LABEL_23;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
LABEL_24:

      (*(v36 + 8))(v35, v37);
      return 0;
    }

LABEL_5:
    v17 = 0;
    v38 = v15 & 0xFFFFFFFFFFFFFF8;
    v39 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v39)
      {
        v18 = sub_100101CA4();
      }

      else
      {
        if (v17 >= *(v38 + 16))
        {
          goto LABEL_22;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v16 = sub_100101DA4();
        if (!v16)
        {
          goto LABEL_24;
        }

        goto LABEL_5;
      }

      v21 = [v18 mediaType];
      v22 = sub_100100FD4();
      v24 = v23;
      if (v22 == sub_100100FD4() && v24 == v25)
      {
      }

      else
      {
        v27 = sub_100101E84();

        if ((v27 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      if ([v19 isEnabled])
      {

        [v19 naturalSize];
        v29 = v28;
        v31 = v30;
        [v19 preferredTransform];
        v41.width = v29;
        v41.height = v31;
        v32 = *&CGSizeApplyAffineTransform(v41, &v40);

        (*(v36 + 8))(v35, v37);
        return v32 & 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_8:

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_24;
      }
    }
  }

  sub_10000FFB4(v4, &qword_10014EBD0, &qword_10010BE50);
  return 0;
}

void sub_100044A9C()
{
  v1 = sub_100043FE0(0, 1);
  if (v1)
  {
    v2 = v1;
    if (*(v1 + 16) && (v3 = sub_10004C794(kCGImagePropertyPixelWidth), (v4 & 1) != 0) && (sub_100010FA8(*(v2 + 56) + 32 * v3, v19), (swift_dynamicCast() & 1) != 0) && *(v2 + 16) && (v5 = sub_10004C794(kCGImagePropertyPixelHeight), (v6 & 1) != 0) && (sub_100010FA8(*(v2 + 56) + 32 * v5, v19), (swift_dynamicCast() & 1) != 0) && *(v2 + 16) && (v7 = sub_10004C794(kCGImagePropertyOrientation), (v8 & 1) != 0))
    {
      sub_100010FA8(*(v2 + 56) + 32 * v7, v19);

      sub_100010FA8(v19, v18);
      sub_100010F50(0, &qword_10014D230, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        if ([v17 integerValue] == 6)
        {
          sub_10001100C(v19);
        }

        else
        {
          [v17 integerValue];

          sub_10001100C(v19);
        }
      }

      else
      {
        sub_10001100C(v19);
      }
    }

    else
    {
    }
  }

  else
  {
    sub_100044668(0, 1);
    if (v9)
    {
      if (qword_10014B5D0 != -1)
      {
        swift_once();
      }

      v10 = sub_100100AE4();
      sub_100003D38(v10, qword_10014D160);
      v11 = v0;
      v12 = sub_100100AC4();
      v13 = sub_1001015B4();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "%@ Failed to get image resolution", v14, 0xCu);
        sub_10000FFB4(v15, &unk_10014D660, &qword_10010C710);
      }
    }
  }
}

id sub_100044DCC()
{
  v1 = sub_100007210(&qword_10014D208, &unk_10010CDA8);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  sub_1000FFB04();
  v4 = sub_1001007D4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    goto LABEL_2;
  }

  v7 = (*(v5 + 88))(v3, v4);
  if (v7 == enum case for AssetType.photo(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for PhotoAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata;
LABEL_6:
    v10 = *v9;
LABEL_9:
    *&v8[v10] = 0;
    return sub_1000414F4(v0);
  }

  if (v7 == enum case for AssetType.livePhoto(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for LivePhotoAsset(0));
    *&v8[OBJC_IVAR____TtC21JournalShareExtension14LivePhotoAsset_metadata] = 0;
    v11 = &v8[OBJC_IVAR____TtC21JournalShareExtension14LivePhotoAsset_pendingLivePhotoRequest];
    *v11 = 0;
    v11[4] = 1;
    v10 = OBJC_IVAR____TtC21JournalShareExtension14LivePhotoAsset_livePhotoAttachments;
    goto LABEL_9;
  }

  if (v7 == enum case for AssetType.video(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for VideoAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension10VideoAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.music(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for MusicAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension10MusicAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.podcast(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for PodcastAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension12PodcastAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.book(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for BookAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension9BookAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.audio(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for AudioAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension10AudioAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.visit(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for VisitAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension10VisitAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.multiPinMap(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for MultiPinMapAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension16MultiPinMapAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.genericMap(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for GenericMapAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension15GenericMapAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.link(_:))
  {
    v13 = objc_allocWithZone(type metadata accessor for LinkAsset(0));
    *&v13[OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata] = 0;
    v13[OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_contentType] = 6;
    return sub_1000414F4(v0);
  }

  if (v7 == enum case for AssetType.contact(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for ContactAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension12ContactAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.workoutIcon(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension16WorkoutIconAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.workoutRoute(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for WorkoutRouteAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension17WorkoutRouteAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.reflection(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for ReflectionAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension15ReflectionAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.stateOfMind(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for StateOfMindAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension16StateOfMindAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.motionActivity(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for MotionActivityAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension19MotionActivityAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.thirdPartyMedia(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for ThirdPartyMediaAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension20ThirdPartyMediaAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.placeholder(_:))
  {
    v6 = type metadata accessor for PlaceholderAsset(0);
    goto LABEL_3;
  }

  if (v7 == enum case for AssetType.streakEvent(_:))
  {
    goto LABEL_2;
  }

  if (v7 == enum case for AssetType.drawing(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for DrawingAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension12DrawingAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.confetti(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for ConfettiAsset(0));
    v9 = &OBJC_IVAR____TtC21JournalShareExtension13ConfettiAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.unknown(_:))
  {
LABEL_2:
    v6 = type metadata accessor for UnknownAsset(0);
LABEL_3:
    objc_allocWithZone(v6);
    return sub_1000414F4(v0);
  }

  result = sub_100101E74();
  __break(1u);
  return result;
}

id sub_100045350(uint64_t a1)
{
  v3 = sub_1000FF364();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dataAttachments];
  if (!v7)
  {
    sub_100010F50(0, &qword_10014D200, NSSet_ptr);
    v7 = sub_1001018F4();
  }

  sub_100101904();

  sub_1000FF354();
  while (v14)
  {
    sub_10002FC28(&v13, &v12);
    sub_1000FFB44();
    if (swift_dynamicCast())
    {
      v8 = v11;
      if ([v11 index] == a1)
      {
        goto LABEL_10;
      }
    }

    sub_1000FF354();
  }

  v8 = 0;
LABEL_10:
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_100045508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000F20C(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_10000F20C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = sub_10004AD34;
  *(v11 + 40) = v6;
  *(a1 + 8) = v7;
  return result;
}

void sub_10004565C(void *a1, char a2, void (*a3)(id *))
{
  if (a2)
  {
    v5 = a1;
    sub_100007210(&qword_10014EBE0, &unk_10010C1A0);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;
  a3(&v5);
}

uint64_t sub_1000456DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000FF874();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = sub_100100E84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10004AD8C(&qword_10014CD18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_100100F04();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100047C60(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000459BC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1001007D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10004AD8C(&qword_10014CED8, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  v33 = a2;
  v11 = sub_100100E84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10004AD8C(&unk_10014CEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      v21 = sub_100100F04();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100047F28(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100045C9C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100101F84();
  sub_100101074();
  v8 = sub_100101FE4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100101E84() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000481F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100045DEC(double *a1, double a2, double a3)
{
  v7 = *v3;
  sub_100101F84();
  sub_1000744FC(a2, a3);
  v8 = sub_100101FE4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a2 && v12[1] == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = *v12;
    a3 = v12[1];
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_100048370(v10, isUniquelyReferenced_nonNull_native, a2, a3);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_100045F08(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  sub_100101F84();
  v21 = v4;
  sub_1000FF874();
  sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v9 = a2;
  sub_100100E94();
  v10 = sub_100101FE4();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      sub_10004A9C4(*(v8 + 48) + v14 * v12, v7);
      v15 = sub_1000FF844();
      sub_10004AA28(v7);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10004AA28(a2);
    sub_10004A9C4(*(v8 + 48) + v14 * v12, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10004A9C4(v9, v7);
    v22 = *v16;
    sub_1000484D8(v7, v12, isUniquelyReferenced_nonNull_native);
    *v16 = v22;
    sub_10004AA84(v9, v20);
    return 1;
  }
}

uint64_t sub_10004613C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_100101F84();
  sub_100101F94(a2);
  v6 = sub_100101FE4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10004872C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100046234(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100101F84();
  sub_1000ABDA4(a2);
  sub_100101074();

  v6 = sub_100101FE4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10004888C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    goto LABEL_48;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE400000000000000;
    v11 = 1954047348;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x64724F7465737361;
        v10 = 0xED0000676E697265;
        break;
      case 2:
        v11 = 0xD000000000000015;
        v10 = 0x8000000100104420;
        break;
      case 3:
        v10 = 0xE500000000000000;
        v11 = 0x656C746974;
        break;
      case 4:
        v11 = 0x7461447972746E65;
        v10 = 0xE900000000000065;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x6449656C646E7562;
        break;
      case 6:
        v10 = 0xEA00000000006574;
        v11 = 0x6144656C646E7562;
        break;
      case 7:
        v11 = 0x72756F5365746164;
        v10 = 0xEA00000000006563;
        break;
      case 8:
        v10 = 0xE700000000000000;
        v11 = 0x64656767616C66;
        break;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x74706D6F7270;
        break;
      case 0xA:
        v11 = 0xD000000000000013;
        v10 = 0x8000000100104480;
        break;
      case 0xB:
        v11 = 0xD000000000000011;
        v10 = 0x80000001001044A0;
        break;
      case 0xC:
        v10 = 0xE500000000000000;
        v11 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v12 = 0xE400000000000000;
    v13 = 1954047348;
    switch(a2)
    {
      case 1:
        v12 = 0xED0000676E697265;
        if (v11 == 0x64724F7465737361)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      case 2:
        v12 = 0x8000000100104420;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 3:
        v12 = 0xE500000000000000;
        if (v11 != 0x656C746974)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 4:
        v12 = 0xE900000000000065;
        if (v11 != 0x7461447972746E65)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 5:
        v12 = 0xE800000000000000;
        if (v11 != 0x6449656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 6:
        v12 = 0xEA00000000006574;
        if (v11 != 0x6144656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 7:
        v12 = 0xEA00000000006563;
        if (v11 != 0x72756F5365746164)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 8:
        v12 = 0xE700000000000000;
        if (v11 != 0x64656767616C66)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 9:
        v12 = 0xE600000000000000;
        if (v11 != 0x74706D6F7270)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x8000000100104480;
        goto LABEL_38;
      case 11:
        v12 = 0x80000001001044A0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 12:
        v12 = 0xE500000000000000;
        if (v11 != 0x726568746FLL)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      default:
LABEL_38:
        if (v11 != v13)
        {
          goto LABEL_40;
        }

LABEL_39:
        if (v10 != v12)
        {
LABEL_40:
          v14 = sub_100101E84();

          if (v14)
          {
            goto LABEL_47;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_45;
          }

          continue;
        }

LABEL_47:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_48:
        *a1 = a2;
        return result;
    }
  }
}

void sub_100046730(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000FF874();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100007210(&qword_10014D220, &qword_10010CDC8);
  v6 = sub_100101C14();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_100100E84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100046A8C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1001007D4();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100007210(&qword_10014CED0, &qword_10010CE10);
  v6 = sub_100101C14();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10004AD8C(&qword_10014CED8, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      v21 = sub_100100E84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100046DE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007210(&qword_10014CEC0, &qword_10010CA18);
  v4 = sub_100101C14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100101F84();
      sub_100101074();
      v21 = sub_100101FE4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100047048(uint64_t a1)
{
  v2 = *v1;
  sub_100007210(&qword_10014D228, &qword_10010CDD8);
  v3 = sub_100101C14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100101F84();
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      sub_100101FC4(*&v20);
      if (v19 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v19;
      }

      sub_100101FC4(*&v21);
      v22 = sub_100101FE4();
      v23 = -1 << *(v4 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero((v2 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v30;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

void sub_1000472C8(uint64_t a1)
{
  v2 = v1;
  v3 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100007210(&qword_10014D250, &unk_10010CDF0);
  v7 = sub_100101C14();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_10004AA84(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_100101F84();
      sub_1000FF874();
      sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100100E94();
      v22 = sub_100101FE4();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_10004AA84(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100047600(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007210(&qword_10014CEB0, &qword_10010CDD0);
  v4 = sub_100101C14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_100101F84();
      sub_100101F94(v17);
      v18 = sub_100101FE4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100047850(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007210(&qword_10014D248, &qword_10010CDE8);
  v4 = sub_100101C14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_100101F84();
      sub_100101074();

      v13 = sub_100101FE4();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        do
        {
          if (++v16 == v23 && (v22 & 1) != 0)
          {
            goto LABEL_31;
          }

          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
        }

        while (v25 == -1);
        v17 = __clz(__rbit64(~v25)) + (v16 << 6);
      }

      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x100047C2CLL);
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_100047C60(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1000FF874();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100046730(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100048DE4(&type metadata accessor for UUID, &qword_10014D220, &qword_10010CDC8);
      goto LABEL_12;
    }

    sub_1000495E4(v10 + 1);
  }

  v12 = *v3;
  sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = sub_100100E84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10004AD8C(&qword_10014CD18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_100100F04();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100101EC4();
  __break(1u);
  return result;
}

uint64_t sub_100047F28(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1001007D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100046A8C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100048DE4(&type metadata accessor for AssetType, &qword_10014CED0, &qword_10010CE10);
      goto LABEL_12;
    }

    sub_100049900(v10 + 1);
  }

  v12 = *v3;
  sub_10004AD8C(&qword_10014CED8, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  v13 = sub_100100E84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10004AD8C(&unk_10014CEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      v21 = sub_100100F04();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100101EC4();
  __break(1u);
  return result;
}

void sub_1000481F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100046DE8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10004901C();
      goto LABEL_16;
    }

    sub_100049C1C(v8 + 1);
  }

  v10 = *v4;
  sub_100101F84();
  sub_100101074();
  v11 = sub_100101FE4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_100101E84() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_100101EC4();
  __break(1u);
}

unint64_t sub_100048370(unint64_t result, char a2, double a3, double a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_100047048(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = result;
      sub_100049178();
      result = v9;
      goto LABEL_15;
    }

    sub_100049E54(v7 + 1);
  }

  v10 = *v4;
  sub_100101F84();
  sub_1000744FC(a3, a4);
  v11 = sub_100101FE4();
  v12 = -1 << *(v10 + 32);
  result = v11 & ~v12;
  if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * result);
      if (*v14 == a3 && v14[1] == a4)
      {
        goto LABEL_18;
      }

      result = (result + 1) & v13;
    }

    while (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_15:
  v16 = *v4;
  *(*v4 + 8 * (result >> 6) + 56) |= 1 << result;
  v17 = (*(v16 + 48) + 16 * result);
  *v17 = a3;
  v17[1] = a4;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_100101EC4();
  __break(1u);
  return result;
}

uint64_t sub_1000484D8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000472C8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000492BC();
      goto LABEL_12;
    }

    sub_10004A098(v10 + 1);
  }

  v12 = *v3;
  sub_100101F84();
  sub_1000FF874();
  sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100100E94();
  v13 = sub_100101FE4();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      sub_10004A9C4(*(v12 + 48) + v16 * a2, v9);
      v17 = sub_1000FF844();
      sub_10004AA28(v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10004AA84(a1, *(v18 + 48) + *(v25 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100101EC4();
  __break(1u);
  return result;
}

void sub_10004872C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100047600(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000494B4(&qword_10014CEB0, &qword_10010CDD0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_10004A3A0(v5 + 1);
  }

  v8 = *v3;
  sub_100101F84();
  sub_100101F94(v4);
  v9 = sub_100101FE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100101EC4();
  __break(1u);
}

void sub_10004888C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100047850(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_1000494B4(&qword_10014D248, &qword_10010CDE8);
        goto LABEL_52;
      }

      sub_10004A5C0(v7 + 1);
    }

    v9 = *v3;
    sub_100101F84();
    sub_1000ABDA4(v6);
    sub_100101074();

    v10 = sub_100101FE4();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE400000000000000;
        v14 = 1954047348;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x64724F7465737361;
            v13 = 0xED0000676E697265;
            break;
          case 2:
            v14 = 0xD000000000000015;
            v13 = 0x8000000100104420;
            break;
          case 3:
            v13 = 0xE500000000000000;
            v14 = 0x656C746974;
            break;
          case 4:
            v14 = 0x7461447972746E65;
            v13 = 0xE900000000000065;
            break;
          case 5:
            v13 = 0xE800000000000000;
            v14 = 0x6449656C646E7562;
            break;
          case 6:
            v13 = 0xEA00000000006574;
            v14 = 0x6144656C646E7562;
            break;
          case 7:
            v14 = 0x72756F5365746164;
            v13 = 0xEA00000000006563;
            break;
          case 8:
            v13 = 0xE700000000000000;
            v14 = 0x64656767616C66;
            break;
          case 9:
            v13 = 0xE600000000000000;
            v14 = 0x74706D6F7270;
            break;
          case 0xA:
            v14 = 0xD000000000000013;
            v13 = 0x8000000100104480;
            break;
          case 0xB:
            v14 = 0xD000000000000011;
            v13 = 0x80000001001044A0;
            break;
          case 0xC:
            v13 = 0xE500000000000000;
            v14 = 0x726568746FLL;
            break;
          default:
            break;
        }

        v15 = 0xE400000000000000;
        v16 = 1954047348;
        switch(v6)
        {
          case 1:
            v15 = 0xED0000676E697265;
            if (v14 != 0x64724F7465737361)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 2:
            v15 = 0x8000000100104420;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v15 = 0xE500000000000000;
            if (v14 != 0x656C746974)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v15 = 0xE900000000000065;
            if (v14 != 0x7461447972746E65)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v15 = 0xE800000000000000;
            if (v14 != 0x6449656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v15 = 0xEA00000000006574;
            if (v14 != 0x6144656C646E7562)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v15 = 0xEA00000000006563;
            if (v14 != 0x72756F5365746164)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 8:
            v15 = 0xE700000000000000;
            if (v14 != 0x64656767616C66)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v15 = 0xE600000000000000;
            if (v14 != 0x74706D6F7270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v16 = 0xD000000000000013;
            v15 = 0x8000000100104480;
            goto LABEL_45;
          case 11:
            v15 = 0x80000001001044A0;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v15 = 0xE500000000000000;
            if (v14 != 0x726568746FLL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v14 != v16)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v13 == v15)
            {
              goto LABEL_55;
            }

LABEL_47:
            v17 = sub_100101E84();

            if (v17)
            {
              goto LABEL_56;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_52:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_55:

LABEL_56:
    sub_100101EC4();
    __break(1u);
    JUMPOUT(0x100048D7CLL);
  }

  *(v18 + 16) = v21;
}

void sub_100048DE4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100007210(a2, a3);
  v11 = *v3;
  v12 = sub_100101C04();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_10004901C()
{
  v1 = v0;
  sub_100007210(&qword_10014CEC0, &qword_10010CA18);
  v2 = *v0;
  v3 = sub_100101C04();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100049178()
{
  v1 = v0;
  sub_100007210(&qword_10014D228, &qword_10010CDD8);
  v2 = *v0;
  v3 = sub_100101C04();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000492BC()
{
  v1 = v0;
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007210(&qword_10014D250, &unk_10010CDF0);
  v6 = *v0;
  v7 = sub_100101C04();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10004A9C4(*(v6 + 48) + v21, v5);
        sub_10004AA84(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_1000494B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007210(a1, a2);
  v4 = *v2;
  v5 = sub_100101C04();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1000495E4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1000FF874();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100007210(&qword_10014D220, &qword_10010CDC8);
  v7 = sub_100101C14();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_100100E84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100049900(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1001007D4();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100007210(&qword_10014CED0, &qword_10010CE10);
  v7 = sub_100101C14();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10004AD8C(&qword_10014CED8, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      v21 = sub_100100E84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100049C1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007210(&qword_10014CEC0, &qword_10010CA18);
  v4 = sub_100101C14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100101F84();

      sub_100101074();
      v20 = sub_100101FE4();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100049E54(uint64_t a1)
{
  v2 = *v1;
  sub_100007210(&qword_10014D228, &qword_10010CDD8);
  v3 = sub_100101C14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_100101F84();
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      sub_100101FC4(*&v19);
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      sub_100101FC4(*&v20);
      v21 = sub_100101FE4();
      v22 = -1 << *(v4 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v10 + 8 * v24);
          if (v28 != -1)
          {
            v11 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_30;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    *v1 = v4;
  }
}

void sub_10004A098(uint64_t a1)
{
  v2 = v1;
  v3 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100007210(&qword_10014D250, &unk_10010CDF0);
  v7 = sub_100101C14();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_10004A9C4(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_100101F84();
      sub_1000FF874();
      sub_10004AD8C(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100100E94();
      v22 = sub_100101FE4();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_10004AA84(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_10004A3A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007210(&qword_10014CEB0, &qword_10010CDD0);
  v4 = sub_100101C14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_100101F84();
      sub_100101F94(v16);
      v17 = sub_100101FE4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10004A5C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007210(&qword_10014D248, &qword_10010CDE8);
  v4 = sub_100101C14();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_100101F84();
      sub_100101074();

      v12 = sub_100101FE4();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x10004A96CLL);
      }

      if (v6 >= v10)
      {
        break;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v2 = v1;
  }

  else
  {
  }

  *v2 = v5;
}

uint64_t sub_10004A9C4(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AA28(uint64_t a1)
{
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004AA84(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AAE8()
{
  v1 = sub_1000FF874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10004ABE8()
{
  v1 = *(sub_1000FF874() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  sub_1000434F8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10004AC98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004ACB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004AD34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_10004AD8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004ADD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004AE1C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = 2;
  }

  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UndoableActivity.Component(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UndoableActivity.Component(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10004AFCC()
{
  result = qword_10014D290[0];
  if (!qword_10014D290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10014D290);
  }

  return result;
}

void sub_10004B0BC(char *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a3 + 40;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        v9 = *v7;
        if (*v7)
        {
          v10 = *(v7 - 1);
          v11 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v11 = v10 & 0xFFFFFFFFFFFFLL;
          }

          if (v11)
          {
            break;
          }
        }

        ++v8;
        v7 += 2;
        if (v4 == v3)
        {
          goto LABEL_18;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10000F02C(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_10000F02C((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[2 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v9;
    }

    while (v4 != v3);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_18:
  if (*(v6 + 2))
  {
    sub_100007210(&unk_10014D670, &unk_10010C9A0);
    sub_10000F138();
    sub_100100EA4();
  }
}

uint64_t sub_10004B264()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10004B300()
{

  v1 = OBJC_IVAR____TtC21JournalShareExtension31CustomAttributeProviderConcrete_logger;
  v2 = sub_100100AE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomAttributeProviderConcrete(uint64_t a1)
{
  result = qword_10014D3D8;
  if (!qword_10014D3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004B3F8(uint64_t a1)
{
  result = sub_100100AE4();
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

uint64_t sub_10004B494@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_100100AD4();
  *a1 = v2;
  return result;
}

id sub_10004B524()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

id sub_10004B738(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for JurassicAlertController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10004B8C4(void *a1)
{
  v3 = [v1 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setImage:a1];
  [v3 setIsAccessibilityElement:1];
  v4 = UIAccessibilityTraitImage;
  v5 = [v3 accessibilityTraits];
  if ((v4 & ~v5) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityTraits:v6 | v5];
  [v3 setAccessibilityIgnoresInvertColors:1];

  return v3;
}

id sub_10004B9F4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CanvasPhotoView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10004BA8C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharedDeviceInfoProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10004BAE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10004BB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10004BB50(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

id sub_10004BBB0@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6 > 1)
  {
    v26 = a3;
    if (v6 == 2)
    {
      v25 = a2[1];
      sub_100007210(&qword_10014D4E0, &qword_10010D0C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10010BC80;
      *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
      sub_100007210(&qword_10014D508, &qword_10010D0E8);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10010BC80;
      sub_100007210(&qword_10014D510, &qword_10010D0F0);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_10010C1F0;
      v18 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      *(v17 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      v19 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
      *(v17 + 40) = v5;
      *(v17 + 48) = v19;
      *(v17 + 56) = v25;
      v20 = UIFontDescriptorFeatureSettingsAttribute;
      v21 = v18;
      v22 = v19;
      v23 = sub_10004D5D8(v17);
      swift_setDeallocating();
      sub_100007210(&qword_10014D518, &qword_10010D0F8);
      swift_arrayDestroy();
      *(v16 + 32) = v23;
      *(inited + 64) = sub_100007210(&qword_10014D520, &qword_10010D100);
      *(inited + 40) = v16;
      sub_10004D7D8(inited, &qword_10014D530, &qword_10010D110, &qword_10014D500, &qword_10010D0E0);
      swift_setDeallocating();
      sub_10000FFB4(inited + 32, &qword_10014D500, &qword_10010D0E0);
      type metadata accessor for AttributeName(0);
      sub_10004DB94(&qword_10014BDB8, type metadata accessor for AttributeName, &unk_10010B848);
      v12.super.isa = sub_100100E44().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    else
    {
      if (v6 != 3)
      {
        result = [v4 fontDescriptorWithDesign:v5];
        if (!result)
        {
          result = v4;
        }

        goto LABEL_12;
      }

      sub_100007210(&qword_10014D4E0, &qword_10010D0C0);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_10010BC80;
      *(v7 + 32) = UIFontDescriptorTraitsAttribute;
      sub_100007210(&qword_10014D4E8, &qword_10010D0C8);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10010BC80;
      *(v8 + 32) = UIFontWeightTrait;
      *(v8 + 40) = v5;
      v9 = UIFontDescriptorTraitsAttribute;
      v10 = UIFontWeightTrait;
      v11 = sub_10004D6C4(v8);
      swift_setDeallocating();
      sub_10000FFB4(v8 + 32, &qword_10014D4F0, &qword_10010D0D0);
      *(v7 + 64) = sub_100007210(&qword_10014D4F8, &qword_10010D0D8);
      *(v7 + 40) = v11;
      sub_10004D7D8(v7, &qword_10014D530, &qword_10010D110, &qword_10014D500, &qword_10010D0E0);
      swift_setDeallocating();
      sub_10000FFB4(v7 + 32, &qword_10014D500, &qword_10010D0E0);
      type metadata accessor for AttributeName(0);
      sub_10004DB94(&qword_10014BDB8, type metadata accessor for AttributeName, &unk_10010B848);
      v12.super.isa = sub_100100E44().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    v24 = v13;

    result = v24;
LABEL_12:
    a3 = v26;
    goto LABEL_13;
  }

  if (*(a2 + 16))
  {
    result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") & ~v5}];
    if (result)
    {
      goto LABEL_13;
    }

LABEL_15:
    result = v4;
    goto LABEL_13;
  }

  result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") | v5}];
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_13:
  *a3 = result;
  return result;
}

id sub_10004C08C(unsigned int a1)
{
  v2 = v1;
  if (a1 && (v10 = v1, v4 = [v1 fontDescriptor], v5 = objc_msgSend(v10, "fontDescriptor"), v6 = objc_msgSend(v5, "symbolicTraits"), v5, v7 = objc_msgSend(v4, "fontDescriptorWithSymbolicTraits:", v6 | a1), v4, v2 = v10, v7))
  {
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

    return v8;
  }

  else
  {

    return v2;
  }
}

id sub_10004C194(double a1)
{
  v2 = v1;
  v4 = [v1 fontDescriptor];
  v5 = [v4 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_10004DB94(&qword_10014BDB8, type metadata accessor for AttributeName, &unk_10010B848);
  v6 = sub_100100E64();

  v28 = v6;
  if (*(v6 + 16) && (v7 = sub_10004C668(UIFontDescriptorTraitsAttribute), (v8 & 1) != 0) && (sub_100010FA8(*(v6 + 56) + 32 * v7, &v26), sub_100007210(&qword_10014D548, &qword_10010D138), (swift_dynamicCast() & 1) != 0))
  {
    v9 = *&v25[0];
  }

  else
  {
    v9 = sub_10004D7D8(_swiftEmptyArrayStorage, &qword_10014D550, &qword_10010D140, &qword_10014D558, &qword_10010D148);
  }

  type metadata accessor for Weight(0);
  v27 = v10;
  *&v26 = a1;
  sub_10002FC28(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000FB6EC(v25, UIFontWeightTrait, isUniquelyReferenced_nonNull_native);
  sub_1000C48D0(&v26);
  sub_10000FFB4(&v26, &qword_10014CA68, &qword_10010D130);
  v27 = sub_100007210(&qword_10014D548, &qword_10010D138);
  *&v26 = v9;
  sub_10002FC28(&v26, v25);
  v12 = v28;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000FB6B0(v25, UIFontDescriptorTraitsAttribute, v13);
  v28 = v12;
  v14 = [v2 familyName];
  v15 = sub_100100FD4();
  v17 = v16;

  v27 = &type metadata for String;
  *&v26 = v15;
  *(&v26 + 1) = v17;
  sub_10002FC28(&v26, v25);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000FB6B0(v25, UIFontDescriptorFamilyAttribute, v18);
  v19 = objc_allocWithZone(UIFontDescriptor);
  isa = sub_100100E44().super.isa;
  v21 = [v19 initWithFontAttributes:{isa, v12}];

  [v2 pointSize];
  v23 = [objc_opt_self() fontWithDescriptor:v21 size:v22];

  return v23;
}

unint64_t sub_10004C500(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100101BD4(*(v2 + 40));

  return sub_10004C904(a1, v4);
}

unint64_t sub_10004C544(double a1, double a2)
{
  sub_100101F84();
  sub_1000744FC(a1, a2);
  v4 = sub_100101FE4();

  return sub_10004C9CC(v4, a1, a2);
}

unint64_t sub_10004C5B8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100074EFC(*(v1 + 40), a1);

  return sub_10004CA44(v2, v3);
}

unint64_t sub_10004C5FC(char a1)
{
  sub_100101F84();
  sub_100101F94(a1 & 1);
  v2 = sub_100101FE4();

  return sub_10004CCCC(a1 & 1, v2);
}

unint64_t sub_10004C668(uint64_t a1)
{
  sub_100100FD4();
  sub_100101F84();
  sub_100101074();
  v2 = sub_100101FE4();

  return sub_10004D008(a1, v2);
}

unint64_t sub_10004C6FC(uint64_t a1)
{
  sub_1000FF874();
  sub_10004DB94(&qword_10014D1F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_100100E84();

  return sub_10004CD3C(a1, v2);
}

unint64_t sub_10004C794(uint64_t a1)
{
  sub_100101F84();
  type metadata accessor for CFString(0);
  sub_10004DB94(&qword_10014D560, type metadata accessor for CFString, &unk_10010B798);
  sub_100100844();
  v2 = sub_100101FE4();

  return sub_10004CEFC(a1, v2);
}

unint64_t sub_10004C848(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100101A24(*(v2 + 40));

  return sub_10004D10C(a1, v4);
}

unint64_t sub_10004C88C(uint64_t a1, uint64_t a2)
{
  sub_100101F84();
  sub_100101074();
  v4 = sub_100101FE4();

  return sub_10004D1D0(a1, a2, v4);
}

unint64_t sub_10004C904(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004DAE4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100101BE4();
      sub_10004DB40(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004C9CC(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10004CA44(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xEA00000000006C6CLL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v13 = 0xE500000000000000;
            v12 = 0x6C6C616D73;
          }

          else
          {
            v13 = 0xEA00000000006E65;
            v12 = 0x657263536C6C7566;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v12 = 0x6D756964656DLL;
          }

          else
          {
            v12 = 0x61546D756964656DLL;
          }

          if (v7 == 4)
          {
            v13 = 0xE600000000000000;
          }

          else
          {
            v13 = 0xEA00000000006C6CLL;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x69576D756964656DLL;
        }

        else
        {
          v8 = 0x656772616CLL;
        }

        if (v7 == 2)
        {
          v9 = 0xEA00000000006564;
        }

        else
        {
          v9 = 0xE500000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x656772614C78;
        }

        else
        {
          v10 = 0x6154656772614C78;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xEA00000000006C6CLL;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = 0xEA00000000006E65;
      v15 = 0x657263536C6C7566;
      if (v6 == 6)
      {
        v15 = 0x6C6C616D73;
        v14 = 0xE500000000000000;
      }

      v16 = 0x61546D756964656DLL;
      if (v6 == 4)
      {
        v16 = 0x6D756964656DLL;
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xEA00000000006C6CLL;
      }

      if (v6 <= 5)
      {
        v15 = v16;
        v14 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x69576D756964656DLL;
      }

      else
      {
        v18 = 0x656772616CLL;
      }

      if (v6 == 2)
      {
        v19 = 0xEA00000000006564;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v6)
      {
        v20 = 0x656772614C78;
      }

      else
      {
        v20 = 0x6154656772614C78;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v15;
      v22 = v6 <= 3 ? v19 : v14;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_100101E84();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xEA00000000006C6CLL;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004CCCC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10004CD3C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000FF874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10004DB94(&qword_10014CD18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_100100F04();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10004CEFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10004DB94(&qword_10014D560, type metadata accessor for CFString, &unk_10010B798);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100100834();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004D008(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100100FD4();
      v8 = v7;
      if (v6 == sub_100100FD4() && v8 == v9)
      {
        break;
      }

      v11 = sub_100101E84();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004D10C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10004DBDC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100101A34();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004D1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100101E84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004D288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007210(&qword_10014D540, &unk_10010D120);
    v3 = sub_100101DE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010014(v4, v13, &qword_10014C030, &unk_10010BD30);
      result = sub_10004C500(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10002FC28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004D3E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007210(&qword_10014D568, &qword_10010D150);
  v3 = sub_100101DE4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_10004C5FC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_10004C5FC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10004D4EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007210(&qword_10014D570, &qword_10010D158);
    v3 = sub_100101DE4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_10004C5B8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004D5D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007210(&qword_10014D528, &qword_10010D108);
    v3 = sub_100101DE4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10004C668(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004D6C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007210(&qword_10014D538, &qword_10010D118);
    v3 = sub_100101DE4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10004C668(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004D7D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100007210(a2, a3);
    v9 = sub_100101DE4();
    v10 = a1 + 32;

    while (1)
    {
      sub_100010014(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_10004C668(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10002FC28(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004D8F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007210(&qword_10014D588, &qword_10010D170);
    v3 = sub_100101DE4();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      result = sub_10004C848(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10004D9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a3];
  v4 = *(a2 + 16);
  v5 = v15;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v8 = (a2 + 48);
    v7 = v5;
    do
    {
      v9 = *v8;
      v13 = *(v8 - 1);
      v14 = v9;
      sub_10004BBB0(&v15, &v13, &v12);

      v7 = v12;
      v15 = v12;
      v8 += 24;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v10;
}

uint64_t sub_10004DB94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004DBDC()
{
  result = qword_10014E120;
  if (!qword_10014E120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014E120);
  }

  return result;
}

__n128 sub_10004DC34(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004DC48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004DC90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_10004DCF0(int a1)
{
  v48 = a1;
  v2 = sub_1000FF8B4();
  __chkstk_darwin(v2 - 8);
  v47[1] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v47[0] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001003A4();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100016E08(0, v8, 0);
    v9 = 0;
    v10 = v51;
    while (v9 < *(v7 + 2))
    {
      v49 = v7[v9 + 4];
      sub_10004E284(&v49, v50);
      v1 = v50[0];
      v11 = v50[1];
      v51 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_100016E08((v12 > 1), v13 + 1, 1);
        v10 = v51;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[2 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 5);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = v10[v24 + 5];
          v27 = (*&v26 & 0x2000000000000000) != 0 ? HIBYTE(*&v26) & 0xFLL : *&v10[v24 + 4] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 2;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v50[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_10000F02C(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v50[0] = v10;
              }

              sub_100050818(v25, v28, 0);
              sub_100100F14();
              sub_1000FF8A4();
              v15 = sub_100100FF4();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v44 = v15;
            v45 = v16;
            v46 = sub_10000F02C((v27 > 1), v17, 1, v10);
            v16 = v45;
            v10 = v46;
            v15 = v44;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[2 * v1];
            *(v31 + 4) = v15;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v40 = v10[v24 + 6];
          v39 = v10[v24 + 7];
          v27 = HIBYTE(*&v39) & 0xFLL;
          if ((*&v39 & 0x2000000000000000) == 0)
          {
            v27 = *&v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v41 = &v10[2 * v25 + 4];
              v1 = *v41;
              v42 = v41[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_1000507C8(v10);
              }

              v43 = &v10[2 * v25];
              v43[4] = v40;
              v43[5] = v39;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v38 = &v10[v24];
              *(v38 + 6) = v1;
              *(v38 + 7) = v42;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 2;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v48 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_10014B648 != -1)
      {
        swift_once();
      }

      sub_100007210(&qword_10014CE40, &qword_10010C9B0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10010C1F0;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_1000508D8();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      sub_100100FA4();
      goto LABEL_59;
    }

    v51 = v10;
    if (qword_10014B638 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_100007210(&unk_10014D670, &unk_10010C9A0);
  sub_10000F138();
  sub_100100EA4();
LABEL_59:
}

uint64_t sub_10004E284@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000FF8B4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100F84();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1ALL:
    case 0x1BLL:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
    case 0x1FLL:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
      sub_100100F14();
      sub_1000FF8A4();
      result = sub_100100FF4();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_10004F030(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10004F0DC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_100101CA4();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_100101DA4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10004F204(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      v14[0] = *(v7 - 2);
      v14[1] = v9;
      v15 = v8;
      v10 = v8;
      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 5;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

void sub_10004F2BC(int a1)
{
  v48 = a1;
  v2 = sub_1000FF8B4();
  __chkstk_darwin(v2 - 8);
  v47[1] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v47[0] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001003B4();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100016E08(0, v8, 0);
    v9 = 0;
    v10 = v51;
    while (v9 < *(v7 + 2))
    {
      v49 = v7[v9 + 4];
      sub_10004F850(&v49, v50);
      v1 = v50[0];
      v11 = v50[1];
      v51 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_100016E08((v12 > 1), v13 + 1, 1);
        v10 = v51;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[2 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 5);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = v10[v24 + 5];
          v27 = (*&v26 & 0x2000000000000000) != 0 ? HIBYTE(*&v26) & 0xFLL : *&v10[v24 + 4] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 2;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v50[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_10000F02C(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v50[0] = v10;
              }

              sub_100050818(v25, v28, 0);
              sub_100100F14();
              sub_1000FF8A4();
              v15 = sub_100100FF4();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v44 = v15;
            v45 = v16;
            v46 = sub_10000F02C((v27 > 1), v17, 1, v10);
            v16 = v45;
            v10 = v46;
            v15 = v44;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[2 * v1];
            *(v31 + 4) = v15;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v40 = v10[v24 + 6];
          v39 = v10[v24 + 7];
          v27 = HIBYTE(*&v39) & 0xFLL;
          if ((*&v39 & 0x2000000000000000) == 0)
          {
            v27 = *&v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v41 = &v10[2 * v25 + 4];
              v1 = *v41;
              v42 = v41[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_1000507C8(v10);
              }

              v43 = &v10[2 * v25];
              v43[4] = v40;
              v43[5] = v39;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v38 = &v10[v24];
              *(v38 + 6) = v1;
              *(v38 + 7) = v42;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 2;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v48 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_10014B648 != -1)
      {
        swift_once();
      }

      sub_100007210(&qword_10014CE40, &qword_10010C9B0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10010C1F0;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_1000508D8();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      sub_100100FA4();
      goto LABEL_59;
    }

    v51 = v10;
    if (qword_10014B638 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_100007210(&unk_10014D670, &unk_10010C9A0);
  sub_10000F138();
  sub_100100EA4();
LABEL_59:
}

uint64_t sub_10004F850@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000FF8B4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100F84();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
      sub_100100F14();
      sub_1000FF8A4();
      result = sub_100100FF4();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

id sub_10004FF68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StateOfMindAsset(uint64_t a1)
{
  result = qword_10014D5C8;
  if (!qword_10014D5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100050058(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension16StateOfMindAsset_metadata) = a1;

  return result;
}

id sub_100050070()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v48[2] = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100100F84();
  __chkstk_darwin(v3 - 8);
  v48[1] = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v48 - v9;
  v11 = sub_100100A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014C298, &qword_10010D2E0);
  __chkstk_darwin(v15 - 8);
  v17 = v48 - v16;
  v18 = sub_1001003C4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = v0;
  sub_10000CDEC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000FFB4(v17, &qword_10014C298, &qword_10010D2E0);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_10004DCF0(0);
  v23 = v22;
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  sub_100100974();
  v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v29 = [v27 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_10004DCF0(0);
  v30 = sub_100100F94();

  [v29 setDisplayName:v30];

  sub_10004F2BC(0);
  v31 = sub_100100F94();

  [v29 setContentDescription:v31];

  sub_100100394();
  v32 = sub_1000FF804();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v8, 1, v32) == 1)
  {
    v35 = *(v48[0] + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    if (v35)
    {
      v48[0] = v34;
      v36 = [v35 entry];
      if (v36)
      {
        v37 = v36;
        sub_1000FFBA4();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v34 = v48[0];
    }

    else
    {
      v38 = 1;
    }

    (*(v33 + 56))(v10, v38, 1, v32);
    if (v34(v8, 1, v32) != 1)
    {
      sub_10000FFB4(v8, &unk_10014D640, &unk_10010C480);
    }
  }

  else
  {
    (*(v33 + 32))(v10, v8, v32);
    (*(v33 + 56))(v10, 0, 1, v32);
  }

  sub_100100F14();
  sub_1000FF8A4();
  v39 = sub_100101004();
  v41 = v40;
  sub_100007210(&qword_10014C220, &qword_10010BE70);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10010BC80;
  v43 = sub_100081080(v39, v41, v10);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_1001011C4().super.isa;

  [v29 setAlternateNames:v46];

  sub_10000FFB4(v10, &unk_10014D640, &unk_10010C480);
  (*(v19 + 8))(v21, v18);
  return v29;
}

uint64_t sub_100050784(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001003C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100050818(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000508D8()
{
  result = qword_10014D618;
  if (!qword_10014D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014D618);
  }

  return result;
}

unint64_t sub_10005092C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_100050A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
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

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100050B58()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014D620);
  sub_100003D38(v0, qword_10014D620);
  return sub_100100AD4();
}

id sub_100050BD8()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v93 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100100F84();
  __chkstk_darwin(v3 - 8);
  v92 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v5 - 8);
  v94 = &v86 - v6;
  v7 = sub_1000FF804();
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = __chkstk_darwin(v7);
  v89 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v88 = &v86 - v11;
  __chkstk_darwin(v10);
  v87 = &v86 - v12;
  v13 = sub_1000FFB34();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100100A04();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100051880(v0);
  v97 = v21;
  v22 = v0;
  v23 = [v0 text];
  if (v23 && (v24 = v23, v25 = sub_1000FF564(), v27 = v26, v24, v28 = sub_1000FF534(), sub_1000064C0(v25, v27), v28))
  {
    v29 = [v28 string];

    v95 = sub_100100FD4();
    v31 = v30;
  }

  else
  {
    v95 = 0;
    v31 = 0;
  }

  v32 = sub_1000CCC84();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    return 0;
  }

  sub_100100974();
  v36 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v38 = [v36 initWithContentType:isa];

  v39 = (*(v18 + 8))(v20, v17);
  v40 = v97;
  sub_1000800A4(v96, v97, v95, v31, v39);
  (*(v14 + 104))(v16, enum case for JournalFeatureFlags.search(_:), v13);
  v41 = sub_1000FFB24();
  (*(v14 + 8))(v16, v13);
  if (v41)
  {
    v42 = v22;
    v43 = v91;
    if (qword_10014B900 != -1)
    {
      swift_once();
    }

    if (qword_100158A28)
    {
      v98 = 0x7972746E65;
      v99 = 0xE500000000000000;
      v44 = qword_100158A28;
      sub_100007210(&qword_10014EF10, &qword_10010E230);
      if (!swift_dynamicCast())
      {

        if (v40)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      [v38 setValue:v100 forCustomKey:v44];

      swift_unknownObjectRelease();
    }

    if (v40)
    {
LABEL_15:
      v45 = sub_100100F94();

LABEL_20:
      [v38 setTitle:v45];

      if (v31)
      {
        v47 = sub_100100F94();
      }

      else
      {
        v47 = 0;
      }

      v46 = v90;
      [v38 setTextContent:v47];

      v48 = sub_1000CCDB8();
      if (qword_10014B908 != -1)
      {
        v82 = v48;
        swift_once();
        v48 = v82;
      }

      if (qword_100158A30)
      {
        v98 = v48;
        v49 = qword_100158A30;
        sub_100007210(&unk_10014D670, &unk_10010C9A0);
        sub_100007210(&qword_10014EF10, &qword_10010E230);
        if (swift_dynamicCast())
        {
          [v38 setValue:v100 forCustomKey:v49];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      v50 = sub_1000CD4C0();
      if (qword_10014B910 != -1)
      {
        v83 = v50;
        swift_once();
        v50 = v83;
      }

      if (qword_100158A38)
      {
        v98 = v50;
        v51 = qword_100158A38;
        sub_100007210(&unk_10014D670, &unk_10010C9A0);
        sub_100007210(&qword_10014EF10, &qword_10010E230);
        if (swift_dynamicCast())
        {
          [v38 setValue:v100 forCustomKey:v51];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      v52 = sub_1000CD710();
      if (qword_10014B918 != -1)
      {
        v84 = v52;
        swift_once();
        v52 = v84;
      }

      if (qword_100158A40)
      {
        v98 = v52;
        v53 = qword_100158A40;
        sub_100007210(&unk_10014D670, &unk_10010C9A0);
        sub_100007210(&qword_10014EF10, &qword_10010E230);
        if (swift_dynamicCast())
        {
          [v38 setValue:v100 forCustomKey:v53];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      sub_1000CE53C();
      if (qword_10014B920 != -1)
      {
        v85 = v54;
        swift_once();
        v54 = v85;
      }

      if (qword_100158A48)
      {
        v98 = v54;
        v55 = qword_100158A48;
        sub_100007210(&unk_10014D670, &unk_10010C9A0);
        sub_100007210(&qword_10014EF10, &qword_10010E230);
        if (swift_dynamicCast())
        {
          [v38 setValue:v100 forCustomKey:v55];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      sub_1000FFBB4();
      if (qword_10014B928 != -1)
      {
        swift_once();
      }

      if (qword_100158A50)
      {
        v56 = qword_100158A50;
        v57 = sub_100101274().super.super.isa;
        [v38 setValue:v57 forCustomKey:v56];
      }

      goto LABEL_55;
    }

LABEL_19:
    v45 = 0;
    goto LABEL_20;
  }

  v42 = v22;
  v46 = v90;
  v43 = v91;
LABEL_55:
  v58 = [v42 updatedDate];
  if (v58)
  {
    v59 = v87;
    v60 = v58;
    sub_1000FF7B4();

    v61.super.isa = sub_1000FF754().super.isa;
    (*(v46 + 8))(v59, v43);
  }

  else
  {
    v61.super.isa = 0;
  }

  [v38 setLastUsedDate:v61.super.isa];

  v62 = [v42 entryDate];
  if (v62)
  {
    v63 = v88;
    v64 = v62;
    sub_1000FF7B4();

    v65.super.isa = sub_1000FF754().super.isa;
    (*(v46 + 8))(v63, v43);
  }

  else
  {
    v65.super.isa = 0;
  }

  [v38 setContentCreationDate:v65.super.isa];

  v66 = [v42 updatedDate];
  if (v66)
  {
    v67 = v89;
    v68 = v66;
    sub_1000FF7B4();

    v69.super.isa = sub_1000FF754().super.isa;
    (*(v46 + 8))(v67, v43);
  }

  else
  {
    v69.super.isa = 0;
  }

  [v38 setContentModificationDate:v69.super.isa];

  if (sub_100092708() == 4)
  {
    v70 = sub_1000FFBB4();
  }

  else
  {
    v70 = 1;
  }

  v71 = [objc_allocWithZone(NSNumber) initWithBool:v70 & 1];
  [v38 setDisableSearchInSpotlight:v71];

  v72 = v94;
  sub_1000FFBA4();
  (*(v46 + 56))(v72, 0, 1, v43);
  sub_100100F14();
  sub_1000FF8A4();
  v73 = sub_100101004();
  v75 = v74;
  sub_100007210(&qword_10014C220, &qword_10010BE70);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_10010BC80;
  v77 = sub_100081080(v73, v75, v72);
  v79 = v78;

  *(v76 + 32) = v77;
  *(v76 + 40) = v79;
  v80 = sub_1001011C4().super.isa;

  [v38 setAlternateNames:v80];

  sub_10000FFB4(v72, &unk_10014D640, &unk_10010C480);
  return v38;
}

id sub_100051880(void *a1)
{
  if (![a1 showTitle])
  {
    return 0;
  }

  result = [a1 title];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = sub_1000FF564();
  v6 = v5;

  v7 = sub_1000FF534();
  sub_1000064C0(v4, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 string];

  v9 = sub_100100FD4();
  return v9;
}

void *sub_100051950()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  v3 = __chkstk_darwin(v2 - 8);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  v7 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v66 - v11;
  v13 = sub_1000FF514();
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = __chkstk_darwin(v13);
  v66 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v66 - v16;
  v18 = sub_1000FFB34();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100044DCC();
  v22 = sub_1000521A4(v70);
  (*(v19 + 104))(v21, enum case for JournalFeatureFlags.search(_:), v18);
  v23 = sub_1000FFB24();
  (*(v19 + 8))(v21, v18);
  if (v23)
  {
    if (!v22)
    {
      goto LABEL_33;
    }

    v24 = qword_10014B900;
    v25 = v22;
    if (v24 != -1)
    {
      swift_once();
    }

    if (qword_100158A28)
    {
      v72 = 0x7465737361;
      v73 = 0xE500000000000000;
      v26 = qword_100158A28;
      sub_100007210(&qword_10014EF10, &qword_10010E230);
      if (swift_dynamicCast())
      {
        v27 = v71;
        swift_unknownObjectRetain();
        [v25 setValue:v27 forCustomKey:v26];

        swift_unknownObjectRelease_n();
      }

      else
      {
      }
    }

    v30 = v25;
    v31 = &off_100140000;
    v32 = [v1 entry];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 objectID];

      v35 = [v34 URIRepresentation];
      sub_1000FF4C4();

      sub_1000FF434();
      (*(v68 + 8))(v17, v69);
      v31 = &off_100140000;
      v36 = sub_100100F94();
    }

    else
    {
      v36 = 0;
    }

    [v30 setWeakRelatedUniqueIdentifier:v36];

    v28 = v30;
    v37 = [v1 v31[490]];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1000CD4C0();
    }

    else
    {
      v39 = 0;
    }

    v29 = v69;
    sub_1000F1600(v39);
  }

  else
  {
    if (!v22)
    {
      goto LABEL_33;
    }

    v28 = v22;
    v29 = v69;
  }

  v40 = v28;
  v41 = [v1 entry];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 updatedDate];

    if (v43)
    {
      sub_1000FF7B4();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v47 = sub_1000FF804();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v10, v44, 1, v47);
    sub_10005239C(v10, v12);
    isa = 0;
    if ((*(v48 + 48))(v12, 1, v47) != 1)
    {
      isa = sub_1000FF754().super.isa;
      (*(v48 + 8))(v12, v47);
    }
  }

  else
  {
    v45 = sub_1000FF804();
    (*(*(v45 - 8) + 56))(v12, 1, 1, v45);
    isa = 0;
  }

  [v40 setLastUsedDate:isa];

  v49 = v40;
  v50 = [v49 thumbnailURL];
  if (v50)
  {
    v51 = v50;
    sub_1000FF4C4();

    (*(v68 + 56))(v6, 0, 1, v29);
    sub_10000FFB4(v6, &qword_10014EBD0, &qword_10010BE50);
  }

  else
  {
    v52 = v68;
    (*(v68 + 56))(v6, 1, 1, v29);
    sub_10000FFB4(v6, &qword_10014EBD0, &qword_10010BE50);
    v53 = [v49 thumbnailData];
    if (v53)
    {
      v54 = v53;
      v55 = sub_1000FF564();
      v57 = v56;

      sub_1000064C0(v55, v57);
    }

    else
    {
      v58 = v67;
      sub_100031D14(0, 1);
      if ((*(v52 + 48))(v58, 1, v29) == 1)
      {

        sub_10000FFB4(v58, &qword_10014EBD0, &qword_10010BE50);
      }

      else
      {
        v59 = v66;
        (*(v52 + 32))(v66, v58, v29);
        sub_1000FF474(v60);
        v62 = v61;
        [v49 setThumbnailURL:v61];

        (*(v52 + 8))(v59, v29);
      }
    }
  }

  v63 = v49;
  v64 = [objc_allocWithZone(NSNumber) initWithBool:sub_100092708() != 4];
  [v63 setDisableSearchInSpotlight:v64];

LABEL_33:
  return v22;
}

uint64_t sub_1000521A4(void *a1)
{
  v14 = a1;
  type metadata accessor for Asset(0);
  v2 = a1;
  sub_100007210(&qword_10014D650, &qword_10010D2E8);
  if (swift_dynamicCast())
  {
    sub_10005240C(v12, v15);
    sub_1000110C0(v15, v15[3]);
    v3 = sub_100100014();
    sub_10001100C(v15);
    if (v3)
    {
      return v3;
    }
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_10000FFB4(v12, &qword_10014D658, &unk_10010D2F0);
  }

  if (qword_10014B5F0 != -1)
  {
    swift_once();
  }

  v5 = sub_100100AE4();
  sub_100003D38(v5, qword_10014D620);
  v6 = v2;
  v7 = sub_100100AC4();
  v8 = sub_1001015A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "JournalEntryAssetMO.getSearchableItemAttributeSet asset type not indexed: %@", v9, 0xCu);
    sub_10000FFB4(v10, &unk_10014D660, &qword_10010C710);
  }

  return 0;
}